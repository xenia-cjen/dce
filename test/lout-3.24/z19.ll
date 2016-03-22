; ModuleID = 'z19.c'
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
%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.anon.2 = type { i8, i8, i16 }
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }
%struct.anon.11 = type { i8, [3 x i8] }
%struct.anon.9 = type { i8, [3 x i8] }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"DetachGalley: precondition!\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"DetachGalley: parent!\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"SearchGalley: start!\00", align 1
@InputSym = external global %union.rec*, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"AttachGalley: no index!\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"AttachGalley: not UNATTACHED!\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"galley %s deleted from here (no target)\00", align 1
@xx_hold = external global %union.rec*, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"AttachGalley: target_index!\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"AttachGalley: target!\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"receptive symbol %s has unconstrained width\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"AttachGalley: dest unconstrained!\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"too little horizontal space for galley %s at %s\00", align 1
@xx_tmp = external global %union.rec*, align 8
@.str.14 = private unnamed_addr constant [18 x i8] c"Attach: PRECEDES!\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%.1fc\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"%s object too high for %s space; %s inserted\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"@Scale\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"%s object too wide for %s space; %s inserted\00", align 1
@.str.19 = private unnamed_addr constant [52 x i8] c"%s object too high for %s space; will try elsewhere\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"%s object too wide for %s space; will try elsewhere\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"AttachGalley: is_index(z)!\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"AttachGalley: z size!\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"AttachGalley: z size (perpendicular)!\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"AttachGalley:\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"TransferLinks: start_link!\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"AttachGalley: type(hd_index)!\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"AttachGalley: type(junk) != ACAT!\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"AttachGalley: target_ind\00", align 1

; Function Attrs: nounwind uwtable
define void @DetachGalley(%union.rec* %hd) #0 {
  %1 = alloca %union.rec*, align 8
  %prnt = alloca %union.rec*, align 8
  %index = alloca %union.rec*, align 8
  store %union.rec* %hd, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = bitcast %union.rec* %2 to %struct.word_type*
  %4 = getelementptr inbounds %struct.word_type, %struct.word_type* %3, i32 0, i32 1
  %5 = bitcast %union.FIRST_UNION* %4 to %struct.anon*
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %10, label %19

; <label>:10                                      ; preds = %0
  %11 = load %union.rec*, %union.rec** %1, align 8
  %12 = bitcast %union.rec* %11 to %struct.word_type*
  %13 = getelementptr inbounds %struct.word_type, %struct.word_type* %12, i32 0, i32 0
  %14 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %13, i32 0, i64 1
  %15 = getelementptr inbounds %struct.LIST, %struct.LIST* %14, i32 0, i32 1
  %16 = load %union.rec*, %union.rec** %15, align 8
  %17 = load %union.rec*, %union.rec** %1, align 8
  %18 = icmp ne %union.rec* %16, %17
  br i1 %18, label %22, label %19

; <label>:19                                      ; preds = %10, %0
  %20 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %21 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %22

; <label>:22                                      ; preds = %19, %10
  %23 = load %union.rec*, %union.rec** %1, align 8
  %24 = bitcast %union.rec* %23 to %struct.word_type*
  %25 = getelementptr inbounds %struct.word_type, %struct.word_type* %24, i32 0, i32 0
  %26 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %25, i32 0, i64 1
  %27 = getelementptr inbounds %struct.LIST, %struct.LIST* %26, i32 0, i32 1
  %28 = load %union.rec*, %union.rec** %27, align 8
  %29 = bitcast %union.rec* %28 to %struct.word_type*
  %30 = getelementptr inbounds %struct.word_type, %struct.word_type* %29, i32 0, i32 0
  %31 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %30, i32 0, i64 0
  %32 = getelementptr inbounds %struct.LIST, %struct.LIST* %31, i32 0, i32 0
  %33 = load %union.rec*, %union.rec** %32, align 8
  store %union.rec* %33, %union.rec** %prnt, align 8
  br label %34

; <label>:34                                      ; preds = %44, %22
  %35 = load %union.rec*, %union.rec** %prnt, align 8
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
  %45 = load %union.rec*, %union.rec** %prnt, align 8
  %46 = bitcast %union.rec* %45 to %struct.word_type*
  %47 = getelementptr inbounds %struct.word_type, %struct.word_type* %46, i32 0, i32 0
  %48 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %47, i32 0, i64 0
  %49 = getelementptr inbounds %struct.LIST, %struct.LIST* %48, i32 0, i32 0
  %50 = load %union.rec*, %union.rec** %49, align 8
  store %union.rec* %50, %union.rec** %prnt, align 8
  br label %34

; <label>:51                                      ; preds = %34
  %52 = load %union.rec*, %union.rec** %prnt, align 8
  %53 = bitcast %union.rec* %52 to %struct.word_type*
  %54 = getelementptr inbounds %struct.word_type, %struct.word_type* %53, i32 0, i32 0
  %55 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %54, i32 0, i64 1
  %56 = getelementptr inbounds %struct.LIST, %struct.LIST* %55, i32 0, i32 1
  %57 = load %union.rec*, %union.rec** %56, align 8
  %58 = load %union.rec*, %union.rec** %prnt, align 8
  %59 = icmp ne %union.rec* %57, %58
  br i1 %59, label %63, label %60

; <label>:60                                      ; preds = %51
  %61 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %62 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  br label %63

; <label>:63                                      ; preds = %60, %51
  %64 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 120), align 1
  %65 = zext i8 %64 to i32
  store i32 %65, i32* @zz_size, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp uge i64 %66, 265
  br i1 %67, label %68, label %71

; <label>:68                                      ; preds = %63
  %69 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %70 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %69)
  br label %96

; <label>:71                                      ; preds = %63
  %72 = load i32, i32* @zz_size, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %73
  %75 = load %union.rec*, %union.rec** %74, align 8
  %76 = icmp eq %union.rec* %75, null
  br i1 %76, label %77, label %81

; <label>:77                                      ; preds = %71
  %78 = load i32, i32* @zz_size, align 4
  %79 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %80 = call %union.rec* @GetMemory(i32 %78, %struct.FILE_POS* %79)
  store %union.rec* %80, %union.rec** @zz_hold, align 8
  br label %95

; <label>:81                                      ; preds = %71
  %82 = load i32, i32* @zz_size, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %83
  %85 = load %union.rec*, %union.rec** %84, align 8
  store %union.rec* %85, %union.rec** @zz_hold, align 8
  store %union.rec* %85, %union.rec** @zz_hold, align 8
  %86 = load %union.rec*, %union.rec** @zz_hold, align 8
  %87 = bitcast %union.rec* %86 to %struct.word_type*
  %88 = getelementptr inbounds %struct.word_type, %struct.word_type* %87, i32 0, i32 0
  %89 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %88, i32 0, i64 0
  %90 = getelementptr inbounds %struct.LIST, %struct.LIST* %89, i32 0, i32 0
  %91 = load %union.rec*, %union.rec** %90, align 8
  %92 = load i32, i32* @zz_size, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %93
  store %union.rec* %91, %union.rec** %94, align 8
  br label %95

; <label>:95                                      ; preds = %81, %77
  br label %96

; <label>:96                                      ; preds = %95, %68
  %97 = load %union.rec*, %union.rec** @zz_hold, align 8
  %98 = bitcast %union.rec* %97 to %struct.word_type*
  %99 = getelementptr inbounds %struct.word_type, %struct.word_type* %98, i32 0, i32 1
  %100 = bitcast %union.FIRST_UNION* %99 to %struct.anon*
  %101 = getelementptr inbounds %struct.anon, %struct.anon* %100, i32 0, i32 0
  store i8 120, i8* %101, align 1
  %102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %104 = bitcast %union.rec* %103 to %struct.word_type*
  %105 = getelementptr inbounds %struct.word_type, %struct.word_type* %104, i32 0, i32 0
  %106 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %105, i32 0, i64 1
  %107 = getelementptr inbounds %struct.LIST, %struct.LIST* %106, i32 0, i32 1
  store %union.rec* %102, %union.rec** %107, align 8
  %108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %109 = bitcast %union.rec* %108 to %struct.word_type*
  %110 = getelementptr inbounds %struct.word_type, %struct.word_type* %109, i32 0, i32 0
  %111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %110, i32 0, i64 1
  %112 = getelementptr inbounds %struct.LIST, %struct.LIST* %111, i32 0, i32 0
  store %union.rec* %102, %union.rec** %112, align 8
  %113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %114 = bitcast %union.rec* %113 to %struct.word_type*
  %115 = getelementptr inbounds %struct.word_type, %struct.word_type* %114, i32 0, i32 0
  %116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %115, i32 0, i64 0
  %117 = getelementptr inbounds %struct.LIST, %struct.LIST* %116, i32 0, i32 1
  store %union.rec* %102, %union.rec** %117, align 8
  %118 = load %union.rec*, %union.rec** @zz_hold, align 8
  %119 = bitcast %union.rec* %118 to %struct.word_type*
  %120 = getelementptr inbounds %struct.word_type, %struct.word_type* %119, i32 0, i32 0
  %121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %120, i32 0, i64 0
  %122 = getelementptr inbounds %struct.LIST, %struct.LIST* %121, i32 0, i32 0
  store %union.rec* %102, %union.rec** %122, align 8
  store %union.rec* %102, %union.rec** %index, align 8
  %123 = load %union.rec*, %union.rec** %index, align 8
  %124 = bitcast %union.rec* %123 to %struct.closure_type*
  %125 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %124, i32 0, i32 6
  %126 = bitcast %union.anon.12* %125 to %union.rec**
  store %union.rec* null, %union.rec** %126, align 8
  %127 = load %union.rec*, %union.rec** %1, align 8
  %128 = bitcast %union.rec* %127 to %struct.word_type*
  %129 = getelementptr inbounds %struct.word_type, %struct.word_type* %128, i32 0, i32 0
  %130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %129, i32 0, i64 1
  %131 = getelementptr inbounds %struct.LIST, %struct.LIST* %130, i32 0, i32 1
  %132 = load %union.rec*, %union.rec** %131, align 8
  store %union.rec* %132, %union.rec** @xx_link, align 8
  %133 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %133, %union.rec** @zz_hold, align 8
  %134 = load %union.rec*, %union.rec** @zz_hold, align 8
  %135 = bitcast %union.rec* %134 to %struct.word_type*
  %136 = getelementptr inbounds %struct.word_type, %struct.word_type* %135, i32 0, i32 0
  %137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %136, i32 0, i64 0
  %138 = getelementptr inbounds %struct.LIST, %struct.LIST* %137, i32 0, i32 1
  %139 = load %union.rec*, %union.rec** %138, align 8
  %140 = load %union.rec*, %union.rec** @zz_hold, align 8
  %141 = icmp eq %union.rec* %139, %140
  br i1 %141, label %142, label %143

; <label>:142                                     ; preds = %96
  br label %184

; <label>:143                                     ; preds = %96
  %144 = load %union.rec*, %union.rec** @zz_hold, align 8
  %145 = bitcast %union.rec* %144 to %struct.word_type*
  %146 = getelementptr inbounds %struct.word_type, %struct.word_type* %145, i32 0, i32 0
  %147 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %146, i32 0, i64 0
  %148 = getelementptr inbounds %struct.LIST, %struct.LIST* %147, i32 0, i32 1
  %149 = load %union.rec*, %union.rec** %148, align 8
  store %union.rec* %149, %union.rec** @zz_res, align 8
  %150 = load %union.rec*, %union.rec** @zz_hold, align 8
  %151 = bitcast %union.rec* %150 to %struct.word_type*
  %152 = getelementptr inbounds %struct.word_type, %struct.word_type* %151, i32 0, i32 0
  %153 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %152, i32 0, i64 0
  %154 = getelementptr inbounds %struct.LIST, %struct.LIST* %153, i32 0, i32 0
  %155 = load %union.rec*, %union.rec** %154, align 8
  %156 = load %union.rec*, %union.rec** @zz_res, align 8
  %157 = bitcast %union.rec* %156 to %struct.word_type*
  %158 = getelementptr inbounds %struct.word_type, %struct.word_type* %157, i32 0, i32 0
  %159 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %158, i32 0, i64 0
  %160 = getelementptr inbounds %struct.LIST, %struct.LIST* %159, i32 0, i32 0
  store %union.rec* %155, %union.rec** %160, align 8
  %161 = load %union.rec*, %union.rec** @zz_res, align 8
  %162 = load %union.rec*, %union.rec** @zz_hold, align 8
  %163 = bitcast %union.rec* %162 to %struct.word_type*
  %164 = getelementptr inbounds %struct.word_type, %struct.word_type* %163, i32 0, i32 0
  %165 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %164, i32 0, i64 0
  %166 = getelementptr inbounds %struct.LIST, %struct.LIST* %165, i32 0, i32 0
  %167 = load %union.rec*, %union.rec** %166, align 8
  %168 = bitcast %union.rec* %167 to %struct.word_type*
  %169 = getelementptr inbounds %struct.word_type, %struct.word_type* %168, i32 0, i32 0
  %170 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %169, i32 0, i64 0
  %171 = getelementptr inbounds %struct.LIST, %struct.LIST* %170, i32 0, i32 1
  store %union.rec* %161, %union.rec** %171, align 8
  %172 = load %union.rec*, %union.rec** @zz_hold, align 8
  %173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %174 = bitcast %union.rec* %173 to %struct.word_type*
  %175 = getelementptr inbounds %struct.word_type, %struct.word_type* %174, i32 0, i32 0
  %176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %175, i32 0, i64 0
  %177 = getelementptr inbounds %struct.LIST, %struct.LIST* %176, i32 0, i32 1
  store %union.rec* %172, %union.rec** %177, align 8
  %178 = load %union.rec*, %union.rec** @zz_hold, align 8
  %179 = bitcast %union.rec* %178 to %struct.word_type*
  %180 = getelementptr inbounds %struct.word_type, %struct.word_type* %179, i32 0, i32 0
  %181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %180, i32 0, i64 0
  %182 = getelementptr inbounds %struct.LIST, %struct.LIST* %181, i32 0, i32 0
  store %union.rec* %172, %union.rec** %182, align 8
  %183 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %184

; <label>:184                                     ; preds = %143, %142
  %185 = phi %union.rec* [ null, %142 ], [ %183, %143 ]
  %186 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %186, %union.rec** @zz_res, align 8
  %187 = load %union.rec*, %union.rec** %index, align 8
  store %union.rec* %187, %union.rec** @zz_hold, align 8
  %188 = load %union.rec*, %union.rec** @zz_hold, align 8
  %189 = icmp eq %union.rec* %188, null
  br i1 %189, label %190, label %192

; <label>:190                                     ; preds = %184
  %191 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %240

; <label>:192                                     ; preds = %184
  %193 = load %union.rec*, %union.rec** @zz_res, align 8
  %194 = icmp eq %union.rec* %193, null
  br i1 %194, label %195, label %197

; <label>:195                                     ; preds = %192
  %196 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %238

; <label>:197                                     ; preds = %192
  %198 = load %union.rec*, %union.rec** @zz_hold, align 8
  %199 = bitcast %union.rec* %198 to %struct.word_type*
  %200 = getelementptr inbounds %struct.word_type, %struct.word_type* %199, i32 0, i32 0
  %201 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %200, i32 0, i64 0
  %202 = getelementptr inbounds %struct.LIST, %struct.LIST* %201, i32 0, i32 0
  %203 = load %union.rec*, %union.rec** %202, align 8
  store %union.rec* %203, %union.rec** @zz_tmp, align 8
  %204 = load %union.rec*, %union.rec** @zz_res, align 8
  %205 = bitcast %union.rec* %204 to %struct.word_type*
  %206 = getelementptr inbounds %struct.word_type, %struct.word_type* %205, i32 0, i32 0
  %207 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %206, i32 0, i64 0
  %208 = getelementptr inbounds %struct.LIST, %struct.LIST* %207, i32 0, i32 0
  %209 = load %union.rec*, %union.rec** %208, align 8
  %210 = load %union.rec*, %union.rec** @zz_hold, align 8
  %211 = bitcast %union.rec* %210 to %struct.word_type*
  %212 = getelementptr inbounds %struct.word_type, %struct.word_type* %211, i32 0, i32 0
  %213 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %212, i32 0, i64 0
  %214 = getelementptr inbounds %struct.LIST, %struct.LIST* %213, i32 0, i32 0
  store %union.rec* %209, %union.rec** %214, align 8
  %215 = load %union.rec*, %union.rec** @zz_hold, align 8
  %216 = load %union.rec*, %union.rec** @zz_res, align 8
  %217 = bitcast %union.rec* %216 to %struct.word_type*
  %218 = getelementptr inbounds %struct.word_type, %struct.word_type* %217, i32 0, i32 0
  %219 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %218, i32 0, i64 0
  %220 = getelementptr inbounds %struct.LIST, %struct.LIST* %219, i32 0, i32 0
  %221 = load %union.rec*, %union.rec** %220, align 8
  %222 = bitcast %union.rec* %221 to %struct.word_type*
  %223 = getelementptr inbounds %struct.word_type, %struct.word_type* %222, i32 0, i32 0
  %224 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %223, i32 0, i64 0
  %225 = getelementptr inbounds %struct.LIST, %struct.LIST* %224, i32 0, i32 1
  store %union.rec* %215, %union.rec** %225, align 8
  %226 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %227 = load %union.rec*, %union.rec** @zz_res, align 8
  %228 = bitcast %union.rec* %227 to %struct.word_type*
  %229 = getelementptr inbounds %struct.word_type, %struct.word_type* %228, i32 0, i32 0
  %230 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %229, i32 0, i64 0
  %231 = getelementptr inbounds %struct.LIST, %struct.LIST* %230, i32 0, i32 0
  store %union.rec* %226, %union.rec** %231, align 8
  %232 = load %union.rec*, %union.rec** @zz_res, align 8
  %233 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %234 = bitcast %union.rec* %233 to %struct.word_type*
  %235 = getelementptr inbounds %struct.word_type, %struct.word_type* %234, i32 0, i32 0
  %236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %235, i32 0, i64 0
  %237 = getelementptr inbounds %struct.LIST, %struct.LIST* %236, i32 0, i32 1
  store %union.rec* %232, %union.rec** %237, align 8
  br label %238

; <label>:238                                     ; preds = %197, %195
  %239 = phi %union.rec* [ %196, %195 ], [ %232, %197 ]
  br label %240

; <label>:240                                     ; preds = %238, %190
  %241 = phi %union.rec* [ %191, %190 ], [ %239, %238 ]
  %242 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %243 = zext i8 %242 to i32
  store i32 %243, i32* @zz_size, align 4
  %244 = sext i32 %243 to i64
  %245 = icmp uge i64 %244, 265
  br i1 %245, label %246, label %249

; <label>:246                                     ; preds = %240
  %247 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %248 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %247)
  br label %274

; <label>:249                                     ; preds = %240
  %250 = load i32, i32* @zz_size, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %251
  %253 = load %union.rec*, %union.rec** %252, align 8
  %254 = icmp eq %union.rec* %253, null
  br i1 %254, label %255, label %259

; <label>:255                                     ; preds = %249
  %256 = load i32, i32* @zz_size, align 4
  %257 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %258 = call %union.rec* @GetMemory(i32 %256, %struct.FILE_POS* %257)
  store %union.rec* %258, %union.rec** @zz_hold, align 8
  br label %273

; <label>:259                                     ; preds = %249
  %260 = load i32, i32* @zz_size, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %261
  %263 = load %union.rec*, %union.rec** %262, align 8
  store %union.rec* %263, %union.rec** @zz_hold, align 8
  store %union.rec* %263, %union.rec** @zz_hold, align 8
  %264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %265 = bitcast %union.rec* %264 to %struct.word_type*
  %266 = getelementptr inbounds %struct.word_type, %struct.word_type* %265, i32 0, i32 0
  %267 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %266, i32 0, i64 0
  %268 = getelementptr inbounds %struct.LIST, %struct.LIST* %267, i32 0, i32 0
  %269 = load %union.rec*, %union.rec** %268, align 8
  %270 = load i32, i32* @zz_size, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %271
  store %union.rec* %269, %union.rec** %272, align 8
  br label %273

; <label>:273                                     ; preds = %259, %255
  br label %274

; <label>:274                                     ; preds = %273, %246
  %275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %276 = bitcast %union.rec* %275 to %struct.word_type*
  %277 = getelementptr inbounds %struct.word_type, %struct.word_type* %276, i32 0, i32 1
  %278 = bitcast %union.FIRST_UNION* %277 to %struct.anon*
  %279 = getelementptr inbounds %struct.anon, %struct.anon* %278, i32 0, i32 0
  store i8 0, i8* %279, align 1
  %280 = load %union.rec*, %union.rec** @zz_hold, align 8
  %281 = load %union.rec*, %union.rec** @zz_hold, align 8
  %282 = bitcast %union.rec* %281 to %struct.word_type*
  %283 = getelementptr inbounds %struct.word_type, %struct.word_type* %282, i32 0, i32 0
  %284 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %283, i32 0, i64 1
  %285 = getelementptr inbounds %struct.LIST, %struct.LIST* %284, i32 0, i32 1
  store %union.rec* %280, %union.rec** %285, align 8
  %286 = load %union.rec*, %union.rec** @zz_hold, align 8
  %287 = bitcast %union.rec* %286 to %struct.word_type*
  %288 = getelementptr inbounds %struct.word_type, %struct.word_type* %287, i32 0, i32 0
  %289 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %288, i32 0, i64 1
  %290 = getelementptr inbounds %struct.LIST, %struct.LIST* %289, i32 0, i32 0
  store %union.rec* %280, %union.rec** %290, align 8
  %291 = load %union.rec*, %union.rec** @zz_hold, align 8
  %292 = bitcast %union.rec* %291 to %struct.word_type*
  %293 = getelementptr inbounds %struct.word_type, %struct.word_type* %292, i32 0, i32 0
  %294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %293, i32 0, i64 0
  %295 = getelementptr inbounds %struct.LIST, %struct.LIST* %294, i32 0, i32 1
  store %union.rec* %280, %union.rec** %295, align 8
  %296 = load %union.rec*, %union.rec** @zz_hold, align 8
  %297 = bitcast %union.rec* %296 to %struct.word_type*
  %298 = getelementptr inbounds %struct.word_type, %struct.word_type* %297, i32 0, i32 0
  %299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %298, i32 0, i64 0
  %300 = getelementptr inbounds %struct.LIST, %struct.LIST* %299, i32 0, i32 0
  store %union.rec* %280, %union.rec** %300, align 8
  store %union.rec* %280, %union.rec** @xx_link, align 8
  %301 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %301, %union.rec** @zz_res, align 8
  %302 = load %union.rec*, %union.rec** %prnt, align 8
  %303 = bitcast %union.rec* %302 to %struct.word_type*
  %304 = getelementptr inbounds %struct.word_type, %struct.word_type* %303, i32 0, i32 0
  %305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %304, i32 0, i64 1
  %306 = getelementptr inbounds %struct.LIST, %struct.LIST* %305, i32 0, i32 1
  %307 = load %union.rec*, %union.rec** %306, align 8
  %308 = bitcast %union.rec* %307 to %struct.word_type*
  %309 = getelementptr inbounds %struct.word_type, %struct.word_type* %308, i32 0, i32 0
  %310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %309, i32 0, i64 0
  %311 = getelementptr inbounds %struct.LIST, %struct.LIST* %310, i32 0, i32 1
  %312 = load %union.rec*, %union.rec** %311, align 8
  store %union.rec* %312, %union.rec** @zz_hold, align 8
  %313 = load %union.rec*, %union.rec** @zz_hold, align 8
  %314 = icmp eq %union.rec* %313, null
  br i1 %314, label %315, label %317

; <label>:315                                     ; preds = %274
  %316 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %365

; <label>:317                                     ; preds = %274
  %318 = load %union.rec*, %union.rec** @zz_res, align 8
  %319 = icmp eq %union.rec* %318, null
  br i1 %319, label %320, label %322

; <label>:320                                     ; preds = %317
  %321 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %363

; <label>:322                                     ; preds = %317
  %323 = load %union.rec*, %union.rec** @zz_hold, align 8
  %324 = bitcast %union.rec* %323 to %struct.word_type*
  %325 = getelementptr inbounds %struct.word_type, %struct.word_type* %324, i32 0, i32 0
  %326 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %325, i32 0, i64 0
  %327 = getelementptr inbounds %struct.LIST, %struct.LIST* %326, i32 0, i32 0
  %328 = load %union.rec*, %union.rec** %327, align 8
  store %union.rec* %328, %union.rec** @zz_tmp, align 8
  %329 = load %union.rec*, %union.rec** @zz_res, align 8
  %330 = bitcast %union.rec* %329 to %struct.word_type*
  %331 = getelementptr inbounds %struct.word_type, %struct.word_type* %330, i32 0, i32 0
  %332 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %331, i32 0, i64 0
  %333 = getelementptr inbounds %struct.LIST, %struct.LIST* %332, i32 0, i32 0
  %334 = load %union.rec*, %union.rec** %333, align 8
  %335 = load %union.rec*, %union.rec** @zz_hold, align 8
  %336 = bitcast %union.rec* %335 to %struct.word_type*
  %337 = getelementptr inbounds %struct.word_type, %struct.word_type* %336, i32 0, i32 0
  %338 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %337, i32 0, i64 0
  %339 = getelementptr inbounds %struct.LIST, %struct.LIST* %338, i32 0, i32 0
  store %union.rec* %334, %union.rec** %339, align 8
  %340 = load %union.rec*, %union.rec** @zz_hold, align 8
  %341 = load %union.rec*, %union.rec** @zz_res, align 8
  %342 = bitcast %union.rec* %341 to %struct.word_type*
  %343 = getelementptr inbounds %struct.word_type, %struct.word_type* %342, i32 0, i32 0
  %344 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %343, i32 0, i64 0
  %345 = getelementptr inbounds %struct.LIST, %struct.LIST* %344, i32 0, i32 0
  %346 = load %union.rec*, %union.rec** %345, align 8
  %347 = bitcast %union.rec* %346 to %struct.word_type*
  %348 = getelementptr inbounds %struct.word_type, %struct.word_type* %347, i32 0, i32 0
  %349 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %348, i32 0, i64 0
  %350 = getelementptr inbounds %struct.LIST, %struct.LIST* %349, i32 0, i32 1
  store %union.rec* %340, %union.rec** %350, align 8
  %351 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %352 = load %union.rec*, %union.rec** @zz_res, align 8
  %353 = bitcast %union.rec* %352 to %struct.word_type*
  %354 = getelementptr inbounds %struct.word_type, %struct.word_type* %353, i32 0, i32 0
  %355 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %354, i32 0, i64 0
  %356 = getelementptr inbounds %struct.LIST, %struct.LIST* %355, i32 0, i32 0
  store %union.rec* %351, %union.rec** %356, align 8
  %357 = load %union.rec*, %union.rec** @zz_res, align 8
  %358 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %359 = bitcast %union.rec* %358 to %struct.word_type*
  %360 = getelementptr inbounds %struct.word_type, %struct.word_type* %359, i32 0, i32 0
  %361 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %360, i32 0, i64 0
  %362 = getelementptr inbounds %struct.LIST, %struct.LIST* %361, i32 0, i32 1
  store %union.rec* %357, %union.rec** %362, align 8
  br label %363

; <label>:363                                     ; preds = %322, %320
  %364 = phi %union.rec* [ %321, %320 ], [ %357, %322 ]
  br label %365

; <label>:365                                     ; preds = %363, %315
  %366 = phi %union.rec* [ %316, %315 ], [ %364, %363 ]
  %367 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %367, %union.rec** @zz_res, align 8
  %368 = load %union.rec*, %union.rec** %index, align 8
  store %union.rec* %368, %union.rec** @zz_hold, align 8
  %369 = load %union.rec*, %union.rec** @zz_hold, align 8
  %370 = icmp eq %union.rec* %369, null
  br i1 %370, label %371, label %373

; <label>:371                                     ; preds = %365
  %372 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %421

; <label>:373                                     ; preds = %365
  %374 = load %union.rec*, %union.rec** @zz_res, align 8
  %375 = icmp eq %union.rec* %374, null
  br i1 %375, label %376, label %378

; <label>:376                                     ; preds = %373
  %377 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %419

; <label>:378                                     ; preds = %373
  %379 = load %union.rec*, %union.rec** @zz_hold, align 8
  %380 = bitcast %union.rec* %379 to %struct.word_type*
  %381 = getelementptr inbounds %struct.word_type, %struct.word_type* %380, i32 0, i32 0
  %382 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %381, i32 0, i64 1
  %383 = getelementptr inbounds %struct.LIST, %struct.LIST* %382, i32 0, i32 0
  %384 = load %union.rec*, %union.rec** %383, align 8
  store %union.rec* %384, %union.rec** @zz_tmp, align 8
  %385 = load %union.rec*, %union.rec** @zz_res, align 8
  %386 = bitcast %union.rec* %385 to %struct.word_type*
  %387 = getelementptr inbounds %struct.word_type, %struct.word_type* %386, i32 0, i32 0
  %388 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %387, i32 0, i64 1
  %389 = getelementptr inbounds %struct.LIST, %struct.LIST* %388, i32 0, i32 0
  %390 = load %union.rec*, %union.rec** %389, align 8
  %391 = load %union.rec*, %union.rec** @zz_hold, align 8
  %392 = bitcast %union.rec* %391 to %struct.word_type*
  %393 = getelementptr inbounds %struct.word_type, %struct.word_type* %392, i32 0, i32 0
  %394 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %393, i32 0, i64 1
  %395 = getelementptr inbounds %struct.LIST, %struct.LIST* %394, i32 0, i32 0
  store %union.rec* %390, %union.rec** %395, align 8
  %396 = load %union.rec*, %union.rec** @zz_hold, align 8
  %397 = load %union.rec*, %union.rec** @zz_res, align 8
  %398 = bitcast %union.rec* %397 to %struct.word_type*
  %399 = getelementptr inbounds %struct.word_type, %struct.word_type* %398, i32 0, i32 0
  %400 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %399, i32 0, i64 1
  %401 = getelementptr inbounds %struct.LIST, %struct.LIST* %400, i32 0, i32 0
  %402 = load %union.rec*, %union.rec** %401, align 8
  %403 = bitcast %union.rec* %402 to %struct.word_type*
  %404 = getelementptr inbounds %struct.word_type, %struct.word_type* %403, i32 0, i32 0
  %405 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %404, i32 0, i64 1
  %406 = getelementptr inbounds %struct.LIST, %struct.LIST* %405, i32 0, i32 1
  store %union.rec* %396, %union.rec** %406, align 8
  %407 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %408 = load %union.rec*, %union.rec** @zz_res, align 8
  %409 = bitcast %union.rec* %408 to %struct.word_type*
  %410 = getelementptr inbounds %struct.word_type, %struct.word_type* %409, i32 0, i32 0
  %411 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %410, i32 0, i64 1
  %412 = getelementptr inbounds %struct.LIST, %struct.LIST* %411, i32 0, i32 0
  store %union.rec* %407, %union.rec** %412, align 8
  %413 = load %union.rec*, %union.rec** @zz_res, align 8
  %414 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %415 = bitcast %union.rec* %414 to %struct.word_type*
  %416 = getelementptr inbounds %struct.word_type, %struct.word_type* %415, i32 0, i32 0
  %417 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %416, i32 0, i64 1
  %418 = getelementptr inbounds %struct.LIST, %struct.LIST* %417, i32 0, i32 1
  store %union.rec* %413, %union.rec** %418, align 8
  br label %419

; <label>:419                                     ; preds = %378, %376
  %420 = phi %union.rec* [ %377, %376 ], [ %413, %378 ]
  br label %421

; <label>:421                                     ; preds = %419, %371
  %422 = phi %union.rec* [ %372, %371 ], [ %420, %419 ]
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define %union.rec* @SearchGalley(%union.rec* %start, %union.rec* %sym, i32 %forwards, i32 %subgalleys, i32 %closures, i32 %input) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %y = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %zlink = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  store %union.rec* %start, %union.rec** %1, align 8
  store %union.rec* %sym, %union.rec** %2, align 8
  store i32 %forwards, i32* %3, align 4
  store i32 %subgalleys, i32* %4, align 4
  store i32 %closures, i32* %5, align 4
  store i32 %input, i32* %6, align 4
  %7 = load %union.rec*, %union.rec** %1, align 8
  %8 = bitcast %union.rec* %7 to %struct.word_type*
  %9 = getelementptr inbounds %struct.word_type, %struct.word_type* %8, i32 0, i32 1
  %10 = bitcast %union.FIRST_UNION* %9 to %struct.anon*
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

; <label>:15                                      ; preds = %0
  %16 = load %union.rec*, %union.rec** %1, align 8
  %17 = bitcast %union.rec* %16 to %struct.word_type*
  %18 = getelementptr inbounds %struct.word_type, %struct.word_type* %17, i32 0, i32 1
  %19 = bitcast %union.FIRST_UNION* %18 to %struct.anon*
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, 8
  br i1 %23, label %27, label %24

; <label>:24                                      ; preds = %15
  %25 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %26 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0))
  br label %27

; <label>:27                                      ; preds = %24, %15, %0
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

; <label>:30                                      ; preds = %27
  %31 = load %union.rec*, %union.rec** %1, align 8
  %32 = bitcast %union.rec* %31 to %struct.word_type*
  %33 = getelementptr inbounds %struct.word_type, %struct.word_type* %32, i32 0, i32 0
  %34 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %33, i32 0, i64 0
  %35 = getelementptr inbounds %struct.LIST, %struct.LIST* %34, i32 0, i32 1
  %36 = load %union.rec*, %union.rec** %35, align 8
  br label %44

; <label>:37                                      ; preds = %27
  %38 = load %union.rec*, %union.rec** %1, align 8
  %39 = bitcast %union.rec* %38 to %struct.word_type*
  %40 = getelementptr inbounds %struct.word_type, %struct.word_type* %39, i32 0, i32 0
  %41 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %40, i32 0, i64 0
  %42 = getelementptr inbounds %struct.LIST, %struct.LIST* %41, i32 0, i32 0
  %43 = load %union.rec*, %union.rec** %42, align 8
  br label %44

; <label>:44                                      ; preds = %37, %30
  %45 = phi %union.rec* [ %36, %30 ], [ %43, %37 ]
  store %union.rec* %45, %union.rec** %link, align 8
  store %union.rec* null, %union.rec** %res, align 8
  br label %46

; <label>:46                                      ; preds = %239, %44
  %47 = load %union.rec*, %union.rec** %res, align 8
  %48 = icmp eq %union.rec* %47, null
  br i1 %48, label %49, label %58

; <label>:49                                      ; preds = %46
  %50 = load %union.rec*, %union.rec** %link, align 8
  %51 = bitcast %union.rec* %50 to %struct.word_type*
  %52 = getelementptr inbounds %struct.word_type, %struct.word_type* %51, i32 0, i32 1
  %53 = bitcast %union.FIRST_UNION* %52 to %struct.anon*
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %53, i32 0, i32 0
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %56, 8
  br label %58

; <label>:58                                      ; preds = %49, %46
  %59 = phi i1 [ false, %46 ], [ %57, %49 ]
  br i1 %59, label %60, label %241

; <label>:60                                      ; preds = %58
  %61 = load %union.rec*, %union.rec** %link, align 8
  %62 = bitcast %union.rec* %61 to %struct.word_type*
  %63 = getelementptr inbounds %struct.word_type, %struct.word_type* %62, i32 0, i32 0
  %64 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %63, i32 0, i64 1
  %65 = getelementptr inbounds %struct.LIST, %struct.LIST* %64, i32 0, i32 0
  %66 = load %union.rec*, %union.rec** %65, align 8
  store %union.rec* %66, %union.rec** %y, align 8
  br label %67

; <label>:67                                      ; preds = %77, %60
  %68 = load %union.rec*, %union.rec** %y, align 8
  %69 = bitcast %union.rec* %68 to %struct.word_type*
  %70 = getelementptr inbounds %struct.word_type, %struct.word_type* %69, i32 0, i32 1
  %71 = bitcast %union.FIRST_UNION* %70 to %struct.anon*
  %72 = getelementptr inbounds %struct.anon, %struct.anon* %71, i32 0, i32 0
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %84

; <label>:76                                      ; preds = %67
  br label %77

; <label>:77                                      ; preds = %76
  %78 = load %union.rec*, %union.rec** %y, align 8
  %79 = bitcast %union.rec* %78 to %struct.word_type*
  %80 = getelementptr inbounds %struct.word_type, %struct.word_type* %79, i32 0, i32 0
  %81 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %80, i32 0, i64 1
  %82 = getelementptr inbounds %struct.LIST, %struct.LIST* %81, i32 0, i32 0
  %83 = load %union.rec*, %union.rec** %82, align 8
  store %union.rec* %83, %union.rec** %y, align 8
  br label %67

; <label>:84                                      ; preds = %67
  %85 = load %union.rec*, %union.rec** %y, align 8
  %86 = bitcast %union.rec* %85 to %struct.word_type*
  %87 = getelementptr inbounds %struct.word_type, %struct.word_type* %86, i32 0, i32 1
  %88 = bitcast %union.FIRST_UNION* %87 to %struct.anon*
  %89 = getelementptr inbounds %struct.anon, %struct.anon* %88, i32 0, i32 0
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  switch i32 %91, label %221 [
    i32 120, label %92
    i32 122, label %92
    i32 121, label %176
  ]

; <label>:92                                      ; preds = %84, %84
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %148

; <label>:95                                      ; preds = %92
  %96 = load %union.rec*, %union.rec** %y, align 8
  %97 = bitcast %union.rec* %96 to %struct.word_type*
  %98 = getelementptr inbounds %struct.word_type, %struct.word_type* %97, i32 0, i32 0
  %99 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %98, i32 0, i64 0
  %100 = getelementptr inbounds %struct.LIST, %struct.LIST* %99, i32 0, i32 1
  %101 = load %union.rec*, %union.rec** %100, align 8
  store %union.rec* %101, %union.rec** %zlink, align 8
  br label %102

; <label>:102                                     ; preds = %140, %95
  %103 = load %union.rec*, %union.rec** %zlink, align 8
  %104 = load %union.rec*, %union.rec** %y, align 8
  %105 = icmp ne %union.rec* %103, %104
  br i1 %105, label %106, label %109

; <label>:106                                     ; preds = %102
  %107 = load %union.rec*, %union.rec** %res, align 8
  %108 = icmp eq %union.rec* %107, null
  br label %109

; <label>:109                                     ; preds = %106, %102
  %110 = phi i1 [ false, %102 ], [ %108, %106 ]
  br i1 %110, label %111, label %147

; <label>:111                                     ; preds = %109
  %112 = load %union.rec*, %union.rec** %zlink, align 8
  %113 = bitcast %union.rec* %112 to %struct.word_type*
  %114 = getelementptr inbounds %struct.word_type, %struct.word_type* %113, i32 0, i32 0
  %115 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %114, i32 0, i64 1
  %116 = getelementptr inbounds %struct.LIST, %struct.LIST* %115, i32 0, i32 0
  %117 = load %union.rec*, %union.rec** %116, align 8
  store %union.rec* %117, %union.rec** %z, align 8
  br label %118

; <label>:118                                     ; preds = %128, %111
  %119 = load %union.rec*, %union.rec** %z, align 8
  %120 = bitcast %union.rec* %119 to %struct.word_type*
  %121 = getelementptr inbounds %struct.word_type, %struct.word_type* %120, i32 0, i32 1
  %122 = bitcast %union.FIRST_UNION* %121 to %struct.anon*
  %123 = getelementptr inbounds %struct.anon, %struct.anon* %122, i32 0, i32 0
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %135

; <label>:127                                     ; preds = %118
  br label %128

; <label>:128                                     ; preds = %127
  %129 = load %union.rec*, %union.rec** %z, align 8
  %130 = bitcast %union.rec* %129 to %struct.word_type*
  %131 = getelementptr inbounds %struct.word_type, %struct.word_type* %130, i32 0, i32 0
  %132 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %131, i32 0, i64 1
  %133 = getelementptr inbounds %struct.LIST, %struct.LIST* %132, i32 0, i32 0
  %134 = load %union.rec*, %union.rec** %133, align 8
  store %union.rec* %134, %union.rec** %z, align 8
  br label %118

; <label>:135                                     ; preds = %118
  %136 = load %union.rec*, %union.rec** %z, align 8
  %137 = load %union.rec*, %union.rec** %2, align 8
  %138 = load i32, i32* %6, align 4
  %139 = call %union.rec* @SearchGalley(%union.rec* %136, %union.rec* %137, i32 1, i32 1, i32 1, i32 %138)
  store %union.rec* %139, %union.rec** %res, align 8
  br label %140

; <label>:140                                     ; preds = %135
  %141 = load %union.rec*, %union.rec** %zlink, align 8
  %142 = bitcast %union.rec* %141 to %struct.word_type*
  %143 = getelementptr inbounds %struct.word_type, %struct.word_type* %142, i32 0, i32 0
  %144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %143, i32 0, i64 0
  %145 = getelementptr inbounds %struct.LIST, %struct.LIST* %144, i32 0, i32 1
  %146 = load %union.rec*, %union.rec** %145, align 8
  store %union.rec* %146, %union.rec** %zlink, align 8
  br label %102

; <label>:147                                     ; preds = %109
  br label %148

; <label>:148                                     ; preds = %147, %92
  %149 = load %union.rec*, %union.rec** %res, align 8
  %150 = icmp eq %union.rec* %149, null
  br i1 %150, label %151, label %175

; <label>:151                                     ; preds = %148
  %152 = load i32, i32* %6, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %175

; <label>:154                                     ; preds = %151
  %155 = load %union.rec*, %union.rec** %y, align 8
  %156 = bitcast %union.rec* %155 to %struct.word_type*
  %157 = getelementptr inbounds %struct.word_type, %struct.word_type* %156, i32 0, i32 1
  %158 = bitcast %union.FIRST_UNION* %157 to %struct.anon*
  %159 = getelementptr inbounds %struct.anon, %struct.anon* %158, i32 0, i32 0
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp eq i32 %161, 122
  br i1 %162, label %163, label %175

; <label>:163                                     ; preds = %154
  %164 = load %union.rec*, %union.rec** %y, align 8
  %165 = bitcast %union.rec* %164 to %struct.closure_type*
  %166 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %165, i32 0, i32 5
  %167 = load %union.rec*, %union.rec** %166, align 8
  %168 = bitcast %union.rec* %167 to %struct.closure_type*
  %169 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %168, i32 0, i32 5
  %170 = load %union.rec*, %union.rec** %169, align 8
  %171 = load %union.rec*, %union.rec** @InputSym, align 8
  %172 = icmp eq %union.rec* %170, %171
  br i1 %172, label %173, label %175

; <label>:173                                     ; preds = %163
  %174 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %174, %union.rec** %res, align 8
  br label %175

; <label>:175                                     ; preds = %173, %163, %154, %151, %148
  br label %222

; <label>:176                                     ; preds = %84
  %177 = load i32, i32* %5, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %204

; <label>:179                                     ; preds = %176
  %180 = load %union.rec*, %union.rec** %y, align 8
  %181 = bitcast %union.rec* %180 to %struct.closure_type*
  %182 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %181, i32 0, i32 5
  %183 = load %union.rec*, %union.rec** %182, align 8
  %184 = bitcast %union.rec* %183 to %struct.word_type*
  %185 = getelementptr inbounds %struct.word_type, %struct.word_type* %184, i32 0, i32 1
  %186 = bitcast %union.FIRST_UNION* %185 to %struct.anon*
  %187 = getelementptr inbounds %struct.anon, %struct.anon* %186, i32 0, i32 0
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = icmp eq i32 %189, 2
  br i1 %190, label %191, label %204

; <label>:191                                     ; preds = %179
  %192 = load %union.rec*, %union.rec** %y, align 8
  %193 = bitcast %union.rec* %192 to %struct.closure_type*
  %194 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %193, i32 0, i32 5
  %195 = load %union.rec*, %union.rec** %194, align 8
  %196 = bitcast %union.rec* %195 to %struct.closure_type*
  %197 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %196, i32 0, i32 5
  %198 = load %union.rec*, %union.rec** %197, align 8
  %199 = load %union.rec*, %union.rec** %2, align 8
  %200 = call i32 @SearchUses(%union.rec* %198, %union.rec* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

; <label>:202                                     ; preds = %191
  %203 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %203, %union.rec** %res, align 8
  br label %220

; <label>:204                                     ; preds = %191, %179, %176
  %205 = load i32, i32* %6, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %219

; <label>:207                                     ; preds = %204
  %208 = load %union.rec*, %union.rec** %y, align 8
  %209 = bitcast %union.rec* %208 to %struct.closure_type*
  %210 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %209, i32 0, i32 5
  %211 = load %union.rec*, %union.rec** %210, align 8
  %212 = bitcast %union.rec* %211 to %struct.closure_type*
  %213 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %212, i32 0, i32 5
  %214 = load %union.rec*, %union.rec** %213, align 8
  %215 = load %union.rec*, %union.rec** @InputSym, align 8
  %216 = icmp eq %union.rec* %214, %215
  br i1 %216, label %217, label %219

; <label>:217                                     ; preds = %207
  %218 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %218, %union.rec** %res, align 8
  br label %219

; <label>:219                                     ; preds = %217, %207, %204
  br label %220

; <label>:220                                     ; preds = %219, %202
  br label %222

; <label>:221                                     ; preds = %84
  br label %222

; <label>:222                                     ; preds = %221, %220, %175
  %223 = load i32, i32* %3, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %232

; <label>:225                                     ; preds = %222
  %226 = load %union.rec*, %union.rec** %link, align 8
  %227 = bitcast %union.rec* %226 to %struct.word_type*
  %228 = getelementptr inbounds %struct.word_type, %struct.word_type* %227, i32 0, i32 0
  %229 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %228, i32 0, i64 0
  %230 = getelementptr inbounds %struct.LIST, %struct.LIST* %229, i32 0, i32 1
  %231 = load %union.rec*, %union.rec** %230, align 8
  br label %239

; <label>:232                                     ; preds = %222
  %233 = load %union.rec*, %union.rec** %link, align 8
  %234 = bitcast %union.rec* %233 to %struct.word_type*
  %235 = getelementptr inbounds %struct.word_type, %struct.word_type* %234, i32 0, i32 0
  %236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %235, i32 0, i64 0
  %237 = getelementptr inbounds %struct.LIST, %struct.LIST* %236, i32 0, i32 0
  %238 = load %union.rec*, %union.rec** %237, align 8
  br label %239

; <label>:239                                     ; preds = %232, %225
  %240 = phi %union.rec* [ %231, %225 ], [ %238, %232 ]
  store %union.rec* %240, %union.rec** %link, align 8
  br label %46

; <label>:241                                     ; preds = %58
  %242 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %242
}

declare i32 @SearchUses(%union.rec*, %union.rec*) #1

; Function Attrs: nounwind uwtable
define i32 @AttachGalley(%union.rec* %hd, %union.rec** %inners, %union.rec** %suspend_pt) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.rec*, align 8
  %3 = alloca %union.rec**, align 8
  %4 = alloca %union.rec**, align 8
  %hd_index = alloca %union.rec*, align 8
  %hd_inners = alloca %union.rec*, align 8
  %dest = alloca %union.rec*, align 8
  %dest_index = alloca %union.rec*, align 8
  %target = alloca %union.rec*, align 8
  %target_index = alloca %union.rec*, align 8
  %target_galley = alloca %union.rec*, align 8
  %tg_inners = alloca %union.rec*, align 8
  %need_precedes = alloca i32, align 4
  %recs = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %c = alloca %struct.CONSTRAINT, align 4
  %env = alloca %union.rec*, align 8
  %n1 = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  %zlink = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %sym = alloca %union.rec*, align 8
  %was_sized = alloca i32, align 4
  %dim = alloca i32, align 4
  %perp_back = alloca i32, align 4
  %perp_fwd = alloca i32, align 4
  %why = alloca %union.rec*, align 8
  %junk = alloca %union.rec*, align 8
  %index1 = alloca %union.rec*, align 8
  %index2 = alloca %union.rec*, align 8
  %scaled = alloca i32, align 4
  %scale_factor = alloca i32, align 4
  %num1 = alloca [20 x i8], align 16
  %num2 = alloca [20 x i8], align 16
  %num11 = alloca [20 x i8], align 16
  %num22 = alloca [20 x i8], align 16
  %scaled3 = alloca i32, align 4
  %scale_factor4 = alloca i32, align 4
  %num15 = alloca [20 x i8], align 16
  %num26 = alloca [20 x i8], align 16
  %scaled7 = alloca i32, align 4
  %scale_factor8 = alloca i32, align 4
  %num19 = alloca [20 x i8], align 16
  %num210 = alloca [20 x i8], align 16
  %num111 = alloca [20 x i8], align 16
  %num212 = alloca [20 x i8], align 16
  %scaled13 = alloca i32, align 4
  %scale_factor14 = alloca i32, align 4
  %num115 = alloca [20 x i8], align 16
  %num216 = alloca [20 x i8], align 16
  %xxstart = alloca %union.rec*, align 8
  %xxstop = alloca %union.rec*, align 8
  %xxdest = alloca %union.rec*, align 8
  %xxstart17 = alloca %union.rec*, align 8
  %xxstop18 = alloca %union.rec*, align 8
  %xxdest19 = alloca %union.rec*, align 8
  store %union.rec* %hd, %union.rec** %2, align 8
  store %union.rec** %inners, %union.rec*** %3, align 8
  store %union.rec** %suspend_pt, %union.rec*** %4, align 8
  %5 = load %union.rec*, %union.rec** %2, align 8
  %6 = bitcast %union.rec* %5 to %struct.word_type*
  %7 = getelementptr inbounds %struct.word_type, %struct.word_type* %6, i32 0, i32 0
  %8 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7, i32 0, i64 1
  %9 = getelementptr inbounds %struct.LIST, %struct.LIST* %8, i32 0, i32 1
  %10 = load %union.rec*, %union.rec** %9, align 8
  %11 = load %union.rec*, %union.rec** %2, align 8
  %12 = icmp ne %union.rec* %10, %11
  br i1 %12, label %16, label %13

; <label>:13                                      ; preds = %0
  %14 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %15 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0))
  br label %16

; <label>:16                                      ; preds = %13, %0
  %17 = load %union.rec*, %union.rec** %2, align 8
  %18 = bitcast %union.rec* %17 to %struct.word_type*
  %19 = getelementptr inbounds %struct.word_type, %struct.word_type* %18, i32 0, i32 0
  %20 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %19, i32 0, i64 1
  %21 = getelementptr inbounds %struct.LIST, %struct.LIST* %20, i32 0, i32 1
  %22 = load %union.rec*, %union.rec** %21, align 8
  %23 = bitcast %union.rec* %22 to %struct.word_type*
  %24 = getelementptr inbounds %struct.word_type, %struct.word_type* %23, i32 0, i32 0
  %25 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %24, i32 0, i64 0
  %26 = getelementptr inbounds %struct.LIST, %struct.LIST* %25, i32 0, i32 0
  %27 = load %union.rec*, %union.rec** %26, align 8
  store %union.rec* %27, %union.rec** %hd_index, align 8
  br label %28

; <label>:28                                      ; preds = %38, %16
  %29 = load %union.rec*, %union.rec** %hd_index, align 8
  %30 = bitcast %union.rec* %29 to %struct.word_type*
  %31 = getelementptr inbounds %struct.word_type, %struct.word_type* %30, i32 0, i32 1
  %32 = bitcast %union.FIRST_UNION* %31 to %struct.anon*
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

; <label>:37                                      ; preds = %28
  br label %38

; <label>:38                                      ; preds = %37
  %39 = load %union.rec*, %union.rec** %hd_index, align 8
  %40 = bitcast %union.rec* %39 to %struct.word_type*
  %41 = getelementptr inbounds %struct.word_type, %struct.word_type* %40, i32 0, i32 0
  %42 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %41, i32 0, i64 0
  %43 = getelementptr inbounds %struct.LIST, %struct.LIST* %42, i32 0, i32 0
  %44 = load %union.rec*, %union.rec** %43, align 8
  store %union.rec* %44, %union.rec** %hd_index, align 8
  br label %28

; <label>:45                                      ; preds = %28
  %46 = load %union.rec*, %union.rec** %hd_index, align 8
  %47 = bitcast %union.rec* %46 to %struct.word_type*
  %48 = getelementptr inbounds %struct.word_type, %struct.word_type* %47, i32 0, i32 1
  %49 = bitcast %union.FIRST_UNION* %48 to %struct.anon*
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %49, i32 0, i32 0
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 120
  br i1 %53, label %57, label %54

; <label>:54                                      ; preds = %45
  %55 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %56 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0))
  br label %57

; <label>:57                                      ; preds = %54, %45
  store %union.rec* null, %union.rec** %tg_inners, align 8
  store %union.rec* null, %union.rec** %hd_inners, align 8
  %58 = load %union.rec*, %union.rec** %2, align 8
  %59 = bitcast %union.rec* %58 to %struct.word_type*
  %60 = getelementptr inbounds %struct.word_type, %struct.word_type* %59, i32 0, i32 2
  %61 = bitcast %union.SECOND_UNION* %60 to %struct.anon.2*
  %62 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %61, i32 0, i32 2
  %63 = load i16, i16* %62, align 2
  %64 = lshr i16 %63, 1
  %65 = and i16 %64, 1
  %66 = zext i16 %65 to i32
  store i32 %66, i32* %was_sized, align 4
  %67 = load %union.rec*, %union.rec** %2, align 8
  %68 = bitcast %union.rec* %67 to %struct.word_type*
  %69 = getelementptr inbounds %struct.word_type, %struct.word_type* %68, i32 0, i32 2
  %70 = bitcast %union.SECOND_UNION* %69 to %struct.anon.2*
  %71 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %70, i32 0, i32 2
  %72 = load i16, i16* %71, align 2
  %73 = lshr i16 %72, 8
  %74 = and i16 %73, 1
  %75 = zext i16 %74 to i32
  store i32 %75, i32* %dim, align 4
  br label %76

; <label>:76                                      ; preds = %7055, %57
  %77 = load %union.rec*, %union.rec** %2, align 8
  %78 = bitcast %union.rec* %77 to %struct.closure_type*
  %79 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %78, i32 0, i32 6
  %80 = bitcast %union.anon.12* %79 to %union.rec**
  %81 = load %union.rec*, %union.rec** %80, align 8
  store %union.rec* %81, %union.rec** %sym, align 8
  %82 = load %union.rec*, %union.rec** %2, align 8
  %83 = bitcast %union.rec* %82 to %struct.word_type*
  %84 = getelementptr inbounds %struct.word_type, %struct.word_type* %83, i32 0, i32 2
  %85 = bitcast %union.SECOND_UNION* %84 to %struct.anon.2*
  %86 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %85, i32 0, i32 2
  %87 = load i16, i16* %86, align 2
  %88 = lshr i16 %87, 1
  %89 = and i16 %88, 1
  %90 = zext i16 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %837

; <label>:92                                      ; preds = %76
  %93 = load %union.rec*, %union.rec** %hd_index, align 8
  %94 = bitcast %union.rec* %93 to %struct.word_type*
  %95 = getelementptr inbounds %struct.word_type, %struct.word_type* %94, i32 0, i32 0
  %96 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %95, i32 0, i64 1
  %97 = getelementptr inbounds %struct.LIST, %struct.LIST* %96, i32 0, i32 1
  %98 = load %union.rec*, %union.rec** %97, align 8
  %99 = load %union.rec*, %union.rec** %sym, align 8
  %100 = call %union.rec* @SearchGalley(%union.rec* %98, %union.rec* %99, i32 1, i32 0, i32 1, i32 1)
  store %union.rec* %100, %union.rec** %target_index, align 8
  %101 = load %union.rec*, %union.rec** %target_index, align 8
  %102 = icmp eq %union.rec* %101, null
  br i1 %102, label %103, label %246

; <label>:103                                     ; preds = %92
  %104 = load %union.rec*, %union.rec** %2, align 8
  %105 = bitcast %union.rec* %104 to %struct.word_type*
  %106 = getelementptr inbounds %struct.word_type, %struct.word_type* %105, i32 0, i32 0
  %107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %106, i32 0, i64 0
  %108 = getelementptr inbounds %struct.LIST, %struct.LIST* %107, i32 0, i32 1
  %109 = load %union.rec*, %union.rec** %108, align 8
  store %union.rec* %109, %union.rec** %link, align 8
  br label %110

; <label>:110                                     ; preds = %209, %103
  %111 = load %union.rec*, %union.rec** %link, align 8
  %112 = load %union.rec*, %union.rec** %2, align 8
  %113 = icmp ne %union.rec* %111, %112
  br i1 %113, label %114, label %216

; <label>:114                                     ; preds = %110
  %115 = load %union.rec*, %union.rec** %link, align 8
  %116 = bitcast %union.rec* %115 to %struct.word_type*
  %117 = getelementptr inbounds %struct.word_type, %struct.word_type* %116, i32 0, i32 0
  %118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %117, i32 0, i64 1
  %119 = getelementptr inbounds %struct.LIST, %struct.LIST* %118, i32 0, i32 0
  %120 = load %union.rec*, %union.rec** %119, align 8
  store %union.rec* %120, %union.rec** %y, align 8
  br label %121

; <label>:121                                     ; preds = %131, %114
  %122 = load %union.rec*, %union.rec** %y, align 8
  %123 = bitcast %union.rec* %122 to %struct.word_type*
  %124 = getelementptr inbounds %struct.word_type, %struct.word_type* %123, i32 0, i32 1
  %125 = bitcast %union.FIRST_UNION* %124 to %struct.anon*
  %126 = getelementptr inbounds %struct.anon, %struct.anon* %125, i32 0, i32 0
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %138

; <label>:130                                     ; preds = %121
  br label %131

; <label>:131                                     ; preds = %130
  %132 = load %union.rec*, %union.rec** %y, align 8
  %133 = bitcast %union.rec* %132 to %struct.word_type*
  %134 = getelementptr inbounds %struct.word_type, %struct.word_type* %133, i32 0, i32 0
  %135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %134, i32 0, i64 1
  %136 = getelementptr inbounds %struct.LIST, %struct.LIST* %135, i32 0, i32 0
  %137 = load %union.rec*, %union.rec** %136, align 8
  store %union.rec* %137, %union.rec** %y, align 8
  br label %121

; <label>:138                                     ; preds = %121
  %139 = load %union.rec*, %union.rec** %y, align 8
  %140 = bitcast %union.rec* %139 to %struct.word_type*
  %141 = getelementptr inbounds %struct.word_type, %struct.word_type* %140, i32 0, i32 1
  %142 = bitcast %union.FIRST_UNION* %141 to %struct.anon*
  %143 = getelementptr inbounds %struct.anon, %struct.anon* %142, i32 0, i32 0
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %145, 9
  br i1 %146, label %147, label %189

; <label>:147                                     ; preds = %138
  %148 = load i32, i32* %dim, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %157

; <label>:150                                     ; preds = %147
  %151 = load %union.rec*, %union.rec** %y, align 8
  %152 = bitcast %union.rec* %151 to %struct.word_type*
  %153 = getelementptr inbounds %struct.word_type, %struct.word_type* %152, i32 0, i32 0
  %154 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %153, i32 0, i64 0
  %155 = getelementptr inbounds %struct.LIST, %struct.LIST* %154, i32 0, i32 1
  %156 = load %union.rec*, %union.rec** %155, align 8
  br label %164

; <label>:157                                     ; preds = %147
  %158 = load %union.rec*, %union.rec** %y, align 8
  %159 = bitcast %union.rec* %158 to %struct.word_type*
  %160 = getelementptr inbounds %struct.word_type, %struct.word_type* %159, i32 0, i32 0
  %161 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %160, i32 0, i64 0
  %162 = getelementptr inbounds %struct.LIST, %struct.LIST* %161, i32 0, i32 0
  %163 = load %union.rec*, %union.rec** %162, align 8
  br label %164

; <label>:164                                     ; preds = %157, %150
  %165 = phi %union.rec* [ %156, %150 ], [ %163, %157 ]
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
  br label %189

; <label>:189                                     ; preds = %188, %138
  %190 = load %union.rec*, %union.rec** %y, align 8
  %191 = bitcast %union.rec* %190 to %struct.word_type*
  %192 = getelementptr inbounds %struct.word_type, %struct.word_type* %191, i32 0, i32 1
  %193 = bitcast %union.FIRST_UNION* %192 to %struct.anon*
  %194 = getelementptr inbounds %struct.anon, %struct.anon* %193, i32 0, i32 0
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = icmp sge i32 %196, 9
  br i1 %197, label %198, label %208

; <label>:198                                     ; preds = %189
  %199 = load %union.rec*, %union.rec** %y, align 8
  %200 = bitcast %union.rec* %199 to %struct.word_type*
  %201 = getelementptr inbounds %struct.word_type, %struct.word_type* %200, i32 0, i32 1
  %202 = bitcast %union.FIRST_UNION* %201 to %struct.anon*
  %203 = getelementptr inbounds %struct.anon, %struct.anon* %202, i32 0, i32 0
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = icmp sle i32 %205, 99
  br i1 %206, label %207, label %208

; <label>:207                                     ; preds = %198
  br label %216

; <label>:208                                     ; preds = %198, %189
  br label %209

; <label>:209                                     ; preds = %208
  %210 = load %union.rec*, %union.rec** %link, align 8
  %211 = bitcast %union.rec* %210 to %struct.word_type*
  %212 = getelementptr inbounds %struct.word_type, %struct.word_type* %211, i32 0, i32 0
  %213 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %212, i32 0, i64 0
  %214 = getelementptr inbounds %struct.LIST, %struct.LIST* %213, i32 0, i32 1
  %215 = load %union.rec*, %union.rec** %214, align 8
  store %union.rec* %215, %union.rec** %link, align 8
  br label %110

; <label>:216                                     ; preds = %207, %110
  %217 = load %union.rec*, %union.rec** %link, align 8
  %218 = load %union.rec*, %union.rec** %2, align 8
  %219 = icmp ne %union.rec* %217, %218
  br i1 %219, label %220, label %231

; <label>:220                                     ; preds = %216
  %221 = load %union.rec*, %union.rec** %y, align 8
  %222 = bitcast %union.rec* %221 to %struct.word_type*
  %223 = getelementptr inbounds %struct.word_type, %struct.word_type* %222, i32 0, i32 1
  %224 = bitcast %union.FIRST_UNION* %223 to %struct.FILE_POS*
  %225 = load %union.rec*, %union.rec** %2, align 8
  %226 = bitcast %union.rec* %225 to %struct.closure_type*
  %227 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %226, i32 0, i32 5
  %228 = load %union.rec*, %union.rec** %227, align 8
  %229 = call i8* @SymName(%union.rec* %228)
  %230 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0), i32 2, %struct.FILE_POS* %224, i8* %229)
  br label %231

; <label>:231                                     ; preds = %220, %216
  %232 = load %union.rec*, %union.rec** %hd_inners, align 8
  %233 = icmp ne %union.rec* %232, null
  br i1 %233, label %234, label %237

; <label>:234                                     ; preds = %231
  %235 = load %union.rec*, %union.rec** %hd_inners, align 8
  %236 = call i32 @DisposeObject(%union.rec* %235)
  store %union.rec* null, %union.rec** %hd_inners, align 8
  br label %237

; <label>:237                                     ; preds = %234, %231
  %238 = load %union.rec*, %union.rec** %tg_inners, align 8
  %239 = icmp ne %union.rec* %238, null
  br i1 %239, label %240, label %243

; <label>:240                                     ; preds = %237
  %241 = load %union.rec*, %union.rec** %tg_inners, align 8
  %242 = call i32 @DisposeObject(%union.rec* %241)
  store %union.rec* null, %union.rec** %tg_inners, align 8
  br label %243

; <label>:243                                     ; preds = %240, %237
  %244 = load %union.rec*, %union.rec** %2, align 8
  call void @KillGalley(%union.rec* %244, i32 0)
  %245 = load %union.rec**, %union.rec*** %3, align 8
  store %union.rec* null, %union.rec** %245, align 8
  store i32 0, i32* %1
  br label %9922

; <label>:246                                     ; preds = %92
  %247 = load %union.rec*, %union.rec** %target_index, align 8
  %248 = bitcast %union.rec* %247 to %struct.closure_type*
  %249 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %248, i32 0, i32 5
  %250 = load %union.rec*, %union.rec** %249, align 8
  %251 = bitcast %union.rec* %250 to %struct.closure_type*
  %252 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %251, i32 0, i32 5
  %253 = load %union.rec*, %union.rec** %252, align 8
  %254 = load %union.rec*, %union.rec** @InputSym, align 8
  %255 = icmp eq %union.rec* %253, %254
  br i1 %255, label %256, label %835

; <label>:256                                     ; preds = %246
  %257 = load %union.rec*, %union.rec** %hd_index, align 8
  store %union.rec* %257, %union.rec** @xx_hold, align 8
  br label %258

; <label>:258                                     ; preds = %418, %256
  %259 = load %union.rec*, %union.rec** @xx_hold, align 8
  %260 = bitcast %union.rec* %259 to %struct.word_type*
  %261 = getelementptr inbounds %struct.word_type, %struct.word_type* %260, i32 0, i32 0
  %262 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %261, i32 0, i64 1
  %263 = getelementptr inbounds %struct.LIST, %struct.LIST* %262, i32 0, i32 1
  %264 = load %union.rec*, %union.rec** %263, align 8
  %265 = load %union.rec*, %union.rec** @xx_hold, align 8
  %266 = icmp ne %union.rec* %264, %265
  br i1 %266, label %267, label %433

; <label>:267                                     ; preds = %258
  %268 = load %union.rec*, %union.rec** @xx_hold, align 8
  %269 = bitcast %union.rec* %268 to %struct.word_type*
  %270 = getelementptr inbounds %struct.word_type, %struct.word_type* %269, i32 0, i32 0
  %271 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %270, i32 0, i64 1
  %272 = getelementptr inbounds %struct.LIST, %struct.LIST* %271, i32 0, i32 1
  %273 = load %union.rec*, %union.rec** %272, align 8
  store %union.rec* %273, %union.rec** @xx_link, align 8
  %274 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %274, %union.rec** @zz_hold, align 8
  %275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %276 = bitcast %union.rec* %275 to %struct.word_type*
  %277 = getelementptr inbounds %struct.word_type, %struct.word_type* %276, i32 0, i32 0
  %278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %277, i32 0, i64 1
  %279 = getelementptr inbounds %struct.LIST, %struct.LIST* %278, i32 0, i32 1
  %280 = load %union.rec*, %union.rec** %279, align 8
  %281 = load %union.rec*, %union.rec** @zz_hold, align 8
  %282 = icmp eq %union.rec* %280, %281
  br i1 %282, label %283, label %284

; <label>:283                                     ; preds = %267
  br label %325

; <label>:284                                     ; preds = %267
  %285 = load %union.rec*, %union.rec** @zz_hold, align 8
  %286 = bitcast %union.rec* %285 to %struct.word_type*
  %287 = getelementptr inbounds %struct.word_type, %struct.word_type* %286, i32 0, i32 0
  %288 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %287, i32 0, i64 1
  %289 = getelementptr inbounds %struct.LIST, %struct.LIST* %288, i32 0, i32 1
  %290 = load %union.rec*, %union.rec** %289, align 8
  store %union.rec* %290, %union.rec** @zz_res, align 8
  %291 = load %union.rec*, %union.rec** @zz_hold, align 8
  %292 = bitcast %union.rec* %291 to %struct.word_type*
  %293 = getelementptr inbounds %struct.word_type, %struct.word_type* %292, i32 0, i32 0
  %294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %293, i32 0, i64 1
  %295 = getelementptr inbounds %struct.LIST, %struct.LIST* %294, i32 0, i32 0
  %296 = load %union.rec*, %union.rec** %295, align 8
  %297 = load %union.rec*, %union.rec** @zz_res, align 8
  %298 = bitcast %union.rec* %297 to %struct.word_type*
  %299 = getelementptr inbounds %struct.word_type, %struct.word_type* %298, i32 0, i32 0
  %300 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %299, i32 0, i64 1
  %301 = getelementptr inbounds %struct.LIST, %struct.LIST* %300, i32 0, i32 0
  store %union.rec* %296, %union.rec** %301, align 8
  %302 = load %union.rec*, %union.rec** @zz_res, align 8
  %303 = load %union.rec*, %union.rec** @zz_hold, align 8
  %304 = bitcast %union.rec* %303 to %struct.word_type*
  %305 = getelementptr inbounds %struct.word_type, %struct.word_type* %304, i32 0, i32 0
  %306 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %305, i32 0, i64 1
  %307 = getelementptr inbounds %struct.LIST, %struct.LIST* %306, i32 0, i32 0
  %308 = load %union.rec*, %union.rec** %307, align 8
  %309 = bitcast %union.rec* %308 to %struct.word_type*
  %310 = getelementptr inbounds %struct.word_type, %struct.word_type* %309, i32 0, i32 0
  %311 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %310, i32 0, i64 1
  %312 = getelementptr inbounds %struct.LIST, %struct.LIST* %311, i32 0, i32 1
  store %union.rec* %302, %union.rec** %312, align 8
  %313 = load %union.rec*, %union.rec** @zz_hold, align 8
  %314 = load %union.rec*, %union.rec** @zz_hold, align 8
  %315 = bitcast %union.rec* %314 to %struct.word_type*
  %316 = getelementptr inbounds %struct.word_type, %struct.word_type* %315, i32 0, i32 0
  %317 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %316, i32 0, i64 1
  %318 = getelementptr inbounds %struct.LIST, %struct.LIST* %317, i32 0, i32 1
  store %union.rec* %313, %union.rec** %318, align 8
  %319 = load %union.rec*, %union.rec** @zz_hold, align 8
  %320 = bitcast %union.rec* %319 to %struct.word_type*
  %321 = getelementptr inbounds %struct.word_type, %struct.word_type* %320, i32 0, i32 0
  %322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %321, i32 0, i64 1
  %323 = getelementptr inbounds %struct.LIST, %struct.LIST* %322, i32 0, i32 0
  store %union.rec* %313, %union.rec** %323, align 8
  %324 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %325

; <label>:325                                     ; preds = %284, %283
  %326 = phi %union.rec* [ null, %283 ], [ %324, %284 ]
  %327 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %327, %union.rec** @zz_hold, align 8
  %328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %329 = bitcast %union.rec* %328 to %struct.word_type*
  %330 = getelementptr inbounds %struct.word_type, %struct.word_type* %329, i32 0, i32 0
  %331 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %330, i32 0, i64 0
  %332 = getelementptr inbounds %struct.LIST, %struct.LIST* %331, i32 0, i32 1
  %333 = load %union.rec*, %union.rec** %332, align 8
  %334 = load %union.rec*, %union.rec** @zz_hold, align 8
  %335 = icmp eq %union.rec* %333, %334
  br i1 %335, label %336, label %337

; <label>:336                                     ; preds = %325
  br label %378

; <label>:337                                     ; preds = %325
  %338 = load %union.rec*, %union.rec** @zz_hold, align 8
  %339 = bitcast %union.rec* %338 to %struct.word_type*
  %340 = getelementptr inbounds %struct.word_type, %struct.word_type* %339, i32 0, i32 0
  %341 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %340, i32 0, i64 0
  %342 = getelementptr inbounds %struct.LIST, %struct.LIST* %341, i32 0, i32 1
  %343 = load %union.rec*, %union.rec** %342, align 8
  store %union.rec* %343, %union.rec** @zz_res, align 8
  %344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %345 = bitcast %union.rec* %344 to %struct.word_type*
  %346 = getelementptr inbounds %struct.word_type, %struct.word_type* %345, i32 0, i32 0
  %347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %346, i32 0, i64 0
  %348 = getelementptr inbounds %struct.LIST, %struct.LIST* %347, i32 0, i32 0
  %349 = load %union.rec*, %union.rec** %348, align 8
  %350 = load %union.rec*, %union.rec** @zz_res, align 8
  %351 = bitcast %union.rec* %350 to %struct.word_type*
  %352 = getelementptr inbounds %struct.word_type, %struct.word_type* %351, i32 0, i32 0
  %353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %352, i32 0, i64 0
  %354 = getelementptr inbounds %struct.LIST, %struct.LIST* %353, i32 0, i32 0
  store %union.rec* %349, %union.rec** %354, align 8
  %355 = load %union.rec*, %union.rec** @zz_res, align 8
  %356 = load %union.rec*, %union.rec** @zz_hold, align 8
  %357 = bitcast %union.rec* %356 to %struct.word_type*
  %358 = getelementptr inbounds %struct.word_type, %struct.word_type* %357, i32 0, i32 0
  %359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %358, i32 0, i64 0
  %360 = getelementptr inbounds %struct.LIST, %struct.LIST* %359, i32 0, i32 0
  %361 = load %union.rec*, %union.rec** %360, align 8
  %362 = bitcast %union.rec* %361 to %struct.word_type*
  %363 = getelementptr inbounds %struct.word_type, %struct.word_type* %362, i32 0, i32 0
  %364 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %363, i32 0, i64 0
  %365 = getelementptr inbounds %struct.LIST, %struct.LIST* %364, i32 0, i32 1
  store %union.rec* %355, %union.rec** %365, align 8
  %366 = load %union.rec*, %union.rec** @zz_hold, align 8
  %367 = load %union.rec*, %union.rec** @zz_hold, align 8
  %368 = bitcast %union.rec* %367 to %struct.word_type*
  %369 = getelementptr inbounds %struct.word_type, %struct.word_type* %368, i32 0, i32 0
  %370 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %369, i32 0, i64 0
  %371 = getelementptr inbounds %struct.LIST, %struct.LIST* %370, i32 0, i32 1
  store %union.rec* %366, %union.rec** %371, align 8
  %372 = load %union.rec*, %union.rec** @zz_hold, align 8
  %373 = bitcast %union.rec* %372 to %struct.word_type*
  %374 = getelementptr inbounds %struct.word_type, %struct.word_type* %373, i32 0, i32 0
  %375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %374, i32 0, i64 0
  %376 = getelementptr inbounds %struct.LIST, %struct.LIST* %375, i32 0, i32 0
  store %union.rec* %366, %union.rec** %376, align 8
  %377 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %378

; <label>:378                                     ; preds = %337, %336
  %379 = phi %union.rec* [ null, %336 ], [ %377, %337 ]
  %380 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %380, %union.rec** @zz_hold, align 8
  %381 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %381, %union.rec** @zz_hold, align 8
  %382 = load %union.rec*, %union.rec** @zz_hold, align 8
  %383 = bitcast %union.rec* %382 to %struct.word_type*
  %384 = getelementptr inbounds %struct.word_type, %struct.word_type* %383, i32 0, i32 1
  %385 = bitcast %union.FIRST_UNION* %384 to %struct.anon*
  %386 = getelementptr inbounds %struct.anon, %struct.anon* %385, i32 0, i32 0
  %387 = load i8, i8* %386, align 1
  %388 = zext i8 %387 to i32
  %389 = icmp eq i32 %388, 11
  br i1 %389, label %399, label %390

; <label>:390                                     ; preds = %378
  %391 = load %union.rec*, %union.rec** @zz_hold, align 8
  %392 = bitcast %union.rec* %391 to %struct.word_type*
  %393 = getelementptr inbounds %struct.word_type, %struct.word_type* %392, i32 0, i32 1
  %394 = bitcast %union.FIRST_UNION* %393 to %struct.anon*
  %395 = getelementptr inbounds %struct.anon, %struct.anon* %394, i32 0, i32 0
  %396 = load i8, i8* %395, align 1
  %397 = zext i8 %396 to i32
  %398 = icmp eq i32 %397, 12
  br i1 %398, label %399, label %407

; <label>:399                                     ; preds = %390, %378
  %400 = load %union.rec*, %union.rec** @zz_hold, align 8
  %401 = bitcast %union.rec* %400 to %struct.word_type*
  %402 = getelementptr inbounds %struct.word_type, %struct.word_type* %401, i32 0, i32 1
  %403 = bitcast %union.FIRST_UNION* %402 to %struct.anon*
  %404 = getelementptr inbounds %struct.anon, %struct.anon* %403, i32 0, i32 1
  %405 = load i8, i8* %404, align 1
  %406 = zext i8 %405 to i32
  br label %418

; <label>:407                                     ; preds = %390
  %408 = load %union.rec*, %union.rec** @zz_hold, align 8
  %409 = bitcast %union.rec* %408 to %struct.word_type*
  %410 = getelementptr inbounds %struct.word_type, %struct.word_type* %409, i32 0, i32 1
  %411 = bitcast %union.FIRST_UNION* %410 to %struct.anon*
  %412 = getelementptr inbounds %struct.anon, %struct.anon* %411, i32 0, i32 0
  %413 = load i8, i8* %412, align 1
  %414 = zext i8 %413 to i64
  %415 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %414
  %416 = load i8, i8* %415, align 1
  %417 = zext i8 %416 to i32
  br label %418

; <label>:418                                     ; preds = %407, %399
  %419 = phi i32 [ %406, %399 ], [ %417, %407 ]
  store i32 %419, i32* @zz_size, align 4
  %420 = load i32, i32* @zz_size, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %421
  %423 = load %union.rec*, %union.rec** %422, align 8
  %424 = load %union.rec*, %union.rec** @zz_hold, align 8
  %425 = bitcast %union.rec* %424 to %struct.word_type*
  %426 = getelementptr inbounds %struct.word_type, %struct.word_type* %425, i32 0, i32 0
  %427 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %426, i32 0, i64 0
  %428 = getelementptr inbounds %struct.LIST, %struct.LIST* %427, i32 0, i32 0
  store %union.rec* %423, %union.rec** %428, align 8
  %429 = load %union.rec*, %union.rec** @zz_hold, align 8
  %430 = load i32, i32* @zz_size, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %431
  store %union.rec* %429, %union.rec** %432, align 8
  br label %258

; <label>:433                                     ; preds = %258
  br label %434

; <label>:434                                     ; preds = %594, %433
  %435 = load %union.rec*, %union.rec** @xx_hold, align 8
  %436 = bitcast %union.rec* %435 to %struct.word_type*
  %437 = getelementptr inbounds %struct.word_type, %struct.word_type* %436, i32 0, i32 0
  %438 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %437, i32 0, i64 0
  %439 = getelementptr inbounds %struct.LIST, %struct.LIST* %438, i32 0, i32 1
  %440 = load %union.rec*, %union.rec** %439, align 8
  %441 = load %union.rec*, %union.rec** @xx_hold, align 8
  %442 = icmp ne %union.rec* %440, %441
  br i1 %442, label %443, label %609

; <label>:443                                     ; preds = %434
  %444 = load %union.rec*, %union.rec** @xx_hold, align 8
  %445 = bitcast %union.rec* %444 to %struct.word_type*
  %446 = getelementptr inbounds %struct.word_type, %struct.word_type* %445, i32 0, i32 0
  %447 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %446, i32 0, i64 0
  %448 = getelementptr inbounds %struct.LIST, %struct.LIST* %447, i32 0, i32 1
  %449 = load %union.rec*, %union.rec** %448, align 8
  store %union.rec* %449, %union.rec** @xx_link, align 8
  %450 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %450, %union.rec** @zz_hold, align 8
  %451 = load %union.rec*, %union.rec** @zz_hold, align 8
  %452 = bitcast %union.rec* %451 to %struct.word_type*
  %453 = getelementptr inbounds %struct.word_type, %struct.word_type* %452, i32 0, i32 0
  %454 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %453, i32 0, i64 1
  %455 = getelementptr inbounds %struct.LIST, %struct.LIST* %454, i32 0, i32 1
  %456 = load %union.rec*, %union.rec** %455, align 8
  %457 = load %union.rec*, %union.rec** @zz_hold, align 8
  %458 = icmp eq %union.rec* %456, %457
  br i1 %458, label %459, label %460

; <label>:459                                     ; preds = %443
  br label %501

; <label>:460                                     ; preds = %443
  %461 = load %union.rec*, %union.rec** @zz_hold, align 8
  %462 = bitcast %union.rec* %461 to %struct.word_type*
  %463 = getelementptr inbounds %struct.word_type, %struct.word_type* %462, i32 0, i32 0
  %464 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %463, i32 0, i64 1
  %465 = getelementptr inbounds %struct.LIST, %struct.LIST* %464, i32 0, i32 1
  %466 = load %union.rec*, %union.rec** %465, align 8
  store %union.rec* %466, %union.rec** @zz_res, align 8
  %467 = load %union.rec*, %union.rec** @zz_hold, align 8
  %468 = bitcast %union.rec* %467 to %struct.word_type*
  %469 = getelementptr inbounds %struct.word_type, %struct.word_type* %468, i32 0, i32 0
  %470 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %469, i32 0, i64 1
  %471 = getelementptr inbounds %struct.LIST, %struct.LIST* %470, i32 0, i32 0
  %472 = load %union.rec*, %union.rec** %471, align 8
  %473 = load %union.rec*, %union.rec** @zz_res, align 8
  %474 = bitcast %union.rec* %473 to %struct.word_type*
  %475 = getelementptr inbounds %struct.word_type, %struct.word_type* %474, i32 0, i32 0
  %476 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %475, i32 0, i64 1
  %477 = getelementptr inbounds %struct.LIST, %struct.LIST* %476, i32 0, i32 0
  store %union.rec* %472, %union.rec** %477, align 8
  %478 = load %union.rec*, %union.rec** @zz_res, align 8
  %479 = load %union.rec*, %union.rec** @zz_hold, align 8
  %480 = bitcast %union.rec* %479 to %struct.word_type*
  %481 = getelementptr inbounds %struct.word_type, %struct.word_type* %480, i32 0, i32 0
  %482 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %481, i32 0, i64 1
  %483 = getelementptr inbounds %struct.LIST, %struct.LIST* %482, i32 0, i32 0
  %484 = load %union.rec*, %union.rec** %483, align 8
  %485 = bitcast %union.rec* %484 to %struct.word_type*
  %486 = getelementptr inbounds %struct.word_type, %struct.word_type* %485, i32 0, i32 0
  %487 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %486, i32 0, i64 1
  %488 = getelementptr inbounds %struct.LIST, %struct.LIST* %487, i32 0, i32 1
  store %union.rec* %478, %union.rec** %488, align 8
  %489 = load %union.rec*, %union.rec** @zz_hold, align 8
  %490 = load %union.rec*, %union.rec** @zz_hold, align 8
  %491 = bitcast %union.rec* %490 to %struct.word_type*
  %492 = getelementptr inbounds %struct.word_type, %struct.word_type* %491, i32 0, i32 0
  %493 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %492, i32 0, i64 1
  %494 = getelementptr inbounds %struct.LIST, %struct.LIST* %493, i32 0, i32 1
  store %union.rec* %489, %union.rec** %494, align 8
  %495 = load %union.rec*, %union.rec** @zz_hold, align 8
  %496 = bitcast %union.rec* %495 to %struct.word_type*
  %497 = getelementptr inbounds %struct.word_type, %struct.word_type* %496, i32 0, i32 0
  %498 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %497, i32 0, i64 1
  %499 = getelementptr inbounds %struct.LIST, %struct.LIST* %498, i32 0, i32 0
  store %union.rec* %489, %union.rec** %499, align 8
  %500 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %501

; <label>:501                                     ; preds = %460, %459
  %502 = phi %union.rec* [ null, %459 ], [ %500, %460 ]
  %503 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %503, %union.rec** @zz_hold, align 8
  %504 = load %union.rec*, %union.rec** @zz_hold, align 8
  %505 = bitcast %union.rec* %504 to %struct.word_type*
  %506 = getelementptr inbounds %struct.word_type, %struct.word_type* %505, i32 0, i32 0
  %507 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %506, i32 0, i64 0
  %508 = getelementptr inbounds %struct.LIST, %struct.LIST* %507, i32 0, i32 1
  %509 = load %union.rec*, %union.rec** %508, align 8
  %510 = load %union.rec*, %union.rec** @zz_hold, align 8
  %511 = icmp eq %union.rec* %509, %510
  br i1 %511, label %512, label %513

; <label>:512                                     ; preds = %501
  br label %554

; <label>:513                                     ; preds = %501
  %514 = load %union.rec*, %union.rec** @zz_hold, align 8
  %515 = bitcast %union.rec* %514 to %struct.word_type*
  %516 = getelementptr inbounds %struct.word_type, %struct.word_type* %515, i32 0, i32 0
  %517 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %516, i32 0, i64 0
  %518 = getelementptr inbounds %struct.LIST, %struct.LIST* %517, i32 0, i32 1
  %519 = load %union.rec*, %union.rec** %518, align 8
  store %union.rec* %519, %union.rec** @zz_res, align 8
  %520 = load %union.rec*, %union.rec** @zz_hold, align 8
  %521 = bitcast %union.rec* %520 to %struct.word_type*
  %522 = getelementptr inbounds %struct.word_type, %struct.word_type* %521, i32 0, i32 0
  %523 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %522, i32 0, i64 0
  %524 = getelementptr inbounds %struct.LIST, %struct.LIST* %523, i32 0, i32 0
  %525 = load %union.rec*, %union.rec** %524, align 8
  %526 = load %union.rec*, %union.rec** @zz_res, align 8
  %527 = bitcast %union.rec* %526 to %struct.word_type*
  %528 = getelementptr inbounds %struct.word_type, %struct.word_type* %527, i32 0, i32 0
  %529 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %528, i32 0, i64 0
  %530 = getelementptr inbounds %struct.LIST, %struct.LIST* %529, i32 0, i32 0
  store %union.rec* %525, %union.rec** %530, align 8
  %531 = load %union.rec*, %union.rec** @zz_res, align 8
  %532 = load %union.rec*, %union.rec** @zz_hold, align 8
  %533 = bitcast %union.rec* %532 to %struct.word_type*
  %534 = getelementptr inbounds %struct.word_type, %struct.word_type* %533, i32 0, i32 0
  %535 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %534, i32 0, i64 0
  %536 = getelementptr inbounds %struct.LIST, %struct.LIST* %535, i32 0, i32 0
  %537 = load %union.rec*, %union.rec** %536, align 8
  %538 = bitcast %union.rec* %537 to %struct.word_type*
  %539 = getelementptr inbounds %struct.word_type, %struct.word_type* %538, i32 0, i32 0
  %540 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %539, i32 0, i64 0
  %541 = getelementptr inbounds %struct.LIST, %struct.LIST* %540, i32 0, i32 1
  store %union.rec* %531, %union.rec** %541, align 8
  %542 = load %union.rec*, %union.rec** @zz_hold, align 8
  %543 = load %union.rec*, %union.rec** @zz_hold, align 8
  %544 = bitcast %union.rec* %543 to %struct.word_type*
  %545 = getelementptr inbounds %struct.word_type, %struct.word_type* %544, i32 0, i32 0
  %546 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %545, i32 0, i64 0
  %547 = getelementptr inbounds %struct.LIST, %struct.LIST* %546, i32 0, i32 1
  store %union.rec* %542, %union.rec** %547, align 8
  %548 = load %union.rec*, %union.rec** @zz_hold, align 8
  %549 = bitcast %union.rec* %548 to %struct.word_type*
  %550 = getelementptr inbounds %struct.word_type, %struct.word_type* %549, i32 0, i32 0
  %551 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %550, i32 0, i64 0
  %552 = getelementptr inbounds %struct.LIST, %struct.LIST* %551, i32 0, i32 0
  store %union.rec* %542, %union.rec** %552, align 8
  %553 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %554

; <label>:554                                     ; preds = %513, %512
  %555 = phi %union.rec* [ null, %512 ], [ %553, %513 ]
  %556 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %556, %union.rec** @zz_hold, align 8
  %557 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %557, %union.rec** @zz_hold, align 8
  %558 = load %union.rec*, %union.rec** @zz_hold, align 8
  %559 = bitcast %union.rec* %558 to %struct.word_type*
  %560 = getelementptr inbounds %struct.word_type, %struct.word_type* %559, i32 0, i32 1
  %561 = bitcast %union.FIRST_UNION* %560 to %struct.anon*
  %562 = getelementptr inbounds %struct.anon, %struct.anon* %561, i32 0, i32 0
  %563 = load i8, i8* %562, align 1
  %564 = zext i8 %563 to i32
  %565 = icmp eq i32 %564, 11
  br i1 %565, label %575, label %566

; <label>:566                                     ; preds = %554
  %567 = load %union.rec*, %union.rec** @zz_hold, align 8
  %568 = bitcast %union.rec* %567 to %struct.word_type*
  %569 = getelementptr inbounds %struct.word_type, %struct.word_type* %568, i32 0, i32 1
  %570 = bitcast %union.FIRST_UNION* %569 to %struct.anon*
  %571 = getelementptr inbounds %struct.anon, %struct.anon* %570, i32 0, i32 0
  %572 = load i8, i8* %571, align 1
  %573 = zext i8 %572 to i32
  %574 = icmp eq i32 %573, 12
  br i1 %574, label %575, label %583

; <label>:575                                     ; preds = %566, %554
  %576 = load %union.rec*, %union.rec** @zz_hold, align 8
  %577 = bitcast %union.rec* %576 to %struct.word_type*
  %578 = getelementptr inbounds %struct.word_type, %struct.word_type* %577, i32 0, i32 1
  %579 = bitcast %union.FIRST_UNION* %578 to %struct.anon*
  %580 = getelementptr inbounds %struct.anon, %struct.anon* %579, i32 0, i32 1
  %581 = load i8, i8* %580, align 1
  %582 = zext i8 %581 to i32
  br label %594

; <label>:583                                     ; preds = %566
  %584 = load %union.rec*, %union.rec** @zz_hold, align 8
  %585 = bitcast %union.rec* %584 to %struct.word_type*
  %586 = getelementptr inbounds %struct.word_type, %struct.word_type* %585, i32 0, i32 1
  %587 = bitcast %union.FIRST_UNION* %586 to %struct.anon*
  %588 = getelementptr inbounds %struct.anon, %struct.anon* %587, i32 0, i32 0
  %589 = load i8, i8* %588, align 1
  %590 = zext i8 %589 to i64
  %591 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %590
  %592 = load i8, i8* %591, align 1
  %593 = zext i8 %592 to i32
  br label %594

; <label>:594                                     ; preds = %583, %575
  %595 = phi i32 [ %582, %575 ], [ %593, %583 ]
  store i32 %595, i32* @zz_size, align 4
  %596 = load i32, i32* @zz_size, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %597
  %599 = load %union.rec*, %union.rec** %598, align 8
  %600 = load %union.rec*, %union.rec** @zz_hold, align 8
  %601 = bitcast %union.rec* %600 to %struct.word_type*
  %602 = getelementptr inbounds %struct.word_type, %struct.word_type* %601, i32 0, i32 0
  %603 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %602, i32 0, i64 0
  %604 = getelementptr inbounds %struct.LIST, %struct.LIST* %603, i32 0, i32 0
  store %union.rec* %599, %union.rec** %604, align 8
  %605 = load %union.rec*, %union.rec** @zz_hold, align 8
  %606 = load i32, i32* @zz_size, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %607
  store %union.rec* %605, %union.rec** %608, align 8
  br label %434

; <label>:609                                     ; preds = %434
  %610 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %610, %union.rec** @zz_hold, align 8
  %611 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %611, %union.rec** @zz_hold, align 8
  %612 = load %union.rec*, %union.rec** @zz_hold, align 8
  %613 = bitcast %union.rec* %612 to %struct.word_type*
  %614 = getelementptr inbounds %struct.word_type, %struct.word_type* %613, i32 0, i32 1
  %615 = bitcast %union.FIRST_UNION* %614 to %struct.anon*
  %616 = getelementptr inbounds %struct.anon, %struct.anon* %615, i32 0, i32 0
  %617 = load i8, i8* %616, align 1
  %618 = zext i8 %617 to i32
  %619 = icmp eq i32 %618, 11
  br i1 %619, label %629, label %620

; <label>:620                                     ; preds = %609
  %621 = load %union.rec*, %union.rec** @zz_hold, align 8
  %622 = bitcast %union.rec* %621 to %struct.word_type*
  %623 = getelementptr inbounds %struct.word_type, %struct.word_type* %622, i32 0, i32 1
  %624 = bitcast %union.FIRST_UNION* %623 to %struct.anon*
  %625 = getelementptr inbounds %struct.anon, %struct.anon* %624, i32 0, i32 0
  %626 = load i8, i8* %625, align 1
  %627 = zext i8 %626 to i32
  %628 = icmp eq i32 %627, 12
  br i1 %628, label %629, label %637

; <label>:629                                     ; preds = %620, %609
  %630 = load %union.rec*, %union.rec** @zz_hold, align 8
  %631 = bitcast %union.rec* %630 to %struct.word_type*
  %632 = getelementptr inbounds %struct.word_type, %struct.word_type* %631, i32 0, i32 1
  %633 = bitcast %union.FIRST_UNION* %632 to %struct.anon*
  %634 = getelementptr inbounds %struct.anon, %struct.anon* %633, i32 0, i32 1
  %635 = load i8, i8* %634, align 1
  %636 = zext i8 %635 to i32
  br label %648

; <label>:637                                     ; preds = %620
  %638 = load %union.rec*, %union.rec** @zz_hold, align 8
  %639 = bitcast %union.rec* %638 to %struct.word_type*
  %640 = getelementptr inbounds %struct.word_type, %struct.word_type* %639, i32 0, i32 1
  %641 = bitcast %union.FIRST_UNION* %640 to %struct.anon*
  %642 = getelementptr inbounds %struct.anon, %struct.anon* %641, i32 0, i32 0
  %643 = load i8, i8* %642, align 1
  %644 = zext i8 %643 to i64
  %645 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %644
  %646 = load i8, i8* %645, align 1
  %647 = zext i8 %646 to i32
  br label %648

; <label>:648                                     ; preds = %637, %629
  %649 = phi i32 [ %636, %629 ], [ %647, %637 ]
  store i32 %649, i32* @zz_size, align 4
  %650 = load i32, i32* @zz_size, align 4
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %651
  %653 = load %union.rec*, %union.rec** %652, align 8
  %654 = load %union.rec*, %union.rec** @zz_hold, align 8
  %655 = bitcast %union.rec* %654 to %struct.word_type*
  %656 = getelementptr inbounds %struct.word_type, %struct.word_type* %655, i32 0, i32 0
  %657 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %656, i32 0, i64 0
  %658 = getelementptr inbounds %struct.LIST, %struct.LIST* %657, i32 0, i32 0
  store %union.rec* %653, %union.rec** %658, align 8
  %659 = load %union.rec*, %union.rec** @zz_hold, align 8
  %660 = load i32, i32* @zz_size, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %661
  store %union.rec* %659, %union.rec** %662, align 8
  %663 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %664 = zext i8 %663 to i32
  store i32 %664, i32* @zz_size, align 4
  %665 = sext i32 %664 to i64
  %666 = icmp uge i64 %665, 265
  br i1 %666, label %667, label %670

; <label>:667                                     ; preds = %648
  %668 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %669 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %668)
  br label %695

; <label>:670                                     ; preds = %648
  %671 = load i32, i32* @zz_size, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %672
  %674 = load %union.rec*, %union.rec** %673, align 8
  %675 = icmp eq %union.rec* %674, null
  br i1 %675, label %676, label %680

; <label>:676                                     ; preds = %670
  %677 = load i32, i32* @zz_size, align 4
  %678 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %679 = call %union.rec* @GetMemory(i32 %677, %struct.FILE_POS* %678)
  store %union.rec* %679, %union.rec** @zz_hold, align 8
  br label %694

; <label>:680                                     ; preds = %670
  %681 = load i32, i32* @zz_size, align 4
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %682
  %684 = load %union.rec*, %union.rec** %683, align 8
  store %union.rec* %684, %union.rec** @zz_hold, align 8
  store %union.rec* %684, %union.rec** @zz_hold, align 8
  %685 = load %union.rec*, %union.rec** @zz_hold, align 8
  %686 = bitcast %union.rec* %685 to %struct.word_type*
  %687 = getelementptr inbounds %struct.word_type, %struct.word_type* %686, i32 0, i32 0
  %688 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %687, i32 0, i64 0
  %689 = getelementptr inbounds %struct.LIST, %struct.LIST* %688, i32 0, i32 0
  %690 = load %union.rec*, %union.rec** %689, align 8
  %691 = load i32, i32* @zz_size, align 4
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %692
  store %union.rec* %690, %union.rec** %693, align 8
  br label %694

; <label>:694                                     ; preds = %680, %676
  br label %695

; <label>:695                                     ; preds = %694, %667
  %696 = load %union.rec*, %union.rec** @zz_hold, align 8
  %697 = bitcast %union.rec* %696 to %struct.word_type*
  %698 = getelementptr inbounds %struct.word_type, %struct.word_type* %697, i32 0, i32 1
  %699 = bitcast %union.FIRST_UNION* %698 to %struct.anon*
  %700 = getelementptr inbounds %struct.anon, %struct.anon* %699, i32 0, i32 0
  store i8 0, i8* %700, align 1
  %701 = load %union.rec*, %union.rec** @zz_hold, align 8
  %702 = load %union.rec*, %union.rec** @zz_hold, align 8
  %703 = bitcast %union.rec* %702 to %struct.word_type*
  %704 = getelementptr inbounds %struct.word_type, %struct.word_type* %703, i32 0, i32 0
  %705 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %704, i32 0, i64 1
  %706 = getelementptr inbounds %struct.LIST, %struct.LIST* %705, i32 0, i32 1
  store %union.rec* %701, %union.rec** %706, align 8
  %707 = load %union.rec*, %union.rec** @zz_hold, align 8
  %708 = bitcast %union.rec* %707 to %struct.word_type*
  %709 = getelementptr inbounds %struct.word_type, %struct.word_type* %708, i32 0, i32 0
  %710 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %709, i32 0, i64 1
  %711 = getelementptr inbounds %struct.LIST, %struct.LIST* %710, i32 0, i32 0
  store %union.rec* %701, %union.rec** %711, align 8
  %712 = load %union.rec*, %union.rec** @zz_hold, align 8
  %713 = bitcast %union.rec* %712 to %struct.word_type*
  %714 = getelementptr inbounds %struct.word_type, %struct.word_type* %713, i32 0, i32 0
  %715 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %714, i32 0, i64 0
  %716 = getelementptr inbounds %struct.LIST, %struct.LIST* %715, i32 0, i32 1
  store %union.rec* %701, %union.rec** %716, align 8
  %717 = load %union.rec*, %union.rec** @zz_hold, align 8
  %718 = bitcast %union.rec* %717 to %struct.word_type*
  %719 = getelementptr inbounds %struct.word_type, %struct.word_type* %718, i32 0, i32 0
  %720 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %719, i32 0, i64 0
  %721 = getelementptr inbounds %struct.LIST, %struct.LIST* %720, i32 0, i32 0
  store %union.rec* %701, %union.rec** %721, align 8
  store %union.rec* %701, %union.rec** @xx_link, align 8
  %722 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %722, %union.rec** @zz_res, align 8
  %723 = load %union.rec*, %union.rec** %target_index, align 8
  store %union.rec* %723, %union.rec** @zz_hold, align 8
  %724 = load %union.rec*, %union.rec** @zz_hold, align 8
  %725 = icmp eq %union.rec* %724, null
  br i1 %725, label %726, label %728

; <label>:726                                     ; preds = %695
  %727 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %776

; <label>:728                                     ; preds = %695
  %729 = load %union.rec*, %union.rec** @zz_res, align 8
  %730 = icmp eq %union.rec* %729, null
  br i1 %730, label %731, label %733

; <label>:731                                     ; preds = %728
  %732 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %774

; <label>:733                                     ; preds = %728
  %734 = load %union.rec*, %union.rec** @zz_hold, align 8
  %735 = bitcast %union.rec* %734 to %struct.word_type*
  %736 = getelementptr inbounds %struct.word_type, %struct.word_type* %735, i32 0, i32 0
  %737 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %736, i32 0, i64 0
  %738 = getelementptr inbounds %struct.LIST, %struct.LIST* %737, i32 0, i32 0
  %739 = load %union.rec*, %union.rec** %738, align 8
  store %union.rec* %739, %union.rec** @zz_tmp, align 8
  %740 = load %union.rec*, %union.rec** @zz_res, align 8
  %741 = bitcast %union.rec* %740 to %struct.word_type*
  %742 = getelementptr inbounds %struct.word_type, %struct.word_type* %741, i32 0, i32 0
  %743 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %742, i32 0, i64 0
  %744 = getelementptr inbounds %struct.LIST, %struct.LIST* %743, i32 0, i32 0
  %745 = load %union.rec*, %union.rec** %744, align 8
  %746 = load %union.rec*, %union.rec** @zz_hold, align 8
  %747 = bitcast %union.rec* %746 to %struct.word_type*
  %748 = getelementptr inbounds %struct.word_type, %struct.word_type* %747, i32 0, i32 0
  %749 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %748, i32 0, i64 0
  %750 = getelementptr inbounds %struct.LIST, %struct.LIST* %749, i32 0, i32 0
  store %union.rec* %745, %union.rec** %750, align 8
  %751 = load %union.rec*, %union.rec** @zz_hold, align 8
  %752 = load %union.rec*, %union.rec** @zz_res, align 8
  %753 = bitcast %union.rec* %752 to %struct.word_type*
  %754 = getelementptr inbounds %struct.word_type, %struct.word_type* %753, i32 0, i32 0
  %755 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %754, i32 0, i64 0
  %756 = getelementptr inbounds %struct.LIST, %struct.LIST* %755, i32 0, i32 0
  %757 = load %union.rec*, %union.rec** %756, align 8
  %758 = bitcast %union.rec* %757 to %struct.word_type*
  %759 = getelementptr inbounds %struct.word_type, %struct.word_type* %758, i32 0, i32 0
  %760 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %759, i32 0, i64 0
  %761 = getelementptr inbounds %struct.LIST, %struct.LIST* %760, i32 0, i32 1
  store %union.rec* %751, %union.rec** %761, align 8
  %762 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %763 = load %union.rec*, %union.rec** @zz_res, align 8
  %764 = bitcast %union.rec* %763 to %struct.word_type*
  %765 = getelementptr inbounds %struct.word_type, %struct.word_type* %764, i32 0, i32 0
  %766 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %765, i32 0, i64 0
  %767 = getelementptr inbounds %struct.LIST, %struct.LIST* %766, i32 0, i32 0
  store %union.rec* %762, %union.rec** %767, align 8
  %768 = load %union.rec*, %union.rec** @zz_res, align 8
  %769 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %770 = bitcast %union.rec* %769 to %struct.word_type*
  %771 = getelementptr inbounds %struct.word_type, %struct.word_type* %770, i32 0, i32 0
  %772 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %771, i32 0, i64 0
  %773 = getelementptr inbounds %struct.LIST, %struct.LIST* %772, i32 0, i32 1
  store %union.rec* %768, %union.rec** %773, align 8
  br label %774

; <label>:774                                     ; preds = %733, %731
  %775 = phi %union.rec* [ %732, %731 ], [ %768, %733 ]
  br label %776

; <label>:776                                     ; preds = %774, %726
  %777 = phi %union.rec* [ %727, %726 ], [ %775, %774 ]
  %778 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %778, %union.rec** @zz_res, align 8
  %779 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %779, %union.rec** @zz_hold, align 8
  %780 = load %union.rec*, %union.rec** @zz_hold, align 8
  %781 = icmp eq %union.rec* %780, null
  br i1 %781, label %782, label %784

; <label>:782                                     ; preds = %776
  %783 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %832

; <label>:784                                     ; preds = %776
  %785 = load %union.rec*, %union.rec** @zz_res, align 8
  %786 = icmp eq %union.rec* %785, null
  br i1 %786, label %787, label %789

; <label>:787                                     ; preds = %784
  %788 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %830

; <label>:789                                     ; preds = %784
  %790 = load %union.rec*, %union.rec** @zz_hold, align 8
  %791 = bitcast %union.rec* %790 to %struct.word_type*
  %792 = getelementptr inbounds %struct.word_type, %struct.word_type* %791, i32 0, i32 0
  %793 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %792, i32 0, i64 1
  %794 = getelementptr inbounds %struct.LIST, %struct.LIST* %793, i32 0, i32 0
  %795 = load %union.rec*, %union.rec** %794, align 8
  store %union.rec* %795, %union.rec** @zz_tmp, align 8
  %796 = load %union.rec*, %union.rec** @zz_res, align 8
  %797 = bitcast %union.rec* %796 to %struct.word_type*
  %798 = getelementptr inbounds %struct.word_type, %struct.word_type* %797, i32 0, i32 0
  %799 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %798, i32 0, i64 1
  %800 = getelementptr inbounds %struct.LIST, %struct.LIST* %799, i32 0, i32 0
  %801 = load %union.rec*, %union.rec** %800, align 8
  %802 = load %union.rec*, %union.rec** @zz_hold, align 8
  %803 = bitcast %union.rec* %802 to %struct.word_type*
  %804 = getelementptr inbounds %struct.word_type, %struct.word_type* %803, i32 0, i32 0
  %805 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %804, i32 0, i64 1
  %806 = getelementptr inbounds %struct.LIST, %struct.LIST* %805, i32 0, i32 0
  store %union.rec* %801, %union.rec** %806, align 8
  %807 = load %union.rec*, %union.rec** @zz_hold, align 8
  %808 = load %union.rec*, %union.rec** @zz_res, align 8
  %809 = bitcast %union.rec* %808 to %struct.word_type*
  %810 = getelementptr inbounds %struct.word_type, %struct.word_type* %809, i32 0, i32 0
  %811 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %810, i32 0, i64 1
  %812 = getelementptr inbounds %struct.LIST, %struct.LIST* %811, i32 0, i32 0
  %813 = load %union.rec*, %union.rec** %812, align 8
  %814 = bitcast %union.rec* %813 to %struct.word_type*
  %815 = getelementptr inbounds %struct.word_type, %struct.word_type* %814, i32 0, i32 0
  %816 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %815, i32 0, i64 1
  %817 = getelementptr inbounds %struct.LIST, %struct.LIST* %816, i32 0, i32 1
  store %union.rec* %807, %union.rec** %817, align 8
  %818 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %819 = load %union.rec*, %union.rec** @zz_res, align 8
  %820 = bitcast %union.rec* %819 to %struct.word_type*
  %821 = getelementptr inbounds %struct.word_type, %struct.word_type* %820, i32 0, i32 0
  %822 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %821, i32 0, i64 1
  %823 = getelementptr inbounds %struct.LIST, %struct.LIST* %822, i32 0, i32 0
  store %union.rec* %818, %union.rec** %823, align 8
  %824 = load %union.rec*, %union.rec** @zz_res, align 8
  %825 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %826 = bitcast %union.rec* %825 to %struct.word_type*
  %827 = getelementptr inbounds %struct.word_type, %struct.word_type* %826, i32 0, i32 0
  %828 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %827, i32 0, i64 1
  %829 = getelementptr inbounds %struct.LIST, %struct.LIST* %828, i32 0, i32 1
  store %union.rec* %824, %union.rec** %829, align 8
  br label %830

; <label>:830                                     ; preds = %789, %787
  %831 = phi %union.rec* [ %788, %787 ], [ %824, %789 ]
  br label %832

; <label>:832                                     ; preds = %830, %782
  %833 = phi %union.rec* [ %783, %782 ], [ %831, %830 ]
  %834 = load %union.rec**, %union.rec*** %3, align 8
  store %union.rec* null, %union.rec** %834, align 8
  store i32 1, i32* %1
  br label %9922

; <label>:835                                     ; preds = %246
  br label %836

; <label>:836                                     ; preds = %835
  br label %885

; <label>:837                                     ; preds = %76
  %838 = load %union.rec*, %union.rec** %2, align 8
  %839 = bitcast %union.rec* %838 to %struct.word_type*
  %840 = getelementptr inbounds %struct.word_type, %struct.word_type* %839, i32 0, i32 2
  %841 = bitcast %union.SECOND_UNION* %840 to %struct.anon.2*
  %842 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %841, i32 0, i32 0
  %843 = load i8, i8* %842, align 1
  %844 = zext i8 %843 to i32
  %845 = icmp eq i32 %844, 133
  br i1 %845, label %846, label %855

; <label>:846                                     ; preds = %837
  %847 = load %union.rec*, %union.rec** %hd_index, align 8
  %848 = bitcast %union.rec* %847 to %struct.word_type*
  %849 = getelementptr inbounds %struct.word_type, %struct.word_type* %848, i32 0, i32 0
  %850 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %849, i32 0, i64 1
  %851 = getelementptr inbounds %struct.LIST, %struct.LIST* %850, i32 0, i32 1
  %852 = load %union.rec*, %union.rec** %851, align 8
  %853 = load %union.rec*, %union.rec** %sym, align 8
  %854 = call %union.rec* @SearchGalley(%union.rec* %852, %union.rec* %853, i32 0, i32 1, i32 1, i32 0)
  store %union.rec* %854, %union.rec** %target_index, align 8
  store i32 0, i32* %need_precedes, align 4
  br label %879

; <label>:855                                     ; preds = %837
  %856 = load %union.rec*, %union.rec** %hd_index, align 8
  %857 = bitcast %union.rec* %856 to %struct.word_type*
  %858 = getelementptr inbounds %struct.word_type, %struct.word_type* %857, i32 0, i32 0
  %859 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %858, i32 0, i64 1
  %860 = getelementptr inbounds %struct.LIST, %struct.LIST* %859, i32 0, i32 1
  %861 = load %union.rec*, %union.rec** %860, align 8
  %862 = load %union.rec*, %union.rec** %sym, align 8
  %863 = call %union.rec* @SearchGalley(%union.rec* %861, %union.rec* %862, i32 0, i32 1, i32 0, i32 0)
  store %union.rec* %863, %union.rec** %target_index, align 8
  %864 = load %union.rec*, %union.rec** %target_index, align 8
  %865 = icmp ne %union.rec* %864, null
  %866 = zext i1 %865 to i32
  store i32 %866, i32* %need_precedes, align 4
  %867 = load %union.rec*, %union.rec** %target_index, align 8
  %868 = icmp eq %union.rec* %867, null
  br i1 %868, label %869, label %878

; <label>:869                                     ; preds = %855
  %870 = load %union.rec*, %union.rec** %hd_index, align 8
  %871 = bitcast %union.rec* %870 to %struct.word_type*
  %872 = getelementptr inbounds %struct.word_type, %struct.word_type* %871, i32 0, i32 0
  %873 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %872, i32 0, i64 1
  %874 = getelementptr inbounds %struct.LIST, %struct.LIST* %873, i32 0, i32 1
  %875 = load %union.rec*, %union.rec** %874, align 8
  %876 = load %union.rec*, %union.rec** %sym, align 8
  %877 = call %union.rec* @SearchGalley(%union.rec* %875, %union.rec* %876, i32 1, i32 1, i32 1, i32 0)
  store %union.rec* %877, %union.rec** %target_index, align 8
  br label %878

; <label>:878                                     ; preds = %869, %855
  br label %879

; <label>:879                                     ; preds = %878, %846
  %880 = load %union.rec*, %union.rec** %target_index, align 8
  %881 = icmp eq %union.rec* %880, null
  br i1 %881, label %882, label %884

; <label>:882                                     ; preds = %879
  %883 = load %union.rec**, %union.rec*** %3, align 8
  store %union.rec* null, %union.rec** %883, align 8
  store i32 2, i32* %1
  br label %9922

; <label>:884                                     ; preds = %879
  br label %885

; <label>:885                                     ; preds = %884, %836
  %886 = load %union.rec*, %union.rec** %target_index, align 8
  %887 = bitcast %union.rec* %886 to %struct.word_type*
  %888 = getelementptr inbounds %struct.word_type, %struct.word_type* %887, i32 0, i32 1
  %889 = bitcast %union.FIRST_UNION* %888 to %struct.anon*
  %890 = getelementptr inbounds %struct.anon, %struct.anon* %889, i32 0, i32 0
  %891 = load i8, i8* %890, align 1
  %892 = zext i8 %891 to i32
  %893 = icmp eq i32 %892, 121
  br i1 %893, label %897, label %894

; <label>:894                                     ; preds = %885
  %895 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %896 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %895, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  br label %897

; <label>:897                                     ; preds = %894, %885
  %898 = load %union.rec*, %union.rec** %target_index, align 8
  %899 = bitcast %union.rec* %898 to %struct.closure_type*
  %900 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %899, i32 0, i32 5
  %901 = load %union.rec*, %union.rec** %900, align 8
  store %union.rec* %901, %union.rec** %target, align 8
  %902 = load %union.rec*, %union.rec** %target, align 8
  %903 = bitcast %union.rec* %902 to %struct.word_type*
  %904 = getelementptr inbounds %struct.word_type, %struct.word_type* %903, i32 0, i32 1
  %905 = bitcast %union.FIRST_UNION* %904 to %struct.anon*
  %906 = getelementptr inbounds %struct.anon, %struct.anon* %905, i32 0, i32 0
  %907 = load i8, i8* %906, align 1
  %908 = zext i8 %907 to i32
  %909 = icmp eq i32 %908, 2
  br i1 %909, label %913, label %910

; <label>:910                                     ; preds = %897
  %911 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %912 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %911, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  br label %913

; <label>:913                                     ; preds = %910, %897
  call void @EnterErrorBlock(i32 0)
  %914 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 8), align 1
  %915 = zext i8 %914 to i32
  store i32 %915, i32* @zz_size, align 4
  %916 = sext i32 %915 to i64
  %917 = icmp uge i64 %916, 265
  br i1 %917, label %918, label %921

; <label>:918                                     ; preds = %913
  %919 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %920 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %919)
  br label %946

; <label>:921                                     ; preds = %913
  %922 = load i32, i32* @zz_size, align 4
  %923 = sext i32 %922 to i64
  %924 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %923
  %925 = load %union.rec*, %union.rec** %924, align 8
  %926 = icmp eq %union.rec* %925, null
  br i1 %926, label %927, label %931

; <label>:927                                     ; preds = %921
  %928 = load i32, i32* @zz_size, align 4
  %929 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %930 = call %union.rec* @GetMemory(i32 %928, %struct.FILE_POS* %929)
  store %union.rec* %930, %union.rec** @zz_hold, align 8
  br label %945

; <label>:931                                     ; preds = %921
  %932 = load i32, i32* @zz_size, align 4
  %933 = sext i32 %932 to i64
  %934 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %933
  %935 = load %union.rec*, %union.rec** %934, align 8
  store %union.rec* %935, %union.rec** @zz_hold, align 8
  store %union.rec* %935, %union.rec** @zz_hold, align 8
  %936 = load %union.rec*, %union.rec** @zz_hold, align 8
  %937 = bitcast %union.rec* %936 to %struct.word_type*
  %938 = getelementptr inbounds %struct.word_type, %struct.word_type* %937, i32 0, i32 0
  %939 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %938, i32 0, i64 0
  %940 = getelementptr inbounds %struct.LIST, %struct.LIST* %939, i32 0, i32 0
  %941 = load %union.rec*, %union.rec** %940, align 8
  %942 = load i32, i32* @zz_size, align 4
  %943 = sext i32 %942 to i64
  %944 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %943
  store %union.rec* %941, %union.rec** %944, align 8
  br label %945

; <label>:945                                     ; preds = %931, %927
  br label %946

; <label>:946                                     ; preds = %945, %918
  %947 = load %union.rec*, %union.rec** @zz_hold, align 8
  %948 = bitcast %union.rec* %947 to %struct.word_type*
  %949 = getelementptr inbounds %struct.word_type, %struct.word_type* %948, i32 0, i32 1
  %950 = bitcast %union.FIRST_UNION* %949 to %struct.anon*
  %951 = getelementptr inbounds %struct.anon, %struct.anon* %950, i32 0, i32 0
  store i8 8, i8* %951, align 1
  %952 = load %union.rec*, %union.rec** @zz_hold, align 8
  %953 = load %union.rec*, %union.rec** @zz_hold, align 8
  %954 = bitcast %union.rec* %953 to %struct.word_type*
  %955 = getelementptr inbounds %struct.word_type, %struct.word_type* %954, i32 0, i32 0
  %956 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %955, i32 0, i64 1
  %957 = getelementptr inbounds %struct.LIST, %struct.LIST* %956, i32 0, i32 1
  store %union.rec* %952, %union.rec** %957, align 8
  %958 = load %union.rec*, %union.rec** @zz_hold, align 8
  %959 = bitcast %union.rec* %958 to %struct.word_type*
  %960 = getelementptr inbounds %struct.word_type, %struct.word_type* %959, i32 0, i32 0
  %961 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %960, i32 0, i64 1
  %962 = getelementptr inbounds %struct.LIST, %struct.LIST* %961, i32 0, i32 0
  store %union.rec* %952, %union.rec** %962, align 8
  %963 = load %union.rec*, %union.rec** @zz_hold, align 8
  %964 = bitcast %union.rec* %963 to %struct.word_type*
  %965 = getelementptr inbounds %struct.word_type, %struct.word_type* %964, i32 0, i32 0
  %966 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %965, i32 0, i64 0
  %967 = getelementptr inbounds %struct.LIST, %struct.LIST* %966, i32 0, i32 1
  store %union.rec* %952, %union.rec** %967, align 8
  %968 = load %union.rec*, %union.rec** @zz_hold, align 8
  %969 = bitcast %union.rec* %968 to %struct.word_type*
  %970 = getelementptr inbounds %struct.word_type, %struct.word_type* %969, i32 0, i32 0
  %971 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %970, i32 0, i64 0
  %972 = getelementptr inbounds %struct.LIST, %struct.LIST* %971, i32 0, i32 0
  store %union.rec* %952, %union.rec** %972, align 8
  store %union.rec* %952, %union.rec** %target_galley, align 8
  %973 = load %union.rec*, %union.rec** %target_galley, align 8
  %974 = bitcast %union.rec* %973 to %struct.word_type*
  %975 = getelementptr inbounds %struct.word_type, %struct.word_type* %974, i32 0, i32 2
  %976 = bitcast %union.SECOND_UNION* %975 to %struct.anon.2*
  %977 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %976, i32 0, i32 2
  %978 = load i16, i16* %977, align 2
  %979 = and i16 %978, -4097
  store i16 %979, i16* %977, align 2
  %980 = load %union.rec*, %union.rec** %target_galley, align 8
  %981 = bitcast %union.rec* %980 to %struct.head_type*
  %982 = getelementptr inbounds %struct.head_type, %struct.head_type* %981, i32 0, i32 11
  store %union.rec* null, %union.rec** %982, align 8
  %983 = load %union.rec*, %union.rec** %target_galley, align 8
  %984 = bitcast %union.rec* %983 to %struct.head_type*
  %985 = getelementptr inbounds %struct.head_type, %struct.head_type* %984, i32 0, i32 12
  store %union.rec* null, %union.rec** %985, align 8
  %986 = load %union.rec*, %union.rec** %target_galley, align 8
  %987 = bitcast %union.rec* %986 to %struct.head_type*
  %988 = getelementptr inbounds %struct.head_type, %struct.head_type* %987, i32 0, i32 14
  store %union.rec* null, %union.rec** %988, align 8
  %989 = load %union.rec*, %union.rec** %target_galley, align 8
  %990 = bitcast %union.rec* %989 to %struct.head_type*
  %991 = getelementptr inbounds %struct.head_type, %struct.head_type* %990, i32 0, i32 13
  store %union.rec* null, %union.rec** %991, align 8
  %992 = load %union.rec*, %union.rec** %target_galley, align 8
  %993 = bitcast %union.rec* %992 to %struct.head_type*
  %994 = getelementptr inbounds %struct.head_type, %struct.head_type* %993, i32 0, i32 9
  store %union.rec* null, %union.rec** %994, align 8
  %995 = load %union.rec*, %union.rec** %target_galley, align 8
  %996 = bitcast %union.rec* %995 to %struct.head_type*
  %997 = getelementptr inbounds %struct.head_type, %struct.head_type* %996, i32 0, i32 8
  store %union.rec* null, %union.rec** %997, align 8
  %998 = load %union.rec*, %union.rec** %target, align 8
  %999 = bitcast %union.rec* %998 to %struct.word_type*
  %1000 = getelementptr inbounds %struct.word_type, %struct.word_type* %999, i32 0, i32 2
  %1001 = bitcast %union.SECOND_UNION* %1000 to %struct.anon.2*
  %1002 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1001, i32 0, i32 2
  %1003 = load i16, i16* %1002, align 2
  %1004 = lshr i16 %1003, 3
  %1005 = and i16 %1004, 1
  %1006 = zext i16 %1005 to i32
  %1007 = icmp ne i32 %1006, 0
  %1008 = select i1 %1007, i32 0, i32 1
  %1009 = load %union.rec*, %union.rec** %target_galley, align 8
  %1010 = bitcast %union.rec* %1009 to %struct.word_type*
  %1011 = getelementptr inbounds %struct.word_type, %struct.word_type* %1010, i32 0, i32 2
  %1012 = bitcast %union.SECOND_UNION* %1011 to %struct.anon.2*
  %1013 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1012, i32 0, i32 2
  %1014 = trunc i32 %1008 to i16
  %1015 = load i16, i16* %1013, align 2
  %1016 = and i16 %1014, 1
  %1017 = shl i16 %1016, 8
  %1018 = and i16 %1015, -257
  %1019 = or i16 %1018, %1017
  store i16 %1019, i16* %1013, align 2
  %1020 = zext i16 %1016 to i32
  %1021 = load %union.rec*, %union.rec** %target, align 8
  %1022 = bitcast %union.rec* %1021 to %struct.word_type*
  %1023 = getelementptr inbounds %struct.word_type, %struct.word_type* %1022, i32 0, i32 1
  %1024 = bitcast %union.FIRST_UNION* %1023 to %struct.FILE_POS*
  %1025 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1024, i32 0, i32 2
  %1026 = load i16, i16* %1025, align 2
  %1027 = load %union.rec*, %union.rec** %target_galley, align 8
  %1028 = bitcast %union.rec* %1027 to %struct.word_type*
  %1029 = getelementptr inbounds %struct.word_type, %struct.word_type* %1028, i32 0, i32 1
  %1030 = bitcast %union.FIRST_UNION* %1029 to %struct.FILE_POS*
  %1031 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1030, i32 0, i32 2
  store i16 %1026, i16* %1031, align 2
  %1032 = load %union.rec*, %union.rec** %target, align 8
  %1033 = bitcast %union.rec* %1032 to %struct.word_type*
  %1034 = getelementptr inbounds %struct.word_type, %struct.word_type* %1033, i32 0, i32 1
  %1035 = bitcast %union.FIRST_UNION* %1034 to %struct.FILE_POS*
  %1036 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1035, i32 0, i32 3
  %1037 = load i32, i32* %1036, align 4
  %1038 = and i32 %1037, 1048575
  %1039 = load %union.rec*, %union.rec** %target_galley, align 8
  %1040 = bitcast %union.rec* %1039 to %struct.word_type*
  %1041 = getelementptr inbounds %struct.word_type, %struct.word_type* %1040, i32 0, i32 1
  %1042 = bitcast %union.FIRST_UNION* %1041 to %struct.FILE_POS*
  %1043 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1042, i32 0, i32 3
  %1044 = load i32, i32* %1043, align 4
  %1045 = and i32 %1038, 1048575
  %1046 = and i32 %1044, -1048576
  %1047 = or i32 %1046, %1045
  store i32 %1047, i32* %1043, align 4
  %1048 = load %union.rec*, %union.rec** %target, align 8
  %1049 = bitcast %union.rec* %1048 to %struct.word_type*
  %1050 = getelementptr inbounds %struct.word_type, %struct.word_type* %1049, i32 0, i32 1
  %1051 = bitcast %union.FIRST_UNION* %1050 to %struct.FILE_POS*
  %1052 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1051, i32 0, i32 3
  %1053 = load i32, i32* %1052, align 4
  %1054 = lshr i32 %1053, 20
  %1055 = load %union.rec*, %union.rec** %target_galley, align 8
  %1056 = bitcast %union.rec* %1055 to %struct.word_type*
  %1057 = getelementptr inbounds %struct.word_type, %struct.word_type* %1056, i32 0, i32 1
  %1058 = bitcast %union.FIRST_UNION* %1057 to %struct.FILE_POS*
  %1059 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1058, i32 0, i32 3
  %1060 = load i32, i32* %1059, align 4
  %1061 = and i32 %1054, 4095
  %1062 = shl i32 %1061, 20
  %1063 = and i32 %1060, 1048575
  %1064 = or i32 %1063, %1062
  store i32 %1064, i32* %1059, align 4
  %1065 = load %union.rec*, %union.rec** %target, align 8
  %1066 = bitcast %union.rec* %1065 to %struct.closure_type*
  %1067 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1066, i32 0, i32 5
  %1068 = load %union.rec*, %union.rec** %1067, align 8
  %1069 = load %union.rec*, %union.rec** %target_galley, align 8
  %1070 = bitcast %union.rec* %1069 to %struct.closure_type*
  %1071 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1070, i32 0, i32 5
  store %union.rec* %1068, %union.rec** %1071, align 8
  %1072 = load %union.rec*, %union.rec** %target_galley, align 8
  %1073 = bitcast %union.rec* %1072 to %struct.head_type*
  %1074 = getelementptr inbounds %struct.head_type, %struct.head_type* %1073, i32 0, i32 7
  store %union.rec* null, %union.rec** %1074, align 8
  %1075 = load %union.rec*, %union.rec** %target_galley, align 8
  %1076 = bitcast %union.rec* %1075 to %struct.closure_type*
  %1077 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1076, i32 0, i32 6
  %1078 = bitcast %union.anon.12* %1077 to %union.rec**
  store %union.rec* null, %union.rec** %1078, align 8
  %1079 = load %union.rec*, %union.rec** %target_galley, align 8
  %1080 = bitcast %union.rec* %1079 to %struct.word_type*
  %1081 = getelementptr inbounds %struct.word_type, %struct.word_type* %1080, i32 0, i32 2
  %1082 = bitcast %union.SECOND_UNION* %1081 to %struct.anon.2*
  %1083 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1082, i32 0, i32 0
  store i8 -127, i8* %1083, align 1
  %1084 = load %union.rec*, %union.rec** %target_galley, align 8
  %1085 = bitcast %union.rec* %1084 to %struct.word_type*
  %1086 = getelementptr inbounds %struct.word_type, %struct.word_type* %1085, i32 0, i32 2
  %1087 = bitcast %union.SECOND_UNION* %1086 to %struct.anon.2*
  %1088 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1087, i32 0, i32 2
  %1089 = load i16, i16* %1088, align 2
  %1090 = and i16 %1089, -129
  store i16 %1090, i16* %1088, align 2
  %1091 = load %union.rec*, %union.rec** %target_galley, align 8
  %1092 = bitcast %union.rec* %1091 to %struct.word_type*
  %1093 = getelementptr inbounds %struct.word_type, %struct.word_type* %1092, i32 0, i32 2
  %1094 = bitcast %union.SECOND_UNION* %1093 to %struct.anon.2*
  %1095 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1094, i32 0, i32 2
  %1096 = load i16, i16* %1095, align 2
  %1097 = and i16 %1096, -3
  store i16 %1097, i16* %1095, align 2
  %1098 = load i32, i32* %dim, align 4
  %1099 = icmp eq i32 %1098, 1
  br i1 %1099, label %1100, label %1140

; <label>:1100                                    ; preds = %946
  %1101 = load %union.rec*, %union.rec** %target, align 8
  %1102 = load i32, i32* %dim, align 4
  %1103 = sub nsw i32 1, %1102
  call void @Constrained(%union.rec* %1101, %struct.CONSTRAINT* %c, i32 %1103, %union.rec** %junk)
  %1104 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 0
  %1105 = load i32, i32* %1104, align 4
  %1106 = icmp ne i32 %1105, 8388607
  br i1 %1106, label %1126, label %1107

; <label>:1107                                    ; preds = %1100
  %1108 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %1109 = load i32, i32* %1108, align 4
  %1110 = icmp ne i32 %1109, 8388607
  br i1 %1110, label %1126, label %1111

; <label>:1111                                    ; preds = %1107
  %1112 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 2
  %1113 = load i32, i32* %1112, align 4
  %1114 = icmp ne i32 %1113, 8388607
  br i1 %1114, label %1126, label %1115

; <label>:1115                                    ; preds = %1111
  %1116 = load %union.rec*, %union.rec** %target, align 8
  %1117 = bitcast %union.rec* %1116 to %struct.word_type*
  %1118 = getelementptr inbounds %struct.word_type, %struct.word_type* %1117, i32 0, i32 1
  %1119 = bitcast %union.FIRST_UNION* %1118 to %struct.FILE_POS*
  %1120 = load %union.rec*, %union.rec** %target, align 8
  %1121 = bitcast %union.rec* %1120 to %struct.closure_type*
  %1122 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1121, i32 0, i32 5
  %1123 = load %union.rec*, %union.rec** %1122, align 8
  %1124 = call i8* @SymName(%union.rec* %1123)
  %1125 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0), i32 1, %struct.FILE_POS* %1119, i8* %1124)
  br label %1126

; <label>:1126                                    ; preds = %1115, %1111, %1107, %1100
  %1127 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 0
  %1128 = load i32, i32* %1127, align 4
  %1129 = icmp sle i32 0, %1128
  br i1 %1129, label %1130, label %1138

; <label>:1130                                    ; preds = %1126
  %1131 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %1132 = load i32, i32* %1131, align 4
  %1133 = icmp sle i32 0, %1132
  br i1 %1133, label %1134, label %1138

; <label>:1134                                    ; preds = %1130
  %1135 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 2
  %1136 = load i32, i32* %1135, align 4
  %1137 = icmp sle i32 0, %1136
  br i1 %1137, label %1139, label %1138

; <label>:1138                                    ; preds = %1134, %1130, %1126
  store %union.rec* null, %union.rec** %y, align 8
  br label %6780

; <label>:1139                                    ; preds = %1134
  br label %1144

; <label>:1140                                    ; preds = %946
  %1141 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 0
  store i32 8388607, i32* %1141, align 4
  %1142 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  store i32 8388607, i32* %1142, align 4
  %1143 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 2
  store i32 8388607, i32* %1143, align 4
  br label %1144

; <label>:1144                                    ; preds = %1140, %1139
  %1145 = load %union.rec*, %union.rec** %target, align 8
  %1146 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1147 = call %union.rec* @CopyObject(%union.rec* %1145, %struct.FILE_POS* %1146)
  store %union.rec* %1147, %union.rec** %tmp, align 8
  %1148 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1149 = zext i8 %1148 to i32
  store i32 %1149, i32* @zz_size, align 4
  %1150 = sext i32 %1149 to i64
  %1151 = icmp uge i64 %1150, 265
  br i1 %1151, label %1152, label %1155

; <label>:1152                                    ; preds = %1144
  %1153 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1154 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %1153)
  br label %1180

; <label>:1155                                    ; preds = %1144
  %1156 = load i32, i32* @zz_size, align 4
  %1157 = sext i32 %1156 to i64
  %1158 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1157
  %1159 = load %union.rec*, %union.rec** %1158, align 8
  %1160 = icmp eq %union.rec* %1159, null
  br i1 %1160, label %1161, label %1165

; <label>:1161                                    ; preds = %1155
  %1162 = load i32, i32* @zz_size, align 4
  %1163 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1164 = call %union.rec* @GetMemory(i32 %1162, %struct.FILE_POS* %1163)
  store %union.rec* %1164, %union.rec** @zz_hold, align 8
  br label %1179

; <label>:1165                                    ; preds = %1155
  %1166 = load i32, i32* @zz_size, align 4
  %1167 = sext i32 %1166 to i64
  %1168 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1167
  %1169 = load %union.rec*, %union.rec** %1168, align 8
  store %union.rec* %1169, %union.rec** @zz_hold, align 8
  store %union.rec* %1169, %union.rec** @zz_hold, align 8
  %1170 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1171 = bitcast %union.rec* %1170 to %struct.word_type*
  %1172 = getelementptr inbounds %struct.word_type, %struct.word_type* %1171, i32 0, i32 0
  %1173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1172, i32 0, i64 0
  %1174 = getelementptr inbounds %struct.LIST, %struct.LIST* %1173, i32 0, i32 0
  %1175 = load %union.rec*, %union.rec** %1174, align 8
  %1176 = load i32, i32* @zz_size, align 4
  %1177 = sext i32 %1176 to i64
  %1178 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1177
  store %union.rec* %1175, %union.rec** %1178, align 8
  br label %1179

; <label>:1179                                    ; preds = %1165, %1161
  br label %1180

; <label>:1180                                    ; preds = %1179, %1152
  %1181 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1182 = bitcast %union.rec* %1181 to %struct.word_type*
  %1183 = getelementptr inbounds %struct.word_type, %struct.word_type* %1182, i32 0, i32 1
  %1184 = bitcast %union.FIRST_UNION* %1183 to %struct.anon*
  %1185 = getelementptr inbounds %struct.anon, %struct.anon* %1184, i32 0, i32 0
  store i8 0, i8* %1185, align 1
  %1186 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1188 = bitcast %union.rec* %1187 to %struct.word_type*
  %1189 = getelementptr inbounds %struct.word_type, %struct.word_type* %1188, i32 0, i32 0
  %1190 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1189, i32 0, i64 1
  %1191 = getelementptr inbounds %struct.LIST, %struct.LIST* %1190, i32 0, i32 1
  store %union.rec* %1186, %union.rec** %1191, align 8
  %1192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1193 = bitcast %union.rec* %1192 to %struct.word_type*
  %1194 = getelementptr inbounds %struct.word_type, %struct.word_type* %1193, i32 0, i32 0
  %1195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1194, i32 0, i64 1
  %1196 = getelementptr inbounds %struct.LIST, %struct.LIST* %1195, i32 0, i32 0
  store %union.rec* %1186, %union.rec** %1196, align 8
  %1197 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1198 = bitcast %union.rec* %1197 to %struct.word_type*
  %1199 = getelementptr inbounds %struct.word_type, %struct.word_type* %1198, i32 0, i32 0
  %1200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1199, i32 0, i64 0
  %1201 = getelementptr inbounds %struct.LIST, %struct.LIST* %1200, i32 0, i32 1
  store %union.rec* %1186, %union.rec** %1201, align 8
  %1202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1203 = bitcast %union.rec* %1202 to %struct.word_type*
  %1204 = getelementptr inbounds %struct.word_type, %struct.word_type* %1203, i32 0, i32 0
  %1205 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1204, i32 0, i64 0
  %1206 = getelementptr inbounds %struct.LIST, %struct.LIST* %1205, i32 0, i32 0
  store %union.rec* %1186, %union.rec** %1206, align 8
  store %union.rec* %1186, %union.rec** @xx_link, align 8
  %1207 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1207, %union.rec** @zz_res, align 8
  %1208 = load %union.rec*, %union.rec** %target_galley, align 8
  store %union.rec* %1208, %union.rec** @zz_hold, align 8
  %1209 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1210 = icmp eq %union.rec* %1209, null
  br i1 %1210, label %1211, label %1213

; <label>:1211                                    ; preds = %1180
  %1212 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1261

; <label>:1213                                    ; preds = %1180
  %1214 = load %union.rec*, %union.rec** @zz_res, align 8
  %1215 = icmp eq %union.rec* %1214, null
  br i1 %1215, label %1216, label %1218

; <label>:1216                                    ; preds = %1213
  %1217 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1259

; <label>:1218                                    ; preds = %1213
  %1219 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1220 = bitcast %union.rec* %1219 to %struct.word_type*
  %1221 = getelementptr inbounds %struct.word_type, %struct.word_type* %1220, i32 0, i32 0
  %1222 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1221, i32 0, i64 0
  %1223 = getelementptr inbounds %struct.LIST, %struct.LIST* %1222, i32 0, i32 0
  %1224 = load %union.rec*, %union.rec** %1223, align 8
  store %union.rec* %1224, %union.rec** @zz_tmp, align 8
  %1225 = load %union.rec*, %union.rec** @zz_res, align 8
  %1226 = bitcast %union.rec* %1225 to %struct.word_type*
  %1227 = getelementptr inbounds %struct.word_type, %struct.word_type* %1226, i32 0, i32 0
  %1228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1227, i32 0, i64 0
  %1229 = getelementptr inbounds %struct.LIST, %struct.LIST* %1228, i32 0, i32 0
  %1230 = load %union.rec*, %union.rec** %1229, align 8
  %1231 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1232 = bitcast %union.rec* %1231 to %struct.word_type*
  %1233 = getelementptr inbounds %struct.word_type, %struct.word_type* %1232, i32 0, i32 0
  %1234 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1233, i32 0, i64 0
  %1235 = getelementptr inbounds %struct.LIST, %struct.LIST* %1234, i32 0, i32 0
  store %union.rec* %1230, %union.rec** %1235, align 8
  %1236 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1237 = load %union.rec*, %union.rec** @zz_res, align 8
  %1238 = bitcast %union.rec* %1237 to %struct.word_type*
  %1239 = getelementptr inbounds %struct.word_type, %struct.word_type* %1238, i32 0, i32 0
  %1240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1239, i32 0, i64 0
  %1241 = getelementptr inbounds %struct.LIST, %struct.LIST* %1240, i32 0, i32 0
  %1242 = load %union.rec*, %union.rec** %1241, align 8
  %1243 = bitcast %union.rec* %1242 to %struct.word_type*
  %1244 = getelementptr inbounds %struct.word_type, %struct.word_type* %1243, i32 0, i32 0
  %1245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1244, i32 0, i64 0
  %1246 = getelementptr inbounds %struct.LIST, %struct.LIST* %1245, i32 0, i32 1
  store %union.rec* %1236, %union.rec** %1246, align 8
  %1247 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1248 = load %union.rec*, %union.rec** @zz_res, align 8
  %1249 = bitcast %union.rec* %1248 to %struct.word_type*
  %1250 = getelementptr inbounds %struct.word_type, %struct.word_type* %1249, i32 0, i32 0
  %1251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1250, i32 0, i64 0
  %1252 = getelementptr inbounds %struct.LIST, %struct.LIST* %1251, i32 0, i32 0
  store %union.rec* %1247, %union.rec** %1252, align 8
  %1253 = load %union.rec*, %union.rec** @zz_res, align 8
  %1254 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1255 = bitcast %union.rec* %1254 to %struct.word_type*
  %1256 = getelementptr inbounds %struct.word_type, %struct.word_type* %1255, i32 0, i32 0
  %1257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1256, i32 0, i64 0
  %1258 = getelementptr inbounds %struct.LIST, %struct.LIST* %1257, i32 0, i32 1
  store %union.rec* %1253, %union.rec** %1258, align 8
  br label %1259

; <label>:1259                                    ; preds = %1218, %1216
  %1260 = phi %union.rec* [ %1217, %1216 ], [ %1253, %1218 ]
  br label %1261

; <label>:1261                                    ; preds = %1259, %1211
  %1262 = phi %union.rec* [ %1212, %1211 ], [ %1260, %1259 ]
  %1263 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1263, %union.rec** @zz_res, align 8
  %1264 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %1264, %union.rec** @zz_hold, align 8
  %1265 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1266 = icmp eq %union.rec* %1265, null
  br i1 %1266, label %1267, label %1269

; <label>:1267                                    ; preds = %1261
  %1268 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1317

; <label>:1269                                    ; preds = %1261
  %1270 = load %union.rec*, %union.rec** @zz_res, align 8
  %1271 = icmp eq %union.rec* %1270, null
  br i1 %1271, label %1272, label %1274

; <label>:1272                                    ; preds = %1269
  %1273 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1315

; <label>:1274                                    ; preds = %1269
  %1275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1276 = bitcast %union.rec* %1275 to %struct.word_type*
  %1277 = getelementptr inbounds %struct.word_type, %struct.word_type* %1276, i32 0, i32 0
  %1278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1277, i32 0, i64 1
  %1279 = getelementptr inbounds %struct.LIST, %struct.LIST* %1278, i32 0, i32 0
  %1280 = load %union.rec*, %union.rec** %1279, align 8
  store %union.rec* %1280, %union.rec** @zz_tmp, align 8
  %1281 = load %union.rec*, %union.rec** @zz_res, align 8
  %1282 = bitcast %union.rec* %1281 to %struct.word_type*
  %1283 = getelementptr inbounds %struct.word_type, %struct.word_type* %1282, i32 0, i32 0
  %1284 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1283, i32 0, i64 1
  %1285 = getelementptr inbounds %struct.LIST, %struct.LIST* %1284, i32 0, i32 0
  %1286 = load %union.rec*, %union.rec** %1285, align 8
  %1287 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1288 = bitcast %union.rec* %1287 to %struct.word_type*
  %1289 = getelementptr inbounds %struct.word_type, %struct.word_type* %1288, i32 0, i32 0
  %1290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1289, i32 0, i64 1
  %1291 = getelementptr inbounds %struct.LIST, %struct.LIST* %1290, i32 0, i32 0
  store %union.rec* %1286, %union.rec** %1291, align 8
  %1292 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1293 = load %union.rec*, %union.rec** @zz_res, align 8
  %1294 = bitcast %union.rec* %1293 to %struct.word_type*
  %1295 = getelementptr inbounds %struct.word_type, %struct.word_type* %1294, i32 0, i32 0
  %1296 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1295, i32 0, i64 1
  %1297 = getelementptr inbounds %struct.LIST, %struct.LIST* %1296, i32 0, i32 0
  %1298 = load %union.rec*, %union.rec** %1297, align 8
  %1299 = bitcast %union.rec* %1298 to %struct.word_type*
  %1300 = getelementptr inbounds %struct.word_type, %struct.word_type* %1299, i32 0, i32 0
  %1301 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1300, i32 0, i64 1
  %1302 = getelementptr inbounds %struct.LIST, %struct.LIST* %1301, i32 0, i32 1
  store %union.rec* %1292, %union.rec** %1302, align 8
  %1303 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1304 = load %union.rec*, %union.rec** @zz_res, align 8
  %1305 = bitcast %union.rec* %1304 to %struct.word_type*
  %1306 = getelementptr inbounds %struct.word_type, %struct.word_type* %1305, i32 0, i32 0
  %1307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1306, i32 0, i64 1
  %1308 = getelementptr inbounds %struct.LIST, %struct.LIST* %1307, i32 0, i32 0
  store %union.rec* %1303, %union.rec** %1308, align 8
  %1309 = load %union.rec*, %union.rec** @zz_res, align 8
  %1310 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1311 = bitcast %union.rec* %1310 to %struct.word_type*
  %1312 = getelementptr inbounds %struct.word_type, %struct.word_type* %1311, i32 0, i32 0
  %1313 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1312, i32 0, i64 1
  %1314 = getelementptr inbounds %struct.LIST, %struct.LIST* %1313, i32 0, i32 1
  store %union.rec* %1309, %union.rec** %1314, align 8
  br label %1315

; <label>:1315                                    ; preds = %1274, %1272
  %1316 = phi %union.rec* [ %1273, %1272 ], [ %1309, %1274 ]
  br label %1317

; <label>:1317                                    ; preds = %1315, %1267
  %1318 = phi %union.rec* [ %1268, %1267 ], [ %1316, %1315 ]
  %1319 = load %union.rec*, %union.rec** %tmp, align 8
  %1320 = call %union.rec* @DetachEnv(%union.rec* %1319)
  store %union.rec* %1320, %union.rec** %env, align 8
  %1321 = load %union.rec*, %union.rec** %target_galley, align 8
  %1322 = load %union.rec*, %union.rec** %env, align 8
  %1323 = load %union.rec*, %union.rec** %target, align 8
  %1324 = bitcast %union.rec* %1323 to %struct.word_type*
  %1325 = getelementptr inbounds %struct.word_type, %struct.word_type* %1324, i32 0, i32 2
  %1326 = bitcast %union.SECOND_UNION* %1325 to %struct.anon.2*
  %1327 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1326, i32 0, i32 2
  %1328 = load i16, i16* %1327, align 2
  %1329 = lshr i16 %1328, 4
  %1330 = and i16 %1329, 1
  %1331 = zext i16 %1330 to i32
  %1332 = icmp ne i32 %1331, 0
  br i1 %1332, label %1344, label %1333

; <label>:1333                                    ; preds = %1317
  %1334 = load %union.rec*, %union.rec** %target, align 8
  %1335 = bitcast %union.rec* %1334 to %struct.word_type*
  %1336 = getelementptr inbounds %struct.word_type, %struct.word_type* %1335, i32 0, i32 2
  %1337 = bitcast %union.SECOND_UNION* %1336 to %struct.anon.2*
  %1338 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1337, i32 0, i32 2
  %1339 = load i16, i16* %1338, align 2
  %1340 = lshr i16 %1339, 3
  %1341 = and i16 %1340, 1
  %1342 = zext i16 %1341 to i32
  %1343 = icmp ne i32 %1342, 0
  br label %1344

; <label>:1344                                    ; preds = %1333, %1317
  %1345 = phi i1 [ true, %1317 ], [ %1343, %1333 ]
  %1346 = zext i1 %1345 to i32
  %1347 = load %union.rec*, %union.rec** %target, align 8
  %1348 = bitcast %union.rec* %1347 to %struct.word_type*
  %1349 = getelementptr inbounds %struct.word_type, %struct.word_type* %1348, i32 0, i32 2
  %1350 = bitcast %union.SECOND_UNION* %1349 to %struct.anon.2*
  %1351 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1350, i32 0, i32 2
  %1352 = load i16, i16* %1351, align 2
  %1353 = lshr i16 %1352, 2
  %1354 = and i16 %1353, 1
  %1355 = zext i16 %1354 to i32
  %1356 = load %union.rec*, %union.rec** %target_index, align 8
  %1357 = bitcast %union.rec* %1356 to %struct.word_type*
  %1358 = getelementptr inbounds %struct.word_type, %struct.word_type* %1357, i32 0, i32 2
  %1359 = bitcast %union.SECOND_UNION* %1358 to %struct.anon.2*
  %1360 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1359, i32 0, i32 2
  %1361 = load i16, i16* %1360, align 2
  %1362 = and i16 %1361, 1
  %1363 = zext i16 %1362 to i32
  %1364 = load %union.rec*, %union.rec** %target_index, align 8
  %1365 = bitcast %union.rec* %1364 to %struct.word_type*
  %1366 = getelementptr inbounds %struct.word_type, %struct.word_type* %1365, i32 0, i32 2
  %1367 = bitcast %union.SECOND_UNION* %1366 to %struct.anon.2*
  %1368 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1367, i32 0, i32 2
  %1369 = load i16, i16* %1368, align 2
  %1370 = lshr i16 %1369, 6
  %1371 = and i16 %1370, 1
  %1372 = zext i16 %1371 to i32
  %1373 = load %union.rec*, %union.rec** %target, align 8
  %1374 = bitcast %union.rec* %1373 to %struct.closure_type*
  %1375 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1374, i32 0, i32 4
  %1376 = bitcast %union.FOURTH_UNION* %1375 to %struct.STYLE*
  %1377 = load %union.rec*, %union.rec** %2, align 8
  %1378 = bitcast %union.rec* %1377 to %struct.closure_type*
  %1379 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1378, i32 0, i32 6
  %1380 = bitcast %union.anon.12* %1379 to %union.rec**
  %1381 = load %union.rec*, %union.rec** %1380, align 8
  %1382 = load %union.rec*, %union.rec** %2, align 8
  %1383 = bitcast %union.rec* %1382 to %struct.head_type*
  %1384 = getelementptr inbounds %struct.head_type, %struct.head_type* %1383, i32 0, i32 12
  %1385 = load %union.rec*, %union.rec** %1384, align 8
  %1386 = icmp ne %union.rec* %1385, null
  br i1 %1386, label %1387, label %1394

; <label>:1387                                    ; preds = %1344
  %1388 = load %union.rec*, %union.rec** %2, align 8
  %1389 = bitcast %union.rec* %1388 to %struct.head_type*
  %1390 = getelementptr inbounds %struct.head_type, %struct.head_type* %1389, i32 0, i32 12
  %1391 = load %union.rec*, %union.rec** %1390, align 8
  %1392 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1393 = call %union.rec* @CopyObject(%union.rec* %1391, %struct.FILE_POS* %1392)
  br label %1395

; <label>:1394                                    ; preds = %1344
  br label %1395

; <label>:1395                                    ; preds = %1394, %1387
  %1396 = phi %union.rec* [ %1393, %1387 ], [ null, %1394 ]
  call void @SizeGalley(%union.rec* %1321, %union.rec* %1322, i32 %1346, i32 %1355, i32 %1363, i32 %1372, %struct.STYLE* %1376, %struct.CONSTRAINT* %c, %union.rec* %1381, %union.rec** %dest_index, %union.rec** %recs, %union.rec** %tg_inners, %union.rec* %1396)
  %1397 = load %union.rec*, %union.rec** %recs, align 8
  %1398 = icmp ne %union.rec* %1397, null
  br i1 %1398, label %1399, label %1401

; <label>:1399                                    ; preds = %1395
  %1400 = load %union.rec*, %union.rec** %recs, align 8
  call void @ExpandRecursives(%union.rec* %1400)
  br label %1401

; <label>:1401                                    ; preds = %1399, %1395
  %1402 = load %union.rec*, %union.rec** %dest_index, align 8
  %1403 = bitcast %union.rec* %1402 to %struct.closure_type*
  %1404 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1403, i32 0, i32 5
  %1405 = load %union.rec*, %union.rec** %1404, align 8
  store %union.rec* %1405, %union.rec** %dest, align 8
  %1406 = load %union.rec*, %union.rec** %dest, align 8
  %1407 = bitcast %union.rec* %1406 to %struct.word_type*
  %1408 = getelementptr inbounds %struct.word_type, %struct.word_type* %1407, i32 0, i32 2
  %1409 = bitcast %union.SECOND_UNION* %1408 to %struct.anon.1*
  %1410 = bitcast %struct.anon.1* %1409 to i32*
  %1411 = load i32, i32* %1410, align 4
  %1412 = lshr i32 %1411, 29
  %1413 = and i32 %1412, 3
  %1414 = icmp eq i32 %1413, 0
  br i1 %1414, label %1415, label %1424

; <label>:1415                                    ; preds = %1401
  %1416 = load %union.rec*, %union.rec** %dest, align 8
  %1417 = bitcast %union.rec* %1416 to %struct.word_type*
  %1418 = getelementptr inbounds %struct.word_type, %struct.word_type* %1417, i32 0, i32 2
  %1419 = bitcast %union.SECOND_UNION* %1418 to %struct.anon.1*
  %1420 = bitcast %struct.anon.1* %1419 to i32*
  %1421 = load i32, i32* %1420, align 4
  %1422 = and i32 %1421, -1610612737
  %1423 = or i32 %1422, 536870912
  store i32 %1423, i32* %1420, align 4
  br label %1424

; <label>:1424                                    ; preds = %1415, %1401
  %1425 = load i32, i32* %dim, align 4
  %1426 = icmp eq i32 %1425, 1
  br i1 %1426, label %1427, label %1459

; <label>:1427                                    ; preds = %1424
  %1428 = load %union.rec*, %union.rec** %dest, align 8
  %1429 = load i32, i32* %dim, align 4
  %1430 = sub nsw i32 1, %1429
  call void @Constrained(%union.rec* %1428, %struct.CONSTRAINT* %c, i32 %1430, %union.rec** %junk)
  %1431 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 0
  %1432 = load i32, i32* %1431, align 4
  %1433 = icmp ne i32 %1432, 8388607
  br i1 %1433, label %1445, label %1434

; <label>:1434                                    ; preds = %1427
  %1435 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %1436 = load i32, i32* %1435, align 4
  %1437 = icmp ne i32 %1436, 8388607
  br i1 %1437, label %1445, label %1438

; <label>:1438                                    ; preds = %1434
  %1439 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 2
  %1440 = load i32, i32* %1439, align 4
  %1441 = icmp ne i32 %1440, 8388607
  br i1 %1441, label %1445, label %1442

; <label>:1442                                    ; preds = %1438
  %1443 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1444 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1443, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0))
  br label %1445

; <label>:1445                                    ; preds = %1442, %1438, %1434, %1427
  %1446 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 0
  %1447 = load i32, i32* %1446, align 4
  %1448 = icmp sle i32 0, %1447
  br i1 %1448, label %1449, label %1457

; <label>:1449                                    ; preds = %1445
  %1450 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %1451 = load i32, i32* %1450, align 4
  %1452 = icmp sle i32 0, %1451
  br i1 %1452, label %1453, label %1457

; <label>:1453                                    ; preds = %1449
  %1454 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 2
  %1455 = load i32, i32* %1454, align 4
  %1456 = icmp sle i32 0, %1455
  br i1 %1456, label %1458, label %1457

; <label>:1457                                    ; preds = %1453, %1449, %1445
  store %union.rec* null, %union.rec** %y, align 8
  br label %6780

; <label>:1458                                    ; preds = %1453
  br label %1459

; <label>:1459                                    ; preds = %1458, %1424
  %1460 = load %union.rec*, %union.rec** %2, align 8
  %1461 = bitcast %union.rec* %1460 to %struct.word_type*
  %1462 = getelementptr inbounds %struct.word_type, %struct.word_type* %1461, i32 0, i32 2
  %1463 = bitcast %union.SECOND_UNION* %1462 to %struct.anon.2*
  %1464 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1463, i32 0, i32 2
  %1465 = load i16, i16* %1464, align 2
  %1466 = lshr i16 %1465, 1
  %1467 = and i16 %1466, 1
  %1468 = zext i16 %1467 to i32
  %1469 = icmp ne i32 %1468, 0
  br i1 %1469, label %2361, label %1470

; <label>:1470                                    ; preds = %1459
  call void @EnterErrorBlock(i32 1)
  store %union.rec* null, %union.rec** %n1, align 8
  %1471 = load %union.rec*, %union.rec** %2, align 8
  %1472 = bitcast %union.rec* %1471 to %struct.word_type*
  %1473 = getelementptr inbounds %struct.word_type, %struct.word_type* %1472, i32 0, i32 0
  %1474 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1473, i32 0, i64 0
  %1475 = getelementptr inbounds %struct.LIST, %struct.LIST* %1474, i32 0, i32 1
  %1476 = load %union.rec*, %union.rec** %1475, align 8
  %1477 = bitcast %union.rec* %1476 to %struct.word_type*
  %1478 = getelementptr inbounds %struct.word_type, %struct.word_type* %1477, i32 0, i32 0
  %1479 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1478, i32 0, i64 1
  %1480 = getelementptr inbounds %struct.LIST, %struct.LIST* %1479, i32 0, i32 0
  %1481 = load %union.rec*, %union.rec** %1480, align 8
  store %union.rec* %1481, %union.rec** %y, align 8
  br label %1482

; <label>:1482                                    ; preds = %1492, %1470
  %1483 = load %union.rec*, %union.rec** %y, align 8
  %1484 = bitcast %union.rec* %1483 to %struct.word_type*
  %1485 = getelementptr inbounds %struct.word_type, %struct.word_type* %1484, i32 0, i32 1
  %1486 = bitcast %union.FIRST_UNION* %1485 to %struct.anon*
  %1487 = getelementptr inbounds %struct.anon, %struct.anon* %1486, i32 0, i32 0
  %1488 = load i8, i8* %1487, align 1
  %1489 = zext i8 %1488 to i32
  %1490 = icmp eq i32 %1489, 0
  br i1 %1490, label %1491, label %1499

; <label>:1491                                    ; preds = %1482
  br label %1492

; <label>:1492                                    ; preds = %1491
  %1493 = load %union.rec*, %union.rec** %y, align 8
  %1494 = bitcast %union.rec* %1493 to %struct.word_type*
  %1495 = getelementptr inbounds %struct.word_type, %struct.word_type* %1494, i32 0, i32 0
  %1496 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1495, i32 0, i64 1
  %1497 = getelementptr inbounds %struct.LIST, %struct.LIST* %1496, i32 0, i32 0
  %1498 = load %union.rec*, %union.rec** %1497, align 8
  store %union.rec* %1498, %union.rec** %y, align 8
  br label %1482

; <label>:1499                                    ; preds = %1482
  %1500 = load %union.rec*, %union.rec** %y, align 8
  %1501 = call %union.rec* @DetachEnv(%union.rec* %1500)
  store %union.rec* %1501, %union.rec** %env, align 8
  %1502 = load %union.rec*, %union.rec** %2, align 8
  %1503 = load %union.rec*, %union.rec** %env, align 8
  %1504 = load i32, i32* %dim, align 4
  %1505 = icmp eq i32 %1504, 1
  br i1 %1505, label %1506, label %1516

; <label>:1506                                    ; preds = %1499
  %1507 = load %union.rec*, %union.rec** %dest, align 8
  %1508 = bitcast %union.rec* %1507 to %struct.word_type*
  %1509 = getelementptr inbounds %struct.word_type, %struct.word_type* %1508, i32 0, i32 2
  %1510 = bitcast %union.SECOND_UNION* %1509 to %struct.anon.2*
  %1511 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1510, i32 0, i32 2
  %1512 = load i16, i16* %1511, align 2
  %1513 = lshr i16 %1512, 2
  %1514 = and i16 %1513, 1
  %1515 = zext i16 %1514 to i32
  br label %1517

; <label>:1516                                    ; preds = %1499
  br label %1517

; <label>:1517                                    ; preds = %1516, %1506
  %1518 = phi i32 [ %1515, %1506 ], [ 0, %1516 ]
  %1519 = load %union.rec*, %union.rec** %target_index, align 8
  %1520 = bitcast %union.rec* %1519 to %struct.word_type*
  %1521 = getelementptr inbounds %struct.word_type, %struct.word_type* %1520, i32 0, i32 2
  %1522 = bitcast %union.SECOND_UNION* %1521 to %struct.anon.2*
  %1523 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1522, i32 0, i32 2
  %1524 = load i16, i16* %1523, align 2
  %1525 = and i16 %1524, 1
  %1526 = zext i16 %1525 to i32
  %1527 = load %union.rec*, %union.rec** %dest, align 8
  %1528 = bitcast %union.rec* %1527 to %struct.closure_type*
  %1529 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1528, i32 0, i32 4
  %1530 = bitcast %union.FOURTH_UNION* %1529 to %struct.STYLE*
  call void @SizeGalley(%union.rec* %1502, %union.rec* %1503, i32 1, i32 %1518, i32 %1526, i32 1, %struct.STYLE* %1530, %struct.CONSTRAINT* %c, %union.rec* null, %union.rec** %n1, %union.rec** %recs, %union.rec** %hd_inners, %union.rec* null)
  %1531 = load %union.rec*, %union.rec** %recs, align 8
  %1532 = icmp ne %union.rec* %1531, null
  br i1 %1532, label %1533, label %1535

; <label>:1533                                    ; preds = %1517
  %1534 = load %union.rec*, %union.rec** %recs, align 8
  call void @ExpandRecursives(%union.rec* %1534)
  br label %1535

; <label>:1535                                    ; preds = %1533, %1517
  %1536 = load i32, i32* %need_precedes, align 4
  %1537 = icmp ne i32 %1536, 0
  br i1 %1537, label %1538, label %2360

; <label>:1538                                    ; preds = %1535
  %1539 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 124), align 1
  %1540 = zext i8 %1539 to i32
  store i32 %1540, i32* @zz_size, align 4
  %1541 = sext i32 %1540 to i64
  %1542 = icmp uge i64 %1541, 265
  br i1 %1542, label %1543, label %1546

; <label>:1543                                    ; preds = %1538
  %1544 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1545 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %1544)
  br label %1571

; <label>:1546                                    ; preds = %1538
  %1547 = load i32, i32* @zz_size, align 4
  %1548 = sext i32 %1547 to i64
  %1549 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1548
  %1550 = load %union.rec*, %union.rec** %1549, align 8
  %1551 = icmp eq %union.rec* %1550, null
  br i1 %1551, label %1552, label %1556

; <label>:1552                                    ; preds = %1546
  %1553 = load i32, i32* @zz_size, align 4
  %1554 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1555 = call %union.rec* @GetMemory(i32 %1553, %struct.FILE_POS* %1554)
  store %union.rec* %1555, %union.rec** @zz_hold, align 8
  br label %1570

; <label>:1556                                    ; preds = %1546
  %1557 = load i32, i32* @zz_size, align 4
  %1558 = sext i32 %1557 to i64
  %1559 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1558
  %1560 = load %union.rec*, %union.rec** %1559, align 8
  store %union.rec* %1560, %union.rec** @zz_hold, align 8
  store %union.rec* %1560, %union.rec** @zz_hold, align 8
  %1561 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1562 = bitcast %union.rec* %1561 to %struct.word_type*
  %1563 = getelementptr inbounds %struct.word_type, %struct.word_type* %1562, i32 0, i32 0
  %1564 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1563, i32 0, i64 0
  %1565 = getelementptr inbounds %struct.LIST, %struct.LIST* %1564, i32 0, i32 0
  %1566 = load %union.rec*, %union.rec** %1565, align 8
  %1567 = load i32, i32* @zz_size, align 4
  %1568 = sext i32 %1567 to i64
  %1569 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1568
  store %union.rec* %1566, %union.rec** %1569, align 8
  br label %1570

; <label>:1570                                    ; preds = %1556, %1552
  br label %1571

; <label>:1571                                    ; preds = %1570, %1543
  %1572 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1573 = bitcast %union.rec* %1572 to %struct.word_type*
  %1574 = getelementptr inbounds %struct.word_type, %struct.word_type* %1573, i32 0, i32 1
  %1575 = bitcast %union.FIRST_UNION* %1574 to %struct.anon*
  %1576 = getelementptr inbounds %struct.anon, %struct.anon* %1575, i32 0, i32 0
  store i8 124, i8* %1576, align 1
  %1577 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1578 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1579 = bitcast %union.rec* %1578 to %struct.word_type*
  %1580 = getelementptr inbounds %struct.word_type, %struct.word_type* %1579, i32 0, i32 0
  %1581 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1580, i32 0, i64 1
  %1582 = getelementptr inbounds %struct.LIST, %struct.LIST* %1581, i32 0, i32 1
  store %union.rec* %1577, %union.rec** %1582, align 8
  %1583 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1584 = bitcast %union.rec* %1583 to %struct.word_type*
  %1585 = getelementptr inbounds %struct.word_type, %struct.word_type* %1584, i32 0, i32 0
  %1586 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1585, i32 0, i64 1
  %1587 = getelementptr inbounds %struct.LIST, %struct.LIST* %1586, i32 0, i32 0
  store %union.rec* %1577, %union.rec** %1587, align 8
  %1588 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1589 = bitcast %union.rec* %1588 to %struct.word_type*
  %1590 = getelementptr inbounds %struct.word_type, %struct.word_type* %1589, i32 0, i32 0
  %1591 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1590, i32 0, i64 0
  %1592 = getelementptr inbounds %struct.LIST, %struct.LIST* %1591, i32 0, i32 1
  store %union.rec* %1577, %union.rec** %1592, align 8
  %1593 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1594 = bitcast %union.rec* %1593 to %struct.word_type*
  %1595 = getelementptr inbounds %struct.word_type, %struct.word_type* %1594, i32 0, i32 0
  %1596 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1595, i32 0, i64 0
  %1597 = getelementptr inbounds %struct.LIST, %struct.LIST* %1596, i32 0, i32 0
  store %union.rec* %1577, %union.rec** %1597, align 8
  store %union.rec* %1577, %union.rec** %index1, align 8
  %1598 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 125), align 1
  %1599 = zext i8 %1598 to i32
  store i32 %1599, i32* @zz_size, align 4
  %1600 = sext i32 %1599 to i64
  %1601 = icmp uge i64 %1600, 265
  br i1 %1601, label %1602, label %1605

; <label>:1602                                    ; preds = %1571
  %1603 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1604 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %1603)
  br label %1630

; <label>:1605                                    ; preds = %1571
  %1606 = load i32, i32* @zz_size, align 4
  %1607 = sext i32 %1606 to i64
  %1608 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1607
  %1609 = load %union.rec*, %union.rec** %1608, align 8
  %1610 = icmp eq %union.rec* %1609, null
  br i1 %1610, label %1611, label %1615

; <label>:1611                                    ; preds = %1605
  %1612 = load i32, i32* @zz_size, align 4
  %1613 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1614 = call %union.rec* @GetMemory(i32 %1612, %struct.FILE_POS* %1613)
  store %union.rec* %1614, %union.rec** @zz_hold, align 8
  br label %1629

; <label>:1615                                    ; preds = %1605
  %1616 = load i32, i32* @zz_size, align 4
  %1617 = sext i32 %1616 to i64
  %1618 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1617
  %1619 = load %union.rec*, %union.rec** %1618, align 8
  store %union.rec* %1619, %union.rec** @zz_hold, align 8
  store %union.rec* %1619, %union.rec** @zz_hold, align 8
  %1620 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1621 = bitcast %union.rec* %1620 to %struct.word_type*
  %1622 = getelementptr inbounds %struct.word_type, %struct.word_type* %1621, i32 0, i32 0
  %1623 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1622, i32 0, i64 0
  %1624 = getelementptr inbounds %struct.LIST, %struct.LIST* %1623, i32 0, i32 0
  %1625 = load %union.rec*, %union.rec** %1624, align 8
  %1626 = load i32, i32* @zz_size, align 4
  %1627 = sext i32 %1626 to i64
  %1628 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1627
  store %union.rec* %1625, %union.rec** %1628, align 8
  br label %1629

; <label>:1629                                    ; preds = %1615, %1611
  br label %1630

; <label>:1630                                    ; preds = %1629, %1602
  %1631 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1632 = bitcast %union.rec* %1631 to %struct.word_type*
  %1633 = getelementptr inbounds %struct.word_type, %struct.word_type* %1632, i32 0, i32 1
  %1634 = bitcast %union.FIRST_UNION* %1633 to %struct.anon*
  %1635 = getelementptr inbounds %struct.anon, %struct.anon* %1634, i32 0, i32 0
  store i8 125, i8* %1635, align 1
  %1636 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1637 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1638 = bitcast %union.rec* %1637 to %struct.word_type*
  %1639 = getelementptr inbounds %struct.word_type, %struct.word_type* %1638, i32 0, i32 0
  %1640 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1639, i32 0, i64 1
  %1641 = getelementptr inbounds %struct.LIST, %struct.LIST* %1640, i32 0, i32 1
  store %union.rec* %1636, %union.rec** %1641, align 8
  %1642 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1643 = bitcast %union.rec* %1642 to %struct.word_type*
  %1644 = getelementptr inbounds %struct.word_type, %struct.word_type* %1643, i32 0, i32 0
  %1645 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1644, i32 0, i64 1
  %1646 = getelementptr inbounds %struct.LIST, %struct.LIST* %1645, i32 0, i32 0
  store %union.rec* %1636, %union.rec** %1646, align 8
  %1647 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1648 = bitcast %union.rec* %1647 to %struct.word_type*
  %1649 = getelementptr inbounds %struct.word_type, %struct.word_type* %1648, i32 0, i32 0
  %1650 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1649, i32 0, i64 0
  %1651 = getelementptr inbounds %struct.LIST, %struct.LIST* %1650, i32 0, i32 1
  store %union.rec* %1636, %union.rec** %1651, align 8
  %1652 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1653 = bitcast %union.rec* %1652 to %struct.word_type*
  %1654 = getelementptr inbounds %struct.word_type, %struct.word_type* %1653, i32 0, i32 0
  %1655 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1654, i32 0, i64 0
  %1656 = getelementptr inbounds %struct.LIST, %struct.LIST* %1655, i32 0, i32 0
  store %union.rec* %1636, %union.rec** %1656, align 8
  store %union.rec* %1636, %union.rec** %index2, align 8
  %1657 = load %union.rec*, %union.rec** %index2, align 8
  %1658 = bitcast %union.rec* %1657 to %struct.word_type*
  %1659 = getelementptr inbounds %struct.word_type, %struct.word_type* %1658, i32 0, i32 2
  %1660 = bitcast %union.SECOND_UNION* %1659 to %struct.anon.2*
  %1661 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1660, i32 0, i32 2
  %1662 = load i16, i16* %1661, align 2
  %1663 = and i16 %1662, -33
  store i16 %1663, i16* %1661, align 2
  %1664 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1665 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), %struct.FILE_POS* %1664)
  store %union.rec* %1665, %union.rec** %tmp, align 8
  %1666 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1667 = zext i8 %1666 to i32
  store i32 %1667, i32* @zz_size, align 4
  %1668 = sext i32 %1667 to i64
  %1669 = icmp uge i64 %1668, 265
  br i1 %1669, label %1670, label %1673

; <label>:1670                                    ; preds = %1630
  %1671 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1672 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %1671)
  br label %1698

; <label>:1673                                    ; preds = %1630
  %1674 = load i32, i32* @zz_size, align 4
  %1675 = sext i32 %1674 to i64
  %1676 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1675
  %1677 = load %union.rec*, %union.rec** %1676, align 8
  %1678 = icmp eq %union.rec* %1677, null
  br i1 %1678, label %1679, label %1683

; <label>:1679                                    ; preds = %1673
  %1680 = load i32, i32* @zz_size, align 4
  %1681 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1682 = call %union.rec* @GetMemory(i32 %1680, %struct.FILE_POS* %1681)
  store %union.rec* %1682, %union.rec** @zz_hold, align 8
  br label %1697

; <label>:1683                                    ; preds = %1673
  %1684 = load i32, i32* @zz_size, align 4
  %1685 = sext i32 %1684 to i64
  %1686 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1685
  %1687 = load %union.rec*, %union.rec** %1686, align 8
  store %union.rec* %1687, %union.rec** @zz_hold, align 8
  store %union.rec* %1687, %union.rec** @zz_hold, align 8
  %1688 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1689 = bitcast %union.rec* %1688 to %struct.word_type*
  %1690 = getelementptr inbounds %struct.word_type, %struct.word_type* %1689, i32 0, i32 0
  %1691 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1690, i32 0, i64 0
  %1692 = getelementptr inbounds %struct.LIST, %struct.LIST* %1691, i32 0, i32 0
  %1693 = load %union.rec*, %union.rec** %1692, align 8
  %1694 = load i32, i32* @zz_size, align 4
  %1695 = sext i32 %1694 to i64
  %1696 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1695
  store %union.rec* %1693, %union.rec** %1696, align 8
  br label %1697

; <label>:1697                                    ; preds = %1683, %1679
  br label %1698

; <label>:1698                                    ; preds = %1697, %1670
  %1699 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1700 = bitcast %union.rec* %1699 to %struct.word_type*
  %1701 = getelementptr inbounds %struct.word_type, %struct.word_type* %1700, i32 0, i32 1
  %1702 = bitcast %union.FIRST_UNION* %1701 to %struct.anon*
  %1703 = getelementptr inbounds %struct.anon, %struct.anon* %1702, i32 0, i32 0
  store i8 0, i8* %1703, align 1
  %1704 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1705 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1706 = bitcast %union.rec* %1705 to %struct.word_type*
  %1707 = getelementptr inbounds %struct.word_type, %struct.word_type* %1706, i32 0, i32 0
  %1708 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1707, i32 0, i64 1
  %1709 = getelementptr inbounds %struct.LIST, %struct.LIST* %1708, i32 0, i32 1
  store %union.rec* %1704, %union.rec** %1709, align 8
  %1710 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1711 = bitcast %union.rec* %1710 to %struct.word_type*
  %1712 = getelementptr inbounds %struct.word_type, %struct.word_type* %1711, i32 0, i32 0
  %1713 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1712, i32 0, i64 1
  %1714 = getelementptr inbounds %struct.LIST, %struct.LIST* %1713, i32 0, i32 0
  store %union.rec* %1704, %union.rec** %1714, align 8
  %1715 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1716 = bitcast %union.rec* %1715 to %struct.word_type*
  %1717 = getelementptr inbounds %struct.word_type, %struct.word_type* %1716, i32 0, i32 0
  %1718 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1717, i32 0, i64 0
  %1719 = getelementptr inbounds %struct.LIST, %struct.LIST* %1718, i32 0, i32 1
  store %union.rec* %1704, %union.rec** %1719, align 8
  %1720 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1721 = bitcast %union.rec* %1720 to %struct.word_type*
  %1722 = getelementptr inbounds %struct.word_type, %struct.word_type* %1721, i32 0, i32 0
  %1723 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1722, i32 0, i64 0
  %1724 = getelementptr inbounds %struct.LIST, %struct.LIST* %1723, i32 0, i32 0
  store %union.rec* %1704, %union.rec** %1724, align 8
  store %union.rec* %1704, %union.rec** @xx_link, align 8
  %1725 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1725, %union.rec** @zz_res, align 8
  %1726 = load %union.rec*, %union.rec** %index1, align 8
  store %union.rec* %1726, %union.rec** @zz_hold, align 8
  %1727 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1728 = icmp eq %union.rec* %1727, null
  br i1 %1728, label %1729, label %1731

; <label>:1729                                    ; preds = %1698
  %1730 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1779

; <label>:1731                                    ; preds = %1698
  %1732 = load %union.rec*, %union.rec** @zz_res, align 8
  %1733 = icmp eq %union.rec* %1732, null
  br i1 %1733, label %1734, label %1736

; <label>:1734                                    ; preds = %1731
  %1735 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1777

; <label>:1736                                    ; preds = %1731
  %1737 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1738 = bitcast %union.rec* %1737 to %struct.word_type*
  %1739 = getelementptr inbounds %struct.word_type, %struct.word_type* %1738, i32 0, i32 0
  %1740 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1739, i32 0, i64 0
  %1741 = getelementptr inbounds %struct.LIST, %struct.LIST* %1740, i32 0, i32 0
  %1742 = load %union.rec*, %union.rec** %1741, align 8
  store %union.rec* %1742, %union.rec** @zz_tmp, align 8
  %1743 = load %union.rec*, %union.rec** @zz_res, align 8
  %1744 = bitcast %union.rec* %1743 to %struct.word_type*
  %1745 = getelementptr inbounds %struct.word_type, %struct.word_type* %1744, i32 0, i32 0
  %1746 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1745, i32 0, i64 0
  %1747 = getelementptr inbounds %struct.LIST, %struct.LIST* %1746, i32 0, i32 0
  %1748 = load %union.rec*, %union.rec** %1747, align 8
  %1749 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1750 = bitcast %union.rec* %1749 to %struct.word_type*
  %1751 = getelementptr inbounds %struct.word_type, %struct.word_type* %1750, i32 0, i32 0
  %1752 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1751, i32 0, i64 0
  %1753 = getelementptr inbounds %struct.LIST, %struct.LIST* %1752, i32 0, i32 0
  store %union.rec* %1748, %union.rec** %1753, align 8
  %1754 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1755 = load %union.rec*, %union.rec** @zz_res, align 8
  %1756 = bitcast %union.rec* %1755 to %struct.word_type*
  %1757 = getelementptr inbounds %struct.word_type, %struct.word_type* %1756, i32 0, i32 0
  %1758 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1757, i32 0, i64 0
  %1759 = getelementptr inbounds %struct.LIST, %struct.LIST* %1758, i32 0, i32 0
  %1760 = load %union.rec*, %union.rec** %1759, align 8
  %1761 = bitcast %union.rec* %1760 to %struct.word_type*
  %1762 = getelementptr inbounds %struct.word_type, %struct.word_type* %1761, i32 0, i32 0
  %1763 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1762, i32 0, i64 0
  %1764 = getelementptr inbounds %struct.LIST, %struct.LIST* %1763, i32 0, i32 1
  store %union.rec* %1754, %union.rec** %1764, align 8
  %1765 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1766 = load %union.rec*, %union.rec** @zz_res, align 8
  %1767 = bitcast %union.rec* %1766 to %struct.word_type*
  %1768 = getelementptr inbounds %struct.word_type, %struct.word_type* %1767, i32 0, i32 0
  %1769 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1768, i32 0, i64 0
  %1770 = getelementptr inbounds %struct.LIST, %struct.LIST* %1769, i32 0, i32 0
  store %union.rec* %1765, %union.rec** %1770, align 8
  %1771 = load %union.rec*, %union.rec** @zz_res, align 8
  %1772 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1773 = bitcast %union.rec* %1772 to %struct.word_type*
  %1774 = getelementptr inbounds %struct.word_type, %struct.word_type* %1773, i32 0, i32 0
  %1775 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1774, i32 0, i64 0
  %1776 = getelementptr inbounds %struct.LIST, %struct.LIST* %1775, i32 0, i32 1
  store %union.rec* %1771, %union.rec** %1776, align 8
  br label %1777

; <label>:1777                                    ; preds = %1736, %1734
  %1778 = phi %union.rec* [ %1735, %1734 ], [ %1771, %1736 ]
  br label %1779

; <label>:1779                                    ; preds = %1777, %1729
  %1780 = phi %union.rec* [ %1730, %1729 ], [ %1778, %1777 ]
  %1781 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1781, %union.rec** @zz_res, align 8
  %1782 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %1782, %union.rec** @zz_hold, align 8
  %1783 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1784 = icmp eq %union.rec* %1783, null
  br i1 %1784, label %1785, label %1787

; <label>:1785                                    ; preds = %1779
  %1786 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1835

; <label>:1787                                    ; preds = %1779
  %1788 = load %union.rec*, %union.rec** @zz_res, align 8
  %1789 = icmp eq %union.rec* %1788, null
  br i1 %1789, label %1790, label %1792

; <label>:1790                                    ; preds = %1787
  %1791 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1833

; <label>:1792                                    ; preds = %1787
  %1793 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1794 = bitcast %union.rec* %1793 to %struct.word_type*
  %1795 = getelementptr inbounds %struct.word_type, %struct.word_type* %1794, i32 0, i32 0
  %1796 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1795, i32 0, i64 1
  %1797 = getelementptr inbounds %struct.LIST, %struct.LIST* %1796, i32 0, i32 0
  %1798 = load %union.rec*, %union.rec** %1797, align 8
  store %union.rec* %1798, %union.rec** @zz_tmp, align 8
  %1799 = load %union.rec*, %union.rec** @zz_res, align 8
  %1800 = bitcast %union.rec* %1799 to %struct.word_type*
  %1801 = getelementptr inbounds %struct.word_type, %struct.word_type* %1800, i32 0, i32 0
  %1802 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1801, i32 0, i64 1
  %1803 = getelementptr inbounds %struct.LIST, %struct.LIST* %1802, i32 0, i32 0
  %1804 = load %union.rec*, %union.rec** %1803, align 8
  %1805 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1806 = bitcast %union.rec* %1805 to %struct.word_type*
  %1807 = getelementptr inbounds %struct.word_type, %struct.word_type* %1806, i32 0, i32 0
  %1808 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1807, i32 0, i64 1
  %1809 = getelementptr inbounds %struct.LIST, %struct.LIST* %1808, i32 0, i32 0
  store %union.rec* %1804, %union.rec** %1809, align 8
  %1810 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1811 = load %union.rec*, %union.rec** @zz_res, align 8
  %1812 = bitcast %union.rec* %1811 to %struct.word_type*
  %1813 = getelementptr inbounds %struct.word_type, %struct.word_type* %1812, i32 0, i32 0
  %1814 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1813, i32 0, i64 1
  %1815 = getelementptr inbounds %struct.LIST, %struct.LIST* %1814, i32 0, i32 0
  %1816 = load %union.rec*, %union.rec** %1815, align 8
  %1817 = bitcast %union.rec* %1816 to %struct.word_type*
  %1818 = getelementptr inbounds %struct.word_type, %struct.word_type* %1817, i32 0, i32 0
  %1819 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1818, i32 0, i64 1
  %1820 = getelementptr inbounds %struct.LIST, %struct.LIST* %1819, i32 0, i32 1
  store %union.rec* %1810, %union.rec** %1820, align 8
  %1821 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1822 = load %union.rec*, %union.rec** @zz_res, align 8
  %1823 = bitcast %union.rec* %1822 to %struct.word_type*
  %1824 = getelementptr inbounds %struct.word_type, %struct.word_type* %1823, i32 0, i32 0
  %1825 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1824, i32 0, i64 1
  %1826 = getelementptr inbounds %struct.LIST, %struct.LIST* %1825, i32 0, i32 0
  store %union.rec* %1821, %union.rec** %1826, align 8
  %1827 = load %union.rec*, %union.rec** @zz_res, align 8
  %1828 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1829 = bitcast %union.rec* %1828 to %struct.word_type*
  %1830 = getelementptr inbounds %struct.word_type, %struct.word_type* %1829, i32 0, i32 0
  %1831 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1830, i32 0, i64 1
  %1832 = getelementptr inbounds %struct.LIST, %struct.LIST* %1831, i32 0, i32 1
  store %union.rec* %1827, %union.rec** %1832, align 8
  br label %1833

; <label>:1833                                    ; preds = %1792, %1790
  %1834 = phi %union.rec* [ %1791, %1790 ], [ %1827, %1792 ]
  br label %1835

; <label>:1835                                    ; preds = %1833, %1785
  %1836 = phi %union.rec* [ %1786, %1785 ], [ %1834, %1833 ]
  %1837 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1838 = zext i8 %1837 to i32
  store i32 %1838, i32* @zz_size, align 4
  %1839 = sext i32 %1838 to i64
  %1840 = icmp uge i64 %1839, 265
  br i1 %1840, label %1841, label %1844

; <label>:1841                                    ; preds = %1835
  %1842 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1843 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %1842)
  br label %1869

; <label>:1844                                    ; preds = %1835
  %1845 = load i32, i32* @zz_size, align 4
  %1846 = sext i32 %1845 to i64
  %1847 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1846
  %1848 = load %union.rec*, %union.rec** %1847, align 8
  %1849 = icmp eq %union.rec* %1848, null
  br i1 %1849, label %1850, label %1854

; <label>:1850                                    ; preds = %1844
  %1851 = load i32, i32* @zz_size, align 4
  %1852 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1853 = call %union.rec* @GetMemory(i32 %1851, %struct.FILE_POS* %1852)
  store %union.rec* %1853, %union.rec** @zz_hold, align 8
  br label %1868

; <label>:1854                                    ; preds = %1844
  %1855 = load i32, i32* @zz_size, align 4
  %1856 = sext i32 %1855 to i64
  %1857 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1856
  %1858 = load %union.rec*, %union.rec** %1857, align 8
  store %union.rec* %1858, %union.rec** @zz_hold, align 8
  store %union.rec* %1858, %union.rec** @zz_hold, align 8
  %1859 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1860 = bitcast %union.rec* %1859 to %struct.word_type*
  %1861 = getelementptr inbounds %struct.word_type, %struct.word_type* %1860, i32 0, i32 0
  %1862 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1861, i32 0, i64 0
  %1863 = getelementptr inbounds %struct.LIST, %struct.LIST* %1862, i32 0, i32 0
  %1864 = load %union.rec*, %union.rec** %1863, align 8
  %1865 = load i32, i32* @zz_size, align 4
  %1866 = sext i32 %1865 to i64
  %1867 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1866
  store %union.rec* %1864, %union.rec** %1867, align 8
  br label %1868

; <label>:1868                                    ; preds = %1854, %1850
  br label %1869

; <label>:1869                                    ; preds = %1868, %1841
  %1870 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1871 = bitcast %union.rec* %1870 to %struct.word_type*
  %1872 = getelementptr inbounds %struct.word_type, %struct.word_type* %1871, i32 0, i32 1
  %1873 = bitcast %union.FIRST_UNION* %1872 to %struct.anon*
  %1874 = getelementptr inbounds %struct.anon, %struct.anon* %1873, i32 0, i32 0
  store i8 0, i8* %1874, align 1
  %1875 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1876 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1877 = bitcast %union.rec* %1876 to %struct.word_type*
  %1878 = getelementptr inbounds %struct.word_type, %struct.word_type* %1877, i32 0, i32 0
  %1879 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1878, i32 0, i64 1
  %1880 = getelementptr inbounds %struct.LIST, %struct.LIST* %1879, i32 0, i32 1
  store %union.rec* %1875, %union.rec** %1880, align 8
  %1881 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1882 = bitcast %union.rec* %1881 to %struct.word_type*
  %1883 = getelementptr inbounds %struct.word_type, %struct.word_type* %1882, i32 0, i32 0
  %1884 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1883, i32 0, i64 1
  %1885 = getelementptr inbounds %struct.LIST, %struct.LIST* %1884, i32 0, i32 0
  store %union.rec* %1875, %union.rec** %1885, align 8
  %1886 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1887 = bitcast %union.rec* %1886 to %struct.word_type*
  %1888 = getelementptr inbounds %struct.word_type, %struct.word_type* %1887, i32 0, i32 0
  %1889 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1888, i32 0, i64 0
  %1890 = getelementptr inbounds %struct.LIST, %struct.LIST* %1889, i32 0, i32 1
  store %union.rec* %1875, %union.rec** %1890, align 8
  %1891 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1892 = bitcast %union.rec* %1891 to %struct.word_type*
  %1893 = getelementptr inbounds %struct.word_type, %struct.word_type* %1892, i32 0, i32 0
  %1894 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1893, i32 0, i64 0
  %1895 = getelementptr inbounds %struct.LIST, %struct.LIST* %1894, i32 0, i32 0
  store %union.rec* %1875, %union.rec** %1895, align 8
  store %union.rec* %1875, %union.rec** @xx_link, align 8
  %1896 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1896, %union.rec** @zz_res, align 8
  %1897 = load %union.rec*, %union.rec** %index2, align 8
  store %union.rec* %1897, %union.rec** @zz_hold, align 8
  %1898 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1899 = icmp eq %union.rec* %1898, null
  br i1 %1899, label %1900, label %1902

; <label>:1900                                    ; preds = %1869
  %1901 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1950

; <label>:1902                                    ; preds = %1869
  %1903 = load %union.rec*, %union.rec** @zz_res, align 8
  %1904 = icmp eq %union.rec* %1903, null
  br i1 %1904, label %1905, label %1907

; <label>:1905                                    ; preds = %1902
  %1906 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1948

; <label>:1907                                    ; preds = %1902
  %1908 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1909 = bitcast %union.rec* %1908 to %struct.word_type*
  %1910 = getelementptr inbounds %struct.word_type, %struct.word_type* %1909, i32 0, i32 0
  %1911 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1910, i32 0, i64 0
  %1912 = getelementptr inbounds %struct.LIST, %struct.LIST* %1911, i32 0, i32 0
  %1913 = load %union.rec*, %union.rec** %1912, align 8
  store %union.rec* %1913, %union.rec** @zz_tmp, align 8
  %1914 = load %union.rec*, %union.rec** @zz_res, align 8
  %1915 = bitcast %union.rec* %1914 to %struct.word_type*
  %1916 = getelementptr inbounds %struct.word_type, %struct.word_type* %1915, i32 0, i32 0
  %1917 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1916, i32 0, i64 0
  %1918 = getelementptr inbounds %struct.LIST, %struct.LIST* %1917, i32 0, i32 0
  %1919 = load %union.rec*, %union.rec** %1918, align 8
  %1920 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1921 = bitcast %union.rec* %1920 to %struct.word_type*
  %1922 = getelementptr inbounds %struct.word_type, %struct.word_type* %1921, i32 0, i32 0
  %1923 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1922, i32 0, i64 0
  %1924 = getelementptr inbounds %struct.LIST, %struct.LIST* %1923, i32 0, i32 0
  store %union.rec* %1919, %union.rec** %1924, align 8
  %1925 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1926 = load %union.rec*, %union.rec** @zz_res, align 8
  %1927 = bitcast %union.rec* %1926 to %struct.word_type*
  %1928 = getelementptr inbounds %struct.word_type, %struct.word_type* %1927, i32 0, i32 0
  %1929 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1928, i32 0, i64 0
  %1930 = getelementptr inbounds %struct.LIST, %struct.LIST* %1929, i32 0, i32 0
  %1931 = load %union.rec*, %union.rec** %1930, align 8
  %1932 = bitcast %union.rec* %1931 to %struct.word_type*
  %1933 = getelementptr inbounds %struct.word_type, %struct.word_type* %1932, i32 0, i32 0
  %1934 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1933, i32 0, i64 0
  %1935 = getelementptr inbounds %struct.LIST, %struct.LIST* %1934, i32 0, i32 1
  store %union.rec* %1925, %union.rec** %1935, align 8
  %1936 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1937 = load %union.rec*, %union.rec** @zz_res, align 8
  %1938 = bitcast %union.rec* %1937 to %struct.word_type*
  %1939 = getelementptr inbounds %struct.word_type, %struct.word_type* %1938, i32 0, i32 0
  %1940 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1939, i32 0, i64 0
  %1941 = getelementptr inbounds %struct.LIST, %struct.LIST* %1940, i32 0, i32 0
  store %union.rec* %1936, %union.rec** %1941, align 8
  %1942 = load %union.rec*, %union.rec** @zz_res, align 8
  %1943 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1944 = bitcast %union.rec* %1943 to %struct.word_type*
  %1945 = getelementptr inbounds %struct.word_type, %struct.word_type* %1944, i32 0, i32 0
  %1946 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1945, i32 0, i64 0
  %1947 = getelementptr inbounds %struct.LIST, %struct.LIST* %1946, i32 0, i32 1
  store %union.rec* %1942, %union.rec** %1947, align 8
  br label %1948

; <label>:1948                                    ; preds = %1907, %1905
  %1949 = phi %union.rec* [ %1906, %1905 ], [ %1942, %1907 ]
  br label %1950

; <label>:1950                                    ; preds = %1948, %1900
  %1951 = phi %union.rec* [ %1901, %1900 ], [ %1949, %1948 ]
  %1952 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1952, %union.rec** @zz_res, align 8
  %1953 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %1953, %union.rec** @zz_hold, align 8
  %1954 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1955 = icmp eq %union.rec* %1954, null
  br i1 %1955, label %1956, label %1958

; <label>:1956                                    ; preds = %1950
  %1957 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2006

; <label>:1958                                    ; preds = %1950
  %1959 = load %union.rec*, %union.rec** @zz_res, align 8
  %1960 = icmp eq %union.rec* %1959, null
  br i1 %1960, label %1961, label %1963

; <label>:1961                                    ; preds = %1958
  %1962 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2004

; <label>:1963                                    ; preds = %1958
  %1964 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1965 = bitcast %union.rec* %1964 to %struct.word_type*
  %1966 = getelementptr inbounds %struct.word_type, %struct.word_type* %1965, i32 0, i32 0
  %1967 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1966, i32 0, i64 1
  %1968 = getelementptr inbounds %struct.LIST, %struct.LIST* %1967, i32 0, i32 0
  %1969 = load %union.rec*, %union.rec** %1968, align 8
  store %union.rec* %1969, %union.rec** @zz_tmp, align 8
  %1970 = load %union.rec*, %union.rec** @zz_res, align 8
  %1971 = bitcast %union.rec* %1970 to %struct.word_type*
  %1972 = getelementptr inbounds %struct.word_type, %struct.word_type* %1971, i32 0, i32 0
  %1973 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1972, i32 0, i64 1
  %1974 = getelementptr inbounds %struct.LIST, %struct.LIST* %1973, i32 0, i32 0
  %1975 = load %union.rec*, %union.rec** %1974, align 8
  %1976 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1977 = bitcast %union.rec* %1976 to %struct.word_type*
  %1978 = getelementptr inbounds %struct.word_type, %struct.word_type* %1977, i32 0, i32 0
  %1979 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1978, i32 0, i64 1
  %1980 = getelementptr inbounds %struct.LIST, %struct.LIST* %1979, i32 0, i32 0
  store %union.rec* %1975, %union.rec** %1980, align 8
  %1981 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1982 = load %union.rec*, %union.rec** @zz_res, align 8
  %1983 = bitcast %union.rec* %1982 to %struct.word_type*
  %1984 = getelementptr inbounds %struct.word_type, %struct.word_type* %1983, i32 0, i32 0
  %1985 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1984, i32 0, i64 1
  %1986 = getelementptr inbounds %struct.LIST, %struct.LIST* %1985, i32 0, i32 0
  %1987 = load %union.rec*, %union.rec** %1986, align 8
  %1988 = bitcast %union.rec* %1987 to %struct.word_type*
  %1989 = getelementptr inbounds %struct.word_type, %struct.word_type* %1988, i32 0, i32 0
  %1990 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1989, i32 0, i64 1
  %1991 = getelementptr inbounds %struct.LIST, %struct.LIST* %1990, i32 0, i32 1
  store %union.rec* %1981, %union.rec** %1991, align 8
  %1992 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1993 = load %union.rec*, %union.rec** @zz_res, align 8
  %1994 = bitcast %union.rec* %1993 to %struct.word_type*
  %1995 = getelementptr inbounds %struct.word_type, %struct.word_type* %1994, i32 0, i32 0
  %1996 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1995, i32 0, i64 1
  %1997 = getelementptr inbounds %struct.LIST, %struct.LIST* %1996, i32 0, i32 0
  store %union.rec* %1992, %union.rec** %1997, align 8
  %1998 = load %union.rec*, %union.rec** @zz_res, align 8
  %1999 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2000 = bitcast %union.rec* %1999 to %struct.word_type*
  %2001 = getelementptr inbounds %struct.word_type, %struct.word_type* %2000, i32 0, i32 0
  %2002 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2001, i32 0, i64 1
  %2003 = getelementptr inbounds %struct.LIST, %struct.LIST* %2002, i32 0, i32 1
  store %union.rec* %1998, %union.rec** %2003, align 8
  br label %2004

; <label>:2004                                    ; preds = %1963, %1961
  %2005 = phi %union.rec* [ %1962, %1961 ], [ %1998, %1963 ]
  br label %2006

; <label>:2006                                    ; preds = %2004, %1956
  %2007 = phi %union.rec* [ %1957, %1956 ], [ %2005, %2004 ]
  %2008 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %2009 = zext i8 %2008 to i32
  store i32 %2009, i32* @zz_size, align 4
  %2010 = sext i32 %2009 to i64
  %2011 = icmp uge i64 %2010, 265
  br i1 %2011, label %2012, label %2015

; <label>:2012                                    ; preds = %2006
  %2013 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2014 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %2013)
  br label %2040

; <label>:2015                                    ; preds = %2006
  %2016 = load i32, i32* @zz_size, align 4
  %2017 = sext i32 %2016 to i64
  %2018 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2017
  %2019 = load %union.rec*, %union.rec** %2018, align 8
  %2020 = icmp eq %union.rec* %2019, null
  br i1 %2020, label %2021, label %2025

; <label>:2021                                    ; preds = %2015
  %2022 = load i32, i32* @zz_size, align 4
  %2023 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2024 = call %union.rec* @GetMemory(i32 %2022, %struct.FILE_POS* %2023)
  store %union.rec* %2024, %union.rec** @zz_hold, align 8
  br label %2039

; <label>:2025                                    ; preds = %2015
  %2026 = load i32, i32* @zz_size, align 4
  %2027 = sext i32 %2026 to i64
  %2028 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2027
  %2029 = load %union.rec*, %union.rec** %2028, align 8
  store %union.rec* %2029, %union.rec** @zz_hold, align 8
  store %union.rec* %2029, %union.rec** @zz_hold, align 8
  %2030 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2031 = bitcast %union.rec* %2030 to %struct.word_type*
  %2032 = getelementptr inbounds %struct.word_type, %struct.word_type* %2031, i32 0, i32 0
  %2033 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2032, i32 0, i64 0
  %2034 = getelementptr inbounds %struct.LIST, %struct.LIST* %2033, i32 0, i32 0
  %2035 = load %union.rec*, %union.rec** %2034, align 8
  %2036 = load i32, i32* @zz_size, align 4
  %2037 = sext i32 %2036 to i64
  %2038 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2037
  store %union.rec* %2035, %union.rec** %2038, align 8
  br label %2039

; <label>:2039                                    ; preds = %2025, %2021
  br label %2040

; <label>:2040                                    ; preds = %2039, %2012
  %2041 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2042 = bitcast %union.rec* %2041 to %struct.word_type*
  %2043 = getelementptr inbounds %struct.word_type, %struct.word_type* %2042, i32 0, i32 1
  %2044 = bitcast %union.FIRST_UNION* %2043 to %struct.anon*
  %2045 = getelementptr inbounds %struct.anon, %struct.anon* %2044, i32 0, i32 0
  store i8 0, i8* %2045, align 1
  %2046 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2047 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2048 = bitcast %union.rec* %2047 to %struct.word_type*
  %2049 = getelementptr inbounds %struct.word_type, %struct.word_type* %2048, i32 0, i32 0
  %2050 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2049, i32 0, i64 1
  %2051 = getelementptr inbounds %struct.LIST, %struct.LIST* %2050, i32 0, i32 1
  store %union.rec* %2046, %union.rec** %2051, align 8
  %2052 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2053 = bitcast %union.rec* %2052 to %struct.word_type*
  %2054 = getelementptr inbounds %struct.word_type, %struct.word_type* %2053, i32 0, i32 0
  %2055 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2054, i32 0, i64 1
  %2056 = getelementptr inbounds %struct.LIST, %struct.LIST* %2055, i32 0, i32 0
  store %union.rec* %2046, %union.rec** %2056, align 8
  %2057 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2058 = bitcast %union.rec* %2057 to %struct.word_type*
  %2059 = getelementptr inbounds %struct.word_type, %struct.word_type* %2058, i32 0, i32 0
  %2060 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2059, i32 0, i64 0
  %2061 = getelementptr inbounds %struct.LIST, %struct.LIST* %2060, i32 0, i32 1
  store %union.rec* %2046, %union.rec** %2061, align 8
  %2062 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2063 = bitcast %union.rec* %2062 to %struct.word_type*
  %2064 = getelementptr inbounds %struct.word_type, %struct.word_type* %2063, i32 0, i32 0
  %2065 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2064, i32 0, i64 0
  %2066 = getelementptr inbounds %struct.LIST, %struct.LIST* %2065, i32 0, i32 0
  store %union.rec* %2046, %union.rec** %2066, align 8
  store %union.rec* %2046, %union.rec** @xx_link, align 8
  %2067 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2067, %union.rec** @zz_res, align 8
  %2068 = load %union.rec*, %union.rec** %hd_index, align 8
  %2069 = bitcast %union.rec* %2068 to %struct.word_type*
  %2070 = getelementptr inbounds %struct.word_type, %struct.word_type* %2069, i32 0, i32 0
  %2071 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2070, i32 0, i64 1
  %2072 = getelementptr inbounds %struct.LIST, %struct.LIST* %2071, i32 0, i32 1
  %2073 = load %union.rec*, %union.rec** %2072, align 8
  store %union.rec* %2073, %union.rec** @zz_hold, align 8
  %2074 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2075 = icmp eq %union.rec* %2074, null
  br i1 %2075, label %2076, label %2078

; <label>:2076                                    ; preds = %2040
  %2077 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2126

; <label>:2078                                    ; preds = %2040
  %2079 = load %union.rec*, %union.rec** @zz_res, align 8
  %2080 = icmp eq %union.rec* %2079, null
  br i1 %2080, label %2081, label %2083

; <label>:2081                                    ; preds = %2078
  %2082 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2124

; <label>:2083                                    ; preds = %2078
  %2084 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2085 = bitcast %union.rec* %2084 to %struct.word_type*
  %2086 = getelementptr inbounds %struct.word_type, %struct.word_type* %2085, i32 0, i32 0
  %2087 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2086, i32 0, i64 0
  %2088 = getelementptr inbounds %struct.LIST, %struct.LIST* %2087, i32 0, i32 0
  %2089 = load %union.rec*, %union.rec** %2088, align 8
  store %union.rec* %2089, %union.rec** @zz_tmp, align 8
  %2090 = load %union.rec*, %union.rec** @zz_res, align 8
  %2091 = bitcast %union.rec* %2090 to %struct.word_type*
  %2092 = getelementptr inbounds %struct.word_type, %struct.word_type* %2091, i32 0, i32 0
  %2093 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2092, i32 0, i64 0
  %2094 = getelementptr inbounds %struct.LIST, %struct.LIST* %2093, i32 0, i32 0
  %2095 = load %union.rec*, %union.rec** %2094, align 8
  %2096 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2097 = bitcast %union.rec* %2096 to %struct.word_type*
  %2098 = getelementptr inbounds %struct.word_type, %struct.word_type* %2097, i32 0, i32 0
  %2099 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2098, i32 0, i64 0
  %2100 = getelementptr inbounds %struct.LIST, %struct.LIST* %2099, i32 0, i32 0
  store %union.rec* %2095, %union.rec** %2100, align 8
  %2101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2102 = load %union.rec*, %union.rec** @zz_res, align 8
  %2103 = bitcast %union.rec* %2102 to %struct.word_type*
  %2104 = getelementptr inbounds %struct.word_type, %struct.word_type* %2103, i32 0, i32 0
  %2105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2104, i32 0, i64 0
  %2106 = getelementptr inbounds %struct.LIST, %struct.LIST* %2105, i32 0, i32 0
  %2107 = load %union.rec*, %union.rec** %2106, align 8
  %2108 = bitcast %union.rec* %2107 to %struct.word_type*
  %2109 = getelementptr inbounds %struct.word_type, %struct.word_type* %2108, i32 0, i32 0
  %2110 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2109, i32 0, i64 0
  %2111 = getelementptr inbounds %struct.LIST, %struct.LIST* %2110, i32 0, i32 1
  store %union.rec* %2101, %union.rec** %2111, align 8
  %2112 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2113 = load %union.rec*, %union.rec** @zz_res, align 8
  %2114 = bitcast %union.rec* %2113 to %struct.word_type*
  %2115 = getelementptr inbounds %struct.word_type, %struct.word_type* %2114, i32 0, i32 0
  %2116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2115, i32 0, i64 0
  %2117 = getelementptr inbounds %struct.LIST, %struct.LIST* %2116, i32 0, i32 0
  store %union.rec* %2112, %union.rec** %2117, align 8
  %2118 = load %union.rec*, %union.rec** @zz_res, align 8
  %2119 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2120 = bitcast %union.rec* %2119 to %struct.word_type*
  %2121 = getelementptr inbounds %struct.word_type, %struct.word_type* %2120, i32 0, i32 0
  %2122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2121, i32 0, i64 0
  %2123 = getelementptr inbounds %struct.LIST, %struct.LIST* %2122, i32 0, i32 1
  store %union.rec* %2118, %union.rec** %2123, align 8
  br label %2124

; <label>:2124                                    ; preds = %2083, %2081
  %2125 = phi %union.rec* [ %2082, %2081 ], [ %2118, %2083 ]
  br label %2126

; <label>:2126                                    ; preds = %2124, %2076
  %2127 = phi %union.rec* [ %2077, %2076 ], [ %2125, %2124 ]
  %2128 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2128, %union.rec** @zz_res, align 8
  %2129 = load %union.rec*, %union.rec** %index1, align 8
  store %union.rec* %2129, %union.rec** @zz_hold, align 8
  %2130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2131 = icmp eq %union.rec* %2130, null
  br i1 %2131, label %2132, label %2134

; <label>:2132                                    ; preds = %2126
  %2133 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2182

; <label>:2134                                    ; preds = %2126
  %2135 = load %union.rec*, %union.rec** @zz_res, align 8
  %2136 = icmp eq %union.rec* %2135, null
  br i1 %2136, label %2137, label %2139

; <label>:2137                                    ; preds = %2134
  %2138 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2180

; <label>:2139                                    ; preds = %2134
  %2140 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2141 = bitcast %union.rec* %2140 to %struct.word_type*
  %2142 = getelementptr inbounds %struct.word_type, %struct.word_type* %2141, i32 0, i32 0
  %2143 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2142, i32 0, i64 1
  %2144 = getelementptr inbounds %struct.LIST, %struct.LIST* %2143, i32 0, i32 0
  %2145 = load %union.rec*, %union.rec** %2144, align 8
  store %union.rec* %2145, %union.rec** @zz_tmp, align 8
  %2146 = load %union.rec*, %union.rec** @zz_res, align 8
  %2147 = bitcast %union.rec* %2146 to %struct.word_type*
  %2148 = getelementptr inbounds %struct.word_type, %struct.word_type* %2147, i32 0, i32 0
  %2149 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2148, i32 0, i64 1
  %2150 = getelementptr inbounds %struct.LIST, %struct.LIST* %2149, i32 0, i32 0
  %2151 = load %union.rec*, %union.rec** %2150, align 8
  %2152 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2153 = bitcast %union.rec* %2152 to %struct.word_type*
  %2154 = getelementptr inbounds %struct.word_type, %struct.word_type* %2153, i32 0, i32 0
  %2155 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2154, i32 0, i64 1
  %2156 = getelementptr inbounds %struct.LIST, %struct.LIST* %2155, i32 0, i32 0
  store %union.rec* %2151, %union.rec** %2156, align 8
  %2157 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2158 = load %union.rec*, %union.rec** @zz_res, align 8
  %2159 = bitcast %union.rec* %2158 to %struct.word_type*
  %2160 = getelementptr inbounds %struct.word_type, %struct.word_type* %2159, i32 0, i32 0
  %2161 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2160, i32 0, i64 1
  %2162 = getelementptr inbounds %struct.LIST, %struct.LIST* %2161, i32 0, i32 0
  %2163 = load %union.rec*, %union.rec** %2162, align 8
  %2164 = bitcast %union.rec* %2163 to %struct.word_type*
  %2165 = getelementptr inbounds %struct.word_type, %struct.word_type* %2164, i32 0, i32 0
  %2166 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2165, i32 0, i64 1
  %2167 = getelementptr inbounds %struct.LIST, %struct.LIST* %2166, i32 0, i32 1
  store %union.rec* %2157, %union.rec** %2167, align 8
  %2168 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2169 = load %union.rec*, %union.rec** @zz_res, align 8
  %2170 = bitcast %union.rec* %2169 to %struct.word_type*
  %2171 = getelementptr inbounds %struct.word_type, %struct.word_type* %2170, i32 0, i32 0
  %2172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2171, i32 0, i64 1
  %2173 = getelementptr inbounds %struct.LIST, %struct.LIST* %2172, i32 0, i32 0
  store %union.rec* %2168, %union.rec** %2173, align 8
  %2174 = load %union.rec*, %union.rec** @zz_res, align 8
  %2175 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2176 = bitcast %union.rec* %2175 to %struct.word_type*
  %2177 = getelementptr inbounds %struct.word_type, %struct.word_type* %2176, i32 0, i32 0
  %2178 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2177, i32 0, i64 1
  %2179 = getelementptr inbounds %struct.LIST, %struct.LIST* %2178, i32 0, i32 1
  store %union.rec* %2174, %union.rec** %2179, align 8
  br label %2180

; <label>:2180                                    ; preds = %2139, %2137
  %2181 = phi %union.rec* [ %2138, %2137 ], [ %2174, %2139 ]
  br label %2182

; <label>:2182                                    ; preds = %2180, %2132
  %2183 = phi %union.rec* [ %2133, %2132 ], [ %2181, %2180 ]
  %2184 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %2185 = zext i8 %2184 to i32
  store i32 %2185, i32* @zz_size, align 4
  %2186 = sext i32 %2185 to i64
  %2187 = icmp uge i64 %2186, 265
  br i1 %2187, label %2188, label %2191

; <label>:2188                                    ; preds = %2182
  %2189 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2190 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %2189)
  br label %2216

; <label>:2191                                    ; preds = %2182
  %2192 = load i32, i32* @zz_size, align 4
  %2193 = sext i32 %2192 to i64
  %2194 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2193
  %2195 = load %union.rec*, %union.rec** %2194, align 8
  %2196 = icmp eq %union.rec* %2195, null
  br i1 %2196, label %2197, label %2201

; <label>:2197                                    ; preds = %2191
  %2198 = load i32, i32* @zz_size, align 4
  %2199 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2200 = call %union.rec* @GetMemory(i32 %2198, %struct.FILE_POS* %2199)
  store %union.rec* %2200, %union.rec** @zz_hold, align 8
  br label %2215

; <label>:2201                                    ; preds = %2191
  %2202 = load i32, i32* @zz_size, align 4
  %2203 = sext i32 %2202 to i64
  %2204 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2203
  %2205 = load %union.rec*, %union.rec** %2204, align 8
  store %union.rec* %2205, %union.rec** @zz_hold, align 8
  store %union.rec* %2205, %union.rec** @zz_hold, align 8
  %2206 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2207 = bitcast %union.rec* %2206 to %struct.word_type*
  %2208 = getelementptr inbounds %struct.word_type, %struct.word_type* %2207, i32 0, i32 0
  %2209 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2208, i32 0, i64 0
  %2210 = getelementptr inbounds %struct.LIST, %struct.LIST* %2209, i32 0, i32 0
  %2211 = load %union.rec*, %union.rec** %2210, align 8
  %2212 = load i32, i32* @zz_size, align 4
  %2213 = sext i32 %2212 to i64
  %2214 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2213
  store %union.rec* %2211, %union.rec** %2214, align 8
  br label %2215

; <label>:2215                                    ; preds = %2201, %2197
  br label %2216

; <label>:2216                                    ; preds = %2215, %2188
  %2217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2218 = bitcast %union.rec* %2217 to %struct.word_type*
  %2219 = getelementptr inbounds %struct.word_type, %struct.word_type* %2218, i32 0, i32 1
  %2220 = bitcast %union.FIRST_UNION* %2219 to %struct.anon*
  %2221 = getelementptr inbounds %struct.anon, %struct.anon* %2220, i32 0, i32 0
  store i8 0, i8* %2221, align 1
  %2222 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2224 = bitcast %union.rec* %2223 to %struct.word_type*
  %2225 = getelementptr inbounds %struct.word_type, %struct.word_type* %2224, i32 0, i32 0
  %2226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2225, i32 0, i64 1
  %2227 = getelementptr inbounds %struct.LIST, %struct.LIST* %2226, i32 0, i32 1
  store %union.rec* %2222, %union.rec** %2227, align 8
  %2228 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2229 = bitcast %union.rec* %2228 to %struct.word_type*
  %2230 = getelementptr inbounds %struct.word_type, %struct.word_type* %2229, i32 0, i32 0
  %2231 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2230, i32 0, i64 1
  %2232 = getelementptr inbounds %struct.LIST, %struct.LIST* %2231, i32 0, i32 0
  store %union.rec* %2222, %union.rec** %2232, align 8
  %2233 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2234 = bitcast %union.rec* %2233 to %struct.word_type*
  %2235 = getelementptr inbounds %struct.word_type, %struct.word_type* %2234, i32 0, i32 0
  %2236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2235, i32 0, i64 0
  %2237 = getelementptr inbounds %struct.LIST, %struct.LIST* %2236, i32 0, i32 1
  store %union.rec* %2222, %union.rec** %2237, align 8
  %2238 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2239 = bitcast %union.rec* %2238 to %struct.word_type*
  %2240 = getelementptr inbounds %struct.word_type, %struct.word_type* %2239, i32 0, i32 0
  %2241 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2240, i32 0, i64 0
  %2242 = getelementptr inbounds %struct.LIST, %struct.LIST* %2241, i32 0, i32 0
  store %union.rec* %2222, %union.rec** %2242, align 8
  store %union.rec* %2222, %union.rec** @xx_link, align 8
  %2243 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2243, %union.rec** @zz_res, align 8
  %2244 = load %union.rec*, %union.rec** %2, align 8
  %2245 = bitcast %union.rec* %2244 to %struct.word_type*
  %2246 = getelementptr inbounds %struct.word_type, %struct.word_type* %2245, i32 0, i32 0
  %2247 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2246, i32 0, i64 0
  %2248 = getelementptr inbounds %struct.LIST, %struct.LIST* %2247, i32 0, i32 1
  %2249 = load %union.rec*, %union.rec** %2248, align 8
  store %union.rec* %2249, %union.rec** @zz_hold, align 8
  %2250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2251 = icmp eq %union.rec* %2250, null
  br i1 %2251, label %2252, label %2254

; <label>:2252                                    ; preds = %2216
  %2253 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2302

; <label>:2254                                    ; preds = %2216
  %2255 = load %union.rec*, %union.rec** @zz_res, align 8
  %2256 = icmp eq %union.rec* %2255, null
  br i1 %2256, label %2257, label %2259

; <label>:2257                                    ; preds = %2254
  %2258 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2300

; <label>:2259                                    ; preds = %2254
  %2260 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2261 = bitcast %union.rec* %2260 to %struct.word_type*
  %2262 = getelementptr inbounds %struct.word_type, %struct.word_type* %2261, i32 0, i32 0
  %2263 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2262, i32 0, i64 0
  %2264 = getelementptr inbounds %struct.LIST, %struct.LIST* %2263, i32 0, i32 0
  %2265 = load %union.rec*, %union.rec** %2264, align 8
  store %union.rec* %2265, %union.rec** @zz_tmp, align 8
  %2266 = load %union.rec*, %union.rec** @zz_res, align 8
  %2267 = bitcast %union.rec* %2266 to %struct.word_type*
  %2268 = getelementptr inbounds %struct.word_type, %struct.word_type* %2267, i32 0, i32 0
  %2269 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2268, i32 0, i64 0
  %2270 = getelementptr inbounds %struct.LIST, %struct.LIST* %2269, i32 0, i32 0
  %2271 = load %union.rec*, %union.rec** %2270, align 8
  %2272 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2273 = bitcast %union.rec* %2272 to %struct.word_type*
  %2274 = getelementptr inbounds %struct.word_type, %struct.word_type* %2273, i32 0, i32 0
  %2275 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2274, i32 0, i64 0
  %2276 = getelementptr inbounds %struct.LIST, %struct.LIST* %2275, i32 0, i32 0
  store %union.rec* %2271, %union.rec** %2276, align 8
  %2277 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2278 = load %union.rec*, %union.rec** @zz_res, align 8
  %2279 = bitcast %union.rec* %2278 to %struct.word_type*
  %2280 = getelementptr inbounds %struct.word_type, %struct.word_type* %2279, i32 0, i32 0
  %2281 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2280, i32 0, i64 0
  %2282 = getelementptr inbounds %struct.LIST, %struct.LIST* %2281, i32 0, i32 0
  %2283 = load %union.rec*, %union.rec** %2282, align 8
  %2284 = bitcast %union.rec* %2283 to %struct.word_type*
  %2285 = getelementptr inbounds %struct.word_type, %struct.word_type* %2284, i32 0, i32 0
  %2286 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2285, i32 0, i64 0
  %2287 = getelementptr inbounds %struct.LIST, %struct.LIST* %2286, i32 0, i32 1
  store %union.rec* %2277, %union.rec** %2287, align 8
  %2288 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2289 = load %union.rec*, %union.rec** @zz_res, align 8
  %2290 = bitcast %union.rec* %2289 to %struct.word_type*
  %2291 = getelementptr inbounds %struct.word_type, %struct.word_type* %2290, i32 0, i32 0
  %2292 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2291, i32 0, i64 0
  %2293 = getelementptr inbounds %struct.LIST, %struct.LIST* %2292, i32 0, i32 0
  store %union.rec* %2288, %union.rec** %2293, align 8
  %2294 = load %union.rec*, %union.rec** @zz_res, align 8
  %2295 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2296 = bitcast %union.rec* %2295 to %struct.word_type*
  %2297 = getelementptr inbounds %struct.word_type, %struct.word_type* %2296, i32 0, i32 0
  %2298 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2297, i32 0, i64 0
  %2299 = getelementptr inbounds %struct.LIST, %struct.LIST* %2298, i32 0, i32 1
  store %union.rec* %2294, %union.rec** %2299, align 8
  br label %2300

; <label>:2300                                    ; preds = %2259, %2257
  %2301 = phi %union.rec* [ %2258, %2257 ], [ %2294, %2259 ]
  br label %2302

; <label>:2302                                    ; preds = %2300, %2252
  %2303 = phi %union.rec* [ %2253, %2252 ], [ %2301, %2300 ]
  %2304 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2304, %union.rec** @zz_res, align 8
  %2305 = load %union.rec*, %union.rec** %index2, align 8
  store %union.rec* %2305, %union.rec** @zz_hold, align 8
  %2306 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2307 = icmp eq %union.rec* %2306, null
  br i1 %2307, label %2308, label %2310

; <label>:2308                                    ; preds = %2302
  %2309 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2358

; <label>:2310                                    ; preds = %2302
  %2311 = load %union.rec*, %union.rec** @zz_res, align 8
  %2312 = icmp eq %union.rec* %2311, null
  br i1 %2312, label %2313, label %2315

; <label>:2313                                    ; preds = %2310
  %2314 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2356

; <label>:2315                                    ; preds = %2310
  %2316 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2317 = bitcast %union.rec* %2316 to %struct.word_type*
  %2318 = getelementptr inbounds %struct.word_type, %struct.word_type* %2317, i32 0, i32 0
  %2319 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2318, i32 0, i64 1
  %2320 = getelementptr inbounds %struct.LIST, %struct.LIST* %2319, i32 0, i32 0
  %2321 = load %union.rec*, %union.rec** %2320, align 8
  store %union.rec* %2321, %union.rec** @zz_tmp, align 8
  %2322 = load %union.rec*, %union.rec** @zz_res, align 8
  %2323 = bitcast %union.rec* %2322 to %struct.word_type*
  %2324 = getelementptr inbounds %struct.word_type, %struct.word_type* %2323, i32 0, i32 0
  %2325 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2324, i32 0, i64 1
  %2326 = getelementptr inbounds %struct.LIST, %struct.LIST* %2325, i32 0, i32 0
  %2327 = load %union.rec*, %union.rec** %2326, align 8
  %2328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2329 = bitcast %union.rec* %2328 to %struct.word_type*
  %2330 = getelementptr inbounds %struct.word_type, %struct.word_type* %2329, i32 0, i32 0
  %2331 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2330, i32 0, i64 1
  %2332 = getelementptr inbounds %struct.LIST, %struct.LIST* %2331, i32 0, i32 0
  store %union.rec* %2327, %union.rec** %2332, align 8
  %2333 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2334 = load %union.rec*, %union.rec** @zz_res, align 8
  %2335 = bitcast %union.rec* %2334 to %struct.word_type*
  %2336 = getelementptr inbounds %struct.word_type, %struct.word_type* %2335, i32 0, i32 0
  %2337 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2336, i32 0, i64 1
  %2338 = getelementptr inbounds %struct.LIST, %struct.LIST* %2337, i32 0, i32 0
  %2339 = load %union.rec*, %union.rec** %2338, align 8
  %2340 = bitcast %union.rec* %2339 to %struct.word_type*
  %2341 = getelementptr inbounds %struct.word_type, %struct.word_type* %2340, i32 0, i32 0
  %2342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2341, i32 0, i64 1
  %2343 = getelementptr inbounds %struct.LIST, %struct.LIST* %2342, i32 0, i32 1
  store %union.rec* %2333, %union.rec** %2343, align 8
  %2344 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2345 = load %union.rec*, %union.rec** @zz_res, align 8
  %2346 = bitcast %union.rec* %2345 to %struct.word_type*
  %2347 = getelementptr inbounds %struct.word_type, %struct.word_type* %2346, i32 0, i32 0
  %2348 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2347, i32 0, i64 1
  %2349 = getelementptr inbounds %struct.LIST, %struct.LIST* %2348, i32 0, i32 0
  store %union.rec* %2344, %union.rec** %2349, align 8
  %2350 = load %union.rec*, %union.rec** @zz_res, align 8
  %2351 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2352 = bitcast %union.rec* %2351 to %struct.word_type*
  %2353 = getelementptr inbounds %struct.word_type, %struct.word_type* %2352, i32 0, i32 0
  %2354 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2353, i32 0, i64 1
  %2355 = getelementptr inbounds %struct.LIST, %struct.LIST* %2354, i32 0, i32 1
  store %union.rec* %2350, %union.rec** %2355, align 8
  br label %2356

; <label>:2356                                    ; preds = %2315, %2313
  %2357 = phi %union.rec* [ %2314, %2313 ], [ %2350, %2315 ]
  br label %2358

; <label>:2358                                    ; preds = %2356, %2308
  %2359 = phi %union.rec* [ %2309, %2308 ], [ %2357, %2356 ]
  br label %2360

; <label>:2360                                    ; preds = %2358, %1535
  call void @LeaveErrorBlock(i32 1)
  br label %2361

; <label>:2361                                    ; preds = %2360, %1459
  %2362 = load i32, i32* %dim, align 4
  %2363 = icmp eq i32 %2362, 1
  br i1 %2363, label %2364, label %2434

; <label>:2364                                    ; preds = %2361
  %2365 = load i32, i32* %dim, align 4
  %2366 = sub nsw i32 1, %2365
  %2367 = sext i32 %2366 to i64
  %2368 = load %union.rec*, %union.rec** %2, align 8
  %2369 = bitcast %union.rec* %2368 to %struct.word_type*
  %2370 = getelementptr inbounds %struct.word_type, %struct.word_type* %2369, i32 0, i32 3
  %2371 = bitcast %union.THIRD_UNION* %2370 to %struct.anon.6*
  %2372 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2371, i32 0, i32 0
  %2373 = getelementptr inbounds [2 x i32], [2 x i32]* %2372, i32 0, i64 %2367
  %2374 = load i32, i32* %2373, align 4
  %2375 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 0
  %2376 = load i32, i32* %2375, align 4
  %2377 = icmp sle i32 %2374, %2376
  br i1 %2377, label %2378, label %2417

; <label>:2378                                    ; preds = %2364
  %2379 = load i32, i32* %dim, align 4
  %2380 = sub nsw i32 1, %2379
  %2381 = sext i32 %2380 to i64
  %2382 = load %union.rec*, %union.rec** %2, align 8
  %2383 = bitcast %union.rec* %2382 to %struct.word_type*
  %2384 = getelementptr inbounds %struct.word_type, %struct.word_type* %2383, i32 0, i32 3
  %2385 = bitcast %union.THIRD_UNION* %2384 to %struct.anon.6*
  %2386 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2385, i32 0, i32 0
  %2387 = getelementptr inbounds [2 x i32], [2 x i32]* %2386, i32 0, i64 %2381
  %2388 = load i32, i32* %2387, align 4
  %2389 = load i32, i32* %dim, align 4
  %2390 = sub nsw i32 1, %2389
  %2391 = sext i32 %2390 to i64
  %2392 = load %union.rec*, %union.rec** %2, align 8
  %2393 = bitcast %union.rec* %2392 to %struct.word_type*
  %2394 = getelementptr inbounds %struct.word_type, %struct.word_type* %2393, i32 0, i32 3
  %2395 = bitcast %union.THIRD_UNION* %2394 to %struct.anon.6*
  %2396 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2395, i32 0, i32 1
  %2397 = getelementptr inbounds [2 x i32], [2 x i32]* %2396, i32 0, i64 %2391
  %2398 = load i32, i32* %2397, align 4
  %2399 = add nsw i32 %2388, %2398
  %2400 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %2401 = load i32, i32* %2400, align 4
  %2402 = icmp sle i32 %2399, %2401
  br i1 %2402, label %2403, label %2417

; <label>:2403                                    ; preds = %2378
  %2404 = load i32, i32* %dim, align 4
  %2405 = sub nsw i32 1, %2404
  %2406 = sext i32 %2405 to i64
  %2407 = load %union.rec*, %union.rec** %2, align 8
  %2408 = bitcast %union.rec* %2407 to %struct.word_type*
  %2409 = getelementptr inbounds %struct.word_type, %struct.word_type* %2408, i32 0, i32 3
  %2410 = bitcast %union.THIRD_UNION* %2409 to %struct.anon.6*
  %2411 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2410, i32 0, i32 1
  %2412 = getelementptr inbounds [2 x i32], [2 x i32]* %2411, i32 0, i64 %2406
  %2413 = load i32, i32* %2412, align 4
  %2414 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 2
  %2415 = load i32, i32* %2414, align 4
  %2416 = icmp sle i32 %2413, %2415
  br i1 %2416, label %2433, label %2417

; <label>:2417                                    ; preds = %2403, %2378, %2364
  %2418 = load %union.rec*, %union.rec** %2, align 8
  %2419 = bitcast %union.rec* %2418 to %struct.word_type*
  %2420 = getelementptr inbounds %struct.word_type, %struct.word_type* %2419, i32 0, i32 1
  %2421 = bitcast %union.FIRST_UNION* %2420 to %struct.FILE_POS*
  %2422 = load %union.rec*, %union.rec** %2, align 8
  %2423 = bitcast %union.rec* %2422 to %struct.closure_type*
  %2424 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2423, i32 0, i32 5
  %2425 = load %union.rec*, %union.rec** %2424, align 8
  %2426 = call i8* @SymName(%union.rec* %2425)
  %2427 = load %union.rec*, %union.rec** %dest, align 8
  %2428 = bitcast %union.rec* %2427 to %struct.closure_type*
  %2429 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2428, i32 0, i32 5
  %2430 = load %union.rec*, %union.rec** %2429, align 8
  %2431 = call i8* @SymName(%union.rec* %2430)
  %2432 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i32 0, i32 0), i32 2, %struct.FILE_POS* %2421, i8* %2426, i8* %2431)
  br label %6780

; <label>:2433                                    ; preds = %2403
  br label %2434

; <label>:2434                                    ; preds = %2433, %2361
  %2435 = load %union.rec*, %union.rec** %2, align 8
  %2436 = bitcast %union.rec* %2435 to %struct.word_type*
  %2437 = getelementptr inbounds %struct.word_type, %struct.word_type* %2436, i32 0, i32 0
  %2438 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2437, i32 0, i64 0
  %2439 = getelementptr inbounds %struct.LIST, %struct.LIST* %2438, i32 0, i32 1
  %2440 = load %union.rec*, %union.rec** %2439, align 8
  store %union.rec* %2440, %union.rec** %link, align 8
  br label %2441

; <label>:2441                                    ; preds = %5851, %2434
  %2442 = load %union.rec*, %union.rec** %link, align 8
  %2443 = load %union.rec*, %union.rec** %2, align 8
  %2444 = icmp ne %union.rec* %2442, %2443
  br i1 %2444, label %2445, label %5858

; <label>:2445                                    ; preds = %2441
  %2446 = load %union.rec*, %union.rec** %link, align 8
  %2447 = bitcast %union.rec* %2446 to %struct.word_type*
  %2448 = getelementptr inbounds %struct.word_type, %struct.word_type* %2447, i32 0, i32 0
  %2449 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2448, i32 0, i64 1
  %2450 = getelementptr inbounds %struct.LIST, %struct.LIST* %2449, i32 0, i32 0
  %2451 = load %union.rec*, %union.rec** %2450, align 8
  store %union.rec* %2451, %union.rec** %y, align 8
  br label %2452

; <label>:2452                                    ; preds = %2462, %2445
  %2453 = load %union.rec*, %union.rec** %y, align 8
  %2454 = bitcast %union.rec* %2453 to %struct.word_type*
  %2455 = getelementptr inbounds %struct.word_type, %struct.word_type* %2454, i32 0, i32 1
  %2456 = bitcast %union.FIRST_UNION* %2455 to %struct.anon*
  %2457 = getelementptr inbounds %struct.anon, %struct.anon* %2456, i32 0, i32 0
  %2458 = load i8, i8* %2457, align 1
  %2459 = zext i8 %2458 to i32
  %2460 = icmp eq i32 %2459, 0
  br i1 %2460, label %2461, label %2469

; <label>:2461                                    ; preds = %2452
  br label %2462

; <label>:2462                                    ; preds = %2461
  %2463 = load %union.rec*, %union.rec** %y, align 8
  %2464 = bitcast %union.rec* %2463 to %struct.word_type*
  %2465 = getelementptr inbounds %struct.word_type, %struct.word_type* %2464, i32 0, i32 0
  %2466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2465, i32 0, i64 1
  %2467 = getelementptr inbounds %struct.LIST, %struct.LIST* %2466, i32 0, i32 0
  %2468 = load %union.rec*, %union.rec** %2467, align 8
  store %union.rec* %2468, %union.rec** %y, align 8
  br label %2452

; <label>:2469                                    ; preds = %2452
  %2470 = load %union.rec*, %union.rec** %y, align 8
  %2471 = bitcast %union.rec* %2470 to %struct.word_type*
  %2472 = getelementptr inbounds %struct.word_type, %struct.word_type* %2471, i32 0, i32 1
  %2473 = bitcast %union.FIRST_UNION* %2472 to %struct.anon*
  %2474 = getelementptr inbounds %struct.anon, %struct.anon* %2473, i32 0, i32 0
  %2475 = load i8, i8* %2474, align 1
  %2476 = zext i8 %2475 to i32
  %2477 = icmp eq i32 %2476, 9
  br i1 %2477, label %2478, label %2520

; <label>:2478                                    ; preds = %2469
  %2479 = load i32, i32* %dim, align 4
  %2480 = icmp eq i32 %2479, 0
  br i1 %2480, label %2481, label %2488

; <label>:2481                                    ; preds = %2478
  %2482 = load %union.rec*, %union.rec** %y, align 8
  %2483 = bitcast %union.rec* %2482 to %struct.word_type*
  %2484 = getelementptr inbounds %struct.word_type, %struct.word_type* %2483, i32 0, i32 0
  %2485 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2484, i32 0, i64 0
  %2486 = getelementptr inbounds %struct.LIST, %struct.LIST* %2485, i32 0, i32 1
  %2487 = load %union.rec*, %union.rec** %2486, align 8
  br label %2495

; <label>:2488                                    ; preds = %2478
  %2489 = load %union.rec*, %union.rec** %y, align 8
  %2490 = bitcast %union.rec* %2489 to %struct.word_type*
  %2491 = getelementptr inbounds %struct.word_type, %struct.word_type* %2490, i32 0, i32 0
  %2492 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2491, i32 0, i64 0
  %2493 = getelementptr inbounds %struct.LIST, %struct.LIST* %2492, i32 0, i32 0
  %2494 = load %union.rec*, %union.rec** %2493, align 8
  br label %2495

; <label>:2495                                    ; preds = %2488, %2481
  %2496 = phi %union.rec* [ %2487, %2481 ], [ %2494, %2488 ]
  %2497 = bitcast %union.rec* %2496 to %struct.word_type*
  %2498 = getelementptr inbounds %struct.word_type, %struct.word_type* %2497, i32 0, i32 0
  %2499 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2498, i32 0, i64 1
  %2500 = getelementptr inbounds %struct.LIST, %struct.LIST* %2499, i32 0, i32 0
  %2501 = load %union.rec*, %union.rec** %2500, align 8
  store %union.rec* %2501, %union.rec** %y, align 8
  br label %2502

; <label>:2502                                    ; preds = %2512, %2495
  %2503 = load %union.rec*, %union.rec** %y, align 8
  %2504 = bitcast %union.rec* %2503 to %struct.word_type*
  %2505 = getelementptr inbounds %struct.word_type, %struct.word_type* %2504, i32 0, i32 1
  %2506 = bitcast %union.FIRST_UNION* %2505 to %struct.anon*
  %2507 = getelementptr inbounds %struct.anon, %struct.anon* %2506, i32 0, i32 0
  %2508 = load i8, i8* %2507, align 1
  %2509 = zext i8 %2508 to i32
  %2510 = icmp eq i32 %2509, 0
  br i1 %2510, label %2511, label %2519

; <label>:2511                                    ; preds = %2502
  br label %2512

; <label>:2512                                    ; preds = %2511
  %2513 = load %union.rec*, %union.rec** %y, align 8
  %2514 = bitcast %union.rec* %2513 to %struct.word_type*
  %2515 = getelementptr inbounds %struct.word_type, %struct.word_type* %2514, i32 0, i32 0
  %2516 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2515, i32 0, i64 1
  %2517 = getelementptr inbounds %struct.LIST, %struct.LIST* %2516, i32 0, i32 0
  %2518 = load %union.rec*, %union.rec** %2517, align 8
  store %union.rec* %2518, %union.rec** %y, align 8
  br label %2502

; <label>:2519                                    ; preds = %2502
  br label %2520

; <label>:2520                                    ; preds = %2519, %2469
  %2521 = load %union.rec*, %union.rec** %y, align 8
  %2522 = bitcast %union.rec* %2521 to %struct.word_type*
  %2523 = getelementptr inbounds %struct.word_type, %struct.word_type* %2522, i32 0, i32 1
  %2524 = bitcast %union.FIRST_UNION* %2523 to %struct.anon*
  %2525 = getelementptr inbounds %struct.anon, %struct.anon* %2524, i32 0, i32 0
  %2526 = load i8, i8* %2525, align 1
  %2527 = zext i8 %2526 to i32
  switch i32 %2527, label %5839 [
    i32 138, label %2528
    i32 136, label %2528
    i32 137, label %2528
    i32 133, label %2528
    i32 129, label %2528
    i32 130, label %2528
    i32 132, label %2528
    i32 134, label %2528
    i32 127, label %2528
    i32 128, label %2528
    i32 131, label %2528
    i32 135, label %2528
    i32 124, label %2529
    i32 120, label %2529
    i32 121, label %2768
    i32 122, label %2769
    i32 125, label %2770
    i32 1, label %3636
    i32 20, label %3674
    i32 21, label %3674
    i32 22, label %3674
    i32 23, label %3674
    i32 2, label %3693
    i32 6, label %3693
    i32 7, label %3693
    i32 5, label %3693
    i32 4, label %3693
    i32 11, label %3712
    i32 12, label %3712
    i32 24, label %3712
    i32 25, label %3712
    i32 26, label %3712
    i32 27, label %3712
    i32 28, label %3712
    i32 29, label %3712
    i32 30, label %3712
    i32 31, label %3712
    i32 32, label %3712
    i32 33, label %3712
    i32 36, label %3712
    i32 37, label %3712
    i32 38, label %3712
    i32 39, label %3712
    i32 40, label %3712
    i32 41, label %3712
    i32 44, label %3712
    i32 42, label %3712
    i32 43, label %3712
    i32 45, label %3712
    i32 46, label %3712
    i32 50, label %3712
    i32 51, label %3712
    i32 34, label %3712
    i32 35, label %3712
    i32 94, label %3712
    i32 95, label %3712
    i32 96, label %3712
    i32 97, label %3712
    i32 98, label %3712
    i32 99, label %3712
    i32 17, label %3712
    i32 18, label %3712
    i32 19, label %3712
    i32 15, label %3712
    i32 16, label %3712
  ]

; <label>:2528                                    ; preds = %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520
  br label %5850

; <label>:2529                                    ; preds = %2520, %2520
  %2530 = load i32, i32* %was_sized, align 4
  %2531 = icmp ne i32 %2530, 0
  br i1 %2531, label %2532, label %2767

; <label>:2532                                    ; preds = %2529
  %2533 = load %union.rec*, %union.rec** %hd_inners, align 8
  %2534 = icmp eq %union.rec* %2533, null
  br i1 %2534, label %2535, label %2595

; <label>:2535                                    ; preds = %2532
  %2536 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %2537 = zext i8 %2536 to i32
  store i32 %2537, i32* @zz_size, align 4
  %2538 = sext i32 %2537 to i64
  %2539 = icmp uge i64 %2538, 265
  br i1 %2539, label %2540, label %2543

; <label>:2540                                    ; preds = %2535
  %2541 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2542 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %2541)
  br label %2568

; <label>:2543                                    ; preds = %2535
  %2544 = load i32, i32* @zz_size, align 4
  %2545 = sext i32 %2544 to i64
  %2546 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2545
  %2547 = load %union.rec*, %union.rec** %2546, align 8
  %2548 = icmp eq %union.rec* %2547, null
  br i1 %2548, label %2549, label %2553

; <label>:2549                                    ; preds = %2543
  %2550 = load i32, i32* @zz_size, align 4
  %2551 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2552 = call %union.rec* @GetMemory(i32 %2550, %struct.FILE_POS* %2551)
  store %union.rec* %2552, %union.rec** @zz_hold, align 8
  br label %2567

; <label>:2553                                    ; preds = %2543
  %2554 = load i32, i32* @zz_size, align 4
  %2555 = sext i32 %2554 to i64
  %2556 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2555
  %2557 = load %union.rec*, %union.rec** %2556, align 8
  store %union.rec* %2557, %union.rec** @zz_hold, align 8
  store %union.rec* %2557, %union.rec** @zz_hold, align 8
  %2558 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2559 = bitcast %union.rec* %2558 to %struct.word_type*
  %2560 = getelementptr inbounds %struct.word_type, %struct.word_type* %2559, i32 0, i32 0
  %2561 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2560, i32 0, i64 0
  %2562 = getelementptr inbounds %struct.LIST, %struct.LIST* %2561, i32 0, i32 0
  %2563 = load %union.rec*, %union.rec** %2562, align 8
  %2564 = load i32, i32* @zz_size, align 4
  %2565 = sext i32 %2564 to i64
  %2566 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2565
  store %union.rec* %2563, %union.rec** %2566, align 8
  br label %2567

; <label>:2567                                    ; preds = %2553, %2549
  br label %2568

; <label>:2568                                    ; preds = %2567, %2540
  %2569 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2570 = bitcast %union.rec* %2569 to %struct.word_type*
  %2571 = getelementptr inbounds %struct.word_type, %struct.word_type* %2570, i32 0, i32 1
  %2572 = bitcast %union.FIRST_UNION* %2571 to %struct.anon*
  %2573 = getelementptr inbounds %struct.anon, %struct.anon* %2572, i32 0, i32 0
  store i8 17, i8* %2573, align 1
  %2574 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2575 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2576 = bitcast %union.rec* %2575 to %struct.word_type*
  %2577 = getelementptr inbounds %struct.word_type, %struct.word_type* %2576, i32 0, i32 0
  %2578 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2577, i32 0, i64 1
  %2579 = getelementptr inbounds %struct.LIST, %struct.LIST* %2578, i32 0, i32 1
  store %union.rec* %2574, %union.rec** %2579, align 8
  %2580 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2581 = bitcast %union.rec* %2580 to %struct.word_type*
  %2582 = getelementptr inbounds %struct.word_type, %struct.word_type* %2581, i32 0, i32 0
  %2583 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2582, i32 0, i64 1
  %2584 = getelementptr inbounds %struct.LIST, %struct.LIST* %2583, i32 0, i32 0
  store %union.rec* %2574, %union.rec** %2584, align 8
  %2585 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2586 = bitcast %union.rec* %2585 to %struct.word_type*
  %2587 = getelementptr inbounds %struct.word_type, %struct.word_type* %2586, i32 0, i32 0
  %2588 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2587, i32 0, i64 0
  %2589 = getelementptr inbounds %struct.LIST, %struct.LIST* %2588, i32 0, i32 1
  store %union.rec* %2574, %union.rec** %2589, align 8
  %2590 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2591 = bitcast %union.rec* %2590 to %struct.word_type*
  %2592 = getelementptr inbounds %struct.word_type, %struct.word_type* %2591, i32 0, i32 0
  %2593 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2592, i32 0, i64 0
  %2594 = getelementptr inbounds %struct.LIST, %struct.LIST* %2593, i32 0, i32 0
  store %union.rec* %2574, %union.rec** %2594, align 8
  store %union.rec* %2574, %union.rec** %hd_inners, align 8
  br label %2595

; <label>:2595                                    ; preds = %2568, %2532
  %2596 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %2597 = zext i8 %2596 to i32
  store i32 %2597, i32* @zz_size, align 4
  %2598 = sext i32 %2597 to i64
  %2599 = icmp uge i64 %2598, 265
  br i1 %2599, label %2600, label %2603

; <label>:2600                                    ; preds = %2595
  %2601 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2602 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %2601)
  br label %2628

; <label>:2603                                    ; preds = %2595
  %2604 = load i32, i32* @zz_size, align 4
  %2605 = sext i32 %2604 to i64
  %2606 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2605
  %2607 = load %union.rec*, %union.rec** %2606, align 8
  %2608 = icmp eq %union.rec* %2607, null
  br i1 %2608, label %2609, label %2613

; <label>:2609                                    ; preds = %2603
  %2610 = load i32, i32* @zz_size, align 4
  %2611 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2612 = call %union.rec* @GetMemory(i32 %2610, %struct.FILE_POS* %2611)
  store %union.rec* %2612, %union.rec** @zz_hold, align 8
  br label %2627

; <label>:2613                                    ; preds = %2603
  %2614 = load i32, i32* @zz_size, align 4
  %2615 = sext i32 %2614 to i64
  %2616 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2615
  %2617 = load %union.rec*, %union.rec** %2616, align 8
  store %union.rec* %2617, %union.rec** @zz_hold, align 8
  store %union.rec* %2617, %union.rec** @zz_hold, align 8
  %2618 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2619 = bitcast %union.rec* %2618 to %struct.word_type*
  %2620 = getelementptr inbounds %struct.word_type, %struct.word_type* %2619, i32 0, i32 0
  %2621 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2620, i32 0, i64 0
  %2622 = getelementptr inbounds %struct.LIST, %struct.LIST* %2621, i32 0, i32 0
  %2623 = load %union.rec*, %union.rec** %2622, align 8
  %2624 = load i32, i32* @zz_size, align 4
  %2625 = sext i32 %2624 to i64
  %2626 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2625
  store %union.rec* %2623, %union.rec** %2626, align 8
  br label %2627

; <label>:2627                                    ; preds = %2613, %2609
  br label %2628

; <label>:2628                                    ; preds = %2627, %2600
  %2629 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2630 = bitcast %union.rec* %2629 to %struct.word_type*
  %2631 = getelementptr inbounds %struct.word_type, %struct.word_type* %2630, i32 0, i32 1
  %2632 = bitcast %union.FIRST_UNION* %2631 to %struct.anon*
  %2633 = getelementptr inbounds %struct.anon, %struct.anon* %2632, i32 0, i32 0
  store i8 0, i8* %2633, align 1
  %2634 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2635 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2636 = bitcast %union.rec* %2635 to %struct.word_type*
  %2637 = getelementptr inbounds %struct.word_type, %struct.word_type* %2636, i32 0, i32 0
  %2638 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2637, i32 0, i64 1
  %2639 = getelementptr inbounds %struct.LIST, %struct.LIST* %2638, i32 0, i32 1
  store %union.rec* %2634, %union.rec** %2639, align 8
  %2640 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2641 = bitcast %union.rec* %2640 to %struct.word_type*
  %2642 = getelementptr inbounds %struct.word_type, %struct.word_type* %2641, i32 0, i32 0
  %2643 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2642, i32 0, i64 1
  %2644 = getelementptr inbounds %struct.LIST, %struct.LIST* %2643, i32 0, i32 0
  store %union.rec* %2634, %union.rec** %2644, align 8
  %2645 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2646 = bitcast %union.rec* %2645 to %struct.word_type*
  %2647 = getelementptr inbounds %struct.word_type, %struct.word_type* %2646, i32 0, i32 0
  %2648 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2647, i32 0, i64 0
  %2649 = getelementptr inbounds %struct.LIST, %struct.LIST* %2648, i32 0, i32 1
  store %union.rec* %2634, %union.rec** %2649, align 8
  %2650 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2651 = bitcast %union.rec* %2650 to %struct.word_type*
  %2652 = getelementptr inbounds %struct.word_type, %struct.word_type* %2651, i32 0, i32 0
  %2653 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2652, i32 0, i64 0
  %2654 = getelementptr inbounds %struct.LIST, %struct.LIST* %2653, i32 0, i32 0
  store %union.rec* %2634, %union.rec** %2654, align 8
  store %union.rec* %2634, %union.rec** @xx_link, align 8
  %2655 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2655, %union.rec** @zz_res, align 8
  %2656 = load %union.rec*, %union.rec** %hd_inners, align 8
  store %union.rec* %2656, %union.rec** @zz_hold, align 8
  %2657 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2658 = icmp eq %union.rec* %2657, null
  br i1 %2658, label %2659, label %2661

; <label>:2659                                    ; preds = %2628
  %2660 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2709

; <label>:2661                                    ; preds = %2628
  %2662 = load %union.rec*, %union.rec** @zz_res, align 8
  %2663 = icmp eq %union.rec* %2662, null
  br i1 %2663, label %2664, label %2666

; <label>:2664                                    ; preds = %2661
  %2665 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2707

; <label>:2666                                    ; preds = %2661
  %2667 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2668 = bitcast %union.rec* %2667 to %struct.word_type*
  %2669 = getelementptr inbounds %struct.word_type, %struct.word_type* %2668, i32 0, i32 0
  %2670 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2669, i32 0, i64 0
  %2671 = getelementptr inbounds %struct.LIST, %struct.LIST* %2670, i32 0, i32 0
  %2672 = load %union.rec*, %union.rec** %2671, align 8
  store %union.rec* %2672, %union.rec** @zz_tmp, align 8
  %2673 = load %union.rec*, %union.rec** @zz_res, align 8
  %2674 = bitcast %union.rec* %2673 to %struct.word_type*
  %2675 = getelementptr inbounds %struct.word_type, %struct.word_type* %2674, i32 0, i32 0
  %2676 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2675, i32 0, i64 0
  %2677 = getelementptr inbounds %struct.LIST, %struct.LIST* %2676, i32 0, i32 0
  %2678 = load %union.rec*, %union.rec** %2677, align 8
  %2679 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2680 = bitcast %union.rec* %2679 to %struct.word_type*
  %2681 = getelementptr inbounds %struct.word_type, %struct.word_type* %2680, i32 0, i32 0
  %2682 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2681, i32 0, i64 0
  %2683 = getelementptr inbounds %struct.LIST, %struct.LIST* %2682, i32 0, i32 0
  store %union.rec* %2678, %union.rec** %2683, align 8
  %2684 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2685 = load %union.rec*, %union.rec** @zz_res, align 8
  %2686 = bitcast %union.rec* %2685 to %struct.word_type*
  %2687 = getelementptr inbounds %struct.word_type, %struct.word_type* %2686, i32 0, i32 0
  %2688 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2687, i32 0, i64 0
  %2689 = getelementptr inbounds %struct.LIST, %struct.LIST* %2688, i32 0, i32 0
  %2690 = load %union.rec*, %union.rec** %2689, align 8
  %2691 = bitcast %union.rec* %2690 to %struct.word_type*
  %2692 = getelementptr inbounds %struct.word_type, %struct.word_type* %2691, i32 0, i32 0
  %2693 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2692, i32 0, i64 0
  %2694 = getelementptr inbounds %struct.LIST, %struct.LIST* %2693, i32 0, i32 1
  store %union.rec* %2684, %union.rec** %2694, align 8
  %2695 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2696 = load %union.rec*, %union.rec** @zz_res, align 8
  %2697 = bitcast %union.rec* %2696 to %struct.word_type*
  %2698 = getelementptr inbounds %struct.word_type, %struct.word_type* %2697, i32 0, i32 0
  %2699 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2698, i32 0, i64 0
  %2700 = getelementptr inbounds %struct.LIST, %struct.LIST* %2699, i32 0, i32 0
  store %union.rec* %2695, %union.rec** %2700, align 8
  %2701 = load %union.rec*, %union.rec** @zz_res, align 8
  %2702 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2703 = bitcast %union.rec* %2702 to %struct.word_type*
  %2704 = getelementptr inbounds %struct.word_type, %struct.word_type* %2703, i32 0, i32 0
  %2705 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2704, i32 0, i64 0
  %2706 = getelementptr inbounds %struct.LIST, %struct.LIST* %2705, i32 0, i32 1
  store %union.rec* %2701, %union.rec** %2706, align 8
  br label %2707

; <label>:2707                                    ; preds = %2666, %2664
  %2708 = phi %union.rec* [ %2665, %2664 ], [ %2701, %2666 ]
  br label %2709

; <label>:2709                                    ; preds = %2707, %2659
  %2710 = phi %union.rec* [ %2660, %2659 ], [ %2708, %2707 ]
  %2711 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2711, %union.rec** @zz_res, align 8
  %2712 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %2712, %union.rec** @zz_hold, align 8
  %2713 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2714 = icmp eq %union.rec* %2713, null
  br i1 %2714, label %2715, label %2717

; <label>:2715                                    ; preds = %2709
  %2716 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2765

; <label>:2717                                    ; preds = %2709
  %2718 = load %union.rec*, %union.rec** @zz_res, align 8
  %2719 = icmp eq %union.rec* %2718, null
  br i1 %2719, label %2720, label %2722

; <label>:2720                                    ; preds = %2717
  %2721 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2763

; <label>:2722                                    ; preds = %2717
  %2723 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2724 = bitcast %union.rec* %2723 to %struct.word_type*
  %2725 = getelementptr inbounds %struct.word_type, %struct.word_type* %2724, i32 0, i32 0
  %2726 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2725, i32 0, i64 1
  %2727 = getelementptr inbounds %struct.LIST, %struct.LIST* %2726, i32 0, i32 0
  %2728 = load %union.rec*, %union.rec** %2727, align 8
  store %union.rec* %2728, %union.rec** @zz_tmp, align 8
  %2729 = load %union.rec*, %union.rec** @zz_res, align 8
  %2730 = bitcast %union.rec* %2729 to %struct.word_type*
  %2731 = getelementptr inbounds %struct.word_type, %struct.word_type* %2730, i32 0, i32 0
  %2732 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2731, i32 0, i64 1
  %2733 = getelementptr inbounds %struct.LIST, %struct.LIST* %2732, i32 0, i32 0
  %2734 = load %union.rec*, %union.rec** %2733, align 8
  %2735 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2736 = bitcast %union.rec* %2735 to %struct.word_type*
  %2737 = getelementptr inbounds %struct.word_type, %struct.word_type* %2736, i32 0, i32 0
  %2738 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2737, i32 0, i64 1
  %2739 = getelementptr inbounds %struct.LIST, %struct.LIST* %2738, i32 0, i32 0
  store %union.rec* %2734, %union.rec** %2739, align 8
  %2740 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2741 = load %union.rec*, %union.rec** @zz_res, align 8
  %2742 = bitcast %union.rec* %2741 to %struct.word_type*
  %2743 = getelementptr inbounds %struct.word_type, %struct.word_type* %2742, i32 0, i32 0
  %2744 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2743, i32 0, i64 1
  %2745 = getelementptr inbounds %struct.LIST, %struct.LIST* %2744, i32 0, i32 0
  %2746 = load %union.rec*, %union.rec** %2745, align 8
  %2747 = bitcast %union.rec* %2746 to %struct.word_type*
  %2748 = getelementptr inbounds %struct.word_type, %struct.word_type* %2747, i32 0, i32 0
  %2749 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2748, i32 0, i64 1
  %2750 = getelementptr inbounds %struct.LIST, %struct.LIST* %2749, i32 0, i32 1
  store %union.rec* %2740, %union.rec** %2750, align 8
  %2751 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2752 = load %union.rec*, %union.rec** @zz_res, align 8
  %2753 = bitcast %union.rec* %2752 to %struct.word_type*
  %2754 = getelementptr inbounds %struct.word_type, %struct.word_type* %2753, i32 0, i32 0
  %2755 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2754, i32 0, i64 1
  %2756 = getelementptr inbounds %struct.LIST, %struct.LIST* %2755, i32 0, i32 0
  store %union.rec* %2751, %union.rec** %2756, align 8
  %2757 = load %union.rec*, %union.rec** @zz_res, align 8
  %2758 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2759 = bitcast %union.rec* %2758 to %struct.word_type*
  %2760 = getelementptr inbounds %struct.word_type, %struct.word_type* %2759, i32 0, i32 0
  %2761 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2760, i32 0, i64 1
  %2762 = getelementptr inbounds %struct.LIST, %struct.LIST* %2761, i32 0, i32 1
  store %union.rec* %2757, %union.rec** %2762, align 8
  br label %2763

; <label>:2763                                    ; preds = %2722, %2720
  %2764 = phi %union.rec* [ %2721, %2720 ], [ %2757, %2722 ]
  br label %2765

; <label>:2765                                    ; preds = %2763, %2715
  %2766 = phi %union.rec* [ %2716, %2715 ], [ %2764, %2763 ]
  br label %2767

; <label>:2767                                    ; preds = %2765, %2529
  br label %5850

; <label>:2768                                    ; preds = %2520
  br label %7056

; <label>:2769                                    ; preds = %2520
  br label %7056

; <label>:2770                                    ; preds = %2520
  %2771 = load %union.rec*, %union.rec** %y, align 8
  %2772 = bitcast %union.rec* %2771 to %struct.word_type*
  %2773 = getelementptr inbounds %struct.word_type, %struct.word_type* %2772, i32 0, i32 0
  %2774 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2773, i32 0, i64 0
  %2775 = getelementptr inbounds %struct.LIST, %struct.LIST* %2774, i32 0, i32 1
  %2776 = load %union.rec*, %union.rec** %2775, align 8
  %2777 = bitcast %union.rec* %2776 to %struct.word_type*
  %2778 = getelementptr inbounds %struct.word_type, %struct.word_type* %2777, i32 0, i32 0
  %2779 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2778, i32 0, i64 1
  %2780 = getelementptr inbounds %struct.LIST, %struct.LIST* %2779, i32 0, i32 0
  %2781 = load %union.rec*, %union.rec** %2780, align 8
  store %union.rec* %2781, %union.rec** %tmp, align 8
  br label %2782

; <label>:2782                                    ; preds = %2792, %2770
  %2783 = load %union.rec*, %union.rec** %tmp, align 8
  %2784 = bitcast %union.rec* %2783 to %struct.word_type*
  %2785 = getelementptr inbounds %struct.word_type, %struct.word_type* %2784, i32 0, i32 1
  %2786 = bitcast %union.FIRST_UNION* %2785 to %struct.anon*
  %2787 = getelementptr inbounds %struct.anon, %struct.anon* %2786, i32 0, i32 0
  %2788 = load i8, i8* %2787, align 1
  %2789 = zext i8 %2788 to i32
  %2790 = icmp eq i32 %2789, 0
  br i1 %2790, label %2791, label %2799

; <label>:2791                                    ; preds = %2782
  br label %2792

; <label>:2792                                    ; preds = %2791
  %2793 = load %union.rec*, %union.rec** %tmp, align 8
  %2794 = bitcast %union.rec* %2793 to %struct.word_type*
  %2795 = getelementptr inbounds %struct.word_type, %struct.word_type* %2794, i32 0, i32 0
  %2796 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2795, i32 0, i64 1
  %2797 = getelementptr inbounds %struct.LIST, %struct.LIST* %2796, i32 0, i32 0
  %2798 = load %union.rec*, %union.rec** %2797, align 8
  store %union.rec* %2798, %union.rec** %tmp, align 8
  br label %2782

; <label>:2799                                    ; preds = %2782
  %2800 = load %union.rec*, %union.rec** %tmp, align 8
  %2801 = bitcast %union.rec* %2800 to %struct.word_type*
  %2802 = getelementptr inbounds %struct.word_type, %struct.word_type* %2801, i32 0, i32 0
  %2803 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2802, i32 0, i64 1
  %2804 = getelementptr inbounds %struct.LIST, %struct.LIST* %2803, i32 0, i32 1
  %2805 = load %union.rec*, %union.rec** %2804, align 8
  %2806 = load %union.rec*, %union.rec** %tmp, align 8
  %2807 = bitcast %union.rec* %2806 to %struct.word_type*
  %2808 = getelementptr inbounds %struct.word_type, %struct.word_type* %2807, i32 0, i32 0
  %2809 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2808, i32 0, i64 1
  %2810 = getelementptr inbounds %struct.LIST, %struct.LIST* %2809, i32 0, i32 0
  %2811 = load %union.rec*, %union.rec** %2810, align 8
  %2812 = icmp eq %union.rec* %2805, %2811
  br i1 %2812, label %2813, label %2997

; <label>:2813                                    ; preds = %2799
  %2814 = load %union.rec*, %union.rec** %link, align 8
  %2815 = bitcast %union.rec* %2814 to %struct.word_type*
  %2816 = getelementptr inbounds %struct.word_type, %struct.word_type* %2815, i32 0, i32 0
  %2817 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2816, i32 0, i64 0
  %2818 = getelementptr inbounds %struct.LIST, %struct.LIST* %2817, i32 0, i32 0
  %2819 = load %union.rec*, %union.rec** %2818, align 8
  store %union.rec* %2819, %union.rec** %link, align 8
  %2820 = load %union.rec*, %union.rec** %link, align 8
  %2821 = bitcast %union.rec* %2820 to %struct.word_type*
  %2822 = getelementptr inbounds %struct.word_type, %struct.word_type* %2821, i32 0, i32 0
  %2823 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2822, i32 0, i64 0
  %2824 = getelementptr inbounds %struct.LIST, %struct.LIST* %2823, i32 0, i32 1
  %2825 = load %union.rec*, %union.rec** %2824, align 8
  store %union.rec* %2825, %union.rec** @xx_link, align 8
  %2826 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2826, %union.rec** @zz_hold, align 8
  %2827 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2828 = bitcast %union.rec* %2827 to %struct.word_type*
  %2829 = getelementptr inbounds %struct.word_type, %struct.word_type* %2828, i32 0, i32 0
  %2830 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2829, i32 0, i64 1
  %2831 = getelementptr inbounds %struct.LIST, %struct.LIST* %2830, i32 0, i32 1
  %2832 = load %union.rec*, %union.rec** %2831, align 8
  %2833 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2834 = icmp eq %union.rec* %2832, %2833
  br i1 %2834, label %2835, label %2836

; <label>:2835                                    ; preds = %2813
  br label %2877

; <label>:2836                                    ; preds = %2813
  %2837 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2838 = bitcast %union.rec* %2837 to %struct.word_type*
  %2839 = getelementptr inbounds %struct.word_type, %struct.word_type* %2838, i32 0, i32 0
  %2840 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2839, i32 0, i64 1
  %2841 = getelementptr inbounds %struct.LIST, %struct.LIST* %2840, i32 0, i32 1
  %2842 = load %union.rec*, %union.rec** %2841, align 8
  store %union.rec* %2842, %union.rec** @zz_res, align 8
  %2843 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2844 = bitcast %union.rec* %2843 to %struct.word_type*
  %2845 = getelementptr inbounds %struct.word_type, %struct.word_type* %2844, i32 0, i32 0
  %2846 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2845, i32 0, i64 1
  %2847 = getelementptr inbounds %struct.LIST, %struct.LIST* %2846, i32 0, i32 0
  %2848 = load %union.rec*, %union.rec** %2847, align 8
  %2849 = load %union.rec*, %union.rec** @zz_res, align 8
  %2850 = bitcast %union.rec* %2849 to %struct.word_type*
  %2851 = getelementptr inbounds %struct.word_type, %struct.word_type* %2850, i32 0, i32 0
  %2852 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2851, i32 0, i64 1
  %2853 = getelementptr inbounds %struct.LIST, %struct.LIST* %2852, i32 0, i32 0
  store %union.rec* %2848, %union.rec** %2853, align 8
  %2854 = load %union.rec*, %union.rec** @zz_res, align 8
  %2855 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2856 = bitcast %union.rec* %2855 to %struct.word_type*
  %2857 = getelementptr inbounds %struct.word_type, %struct.word_type* %2856, i32 0, i32 0
  %2858 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2857, i32 0, i64 1
  %2859 = getelementptr inbounds %struct.LIST, %struct.LIST* %2858, i32 0, i32 0
  %2860 = load %union.rec*, %union.rec** %2859, align 8
  %2861 = bitcast %union.rec* %2860 to %struct.word_type*
  %2862 = getelementptr inbounds %struct.word_type, %struct.word_type* %2861, i32 0, i32 0
  %2863 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2862, i32 0, i64 1
  %2864 = getelementptr inbounds %struct.LIST, %struct.LIST* %2863, i32 0, i32 1
  store %union.rec* %2854, %union.rec** %2864, align 8
  %2865 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2866 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2867 = bitcast %union.rec* %2866 to %struct.word_type*
  %2868 = getelementptr inbounds %struct.word_type, %struct.word_type* %2867, i32 0, i32 0
  %2869 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2868, i32 0, i64 1
  %2870 = getelementptr inbounds %struct.LIST, %struct.LIST* %2869, i32 0, i32 1
  store %union.rec* %2865, %union.rec** %2870, align 8
  %2871 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2872 = bitcast %union.rec* %2871 to %struct.word_type*
  %2873 = getelementptr inbounds %struct.word_type, %struct.word_type* %2872, i32 0, i32 0
  %2874 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2873, i32 0, i64 1
  %2875 = getelementptr inbounds %struct.LIST, %struct.LIST* %2874, i32 0, i32 0
  store %union.rec* %2865, %union.rec** %2875, align 8
  %2876 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2877

; <label>:2877                                    ; preds = %2836, %2835
  %2878 = phi %union.rec* [ null, %2835 ], [ %2876, %2836 ]
  store %union.rec* %2878, %union.rec** @xx_tmp, align 8
  %2879 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2879, %union.rec** @zz_hold, align 8
  %2880 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2881 = bitcast %union.rec* %2880 to %struct.word_type*
  %2882 = getelementptr inbounds %struct.word_type, %struct.word_type* %2881, i32 0, i32 0
  %2883 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2882, i32 0, i64 0
  %2884 = getelementptr inbounds %struct.LIST, %struct.LIST* %2883, i32 0, i32 1
  %2885 = load %union.rec*, %union.rec** %2884, align 8
  %2886 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2887 = icmp eq %union.rec* %2885, %2886
  br i1 %2887, label %2888, label %2889

; <label>:2888                                    ; preds = %2877
  br label %2930

; <label>:2889                                    ; preds = %2877
  %2890 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2891 = bitcast %union.rec* %2890 to %struct.word_type*
  %2892 = getelementptr inbounds %struct.word_type, %struct.word_type* %2891, i32 0, i32 0
  %2893 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2892, i32 0, i64 0
  %2894 = getelementptr inbounds %struct.LIST, %struct.LIST* %2893, i32 0, i32 1
  %2895 = load %union.rec*, %union.rec** %2894, align 8
  store %union.rec* %2895, %union.rec** @zz_res, align 8
  %2896 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2897 = bitcast %union.rec* %2896 to %struct.word_type*
  %2898 = getelementptr inbounds %struct.word_type, %struct.word_type* %2897, i32 0, i32 0
  %2899 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2898, i32 0, i64 0
  %2900 = getelementptr inbounds %struct.LIST, %struct.LIST* %2899, i32 0, i32 0
  %2901 = load %union.rec*, %union.rec** %2900, align 8
  %2902 = load %union.rec*, %union.rec** @zz_res, align 8
  %2903 = bitcast %union.rec* %2902 to %struct.word_type*
  %2904 = getelementptr inbounds %struct.word_type, %struct.word_type* %2903, i32 0, i32 0
  %2905 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2904, i32 0, i64 0
  %2906 = getelementptr inbounds %struct.LIST, %struct.LIST* %2905, i32 0, i32 0
  store %union.rec* %2901, %union.rec** %2906, align 8
  %2907 = load %union.rec*, %union.rec** @zz_res, align 8
  %2908 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2909 = bitcast %union.rec* %2908 to %struct.word_type*
  %2910 = getelementptr inbounds %struct.word_type, %struct.word_type* %2909, i32 0, i32 0
  %2911 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2910, i32 0, i64 0
  %2912 = getelementptr inbounds %struct.LIST, %struct.LIST* %2911, i32 0, i32 0
  %2913 = load %union.rec*, %union.rec** %2912, align 8
  %2914 = bitcast %union.rec* %2913 to %struct.word_type*
  %2915 = getelementptr inbounds %struct.word_type, %struct.word_type* %2914, i32 0, i32 0
  %2916 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2915, i32 0, i64 0
  %2917 = getelementptr inbounds %struct.LIST, %struct.LIST* %2916, i32 0, i32 1
  store %union.rec* %2907, %union.rec** %2917, align 8
  %2918 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2919 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2920 = bitcast %union.rec* %2919 to %struct.word_type*
  %2921 = getelementptr inbounds %struct.word_type, %struct.word_type* %2920, i32 0, i32 0
  %2922 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2921, i32 0, i64 0
  %2923 = getelementptr inbounds %struct.LIST, %struct.LIST* %2922, i32 0, i32 1
  store %union.rec* %2918, %union.rec** %2923, align 8
  %2924 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2925 = bitcast %union.rec* %2924 to %struct.word_type*
  %2926 = getelementptr inbounds %struct.word_type, %struct.word_type* %2925, i32 0, i32 0
  %2927 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2926, i32 0, i64 0
  %2928 = getelementptr inbounds %struct.LIST, %struct.LIST* %2927, i32 0, i32 0
  store %union.rec* %2918, %union.rec** %2928, align 8
  %2929 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2930

; <label>:2930                                    ; preds = %2889, %2888
  %2931 = phi %union.rec* [ null, %2888 ], [ %2929, %2889 ]
  %2932 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2932, %union.rec** @zz_hold, align 8
  %2933 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2933, %union.rec** @zz_hold, align 8
  %2934 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2935 = bitcast %union.rec* %2934 to %struct.word_type*
  %2936 = getelementptr inbounds %struct.word_type, %struct.word_type* %2935, i32 0, i32 1
  %2937 = bitcast %union.FIRST_UNION* %2936 to %struct.anon*
  %2938 = getelementptr inbounds %struct.anon, %struct.anon* %2937, i32 0, i32 0
  %2939 = load i8, i8* %2938, align 1
  %2940 = zext i8 %2939 to i32
  %2941 = icmp eq i32 %2940, 11
  br i1 %2941, label %2951, label %2942

; <label>:2942                                    ; preds = %2930
  %2943 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2944 = bitcast %union.rec* %2943 to %struct.word_type*
  %2945 = getelementptr inbounds %struct.word_type, %struct.word_type* %2944, i32 0, i32 1
  %2946 = bitcast %union.FIRST_UNION* %2945 to %struct.anon*
  %2947 = getelementptr inbounds %struct.anon, %struct.anon* %2946, i32 0, i32 0
  %2948 = load i8, i8* %2947, align 1
  %2949 = zext i8 %2948 to i32
  %2950 = icmp eq i32 %2949, 12
  br i1 %2950, label %2951, label %2959

; <label>:2951                                    ; preds = %2942, %2930
  %2952 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2953 = bitcast %union.rec* %2952 to %struct.word_type*
  %2954 = getelementptr inbounds %struct.word_type, %struct.word_type* %2953, i32 0, i32 1
  %2955 = bitcast %union.FIRST_UNION* %2954 to %struct.anon*
  %2956 = getelementptr inbounds %struct.anon, %struct.anon* %2955, i32 0, i32 1
  %2957 = load i8, i8* %2956, align 1
  %2958 = zext i8 %2957 to i32
  br label %2970

; <label>:2959                                    ; preds = %2942
  %2960 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2961 = bitcast %union.rec* %2960 to %struct.word_type*
  %2962 = getelementptr inbounds %struct.word_type, %struct.word_type* %2961, i32 0, i32 1
  %2963 = bitcast %union.FIRST_UNION* %2962 to %struct.anon*
  %2964 = getelementptr inbounds %struct.anon, %struct.anon* %2963, i32 0, i32 0
  %2965 = load i8, i8* %2964, align 1
  %2966 = zext i8 %2965 to i64
  %2967 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %2966
  %2968 = load i8, i8* %2967, align 1
  %2969 = zext i8 %2968 to i32
  br label %2970

; <label>:2970                                    ; preds = %2959, %2951
  %2971 = phi i32 [ %2958, %2951 ], [ %2969, %2959 ]
  store i32 %2971, i32* @zz_size, align 4
  %2972 = load i32, i32* @zz_size, align 4
  %2973 = sext i32 %2972 to i64
  %2974 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2973
  %2975 = load %union.rec*, %union.rec** %2974, align 8
  %2976 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2977 = bitcast %union.rec* %2976 to %struct.word_type*
  %2978 = getelementptr inbounds %struct.word_type, %struct.word_type* %2977, i32 0, i32 0
  %2979 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2978, i32 0, i64 0
  %2980 = getelementptr inbounds %struct.LIST, %struct.LIST* %2979, i32 0, i32 0
  store %union.rec* %2975, %union.rec** %2980, align 8
  %2981 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2982 = load i32, i32* @zz_size, align 4
  %2983 = sext i32 %2982 to i64
  %2984 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2983
  store %union.rec* %2981, %union.rec** %2984, align 8
  %2985 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %2986 = bitcast %union.rec* %2985 to %struct.word_type*
  %2987 = getelementptr inbounds %struct.word_type, %struct.word_type* %2986, i32 0, i32 0
  %2988 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2987, i32 0, i64 1
  %2989 = getelementptr inbounds %struct.LIST, %struct.LIST* %2988, i32 0, i32 1
  %2990 = load %union.rec*, %union.rec** %2989, align 8
  %2991 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %2992 = icmp eq %union.rec* %2990, %2991
  br i1 %2992, label %2993, label %2996

; <label>:2993                                    ; preds = %2970
  %2994 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %2995 = call i32 @DisposeObject(%union.rec* %2994)
  br label %2996

; <label>:2996                                    ; preds = %2993, %2970
  br label %5850

; <label>:2997                                    ; preds = %2799
  %2998 = load %union.rec*, %union.rec** %tmp, align 8
  %2999 = bitcast %union.rec* %2998 to %struct.word_type*
  %3000 = getelementptr inbounds %struct.word_type, %struct.word_type* %2999, i32 0, i32 0
  %3001 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3000, i32 0, i64 1
  %3002 = getelementptr inbounds %struct.LIST, %struct.LIST* %3001, i32 0, i32 1
  %3003 = load %union.rec*, %union.rec** %3002, align 8
  %3004 = bitcast %union.rec* %3003 to %struct.word_type*
  %3005 = getelementptr inbounds %struct.word_type, %struct.word_type* %3004, i32 0, i32 0
  %3006 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3005, i32 0, i64 0
  %3007 = getelementptr inbounds %struct.LIST, %struct.LIST* %3006, i32 0, i32 0
  %3008 = load %union.rec*, %union.rec** %3007, align 8
  store %union.rec* %3008, %union.rec** %tmp, align 8
  br label %3009

; <label>:3009                                    ; preds = %3019, %2997
  %3010 = load %union.rec*, %union.rec** %tmp, align 8
  %3011 = bitcast %union.rec* %3010 to %struct.word_type*
  %3012 = getelementptr inbounds %struct.word_type, %struct.word_type* %3011, i32 0, i32 1
  %3013 = bitcast %union.FIRST_UNION* %3012 to %struct.anon*
  %3014 = getelementptr inbounds %struct.anon, %struct.anon* %3013, i32 0, i32 0
  %3015 = load i8, i8* %3014, align 1
  %3016 = zext i8 %3015 to i32
  %3017 = icmp eq i32 %3016, 0
  br i1 %3017, label %3018, label %3026

; <label>:3018                                    ; preds = %3009
  br label %3019

; <label>:3019                                    ; preds = %3018
  %3020 = load %union.rec*, %union.rec** %tmp, align 8
  %3021 = bitcast %union.rec* %3020 to %struct.word_type*
  %3022 = getelementptr inbounds %struct.word_type, %struct.word_type* %3021, i32 0, i32 0
  %3023 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3022, i32 0, i64 0
  %3024 = getelementptr inbounds %struct.LIST, %struct.LIST* %3023, i32 0, i32 0
  %3025 = load %union.rec*, %union.rec** %3024, align 8
  store %union.rec* %3025, %union.rec** %tmp, align 8
  br label %3009

; <label>:3026                                    ; preds = %3009
  %3027 = load %union.rec*, %union.rec** %tmp, align 8
  %3028 = bitcast %union.rec* %3027 to %struct.word_type*
  %3029 = getelementptr inbounds %struct.word_type, %struct.word_type* %3028, i32 0, i32 1
  %3030 = bitcast %union.FIRST_UNION* %3029 to %struct.anon*
  %3031 = getelementptr inbounds %struct.anon, %struct.anon* %3030, i32 0, i32 0
  %3032 = load i8, i8* %3031, align 1
  %3033 = zext i8 %3032 to i32
  %3034 = icmp eq i32 %3033, 124
  br i1 %3034, label %3038, label %3035

; <label>:3035                                    ; preds = %3026
  %3036 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3037 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3036, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0))
  br label %3038

; <label>:3038                                    ; preds = %3035, %3026
  %3039 = load %union.rec*, %union.rec** %tmp, align 8
  %3040 = load %union.rec*, %union.rec** %target_index, align 8
  %3041 = call i32 @CheckComponentOrder(%union.rec* %3039, %union.rec* %3040)
  switch i32 %3041, label %3635 [
    i32 157, label %3042
    i32 154, label %3632
    i32 156, label %3633
    i32 155, label %3634
  ]

; <label>:3042                                    ; preds = %3038
  %3043 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %3043, %union.rec** @xx_hold, align 8
  br label %3044

; <label>:3044                                    ; preds = %3204, %3042
  %3045 = load %union.rec*, %union.rec** @xx_hold, align 8
  %3046 = bitcast %union.rec* %3045 to %struct.word_type*
  %3047 = getelementptr inbounds %struct.word_type, %struct.word_type* %3046, i32 0, i32 0
  %3048 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3047, i32 0, i64 1
  %3049 = getelementptr inbounds %struct.LIST, %struct.LIST* %3048, i32 0, i32 1
  %3050 = load %union.rec*, %union.rec** %3049, align 8
  %3051 = load %union.rec*, %union.rec** @xx_hold, align 8
  %3052 = icmp ne %union.rec* %3050, %3051
  br i1 %3052, label %3053, label %3219

; <label>:3053                                    ; preds = %3044
  %3054 = load %union.rec*, %union.rec** @xx_hold, align 8
  %3055 = bitcast %union.rec* %3054 to %struct.word_type*
  %3056 = getelementptr inbounds %struct.word_type, %struct.word_type* %3055, i32 0, i32 0
  %3057 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3056, i32 0, i64 1
  %3058 = getelementptr inbounds %struct.LIST, %struct.LIST* %3057, i32 0, i32 1
  %3059 = load %union.rec*, %union.rec** %3058, align 8
  store %union.rec* %3059, %union.rec** @xx_link, align 8
  %3060 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3060, %union.rec** @zz_hold, align 8
  %3061 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3062 = bitcast %union.rec* %3061 to %struct.word_type*
  %3063 = getelementptr inbounds %struct.word_type, %struct.word_type* %3062, i32 0, i32 0
  %3064 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3063, i32 0, i64 1
  %3065 = getelementptr inbounds %struct.LIST, %struct.LIST* %3064, i32 0, i32 1
  %3066 = load %union.rec*, %union.rec** %3065, align 8
  %3067 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3068 = icmp eq %union.rec* %3066, %3067
  br i1 %3068, label %3069, label %3070

; <label>:3069                                    ; preds = %3053
  br label %3111

; <label>:3070                                    ; preds = %3053
  %3071 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3072 = bitcast %union.rec* %3071 to %struct.word_type*
  %3073 = getelementptr inbounds %struct.word_type, %struct.word_type* %3072, i32 0, i32 0
  %3074 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3073, i32 0, i64 1
  %3075 = getelementptr inbounds %struct.LIST, %struct.LIST* %3074, i32 0, i32 1
  %3076 = load %union.rec*, %union.rec** %3075, align 8
  store %union.rec* %3076, %union.rec** @zz_res, align 8
  %3077 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3078 = bitcast %union.rec* %3077 to %struct.word_type*
  %3079 = getelementptr inbounds %struct.word_type, %struct.word_type* %3078, i32 0, i32 0
  %3080 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3079, i32 0, i64 1
  %3081 = getelementptr inbounds %struct.LIST, %struct.LIST* %3080, i32 0, i32 0
  %3082 = load %union.rec*, %union.rec** %3081, align 8
  %3083 = load %union.rec*, %union.rec** @zz_res, align 8
  %3084 = bitcast %union.rec* %3083 to %struct.word_type*
  %3085 = getelementptr inbounds %struct.word_type, %struct.word_type* %3084, i32 0, i32 0
  %3086 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3085, i32 0, i64 1
  %3087 = getelementptr inbounds %struct.LIST, %struct.LIST* %3086, i32 0, i32 0
  store %union.rec* %3082, %union.rec** %3087, align 8
  %3088 = load %union.rec*, %union.rec** @zz_res, align 8
  %3089 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3090 = bitcast %union.rec* %3089 to %struct.word_type*
  %3091 = getelementptr inbounds %struct.word_type, %struct.word_type* %3090, i32 0, i32 0
  %3092 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3091, i32 0, i64 1
  %3093 = getelementptr inbounds %struct.LIST, %struct.LIST* %3092, i32 0, i32 0
  %3094 = load %union.rec*, %union.rec** %3093, align 8
  %3095 = bitcast %union.rec* %3094 to %struct.word_type*
  %3096 = getelementptr inbounds %struct.word_type, %struct.word_type* %3095, i32 0, i32 0
  %3097 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3096, i32 0, i64 1
  %3098 = getelementptr inbounds %struct.LIST, %struct.LIST* %3097, i32 0, i32 1
  store %union.rec* %3088, %union.rec** %3098, align 8
  %3099 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3101 = bitcast %union.rec* %3100 to %struct.word_type*
  %3102 = getelementptr inbounds %struct.word_type, %struct.word_type* %3101, i32 0, i32 0
  %3103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3102, i32 0, i64 1
  %3104 = getelementptr inbounds %struct.LIST, %struct.LIST* %3103, i32 0, i32 1
  store %union.rec* %3099, %union.rec** %3104, align 8
  %3105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3106 = bitcast %union.rec* %3105 to %struct.word_type*
  %3107 = getelementptr inbounds %struct.word_type, %struct.word_type* %3106, i32 0, i32 0
  %3108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3107, i32 0, i64 1
  %3109 = getelementptr inbounds %struct.LIST, %struct.LIST* %3108, i32 0, i32 0
  store %union.rec* %3099, %union.rec** %3109, align 8
  %3110 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3111

; <label>:3111                                    ; preds = %3070, %3069
  %3112 = phi %union.rec* [ null, %3069 ], [ %3110, %3070 ]
  %3113 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3113, %union.rec** @zz_hold, align 8
  %3114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3115 = bitcast %union.rec* %3114 to %struct.word_type*
  %3116 = getelementptr inbounds %struct.word_type, %struct.word_type* %3115, i32 0, i32 0
  %3117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3116, i32 0, i64 0
  %3118 = getelementptr inbounds %struct.LIST, %struct.LIST* %3117, i32 0, i32 1
  %3119 = load %union.rec*, %union.rec** %3118, align 8
  %3120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3121 = icmp eq %union.rec* %3119, %3120
  br i1 %3121, label %3122, label %3123

; <label>:3122                                    ; preds = %3111
  br label %3164

; <label>:3123                                    ; preds = %3111
  %3124 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3125 = bitcast %union.rec* %3124 to %struct.word_type*
  %3126 = getelementptr inbounds %struct.word_type, %struct.word_type* %3125, i32 0, i32 0
  %3127 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3126, i32 0, i64 0
  %3128 = getelementptr inbounds %struct.LIST, %struct.LIST* %3127, i32 0, i32 1
  %3129 = load %union.rec*, %union.rec** %3128, align 8
  store %union.rec* %3129, %union.rec** @zz_res, align 8
  %3130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3131 = bitcast %union.rec* %3130 to %struct.word_type*
  %3132 = getelementptr inbounds %struct.word_type, %struct.word_type* %3131, i32 0, i32 0
  %3133 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3132, i32 0, i64 0
  %3134 = getelementptr inbounds %struct.LIST, %struct.LIST* %3133, i32 0, i32 0
  %3135 = load %union.rec*, %union.rec** %3134, align 8
  %3136 = load %union.rec*, %union.rec** @zz_res, align 8
  %3137 = bitcast %union.rec* %3136 to %struct.word_type*
  %3138 = getelementptr inbounds %struct.word_type, %struct.word_type* %3137, i32 0, i32 0
  %3139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3138, i32 0, i64 0
  %3140 = getelementptr inbounds %struct.LIST, %struct.LIST* %3139, i32 0, i32 0
  store %union.rec* %3135, %union.rec** %3140, align 8
  %3141 = load %union.rec*, %union.rec** @zz_res, align 8
  %3142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3143 = bitcast %union.rec* %3142 to %struct.word_type*
  %3144 = getelementptr inbounds %struct.word_type, %struct.word_type* %3143, i32 0, i32 0
  %3145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3144, i32 0, i64 0
  %3146 = getelementptr inbounds %struct.LIST, %struct.LIST* %3145, i32 0, i32 0
  %3147 = load %union.rec*, %union.rec** %3146, align 8
  %3148 = bitcast %union.rec* %3147 to %struct.word_type*
  %3149 = getelementptr inbounds %struct.word_type, %struct.word_type* %3148, i32 0, i32 0
  %3150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3149, i32 0, i64 0
  %3151 = getelementptr inbounds %struct.LIST, %struct.LIST* %3150, i32 0, i32 1
  store %union.rec* %3141, %union.rec** %3151, align 8
  %3152 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3153 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3154 = bitcast %union.rec* %3153 to %struct.word_type*
  %3155 = getelementptr inbounds %struct.word_type, %struct.word_type* %3154, i32 0, i32 0
  %3156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3155, i32 0, i64 0
  %3157 = getelementptr inbounds %struct.LIST, %struct.LIST* %3156, i32 0, i32 1
  store %union.rec* %3152, %union.rec** %3157, align 8
  %3158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3159 = bitcast %union.rec* %3158 to %struct.word_type*
  %3160 = getelementptr inbounds %struct.word_type, %struct.word_type* %3159, i32 0, i32 0
  %3161 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3160, i32 0, i64 0
  %3162 = getelementptr inbounds %struct.LIST, %struct.LIST* %3161, i32 0, i32 0
  store %union.rec* %3152, %union.rec** %3162, align 8
  %3163 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3164

; <label>:3164                                    ; preds = %3123, %3122
  %3165 = phi %union.rec* [ null, %3122 ], [ %3163, %3123 ]
  %3166 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3166, %union.rec** @zz_hold, align 8
  %3167 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %3167, %union.rec** @zz_hold, align 8
  %3168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3169 = bitcast %union.rec* %3168 to %struct.word_type*
  %3170 = getelementptr inbounds %struct.word_type, %struct.word_type* %3169, i32 0, i32 1
  %3171 = bitcast %union.FIRST_UNION* %3170 to %struct.anon*
  %3172 = getelementptr inbounds %struct.anon, %struct.anon* %3171, i32 0, i32 0
  %3173 = load i8, i8* %3172, align 1
  %3174 = zext i8 %3173 to i32
  %3175 = icmp eq i32 %3174, 11
  br i1 %3175, label %3185, label %3176

; <label>:3176                                    ; preds = %3164
  %3177 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3178 = bitcast %union.rec* %3177 to %struct.word_type*
  %3179 = getelementptr inbounds %struct.word_type, %struct.word_type* %3178, i32 0, i32 1
  %3180 = bitcast %union.FIRST_UNION* %3179 to %struct.anon*
  %3181 = getelementptr inbounds %struct.anon, %struct.anon* %3180, i32 0, i32 0
  %3182 = load i8, i8* %3181, align 1
  %3183 = zext i8 %3182 to i32
  %3184 = icmp eq i32 %3183, 12
  br i1 %3184, label %3185, label %3193

; <label>:3185                                    ; preds = %3176, %3164
  %3186 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3187 = bitcast %union.rec* %3186 to %struct.word_type*
  %3188 = getelementptr inbounds %struct.word_type, %struct.word_type* %3187, i32 0, i32 1
  %3189 = bitcast %union.FIRST_UNION* %3188 to %struct.anon*
  %3190 = getelementptr inbounds %struct.anon, %struct.anon* %3189, i32 0, i32 1
  %3191 = load i8, i8* %3190, align 1
  %3192 = zext i8 %3191 to i32
  br label %3204

; <label>:3193                                    ; preds = %3176
  %3194 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3195 = bitcast %union.rec* %3194 to %struct.word_type*
  %3196 = getelementptr inbounds %struct.word_type, %struct.word_type* %3195, i32 0, i32 1
  %3197 = bitcast %union.FIRST_UNION* %3196 to %struct.anon*
  %3198 = getelementptr inbounds %struct.anon, %struct.anon* %3197, i32 0, i32 0
  %3199 = load i8, i8* %3198, align 1
  %3200 = zext i8 %3199 to i64
  %3201 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %3200
  %3202 = load i8, i8* %3201, align 1
  %3203 = zext i8 %3202 to i32
  br label %3204

; <label>:3204                                    ; preds = %3193, %3185
  %3205 = phi i32 [ %3192, %3185 ], [ %3203, %3193 ]
  store i32 %3205, i32* @zz_size, align 4
  %3206 = load i32, i32* @zz_size, align 4
  %3207 = sext i32 %3206 to i64
  %3208 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3207
  %3209 = load %union.rec*, %union.rec** %3208, align 8
  %3210 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3211 = bitcast %union.rec* %3210 to %struct.word_type*
  %3212 = getelementptr inbounds %struct.word_type, %struct.word_type* %3211, i32 0, i32 0
  %3213 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3212, i32 0, i64 0
  %3214 = getelementptr inbounds %struct.LIST, %struct.LIST* %3213, i32 0, i32 0
  store %union.rec* %3209, %union.rec** %3214, align 8
  %3215 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3216 = load i32, i32* @zz_size, align 4
  %3217 = sext i32 %3216 to i64
  %3218 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3217
  store %union.rec* %3215, %union.rec** %3218, align 8
  br label %3044

; <label>:3219                                    ; preds = %3044
  br label %3220

; <label>:3220                                    ; preds = %3380, %3219
  %3221 = load %union.rec*, %union.rec** @xx_hold, align 8
  %3222 = bitcast %union.rec* %3221 to %struct.word_type*
  %3223 = getelementptr inbounds %struct.word_type, %struct.word_type* %3222, i32 0, i32 0
  %3224 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3223, i32 0, i64 0
  %3225 = getelementptr inbounds %struct.LIST, %struct.LIST* %3224, i32 0, i32 1
  %3226 = load %union.rec*, %union.rec** %3225, align 8
  %3227 = load %union.rec*, %union.rec** @xx_hold, align 8
  %3228 = icmp ne %union.rec* %3226, %3227
  br i1 %3228, label %3229, label %3395

; <label>:3229                                    ; preds = %3220
  %3230 = load %union.rec*, %union.rec** @xx_hold, align 8
  %3231 = bitcast %union.rec* %3230 to %struct.word_type*
  %3232 = getelementptr inbounds %struct.word_type, %struct.word_type* %3231, i32 0, i32 0
  %3233 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3232, i32 0, i64 0
  %3234 = getelementptr inbounds %struct.LIST, %struct.LIST* %3233, i32 0, i32 1
  %3235 = load %union.rec*, %union.rec** %3234, align 8
  store %union.rec* %3235, %union.rec** @xx_link, align 8
  %3236 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3236, %union.rec** @zz_hold, align 8
  %3237 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3238 = bitcast %union.rec* %3237 to %struct.word_type*
  %3239 = getelementptr inbounds %struct.word_type, %struct.word_type* %3238, i32 0, i32 0
  %3240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3239, i32 0, i64 1
  %3241 = getelementptr inbounds %struct.LIST, %struct.LIST* %3240, i32 0, i32 1
  %3242 = load %union.rec*, %union.rec** %3241, align 8
  %3243 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3244 = icmp eq %union.rec* %3242, %3243
  br i1 %3244, label %3245, label %3246

; <label>:3245                                    ; preds = %3229
  br label %3287

; <label>:3246                                    ; preds = %3229
  %3247 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3248 = bitcast %union.rec* %3247 to %struct.word_type*
  %3249 = getelementptr inbounds %struct.word_type, %struct.word_type* %3248, i32 0, i32 0
  %3250 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3249, i32 0, i64 1
  %3251 = getelementptr inbounds %struct.LIST, %struct.LIST* %3250, i32 0, i32 1
  %3252 = load %union.rec*, %union.rec** %3251, align 8
  store %union.rec* %3252, %union.rec** @zz_res, align 8
  %3253 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3254 = bitcast %union.rec* %3253 to %struct.word_type*
  %3255 = getelementptr inbounds %struct.word_type, %struct.word_type* %3254, i32 0, i32 0
  %3256 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3255, i32 0, i64 1
  %3257 = getelementptr inbounds %struct.LIST, %struct.LIST* %3256, i32 0, i32 0
  %3258 = load %union.rec*, %union.rec** %3257, align 8
  %3259 = load %union.rec*, %union.rec** @zz_res, align 8
  %3260 = bitcast %union.rec* %3259 to %struct.word_type*
  %3261 = getelementptr inbounds %struct.word_type, %struct.word_type* %3260, i32 0, i32 0
  %3262 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3261, i32 0, i64 1
  %3263 = getelementptr inbounds %struct.LIST, %struct.LIST* %3262, i32 0, i32 0
  store %union.rec* %3258, %union.rec** %3263, align 8
  %3264 = load %union.rec*, %union.rec** @zz_res, align 8
  %3265 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3266 = bitcast %union.rec* %3265 to %struct.word_type*
  %3267 = getelementptr inbounds %struct.word_type, %struct.word_type* %3266, i32 0, i32 0
  %3268 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3267, i32 0, i64 1
  %3269 = getelementptr inbounds %struct.LIST, %struct.LIST* %3268, i32 0, i32 0
  %3270 = load %union.rec*, %union.rec** %3269, align 8
  %3271 = bitcast %union.rec* %3270 to %struct.word_type*
  %3272 = getelementptr inbounds %struct.word_type, %struct.word_type* %3271, i32 0, i32 0
  %3273 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3272, i32 0, i64 1
  %3274 = getelementptr inbounds %struct.LIST, %struct.LIST* %3273, i32 0, i32 1
  store %union.rec* %3264, %union.rec** %3274, align 8
  %3275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3276 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3277 = bitcast %union.rec* %3276 to %struct.word_type*
  %3278 = getelementptr inbounds %struct.word_type, %struct.word_type* %3277, i32 0, i32 0
  %3279 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3278, i32 0, i64 1
  %3280 = getelementptr inbounds %struct.LIST, %struct.LIST* %3279, i32 0, i32 1
  store %union.rec* %3275, %union.rec** %3280, align 8
  %3281 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3282 = bitcast %union.rec* %3281 to %struct.word_type*
  %3283 = getelementptr inbounds %struct.word_type, %struct.word_type* %3282, i32 0, i32 0
  %3284 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3283, i32 0, i64 1
  %3285 = getelementptr inbounds %struct.LIST, %struct.LIST* %3284, i32 0, i32 0
  store %union.rec* %3275, %union.rec** %3285, align 8
  %3286 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3287

; <label>:3287                                    ; preds = %3246, %3245
  %3288 = phi %union.rec* [ null, %3245 ], [ %3286, %3246 ]
  %3289 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3289, %union.rec** @zz_hold, align 8
  %3290 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3291 = bitcast %union.rec* %3290 to %struct.word_type*
  %3292 = getelementptr inbounds %struct.word_type, %struct.word_type* %3291, i32 0, i32 0
  %3293 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3292, i32 0, i64 0
  %3294 = getelementptr inbounds %struct.LIST, %struct.LIST* %3293, i32 0, i32 1
  %3295 = load %union.rec*, %union.rec** %3294, align 8
  %3296 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3297 = icmp eq %union.rec* %3295, %3296
  br i1 %3297, label %3298, label %3299

; <label>:3298                                    ; preds = %3287
  br label %3340

; <label>:3299                                    ; preds = %3287
  %3300 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3301 = bitcast %union.rec* %3300 to %struct.word_type*
  %3302 = getelementptr inbounds %struct.word_type, %struct.word_type* %3301, i32 0, i32 0
  %3303 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3302, i32 0, i64 0
  %3304 = getelementptr inbounds %struct.LIST, %struct.LIST* %3303, i32 0, i32 1
  %3305 = load %union.rec*, %union.rec** %3304, align 8
  store %union.rec* %3305, %union.rec** @zz_res, align 8
  %3306 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3307 = bitcast %union.rec* %3306 to %struct.word_type*
  %3308 = getelementptr inbounds %struct.word_type, %struct.word_type* %3307, i32 0, i32 0
  %3309 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3308, i32 0, i64 0
  %3310 = getelementptr inbounds %struct.LIST, %struct.LIST* %3309, i32 0, i32 0
  %3311 = load %union.rec*, %union.rec** %3310, align 8
  %3312 = load %union.rec*, %union.rec** @zz_res, align 8
  %3313 = bitcast %union.rec* %3312 to %struct.word_type*
  %3314 = getelementptr inbounds %struct.word_type, %struct.word_type* %3313, i32 0, i32 0
  %3315 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3314, i32 0, i64 0
  %3316 = getelementptr inbounds %struct.LIST, %struct.LIST* %3315, i32 0, i32 0
  store %union.rec* %3311, %union.rec** %3316, align 8
  %3317 = load %union.rec*, %union.rec** @zz_res, align 8
  %3318 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3319 = bitcast %union.rec* %3318 to %struct.word_type*
  %3320 = getelementptr inbounds %struct.word_type, %struct.word_type* %3319, i32 0, i32 0
  %3321 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3320, i32 0, i64 0
  %3322 = getelementptr inbounds %struct.LIST, %struct.LIST* %3321, i32 0, i32 0
  %3323 = load %union.rec*, %union.rec** %3322, align 8
  %3324 = bitcast %union.rec* %3323 to %struct.word_type*
  %3325 = getelementptr inbounds %struct.word_type, %struct.word_type* %3324, i32 0, i32 0
  %3326 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3325, i32 0, i64 0
  %3327 = getelementptr inbounds %struct.LIST, %struct.LIST* %3326, i32 0, i32 1
  store %union.rec* %3317, %union.rec** %3327, align 8
  %3328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3329 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3330 = bitcast %union.rec* %3329 to %struct.word_type*
  %3331 = getelementptr inbounds %struct.word_type, %struct.word_type* %3330, i32 0, i32 0
  %3332 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3331, i32 0, i64 0
  %3333 = getelementptr inbounds %struct.LIST, %struct.LIST* %3332, i32 0, i32 1
  store %union.rec* %3328, %union.rec** %3333, align 8
  %3334 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3335 = bitcast %union.rec* %3334 to %struct.word_type*
  %3336 = getelementptr inbounds %struct.word_type, %struct.word_type* %3335, i32 0, i32 0
  %3337 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3336, i32 0, i64 0
  %3338 = getelementptr inbounds %struct.LIST, %struct.LIST* %3337, i32 0, i32 0
  store %union.rec* %3328, %union.rec** %3338, align 8
  %3339 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3340

; <label>:3340                                    ; preds = %3299, %3298
  %3341 = phi %union.rec* [ null, %3298 ], [ %3339, %3299 ]
  %3342 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3342, %union.rec** @zz_hold, align 8
  %3343 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %3343, %union.rec** @zz_hold, align 8
  %3344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3345 = bitcast %union.rec* %3344 to %struct.word_type*
  %3346 = getelementptr inbounds %struct.word_type, %struct.word_type* %3345, i32 0, i32 1
  %3347 = bitcast %union.FIRST_UNION* %3346 to %struct.anon*
  %3348 = getelementptr inbounds %struct.anon, %struct.anon* %3347, i32 0, i32 0
  %3349 = load i8, i8* %3348, align 1
  %3350 = zext i8 %3349 to i32
  %3351 = icmp eq i32 %3350, 11
  br i1 %3351, label %3361, label %3352

; <label>:3352                                    ; preds = %3340
  %3353 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3354 = bitcast %union.rec* %3353 to %struct.word_type*
  %3355 = getelementptr inbounds %struct.word_type, %struct.word_type* %3354, i32 0, i32 1
  %3356 = bitcast %union.FIRST_UNION* %3355 to %struct.anon*
  %3357 = getelementptr inbounds %struct.anon, %struct.anon* %3356, i32 0, i32 0
  %3358 = load i8, i8* %3357, align 1
  %3359 = zext i8 %3358 to i32
  %3360 = icmp eq i32 %3359, 12
  br i1 %3360, label %3361, label %3369

; <label>:3361                                    ; preds = %3352, %3340
  %3362 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3363 = bitcast %union.rec* %3362 to %struct.word_type*
  %3364 = getelementptr inbounds %struct.word_type, %struct.word_type* %3363, i32 0, i32 1
  %3365 = bitcast %union.FIRST_UNION* %3364 to %struct.anon*
  %3366 = getelementptr inbounds %struct.anon, %struct.anon* %3365, i32 0, i32 1
  %3367 = load i8, i8* %3366, align 1
  %3368 = zext i8 %3367 to i32
  br label %3380

; <label>:3369                                    ; preds = %3352
  %3370 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3371 = bitcast %union.rec* %3370 to %struct.word_type*
  %3372 = getelementptr inbounds %struct.word_type, %struct.word_type* %3371, i32 0, i32 1
  %3373 = bitcast %union.FIRST_UNION* %3372 to %struct.anon*
  %3374 = getelementptr inbounds %struct.anon, %struct.anon* %3373, i32 0, i32 0
  %3375 = load i8, i8* %3374, align 1
  %3376 = zext i8 %3375 to i64
  %3377 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %3376
  %3378 = load i8, i8* %3377, align 1
  %3379 = zext i8 %3378 to i32
  br label %3380

; <label>:3380                                    ; preds = %3369, %3361
  %3381 = phi i32 [ %3368, %3361 ], [ %3379, %3369 ]
  store i32 %3381, i32* @zz_size, align 4
  %3382 = load i32, i32* @zz_size, align 4
  %3383 = sext i32 %3382 to i64
  %3384 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3383
  %3385 = load %union.rec*, %union.rec** %3384, align 8
  %3386 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3387 = bitcast %union.rec* %3386 to %struct.word_type*
  %3388 = getelementptr inbounds %struct.word_type, %struct.word_type* %3387, i32 0, i32 0
  %3389 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3388, i32 0, i64 0
  %3390 = getelementptr inbounds %struct.LIST, %struct.LIST* %3389, i32 0, i32 0
  store %union.rec* %3385, %union.rec** %3390, align 8
  %3391 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3392 = load i32, i32* @zz_size, align 4
  %3393 = sext i32 %3392 to i64
  %3394 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3393
  store %union.rec* %3391, %union.rec** %3394, align 8
  br label %3220

; <label>:3395                                    ; preds = %3220
  %3396 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %3396, %union.rec** @zz_hold, align 8
  %3397 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %3397, %union.rec** @zz_hold, align 8
  %3398 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3399 = bitcast %union.rec* %3398 to %struct.word_type*
  %3400 = getelementptr inbounds %struct.word_type, %struct.word_type* %3399, i32 0, i32 1
  %3401 = bitcast %union.FIRST_UNION* %3400 to %struct.anon*
  %3402 = getelementptr inbounds %struct.anon, %struct.anon* %3401, i32 0, i32 0
  %3403 = load i8, i8* %3402, align 1
  %3404 = zext i8 %3403 to i32
  %3405 = icmp eq i32 %3404, 11
  br i1 %3405, label %3415, label %3406

; <label>:3406                                    ; preds = %3395
  %3407 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3408 = bitcast %union.rec* %3407 to %struct.word_type*
  %3409 = getelementptr inbounds %struct.word_type, %struct.word_type* %3408, i32 0, i32 1
  %3410 = bitcast %union.FIRST_UNION* %3409 to %struct.anon*
  %3411 = getelementptr inbounds %struct.anon, %struct.anon* %3410, i32 0, i32 0
  %3412 = load i8, i8* %3411, align 1
  %3413 = zext i8 %3412 to i32
  %3414 = icmp eq i32 %3413, 12
  br i1 %3414, label %3415, label %3423

; <label>:3415                                    ; preds = %3406, %3395
  %3416 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3417 = bitcast %union.rec* %3416 to %struct.word_type*
  %3418 = getelementptr inbounds %struct.word_type, %struct.word_type* %3417, i32 0, i32 1
  %3419 = bitcast %union.FIRST_UNION* %3418 to %struct.anon*
  %3420 = getelementptr inbounds %struct.anon, %struct.anon* %3419, i32 0, i32 1
  %3421 = load i8, i8* %3420, align 1
  %3422 = zext i8 %3421 to i32
  br label %3434

; <label>:3423                                    ; preds = %3406
  %3424 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3425 = bitcast %union.rec* %3424 to %struct.word_type*
  %3426 = getelementptr inbounds %struct.word_type, %struct.word_type* %3425, i32 0, i32 1
  %3427 = bitcast %union.FIRST_UNION* %3426 to %struct.anon*
  %3428 = getelementptr inbounds %struct.anon, %struct.anon* %3427, i32 0, i32 0
  %3429 = load i8, i8* %3428, align 1
  %3430 = zext i8 %3429 to i64
  %3431 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %3430
  %3432 = load i8, i8* %3431, align 1
  %3433 = zext i8 %3432 to i32
  br label %3434

; <label>:3434                                    ; preds = %3423, %3415
  %3435 = phi i32 [ %3422, %3415 ], [ %3433, %3423 ]
  store i32 %3435, i32* @zz_size, align 4
  %3436 = load i32, i32* @zz_size, align 4
  %3437 = sext i32 %3436 to i64
  %3438 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3437
  %3439 = load %union.rec*, %union.rec** %3438, align 8
  %3440 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3441 = bitcast %union.rec* %3440 to %struct.word_type*
  %3442 = getelementptr inbounds %struct.word_type, %struct.word_type* %3441, i32 0, i32 0
  %3443 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3442, i32 0, i64 0
  %3444 = getelementptr inbounds %struct.LIST, %struct.LIST* %3443, i32 0, i32 0
  store %union.rec* %3439, %union.rec** %3444, align 8
  %3445 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3446 = load i32, i32* @zz_size, align 4
  %3447 = sext i32 %3446 to i64
  %3448 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3447
  store %union.rec* %3445, %union.rec** %3448, align 8
  %3449 = load %union.rec*, %union.rec** %link, align 8
  %3450 = bitcast %union.rec* %3449 to %struct.word_type*
  %3451 = getelementptr inbounds %struct.word_type, %struct.word_type* %3450, i32 0, i32 0
  %3452 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3451, i32 0, i64 0
  %3453 = getelementptr inbounds %struct.LIST, %struct.LIST* %3452, i32 0, i32 0
  %3454 = load %union.rec*, %union.rec** %3453, align 8
  store %union.rec* %3454, %union.rec** %link, align 8
  %3455 = load %union.rec*, %union.rec** %link, align 8
  %3456 = bitcast %union.rec* %3455 to %struct.word_type*
  %3457 = getelementptr inbounds %struct.word_type, %struct.word_type* %3456, i32 0, i32 0
  %3458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3457, i32 0, i64 0
  %3459 = getelementptr inbounds %struct.LIST, %struct.LIST* %3458, i32 0, i32 1
  %3460 = load %union.rec*, %union.rec** %3459, align 8
  store %union.rec* %3460, %union.rec** @xx_link, align 8
  %3461 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3461, %union.rec** @zz_hold, align 8
  %3462 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3463 = bitcast %union.rec* %3462 to %struct.word_type*
  %3464 = getelementptr inbounds %struct.word_type, %struct.word_type* %3463, i32 0, i32 0
  %3465 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3464, i32 0, i64 1
  %3466 = getelementptr inbounds %struct.LIST, %struct.LIST* %3465, i32 0, i32 1
  %3467 = load %union.rec*, %union.rec** %3466, align 8
  %3468 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3469 = icmp eq %union.rec* %3467, %3468
  br i1 %3469, label %3470, label %3471

; <label>:3470                                    ; preds = %3434
  br label %3512

; <label>:3471                                    ; preds = %3434
  %3472 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3473 = bitcast %union.rec* %3472 to %struct.word_type*
  %3474 = getelementptr inbounds %struct.word_type, %struct.word_type* %3473, i32 0, i32 0
  %3475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3474, i32 0, i64 1
  %3476 = getelementptr inbounds %struct.LIST, %struct.LIST* %3475, i32 0, i32 1
  %3477 = load %union.rec*, %union.rec** %3476, align 8
  store %union.rec* %3477, %union.rec** @zz_res, align 8
  %3478 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3479 = bitcast %union.rec* %3478 to %struct.word_type*
  %3480 = getelementptr inbounds %struct.word_type, %struct.word_type* %3479, i32 0, i32 0
  %3481 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3480, i32 0, i64 1
  %3482 = getelementptr inbounds %struct.LIST, %struct.LIST* %3481, i32 0, i32 0
  %3483 = load %union.rec*, %union.rec** %3482, align 8
  %3484 = load %union.rec*, %union.rec** @zz_res, align 8
  %3485 = bitcast %union.rec* %3484 to %struct.word_type*
  %3486 = getelementptr inbounds %struct.word_type, %struct.word_type* %3485, i32 0, i32 0
  %3487 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3486, i32 0, i64 1
  %3488 = getelementptr inbounds %struct.LIST, %struct.LIST* %3487, i32 0, i32 0
  store %union.rec* %3483, %union.rec** %3488, align 8
  %3489 = load %union.rec*, %union.rec** @zz_res, align 8
  %3490 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3491 = bitcast %union.rec* %3490 to %struct.word_type*
  %3492 = getelementptr inbounds %struct.word_type, %struct.word_type* %3491, i32 0, i32 0
  %3493 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3492, i32 0, i64 1
  %3494 = getelementptr inbounds %struct.LIST, %struct.LIST* %3493, i32 0, i32 0
  %3495 = load %union.rec*, %union.rec** %3494, align 8
  %3496 = bitcast %union.rec* %3495 to %struct.word_type*
  %3497 = getelementptr inbounds %struct.word_type, %struct.word_type* %3496, i32 0, i32 0
  %3498 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3497, i32 0, i64 1
  %3499 = getelementptr inbounds %struct.LIST, %struct.LIST* %3498, i32 0, i32 1
  store %union.rec* %3489, %union.rec** %3499, align 8
  %3500 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3501 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3502 = bitcast %union.rec* %3501 to %struct.word_type*
  %3503 = getelementptr inbounds %struct.word_type, %struct.word_type* %3502, i32 0, i32 0
  %3504 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3503, i32 0, i64 1
  %3505 = getelementptr inbounds %struct.LIST, %struct.LIST* %3504, i32 0, i32 1
  store %union.rec* %3500, %union.rec** %3505, align 8
  %3506 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3507 = bitcast %union.rec* %3506 to %struct.word_type*
  %3508 = getelementptr inbounds %struct.word_type, %struct.word_type* %3507, i32 0, i32 0
  %3509 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3508, i32 0, i64 1
  %3510 = getelementptr inbounds %struct.LIST, %struct.LIST* %3509, i32 0, i32 0
  store %union.rec* %3500, %union.rec** %3510, align 8
  %3511 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3512

; <label>:3512                                    ; preds = %3471, %3470
  %3513 = phi %union.rec* [ null, %3470 ], [ %3511, %3471 ]
  store %union.rec* %3513, %union.rec** @xx_tmp, align 8
  %3514 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3514, %union.rec** @zz_hold, align 8
  %3515 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3516 = bitcast %union.rec* %3515 to %struct.word_type*
  %3517 = getelementptr inbounds %struct.word_type, %struct.word_type* %3516, i32 0, i32 0
  %3518 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3517, i32 0, i64 0
  %3519 = getelementptr inbounds %struct.LIST, %struct.LIST* %3518, i32 0, i32 1
  %3520 = load %union.rec*, %union.rec** %3519, align 8
  %3521 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3522 = icmp eq %union.rec* %3520, %3521
  br i1 %3522, label %3523, label %3524

; <label>:3523                                    ; preds = %3512
  br label %3565

; <label>:3524                                    ; preds = %3512
  %3525 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3526 = bitcast %union.rec* %3525 to %struct.word_type*
  %3527 = getelementptr inbounds %struct.word_type, %struct.word_type* %3526, i32 0, i32 0
  %3528 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3527, i32 0, i64 0
  %3529 = getelementptr inbounds %struct.LIST, %struct.LIST* %3528, i32 0, i32 1
  %3530 = load %union.rec*, %union.rec** %3529, align 8
  store %union.rec* %3530, %union.rec** @zz_res, align 8
  %3531 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3532 = bitcast %union.rec* %3531 to %struct.word_type*
  %3533 = getelementptr inbounds %struct.word_type, %struct.word_type* %3532, i32 0, i32 0
  %3534 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3533, i32 0, i64 0
  %3535 = getelementptr inbounds %struct.LIST, %struct.LIST* %3534, i32 0, i32 0
  %3536 = load %union.rec*, %union.rec** %3535, align 8
  %3537 = load %union.rec*, %union.rec** @zz_res, align 8
  %3538 = bitcast %union.rec* %3537 to %struct.word_type*
  %3539 = getelementptr inbounds %struct.word_type, %struct.word_type* %3538, i32 0, i32 0
  %3540 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3539, i32 0, i64 0
  %3541 = getelementptr inbounds %struct.LIST, %struct.LIST* %3540, i32 0, i32 0
  store %union.rec* %3536, %union.rec** %3541, align 8
  %3542 = load %union.rec*, %union.rec** @zz_res, align 8
  %3543 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3544 = bitcast %union.rec* %3543 to %struct.word_type*
  %3545 = getelementptr inbounds %struct.word_type, %struct.word_type* %3544, i32 0, i32 0
  %3546 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3545, i32 0, i64 0
  %3547 = getelementptr inbounds %struct.LIST, %struct.LIST* %3546, i32 0, i32 0
  %3548 = load %union.rec*, %union.rec** %3547, align 8
  %3549 = bitcast %union.rec* %3548 to %struct.word_type*
  %3550 = getelementptr inbounds %struct.word_type, %struct.word_type* %3549, i32 0, i32 0
  %3551 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3550, i32 0, i64 0
  %3552 = getelementptr inbounds %struct.LIST, %struct.LIST* %3551, i32 0, i32 1
  store %union.rec* %3542, %union.rec** %3552, align 8
  %3553 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3554 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3555 = bitcast %union.rec* %3554 to %struct.word_type*
  %3556 = getelementptr inbounds %struct.word_type, %struct.word_type* %3555, i32 0, i32 0
  %3557 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3556, i32 0, i64 0
  %3558 = getelementptr inbounds %struct.LIST, %struct.LIST* %3557, i32 0, i32 1
  store %union.rec* %3553, %union.rec** %3558, align 8
  %3559 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3560 = bitcast %union.rec* %3559 to %struct.word_type*
  %3561 = getelementptr inbounds %struct.word_type, %struct.word_type* %3560, i32 0, i32 0
  %3562 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3561, i32 0, i64 0
  %3563 = getelementptr inbounds %struct.LIST, %struct.LIST* %3562, i32 0, i32 0
  store %union.rec* %3553, %union.rec** %3563, align 8
  %3564 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3565

; <label>:3565                                    ; preds = %3524, %3523
  %3566 = phi %union.rec* [ null, %3523 ], [ %3564, %3524 ]
  %3567 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3567, %union.rec** @zz_hold, align 8
  %3568 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %3568, %union.rec** @zz_hold, align 8
  %3569 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3570 = bitcast %union.rec* %3569 to %struct.word_type*
  %3571 = getelementptr inbounds %struct.word_type, %struct.word_type* %3570, i32 0, i32 1
  %3572 = bitcast %union.FIRST_UNION* %3571 to %struct.anon*
  %3573 = getelementptr inbounds %struct.anon, %struct.anon* %3572, i32 0, i32 0
  %3574 = load i8, i8* %3573, align 1
  %3575 = zext i8 %3574 to i32
  %3576 = icmp eq i32 %3575, 11
  br i1 %3576, label %3586, label %3577

; <label>:3577                                    ; preds = %3565
  %3578 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3579 = bitcast %union.rec* %3578 to %struct.word_type*
  %3580 = getelementptr inbounds %struct.word_type, %struct.word_type* %3579, i32 0, i32 1
  %3581 = bitcast %union.FIRST_UNION* %3580 to %struct.anon*
  %3582 = getelementptr inbounds %struct.anon, %struct.anon* %3581, i32 0, i32 0
  %3583 = load i8, i8* %3582, align 1
  %3584 = zext i8 %3583 to i32
  %3585 = icmp eq i32 %3584, 12
  br i1 %3585, label %3586, label %3594

; <label>:3586                                    ; preds = %3577, %3565
  %3587 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3588 = bitcast %union.rec* %3587 to %struct.word_type*
  %3589 = getelementptr inbounds %struct.word_type, %struct.word_type* %3588, i32 0, i32 1
  %3590 = bitcast %union.FIRST_UNION* %3589 to %struct.anon*
  %3591 = getelementptr inbounds %struct.anon, %struct.anon* %3590, i32 0, i32 1
  %3592 = load i8, i8* %3591, align 1
  %3593 = zext i8 %3592 to i32
  br label %3605

; <label>:3594                                    ; preds = %3577
  %3595 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3596 = bitcast %union.rec* %3595 to %struct.word_type*
  %3597 = getelementptr inbounds %struct.word_type, %struct.word_type* %3596, i32 0, i32 1
  %3598 = bitcast %union.FIRST_UNION* %3597 to %struct.anon*
  %3599 = getelementptr inbounds %struct.anon, %struct.anon* %3598, i32 0, i32 0
  %3600 = load i8, i8* %3599, align 1
  %3601 = zext i8 %3600 to i64
  %3602 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %3601
  %3603 = load i8, i8* %3602, align 1
  %3604 = zext i8 %3603 to i32
  br label %3605

; <label>:3605                                    ; preds = %3594, %3586
  %3606 = phi i32 [ %3593, %3586 ], [ %3604, %3594 ]
  store i32 %3606, i32* @zz_size, align 4
  %3607 = load i32, i32* @zz_size, align 4
  %3608 = sext i32 %3607 to i64
  %3609 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3608
  %3610 = load %union.rec*, %union.rec** %3609, align 8
  %3611 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3612 = bitcast %union.rec* %3611 to %struct.word_type*
  %3613 = getelementptr inbounds %struct.word_type, %struct.word_type* %3612, i32 0, i32 0
  %3614 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3613, i32 0, i64 0
  %3615 = getelementptr inbounds %struct.LIST, %struct.LIST* %3614, i32 0, i32 0
  store %union.rec* %3610, %union.rec** %3615, align 8
  %3616 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3617 = load i32, i32* @zz_size, align 4
  %3618 = sext i32 %3617 to i64
  %3619 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3618
  store %union.rec* %3616, %union.rec** %3619, align 8
  %3620 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %3621 = bitcast %union.rec* %3620 to %struct.word_type*
  %3622 = getelementptr inbounds %struct.word_type, %struct.word_type* %3621, i32 0, i32 0
  %3623 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3622, i32 0, i64 1
  %3624 = getelementptr inbounds %struct.LIST, %struct.LIST* %3623, i32 0, i32 1
  %3625 = load %union.rec*, %union.rec** %3624, align 8
  %3626 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %3627 = icmp eq %union.rec* %3625, %3626
  br i1 %3627, label %3628, label %3631

; <label>:3628                                    ; preds = %3605
  %3629 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %3630 = call i32 @DisposeObject(%union.rec* %3629)
  br label %3631

; <label>:3631                                    ; preds = %3628, %3605
  br label %3635

; <label>:3632                                    ; preds = %3038
  br label %3635

; <label>:3633                                    ; preds = %3038
  br label %7056

; <label>:3634                                    ; preds = %3038
  br label %6780

; <label>:3635                                    ; preds = %3038, %3632, %3631
  br label %5850

; <label>:3636                                    ; preds = %2520
  %3637 = load %union.rec*, %union.rec** %dest, align 8
  %3638 = bitcast %union.rec* %3637 to %struct.word_type*
  %3639 = getelementptr inbounds %struct.word_type, %struct.word_type* %3638, i32 0, i32 2
  %3640 = bitcast %union.SECOND_UNION* %3639 to %struct.anon.1*
  %3641 = bitcast %struct.anon.1* %3640 to i32*
  %3642 = load i32, i32* %3641, align 4
  %3643 = lshr i32 %3642, 29
  %3644 = and i32 %3643, 3
  %3645 = load %union.rec*, %union.rec** %y, align 8
  %3646 = bitcast %union.rec* %3645 to %struct.word_type*
  %3647 = getelementptr inbounds %struct.word_type, %struct.word_type* %3646, i32 0, i32 2
  %3648 = bitcast %union.SECOND_UNION* %3647 to %struct.anon.1*
  %3649 = bitcast %struct.anon.1* %3648 to i32*
  %3650 = load i32, i32* %3649, align 4
  %3651 = and i32 %3644, 3
  %3652 = shl i32 %3651, 29
  %3653 = and i32 %3650, -1610612737
  %3654 = or i32 %3653, %3652
  store i32 %3654, i32* %3649, align 4
  %3655 = load %union.rec*, %union.rec** %y, align 8
  %3656 = bitcast %union.rec* %3655 to %struct.gapobj_type*
  %3657 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3656, i32 0, i32 3
  %3658 = bitcast %struct.GAP* %3657 to i16*
  %3659 = load i16, i16* %3658, align 4
  %3660 = lshr i16 %3659, 9
  %3661 = and i16 %3660, 1
  %3662 = zext i16 %3661 to i32
  %3663 = icmp ne i32 %3662, 0
  br i1 %3663, label %3673, label %3664

; <label>:3664                                    ; preds = %3636
  %3665 = load %union.rec*, %union.rec** %2, align 8
  %3666 = bitcast %union.rec* %3665 to %struct.word_type*
  %3667 = getelementptr inbounds %struct.word_type, %struct.word_type* %3666, i32 0, i32 2
  %3668 = bitcast %union.SECOND_UNION* %3667 to %struct.anon.2*
  %3669 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3668, i32 0, i32 2
  %3670 = load i16, i16* %3669, align 2
  %3671 = and i16 %3670, -33
  %3672 = or i16 %3671, 32
  store i16 %3672, i16* %3669, align 2
  br label %3673

; <label>:3673                                    ; preds = %3664, %3636
  br label %5850

; <label>:3674                                    ; preds = %2520, %2520, %2520, %2520
  %3675 = load %union.rec*, %union.rec** %dest, align 8
  %3676 = bitcast %union.rec* %3675 to %struct.word_type*
  %3677 = getelementptr inbounds %struct.word_type, %struct.word_type* %3676, i32 0, i32 2
  %3678 = bitcast %union.SECOND_UNION* %3677 to %struct.anon.1*
  %3679 = bitcast %struct.anon.1* %3678 to i32*
  %3680 = load i32, i32* %3679, align 4
  %3681 = lshr i32 %3680, 29
  %3682 = and i32 %3681, 3
  %3683 = load %union.rec*, %union.rec** %y, align 8
  %3684 = bitcast %union.rec* %3683 to %struct.word_type*
  %3685 = getelementptr inbounds %struct.word_type, %struct.word_type* %3684, i32 0, i32 2
  %3686 = bitcast %union.SECOND_UNION* %3685 to %struct.anon.1*
  %3687 = bitcast %struct.anon.1* %3686 to i32*
  %3688 = load i32, i32* %3687, align 4
  %3689 = and i32 %3682, 3
  %3690 = shl i32 %3689, 29
  %3691 = and i32 %3688, -1610612737
  %3692 = or i32 %3691, %3690
  store i32 %3692, i32* %3687, align 4
  br label %5850

; <label>:3693                                    ; preds = %2520, %2520, %2520, %2520, %2520
  %3694 = load %union.rec*, %union.rec** %dest, align 8
  %3695 = bitcast %union.rec* %3694 to %struct.word_type*
  %3696 = getelementptr inbounds %struct.word_type, %struct.word_type* %3695, i32 0, i32 2
  %3697 = bitcast %union.SECOND_UNION* %3696 to %struct.anon.1*
  %3698 = bitcast %struct.anon.1* %3697 to i32*
  %3699 = load i32, i32* %3698, align 4
  %3700 = lshr i32 %3699, 29
  %3701 = and i32 %3700, 3
  %3702 = load %union.rec*, %union.rec** %y, align 8
  %3703 = bitcast %union.rec* %3702 to %struct.word_type*
  %3704 = getelementptr inbounds %struct.word_type, %struct.word_type* %3703, i32 0, i32 2
  %3705 = bitcast %union.SECOND_UNION* %3704 to %struct.anon.1*
  %3706 = bitcast %struct.anon.1* %3705 to i32*
  %3707 = load i32, i32* %3706, align 4
  %3708 = and i32 %3701, 3
  %3709 = shl i32 %3708, 29
  %3710 = and i32 %3707, -1610612737
  %3711 = or i32 %3710, %3709
  store i32 %3711, i32* %3706, align 4
  br label %5850

; <label>:3712                                    ; preds = %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520, %2520
  %3713 = load %union.rec*, %union.rec** %dest, align 8
  %3714 = bitcast %union.rec* %3713 to %struct.word_type*
  %3715 = getelementptr inbounds %struct.word_type, %struct.word_type* %3714, i32 0, i32 2
  %3716 = bitcast %union.SECOND_UNION* %3715 to %struct.anon.1*
  %3717 = bitcast %struct.anon.1* %3716 to i32*
  %3718 = load i32, i32* %3717, align 4
  %3719 = lshr i32 %3718, 29
  %3720 = and i32 %3719, 3
  %3721 = load %union.rec*, %union.rec** %y, align 8
  %3722 = bitcast %union.rec* %3721 to %struct.word_type*
  %3723 = getelementptr inbounds %struct.word_type, %struct.word_type* %3722, i32 0, i32 2
  %3724 = bitcast %union.SECOND_UNION* %3723 to %struct.anon.1*
  %3725 = bitcast %struct.anon.1* %3724 to i32*
  %3726 = load i32, i32* %3725, align 4
  %3727 = and i32 %3720, 3
  %3728 = shl i32 %3727, 29
  %3729 = and i32 %3726, -1610612737
  %3730 = or i32 %3729, %3728
  store i32 %3730, i32* %3725, align 4
  %3731 = load i32, i32* %dim, align 4
  %3732 = icmp eq i32 %3731, 1
  br i1 %3732, label %3733, label %4725

; <label>:3733                                    ; preds = %3712
  %3734 = load %union.rec*, %union.rec** %link, align 8
  %3735 = bitcast %union.rec* %3734 to %struct.word_type*
  %3736 = getelementptr inbounds %struct.word_type, %struct.word_type* %3735, i32 0, i32 0
  %3737 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3736, i32 0, i64 0
  %3738 = getelementptr inbounds %struct.LIST, %struct.LIST* %3737, i32 0, i32 1
  %3739 = load %union.rec*, %union.rec** %3738, align 8
  store %union.rec* %3739, %union.rec** %zlink, align 8
  br label %3740

; <label>:3740                                    ; preds = %4705, %3733
  %3741 = load %union.rec*, %union.rec** %zlink, align 8
  %3742 = load %union.rec*, %union.rec** %2, align 8
  %3743 = icmp ne %union.rec* %3741, %3742
  br i1 %3743, label %3744, label %4712

; <label>:3744                                    ; preds = %3740
  %3745 = load %union.rec*, %union.rec** %zlink, align 8
  %3746 = bitcast %union.rec* %3745 to %struct.word_type*
  %3747 = getelementptr inbounds %struct.word_type, %struct.word_type* %3746, i32 0, i32 0
  %3748 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3747, i32 0, i64 1
  %3749 = getelementptr inbounds %struct.LIST, %struct.LIST* %3748, i32 0, i32 0
  %3750 = load %union.rec*, %union.rec** %3749, align 8
  store %union.rec* %3750, %union.rec** %z, align 8
  br label %3751

; <label>:3751                                    ; preds = %3761, %3744
  %3752 = load %union.rec*, %union.rec** %z, align 8
  %3753 = bitcast %union.rec* %3752 to %struct.word_type*
  %3754 = getelementptr inbounds %struct.word_type, %struct.word_type* %3753, i32 0, i32 1
  %3755 = bitcast %union.FIRST_UNION* %3754 to %struct.anon*
  %3756 = getelementptr inbounds %struct.anon, %struct.anon* %3755, i32 0, i32 0
  %3757 = load i8, i8* %3756, align 1
  %3758 = zext i8 %3757 to i32
  %3759 = icmp eq i32 %3758, 0
  br i1 %3759, label %3760, label %3768

; <label>:3760                                    ; preds = %3751
  br label %3761

; <label>:3761                                    ; preds = %3760
  %3762 = load %union.rec*, %union.rec** %z, align 8
  %3763 = bitcast %union.rec* %3762 to %struct.word_type*
  %3764 = getelementptr inbounds %struct.word_type, %struct.word_type* %3763, i32 0, i32 0
  %3765 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3764, i32 0, i64 1
  %3766 = getelementptr inbounds %struct.LIST, %struct.LIST* %3765, i32 0, i32 0
  %3767 = load %union.rec*, %union.rec** %3766, align 8
  store %union.rec* %3767, %union.rec** %z, align 8
  br label %3751

; <label>:3768                                    ; preds = %3751
  %3769 = load %union.rec*, %union.rec** %z, align 8
  %3770 = bitcast %union.rec* %3769 to %struct.word_type*
  %3771 = getelementptr inbounds %struct.word_type, %struct.word_type* %3770, i32 0, i32 1
  %3772 = bitcast %union.FIRST_UNION* %3771 to %struct.anon*
  %3773 = getelementptr inbounds %struct.anon, %struct.anon* %3772, i32 0, i32 0
  %3774 = load i8, i8* %3773, align 1
  %3775 = zext i8 %3774 to i32
  switch i32 %3775, label %4703 [
    i32 121, label %3776
    i32 122, label %4202
    i32 1, label %4685
  ]

; <label>:3776                                    ; preds = %3768
  %3777 = load %union.rec*, %union.rec** %z, align 8
  %3778 = bitcast %union.rec* %3777 to %struct.word_type*
  %3779 = getelementptr inbounds %struct.word_type, %struct.word_type* %3778, i32 0, i32 2
  %3780 = bitcast %union.SECOND_UNION* %3779 to %struct.anon.2*
  %3781 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3780, i32 0, i32 2
  %3782 = load i16, i16* %3781, align 2
  %3783 = and i16 %3782, 1
  %3784 = zext i16 %3783 to i32
  %3785 = icmp ne i32 %3784, 0
  br i1 %3785, label %3786, label %4199

; <label>:3786                                    ; preds = %3776
  %3787 = load %union.rec*, %union.rec** %zlink, align 8
  %3788 = bitcast %union.rec* %3787 to %struct.word_type*
  %3789 = getelementptr inbounds %struct.word_type, %struct.word_type* %3788, i32 0, i32 0
  %3790 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3789, i32 0, i64 0
  %3791 = getelementptr inbounds %struct.LIST, %struct.LIST* %3790, i32 0, i32 0
  %3792 = load %union.rec*, %union.rec** %3791, align 8
  store %union.rec* %3792, %union.rec** %zlink, align 8
  %3793 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %3793, %union.rec** @xx_hold, align 8
  br label %3794

; <label>:3794                                    ; preds = %3954, %3786
  %3795 = load %union.rec*, %union.rec** @xx_hold, align 8
  %3796 = bitcast %union.rec* %3795 to %struct.word_type*
  %3797 = getelementptr inbounds %struct.word_type, %struct.word_type* %3796, i32 0, i32 0
  %3798 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3797, i32 0, i64 1
  %3799 = getelementptr inbounds %struct.LIST, %struct.LIST* %3798, i32 0, i32 1
  %3800 = load %union.rec*, %union.rec** %3799, align 8
  %3801 = load %union.rec*, %union.rec** @xx_hold, align 8
  %3802 = icmp ne %union.rec* %3800, %3801
  br i1 %3802, label %3803, label %3969

; <label>:3803                                    ; preds = %3794
  %3804 = load %union.rec*, %union.rec** @xx_hold, align 8
  %3805 = bitcast %union.rec* %3804 to %struct.word_type*
  %3806 = getelementptr inbounds %struct.word_type, %struct.word_type* %3805, i32 0, i32 0
  %3807 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3806, i32 0, i64 1
  %3808 = getelementptr inbounds %struct.LIST, %struct.LIST* %3807, i32 0, i32 1
  %3809 = load %union.rec*, %union.rec** %3808, align 8
  store %union.rec* %3809, %union.rec** @xx_link, align 8
  %3810 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3810, %union.rec** @zz_hold, align 8
  %3811 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3812 = bitcast %union.rec* %3811 to %struct.word_type*
  %3813 = getelementptr inbounds %struct.word_type, %struct.word_type* %3812, i32 0, i32 0
  %3814 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3813, i32 0, i64 1
  %3815 = getelementptr inbounds %struct.LIST, %struct.LIST* %3814, i32 0, i32 1
  %3816 = load %union.rec*, %union.rec** %3815, align 8
  %3817 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3818 = icmp eq %union.rec* %3816, %3817
  br i1 %3818, label %3819, label %3820

; <label>:3819                                    ; preds = %3803
  br label %3861

; <label>:3820                                    ; preds = %3803
  %3821 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3822 = bitcast %union.rec* %3821 to %struct.word_type*
  %3823 = getelementptr inbounds %struct.word_type, %struct.word_type* %3822, i32 0, i32 0
  %3824 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3823, i32 0, i64 1
  %3825 = getelementptr inbounds %struct.LIST, %struct.LIST* %3824, i32 0, i32 1
  %3826 = load %union.rec*, %union.rec** %3825, align 8
  store %union.rec* %3826, %union.rec** @zz_res, align 8
  %3827 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3828 = bitcast %union.rec* %3827 to %struct.word_type*
  %3829 = getelementptr inbounds %struct.word_type, %struct.word_type* %3828, i32 0, i32 0
  %3830 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3829, i32 0, i64 1
  %3831 = getelementptr inbounds %struct.LIST, %struct.LIST* %3830, i32 0, i32 0
  %3832 = load %union.rec*, %union.rec** %3831, align 8
  %3833 = load %union.rec*, %union.rec** @zz_res, align 8
  %3834 = bitcast %union.rec* %3833 to %struct.word_type*
  %3835 = getelementptr inbounds %struct.word_type, %struct.word_type* %3834, i32 0, i32 0
  %3836 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3835, i32 0, i64 1
  %3837 = getelementptr inbounds %struct.LIST, %struct.LIST* %3836, i32 0, i32 0
  store %union.rec* %3832, %union.rec** %3837, align 8
  %3838 = load %union.rec*, %union.rec** @zz_res, align 8
  %3839 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3840 = bitcast %union.rec* %3839 to %struct.word_type*
  %3841 = getelementptr inbounds %struct.word_type, %struct.word_type* %3840, i32 0, i32 0
  %3842 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3841, i32 0, i64 1
  %3843 = getelementptr inbounds %struct.LIST, %struct.LIST* %3842, i32 0, i32 0
  %3844 = load %union.rec*, %union.rec** %3843, align 8
  %3845 = bitcast %union.rec* %3844 to %struct.word_type*
  %3846 = getelementptr inbounds %struct.word_type, %struct.word_type* %3845, i32 0, i32 0
  %3847 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3846, i32 0, i64 1
  %3848 = getelementptr inbounds %struct.LIST, %struct.LIST* %3847, i32 0, i32 1
  store %union.rec* %3838, %union.rec** %3848, align 8
  %3849 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3850 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3851 = bitcast %union.rec* %3850 to %struct.word_type*
  %3852 = getelementptr inbounds %struct.word_type, %struct.word_type* %3851, i32 0, i32 0
  %3853 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3852, i32 0, i64 1
  %3854 = getelementptr inbounds %struct.LIST, %struct.LIST* %3853, i32 0, i32 1
  store %union.rec* %3849, %union.rec** %3854, align 8
  %3855 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3856 = bitcast %union.rec* %3855 to %struct.word_type*
  %3857 = getelementptr inbounds %struct.word_type, %struct.word_type* %3856, i32 0, i32 0
  %3858 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3857, i32 0, i64 1
  %3859 = getelementptr inbounds %struct.LIST, %struct.LIST* %3858, i32 0, i32 0
  store %union.rec* %3849, %union.rec** %3859, align 8
  %3860 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3861

; <label>:3861                                    ; preds = %3820, %3819
  %3862 = phi %union.rec* [ null, %3819 ], [ %3860, %3820 ]
  %3863 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3863, %union.rec** @zz_hold, align 8
  %3864 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3865 = bitcast %union.rec* %3864 to %struct.word_type*
  %3866 = getelementptr inbounds %struct.word_type, %struct.word_type* %3865, i32 0, i32 0
  %3867 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3866, i32 0, i64 0
  %3868 = getelementptr inbounds %struct.LIST, %struct.LIST* %3867, i32 0, i32 1
  %3869 = load %union.rec*, %union.rec** %3868, align 8
  %3870 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3871 = icmp eq %union.rec* %3869, %3870
  br i1 %3871, label %3872, label %3873

; <label>:3872                                    ; preds = %3861
  br label %3914

; <label>:3873                                    ; preds = %3861
  %3874 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3875 = bitcast %union.rec* %3874 to %struct.word_type*
  %3876 = getelementptr inbounds %struct.word_type, %struct.word_type* %3875, i32 0, i32 0
  %3877 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3876, i32 0, i64 0
  %3878 = getelementptr inbounds %struct.LIST, %struct.LIST* %3877, i32 0, i32 1
  %3879 = load %union.rec*, %union.rec** %3878, align 8
  store %union.rec* %3879, %union.rec** @zz_res, align 8
  %3880 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3881 = bitcast %union.rec* %3880 to %struct.word_type*
  %3882 = getelementptr inbounds %struct.word_type, %struct.word_type* %3881, i32 0, i32 0
  %3883 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3882, i32 0, i64 0
  %3884 = getelementptr inbounds %struct.LIST, %struct.LIST* %3883, i32 0, i32 0
  %3885 = load %union.rec*, %union.rec** %3884, align 8
  %3886 = load %union.rec*, %union.rec** @zz_res, align 8
  %3887 = bitcast %union.rec* %3886 to %struct.word_type*
  %3888 = getelementptr inbounds %struct.word_type, %struct.word_type* %3887, i32 0, i32 0
  %3889 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3888, i32 0, i64 0
  %3890 = getelementptr inbounds %struct.LIST, %struct.LIST* %3889, i32 0, i32 0
  store %union.rec* %3885, %union.rec** %3890, align 8
  %3891 = load %union.rec*, %union.rec** @zz_res, align 8
  %3892 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3893 = bitcast %union.rec* %3892 to %struct.word_type*
  %3894 = getelementptr inbounds %struct.word_type, %struct.word_type* %3893, i32 0, i32 0
  %3895 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3894, i32 0, i64 0
  %3896 = getelementptr inbounds %struct.LIST, %struct.LIST* %3895, i32 0, i32 0
  %3897 = load %union.rec*, %union.rec** %3896, align 8
  %3898 = bitcast %union.rec* %3897 to %struct.word_type*
  %3899 = getelementptr inbounds %struct.word_type, %struct.word_type* %3898, i32 0, i32 0
  %3900 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3899, i32 0, i64 0
  %3901 = getelementptr inbounds %struct.LIST, %struct.LIST* %3900, i32 0, i32 1
  store %union.rec* %3891, %union.rec** %3901, align 8
  %3902 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3903 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3904 = bitcast %union.rec* %3903 to %struct.word_type*
  %3905 = getelementptr inbounds %struct.word_type, %struct.word_type* %3904, i32 0, i32 0
  %3906 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3905, i32 0, i64 0
  %3907 = getelementptr inbounds %struct.LIST, %struct.LIST* %3906, i32 0, i32 1
  store %union.rec* %3902, %union.rec** %3907, align 8
  %3908 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3909 = bitcast %union.rec* %3908 to %struct.word_type*
  %3910 = getelementptr inbounds %struct.word_type, %struct.word_type* %3909, i32 0, i32 0
  %3911 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3910, i32 0, i64 0
  %3912 = getelementptr inbounds %struct.LIST, %struct.LIST* %3911, i32 0, i32 0
  store %union.rec* %3902, %union.rec** %3912, align 8
  %3913 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3914

; <label>:3914                                    ; preds = %3873, %3872
  %3915 = phi %union.rec* [ null, %3872 ], [ %3913, %3873 ]
  %3916 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3916, %union.rec** @zz_hold, align 8
  %3917 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %3917, %union.rec** @zz_hold, align 8
  %3918 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3919 = bitcast %union.rec* %3918 to %struct.word_type*
  %3920 = getelementptr inbounds %struct.word_type, %struct.word_type* %3919, i32 0, i32 1
  %3921 = bitcast %union.FIRST_UNION* %3920 to %struct.anon*
  %3922 = getelementptr inbounds %struct.anon, %struct.anon* %3921, i32 0, i32 0
  %3923 = load i8, i8* %3922, align 1
  %3924 = zext i8 %3923 to i32
  %3925 = icmp eq i32 %3924, 11
  br i1 %3925, label %3935, label %3926

; <label>:3926                                    ; preds = %3914
  %3927 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3928 = bitcast %union.rec* %3927 to %struct.word_type*
  %3929 = getelementptr inbounds %struct.word_type, %struct.word_type* %3928, i32 0, i32 1
  %3930 = bitcast %union.FIRST_UNION* %3929 to %struct.anon*
  %3931 = getelementptr inbounds %struct.anon, %struct.anon* %3930, i32 0, i32 0
  %3932 = load i8, i8* %3931, align 1
  %3933 = zext i8 %3932 to i32
  %3934 = icmp eq i32 %3933, 12
  br i1 %3934, label %3935, label %3943

; <label>:3935                                    ; preds = %3926, %3914
  %3936 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3937 = bitcast %union.rec* %3936 to %struct.word_type*
  %3938 = getelementptr inbounds %struct.word_type, %struct.word_type* %3937, i32 0, i32 1
  %3939 = bitcast %union.FIRST_UNION* %3938 to %struct.anon*
  %3940 = getelementptr inbounds %struct.anon, %struct.anon* %3939, i32 0, i32 1
  %3941 = load i8, i8* %3940, align 1
  %3942 = zext i8 %3941 to i32
  br label %3954

; <label>:3943                                    ; preds = %3926
  %3944 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3945 = bitcast %union.rec* %3944 to %struct.word_type*
  %3946 = getelementptr inbounds %struct.word_type, %struct.word_type* %3945, i32 0, i32 1
  %3947 = bitcast %union.FIRST_UNION* %3946 to %struct.anon*
  %3948 = getelementptr inbounds %struct.anon, %struct.anon* %3947, i32 0, i32 0
  %3949 = load i8, i8* %3948, align 1
  %3950 = zext i8 %3949 to i64
  %3951 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %3950
  %3952 = load i8, i8* %3951, align 1
  %3953 = zext i8 %3952 to i32
  br label %3954

; <label>:3954                                    ; preds = %3943, %3935
  %3955 = phi i32 [ %3942, %3935 ], [ %3953, %3943 ]
  store i32 %3955, i32* @zz_size, align 4
  %3956 = load i32, i32* @zz_size, align 4
  %3957 = sext i32 %3956 to i64
  %3958 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3957
  %3959 = load %union.rec*, %union.rec** %3958, align 8
  %3960 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3961 = bitcast %union.rec* %3960 to %struct.word_type*
  %3962 = getelementptr inbounds %struct.word_type, %struct.word_type* %3961, i32 0, i32 0
  %3963 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3962, i32 0, i64 0
  %3964 = getelementptr inbounds %struct.LIST, %struct.LIST* %3963, i32 0, i32 0
  store %union.rec* %3959, %union.rec** %3964, align 8
  %3965 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3966 = load i32, i32* @zz_size, align 4
  %3967 = sext i32 %3966 to i64
  %3968 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3967
  store %union.rec* %3965, %union.rec** %3968, align 8
  br label %3794

; <label>:3969                                    ; preds = %3794
  br label %3970

; <label>:3970                                    ; preds = %4130, %3969
  %3971 = load %union.rec*, %union.rec** @xx_hold, align 8
  %3972 = bitcast %union.rec* %3971 to %struct.word_type*
  %3973 = getelementptr inbounds %struct.word_type, %struct.word_type* %3972, i32 0, i32 0
  %3974 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3973, i32 0, i64 0
  %3975 = getelementptr inbounds %struct.LIST, %struct.LIST* %3974, i32 0, i32 1
  %3976 = load %union.rec*, %union.rec** %3975, align 8
  %3977 = load %union.rec*, %union.rec** @xx_hold, align 8
  %3978 = icmp ne %union.rec* %3976, %3977
  br i1 %3978, label %3979, label %4145

; <label>:3979                                    ; preds = %3970
  %3980 = load %union.rec*, %union.rec** @xx_hold, align 8
  %3981 = bitcast %union.rec* %3980 to %struct.word_type*
  %3982 = getelementptr inbounds %struct.word_type, %struct.word_type* %3981, i32 0, i32 0
  %3983 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3982, i32 0, i64 0
  %3984 = getelementptr inbounds %struct.LIST, %struct.LIST* %3983, i32 0, i32 1
  %3985 = load %union.rec*, %union.rec** %3984, align 8
  store %union.rec* %3985, %union.rec** @xx_link, align 8
  %3986 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3986, %union.rec** @zz_hold, align 8
  %3987 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3988 = bitcast %union.rec* %3987 to %struct.word_type*
  %3989 = getelementptr inbounds %struct.word_type, %struct.word_type* %3988, i32 0, i32 0
  %3990 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3989, i32 0, i64 1
  %3991 = getelementptr inbounds %struct.LIST, %struct.LIST* %3990, i32 0, i32 1
  %3992 = load %union.rec*, %union.rec** %3991, align 8
  %3993 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3994 = icmp eq %union.rec* %3992, %3993
  br i1 %3994, label %3995, label %3996

; <label>:3995                                    ; preds = %3979
  br label %4037

; <label>:3996                                    ; preds = %3979
  %3997 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3998 = bitcast %union.rec* %3997 to %struct.word_type*
  %3999 = getelementptr inbounds %struct.word_type, %struct.word_type* %3998, i32 0, i32 0
  %4000 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3999, i32 0, i64 1
  %4001 = getelementptr inbounds %struct.LIST, %struct.LIST* %4000, i32 0, i32 1
  %4002 = load %union.rec*, %union.rec** %4001, align 8
  store %union.rec* %4002, %union.rec** @zz_res, align 8
  %4003 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4004 = bitcast %union.rec* %4003 to %struct.word_type*
  %4005 = getelementptr inbounds %struct.word_type, %struct.word_type* %4004, i32 0, i32 0
  %4006 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4005, i32 0, i64 1
  %4007 = getelementptr inbounds %struct.LIST, %struct.LIST* %4006, i32 0, i32 0
  %4008 = load %union.rec*, %union.rec** %4007, align 8
  %4009 = load %union.rec*, %union.rec** @zz_res, align 8
  %4010 = bitcast %union.rec* %4009 to %struct.word_type*
  %4011 = getelementptr inbounds %struct.word_type, %struct.word_type* %4010, i32 0, i32 0
  %4012 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4011, i32 0, i64 1
  %4013 = getelementptr inbounds %struct.LIST, %struct.LIST* %4012, i32 0, i32 0
  store %union.rec* %4008, %union.rec** %4013, align 8
  %4014 = load %union.rec*, %union.rec** @zz_res, align 8
  %4015 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4016 = bitcast %union.rec* %4015 to %struct.word_type*
  %4017 = getelementptr inbounds %struct.word_type, %struct.word_type* %4016, i32 0, i32 0
  %4018 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4017, i32 0, i64 1
  %4019 = getelementptr inbounds %struct.LIST, %struct.LIST* %4018, i32 0, i32 0
  %4020 = load %union.rec*, %union.rec** %4019, align 8
  %4021 = bitcast %union.rec* %4020 to %struct.word_type*
  %4022 = getelementptr inbounds %struct.word_type, %struct.word_type* %4021, i32 0, i32 0
  %4023 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4022, i32 0, i64 1
  %4024 = getelementptr inbounds %struct.LIST, %struct.LIST* %4023, i32 0, i32 1
  store %union.rec* %4014, %union.rec** %4024, align 8
  %4025 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4026 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4027 = bitcast %union.rec* %4026 to %struct.word_type*
  %4028 = getelementptr inbounds %struct.word_type, %struct.word_type* %4027, i32 0, i32 0
  %4029 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4028, i32 0, i64 1
  %4030 = getelementptr inbounds %struct.LIST, %struct.LIST* %4029, i32 0, i32 1
  store %union.rec* %4025, %union.rec** %4030, align 8
  %4031 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4032 = bitcast %union.rec* %4031 to %struct.word_type*
  %4033 = getelementptr inbounds %struct.word_type, %struct.word_type* %4032, i32 0, i32 0
  %4034 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4033, i32 0, i64 1
  %4035 = getelementptr inbounds %struct.LIST, %struct.LIST* %4034, i32 0, i32 0
  store %union.rec* %4025, %union.rec** %4035, align 8
  %4036 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4037

; <label>:4037                                    ; preds = %3996, %3995
  %4038 = phi %union.rec* [ null, %3995 ], [ %4036, %3996 ]
  %4039 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4039, %union.rec** @zz_hold, align 8
  %4040 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4041 = bitcast %union.rec* %4040 to %struct.word_type*
  %4042 = getelementptr inbounds %struct.word_type, %struct.word_type* %4041, i32 0, i32 0
  %4043 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4042, i32 0, i64 0
  %4044 = getelementptr inbounds %struct.LIST, %struct.LIST* %4043, i32 0, i32 1
  %4045 = load %union.rec*, %union.rec** %4044, align 8
  %4046 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4047 = icmp eq %union.rec* %4045, %4046
  br i1 %4047, label %4048, label %4049

; <label>:4048                                    ; preds = %4037
  br label %4090

; <label>:4049                                    ; preds = %4037
  %4050 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4051 = bitcast %union.rec* %4050 to %struct.word_type*
  %4052 = getelementptr inbounds %struct.word_type, %struct.word_type* %4051, i32 0, i32 0
  %4053 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4052, i32 0, i64 0
  %4054 = getelementptr inbounds %struct.LIST, %struct.LIST* %4053, i32 0, i32 1
  %4055 = load %union.rec*, %union.rec** %4054, align 8
  store %union.rec* %4055, %union.rec** @zz_res, align 8
  %4056 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4057 = bitcast %union.rec* %4056 to %struct.word_type*
  %4058 = getelementptr inbounds %struct.word_type, %struct.word_type* %4057, i32 0, i32 0
  %4059 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4058, i32 0, i64 0
  %4060 = getelementptr inbounds %struct.LIST, %struct.LIST* %4059, i32 0, i32 0
  %4061 = load %union.rec*, %union.rec** %4060, align 8
  %4062 = load %union.rec*, %union.rec** @zz_res, align 8
  %4063 = bitcast %union.rec* %4062 to %struct.word_type*
  %4064 = getelementptr inbounds %struct.word_type, %struct.word_type* %4063, i32 0, i32 0
  %4065 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4064, i32 0, i64 0
  %4066 = getelementptr inbounds %struct.LIST, %struct.LIST* %4065, i32 0, i32 0
  store %union.rec* %4061, %union.rec** %4066, align 8
  %4067 = load %union.rec*, %union.rec** @zz_res, align 8
  %4068 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4069 = bitcast %union.rec* %4068 to %struct.word_type*
  %4070 = getelementptr inbounds %struct.word_type, %struct.word_type* %4069, i32 0, i32 0
  %4071 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4070, i32 0, i64 0
  %4072 = getelementptr inbounds %struct.LIST, %struct.LIST* %4071, i32 0, i32 0
  %4073 = load %union.rec*, %union.rec** %4072, align 8
  %4074 = bitcast %union.rec* %4073 to %struct.word_type*
  %4075 = getelementptr inbounds %struct.word_type, %struct.word_type* %4074, i32 0, i32 0
  %4076 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4075, i32 0, i64 0
  %4077 = getelementptr inbounds %struct.LIST, %struct.LIST* %4076, i32 0, i32 1
  store %union.rec* %4067, %union.rec** %4077, align 8
  %4078 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4079 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4080 = bitcast %union.rec* %4079 to %struct.word_type*
  %4081 = getelementptr inbounds %struct.word_type, %struct.word_type* %4080, i32 0, i32 0
  %4082 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4081, i32 0, i64 0
  %4083 = getelementptr inbounds %struct.LIST, %struct.LIST* %4082, i32 0, i32 1
  store %union.rec* %4078, %union.rec** %4083, align 8
  %4084 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4085 = bitcast %union.rec* %4084 to %struct.word_type*
  %4086 = getelementptr inbounds %struct.word_type, %struct.word_type* %4085, i32 0, i32 0
  %4087 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4086, i32 0, i64 0
  %4088 = getelementptr inbounds %struct.LIST, %struct.LIST* %4087, i32 0, i32 0
  store %union.rec* %4078, %union.rec** %4088, align 8
  %4089 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4090

; <label>:4090                                    ; preds = %4049, %4048
  %4091 = phi %union.rec* [ null, %4048 ], [ %4089, %4049 ]
  %4092 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4092, %union.rec** @zz_hold, align 8
  %4093 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %4093, %union.rec** @zz_hold, align 8
  %4094 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4095 = bitcast %union.rec* %4094 to %struct.word_type*
  %4096 = getelementptr inbounds %struct.word_type, %struct.word_type* %4095, i32 0, i32 1
  %4097 = bitcast %union.FIRST_UNION* %4096 to %struct.anon*
  %4098 = getelementptr inbounds %struct.anon, %struct.anon* %4097, i32 0, i32 0
  %4099 = load i8, i8* %4098, align 1
  %4100 = zext i8 %4099 to i32
  %4101 = icmp eq i32 %4100, 11
  br i1 %4101, label %4111, label %4102

; <label>:4102                                    ; preds = %4090
  %4103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4104 = bitcast %union.rec* %4103 to %struct.word_type*
  %4105 = getelementptr inbounds %struct.word_type, %struct.word_type* %4104, i32 0, i32 1
  %4106 = bitcast %union.FIRST_UNION* %4105 to %struct.anon*
  %4107 = getelementptr inbounds %struct.anon, %struct.anon* %4106, i32 0, i32 0
  %4108 = load i8, i8* %4107, align 1
  %4109 = zext i8 %4108 to i32
  %4110 = icmp eq i32 %4109, 12
  br i1 %4110, label %4111, label %4119

; <label>:4111                                    ; preds = %4102, %4090
  %4112 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4113 = bitcast %union.rec* %4112 to %struct.word_type*
  %4114 = getelementptr inbounds %struct.word_type, %struct.word_type* %4113, i32 0, i32 1
  %4115 = bitcast %union.FIRST_UNION* %4114 to %struct.anon*
  %4116 = getelementptr inbounds %struct.anon, %struct.anon* %4115, i32 0, i32 1
  %4117 = load i8, i8* %4116, align 1
  %4118 = zext i8 %4117 to i32
  br label %4130

; <label>:4119                                    ; preds = %4102
  %4120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4121 = bitcast %union.rec* %4120 to %struct.word_type*
  %4122 = getelementptr inbounds %struct.word_type, %struct.word_type* %4121, i32 0, i32 1
  %4123 = bitcast %union.FIRST_UNION* %4122 to %struct.anon*
  %4124 = getelementptr inbounds %struct.anon, %struct.anon* %4123, i32 0, i32 0
  %4125 = load i8, i8* %4124, align 1
  %4126 = zext i8 %4125 to i64
  %4127 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %4126
  %4128 = load i8, i8* %4127, align 1
  %4129 = zext i8 %4128 to i32
  br label %4130

; <label>:4130                                    ; preds = %4119, %4111
  %4131 = phi i32 [ %4118, %4111 ], [ %4129, %4119 ]
  store i32 %4131, i32* @zz_size, align 4
  %4132 = load i32, i32* @zz_size, align 4
  %4133 = sext i32 %4132 to i64
  %4134 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4133
  %4135 = load %union.rec*, %union.rec** %4134, align 8
  %4136 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4137 = bitcast %union.rec* %4136 to %struct.word_type*
  %4138 = getelementptr inbounds %struct.word_type, %struct.word_type* %4137, i32 0, i32 0
  %4139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4138, i32 0, i64 0
  %4140 = getelementptr inbounds %struct.LIST, %struct.LIST* %4139, i32 0, i32 0
  store %union.rec* %4135, %union.rec** %4140, align 8
  %4141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4142 = load i32, i32* @zz_size, align 4
  %4143 = sext i32 %4142 to i64
  %4144 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4143
  store %union.rec* %4141, %union.rec** %4144, align 8
  br label %3970

; <label>:4145                                    ; preds = %3970
  %4146 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %4146, %union.rec** @zz_hold, align 8
  %4147 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %4147, %union.rec** @zz_hold, align 8
  %4148 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4149 = bitcast %union.rec* %4148 to %struct.word_type*
  %4150 = getelementptr inbounds %struct.word_type, %struct.word_type* %4149, i32 0, i32 1
  %4151 = bitcast %union.FIRST_UNION* %4150 to %struct.anon*
  %4152 = getelementptr inbounds %struct.anon, %struct.anon* %4151, i32 0, i32 0
  %4153 = load i8, i8* %4152, align 1
  %4154 = zext i8 %4153 to i32
  %4155 = icmp eq i32 %4154, 11
  br i1 %4155, label %4165, label %4156

; <label>:4156                                    ; preds = %4145
  %4157 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4158 = bitcast %union.rec* %4157 to %struct.word_type*
  %4159 = getelementptr inbounds %struct.word_type, %struct.word_type* %4158, i32 0, i32 1
  %4160 = bitcast %union.FIRST_UNION* %4159 to %struct.anon*
  %4161 = getelementptr inbounds %struct.anon, %struct.anon* %4160, i32 0, i32 0
  %4162 = load i8, i8* %4161, align 1
  %4163 = zext i8 %4162 to i32
  %4164 = icmp eq i32 %4163, 12
  br i1 %4164, label %4165, label %4173

; <label>:4165                                    ; preds = %4156, %4145
  %4166 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4167 = bitcast %union.rec* %4166 to %struct.word_type*
  %4168 = getelementptr inbounds %struct.word_type, %struct.word_type* %4167, i32 0, i32 1
  %4169 = bitcast %union.FIRST_UNION* %4168 to %struct.anon*
  %4170 = getelementptr inbounds %struct.anon, %struct.anon* %4169, i32 0, i32 1
  %4171 = load i8, i8* %4170, align 1
  %4172 = zext i8 %4171 to i32
  br label %4184

; <label>:4173                                    ; preds = %4156
  %4174 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4175 = bitcast %union.rec* %4174 to %struct.word_type*
  %4176 = getelementptr inbounds %struct.word_type, %struct.word_type* %4175, i32 0, i32 1
  %4177 = bitcast %union.FIRST_UNION* %4176 to %struct.anon*
  %4178 = getelementptr inbounds %struct.anon, %struct.anon* %4177, i32 0, i32 0
  %4179 = load i8, i8* %4178, align 1
  %4180 = zext i8 %4179 to i64
  %4181 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %4180
  %4182 = load i8, i8* %4181, align 1
  %4183 = zext i8 %4182 to i32
  br label %4184

; <label>:4184                                    ; preds = %4173, %4165
  %4185 = phi i32 [ %4172, %4165 ], [ %4183, %4173 ]
  store i32 %4185, i32* @zz_size, align 4
  %4186 = load i32, i32* @zz_size, align 4
  %4187 = sext i32 %4186 to i64
  %4188 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4187
  %4189 = load %union.rec*, %union.rec** %4188, align 8
  %4190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4191 = bitcast %union.rec* %4190 to %struct.word_type*
  %4192 = getelementptr inbounds %struct.word_type, %struct.word_type* %4191, i32 0, i32 0
  %4193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4192, i32 0, i64 0
  %4194 = getelementptr inbounds %struct.LIST, %struct.LIST* %4193, i32 0, i32 0
  store %union.rec* %4189, %union.rec** %4194, align 8
  %4195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4196 = load i32, i32* @zz_size, align 4
  %4197 = sext i32 %4196 to i64
  %4198 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4197
  store %union.rec* %4195, %union.rec** %4198, align 8
  br label %4201

; <label>:4199                                    ; preds = %3776
  %4200 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %4200, %union.rec** %y, align 8
  br label %7056

; <label>:4201                                    ; preds = %4184
  br label %4704

; <label>:4202                                    ; preds = %3768
  %4203 = load %union.rec*, %union.rec** %z, align 8
  %4204 = bitcast %union.rec* %4203 to %struct.word_type*
  %4205 = getelementptr inbounds %struct.word_type, %struct.word_type* %4204, i32 0, i32 2
  %4206 = bitcast %union.SECOND_UNION* %4205 to %struct.anon.2*
  %4207 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4206, i32 0, i32 2
  %4208 = load i16, i16* %4207, align 2
  %4209 = and i16 %4208, 1
  %4210 = zext i16 %4209 to i32
  %4211 = icmp ne i32 %4210, 0
  br i1 %4211, label %4212, label %4682

; <label>:4212                                    ; preds = %4202
  %4213 = load %union.rec*, %union.rec** %zlink, align 8
  %4214 = bitcast %union.rec* %4213 to %struct.word_type*
  %4215 = getelementptr inbounds %struct.word_type, %struct.word_type* %4214, i32 0, i32 0
  %4216 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4215, i32 0, i64 0
  %4217 = getelementptr inbounds %struct.LIST, %struct.LIST* %4216, i32 0, i32 0
  %4218 = load %union.rec*, %union.rec** %4217, align 8
  store %union.rec* %4218, %union.rec** %zlink, align 8
  br label %4219

; <label>:4219                                    ; preds = %4272, %4212
  %4220 = load %union.rec*, %union.rec** %z, align 8
  %4221 = bitcast %union.rec* %4220 to %struct.word_type*
  %4222 = getelementptr inbounds %struct.word_type, %struct.word_type* %4221, i32 0, i32 0
  %4223 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4222, i32 0, i64 0
  %4224 = getelementptr inbounds %struct.LIST, %struct.LIST* %4223, i32 0, i32 1
  %4225 = load %union.rec*, %union.rec** %4224, align 8
  %4226 = load %union.rec*, %union.rec** %z, align 8
  %4227 = icmp ne %union.rec* %4225, %4226
  br i1 %4227, label %4228, label %4275

; <label>:4228                                    ; preds = %4219
  %4229 = load %union.rec*, %union.rec** %y, align 8
  %4230 = bitcast %union.rec* %4229 to %struct.word_type*
  %4231 = getelementptr inbounds %struct.word_type, %struct.word_type* %4230, i32 0, i32 0
  %4232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4231, i32 0, i64 0
  %4233 = getelementptr inbounds %struct.LIST, %struct.LIST* %4232, i32 0, i32 1
  %4234 = load %union.rec*, %union.rec** %4233, align 8
  %4235 = bitcast %union.rec* %4234 to %struct.word_type*
  %4236 = getelementptr inbounds %struct.word_type, %struct.word_type* %4235, i32 0, i32 0
  %4237 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4236, i32 0, i64 1
  %4238 = getelementptr inbounds %struct.LIST, %struct.LIST* %4237, i32 0, i32 0
  %4239 = load %union.rec*, %union.rec** %4238, align 8
  store %union.rec* %4239, %union.rec** %tmp, align 8
  br label %4240

; <label>:4240                                    ; preds = %4250, %4228
  %4241 = load %union.rec*, %union.rec** %tmp, align 8
  %4242 = bitcast %union.rec* %4241 to %struct.word_type*
  %4243 = getelementptr inbounds %struct.word_type, %struct.word_type* %4242, i32 0, i32 1
  %4244 = bitcast %union.FIRST_UNION* %4243 to %struct.anon*
  %4245 = getelementptr inbounds %struct.anon, %struct.anon* %4244, i32 0, i32 0
  %4246 = load i8, i8* %4245, align 1
  %4247 = zext i8 %4246 to i32
  %4248 = icmp eq i32 %4247, 0
  br i1 %4248, label %4249, label %4257

; <label>:4249                                    ; preds = %4240
  br label %4250

; <label>:4250                                    ; preds = %4249
  %4251 = load %union.rec*, %union.rec** %tmp, align 8
  %4252 = bitcast %union.rec* %4251 to %struct.word_type*
  %4253 = getelementptr inbounds %struct.word_type, %struct.word_type* %4252, i32 0, i32 0
  %4254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4253, i32 0, i64 1
  %4255 = getelementptr inbounds %struct.LIST, %struct.LIST* %4254, i32 0, i32 0
  %4256 = load %union.rec*, %union.rec** %4255, align 8
  store %union.rec* %4256, %union.rec** %tmp, align 8
  br label %4240

; <label>:4257                                    ; preds = %4240
  %4258 = load %union.rec*, %union.rec** %tmp, align 8
  %4259 = bitcast %union.rec* %4258 to %struct.head_type*
  %4260 = getelementptr inbounds %struct.head_type, %struct.head_type* %4259, i32 0, i32 8
  %4261 = load %union.rec*, %union.rec** %4260, align 8
  %4262 = icmp ne %union.rec* %4261, null
  br i1 %4262, label %4263, label %4272

; <label>:4263                                    ; preds = %4257
  %4264 = load %union.rec*, %union.rec** %tmp, align 8
  %4265 = bitcast %union.rec* %4264 to %struct.head_type*
  %4266 = getelementptr inbounds %struct.head_type, %struct.head_type* %4265, i32 0, i32 8
  %4267 = load %union.rec*, %union.rec** %4266, align 8
  %4268 = call i32 @DisposeObject(%union.rec* %4267)
  %4269 = load %union.rec*, %union.rec** %tmp, align 8
  %4270 = bitcast %union.rec* %4269 to %struct.head_type*
  %4271 = getelementptr inbounds %struct.head_type, %struct.head_type* %4270, i32 0, i32 8
  store %union.rec* null, %union.rec** %4271, align 8
  br label %4272

; <label>:4272                                    ; preds = %4263, %4257
  %4273 = load %union.rec*, %union.rec** %tmp, align 8
  call void @DetachGalley(%union.rec* %4273)
  %4274 = load %union.rec*, %union.rec** %tmp, align 8
  call void @KillGalley(%union.rec* %4274, i32 0)
  br label %4219

; <label>:4275                                    ; preds = %4219
  %4276 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %4276, %union.rec** @xx_hold, align 8
  br label %4277

; <label>:4277                                    ; preds = %4437, %4275
  %4278 = load %union.rec*, %union.rec** @xx_hold, align 8
  %4279 = bitcast %union.rec* %4278 to %struct.word_type*
  %4280 = getelementptr inbounds %struct.word_type, %struct.word_type* %4279, i32 0, i32 0
  %4281 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4280, i32 0, i64 1
  %4282 = getelementptr inbounds %struct.LIST, %struct.LIST* %4281, i32 0, i32 1
  %4283 = load %union.rec*, %union.rec** %4282, align 8
  %4284 = load %union.rec*, %union.rec** @xx_hold, align 8
  %4285 = icmp ne %union.rec* %4283, %4284
  br i1 %4285, label %4286, label %4452

; <label>:4286                                    ; preds = %4277
  %4287 = load %union.rec*, %union.rec** @xx_hold, align 8
  %4288 = bitcast %union.rec* %4287 to %struct.word_type*
  %4289 = getelementptr inbounds %struct.word_type, %struct.word_type* %4288, i32 0, i32 0
  %4290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4289, i32 0, i64 1
  %4291 = getelementptr inbounds %struct.LIST, %struct.LIST* %4290, i32 0, i32 1
  %4292 = load %union.rec*, %union.rec** %4291, align 8
  store %union.rec* %4292, %union.rec** @xx_link, align 8
  %4293 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4293, %union.rec** @zz_hold, align 8
  %4294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4295 = bitcast %union.rec* %4294 to %struct.word_type*
  %4296 = getelementptr inbounds %struct.word_type, %struct.word_type* %4295, i32 0, i32 0
  %4297 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4296, i32 0, i64 1
  %4298 = getelementptr inbounds %struct.LIST, %struct.LIST* %4297, i32 0, i32 1
  %4299 = load %union.rec*, %union.rec** %4298, align 8
  %4300 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4301 = icmp eq %union.rec* %4299, %4300
  br i1 %4301, label %4302, label %4303

; <label>:4302                                    ; preds = %4286
  br label %4344

; <label>:4303                                    ; preds = %4286
  %4304 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4305 = bitcast %union.rec* %4304 to %struct.word_type*
  %4306 = getelementptr inbounds %struct.word_type, %struct.word_type* %4305, i32 0, i32 0
  %4307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4306, i32 0, i64 1
  %4308 = getelementptr inbounds %struct.LIST, %struct.LIST* %4307, i32 0, i32 1
  %4309 = load %union.rec*, %union.rec** %4308, align 8
  store %union.rec* %4309, %union.rec** @zz_res, align 8
  %4310 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4311 = bitcast %union.rec* %4310 to %struct.word_type*
  %4312 = getelementptr inbounds %struct.word_type, %struct.word_type* %4311, i32 0, i32 0
  %4313 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4312, i32 0, i64 1
  %4314 = getelementptr inbounds %struct.LIST, %struct.LIST* %4313, i32 0, i32 0
  %4315 = load %union.rec*, %union.rec** %4314, align 8
  %4316 = load %union.rec*, %union.rec** @zz_res, align 8
  %4317 = bitcast %union.rec* %4316 to %struct.word_type*
  %4318 = getelementptr inbounds %struct.word_type, %struct.word_type* %4317, i32 0, i32 0
  %4319 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4318, i32 0, i64 1
  %4320 = getelementptr inbounds %struct.LIST, %struct.LIST* %4319, i32 0, i32 0
  store %union.rec* %4315, %union.rec** %4320, align 8
  %4321 = load %union.rec*, %union.rec** @zz_res, align 8
  %4322 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4323 = bitcast %union.rec* %4322 to %struct.word_type*
  %4324 = getelementptr inbounds %struct.word_type, %struct.word_type* %4323, i32 0, i32 0
  %4325 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4324, i32 0, i64 1
  %4326 = getelementptr inbounds %struct.LIST, %struct.LIST* %4325, i32 0, i32 0
  %4327 = load %union.rec*, %union.rec** %4326, align 8
  %4328 = bitcast %union.rec* %4327 to %struct.word_type*
  %4329 = getelementptr inbounds %struct.word_type, %struct.word_type* %4328, i32 0, i32 0
  %4330 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4329, i32 0, i64 1
  %4331 = getelementptr inbounds %struct.LIST, %struct.LIST* %4330, i32 0, i32 1
  store %union.rec* %4321, %union.rec** %4331, align 8
  %4332 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4333 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4334 = bitcast %union.rec* %4333 to %struct.word_type*
  %4335 = getelementptr inbounds %struct.word_type, %struct.word_type* %4334, i32 0, i32 0
  %4336 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4335, i32 0, i64 1
  %4337 = getelementptr inbounds %struct.LIST, %struct.LIST* %4336, i32 0, i32 1
  store %union.rec* %4332, %union.rec** %4337, align 8
  %4338 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4339 = bitcast %union.rec* %4338 to %struct.word_type*
  %4340 = getelementptr inbounds %struct.word_type, %struct.word_type* %4339, i32 0, i32 0
  %4341 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4340, i32 0, i64 1
  %4342 = getelementptr inbounds %struct.LIST, %struct.LIST* %4341, i32 0, i32 0
  store %union.rec* %4332, %union.rec** %4342, align 8
  %4343 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4344

; <label>:4344                                    ; preds = %4303, %4302
  %4345 = phi %union.rec* [ null, %4302 ], [ %4343, %4303 ]
  %4346 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4346, %union.rec** @zz_hold, align 8
  %4347 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4348 = bitcast %union.rec* %4347 to %struct.word_type*
  %4349 = getelementptr inbounds %struct.word_type, %struct.word_type* %4348, i32 0, i32 0
  %4350 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4349, i32 0, i64 0
  %4351 = getelementptr inbounds %struct.LIST, %struct.LIST* %4350, i32 0, i32 1
  %4352 = load %union.rec*, %union.rec** %4351, align 8
  %4353 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4354 = icmp eq %union.rec* %4352, %4353
  br i1 %4354, label %4355, label %4356

; <label>:4355                                    ; preds = %4344
  br label %4397

; <label>:4356                                    ; preds = %4344
  %4357 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4358 = bitcast %union.rec* %4357 to %struct.word_type*
  %4359 = getelementptr inbounds %struct.word_type, %struct.word_type* %4358, i32 0, i32 0
  %4360 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4359, i32 0, i64 0
  %4361 = getelementptr inbounds %struct.LIST, %struct.LIST* %4360, i32 0, i32 1
  %4362 = load %union.rec*, %union.rec** %4361, align 8
  store %union.rec* %4362, %union.rec** @zz_res, align 8
  %4363 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4364 = bitcast %union.rec* %4363 to %struct.word_type*
  %4365 = getelementptr inbounds %struct.word_type, %struct.word_type* %4364, i32 0, i32 0
  %4366 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4365, i32 0, i64 0
  %4367 = getelementptr inbounds %struct.LIST, %struct.LIST* %4366, i32 0, i32 0
  %4368 = load %union.rec*, %union.rec** %4367, align 8
  %4369 = load %union.rec*, %union.rec** @zz_res, align 8
  %4370 = bitcast %union.rec* %4369 to %struct.word_type*
  %4371 = getelementptr inbounds %struct.word_type, %struct.word_type* %4370, i32 0, i32 0
  %4372 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4371, i32 0, i64 0
  %4373 = getelementptr inbounds %struct.LIST, %struct.LIST* %4372, i32 0, i32 0
  store %union.rec* %4368, %union.rec** %4373, align 8
  %4374 = load %union.rec*, %union.rec** @zz_res, align 8
  %4375 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4376 = bitcast %union.rec* %4375 to %struct.word_type*
  %4377 = getelementptr inbounds %struct.word_type, %struct.word_type* %4376, i32 0, i32 0
  %4378 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4377, i32 0, i64 0
  %4379 = getelementptr inbounds %struct.LIST, %struct.LIST* %4378, i32 0, i32 0
  %4380 = load %union.rec*, %union.rec** %4379, align 8
  %4381 = bitcast %union.rec* %4380 to %struct.word_type*
  %4382 = getelementptr inbounds %struct.word_type, %struct.word_type* %4381, i32 0, i32 0
  %4383 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4382, i32 0, i64 0
  %4384 = getelementptr inbounds %struct.LIST, %struct.LIST* %4383, i32 0, i32 1
  store %union.rec* %4374, %union.rec** %4384, align 8
  %4385 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4386 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4387 = bitcast %union.rec* %4386 to %struct.word_type*
  %4388 = getelementptr inbounds %struct.word_type, %struct.word_type* %4387, i32 0, i32 0
  %4389 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4388, i32 0, i64 0
  %4390 = getelementptr inbounds %struct.LIST, %struct.LIST* %4389, i32 0, i32 1
  store %union.rec* %4385, %union.rec** %4390, align 8
  %4391 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4392 = bitcast %union.rec* %4391 to %struct.word_type*
  %4393 = getelementptr inbounds %struct.word_type, %struct.word_type* %4392, i32 0, i32 0
  %4394 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4393, i32 0, i64 0
  %4395 = getelementptr inbounds %struct.LIST, %struct.LIST* %4394, i32 0, i32 0
  store %union.rec* %4385, %union.rec** %4395, align 8
  %4396 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4397

; <label>:4397                                    ; preds = %4356, %4355
  %4398 = phi %union.rec* [ null, %4355 ], [ %4396, %4356 ]
  %4399 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4399, %union.rec** @zz_hold, align 8
  %4400 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %4400, %union.rec** @zz_hold, align 8
  %4401 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4402 = bitcast %union.rec* %4401 to %struct.word_type*
  %4403 = getelementptr inbounds %struct.word_type, %struct.word_type* %4402, i32 0, i32 1
  %4404 = bitcast %union.FIRST_UNION* %4403 to %struct.anon*
  %4405 = getelementptr inbounds %struct.anon, %struct.anon* %4404, i32 0, i32 0
  %4406 = load i8, i8* %4405, align 1
  %4407 = zext i8 %4406 to i32
  %4408 = icmp eq i32 %4407, 11
  br i1 %4408, label %4418, label %4409

; <label>:4409                                    ; preds = %4397
  %4410 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4411 = bitcast %union.rec* %4410 to %struct.word_type*
  %4412 = getelementptr inbounds %struct.word_type, %struct.word_type* %4411, i32 0, i32 1
  %4413 = bitcast %union.FIRST_UNION* %4412 to %struct.anon*
  %4414 = getelementptr inbounds %struct.anon, %struct.anon* %4413, i32 0, i32 0
  %4415 = load i8, i8* %4414, align 1
  %4416 = zext i8 %4415 to i32
  %4417 = icmp eq i32 %4416, 12
  br i1 %4417, label %4418, label %4426

; <label>:4418                                    ; preds = %4409, %4397
  %4419 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4420 = bitcast %union.rec* %4419 to %struct.word_type*
  %4421 = getelementptr inbounds %struct.word_type, %struct.word_type* %4420, i32 0, i32 1
  %4422 = bitcast %union.FIRST_UNION* %4421 to %struct.anon*
  %4423 = getelementptr inbounds %struct.anon, %struct.anon* %4422, i32 0, i32 1
  %4424 = load i8, i8* %4423, align 1
  %4425 = zext i8 %4424 to i32
  br label %4437

; <label>:4426                                    ; preds = %4409
  %4427 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4428 = bitcast %union.rec* %4427 to %struct.word_type*
  %4429 = getelementptr inbounds %struct.word_type, %struct.word_type* %4428, i32 0, i32 1
  %4430 = bitcast %union.FIRST_UNION* %4429 to %struct.anon*
  %4431 = getelementptr inbounds %struct.anon, %struct.anon* %4430, i32 0, i32 0
  %4432 = load i8, i8* %4431, align 1
  %4433 = zext i8 %4432 to i64
  %4434 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %4433
  %4435 = load i8, i8* %4434, align 1
  %4436 = zext i8 %4435 to i32
  br label %4437

; <label>:4437                                    ; preds = %4426, %4418
  %4438 = phi i32 [ %4425, %4418 ], [ %4436, %4426 ]
  store i32 %4438, i32* @zz_size, align 4
  %4439 = load i32, i32* @zz_size, align 4
  %4440 = sext i32 %4439 to i64
  %4441 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4440
  %4442 = load %union.rec*, %union.rec** %4441, align 8
  %4443 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4444 = bitcast %union.rec* %4443 to %struct.word_type*
  %4445 = getelementptr inbounds %struct.word_type, %struct.word_type* %4444, i32 0, i32 0
  %4446 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4445, i32 0, i64 0
  %4447 = getelementptr inbounds %struct.LIST, %struct.LIST* %4446, i32 0, i32 0
  store %union.rec* %4442, %union.rec** %4447, align 8
  %4448 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4449 = load i32, i32* @zz_size, align 4
  %4450 = sext i32 %4449 to i64
  %4451 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4450
  store %union.rec* %4448, %union.rec** %4451, align 8
  br label %4277

; <label>:4452                                    ; preds = %4277
  br label %4453

; <label>:4453                                    ; preds = %4613, %4452
  %4454 = load %union.rec*, %union.rec** @xx_hold, align 8
  %4455 = bitcast %union.rec* %4454 to %struct.word_type*
  %4456 = getelementptr inbounds %struct.word_type, %struct.word_type* %4455, i32 0, i32 0
  %4457 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4456, i32 0, i64 0
  %4458 = getelementptr inbounds %struct.LIST, %struct.LIST* %4457, i32 0, i32 1
  %4459 = load %union.rec*, %union.rec** %4458, align 8
  %4460 = load %union.rec*, %union.rec** @xx_hold, align 8
  %4461 = icmp ne %union.rec* %4459, %4460
  br i1 %4461, label %4462, label %4628

; <label>:4462                                    ; preds = %4453
  %4463 = load %union.rec*, %union.rec** @xx_hold, align 8
  %4464 = bitcast %union.rec* %4463 to %struct.word_type*
  %4465 = getelementptr inbounds %struct.word_type, %struct.word_type* %4464, i32 0, i32 0
  %4466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4465, i32 0, i64 0
  %4467 = getelementptr inbounds %struct.LIST, %struct.LIST* %4466, i32 0, i32 1
  %4468 = load %union.rec*, %union.rec** %4467, align 8
  store %union.rec* %4468, %union.rec** @xx_link, align 8
  %4469 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4469, %union.rec** @zz_hold, align 8
  %4470 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4471 = bitcast %union.rec* %4470 to %struct.word_type*
  %4472 = getelementptr inbounds %struct.word_type, %struct.word_type* %4471, i32 0, i32 0
  %4473 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4472, i32 0, i64 1
  %4474 = getelementptr inbounds %struct.LIST, %struct.LIST* %4473, i32 0, i32 1
  %4475 = load %union.rec*, %union.rec** %4474, align 8
  %4476 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4477 = icmp eq %union.rec* %4475, %4476
  br i1 %4477, label %4478, label %4479

; <label>:4478                                    ; preds = %4462
  br label %4520

; <label>:4479                                    ; preds = %4462
  %4480 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4481 = bitcast %union.rec* %4480 to %struct.word_type*
  %4482 = getelementptr inbounds %struct.word_type, %struct.word_type* %4481, i32 0, i32 0
  %4483 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4482, i32 0, i64 1
  %4484 = getelementptr inbounds %struct.LIST, %struct.LIST* %4483, i32 0, i32 1
  %4485 = load %union.rec*, %union.rec** %4484, align 8
  store %union.rec* %4485, %union.rec** @zz_res, align 8
  %4486 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4487 = bitcast %union.rec* %4486 to %struct.word_type*
  %4488 = getelementptr inbounds %struct.word_type, %struct.word_type* %4487, i32 0, i32 0
  %4489 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4488, i32 0, i64 1
  %4490 = getelementptr inbounds %struct.LIST, %struct.LIST* %4489, i32 0, i32 0
  %4491 = load %union.rec*, %union.rec** %4490, align 8
  %4492 = load %union.rec*, %union.rec** @zz_res, align 8
  %4493 = bitcast %union.rec* %4492 to %struct.word_type*
  %4494 = getelementptr inbounds %struct.word_type, %struct.word_type* %4493, i32 0, i32 0
  %4495 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4494, i32 0, i64 1
  %4496 = getelementptr inbounds %struct.LIST, %struct.LIST* %4495, i32 0, i32 0
  store %union.rec* %4491, %union.rec** %4496, align 8
  %4497 = load %union.rec*, %union.rec** @zz_res, align 8
  %4498 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4499 = bitcast %union.rec* %4498 to %struct.word_type*
  %4500 = getelementptr inbounds %struct.word_type, %struct.word_type* %4499, i32 0, i32 0
  %4501 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4500, i32 0, i64 1
  %4502 = getelementptr inbounds %struct.LIST, %struct.LIST* %4501, i32 0, i32 0
  %4503 = load %union.rec*, %union.rec** %4502, align 8
  %4504 = bitcast %union.rec* %4503 to %struct.word_type*
  %4505 = getelementptr inbounds %struct.word_type, %struct.word_type* %4504, i32 0, i32 0
  %4506 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4505, i32 0, i64 1
  %4507 = getelementptr inbounds %struct.LIST, %struct.LIST* %4506, i32 0, i32 1
  store %union.rec* %4497, %union.rec** %4507, align 8
  %4508 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4509 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4510 = bitcast %union.rec* %4509 to %struct.word_type*
  %4511 = getelementptr inbounds %struct.word_type, %struct.word_type* %4510, i32 0, i32 0
  %4512 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4511, i32 0, i64 1
  %4513 = getelementptr inbounds %struct.LIST, %struct.LIST* %4512, i32 0, i32 1
  store %union.rec* %4508, %union.rec** %4513, align 8
  %4514 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4515 = bitcast %union.rec* %4514 to %struct.word_type*
  %4516 = getelementptr inbounds %struct.word_type, %struct.word_type* %4515, i32 0, i32 0
  %4517 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4516, i32 0, i64 1
  %4518 = getelementptr inbounds %struct.LIST, %struct.LIST* %4517, i32 0, i32 0
  store %union.rec* %4508, %union.rec** %4518, align 8
  %4519 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4520

; <label>:4520                                    ; preds = %4479, %4478
  %4521 = phi %union.rec* [ null, %4478 ], [ %4519, %4479 ]
  %4522 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4522, %union.rec** @zz_hold, align 8
  %4523 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4524 = bitcast %union.rec* %4523 to %struct.word_type*
  %4525 = getelementptr inbounds %struct.word_type, %struct.word_type* %4524, i32 0, i32 0
  %4526 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4525, i32 0, i64 0
  %4527 = getelementptr inbounds %struct.LIST, %struct.LIST* %4526, i32 0, i32 1
  %4528 = load %union.rec*, %union.rec** %4527, align 8
  %4529 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4530 = icmp eq %union.rec* %4528, %4529
  br i1 %4530, label %4531, label %4532

; <label>:4531                                    ; preds = %4520
  br label %4573

; <label>:4532                                    ; preds = %4520
  %4533 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4534 = bitcast %union.rec* %4533 to %struct.word_type*
  %4535 = getelementptr inbounds %struct.word_type, %struct.word_type* %4534, i32 0, i32 0
  %4536 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4535, i32 0, i64 0
  %4537 = getelementptr inbounds %struct.LIST, %struct.LIST* %4536, i32 0, i32 1
  %4538 = load %union.rec*, %union.rec** %4537, align 8
  store %union.rec* %4538, %union.rec** @zz_res, align 8
  %4539 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4540 = bitcast %union.rec* %4539 to %struct.word_type*
  %4541 = getelementptr inbounds %struct.word_type, %struct.word_type* %4540, i32 0, i32 0
  %4542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4541, i32 0, i64 0
  %4543 = getelementptr inbounds %struct.LIST, %struct.LIST* %4542, i32 0, i32 0
  %4544 = load %union.rec*, %union.rec** %4543, align 8
  %4545 = load %union.rec*, %union.rec** @zz_res, align 8
  %4546 = bitcast %union.rec* %4545 to %struct.word_type*
  %4547 = getelementptr inbounds %struct.word_type, %struct.word_type* %4546, i32 0, i32 0
  %4548 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4547, i32 0, i64 0
  %4549 = getelementptr inbounds %struct.LIST, %struct.LIST* %4548, i32 0, i32 0
  store %union.rec* %4544, %union.rec** %4549, align 8
  %4550 = load %union.rec*, %union.rec** @zz_res, align 8
  %4551 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4552 = bitcast %union.rec* %4551 to %struct.word_type*
  %4553 = getelementptr inbounds %struct.word_type, %struct.word_type* %4552, i32 0, i32 0
  %4554 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4553, i32 0, i64 0
  %4555 = getelementptr inbounds %struct.LIST, %struct.LIST* %4554, i32 0, i32 0
  %4556 = load %union.rec*, %union.rec** %4555, align 8
  %4557 = bitcast %union.rec* %4556 to %struct.word_type*
  %4558 = getelementptr inbounds %struct.word_type, %struct.word_type* %4557, i32 0, i32 0
  %4559 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4558, i32 0, i64 0
  %4560 = getelementptr inbounds %struct.LIST, %struct.LIST* %4559, i32 0, i32 1
  store %union.rec* %4550, %union.rec** %4560, align 8
  %4561 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4562 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4563 = bitcast %union.rec* %4562 to %struct.word_type*
  %4564 = getelementptr inbounds %struct.word_type, %struct.word_type* %4563, i32 0, i32 0
  %4565 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4564, i32 0, i64 0
  %4566 = getelementptr inbounds %struct.LIST, %struct.LIST* %4565, i32 0, i32 1
  store %union.rec* %4561, %union.rec** %4566, align 8
  %4567 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4568 = bitcast %union.rec* %4567 to %struct.word_type*
  %4569 = getelementptr inbounds %struct.word_type, %struct.word_type* %4568, i32 0, i32 0
  %4570 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4569, i32 0, i64 0
  %4571 = getelementptr inbounds %struct.LIST, %struct.LIST* %4570, i32 0, i32 0
  store %union.rec* %4561, %union.rec** %4571, align 8
  %4572 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4573

; <label>:4573                                    ; preds = %4532, %4531
  %4574 = phi %union.rec* [ null, %4531 ], [ %4572, %4532 ]
  %4575 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4575, %union.rec** @zz_hold, align 8
  %4576 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %4576, %union.rec** @zz_hold, align 8
  %4577 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4578 = bitcast %union.rec* %4577 to %struct.word_type*
  %4579 = getelementptr inbounds %struct.word_type, %struct.word_type* %4578, i32 0, i32 1
  %4580 = bitcast %union.FIRST_UNION* %4579 to %struct.anon*
  %4581 = getelementptr inbounds %struct.anon, %struct.anon* %4580, i32 0, i32 0
  %4582 = load i8, i8* %4581, align 1
  %4583 = zext i8 %4582 to i32
  %4584 = icmp eq i32 %4583, 11
  br i1 %4584, label %4594, label %4585

; <label>:4585                                    ; preds = %4573
  %4586 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4587 = bitcast %union.rec* %4586 to %struct.word_type*
  %4588 = getelementptr inbounds %struct.word_type, %struct.word_type* %4587, i32 0, i32 1
  %4589 = bitcast %union.FIRST_UNION* %4588 to %struct.anon*
  %4590 = getelementptr inbounds %struct.anon, %struct.anon* %4589, i32 0, i32 0
  %4591 = load i8, i8* %4590, align 1
  %4592 = zext i8 %4591 to i32
  %4593 = icmp eq i32 %4592, 12
  br i1 %4593, label %4594, label %4602

; <label>:4594                                    ; preds = %4585, %4573
  %4595 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4596 = bitcast %union.rec* %4595 to %struct.word_type*
  %4597 = getelementptr inbounds %struct.word_type, %struct.word_type* %4596, i32 0, i32 1
  %4598 = bitcast %union.FIRST_UNION* %4597 to %struct.anon*
  %4599 = getelementptr inbounds %struct.anon, %struct.anon* %4598, i32 0, i32 1
  %4600 = load i8, i8* %4599, align 1
  %4601 = zext i8 %4600 to i32
  br label %4613

; <label>:4602                                    ; preds = %4585
  %4603 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4604 = bitcast %union.rec* %4603 to %struct.word_type*
  %4605 = getelementptr inbounds %struct.word_type, %struct.word_type* %4604, i32 0, i32 1
  %4606 = bitcast %union.FIRST_UNION* %4605 to %struct.anon*
  %4607 = getelementptr inbounds %struct.anon, %struct.anon* %4606, i32 0, i32 0
  %4608 = load i8, i8* %4607, align 1
  %4609 = zext i8 %4608 to i64
  %4610 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %4609
  %4611 = load i8, i8* %4610, align 1
  %4612 = zext i8 %4611 to i32
  br label %4613

; <label>:4613                                    ; preds = %4602, %4594
  %4614 = phi i32 [ %4601, %4594 ], [ %4612, %4602 ]
  store i32 %4614, i32* @zz_size, align 4
  %4615 = load i32, i32* @zz_size, align 4
  %4616 = sext i32 %4615 to i64
  %4617 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4616
  %4618 = load %union.rec*, %union.rec** %4617, align 8
  %4619 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4620 = bitcast %union.rec* %4619 to %struct.word_type*
  %4621 = getelementptr inbounds %struct.word_type, %struct.word_type* %4620, i32 0, i32 0
  %4622 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4621, i32 0, i64 0
  %4623 = getelementptr inbounds %struct.LIST, %struct.LIST* %4622, i32 0, i32 0
  store %union.rec* %4618, %union.rec** %4623, align 8
  %4624 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4625 = load i32, i32* @zz_size, align 4
  %4626 = sext i32 %4625 to i64
  %4627 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4626
  store %union.rec* %4624, %union.rec** %4627, align 8
  br label %4453

; <label>:4628                                    ; preds = %4453
  %4629 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %4629, %union.rec** @zz_hold, align 8
  %4630 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %4630, %union.rec** @zz_hold, align 8
  %4631 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4632 = bitcast %union.rec* %4631 to %struct.word_type*
  %4633 = getelementptr inbounds %struct.word_type, %struct.word_type* %4632, i32 0, i32 1
  %4634 = bitcast %union.FIRST_UNION* %4633 to %struct.anon*
  %4635 = getelementptr inbounds %struct.anon, %struct.anon* %4634, i32 0, i32 0
  %4636 = load i8, i8* %4635, align 1
  %4637 = zext i8 %4636 to i32
  %4638 = icmp eq i32 %4637, 11
  br i1 %4638, label %4648, label %4639

; <label>:4639                                    ; preds = %4628
  %4640 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4641 = bitcast %union.rec* %4640 to %struct.word_type*
  %4642 = getelementptr inbounds %struct.word_type, %struct.word_type* %4641, i32 0, i32 1
  %4643 = bitcast %union.FIRST_UNION* %4642 to %struct.anon*
  %4644 = getelementptr inbounds %struct.anon, %struct.anon* %4643, i32 0, i32 0
  %4645 = load i8, i8* %4644, align 1
  %4646 = zext i8 %4645 to i32
  %4647 = icmp eq i32 %4646, 12
  br i1 %4647, label %4648, label %4656

; <label>:4648                                    ; preds = %4639, %4628
  %4649 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4650 = bitcast %union.rec* %4649 to %struct.word_type*
  %4651 = getelementptr inbounds %struct.word_type, %struct.word_type* %4650, i32 0, i32 1
  %4652 = bitcast %union.FIRST_UNION* %4651 to %struct.anon*
  %4653 = getelementptr inbounds %struct.anon, %struct.anon* %4652, i32 0, i32 1
  %4654 = load i8, i8* %4653, align 1
  %4655 = zext i8 %4654 to i32
  br label %4667

; <label>:4656                                    ; preds = %4639
  %4657 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4658 = bitcast %union.rec* %4657 to %struct.word_type*
  %4659 = getelementptr inbounds %struct.word_type, %struct.word_type* %4658, i32 0, i32 1
  %4660 = bitcast %union.FIRST_UNION* %4659 to %struct.anon*
  %4661 = getelementptr inbounds %struct.anon, %struct.anon* %4660, i32 0, i32 0
  %4662 = load i8, i8* %4661, align 1
  %4663 = zext i8 %4662 to i64
  %4664 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %4663
  %4665 = load i8, i8* %4664, align 1
  %4666 = zext i8 %4665 to i32
  br label %4667

; <label>:4667                                    ; preds = %4656, %4648
  %4668 = phi i32 [ %4655, %4648 ], [ %4666, %4656 ]
  store i32 %4668, i32* @zz_size, align 4
  %4669 = load i32, i32* @zz_size, align 4
  %4670 = sext i32 %4669 to i64
  %4671 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4670
  %4672 = load %union.rec*, %union.rec** %4671, align 8
  %4673 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4674 = bitcast %union.rec* %4673 to %struct.word_type*
  %4675 = getelementptr inbounds %struct.word_type, %struct.word_type* %4674, i32 0, i32 0
  %4676 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4675, i32 0, i64 0
  %4677 = getelementptr inbounds %struct.LIST, %struct.LIST* %4676, i32 0, i32 0
  store %union.rec* %4672, %union.rec** %4677, align 8
  %4678 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4679 = load i32, i32* @zz_size, align 4
  %4680 = sext i32 %4679 to i64
  %4681 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4680
  store %union.rec* %4678, %union.rec** %4681, align 8
  br label %4684

; <label>:4682                                    ; preds = %4202
  %4683 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %4683, %union.rec** %y, align 8
  br label %7056

; <label>:4684                                    ; preds = %4667
  br label %4704

; <label>:4685                                    ; preds = %3768
  %4686 = load %union.rec*, %union.rec** %z, align 8
  %4687 = bitcast %union.rec* %4686 to %struct.gapobj_type*
  %4688 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %4687, i32 0, i32 3
  %4689 = bitcast %struct.GAP* %4688 to i16*
  %4690 = load i16, i16* %4689, align 4
  %4691 = lshr i16 %4690, 9
  %4692 = and i16 %4691, 1
  %4693 = zext i16 %4692 to i32
  %4694 = icmp ne i32 %4693, 0
  br i1 %4694, label %4702, label %4695

; <label>:4695                                    ; preds = %4685
  %4696 = load %union.rec*, %union.rec** %2, align 8
  %4697 = bitcast %union.rec* %4696 to %struct.word_type*
  %4698 = getelementptr inbounds %struct.word_type, %struct.word_type* %4697, i32 0, i32 0
  %4699 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4698, i32 0, i64 0
  %4700 = getelementptr inbounds %struct.LIST, %struct.LIST* %4699, i32 0, i32 0
  %4701 = load %union.rec*, %union.rec** %4700, align 8
  store %union.rec* %4701, %union.rec** %zlink, align 8
  br label %4702

; <label>:4702                                    ; preds = %4695, %4685
  br label %4704

; <label>:4703                                    ; preds = %3768
  br label %4704

; <label>:4704                                    ; preds = %4703, %4702, %4684, %4201
  br label %4705

; <label>:4705                                    ; preds = %4704
  %4706 = load %union.rec*, %union.rec** %zlink, align 8
  %4707 = bitcast %union.rec* %4706 to %struct.word_type*
  %4708 = getelementptr inbounds %struct.word_type, %struct.word_type* %4707, i32 0, i32 0
  %4709 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4708, i32 0, i64 0
  %4710 = getelementptr inbounds %struct.LIST, %struct.LIST* %4709, i32 0, i32 1
  %4711 = load %union.rec*, %union.rec** %4710, align 8
  store %union.rec* %4711, %union.rec** %zlink, align 8
  br label %3740

; <label>:4712                                    ; preds = %3740
  %4713 = load %union.rec*, %union.rec** %y, align 8
  %4714 = bitcast %union.rec* %4713 to %struct.word_type*
  %4715 = getelementptr inbounds %struct.word_type, %struct.word_type* %4714, i32 0, i32 1
  %4716 = bitcast %union.FIRST_UNION* %4715 to %struct.anon*
  %4717 = getelementptr inbounds %struct.anon, %struct.anon* %4716, i32 0, i32 0
  %4718 = load i8, i8* %4717, align 1
  %4719 = zext i8 %4718 to i32
  %4720 = icmp eq i32 %4719, 18
  br i1 %4720, label %4721, label %4724

; <label>:4721                                    ; preds = %4712
  %4722 = load %union.rec*, %union.rec** %y, align 8
  %4723 = call i32 @VerticalHyphenate(%union.rec* %4722)
  br label %4724

; <label>:4724                                    ; preds = %4721, %4712
  br label %4725

; <label>:4725                                    ; preds = %4724, %3712
  store %union.rec* null, %union.rec** %why, align 8
  %4726 = load %union.rec*, %union.rec** %dest, align 8
  %4727 = load i32, i32* %dim, align 4
  call void @Constrained(%union.rec* %4726, %struct.CONSTRAINT* %c, i32 %4727, %union.rec** %why)
  %4728 = load i32, i32* %dim, align 4
  %4729 = sext i32 %4728 to i64
  %4730 = load %union.rec*, %union.rec** %y, align 8
  %4731 = bitcast %union.rec* %4730 to %struct.word_type*
  %4732 = getelementptr inbounds %struct.word_type, %struct.word_type* %4731, i32 0, i32 3
  %4733 = bitcast %union.THIRD_UNION* %4732 to %struct.anon.6*
  %4734 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4733, i32 0, i32 0
  %4735 = getelementptr inbounds [2 x i32], [2 x i32]* %4734, i32 0, i64 %4729
  %4736 = load i32, i32* %4735, align 4
  %4737 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 0
  %4738 = load i32, i32* %4737, align 4
  %4739 = icmp sle i32 %4736, %4738
  br i1 %4739, label %4740, label %4776

; <label>:4740                                    ; preds = %4725
  %4741 = load i32, i32* %dim, align 4
  %4742 = sext i32 %4741 to i64
  %4743 = load %union.rec*, %union.rec** %y, align 8
  %4744 = bitcast %union.rec* %4743 to %struct.word_type*
  %4745 = getelementptr inbounds %struct.word_type, %struct.word_type* %4744, i32 0, i32 3
  %4746 = bitcast %union.THIRD_UNION* %4745 to %struct.anon.6*
  %4747 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4746, i32 0, i32 0
  %4748 = getelementptr inbounds [2 x i32], [2 x i32]* %4747, i32 0, i64 %4742
  %4749 = load i32, i32* %4748, align 4
  %4750 = load i32, i32* %dim, align 4
  %4751 = sext i32 %4750 to i64
  %4752 = load %union.rec*, %union.rec** %y, align 8
  %4753 = bitcast %union.rec* %4752 to %struct.word_type*
  %4754 = getelementptr inbounds %struct.word_type, %struct.word_type* %4753, i32 0, i32 3
  %4755 = bitcast %union.THIRD_UNION* %4754 to %struct.anon.6*
  %4756 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4755, i32 0, i32 1
  %4757 = getelementptr inbounds [2 x i32], [2 x i32]* %4756, i32 0, i64 %4751
  %4758 = load i32, i32* %4757, align 4
  %4759 = add nsw i32 %4749, %4758
  %4760 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %4761 = load i32, i32* %4760, align 4
  %4762 = icmp sle i32 %4759, %4761
  br i1 %4762, label %4763, label %4776

; <label>:4763                                    ; preds = %4740
  %4764 = load i32, i32* %dim, align 4
  %4765 = sext i32 %4764 to i64
  %4766 = load %union.rec*, %union.rec** %y, align 8
  %4767 = bitcast %union.rec* %4766 to %struct.word_type*
  %4768 = getelementptr inbounds %struct.word_type, %struct.word_type* %4767, i32 0, i32 3
  %4769 = bitcast %union.THIRD_UNION* %4768 to %struct.anon.6*
  %4770 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4769, i32 0, i32 1
  %4771 = getelementptr inbounds [2 x i32], [2 x i32]* %4770, i32 0, i64 %4765
  %4772 = load i32, i32* %4771, align 4
  %4773 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 2
  %4774 = load i32, i32* %4773, align 4
  %4775 = icmp sle i32 %4772, %4774
  br i1 %4775, label %4964, label %4776

; <label>:4776                                    ; preds = %4763, %4740, %4725
  store i32 0, i32* %scaled, align 4
  %4777 = load %union.rec*, %union.rec** %2, align 8
  %4778 = bitcast %union.rec* %4777 to %struct.word_type*
  %4779 = getelementptr inbounds %struct.word_type, %struct.word_type* %4778, i32 0, i32 2
  %4780 = bitcast %union.SECOND_UNION* %4779 to %struct.anon.2*
  %4781 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4780, i32 0, i32 2
  %4782 = load i16, i16* %4781, align 2
  %4783 = lshr i16 %4782, 12
  %4784 = and i16 %4783, 1
  %4785 = zext i16 %4784 to i32
  %4786 = icmp ne i32 %4785, 0
  br i1 %4786, label %4787, label %4887

; <label>:4787                                    ; preds = %4776
  %4788 = load i32, i32* %dim, align 4
  %4789 = sext i32 %4788 to i64
  %4790 = load %union.rec*, %union.rec** %y, align 8
  %4791 = bitcast %union.rec* %4790 to %struct.word_type*
  %4792 = getelementptr inbounds %struct.word_type, %struct.word_type* %4791, i32 0, i32 3
  %4793 = bitcast %union.THIRD_UNION* %4792 to %struct.anon.6*
  %4794 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4793, i32 0, i32 0
  %4795 = getelementptr inbounds [2 x i32], [2 x i32]* %4794, i32 0, i64 %4789
  %4796 = load i32, i32* %4795, align 4
  %4797 = load i32, i32* %dim, align 4
  %4798 = sext i32 %4797 to i64
  %4799 = load %union.rec*, %union.rec** %y, align 8
  %4800 = bitcast %union.rec* %4799 to %struct.word_type*
  %4801 = getelementptr inbounds %struct.word_type, %struct.word_type* %4800, i32 0, i32 3
  %4802 = bitcast %union.THIRD_UNION* %4801 to %struct.anon.6*
  %4803 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4802, i32 0, i32 1
  %4804 = getelementptr inbounds [2 x i32], [2 x i32]* %4803, i32 0, i64 %4798
  %4805 = load i32, i32* %4804, align 4
  %4806 = add nsw i32 %4796, %4805
  %4807 = icmp sgt i32 %4806, 0
  br i1 %4807, label %4808, label %4887

; <label>:4808                                    ; preds = %4787
  %4809 = load i32, i32* %dim, align 4
  %4810 = sext i32 %4809 to i64
  %4811 = load %union.rec*, %union.rec** %y, align 8
  %4812 = bitcast %union.rec* %4811 to %struct.word_type*
  %4813 = getelementptr inbounds %struct.word_type, %struct.word_type* %4812, i32 0, i32 3
  %4814 = bitcast %union.THIRD_UNION* %4813 to %struct.anon.6*
  %4815 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4814, i32 0, i32 0
  %4816 = getelementptr inbounds [2 x i32], [2 x i32]* %4815, i32 0, i64 %4810
  %4817 = load i32, i32* %4816, align 4
  %4818 = load i32, i32* %dim, align 4
  %4819 = sext i32 %4818 to i64
  %4820 = load %union.rec*, %union.rec** %y, align 8
  %4821 = bitcast %union.rec* %4820 to %struct.word_type*
  %4822 = getelementptr inbounds %struct.word_type, %struct.word_type* %4821, i32 0, i32 3
  %4823 = bitcast %union.THIRD_UNION* %4822 to %struct.anon.6*
  %4824 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4823, i32 0, i32 1
  %4825 = getelementptr inbounds [2 x i32], [2 x i32]* %4824, i32 0, i64 %4819
  %4826 = load i32, i32* %4825, align 4
  %4827 = call i32 @ScaleToConstraint(i32 %4817, i32 %4826, %struct.CONSTRAINT* %c)
  store i32 %4827, i32* %scale_factor, align 4
  %4828 = load i32, i32* %scale_factor, align 4
  %4829 = sitofp i32 %4828 to double
  %4830 = fcmp ogt double %4829, 6.400000e+01
  br i1 %4830, label %4831, label %4886

; <label>:4831                                    ; preds = %4808
  %4832 = getelementptr inbounds [20 x i8], [20 x i8]* %num1, i32 0, i32 0
  %4833 = load i32, i32* %dim, align 4
  %4834 = sext i32 %4833 to i64
  %4835 = load %union.rec*, %union.rec** %y, align 8
  %4836 = bitcast %union.rec* %4835 to %struct.word_type*
  %4837 = getelementptr inbounds %struct.word_type, %struct.word_type* %4836, i32 0, i32 3
  %4838 = bitcast %union.THIRD_UNION* %4837 to %struct.anon.6*
  %4839 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4838, i32 0, i32 0
  %4840 = getelementptr inbounds [2 x i32], [2 x i32]* %4839, i32 0, i64 %4834
  %4841 = load i32, i32* %4840, align 4
  %4842 = load i32, i32* %dim, align 4
  %4843 = sext i32 %4842 to i64
  %4844 = load %union.rec*, %union.rec** %y, align 8
  %4845 = bitcast %union.rec* %4844 to %struct.word_type*
  %4846 = getelementptr inbounds %struct.word_type, %struct.word_type* %4845, i32 0, i32 3
  %4847 = bitcast %union.THIRD_UNION* %4846 to %struct.anon.6*
  %4848 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4847, i32 0, i32 1
  %4849 = getelementptr inbounds [2 x i32], [2 x i32]* %4848, i32 0, i64 %4843
  %4850 = load i32, i32* %4849, align 4
  %4851 = add nsw i32 %4841, %4850
  %4852 = sitofp i32 %4851 to float
  %4853 = fdiv float %4852, 5.670000e+02
  %4854 = fpext float %4853 to double
  %4855 = call i32 (i8*, i8*, ...) @sprintf(i8* %4832, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double %4854) #3
  %4856 = getelementptr inbounds [20 x i8], [20 x i8]* %num2, i32 0, i32 0
  %4857 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %4858 = load i32, i32* %4857, align 4
  %4859 = sitofp i32 %4858 to float
  %4860 = fdiv float %4859, 5.670000e+02
  %4861 = fpext float %4860 to double
  %4862 = call i32 (i8*, i8*, ...) @sprintf(i8* %4856, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double %4861) #3
  %4863 = load i32, i32* %dim, align 4
  %4864 = icmp eq i32 %4863, 1
  br i1 %4864, label %4865, label %4873

; <label>:4865                                    ; preds = %4831
  %4866 = load %union.rec*, %union.rec** %y, align 8
  %4867 = bitcast %union.rec* %4866 to %struct.word_type*
  %4868 = getelementptr inbounds %struct.word_type, %struct.word_type* %4867, i32 0, i32 1
  %4869 = bitcast %union.FIRST_UNION* %4868 to %struct.FILE_POS*
  %4870 = getelementptr inbounds [20 x i8], [20 x i8]* %num1, i32 0, i32 0
  %4871 = getelementptr inbounds [20 x i8], [20 x i8]* %num2, i32 0, i32 0
  %4872 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i32 0, i32 0), i32 2, %struct.FILE_POS* %4869, i8* %4870, i8* %4871, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  br label %4881

; <label>:4873                                    ; preds = %4831
  %4874 = load %union.rec*, %union.rec** %y, align 8
  %4875 = bitcast %union.rec* %4874 to %struct.word_type*
  %4876 = getelementptr inbounds %struct.word_type, %struct.word_type* %4875, i32 0, i32 1
  %4877 = bitcast %union.FIRST_UNION* %4876 to %struct.FILE_POS*
  %4878 = getelementptr inbounds [20 x i8], [20 x i8]* %num1, i32 0, i32 0
  %4879 = getelementptr inbounds [20 x i8], [20 x i8]* %num2, i32 0, i32 0
  %4880 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i32 2, %struct.FILE_POS* %4877, i8* %4878, i8* %4879, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  br label %4881

; <label>:4881                                    ; preds = %4873, %4865
  %4882 = load %union.rec*, %union.rec** %y, align 8
  %4883 = load i32, i32* %scale_factor, align 4
  %4884 = load i32, i32* %dim, align 4
  %4885 = call %union.rec* @InterposeScale(%union.rec* %4882, i32 %4883, i32 %4884)
  store %union.rec* %4885, %union.rec** %y, align 8
  store i32 1, i32* %scaled, align 4
  br label %4886

; <label>:4886                                    ; preds = %4881, %4808
  br label %4887

; <label>:4887                                    ; preds = %4886, %4787, %4776
  %4888 = load i32, i32* %scaled, align 4
  %4889 = icmp ne i32 %4888, 0
  br i1 %4889, label %4963, label %4890

; <label>:4890                                    ; preds = %4887
  %4891 = load i32, i32* %dim, align 4
  %4892 = sext i32 %4891 to i64
  %4893 = load %union.rec*, %union.rec** %y, align 8
  %4894 = bitcast %union.rec* %4893 to %struct.word_type*
  %4895 = getelementptr inbounds %struct.word_type, %struct.word_type* %4894, i32 0, i32 3
  %4896 = bitcast %union.THIRD_UNION* %4895 to %struct.anon.6*
  %4897 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4896, i32 0, i32 0
  %4898 = getelementptr inbounds [2 x i32], [2 x i32]* %4897, i32 0, i64 %4892
  %4899 = load i32, i32* %4898, align 4
  %4900 = load i32, i32* %dim, align 4
  %4901 = sext i32 %4900 to i64
  %4902 = load %union.rec*, %union.rec** %y, align 8
  %4903 = bitcast %union.rec* %4902 to %struct.word_type*
  %4904 = getelementptr inbounds %struct.word_type, %struct.word_type* %4903, i32 0, i32 3
  %4905 = bitcast %union.THIRD_UNION* %4904 to %struct.anon.6*
  %4906 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4905, i32 0, i32 1
  %4907 = getelementptr inbounds [2 x i32], [2 x i32]* %4906, i32 0, i64 %4901
  %4908 = load i32, i32* %4907, align 4
  %4909 = add nsw i32 %4899, %4908
  %4910 = icmp sgt i32 %4909, 0
  br i1 %4910, label %4911, label %4962

; <label>:4911                                    ; preds = %4890
  %4912 = getelementptr inbounds [20 x i8], [20 x i8]* %num11, i32 0, i32 0
  %4913 = load i32, i32* %dim, align 4
  %4914 = sext i32 %4913 to i64
  %4915 = load %union.rec*, %union.rec** %y, align 8
  %4916 = bitcast %union.rec* %4915 to %struct.word_type*
  %4917 = getelementptr inbounds %struct.word_type, %struct.word_type* %4916, i32 0, i32 3
  %4918 = bitcast %union.THIRD_UNION* %4917 to %struct.anon.6*
  %4919 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4918, i32 0, i32 0
  %4920 = getelementptr inbounds [2 x i32], [2 x i32]* %4919, i32 0, i64 %4914
  %4921 = load i32, i32* %4920, align 4
  %4922 = load i32, i32* %dim, align 4
  %4923 = sext i32 %4922 to i64
  %4924 = load %union.rec*, %union.rec** %y, align 8
  %4925 = bitcast %union.rec* %4924 to %struct.word_type*
  %4926 = getelementptr inbounds %struct.word_type, %struct.word_type* %4925, i32 0, i32 3
  %4927 = bitcast %union.THIRD_UNION* %4926 to %struct.anon.6*
  %4928 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4927, i32 0, i32 1
  %4929 = getelementptr inbounds [2 x i32], [2 x i32]* %4928, i32 0, i64 %4923
  %4930 = load i32, i32* %4929, align 4
  %4931 = add nsw i32 %4921, %4930
  %4932 = sitofp i32 %4931 to float
  %4933 = fdiv float %4932, 5.670000e+02
  %4934 = fpext float %4933 to double
  %4935 = call i32 (i8*, i8*, ...) @sprintf(i8* %4912, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double %4934) #3
  %4936 = getelementptr inbounds [20 x i8], [20 x i8]* %num22, i32 0, i32 0
  %4937 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %4938 = load i32, i32* %4937, align 4
  %4939 = sitofp i32 %4938 to float
  %4940 = fdiv float %4939, 5.670000e+02
  %4941 = fpext float %4940 to double
  %4942 = call i32 (i8*, i8*, ...) @sprintf(i8* %4936, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double %4941) #3
  %4943 = load i32, i32* %dim, align 4
  %4944 = icmp eq i32 %4943, 1
  br i1 %4944, label %4945, label %4953

; <label>:4945                                    ; preds = %4911
  %4946 = load %union.rec*, %union.rec** %y, align 8
  %4947 = bitcast %union.rec* %4946 to %struct.word_type*
  %4948 = getelementptr inbounds %struct.word_type, %struct.word_type* %4947, i32 0, i32 1
  %4949 = bitcast %union.FIRST_UNION* %4948 to %struct.FILE_POS*
  %4950 = getelementptr inbounds [20 x i8], [20 x i8]* %num11, i32 0, i32 0
  %4951 = getelementptr inbounds [20 x i8], [20 x i8]* %num22, i32 0, i32 0
  %4952 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 12, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.19, i32 0, i32 0), i32 2, %struct.FILE_POS* %4949, i8* %4950, i8* %4951)
  br label %4961

; <label>:4953                                    ; preds = %4911
  %4954 = load %union.rec*, %union.rec** %y, align 8
  %4955 = bitcast %union.rec* %4954 to %struct.word_type*
  %4956 = getelementptr inbounds %struct.word_type, %struct.word_type* %4955, i32 0, i32 1
  %4957 = bitcast %union.FIRST_UNION* %4956 to %struct.FILE_POS*
  %4958 = getelementptr inbounds [20 x i8], [20 x i8]* %num11, i32 0, i32 0
  %4959 = getelementptr inbounds [20 x i8], [20 x i8]* %num22, i32 0, i32 0
  %4960 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 13, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct.FILE_POS* %4957, i8* %4958, i8* %4959)
  br label %4961

; <label>:4961                                    ; preds = %4953, %4945
  br label %4962

; <label>:4962                                    ; preds = %4961, %4890
  br label %6780

; <label>:4963                                    ; preds = %4887
  br label %4964

; <label>:4964                                    ; preds = %4963, %4763
  %4965 = load i32, i32* %dim, align 4
  %4966 = icmp eq i32 %4965, 1
  br i1 %4966, label %4967, label %4988

; <label>:4967                                    ; preds = %4964
  %4968 = load i32, i32* %dim, align 4
  %4969 = sub nsw i32 1, %4968
  %4970 = sext i32 %4969 to i64
  %4971 = load %union.rec*, %union.rec** %2, align 8
  %4972 = bitcast %union.rec* %4971 to %struct.word_type*
  %4973 = getelementptr inbounds %struct.word_type, %struct.word_type* %4972, i32 0, i32 3
  %4974 = bitcast %union.THIRD_UNION* %4973 to %struct.anon.6*
  %4975 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4974, i32 0, i32 0
  %4976 = getelementptr inbounds [2 x i32], [2 x i32]* %4975, i32 0, i64 %4970
  %4977 = load i32, i32* %4976, align 4
  store i32 %4977, i32* %perp_back, align 4
  %4978 = load i32, i32* %dim, align 4
  %4979 = sub nsw i32 1, %4978
  %4980 = sext i32 %4979 to i64
  %4981 = load %union.rec*, %union.rec** %2, align 8
  %4982 = bitcast %union.rec* %4981 to %struct.word_type*
  %4983 = getelementptr inbounds %struct.word_type, %struct.word_type* %4982, i32 0, i32 3
  %4984 = bitcast %union.THIRD_UNION* %4983 to %struct.anon.6*
  %4985 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4984, i32 0, i32 1
  %4986 = getelementptr inbounds [2 x i32], [2 x i32]* %4985, i32 0, i64 %4980
  %4987 = load i32, i32* %4986, align 4
  store i32 %4987, i32* %perp_fwd, align 4
  br label %5009

; <label>:4988                                    ; preds = %4964
  %4989 = load i32, i32* %dim, align 4
  %4990 = sub nsw i32 1, %4989
  %4991 = sext i32 %4990 to i64
  %4992 = load %union.rec*, %union.rec** %y, align 8
  %4993 = bitcast %union.rec* %4992 to %struct.word_type*
  %4994 = getelementptr inbounds %struct.word_type, %struct.word_type* %4993, i32 0, i32 3
  %4995 = bitcast %union.THIRD_UNION* %4994 to %struct.anon.6*
  %4996 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4995, i32 0, i32 0
  %4997 = getelementptr inbounds [2 x i32], [2 x i32]* %4996, i32 0, i64 %4991
  %4998 = load i32, i32* %4997, align 4
  store i32 %4998, i32* %perp_back, align 4
  %4999 = load i32, i32* %dim, align 4
  %5000 = sub nsw i32 1, %4999
  %5001 = sext i32 %5000 to i64
  %5002 = load %union.rec*, %union.rec** %y, align 8
  %5003 = bitcast %union.rec* %5002 to %struct.word_type*
  %5004 = getelementptr inbounds %struct.word_type, %struct.word_type* %5003, i32 0, i32 3
  %5005 = bitcast %union.THIRD_UNION* %5004 to %struct.anon.6*
  %5006 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5005, i32 0, i32 1
  %5007 = getelementptr inbounds [2 x i32], [2 x i32]* %5006, i32 0, i64 %5001
  %5008 = load i32, i32* %5007, align 4
  store i32 %5008, i32* %perp_fwd, align 4
  br label %5009

; <label>:5009                                    ; preds = %4988, %4967
  %5010 = load %union.rec*, %union.rec** %dest, align 8
  %5011 = load i32, i32* %dim, align 4
  %5012 = sub nsw i32 1, %5011
  call void @Constrained(%union.rec* %5010, %struct.CONSTRAINT* %c, i32 %5012, %union.rec** %junk)
  %5013 = load i32, i32* %perp_back, align 4
  %5014 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 0
  %5015 = load i32, i32* %5014, align 4
  %5016 = icmp sle i32 %5013, %5015
  br i1 %5016, label %5017, label %5029

; <label>:5017                                    ; preds = %5009
  %5018 = load i32, i32* %perp_back, align 4
  %5019 = load i32, i32* %perp_fwd, align 4
  %5020 = add nsw i32 %5018, %5019
  %5021 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %5022 = load i32, i32* %5021, align 4
  %5023 = icmp sle i32 %5020, %5022
  br i1 %5023, label %5024, label %5029

; <label>:5024                                    ; preds = %5017
  %5025 = load i32, i32* %perp_fwd, align 4
  %5026 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 2
  %5027 = load i32, i32* %5026, align 4
  %5028 = icmp sle i32 %5025, %5027
  br i1 %5028, label %5099, label %5029

; <label>:5029                                    ; preds = %5024, %5017, %5009
  store i32 0, i32* %scaled3, align 4
  %5030 = load %union.rec*, %union.rec** %2, align 8
  %5031 = bitcast %union.rec* %5030 to %struct.word_type*
  %5032 = getelementptr inbounds %struct.word_type, %struct.word_type* %5031, i32 0, i32 2
  %5033 = bitcast %union.SECOND_UNION* %5032 to %struct.anon.2*
  %5034 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5033, i32 0, i32 2
  %5035 = load i16, i16* %5034, align 2
  %5036 = lshr i16 %5035, 12
  %5037 = and i16 %5036, 1
  %5038 = zext i16 %5037 to i32
  %5039 = icmp ne i32 %5038, 0
  br i1 %5039, label %5040, label %5094

; <label>:5040                                    ; preds = %5029
  %5041 = load i32, i32* %perp_back, align 4
  %5042 = load i32, i32* %perp_fwd, align 4
  %5043 = add nsw i32 %5041, %5042
  %5044 = icmp sgt i32 %5043, 0
  br i1 %5044, label %5045, label %5094

; <label>:5045                                    ; preds = %5040
  %5046 = load i32, i32* %perp_back, align 4
  %5047 = load i32, i32* %perp_fwd, align 4
  %5048 = call i32 @ScaleToConstraint(i32 %5046, i32 %5047, %struct.CONSTRAINT* %c)
  store i32 %5048, i32* %scale_factor4, align 4
  %5049 = load i32, i32* %scale_factor4, align 4
  %5050 = sitofp i32 %5049 to double
  %5051 = fcmp ogt double %5050, 6.400000e+01
  br i1 %5051, label %5052, label %5093

; <label>:5052                                    ; preds = %5045
  %5053 = getelementptr inbounds [20 x i8], [20 x i8]* %num15, i32 0, i32 0
  %5054 = load i32, i32* %perp_back, align 4
  %5055 = load i32, i32* %perp_fwd, align 4
  %5056 = add nsw i32 %5054, %5055
  %5057 = sitofp i32 %5056 to float
  %5058 = fdiv float %5057, 5.670000e+02
  %5059 = fpext float %5058 to double
  %5060 = call i32 (i8*, i8*, ...) @sprintf(i8* %5053, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double %5059) #3
  %5061 = getelementptr inbounds [20 x i8], [20 x i8]* %num26, i32 0, i32 0
  %5062 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %5063 = load i32, i32* %5062, align 4
  %5064 = sitofp i32 %5063 to float
  %5065 = fdiv float %5064, 5.670000e+02
  %5066 = fpext float %5065 to double
  %5067 = call i32 (i8*, i8*, ...) @sprintf(i8* %5061, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double %5066) #3
  %5068 = load i32, i32* %dim, align 4
  %5069 = sub nsw i32 1, %5068
  %5070 = icmp eq i32 %5069, 1
  br i1 %5070, label %5071, label %5079

; <label>:5071                                    ; preds = %5052
  %5072 = load %union.rec*, %union.rec** %y, align 8
  %5073 = bitcast %union.rec* %5072 to %struct.word_type*
  %5074 = getelementptr inbounds %struct.word_type, %struct.word_type* %5073, i32 0, i32 1
  %5075 = bitcast %union.FIRST_UNION* %5074 to %struct.FILE_POS*
  %5076 = getelementptr inbounds [20 x i8], [20 x i8]* %num15, i32 0, i32 0
  %5077 = getelementptr inbounds [20 x i8], [20 x i8]* %num26, i32 0, i32 0
  %5078 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 6, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i32 0, i32 0), i32 2, %struct.FILE_POS* %5075, i8* %5076, i8* %5077, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  br label %5087

; <label>:5079                                    ; preds = %5052
  %5080 = load %union.rec*, %union.rec** %y, align 8
  %5081 = bitcast %union.rec* %5080 to %struct.word_type*
  %5082 = getelementptr inbounds %struct.word_type, %struct.word_type* %5081, i32 0, i32 1
  %5083 = bitcast %union.FIRST_UNION* %5082 to %struct.FILE_POS*
  %5084 = getelementptr inbounds [20 x i8], [20 x i8]* %num15, i32 0, i32 0
  %5085 = getelementptr inbounds [20 x i8], [20 x i8]* %num26, i32 0, i32 0
  %5086 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 7, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i32 2, %struct.FILE_POS* %5083, i8* %5084, i8* %5085, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  br label %5087

; <label>:5087                                    ; preds = %5079, %5071
  %5088 = load %union.rec*, %union.rec** %y, align 8
  %5089 = load i32, i32* %scale_factor4, align 4
  %5090 = load i32, i32* %dim, align 4
  %5091 = sub nsw i32 1, %5090
  %5092 = call %union.rec* @InterposeScale(%union.rec* %5088, i32 %5089, i32 %5091)
  store %union.rec* %5092, %union.rec** %y, align 8
  store i32 1, i32* %scaled3, align 4
  br label %5093

; <label>:5093                                    ; preds = %5087, %5045
  br label %5094

; <label>:5094                                    ; preds = %5093, %5040, %5029
  %5095 = load i32, i32* %scaled3, align 4
  %5096 = icmp ne i32 %5095, 0
  br i1 %5096, label %5098, label %5097

; <label>:5097                                    ; preds = %5094
  br label %6780

; <label>:5098                                    ; preds = %5094
  br label %5099

; <label>:5099                                    ; preds = %5098, %5024
  %5100 = load %union.rec*, %union.rec** %dest, align 8
  %5101 = load i32, i32* %dim, align 4
  %5102 = sext i32 %5101 to i64
  %5103 = load %union.rec*, %union.rec** %y, align 8
  %5104 = bitcast %union.rec* %5103 to %struct.word_type*
  %5105 = getelementptr inbounds %struct.word_type, %struct.word_type* %5104, i32 0, i32 3
  %5106 = bitcast %union.THIRD_UNION* %5105 to %struct.anon.6*
  %5107 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5106, i32 0, i32 0
  %5108 = getelementptr inbounds [2 x i32], [2 x i32]* %5107, i32 0, i64 %5102
  %5109 = load i32, i32* %5108, align 4
  %5110 = load i32, i32* %dim, align 4
  %5111 = sext i32 %5110 to i64
  %5112 = load %union.rec*, %union.rec** %y, align 8
  %5113 = bitcast %union.rec* %5112 to %struct.word_type*
  %5114 = getelementptr inbounds %struct.word_type, %struct.word_type* %5113, i32 0, i32 3
  %5115 = bitcast %union.THIRD_UNION* %5114 to %struct.anon.6*
  %5116 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5115, i32 0, i32 1
  %5117 = getelementptr inbounds [2 x i32], [2 x i32]* %5116, i32 0, i64 %5111
  %5118 = load i32, i32* %5117, align 4
  %5119 = load i32, i32* %dim, align 4
  call void @AdjustSize(%union.rec* %5100, i32 %5109, i32 %5118, i32 %5119)
  %5120 = load %union.rec*, %union.rec** %dest, align 8
  %5121 = load i32, i32* %perp_back, align 4
  %5122 = load i32, i32* %perp_fwd, align 4
  %5123 = load i32, i32* %dim, align 4
  %5124 = sub nsw i32 1, %5123
  call void @AdjustSize(%union.rec* %5120, i32 %5121, i32 %5122, i32 %5124)
  %5125 = load %union.rec*, %union.rec** %target, align 8
  %5126 = load i32, i32* %dim, align 4
  call void @Constrained(%union.rec* %5125, %struct.CONSTRAINT* %c, i32 %5126, %union.rec** %why)
  %5127 = load %union.rec*, %union.rec** %target_galley, align 8
  %5128 = bitcast %union.rec* %5127 to %struct.word_type*
  %5129 = getelementptr inbounds %struct.word_type, %struct.word_type* %5128, i32 0, i32 0
  %5130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5129, i32 0, i64 0
  %5131 = getelementptr inbounds %struct.LIST, %struct.LIST* %5130, i32 0, i32 0
  %5132 = load %union.rec*, %union.rec** %5131, align 8
  %5133 = bitcast %union.rec* %5132 to %struct.word_type*
  %5134 = getelementptr inbounds %struct.word_type, %struct.word_type* %5133, i32 0, i32 0
  %5135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5134, i32 0, i64 1
  %5136 = getelementptr inbounds %struct.LIST, %struct.LIST* %5135, i32 0, i32 0
  %5137 = load %union.rec*, %union.rec** %5136, align 8
  store %union.rec* %5137, %union.rec** %z, align 8
  br label %5138

; <label>:5138                                    ; preds = %5148, %5099
  %5139 = load %union.rec*, %union.rec** %z, align 8
  %5140 = bitcast %union.rec* %5139 to %struct.word_type*
  %5141 = getelementptr inbounds %struct.word_type, %struct.word_type* %5140, i32 0, i32 1
  %5142 = bitcast %union.FIRST_UNION* %5141 to %struct.anon*
  %5143 = getelementptr inbounds %struct.anon, %struct.anon* %5142, i32 0, i32 0
  %5144 = load i8, i8* %5143, align 1
  %5145 = zext i8 %5144 to i32
  %5146 = icmp eq i32 %5145, 0
  br i1 %5146, label %5147, label %5155

; <label>:5147                                    ; preds = %5138
  br label %5148

; <label>:5148                                    ; preds = %5147
  %5149 = load %union.rec*, %union.rec** %z, align 8
  %5150 = bitcast %union.rec* %5149 to %struct.word_type*
  %5151 = getelementptr inbounds %struct.word_type, %struct.word_type* %5150, i32 0, i32 0
  %5152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5151, i32 0, i64 1
  %5153 = getelementptr inbounds %struct.LIST, %struct.LIST* %5152, i32 0, i32 0
  %5154 = load %union.rec*, %union.rec** %5153, align 8
  store %union.rec* %5154, %union.rec** %z, align 8
  br label %5138

; <label>:5155                                    ; preds = %5138
  %5156 = load %union.rec*, %union.rec** %z, align 8
  %5157 = bitcast %union.rec* %5156 to %struct.word_type*
  %5158 = getelementptr inbounds %struct.word_type, %struct.word_type* %5157, i32 0, i32 1
  %5159 = bitcast %union.FIRST_UNION* %5158 to %struct.anon*
  %5160 = getelementptr inbounds %struct.anon, %struct.anon* %5159, i32 0, i32 0
  %5161 = load i8, i8* %5160, align 1
  %5162 = zext i8 %5161 to i32
  %5163 = icmp sge i32 %5162, 119
  br i1 %5163, label %5164, label %5176

; <label>:5164                                    ; preds = %5155
  %5165 = load %union.rec*, %union.rec** %z, align 8
  %5166 = bitcast %union.rec* %5165 to %struct.word_type*
  %5167 = getelementptr inbounds %struct.word_type, %struct.word_type* %5166, i32 0, i32 1
  %5168 = bitcast %union.FIRST_UNION* %5167 to %struct.anon*
  %5169 = getelementptr inbounds %struct.anon, %struct.anon* %5168, i32 0, i32 0
  %5170 = load i8, i8* %5169, align 1
  %5171 = zext i8 %5170 to i32
  %5172 = icmp sle i32 %5171, 138
  br i1 %5172, label %5173, label %5176

; <label>:5173                                    ; preds = %5164
  %5174 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5175 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %5174, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i32 0, i32 0))
  br label %5176

; <label>:5176                                    ; preds = %5173, %5164, %5155
  %5177 = load i32, i32* %dim, align 4
  %5178 = sext i32 %5177 to i64
  %5179 = load %union.rec*, %union.rec** %z, align 8
  %5180 = bitcast %union.rec* %5179 to %struct.word_type*
  %5181 = getelementptr inbounds %struct.word_type, %struct.word_type* %5180, i32 0, i32 3
  %5182 = bitcast %union.THIRD_UNION* %5181 to %struct.anon.6*
  %5183 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5182, i32 0, i32 0
  %5184 = getelementptr inbounds [2 x i32], [2 x i32]* %5183, i32 0, i64 %5178
  %5185 = load i32, i32* %5184, align 4
  %5186 = icmp sge i32 %5185, 0
  br i1 %5186, label %5187, label %5198

; <label>:5187                                    ; preds = %5176
  %5188 = load i32, i32* %dim, align 4
  %5189 = sext i32 %5188 to i64
  %5190 = load %union.rec*, %union.rec** %z, align 8
  %5191 = bitcast %union.rec* %5190 to %struct.word_type*
  %5192 = getelementptr inbounds %struct.word_type, %struct.word_type* %5191, i32 0, i32 3
  %5193 = bitcast %union.THIRD_UNION* %5192 to %struct.anon.6*
  %5194 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5193, i32 0, i32 1
  %5195 = getelementptr inbounds [2 x i32], [2 x i32]* %5194, i32 0, i64 %5189
  %5196 = load i32, i32* %5195, align 4
  %5197 = icmp sge i32 %5196, 0
  br i1 %5197, label %5201, label %5198

; <label>:5198                                    ; preds = %5187, %5176
  %5199 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5200 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %5199, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0))
  br label %5201

; <label>:5201                                    ; preds = %5198, %5187
  %5202 = load i32, i32* %dim, align 4
  %5203 = sext i32 %5202 to i64
  %5204 = load %union.rec*, %union.rec** %z, align 8
  %5205 = bitcast %union.rec* %5204 to %struct.word_type*
  %5206 = getelementptr inbounds %struct.word_type, %struct.word_type* %5205, i32 0, i32 3
  %5207 = bitcast %union.THIRD_UNION* %5206 to %struct.anon.6*
  %5208 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5207, i32 0, i32 0
  %5209 = getelementptr inbounds [2 x i32], [2 x i32]* %5208, i32 0, i64 %5203
  %5210 = load i32, i32* %5209, align 4
  %5211 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 0
  %5212 = load i32, i32* %5211, align 4
  %5213 = icmp sle i32 %5210, %5212
  br i1 %5213, label %5214, label %5250

; <label>:5214                                    ; preds = %5201
  %5215 = load i32, i32* %dim, align 4
  %5216 = sext i32 %5215 to i64
  %5217 = load %union.rec*, %union.rec** %z, align 8
  %5218 = bitcast %union.rec* %5217 to %struct.word_type*
  %5219 = getelementptr inbounds %struct.word_type, %struct.word_type* %5218, i32 0, i32 3
  %5220 = bitcast %union.THIRD_UNION* %5219 to %struct.anon.6*
  %5221 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5220, i32 0, i32 0
  %5222 = getelementptr inbounds [2 x i32], [2 x i32]* %5221, i32 0, i64 %5216
  %5223 = load i32, i32* %5222, align 4
  %5224 = load i32, i32* %dim, align 4
  %5225 = sext i32 %5224 to i64
  %5226 = load %union.rec*, %union.rec** %z, align 8
  %5227 = bitcast %union.rec* %5226 to %struct.word_type*
  %5228 = getelementptr inbounds %struct.word_type, %struct.word_type* %5227, i32 0, i32 3
  %5229 = bitcast %union.THIRD_UNION* %5228 to %struct.anon.6*
  %5230 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5229, i32 0, i32 1
  %5231 = getelementptr inbounds [2 x i32], [2 x i32]* %5230, i32 0, i64 %5225
  %5232 = load i32, i32* %5231, align 4
  %5233 = add nsw i32 %5223, %5232
  %5234 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %5235 = load i32, i32* %5234, align 4
  %5236 = icmp sle i32 %5233, %5235
  br i1 %5236, label %5237, label %5250

; <label>:5237                                    ; preds = %5214
  %5238 = load i32, i32* %dim, align 4
  %5239 = sext i32 %5238 to i64
  %5240 = load %union.rec*, %union.rec** %z, align 8
  %5241 = bitcast %union.rec* %5240 to %struct.word_type*
  %5242 = getelementptr inbounds %struct.word_type, %struct.word_type* %5241, i32 0, i32 3
  %5243 = bitcast %union.THIRD_UNION* %5242 to %struct.anon.6*
  %5244 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5243, i32 0, i32 1
  %5245 = getelementptr inbounds [2 x i32], [2 x i32]* %5244, i32 0, i64 %5239
  %5246 = load i32, i32* %5245, align 4
  %5247 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 2
  %5248 = load i32, i32* %5247, align 4
  %5249 = icmp sle i32 %5246, %5248
  br i1 %5249, label %5452, label %5250

; <label>:5250                                    ; preds = %5237, %5214, %5201
  store i32 0, i32* %scaled7, align 4
  %5251 = load %union.rec*, %union.rec** %2, align 8
  %5252 = bitcast %union.rec* %5251 to %struct.word_type*
  %5253 = getelementptr inbounds %struct.word_type, %struct.word_type* %5252, i32 0, i32 2
  %5254 = bitcast %union.SECOND_UNION* %5253 to %struct.anon.2*
  %5255 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5254, i32 0, i32 2
  %5256 = load i16, i16* %5255, align 2
  %5257 = lshr i16 %5256, 12
  %5258 = and i16 %5257, 1
  %5259 = zext i16 %5258 to i32
  %5260 = icmp ne i32 %5259, 0
  br i1 %5260, label %5261, label %5371

; <label>:5261                                    ; preds = %5250
  %5262 = load i32, i32* %dim, align 4
  %5263 = sext i32 %5262 to i64
  %5264 = load %union.rec*, %union.rec** %z, align 8
  %5265 = bitcast %union.rec* %5264 to %struct.word_type*
  %5266 = getelementptr inbounds %struct.word_type, %struct.word_type* %5265, i32 0, i32 3
  %5267 = bitcast %union.THIRD_UNION* %5266 to %struct.anon.6*
  %5268 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5267, i32 0, i32 0
  %5269 = getelementptr inbounds [2 x i32], [2 x i32]* %5268, i32 0, i64 %5263
  %5270 = load i32, i32* %5269, align 4
  %5271 = load i32, i32* %dim, align 4
  %5272 = sext i32 %5271 to i64
  %5273 = load %union.rec*, %union.rec** %z, align 8
  %5274 = bitcast %union.rec* %5273 to %struct.word_type*
  %5275 = getelementptr inbounds %struct.word_type, %struct.word_type* %5274, i32 0, i32 3
  %5276 = bitcast %union.THIRD_UNION* %5275 to %struct.anon.6*
  %5277 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5276, i32 0, i32 1
  %5278 = getelementptr inbounds [2 x i32], [2 x i32]* %5277, i32 0, i64 %5272
  %5279 = load i32, i32* %5278, align 4
  %5280 = add nsw i32 %5270, %5279
  %5281 = icmp sgt i32 %5280, 0
  br i1 %5281, label %5282, label %5371

; <label>:5282                                    ; preds = %5261
  %5283 = load %union.rec*, %union.rec** %2, align 8
  %5284 = bitcast %union.rec* %5283 to %struct.head_type*
  %5285 = getelementptr inbounds %struct.head_type, %struct.head_type* %5284, i32 0, i32 11
  %5286 = load %union.rec*, %union.rec** %5285, align 8
  %5287 = load %union.rec*, %union.rec** %why, align 8
  %5288 = icmp ne %union.rec* %5286, %5287
  br i1 %5288, label %5289, label %5371

; <label>:5289                                    ; preds = %5282
  %5290 = load i32, i32* %dim, align 4
  %5291 = sext i32 %5290 to i64
  %5292 = load %union.rec*, %union.rec** %z, align 8
  %5293 = bitcast %union.rec* %5292 to %struct.word_type*
  %5294 = getelementptr inbounds %struct.word_type, %struct.word_type* %5293, i32 0, i32 3
  %5295 = bitcast %union.THIRD_UNION* %5294 to %struct.anon.6*
  %5296 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5295, i32 0, i32 0
  %5297 = getelementptr inbounds [2 x i32], [2 x i32]* %5296, i32 0, i64 %5291
  %5298 = load i32, i32* %5297, align 4
  %5299 = load i32, i32* %dim, align 4
  %5300 = sext i32 %5299 to i64
  %5301 = load %union.rec*, %union.rec** %z, align 8
  %5302 = bitcast %union.rec* %5301 to %struct.word_type*
  %5303 = getelementptr inbounds %struct.word_type, %struct.word_type* %5302, i32 0, i32 3
  %5304 = bitcast %union.THIRD_UNION* %5303 to %struct.anon.6*
  %5305 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5304, i32 0, i32 1
  %5306 = getelementptr inbounds [2 x i32], [2 x i32]* %5305, i32 0, i64 %5300
  %5307 = load i32, i32* %5306, align 4
  %5308 = call i32 @ScaleToConstraint(i32 %5298, i32 %5307, %struct.CONSTRAINT* %c)
  store i32 %5308, i32* %scale_factor8, align 4
  %5309 = load i32, i32* %scale_factor8, align 4
  %5310 = sitofp i32 %5309 to double
  %5311 = fcmp ogt double %5310, 6.400000e+01
  br i1 %5311, label %5312, label %5370

; <label>:5312                                    ; preds = %5289
  %5313 = getelementptr inbounds [20 x i8], [20 x i8]* %num19, i32 0, i32 0
  %5314 = load i32, i32* %dim, align 4
  %5315 = sext i32 %5314 to i64
  %5316 = load %union.rec*, %union.rec** %z, align 8
  %5317 = bitcast %union.rec* %5316 to %struct.word_type*
  %5318 = getelementptr inbounds %struct.word_type, %struct.word_type* %5317, i32 0, i32 3
  %5319 = bitcast %union.THIRD_UNION* %5318 to %struct.anon.6*
  %5320 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5319, i32 0, i32 0
  %5321 = getelementptr inbounds [2 x i32], [2 x i32]* %5320, i32 0, i64 %5315
  %5322 = load i32, i32* %5321, align 4
  %5323 = load i32, i32* %dim, align 4
  %5324 = sext i32 %5323 to i64
  %5325 = load %union.rec*, %union.rec** %z, align 8
  %5326 = bitcast %union.rec* %5325 to %struct.word_type*
  %5327 = getelementptr inbounds %struct.word_type, %struct.word_type* %5326, i32 0, i32 3
  %5328 = bitcast %union.THIRD_UNION* %5327 to %struct.anon.6*
  %5329 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5328, i32 0, i32 1
  %5330 = getelementptr inbounds [2 x i32], [2 x i32]* %5329, i32 0, i64 %5324
  %5331 = load i32, i32* %5330, align 4
  %5332 = add nsw i32 %5322, %5331
  %5333 = sitofp i32 %5332 to float
  %5334 = fdiv float %5333, 5.670000e+02
  %5335 = fpext float %5334 to double
  %5336 = call i32 (i8*, i8*, ...) @sprintf(i8* %5313, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double %5335) #3
  %5337 = getelementptr inbounds [20 x i8], [20 x i8]* %num210, i32 0, i32 0
  %5338 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %5339 = load i32, i32* %5338, align 4
  %5340 = sitofp i32 %5339 to float
  %5341 = fdiv float %5340, 5.670000e+02
  %5342 = fpext float %5341 to double
  %5343 = call i32 (i8*, i8*, ...) @sprintf(i8* %5337, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double %5342) #3
  %5344 = load i32, i32* %dim, align 4
  %5345 = icmp eq i32 %5344, 1
  br i1 %5345, label %5346, label %5354

; <label>:5346                                    ; preds = %5312
  %5347 = load %union.rec*, %union.rec** %y, align 8
  %5348 = bitcast %union.rec* %5347 to %struct.word_type*
  %5349 = getelementptr inbounds %struct.word_type, %struct.word_type* %5348, i32 0, i32 1
  %5350 = bitcast %union.FIRST_UNION* %5349 to %struct.FILE_POS*
  %5351 = getelementptr inbounds [20 x i8], [20 x i8]* %num19, i32 0, i32 0
  %5352 = getelementptr inbounds [20 x i8], [20 x i8]* %num210, i32 0, i32 0
  %5353 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i32 0, i32 0), i32 2, %struct.FILE_POS* %5350, i8* %5351, i8* %5352, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  br label %5362

; <label>:5354                                    ; preds = %5312
  %5355 = load %union.rec*, %union.rec** %y, align 8
  %5356 = bitcast %union.rec* %5355 to %struct.word_type*
  %5357 = getelementptr inbounds %struct.word_type, %struct.word_type* %5356, i32 0, i32 1
  %5358 = bitcast %union.FIRST_UNION* %5357 to %struct.FILE_POS*
  %5359 = getelementptr inbounds [20 x i8], [20 x i8]* %num19, i32 0, i32 0
  %5360 = getelementptr inbounds [20 x i8], [20 x i8]* %num210, i32 0, i32 0
  %5361 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 9, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i32 2, %struct.FILE_POS* %5358, i8* %5359, i8* %5360, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  br label %5362

; <label>:5362                                    ; preds = %5354, %5346
  %5363 = load %union.rec*, %union.rec** %z, align 8
  %5364 = load i32, i32* %dim, align 4
  %5365 = call %union.rec* @InterposeWideOrHigh(%union.rec* %5363, i32 %5364)
  store %union.rec* %5365, %union.rec** %z, align 8
  %5366 = load %union.rec*, %union.rec** %z, align 8
  %5367 = load i32, i32* %scale_factor8, align 4
  %5368 = load i32, i32* %dim, align 4
  %5369 = call %union.rec* @InterposeScale(%union.rec* %5366, i32 %5367, i32 %5368)
  store %union.rec* %5369, %union.rec** %z, align 8
  store i32 1, i32* %scaled7, align 4
  br label %5370

; <label>:5370                                    ; preds = %5362, %5289
  br label %5371

; <label>:5371                                    ; preds = %5370, %5282, %5261, %5250
  %5372 = load i32, i32* %scaled7, align 4
  %5373 = icmp ne i32 %5372, 0
  br i1 %5373, label %5451, label %5374

; <label>:5374                                    ; preds = %5371
  %5375 = load %union.rec*, %union.rec** %why, align 8
  %5376 = load %union.rec*, %union.rec** %2, align 8
  %5377 = bitcast %union.rec* %5376 to %struct.head_type*
  %5378 = getelementptr inbounds %struct.head_type, %struct.head_type* %5377, i32 0, i32 11
  store %union.rec* %5375, %union.rec** %5378, align 8
  %5379 = load i32, i32* %dim, align 4
  %5380 = sext i32 %5379 to i64
  %5381 = load %union.rec*, %union.rec** %z, align 8
  %5382 = bitcast %union.rec* %5381 to %struct.word_type*
  %5383 = getelementptr inbounds %struct.word_type, %struct.word_type* %5382, i32 0, i32 3
  %5384 = bitcast %union.THIRD_UNION* %5383 to %struct.anon.6*
  %5385 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5384, i32 0, i32 0
  %5386 = getelementptr inbounds [2 x i32], [2 x i32]* %5385, i32 0, i64 %5380
  %5387 = load i32, i32* %5386, align 4
  %5388 = load i32, i32* %dim, align 4
  %5389 = sext i32 %5388 to i64
  %5390 = load %union.rec*, %union.rec** %z, align 8
  %5391 = bitcast %union.rec* %5390 to %struct.word_type*
  %5392 = getelementptr inbounds %struct.word_type, %struct.word_type* %5391, i32 0, i32 3
  %5393 = bitcast %union.THIRD_UNION* %5392 to %struct.anon.6*
  %5394 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5393, i32 0, i32 1
  %5395 = getelementptr inbounds [2 x i32], [2 x i32]* %5394, i32 0, i64 %5389
  %5396 = load i32, i32* %5395, align 4
  %5397 = add nsw i32 %5387, %5396
  %5398 = icmp sgt i32 %5397, 0
  br i1 %5398, label %5399, label %5450

; <label>:5399                                    ; preds = %5374
  %5400 = getelementptr inbounds [20 x i8], [20 x i8]* %num111, i32 0, i32 0
  %5401 = load i32, i32* %dim, align 4
  %5402 = sext i32 %5401 to i64
  %5403 = load %union.rec*, %union.rec** %z, align 8
  %5404 = bitcast %union.rec* %5403 to %struct.word_type*
  %5405 = getelementptr inbounds %struct.word_type, %struct.word_type* %5404, i32 0, i32 3
  %5406 = bitcast %union.THIRD_UNION* %5405 to %struct.anon.6*
  %5407 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5406, i32 0, i32 0
  %5408 = getelementptr inbounds [2 x i32], [2 x i32]* %5407, i32 0, i64 %5402
  %5409 = load i32, i32* %5408, align 4
  %5410 = load i32, i32* %dim, align 4
  %5411 = sext i32 %5410 to i64
  %5412 = load %union.rec*, %union.rec** %z, align 8
  %5413 = bitcast %union.rec* %5412 to %struct.word_type*
  %5414 = getelementptr inbounds %struct.word_type, %struct.word_type* %5413, i32 0, i32 3
  %5415 = bitcast %union.THIRD_UNION* %5414 to %struct.anon.6*
  %5416 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5415, i32 0, i32 1
  %5417 = getelementptr inbounds [2 x i32], [2 x i32]* %5416, i32 0, i64 %5411
  %5418 = load i32, i32* %5417, align 4
  %5419 = add nsw i32 %5409, %5418
  %5420 = sitofp i32 %5419 to float
  %5421 = fdiv float %5420, 5.670000e+02
  %5422 = fpext float %5421 to double
  %5423 = call i32 (i8*, i8*, ...) @sprintf(i8* %5400, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double %5422) #3
  %5424 = getelementptr inbounds [20 x i8], [20 x i8]* %num212, i32 0, i32 0
  %5425 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %5426 = load i32, i32* %5425, align 4
  %5427 = sitofp i32 %5426 to float
  %5428 = fdiv float %5427, 5.670000e+02
  %5429 = fpext float %5428 to double
  %5430 = call i32 (i8*, i8*, ...) @sprintf(i8* %5424, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double %5429) #3
  %5431 = load i32, i32* %dim, align 4
  %5432 = icmp eq i32 %5431, 1
  br i1 %5432, label %5433, label %5441

; <label>:5433                                    ; preds = %5399
  %5434 = load %union.rec*, %union.rec** %y, align 8
  %5435 = bitcast %union.rec* %5434 to %struct.word_type*
  %5436 = getelementptr inbounds %struct.word_type, %struct.word_type* %5435, i32 0, i32 1
  %5437 = bitcast %union.FIRST_UNION* %5436 to %struct.FILE_POS*
  %5438 = getelementptr inbounds [20 x i8], [20 x i8]* %num111, i32 0, i32 0
  %5439 = getelementptr inbounds [20 x i8], [20 x i8]* %num212, i32 0, i32 0
  %5440 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 14, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.19, i32 0, i32 0), i32 2, %struct.FILE_POS* %5437, i8* %5438, i8* %5439)
  br label %5449

; <label>:5441                                    ; preds = %5399
  %5442 = load %union.rec*, %union.rec** %y, align 8
  %5443 = bitcast %union.rec* %5442 to %struct.word_type*
  %5444 = getelementptr inbounds %struct.word_type, %struct.word_type* %5443, i32 0, i32 1
  %5445 = bitcast %union.FIRST_UNION* %5444 to %struct.FILE_POS*
  %5446 = getelementptr inbounds [20 x i8], [20 x i8]* %num111, i32 0, i32 0
  %5447 = getelementptr inbounds [20 x i8], [20 x i8]* %num212, i32 0, i32 0
  %5448 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 15, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct.FILE_POS* %5445, i8* %5446, i8* %5447)
  br label %5449

; <label>:5449                                    ; preds = %5441, %5433
  br label %5450

; <label>:5450                                    ; preds = %5449, %5374
  br label %6780

; <label>:5451                                    ; preds = %5371
  br label %5452

; <label>:5452                                    ; preds = %5451, %5237
  %5453 = load %union.rec*, %union.rec** %why, align 8
  %5454 = load %union.rec*, %union.rec** %2, align 8
  %5455 = bitcast %union.rec* %5454 to %struct.head_type*
  %5456 = getelementptr inbounds %struct.head_type, %struct.head_type* %5455, i32 0, i32 11
  store %union.rec* %5453, %union.rec** %5456, align 8
  %5457 = load %union.rec*, %union.rec** %target, align 8
  %5458 = load i32, i32* %dim, align 4
  %5459 = sub nsw i32 1, %5458
  call void @Constrained(%union.rec* %5457, %struct.CONSTRAINT* %c, i32 %5459, %union.rec** %junk)
  %5460 = load %union.rec*, %union.rec** %target_galley, align 8
  %5461 = bitcast %union.rec* %5460 to %struct.word_type*
  %5462 = getelementptr inbounds %struct.word_type, %struct.word_type* %5461, i32 0, i32 0
  %5463 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5462, i32 0, i64 0
  %5464 = getelementptr inbounds %struct.LIST, %struct.LIST* %5463, i32 0, i32 0
  %5465 = load %union.rec*, %union.rec** %5464, align 8
  %5466 = bitcast %union.rec* %5465 to %struct.word_type*
  %5467 = getelementptr inbounds %struct.word_type, %struct.word_type* %5466, i32 0, i32 0
  %5468 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5467, i32 0, i64 1
  %5469 = getelementptr inbounds %struct.LIST, %struct.LIST* %5468, i32 0, i32 0
  %5470 = load %union.rec*, %union.rec** %5469, align 8
  store %union.rec* %5470, %union.rec** %z, align 8
  br label %5471

; <label>:5471                                    ; preds = %5481, %5452
  %5472 = load %union.rec*, %union.rec** %z, align 8
  %5473 = bitcast %union.rec* %5472 to %struct.word_type*
  %5474 = getelementptr inbounds %struct.word_type, %struct.word_type* %5473, i32 0, i32 1
  %5475 = bitcast %union.FIRST_UNION* %5474 to %struct.anon*
  %5476 = getelementptr inbounds %struct.anon, %struct.anon* %5475, i32 0, i32 0
  %5477 = load i8, i8* %5476, align 1
  %5478 = zext i8 %5477 to i32
  %5479 = icmp eq i32 %5478, 0
  br i1 %5479, label %5480, label %5488

; <label>:5480                                    ; preds = %5471
  br label %5481

; <label>:5481                                    ; preds = %5480
  %5482 = load %union.rec*, %union.rec** %z, align 8
  %5483 = bitcast %union.rec* %5482 to %struct.word_type*
  %5484 = getelementptr inbounds %struct.word_type, %struct.word_type* %5483, i32 0, i32 0
  %5485 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5484, i32 0, i64 1
  %5486 = getelementptr inbounds %struct.LIST, %struct.LIST* %5485, i32 0, i32 0
  %5487 = load %union.rec*, %union.rec** %5486, align 8
  store %union.rec* %5487, %union.rec** %z, align 8
  br label %5471

; <label>:5488                                    ; preds = %5471
  %5489 = load %union.rec*, %union.rec** %z, align 8
  %5490 = bitcast %union.rec* %5489 to %struct.word_type*
  %5491 = getelementptr inbounds %struct.word_type, %struct.word_type* %5490, i32 0, i32 1
  %5492 = bitcast %union.FIRST_UNION* %5491 to %struct.anon*
  %5493 = getelementptr inbounds %struct.anon, %struct.anon* %5492, i32 0, i32 0
  %5494 = load i8, i8* %5493, align 1
  %5495 = zext i8 %5494 to i32
  %5496 = icmp sge i32 %5495, 119
  br i1 %5496, label %5497, label %5509

; <label>:5497                                    ; preds = %5488
  %5498 = load %union.rec*, %union.rec** %z, align 8
  %5499 = bitcast %union.rec* %5498 to %struct.word_type*
  %5500 = getelementptr inbounds %struct.word_type, %struct.word_type* %5499, i32 0, i32 1
  %5501 = bitcast %union.FIRST_UNION* %5500 to %struct.anon*
  %5502 = getelementptr inbounds %struct.anon, %struct.anon* %5501, i32 0, i32 0
  %5503 = load i8, i8* %5502, align 1
  %5504 = zext i8 %5503 to i32
  %5505 = icmp sle i32 %5504, 138
  br i1 %5505, label %5506, label %5509

; <label>:5506                                    ; preds = %5497
  %5507 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5508 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %5507, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i32 0, i32 0))
  br label %5509

; <label>:5509                                    ; preds = %5506, %5497, %5488
  %5510 = load i32, i32* %dim, align 4
  %5511 = sub nsw i32 1, %5510
  %5512 = sext i32 %5511 to i64
  %5513 = load %union.rec*, %union.rec** %z, align 8
  %5514 = bitcast %union.rec* %5513 to %struct.word_type*
  %5515 = getelementptr inbounds %struct.word_type, %struct.word_type* %5514, i32 0, i32 3
  %5516 = bitcast %union.THIRD_UNION* %5515 to %struct.anon.6*
  %5517 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5516, i32 0, i32 0
  %5518 = getelementptr inbounds [2 x i32], [2 x i32]* %5517, i32 0, i64 %5512
  %5519 = load i32, i32* %5518, align 4
  %5520 = icmp sge i32 %5519, 0
  br i1 %5520, label %5521, label %5533

; <label>:5521                                    ; preds = %5509
  %5522 = load i32, i32* %dim, align 4
  %5523 = sub nsw i32 1, %5522
  %5524 = sext i32 %5523 to i64
  %5525 = load %union.rec*, %union.rec** %z, align 8
  %5526 = bitcast %union.rec* %5525 to %struct.word_type*
  %5527 = getelementptr inbounds %struct.word_type, %struct.word_type* %5526, i32 0, i32 3
  %5528 = bitcast %union.THIRD_UNION* %5527 to %struct.anon.6*
  %5529 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5528, i32 0, i32 1
  %5530 = getelementptr inbounds [2 x i32], [2 x i32]* %5529, i32 0, i64 %5524
  %5531 = load i32, i32* %5530, align 4
  %5532 = icmp sge i32 %5531, 0
  br i1 %5532, label %5536, label %5533

; <label>:5533                                    ; preds = %5521, %5509
  %5534 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5535 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %5534, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i32 0, i32 0))
  br label %5536

; <label>:5536                                    ; preds = %5533, %5521
  %5537 = load i32, i32* %dim, align 4
  %5538 = sub nsw i32 1, %5537
  %5539 = sext i32 %5538 to i64
  %5540 = load %union.rec*, %union.rec** %z, align 8
  %5541 = bitcast %union.rec* %5540 to %struct.word_type*
  %5542 = getelementptr inbounds %struct.word_type, %struct.word_type* %5541, i32 0, i32 3
  %5543 = bitcast %union.THIRD_UNION* %5542 to %struct.anon.6*
  %5544 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5543, i32 0, i32 0
  %5545 = getelementptr inbounds [2 x i32], [2 x i32]* %5544, i32 0, i64 %5539
  %5546 = load i32, i32* %5545, align 4
  %5547 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 0
  %5548 = load i32, i32* %5547, align 4
  %5549 = icmp sle i32 %5546, %5548
  br i1 %5549, label %5550, label %5589

; <label>:5550                                    ; preds = %5536
  %5551 = load i32, i32* %dim, align 4
  %5552 = sub nsw i32 1, %5551
  %5553 = sext i32 %5552 to i64
  %5554 = load %union.rec*, %union.rec** %z, align 8
  %5555 = bitcast %union.rec* %5554 to %struct.word_type*
  %5556 = getelementptr inbounds %struct.word_type, %struct.word_type* %5555, i32 0, i32 3
  %5557 = bitcast %union.THIRD_UNION* %5556 to %struct.anon.6*
  %5558 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5557, i32 0, i32 0
  %5559 = getelementptr inbounds [2 x i32], [2 x i32]* %5558, i32 0, i64 %5553
  %5560 = load i32, i32* %5559, align 4
  %5561 = load i32, i32* %dim, align 4
  %5562 = sub nsw i32 1, %5561
  %5563 = sext i32 %5562 to i64
  %5564 = load %union.rec*, %union.rec** %z, align 8
  %5565 = bitcast %union.rec* %5564 to %struct.word_type*
  %5566 = getelementptr inbounds %struct.word_type, %struct.word_type* %5565, i32 0, i32 3
  %5567 = bitcast %union.THIRD_UNION* %5566 to %struct.anon.6*
  %5568 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5567, i32 0, i32 1
  %5569 = getelementptr inbounds [2 x i32], [2 x i32]* %5568, i32 0, i64 %5563
  %5570 = load i32, i32* %5569, align 4
  %5571 = add nsw i32 %5560, %5570
  %5572 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %5573 = load i32, i32* %5572, align 4
  %5574 = icmp sle i32 %5571, %5573
  br i1 %5574, label %5575, label %5589

; <label>:5575                                    ; preds = %5550
  %5576 = load i32, i32* %dim, align 4
  %5577 = sub nsw i32 1, %5576
  %5578 = sext i32 %5577 to i64
  %5579 = load %union.rec*, %union.rec** %z, align 8
  %5580 = bitcast %union.rec* %5579 to %struct.word_type*
  %5581 = getelementptr inbounds %struct.word_type, %struct.word_type* %5580, i32 0, i32 3
  %5582 = bitcast %union.THIRD_UNION* %5581 to %struct.anon.6*
  %5583 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5582, i32 0, i32 1
  %5584 = getelementptr inbounds [2 x i32], [2 x i32]* %5583, i32 0, i64 %5578
  %5585 = load i32, i32* %5584, align 4
  %5586 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 2
  %5587 = load i32, i32* %5586, align 4
  %5588 = icmp sle i32 %5585, %5587
  br i1 %5588, label %5717, label %5589

; <label>:5589                                    ; preds = %5575, %5550, %5536
  store i32 0, i32* %scaled13, align 4
  %5590 = load %union.rec*, %union.rec** %2, align 8
  %5591 = bitcast %union.rec* %5590 to %struct.word_type*
  %5592 = getelementptr inbounds %struct.word_type, %struct.word_type* %5591, i32 0, i32 2
  %5593 = bitcast %union.SECOND_UNION* %5592 to %struct.anon.2*
  %5594 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5593, i32 0, i32 2
  %5595 = load i16, i16* %5594, align 2
  %5596 = lshr i16 %5595, 12
  %5597 = and i16 %5596, 1
  %5598 = zext i16 %5597 to i32
  %5599 = icmp ne i32 %5598, 0
  br i1 %5599, label %5600, label %5712

; <label>:5600                                    ; preds = %5589
  %5601 = load i32, i32* %dim, align 4
  %5602 = sub nsw i32 1, %5601
  %5603 = sext i32 %5602 to i64
  %5604 = load %union.rec*, %union.rec** %z, align 8
  %5605 = bitcast %union.rec* %5604 to %struct.word_type*
  %5606 = getelementptr inbounds %struct.word_type, %struct.word_type* %5605, i32 0, i32 3
  %5607 = bitcast %union.THIRD_UNION* %5606 to %struct.anon.6*
  %5608 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5607, i32 0, i32 0
  %5609 = getelementptr inbounds [2 x i32], [2 x i32]* %5608, i32 0, i64 %5603
  %5610 = load i32, i32* %5609, align 4
  %5611 = load i32, i32* %dim, align 4
  %5612 = sub nsw i32 1, %5611
  %5613 = sext i32 %5612 to i64
  %5614 = load %union.rec*, %union.rec** %z, align 8
  %5615 = bitcast %union.rec* %5614 to %struct.word_type*
  %5616 = getelementptr inbounds %struct.word_type, %struct.word_type* %5615, i32 0, i32 3
  %5617 = bitcast %union.THIRD_UNION* %5616 to %struct.anon.6*
  %5618 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5617, i32 0, i32 1
  %5619 = getelementptr inbounds [2 x i32], [2 x i32]* %5618, i32 0, i64 %5613
  %5620 = load i32, i32* %5619, align 4
  %5621 = add nsw i32 %5610, %5620
  %5622 = icmp sgt i32 %5621, 0
  br i1 %5622, label %5623, label %5712

; <label>:5623                                    ; preds = %5600
  %5624 = load i32, i32* %dim, align 4
  %5625 = sub nsw i32 1, %5624
  %5626 = sext i32 %5625 to i64
  %5627 = load %union.rec*, %union.rec** %z, align 8
  %5628 = bitcast %union.rec* %5627 to %struct.word_type*
  %5629 = getelementptr inbounds %struct.word_type, %struct.word_type* %5628, i32 0, i32 3
  %5630 = bitcast %union.THIRD_UNION* %5629 to %struct.anon.6*
  %5631 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5630, i32 0, i32 0
  %5632 = getelementptr inbounds [2 x i32], [2 x i32]* %5631, i32 0, i64 %5626
  %5633 = load i32, i32* %5632, align 4
  %5634 = load i32, i32* %dim, align 4
  %5635 = sub nsw i32 1, %5634
  %5636 = sext i32 %5635 to i64
  %5637 = load %union.rec*, %union.rec** %z, align 8
  %5638 = bitcast %union.rec* %5637 to %struct.word_type*
  %5639 = getelementptr inbounds %struct.word_type, %struct.word_type* %5638, i32 0, i32 3
  %5640 = bitcast %union.THIRD_UNION* %5639 to %struct.anon.6*
  %5641 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5640, i32 0, i32 1
  %5642 = getelementptr inbounds [2 x i32], [2 x i32]* %5641, i32 0, i64 %5636
  %5643 = load i32, i32* %5642, align 4
  %5644 = call i32 @ScaleToConstraint(i32 %5633, i32 %5643, %struct.CONSTRAINT* %c)
  store i32 %5644, i32* %scale_factor14, align 4
  %5645 = load i32, i32* %scale_factor14, align 4
  %5646 = sitofp i32 %5645 to double
  %5647 = fcmp ogt double %5646, 6.400000e+01
  br i1 %5647, label %5648, label %5711

; <label>:5648                                    ; preds = %5623
  %5649 = getelementptr inbounds [20 x i8], [20 x i8]* %num115, i32 0, i32 0
  %5650 = load i32, i32* %dim, align 4
  %5651 = sub nsw i32 1, %5650
  %5652 = sext i32 %5651 to i64
  %5653 = load %union.rec*, %union.rec** %z, align 8
  %5654 = bitcast %union.rec* %5653 to %struct.word_type*
  %5655 = getelementptr inbounds %struct.word_type, %struct.word_type* %5654, i32 0, i32 3
  %5656 = bitcast %union.THIRD_UNION* %5655 to %struct.anon.6*
  %5657 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5656, i32 0, i32 0
  %5658 = getelementptr inbounds [2 x i32], [2 x i32]* %5657, i32 0, i64 %5652
  %5659 = load i32, i32* %5658, align 4
  %5660 = load i32, i32* %dim, align 4
  %5661 = sub nsw i32 1, %5660
  %5662 = sext i32 %5661 to i64
  %5663 = load %union.rec*, %union.rec** %z, align 8
  %5664 = bitcast %union.rec* %5663 to %struct.word_type*
  %5665 = getelementptr inbounds %struct.word_type, %struct.word_type* %5664, i32 0, i32 3
  %5666 = bitcast %union.THIRD_UNION* %5665 to %struct.anon.6*
  %5667 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5666, i32 0, i32 1
  %5668 = getelementptr inbounds [2 x i32], [2 x i32]* %5667, i32 0, i64 %5662
  %5669 = load i32, i32* %5668, align 4
  %5670 = add nsw i32 %5659, %5669
  %5671 = sitofp i32 %5670 to float
  %5672 = fdiv float %5671, 5.670000e+02
  %5673 = fpext float %5672 to double
  %5674 = call i32 (i8*, i8*, ...) @sprintf(i8* %5649, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double %5673) #3
  %5675 = getelementptr inbounds [20 x i8], [20 x i8]* %num216, i32 0, i32 0
  %5676 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %5677 = load i32, i32* %5676, align 4
  %5678 = sitofp i32 %5677 to float
  %5679 = fdiv float %5678, 5.670000e+02
  %5680 = fpext float %5679 to double
  %5681 = call i32 (i8*, i8*, ...) @sprintf(i8* %5675, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double %5680) #3
  %5682 = load i32, i32* %dim, align 4
  %5683 = sub nsw i32 1, %5682
  %5684 = icmp eq i32 %5683, 1
  br i1 %5684, label %5685, label %5693

; <label>:5685                                    ; preds = %5648
  %5686 = load %union.rec*, %union.rec** %y, align 8
  %5687 = bitcast %union.rec* %5686 to %struct.word_type*
  %5688 = getelementptr inbounds %struct.word_type, %struct.word_type* %5687, i32 0, i32 1
  %5689 = bitcast %union.FIRST_UNION* %5688 to %struct.FILE_POS*
  %5690 = getelementptr inbounds [20 x i8], [20 x i8]* %num115, i32 0, i32 0
  %5691 = getelementptr inbounds [20 x i8], [20 x i8]* %num216, i32 0, i32 0
  %5692 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 10, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i32 0, i32 0), i32 2, %struct.FILE_POS* %5689, i8* %5690, i8* %5691, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  br label %5701

; <label>:5693                                    ; preds = %5648
  %5694 = load %union.rec*, %union.rec** %y, align 8
  %5695 = bitcast %union.rec* %5694 to %struct.word_type*
  %5696 = getelementptr inbounds %struct.word_type, %struct.word_type* %5695, i32 0, i32 1
  %5697 = bitcast %union.FIRST_UNION* %5696 to %struct.FILE_POS*
  %5698 = getelementptr inbounds [20 x i8], [20 x i8]* %num115, i32 0, i32 0
  %5699 = getelementptr inbounds [20 x i8], [20 x i8]* %num216, i32 0, i32 0
  %5700 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i32 2, %struct.FILE_POS* %5697, i8* %5698, i8* %5699, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  br label %5701

; <label>:5701                                    ; preds = %5693, %5685
  %5702 = load %union.rec*, %union.rec** %z, align 8
  %5703 = load i32, i32* %dim, align 4
  %5704 = sub nsw i32 1, %5703
  %5705 = call %union.rec* @InterposeWideOrHigh(%union.rec* %5702, i32 %5704)
  store %union.rec* %5705, %union.rec** %z, align 8
  %5706 = load %union.rec*, %union.rec** %z, align 8
  %5707 = load i32, i32* %scale_factor14, align 4
  %5708 = load i32, i32* %dim, align 4
  %5709 = sub nsw i32 1, %5708
  %5710 = call %union.rec* @InterposeScale(%union.rec* %5706, i32 %5707, i32 %5709)
  store %union.rec* %5710, %union.rec** %z, align 8
  store i32 1, i32* %scaled13, align 4
  br label %5711

; <label>:5711                                    ; preds = %5701, %5623
  br label %5712

; <label>:5712                                    ; preds = %5711, %5600, %5589
  %5713 = load i32, i32* %scaled13, align 4
  %5714 = icmp ne i32 %5713, 0
  br i1 %5714, label %5716, label %5715

; <label>:5715                                    ; preds = %5712
  br label %6780

; <label>:5716                                    ; preds = %5712
  br label %5717

; <label>:5717                                    ; preds = %5716, %5575
  %5718 = load %union.rec*, %union.rec** %target, align 8
  %5719 = bitcast %union.rec* %5718 to %struct.word_type*
  %5720 = getelementptr inbounds %struct.word_type, %struct.word_type* %5719, i32 0, i32 2
  %5721 = bitcast %union.SECOND_UNION* %5720 to %struct.anon.2*
  %5722 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5721, i32 0, i32 2
  %5723 = load i16, i16* %5722, align 2
  %5724 = lshr i16 %5723, 3
  %5725 = and i16 %5724, 1
  %5726 = zext i16 %5725 to i32
  %5727 = icmp ne i32 %5726, 0
  br i1 %5727, label %5728, label %5729

; <label>:5728                                    ; preds = %5717
  br label %5838

; <label>:5729                                    ; preds = %5717
  %5730 = load %union.rec*, %union.rec** %target, align 8
  %5731 = bitcast %union.rec* %5730 to %struct.word_type*
  %5732 = getelementptr inbounds %struct.word_type, %struct.word_type* %5731, i32 0, i32 2
  %5733 = bitcast %union.SECOND_UNION* %5732 to %struct.anon.2*
  %5734 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5733, i32 0, i32 2
  %5735 = load i16, i16* %5734, align 2
  %5736 = lshr i16 %5735, 4
  %5737 = and i16 %5736, 1
  %5738 = zext i16 %5737 to i32
  %5739 = icmp ne i32 %5738, 0
  br i1 %5739, label %5740, label %5764

; <label>:5740                                    ; preds = %5729
  %5741 = load %union.rec*, %union.rec** %target, align 8
  %5742 = load i32, i32* %dim, align 4
  %5743 = sub nsw i32 1, %5742
  %5744 = sext i32 %5743 to i64
  %5745 = load %union.rec*, %union.rec** %target_galley, align 8
  %5746 = bitcast %union.rec* %5745 to %struct.word_type*
  %5747 = getelementptr inbounds %struct.word_type, %struct.word_type* %5746, i32 0, i32 3
  %5748 = bitcast %union.THIRD_UNION* %5747 to %struct.anon.6*
  %5749 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5748, i32 0, i32 0
  %5750 = getelementptr inbounds [2 x i32], [2 x i32]* %5749, i32 0, i64 %5744
  %5751 = load i32, i32* %5750, align 4
  %5752 = load i32, i32* %dim, align 4
  %5753 = sub nsw i32 1, %5752
  %5754 = sext i32 %5753 to i64
  %5755 = load %union.rec*, %union.rec** %target_galley, align 8
  %5756 = bitcast %union.rec* %5755 to %struct.word_type*
  %5757 = getelementptr inbounds %struct.word_type, %struct.word_type* %5756, i32 0, i32 3
  %5758 = bitcast %union.THIRD_UNION* %5757 to %struct.anon.6*
  %5759 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5758, i32 0, i32 1
  %5760 = getelementptr inbounds [2 x i32], [2 x i32]* %5759, i32 0, i64 %5754
  %5761 = load i32, i32* %5760, align 4
  %5762 = load i32, i32* %dim, align 4
  %5763 = sub nsw i32 1, %5762
  call void @AdjustSize(%union.rec* %5741, i32 %5751, i32 %5761, i32 %5763)
  br label %5837

; <label>:5764                                    ; preds = %5729
  %5765 = load %union.rec*, %union.rec** %target_galley, align 8
  %5766 = bitcast %union.rec* %5765 to %struct.word_type*
  %5767 = getelementptr inbounds %struct.word_type, %struct.word_type* %5766, i32 0, i32 0
  %5768 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5767, i32 0, i64 0
  %5769 = getelementptr inbounds %struct.LIST, %struct.LIST* %5768, i32 0, i32 0
  %5770 = load %union.rec*, %union.rec** %5769, align 8
  %5771 = bitcast %union.rec* %5770 to %struct.word_type*
  %5772 = getelementptr inbounds %struct.word_type, %struct.word_type* %5771, i32 0, i32 0
  %5773 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5772, i32 0, i64 1
  %5774 = getelementptr inbounds %struct.LIST, %struct.LIST* %5773, i32 0, i32 0
  %5775 = load %union.rec*, %union.rec** %5774, align 8
  store %union.rec* %5775, %union.rec** %z, align 8
  br label %5776

; <label>:5776                                    ; preds = %5786, %5764
  %5777 = load %union.rec*, %union.rec** %z, align 8
  %5778 = bitcast %union.rec* %5777 to %struct.word_type*
  %5779 = getelementptr inbounds %struct.word_type, %struct.word_type* %5778, i32 0, i32 1
  %5780 = bitcast %union.FIRST_UNION* %5779 to %struct.anon*
  %5781 = getelementptr inbounds %struct.anon, %struct.anon* %5780, i32 0, i32 0
  %5782 = load i8, i8* %5781, align 1
  %5783 = zext i8 %5782 to i32
  %5784 = icmp eq i32 %5783, 0
  br i1 %5784, label %5785, label %5793

; <label>:5785                                    ; preds = %5776
  br label %5786

; <label>:5786                                    ; preds = %5785
  %5787 = load %union.rec*, %union.rec** %z, align 8
  %5788 = bitcast %union.rec* %5787 to %struct.word_type*
  %5789 = getelementptr inbounds %struct.word_type, %struct.word_type* %5788, i32 0, i32 0
  %5790 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5789, i32 0, i64 1
  %5791 = getelementptr inbounds %struct.LIST, %struct.LIST* %5790, i32 0, i32 0
  %5792 = load %union.rec*, %union.rec** %5791, align 8
  store %union.rec* %5792, %union.rec** %z, align 8
  br label %5776

; <label>:5793                                    ; preds = %5776
  %5794 = load %union.rec*, %union.rec** %target, align 8
  %5795 = load i32, i32* %dim, align 4
  %5796 = sext i32 %5795 to i64
  %5797 = load %union.rec*, %union.rec** %z, align 8
  %5798 = bitcast %union.rec* %5797 to %struct.word_type*
  %5799 = getelementptr inbounds %struct.word_type, %struct.word_type* %5798, i32 0, i32 3
  %5800 = bitcast %union.THIRD_UNION* %5799 to %struct.anon.6*
  %5801 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5800, i32 0, i32 0
  %5802 = getelementptr inbounds [2 x i32], [2 x i32]* %5801, i32 0, i64 %5796
  %5803 = load i32, i32* %5802, align 4
  %5804 = load i32, i32* %dim, align 4
  %5805 = sext i32 %5804 to i64
  %5806 = load %union.rec*, %union.rec** %z, align 8
  %5807 = bitcast %union.rec* %5806 to %struct.word_type*
  %5808 = getelementptr inbounds %struct.word_type, %struct.word_type* %5807, i32 0, i32 3
  %5809 = bitcast %union.THIRD_UNION* %5808 to %struct.anon.6*
  %5810 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5809, i32 0, i32 1
  %5811 = getelementptr inbounds [2 x i32], [2 x i32]* %5810, i32 0, i64 %5805
  %5812 = load i32, i32* %5811, align 4
  %5813 = load i32, i32* %dim, align 4
  call void @AdjustSize(%union.rec* %5794, i32 %5803, i32 %5812, i32 %5813)
  %5814 = load %union.rec*, %union.rec** %target, align 8
  %5815 = load i32, i32* %dim, align 4
  %5816 = sub nsw i32 1, %5815
  %5817 = sext i32 %5816 to i64
  %5818 = load %union.rec*, %union.rec** %z, align 8
  %5819 = bitcast %union.rec* %5818 to %struct.word_type*
  %5820 = getelementptr inbounds %struct.word_type, %struct.word_type* %5819, i32 0, i32 3
  %5821 = bitcast %union.THIRD_UNION* %5820 to %struct.anon.6*
  %5822 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5821, i32 0, i32 0
  %5823 = getelementptr inbounds [2 x i32], [2 x i32]* %5822, i32 0, i64 %5817
  %5824 = load i32, i32* %5823, align 4
  %5825 = load i32, i32* %dim, align 4
  %5826 = sub nsw i32 1, %5825
  %5827 = sext i32 %5826 to i64
  %5828 = load %union.rec*, %union.rec** %z, align 8
  %5829 = bitcast %union.rec* %5828 to %struct.word_type*
  %5830 = getelementptr inbounds %struct.word_type, %struct.word_type* %5829, i32 0, i32 3
  %5831 = bitcast %union.THIRD_UNION* %5830 to %struct.anon.6*
  %5832 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5831, i32 0, i32 1
  %5833 = getelementptr inbounds [2 x i32], [2 x i32]* %5832, i32 0, i64 %5827
  %5834 = load i32, i32* %5833, align 4
  %5835 = load i32, i32* %dim, align 4
  %5836 = sub nsw i32 1, %5835
  call void @AdjustSize(%union.rec* %5814, i32 %5824, i32 %5834, i32 %5836)
  br label %5837

; <label>:5837                                    ; preds = %5793, %5740
  br label %5838

; <label>:5838                                    ; preds = %5837, %5728
  br label %7209

; <label>:5839                                    ; preds = %2520
  %5840 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5841 = load %union.rec*, %union.rec** %y, align 8
  %5842 = bitcast %union.rec* %5841 to %struct.word_type*
  %5843 = getelementptr inbounds %struct.word_type, %struct.word_type* %5842, i32 0, i32 1
  %5844 = bitcast %union.FIRST_UNION* %5843 to %struct.anon*
  %5845 = getelementptr inbounds %struct.anon, %struct.anon* %5844, i32 0, i32 0
  %5846 = load i8, i8* %5845, align 1
  %5847 = zext i8 %5846 to i32
  %5848 = call i8* @Image(i32 %5847)
  %5849 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0), i32 0, %struct.FILE_POS* %5840, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i8* %5848)
  br label %5850

; <label>:5850                                    ; preds = %5839, %3693, %3674, %3673, %3635, %2996, %2767, %2528
  br label %5851

; <label>:5851                                    ; preds = %5850
  %5852 = load %union.rec*, %union.rec** %link, align 8
  %5853 = bitcast %union.rec* %5852 to %struct.word_type*
  %5854 = getelementptr inbounds %struct.word_type, %struct.word_type* %5853, i32 0, i32 0
  %5855 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5854, i32 0, i64 0
  %5856 = getelementptr inbounds %struct.LIST, %struct.LIST* %5855, i32 0, i32 1
  %5857 = load %union.rec*, %union.rec** %5856, align 8
  store %union.rec* %5857, %union.rec** %link, align 8
  br label %2441

; <label>:5858                                    ; preds = %2441
  %5859 = load %union.rec*, %union.rec** %tg_inners, align 8
  %5860 = icmp ne %union.rec* %5859, null
  br i1 %5860, label %5861, label %5864

; <label>:5861                                    ; preds = %5858
  %5862 = load %union.rec*, %union.rec** %tg_inners, align 8
  %5863 = call i32 @DisposeObject(%union.rec* %5862)
  store %union.rec* null, %union.rec** %tg_inners, align 8
  br label %5864

; <label>:5864                                    ; preds = %5861, %5858
  %5865 = load %union.rec*, %union.rec** %target_galley, align 8
  %5866 = call i32 @DisposeObject(%union.rec* %5865)
  call void @LeaveErrorBlock(i32 0)
  %5867 = load %union.rec*, %union.rec** %2, align 8
  %5868 = bitcast %union.rec* %5867 to %struct.word_type*
  %5869 = getelementptr inbounds %struct.word_type, %struct.word_type* %5868, i32 0, i32 0
  %5870 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5869, i32 0, i64 0
  %5871 = getelementptr inbounds %struct.LIST, %struct.LIST* %5870, i32 0, i32 1
  %5872 = load %union.rec*, %union.rec** %5871, align 8
  store %union.rec* %5872, %union.rec** %link, align 8
  br label %5873

; <label>:5873                                    ; preds = %6095, %5864
  %5874 = load %union.rec*, %union.rec** %link, align 8
  %5875 = load %union.rec*, %union.rec** %2, align 8
  %5876 = icmp ne %union.rec* %5874, %5875
  br i1 %5876, label %5877, label %6102

; <label>:5877                                    ; preds = %5873
  %5878 = load %union.rec*, %union.rec** %link, align 8
  %5879 = bitcast %union.rec* %5878 to %struct.word_type*
  %5880 = getelementptr inbounds %struct.word_type, %struct.word_type* %5879, i32 0, i32 0
  %5881 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5880, i32 0, i64 1
  %5882 = getelementptr inbounds %struct.LIST, %struct.LIST* %5881, i32 0, i32 0
  %5883 = load %union.rec*, %union.rec** %5882, align 8
  store %union.rec* %5883, %union.rec** %y, align 8
  br label %5884

; <label>:5884                                    ; preds = %5894, %5877
  %5885 = load %union.rec*, %union.rec** %y, align 8
  %5886 = bitcast %union.rec* %5885 to %struct.word_type*
  %5887 = getelementptr inbounds %struct.word_type, %struct.word_type* %5886, i32 0, i32 1
  %5888 = bitcast %union.FIRST_UNION* %5887 to %struct.anon*
  %5889 = getelementptr inbounds %struct.anon, %struct.anon* %5888, i32 0, i32 0
  %5890 = load i8, i8* %5889, align 1
  %5891 = zext i8 %5890 to i32
  %5892 = icmp eq i32 %5891, 0
  br i1 %5892, label %5893, label %5901

; <label>:5893                                    ; preds = %5884
  br label %5894

; <label>:5894                                    ; preds = %5893
  %5895 = load %union.rec*, %union.rec** %y, align 8
  %5896 = bitcast %union.rec* %5895 to %struct.word_type*
  %5897 = getelementptr inbounds %struct.word_type, %struct.word_type* %5896, i32 0, i32 0
  %5898 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5897, i32 0, i64 1
  %5899 = getelementptr inbounds %struct.LIST, %struct.LIST* %5898, i32 0, i32 0
  %5900 = load %union.rec*, %union.rec** %5899, align 8
  store %union.rec* %5900, %union.rec** %y, align 8
  br label %5884

; <label>:5901                                    ; preds = %5884
  %5902 = load %union.rec*, %union.rec** %y, align 8
  %5903 = bitcast %union.rec* %5902 to %struct.word_type*
  %5904 = getelementptr inbounds %struct.word_type, %struct.word_type* %5903, i32 0, i32 1
  %5905 = bitcast %union.FIRST_UNION* %5904 to %struct.anon*
  %5906 = getelementptr inbounds %struct.anon, %struct.anon* %5905, i32 0, i32 0
  %5907 = load i8, i8* %5906, align 1
  %5908 = zext i8 %5907 to i32
  switch i32 %5908, label %6093 [
    i32 1, label %5909
    i32 2, label %5909
    i32 6, label %5909
    i32 7, label %5909
    i32 5, label %5909
    i32 4, label %5909
  ]

; <label>:5909                                    ; preds = %5901, %5901, %5901, %5901, %5901, %5901
  %5910 = load %union.rec*, %union.rec** %link, align 8
  %5911 = bitcast %union.rec* %5910 to %struct.word_type*
  %5912 = getelementptr inbounds %struct.word_type, %struct.word_type* %5911, i32 0, i32 0
  %5913 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5912, i32 0, i64 0
  %5914 = getelementptr inbounds %struct.LIST, %struct.LIST* %5913, i32 0, i32 0
  %5915 = load %union.rec*, %union.rec** %5914, align 8
  store %union.rec* %5915, %union.rec** %link, align 8
  %5916 = load %union.rec*, %union.rec** %link, align 8
  %5917 = bitcast %union.rec* %5916 to %struct.word_type*
  %5918 = getelementptr inbounds %struct.word_type, %struct.word_type* %5917, i32 0, i32 0
  %5919 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5918, i32 0, i64 0
  %5920 = getelementptr inbounds %struct.LIST, %struct.LIST* %5919, i32 0, i32 1
  %5921 = load %union.rec*, %union.rec** %5920, align 8
  store %union.rec* %5921, %union.rec** @xx_link, align 8
  %5922 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %5922, %union.rec** @zz_hold, align 8
  %5923 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5924 = bitcast %union.rec* %5923 to %struct.word_type*
  %5925 = getelementptr inbounds %struct.word_type, %struct.word_type* %5924, i32 0, i32 0
  %5926 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5925, i32 0, i64 1
  %5927 = getelementptr inbounds %struct.LIST, %struct.LIST* %5926, i32 0, i32 1
  %5928 = load %union.rec*, %union.rec** %5927, align 8
  %5929 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5930 = icmp eq %union.rec* %5928, %5929
  br i1 %5930, label %5931, label %5932

; <label>:5931                                    ; preds = %5909
  br label %5973

; <label>:5932                                    ; preds = %5909
  %5933 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5934 = bitcast %union.rec* %5933 to %struct.word_type*
  %5935 = getelementptr inbounds %struct.word_type, %struct.word_type* %5934, i32 0, i32 0
  %5936 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5935, i32 0, i64 1
  %5937 = getelementptr inbounds %struct.LIST, %struct.LIST* %5936, i32 0, i32 1
  %5938 = load %union.rec*, %union.rec** %5937, align 8
  store %union.rec* %5938, %union.rec** @zz_res, align 8
  %5939 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5940 = bitcast %union.rec* %5939 to %struct.word_type*
  %5941 = getelementptr inbounds %struct.word_type, %struct.word_type* %5940, i32 0, i32 0
  %5942 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5941, i32 0, i64 1
  %5943 = getelementptr inbounds %struct.LIST, %struct.LIST* %5942, i32 0, i32 0
  %5944 = load %union.rec*, %union.rec** %5943, align 8
  %5945 = load %union.rec*, %union.rec** @zz_res, align 8
  %5946 = bitcast %union.rec* %5945 to %struct.word_type*
  %5947 = getelementptr inbounds %struct.word_type, %struct.word_type* %5946, i32 0, i32 0
  %5948 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5947, i32 0, i64 1
  %5949 = getelementptr inbounds %struct.LIST, %struct.LIST* %5948, i32 0, i32 0
  store %union.rec* %5944, %union.rec** %5949, align 8
  %5950 = load %union.rec*, %union.rec** @zz_res, align 8
  %5951 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5952 = bitcast %union.rec* %5951 to %struct.word_type*
  %5953 = getelementptr inbounds %struct.word_type, %struct.word_type* %5952, i32 0, i32 0
  %5954 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5953, i32 0, i64 1
  %5955 = getelementptr inbounds %struct.LIST, %struct.LIST* %5954, i32 0, i32 0
  %5956 = load %union.rec*, %union.rec** %5955, align 8
  %5957 = bitcast %union.rec* %5956 to %struct.word_type*
  %5958 = getelementptr inbounds %struct.word_type, %struct.word_type* %5957, i32 0, i32 0
  %5959 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5958, i32 0, i64 1
  %5960 = getelementptr inbounds %struct.LIST, %struct.LIST* %5959, i32 0, i32 1
  store %union.rec* %5950, %union.rec** %5960, align 8
  %5961 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5962 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5963 = bitcast %union.rec* %5962 to %struct.word_type*
  %5964 = getelementptr inbounds %struct.word_type, %struct.word_type* %5963, i32 0, i32 0
  %5965 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5964, i32 0, i64 1
  %5966 = getelementptr inbounds %struct.LIST, %struct.LIST* %5965, i32 0, i32 1
  store %union.rec* %5961, %union.rec** %5966, align 8
  %5967 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5968 = bitcast %union.rec* %5967 to %struct.word_type*
  %5969 = getelementptr inbounds %struct.word_type, %struct.word_type* %5968, i32 0, i32 0
  %5970 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5969, i32 0, i64 1
  %5971 = getelementptr inbounds %struct.LIST, %struct.LIST* %5970, i32 0, i32 0
  store %union.rec* %5961, %union.rec** %5971, align 8
  %5972 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %5973

; <label>:5973                                    ; preds = %5932, %5931
  %5974 = phi %union.rec* [ null, %5931 ], [ %5972, %5932 ]
  store %union.rec* %5974, %union.rec** @xx_tmp, align 8
  %5975 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %5975, %union.rec** @zz_hold, align 8
  %5976 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5977 = bitcast %union.rec* %5976 to %struct.word_type*
  %5978 = getelementptr inbounds %struct.word_type, %struct.word_type* %5977, i32 0, i32 0
  %5979 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5978, i32 0, i64 0
  %5980 = getelementptr inbounds %struct.LIST, %struct.LIST* %5979, i32 0, i32 1
  %5981 = load %union.rec*, %union.rec** %5980, align 8
  %5982 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5983 = icmp eq %union.rec* %5981, %5982
  br i1 %5983, label %5984, label %5985

; <label>:5984                                    ; preds = %5973
  br label %6026

; <label>:5985                                    ; preds = %5973
  %5986 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5987 = bitcast %union.rec* %5986 to %struct.word_type*
  %5988 = getelementptr inbounds %struct.word_type, %struct.word_type* %5987, i32 0, i32 0
  %5989 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5988, i32 0, i64 0
  %5990 = getelementptr inbounds %struct.LIST, %struct.LIST* %5989, i32 0, i32 1
  %5991 = load %union.rec*, %union.rec** %5990, align 8
  store %union.rec* %5991, %union.rec** @zz_res, align 8
  %5992 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5993 = bitcast %union.rec* %5992 to %struct.word_type*
  %5994 = getelementptr inbounds %struct.word_type, %struct.word_type* %5993, i32 0, i32 0
  %5995 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5994, i32 0, i64 0
  %5996 = getelementptr inbounds %struct.LIST, %struct.LIST* %5995, i32 0, i32 0
  %5997 = load %union.rec*, %union.rec** %5996, align 8
  %5998 = load %union.rec*, %union.rec** @zz_res, align 8
  %5999 = bitcast %union.rec* %5998 to %struct.word_type*
  %6000 = getelementptr inbounds %struct.word_type, %struct.word_type* %5999, i32 0, i32 0
  %6001 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6000, i32 0, i64 0
  %6002 = getelementptr inbounds %struct.LIST, %struct.LIST* %6001, i32 0, i32 0
  store %union.rec* %5997, %union.rec** %6002, align 8
  %6003 = load %union.rec*, %union.rec** @zz_res, align 8
  %6004 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6005 = bitcast %union.rec* %6004 to %struct.word_type*
  %6006 = getelementptr inbounds %struct.word_type, %struct.word_type* %6005, i32 0, i32 0
  %6007 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6006, i32 0, i64 0
  %6008 = getelementptr inbounds %struct.LIST, %struct.LIST* %6007, i32 0, i32 0
  %6009 = load %union.rec*, %union.rec** %6008, align 8
  %6010 = bitcast %union.rec* %6009 to %struct.word_type*
  %6011 = getelementptr inbounds %struct.word_type, %struct.word_type* %6010, i32 0, i32 0
  %6012 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6011, i32 0, i64 0
  %6013 = getelementptr inbounds %struct.LIST, %struct.LIST* %6012, i32 0, i32 1
  store %union.rec* %6003, %union.rec** %6013, align 8
  %6014 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6015 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6016 = bitcast %union.rec* %6015 to %struct.word_type*
  %6017 = getelementptr inbounds %struct.word_type, %struct.word_type* %6016, i32 0, i32 0
  %6018 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6017, i32 0, i64 0
  %6019 = getelementptr inbounds %struct.LIST, %struct.LIST* %6018, i32 0, i32 1
  store %union.rec* %6014, %union.rec** %6019, align 8
  %6020 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6021 = bitcast %union.rec* %6020 to %struct.word_type*
  %6022 = getelementptr inbounds %struct.word_type, %struct.word_type* %6021, i32 0, i32 0
  %6023 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6022, i32 0, i64 0
  %6024 = getelementptr inbounds %struct.LIST, %struct.LIST* %6023, i32 0, i32 0
  store %union.rec* %6014, %union.rec** %6024, align 8
  %6025 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6026

; <label>:6026                                    ; preds = %5985, %5984
  %6027 = phi %union.rec* [ null, %5984 ], [ %6025, %5985 ]
  %6028 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6028, %union.rec** @zz_hold, align 8
  %6029 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %6029, %union.rec** @zz_hold, align 8
  %6030 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6031 = bitcast %union.rec* %6030 to %struct.word_type*
  %6032 = getelementptr inbounds %struct.word_type, %struct.word_type* %6031, i32 0, i32 1
  %6033 = bitcast %union.FIRST_UNION* %6032 to %struct.anon*
  %6034 = getelementptr inbounds %struct.anon, %struct.anon* %6033, i32 0, i32 0
  %6035 = load i8, i8* %6034, align 1
  %6036 = zext i8 %6035 to i32
  %6037 = icmp eq i32 %6036, 11
  br i1 %6037, label %6047, label %6038

; <label>:6038                                    ; preds = %6026
  %6039 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6040 = bitcast %union.rec* %6039 to %struct.word_type*
  %6041 = getelementptr inbounds %struct.word_type, %struct.word_type* %6040, i32 0, i32 1
  %6042 = bitcast %union.FIRST_UNION* %6041 to %struct.anon*
  %6043 = getelementptr inbounds %struct.anon, %struct.anon* %6042, i32 0, i32 0
  %6044 = load i8, i8* %6043, align 1
  %6045 = zext i8 %6044 to i32
  %6046 = icmp eq i32 %6045, 12
  br i1 %6046, label %6047, label %6055

; <label>:6047                                    ; preds = %6038, %6026
  %6048 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6049 = bitcast %union.rec* %6048 to %struct.word_type*
  %6050 = getelementptr inbounds %struct.word_type, %struct.word_type* %6049, i32 0, i32 1
  %6051 = bitcast %union.FIRST_UNION* %6050 to %struct.anon*
  %6052 = getelementptr inbounds %struct.anon, %struct.anon* %6051, i32 0, i32 1
  %6053 = load i8, i8* %6052, align 1
  %6054 = zext i8 %6053 to i32
  br label %6066

; <label>:6055                                    ; preds = %6038
  %6056 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6057 = bitcast %union.rec* %6056 to %struct.word_type*
  %6058 = getelementptr inbounds %struct.word_type, %struct.word_type* %6057, i32 0, i32 1
  %6059 = bitcast %union.FIRST_UNION* %6058 to %struct.anon*
  %6060 = getelementptr inbounds %struct.anon, %struct.anon* %6059, i32 0, i32 0
  %6061 = load i8, i8* %6060, align 1
  %6062 = zext i8 %6061 to i64
  %6063 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %6062
  %6064 = load i8, i8* %6063, align 1
  %6065 = zext i8 %6064 to i32
  br label %6066

; <label>:6066                                    ; preds = %6055, %6047
  %6067 = phi i32 [ %6054, %6047 ], [ %6065, %6055 ]
  store i32 %6067, i32* @zz_size, align 4
  %6068 = load i32, i32* @zz_size, align 4
  %6069 = sext i32 %6068 to i64
  %6070 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6069
  %6071 = load %union.rec*, %union.rec** %6070, align 8
  %6072 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6073 = bitcast %union.rec* %6072 to %struct.word_type*
  %6074 = getelementptr inbounds %struct.word_type, %struct.word_type* %6073, i32 0, i32 0
  %6075 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6074, i32 0, i64 0
  %6076 = getelementptr inbounds %struct.LIST, %struct.LIST* %6075, i32 0, i32 0
  store %union.rec* %6071, %union.rec** %6076, align 8
  %6077 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6078 = load i32, i32* @zz_size, align 4
  %6079 = sext i32 %6078 to i64
  %6080 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6079
  store %union.rec* %6077, %union.rec** %6080, align 8
  %6081 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %6082 = bitcast %union.rec* %6081 to %struct.word_type*
  %6083 = getelementptr inbounds %struct.word_type, %struct.word_type* %6082, i32 0, i32 0
  %6084 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6083, i32 0, i64 1
  %6085 = getelementptr inbounds %struct.LIST, %struct.LIST* %6084, i32 0, i32 1
  %6086 = load %union.rec*, %union.rec** %6085, align 8
  %6087 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %6088 = icmp eq %union.rec* %6086, %6087
  br i1 %6088, label %6089, label %6092

; <label>:6089                                    ; preds = %6066
  %6090 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %6091 = call i32 @DisposeObject(%union.rec* %6090)
  br label %6092

; <label>:6092                                    ; preds = %6089, %6066
  br label %6094

; <label>:6093                                    ; preds = %5901
  br label %6094

; <label>:6094                                    ; preds = %6093, %6092
  br label %6095

; <label>:6095                                    ; preds = %6094
  %6096 = load %union.rec*, %union.rec** %link, align 8
  %6097 = bitcast %union.rec* %6096 to %struct.word_type*
  %6098 = getelementptr inbounds %struct.word_type, %struct.word_type* %6097, i32 0, i32 0
  %6099 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6098, i32 0, i64 0
  %6100 = getelementptr inbounds %struct.LIST, %struct.LIST* %6099, i32 0, i32 1
  %6101 = load %union.rec*, %union.rec** %6100, align 8
  store %union.rec* %6101, %union.rec** %link, align 8
  br label %5873

; <label>:6102                                    ; preds = %5873
  %6103 = load %union.rec*, %union.rec** %2, align 8
  %6104 = bitcast %union.rec* %6103 to %struct.word_type*
  %6105 = getelementptr inbounds %struct.word_type, %struct.word_type* %6104, i32 0, i32 0
  %6106 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6105, i32 0, i64 0
  %6107 = getelementptr inbounds %struct.LIST, %struct.LIST* %6106, i32 0, i32 1
  %6108 = load %union.rec*, %union.rec** %6107, align 8
  store %union.rec* %6108, %union.rec** %xxstart, align 8
  %6109 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %6109, %union.rec** %xxstop, align 8
  %6110 = load %union.rec*, %union.rec** %target_index, align 8
  %6111 = bitcast %union.rec* %6110 to %struct.word_type*
  %6112 = getelementptr inbounds %struct.word_type, %struct.word_type* %6111, i32 0, i32 0
  %6113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6112, i32 0, i64 1
  %6114 = getelementptr inbounds %struct.LIST, %struct.LIST* %6113, i32 0, i32 1
  %6115 = load %union.rec*, %union.rec** %6114, align 8
  store %union.rec* %6115, %union.rec** %xxdest, align 8
  %6116 = load %union.rec*, %union.rec** %xxstart, align 8
  %6117 = load %union.rec*, %union.rec** %xxstop, align 8
  %6118 = icmp ne %union.rec* %6116, %6117
  br i1 %6118, label %6119, label %6244

; <label>:6119                                    ; preds = %6102
  %6120 = load %union.rec*, %union.rec** %xxstart, align 8
  %6121 = bitcast %union.rec* %6120 to %struct.word_type*
  %6122 = getelementptr inbounds %struct.word_type, %struct.word_type* %6121, i32 0, i32 1
  %6123 = bitcast %union.FIRST_UNION* %6122 to %struct.anon*
  %6124 = getelementptr inbounds %struct.anon, %struct.anon* %6123, i32 0, i32 0
  %6125 = load i8, i8* %6124, align 1
  %6126 = zext i8 %6125 to i32
  %6127 = icmp eq i32 %6126, 0
  br i1 %6127, label %6131, label %6128

; <label>:6128                                    ; preds = %6119
  %6129 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6130 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %6129, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0))
  br label %6131

; <label>:6131                                    ; preds = %6128, %6119
  %6132 = load %union.rec*, %union.rec** %xxstart, align 8
  store %union.rec* %6132, %union.rec** @zz_res, align 8
  %6133 = load %union.rec*, %union.rec** %xxstop, align 8
  store %union.rec* %6133, %union.rec** @zz_hold, align 8
  %6134 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6135 = icmp eq %union.rec* %6134, null
  br i1 %6135, label %6136, label %6138

; <label>:6136                                    ; preds = %6131
  %6137 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6186

; <label>:6138                                    ; preds = %6131
  %6139 = load %union.rec*, %union.rec** @zz_res, align 8
  %6140 = icmp eq %union.rec* %6139, null
  br i1 %6140, label %6141, label %6143

; <label>:6141                                    ; preds = %6138
  %6142 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %6184

; <label>:6143                                    ; preds = %6138
  %6144 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6145 = bitcast %union.rec* %6144 to %struct.word_type*
  %6146 = getelementptr inbounds %struct.word_type, %struct.word_type* %6145, i32 0, i32 0
  %6147 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6146, i32 0, i64 0
  %6148 = getelementptr inbounds %struct.LIST, %struct.LIST* %6147, i32 0, i32 0
  %6149 = load %union.rec*, %union.rec** %6148, align 8
  store %union.rec* %6149, %union.rec** @zz_tmp, align 8
  %6150 = load %union.rec*, %union.rec** @zz_res, align 8
  %6151 = bitcast %union.rec* %6150 to %struct.word_type*
  %6152 = getelementptr inbounds %struct.word_type, %struct.word_type* %6151, i32 0, i32 0
  %6153 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6152, i32 0, i64 0
  %6154 = getelementptr inbounds %struct.LIST, %struct.LIST* %6153, i32 0, i32 0
  %6155 = load %union.rec*, %union.rec** %6154, align 8
  %6156 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6157 = bitcast %union.rec* %6156 to %struct.word_type*
  %6158 = getelementptr inbounds %struct.word_type, %struct.word_type* %6157, i32 0, i32 0
  %6159 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6158, i32 0, i64 0
  %6160 = getelementptr inbounds %struct.LIST, %struct.LIST* %6159, i32 0, i32 0
  store %union.rec* %6155, %union.rec** %6160, align 8
  %6161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6162 = load %union.rec*, %union.rec** @zz_res, align 8
  %6163 = bitcast %union.rec* %6162 to %struct.word_type*
  %6164 = getelementptr inbounds %struct.word_type, %struct.word_type* %6163, i32 0, i32 0
  %6165 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6164, i32 0, i64 0
  %6166 = getelementptr inbounds %struct.LIST, %struct.LIST* %6165, i32 0, i32 0
  %6167 = load %union.rec*, %union.rec** %6166, align 8
  %6168 = bitcast %union.rec* %6167 to %struct.word_type*
  %6169 = getelementptr inbounds %struct.word_type, %struct.word_type* %6168, i32 0, i32 0
  %6170 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6169, i32 0, i64 0
  %6171 = getelementptr inbounds %struct.LIST, %struct.LIST* %6170, i32 0, i32 1
  store %union.rec* %6161, %union.rec** %6171, align 8
  %6172 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6173 = load %union.rec*, %union.rec** @zz_res, align 8
  %6174 = bitcast %union.rec* %6173 to %struct.word_type*
  %6175 = getelementptr inbounds %struct.word_type, %struct.word_type* %6174, i32 0, i32 0
  %6176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6175, i32 0, i64 0
  %6177 = getelementptr inbounds %struct.LIST, %struct.LIST* %6176, i32 0, i32 0
  store %union.rec* %6172, %union.rec** %6177, align 8
  %6178 = load %union.rec*, %union.rec** @zz_res, align 8
  %6179 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6180 = bitcast %union.rec* %6179 to %struct.word_type*
  %6181 = getelementptr inbounds %struct.word_type, %struct.word_type* %6180, i32 0, i32 0
  %6182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6181, i32 0, i64 0
  %6183 = getelementptr inbounds %struct.LIST, %struct.LIST* %6182, i32 0, i32 1
  store %union.rec* %6178, %union.rec** %6183, align 8
  br label %6184

; <label>:6184                                    ; preds = %6143, %6141
  %6185 = phi %union.rec* [ %6142, %6141 ], [ %6178, %6143 ]
  br label %6186

; <label>:6186                                    ; preds = %6184, %6136
  %6187 = phi %union.rec* [ %6137, %6136 ], [ %6185, %6184 ]
  %6188 = load %union.rec*, %union.rec** %xxstart, align 8
  store %union.rec* %6188, %union.rec** @zz_res, align 8
  %6189 = load %union.rec*, %union.rec** %xxdest, align 8
  store %union.rec* %6189, %union.rec** @zz_hold, align 8
  %6190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6191 = icmp eq %union.rec* %6190, null
  br i1 %6191, label %6192, label %6194

; <label>:6192                                    ; preds = %6186
  %6193 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6242

; <label>:6194                                    ; preds = %6186
  %6195 = load %union.rec*, %union.rec** @zz_res, align 8
  %6196 = icmp eq %union.rec* %6195, null
  br i1 %6196, label %6197, label %6199

; <label>:6197                                    ; preds = %6194
  %6198 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %6240

; <label>:6199                                    ; preds = %6194
  %6200 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6201 = bitcast %union.rec* %6200 to %struct.word_type*
  %6202 = getelementptr inbounds %struct.word_type, %struct.word_type* %6201, i32 0, i32 0
  %6203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6202, i32 0, i64 0
  %6204 = getelementptr inbounds %struct.LIST, %struct.LIST* %6203, i32 0, i32 0
  %6205 = load %union.rec*, %union.rec** %6204, align 8
  store %union.rec* %6205, %union.rec** @zz_tmp, align 8
  %6206 = load %union.rec*, %union.rec** @zz_res, align 8
  %6207 = bitcast %union.rec* %6206 to %struct.word_type*
  %6208 = getelementptr inbounds %struct.word_type, %struct.word_type* %6207, i32 0, i32 0
  %6209 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6208, i32 0, i64 0
  %6210 = getelementptr inbounds %struct.LIST, %struct.LIST* %6209, i32 0, i32 0
  %6211 = load %union.rec*, %union.rec** %6210, align 8
  %6212 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6213 = bitcast %union.rec* %6212 to %struct.word_type*
  %6214 = getelementptr inbounds %struct.word_type, %struct.word_type* %6213, i32 0, i32 0
  %6215 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6214, i32 0, i64 0
  %6216 = getelementptr inbounds %struct.LIST, %struct.LIST* %6215, i32 0, i32 0
  store %union.rec* %6211, %union.rec** %6216, align 8
  %6217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6218 = load %union.rec*, %union.rec** @zz_res, align 8
  %6219 = bitcast %union.rec* %6218 to %struct.word_type*
  %6220 = getelementptr inbounds %struct.word_type, %struct.word_type* %6219, i32 0, i32 0
  %6221 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6220, i32 0, i64 0
  %6222 = getelementptr inbounds %struct.LIST, %struct.LIST* %6221, i32 0, i32 0
  %6223 = load %union.rec*, %union.rec** %6222, align 8
  %6224 = bitcast %union.rec* %6223 to %struct.word_type*
  %6225 = getelementptr inbounds %struct.word_type, %struct.word_type* %6224, i32 0, i32 0
  %6226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6225, i32 0, i64 0
  %6227 = getelementptr inbounds %struct.LIST, %struct.LIST* %6226, i32 0, i32 1
  store %union.rec* %6217, %union.rec** %6227, align 8
  %6228 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6229 = load %union.rec*, %union.rec** @zz_res, align 8
  %6230 = bitcast %union.rec* %6229 to %struct.word_type*
  %6231 = getelementptr inbounds %struct.word_type, %struct.word_type* %6230, i32 0, i32 0
  %6232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6231, i32 0, i64 0
  %6233 = getelementptr inbounds %struct.LIST, %struct.LIST* %6232, i32 0, i32 0
  store %union.rec* %6228, %union.rec** %6233, align 8
  %6234 = load %union.rec*, %union.rec** @zz_res, align 8
  %6235 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6236 = bitcast %union.rec* %6235 to %struct.word_type*
  %6237 = getelementptr inbounds %struct.word_type, %struct.word_type* %6236, i32 0, i32 0
  %6238 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6237, i32 0, i64 0
  %6239 = getelementptr inbounds %struct.LIST, %struct.LIST* %6238, i32 0, i32 1
  store %union.rec* %6234, %union.rec** %6239, align 8
  br label %6240

; <label>:6240                                    ; preds = %6199, %6197
  %6241 = phi %union.rec* [ %6198, %6197 ], [ %6234, %6199 ]
  br label %6242

; <label>:6242                                    ; preds = %6240, %6192
  %6243 = phi %union.rec* [ %6193, %6192 ], [ %6241, %6240 ]
  br label %6244

; <label>:6244                                    ; preds = %6242, %6102
  %6245 = load %union.rec*, %union.rec** %2, align 8
  %6246 = bitcast %union.rec* %6245 to %struct.word_type*
  %6247 = getelementptr inbounds %struct.word_type, %struct.word_type* %6246, i32 0, i32 0
  %6248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6247, i32 0, i64 1
  %6249 = getelementptr inbounds %struct.LIST, %struct.LIST* %6248, i32 0, i32 1
  %6250 = load %union.rec*, %union.rec** %6249, align 8
  store %union.rec* %6250, %union.rec** @xx_link, align 8
  %6251 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6251, %union.rec** @zz_hold, align 8
  %6252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6253 = bitcast %union.rec* %6252 to %struct.word_type*
  %6254 = getelementptr inbounds %struct.word_type, %struct.word_type* %6253, i32 0, i32 0
  %6255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6254, i32 0, i64 0
  %6256 = getelementptr inbounds %struct.LIST, %struct.LIST* %6255, i32 0, i32 1
  %6257 = load %union.rec*, %union.rec** %6256, align 8
  %6258 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6259 = icmp eq %union.rec* %6257, %6258
  br i1 %6259, label %6260, label %6261

; <label>:6260                                    ; preds = %6244
  br label %6302

; <label>:6261                                    ; preds = %6244
  %6262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6263 = bitcast %union.rec* %6262 to %struct.word_type*
  %6264 = getelementptr inbounds %struct.word_type, %struct.word_type* %6263, i32 0, i32 0
  %6265 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6264, i32 0, i64 0
  %6266 = getelementptr inbounds %struct.LIST, %struct.LIST* %6265, i32 0, i32 1
  %6267 = load %union.rec*, %union.rec** %6266, align 8
  store %union.rec* %6267, %union.rec** @zz_res, align 8
  %6268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6269 = bitcast %union.rec* %6268 to %struct.word_type*
  %6270 = getelementptr inbounds %struct.word_type, %struct.word_type* %6269, i32 0, i32 0
  %6271 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6270, i32 0, i64 0
  %6272 = getelementptr inbounds %struct.LIST, %struct.LIST* %6271, i32 0, i32 0
  %6273 = load %union.rec*, %union.rec** %6272, align 8
  %6274 = load %union.rec*, %union.rec** @zz_res, align 8
  %6275 = bitcast %union.rec* %6274 to %struct.word_type*
  %6276 = getelementptr inbounds %struct.word_type, %struct.word_type* %6275, i32 0, i32 0
  %6277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6276, i32 0, i64 0
  %6278 = getelementptr inbounds %struct.LIST, %struct.LIST* %6277, i32 0, i32 0
  store %union.rec* %6273, %union.rec** %6278, align 8
  %6279 = load %union.rec*, %union.rec** @zz_res, align 8
  %6280 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6281 = bitcast %union.rec* %6280 to %struct.word_type*
  %6282 = getelementptr inbounds %struct.word_type, %struct.word_type* %6281, i32 0, i32 0
  %6283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6282, i32 0, i64 0
  %6284 = getelementptr inbounds %struct.LIST, %struct.LIST* %6283, i32 0, i32 0
  %6285 = load %union.rec*, %union.rec** %6284, align 8
  %6286 = bitcast %union.rec* %6285 to %struct.word_type*
  %6287 = getelementptr inbounds %struct.word_type, %struct.word_type* %6286, i32 0, i32 0
  %6288 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6287, i32 0, i64 0
  %6289 = getelementptr inbounds %struct.LIST, %struct.LIST* %6288, i32 0, i32 1
  store %union.rec* %6279, %union.rec** %6289, align 8
  %6290 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6291 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6292 = bitcast %union.rec* %6291 to %struct.word_type*
  %6293 = getelementptr inbounds %struct.word_type, %struct.word_type* %6292, i32 0, i32 0
  %6294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6293, i32 0, i64 0
  %6295 = getelementptr inbounds %struct.LIST, %struct.LIST* %6294, i32 0, i32 1
  store %union.rec* %6290, %union.rec** %6295, align 8
  %6296 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6297 = bitcast %union.rec* %6296 to %struct.word_type*
  %6298 = getelementptr inbounds %struct.word_type, %struct.word_type* %6297, i32 0, i32 0
  %6299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6298, i32 0, i64 0
  %6300 = getelementptr inbounds %struct.LIST, %struct.LIST* %6299, i32 0, i32 0
  store %union.rec* %6290, %union.rec** %6300, align 8
  %6301 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6302

; <label>:6302                                    ; preds = %6261, %6260
  %6303 = phi %union.rec* [ null, %6260 ], [ %6301, %6261 ]
  %6304 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6304, %union.rec** @zz_res, align 8
  %6305 = load %union.rec*, %union.rec** %target_index, align 8
  store %union.rec* %6305, %union.rec** @zz_hold, align 8
  %6306 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6307 = icmp eq %union.rec* %6306, null
  br i1 %6307, label %6308, label %6310

; <label>:6308                                    ; preds = %6302
  %6309 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6358

; <label>:6310                                    ; preds = %6302
  %6311 = load %union.rec*, %union.rec** @zz_res, align 8
  %6312 = icmp eq %union.rec* %6311, null
  br i1 %6312, label %6313, label %6315

; <label>:6313                                    ; preds = %6310
  %6314 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %6356

; <label>:6315                                    ; preds = %6310
  %6316 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6317 = bitcast %union.rec* %6316 to %struct.word_type*
  %6318 = getelementptr inbounds %struct.word_type, %struct.word_type* %6317, i32 0, i32 0
  %6319 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6318, i32 0, i64 0
  %6320 = getelementptr inbounds %struct.LIST, %struct.LIST* %6319, i32 0, i32 0
  %6321 = load %union.rec*, %union.rec** %6320, align 8
  store %union.rec* %6321, %union.rec** @zz_tmp, align 8
  %6322 = load %union.rec*, %union.rec** @zz_res, align 8
  %6323 = bitcast %union.rec* %6322 to %struct.word_type*
  %6324 = getelementptr inbounds %struct.word_type, %struct.word_type* %6323, i32 0, i32 0
  %6325 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6324, i32 0, i64 0
  %6326 = getelementptr inbounds %struct.LIST, %struct.LIST* %6325, i32 0, i32 0
  %6327 = load %union.rec*, %union.rec** %6326, align 8
  %6328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6329 = bitcast %union.rec* %6328 to %struct.word_type*
  %6330 = getelementptr inbounds %struct.word_type, %struct.word_type* %6329, i32 0, i32 0
  %6331 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6330, i32 0, i64 0
  %6332 = getelementptr inbounds %struct.LIST, %struct.LIST* %6331, i32 0, i32 0
  store %union.rec* %6327, %union.rec** %6332, align 8
  %6333 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6334 = load %union.rec*, %union.rec** @zz_res, align 8
  %6335 = bitcast %union.rec* %6334 to %struct.word_type*
  %6336 = getelementptr inbounds %struct.word_type, %struct.word_type* %6335, i32 0, i32 0
  %6337 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6336, i32 0, i64 0
  %6338 = getelementptr inbounds %struct.LIST, %struct.LIST* %6337, i32 0, i32 0
  %6339 = load %union.rec*, %union.rec** %6338, align 8
  %6340 = bitcast %union.rec* %6339 to %struct.word_type*
  %6341 = getelementptr inbounds %struct.word_type, %struct.word_type* %6340, i32 0, i32 0
  %6342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6341, i32 0, i64 0
  %6343 = getelementptr inbounds %struct.LIST, %struct.LIST* %6342, i32 0, i32 1
  store %union.rec* %6333, %union.rec** %6343, align 8
  %6344 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6345 = load %union.rec*, %union.rec** @zz_res, align 8
  %6346 = bitcast %union.rec* %6345 to %struct.word_type*
  %6347 = getelementptr inbounds %struct.word_type, %struct.word_type* %6346, i32 0, i32 0
  %6348 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6347, i32 0, i64 0
  %6349 = getelementptr inbounds %struct.LIST, %struct.LIST* %6348, i32 0, i32 0
  store %union.rec* %6344, %union.rec** %6349, align 8
  %6350 = load %union.rec*, %union.rec** @zz_res, align 8
  %6351 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6352 = bitcast %union.rec* %6351 to %struct.word_type*
  %6353 = getelementptr inbounds %struct.word_type, %struct.word_type* %6352, i32 0, i32 0
  %6354 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6353, i32 0, i64 0
  %6355 = getelementptr inbounds %struct.LIST, %struct.LIST* %6354, i32 0, i32 1
  store %union.rec* %6350, %union.rec** %6355, align 8
  br label %6356

; <label>:6356                                    ; preds = %6315, %6313
  %6357 = phi %union.rec* [ %6314, %6313 ], [ %6350, %6315 ]
  br label %6358

; <label>:6358                                    ; preds = %6356, %6308
  %6359 = phi %union.rec* [ %6309, %6308 ], [ %6357, %6356 ]
  %6360 = load %union.rec*, %union.rec** %hd_index, align 8
  %6361 = bitcast %union.rec* %6360 to %struct.word_type*
  %6362 = getelementptr inbounds %struct.word_type, %struct.word_type* %6361, i32 0, i32 1
  %6363 = bitcast %union.FIRST_UNION* %6362 to %struct.anon*
  %6364 = getelementptr inbounds %struct.anon, %struct.anon* %6363, i32 0, i32 0
  %6365 = load i8, i8* %6364, align 1
  %6366 = zext i8 %6365 to i32
  %6367 = icmp eq i32 %6366, 120
  br i1 %6367, label %6371, label %6368

; <label>:6368                                    ; preds = %6358
  %6369 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6370 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %6369, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i32 0, i32 0))
  br label %6371

; <label>:6371                                    ; preds = %6368, %6358
  %6372 = load %union.rec*, %union.rec** %hd_index, align 8
  store %union.rec* %6372, %union.rec** @xx_hold, align 8
  br label %6373

; <label>:6373                                    ; preds = %6533, %6371
  %6374 = load %union.rec*, %union.rec** @xx_hold, align 8
  %6375 = bitcast %union.rec* %6374 to %struct.word_type*
  %6376 = getelementptr inbounds %struct.word_type, %struct.word_type* %6375, i32 0, i32 0
  %6377 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6376, i32 0, i64 1
  %6378 = getelementptr inbounds %struct.LIST, %struct.LIST* %6377, i32 0, i32 1
  %6379 = load %union.rec*, %union.rec** %6378, align 8
  %6380 = load %union.rec*, %union.rec** @xx_hold, align 8
  %6381 = icmp ne %union.rec* %6379, %6380
  br i1 %6381, label %6382, label %6548

; <label>:6382                                    ; preds = %6373
  %6383 = load %union.rec*, %union.rec** @xx_hold, align 8
  %6384 = bitcast %union.rec* %6383 to %struct.word_type*
  %6385 = getelementptr inbounds %struct.word_type, %struct.word_type* %6384, i32 0, i32 0
  %6386 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6385, i32 0, i64 1
  %6387 = getelementptr inbounds %struct.LIST, %struct.LIST* %6386, i32 0, i32 1
  %6388 = load %union.rec*, %union.rec** %6387, align 8
  store %union.rec* %6388, %union.rec** @xx_link, align 8
  %6389 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6389, %union.rec** @zz_hold, align 8
  %6390 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6391 = bitcast %union.rec* %6390 to %struct.word_type*
  %6392 = getelementptr inbounds %struct.word_type, %struct.word_type* %6391, i32 0, i32 0
  %6393 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6392, i32 0, i64 1
  %6394 = getelementptr inbounds %struct.LIST, %struct.LIST* %6393, i32 0, i32 1
  %6395 = load %union.rec*, %union.rec** %6394, align 8
  %6396 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6397 = icmp eq %union.rec* %6395, %6396
  br i1 %6397, label %6398, label %6399

; <label>:6398                                    ; preds = %6382
  br label %6440

; <label>:6399                                    ; preds = %6382
  %6400 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6401 = bitcast %union.rec* %6400 to %struct.word_type*
  %6402 = getelementptr inbounds %struct.word_type, %struct.word_type* %6401, i32 0, i32 0
  %6403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6402, i32 0, i64 1
  %6404 = getelementptr inbounds %struct.LIST, %struct.LIST* %6403, i32 0, i32 1
  %6405 = load %union.rec*, %union.rec** %6404, align 8
  store %union.rec* %6405, %union.rec** @zz_res, align 8
  %6406 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6407 = bitcast %union.rec* %6406 to %struct.word_type*
  %6408 = getelementptr inbounds %struct.word_type, %struct.word_type* %6407, i32 0, i32 0
  %6409 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6408, i32 0, i64 1
  %6410 = getelementptr inbounds %struct.LIST, %struct.LIST* %6409, i32 0, i32 0
  %6411 = load %union.rec*, %union.rec** %6410, align 8
  %6412 = load %union.rec*, %union.rec** @zz_res, align 8
  %6413 = bitcast %union.rec* %6412 to %struct.word_type*
  %6414 = getelementptr inbounds %struct.word_type, %struct.word_type* %6413, i32 0, i32 0
  %6415 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6414, i32 0, i64 1
  %6416 = getelementptr inbounds %struct.LIST, %struct.LIST* %6415, i32 0, i32 0
  store %union.rec* %6411, %union.rec** %6416, align 8
  %6417 = load %union.rec*, %union.rec** @zz_res, align 8
  %6418 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6419 = bitcast %union.rec* %6418 to %struct.word_type*
  %6420 = getelementptr inbounds %struct.word_type, %struct.word_type* %6419, i32 0, i32 0
  %6421 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6420, i32 0, i64 1
  %6422 = getelementptr inbounds %struct.LIST, %struct.LIST* %6421, i32 0, i32 0
  %6423 = load %union.rec*, %union.rec** %6422, align 8
  %6424 = bitcast %union.rec* %6423 to %struct.word_type*
  %6425 = getelementptr inbounds %struct.word_type, %struct.word_type* %6424, i32 0, i32 0
  %6426 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6425, i32 0, i64 1
  %6427 = getelementptr inbounds %struct.LIST, %struct.LIST* %6426, i32 0, i32 1
  store %union.rec* %6417, %union.rec** %6427, align 8
  %6428 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6429 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6430 = bitcast %union.rec* %6429 to %struct.word_type*
  %6431 = getelementptr inbounds %struct.word_type, %struct.word_type* %6430, i32 0, i32 0
  %6432 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6431, i32 0, i64 1
  %6433 = getelementptr inbounds %struct.LIST, %struct.LIST* %6432, i32 0, i32 1
  store %union.rec* %6428, %union.rec** %6433, align 8
  %6434 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6435 = bitcast %union.rec* %6434 to %struct.word_type*
  %6436 = getelementptr inbounds %struct.word_type, %struct.word_type* %6435, i32 0, i32 0
  %6437 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6436, i32 0, i64 1
  %6438 = getelementptr inbounds %struct.LIST, %struct.LIST* %6437, i32 0, i32 0
  store %union.rec* %6428, %union.rec** %6438, align 8
  %6439 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6440

; <label>:6440                                    ; preds = %6399, %6398
  %6441 = phi %union.rec* [ null, %6398 ], [ %6439, %6399 ]
  %6442 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6442, %union.rec** @zz_hold, align 8
  %6443 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6444 = bitcast %union.rec* %6443 to %struct.word_type*
  %6445 = getelementptr inbounds %struct.word_type, %struct.word_type* %6444, i32 0, i32 0
  %6446 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6445, i32 0, i64 0
  %6447 = getelementptr inbounds %struct.LIST, %struct.LIST* %6446, i32 0, i32 1
  %6448 = load %union.rec*, %union.rec** %6447, align 8
  %6449 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6450 = icmp eq %union.rec* %6448, %6449
  br i1 %6450, label %6451, label %6452

; <label>:6451                                    ; preds = %6440
  br label %6493

; <label>:6452                                    ; preds = %6440
  %6453 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6454 = bitcast %union.rec* %6453 to %struct.word_type*
  %6455 = getelementptr inbounds %struct.word_type, %struct.word_type* %6454, i32 0, i32 0
  %6456 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6455, i32 0, i64 0
  %6457 = getelementptr inbounds %struct.LIST, %struct.LIST* %6456, i32 0, i32 1
  %6458 = load %union.rec*, %union.rec** %6457, align 8
  store %union.rec* %6458, %union.rec** @zz_res, align 8
  %6459 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6460 = bitcast %union.rec* %6459 to %struct.word_type*
  %6461 = getelementptr inbounds %struct.word_type, %struct.word_type* %6460, i32 0, i32 0
  %6462 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6461, i32 0, i64 0
  %6463 = getelementptr inbounds %struct.LIST, %struct.LIST* %6462, i32 0, i32 0
  %6464 = load %union.rec*, %union.rec** %6463, align 8
  %6465 = load %union.rec*, %union.rec** @zz_res, align 8
  %6466 = bitcast %union.rec* %6465 to %struct.word_type*
  %6467 = getelementptr inbounds %struct.word_type, %struct.word_type* %6466, i32 0, i32 0
  %6468 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6467, i32 0, i64 0
  %6469 = getelementptr inbounds %struct.LIST, %struct.LIST* %6468, i32 0, i32 0
  store %union.rec* %6464, %union.rec** %6469, align 8
  %6470 = load %union.rec*, %union.rec** @zz_res, align 8
  %6471 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6472 = bitcast %union.rec* %6471 to %struct.word_type*
  %6473 = getelementptr inbounds %struct.word_type, %struct.word_type* %6472, i32 0, i32 0
  %6474 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6473, i32 0, i64 0
  %6475 = getelementptr inbounds %struct.LIST, %struct.LIST* %6474, i32 0, i32 0
  %6476 = load %union.rec*, %union.rec** %6475, align 8
  %6477 = bitcast %union.rec* %6476 to %struct.word_type*
  %6478 = getelementptr inbounds %struct.word_type, %struct.word_type* %6477, i32 0, i32 0
  %6479 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6478, i32 0, i64 0
  %6480 = getelementptr inbounds %struct.LIST, %struct.LIST* %6479, i32 0, i32 1
  store %union.rec* %6470, %union.rec** %6480, align 8
  %6481 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6482 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6483 = bitcast %union.rec* %6482 to %struct.word_type*
  %6484 = getelementptr inbounds %struct.word_type, %struct.word_type* %6483, i32 0, i32 0
  %6485 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6484, i32 0, i64 0
  %6486 = getelementptr inbounds %struct.LIST, %struct.LIST* %6485, i32 0, i32 1
  store %union.rec* %6481, %union.rec** %6486, align 8
  %6487 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6488 = bitcast %union.rec* %6487 to %struct.word_type*
  %6489 = getelementptr inbounds %struct.word_type, %struct.word_type* %6488, i32 0, i32 0
  %6490 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6489, i32 0, i64 0
  %6491 = getelementptr inbounds %struct.LIST, %struct.LIST* %6490, i32 0, i32 0
  store %union.rec* %6481, %union.rec** %6491, align 8
  %6492 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6493

; <label>:6493                                    ; preds = %6452, %6451
  %6494 = phi %union.rec* [ null, %6451 ], [ %6492, %6452 ]
  %6495 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6495, %union.rec** @zz_hold, align 8
  %6496 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %6496, %union.rec** @zz_hold, align 8
  %6497 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6498 = bitcast %union.rec* %6497 to %struct.word_type*
  %6499 = getelementptr inbounds %struct.word_type, %struct.word_type* %6498, i32 0, i32 1
  %6500 = bitcast %union.FIRST_UNION* %6499 to %struct.anon*
  %6501 = getelementptr inbounds %struct.anon, %struct.anon* %6500, i32 0, i32 0
  %6502 = load i8, i8* %6501, align 1
  %6503 = zext i8 %6502 to i32
  %6504 = icmp eq i32 %6503, 11
  br i1 %6504, label %6514, label %6505

; <label>:6505                                    ; preds = %6493
  %6506 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6507 = bitcast %union.rec* %6506 to %struct.word_type*
  %6508 = getelementptr inbounds %struct.word_type, %struct.word_type* %6507, i32 0, i32 1
  %6509 = bitcast %union.FIRST_UNION* %6508 to %struct.anon*
  %6510 = getelementptr inbounds %struct.anon, %struct.anon* %6509, i32 0, i32 0
  %6511 = load i8, i8* %6510, align 1
  %6512 = zext i8 %6511 to i32
  %6513 = icmp eq i32 %6512, 12
  br i1 %6513, label %6514, label %6522

; <label>:6514                                    ; preds = %6505, %6493
  %6515 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6516 = bitcast %union.rec* %6515 to %struct.word_type*
  %6517 = getelementptr inbounds %struct.word_type, %struct.word_type* %6516, i32 0, i32 1
  %6518 = bitcast %union.FIRST_UNION* %6517 to %struct.anon*
  %6519 = getelementptr inbounds %struct.anon, %struct.anon* %6518, i32 0, i32 1
  %6520 = load i8, i8* %6519, align 1
  %6521 = zext i8 %6520 to i32
  br label %6533

; <label>:6522                                    ; preds = %6505
  %6523 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6524 = bitcast %union.rec* %6523 to %struct.word_type*
  %6525 = getelementptr inbounds %struct.word_type, %struct.word_type* %6524, i32 0, i32 1
  %6526 = bitcast %union.FIRST_UNION* %6525 to %struct.anon*
  %6527 = getelementptr inbounds %struct.anon, %struct.anon* %6526, i32 0, i32 0
  %6528 = load i8, i8* %6527, align 1
  %6529 = zext i8 %6528 to i64
  %6530 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %6529
  %6531 = load i8, i8* %6530, align 1
  %6532 = zext i8 %6531 to i32
  br label %6533

; <label>:6533                                    ; preds = %6522, %6514
  %6534 = phi i32 [ %6521, %6514 ], [ %6532, %6522 ]
  store i32 %6534, i32* @zz_size, align 4
  %6535 = load i32, i32* @zz_size, align 4
  %6536 = sext i32 %6535 to i64
  %6537 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6536
  %6538 = load %union.rec*, %union.rec** %6537, align 8
  %6539 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6540 = bitcast %union.rec* %6539 to %struct.word_type*
  %6541 = getelementptr inbounds %struct.word_type, %struct.word_type* %6540, i32 0, i32 0
  %6542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6541, i32 0, i64 0
  %6543 = getelementptr inbounds %struct.LIST, %struct.LIST* %6542, i32 0, i32 0
  store %union.rec* %6538, %union.rec** %6543, align 8
  %6544 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6545 = load i32, i32* @zz_size, align 4
  %6546 = sext i32 %6545 to i64
  %6547 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6546
  store %union.rec* %6544, %union.rec** %6547, align 8
  br label %6373

; <label>:6548                                    ; preds = %6373
  br label %6549

; <label>:6549                                    ; preds = %6709, %6548
  %6550 = load %union.rec*, %union.rec** @xx_hold, align 8
  %6551 = bitcast %union.rec* %6550 to %struct.word_type*
  %6552 = getelementptr inbounds %struct.word_type, %struct.word_type* %6551, i32 0, i32 0
  %6553 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6552, i32 0, i64 0
  %6554 = getelementptr inbounds %struct.LIST, %struct.LIST* %6553, i32 0, i32 1
  %6555 = load %union.rec*, %union.rec** %6554, align 8
  %6556 = load %union.rec*, %union.rec** @xx_hold, align 8
  %6557 = icmp ne %union.rec* %6555, %6556
  br i1 %6557, label %6558, label %6724

; <label>:6558                                    ; preds = %6549
  %6559 = load %union.rec*, %union.rec** @xx_hold, align 8
  %6560 = bitcast %union.rec* %6559 to %struct.word_type*
  %6561 = getelementptr inbounds %struct.word_type, %struct.word_type* %6560, i32 0, i32 0
  %6562 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6561, i32 0, i64 0
  %6563 = getelementptr inbounds %struct.LIST, %struct.LIST* %6562, i32 0, i32 1
  %6564 = load %union.rec*, %union.rec** %6563, align 8
  store %union.rec* %6564, %union.rec** @xx_link, align 8
  %6565 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6565, %union.rec** @zz_hold, align 8
  %6566 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6567 = bitcast %union.rec* %6566 to %struct.word_type*
  %6568 = getelementptr inbounds %struct.word_type, %struct.word_type* %6567, i32 0, i32 0
  %6569 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6568, i32 0, i64 1
  %6570 = getelementptr inbounds %struct.LIST, %struct.LIST* %6569, i32 0, i32 1
  %6571 = load %union.rec*, %union.rec** %6570, align 8
  %6572 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6573 = icmp eq %union.rec* %6571, %6572
  br i1 %6573, label %6574, label %6575

; <label>:6574                                    ; preds = %6558
  br label %6616

; <label>:6575                                    ; preds = %6558
  %6576 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6577 = bitcast %union.rec* %6576 to %struct.word_type*
  %6578 = getelementptr inbounds %struct.word_type, %struct.word_type* %6577, i32 0, i32 0
  %6579 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6578, i32 0, i64 1
  %6580 = getelementptr inbounds %struct.LIST, %struct.LIST* %6579, i32 0, i32 1
  %6581 = load %union.rec*, %union.rec** %6580, align 8
  store %union.rec* %6581, %union.rec** @zz_res, align 8
  %6582 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6583 = bitcast %union.rec* %6582 to %struct.word_type*
  %6584 = getelementptr inbounds %struct.word_type, %struct.word_type* %6583, i32 0, i32 0
  %6585 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6584, i32 0, i64 1
  %6586 = getelementptr inbounds %struct.LIST, %struct.LIST* %6585, i32 0, i32 0
  %6587 = load %union.rec*, %union.rec** %6586, align 8
  %6588 = load %union.rec*, %union.rec** @zz_res, align 8
  %6589 = bitcast %union.rec* %6588 to %struct.word_type*
  %6590 = getelementptr inbounds %struct.word_type, %struct.word_type* %6589, i32 0, i32 0
  %6591 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6590, i32 0, i64 1
  %6592 = getelementptr inbounds %struct.LIST, %struct.LIST* %6591, i32 0, i32 0
  store %union.rec* %6587, %union.rec** %6592, align 8
  %6593 = load %union.rec*, %union.rec** @zz_res, align 8
  %6594 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6595 = bitcast %union.rec* %6594 to %struct.word_type*
  %6596 = getelementptr inbounds %struct.word_type, %struct.word_type* %6595, i32 0, i32 0
  %6597 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6596, i32 0, i64 1
  %6598 = getelementptr inbounds %struct.LIST, %struct.LIST* %6597, i32 0, i32 0
  %6599 = load %union.rec*, %union.rec** %6598, align 8
  %6600 = bitcast %union.rec* %6599 to %struct.word_type*
  %6601 = getelementptr inbounds %struct.word_type, %struct.word_type* %6600, i32 0, i32 0
  %6602 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6601, i32 0, i64 1
  %6603 = getelementptr inbounds %struct.LIST, %struct.LIST* %6602, i32 0, i32 1
  store %union.rec* %6593, %union.rec** %6603, align 8
  %6604 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6605 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6606 = bitcast %union.rec* %6605 to %struct.word_type*
  %6607 = getelementptr inbounds %struct.word_type, %struct.word_type* %6606, i32 0, i32 0
  %6608 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6607, i32 0, i64 1
  %6609 = getelementptr inbounds %struct.LIST, %struct.LIST* %6608, i32 0, i32 1
  store %union.rec* %6604, %union.rec** %6609, align 8
  %6610 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6611 = bitcast %union.rec* %6610 to %struct.word_type*
  %6612 = getelementptr inbounds %struct.word_type, %struct.word_type* %6611, i32 0, i32 0
  %6613 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6612, i32 0, i64 1
  %6614 = getelementptr inbounds %struct.LIST, %struct.LIST* %6613, i32 0, i32 0
  store %union.rec* %6604, %union.rec** %6614, align 8
  %6615 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6616

; <label>:6616                                    ; preds = %6575, %6574
  %6617 = phi %union.rec* [ null, %6574 ], [ %6615, %6575 ]
  %6618 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6618, %union.rec** @zz_hold, align 8
  %6619 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6620 = bitcast %union.rec* %6619 to %struct.word_type*
  %6621 = getelementptr inbounds %struct.word_type, %struct.word_type* %6620, i32 0, i32 0
  %6622 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6621, i32 0, i64 0
  %6623 = getelementptr inbounds %struct.LIST, %struct.LIST* %6622, i32 0, i32 1
  %6624 = load %union.rec*, %union.rec** %6623, align 8
  %6625 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6626 = icmp eq %union.rec* %6624, %6625
  br i1 %6626, label %6627, label %6628

; <label>:6627                                    ; preds = %6616
  br label %6669

; <label>:6628                                    ; preds = %6616
  %6629 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6630 = bitcast %union.rec* %6629 to %struct.word_type*
  %6631 = getelementptr inbounds %struct.word_type, %struct.word_type* %6630, i32 0, i32 0
  %6632 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6631, i32 0, i64 0
  %6633 = getelementptr inbounds %struct.LIST, %struct.LIST* %6632, i32 0, i32 1
  %6634 = load %union.rec*, %union.rec** %6633, align 8
  store %union.rec* %6634, %union.rec** @zz_res, align 8
  %6635 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6636 = bitcast %union.rec* %6635 to %struct.word_type*
  %6637 = getelementptr inbounds %struct.word_type, %struct.word_type* %6636, i32 0, i32 0
  %6638 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6637, i32 0, i64 0
  %6639 = getelementptr inbounds %struct.LIST, %struct.LIST* %6638, i32 0, i32 0
  %6640 = load %union.rec*, %union.rec** %6639, align 8
  %6641 = load %union.rec*, %union.rec** @zz_res, align 8
  %6642 = bitcast %union.rec* %6641 to %struct.word_type*
  %6643 = getelementptr inbounds %struct.word_type, %struct.word_type* %6642, i32 0, i32 0
  %6644 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6643, i32 0, i64 0
  %6645 = getelementptr inbounds %struct.LIST, %struct.LIST* %6644, i32 0, i32 0
  store %union.rec* %6640, %union.rec** %6645, align 8
  %6646 = load %union.rec*, %union.rec** @zz_res, align 8
  %6647 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6648 = bitcast %union.rec* %6647 to %struct.word_type*
  %6649 = getelementptr inbounds %struct.word_type, %struct.word_type* %6648, i32 0, i32 0
  %6650 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6649, i32 0, i64 0
  %6651 = getelementptr inbounds %struct.LIST, %struct.LIST* %6650, i32 0, i32 0
  %6652 = load %union.rec*, %union.rec** %6651, align 8
  %6653 = bitcast %union.rec* %6652 to %struct.word_type*
  %6654 = getelementptr inbounds %struct.word_type, %struct.word_type* %6653, i32 0, i32 0
  %6655 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6654, i32 0, i64 0
  %6656 = getelementptr inbounds %struct.LIST, %struct.LIST* %6655, i32 0, i32 1
  store %union.rec* %6646, %union.rec** %6656, align 8
  %6657 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6658 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6659 = bitcast %union.rec* %6658 to %struct.word_type*
  %6660 = getelementptr inbounds %struct.word_type, %struct.word_type* %6659, i32 0, i32 0
  %6661 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6660, i32 0, i64 0
  %6662 = getelementptr inbounds %struct.LIST, %struct.LIST* %6661, i32 0, i32 1
  store %union.rec* %6657, %union.rec** %6662, align 8
  %6663 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6664 = bitcast %union.rec* %6663 to %struct.word_type*
  %6665 = getelementptr inbounds %struct.word_type, %struct.word_type* %6664, i32 0, i32 0
  %6666 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6665, i32 0, i64 0
  %6667 = getelementptr inbounds %struct.LIST, %struct.LIST* %6666, i32 0, i32 0
  store %union.rec* %6657, %union.rec** %6667, align 8
  %6668 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6669

; <label>:6669                                    ; preds = %6628, %6627
  %6670 = phi %union.rec* [ null, %6627 ], [ %6668, %6628 ]
  %6671 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6671, %union.rec** @zz_hold, align 8
  %6672 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %6672, %union.rec** @zz_hold, align 8
  %6673 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6674 = bitcast %union.rec* %6673 to %struct.word_type*
  %6675 = getelementptr inbounds %struct.word_type, %struct.word_type* %6674, i32 0, i32 1
  %6676 = bitcast %union.FIRST_UNION* %6675 to %struct.anon*
  %6677 = getelementptr inbounds %struct.anon, %struct.anon* %6676, i32 0, i32 0
  %6678 = load i8, i8* %6677, align 1
  %6679 = zext i8 %6678 to i32
  %6680 = icmp eq i32 %6679, 11
  br i1 %6680, label %6690, label %6681

; <label>:6681                                    ; preds = %6669
  %6682 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6683 = bitcast %union.rec* %6682 to %struct.word_type*
  %6684 = getelementptr inbounds %struct.word_type, %struct.word_type* %6683, i32 0, i32 1
  %6685 = bitcast %union.FIRST_UNION* %6684 to %struct.anon*
  %6686 = getelementptr inbounds %struct.anon, %struct.anon* %6685, i32 0, i32 0
  %6687 = load i8, i8* %6686, align 1
  %6688 = zext i8 %6687 to i32
  %6689 = icmp eq i32 %6688, 12
  br i1 %6689, label %6690, label %6698

; <label>:6690                                    ; preds = %6681, %6669
  %6691 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6692 = bitcast %union.rec* %6691 to %struct.word_type*
  %6693 = getelementptr inbounds %struct.word_type, %struct.word_type* %6692, i32 0, i32 1
  %6694 = bitcast %union.FIRST_UNION* %6693 to %struct.anon*
  %6695 = getelementptr inbounds %struct.anon, %struct.anon* %6694, i32 0, i32 1
  %6696 = load i8, i8* %6695, align 1
  %6697 = zext i8 %6696 to i32
  br label %6709

; <label>:6698                                    ; preds = %6681
  %6699 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6700 = bitcast %union.rec* %6699 to %struct.word_type*
  %6701 = getelementptr inbounds %struct.word_type, %struct.word_type* %6700, i32 0, i32 1
  %6702 = bitcast %union.FIRST_UNION* %6701 to %struct.anon*
  %6703 = getelementptr inbounds %struct.anon, %struct.anon* %6702, i32 0, i32 0
  %6704 = load i8, i8* %6703, align 1
  %6705 = zext i8 %6704 to i64
  %6706 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %6705
  %6707 = load i8, i8* %6706, align 1
  %6708 = zext i8 %6707 to i32
  br label %6709

; <label>:6709                                    ; preds = %6698, %6690
  %6710 = phi i32 [ %6697, %6690 ], [ %6708, %6698 ]
  store i32 %6710, i32* @zz_size, align 4
  %6711 = load i32, i32* @zz_size, align 4
  %6712 = sext i32 %6711 to i64
  %6713 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6712
  %6714 = load %union.rec*, %union.rec** %6713, align 8
  %6715 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6716 = bitcast %union.rec* %6715 to %struct.word_type*
  %6717 = getelementptr inbounds %struct.word_type, %struct.word_type* %6716, i32 0, i32 0
  %6718 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6717, i32 0, i64 0
  %6719 = getelementptr inbounds %struct.LIST, %struct.LIST* %6718, i32 0, i32 0
  store %union.rec* %6714, %union.rec** %6719, align 8
  %6720 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6721 = load i32, i32* @zz_size, align 4
  %6722 = sext i32 %6721 to i64
  %6723 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6722
  store %union.rec* %6720, %union.rec** %6723, align 8
  br label %6549

; <label>:6724                                    ; preds = %6549
  %6725 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %6725, %union.rec** @zz_hold, align 8
  %6726 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %6726, %union.rec** @zz_hold, align 8
  %6727 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6728 = bitcast %union.rec* %6727 to %struct.word_type*
  %6729 = getelementptr inbounds %struct.word_type, %struct.word_type* %6728, i32 0, i32 1
  %6730 = bitcast %union.FIRST_UNION* %6729 to %struct.anon*
  %6731 = getelementptr inbounds %struct.anon, %struct.anon* %6730, i32 0, i32 0
  %6732 = load i8, i8* %6731, align 1
  %6733 = zext i8 %6732 to i32
  %6734 = icmp eq i32 %6733, 11
  br i1 %6734, label %6744, label %6735

; <label>:6735                                    ; preds = %6724
  %6736 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6737 = bitcast %union.rec* %6736 to %struct.word_type*
  %6738 = getelementptr inbounds %struct.word_type, %struct.word_type* %6737, i32 0, i32 1
  %6739 = bitcast %union.FIRST_UNION* %6738 to %struct.anon*
  %6740 = getelementptr inbounds %struct.anon, %struct.anon* %6739, i32 0, i32 0
  %6741 = load i8, i8* %6740, align 1
  %6742 = zext i8 %6741 to i32
  %6743 = icmp eq i32 %6742, 12
  br i1 %6743, label %6744, label %6752

; <label>:6744                                    ; preds = %6735, %6724
  %6745 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6746 = bitcast %union.rec* %6745 to %struct.word_type*
  %6747 = getelementptr inbounds %struct.word_type, %struct.word_type* %6746, i32 0, i32 1
  %6748 = bitcast %union.FIRST_UNION* %6747 to %struct.anon*
  %6749 = getelementptr inbounds %struct.anon, %struct.anon* %6748, i32 0, i32 1
  %6750 = load i8, i8* %6749, align 1
  %6751 = zext i8 %6750 to i32
  br label %6763

; <label>:6752                                    ; preds = %6735
  %6753 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6754 = bitcast %union.rec* %6753 to %struct.word_type*
  %6755 = getelementptr inbounds %struct.word_type, %struct.word_type* %6754, i32 0, i32 1
  %6756 = bitcast %union.FIRST_UNION* %6755 to %struct.anon*
  %6757 = getelementptr inbounds %struct.anon, %struct.anon* %6756, i32 0, i32 0
  %6758 = load i8, i8* %6757, align 1
  %6759 = zext i8 %6758 to i64
  %6760 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %6759
  %6761 = load i8, i8* %6760, align 1
  %6762 = zext i8 %6761 to i32
  br label %6763

; <label>:6763                                    ; preds = %6752, %6744
  %6764 = phi i32 [ %6751, %6744 ], [ %6762, %6752 ]
  store i32 %6764, i32* @zz_size, align 4
  %6765 = load i32, i32* @zz_size, align 4
  %6766 = sext i32 %6765 to i64
  %6767 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6766
  %6768 = load %union.rec*, %union.rec** %6767, align 8
  %6769 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6770 = bitcast %union.rec* %6769 to %struct.word_type*
  %6771 = getelementptr inbounds %struct.word_type, %struct.word_type* %6770, i32 0, i32 0
  %6772 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6771, i32 0, i64 0
  %6773 = getelementptr inbounds %struct.LIST, %struct.LIST* %6772, i32 0, i32 0
  store %union.rec* %6768, %union.rec** %6773, align 8
  %6774 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6775 = load i32, i32* @zz_size, align 4
  %6776 = sext i32 %6775 to i64
  %6777 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6776
  store %union.rec* %6774, %union.rec** %6777, align 8
  %6778 = load %union.rec*, %union.rec** %hd_inners, align 8
  %6779 = load %union.rec**, %union.rec*** %3, align 8
  store %union.rec* %6778, %union.rec** %6779, align 8
  store i32 4, i32* %1
  br label %9922

; <label>:6780                                    ; preds = %5715, %5450, %5097, %4962, %3634, %2417, %1457, %1138
  call void @LeaveErrorBlock(i32 1)
  %6781 = load %union.rec*, %union.rec** %tg_inners, align 8
  %6782 = icmp ne %union.rec* %6781, null
  br i1 %6782, label %6783, label %6786

; <label>:6783                                    ; preds = %6780
  %6784 = load %union.rec*, %union.rec** %tg_inners, align 8
  %6785 = call i32 @DisposeObject(%union.rec* %6784)
  store %union.rec* null, %union.rec** %tg_inners, align 8
  br label %6786

; <label>:6786                                    ; preds = %6783, %6780
  %6787 = load %union.rec*, %union.rec** %target_galley, align 8
  %6788 = call i32 @DisposeObject(%union.rec* %6787)
  %6789 = load %union.rec*, %union.rec** %2, align 8
  %6790 = bitcast %union.rec* %6789 to %struct.word_type*
  %6791 = getelementptr inbounds %struct.word_type, %struct.word_type* %6790, i32 0, i32 2
  %6792 = bitcast %union.SECOND_UNION* %6791 to %struct.anon.2*
  %6793 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6792, i32 0, i32 0
  %6794 = load i8, i8* %6793, align 1
  %6795 = zext i8 %6794 to i32
  %6796 = icmp eq i32 %6795, 133
  br i1 %6796, label %6797, label %6929

; <label>:6797                                    ; preds = %6786
  %6798 = load %union.rec*, %union.rec** %2, align 8
  %6799 = bitcast %union.rec* %6798 to %struct.word_type*
  %6800 = getelementptr inbounds %struct.word_type, %struct.word_type* %6799, i32 0, i32 2
  %6801 = bitcast %union.SECOND_UNION* %6800 to %struct.anon.2*
  %6802 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6801, i32 0, i32 2
  %6803 = load i16, i16* %6802, align 2
  %6804 = lshr i16 %6803, 1
  %6805 = and i16 %6804, 1
  %6806 = zext i16 %6805 to i32
  %6807 = icmp ne i32 %6806, 0
  br i1 %6807, label %6929, label %6808

; <label>:6808                                    ; preds = %6797
  %6809 = load %union.rec*, %union.rec** %hd_index, align 8
  %6810 = bitcast %union.rec* %6809 to %struct.word_type*
  %6811 = getelementptr inbounds %struct.word_type, %struct.word_type* %6810, i32 0, i32 0
  %6812 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6811, i32 0, i64 1
  %6813 = getelementptr inbounds %struct.LIST, %struct.LIST* %6812, i32 0, i32 1
  %6814 = load %union.rec*, %union.rec** %6813, align 8
  store %union.rec* %6814, %union.rec** @xx_link, align 8
  %6815 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6815, %union.rec** @zz_hold, align 8
  %6816 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6817 = bitcast %union.rec* %6816 to %struct.word_type*
  %6818 = getelementptr inbounds %struct.word_type, %struct.word_type* %6817, i32 0, i32 0
  %6819 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6818, i32 0, i64 0
  %6820 = getelementptr inbounds %struct.LIST, %struct.LIST* %6819, i32 0, i32 1
  %6821 = load %union.rec*, %union.rec** %6820, align 8
  %6822 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6823 = icmp eq %union.rec* %6821, %6822
  br i1 %6823, label %6824, label %6825

; <label>:6824                                    ; preds = %6808
  br label %6866

; <label>:6825                                    ; preds = %6808
  %6826 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6827 = bitcast %union.rec* %6826 to %struct.word_type*
  %6828 = getelementptr inbounds %struct.word_type, %struct.word_type* %6827, i32 0, i32 0
  %6829 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6828, i32 0, i64 0
  %6830 = getelementptr inbounds %struct.LIST, %struct.LIST* %6829, i32 0, i32 1
  %6831 = load %union.rec*, %union.rec** %6830, align 8
  store %union.rec* %6831, %union.rec** @zz_res, align 8
  %6832 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6833 = bitcast %union.rec* %6832 to %struct.word_type*
  %6834 = getelementptr inbounds %struct.word_type, %struct.word_type* %6833, i32 0, i32 0
  %6835 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6834, i32 0, i64 0
  %6836 = getelementptr inbounds %struct.LIST, %struct.LIST* %6835, i32 0, i32 0
  %6837 = load %union.rec*, %union.rec** %6836, align 8
  %6838 = load %union.rec*, %union.rec** @zz_res, align 8
  %6839 = bitcast %union.rec* %6838 to %struct.word_type*
  %6840 = getelementptr inbounds %struct.word_type, %struct.word_type* %6839, i32 0, i32 0
  %6841 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6840, i32 0, i64 0
  %6842 = getelementptr inbounds %struct.LIST, %struct.LIST* %6841, i32 0, i32 0
  store %union.rec* %6837, %union.rec** %6842, align 8
  %6843 = load %union.rec*, %union.rec** @zz_res, align 8
  %6844 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6845 = bitcast %union.rec* %6844 to %struct.word_type*
  %6846 = getelementptr inbounds %struct.word_type, %struct.word_type* %6845, i32 0, i32 0
  %6847 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6846, i32 0, i64 0
  %6848 = getelementptr inbounds %struct.LIST, %struct.LIST* %6847, i32 0, i32 0
  %6849 = load %union.rec*, %union.rec** %6848, align 8
  %6850 = bitcast %union.rec* %6849 to %struct.word_type*
  %6851 = getelementptr inbounds %struct.word_type, %struct.word_type* %6850, i32 0, i32 0
  %6852 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6851, i32 0, i64 0
  %6853 = getelementptr inbounds %struct.LIST, %struct.LIST* %6852, i32 0, i32 1
  store %union.rec* %6843, %union.rec** %6853, align 8
  %6854 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6855 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6856 = bitcast %union.rec* %6855 to %struct.word_type*
  %6857 = getelementptr inbounds %struct.word_type, %struct.word_type* %6856, i32 0, i32 0
  %6858 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6857, i32 0, i64 0
  %6859 = getelementptr inbounds %struct.LIST, %struct.LIST* %6858, i32 0, i32 1
  store %union.rec* %6854, %union.rec** %6859, align 8
  %6860 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6861 = bitcast %union.rec* %6860 to %struct.word_type*
  %6862 = getelementptr inbounds %struct.word_type, %struct.word_type* %6861, i32 0, i32 0
  %6863 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6862, i32 0, i64 0
  %6864 = getelementptr inbounds %struct.LIST, %struct.LIST* %6863, i32 0, i32 0
  store %union.rec* %6854, %union.rec** %6864, align 8
  %6865 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6866

; <label>:6866                                    ; preds = %6825, %6824
  %6867 = phi %union.rec* [ null, %6824 ], [ %6865, %6825 ]
  %6868 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6868, %union.rec** @zz_res, align 8
  %6869 = load %union.rec*, %union.rec** %target_index, align 8
  %6870 = bitcast %union.rec* %6869 to %struct.word_type*
  %6871 = getelementptr inbounds %struct.word_type, %struct.word_type* %6870, i32 0, i32 0
  %6872 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6871, i32 0, i64 1
  %6873 = getelementptr inbounds %struct.LIST, %struct.LIST* %6872, i32 0, i32 1
  %6874 = load %union.rec*, %union.rec** %6873, align 8
  store %union.rec* %6874, %union.rec** @zz_hold, align 8
  %6875 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6876 = icmp eq %union.rec* %6875, null
  br i1 %6876, label %6877, label %6879

; <label>:6877                                    ; preds = %6866
  %6878 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6927

; <label>:6879                                    ; preds = %6866
  %6880 = load %union.rec*, %union.rec** @zz_res, align 8
  %6881 = icmp eq %union.rec* %6880, null
  br i1 %6881, label %6882, label %6884

; <label>:6882                                    ; preds = %6879
  %6883 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %6925

; <label>:6884                                    ; preds = %6879
  %6885 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6886 = bitcast %union.rec* %6885 to %struct.word_type*
  %6887 = getelementptr inbounds %struct.word_type, %struct.word_type* %6886, i32 0, i32 0
  %6888 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6887, i32 0, i64 0
  %6889 = getelementptr inbounds %struct.LIST, %struct.LIST* %6888, i32 0, i32 0
  %6890 = load %union.rec*, %union.rec** %6889, align 8
  store %union.rec* %6890, %union.rec** @zz_tmp, align 8
  %6891 = load %union.rec*, %union.rec** @zz_res, align 8
  %6892 = bitcast %union.rec* %6891 to %struct.word_type*
  %6893 = getelementptr inbounds %struct.word_type, %struct.word_type* %6892, i32 0, i32 0
  %6894 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6893, i32 0, i64 0
  %6895 = getelementptr inbounds %struct.LIST, %struct.LIST* %6894, i32 0, i32 0
  %6896 = load %union.rec*, %union.rec** %6895, align 8
  %6897 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6898 = bitcast %union.rec* %6897 to %struct.word_type*
  %6899 = getelementptr inbounds %struct.word_type, %struct.word_type* %6898, i32 0, i32 0
  %6900 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6899, i32 0, i64 0
  %6901 = getelementptr inbounds %struct.LIST, %struct.LIST* %6900, i32 0, i32 0
  store %union.rec* %6896, %union.rec** %6901, align 8
  %6902 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6903 = load %union.rec*, %union.rec** @zz_res, align 8
  %6904 = bitcast %union.rec* %6903 to %struct.word_type*
  %6905 = getelementptr inbounds %struct.word_type, %struct.word_type* %6904, i32 0, i32 0
  %6906 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6905, i32 0, i64 0
  %6907 = getelementptr inbounds %struct.LIST, %struct.LIST* %6906, i32 0, i32 0
  %6908 = load %union.rec*, %union.rec** %6907, align 8
  %6909 = bitcast %union.rec* %6908 to %struct.word_type*
  %6910 = getelementptr inbounds %struct.word_type, %struct.word_type* %6909, i32 0, i32 0
  %6911 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6910, i32 0, i64 0
  %6912 = getelementptr inbounds %struct.LIST, %struct.LIST* %6911, i32 0, i32 1
  store %union.rec* %6902, %union.rec** %6912, align 8
  %6913 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6914 = load %union.rec*, %union.rec** @zz_res, align 8
  %6915 = bitcast %union.rec* %6914 to %struct.word_type*
  %6916 = getelementptr inbounds %struct.word_type, %struct.word_type* %6915, i32 0, i32 0
  %6917 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6916, i32 0, i64 0
  %6918 = getelementptr inbounds %struct.LIST, %struct.LIST* %6917, i32 0, i32 0
  store %union.rec* %6913, %union.rec** %6918, align 8
  %6919 = load %union.rec*, %union.rec** @zz_res, align 8
  %6920 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6921 = bitcast %union.rec* %6920 to %struct.word_type*
  %6922 = getelementptr inbounds %struct.word_type, %struct.word_type* %6921, i32 0, i32 0
  %6923 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6922, i32 0, i64 0
  %6924 = getelementptr inbounds %struct.LIST, %struct.LIST* %6923, i32 0, i32 1
  store %union.rec* %6919, %union.rec** %6924, align 8
  br label %6925

; <label>:6925                                    ; preds = %6884, %6882
  %6926 = phi %union.rec* [ %6883, %6882 ], [ %6919, %6884 ]
  br label %6927

; <label>:6927                                    ; preds = %6925, %6877
  %6928 = phi %union.rec* [ %6878, %6877 ], [ %6926, %6925 ]
  br label %7055

; <label>:6929                                    ; preds = %6797, %6786
  %6930 = load %union.rec*, %union.rec** %hd_index, align 8
  %6931 = bitcast %union.rec* %6930 to %struct.word_type*
  %6932 = getelementptr inbounds %struct.word_type, %struct.word_type* %6931, i32 0, i32 0
  %6933 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6932, i32 0, i64 1
  %6934 = getelementptr inbounds %struct.LIST, %struct.LIST* %6933, i32 0, i32 1
  %6935 = load %union.rec*, %union.rec** %6934, align 8
  store %union.rec* %6935, %union.rec** @xx_link, align 8
  %6936 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6936, %union.rec** @zz_hold, align 8
  %6937 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6938 = bitcast %union.rec* %6937 to %struct.word_type*
  %6939 = getelementptr inbounds %struct.word_type, %struct.word_type* %6938, i32 0, i32 0
  %6940 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6939, i32 0, i64 0
  %6941 = getelementptr inbounds %struct.LIST, %struct.LIST* %6940, i32 0, i32 1
  %6942 = load %union.rec*, %union.rec** %6941, align 8
  %6943 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6944 = icmp eq %union.rec* %6942, %6943
  br i1 %6944, label %6945, label %6946

; <label>:6945                                    ; preds = %6929
  br label %6987

; <label>:6946                                    ; preds = %6929
  %6947 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6948 = bitcast %union.rec* %6947 to %struct.word_type*
  %6949 = getelementptr inbounds %struct.word_type, %struct.word_type* %6948, i32 0, i32 0
  %6950 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6949, i32 0, i64 0
  %6951 = getelementptr inbounds %struct.LIST, %struct.LIST* %6950, i32 0, i32 1
  %6952 = load %union.rec*, %union.rec** %6951, align 8
  store %union.rec* %6952, %union.rec** @zz_res, align 8
  %6953 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6954 = bitcast %union.rec* %6953 to %struct.word_type*
  %6955 = getelementptr inbounds %struct.word_type, %struct.word_type* %6954, i32 0, i32 0
  %6956 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6955, i32 0, i64 0
  %6957 = getelementptr inbounds %struct.LIST, %struct.LIST* %6956, i32 0, i32 0
  %6958 = load %union.rec*, %union.rec** %6957, align 8
  %6959 = load %union.rec*, %union.rec** @zz_res, align 8
  %6960 = bitcast %union.rec* %6959 to %struct.word_type*
  %6961 = getelementptr inbounds %struct.word_type, %struct.word_type* %6960, i32 0, i32 0
  %6962 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6961, i32 0, i64 0
  %6963 = getelementptr inbounds %struct.LIST, %struct.LIST* %6962, i32 0, i32 0
  store %union.rec* %6958, %union.rec** %6963, align 8
  %6964 = load %union.rec*, %union.rec** @zz_res, align 8
  %6965 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6966 = bitcast %union.rec* %6965 to %struct.word_type*
  %6967 = getelementptr inbounds %struct.word_type, %struct.word_type* %6966, i32 0, i32 0
  %6968 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6967, i32 0, i64 0
  %6969 = getelementptr inbounds %struct.LIST, %struct.LIST* %6968, i32 0, i32 0
  %6970 = load %union.rec*, %union.rec** %6969, align 8
  %6971 = bitcast %union.rec* %6970 to %struct.word_type*
  %6972 = getelementptr inbounds %struct.word_type, %struct.word_type* %6971, i32 0, i32 0
  %6973 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6972, i32 0, i64 0
  %6974 = getelementptr inbounds %struct.LIST, %struct.LIST* %6973, i32 0, i32 1
  store %union.rec* %6964, %union.rec** %6974, align 8
  %6975 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6976 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6977 = bitcast %union.rec* %6976 to %struct.word_type*
  %6978 = getelementptr inbounds %struct.word_type, %struct.word_type* %6977, i32 0, i32 0
  %6979 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6978, i32 0, i64 0
  %6980 = getelementptr inbounds %struct.LIST, %struct.LIST* %6979, i32 0, i32 1
  store %union.rec* %6975, %union.rec** %6980, align 8
  %6981 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6982 = bitcast %union.rec* %6981 to %struct.word_type*
  %6983 = getelementptr inbounds %struct.word_type, %struct.word_type* %6982, i32 0, i32 0
  %6984 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6983, i32 0, i64 0
  %6985 = getelementptr inbounds %struct.LIST, %struct.LIST* %6984, i32 0, i32 0
  store %union.rec* %6975, %union.rec** %6985, align 8
  %6986 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6987

; <label>:6987                                    ; preds = %6946, %6945
  %6988 = phi %union.rec* [ null, %6945 ], [ %6986, %6946 ]
  %6989 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6989, %union.rec** @zz_res, align 8
  %6990 = load %union.rec*, %union.rec** %target_index, align 8
  %6991 = bitcast %union.rec* %6990 to %struct.word_type*
  %6992 = getelementptr inbounds %struct.word_type, %struct.word_type* %6991, i32 0, i32 0
  %6993 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6992, i32 0, i64 1
  %6994 = getelementptr inbounds %struct.LIST, %struct.LIST* %6993, i32 0, i32 1
  %6995 = load %union.rec*, %union.rec** %6994, align 8
  %6996 = bitcast %union.rec* %6995 to %struct.word_type*
  %6997 = getelementptr inbounds %struct.word_type, %struct.word_type* %6996, i32 0, i32 0
  %6998 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6997, i32 0, i64 0
  %6999 = getelementptr inbounds %struct.LIST, %struct.LIST* %6998, i32 0, i32 1
  %7000 = load %union.rec*, %union.rec** %6999, align 8
  store %union.rec* %7000, %union.rec** @zz_hold, align 8
  %7001 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7002 = icmp eq %union.rec* %7001, null
  br i1 %7002, label %7003, label %7005

; <label>:7003                                    ; preds = %6987
  %7004 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7053

; <label>:7005                                    ; preds = %6987
  %7006 = load %union.rec*, %union.rec** @zz_res, align 8
  %7007 = icmp eq %union.rec* %7006, null
  br i1 %7007, label %7008, label %7010

; <label>:7008                                    ; preds = %7005
  %7009 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %7051

; <label>:7010                                    ; preds = %7005
  %7011 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7012 = bitcast %union.rec* %7011 to %struct.word_type*
  %7013 = getelementptr inbounds %struct.word_type, %struct.word_type* %7012, i32 0, i32 0
  %7014 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7013, i32 0, i64 0
  %7015 = getelementptr inbounds %struct.LIST, %struct.LIST* %7014, i32 0, i32 0
  %7016 = load %union.rec*, %union.rec** %7015, align 8
  store %union.rec* %7016, %union.rec** @zz_tmp, align 8
  %7017 = load %union.rec*, %union.rec** @zz_res, align 8
  %7018 = bitcast %union.rec* %7017 to %struct.word_type*
  %7019 = getelementptr inbounds %struct.word_type, %struct.word_type* %7018, i32 0, i32 0
  %7020 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7019, i32 0, i64 0
  %7021 = getelementptr inbounds %struct.LIST, %struct.LIST* %7020, i32 0, i32 0
  %7022 = load %union.rec*, %union.rec** %7021, align 8
  %7023 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7024 = bitcast %union.rec* %7023 to %struct.word_type*
  %7025 = getelementptr inbounds %struct.word_type, %struct.word_type* %7024, i32 0, i32 0
  %7026 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7025, i32 0, i64 0
  %7027 = getelementptr inbounds %struct.LIST, %struct.LIST* %7026, i32 0, i32 0
  store %union.rec* %7022, %union.rec** %7027, align 8
  %7028 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7029 = load %union.rec*, %union.rec** @zz_res, align 8
  %7030 = bitcast %union.rec* %7029 to %struct.word_type*
  %7031 = getelementptr inbounds %struct.word_type, %struct.word_type* %7030, i32 0, i32 0
  %7032 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7031, i32 0, i64 0
  %7033 = getelementptr inbounds %struct.LIST, %struct.LIST* %7032, i32 0, i32 0
  %7034 = load %union.rec*, %union.rec** %7033, align 8
  %7035 = bitcast %union.rec* %7034 to %struct.word_type*
  %7036 = getelementptr inbounds %struct.word_type, %struct.word_type* %7035, i32 0, i32 0
  %7037 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7036, i32 0, i64 0
  %7038 = getelementptr inbounds %struct.LIST, %struct.LIST* %7037, i32 0, i32 1
  store %union.rec* %7028, %union.rec** %7038, align 8
  %7039 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7040 = load %union.rec*, %union.rec** @zz_res, align 8
  %7041 = bitcast %union.rec* %7040 to %struct.word_type*
  %7042 = getelementptr inbounds %struct.word_type, %struct.word_type* %7041, i32 0, i32 0
  %7043 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7042, i32 0, i64 0
  %7044 = getelementptr inbounds %struct.LIST, %struct.LIST* %7043, i32 0, i32 0
  store %union.rec* %7039, %union.rec** %7044, align 8
  %7045 = load %union.rec*, %union.rec** @zz_res, align 8
  %7046 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7047 = bitcast %union.rec* %7046 to %struct.word_type*
  %7048 = getelementptr inbounds %struct.word_type, %struct.word_type* %7047, i32 0, i32 0
  %7049 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7048, i32 0, i64 0
  %7050 = getelementptr inbounds %struct.LIST, %struct.LIST* %7049, i32 0, i32 1
  store %union.rec* %7045, %union.rec** %7050, align 8
  br label %7051

; <label>:7051                                    ; preds = %7010, %7008
  %7052 = phi %union.rec* [ %7009, %7008 ], [ %7045, %7010 ]
  br label %7053

; <label>:7053                                    ; preds = %7051, %7003
  %7054 = phi %union.rec* [ %7004, %7003 ], [ %7052, %7051 ]
  br label %7055

; <label>:7055                                    ; preds = %7053, %6927
  br label %76

; <label>:7056                                    ; preds = %4682, %4199, %3633, %2769, %2768
  %7057 = load %union.rec*, %union.rec** %y, align 8
  %7058 = bitcast %union.rec* %7057 to %struct.word_type*
  %7059 = getelementptr inbounds %struct.word_type, %struct.word_type* %7058, i32 0, i32 2
  %7060 = bitcast %union.SECOND_UNION* %7059 to %struct.anon.2*
  %7061 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7060, i32 0, i32 2
  %7062 = load i16, i16* %7061, align 2
  %7063 = and i16 %7062, -33
  %7064 = or i16 %7063, 32
  store i16 %7064, i16* %7061, align 2
  call void @LeaveErrorBlock(i32 0)
  %7065 = load %union.rec*, %union.rec** %tg_inners, align 8
  %7066 = icmp ne %union.rec* %7065, null
  br i1 %7066, label %7067, label %7070

; <label>:7067                                    ; preds = %7056
  %7068 = load %union.rec*, %union.rec** %tg_inners, align 8
  %7069 = call i32 @DisposeObject(%union.rec* %7068)
  store %union.rec* null, %union.rec** %tg_inners, align 8
  br label %7070

; <label>:7070                                    ; preds = %7067, %7056
  %7071 = load %union.rec*, %union.rec** %target_galley, align 8
  %7072 = call i32 @DisposeObject(%union.rec* %7071)
  %7073 = load %union.rec*, %union.rec** %hd_index, align 8
  %7074 = bitcast %union.rec* %7073 to %struct.word_type*
  %7075 = getelementptr inbounds %struct.word_type, %struct.word_type* %7074, i32 0, i32 0
  %7076 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7075, i32 0, i64 1
  %7077 = getelementptr inbounds %struct.LIST, %struct.LIST* %7076, i32 0, i32 1
  %7078 = load %union.rec*, %union.rec** %7077, align 8
  store %union.rec* %7078, %union.rec** @xx_link, align 8
  %7079 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7079, %union.rec** @zz_hold, align 8
  %7080 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7081 = bitcast %union.rec* %7080 to %struct.word_type*
  %7082 = getelementptr inbounds %struct.word_type, %struct.word_type* %7081, i32 0, i32 0
  %7083 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7082, i32 0, i64 0
  %7084 = getelementptr inbounds %struct.LIST, %struct.LIST* %7083, i32 0, i32 1
  %7085 = load %union.rec*, %union.rec** %7084, align 8
  %7086 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7087 = icmp eq %union.rec* %7085, %7086
  br i1 %7087, label %7088, label %7089

; <label>:7088                                    ; preds = %7070
  br label %7130

; <label>:7089                                    ; preds = %7070
  %7090 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7091 = bitcast %union.rec* %7090 to %struct.word_type*
  %7092 = getelementptr inbounds %struct.word_type, %struct.word_type* %7091, i32 0, i32 0
  %7093 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7092, i32 0, i64 0
  %7094 = getelementptr inbounds %struct.LIST, %struct.LIST* %7093, i32 0, i32 1
  %7095 = load %union.rec*, %union.rec** %7094, align 8
  store %union.rec* %7095, %union.rec** @zz_res, align 8
  %7096 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7097 = bitcast %union.rec* %7096 to %struct.word_type*
  %7098 = getelementptr inbounds %struct.word_type, %struct.word_type* %7097, i32 0, i32 0
  %7099 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7098, i32 0, i64 0
  %7100 = getelementptr inbounds %struct.LIST, %struct.LIST* %7099, i32 0, i32 0
  %7101 = load %union.rec*, %union.rec** %7100, align 8
  %7102 = load %union.rec*, %union.rec** @zz_res, align 8
  %7103 = bitcast %union.rec* %7102 to %struct.word_type*
  %7104 = getelementptr inbounds %struct.word_type, %struct.word_type* %7103, i32 0, i32 0
  %7105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7104, i32 0, i64 0
  %7106 = getelementptr inbounds %struct.LIST, %struct.LIST* %7105, i32 0, i32 0
  store %union.rec* %7101, %union.rec** %7106, align 8
  %7107 = load %union.rec*, %union.rec** @zz_res, align 8
  %7108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7109 = bitcast %union.rec* %7108 to %struct.word_type*
  %7110 = getelementptr inbounds %struct.word_type, %struct.word_type* %7109, i32 0, i32 0
  %7111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7110, i32 0, i64 0
  %7112 = getelementptr inbounds %struct.LIST, %struct.LIST* %7111, i32 0, i32 0
  %7113 = load %union.rec*, %union.rec** %7112, align 8
  %7114 = bitcast %union.rec* %7113 to %struct.word_type*
  %7115 = getelementptr inbounds %struct.word_type, %struct.word_type* %7114, i32 0, i32 0
  %7116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7115, i32 0, i64 0
  %7117 = getelementptr inbounds %struct.LIST, %struct.LIST* %7116, i32 0, i32 1
  store %union.rec* %7107, %union.rec** %7117, align 8
  %7118 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7119 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7120 = bitcast %union.rec* %7119 to %struct.word_type*
  %7121 = getelementptr inbounds %struct.word_type, %struct.word_type* %7120, i32 0, i32 0
  %7122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7121, i32 0, i64 0
  %7123 = getelementptr inbounds %struct.LIST, %struct.LIST* %7122, i32 0, i32 1
  store %union.rec* %7118, %union.rec** %7123, align 8
  %7124 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7125 = bitcast %union.rec* %7124 to %struct.word_type*
  %7126 = getelementptr inbounds %struct.word_type, %struct.word_type* %7125, i32 0, i32 0
  %7127 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7126, i32 0, i64 0
  %7128 = getelementptr inbounds %struct.LIST, %struct.LIST* %7127, i32 0, i32 0
  store %union.rec* %7118, %union.rec** %7128, align 8
  %7129 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7130

; <label>:7130                                    ; preds = %7089, %7088
  %7131 = phi %union.rec* [ null, %7088 ], [ %7129, %7089 ]
  %7132 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7132, %union.rec** @zz_res, align 8
  %7133 = load %union.rec*, %union.rec** %target_index, align 8
  %7134 = bitcast %union.rec* %7133 to %struct.word_type*
  %7135 = getelementptr inbounds %struct.word_type, %struct.word_type* %7134, i32 0, i32 0
  %7136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7135, i32 0, i64 1
  %7137 = getelementptr inbounds %struct.LIST, %struct.LIST* %7136, i32 0, i32 1
  %7138 = load %union.rec*, %union.rec** %7137, align 8
  store %union.rec* %7138, %union.rec** @zz_hold, align 8
  %7139 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7140 = icmp eq %union.rec* %7139, null
  br i1 %7140, label %7141, label %7143

; <label>:7141                                    ; preds = %7130
  %7142 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7191

; <label>:7143                                    ; preds = %7130
  %7144 = load %union.rec*, %union.rec** @zz_res, align 8
  %7145 = icmp eq %union.rec* %7144, null
  br i1 %7145, label %7146, label %7148

; <label>:7146                                    ; preds = %7143
  %7147 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %7189

; <label>:7148                                    ; preds = %7143
  %7149 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7150 = bitcast %union.rec* %7149 to %struct.word_type*
  %7151 = getelementptr inbounds %struct.word_type, %struct.word_type* %7150, i32 0, i32 0
  %7152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7151, i32 0, i64 0
  %7153 = getelementptr inbounds %struct.LIST, %struct.LIST* %7152, i32 0, i32 0
  %7154 = load %union.rec*, %union.rec** %7153, align 8
  store %union.rec* %7154, %union.rec** @zz_tmp, align 8
  %7155 = load %union.rec*, %union.rec** @zz_res, align 8
  %7156 = bitcast %union.rec* %7155 to %struct.word_type*
  %7157 = getelementptr inbounds %struct.word_type, %struct.word_type* %7156, i32 0, i32 0
  %7158 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7157, i32 0, i64 0
  %7159 = getelementptr inbounds %struct.LIST, %struct.LIST* %7158, i32 0, i32 0
  %7160 = load %union.rec*, %union.rec** %7159, align 8
  %7161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7162 = bitcast %union.rec* %7161 to %struct.word_type*
  %7163 = getelementptr inbounds %struct.word_type, %struct.word_type* %7162, i32 0, i32 0
  %7164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7163, i32 0, i64 0
  %7165 = getelementptr inbounds %struct.LIST, %struct.LIST* %7164, i32 0, i32 0
  store %union.rec* %7160, %union.rec** %7165, align 8
  %7166 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7167 = load %union.rec*, %union.rec** @zz_res, align 8
  %7168 = bitcast %union.rec* %7167 to %struct.word_type*
  %7169 = getelementptr inbounds %struct.word_type, %struct.word_type* %7168, i32 0, i32 0
  %7170 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7169, i32 0, i64 0
  %7171 = getelementptr inbounds %struct.LIST, %struct.LIST* %7170, i32 0, i32 0
  %7172 = load %union.rec*, %union.rec** %7171, align 8
  %7173 = bitcast %union.rec* %7172 to %struct.word_type*
  %7174 = getelementptr inbounds %struct.word_type, %struct.word_type* %7173, i32 0, i32 0
  %7175 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7174, i32 0, i64 0
  %7176 = getelementptr inbounds %struct.LIST, %struct.LIST* %7175, i32 0, i32 1
  store %union.rec* %7166, %union.rec** %7176, align 8
  %7177 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7178 = load %union.rec*, %union.rec** @zz_res, align 8
  %7179 = bitcast %union.rec* %7178 to %struct.word_type*
  %7180 = getelementptr inbounds %struct.word_type, %struct.word_type* %7179, i32 0, i32 0
  %7181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7180, i32 0, i64 0
  %7182 = getelementptr inbounds %struct.LIST, %struct.LIST* %7181, i32 0, i32 0
  store %union.rec* %7177, %union.rec** %7182, align 8
  %7183 = load %union.rec*, %union.rec** @zz_res, align 8
  %7184 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7185 = bitcast %union.rec* %7184 to %struct.word_type*
  %7186 = getelementptr inbounds %struct.word_type, %struct.word_type* %7185, i32 0, i32 0
  %7187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7186, i32 0, i64 0
  %7188 = getelementptr inbounds %struct.LIST, %struct.LIST* %7187, i32 0, i32 1
  store %union.rec* %7183, %union.rec** %7188, align 8
  br label %7189

; <label>:7189                                    ; preds = %7148, %7146
  %7190 = phi %union.rec* [ %7147, %7146 ], [ %7183, %7148 ]
  br label %7191

; <label>:7191                                    ; preds = %7189, %7141
  %7192 = phi %union.rec* [ %7142, %7141 ], [ %7190, %7189 ]
  %7193 = load i32, i32* %was_sized, align 4
  %7194 = icmp ne i32 %7193, 0
  br i1 %7194, label %7195, label %7203

; <label>:7195                                    ; preds = %7191
  %7196 = load %union.rec*, %union.rec** %hd_inners, align 8
  %7197 = icmp ne %union.rec* %7196, null
  br i1 %7197, label %7198, label %7201

; <label>:7198                                    ; preds = %7195
  %7199 = load %union.rec*, %union.rec** %hd_inners, align 8
  %7200 = call i32 @DisposeObject(%union.rec* %7199)
  store %union.rec* null, %union.rec** %hd_inners, align 8
  br label %7201

; <label>:7201                                    ; preds = %7198, %7195
  %7202 = load %union.rec**, %union.rec*** %3, align 8
  store %union.rec* null, %union.rec** %7202, align 8
  br label %7206

; <label>:7203                                    ; preds = %7191
  %7204 = load %union.rec*, %union.rec** %hd_inners, align 8
  %7205 = load %union.rec**, %union.rec*** %3, align 8
  store %union.rec* %7204, %union.rec** %7205, align 8
  br label %7206

; <label>:7206                                    ; preds = %7203, %7201
  %7207 = load %union.rec*, %union.rec** %y, align 8
  %7208 = load %union.rec**, %union.rec*** %4, align 8
  store %union.rec* %7207, %union.rec** %7208, align 8
  store i32 3, i32* %1
  br label %9922

; <label>:7209                                    ; preds = %5838
  call void @LeaveErrorBlock(i32 1)
  %7210 = load %union.rec*, %union.rec** %2, align 8
  %7211 = bitcast %union.rec* %7210 to %struct.word_type*
  %7212 = getelementptr inbounds %struct.word_type, %struct.word_type* %7211, i32 0, i32 0
  %7213 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7212, i32 0, i64 1
  %7214 = getelementptr inbounds %struct.LIST, %struct.LIST* %7213, i32 0, i32 1
  %7215 = load %union.rec*, %union.rec** %7214, align 8
  store %union.rec* %7215, %union.rec** @xx_link, align 8
  %7216 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7216, %union.rec** @zz_hold, align 8
  %7217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7218 = bitcast %union.rec* %7217 to %struct.word_type*
  %7219 = getelementptr inbounds %struct.word_type, %struct.word_type* %7218, i32 0, i32 0
  %7220 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7219, i32 0, i64 0
  %7221 = getelementptr inbounds %struct.LIST, %struct.LIST* %7220, i32 0, i32 1
  %7222 = load %union.rec*, %union.rec** %7221, align 8
  %7223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7224 = icmp eq %union.rec* %7222, %7223
  br i1 %7224, label %7225, label %7226

; <label>:7225                                    ; preds = %7209
  br label %7267

; <label>:7226                                    ; preds = %7209
  %7227 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7228 = bitcast %union.rec* %7227 to %struct.word_type*
  %7229 = getelementptr inbounds %struct.word_type, %struct.word_type* %7228, i32 0, i32 0
  %7230 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7229, i32 0, i64 0
  %7231 = getelementptr inbounds %struct.LIST, %struct.LIST* %7230, i32 0, i32 1
  %7232 = load %union.rec*, %union.rec** %7231, align 8
  store %union.rec* %7232, %union.rec** @zz_res, align 8
  %7233 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7234 = bitcast %union.rec* %7233 to %struct.word_type*
  %7235 = getelementptr inbounds %struct.word_type, %struct.word_type* %7234, i32 0, i32 0
  %7236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7235, i32 0, i64 0
  %7237 = getelementptr inbounds %struct.LIST, %struct.LIST* %7236, i32 0, i32 0
  %7238 = load %union.rec*, %union.rec** %7237, align 8
  %7239 = load %union.rec*, %union.rec** @zz_res, align 8
  %7240 = bitcast %union.rec* %7239 to %struct.word_type*
  %7241 = getelementptr inbounds %struct.word_type, %struct.word_type* %7240, i32 0, i32 0
  %7242 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7241, i32 0, i64 0
  %7243 = getelementptr inbounds %struct.LIST, %struct.LIST* %7242, i32 0, i32 0
  store %union.rec* %7238, %union.rec** %7243, align 8
  %7244 = load %union.rec*, %union.rec** @zz_res, align 8
  %7245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7246 = bitcast %union.rec* %7245 to %struct.word_type*
  %7247 = getelementptr inbounds %struct.word_type, %struct.word_type* %7246, i32 0, i32 0
  %7248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7247, i32 0, i64 0
  %7249 = getelementptr inbounds %struct.LIST, %struct.LIST* %7248, i32 0, i32 0
  %7250 = load %union.rec*, %union.rec** %7249, align 8
  %7251 = bitcast %union.rec* %7250 to %struct.word_type*
  %7252 = getelementptr inbounds %struct.word_type, %struct.word_type* %7251, i32 0, i32 0
  %7253 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7252, i32 0, i64 0
  %7254 = getelementptr inbounds %struct.LIST, %struct.LIST* %7253, i32 0, i32 1
  store %union.rec* %7244, %union.rec** %7254, align 8
  %7255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7256 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7257 = bitcast %union.rec* %7256 to %struct.word_type*
  %7258 = getelementptr inbounds %struct.word_type, %struct.word_type* %7257, i32 0, i32 0
  %7259 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7258, i32 0, i64 0
  %7260 = getelementptr inbounds %struct.LIST, %struct.LIST* %7259, i32 0, i32 1
  store %union.rec* %7255, %union.rec** %7260, align 8
  %7261 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7262 = bitcast %union.rec* %7261 to %struct.word_type*
  %7263 = getelementptr inbounds %struct.word_type, %struct.word_type* %7262, i32 0, i32 0
  %7264 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7263, i32 0, i64 0
  %7265 = getelementptr inbounds %struct.LIST, %struct.LIST* %7264, i32 0, i32 0
  store %union.rec* %7255, %union.rec** %7265, align 8
  %7266 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7267

; <label>:7267                                    ; preds = %7226, %7225
  %7268 = phi %union.rec* [ null, %7225 ], [ %7266, %7226 ]
  %7269 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7269, %union.rec** @zz_res, align 8
  %7270 = load %union.rec*, %union.rec** %dest_index, align 8
  store %union.rec* %7270, %union.rec** @zz_hold, align 8
  %7271 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7272 = icmp eq %union.rec* %7271, null
  br i1 %7272, label %7273, label %7275

; <label>:7273                                    ; preds = %7267
  %7274 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7323

; <label>:7275                                    ; preds = %7267
  %7276 = load %union.rec*, %union.rec** @zz_res, align 8
  %7277 = icmp eq %union.rec* %7276, null
  br i1 %7277, label %7278, label %7280

; <label>:7278                                    ; preds = %7275
  %7279 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %7321

; <label>:7280                                    ; preds = %7275
  %7281 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7282 = bitcast %union.rec* %7281 to %struct.word_type*
  %7283 = getelementptr inbounds %struct.word_type, %struct.word_type* %7282, i32 0, i32 0
  %7284 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7283, i32 0, i64 0
  %7285 = getelementptr inbounds %struct.LIST, %struct.LIST* %7284, i32 0, i32 0
  %7286 = load %union.rec*, %union.rec** %7285, align 8
  store %union.rec* %7286, %union.rec** @zz_tmp, align 8
  %7287 = load %union.rec*, %union.rec** @zz_res, align 8
  %7288 = bitcast %union.rec* %7287 to %struct.word_type*
  %7289 = getelementptr inbounds %struct.word_type, %struct.word_type* %7288, i32 0, i32 0
  %7290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7289, i32 0, i64 0
  %7291 = getelementptr inbounds %struct.LIST, %struct.LIST* %7290, i32 0, i32 0
  %7292 = load %union.rec*, %union.rec** %7291, align 8
  %7293 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7294 = bitcast %union.rec* %7293 to %struct.word_type*
  %7295 = getelementptr inbounds %struct.word_type, %struct.word_type* %7294, i32 0, i32 0
  %7296 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7295, i32 0, i64 0
  %7297 = getelementptr inbounds %struct.LIST, %struct.LIST* %7296, i32 0, i32 0
  store %union.rec* %7292, %union.rec** %7297, align 8
  %7298 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7299 = load %union.rec*, %union.rec** @zz_res, align 8
  %7300 = bitcast %union.rec* %7299 to %struct.word_type*
  %7301 = getelementptr inbounds %struct.word_type, %struct.word_type* %7300, i32 0, i32 0
  %7302 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7301, i32 0, i64 0
  %7303 = getelementptr inbounds %struct.LIST, %struct.LIST* %7302, i32 0, i32 0
  %7304 = load %union.rec*, %union.rec** %7303, align 8
  %7305 = bitcast %union.rec* %7304 to %struct.word_type*
  %7306 = getelementptr inbounds %struct.word_type, %struct.word_type* %7305, i32 0, i32 0
  %7307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7306, i32 0, i64 0
  %7308 = getelementptr inbounds %struct.LIST, %struct.LIST* %7307, i32 0, i32 1
  store %union.rec* %7298, %union.rec** %7308, align 8
  %7309 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7310 = load %union.rec*, %union.rec** @zz_res, align 8
  %7311 = bitcast %union.rec* %7310 to %struct.word_type*
  %7312 = getelementptr inbounds %struct.word_type, %struct.word_type* %7311, i32 0, i32 0
  %7313 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7312, i32 0, i64 0
  %7314 = getelementptr inbounds %struct.LIST, %struct.LIST* %7313, i32 0, i32 0
  store %union.rec* %7309, %union.rec** %7314, align 8
  %7315 = load %union.rec*, %union.rec** @zz_res, align 8
  %7316 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7317 = bitcast %union.rec* %7316 to %struct.word_type*
  %7318 = getelementptr inbounds %struct.word_type, %struct.word_type* %7317, i32 0, i32 0
  %7319 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7318, i32 0, i64 0
  %7320 = getelementptr inbounds %struct.LIST, %struct.LIST* %7319, i32 0, i32 1
  store %union.rec* %7315, %union.rec** %7320, align 8
  br label %7321

; <label>:7321                                    ; preds = %7280, %7278
  %7322 = phi %union.rec* [ %7279, %7278 ], [ %7315, %7280 ]
  br label %7323

; <label>:7323                                    ; preds = %7321, %7273
  %7324 = phi %union.rec* [ %7274, %7273 ], [ %7322, %7321 ]
  %7325 = load %union.rec*, %union.rec** %hd_index, align 8
  %7326 = bitcast %union.rec* %7325 to %struct.word_type*
  %7327 = getelementptr inbounds %struct.word_type, %struct.word_type* %7326, i32 0, i32 1
  %7328 = bitcast %union.FIRST_UNION* %7327 to %struct.anon*
  %7329 = getelementptr inbounds %struct.anon, %struct.anon* %7328, i32 0, i32 0
  %7330 = load i8, i8* %7329, align 1
  %7331 = zext i8 %7330 to i32
  %7332 = icmp eq i32 %7331, 120
  br i1 %7332, label %7336, label %7333

; <label>:7333                                    ; preds = %7323
  %7334 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7335 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %7334, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i32 0, i32 0))
  br label %7336

; <label>:7336                                    ; preds = %7333, %7323
  %7337 = load %union.rec*, %union.rec** %hd_index, align 8
  store %union.rec* %7337, %union.rec** @xx_hold, align 8
  br label %7338

; <label>:7338                                    ; preds = %7498, %7336
  %7339 = load %union.rec*, %union.rec** @xx_hold, align 8
  %7340 = bitcast %union.rec* %7339 to %struct.word_type*
  %7341 = getelementptr inbounds %struct.word_type, %struct.word_type* %7340, i32 0, i32 0
  %7342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7341, i32 0, i64 1
  %7343 = getelementptr inbounds %struct.LIST, %struct.LIST* %7342, i32 0, i32 1
  %7344 = load %union.rec*, %union.rec** %7343, align 8
  %7345 = load %union.rec*, %union.rec** @xx_hold, align 8
  %7346 = icmp ne %union.rec* %7344, %7345
  br i1 %7346, label %7347, label %7513

; <label>:7347                                    ; preds = %7338
  %7348 = load %union.rec*, %union.rec** @xx_hold, align 8
  %7349 = bitcast %union.rec* %7348 to %struct.word_type*
  %7350 = getelementptr inbounds %struct.word_type, %struct.word_type* %7349, i32 0, i32 0
  %7351 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7350, i32 0, i64 1
  %7352 = getelementptr inbounds %struct.LIST, %struct.LIST* %7351, i32 0, i32 1
  %7353 = load %union.rec*, %union.rec** %7352, align 8
  store %union.rec* %7353, %union.rec** @xx_link, align 8
  %7354 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7354, %union.rec** @zz_hold, align 8
  %7355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7356 = bitcast %union.rec* %7355 to %struct.word_type*
  %7357 = getelementptr inbounds %struct.word_type, %struct.word_type* %7356, i32 0, i32 0
  %7358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7357, i32 0, i64 1
  %7359 = getelementptr inbounds %struct.LIST, %struct.LIST* %7358, i32 0, i32 1
  %7360 = load %union.rec*, %union.rec** %7359, align 8
  %7361 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7362 = icmp eq %union.rec* %7360, %7361
  br i1 %7362, label %7363, label %7364

; <label>:7363                                    ; preds = %7347
  br label %7405

; <label>:7364                                    ; preds = %7347
  %7365 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7366 = bitcast %union.rec* %7365 to %struct.word_type*
  %7367 = getelementptr inbounds %struct.word_type, %struct.word_type* %7366, i32 0, i32 0
  %7368 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7367, i32 0, i64 1
  %7369 = getelementptr inbounds %struct.LIST, %struct.LIST* %7368, i32 0, i32 1
  %7370 = load %union.rec*, %union.rec** %7369, align 8
  store %union.rec* %7370, %union.rec** @zz_res, align 8
  %7371 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7372 = bitcast %union.rec* %7371 to %struct.word_type*
  %7373 = getelementptr inbounds %struct.word_type, %struct.word_type* %7372, i32 0, i32 0
  %7374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7373, i32 0, i64 1
  %7375 = getelementptr inbounds %struct.LIST, %struct.LIST* %7374, i32 0, i32 0
  %7376 = load %union.rec*, %union.rec** %7375, align 8
  %7377 = load %union.rec*, %union.rec** @zz_res, align 8
  %7378 = bitcast %union.rec* %7377 to %struct.word_type*
  %7379 = getelementptr inbounds %struct.word_type, %struct.word_type* %7378, i32 0, i32 0
  %7380 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7379, i32 0, i64 1
  %7381 = getelementptr inbounds %struct.LIST, %struct.LIST* %7380, i32 0, i32 0
  store %union.rec* %7376, %union.rec** %7381, align 8
  %7382 = load %union.rec*, %union.rec** @zz_res, align 8
  %7383 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7384 = bitcast %union.rec* %7383 to %struct.word_type*
  %7385 = getelementptr inbounds %struct.word_type, %struct.word_type* %7384, i32 0, i32 0
  %7386 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7385, i32 0, i64 1
  %7387 = getelementptr inbounds %struct.LIST, %struct.LIST* %7386, i32 0, i32 0
  %7388 = load %union.rec*, %union.rec** %7387, align 8
  %7389 = bitcast %union.rec* %7388 to %struct.word_type*
  %7390 = getelementptr inbounds %struct.word_type, %struct.word_type* %7389, i32 0, i32 0
  %7391 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7390, i32 0, i64 1
  %7392 = getelementptr inbounds %struct.LIST, %struct.LIST* %7391, i32 0, i32 1
  store %union.rec* %7382, %union.rec** %7392, align 8
  %7393 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7394 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7395 = bitcast %union.rec* %7394 to %struct.word_type*
  %7396 = getelementptr inbounds %struct.word_type, %struct.word_type* %7395, i32 0, i32 0
  %7397 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7396, i32 0, i64 1
  %7398 = getelementptr inbounds %struct.LIST, %struct.LIST* %7397, i32 0, i32 1
  store %union.rec* %7393, %union.rec** %7398, align 8
  %7399 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7400 = bitcast %union.rec* %7399 to %struct.word_type*
  %7401 = getelementptr inbounds %struct.word_type, %struct.word_type* %7400, i32 0, i32 0
  %7402 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7401, i32 0, i64 1
  %7403 = getelementptr inbounds %struct.LIST, %struct.LIST* %7402, i32 0, i32 0
  store %union.rec* %7393, %union.rec** %7403, align 8
  %7404 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7405

; <label>:7405                                    ; preds = %7364, %7363
  %7406 = phi %union.rec* [ null, %7363 ], [ %7404, %7364 ]
  %7407 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7407, %union.rec** @zz_hold, align 8
  %7408 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7409 = bitcast %union.rec* %7408 to %struct.word_type*
  %7410 = getelementptr inbounds %struct.word_type, %struct.word_type* %7409, i32 0, i32 0
  %7411 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7410, i32 0, i64 0
  %7412 = getelementptr inbounds %struct.LIST, %struct.LIST* %7411, i32 0, i32 1
  %7413 = load %union.rec*, %union.rec** %7412, align 8
  %7414 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7415 = icmp eq %union.rec* %7413, %7414
  br i1 %7415, label %7416, label %7417

; <label>:7416                                    ; preds = %7405
  br label %7458

; <label>:7417                                    ; preds = %7405
  %7418 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7419 = bitcast %union.rec* %7418 to %struct.word_type*
  %7420 = getelementptr inbounds %struct.word_type, %struct.word_type* %7419, i32 0, i32 0
  %7421 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7420, i32 0, i64 0
  %7422 = getelementptr inbounds %struct.LIST, %struct.LIST* %7421, i32 0, i32 1
  %7423 = load %union.rec*, %union.rec** %7422, align 8
  store %union.rec* %7423, %union.rec** @zz_res, align 8
  %7424 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7425 = bitcast %union.rec* %7424 to %struct.word_type*
  %7426 = getelementptr inbounds %struct.word_type, %struct.word_type* %7425, i32 0, i32 0
  %7427 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7426, i32 0, i64 0
  %7428 = getelementptr inbounds %struct.LIST, %struct.LIST* %7427, i32 0, i32 0
  %7429 = load %union.rec*, %union.rec** %7428, align 8
  %7430 = load %union.rec*, %union.rec** @zz_res, align 8
  %7431 = bitcast %union.rec* %7430 to %struct.word_type*
  %7432 = getelementptr inbounds %struct.word_type, %struct.word_type* %7431, i32 0, i32 0
  %7433 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7432, i32 0, i64 0
  %7434 = getelementptr inbounds %struct.LIST, %struct.LIST* %7433, i32 0, i32 0
  store %union.rec* %7429, %union.rec** %7434, align 8
  %7435 = load %union.rec*, %union.rec** @zz_res, align 8
  %7436 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7437 = bitcast %union.rec* %7436 to %struct.word_type*
  %7438 = getelementptr inbounds %struct.word_type, %struct.word_type* %7437, i32 0, i32 0
  %7439 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7438, i32 0, i64 0
  %7440 = getelementptr inbounds %struct.LIST, %struct.LIST* %7439, i32 0, i32 0
  %7441 = load %union.rec*, %union.rec** %7440, align 8
  %7442 = bitcast %union.rec* %7441 to %struct.word_type*
  %7443 = getelementptr inbounds %struct.word_type, %struct.word_type* %7442, i32 0, i32 0
  %7444 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7443, i32 0, i64 0
  %7445 = getelementptr inbounds %struct.LIST, %struct.LIST* %7444, i32 0, i32 1
  store %union.rec* %7435, %union.rec** %7445, align 8
  %7446 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7447 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7448 = bitcast %union.rec* %7447 to %struct.word_type*
  %7449 = getelementptr inbounds %struct.word_type, %struct.word_type* %7448, i32 0, i32 0
  %7450 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7449, i32 0, i64 0
  %7451 = getelementptr inbounds %struct.LIST, %struct.LIST* %7450, i32 0, i32 1
  store %union.rec* %7446, %union.rec** %7451, align 8
  %7452 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7453 = bitcast %union.rec* %7452 to %struct.word_type*
  %7454 = getelementptr inbounds %struct.word_type, %struct.word_type* %7453, i32 0, i32 0
  %7455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7454, i32 0, i64 0
  %7456 = getelementptr inbounds %struct.LIST, %struct.LIST* %7455, i32 0, i32 0
  store %union.rec* %7446, %union.rec** %7456, align 8
  %7457 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7458

; <label>:7458                                    ; preds = %7417, %7416
  %7459 = phi %union.rec* [ null, %7416 ], [ %7457, %7417 ]
  %7460 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7460, %union.rec** @zz_hold, align 8
  %7461 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %7461, %union.rec** @zz_hold, align 8
  %7462 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7463 = bitcast %union.rec* %7462 to %struct.word_type*
  %7464 = getelementptr inbounds %struct.word_type, %struct.word_type* %7463, i32 0, i32 1
  %7465 = bitcast %union.FIRST_UNION* %7464 to %struct.anon*
  %7466 = getelementptr inbounds %struct.anon, %struct.anon* %7465, i32 0, i32 0
  %7467 = load i8, i8* %7466, align 1
  %7468 = zext i8 %7467 to i32
  %7469 = icmp eq i32 %7468, 11
  br i1 %7469, label %7479, label %7470

; <label>:7470                                    ; preds = %7458
  %7471 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7472 = bitcast %union.rec* %7471 to %struct.word_type*
  %7473 = getelementptr inbounds %struct.word_type, %struct.word_type* %7472, i32 0, i32 1
  %7474 = bitcast %union.FIRST_UNION* %7473 to %struct.anon*
  %7475 = getelementptr inbounds %struct.anon, %struct.anon* %7474, i32 0, i32 0
  %7476 = load i8, i8* %7475, align 1
  %7477 = zext i8 %7476 to i32
  %7478 = icmp eq i32 %7477, 12
  br i1 %7478, label %7479, label %7487

; <label>:7479                                    ; preds = %7470, %7458
  %7480 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7481 = bitcast %union.rec* %7480 to %struct.word_type*
  %7482 = getelementptr inbounds %struct.word_type, %struct.word_type* %7481, i32 0, i32 1
  %7483 = bitcast %union.FIRST_UNION* %7482 to %struct.anon*
  %7484 = getelementptr inbounds %struct.anon, %struct.anon* %7483, i32 0, i32 1
  %7485 = load i8, i8* %7484, align 1
  %7486 = zext i8 %7485 to i32
  br label %7498

; <label>:7487                                    ; preds = %7470
  %7488 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7489 = bitcast %union.rec* %7488 to %struct.word_type*
  %7490 = getelementptr inbounds %struct.word_type, %struct.word_type* %7489, i32 0, i32 1
  %7491 = bitcast %union.FIRST_UNION* %7490 to %struct.anon*
  %7492 = getelementptr inbounds %struct.anon, %struct.anon* %7491, i32 0, i32 0
  %7493 = load i8, i8* %7492, align 1
  %7494 = zext i8 %7493 to i64
  %7495 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %7494
  %7496 = load i8, i8* %7495, align 1
  %7497 = zext i8 %7496 to i32
  br label %7498

; <label>:7498                                    ; preds = %7487, %7479
  %7499 = phi i32 [ %7486, %7479 ], [ %7497, %7487 ]
  store i32 %7499, i32* @zz_size, align 4
  %7500 = load i32, i32* @zz_size, align 4
  %7501 = sext i32 %7500 to i64
  %7502 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7501
  %7503 = load %union.rec*, %union.rec** %7502, align 8
  %7504 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7505 = bitcast %union.rec* %7504 to %struct.word_type*
  %7506 = getelementptr inbounds %struct.word_type, %struct.word_type* %7505, i32 0, i32 0
  %7507 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7506, i32 0, i64 0
  %7508 = getelementptr inbounds %struct.LIST, %struct.LIST* %7507, i32 0, i32 0
  store %union.rec* %7503, %union.rec** %7508, align 8
  %7509 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7510 = load i32, i32* @zz_size, align 4
  %7511 = sext i32 %7510 to i64
  %7512 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7511
  store %union.rec* %7509, %union.rec** %7512, align 8
  br label %7338

; <label>:7513                                    ; preds = %7338
  br label %7514

; <label>:7514                                    ; preds = %7674, %7513
  %7515 = load %union.rec*, %union.rec** @xx_hold, align 8
  %7516 = bitcast %union.rec* %7515 to %struct.word_type*
  %7517 = getelementptr inbounds %struct.word_type, %struct.word_type* %7516, i32 0, i32 0
  %7518 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7517, i32 0, i64 0
  %7519 = getelementptr inbounds %struct.LIST, %struct.LIST* %7518, i32 0, i32 1
  %7520 = load %union.rec*, %union.rec** %7519, align 8
  %7521 = load %union.rec*, %union.rec** @xx_hold, align 8
  %7522 = icmp ne %union.rec* %7520, %7521
  br i1 %7522, label %7523, label %7689

; <label>:7523                                    ; preds = %7514
  %7524 = load %union.rec*, %union.rec** @xx_hold, align 8
  %7525 = bitcast %union.rec* %7524 to %struct.word_type*
  %7526 = getelementptr inbounds %struct.word_type, %struct.word_type* %7525, i32 0, i32 0
  %7527 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7526, i32 0, i64 0
  %7528 = getelementptr inbounds %struct.LIST, %struct.LIST* %7527, i32 0, i32 1
  %7529 = load %union.rec*, %union.rec** %7528, align 8
  store %union.rec* %7529, %union.rec** @xx_link, align 8
  %7530 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7530, %union.rec** @zz_hold, align 8
  %7531 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7532 = bitcast %union.rec* %7531 to %struct.word_type*
  %7533 = getelementptr inbounds %struct.word_type, %struct.word_type* %7532, i32 0, i32 0
  %7534 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7533, i32 0, i64 1
  %7535 = getelementptr inbounds %struct.LIST, %struct.LIST* %7534, i32 0, i32 1
  %7536 = load %union.rec*, %union.rec** %7535, align 8
  %7537 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7538 = icmp eq %union.rec* %7536, %7537
  br i1 %7538, label %7539, label %7540

; <label>:7539                                    ; preds = %7523
  br label %7581

; <label>:7540                                    ; preds = %7523
  %7541 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7542 = bitcast %union.rec* %7541 to %struct.word_type*
  %7543 = getelementptr inbounds %struct.word_type, %struct.word_type* %7542, i32 0, i32 0
  %7544 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7543, i32 0, i64 1
  %7545 = getelementptr inbounds %struct.LIST, %struct.LIST* %7544, i32 0, i32 1
  %7546 = load %union.rec*, %union.rec** %7545, align 8
  store %union.rec* %7546, %union.rec** @zz_res, align 8
  %7547 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7548 = bitcast %union.rec* %7547 to %struct.word_type*
  %7549 = getelementptr inbounds %struct.word_type, %struct.word_type* %7548, i32 0, i32 0
  %7550 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7549, i32 0, i64 1
  %7551 = getelementptr inbounds %struct.LIST, %struct.LIST* %7550, i32 0, i32 0
  %7552 = load %union.rec*, %union.rec** %7551, align 8
  %7553 = load %union.rec*, %union.rec** @zz_res, align 8
  %7554 = bitcast %union.rec* %7553 to %struct.word_type*
  %7555 = getelementptr inbounds %struct.word_type, %struct.word_type* %7554, i32 0, i32 0
  %7556 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7555, i32 0, i64 1
  %7557 = getelementptr inbounds %struct.LIST, %struct.LIST* %7556, i32 0, i32 0
  store %union.rec* %7552, %union.rec** %7557, align 8
  %7558 = load %union.rec*, %union.rec** @zz_res, align 8
  %7559 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7560 = bitcast %union.rec* %7559 to %struct.word_type*
  %7561 = getelementptr inbounds %struct.word_type, %struct.word_type* %7560, i32 0, i32 0
  %7562 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7561, i32 0, i64 1
  %7563 = getelementptr inbounds %struct.LIST, %struct.LIST* %7562, i32 0, i32 0
  %7564 = load %union.rec*, %union.rec** %7563, align 8
  %7565 = bitcast %union.rec* %7564 to %struct.word_type*
  %7566 = getelementptr inbounds %struct.word_type, %struct.word_type* %7565, i32 0, i32 0
  %7567 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7566, i32 0, i64 1
  %7568 = getelementptr inbounds %struct.LIST, %struct.LIST* %7567, i32 0, i32 1
  store %union.rec* %7558, %union.rec** %7568, align 8
  %7569 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7570 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7571 = bitcast %union.rec* %7570 to %struct.word_type*
  %7572 = getelementptr inbounds %struct.word_type, %struct.word_type* %7571, i32 0, i32 0
  %7573 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7572, i32 0, i64 1
  %7574 = getelementptr inbounds %struct.LIST, %struct.LIST* %7573, i32 0, i32 1
  store %union.rec* %7569, %union.rec** %7574, align 8
  %7575 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7576 = bitcast %union.rec* %7575 to %struct.word_type*
  %7577 = getelementptr inbounds %struct.word_type, %struct.word_type* %7576, i32 0, i32 0
  %7578 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7577, i32 0, i64 1
  %7579 = getelementptr inbounds %struct.LIST, %struct.LIST* %7578, i32 0, i32 0
  store %union.rec* %7569, %union.rec** %7579, align 8
  %7580 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7581

; <label>:7581                                    ; preds = %7540, %7539
  %7582 = phi %union.rec* [ null, %7539 ], [ %7580, %7540 ]
  %7583 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7583, %union.rec** @zz_hold, align 8
  %7584 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7585 = bitcast %union.rec* %7584 to %struct.word_type*
  %7586 = getelementptr inbounds %struct.word_type, %struct.word_type* %7585, i32 0, i32 0
  %7587 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7586, i32 0, i64 0
  %7588 = getelementptr inbounds %struct.LIST, %struct.LIST* %7587, i32 0, i32 1
  %7589 = load %union.rec*, %union.rec** %7588, align 8
  %7590 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7591 = icmp eq %union.rec* %7589, %7590
  br i1 %7591, label %7592, label %7593

; <label>:7592                                    ; preds = %7581
  br label %7634

; <label>:7593                                    ; preds = %7581
  %7594 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7595 = bitcast %union.rec* %7594 to %struct.word_type*
  %7596 = getelementptr inbounds %struct.word_type, %struct.word_type* %7595, i32 0, i32 0
  %7597 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7596, i32 0, i64 0
  %7598 = getelementptr inbounds %struct.LIST, %struct.LIST* %7597, i32 0, i32 1
  %7599 = load %union.rec*, %union.rec** %7598, align 8
  store %union.rec* %7599, %union.rec** @zz_res, align 8
  %7600 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7601 = bitcast %union.rec* %7600 to %struct.word_type*
  %7602 = getelementptr inbounds %struct.word_type, %struct.word_type* %7601, i32 0, i32 0
  %7603 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7602, i32 0, i64 0
  %7604 = getelementptr inbounds %struct.LIST, %struct.LIST* %7603, i32 0, i32 0
  %7605 = load %union.rec*, %union.rec** %7604, align 8
  %7606 = load %union.rec*, %union.rec** @zz_res, align 8
  %7607 = bitcast %union.rec* %7606 to %struct.word_type*
  %7608 = getelementptr inbounds %struct.word_type, %struct.word_type* %7607, i32 0, i32 0
  %7609 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7608, i32 0, i64 0
  %7610 = getelementptr inbounds %struct.LIST, %struct.LIST* %7609, i32 0, i32 0
  store %union.rec* %7605, %union.rec** %7610, align 8
  %7611 = load %union.rec*, %union.rec** @zz_res, align 8
  %7612 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7613 = bitcast %union.rec* %7612 to %struct.word_type*
  %7614 = getelementptr inbounds %struct.word_type, %struct.word_type* %7613, i32 0, i32 0
  %7615 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7614, i32 0, i64 0
  %7616 = getelementptr inbounds %struct.LIST, %struct.LIST* %7615, i32 0, i32 0
  %7617 = load %union.rec*, %union.rec** %7616, align 8
  %7618 = bitcast %union.rec* %7617 to %struct.word_type*
  %7619 = getelementptr inbounds %struct.word_type, %struct.word_type* %7618, i32 0, i32 0
  %7620 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7619, i32 0, i64 0
  %7621 = getelementptr inbounds %struct.LIST, %struct.LIST* %7620, i32 0, i32 1
  store %union.rec* %7611, %union.rec** %7621, align 8
  %7622 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7623 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7624 = bitcast %union.rec* %7623 to %struct.word_type*
  %7625 = getelementptr inbounds %struct.word_type, %struct.word_type* %7624, i32 0, i32 0
  %7626 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7625, i32 0, i64 0
  %7627 = getelementptr inbounds %struct.LIST, %struct.LIST* %7626, i32 0, i32 1
  store %union.rec* %7622, %union.rec** %7627, align 8
  %7628 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7629 = bitcast %union.rec* %7628 to %struct.word_type*
  %7630 = getelementptr inbounds %struct.word_type, %struct.word_type* %7629, i32 0, i32 0
  %7631 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7630, i32 0, i64 0
  %7632 = getelementptr inbounds %struct.LIST, %struct.LIST* %7631, i32 0, i32 0
  store %union.rec* %7622, %union.rec** %7632, align 8
  %7633 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7634

; <label>:7634                                    ; preds = %7593, %7592
  %7635 = phi %union.rec* [ null, %7592 ], [ %7633, %7593 ]
  %7636 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7636, %union.rec** @zz_hold, align 8
  %7637 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %7637, %union.rec** @zz_hold, align 8
  %7638 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7639 = bitcast %union.rec* %7638 to %struct.word_type*
  %7640 = getelementptr inbounds %struct.word_type, %struct.word_type* %7639, i32 0, i32 1
  %7641 = bitcast %union.FIRST_UNION* %7640 to %struct.anon*
  %7642 = getelementptr inbounds %struct.anon, %struct.anon* %7641, i32 0, i32 0
  %7643 = load i8, i8* %7642, align 1
  %7644 = zext i8 %7643 to i32
  %7645 = icmp eq i32 %7644, 11
  br i1 %7645, label %7655, label %7646

; <label>:7646                                    ; preds = %7634
  %7647 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7648 = bitcast %union.rec* %7647 to %struct.word_type*
  %7649 = getelementptr inbounds %struct.word_type, %struct.word_type* %7648, i32 0, i32 1
  %7650 = bitcast %union.FIRST_UNION* %7649 to %struct.anon*
  %7651 = getelementptr inbounds %struct.anon, %struct.anon* %7650, i32 0, i32 0
  %7652 = load i8, i8* %7651, align 1
  %7653 = zext i8 %7652 to i32
  %7654 = icmp eq i32 %7653, 12
  br i1 %7654, label %7655, label %7663

; <label>:7655                                    ; preds = %7646, %7634
  %7656 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7657 = bitcast %union.rec* %7656 to %struct.word_type*
  %7658 = getelementptr inbounds %struct.word_type, %struct.word_type* %7657, i32 0, i32 1
  %7659 = bitcast %union.FIRST_UNION* %7658 to %struct.anon*
  %7660 = getelementptr inbounds %struct.anon, %struct.anon* %7659, i32 0, i32 1
  %7661 = load i8, i8* %7660, align 1
  %7662 = zext i8 %7661 to i32
  br label %7674

; <label>:7663                                    ; preds = %7646
  %7664 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7665 = bitcast %union.rec* %7664 to %struct.word_type*
  %7666 = getelementptr inbounds %struct.word_type, %struct.word_type* %7665, i32 0, i32 1
  %7667 = bitcast %union.FIRST_UNION* %7666 to %struct.anon*
  %7668 = getelementptr inbounds %struct.anon, %struct.anon* %7667, i32 0, i32 0
  %7669 = load i8, i8* %7668, align 1
  %7670 = zext i8 %7669 to i64
  %7671 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %7670
  %7672 = load i8, i8* %7671, align 1
  %7673 = zext i8 %7672 to i32
  br label %7674

; <label>:7674                                    ; preds = %7663, %7655
  %7675 = phi i32 [ %7662, %7655 ], [ %7673, %7663 ]
  store i32 %7675, i32* @zz_size, align 4
  %7676 = load i32, i32* @zz_size, align 4
  %7677 = sext i32 %7676 to i64
  %7678 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7677
  %7679 = load %union.rec*, %union.rec** %7678, align 8
  %7680 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7681 = bitcast %union.rec* %7680 to %struct.word_type*
  %7682 = getelementptr inbounds %struct.word_type, %struct.word_type* %7681, i32 0, i32 0
  %7683 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7682, i32 0, i64 0
  %7684 = getelementptr inbounds %struct.LIST, %struct.LIST* %7683, i32 0, i32 0
  store %union.rec* %7679, %union.rec** %7684, align 8
  %7685 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7686 = load i32, i32* @zz_size, align 4
  %7687 = sext i32 %7686 to i64
  %7688 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7687
  store %union.rec* %7685, %union.rec** %7688, align 8
  br label %7514

; <label>:7689                                    ; preds = %7514
  %7690 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %7690, %union.rec** @zz_hold, align 8
  %7691 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %7691, %union.rec** @zz_hold, align 8
  %7692 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7693 = bitcast %union.rec* %7692 to %struct.word_type*
  %7694 = getelementptr inbounds %struct.word_type, %struct.word_type* %7693, i32 0, i32 1
  %7695 = bitcast %union.FIRST_UNION* %7694 to %struct.anon*
  %7696 = getelementptr inbounds %struct.anon, %struct.anon* %7695, i32 0, i32 0
  %7697 = load i8, i8* %7696, align 1
  %7698 = zext i8 %7697 to i32
  %7699 = icmp eq i32 %7698, 11
  br i1 %7699, label %7709, label %7700

; <label>:7700                                    ; preds = %7689
  %7701 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7702 = bitcast %union.rec* %7701 to %struct.word_type*
  %7703 = getelementptr inbounds %struct.word_type, %struct.word_type* %7702, i32 0, i32 1
  %7704 = bitcast %union.FIRST_UNION* %7703 to %struct.anon*
  %7705 = getelementptr inbounds %struct.anon, %struct.anon* %7704, i32 0, i32 0
  %7706 = load i8, i8* %7705, align 1
  %7707 = zext i8 %7706 to i32
  %7708 = icmp eq i32 %7707, 12
  br i1 %7708, label %7709, label %7717

; <label>:7709                                    ; preds = %7700, %7689
  %7710 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7711 = bitcast %union.rec* %7710 to %struct.word_type*
  %7712 = getelementptr inbounds %struct.word_type, %struct.word_type* %7711, i32 0, i32 1
  %7713 = bitcast %union.FIRST_UNION* %7712 to %struct.anon*
  %7714 = getelementptr inbounds %struct.anon, %struct.anon* %7713, i32 0, i32 1
  %7715 = load i8, i8* %7714, align 1
  %7716 = zext i8 %7715 to i32
  br label %7728

; <label>:7717                                    ; preds = %7700
  %7718 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7719 = bitcast %union.rec* %7718 to %struct.word_type*
  %7720 = getelementptr inbounds %struct.word_type, %struct.word_type* %7719, i32 0, i32 1
  %7721 = bitcast %union.FIRST_UNION* %7720 to %struct.anon*
  %7722 = getelementptr inbounds %struct.anon, %struct.anon* %7721, i32 0, i32 0
  %7723 = load i8, i8* %7722, align 1
  %7724 = zext i8 %7723 to i64
  %7725 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %7724
  %7726 = load i8, i8* %7725, align 1
  %7727 = zext i8 %7726 to i32
  br label %7728

; <label>:7728                                    ; preds = %7717, %7709
  %7729 = phi i32 [ %7716, %7709 ], [ %7727, %7717 ]
  store i32 %7729, i32* @zz_size, align 4
  %7730 = load i32, i32* @zz_size, align 4
  %7731 = sext i32 %7730 to i64
  %7732 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7731
  %7733 = load %union.rec*, %union.rec** %7732, align 8
  %7734 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7735 = bitcast %union.rec* %7734 to %struct.word_type*
  %7736 = getelementptr inbounds %struct.word_type, %struct.word_type* %7735, i32 0, i32 0
  %7737 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7736, i32 0, i64 0
  %7738 = getelementptr inbounds %struct.LIST, %struct.LIST* %7737, i32 0, i32 0
  store %union.rec* %7733, %union.rec** %7738, align 8
  %7739 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7740 = load i32, i32* @zz_size, align 4
  %7741 = sext i32 %7740 to i64
  %7742 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7741
  store %union.rec* %7739, %union.rec** %7742, align 8
  %7743 = load i32, i32* %dim, align 4
  %7744 = icmp eq i32 %7743, 1
  br i1 %7744, label %7745, label %7760

; <label>:7745                                    ; preds = %7728
  %7746 = load %union.rec*, %union.rec** %dest, align 8
  %7747 = bitcast %union.rec* %7746 to %struct.word_type*
  %7748 = getelementptr inbounds %struct.word_type, %struct.word_type* %7747, i32 0, i32 2
  %7749 = bitcast %union.SECOND_UNION* %7748 to %struct.anon.2*
  %7750 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7749, i32 0, i32 2
  %7751 = load i16, i16* %7750, align 2
  %7752 = lshr i16 %7751, 4
  %7753 = and i16 %7752, 1
  %7754 = zext i16 %7753 to i32
  %7755 = icmp ne i32 %7754, 0
  br i1 %7755, label %7760, label %7756

; <label>:7756                                    ; preds = %7745
  %7757 = load %union.rec*, %union.rec** %dest, align 8
  %7758 = load %union.rec*, %union.rec** %2, align 8
  %7759 = load %union.rec*, %union.rec** %y, align 8
  call void @Interpose(%union.rec* %7757, i32 19, %union.rec* %7758, %union.rec* %7759)
  br label %8444

; <label>:7760                                    ; preds = %7745, %7728
  %7761 = load i32, i32* %dim, align 4
  %7762 = icmp eq i32 %7761, 0
  br i1 %7762, label %7763, label %8443

; <label>:7763                                    ; preds = %7760
  %7764 = load %union.rec*, %union.rec** %dest, align 8
  %7765 = bitcast %union.rec* %7764 to %struct.word_type*
  %7766 = getelementptr inbounds %struct.word_type, %struct.word_type* %7765, i32 0, i32 2
  %7767 = bitcast %union.SECOND_UNION* %7766 to %struct.anon.2*
  %7768 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7767, i32 0, i32 2
  %7769 = load i16, i16* %7768, align 2
  %7770 = lshr i16 %7769, 3
  %7771 = and i16 %7770, 1
  %7772 = zext i16 %7771 to i32
  %7773 = icmp ne i32 %7772, 0
  br i1 %7773, label %8443, label %7774

; <label>:7774                                    ; preds = %7763
  %7775 = load %union.rec*, %union.rec** %dest, align 8
  %7776 = load %union.rec*, %union.rec** %y, align 8
  %7777 = load %union.rec*, %union.rec** %y, align 8
  call void @Interpose(%union.rec* %7775, i32 17, %union.rec* %7776, %union.rec* %7777)
  %7778 = load %union.rec*, %union.rec** %dest, align 8
  %7779 = bitcast %union.rec* %7778 to %struct.word_type*
  %7780 = getelementptr inbounds %struct.word_type, %struct.word_type* %7779, i32 0, i32 0
  %7781 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7780, i32 0, i64 1
  %7782 = getelementptr inbounds %struct.LIST, %struct.LIST* %7781, i32 0, i32 1
  %7783 = load %union.rec*, %union.rec** %7782, align 8
  %7784 = bitcast %union.rec* %7783 to %struct.word_type*
  %7785 = getelementptr inbounds %struct.word_type, %struct.word_type* %7784, i32 0, i32 0
  %7786 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7785, i32 0, i64 0
  %7787 = getelementptr inbounds %struct.LIST, %struct.LIST* %7786, i32 0, i32 0
  %7788 = load %union.rec*, %union.rec** %7787, align 8
  store %union.rec* %7788, %union.rec** %junk, align 8
  br label %7789

; <label>:7789                                    ; preds = %7799, %7774
  %7790 = load %union.rec*, %union.rec** %junk, align 8
  %7791 = bitcast %union.rec* %7790 to %struct.word_type*
  %7792 = getelementptr inbounds %struct.word_type, %struct.word_type* %7791, i32 0, i32 1
  %7793 = bitcast %union.FIRST_UNION* %7792 to %struct.anon*
  %7794 = getelementptr inbounds %struct.anon, %struct.anon* %7793, i32 0, i32 0
  %7795 = load i8, i8* %7794, align 1
  %7796 = zext i8 %7795 to i32
  %7797 = icmp eq i32 %7796, 0
  br i1 %7797, label %7798, label %7806

; <label>:7798                                    ; preds = %7789
  br label %7799

; <label>:7799                                    ; preds = %7798
  %7800 = load %union.rec*, %union.rec** %junk, align 8
  %7801 = bitcast %union.rec* %7800 to %struct.word_type*
  %7802 = getelementptr inbounds %struct.word_type, %struct.word_type* %7801, i32 0, i32 0
  %7803 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7802, i32 0, i64 0
  %7804 = getelementptr inbounds %struct.LIST, %struct.LIST* %7803, i32 0, i32 0
  %7805 = load %union.rec*, %union.rec** %7804, align 8
  store %union.rec* %7805, %union.rec** %junk, align 8
  br label %7789

; <label>:7806                                    ; preds = %7789
  %7807 = load %union.rec*, %union.rec** %junk, align 8
  %7808 = bitcast %union.rec* %7807 to %struct.word_type*
  %7809 = getelementptr inbounds %struct.word_type, %struct.word_type* %7808, i32 0, i32 1
  %7810 = bitcast %union.FIRST_UNION* %7809 to %struct.anon*
  %7811 = getelementptr inbounds %struct.anon, %struct.anon* %7810, i32 0, i32 0
  %7812 = load i8, i8* %7811, align 1
  %7813 = zext i8 %7812 to i32
  %7814 = icmp eq i32 %7813, 17
  br i1 %7814, label %7818, label %7815

; <label>:7815                                    ; preds = %7806
  %7816 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7817 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %7816, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i32 0, i32 0))
  br label %7818

; <label>:7818                                    ; preds = %7815, %7806
  %7819 = load %union.rec*, %union.rec** %dest, align 8
  %7820 = bitcast %union.rec* %7819 to %struct.closure_type*
  %7821 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7820, i32 0, i32 4
  %7822 = bitcast %union.FOURTH_UNION* %7821 to %struct.STYLE*
  %7823 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7822, i32 0, i32 0
  %7824 = bitcast %union.anon* %7823 to %struct.GAP*
  %7825 = bitcast %struct.GAP* %7824 to i16*
  %7826 = load i16, i16* %7825, align 4
  %7827 = lshr i16 %7826, 7
  %7828 = and i16 %7827, 1
  %7829 = zext i16 %7828 to i32
  %7830 = load %union.rec*, %union.rec** %junk, align 8
  %7831 = bitcast %union.rec* %7830 to %struct.closure_type*
  %7832 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7831, i32 0, i32 4
  %7833 = bitcast %union.FOURTH_UNION* %7832 to %struct.STYLE*
  %7834 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7833, i32 0, i32 0
  %7835 = bitcast %union.anon* %7834 to %struct.GAP*
  %7836 = bitcast %struct.GAP* %7835 to i16*
  %7837 = trunc i32 %7829 to i16
  %7838 = load i16, i16* %7836, align 4
  %7839 = and i16 %7837, 1
  %7840 = shl i16 %7839, 7
  %7841 = and i16 %7838, -129
  %7842 = or i16 %7841, %7840
  store i16 %7842, i16* %7836, align 4
  %7843 = zext i16 %7839 to i32
  %7844 = load %union.rec*, %union.rec** %dest, align 8
  %7845 = bitcast %union.rec* %7844 to %struct.closure_type*
  %7846 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7845, i32 0, i32 4
  %7847 = bitcast %union.FOURTH_UNION* %7846 to %struct.STYLE*
  %7848 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7847, i32 0, i32 0
  %7849 = bitcast %union.anon* %7848 to %struct.GAP*
  %7850 = bitcast %struct.GAP* %7849 to i16*
  %7851 = load i16, i16* %7850, align 4
  %7852 = lshr i16 %7851, 8
  %7853 = and i16 %7852, 1
  %7854 = zext i16 %7853 to i32
  %7855 = load %union.rec*, %union.rec** %junk, align 8
  %7856 = bitcast %union.rec* %7855 to %struct.closure_type*
  %7857 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7856, i32 0, i32 4
  %7858 = bitcast %union.FOURTH_UNION* %7857 to %struct.STYLE*
  %7859 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7858, i32 0, i32 0
  %7860 = bitcast %union.anon* %7859 to %struct.GAP*
  %7861 = bitcast %struct.GAP* %7860 to i16*
  %7862 = trunc i32 %7854 to i16
  %7863 = load i16, i16* %7861, align 4
  %7864 = and i16 %7862, 1
  %7865 = shl i16 %7864, 8
  %7866 = and i16 %7863, -257
  %7867 = or i16 %7866, %7865
  store i16 %7867, i16* %7861, align 4
  %7868 = zext i16 %7864 to i32
  %7869 = load %union.rec*, %union.rec** %dest, align 8
  %7870 = bitcast %union.rec* %7869 to %struct.closure_type*
  %7871 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7870, i32 0, i32 4
  %7872 = bitcast %union.FOURTH_UNION* %7871 to %struct.STYLE*
  %7873 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7872, i32 0, i32 0
  %7874 = bitcast %union.anon* %7873 to %struct.GAP*
  %7875 = bitcast %struct.GAP* %7874 to i16*
  %7876 = load i16, i16* %7875, align 4
  %7877 = lshr i16 %7876, 9
  %7878 = and i16 %7877, 1
  %7879 = zext i16 %7878 to i32
  %7880 = load %union.rec*, %union.rec** %junk, align 8
  %7881 = bitcast %union.rec* %7880 to %struct.closure_type*
  %7882 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7881, i32 0, i32 4
  %7883 = bitcast %union.FOURTH_UNION* %7882 to %struct.STYLE*
  %7884 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7883, i32 0, i32 0
  %7885 = bitcast %union.anon* %7884 to %struct.GAP*
  %7886 = bitcast %struct.GAP* %7885 to i16*
  %7887 = trunc i32 %7879 to i16
  %7888 = load i16, i16* %7886, align 4
  %7889 = and i16 %7887, 1
  %7890 = shl i16 %7889, 9
  %7891 = and i16 %7888, -513
  %7892 = or i16 %7891, %7890
  store i16 %7892, i16* %7886, align 4
  %7893 = zext i16 %7889 to i32
  %7894 = load %union.rec*, %union.rec** %dest, align 8
  %7895 = bitcast %union.rec* %7894 to %struct.closure_type*
  %7896 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7895, i32 0, i32 4
  %7897 = bitcast %union.FOURTH_UNION* %7896 to %struct.STYLE*
  %7898 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7897, i32 0, i32 0
  %7899 = bitcast %union.anon* %7898 to %struct.GAP*
  %7900 = bitcast %struct.GAP* %7899 to i16*
  %7901 = load i16, i16* %7900, align 4
  %7902 = lshr i16 %7901, 10
  %7903 = and i16 %7902, 7
  %7904 = zext i16 %7903 to i32
  %7905 = load %union.rec*, %union.rec** %junk, align 8
  %7906 = bitcast %union.rec* %7905 to %struct.closure_type*
  %7907 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7906, i32 0, i32 4
  %7908 = bitcast %union.FOURTH_UNION* %7907 to %struct.STYLE*
  %7909 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7908, i32 0, i32 0
  %7910 = bitcast %union.anon* %7909 to %struct.GAP*
  %7911 = bitcast %struct.GAP* %7910 to i16*
  %7912 = trunc i32 %7904 to i16
  %7913 = load i16, i16* %7911, align 4
  %7914 = and i16 %7912, 7
  %7915 = shl i16 %7914, 10
  %7916 = and i16 %7913, -7169
  %7917 = or i16 %7916, %7915
  store i16 %7917, i16* %7911, align 4
  %7918 = zext i16 %7914 to i32
  %7919 = load %union.rec*, %union.rec** %dest, align 8
  %7920 = bitcast %union.rec* %7919 to %struct.closure_type*
  %7921 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7920, i32 0, i32 4
  %7922 = bitcast %union.FOURTH_UNION* %7921 to %struct.STYLE*
  %7923 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7922, i32 0, i32 0
  %7924 = bitcast %union.anon* %7923 to %struct.GAP*
  %7925 = bitcast %struct.GAP* %7924 to i16*
  %7926 = load i16, i16* %7925, align 4
  %7927 = lshr i16 %7926, 13
  %7928 = zext i16 %7927 to i32
  %7929 = load %union.rec*, %union.rec** %junk, align 8
  %7930 = bitcast %union.rec* %7929 to %struct.closure_type*
  %7931 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7930, i32 0, i32 4
  %7932 = bitcast %union.FOURTH_UNION* %7931 to %struct.STYLE*
  %7933 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7932, i32 0, i32 0
  %7934 = bitcast %union.anon* %7933 to %struct.GAP*
  %7935 = bitcast %struct.GAP* %7934 to i16*
  %7936 = trunc i32 %7928 to i16
  %7937 = load i16, i16* %7935, align 4
  %7938 = and i16 %7936, 7
  %7939 = shl i16 %7938, 13
  %7940 = and i16 %7937, 8191
  %7941 = or i16 %7940, %7939
  store i16 %7941, i16* %7935, align 4
  %7942 = zext i16 %7938 to i32
  %7943 = load %union.rec*, %union.rec** %dest, align 8
  %7944 = bitcast %union.rec* %7943 to %struct.closure_type*
  %7945 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7944, i32 0, i32 4
  %7946 = bitcast %union.FOURTH_UNION* %7945 to %struct.STYLE*
  %7947 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7946, i32 0, i32 0
  %7948 = bitcast %union.anon* %7947 to %struct.GAP*
  %7949 = getelementptr inbounds %struct.GAP, %struct.GAP* %7948, i32 0, i32 1
  %7950 = load i16, i16* %7949, align 2
  %7951 = load %union.rec*, %union.rec** %junk, align 8
  %7952 = bitcast %union.rec* %7951 to %struct.closure_type*
  %7953 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7952, i32 0, i32 4
  %7954 = bitcast %union.FOURTH_UNION* %7953 to %struct.STYLE*
  %7955 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7954, i32 0, i32 0
  %7956 = bitcast %union.anon* %7955 to %struct.GAP*
  %7957 = getelementptr inbounds %struct.GAP, %struct.GAP* %7956, i32 0, i32 1
  store i16 %7950, i16* %7957, align 2
  %7958 = load %union.rec*, %union.rec** %dest, align 8
  %7959 = bitcast %union.rec* %7958 to %struct.closure_type*
  %7960 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7959, i32 0, i32 4
  %7961 = bitcast %union.FOURTH_UNION* %7960 to %struct.STYLE*
  %7962 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7961, i32 0, i32 1
  %7963 = bitcast %union.anon.10* %7962 to %struct.anon.11*
  %7964 = bitcast %struct.anon.11* %7963 to i8*
  %7965 = load i8, i8* %7964, align 4
  %7966 = and i8 %7965, 3
  %7967 = zext i8 %7966 to i32
  %7968 = load %union.rec*, %union.rec** %junk, align 8
  %7969 = bitcast %union.rec* %7968 to %struct.closure_type*
  %7970 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7969, i32 0, i32 4
  %7971 = bitcast %union.FOURTH_UNION* %7970 to %struct.STYLE*
  %7972 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7971, i32 0, i32 1
  %7973 = bitcast %union.anon.10* %7972 to %struct.anon.11*
  %7974 = bitcast %struct.anon.11* %7973 to i8*
  %7975 = trunc i32 %7967 to i8
  %7976 = load i8, i8* %7974, align 4
  %7977 = and i8 %7975, 3
  %7978 = and i8 %7976, -4
  %7979 = or i8 %7978, %7977
  store i8 %7979, i8* %7974, align 4
  %7980 = zext i8 %7977 to i32
  %7981 = load %union.rec*, %union.rec** %dest, align 8
  %7982 = bitcast %union.rec* %7981 to %struct.closure_type*
  %7983 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7982, i32 0, i32 4
  %7984 = bitcast %union.FOURTH_UNION* %7983 to %struct.STYLE*
  %7985 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7984, i32 0, i32 1
  %7986 = bitcast %union.anon.10* %7985 to %struct.anon.11*
  %7987 = bitcast %struct.anon.11* %7986 to i8*
  %7988 = load i8, i8* %7987, align 4
  %7989 = lshr i8 %7988, 2
  %7990 = and i8 %7989, 3
  %7991 = zext i8 %7990 to i32
  %7992 = load %union.rec*, %union.rec** %junk, align 8
  %7993 = bitcast %union.rec* %7992 to %struct.closure_type*
  %7994 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7993, i32 0, i32 4
  %7995 = bitcast %union.FOURTH_UNION* %7994 to %struct.STYLE*
  %7996 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7995, i32 0, i32 1
  %7997 = bitcast %union.anon.10* %7996 to %struct.anon.11*
  %7998 = bitcast %struct.anon.11* %7997 to i8*
  %7999 = trunc i32 %7991 to i8
  %8000 = load i8, i8* %7998, align 4
  %8001 = and i8 %7999, 3
  %8002 = shl i8 %8001, 2
  %8003 = and i8 %8000, -13
  %8004 = or i8 %8003, %8002
  store i8 %8004, i8* %7998, align 4
  %8005 = zext i8 %8001 to i32
  %8006 = load %union.rec*, %union.rec** %dest, align 8
  %8007 = bitcast %union.rec* %8006 to %struct.closure_type*
  %8008 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8007, i32 0, i32 4
  %8009 = bitcast %union.FOURTH_UNION* %8008 to %struct.STYLE*
  %8010 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8009, i32 0, i32 1
  %8011 = bitcast %union.anon.10* %8010 to %struct.anon.11*
  %8012 = bitcast %struct.anon.11* %8011 to i8*
  %8013 = load i8, i8* %8012, align 4
  %8014 = lshr i8 %8013, 4
  %8015 = and i8 %8014, 7
  %8016 = zext i8 %8015 to i32
  %8017 = load %union.rec*, %union.rec** %junk, align 8
  %8018 = bitcast %union.rec* %8017 to %struct.closure_type*
  %8019 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8018, i32 0, i32 4
  %8020 = bitcast %union.FOURTH_UNION* %8019 to %struct.STYLE*
  %8021 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8020, i32 0, i32 1
  %8022 = bitcast %union.anon.10* %8021 to %struct.anon.11*
  %8023 = bitcast %struct.anon.11* %8022 to i8*
  %8024 = trunc i32 %8016 to i8
  %8025 = load i8, i8* %8023, align 4
  %8026 = and i8 %8024, 7
  %8027 = shl i8 %8026, 4
  %8028 = and i8 %8025, -113
  %8029 = or i8 %8028, %8027
  store i8 %8029, i8* %8023, align 4
  %8030 = zext i8 %8026 to i32
  %8031 = load %union.rec*, %union.rec** %dest, align 8
  %8032 = bitcast %union.rec* %8031 to %struct.closure_type*
  %8033 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8032, i32 0, i32 4
  %8034 = bitcast %union.FOURTH_UNION* %8033 to %struct.STYLE*
  %8035 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8034, i32 0, i32 0
  %8036 = bitcast %union.anon* %8035 to %struct.anon.9*
  %8037 = bitcast %struct.anon.9* %8036 to i8*
  %8038 = load i8, i8* %8037, align 4
  %8039 = lshr i8 %8038, 3
  %8040 = and i8 %8039, 1
  %8041 = zext i8 %8040 to i32
  %8042 = load %union.rec*, %union.rec** %junk, align 8
  %8043 = bitcast %union.rec* %8042 to %struct.closure_type*
  %8044 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8043, i32 0, i32 4
  %8045 = bitcast %union.FOURTH_UNION* %8044 to %struct.STYLE*
  %8046 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8045, i32 0, i32 0
  %8047 = bitcast %union.anon* %8046 to %struct.anon.9*
  %8048 = bitcast %struct.anon.9* %8047 to i8*
  %8049 = trunc i32 %8041 to i8
  %8050 = load i8, i8* %8048, align 4
  %8051 = and i8 %8049, 1
  %8052 = shl i8 %8051, 3
  %8053 = and i8 %8050, -9
  %8054 = or i8 %8053, %8052
  store i8 %8054, i8* %8048, align 4
  %8055 = zext i8 %8051 to i32
  %8056 = load %union.rec*, %union.rec** %dest, align 8
  %8057 = bitcast %union.rec* %8056 to %struct.closure_type*
  %8058 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8057, i32 0, i32 4
  %8059 = bitcast %union.FOURTH_UNION* %8058 to %struct.STYLE*
  %8060 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8059, i32 0, i32 1
  %8061 = bitcast %union.anon.10* %8060 to %struct.GAP*
  %8062 = bitcast %struct.GAP* %8061 to i16*
  %8063 = load i16, i16* %8062, align 4
  %8064 = lshr i16 %8063, 7
  %8065 = and i16 %8064, 1
  %8066 = zext i16 %8065 to i32
  %8067 = load %union.rec*, %union.rec** %junk, align 8
  %8068 = bitcast %union.rec* %8067 to %struct.closure_type*
  %8069 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8068, i32 0, i32 4
  %8070 = bitcast %union.FOURTH_UNION* %8069 to %struct.STYLE*
  %8071 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8070, i32 0, i32 1
  %8072 = bitcast %union.anon.10* %8071 to %struct.GAP*
  %8073 = bitcast %struct.GAP* %8072 to i16*
  %8074 = trunc i32 %8066 to i16
  %8075 = load i16, i16* %8073, align 4
  %8076 = and i16 %8074, 1
  %8077 = shl i16 %8076, 7
  %8078 = and i16 %8075, -129
  %8079 = or i16 %8078, %8077
  store i16 %8079, i16* %8073, align 4
  %8080 = zext i16 %8076 to i32
  %8081 = load %union.rec*, %union.rec** %dest, align 8
  %8082 = bitcast %union.rec* %8081 to %struct.closure_type*
  %8083 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8082, i32 0, i32 4
  %8084 = bitcast %union.FOURTH_UNION* %8083 to %struct.STYLE*
  %8085 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8084, i32 0, i32 1
  %8086 = bitcast %union.anon.10* %8085 to %struct.GAP*
  %8087 = bitcast %struct.GAP* %8086 to i16*
  %8088 = load i16, i16* %8087, align 4
  %8089 = lshr i16 %8088, 8
  %8090 = and i16 %8089, 1
  %8091 = zext i16 %8090 to i32
  %8092 = load %union.rec*, %union.rec** %junk, align 8
  %8093 = bitcast %union.rec* %8092 to %struct.closure_type*
  %8094 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8093, i32 0, i32 4
  %8095 = bitcast %union.FOURTH_UNION* %8094 to %struct.STYLE*
  %8096 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8095, i32 0, i32 1
  %8097 = bitcast %union.anon.10* %8096 to %struct.GAP*
  %8098 = bitcast %struct.GAP* %8097 to i16*
  %8099 = trunc i32 %8091 to i16
  %8100 = load i16, i16* %8098, align 4
  %8101 = and i16 %8099, 1
  %8102 = shl i16 %8101, 8
  %8103 = and i16 %8100, -257
  %8104 = or i16 %8103, %8102
  store i16 %8104, i16* %8098, align 4
  %8105 = zext i16 %8101 to i32
  %8106 = load %union.rec*, %union.rec** %dest, align 8
  %8107 = bitcast %union.rec* %8106 to %struct.closure_type*
  %8108 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8107, i32 0, i32 4
  %8109 = bitcast %union.FOURTH_UNION* %8108 to %struct.STYLE*
  %8110 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8109, i32 0, i32 1
  %8111 = bitcast %union.anon.10* %8110 to %struct.GAP*
  %8112 = bitcast %struct.GAP* %8111 to i16*
  %8113 = load i16, i16* %8112, align 4
  %8114 = lshr i16 %8113, 9
  %8115 = and i16 %8114, 1
  %8116 = zext i16 %8115 to i32
  %8117 = load %union.rec*, %union.rec** %junk, align 8
  %8118 = bitcast %union.rec* %8117 to %struct.closure_type*
  %8119 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8118, i32 0, i32 4
  %8120 = bitcast %union.FOURTH_UNION* %8119 to %struct.STYLE*
  %8121 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8120, i32 0, i32 1
  %8122 = bitcast %union.anon.10* %8121 to %struct.GAP*
  %8123 = bitcast %struct.GAP* %8122 to i16*
  %8124 = trunc i32 %8116 to i16
  %8125 = load i16, i16* %8123, align 4
  %8126 = and i16 %8124, 1
  %8127 = shl i16 %8126, 9
  %8128 = and i16 %8125, -513
  %8129 = or i16 %8128, %8127
  store i16 %8129, i16* %8123, align 4
  %8130 = zext i16 %8126 to i32
  %8131 = load %union.rec*, %union.rec** %dest, align 8
  %8132 = bitcast %union.rec* %8131 to %struct.closure_type*
  %8133 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8132, i32 0, i32 4
  %8134 = bitcast %union.FOURTH_UNION* %8133 to %struct.STYLE*
  %8135 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8134, i32 0, i32 1
  %8136 = bitcast %union.anon.10* %8135 to %struct.GAP*
  %8137 = bitcast %struct.GAP* %8136 to i16*
  %8138 = load i16, i16* %8137, align 4
  %8139 = lshr i16 %8138, 10
  %8140 = and i16 %8139, 7
  %8141 = zext i16 %8140 to i32
  %8142 = load %union.rec*, %union.rec** %junk, align 8
  %8143 = bitcast %union.rec* %8142 to %struct.closure_type*
  %8144 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8143, i32 0, i32 4
  %8145 = bitcast %union.FOURTH_UNION* %8144 to %struct.STYLE*
  %8146 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8145, i32 0, i32 1
  %8147 = bitcast %union.anon.10* %8146 to %struct.GAP*
  %8148 = bitcast %struct.GAP* %8147 to i16*
  %8149 = trunc i32 %8141 to i16
  %8150 = load i16, i16* %8148, align 4
  %8151 = and i16 %8149, 7
  %8152 = shl i16 %8151, 10
  %8153 = and i16 %8150, -7169
  %8154 = or i16 %8153, %8152
  store i16 %8154, i16* %8148, align 4
  %8155 = zext i16 %8151 to i32
  %8156 = load %union.rec*, %union.rec** %dest, align 8
  %8157 = bitcast %union.rec* %8156 to %struct.closure_type*
  %8158 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8157, i32 0, i32 4
  %8159 = bitcast %union.FOURTH_UNION* %8158 to %struct.STYLE*
  %8160 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8159, i32 0, i32 1
  %8161 = bitcast %union.anon.10* %8160 to %struct.GAP*
  %8162 = bitcast %struct.GAP* %8161 to i16*
  %8163 = load i16, i16* %8162, align 4
  %8164 = lshr i16 %8163, 13
  %8165 = zext i16 %8164 to i32
  %8166 = load %union.rec*, %union.rec** %junk, align 8
  %8167 = bitcast %union.rec* %8166 to %struct.closure_type*
  %8168 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8167, i32 0, i32 4
  %8169 = bitcast %union.FOURTH_UNION* %8168 to %struct.STYLE*
  %8170 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8169, i32 0, i32 1
  %8171 = bitcast %union.anon.10* %8170 to %struct.GAP*
  %8172 = bitcast %struct.GAP* %8171 to i16*
  %8173 = trunc i32 %8165 to i16
  %8174 = load i16, i16* %8172, align 4
  %8175 = and i16 %8173, 7
  %8176 = shl i16 %8175, 13
  %8177 = and i16 %8174, 8191
  %8178 = or i16 %8177, %8176
  store i16 %8178, i16* %8172, align 4
  %8179 = zext i16 %8175 to i32
  %8180 = load %union.rec*, %union.rec** %dest, align 8
  %8181 = bitcast %union.rec* %8180 to %struct.closure_type*
  %8182 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8181, i32 0, i32 4
  %8183 = bitcast %union.FOURTH_UNION* %8182 to %struct.STYLE*
  %8184 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8183, i32 0, i32 1
  %8185 = bitcast %union.anon.10* %8184 to %struct.GAP*
  %8186 = getelementptr inbounds %struct.GAP, %struct.GAP* %8185, i32 0, i32 1
  %8187 = load i16, i16* %8186, align 2
  %8188 = load %union.rec*, %union.rec** %junk, align 8
  %8189 = bitcast %union.rec* %8188 to %struct.closure_type*
  %8190 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8189, i32 0, i32 4
  %8191 = bitcast %union.FOURTH_UNION* %8190 to %struct.STYLE*
  %8192 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8191, i32 0, i32 1
  %8193 = bitcast %union.anon.10* %8192 to %struct.GAP*
  %8194 = getelementptr inbounds %struct.GAP, %struct.GAP* %8193, i32 0, i32 1
  store i16 %8187, i16* %8194, align 2
  %8195 = load %union.rec*, %union.rec** %dest, align 8
  %8196 = bitcast %union.rec* %8195 to %struct.closure_type*
  %8197 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8196, i32 0, i32 4
  %8198 = bitcast %union.FOURTH_UNION* %8197 to %struct.STYLE*
  %8199 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8198, i32 0, i32 4
  %8200 = load i32, i32* %8199, align 4
  %8201 = and i32 %8200, 4095
  %8202 = load %union.rec*, %union.rec** %junk, align 8
  %8203 = bitcast %union.rec* %8202 to %struct.closure_type*
  %8204 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8203, i32 0, i32 4
  %8205 = bitcast %union.FOURTH_UNION* %8204 to %struct.STYLE*
  %8206 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8205, i32 0, i32 4
  %8207 = load i32, i32* %8206, align 4
  %8208 = and i32 %8201, 4095
  %8209 = and i32 %8207, -4096
  %8210 = or i32 %8209, %8208
  store i32 %8210, i32* %8206, align 4
  %8211 = load %union.rec*, %union.rec** %dest, align 8
  %8212 = bitcast %union.rec* %8211 to %struct.closure_type*
  %8213 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8212, i32 0, i32 4
  %8214 = bitcast %union.FOURTH_UNION* %8213 to %struct.STYLE*
  %8215 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8214, i32 0, i32 4
  %8216 = load i32, i32* %8215, align 4
  %8217 = lshr i32 %8216, 12
  %8218 = and i32 %8217, 1023
  %8219 = load %union.rec*, %union.rec** %junk, align 8
  %8220 = bitcast %union.rec* %8219 to %struct.closure_type*
  %8221 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8220, i32 0, i32 4
  %8222 = bitcast %union.FOURTH_UNION* %8221 to %struct.STYLE*
  %8223 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8222, i32 0, i32 4
  %8224 = load i32, i32* %8223, align 4
  %8225 = and i32 %8218, 1023
  %8226 = shl i32 %8225, 12
  %8227 = and i32 %8224, -4190209
  %8228 = or i32 %8227, %8226
  store i32 %8228, i32* %8223, align 4
  %8229 = load %union.rec*, %union.rec** %dest, align 8
  %8230 = bitcast %union.rec* %8229 to %struct.closure_type*
  %8231 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8230, i32 0, i32 4
  %8232 = bitcast %union.FOURTH_UNION* %8231 to %struct.STYLE*
  %8233 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8232, i32 0, i32 4
  %8234 = load i32, i32* %8233, align 4
  %8235 = lshr i32 %8234, 22
  %8236 = and i32 %8235, 3
  %8237 = load %union.rec*, %union.rec** %junk, align 8
  %8238 = bitcast %union.rec* %8237 to %struct.closure_type*
  %8239 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8238, i32 0, i32 4
  %8240 = bitcast %union.FOURTH_UNION* %8239 to %struct.STYLE*
  %8241 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8240, i32 0, i32 4
  %8242 = load i32, i32* %8241, align 4
  %8243 = and i32 %8236, 3
  %8244 = shl i32 %8243, 22
  %8245 = and i32 %8242, -12582913
  %8246 = or i32 %8245, %8244
  store i32 %8246, i32* %8241, align 4
  %8247 = load %union.rec*, %union.rec** %dest, align 8
  %8248 = bitcast %union.rec* %8247 to %struct.closure_type*
  %8249 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8248, i32 0, i32 4
  %8250 = bitcast %union.FOURTH_UNION* %8249 to %struct.STYLE*
  %8251 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8250, i32 0, i32 4
  %8252 = load i32, i32* %8251, align 4
  %8253 = lshr i32 %8252, 24
  %8254 = and i32 %8253, 63
  %8255 = load %union.rec*, %union.rec** %junk, align 8
  %8256 = bitcast %union.rec* %8255 to %struct.closure_type*
  %8257 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8256, i32 0, i32 4
  %8258 = bitcast %union.FOURTH_UNION* %8257 to %struct.STYLE*
  %8259 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8258, i32 0, i32 4
  %8260 = load i32, i32* %8259, align 4
  %8261 = and i32 %8254, 63
  %8262 = shl i32 %8261, 24
  %8263 = and i32 %8260, -1056964609
  %8264 = or i32 %8263, %8262
  store i32 %8264, i32* %8259, align 4
  %8265 = load %union.rec*, %union.rec** %dest, align 8
  %8266 = bitcast %union.rec* %8265 to %struct.closure_type*
  %8267 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8266, i32 0, i32 4
  %8268 = bitcast %union.FOURTH_UNION* %8267 to %struct.STYLE*
  %8269 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8268, i32 0, i32 4
  %8270 = load i32, i32* %8269, align 4
  %8271 = lshr i32 %8270, 31
  %8272 = load %union.rec*, %union.rec** %junk, align 8
  %8273 = bitcast %union.rec* %8272 to %struct.closure_type*
  %8274 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8273, i32 0, i32 4
  %8275 = bitcast %union.FOURTH_UNION* %8274 to %struct.STYLE*
  %8276 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8275, i32 0, i32 4
  %8277 = load i32, i32* %8276, align 4
  %8278 = and i32 %8271, 1
  %8279 = shl i32 %8278, 31
  %8280 = and i32 %8277, 2147483647
  %8281 = or i32 %8280, %8279
  store i32 %8281, i32* %8276, align 4
  %8282 = load %union.rec*, %union.rec** %dest, align 8
  %8283 = bitcast %union.rec* %8282 to %struct.closure_type*
  %8284 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8283, i32 0, i32 4
  %8285 = bitcast %union.FOURTH_UNION* %8284 to %struct.STYLE*
  %8286 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8285, i32 0, i32 4
  %8287 = load i32, i32* %8286, align 4
  %8288 = lshr i32 %8287, 30
  %8289 = and i32 %8288, 1
  %8290 = load %union.rec*, %union.rec** %junk, align 8
  %8291 = bitcast %union.rec* %8290 to %struct.closure_type*
  %8292 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8291, i32 0, i32 4
  %8293 = bitcast %union.FOURTH_UNION* %8292 to %struct.STYLE*
  %8294 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8293, i32 0, i32 4
  %8295 = load i32, i32* %8294, align 4
  %8296 = and i32 %8289, 1
  %8297 = shl i32 %8296, 30
  %8298 = and i32 %8295, -1073741825
  %8299 = or i32 %8298, %8297
  store i32 %8299, i32* %8294, align 4
  %8300 = load %union.rec*, %union.rec** %dest, align 8
  %8301 = bitcast %union.rec* %8300 to %struct.closure_type*
  %8302 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8301, i32 0, i32 4
  %8303 = bitcast %union.FOURTH_UNION* %8302 to %struct.STYLE*
  %8304 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8303, i32 0, i32 0
  %8305 = bitcast %union.anon* %8304 to %struct.anon.9*
  %8306 = bitcast %struct.anon.9* %8305 to i8*
  %8307 = load i8, i8* %8306, align 4
  %8308 = and i8 %8307, 1
  %8309 = zext i8 %8308 to i32
  %8310 = load %union.rec*, %union.rec** %junk, align 8
  %8311 = bitcast %union.rec* %8310 to %struct.closure_type*
  %8312 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8311, i32 0, i32 4
  %8313 = bitcast %union.FOURTH_UNION* %8312 to %struct.STYLE*
  %8314 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8313, i32 0, i32 0
  %8315 = bitcast %union.anon* %8314 to %struct.anon.9*
  %8316 = bitcast %struct.anon.9* %8315 to i8*
  %8317 = trunc i32 %8309 to i8
  %8318 = load i8, i8* %8316, align 4
  %8319 = and i8 %8317, 1
  %8320 = and i8 %8318, -2
  %8321 = or i8 %8320, %8319
  store i8 %8321, i8* %8316, align 4
  %8322 = zext i8 %8319 to i32
  %8323 = load %union.rec*, %union.rec** %dest, align 8
  %8324 = bitcast %union.rec* %8323 to %struct.closure_type*
  %8325 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8324, i32 0, i32 4
  %8326 = bitcast %union.FOURTH_UNION* %8325 to %struct.STYLE*
  %8327 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8326, i32 0, i32 0
  %8328 = bitcast %union.anon* %8327 to %struct.anon.9*
  %8329 = bitcast %struct.anon.9* %8328 to i8*
  %8330 = load i8, i8* %8329, align 4
  %8331 = lshr i8 %8330, 1
  %8332 = and i8 %8331, 1
  %8333 = zext i8 %8332 to i32
  %8334 = load %union.rec*, %union.rec** %junk, align 8
  %8335 = bitcast %union.rec* %8334 to %struct.closure_type*
  %8336 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8335, i32 0, i32 4
  %8337 = bitcast %union.FOURTH_UNION* %8336 to %struct.STYLE*
  %8338 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8337, i32 0, i32 0
  %8339 = bitcast %union.anon* %8338 to %struct.anon.9*
  %8340 = bitcast %struct.anon.9* %8339 to i8*
  %8341 = trunc i32 %8333 to i8
  %8342 = load i8, i8* %8340, align 4
  %8343 = and i8 %8341, 1
  %8344 = shl i8 %8343, 1
  %8345 = and i8 %8342, -3
  %8346 = or i8 %8345, %8344
  store i8 %8346, i8* %8340, align 4
  %8347 = zext i8 %8343 to i32
  %8348 = load %union.rec*, %union.rec** %dest, align 8
  %8349 = bitcast %union.rec* %8348 to %struct.closure_type*
  %8350 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8349, i32 0, i32 4
  %8351 = bitcast %union.FOURTH_UNION* %8350 to %struct.STYLE*
  %8352 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8351, i32 0, i32 0
  %8353 = bitcast %union.anon* %8352 to %struct.anon.9*
  %8354 = bitcast %struct.anon.9* %8353 to i8*
  %8355 = load i8, i8* %8354, align 4
  %8356 = lshr i8 %8355, 2
  %8357 = and i8 %8356, 1
  %8358 = zext i8 %8357 to i32
  %8359 = load %union.rec*, %union.rec** %junk, align 8
  %8360 = bitcast %union.rec* %8359 to %struct.closure_type*
  %8361 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8360, i32 0, i32 4
  %8362 = bitcast %union.FOURTH_UNION* %8361 to %struct.STYLE*
  %8363 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8362, i32 0, i32 0
  %8364 = bitcast %union.anon* %8363 to %struct.anon.9*
  %8365 = bitcast %struct.anon.9* %8364 to i8*
  %8366 = trunc i32 %8358 to i8
  %8367 = load i8, i8* %8365, align 4
  %8368 = and i8 %8366, 1
  %8369 = shl i8 %8368, 2
  %8370 = and i8 %8367, -5
  %8371 = or i8 %8370, %8369
  store i8 %8371, i8* %8365, align 4
  %8372 = zext i8 %8368 to i32
  %8373 = load %union.rec*, %union.rec** %dest, align 8
  %8374 = bitcast %union.rec* %8373 to %struct.closure_type*
  %8375 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8374, i32 0, i32 4
  %8376 = bitcast %union.FOURTH_UNION* %8375 to %struct.STYLE*
  %8377 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8376, i32 0, i32 0
  %8378 = bitcast %union.anon* %8377 to %struct.anon.9*
  %8379 = bitcast %struct.anon.9* %8378 to i8*
  %8380 = load i8, i8* %8379, align 4
  %8381 = lshr i8 %8380, 4
  %8382 = and i8 %8381, 7
  %8383 = zext i8 %8382 to i32
  %8384 = load %union.rec*, %union.rec** %junk, align 8
  %8385 = bitcast %union.rec* %8384 to %struct.closure_type*
  %8386 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8385, i32 0, i32 4
  %8387 = bitcast %union.FOURTH_UNION* %8386 to %struct.STYLE*
  %8388 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8387, i32 0, i32 0
  %8389 = bitcast %union.anon* %8388 to %struct.anon.9*
  %8390 = bitcast %struct.anon.9* %8389 to i8*
  %8391 = trunc i32 %8383 to i8
  %8392 = load i8, i8* %8390, align 4
  %8393 = and i8 %8391, 7
  %8394 = shl i8 %8393, 4
  %8395 = and i8 %8392, -113
  %8396 = or i8 %8395, %8394
  store i8 %8396, i8* %8390, align 4
  %8397 = zext i8 %8393 to i32
  %8398 = load %union.rec*, %union.rec** %dest, align 8
  %8399 = bitcast %union.rec* %8398 to %struct.closure_type*
  %8400 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8399, i32 0, i32 4
  %8401 = bitcast %union.FOURTH_UNION* %8400 to %struct.STYLE*
  %8402 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8401, i32 0, i32 2
  %8403 = load i16, i16* %8402, align 2
  %8404 = load %union.rec*, %union.rec** %junk, align 8
  %8405 = bitcast %union.rec* %8404 to %struct.closure_type*
  %8406 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8405, i32 0, i32 4
  %8407 = bitcast %union.FOURTH_UNION* %8406 to %struct.STYLE*
  %8408 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8407, i32 0, i32 2
  store i16 %8403, i16* %8408, align 2
  %8409 = load %union.rec*, %union.rec** %dest, align 8
  %8410 = bitcast %union.rec* %8409 to %struct.closure_type*
  %8411 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8410, i32 0, i32 4
  %8412 = bitcast %union.FOURTH_UNION* %8411 to %struct.STYLE*
  %8413 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8412, i32 0, i32 3
  %8414 = load i16, i16* %8413, align 2
  %8415 = load %union.rec*, %union.rec** %junk, align 8
  %8416 = bitcast %union.rec* %8415 to %struct.closure_type*
  %8417 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8416, i32 0, i32 4
  %8418 = bitcast %union.FOURTH_UNION* %8417 to %struct.STYLE*
  %8419 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8418, i32 0, i32 3
  store i16 %8414, i16* %8419, align 2
  %8420 = load %union.rec*, %union.rec** %junk, align 8
  %8421 = bitcast %union.rec* %8420 to %struct.closure_type*
  %8422 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8421, i32 0, i32 4
  %8423 = bitcast %union.FOURTH_UNION* %8422 to %struct.STYLE*
  %8424 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8423, i32 0, i32 0
  %8425 = bitcast %union.anon* %8424 to %struct.anon.9*
  %8426 = bitcast %struct.anon.9* %8425 to i8*
  %8427 = load i8, i8* %8426, align 4
  %8428 = lshr i8 %8427, 2
  %8429 = and i8 %8428, 1
  %8430 = zext i8 %8429 to i32
  %8431 = load %union.rec*, %union.rec** %junk, align 8
  %8432 = bitcast %union.rec* %8431 to %struct.word_type*
  %8433 = getelementptr inbounds %struct.word_type, %struct.word_type* %8432, i32 0, i32 2
  %8434 = bitcast %union.SECOND_UNION* %8433 to %struct.anon.2*
  %8435 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8434, i32 0, i32 2
  %8436 = trunc i32 %8430 to i16
  %8437 = load i16, i16* %8435, align 2
  %8438 = and i16 %8436, 1
  %8439 = shl i16 %8438, 11
  %8440 = and i16 %8437, -2049
  %8441 = or i16 %8440, %8439
  store i16 %8441, i16* %8435, align 2
  %8442 = zext i16 %8438 to i32
  br label %8443

; <label>:8443                                    ; preds = %7818, %7763, %7760
  br label %8444

; <label>:8444                                    ; preds = %8443, %7756
  %8445 = load %union.rec*, %union.rec** %2, align 8
  %8446 = load %union.rec*, %union.rec** %link, align 8
  %8447 = load %union.rec*, %union.rec** %2, align 8
  %8448 = icmp eq %union.rec* %8446, %8447
  br i1 %8448, label %8449, label %8451

; <label>:8449                                    ; preds = %8444
  %8450 = load %union.rec*, %union.rec** %2, align 8
  br label %8458

; <label>:8451                                    ; preds = %8444
  %8452 = load %union.rec*, %union.rec** %link, align 8
  %8453 = bitcast %union.rec* %8452 to %struct.word_type*
  %8454 = getelementptr inbounds %struct.word_type, %struct.word_type* %8453, i32 0, i32 0
  %8455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8454, i32 0, i64 0
  %8456 = getelementptr inbounds %struct.LIST, %struct.LIST* %8455, i32 0, i32 1
  %8457 = load %union.rec*, %union.rec** %8456, align 8
  br label %8458

; <label>:8458                                    ; preds = %8451, %8449
  %8459 = phi %union.rec* [ %8450, %8449 ], [ %8457, %8451 ]
  %8460 = load %union.rec*, %union.rec** %dest_index, align 8
  call void @Promote(%union.rec* %8445, %union.rec* %8459, %union.rec* %8460, i32 1)
  %8461 = load %union.rec*, %union.rec** %target, align 8
  %8462 = bitcast %union.rec* %8461 to %struct.word_type*
  %8463 = getelementptr inbounds %struct.word_type, %struct.word_type* %8462, i32 0, i32 2
  %8464 = bitcast %union.SECOND_UNION* %8463 to %struct.anon.2*
  %8465 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8464, i32 0, i32 2
  %8466 = load i16, i16* %8465, align 2
  %8467 = lshr i16 %8466, 4
  %8468 = and i16 %8467, 1
  %8469 = zext i16 %8468 to i32
  %8470 = icmp ne i32 %8469, 0
  br i1 %8470, label %8515, label %8471

; <label>:8471                                    ; preds = %8458
  %8472 = load %union.rec*, %union.rec** %target, align 8
  %8473 = bitcast %union.rec* %8472 to %struct.word_type*
  %8474 = getelementptr inbounds %struct.word_type, %struct.word_type* %8473, i32 0, i32 2
  %8475 = bitcast %union.SECOND_UNION* %8474 to %struct.anon.2*
  %8476 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8475, i32 0, i32 2
  %8477 = load i16, i16* %8476, align 2
  %8478 = lshr i16 %8477, 3
  %8479 = and i16 %8478, 1
  %8480 = zext i16 %8479 to i32
  %8481 = icmp ne i32 %8480, 0
  br i1 %8481, label %8515, label %8482

; <label>:8482                                    ; preds = %8471
  %8483 = load %union.rec*, %union.rec** %target_galley, align 8
  %8484 = bitcast %union.rec* %8483 to %struct.word_type*
  %8485 = getelementptr inbounds %struct.word_type, %struct.word_type* %8484, i32 0, i32 0
  %8486 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8485, i32 0, i64 0
  %8487 = getelementptr inbounds %struct.LIST, %struct.LIST* %8486, i32 0, i32 0
  %8488 = load %union.rec*, %union.rec** %8487, align 8
  %8489 = bitcast %union.rec* %8488 to %struct.word_type*
  %8490 = getelementptr inbounds %struct.word_type, %struct.word_type* %8489, i32 0, i32 0
  %8491 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8490, i32 0, i64 1
  %8492 = getelementptr inbounds %struct.LIST, %struct.LIST* %8491, i32 0, i32 0
  %8493 = load %union.rec*, %union.rec** %8492, align 8
  store %union.rec* %8493, %union.rec** %z, align 8
  br label %8494

; <label>:8494                                    ; preds = %8504, %8482
  %8495 = load %union.rec*, %union.rec** %z, align 8
  %8496 = bitcast %union.rec* %8495 to %struct.word_type*
  %8497 = getelementptr inbounds %struct.word_type, %struct.word_type* %8496, i32 0, i32 1
  %8498 = bitcast %union.FIRST_UNION* %8497 to %struct.anon*
  %8499 = getelementptr inbounds %struct.anon, %struct.anon* %8498, i32 0, i32 0
  %8500 = load i8, i8* %8499, align 1
  %8501 = zext i8 %8500 to i32
  %8502 = icmp eq i32 %8501, 0
  br i1 %8502, label %8503, label %8511

; <label>:8503                                    ; preds = %8494
  br label %8504

; <label>:8504                                    ; preds = %8503
  %8505 = load %union.rec*, %union.rec** %z, align 8
  %8506 = bitcast %union.rec* %8505 to %struct.word_type*
  %8507 = getelementptr inbounds %struct.word_type, %struct.word_type* %8506, i32 0, i32 0
  %8508 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8507, i32 0, i64 1
  %8509 = getelementptr inbounds %struct.LIST, %struct.LIST* %8508, i32 0, i32 0
  %8510 = load %union.rec*, %union.rec** %8509, align 8
  store %union.rec* %8510, %union.rec** %z, align 8
  br label %8494

; <label>:8511                                    ; preds = %8494
  %8512 = load %union.rec*, %union.rec** %target, align 8
  %8513 = load %union.rec*, %union.rec** %z, align 8
  %8514 = load %union.rec*, %union.rec** %z, align 8
  call void @Interpose(%union.rec* %8512, i32 19, %union.rec* %8513, %union.rec* %8514)
  br label %8515

; <label>:8515                                    ; preds = %8511, %8471, %8458
  %8516 = load %union.rec*, %union.rec** %target_galley, align 8
  %8517 = load %union.rec*, %union.rec** %target_galley, align 8
  %8518 = load %union.rec*, %union.rec** %target_index, align 8
  call void @Promote(%union.rec* %8516, %union.rec* %8517, %union.rec* %8518, i32 1)
  %8519 = load %union.rec*, %union.rec** %target_galley, align 8
  store %union.rec* %8519, %union.rec** @xx_hold, align 8
  br label %8520

; <label>:8520                                    ; preds = %8680, %8515
  %8521 = load %union.rec*, %union.rec** @xx_hold, align 8
  %8522 = bitcast %union.rec* %8521 to %struct.word_type*
  %8523 = getelementptr inbounds %struct.word_type, %struct.word_type* %8522, i32 0, i32 0
  %8524 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8523, i32 0, i64 1
  %8525 = getelementptr inbounds %struct.LIST, %struct.LIST* %8524, i32 0, i32 1
  %8526 = load %union.rec*, %union.rec** %8525, align 8
  %8527 = load %union.rec*, %union.rec** @xx_hold, align 8
  %8528 = icmp ne %union.rec* %8526, %8527
  br i1 %8528, label %8529, label %8695

; <label>:8529                                    ; preds = %8520
  %8530 = load %union.rec*, %union.rec** @xx_hold, align 8
  %8531 = bitcast %union.rec* %8530 to %struct.word_type*
  %8532 = getelementptr inbounds %struct.word_type, %struct.word_type* %8531, i32 0, i32 0
  %8533 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8532, i32 0, i64 1
  %8534 = getelementptr inbounds %struct.LIST, %struct.LIST* %8533, i32 0, i32 1
  %8535 = load %union.rec*, %union.rec** %8534, align 8
  store %union.rec* %8535, %union.rec** @xx_link, align 8
  %8536 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8536, %union.rec** @zz_hold, align 8
  %8537 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8538 = bitcast %union.rec* %8537 to %struct.word_type*
  %8539 = getelementptr inbounds %struct.word_type, %struct.word_type* %8538, i32 0, i32 0
  %8540 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8539, i32 0, i64 1
  %8541 = getelementptr inbounds %struct.LIST, %struct.LIST* %8540, i32 0, i32 1
  %8542 = load %union.rec*, %union.rec** %8541, align 8
  %8543 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8544 = icmp eq %union.rec* %8542, %8543
  br i1 %8544, label %8545, label %8546

; <label>:8545                                    ; preds = %8529
  br label %8587

; <label>:8546                                    ; preds = %8529
  %8547 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8548 = bitcast %union.rec* %8547 to %struct.word_type*
  %8549 = getelementptr inbounds %struct.word_type, %struct.word_type* %8548, i32 0, i32 0
  %8550 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8549, i32 0, i64 1
  %8551 = getelementptr inbounds %struct.LIST, %struct.LIST* %8550, i32 0, i32 1
  %8552 = load %union.rec*, %union.rec** %8551, align 8
  store %union.rec* %8552, %union.rec** @zz_res, align 8
  %8553 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8554 = bitcast %union.rec* %8553 to %struct.word_type*
  %8555 = getelementptr inbounds %struct.word_type, %struct.word_type* %8554, i32 0, i32 0
  %8556 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8555, i32 0, i64 1
  %8557 = getelementptr inbounds %struct.LIST, %struct.LIST* %8556, i32 0, i32 0
  %8558 = load %union.rec*, %union.rec** %8557, align 8
  %8559 = load %union.rec*, %union.rec** @zz_res, align 8
  %8560 = bitcast %union.rec* %8559 to %struct.word_type*
  %8561 = getelementptr inbounds %struct.word_type, %struct.word_type* %8560, i32 0, i32 0
  %8562 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8561, i32 0, i64 1
  %8563 = getelementptr inbounds %struct.LIST, %struct.LIST* %8562, i32 0, i32 0
  store %union.rec* %8558, %union.rec** %8563, align 8
  %8564 = load %union.rec*, %union.rec** @zz_res, align 8
  %8565 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8566 = bitcast %union.rec* %8565 to %struct.word_type*
  %8567 = getelementptr inbounds %struct.word_type, %struct.word_type* %8566, i32 0, i32 0
  %8568 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8567, i32 0, i64 1
  %8569 = getelementptr inbounds %struct.LIST, %struct.LIST* %8568, i32 0, i32 0
  %8570 = load %union.rec*, %union.rec** %8569, align 8
  %8571 = bitcast %union.rec* %8570 to %struct.word_type*
  %8572 = getelementptr inbounds %struct.word_type, %struct.word_type* %8571, i32 0, i32 0
  %8573 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8572, i32 0, i64 1
  %8574 = getelementptr inbounds %struct.LIST, %struct.LIST* %8573, i32 0, i32 1
  store %union.rec* %8564, %union.rec** %8574, align 8
  %8575 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8576 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8577 = bitcast %union.rec* %8576 to %struct.word_type*
  %8578 = getelementptr inbounds %struct.word_type, %struct.word_type* %8577, i32 0, i32 0
  %8579 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8578, i32 0, i64 1
  %8580 = getelementptr inbounds %struct.LIST, %struct.LIST* %8579, i32 0, i32 1
  store %union.rec* %8575, %union.rec** %8580, align 8
  %8581 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8582 = bitcast %union.rec* %8581 to %struct.word_type*
  %8583 = getelementptr inbounds %struct.word_type, %struct.word_type* %8582, i32 0, i32 0
  %8584 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8583, i32 0, i64 1
  %8585 = getelementptr inbounds %struct.LIST, %struct.LIST* %8584, i32 0, i32 0
  store %union.rec* %8575, %union.rec** %8585, align 8
  %8586 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %8587

; <label>:8587                                    ; preds = %8546, %8545
  %8588 = phi %union.rec* [ null, %8545 ], [ %8586, %8546 ]
  %8589 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8589, %union.rec** @zz_hold, align 8
  %8590 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8591 = bitcast %union.rec* %8590 to %struct.word_type*
  %8592 = getelementptr inbounds %struct.word_type, %struct.word_type* %8591, i32 0, i32 0
  %8593 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8592, i32 0, i64 0
  %8594 = getelementptr inbounds %struct.LIST, %struct.LIST* %8593, i32 0, i32 1
  %8595 = load %union.rec*, %union.rec** %8594, align 8
  %8596 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8597 = icmp eq %union.rec* %8595, %8596
  br i1 %8597, label %8598, label %8599

; <label>:8598                                    ; preds = %8587
  br label %8640

; <label>:8599                                    ; preds = %8587
  %8600 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8601 = bitcast %union.rec* %8600 to %struct.word_type*
  %8602 = getelementptr inbounds %struct.word_type, %struct.word_type* %8601, i32 0, i32 0
  %8603 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8602, i32 0, i64 0
  %8604 = getelementptr inbounds %struct.LIST, %struct.LIST* %8603, i32 0, i32 1
  %8605 = load %union.rec*, %union.rec** %8604, align 8
  store %union.rec* %8605, %union.rec** @zz_res, align 8
  %8606 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8607 = bitcast %union.rec* %8606 to %struct.word_type*
  %8608 = getelementptr inbounds %struct.word_type, %struct.word_type* %8607, i32 0, i32 0
  %8609 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8608, i32 0, i64 0
  %8610 = getelementptr inbounds %struct.LIST, %struct.LIST* %8609, i32 0, i32 0
  %8611 = load %union.rec*, %union.rec** %8610, align 8
  %8612 = load %union.rec*, %union.rec** @zz_res, align 8
  %8613 = bitcast %union.rec* %8612 to %struct.word_type*
  %8614 = getelementptr inbounds %struct.word_type, %struct.word_type* %8613, i32 0, i32 0
  %8615 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8614, i32 0, i64 0
  %8616 = getelementptr inbounds %struct.LIST, %struct.LIST* %8615, i32 0, i32 0
  store %union.rec* %8611, %union.rec** %8616, align 8
  %8617 = load %union.rec*, %union.rec** @zz_res, align 8
  %8618 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8619 = bitcast %union.rec* %8618 to %struct.word_type*
  %8620 = getelementptr inbounds %struct.word_type, %struct.word_type* %8619, i32 0, i32 0
  %8621 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8620, i32 0, i64 0
  %8622 = getelementptr inbounds %struct.LIST, %struct.LIST* %8621, i32 0, i32 0
  %8623 = load %union.rec*, %union.rec** %8622, align 8
  %8624 = bitcast %union.rec* %8623 to %struct.word_type*
  %8625 = getelementptr inbounds %struct.word_type, %struct.word_type* %8624, i32 0, i32 0
  %8626 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8625, i32 0, i64 0
  %8627 = getelementptr inbounds %struct.LIST, %struct.LIST* %8626, i32 0, i32 1
  store %union.rec* %8617, %union.rec** %8627, align 8
  %8628 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8629 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8630 = bitcast %union.rec* %8629 to %struct.word_type*
  %8631 = getelementptr inbounds %struct.word_type, %struct.word_type* %8630, i32 0, i32 0
  %8632 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8631, i32 0, i64 0
  %8633 = getelementptr inbounds %struct.LIST, %struct.LIST* %8632, i32 0, i32 1
  store %union.rec* %8628, %union.rec** %8633, align 8
  %8634 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8635 = bitcast %union.rec* %8634 to %struct.word_type*
  %8636 = getelementptr inbounds %struct.word_type, %struct.word_type* %8635, i32 0, i32 0
  %8637 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8636, i32 0, i64 0
  %8638 = getelementptr inbounds %struct.LIST, %struct.LIST* %8637, i32 0, i32 0
  store %union.rec* %8628, %union.rec** %8638, align 8
  %8639 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %8640

; <label>:8640                                    ; preds = %8599, %8598
  %8641 = phi %union.rec* [ null, %8598 ], [ %8639, %8599 ]
  %8642 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8642, %union.rec** @zz_hold, align 8
  %8643 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %8643, %union.rec** @zz_hold, align 8
  %8644 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8645 = bitcast %union.rec* %8644 to %struct.word_type*
  %8646 = getelementptr inbounds %struct.word_type, %struct.word_type* %8645, i32 0, i32 1
  %8647 = bitcast %union.FIRST_UNION* %8646 to %struct.anon*
  %8648 = getelementptr inbounds %struct.anon, %struct.anon* %8647, i32 0, i32 0
  %8649 = load i8, i8* %8648, align 1
  %8650 = zext i8 %8649 to i32
  %8651 = icmp eq i32 %8650, 11
  br i1 %8651, label %8661, label %8652

; <label>:8652                                    ; preds = %8640
  %8653 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8654 = bitcast %union.rec* %8653 to %struct.word_type*
  %8655 = getelementptr inbounds %struct.word_type, %struct.word_type* %8654, i32 0, i32 1
  %8656 = bitcast %union.FIRST_UNION* %8655 to %struct.anon*
  %8657 = getelementptr inbounds %struct.anon, %struct.anon* %8656, i32 0, i32 0
  %8658 = load i8, i8* %8657, align 1
  %8659 = zext i8 %8658 to i32
  %8660 = icmp eq i32 %8659, 12
  br i1 %8660, label %8661, label %8669

; <label>:8661                                    ; preds = %8652, %8640
  %8662 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8663 = bitcast %union.rec* %8662 to %struct.word_type*
  %8664 = getelementptr inbounds %struct.word_type, %struct.word_type* %8663, i32 0, i32 1
  %8665 = bitcast %union.FIRST_UNION* %8664 to %struct.anon*
  %8666 = getelementptr inbounds %struct.anon, %struct.anon* %8665, i32 0, i32 1
  %8667 = load i8, i8* %8666, align 1
  %8668 = zext i8 %8667 to i32
  br label %8680

; <label>:8669                                    ; preds = %8652
  %8670 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8671 = bitcast %union.rec* %8670 to %struct.word_type*
  %8672 = getelementptr inbounds %struct.word_type, %struct.word_type* %8671, i32 0, i32 1
  %8673 = bitcast %union.FIRST_UNION* %8672 to %struct.anon*
  %8674 = getelementptr inbounds %struct.anon, %struct.anon* %8673, i32 0, i32 0
  %8675 = load i8, i8* %8674, align 1
  %8676 = zext i8 %8675 to i64
  %8677 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %8676
  %8678 = load i8, i8* %8677, align 1
  %8679 = zext i8 %8678 to i32
  br label %8680

; <label>:8680                                    ; preds = %8669, %8661
  %8681 = phi i32 [ %8668, %8661 ], [ %8679, %8669 ]
  store i32 %8681, i32* @zz_size, align 4
  %8682 = load i32, i32* @zz_size, align 4
  %8683 = sext i32 %8682 to i64
  %8684 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8683
  %8685 = load %union.rec*, %union.rec** %8684, align 8
  %8686 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8687 = bitcast %union.rec* %8686 to %struct.word_type*
  %8688 = getelementptr inbounds %struct.word_type, %struct.word_type* %8687, i32 0, i32 0
  %8689 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8688, i32 0, i64 0
  %8690 = getelementptr inbounds %struct.LIST, %struct.LIST* %8689, i32 0, i32 0
  store %union.rec* %8685, %union.rec** %8690, align 8
  %8691 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8692 = load i32, i32* @zz_size, align 4
  %8693 = sext i32 %8692 to i64
  %8694 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8693
  store %union.rec* %8691, %union.rec** %8694, align 8
  br label %8520

; <label>:8695                                    ; preds = %8520
  br label %8696

; <label>:8696                                    ; preds = %8856, %8695
  %8697 = load %union.rec*, %union.rec** @xx_hold, align 8
  %8698 = bitcast %union.rec* %8697 to %struct.word_type*
  %8699 = getelementptr inbounds %struct.word_type, %struct.word_type* %8698, i32 0, i32 0
  %8700 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8699, i32 0, i64 0
  %8701 = getelementptr inbounds %struct.LIST, %struct.LIST* %8700, i32 0, i32 1
  %8702 = load %union.rec*, %union.rec** %8701, align 8
  %8703 = load %union.rec*, %union.rec** @xx_hold, align 8
  %8704 = icmp ne %union.rec* %8702, %8703
  br i1 %8704, label %8705, label %8871

; <label>:8705                                    ; preds = %8696
  %8706 = load %union.rec*, %union.rec** @xx_hold, align 8
  %8707 = bitcast %union.rec* %8706 to %struct.word_type*
  %8708 = getelementptr inbounds %struct.word_type, %struct.word_type* %8707, i32 0, i32 0
  %8709 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8708, i32 0, i64 0
  %8710 = getelementptr inbounds %struct.LIST, %struct.LIST* %8709, i32 0, i32 1
  %8711 = load %union.rec*, %union.rec** %8710, align 8
  store %union.rec* %8711, %union.rec** @xx_link, align 8
  %8712 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8712, %union.rec** @zz_hold, align 8
  %8713 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8714 = bitcast %union.rec* %8713 to %struct.word_type*
  %8715 = getelementptr inbounds %struct.word_type, %struct.word_type* %8714, i32 0, i32 0
  %8716 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8715, i32 0, i64 1
  %8717 = getelementptr inbounds %struct.LIST, %struct.LIST* %8716, i32 0, i32 1
  %8718 = load %union.rec*, %union.rec** %8717, align 8
  %8719 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8720 = icmp eq %union.rec* %8718, %8719
  br i1 %8720, label %8721, label %8722

; <label>:8721                                    ; preds = %8705
  br label %8763

; <label>:8722                                    ; preds = %8705
  %8723 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8724 = bitcast %union.rec* %8723 to %struct.word_type*
  %8725 = getelementptr inbounds %struct.word_type, %struct.word_type* %8724, i32 0, i32 0
  %8726 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8725, i32 0, i64 1
  %8727 = getelementptr inbounds %struct.LIST, %struct.LIST* %8726, i32 0, i32 1
  %8728 = load %union.rec*, %union.rec** %8727, align 8
  store %union.rec* %8728, %union.rec** @zz_res, align 8
  %8729 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8730 = bitcast %union.rec* %8729 to %struct.word_type*
  %8731 = getelementptr inbounds %struct.word_type, %struct.word_type* %8730, i32 0, i32 0
  %8732 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8731, i32 0, i64 1
  %8733 = getelementptr inbounds %struct.LIST, %struct.LIST* %8732, i32 0, i32 0
  %8734 = load %union.rec*, %union.rec** %8733, align 8
  %8735 = load %union.rec*, %union.rec** @zz_res, align 8
  %8736 = bitcast %union.rec* %8735 to %struct.word_type*
  %8737 = getelementptr inbounds %struct.word_type, %struct.word_type* %8736, i32 0, i32 0
  %8738 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8737, i32 0, i64 1
  %8739 = getelementptr inbounds %struct.LIST, %struct.LIST* %8738, i32 0, i32 0
  store %union.rec* %8734, %union.rec** %8739, align 8
  %8740 = load %union.rec*, %union.rec** @zz_res, align 8
  %8741 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8742 = bitcast %union.rec* %8741 to %struct.word_type*
  %8743 = getelementptr inbounds %struct.word_type, %struct.word_type* %8742, i32 0, i32 0
  %8744 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8743, i32 0, i64 1
  %8745 = getelementptr inbounds %struct.LIST, %struct.LIST* %8744, i32 0, i32 0
  %8746 = load %union.rec*, %union.rec** %8745, align 8
  %8747 = bitcast %union.rec* %8746 to %struct.word_type*
  %8748 = getelementptr inbounds %struct.word_type, %struct.word_type* %8747, i32 0, i32 0
  %8749 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8748, i32 0, i64 1
  %8750 = getelementptr inbounds %struct.LIST, %struct.LIST* %8749, i32 0, i32 1
  store %union.rec* %8740, %union.rec** %8750, align 8
  %8751 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8752 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8753 = bitcast %union.rec* %8752 to %struct.word_type*
  %8754 = getelementptr inbounds %struct.word_type, %struct.word_type* %8753, i32 0, i32 0
  %8755 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8754, i32 0, i64 1
  %8756 = getelementptr inbounds %struct.LIST, %struct.LIST* %8755, i32 0, i32 1
  store %union.rec* %8751, %union.rec** %8756, align 8
  %8757 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8758 = bitcast %union.rec* %8757 to %struct.word_type*
  %8759 = getelementptr inbounds %struct.word_type, %struct.word_type* %8758, i32 0, i32 0
  %8760 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8759, i32 0, i64 1
  %8761 = getelementptr inbounds %struct.LIST, %struct.LIST* %8760, i32 0, i32 0
  store %union.rec* %8751, %union.rec** %8761, align 8
  %8762 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %8763

; <label>:8763                                    ; preds = %8722, %8721
  %8764 = phi %union.rec* [ null, %8721 ], [ %8762, %8722 ]
  %8765 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8765, %union.rec** @zz_hold, align 8
  %8766 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8767 = bitcast %union.rec* %8766 to %struct.word_type*
  %8768 = getelementptr inbounds %struct.word_type, %struct.word_type* %8767, i32 0, i32 0
  %8769 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8768, i32 0, i64 0
  %8770 = getelementptr inbounds %struct.LIST, %struct.LIST* %8769, i32 0, i32 1
  %8771 = load %union.rec*, %union.rec** %8770, align 8
  %8772 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8773 = icmp eq %union.rec* %8771, %8772
  br i1 %8773, label %8774, label %8775

; <label>:8774                                    ; preds = %8763
  br label %8816

; <label>:8775                                    ; preds = %8763
  %8776 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8777 = bitcast %union.rec* %8776 to %struct.word_type*
  %8778 = getelementptr inbounds %struct.word_type, %struct.word_type* %8777, i32 0, i32 0
  %8779 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8778, i32 0, i64 0
  %8780 = getelementptr inbounds %struct.LIST, %struct.LIST* %8779, i32 0, i32 1
  %8781 = load %union.rec*, %union.rec** %8780, align 8
  store %union.rec* %8781, %union.rec** @zz_res, align 8
  %8782 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8783 = bitcast %union.rec* %8782 to %struct.word_type*
  %8784 = getelementptr inbounds %struct.word_type, %struct.word_type* %8783, i32 0, i32 0
  %8785 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8784, i32 0, i64 0
  %8786 = getelementptr inbounds %struct.LIST, %struct.LIST* %8785, i32 0, i32 0
  %8787 = load %union.rec*, %union.rec** %8786, align 8
  %8788 = load %union.rec*, %union.rec** @zz_res, align 8
  %8789 = bitcast %union.rec* %8788 to %struct.word_type*
  %8790 = getelementptr inbounds %struct.word_type, %struct.word_type* %8789, i32 0, i32 0
  %8791 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8790, i32 0, i64 0
  %8792 = getelementptr inbounds %struct.LIST, %struct.LIST* %8791, i32 0, i32 0
  store %union.rec* %8787, %union.rec** %8792, align 8
  %8793 = load %union.rec*, %union.rec** @zz_res, align 8
  %8794 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8795 = bitcast %union.rec* %8794 to %struct.word_type*
  %8796 = getelementptr inbounds %struct.word_type, %struct.word_type* %8795, i32 0, i32 0
  %8797 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8796, i32 0, i64 0
  %8798 = getelementptr inbounds %struct.LIST, %struct.LIST* %8797, i32 0, i32 0
  %8799 = load %union.rec*, %union.rec** %8798, align 8
  %8800 = bitcast %union.rec* %8799 to %struct.word_type*
  %8801 = getelementptr inbounds %struct.word_type, %struct.word_type* %8800, i32 0, i32 0
  %8802 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8801, i32 0, i64 0
  %8803 = getelementptr inbounds %struct.LIST, %struct.LIST* %8802, i32 0, i32 1
  store %union.rec* %8793, %union.rec** %8803, align 8
  %8804 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8805 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8806 = bitcast %union.rec* %8805 to %struct.word_type*
  %8807 = getelementptr inbounds %struct.word_type, %struct.word_type* %8806, i32 0, i32 0
  %8808 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8807, i32 0, i64 0
  %8809 = getelementptr inbounds %struct.LIST, %struct.LIST* %8808, i32 0, i32 1
  store %union.rec* %8804, %union.rec** %8809, align 8
  %8810 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8811 = bitcast %union.rec* %8810 to %struct.word_type*
  %8812 = getelementptr inbounds %struct.word_type, %struct.word_type* %8811, i32 0, i32 0
  %8813 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8812, i32 0, i64 0
  %8814 = getelementptr inbounds %struct.LIST, %struct.LIST* %8813, i32 0, i32 0
  store %union.rec* %8804, %union.rec** %8814, align 8
  %8815 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %8816

; <label>:8816                                    ; preds = %8775, %8774
  %8817 = phi %union.rec* [ null, %8774 ], [ %8815, %8775 ]
  %8818 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8818, %union.rec** @zz_hold, align 8
  %8819 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %8819, %union.rec** @zz_hold, align 8
  %8820 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8821 = bitcast %union.rec* %8820 to %struct.word_type*
  %8822 = getelementptr inbounds %struct.word_type, %struct.word_type* %8821, i32 0, i32 1
  %8823 = bitcast %union.FIRST_UNION* %8822 to %struct.anon*
  %8824 = getelementptr inbounds %struct.anon, %struct.anon* %8823, i32 0, i32 0
  %8825 = load i8, i8* %8824, align 1
  %8826 = zext i8 %8825 to i32
  %8827 = icmp eq i32 %8826, 11
  br i1 %8827, label %8837, label %8828

; <label>:8828                                    ; preds = %8816
  %8829 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8830 = bitcast %union.rec* %8829 to %struct.word_type*
  %8831 = getelementptr inbounds %struct.word_type, %struct.word_type* %8830, i32 0, i32 1
  %8832 = bitcast %union.FIRST_UNION* %8831 to %struct.anon*
  %8833 = getelementptr inbounds %struct.anon, %struct.anon* %8832, i32 0, i32 0
  %8834 = load i8, i8* %8833, align 1
  %8835 = zext i8 %8834 to i32
  %8836 = icmp eq i32 %8835, 12
  br i1 %8836, label %8837, label %8845

; <label>:8837                                    ; preds = %8828, %8816
  %8838 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8839 = bitcast %union.rec* %8838 to %struct.word_type*
  %8840 = getelementptr inbounds %struct.word_type, %struct.word_type* %8839, i32 0, i32 1
  %8841 = bitcast %union.FIRST_UNION* %8840 to %struct.anon*
  %8842 = getelementptr inbounds %struct.anon, %struct.anon* %8841, i32 0, i32 1
  %8843 = load i8, i8* %8842, align 1
  %8844 = zext i8 %8843 to i32
  br label %8856

; <label>:8845                                    ; preds = %8828
  %8846 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8847 = bitcast %union.rec* %8846 to %struct.word_type*
  %8848 = getelementptr inbounds %struct.word_type, %struct.word_type* %8847, i32 0, i32 1
  %8849 = bitcast %union.FIRST_UNION* %8848 to %struct.anon*
  %8850 = getelementptr inbounds %struct.anon, %struct.anon* %8849, i32 0, i32 0
  %8851 = load i8, i8* %8850, align 1
  %8852 = zext i8 %8851 to i64
  %8853 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %8852
  %8854 = load i8, i8* %8853, align 1
  %8855 = zext i8 %8854 to i32
  br label %8856

; <label>:8856                                    ; preds = %8845, %8837
  %8857 = phi i32 [ %8844, %8837 ], [ %8855, %8845 ]
  store i32 %8857, i32* @zz_size, align 4
  %8858 = load i32, i32* @zz_size, align 4
  %8859 = sext i32 %8858 to i64
  %8860 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8859
  %8861 = load %union.rec*, %union.rec** %8860, align 8
  %8862 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8863 = bitcast %union.rec* %8862 to %struct.word_type*
  %8864 = getelementptr inbounds %struct.word_type, %struct.word_type* %8863, i32 0, i32 0
  %8865 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8864, i32 0, i64 0
  %8866 = getelementptr inbounds %struct.LIST, %struct.LIST* %8865, i32 0, i32 0
  store %union.rec* %8861, %union.rec** %8866, align 8
  %8867 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8868 = load i32, i32* @zz_size, align 4
  %8869 = sext i32 %8868 to i64
  %8870 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8869
  store %union.rec* %8867, %union.rec** %8870, align 8
  br label %8696

; <label>:8871                                    ; preds = %8696
  %8872 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %8872, %union.rec** @zz_hold, align 8
  %8873 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %8873, %union.rec** @zz_hold, align 8
  %8874 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8875 = bitcast %union.rec* %8874 to %struct.word_type*
  %8876 = getelementptr inbounds %struct.word_type, %struct.word_type* %8875, i32 0, i32 1
  %8877 = bitcast %union.FIRST_UNION* %8876 to %struct.anon*
  %8878 = getelementptr inbounds %struct.anon, %struct.anon* %8877, i32 0, i32 0
  %8879 = load i8, i8* %8878, align 1
  %8880 = zext i8 %8879 to i32
  %8881 = icmp eq i32 %8880, 11
  br i1 %8881, label %8891, label %8882

; <label>:8882                                    ; preds = %8871
  %8883 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8884 = bitcast %union.rec* %8883 to %struct.word_type*
  %8885 = getelementptr inbounds %struct.word_type, %struct.word_type* %8884, i32 0, i32 1
  %8886 = bitcast %union.FIRST_UNION* %8885 to %struct.anon*
  %8887 = getelementptr inbounds %struct.anon, %struct.anon* %8886, i32 0, i32 0
  %8888 = load i8, i8* %8887, align 1
  %8889 = zext i8 %8888 to i32
  %8890 = icmp eq i32 %8889, 12
  br i1 %8890, label %8891, label %8899

; <label>:8891                                    ; preds = %8882, %8871
  %8892 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8893 = bitcast %union.rec* %8892 to %struct.word_type*
  %8894 = getelementptr inbounds %struct.word_type, %struct.word_type* %8893, i32 0, i32 1
  %8895 = bitcast %union.FIRST_UNION* %8894 to %struct.anon*
  %8896 = getelementptr inbounds %struct.anon, %struct.anon* %8895, i32 0, i32 1
  %8897 = load i8, i8* %8896, align 1
  %8898 = zext i8 %8897 to i32
  br label %8910

; <label>:8899                                    ; preds = %8882
  %8900 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8901 = bitcast %union.rec* %8900 to %struct.word_type*
  %8902 = getelementptr inbounds %struct.word_type, %struct.word_type* %8901, i32 0, i32 1
  %8903 = bitcast %union.FIRST_UNION* %8902 to %struct.anon*
  %8904 = getelementptr inbounds %struct.anon, %struct.anon* %8903, i32 0, i32 0
  %8905 = load i8, i8* %8904, align 1
  %8906 = zext i8 %8905 to i64
  %8907 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %8906
  %8908 = load i8, i8* %8907, align 1
  %8909 = zext i8 %8908 to i32
  br label %8910

; <label>:8910                                    ; preds = %8899, %8891
  %8911 = phi i32 [ %8898, %8891 ], [ %8909, %8899 ]
  store i32 %8911, i32* @zz_size, align 4
  %8912 = load i32, i32* @zz_size, align 4
  %8913 = sext i32 %8912 to i64
  %8914 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8913
  %8915 = load %union.rec*, %union.rec** %8914, align 8
  %8916 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8917 = bitcast %union.rec* %8916 to %struct.word_type*
  %8918 = getelementptr inbounds %struct.word_type, %struct.word_type* %8917, i32 0, i32 0
  %8919 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8918, i32 0, i64 0
  %8920 = getelementptr inbounds %struct.LIST, %struct.LIST* %8919, i32 0, i32 0
  store %union.rec* %8915, %union.rec** %8920, align 8
  %8921 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8922 = load i32, i32* @zz_size, align 4
  %8923 = sext i32 %8922 to i64
  %8924 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8923
  store %union.rec* %8921, %union.rec** %8924, align 8
  %8925 = load %union.rec*, %union.rec** %target_index, align 8
  %8926 = bitcast %union.rec* %8925 to %struct.word_type*
  %8927 = getelementptr inbounds %struct.word_type, %struct.word_type* %8926, i32 0, i32 0
  %8928 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8927, i32 0, i64 0
  %8929 = getelementptr inbounds %struct.LIST, %struct.LIST* %8928, i32 0, i32 1
  %8930 = load %union.rec*, %union.rec** %8929, align 8
  %8931 = load %union.rec*, %union.rec** %target_index, align 8
  %8932 = icmp eq %union.rec* %8930, %8931
  br i1 %8932, label %8936, label %8933

; <label>:8933                                    ; preds = %8910
  %8934 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %8935 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %8934, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0))
  br label %8936

; <label>:8936                                    ; preds = %8933, %8910
  %8937 = load %union.rec*, %union.rec** %target_index, align 8
  %8938 = bitcast %union.rec* %8937 to %struct.word_type*
  %8939 = getelementptr inbounds %struct.word_type, %struct.word_type* %8938, i32 0, i32 2
  %8940 = bitcast %union.SECOND_UNION* %8939 to %struct.anon.2*
  %8941 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8940, i32 0, i32 2
  %8942 = load i16, i16* %8941, align 2
  %8943 = lshr i16 %8942, 5
  %8944 = and i16 %8943, 1
  %8945 = zext i16 %8944 to i32
  %8946 = icmp ne i32 %8945, 0
  br i1 %8946, label %8947, label %8956

; <label>:8947                                    ; preds = %8936
  %8948 = load %union.rec*, %union.rec** %dest_index, align 8
  %8949 = bitcast %union.rec* %8948 to %struct.word_type*
  %8950 = getelementptr inbounds %struct.word_type, %struct.word_type* %8949, i32 0, i32 2
  %8951 = bitcast %union.SECOND_UNION* %8950 to %struct.anon.2*
  %8952 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8951, i32 0, i32 2
  %8953 = load i16, i16* %8952, align 2
  %8954 = and i16 %8953, -33
  %8955 = or i16 %8954, 32
  store i16 %8955, i16* %8952, align 2
  br label %8956

; <label>:8956                                    ; preds = %8947, %8936
  %8957 = load %union.rec*, %union.rec** %target_index, align 8
  store %union.rec* %8957, %union.rec** @xx_hold, align 8
  br label %8958

; <label>:8958                                    ; preds = %9118, %8956
  %8959 = load %union.rec*, %union.rec** @xx_hold, align 8
  %8960 = bitcast %union.rec* %8959 to %struct.word_type*
  %8961 = getelementptr inbounds %struct.word_type, %struct.word_type* %8960, i32 0, i32 0
  %8962 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8961, i32 0, i64 1
  %8963 = getelementptr inbounds %struct.LIST, %struct.LIST* %8962, i32 0, i32 1
  %8964 = load %union.rec*, %union.rec** %8963, align 8
  %8965 = load %union.rec*, %union.rec** @xx_hold, align 8
  %8966 = icmp ne %union.rec* %8964, %8965
  br i1 %8966, label %8967, label %9133

; <label>:8967                                    ; preds = %8958
  %8968 = load %union.rec*, %union.rec** @xx_hold, align 8
  %8969 = bitcast %union.rec* %8968 to %struct.word_type*
  %8970 = getelementptr inbounds %struct.word_type, %struct.word_type* %8969, i32 0, i32 0
  %8971 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8970, i32 0, i64 1
  %8972 = getelementptr inbounds %struct.LIST, %struct.LIST* %8971, i32 0, i32 1
  %8973 = load %union.rec*, %union.rec** %8972, align 8
  store %union.rec* %8973, %union.rec** @xx_link, align 8
  %8974 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8974, %union.rec** @zz_hold, align 8
  %8975 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8976 = bitcast %union.rec* %8975 to %struct.word_type*
  %8977 = getelementptr inbounds %struct.word_type, %struct.word_type* %8976, i32 0, i32 0
  %8978 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8977, i32 0, i64 1
  %8979 = getelementptr inbounds %struct.LIST, %struct.LIST* %8978, i32 0, i32 1
  %8980 = load %union.rec*, %union.rec** %8979, align 8
  %8981 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8982 = icmp eq %union.rec* %8980, %8981
  br i1 %8982, label %8983, label %8984

; <label>:8983                                    ; preds = %8967
  br label %9025

; <label>:8984                                    ; preds = %8967
  %8985 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8986 = bitcast %union.rec* %8985 to %struct.word_type*
  %8987 = getelementptr inbounds %struct.word_type, %struct.word_type* %8986, i32 0, i32 0
  %8988 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8987, i32 0, i64 1
  %8989 = getelementptr inbounds %struct.LIST, %struct.LIST* %8988, i32 0, i32 1
  %8990 = load %union.rec*, %union.rec** %8989, align 8
  store %union.rec* %8990, %union.rec** @zz_res, align 8
  %8991 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8992 = bitcast %union.rec* %8991 to %struct.word_type*
  %8993 = getelementptr inbounds %struct.word_type, %struct.word_type* %8992, i32 0, i32 0
  %8994 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8993, i32 0, i64 1
  %8995 = getelementptr inbounds %struct.LIST, %struct.LIST* %8994, i32 0, i32 0
  %8996 = load %union.rec*, %union.rec** %8995, align 8
  %8997 = load %union.rec*, %union.rec** @zz_res, align 8
  %8998 = bitcast %union.rec* %8997 to %struct.word_type*
  %8999 = getelementptr inbounds %struct.word_type, %struct.word_type* %8998, i32 0, i32 0
  %9000 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8999, i32 0, i64 1
  %9001 = getelementptr inbounds %struct.LIST, %struct.LIST* %9000, i32 0, i32 0
  store %union.rec* %8996, %union.rec** %9001, align 8
  %9002 = load %union.rec*, %union.rec** @zz_res, align 8
  %9003 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9004 = bitcast %union.rec* %9003 to %struct.word_type*
  %9005 = getelementptr inbounds %struct.word_type, %struct.word_type* %9004, i32 0, i32 0
  %9006 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9005, i32 0, i64 1
  %9007 = getelementptr inbounds %struct.LIST, %struct.LIST* %9006, i32 0, i32 0
  %9008 = load %union.rec*, %union.rec** %9007, align 8
  %9009 = bitcast %union.rec* %9008 to %struct.word_type*
  %9010 = getelementptr inbounds %struct.word_type, %struct.word_type* %9009, i32 0, i32 0
  %9011 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9010, i32 0, i64 1
  %9012 = getelementptr inbounds %struct.LIST, %struct.LIST* %9011, i32 0, i32 1
  store %union.rec* %9002, %union.rec** %9012, align 8
  %9013 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9014 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9015 = bitcast %union.rec* %9014 to %struct.word_type*
  %9016 = getelementptr inbounds %struct.word_type, %struct.word_type* %9015, i32 0, i32 0
  %9017 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9016, i32 0, i64 1
  %9018 = getelementptr inbounds %struct.LIST, %struct.LIST* %9017, i32 0, i32 1
  store %union.rec* %9013, %union.rec** %9018, align 8
  %9019 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9020 = bitcast %union.rec* %9019 to %struct.word_type*
  %9021 = getelementptr inbounds %struct.word_type, %struct.word_type* %9020, i32 0, i32 0
  %9022 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9021, i32 0, i64 1
  %9023 = getelementptr inbounds %struct.LIST, %struct.LIST* %9022, i32 0, i32 0
  store %union.rec* %9013, %union.rec** %9023, align 8
  %9024 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %9025

; <label>:9025                                    ; preds = %8984, %8983
  %9026 = phi %union.rec* [ null, %8983 ], [ %9024, %8984 ]
  %9027 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %9027, %union.rec** @zz_hold, align 8
  %9028 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9029 = bitcast %union.rec* %9028 to %struct.word_type*
  %9030 = getelementptr inbounds %struct.word_type, %struct.word_type* %9029, i32 0, i32 0
  %9031 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9030, i32 0, i64 0
  %9032 = getelementptr inbounds %struct.LIST, %struct.LIST* %9031, i32 0, i32 1
  %9033 = load %union.rec*, %union.rec** %9032, align 8
  %9034 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9035 = icmp eq %union.rec* %9033, %9034
  br i1 %9035, label %9036, label %9037

; <label>:9036                                    ; preds = %9025
  br label %9078

; <label>:9037                                    ; preds = %9025
  %9038 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9039 = bitcast %union.rec* %9038 to %struct.word_type*
  %9040 = getelementptr inbounds %struct.word_type, %struct.word_type* %9039, i32 0, i32 0
  %9041 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9040, i32 0, i64 0
  %9042 = getelementptr inbounds %struct.LIST, %struct.LIST* %9041, i32 0, i32 1
  %9043 = load %union.rec*, %union.rec** %9042, align 8
  store %union.rec* %9043, %union.rec** @zz_res, align 8
  %9044 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9045 = bitcast %union.rec* %9044 to %struct.word_type*
  %9046 = getelementptr inbounds %struct.word_type, %struct.word_type* %9045, i32 0, i32 0
  %9047 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9046, i32 0, i64 0
  %9048 = getelementptr inbounds %struct.LIST, %struct.LIST* %9047, i32 0, i32 0
  %9049 = load %union.rec*, %union.rec** %9048, align 8
  %9050 = load %union.rec*, %union.rec** @zz_res, align 8
  %9051 = bitcast %union.rec* %9050 to %struct.word_type*
  %9052 = getelementptr inbounds %struct.word_type, %struct.word_type* %9051, i32 0, i32 0
  %9053 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9052, i32 0, i64 0
  %9054 = getelementptr inbounds %struct.LIST, %struct.LIST* %9053, i32 0, i32 0
  store %union.rec* %9049, %union.rec** %9054, align 8
  %9055 = load %union.rec*, %union.rec** @zz_res, align 8
  %9056 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9057 = bitcast %union.rec* %9056 to %struct.word_type*
  %9058 = getelementptr inbounds %struct.word_type, %struct.word_type* %9057, i32 0, i32 0
  %9059 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9058, i32 0, i64 0
  %9060 = getelementptr inbounds %struct.LIST, %struct.LIST* %9059, i32 0, i32 0
  %9061 = load %union.rec*, %union.rec** %9060, align 8
  %9062 = bitcast %union.rec* %9061 to %struct.word_type*
  %9063 = getelementptr inbounds %struct.word_type, %struct.word_type* %9062, i32 0, i32 0
  %9064 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9063, i32 0, i64 0
  %9065 = getelementptr inbounds %struct.LIST, %struct.LIST* %9064, i32 0, i32 1
  store %union.rec* %9055, %union.rec** %9065, align 8
  %9066 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9067 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9068 = bitcast %union.rec* %9067 to %struct.word_type*
  %9069 = getelementptr inbounds %struct.word_type, %struct.word_type* %9068, i32 0, i32 0
  %9070 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9069, i32 0, i64 0
  %9071 = getelementptr inbounds %struct.LIST, %struct.LIST* %9070, i32 0, i32 1
  store %union.rec* %9066, %union.rec** %9071, align 8
  %9072 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9073 = bitcast %union.rec* %9072 to %struct.word_type*
  %9074 = getelementptr inbounds %struct.word_type, %struct.word_type* %9073, i32 0, i32 0
  %9075 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9074, i32 0, i64 0
  %9076 = getelementptr inbounds %struct.LIST, %struct.LIST* %9075, i32 0, i32 0
  store %union.rec* %9066, %union.rec** %9076, align 8
  %9077 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %9078

; <label>:9078                                    ; preds = %9037, %9036
  %9079 = phi %union.rec* [ null, %9036 ], [ %9077, %9037 ]
  %9080 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %9080, %union.rec** @zz_hold, align 8
  %9081 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %9081, %union.rec** @zz_hold, align 8
  %9082 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9083 = bitcast %union.rec* %9082 to %struct.word_type*
  %9084 = getelementptr inbounds %struct.word_type, %struct.word_type* %9083, i32 0, i32 1
  %9085 = bitcast %union.FIRST_UNION* %9084 to %struct.anon*
  %9086 = getelementptr inbounds %struct.anon, %struct.anon* %9085, i32 0, i32 0
  %9087 = load i8, i8* %9086, align 1
  %9088 = zext i8 %9087 to i32
  %9089 = icmp eq i32 %9088, 11
  br i1 %9089, label %9099, label %9090

; <label>:9090                                    ; preds = %9078
  %9091 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9092 = bitcast %union.rec* %9091 to %struct.word_type*
  %9093 = getelementptr inbounds %struct.word_type, %struct.word_type* %9092, i32 0, i32 1
  %9094 = bitcast %union.FIRST_UNION* %9093 to %struct.anon*
  %9095 = getelementptr inbounds %struct.anon, %struct.anon* %9094, i32 0, i32 0
  %9096 = load i8, i8* %9095, align 1
  %9097 = zext i8 %9096 to i32
  %9098 = icmp eq i32 %9097, 12
  br i1 %9098, label %9099, label %9107

; <label>:9099                                    ; preds = %9090, %9078
  %9100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9101 = bitcast %union.rec* %9100 to %struct.word_type*
  %9102 = getelementptr inbounds %struct.word_type, %struct.word_type* %9101, i32 0, i32 1
  %9103 = bitcast %union.FIRST_UNION* %9102 to %struct.anon*
  %9104 = getelementptr inbounds %struct.anon, %struct.anon* %9103, i32 0, i32 1
  %9105 = load i8, i8* %9104, align 1
  %9106 = zext i8 %9105 to i32
  br label %9118

; <label>:9107                                    ; preds = %9090
  %9108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9109 = bitcast %union.rec* %9108 to %struct.word_type*
  %9110 = getelementptr inbounds %struct.word_type, %struct.word_type* %9109, i32 0, i32 1
  %9111 = bitcast %union.FIRST_UNION* %9110 to %struct.anon*
  %9112 = getelementptr inbounds %struct.anon, %struct.anon* %9111, i32 0, i32 0
  %9113 = load i8, i8* %9112, align 1
  %9114 = zext i8 %9113 to i64
  %9115 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %9114
  %9116 = load i8, i8* %9115, align 1
  %9117 = zext i8 %9116 to i32
  br label %9118

; <label>:9118                                    ; preds = %9107, %9099
  %9119 = phi i32 [ %9106, %9099 ], [ %9117, %9107 ]
  store i32 %9119, i32* @zz_size, align 4
  %9120 = load i32, i32* @zz_size, align 4
  %9121 = sext i32 %9120 to i64
  %9122 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %9121
  %9123 = load %union.rec*, %union.rec** %9122, align 8
  %9124 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9125 = bitcast %union.rec* %9124 to %struct.word_type*
  %9126 = getelementptr inbounds %struct.word_type, %struct.word_type* %9125, i32 0, i32 0
  %9127 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9126, i32 0, i64 0
  %9128 = getelementptr inbounds %struct.LIST, %struct.LIST* %9127, i32 0, i32 0
  store %union.rec* %9123, %union.rec** %9128, align 8
  %9129 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9130 = load i32, i32* @zz_size, align 4
  %9131 = sext i32 %9130 to i64
  %9132 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %9131
  store %union.rec* %9129, %union.rec** %9132, align 8
  br label %8958

; <label>:9133                                    ; preds = %8958
  br label %9134

; <label>:9134                                    ; preds = %9294, %9133
  %9135 = load %union.rec*, %union.rec** @xx_hold, align 8
  %9136 = bitcast %union.rec* %9135 to %struct.word_type*
  %9137 = getelementptr inbounds %struct.word_type, %struct.word_type* %9136, i32 0, i32 0
  %9138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9137, i32 0, i64 0
  %9139 = getelementptr inbounds %struct.LIST, %struct.LIST* %9138, i32 0, i32 1
  %9140 = load %union.rec*, %union.rec** %9139, align 8
  %9141 = load %union.rec*, %union.rec** @xx_hold, align 8
  %9142 = icmp ne %union.rec* %9140, %9141
  br i1 %9142, label %9143, label %9309

; <label>:9143                                    ; preds = %9134
  %9144 = load %union.rec*, %union.rec** @xx_hold, align 8
  %9145 = bitcast %union.rec* %9144 to %struct.word_type*
  %9146 = getelementptr inbounds %struct.word_type, %struct.word_type* %9145, i32 0, i32 0
  %9147 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9146, i32 0, i64 0
  %9148 = getelementptr inbounds %struct.LIST, %struct.LIST* %9147, i32 0, i32 1
  %9149 = load %union.rec*, %union.rec** %9148, align 8
  store %union.rec* %9149, %union.rec** @xx_link, align 8
  %9150 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %9150, %union.rec** @zz_hold, align 8
  %9151 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9152 = bitcast %union.rec* %9151 to %struct.word_type*
  %9153 = getelementptr inbounds %struct.word_type, %struct.word_type* %9152, i32 0, i32 0
  %9154 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9153, i32 0, i64 1
  %9155 = getelementptr inbounds %struct.LIST, %struct.LIST* %9154, i32 0, i32 1
  %9156 = load %union.rec*, %union.rec** %9155, align 8
  %9157 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9158 = icmp eq %union.rec* %9156, %9157
  br i1 %9158, label %9159, label %9160

; <label>:9159                                    ; preds = %9143
  br label %9201

; <label>:9160                                    ; preds = %9143
  %9161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9162 = bitcast %union.rec* %9161 to %struct.word_type*
  %9163 = getelementptr inbounds %struct.word_type, %struct.word_type* %9162, i32 0, i32 0
  %9164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9163, i32 0, i64 1
  %9165 = getelementptr inbounds %struct.LIST, %struct.LIST* %9164, i32 0, i32 1
  %9166 = load %union.rec*, %union.rec** %9165, align 8
  store %union.rec* %9166, %union.rec** @zz_res, align 8
  %9167 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9168 = bitcast %union.rec* %9167 to %struct.word_type*
  %9169 = getelementptr inbounds %struct.word_type, %struct.word_type* %9168, i32 0, i32 0
  %9170 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9169, i32 0, i64 1
  %9171 = getelementptr inbounds %struct.LIST, %struct.LIST* %9170, i32 0, i32 0
  %9172 = load %union.rec*, %union.rec** %9171, align 8
  %9173 = load %union.rec*, %union.rec** @zz_res, align 8
  %9174 = bitcast %union.rec* %9173 to %struct.word_type*
  %9175 = getelementptr inbounds %struct.word_type, %struct.word_type* %9174, i32 0, i32 0
  %9176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9175, i32 0, i64 1
  %9177 = getelementptr inbounds %struct.LIST, %struct.LIST* %9176, i32 0, i32 0
  store %union.rec* %9172, %union.rec** %9177, align 8
  %9178 = load %union.rec*, %union.rec** @zz_res, align 8
  %9179 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9180 = bitcast %union.rec* %9179 to %struct.word_type*
  %9181 = getelementptr inbounds %struct.word_type, %struct.word_type* %9180, i32 0, i32 0
  %9182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9181, i32 0, i64 1
  %9183 = getelementptr inbounds %struct.LIST, %struct.LIST* %9182, i32 0, i32 0
  %9184 = load %union.rec*, %union.rec** %9183, align 8
  %9185 = bitcast %union.rec* %9184 to %struct.word_type*
  %9186 = getelementptr inbounds %struct.word_type, %struct.word_type* %9185, i32 0, i32 0
  %9187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9186, i32 0, i64 1
  %9188 = getelementptr inbounds %struct.LIST, %struct.LIST* %9187, i32 0, i32 1
  store %union.rec* %9178, %union.rec** %9188, align 8
  %9189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9191 = bitcast %union.rec* %9190 to %struct.word_type*
  %9192 = getelementptr inbounds %struct.word_type, %struct.word_type* %9191, i32 0, i32 0
  %9193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9192, i32 0, i64 1
  %9194 = getelementptr inbounds %struct.LIST, %struct.LIST* %9193, i32 0, i32 1
  store %union.rec* %9189, %union.rec** %9194, align 8
  %9195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9196 = bitcast %union.rec* %9195 to %struct.word_type*
  %9197 = getelementptr inbounds %struct.word_type, %struct.word_type* %9196, i32 0, i32 0
  %9198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9197, i32 0, i64 1
  %9199 = getelementptr inbounds %struct.LIST, %struct.LIST* %9198, i32 0, i32 0
  store %union.rec* %9189, %union.rec** %9199, align 8
  %9200 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %9201

; <label>:9201                                    ; preds = %9160, %9159
  %9202 = phi %union.rec* [ null, %9159 ], [ %9200, %9160 ]
  %9203 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %9203, %union.rec** @zz_hold, align 8
  %9204 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9205 = bitcast %union.rec* %9204 to %struct.word_type*
  %9206 = getelementptr inbounds %struct.word_type, %struct.word_type* %9205, i32 0, i32 0
  %9207 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9206, i32 0, i64 0
  %9208 = getelementptr inbounds %struct.LIST, %struct.LIST* %9207, i32 0, i32 1
  %9209 = load %union.rec*, %union.rec** %9208, align 8
  %9210 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9211 = icmp eq %union.rec* %9209, %9210
  br i1 %9211, label %9212, label %9213

; <label>:9212                                    ; preds = %9201
  br label %9254

; <label>:9213                                    ; preds = %9201
  %9214 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9215 = bitcast %union.rec* %9214 to %struct.word_type*
  %9216 = getelementptr inbounds %struct.word_type, %struct.word_type* %9215, i32 0, i32 0
  %9217 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9216, i32 0, i64 0
  %9218 = getelementptr inbounds %struct.LIST, %struct.LIST* %9217, i32 0, i32 1
  %9219 = load %union.rec*, %union.rec** %9218, align 8
  store %union.rec* %9219, %union.rec** @zz_res, align 8
  %9220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9221 = bitcast %union.rec* %9220 to %struct.word_type*
  %9222 = getelementptr inbounds %struct.word_type, %struct.word_type* %9221, i32 0, i32 0
  %9223 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9222, i32 0, i64 0
  %9224 = getelementptr inbounds %struct.LIST, %struct.LIST* %9223, i32 0, i32 0
  %9225 = load %union.rec*, %union.rec** %9224, align 8
  %9226 = load %union.rec*, %union.rec** @zz_res, align 8
  %9227 = bitcast %union.rec* %9226 to %struct.word_type*
  %9228 = getelementptr inbounds %struct.word_type, %struct.word_type* %9227, i32 0, i32 0
  %9229 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9228, i32 0, i64 0
  %9230 = getelementptr inbounds %struct.LIST, %struct.LIST* %9229, i32 0, i32 0
  store %union.rec* %9225, %union.rec** %9230, align 8
  %9231 = load %union.rec*, %union.rec** @zz_res, align 8
  %9232 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9233 = bitcast %union.rec* %9232 to %struct.word_type*
  %9234 = getelementptr inbounds %struct.word_type, %struct.word_type* %9233, i32 0, i32 0
  %9235 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9234, i32 0, i64 0
  %9236 = getelementptr inbounds %struct.LIST, %struct.LIST* %9235, i32 0, i32 0
  %9237 = load %union.rec*, %union.rec** %9236, align 8
  %9238 = bitcast %union.rec* %9237 to %struct.word_type*
  %9239 = getelementptr inbounds %struct.word_type, %struct.word_type* %9238, i32 0, i32 0
  %9240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9239, i32 0, i64 0
  %9241 = getelementptr inbounds %struct.LIST, %struct.LIST* %9240, i32 0, i32 1
  store %union.rec* %9231, %union.rec** %9241, align 8
  %9242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9243 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9244 = bitcast %union.rec* %9243 to %struct.word_type*
  %9245 = getelementptr inbounds %struct.word_type, %struct.word_type* %9244, i32 0, i32 0
  %9246 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9245, i32 0, i64 0
  %9247 = getelementptr inbounds %struct.LIST, %struct.LIST* %9246, i32 0, i32 1
  store %union.rec* %9242, %union.rec** %9247, align 8
  %9248 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9249 = bitcast %union.rec* %9248 to %struct.word_type*
  %9250 = getelementptr inbounds %struct.word_type, %struct.word_type* %9249, i32 0, i32 0
  %9251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9250, i32 0, i64 0
  %9252 = getelementptr inbounds %struct.LIST, %struct.LIST* %9251, i32 0, i32 0
  store %union.rec* %9242, %union.rec** %9252, align 8
  %9253 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %9254

; <label>:9254                                    ; preds = %9213, %9212
  %9255 = phi %union.rec* [ null, %9212 ], [ %9253, %9213 ]
  %9256 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %9256, %union.rec** @zz_hold, align 8
  %9257 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %9257, %union.rec** @zz_hold, align 8
  %9258 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9259 = bitcast %union.rec* %9258 to %struct.word_type*
  %9260 = getelementptr inbounds %struct.word_type, %struct.word_type* %9259, i32 0, i32 1
  %9261 = bitcast %union.FIRST_UNION* %9260 to %struct.anon*
  %9262 = getelementptr inbounds %struct.anon, %struct.anon* %9261, i32 0, i32 0
  %9263 = load i8, i8* %9262, align 1
  %9264 = zext i8 %9263 to i32
  %9265 = icmp eq i32 %9264, 11
  br i1 %9265, label %9275, label %9266

; <label>:9266                                    ; preds = %9254
  %9267 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9268 = bitcast %union.rec* %9267 to %struct.word_type*
  %9269 = getelementptr inbounds %struct.word_type, %struct.word_type* %9268, i32 0, i32 1
  %9270 = bitcast %union.FIRST_UNION* %9269 to %struct.anon*
  %9271 = getelementptr inbounds %struct.anon, %struct.anon* %9270, i32 0, i32 0
  %9272 = load i8, i8* %9271, align 1
  %9273 = zext i8 %9272 to i32
  %9274 = icmp eq i32 %9273, 12
  br i1 %9274, label %9275, label %9283

; <label>:9275                                    ; preds = %9266, %9254
  %9276 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9277 = bitcast %union.rec* %9276 to %struct.word_type*
  %9278 = getelementptr inbounds %struct.word_type, %struct.word_type* %9277, i32 0, i32 1
  %9279 = bitcast %union.FIRST_UNION* %9278 to %struct.anon*
  %9280 = getelementptr inbounds %struct.anon, %struct.anon* %9279, i32 0, i32 1
  %9281 = load i8, i8* %9280, align 1
  %9282 = zext i8 %9281 to i32
  br label %9294

; <label>:9283                                    ; preds = %9266
  %9284 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9285 = bitcast %union.rec* %9284 to %struct.word_type*
  %9286 = getelementptr inbounds %struct.word_type, %struct.word_type* %9285, i32 0, i32 1
  %9287 = bitcast %union.FIRST_UNION* %9286 to %struct.anon*
  %9288 = getelementptr inbounds %struct.anon, %struct.anon* %9287, i32 0, i32 0
  %9289 = load i8, i8* %9288, align 1
  %9290 = zext i8 %9289 to i64
  %9291 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %9290
  %9292 = load i8, i8* %9291, align 1
  %9293 = zext i8 %9292 to i32
  br label %9294

; <label>:9294                                    ; preds = %9283, %9275
  %9295 = phi i32 [ %9282, %9275 ], [ %9293, %9283 ]
  store i32 %9295, i32* @zz_size, align 4
  %9296 = load i32, i32* @zz_size, align 4
  %9297 = sext i32 %9296 to i64
  %9298 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %9297
  %9299 = load %union.rec*, %union.rec** %9298, align 8
  %9300 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9301 = bitcast %union.rec* %9300 to %struct.word_type*
  %9302 = getelementptr inbounds %struct.word_type, %struct.word_type* %9301, i32 0, i32 0
  %9303 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9302, i32 0, i64 0
  %9304 = getelementptr inbounds %struct.LIST, %struct.LIST* %9303, i32 0, i32 0
  store %union.rec* %9299, %union.rec** %9304, align 8
  %9305 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9306 = load i32, i32* @zz_size, align 4
  %9307 = sext i32 %9306 to i64
  %9308 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %9307
  store %union.rec* %9305, %union.rec** %9308, align 8
  br label %9134

; <label>:9309                                    ; preds = %9134
  %9310 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %9310, %union.rec** @zz_hold, align 8
  %9311 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %9311, %union.rec** @zz_hold, align 8
  %9312 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9313 = bitcast %union.rec* %9312 to %struct.word_type*
  %9314 = getelementptr inbounds %struct.word_type, %struct.word_type* %9313, i32 0, i32 1
  %9315 = bitcast %union.FIRST_UNION* %9314 to %struct.anon*
  %9316 = getelementptr inbounds %struct.anon, %struct.anon* %9315, i32 0, i32 0
  %9317 = load i8, i8* %9316, align 1
  %9318 = zext i8 %9317 to i32
  %9319 = icmp eq i32 %9318, 11
  br i1 %9319, label %9329, label %9320

; <label>:9320                                    ; preds = %9309
  %9321 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9322 = bitcast %union.rec* %9321 to %struct.word_type*
  %9323 = getelementptr inbounds %struct.word_type, %struct.word_type* %9322, i32 0, i32 1
  %9324 = bitcast %union.FIRST_UNION* %9323 to %struct.anon*
  %9325 = getelementptr inbounds %struct.anon, %struct.anon* %9324, i32 0, i32 0
  %9326 = load i8, i8* %9325, align 1
  %9327 = zext i8 %9326 to i32
  %9328 = icmp eq i32 %9327, 12
  br i1 %9328, label %9329, label %9337

; <label>:9329                                    ; preds = %9320, %9309
  %9330 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9331 = bitcast %union.rec* %9330 to %struct.word_type*
  %9332 = getelementptr inbounds %struct.word_type, %struct.word_type* %9331, i32 0, i32 1
  %9333 = bitcast %union.FIRST_UNION* %9332 to %struct.anon*
  %9334 = getelementptr inbounds %struct.anon, %struct.anon* %9333, i32 0, i32 1
  %9335 = load i8, i8* %9334, align 1
  %9336 = zext i8 %9335 to i32
  br label %9348

; <label>:9337                                    ; preds = %9320
  %9338 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9339 = bitcast %union.rec* %9338 to %struct.word_type*
  %9340 = getelementptr inbounds %struct.word_type, %struct.word_type* %9339, i32 0, i32 1
  %9341 = bitcast %union.FIRST_UNION* %9340 to %struct.anon*
  %9342 = getelementptr inbounds %struct.anon, %struct.anon* %9341, i32 0, i32 0
  %9343 = load i8, i8* %9342, align 1
  %9344 = zext i8 %9343 to i64
  %9345 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %9344
  %9346 = load i8, i8* %9345, align 1
  %9347 = zext i8 %9346 to i32
  br label %9348

; <label>:9348                                    ; preds = %9337, %9329
  %9349 = phi i32 [ %9336, %9329 ], [ %9347, %9337 ]
  store i32 %9349, i32* @zz_size, align 4
  %9350 = load i32, i32* @zz_size, align 4
  %9351 = sext i32 %9350 to i64
  %9352 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %9351
  %9353 = load %union.rec*, %union.rec** %9352, align 8
  %9354 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9355 = bitcast %union.rec* %9354 to %struct.word_type*
  %9356 = getelementptr inbounds %struct.word_type, %struct.word_type* %9355, i32 0, i32 0
  %9357 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9356, i32 0, i64 0
  %9358 = getelementptr inbounds %struct.LIST, %struct.LIST* %9357, i32 0, i32 0
  store %union.rec* %9353, %union.rec** %9358, align 8
  %9359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9360 = load i32, i32* @zz_size, align 4
  %9361 = sext i32 %9360 to i64
  %9362 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %9361
  store %union.rec* %9359, %union.rec** %9362, align 8
  %9363 = load %union.rec*, %union.rec** %tg_inners, align 8
  %9364 = icmp eq %union.rec* %9363, null
  br i1 %9364, label %9365, label %9368

; <label>:9365                                    ; preds = %9348
  %9366 = load %union.rec*, %union.rec** %hd_inners, align 8
  %9367 = load %union.rec**, %union.rec*** %3, align 8
  store %union.rec* %9366, %union.rec** %9367, align 8
  br label %9921

; <label>:9368                                    ; preds = %9348
  %9369 = load %union.rec*, %union.rec** %hd_inners, align 8
  %9370 = icmp eq %union.rec* %9369, null
  br i1 %9370, label %9371, label %9374

; <label>:9371                                    ; preds = %9368
  %9372 = load %union.rec*, %union.rec** %tg_inners, align 8
  %9373 = load %union.rec**, %union.rec*** %3, align 8
  store %union.rec* %9372, %union.rec** %9373, align 8
  br label %9920

; <label>:9374                                    ; preds = %9368
  %9375 = load %union.rec*, %union.rec** %hd_inners, align 8
  %9376 = bitcast %union.rec* %9375 to %struct.word_type*
  %9377 = getelementptr inbounds %struct.word_type, %struct.word_type* %9376, i32 0, i32 0
  %9378 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9377, i32 0, i64 0
  %9379 = getelementptr inbounds %struct.LIST, %struct.LIST* %9378, i32 0, i32 1
  %9380 = load %union.rec*, %union.rec** %9379, align 8
  store %union.rec* %9380, %union.rec** %xxstart17, align 8
  %9381 = load %union.rec*, %union.rec** %hd_inners, align 8
  store %union.rec* %9381, %union.rec** %xxstop18, align 8
  %9382 = load %union.rec*, %union.rec** %tg_inners, align 8
  store %union.rec* %9382, %union.rec** %xxdest19, align 8
  %9383 = load %union.rec*, %union.rec** %xxstart17, align 8
  %9384 = load %union.rec*, %union.rec** %xxstop18, align 8
  %9385 = icmp ne %union.rec* %9383, %9384
  br i1 %9385, label %9386, label %9511

; <label>:9386                                    ; preds = %9374
  %9387 = load %union.rec*, %union.rec** %xxstart17, align 8
  %9388 = bitcast %union.rec* %9387 to %struct.word_type*
  %9389 = getelementptr inbounds %struct.word_type, %struct.word_type* %9388, i32 0, i32 1
  %9390 = bitcast %union.FIRST_UNION* %9389 to %struct.anon*
  %9391 = getelementptr inbounds %struct.anon, %struct.anon* %9390, i32 0, i32 0
  %9392 = load i8, i8* %9391, align 1
  %9393 = zext i8 %9392 to i32
  %9394 = icmp eq i32 %9393, 0
  br i1 %9394, label %9398, label %9395

; <label>:9395                                    ; preds = %9386
  %9396 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %9397 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %9396, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0))
  br label %9398

; <label>:9398                                    ; preds = %9395, %9386
  %9399 = load %union.rec*, %union.rec** %xxstart17, align 8
  store %union.rec* %9399, %union.rec** @zz_res, align 8
  %9400 = load %union.rec*, %union.rec** %xxstop18, align 8
  store %union.rec* %9400, %union.rec** @zz_hold, align 8
  %9401 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9402 = icmp eq %union.rec* %9401, null
  br i1 %9402, label %9403, label %9405

; <label>:9403                                    ; preds = %9398
  %9404 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %9453

; <label>:9405                                    ; preds = %9398
  %9406 = load %union.rec*, %union.rec** @zz_res, align 8
  %9407 = icmp eq %union.rec* %9406, null
  br i1 %9407, label %9408, label %9410

; <label>:9408                                    ; preds = %9405
  %9409 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %9451

; <label>:9410                                    ; preds = %9405
  %9411 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9412 = bitcast %union.rec* %9411 to %struct.word_type*
  %9413 = getelementptr inbounds %struct.word_type, %struct.word_type* %9412, i32 0, i32 0
  %9414 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9413, i32 0, i64 0
  %9415 = getelementptr inbounds %struct.LIST, %struct.LIST* %9414, i32 0, i32 0
  %9416 = load %union.rec*, %union.rec** %9415, align 8
  store %union.rec* %9416, %union.rec** @zz_tmp, align 8
  %9417 = load %union.rec*, %union.rec** @zz_res, align 8
  %9418 = bitcast %union.rec* %9417 to %struct.word_type*
  %9419 = getelementptr inbounds %struct.word_type, %struct.word_type* %9418, i32 0, i32 0
  %9420 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9419, i32 0, i64 0
  %9421 = getelementptr inbounds %struct.LIST, %struct.LIST* %9420, i32 0, i32 0
  %9422 = load %union.rec*, %union.rec** %9421, align 8
  %9423 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9424 = bitcast %union.rec* %9423 to %struct.word_type*
  %9425 = getelementptr inbounds %struct.word_type, %struct.word_type* %9424, i32 0, i32 0
  %9426 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9425, i32 0, i64 0
  %9427 = getelementptr inbounds %struct.LIST, %struct.LIST* %9426, i32 0, i32 0
  store %union.rec* %9422, %union.rec** %9427, align 8
  %9428 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9429 = load %union.rec*, %union.rec** @zz_res, align 8
  %9430 = bitcast %union.rec* %9429 to %struct.word_type*
  %9431 = getelementptr inbounds %struct.word_type, %struct.word_type* %9430, i32 0, i32 0
  %9432 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9431, i32 0, i64 0
  %9433 = getelementptr inbounds %struct.LIST, %struct.LIST* %9432, i32 0, i32 0
  %9434 = load %union.rec*, %union.rec** %9433, align 8
  %9435 = bitcast %union.rec* %9434 to %struct.word_type*
  %9436 = getelementptr inbounds %struct.word_type, %struct.word_type* %9435, i32 0, i32 0
  %9437 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9436, i32 0, i64 0
  %9438 = getelementptr inbounds %struct.LIST, %struct.LIST* %9437, i32 0, i32 1
  store %union.rec* %9428, %union.rec** %9438, align 8
  %9439 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %9440 = load %union.rec*, %union.rec** @zz_res, align 8
  %9441 = bitcast %union.rec* %9440 to %struct.word_type*
  %9442 = getelementptr inbounds %struct.word_type, %struct.word_type* %9441, i32 0, i32 0
  %9443 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9442, i32 0, i64 0
  %9444 = getelementptr inbounds %struct.LIST, %struct.LIST* %9443, i32 0, i32 0
  store %union.rec* %9439, %union.rec** %9444, align 8
  %9445 = load %union.rec*, %union.rec** @zz_res, align 8
  %9446 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %9447 = bitcast %union.rec* %9446 to %struct.word_type*
  %9448 = getelementptr inbounds %struct.word_type, %struct.word_type* %9447, i32 0, i32 0
  %9449 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9448, i32 0, i64 0
  %9450 = getelementptr inbounds %struct.LIST, %struct.LIST* %9449, i32 0, i32 1
  store %union.rec* %9445, %union.rec** %9450, align 8
  br label %9451

; <label>:9451                                    ; preds = %9410, %9408
  %9452 = phi %union.rec* [ %9409, %9408 ], [ %9445, %9410 ]
  br label %9453

; <label>:9453                                    ; preds = %9451, %9403
  %9454 = phi %union.rec* [ %9404, %9403 ], [ %9452, %9451 ]
  %9455 = load %union.rec*, %union.rec** %xxstart17, align 8
  store %union.rec* %9455, %union.rec** @zz_res, align 8
  %9456 = load %union.rec*, %union.rec** %xxdest19, align 8
  store %union.rec* %9456, %union.rec** @zz_hold, align 8
  %9457 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9458 = icmp eq %union.rec* %9457, null
  br i1 %9458, label %9459, label %9461

; <label>:9459                                    ; preds = %9453
  %9460 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %9509

; <label>:9461                                    ; preds = %9453
  %9462 = load %union.rec*, %union.rec** @zz_res, align 8
  %9463 = icmp eq %union.rec* %9462, null
  br i1 %9463, label %9464, label %9466

; <label>:9464                                    ; preds = %9461
  %9465 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %9507

; <label>:9466                                    ; preds = %9461
  %9467 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9468 = bitcast %union.rec* %9467 to %struct.word_type*
  %9469 = getelementptr inbounds %struct.word_type, %struct.word_type* %9468, i32 0, i32 0
  %9470 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9469, i32 0, i64 0
  %9471 = getelementptr inbounds %struct.LIST, %struct.LIST* %9470, i32 0, i32 0
  %9472 = load %union.rec*, %union.rec** %9471, align 8
  store %union.rec* %9472, %union.rec** @zz_tmp, align 8
  %9473 = load %union.rec*, %union.rec** @zz_res, align 8
  %9474 = bitcast %union.rec* %9473 to %struct.word_type*
  %9475 = getelementptr inbounds %struct.word_type, %struct.word_type* %9474, i32 0, i32 0
  %9476 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9475, i32 0, i64 0
  %9477 = getelementptr inbounds %struct.LIST, %struct.LIST* %9476, i32 0, i32 0
  %9478 = load %union.rec*, %union.rec** %9477, align 8
  %9479 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9480 = bitcast %union.rec* %9479 to %struct.word_type*
  %9481 = getelementptr inbounds %struct.word_type, %struct.word_type* %9480, i32 0, i32 0
  %9482 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9481, i32 0, i64 0
  %9483 = getelementptr inbounds %struct.LIST, %struct.LIST* %9482, i32 0, i32 0
  store %union.rec* %9478, %union.rec** %9483, align 8
  %9484 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9485 = load %union.rec*, %union.rec** @zz_res, align 8
  %9486 = bitcast %union.rec* %9485 to %struct.word_type*
  %9487 = getelementptr inbounds %struct.word_type, %struct.word_type* %9486, i32 0, i32 0
  %9488 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9487, i32 0, i64 0
  %9489 = getelementptr inbounds %struct.LIST, %struct.LIST* %9488, i32 0, i32 0
  %9490 = load %union.rec*, %union.rec** %9489, align 8
  %9491 = bitcast %union.rec* %9490 to %struct.word_type*
  %9492 = getelementptr inbounds %struct.word_type, %struct.word_type* %9491, i32 0, i32 0
  %9493 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9492, i32 0, i64 0
  %9494 = getelementptr inbounds %struct.LIST, %struct.LIST* %9493, i32 0, i32 1
  store %union.rec* %9484, %union.rec** %9494, align 8
  %9495 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %9496 = load %union.rec*, %union.rec** @zz_res, align 8
  %9497 = bitcast %union.rec* %9496 to %struct.word_type*
  %9498 = getelementptr inbounds %struct.word_type, %struct.word_type* %9497, i32 0, i32 0
  %9499 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9498, i32 0, i64 0
  %9500 = getelementptr inbounds %struct.LIST, %struct.LIST* %9499, i32 0, i32 0
  store %union.rec* %9495, %union.rec** %9500, align 8
  %9501 = load %union.rec*, %union.rec** @zz_res, align 8
  %9502 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %9503 = bitcast %union.rec* %9502 to %struct.word_type*
  %9504 = getelementptr inbounds %struct.word_type, %struct.word_type* %9503, i32 0, i32 0
  %9505 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9504, i32 0, i64 0
  %9506 = getelementptr inbounds %struct.LIST, %struct.LIST* %9505, i32 0, i32 1
  store %union.rec* %9501, %union.rec** %9506, align 8
  br label %9507

; <label>:9507                                    ; preds = %9466, %9464
  %9508 = phi %union.rec* [ %9465, %9464 ], [ %9501, %9466 ]
  br label %9509

; <label>:9509                                    ; preds = %9507, %9459
  %9510 = phi %union.rec* [ %9460, %9459 ], [ %9508, %9507 ]
  br label %9511

; <label>:9511                                    ; preds = %9509, %9374
  %9512 = load %union.rec*, %union.rec** %hd_inners, align 8
  store %union.rec* %9512, %union.rec** @xx_hold, align 8
  br label %9513

; <label>:9513                                    ; preds = %9673, %9511
  %9514 = load %union.rec*, %union.rec** @xx_hold, align 8
  %9515 = bitcast %union.rec* %9514 to %struct.word_type*
  %9516 = getelementptr inbounds %struct.word_type, %struct.word_type* %9515, i32 0, i32 0
  %9517 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9516, i32 0, i64 1
  %9518 = getelementptr inbounds %struct.LIST, %struct.LIST* %9517, i32 0, i32 1
  %9519 = load %union.rec*, %union.rec** %9518, align 8
  %9520 = load %union.rec*, %union.rec** @xx_hold, align 8
  %9521 = icmp ne %union.rec* %9519, %9520
  br i1 %9521, label %9522, label %9688

; <label>:9522                                    ; preds = %9513
  %9523 = load %union.rec*, %union.rec** @xx_hold, align 8
  %9524 = bitcast %union.rec* %9523 to %struct.word_type*
  %9525 = getelementptr inbounds %struct.word_type, %struct.word_type* %9524, i32 0, i32 0
  %9526 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9525, i32 0, i64 1
  %9527 = getelementptr inbounds %struct.LIST, %struct.LIST* %9526, i32 0, i32 1
  %9528 = load %union.rec*, %union.rec** %9527, align 8
  store %union.rec* %9528, %union.rec** @xx_link, align 8
  %9529 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %9529, %union.rec** @zz_hold, align 8
  %9530 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9531 = bitcast %union.rec* %9530 to %struct.word_type*
  %9532 = getelementptr inbounds %struct.word_type, %struct.word_type* %9531, i32 0, i32 0
  %9533 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9532, i32 0, i64 1
  %9534 = getelementptr inbounds %struct.LIST, %struct.LIST* %9533, i32 0, i32 1
  %9535 = load %union.rec*, %union.rec** %9534, align 8
  %9536 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9537 = icmp eq %union.rec* %9535, %9536
  br i1 %9537, label %9538, label %9539

; <label>:9538                                    ; preds = %9522
  br label %9580

; <label>:9539                                    ; preds = %9522
  %9540 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9541 = bitcast %union.rec* %9540 to %struct.word_type*
  %9542 = getelementptr inbounds %struct.word_type, %struct.word_type* %9541, i32 0, i32 0
  %9543 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9542, i32 0, i64 1
  %9544 = getelementptr inbounds %struct.LIST, %struct.LIST* %9543, i32 0, i32 1
  %9545 = load %union.rec*, %union.rec** %9544, align 8
  store %union.rec* %9545, %union.rec** @zz_res, align 8
  %9546 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9547 = bitcast %union.rec* %9546 to %struct.word_type*
  %9548 = getelementptr inbounds %struct.word_type, %struct.word_type* %9547, i32 0, i32 0
  %9549 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9548, i32 0, i64 1
  %9550 = getelementptr inbounds %struct.LIST, %struct.LIST* %9549, i32 0, i32 0
  %9551 = load %union.rec*, %union.rec** %9550, align 8
  %9552 = load %union.rec*, %union.rec** @zz_res, align 8
  %9553 = bitcast %union.rec* %9552 to %struct.word_type*
  %9554 = getelementptr inbounds %struct.word_type, %struct.word_type* %9553, i32 0, i32 0
  %9555 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9554, i32 0, i64 1
  %9556 = getelementptr inbounds %struct.LIST, %struct.LIST* %9555, i32 0, i32 0
  store %union.rec* %9551, %union.rec** %9556, align 8
  %9557 = load %union.rec*, %union.rec** @zz_res, align 8
  %9558 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9559 = bitcast %union.rec* %9558 to %struct.word_type*
  %9560 = getelementptr inbounds %struct.word_type, %struct.word_type* %9559, i32 0, i32 0
  %9561 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9560, i32 0, i64 1
  %9562 = getelementptr inbounds %struct.LIST, %struct.LIST* %9561, i32 0, i32 0
  %9563 = load %union.rec*, %union.rec** %9562, align 8
  %9564 = bitcast %union.rec* %9563 to %struct.word_type*
  %9565 = getelementptr inbounds %struct.word_type, %struct.word_type* %9564, i32 0, i32 0
  %9566 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9565, i32 0, i64 1
  %9567 = getelementptr inbounds %struct.LIST, %struct.LIST* %9566, i32 0, i32 1
  store %union.rec* %9557, %union.rec** %9567, align 8
  %9568 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9569 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9570 = bitcast %union.rec* %9569 to %struct.word_type*
  %9571 = getelementptr inbounds %struct.word_type, %struct.word_type* %9570, i32 0, i32 0
  %9572 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9571, i32 0, i64 1
  %9573 = getelementptr inbounds %struct.LIST, %struct.LIST* %9572, i32 0, i32 1
  store %union.rec* %9568, %union.rec** %9573, align 8
  %9574 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9575 = bitcast %union.rec* %9574 to %struct.word_type*
  %9576 = getelementptr inbounds %struct.word_type, %struct.word_type* %9575, i32 0, i32 0
  %9577 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9576, i32 0, i64 1
  %9578 = getelementptr inbounds %struct.LIST, %struct.LIST* %9577, i32 0, i32 0
  store %union.rec* %9568, %union.rec** %9578, align 8
  %9579 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %9580

; <label>:9580                                    ; preds = %9539, %9538
  %9581 = phi %union.rec* [ null, %9538 ], [ %9579, %9539 ]
  %9582 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %9582, %union.rec** @zz_hold, align 8
  %9583 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9584 = bitcast %union.rec* %9583 to %struct.word_type*
  %9585 = getelementptr inbounds %struct.word_type, %struct.word_type* %9584, i32 0, i32 0
  %9586 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9585, i32 0, i64 0
  %9587 = getelementptr inbounds %struct.LIST, %struct.LIST* %9586, i32 0, i32 1
  %9588 = load %union.rec*, %union.rec** %9587, align 8
  %9589 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9590 = icmp eq %union.rec* %9588, %9589
  br i1 %9590, label %9591, label %9592

; <label>:9591                                    ; preds = %9580
  br label %9633

; <label>:9592                                    ; preds = %9580
  %9593 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9594 = bitcast %union.rec* %9593 to %struct.word_type*
  %9595 = getelementptr inbounds %struct.word_type, %struct.word_type* %9594, i32 0, i32 0
  %9596 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9595, i32 0, i64 0
  %9597 = getelementptr inbounds %struct.LIST, %struct.LIST* %9596, i32 0, i32 1
  %9598 = load %union.rec*, %union.rec** %9597, align 8
  store %union.rec* %9598, %union.rec** @zz_res, align 8
  %9599 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9600 = bitcast %union.rec* %9599 to %struct.word_type*
  %9601 = getelementptr inbounds %struct.word_type, %struct.word_type* %9600, i32 0, i32 0
  %9602 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9601, i32 0, i64 0
  %9603 = getelementptr inbounds %struct.LIST, %struct.LIST* %9602, i32 0, i32 0
  %9604 = load %union.rec*, %union.rec** %9603, align 8
  %9605 = load %union.rec*, %union.rec** @zz_res, align 8
  %9606 = bitcast %union.rec* %9605 to %struct.word_type*
  %9607 = getelementptr inbounds %struct.word_type, %struct.word_type* %9606, i32 0, i32 0
  %9608 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9607, i32 0, i64 0
  %9609 = getelementptr inbounds %struct.LIST, %struct.LIST* %9608, i32 0, i32 0
  store %union.rec* %9604, %union.rec** %9609, align 8
  %9610 = load %union.rec*, %union.rec** @zz_res, align 8
  %9611 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9612 = bitcast %union.rec* %9611 to %struct.word_type*
  %9613 = getelementptr inbounds %struct.word_type, %struct.word_type* %9612, i32 0, i32 0
  %9614 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9613, i32 0, i64 0
  %9615 = getelementptr inbounds %struct.LIST, %struct.LIST* %9614, i32 0, i32 0
  %9616 = load %union.rec*, %union.rec** %9615, align 8
  %9617 = bitcast %union.rec* %9616 to %struct.word_type*
  %9618 = getelementptr inbounds %struct.word_type, %struct.word_type* %9617, i32 0, i32 0
  %9619 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9618, i32 0, i64 0
  %9620 = getelementptr inbounds %struct.LIST, %struct.LIST* %9619, i32 0, i32 1
  store %union.rec* %9610, %union.rec** %9620, align 8
  %9621 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9622 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9623 = bitcast %union.rec* %9622 to %struct.word_type*
  %9624 = getelementptr inbounds %struct.word_type, %struct.word_type* %9623, i32 0, i32 0
  %9625 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9624, i32 0, i64 0
  %9626 = getelementptr inbounds %struct.LIST, %struct.LIST* %9625, i32 0, i32 1
  store %union.rec* %9621, %union.rec** %9626, align 8
  %9627 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9628 = bitcast %union.rec* %9627 to %struct.word_type*
  %9629 = getelementptr inbounds %struct.word_type, %struct.word_type* %9628, i32 0, i32 0
  %9630 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9629, i32 0, i64 0
  %9631 = getelementptr inbounds %struct.LIST, %struct.LIST* %9630, i32 0, i32 0
  store %union.rec* %9621, %union.rec** %9631, align 8
  %9632 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %9633

; <label>:9633                                    ; preds = %9592, %9591
  %9634 = phi %union.rec* [ null, %9591 ], [ %9632, %9592 ]
  %9635 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %9635, %union.rec** @zz_hold, align 8
  %9636 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %9636, %union.rec** @zz_hold, align 8
  %9637 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9638 = bitcast %union.rec* %9637 to %struct.word_type*
  %9639 = getelementptr inbounds %struct.word_type, %struct.word_type* %9638, i32 0, i32 1
  %9640 = bitcast %union.FIRST_UNION* %9639 to %struct.anon*
  %9641 = getelementptr inbounds %struct.anon, %struct.anon* %9640, i32 0, i32 0
  %9642 = load i8, i8* %9641, align 1
  %9643 = zext i8 %9642 to i32
  %9644 = icmp eq i32 %9643, 11
  br i1 %9644, label %9654, label %9645

; <label>:9645                                    ; preds = %9633
  %9646 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9647 = bitcast %union.rec* %9646 to %struct.word_type*
  %9648 = getelementptr inbounds %struct.word_type, %struct.word_type* %9647, i32 0, i32 1
  %9649 = bitcast %union.FIRST_UNION* %9648 to %struct.anon*
  %9650 = getelementptr inbounds %struct.anon, %struct.anon* %9649, i32 0, i32 0
  %9651 = load i8, i8* %9650, align 1
  %9652 = zext i8 %9651 to i32
  %9653 = icmp eq i32 %9652, 12
  br i1 %9653, label %9654, label %9662

; <label>:9654                                    ; preds = %9645, %9633
  %9655 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9656 = bitcast %union.rec* %9655 to %struct.word_type*
  %9657 = getelementptr inbounds %struct.word_type, %struct.word_type* %9656, i32 0, i32 1
  %9658 = bitcast %union.FIRST_UNION* %9657 to %struct.anon*
  %9659 = getelementptr inbounds %struct.anon, %struct.anon* %9658, i32 0, i32 1
  %9660 = load i8, i8* %9659, align 1
  %9661 = zext i8 %9660 to i32
  br label %9673

; <label>:9662                                    ; preds = %9645
  %9663 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9664 = bitcast %union.rec* %9663 to %struct.word_type*
  %9665 = getelementptr inbounds %struct.word_type, %struct.word_type* %9664, i32 0, i32 1
  %9666 = bitcast %union.FIRST_UNION* %9665 to %struct.anon*
  %9667 = getelementptr inbounds %struct.anon, %struct.anon* %9666, i32 0, i32 0
  %9668 = load i8, i8* %9667, align 1
  %9669 = zext i8 %9668 to i64
  %9670 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %9669
  %9671 = load i8, i8* %9670, align 1
  %9672 = zext i8 %9671 to i32
  br label %9673

; <label>:9673                                    ; preds = %9662, %9654
  %9674 = phi i32 [ %9661, %9654 ], [ %9672, %9662 ]
  store i32 %9674, i32* @zz_size, align 4
  %9675 = load i32, i32* @zz_size, align 4
  %9676 = sext i32 %9675 to i64
  %9677 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %9676
  %9678 = load %union.rec*, %union.rec** %9677, align 8
  %9679 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9680 = bitcast %union.rec* %9679 to %struct.word_type*
  %9681 = getelementptr inbounds %struct.word_type, %struct.word_type* %9680, i32 0, i32 0
  %9682 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9681, i32 0, i64 0
  %9683 = getelementptr inbounds %struct.LIST, %struct.LIST* %9682, i32 0, i32 0
  store %union.rec* %9678, %union.rec** %9683, align 8
  %9684 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9685 = load i32, i32* @zz_size, align 4
  %9686 = sext i32 %9685 to i64
  %9687 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %9686
  store %union.rec* %9684, %union.rec** %9687, align 8
  br label %9513

; <label>:9688                                    ; preds = %9513
  br label %9689

; <label>:9689                                    ; preds = %9849, %9688
  %9690 = load %union.rec*, %union.rec** @xx_hold, align 8
  %9691 = bitcast %union.rec* %9690 to %struct.word_type*
  %9692 = getelementptr inbounds %struct.word_type, %struct.word_type* %9691, i32 0, i32 0
  %9693 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9692, i32 0, i64 0
  %9694 = getelementptr inbounds %struct.LIST, %struct.LIST* %9693, i32 0, i32 1
  %9695 = load %union.rec*, %union.rec** %9694, align 8
  %9696 = load %union.rec*, %union.rec** @xx_hold, align 8
  %9697 = icmp ne %union.rec* %9695, %9696
  br i1 %9697, label %9698, label %9864

; <label>:9698                                    ; preds = %9689
  %9699 = load %union.rec*, %union.rec** @xx_hold, align 8
  %9700 = bitcast %union.rec* %9699 to %struct.word_type*
  %9701 = getelementptr inbounds %struct.word_type, %struct.word_type* %9700, i32 0, i32 0
  %9702 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9701, i32 0, i64 0
  %9703 = getelementptr inbounds %struct.LIST, %struct.LIST* %9702, i32 0, i32 1
  %9704 = load %union.rec*, %union.rec** %9703, align 8
  store %union.rec* %9704, %union.rec** @xx_link, align 8
  %9705 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %9705, %union.rec** @zz_hold, align 8
  %9706 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9707 = bitcast %union.rec* %9706 to %struct.word_type*
  %9708 = getelementptr inbounds %struct.word_type, %struct.word_type* %9707, i32 0, i32 0
  %9709 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9708, i32 0, i64 1
  %9710 = getelementptr inbounds %struct.LIST, %struct.LIST* %9709, i32 0, i32 1
  %9711 = load %union.rec*, %union.rec** %9710, align 8
  %9712 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9713 = icmp eq %union.rec* %9711, %9712
  br i1 %9713, label %9714, label %9715

; <label>:9714                                    ; preds = %9698
  br label %9756

; <label>:9715                                    ; preds = %9698
  %9716 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9717 = bitcast %union.rec* %9716 to %struct.word_type*
  %9718 = getelementptr inbounds %struct.word_type, %struct.word_type* %9717, i32 0, i32 0
  %9719 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9718, i32 0, i64 1
  %9720 = getelementptr inbounds %struct.LIST, %struct.LIST* %9719, i32 0, i32 1
  %9721 = load %union.rec*, %union.rec** %9720, align 8
  store %union.rec* %9721, %union.rec** @zz_res, align 8
  %9722 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9723 = bitcast %union.rec* %9722 to %struct.word_type*
  %9724 = getelementptr inbounds %struct.word_type, %struct.word_type* %9723, i32 0, i32 0
  %9725 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9724, i32 0, i64 1
  %9726 = getelementptr inbounds %struct.LIST, %struct.LIST* %9725, i32 0, i32 0
  %9727 = load %union.rec*, %union.rec** %9726, align 8
  %9728 = load %union.rec*, %union.rec** @zz_res, align 8
  %9729 = bitcast %union.rec* %9728 to %struct.word_type*
  %9730 = getelementptr inbounds %struct.word_type, %struct.word_type* %9729, i32 0, i32 0
  %9731 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9730, i32 0, i64 1
  %9732 = getelementptr inbounds %struct.LIST, %struct.LIST* %9731, i32 0, i32 0
  store %union.rec* %9727, %union.rec** %9732, align 8
  %9733 = load %union.rec*, %union.rec** @zz_res, align 8
  %9734 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9735 = bitcast %union.rec* %9734 to %struct.word_type*
  %9736 = getelementptr inbounds %struct.word_type, %struct.word_type* %9735, i32 0, i32 0
  %9737 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9736, i32 0, i64 1
  %9738 = getelementptr inbounds %struct.LIST, %struct.LIST* %9737, i32 0, i32 0
  %9739 = load %union.rec*, %union.rec** %9738, align 8
  %9740 = bitcast %union.rec* %9739 to %struct.word_type*
  %9741 = getelementptr inbounds %struct.word_type, %struct.word_type* %9740, i32 0, i32 0
  %9742 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9741, i32 0, i64 1
  %9743 = getelementptr inbounds %struct.LIST, %struct.LIST* %9742, i32 0, i32 1
  store %union.rec* %9733, %union.rec** %9743, align 8
  %9744 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9745 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9746 = bitcast %union.rec* %9745 to %struct.word_type*
  %9747 = getelementptr inbounds %struct.word_type, %struct.word_type* %9746, i32 0, i32 0
  %9748 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9747, i32 0, i64 1
  %9749 = getelementptr inbounds %struct.LIST, %struct.LIST* %9748, i32 0, i32 1
  store %union.rec* %9744, %union.rec** %9749, align 8
  %9750 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9751 = bitcast %union.rec* %9750 to %struct.word_type*
  %9752 = getelementptr inbounds %struct.word_type, %struct.word_type* %9751, i32 0, i32 0
  %9753 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9752, i32 0, i64 1
  %9754 = getelementptr inbounds %struct.LIST, %struct.LIST* %9753, i32 0, i32 0
  store %union.rec* %9744, %union.rec** %9754, align 8
  %9755 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %9756

; <label>:9756                                    ; preds = %9715, %9714
  %9757 = phi %union.rec* [ null, %9714 ], [ %9755, %9715 ]
  %9758 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %9758, %union.rec** @zz_hold, align 8
  %9759 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9760 = bitcast %union.rec* %9759 to %struct.word_type*
  %9761 = getelementptr inbounds %struct.word_type, %struct.word_type* %9760, i32 0, i32 0
  %9762 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9761, i32 0, i64 0
  %9763 = getelementptr inbounds %struct.LIST, %struct.LIST* %9762, i32 0, i32 1
  %9764 = load %union.rec*, %union.rec** %9763, align 8
  %9765 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9766 = icmp eq %union.rec* %9764, %9765
  br i1 %9766, label %9767, label %9768

; <label>:9767                                    ; preds = %9756
  br label %9809

; <label>:9768                                    ; preds = %9756
  %9769 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9770 = bitcast %union.rec* %9769 to %struct.word_type*
  %9771 = getelementptr inbounds %struct.word_type, %struct.word_type* %9770, i32 0, i32 0
  %9772 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9771, i32 0, i64 0
  %9773 = getelementptr inbounds %struct.LIST, %struct.LIST* %9772, i32 0, i32 1
  %9774 = load %union.rec*, %union.rec** %9773, align 8
  store %union.rec* %9774, %union.rec** @zz_res, align 8
  %9775 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9776 = bitcast %union.rec* %9775 to %struct.word_type*
  %9777 = getelementptr inbounds %struct.word_type, %struct.word_type* %9776, i32 0, i32 0
  %9778 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9777, i32 0, i64 0
  %9779 = getelementptr inbounds %struct.LIST, %struct.LIST* %9778, i32 0, i32 0
  %9780 = load %union.rec*, %union.rec** %9779, align 8
  %9781 = load %union.rec*, %union.rec** @zz_res, align 8
  %9782 = bitcast %union.rec* %9781 to %struct.word_type*
  %9783 = getelementptr inbounds %struct.word_type, %struct.word_type* %9782, i32 0, i32 0
  %9784 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9783, i32 0, i64 0
  %9785 = getelementptr inbounds %struct.LIST, %struct.LIST* %9784, i32 0, i32 0
  store %union.rec* %9780, %union.rec** %9785, align 8
  %9786 = load %union.rec*, %union.rec** @zz_res, align 8
  %9787 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9788 = bitcast %union.rec* %9787 to %struct.word_type*
  %9789 = getelementptr inbounds %struct.word_type, %struct.word_type* %9788, i32 0, i32 0
  %9790 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9789, i32 0, i64 0
  %9791 = getelementptr inbounds %struct.LIST, %struct.LIST* %9790, i32 0, i32 0
  %9792 = load %union.rec*, %union.rec** %9791, align 8
  %9793 = bitcast %union.rec* %9792 to %struct.word_type*
  %9794 = getelementptr inbounds %struct.word_type, %struct.word_type* %9793, i32 0, i32 0
  %9795 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9794, i32 0, i64 0
  %9796 = getelementptr inbounds %struct.LIST, %struct.LIST* %9795, i32 0, i32 1
  store %union.rec* %9786, %union.rec** %9796, align 8
  %9797 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9798 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9799 = bitcast %union.rec* %9798 to %struct.word_type*
  %9800 = getelementptr inbounds %struct.word_type, %struct.word_type* %9799, i32 0, i32 0
  %9801 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9800, i32 0, i64 0
  %9802 = getelementptr inbounds %struct.LIST, %struct.LIST* %9801, i32 0, i32 1
  store %union.rec* %9797, %union.rec** %9802, align 8
  %9803 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9804 = bitcast %union.rec* %9803 to %struct.word_type*
  %9805 = getelementptr inbounds %struct.word_type, %struct.word_type* %9804, i32 0, i32 0
  %9806 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9805, i32 0, i64 0
  %9807 = getelementptr inbounds %struct.LIST, %struct.LIST* %9806, i32 0, i32 0
  store %union.rec* %9797, %union.rec** %9807, align 8
  %9808 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %9809

; <label>:9809                                    ; preds = %9768, %9767
  %9810 = phi %union.rec* [ null, %9767 ], [ %9808, %9768 ]
  %9811 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %9811, %union.rec** @zz_hold, align 8
  %9812 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %9812, %union.rec** @zz_hold, align 8
  %9813 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9814 = bitcast %union.rec* %9813 to %struct.word_type*
  %9815 = getelementptr inbounds %struct.word_type, %struct.word_type* %9814, i32 0, i32 1
  %9816 = bitcast %union.FIRST_UNION* %9815 to %struct.anon*
  %9817 = getelementptr inbounds %struct.anon, %struct.anon* %9816, i32 0, i32 0
  %9818 = load i8, i8* %9817, align 1
  %9819 = zext i8 %9818 to i32
  %9820 = icmp eq i32 %9819, 11
  br i1 %9820, label %9830, label %9821

; <label>:9821                                    ; preds = %9809
  %9822 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9823 = bitcast %union.rec* %9822 to %struct.word_type*
  %9824 = getelementptr inbounds %struct.word_type, %struct.word_type* %9823, i32 0, i32 1
  %9825 = bitcast %union.FIRST_UNION* %9824 to %struct.anon*
  %9826 = getelementptr inbounds %struct.anon, %struct.anon* %9825, i32 0, i32 0
  %9827 = load i8, i8* %9826, align 1
  %9828 = zext i8 %9827 to i32
  %9829 = icmp eq i32 %9828, 12
  br i1 %9829, label %9830, label %9838

; <label>:9830                                    ; preds = %9821, %9809
  %9831 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9832 = bitcast %union.rec* %9831 to %struct.word_type*
  %9833 = getelementptr inbounds %struct.word_type, %struct.word_type* %9832, i32 0, i32 1
  %9834 = bitcast %union.FIRST_UNION* %9833 to %struct.anon*
  %9835 = getelementptr inbounds %struct.anon, %struct.anon* %9834, i32 0, i32 1
  %9836 = load i8, i8* %9835, align 1
  %9837 = zext i8 %9836 to i32
  br label %9849

; <label>:9838                                    ; preds = %9821
  %9839 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9840 = bitcast %union.rec* %9839 to %struct.word_type*
  %9841 = getelementptr inbounds %struct.word_type, %struct.word_type* %9840, i32 0, i32 1
  %9842 = bitcast %union.FIRST_UNION* %9841 to %struct.anon*
  %9843 = getelementptr inbounds %struct.anon, %struct.anon* %9842, i32 0, i32 0
  %9844 = load i8, i8* %9843, align 1
  %9845 = zext i8 %9844 to i64
  %9846 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %9845
  %9847 = load i8, i8* %9846, align 1
  %9848 = zext i8 %9847 to i32
  br label %9849

; <label>:9849                                    ; preds = %9838, %9830
  %9850 = phi i32 [ %9837, %9830 ], [ %9848, %9838 ]
  store i32 %9850, i32* @zz_size, align 4
  %9851 = load i32, i32* @zz_size, align 4
  %9852 = sext i32 %9851 to i64
  %9853 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %9852
  %9854 = load %union.rec*, %union.rec** %9853, align 8
  %9855 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9856 = bitcast %union.rec* %9855 to %struct.word_type*
  %9857 = getelementptr inbounds %struct.word_type, %struct.word_type* %9856, i32 0, i32 0
  %9858 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9857, i32 0, i64 0
  %9859 = getelementptr inbounds %struct.LIST, %struct.LIST* %9858, i32 0, i32 0
  store %union.rec* %9854, %union.rec** %9859, align 8
  %9860 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9861 = load i32, i32* @zz_size, align 4
  %9862 = sext i32 %9861 to i64
  %9863 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %9862
  store %union.rec* %9860, %union.rec** %9863, align 8
  br label %9689

; <label>:9864                                    ; preds = %9689
  %9865 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %9865, %union.rec** @zz_hold, align 8
  %9866 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %9866, %union.rec** @zz_hold, align 8
  %9867 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9868 = bitcast %union.rec* %9867 to %struct.word_type*
  %9869 = getelementptr inbounds %struct.word_type, %struct.word_type* %9868, i32 0, i32 1
  %9870 = bitcast %union.FIRST_UNION* %9869 to %struct.anon*
  %9871 = getelementptr inbounds %struct.anon, %struct.anon* %9870, i32 0, i32 0
  %9872 = load i8, i8* %9871, align 1
  %9873 = zext i8 %9872 to i32
  %9874 = icmp eq i32 %9873, 11
  br i1 %9874, label %9884, label %9875

; <label>:9875                                    ; preds = %9864
  %9876 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9877 = bitcast %union.rec* %9876 to %struct.word_type*
  %9878 = getelementptr inbounds %struct.word_type, %struct.word_type* %9877, i32 0, i32 1
  %9879 = bitcast %union.FIRST_UNION* %9878 to %struct.anon*
  %9880 = getelementptr inbounds %struct.anon, %struct.anon* %9879, i32 0, i32 0
  %9881 = load i8, i8* %9880, align 1
  %9882 = zext i8 %9881 to i32
  %9883 = icmp eq i32 %9882, 12
  br i1 %9883, label %9884, label %9892

; <label>:9884                                    ; preds = %9875, %9864
  %9885 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9886 = bitcast %union.rec* %9885 to %struct.word_type*
  %9887 = getelementptr inbounds %struct.word_type, %struct.word_type* %9886, i32 0, i32 1
  %9888 = bitcast %union.FIRST_UNION* %9887 to %struct.anon*
  %9889 = getelementptr inbounds %struct.anon, %struct.anon* %9888, i32 0, i32 1
  %9890 = load i8, i8* %9889, align 1
  %9891 = zext i8 %9890 to i32
  br label %9903

; <label>:9892                                    ; preds = %9875
  %9893 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9894 = bitcast %union.rec* %9893 to %struct.word_type*
  %9895 = getelementptr inbounds %struct.word_type, %struct.word_type* %9894, i32 0, i32 1
  %9896 = bitcast %union.FIRST_UNION* %9895 to %struct.anon*
  %9897 = getelementptr inbounds %struct.anon, %struct.anon* %9896, i32 0, i32 0
  %9898 = load i8, i8* %9897, align 1
  %9899 = zext i8 %9898 to i64
  %9900 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %9899
  %9901 = load i8, i8* %9900, align 1
  %9902 = zext i8 %9901 to i32
  br label %9903

; <label>:9903                                    ; preds = %9892, %9884
  %9904 = phi i32 [ %9891, %9884 ], [ %9902, %9892 ]
  store i32 %9904, i32* @zz_size, align 4
  %9905 = load i32, i32* @zz_size, align 4
  %9906 = sext i32 %9905 to i64
  %9907 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %9906
  %9908 = load %union.rec*, %union.rec** %9907, align 8
  %9909 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9910 = bitcast %union.rec* %9909 to %struct.word_type*
  %9911 = getelementptr inbounds %struct.word_type, %struct.word_type* %9910, i32 0, i32 0
  %9912 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9911, i32 0, i64 0
  %9913 = getelementptr inbounds %struct.LIST, %struct.LIST* %9912, i32 0, i32 0
  store %union.rec* %9908, %union.rec** %9913, align 8
  %9914 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9915 = load i32, i32* @zz_size, align 4
  %9916 = sext i32 %9915 to i64
  %9917 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %9916
  store %union.rec* %9914, %union.rec** %9917, align 8
  %9918 = load %union.rec*, %union.rec** %tg_inners, align 8
  %9919 = load %union.rec**, %union.rec*** %3, align 8
  store %union.rec* %9918, %union.rec** %9919, align 8
  br label %9920

; <label>:9920                                    ; preds = %9903, %9371
  br label %9921

; <label>:9921                                    ; preds = %9920, %9365
  store i32 5, i32* %1
  br label %9922

; <label>:9922                                    ; preds = %9921, %7206, %6763, %882, %832, %243
  %9923 = load i32, i32* %1
  ret i32 %9923
}

declare i8* @SymName(%union.rec*) #1

declare i32 @DisposeObject(%union.rec*) #1

declare void @KillGalley(%union.rec*, i32) #1

declare void @EnterErrorBlock(i32) #1

declare void @Constrained(%union.rec*, %struct.CONSTRAINT*, i32, %union.rec**) #1

declare %union.rec* @CopyObject(%union.rec*, %struct.FILE_POS*) #1

declare %union.rec* @DetachEnv(%union.rec*) #1

declare void @SizeGalley(%union.rec*, %union.rec*, i32, i32, i32, i32, %struct.STYLE*, %struct.CONSTRAINT*, %union.rec*, %union.rec**, %union.rec**, %union.rec**, %union.rec*) #1

declare void @ExpandRecursives(%union.rec*) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

declare void @LeaveErrorBlock(i32) #1

declare i32 @CheckComponentOrder(%union.rec*, %union.rec*) #1

declare i32 @VerticalHyphenate(%union.rec*) #1

declare i32 @ScaleToConstraint(i32, i32, %struct.CONSTRAINT*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal %union.rec* @InterposeScale(%union.rec* %y, i32 %scale_factor, i32 %dim) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %res = alloca %union.rec*, align 8
  store %union.rec* %y, %union.rec** %1, align 8
  store i32 %scale_factor, i32* %2, align 4
  store i32 %dim, i32* %3, align 4
  %4 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 34), align 1
  %5 = zext i8 %4 to i32
  store i32 %5, i32* @zz_size, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp uge i64 %6, 265
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %0
  %9 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %10 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %9)
  br label %36

; <label>:11                                      ; preds = %0
  %12 = load i32, i32* @zz_size, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %13
  %15 = load %union.rec*, %union.rec** %14, align 8
  %16 = icmp eq %union.rec* %15, null
  br i1 %16, label %17, label %21

; <label>:17                                      ; preds = %11
  %18 = load i32, i32* @zz_size, align 4
  %19 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %20 = call %union.rec* @GetMemory(i32 %18, %struct.FILE_POS* %19)
  store %union.rec* %20, %union.rec** @zz_hold, align 8
  br label %35

; <label>:21                                      ; preds = %11
  %22 = load i32, i32* @zz_size, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %23
  %25 = load %union.rec*, %union.rec** %24, align 8
  store %union.rec* %25, %union.rec** @zz_hold, align 8
  store %union.rec* %25, %union.rec** @zz_hold, align 8
  %26 = load %union.rec*, %union.rec** @zz_hold, align 8
  %27 = bitcast %union.rec* %26 to %struct.word_type*
  %28 = getelementptr inbounds %struct.word_type, %struct.word_type* %27, i32 0, i32 0
  %29 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %28, i32 0, i64 0
  %30 = getelementptr inbounds %struct.LIST, %struct.LIST* %29, i32 0, i32 0
  %31 = load %union.rec*, %union.rec** %30, align 8
  %32 = load i32, i32* @zz_size, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %33
  store %union.rec* %31, %union.rec** %34, align 8
  br label %35

; <label>:35                                      ; preds = %21, %17
  br label %36

; <label>:36                                      ; preds = %35, %8
  %37 = load %union.rec*, %union.rec** @zz_hold, align 8
  %38 = bitcast %union.rec* %37 to %struct.word_type*
  %39 = getelementptr inbounds %struct.word_type, %struct.word_type* %38, i32 0, i32 1
  %40 = bitcast %union.FIRST_UNION* %39 to %struct.anon*
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 0
  store i8 34, i8* %41, align 1
  %42 = load %union.rec*, %union.rec** @zz_hold, align 8
  %43 = load %union.rec*, %union.rec** @zz_hold, align 8
  %44 = bitcast %union.rec* %43 to %struct.word_type*
  %45 = getelementptr inbounds %struct.word_type, %struct.word_type* %44, i32 0, i32 0
  %46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %45, i32 0, i64 1
  %47 = getelementptr inbounds %struct.LIST, %struct.LIST* %46, i32 0, i32 1
  store %union.rec* %42, %union.rec** %47, align 8
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %49 = bitcast %union.rec* %48 to %struct.word_type*
  %50 = getelementptr inbounds %struct.word_type, %struct.word_type* %49, i32 0, i32 0
  %51 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %50, i32 0, i64 1
  %52 = getelementptr inbounds %struct.LIST, %struct.LIST* %51, i32 0, i32 0
  store %union.rec* %42, %union.rec** %52, align 8
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %54 = bitcast %union.rec* %53 to %struct.word_type*
  %55 = getelementptr inbounds %struct.word_type, %struct.word_type* %54, i32 0, i32 0
  %56 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %55, i32 0, i64 0
  %57 = getelementptr inbounds %struct.LIST, %struct.LIST* %56, i32 0, i32 1
  store %union.rec* %42, %union.rec** %57, align 8
  %58 = load %union.rec*, %union.rec** @zz_hold, align 8
  %59 = bitcast %union.rec* %58 to %struct.word_type*
  %60 = getelementptr inbounds %struct.word_type, %struct.word_type* %59, i32 0, i32 0
  %61 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %60, i32 0, i64 0
  %62 = getelementptr inbounds %struct.LIST, %struct.LIST* %61, i32 0, i32 0
  store %union.rec* %42, %union.rec** %62, align 8
  store %union.rec* %42, %union.rec** %res, align 8
  %63 = load %union.rec*, %union.rec** %1, align 8
  %64 = bitcast %union.rec* %63 to %struct.word_type*
  %65 = getelementptr inbounds %struct.word_type, %struct.word_type* %64, i32 0, i32 1
  %66 = bitcast %union.FIRST_UNION* %65 to %struct.FILE_POS*
  %67 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %66, i32 0, i32 2
  %68 = load i16, i16* %67, align 2
  %69 = load %union.rec*, %union.rec** %res, align 8
  %70 = bitcast %union.rec* %69 to %struct.word_type*
  %71 = getelementptr inbounds %struct.word_type, %struct.word_type* %70, i32 0, i32 1
  %72 = bitcast %union.FIRST_UNION* %71 to %struct.FILE_POS*
  %73 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %72, i32 0, i32 2
  store i16 %68, i16* %73, align 2
  %74 = load %union.rec*, %union.rec** %1, align 8
  %75 = bitcast %union.rec* %74 to %struct.word_type*
  %76 = getelementptr inbounds %struct.word_type, %struct.word_type* %75, i32 0, i32 1
  %77 = bitcast %union.FIRST_UNION* %76 to %struct.FILE_POS*
  %78 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 1048575
  %81 = load %union.rec*, %union.rec** %res, align 8
  %82 = bitcast %union.rec* %81 to %struct.word_type*
  %83 = getelementptr inbounds %struct.word_type, %struct.word_type* %82, i32 0, i32 1
  %84 = bitcast %union.FIRST_UNION* %83 to %struct.FILE_POS*
  %85 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %80, 1048575
  %88 = and i32 %86, -1048576
  %89 = or i32 %88, %87
  store i32 %89, i32* %85, align 4
  %90 = load %union.rec*, %union.rec** %1, align 8
  %91 = bitcast %union.rec* %90 to %struct.word_type*
  %92 = getelementptr inbounds %struct.word_type, %struct.word_type* %91, i32 0, i32 1
  %93 = bitcast %union.FIRST_UNION* %92 to %struct.FILE_POS*
  %94 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = lshr i32 %95, 20
  %97 = load %union.rec*, %union.rec** %res, align 8
  %98 = bitcast %union.rec* %97 to %struct.word_type*
  %99 = getelementptr inbounds %struct.word_type, %struct.word_type* %98, i32 0, i32 1
  %100 = bitcast %union.FIRST_UNION* %99 to %struct.FILE_POS*
  %101 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %96, 4095
  %104 = shl i32 %103, 20
  %105 = and i32 %102, 1048575
  %106 = or i32 %105, %104
  store i32 %106, i32* %101, align 4
  %107 = load i32, i32* %3, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %121

; <label>:109                                     ; preds = %36
  %110 = load i32, i32* %2, align 4
  %111 = load %union.rec*, %union.rec** %res, align 8
  %112 = bitcast %union.rec* %111 to %struct.closure_type*
  %113 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %112, i32 0, i32 4
  %114 = bitcast %union.FOURTH_UNION* %113 to %struct.CONSTRAINT*
  %115 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %114, i32 0, i32 0
  store i32 %110, i32* %115, align 4
  %116 = load %union.rec*, %union.rec** %res, align 8
  %117 = bitcast %union.rec* %116 to %struct.closure_type*
  %118 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %117, i32 0, i32 4
  %119 = bitcast %union.FOURTH_UNION* %118 to %struct.CONSTRAINT*
  %120 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %119, i32 0, i32 2
  store i32 128, i32* %120, align 4
  br label %133

; <label>:121                                     ; preds = %36
  %122 = load %union.rec*, %union.rec** %res, align 8
  %123 = bitcast %union.rec* %122 to %struct.closure_type*
  %124 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %123, i32 0, i32 4
  %125 = bitcast %union.FOURTH_UNION* %124 to %struct.CONSTRAINT*
  %126 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %125, i32 0, i32 0
  store i32 128, i32* %126, align 4
  %127 = load i32, i32* %2, align 4
  %128 = load %union.rec*, %union.rec** %res, align 8
  %129 = bitcast %union.rec* %128 to %struct.closure_type*
  %130 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %129, i32 0, i32 4
  %131 = bitcast %union.FOURTH_UNION* %130 to %struct.CONSTRAINT*
  %132 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %131, i32 0, i32 2
  store i32 %127, i32* %132, align 4
  br label %133

; <label>:133                                     ; preds = %121, %109
  %134 = load i32, i32* %3, align 4
  %135 = sext i32 %134 to i64
  %136 = load %union.rec*, %union.rec** %1, align 8
  %137 = bitcast %union.rec* %136 to %struct.word_type*
  %138 = getelementptr inbounds %struct.word_type, %struct.word_type* %137, i32 0, i32 3
  %139 = bitcast %union.THIRD_UNION* %138 to %struct.anon.6*
  %140 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %139, i32 0, i32 0
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %140, i32 0, i64 %135
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %2, align 4
  %144 = mul nsw i32 %142, %143
  %145 = sdiv i32 %144, 128
  %146 = load i32, i32* %3, align 4
  %147 = sext i32 %146 to i64
  %148 = load %union.rec*, %union.rec** %res, align 8
  %149 = bitcast %union.rec* %148 to %struct.word_type*
  %150 = getelementptr inbounds %struct.word_type, %struct.word_type* %149, i32 0, i32 3
  %151 = bitcast %union.THIRD_UNION* %150 to %struct.anon.6*
  %152 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %151, i32 0, i32 0
  %153 = getelementptr inbounds [2 x i32], [2 x i32]* %152, i32 0, i64 %147
  store i32 %145, i32* %153, align 4
  %154 = load i32, i32* %3, align 4
  %155 = sext i32 %154 to i64
  %156 = load %union.rec*, %union.rec** %1, align 8
  %157 = bitcast %union.rec* %156 to %struct.word_type*
  %158 = getelementptr inbounds %struct.word_type, %struct.word_type* %157, i32 0, i32 3
  %159 = bitcast %union.THIRD_UNION* %158 to %struct.anon.6*
  %160 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %159, i32 0, i32 1
  %161 = getelementptr inbounds [2 x i32], [2 x i32]* %160, i32 0, i64 %155
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %2, align 4
  %164 = mul nsw i32 %162, %163
  %165 = sdiv i32 %164, 128
  %166 = load i32, i32* %3, align 4
  %167 = sext i32 %166 to i64
  %168 = load %union.rec*, %union.rec** %res, align 8
  %169 = bitcast %union.rec* %168 to %struct.word_type*
  %170 = getelementptr inbounds %struct.word_type, %struct.word_type* %169, i32 0, i32 3
  %171 = bitcast %union.THIRD_UNION* %170 to %struct.anon.6*
  %172 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %171, i32 0, i32 1
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* %172, i32 0, i64 %167
  store i32 %165, i32* %173, align 4
  %174 = load i32, i32* %3, align 4
  %175 = sub nsw i32 1, %174
  %176 = sext i32 %175 to i64
  %177 = load %union.rec*, %union.rec** %1, align 8
  %178 = bitcast %union.rec* %177 to %struct.word_type*
  %179 = getelementptr inbounds %struct.word_type, %struct.word_type* %178, i32 0, i32 3
  %180 = bitcast %union.THIRD_UNION* %179 to %struct.anon.6*
  %181 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %180, i32 0, i32 0
  %182 = getelementptr inbounds [2 x i32], [2 x i32]* %181, i32 0, i64 %176
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %3, align 4
  %185 = sub nsw i32 1, %184
  %186 = sext i32 %185 to i64
  %187 = load %union.rec*, %union.rec** %res, align 8
  %188 = bitcast %union.rec* %187 to %struct.word_type*
  %189 = getelementptr inbounds %struct.word_type, %struct.word_type* %188, i32 0, i32 3
  %190 = bitcast %union.THIRD_UNION* %189 to %struct.anon.6*
  %191 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %190, i32 0, i32 0
  %192 = getelementptr inbounds [2 x i32], [2 x i32]* %191, i32 0, i64 %186
  store i32 %183, i32* %192, align 4
  %193 = load i32, i32* %3, align 4
  %194 = sub nsw i32 1, %193
  %195 = sext i32 %194 to i64
  %196 = load %union.rec*, %union.rec** %1, align 8
  %197 = bitcast %union.rec* %196 to %struct.word_type*
  %198 = getelementptr inbounds %struct.word_type, %struct.word_type* %197, i32 0, i32 3
  %199 = bitcast %union.THIRD_UNION* %198 to %struct.anon.6*
  %200 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %199, i32 0, i32 1
  %201 = getelementptr inbounds [2 x i32], [2 x i32]* %200, i32 0, i64 %195
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %3, align 4
  %204 = sub nsw i32 1, %203
  %205 = sext i32 %204 to i64
  %206 = load %union.rec*, %union.rec** %res, align 8
  %207 = bitcast %union.rec* %206 to %struct.word_type*
  %208 = getelementptr inbounds %struct.word_type, %struct.word_type* %207, i32 0, i32 3
  %209 = bitcast %union.THIRD_UNION* %208 to %struct.anon.6*
  %210 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %209, i32 0, i32 1
  %211 = getelementptr inbounds [2 x i32], [2 x i32]* %210, i32 0, i64 %205
  store i32 %202, i32* %211, align 4
  %212 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %212, %union.rec** @zz_hold, align 8
  %213 = load %union.rec*, %union.rec** @zz_hold, align 8
  %214 = bitcast %union.rec* %213 to %struct.word_type*
  %215 = getelementptr inbounds %struct.word_type, %struct.word_type* %214, i32 0, i32 0
  %216 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %215, i32 0, i64 1
  %217 = getelementptr inbounds %struct.LIST, %struct.LIST* %216, i32 0, i32 1
  %218 = load %union.rec*, %union.rec** %217, align 8
  %219 = load %union.rec*, %union.rec** @zz_hold, align 8
  %220 = icmp eq %union.rec* %218, %219
  br i1 %220, label %221, label %222

; <label>:221                                     ; preds = %133
  br label %263

; <label>:222                                     ; preds = %133
  %223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %224 = bitcast %union.rec* %223 to %struct.word_type*
  %225 = getelementptr inbounds %struct.word_type, %struct.word_type* %224, i32 0, i32 0
  %226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %225, i32 0, i64 1
  %227 = getelementptr inbounds %struct.LIST, %struct.LIST* %226, i32 0, i32 1
  %228 = load %union.rec*, %union.rec** %227, align 8
  store %union.rec* %228, %union.rec** @zz_res, align 8
  %229 = load %union.rec*, %union.rec** @zz_hold, align 8
  %230 = bitcast %union.rec* %229 to %struct.word_type*
  %231 = getelementptr inbounds %struct.word_type, %struct.word_type* %230, i32 0, i32 0
  %232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %231, i32 0, i64 1
  %233 = getelementptr inbounds %struct.LIST, %struct.LIST* %232, i32 0, i32 0
  %234 = load %union.rec*, %union.rec** %233, align 8
  %235 = load %union.rec*, %union.rec** @zz_res, align 8
  %236 = bitcast %union.rec* %235 to %struct.word_type*
  %237 = getelementptr inbounds %struct.word_type, %struct.word_type* %236, i32 0, i32 0
  %238 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %237, i32 0, i64 1
  %239 = getelementptr inbounds %struct.LIST, %struct.LIST* %238, i32 0, i32 0
  store %union.rec* %234, %union.rec** %239, align 8
  %240 = load %union.rec*, %union.rec** @zz_res, align 8
  %241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %242 = bitcast %union.rec* %241 to %struct.word_type*
  %243 = getelementptr inbounds %struct.word_type, %struct.word_type* %242, i32 0, i32 0
  %244 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %243, i32 0, i64 1
  %245 = getelementptr inbounds %struct.LIST, %struct.LIST* %244, i32 0, i32 0
  %246 = load %union.rec*, %union.rec** %245, align 8
  %247 = bitcast %union.rec* %246 to %struct.word_type*
  %248 = getelementptr inbounds %struct.word_type, %struct.word_type* %247, i32 0, i32 0
  %249 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %248, i32 0, i64 1
  %250 = getelementptr inbounds %struct.LIST, %struct.LIST* %249, i32 0, i32 1
  store %union.rec* %240, %union.rec** %250, align 8
  %251 = load %union.rec*, %union.rec** @zz_hold, align 8
  %252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %253 = bitcast %union.rec* %252 to %struct.word_type*
  %254 = getelementptr inbounds %struct.word_type, %struct.word_type* %253, i32 0, i32 0
  %255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %254, i32 0, i64 1
  %256 = getelementptr inbounds %struct.LIST, %struct.LIST* %255, i32 0, i32 1
  store %union.rec* %251, %union.rec** %256, align 8
  %257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %258 = bitcast %union.rec* %257 to %struct.word_type*
  %259 = getelementptr inbounds %struct.word_type, %struct.word_type* %258, i32 0, i32 0
  %260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %259, i32 0, i64 1
  %261 = getelementptr inbounds %struct.LIST, %struct.LIST* %260, i32 0, i32 0
  store %union.rec* %251, %union.rec** %261, align 8
  %262 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %263

; <label>:263                                     ; preds = %222, %221
  %264 = phi %union.rec* [ null, %221 ], [ %262, %222 ]
  store %union.rec* %264, %union.rec** @xx_tmp, align 8
  %265 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %265, %union.rec** @zz_res, align 8
  %266 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %266, %union.rec** @zz_hold, align 8
  %267 = load %union.rec*, %union.rec** @zz_hold, align 8
  %268 = icmp eq %union.rec* %267, null
  br i1 %268, label %269, label %271

; <label>:269                                     ; preds = %263
  %270 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %319

; <label>:271                                     ; preds = %263
  %272 = load %union.rec*, %union.rec** @zz_res, align 8
  %273 = icmp eq %union.rec* %272, null
  br i1 %273, label %274, label %276

; <label>:274                                     ; preds = %271
  %275 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %317

; <label>:276                                     ; preds = %271
  %277 = load %union.rec*, %union.rec** @zz_hold, align 8
  %278 = bitcast %union.rec* %277 to %struct.word_type*
  %279 = getelementptr inbounds %struct.word_type, %struct.word_type* %278, i32 0, i32 0
  %280 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %279, i32 0, i64 1
  %281 = getelementptr inbounds %struct.LIST, %struct.LIST* %280, i32 0, i32 0
  %282 = load %union.rec*, %union.rec** %281, align 8
  store %union.rec* %282, %union.rec** @zz_tmp, align 8
  %283 = load %union.rec*, %union.rec** @zz_res, align 8
  %284 = bitcast %union.rec* %283 to %struct.word_type*
  %285 = getelementptr inbounds %struct.word_type, %struct.word_type* %284, i32 0, i32 0
  %286 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %285, i32 0, i64 1
  %287 = getelementptr inbounds %struct.LIST, %struct.LIST* %286, i32 0, i32 0
  %288 = load %union.rec*, %union.rec** %287, align 8
  %289 = load %union.rec*, %union.rec** @zz_hold, align 8
  %290 = bitcast %union.rec* %289 to %struct.word_type*
  %291 = getelementptr inbounds %struct.word_type, %struct.word_type* %290, i32 0, i32 0
  %292 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %291, i32 0, i64 1
  %293 = getelementptr inbounds %struct.LIST, %struct.LIST* %292, i32 0, i32 0
  store %union.rec* %288, %union.rec** %293, align 8
  %294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %295 = load %union.rec*, %union.rec** @zz_res, align 8
  %296 = bitcast %union.rec* %295 to %struct.word_type*
  %297 = getelementptr inbounds %struct.word_type, %struct.word_type* %296, i32 0, i32 0
  %298 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %297, i32 0, i64 1
  %299 = getelementptr inbounds %struct.LIST, %struct.LIST* %298, i32 0, i32 0
  %300 = load %union.rec*, %union.rec** %299, align 8
  %301 = bitcast %union.rec* %300 to %struct.word_type*
  %302 = getelementptr inbounds %struct.word_type, %struct.word_type* %301, i32 0, i32 0
  %303 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %302, i32 0, i64 1
  %304 = getelementptr inbounds %struct.LIST, %struct.LIST* %303, i32 0, i32 1
  store %union.rec* %294, %union.rec** %304, align 8
  %305 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %306 = load %union.rec*, %union.rec** @zz_res, align 8
  %307 = bitcast %union.rec* %306 to %struct.word_type*
  %308 = getelementptr inbounds %struct.word_type, %struct.word_type* %307, i32 0, i32 0
  %309 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %308, i32 0, i64 1
  %310 = getelementptr inbounds %struct.LIST, %struct.LIST* %309, i32 0, i32 0
  store %union.rec* %305, %union.rec** %310, align 8
  %311 = load %union.rec*, %union.rec** @zz_res, align 8
  %312 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %313 = bitcast %union.rec* %312 to %struct.word_type*
  %314 = getelementptr inbounds %struct.word_type, %struct.word_type* %313, i32 0, i32 0
  %315 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %314, i32 0, i64 1
  %316 = getelementptr inbounds %struct.LIST, %struct.LIST* %315, i32 0, i32 1
  store %union.rec* %311, %union.rec** %316, align 8
  br label %317

; <label>:317                                     ; preds = %276, %274
  %318 = phi %union.rec* [ %275, %274 ], [ %311, %276 ]
  br label %319

; <label>:319                                     ; preds = %317, %269
  %320 = phi %union.rec* [ %270, %269 ], [ %318, %317 ]
  %321 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %322 = zext i8 %321 to i32
  store i32 %322, i32* @zz_size, align 4
  %323 = sext i32 %322 to i64
  %324 = icmp uge i64 %323, 265
  br i1 %324, label %325, label %328

; <label>:325                                     ; preds = %319
  %326 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %327 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %326)
  br label %353

; <label>:328                                     ; preds = %319
  %329 = load i32, i32* @zz_size, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %330
  %332 = load %union.rec*, %union.rec** %331, align 8
  %333 = icmp eq %union.rec* %332, null
  br i1 %333, label %334, label %338

; <label>:334                                     ; preds = %328
  %335 = load i32, i32* @zz_size, align 4
  %336 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %337 = call %union.rec* @GetMemory(i32 %335, %struct.FILE_POS* %336)
  store %union.rec* %337, %union.rec** @zz_hold, align 8
  br label %352

; <label>:338                                     ; preds = %328
  %339 = load i32, i32* @zz_size, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %340
  %342 = load %union.rec*, %union.rec** %341, align 8
  store %union.rec* %342, %union.rec** @zz_hold, align 8
  store %union.rec* %342, %union.rec** @zz_hold, align 8
  %343 = load %union.rec*, %union.rec** @zz_hold, align 8
  %344 = bitcast %union.rec* %343 to %struct.word_type*
  %345 = getelementptr inbounds %struct.word_type, %struct.word_type* %344, i32 0, i32 0
  %346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %345, i32 0, i64 0
  %347 = getelementptr inbounds %struct.LIST, %struct.LIST* %346, i32 0, i32 0
  %348 = load %union.rec*, %union.rec** %347, align 8
  %349 = load i32, i32* @zz_size, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %350
  store %union.rec* %348, %union.rec** %351, align 8
  br label %352

; <label>:352                                     ; preds = %338, %334
  br label %353

; <label>:353                                     ; preds = %352, %325
  %354 = load %union.rec*, %union.rec** @zz_hold, align 8
  %355 = bitcast %union.rec* %354 to %struct.word_type*
  %356 = getelementptr inbounds %struct.word_type, %struct.word_type* %355, i32 0, i32 1
  %357 = bitcast %union.FIRST_UNION* %356 to %struct.anon*
  %358 = getelementptr inbounds %struct.anon, %struct.anon* %357, i32 0, i32 0
  store i8 0, i8* %358, align 1
  %359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %360 = load %union.rec*, %union.rec** @zz_hold, align 8
  %361 = bitcast %union.rec* %360 to %struct.word_type*
  %362 = getelementptr inbounds %struct.word_type, %struct.word_type* %361, i32 0, i32 0
  %363 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %362, i32 0, i64 1
  %364 = getelementptr inbounds %struct.LIST, %struct.LIST* %363, i32 0, i32 1
  store %union.rec* %359, %union.rec** %364, align 8
  %365 = load %union.rec*, %union.rec** @zz_hold, align 8
  %366 = bitcast %union.rec* %365 to %struct.word_type*
  %367 = getelementptr inbounds %struct.word_type, %struct.word_type* %366, i32 0, i32 0
  %368 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %367, i32 0, i64 1
  %369 = getelementptr inbounds %struct.LIST, %struct.LIST* %368, i32 0, i32 0
  store %union.rec* %359, %union.rec** %369, align 8
  %370 = load %union.rec*, %union.rec** @zz_hold, align 8
  %371 = bitcast %union.rec* %370 to %struct.word_type*
  %372 = getelementptr inbounds %struct.word_type, %struct.word_type* %371, i32 0, i32 0
  %373 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %372, i32 0, i64 0
  %374 = getelementptr inbounds %struct.LIST, %struct.LIST* %373, i32 0, i32 1
  store %union.rec* %359, %union.rec** %374, align 8
  %375 = load %union.rec*, %union.rec** @zz_hold, align 8
  %376 = bitcast %union.rec* %375 to %struct.word_type*
  %377 = getelementptr inbounds %struct.word_type, %struct.word_type* %376, i32 0, i32 0
  %378 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %377, i32 0, i64 0
  %379 = getelementptr inbounds %struct.LIST, %struct.LIST* %378, i32 0, i32 0
  store %union.rec* %359, %union.rec** %379, align 8
  store %union.rec* %359, %union.rec** @xx_link, align 8
  %380 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %380, %union.rec** @zz_res, align 8
  %381 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %381, %union.rec** @zz_hold, align 8
  %382 = load %union.rec*, %union.rec** @zz_hold, align 8
  %383 = icmp eq %union.rec* %382, null
  br i1 %383, label %384, label %386

; <label>:384                                     ; preds = %353
  %385 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %434

; <label>:386                                     ; preds = %353
  %387 = load %union.rec*, %union.rec** @zz_res, align 8
  %388 = icmp eq %union.rec* %387, null
  br i1 %388, label %389, label %391

; <label>:389                                     ; preds = %386
  %390 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %432

; <label>:391                                     ; preds = %386
  %392 = load %union.rec*, %union.rec** @zz_hold, align 8
  %393 = bitcast %union.rec* %392 to %struct.word_type*
  %394 = getelementptr inbounds %struct.word_type, %struct.word_type* %393, i32 0, i32 0
  %395 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %394, i32 0, i64 0
  %396 = getelementptr inbounds %struct.LIST, %struct.LIST* %395, i32 0, i32 0
  %397 = load %union.rec*, %union.rec** %396, align 8
  store %union.rec* %397, %union.rec** @zz_tmp, align 8
  %398 = load %union.rec*, %union.rec** @zz_res, align 8
  %399 = bitcast %union.rec* %398 to %struct.word_type*
  %400 = getelementptr inbounds %struct.word_type, %struct.word_type* %399, i32 0, i32 0
  %401 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %400, i32 0, i64 0
  %402 = getelementptr inbounds %struct.LIST, %struct.LIST* %401, i32 0, i32 0
  %403 = load %union.rec*, %union.rec** %402, align 8
  %404 = load %union.rec*, %union.rec** @zz_hold, align 8
  %405 = bitcast %union.rec* %404 to %struct.word_type*
  %406 = getelementptr inbounds %struct.word_type, %struct.word_type* %405, i32 0, i32 0
  %407 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %406, i32 0, i64 0
  %408 = getelementptr inbounds %struct.LIST, %struct.LIST* %407, i32 0, i32 0
  store %union.rec* %403, %union.rec** %408, align 8
  %409 = load %union.rec*, %union.rec** @zz_hold, align 8
  %410 = load %union.rec*, %union.rec** @zz_res, align 8
  %411 = bitcast %union.rec* %410 to %struct.word_type*
  %412 = getelementptr inbounds %struct.word_type, %struct.word_type* %411, i32 0, i32 0
  %413 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %412, i32 0, i64 0
  %414 = getelementptr inbounds %struct.LIST, %struct.LIST* %413, i32 0, i32 0
  %415 = load %union.rec*, %union.rec** %414, align 8
  %416 = bitcast %union.rec* %415 to %struct.word_type*
  %417 = getelementptr inbounds %struct.word_type, %struct.word_type* %416, i32 0, i32 0
  %418 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %417, i32 0, i64 0
  %419 = getelementptr inbounds %struct.LIST, %struct.LIST* %418, i32 0, i32 1
  store %union.rec* %409, %union.rec** %419, align 8
  %420 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %421 = load %union.rec*, %union.rec** @zz_res, align 8
  %422 = bitcast %union.rec* %421 to %struct.word_type*
  %423 = getelementptr inbounds %struct.word_type, %struct.word_type* %422, i32 0, i32 0
  %424 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %423, i32 0, i64 0
  %425 = getelementptr inbounds %struct.LIST, %struct.LIST* %424, i32 0, i32 0
  store %union.rec* %420, %union.rec** %425, align 8
  %426 = load %union.rec*, %union.rec** @zz_res, align 8
  %427 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %428 = bitcast %union.rec* %427 to %struct.word_type*
  %429 = getelementptr inbounds %struct.word_type, %struct.word_type* %428, i32 0, i32 0
  %430 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %429, i32 0, i64 0
  %431 = getelementptr inbounds %struct.LIST, %struct.LIST* %430, i32 0, i32 1
  store %union.rec* %426, %union.rec** %431, align 8
  br label %432

; <label>:432                                     ; preds = %391, %389
  %433 = phi %union.rec* [ %390, %389 ], [ %426, %391 ]
  br label %434

; <label>:434                                     ; preds = %432, %384
  %435 = phi %union.rec* [ %385, %384 ], [ %433, %432 ]
  %436 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %436, %union.rec** @zz_res, align 8
  %437 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %437, %union.rec** @zz_hold, align 8
  %438 = load %union.rec*, %union.rec** @zz_hold, align 8
  %439 = icmp eq %union.rec* %438, null
  br i1 %439, label %440, label %442

; <label>:440                                     ; preds = %434
  %441 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %490

; <label>:442                                     ; preds = %434
  %443 = load %union.rec*, %union.rec** @zz_res, align 8
  %444 = icmp eq %union.rec* %443, null
  br i1 %444, label %445, label %447

; <label>:445                                     ; preds = %442
  %446 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %488

; <label>:447                                     ; preds = %442
  %448 = load %union.rec*, %union.rec** @zz_hold, align 8
  %449 = bitcast %union.rec* %448 to %struct.word_type*
  %450 = getelementptr inbounds %struct.word_type, %struct.word_type* %449, i32 0, i32 0
  %451 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %450, i32 0, i64 1
  %452 = getelementptr inbounds %struct.LIST, %struct.LIST* %451, i32 0, i32 0
  %453 = load %union.rec*, %union.rec** %452, align 8
  store %union.rec* %453, %union.rec** @zz_tmp, align 8
  %454 = load %union.rec*, %union.rec** @zz_res, align 8
  %455 = bitcast %union.rec* %454 to %struct.word_type*
  %456 = getelementptr inbounds %struct.word_type, %struct.word_type* %455, i32 0, i32 0
  %457 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %456, i32 0, i64 1
  %458 = getelementptr inbounds %struct.LIST, %struct.LIST* %457, i32 0, i32 0
  %459 = load %union.rec*, %union.rec** %458, align 8
  %460 = load %union.rec*, %union.rec** @zz_hold, align 8
  %461 = bitcast %union.rec* %460 to %struct.word_type*
  %462 = getelementptr inbounds %struct.word_type, %struct.word_type* %461, i32 0, i32 0
  %463 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %462, i32 0, i64 1
  %464 = getelementptr inbounds %struct.LIST, %struct.LIST* %463, i32 0, i32 0
  store %union.rec* %459, %union.rec** %464, align 8
  %465 = load %union.rec*, %union.rec** @zz_hold, align 8
  %466 = load %union.rec*, %union.rec** @zz_res, align 8
  %467 = bitcast %union.rec* %466 to %struct.word_type*
  %468 = getelementptr inbounds %struct.word_type, %struct.word_type* %467, i32 0, i32 0
  %469 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %468, i32 0, i64 1
  %470 = getelementptr inbounds %struct.LIST, %struct.LIST* %469, i32 0, i32 0
  %471 = load %union.rec*, %union.rec** %470, align 8
  %472 = bitcast %union.rec* %471 to %struct.word_type*
  %473 = getelementptr inbounds %struct.word_type, %struct.word_type* %472, i32 0, i32 0
  %474 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %473, i32 0, i64 1
  %475 = getelementptr inbounds %struct.LIST, %struct.LIST* %474, i32 0, i32 1
  store %union.rec* %465, %union.rec** %475, align 8
  %476 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %477 = load %union.rec*, %union.rec** @zz_res, align 8
  %478 = bitcast %union.rec* %477 to %struct.word_type*
  %479 = getelementptr inbounds %struct.word_type, %struct.word_type* %478, i32 0, i32 0
  %480 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %479, i32 0, i64 1
  %481 = getelementptr inbounds %struct.LIST, %struct.LIST* %480, i32 0, i32 0
  store %union.rec* %476, %union.rec** %481, align 8
  %482 = load %union.rec*, %union.rec** @zz_res, align 8
  %483 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %484 = bitcast %union.rec* %483 to %struct.word_type*
  %485 = getelementptr inbounds %struct.word_type, %struct.word_type* %484, i32 0, i32 0
  %486 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %485, i32 0, i64 1
  %487 = getelementptr inbounds %struct.LIST, %struct.LIST* %486, i32 0, i32 1
  store %union.rec* %482, %union.rec** %487, align 8
  br label %488

; <label>:488                                     ; preds = %447, %445
  %489 = phi %union.rec* [ %446, %445 ], [ %482, %447 ]
  br label %490

; <label>:490                                     ; preds = %488, %440
  %491 = phi %union.rec* [ %441, %440 ], [ %489, %488 ]
  %492 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %492
}

declare void @AdjustSize(%union.rec*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %union.rec* @InterposeWideOrHigh(%union.rec* %y, i32 %dim) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %res = alloca %union.rec*, align 8
  store %union.rec* %y, %union.rec** %1, align 8
  store i32 %dim, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 26, i32 27
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %6
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  store i32 %9, i32* @zz_size, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp uge i64 %10, 265
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %0
  %13 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %14 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %13)
  br label %40

; <label>:15                                      ; preds = %0
  %16 = load i32, i32* @zz_size, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %17
  %19 = load %union.rec*, %union.rec** %18, align 8
  %20 = icmp eq %union.rec* %19, null
  br i1 %20, label %21, label %25

; <label>:21                                      ; preds = %15
  %22 = load i32, i32* @zz_size, align 4
  %23 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %24 = call %union.rec* @GetMemory(i32 %22, %struct.FILE_POS* %23)
  store %union.rec* %24, %union.rec** @zz_hold, align 8
  br label %39

; <label>:25                                      ; preds = %15
  %26 = load i32, i32* @zz_size, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %27
  %29 = load %union.rec*, %union.rec** %28, align 8
  store %union.rec* %29, %union.rec** @zz_hold, align 8
  store %union.rec* %29, %union.rec** @zz_hold, align 8
  %30 = load %union.rec*, %union.rec** @zz_hold, align 8
  %31 = bitcast %union.rec* %30 to %struct.word_type*
  %32 = getelementptr inbounds %struct.word_type, %struct.word_type* %31, i32 0, i32 0
  %33 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %32, i32 0, i64 0
  %34 = getelementptr inbounds %struct.LIST, %struct.LIST* %33, i32 0, i32 0
  %35 = load %union.rec*, %union.rec** %34, align 8
  %36 = load i32, i32* @zz_size, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %37
  store %union.rec* %35, %union.rec** %38, align 8
  br label %39

; <label>:39                                      ; preds = %25, %21
  br label %40

; <label>:40                                      ; preds = %39, %12
  %41 = load i32, i32* %2, align 4
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 26, i32 27
  %44 = trunc i32 %43 to i8
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  %46 = bitcast %union.rec* %45 to %struct.word_type*
  %47 = getelementptr inbounds %struct.word_type, %struct.word_type* %46, i32 0, i32 1
  %48 = bitcast %union.FIRST_UNION* %47 to %struct.anon*
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %48, i32 0, i32 0
  store i8 %44, i8* %49, align 1
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %51 = load %union.rec*, %union.rec** @zz_hold, align 8
  %52 = bitcast %union.rec* %51 to %struct.word_type*
  %53 = getelementptr inbounds %struct.word_type, %struct.word_type* %52, i32 0, i32 0
  %54 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %53, i32 0, i64 1
  %55 = getelementptr inbounds %struct.LIST, %struct.LIST* %54, i32 0, i32 1
  store %union.rec* %50, %union.rec** %55, align 8
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  %57 = bitcast %union.rec* %56 to %struct.word_type*
  %58 = getelementptr inbounds %struct.word_type, %struct.word_type* %57, i32 0, i32 0
  %59 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %58, i32 0, i64 1
  %60 = getelementptr inbounds %struct.LIST, %struct.LIST* %59, i32 0, i32 0
  store %union.rec* %50, %union.rec** %60, align 8
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  %62 = bitcast %union.rec* %61 to %struct.word_type*
  %63 = getelementptr inbounds %struct.word_type, %struct.word_type* %62, i32 0, i32 0
  %64 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %63, i32 0, i64 0
  %65 = getelementptr inbounds %struct.LIST, %struct.LIST* %64, i32 0, i32 1
  store %union.rec* %50, %union.rec** %65, align 8
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %67 = bitcast %union.rec* %66 to %struct.word_type*
  %68 = getelementptr inbounds %struct.word_type, %struct.word_type* %67, i32 0, i32 0
  %69 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %68, i32 0, i64 0
  %70 = getelementptr inbounds %struct.LIST, %struct.LIST* %69, i32 0, i32 0
  store %union.rec* %50, %union.rec** %70, align 8
  store %union.rec* %50, %union.rec** %res, align 8
  %71 = load %union.rec*, %union.rec** %1, align 8
  %72 = bitcast %union.rec* %71 to %struct.word_type*
  %73 = getelementptr inbounds %struct.word_type, %struct.word_type* %72, i32 0, i32 1
  %74 = bitcast %union.FIRST_UNION* %73 to %struct.FILE_POS*
  %75 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %74, i32 0, i32 2
  %76 = load i16, i16* %75, align 2
  %77 = load %union.rec*, %union.rec** %res, align 8
  %78 = bitcast %union.rec* %77 to %struct.word_type*
  %79 = getelementptr inbounds %struct.word_type, %struct.word_type* %78, i32 0, i32 1
  %80 = bitcast %union.FIRST_UNION* %79 to %struct.FILE_POS*
  %81 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %80, i32 0, i32 2
  store i16 %76, i16* %81, align 2
  %82 = load %union.rec*, %union.rec** %1, align 8
  %83 = bitcast %union.rec* %82 to %struct.word_type*
  %84 = getelementptr inbounds %struct.word_type, %struct.word_type* %83, i32 0, i32 1
  %85 = bitcast %union.FIRST_UNION* %84 to %struct.FILE_POS*
  %86 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 1048575
  %89 = load %union.rec*, %union.rec** %res, align 8
  %90 = bitcast %union.rec* %89 to %struct.word_type*
  %91 = getelementptr inbounds %struct.word_type, %struct.word_type* %90, i32 0, i32 1
  %92 = bitcast %union.FIRST_UNION* %91 to %struct.FILE_POS*
  %93 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %88, 1048575
  %96 = and i32 %94, -1048576
  %97 = or i32 %96, %95
  store i32 %97, i32* %93, align 4
  %98 = load %union.rec*, %union.rec** %1, align 8
  %99 = bitcast %union.rec* %98 to %struct.word_type*
  %100 = getelementptr inbounds %struct.word_type, %struct.word_type* %99, i32 0, i32 1
  %101 = bitcast %union.FIRST_UNION* %100 to %struct.FILE_POS*
  %102 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = lshr i32 %103, 20
  %105 = load %union.rec*, %union.rec** %res, align 8
  %106 = bitcast %union.rec* %105 to %struct.word_type*
  %107 = getelementptr inbounds %struct.word_type, %struct.word_type* %106, i32 0, i32 1
  %108 = bitcast %union.FIRST_UNION* %107 to %struct.FILE_POS*
  %109 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %104, 4095
  %112 = shl i32 %111, 20
  %113 = and i32 %110, 1048575
  %114 = or i32 %113, %112
  store i32 %114, i32* %109, align 4
  %115 = load i32, i32* %2, align 4
  %116 = sext i32 %115 to i64
  %117 = load %union.rec*, %union.rec** %1, align 8
  %118 = bitcast %union.rec* %117 to %struct.word_type*
  %119 = getelementptr inbounds %struct.word_type, %struct.word_type* %118, i32 0, i32 3
  %120 = bitcast %union.THIRD_UNION* %119 to %struct.anon.6*
  %121 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %120, i32 0, i32 0
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %121, i32 0, i64 %116
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %2, align 4
  %125 = sext i32 %124 to i64
  %126 = load %union.rec*, %union.rec** %res, align 8
  %127 = bitcast %union.rec* %126 to %struct.word_type*
  %128 = getelementptr inbounds %struct.word_type, %struct.word_type* %127, i32 0, i32 3
  %129 = bitcast %union.THIRD_UNION* %128 to %struct.anon.6*
  %130 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %129, i32 0, i32 0
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %130, i32 0, i64 %125
  store i32 %123, i32* %131, align 4
  %132 = load i32, i32* %2, align 4
  %133 = sext i32 %132 to i64
  %134 = load %union.rec*, %union.rec** %1, align 8
  %135 = bitcast %union.rec* %134 to %struct.word_type*
  %136 = getelementptr inbounds %struct.word_type, %struct.word_type* %135, i32 0, i32 3
  %137 = bitcast %union.THIRD_UNION* %136 to %struct.anon.6*
  %138 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %137, i32 0, i32 1
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %138, i32 0, i64 %133
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %2, align 4
  %142 = sext i32 %141 to i64
  %143 = load %union.rec*, %union.rec** %res, align 8
  %144 = bitcast %union.rec* %143 to %struct.word_type*
  %145 = getelementptr inbounds %struct.word_type, %struct.word_type* %144, i32 0, i32 3
  %146 = bitcast %union.THIRD_UNION* %145 to %struct.anon.6*
  %147 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %146, i32 0, i32 1
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %147, i32 0, i64 %142
  store i32 %140, i32* %148, align 4
  %149 = load i32, i32* %2, align 4
  %150 = sub nsw i32 1, %149
  %151 = sext i32 %150 to i64
  %152 = load %union.rec*, %union.rec** %1, align 8
  %153 = bitcast %union.rec* %152 to %struct.word_type*
  %154 = getelementptr inbounds %struct.word_type, %struct.word_type* %153, i32 0, i32 3
  %155 = bitcast %union.THIRD_UNION* %154 to %struct.anon.6*
  %156 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %155, i32 0, i32 0
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %156, i32 0, i64 %151
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %2, align 4
  %160 = sub nsw i32 1, %159
  %161 = sext i32 %160 to i64
  %162 = load %union.rec*, %union.rec** %res, align 8
  %163 = bitcast %union.rec* %162 to %struct.word_type*
  %164 = getelementptr inbounds %struct.word_type, %struct.word_type* %163, i32 0, i32 3
  %165 = bitcast %union.THIRD_UNION* %164 to %struct.anon.6*
  %166 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %165, i32 0, i32 0
  %167 = getelementptr inbounds [2 x i32], [2 x i32]* %166, i32 0, i64 %161
  store i32 %158, i32* %167, align 4
  %168 = load i32, i32* %2, align 4
  %169 = sub nsw i32 1, %168
  %170 = sext i32 %169 to i64
  %171 = load %union.rec*, %union.rec** %1, align 8
  %172 = bitcast %union.rec* %171 to %struct.word_type*
  %173 = getelementptr inbounds %struct.word_type, %struct.word_type* %172, i32 0, i32 3
  %174 = bitcast %union.THIRD_UNION* %173 to %struct.anon.6*
  %175 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %174, i32 0, i32 1
  %176 = getelementptr inbounds [2 x i32], [2 x i32]* %175, i32 0, i64 %170
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %2, align 4
  %179 = sub nsw i32 1, %178
  %180 = sext i32 %179 to i64
  %181 = load %union.rec*, %union.rec** %res, align 8
  %182 = bitcast %union.rec* %181 to %struct.word_type*
  %183 = getelementptr inbounds %struct.word_type, %struct.word_type* %182, i32 0, i32 3
  %184 = bitcast %union.THIRD_UNION* %183 to %struct.anon.6*
  %185 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %184, i32 0, i32 1
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %185, i32 0, i64 %180
  store i32 %177, i32* %186, align 4
  %187 = load %union.rec*, %union.rec** %res, align 8
  %188 = bitcast %union.rec* %187 to %struct.closure_type*
  %189 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %188, i32 0, i32 4
  %190 = bitcast %union.FOURTH_UNION* %189 to %struct.CONSTRAINT*
  %191 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %190, i32 0, i32 0
  store i32 8388607, i32* %191, align 4
  %192 = load i32, i32* %2, align 4
  %193 = sext i32 %192 to i64
  %194 = load %union.rec*, %union.rec** %res, align 8
  %195 = bitcast %union.rec* %194 to %struct.word_type*
  %196 = getelementptr inbounds %struct.word_type, %struct.word_type* %195, i32 0, i32 3
  %197 = bitcast %union.THIRD_UNION* %196 to %struct.anon.6*
  %198 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %197, i32 0, i32 0
  %199 = getelementptr inbounds [2 x i32], [2 x i32]* %198, i32 0, i64 %193
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %2, align 4
  %202 = sext i32 %201 to i64
  %203 = load %union.rec*, %union.rec** %res, align 8
  %204 = bitcast %union.rec* %203 to %struct.word_type*
  %205 = getelementptr inbounds %struct.word_type, %struct.word_type* %204, i32 0, i32 3
  %206 = bitcast %union.THIRD_UNION* %205 to %struct.anon.6*
  %207 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %206, i32 0, i32 1
  %208 = getelementptr inbounds [2 x i32], [2 x i32]* %207, i32 0, i64 %202
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %200, %209
  %211 = load %union.rec*, %union.rec** %res, align 8
  %212 = bitcast %union.rec* %211 to %struct.closure_type*
  %213 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %212, i32 0, i32 4
  %214 = bitcast %union.FOURTH_UNION* %213 to %struct.CONSTRAINT*
  %215 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %214, i32 0, i32 1
  store i32 %210, i32* %215, align 4
  %216 = load %union.rec*, %union.rec** %res, align 8
  %217 = bitcast %union.rec* %216 to %struct.closure_type*
  %218 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %217, i32 0, i32 4
  %219 = bitcast %union.FOURTH_UNION* %218 to %struct.CONSTRAINT*
  %220 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %219, i32 0, i32 2
  store i32 8388607, i32* %220, align 4
  %221 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %221, %union.rec** @zz_hold, align 8
  %222 = load %union.rec*, %union.rec** @zz_hold, align 8
  %223 = bitcast %union.rec* %222 to %struct.word_type*
  %224 = getelementptr inbounds %struct.word_type, %struct.word_type* %223, i32 0, i32 0
  %225 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %224, i32 0, i64 1
  %226 = getelementptr inbounds %struct.LIST, %struct.LIST* %225, i32 0, i32 1
  %227 = load %union.rec*, %union.rec** %226, align 8
  %228 = load %union.rec*, %union.rec** @zz_hold, align 8
  %229 = icmp eq %union.rec* %227, %228
  br i1 %229, label %230, label %231

; <label>:230                                     ; preds = %40
  br label %272

; <label>:231                                     ; preds = %40
  %232 = load %union.rec*, %union.rec** @zz_hold, align 8
  %233 = bitcast %union.rec* %232 to %struct.word_type*
  %234 = getelementptr inbounds %struct.word_type, %struct.word_type* %233, i32 0, i32 0
  %235 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %234, i32 0, i64 1
  %236 = getelementptr inbounds %struct.LIST, %struct.LIST* %235, i32 0, i32 1
  %237 = load %union.rec*, %union.rec** %236, align 8
  store %union.rec* %237, %union.rec** @zz_res, align 8
  %238 = load %union.rec*, %union.rec** @zz_hold, align 8
  %239 = bitcast %union.rec* %238 to %struct.word_type*
  %240 = getelementptr inbounds %struct.word_type, %struct.word_type* %239, i32 0, i32 0
  %241 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %240, i32 0, i64 1
  %242 = getelementptr inbounds %struct.LIST, %struct.LIST* %241, i32 0, i32 0
  %243 = load %union.rec*, %union.rec** %242, align 8
  %244 = load %union.rec*, %union.rec** @zz_res, align 8
  %245 = bitcast %union.rec* %244 to %struct.word_type*
  %246 = getelementptr inbounds %struct.word_type, %struct.word_type* %245, i32 0, i32 0
  %247 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %246, i32 0, i64 1
  %248 = getelementptr inbounds %struct.LIST, %struct.LIST* %247, i32 0, i32 0
  store %union.rec* %243, %union.rec** %248, align 8
  %249 = load %union.rec*, %union.rec** @zz_res, align 8
  %250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %251 = bitcast %union.rec* %250 to %struct.word_type*
  %252 = getelementptr inbounds %struct.word_type, %struct.word_type* %251, i32 0, i32 0
  %253 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %252, i32 0, i64 1
  %254 = getelementptr inbounds %struct.LIST, %struct.LIST* %253, i32 0, i32 0
  %255 = load %union.rec*, %union.rec** %254, align 8
  %256 = bitcast %union.rec* %255 to %struct.word_type*
  %257 = getelementptr inbounds %struct.word_type, %struct.word_type* %256, i32 0, i32 0
  %258 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %257, i32 0, i64 1
  %259 = getelementptr inbounds %struct.LIST, %struct.LIST* %258, i32 0, i32 1
  store %union.rec* %249, %union.rec** %259, align 8
  %260 = load %union.rec*, %union.rec** @zz_hold, align 8
  %261 = load %union.rec*, %union.rec** @zz_hold, align 8
  %262 = bitcast %union.rec* %261 to %struct.word_type*
  %263 = getelementptr inbounds %struct.word_type, %struct.word_type* %262, i32 0, i32 0
  %264 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %263, i32 0, i64 1
  %265 = getelementptr inbounds %struct.LIST, %struct.LIST* %264, i32 0, i32 1
  store %union.rec* %260, %union.rec** %265, align 8
  %266 = load %union.rec*, %union.rec** @zz_hold, align 8
  %267 = bitcast %union.rec* %266 to %struct.word_type*
  %268 = getelementptr inbounds %struct.word_type, %struct.word_type* %267, i32 0, i32 0
  %269 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %268, i32 0, i64 1
  %270 = getelementptr inbounds %struct.LIST, %struct.LIST* %269, i32 0, i32 0
  store %union.rec* %260, %union.rec** %270, align 8
  %271 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %272

; <label>:272                                     ; preds = %231, %230
  %273 = phi %union.rec* [ null, %230 ], [ %271, %231 ]
  store %union.rec* %273, %union.rec** @xx_tmp, align 8
  %274 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %274, %union.rec** @zz_res, align 8
  %275 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %275, %union.rec** @zz_hold, align 8
  %276 = load %union.rec*, %union.rec** @zz_hold, align 8
  %277 = icmp eq %union.rec* %276, null
  br i1 %277, label %278, label %280

; <label>:278                                     ; preds = %272
  %279 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %328

; <label>:280                                     ; preds = %272
  %281 = load %union.rec*, %union.rec** @zz_res, align 8
  %282 = icmp eq %union.rec* %281, null
  br i1 %282, label %283, label %285

; <label>:283                                     ; preds = %280
  %284 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %326

; <label>:285                                     ; preds = %280
  %286 = load %union.rec*, %union.rec** @zz_hold, align 8
  %287 = bitcast %union.rec* %286 to %struct.word_type*
  %288 = getelementptr inbounds %struct.word_type, %struct.word_type* %287, i32 0, i32 0
  %289 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %288, i32 0, i64 1
  %290 = getelementptr inbounds %struct.LIST, %struct.LIST* %289, i32 0, i32 0
  %291 = load %union.rec*, %union.rec** %290, align 8
  store %union.rec* %291, %union.rec** @zz_tmp, align 8
  %292 = load %union.rec*, %union.rec** @zz_res, align 8
  %293 = bitcast %union.rec* %292 to %struct.word_type*
  %294 = getelementptr inbounds %struct.word_type, %struct.word_type* %293, i32 0, i32 0
  %295 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %294, i32 0, i64 1
  %296 = getelementptr inbounds %struct.LIST, %struct.LIST* %295, i32 0, i32 0
  %297 = load %union.rec*, %union.rec** %296, align 8
  %298 = load %union.rec*, %union.rec** @zz_hold, align 8
  %299 = bitcast %union.rec* %298 to %struct.word_type*
  %300 = getelementptr inbounds %struct.word_type, %struct.word_type* %299, i32 0, i32 0
  %301 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %300, i32 0, i64 1
  %302 = getelementptr inbounds %struct.LIST, %struct.LIST* %301, i32 0, i32 0
  store %union.rec* %297, %union.rec** %302, align 8
  %303 = load %union.rec*, %union.rec** @zz_hold, align 8
  %304 = load %union.rec*, %union.rec** @zz_res, align 8
  %305 = bitcast %union.rec* %304 to %struct.word_type*
  %306 = getelementptr inbounds %struct.word_type, %struct.word_type* %305, i32 0, i32 0
  %307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %306, i32 0, i64 1
  %308 = getelementptr inbounds %struct.LIST, %struct.LIST* %307, i32 0, i32 0
  %309 = load %union.rec*, %union.rec** %308, align 8
  %310 = bitcast %union.rec* %309 to %struct.word_type*
  %311 = getelementptr inbounds %struct.word_type, %struct.word_type* %310, i32 0, i32 0
  %312 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %311, i32 0, i64 1
  %313 = getelementptr inbounds %struct.LIST, %struct.LIST* %312, i32 0, i32 1
  store %union.rec* %303, %union.rec** %313, align 8
  %314 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %315 = load %union.rec*, %union.rec** @zz_res, align 8
  %316 = bitcast %union.rec* %315 to %struct.word_type*
  %317 = getelementptr inbounds %struct.word_type, %struct.word_type* %316, i32 0, i32 0
  %318 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %317, i32 0, i64 1
  %319 = getelementptr inbounds %struct.LIST, %struct.LIST* %318, i32 0, i32 0
  store %union.rec* %314, %union.rec** %319, align 8
  %320 = load %union.rec*, %union.rec** @zz_res, align 8
  %321 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %322 = bitcast %union.rec* %321 to %struct.word_type*
  %323 = getelementptr inbounds %struct.word_type, %struct.word_type* %322, i32 0, i32 0
  %324 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %323, i32 0, i64 1
  %325 = getelementptr inbounds %struct.LIST, %struct.LIST* %324, i32 0, i32 1
  store %union.rec* %320, %union.rec** %325, align 8
  br label %326

; <label>:326                                     ; preds = %285, %283
  %327 = phi %union.rec* [ %284, %283 ], [ %320, %285 ]
  br label %328

; <label>:328                                     ; preds = %326, %278
  %329 = phi %union.rec* [ %279, %278 ], [ %327, %326 ]
  %330 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %331 = zext i8 %330 to i32
  store i32 %331, i32* @zz_size, align 4
  %332 = sext i32 %331 to i64
  %333 = icmp uge i64 %332, 265
  br i1 %333, label %334, label %337

; <label>:334                                     ; preds = %328
  %335 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %336 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %335)
  br label %362

; <label>:337                                     ; preds = %328
  %338 = load i32, i32* @zz_size, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %339
  %341 = load %union.rec*, %union.rec** %340, align 8
  %342 = icmp eq %union.rec* %341, null
  br i1 %342, label %343, label %347

; <label>:343                                     ; preds = %337
  %344 = load i32, i32* @zz_size, align 4
  %345 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %346 = call %union.rec* @GetMemory(i32 %344, %struct.FILE_POS* %345)
  store %union.rec* %346, %union.rec** @zz_hold, align 8
  br label %361

; <label>:347                                     ; preds = %337
  %348 = load i32, i32* @zz_size, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %349
  %351 = load %union.rec*, %union.rec** %350, align 8
  store %union.rec* %351, %union.rec** @zz_hold, align 8
  store %union.rec* %351, %union.rec** @zz_hold, align 8
  %352 = load %union.rec*, %union.rec** @zz_hold, align 8
  %353 = bitcast %union.rec* %352 to %struct.word_type*
  %354 = getelementptr inbounds %struct.word_type, %struct.word_type* %353, i32 0, i32 0
  %355 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %354, i32 0, i64 0
  %356 = getelementptr inbounds %struct.LIST, %struct.LIST* %355, i32 0, i32 0
  %357 = load %union.rec*, %union.rec** %356, align 8
  %358 = load i32, i32* @zz_size, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %359
  store %union.rec* %357, %union.rec** %360, align 8
  br label %361

; <label>:361                                     ; preds = %347, %343
  br label %362

; <label>:362                                     ; preds = %361, %334
  %363 = load %union.rec*, %union.rec** @zz_hold, align 8
  %364 = bitcast %union.rec* %363 to %struct.word_type*
  %365 = getelementptr inbounds %struct.word_type, %struct.word_type* %364, i32 0, i32 1
  %366 = bitcast %union.FIRST_UNION* %365 to %struct.anon*
  %367 = getelementptr inbounds %struct.anon, %struct.anon* %366, i32 0, i32 0
  store i8 0, i8* %367, align 1
  %368 = load %union.rec*, %union.rec** @zz_hold, align 8
  %369 = load %union.rec*, %union.rec** @zz_hold, align 8
  %370 = bitcast %union.rec* %369 to %struct.word_type*
  %371 = getelementptr inbounds %struct.word_type, %struct.word_type* %370, i32 0, i32 0
  %372 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %371, i32 0, i64 1
  %373 = getelementptr inbounds %struct.LIST, %struct.LIST* %372, i32 0, i32 1
  store %union.rec* %368, %union.rec** %373, align 8
  %374 = load %union.rec*, %union.rec** @zz_hold, align 8
  %375 = bitcast %union.rec* %374 to %struct.word_type*
  %376 = getelementptr inbounds %struct.word_type, %struct.word_type* %375, i32 0, i32 0
  %377 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %376, i32 0, i64 1
  %378 = getelementptr inbounds %struct.LIST, %struct.LIST* %377, i32 0, i32 0
  store %union.rec* %368, %union.rec** %378, align 8
  %379 = load %union.rec*, %union.rec** @zz_hold, align 8
  %380 = bitcast %union.rec* %379 to %struct.word_type*
  %381 = getelementptr inbounds %struct.word_type, %struct.word_type* %380, i32 0, i32 0
  %382 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %381, i32 0, i64 0
  %383 = getelementptr inbounds %struct.LIST, %struct.LIST* %382, i32 0, i32 1
  store %union.rec* %368, %union.rec** %383, align 8
  %384 = load %union.rec*, %union.rec** @zz_hold, align 8
  %385 = bitcast %union.rec* %384 to %struct.word_type*
  %386 = getelementptr inbounds %struct.word_type, %struct.word_type* %385, i32 0, i32 0
  %387 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %386, i32 0, i64 0
  %388 = getelementptr inbounds %struct.LIST, %struct.LIST* %387, i32 0, i32 0
  store %union.rec* %368, %union.rec** %388, align 8
  store %union.rec* %368, %union.rec** @xx_link, align 8
  %389 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %389, %union.rec** @zz_res, align 8
  %390 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %390, %union.rec** @zz_hold, align 8
  %391 = load %union.rec*, %union.rec** @zz_hold, align 8
  %392 = icmp eq %union.rec* %391, null
  br i1 %392, label %393, label %395

; <label>:393                                     ; preds = %362
  %394 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %443

; <label>:395                                     ; preds = %362
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
  %404 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %403, i32 0, i64 0
  %405 = getelementptr inbounds %struct.LIST, %struct.LIST* %404, i32 0, i32 0
  %406 = load %union.rec*, %union.rec** %405, align 8
  store %union.rec* %406, %union.rec** @zz_tmp, align 8
  %407 = load %union.rec*, %union.rec** @zz_res, align 8
  %408 = bitcast %union.rec* %407 to %struct.word_type*
  %409 = getelementptr inbounds %struct.word_type, %struct.word_type* %408, i32 0, i32 0
  %410 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %409, i32 0, i64 0
  %411 = getelementptr inbounds %struct.LIST, %struct.LIST* %410, i32 0, i32 0
  %412 = load %union.rec*, %union.rec** %411, align 8
  %413 = load %union.rec*, %union.rec** @zz_hold, align 8
  %414 = bitcast %union.rec* %413 to %struct.word_type*
  %415 = getelementptr inbounds %struct.word_type, %struct.word_type* %414, i32 0, i32 0
  %416 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %415, i32 0, i64 0
  %417 = getelementptr inbounds %struct.LIST, %struct.LIST* %416, i32 0, i32 0
  store %union.rec* %412, %union.rec** %417, align 8
  %418 = load %union.rec*, %union.rec** @zz_hold, align 8
  %419 = load %union.rec*, %union.rec** @zz_res, align 8
  %420 = bitcast %union.rec* %419 to %struct.word_type*
  %421 = getelementptr inbounds %struct.word_type, %struct.word_type* %420, i32 0, i32 0
  %422 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %421, i32 0, i64 0
  %423 = getelementptr inbounds %struct.LIST, %struct.LIST* %422, i32 0, i32 0
  %424 = load %union.rec*, %union.rec** %423, align 8
  %425 = bitcast %union.rec* %424 to %struct.word_type*
  %426 = getelementptr inbounds %struct.word_type, %struct.word_type* %425, i32 0, i32 0
  %427 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %426, i32 0, i64 0
  %428 = getelementptr inbounds %struct.LIST, %struct.LIST* %427, i32 0, i32 1
  store %union.rec* %418, %union.rec** %428, align 8
  %429 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %430 = load %union.rec*, %union.rec** @zz_res, align 8
  %431 = bitcast %union.rec* %430 to %struct.word_type*
  %432 = getelementptr inbounds %struct.word_type, %struct.word_type* %431, i32 0, i32 0
  %433 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %432, i32 0, i64 0
  %434 = getelementptr inbounds %struct.LIST, %struct.LIST* %433, i32 0, i32 0
  store %union.rec* %429, %union.rec** %434, align 8
  %435 = load %union.rec*, %union.rec** @zz_res, align 8
  %436 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %437 = bitcast %union.rec* %436 to %struct.word_type*
  %438 = getelementptr inbounds %struct.word_type, %struct.word_type* %437, i32 0, i32 0
  %439 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %438, i32 0, i64 0
  %440 = getelementptr inbounds %struct.LIST, %struct.LIST* %439, i32 0, i32 1
  store %union.rec* %435, %union.rec** %440, align 8
  br label %441

; <label>:441                                     ; preds = %400, %398
  %442 = phi %union.rec* [ %399, %398 ], [ %435, %400 ]
  br label %443

; <label>:443                                     ; preds = %441, %393
  %444 = phi %union.rec* [ %394, %393 ], [ %442, %441 ]
  %445 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %445, %union.rec** @zz_res, align 8
  %446 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %446, %union.rec** @zz_hold, align 8
  %447 = load %union.rec*, %union.rec** @zz_hold, align 8
  %448 = icmp eq %union.rec* %447, null
  br i1 %448, label %449, label %451

; <label>:449                                     ; preds = %443
  %450 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %499

; <label>:451                                     ; preds = %443
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
  %501 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %501
}

declare i8* @Image(i32) #1

declare void @Interpose(%union.rec*, i32, %union.rec*, %union.rec*) #1

declare void @Promote(%union.rec*, %union.rec*, %union.rec*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
