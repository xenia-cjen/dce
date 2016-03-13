; ModuleID = 'z20.c'
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
%struct.anon.2 = type { i8, i8, i16 }
%struct.anon = type { i8, i8, i32 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.ext_gall_type = type { [2 x %struct.LIST], i8, i16, i32, i64, i64, %union.rec* }
%struct.anon.5 = type { i8, [3 x i8] }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"FlushGalley: type(hd) != HEAD!\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"FlushGalley: resume found no parent to hd!\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"FlushGalley/ATTACH_KILLED: inners!=nilobj!\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"FlushGalley/ATTACH_INPUT: inners!=nilobj!\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"FlushGalley/ATTACH_NOTARG: inners!=nilobj!\00", align 1
@ForceGalleySym = external global %union.rec*, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"FlushGalley: attach_status\00", align 1
@InputSym = external global %union.rec*, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"FlushGalley: dest_index\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"Flush: PRECEDES!\00", align 1
@xx_hold = external global %union.rec*, align 8
@.str.11 = private unnamed_addr constant [16 x i8] c"FlushG: UpDims!\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"FlushGalley: dest != VCAT or ACAT!\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"FlushGalley: prec_gap == nilobj && !is_indefinite(type(y))!\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"FlushGalley: succ_gap != nilobj!\00", align 1
@.str.15 = private unnamed_addr constant [58 x i8] c"FlushGalley: dest_side != FWD || !is_indefinite(type(y))!\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"component too wide for available space\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"FlushGalley:  tgp!\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"FlushGalley:\00", align 1
@PrintSym = external global %union.rec*, align 8
@.str.19 = private unnamed_addr constant [27 x i8] c"FlushGalley: reject print!\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"FlushGalley: header under SPLIT!\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"FlushGalley/REJECT: headers!\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"FlushGalley/REJECT: first_link!\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"FlushGalley/REJECT THR!\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"FlushGalley/REJECT: headers_count!\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"FlushGalley/REJECT: dest_index!\00", align 1
@AllowCrossDb = external global i32, align 4
@.str.26 = private unnamed_addr constant [26 x i8] c"error in database file %s\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"AttachG: db CLOSURE!\00", align 1
@OldCrossDb = external global %union.rec*, align 8
@.str.28 = private unnamed_addr constant [36 x i8] c"FlushGalley: cr is_word(type(tag))!\00", align 1

; Function Attrs: nounwind uwtable
define void @FlushGalley(%union.rec* %hd) #0 {
  %1 = alloca %union.rec*, align 8
  %dest = alloca %union.rec*, align 8
  %dest_index = alloca %union.rec*, align 8
  %inners = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %dim = alloca i32, align 4
  %dest_par_constr = alloca %struct.CONSTRAINT, align 4
  %dest_perp_constr = alloca %struct.CONSTRAINT, align 4
  %pb = alloca i32, align 4
  %pf = alloca i32, align 4
  %f = alloca i32, align 4
  %dest_encl = alloca %union.rec*, align 8
  %dest_side = alloca i32, align 4
  %need_adjust = alloca i32, align 4
  %dest_back = alloca i32, align 4
  %dest_fwd = alloca i32, align 4
  %frame_size = alloca i32, align 4
  %prec_gap = alloca %union.rec*, align 8
  %prec_def = alloca %union.rec*, align 8
  %succ_gap = alloca %union.rec*, align 8
  %succ_def = alloca %union.rec*, align 8
  %stop_link = alloca %union.rec*, align 8
  %stop_back = alloca i32, align 4
  %stop_fwd = alloca i32, align 4
  %stop_perp_back = alloca i32, align 4
  %stop_perp_fwd = alloca i32, align 4
  %prnt_flush = alloca i32, align 4
  %target_is_internal = alloca i32, align 4
  %headers_seen = alloca i32, align 4
  %zlink = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  %prnt = alloca %union.rec*, align 8
  %attach_status = alloca i32, align 4
  %remove_target = alloca i32, align 4
  %why = alloca %union.rec*, align 8
  %perp_back = alloca i32, align 4
  %perp_fwd = alloca i32, align 4
  %z1 = alloca %union.rec*, align 8
  %promotable = alloca i32, align 4
  %tgp = alloca %union.rec*, align 8
  %z2 = alloca %union.rec*, align 8
  %z3 = alloca %union.rec*, align 8
  %zlink4 = alloca %union.rec*, align 8
  %top_z = alloca %union.rec*, align 8
  %headers_count = alloca i32, align 4
  %eg = alloca %union.rec*, align 8
  %val = alloca %union.rec*, align 8
  %index2 = alloca %union.rec*, align 8
  %hd2 = alloca %union.rec*, align 8
  %tag = alloca %union.rec*, align 8
  %seq = alloca %union.rec*, align 8
  %newsym = alloca %union.rec*, align 8
  %found = alloca i32, align 4
  %gall = alloca i32, align 4
  %newtag = alloca [512 x i8], align 16
  %newseq = alloca [512 x i8], align 16
  %tmp5 = alloca %union.rec*, align 8
  %sym = alloca %union.rec*, align 8
  %cr = alloca %union.rec*, align 8
  %ins = alloca %union.rec*, align 8
  %tag6 = alloca %union.rec*, align 8
  %seq7 = alloca %union.rec*, align 8
  %eg8 = alloca %union.rec*, align 8
  %cnt = alloca %union.rec*, align 8
  %found9 = alloca i32, align 4
  %newseq10 = alloca [512 x i8], align 16
  %tfnum = alloca i16, align 2
  %tfpos = alloca i64, align 8
  %tcont = alloca i64, align 8
  %tlnum = alloca i32, align 4
  store %union.rec* %hd, %union.rec** %1, align 8
  store i32 0, i32* %prnt_flush, align 4
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = bitcast %union.rec* %2 to %struct.word_type*
  %4 = getelementptr inbounds %struct.word_type, %struct.word_type* %3, i32 0, i32 2
  %5 = bitcast %union.SECOND_UNION* %4 to %struct.anon.2*
  %6 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5, i32 0, i32 2
  %7 = load i16, i16* %6, align 2
  %8 = lshr i16 %7, 8
  %9 = and i16 %8, 1
  %10 = zext i16 %9 to i32
  store i32 %10, i32* %dim, align 4
  br label %11

; <label>:11                                      ; preds = %8758, %8265, %7851, %6808, %4225, %3003, %362, %134, %0
  %12 = load %union.rec*, %union.rec** %1, align 8
  %13 = bitcast %union.rec* %12 to %struct.word_type*
  %14 = getelementptr inbounds %struct.word_type, %struct.word_type* %13, i32 0, i32 1
  %15 = bitcast %union.FIRST_UNION* %14 to %struct.anon*
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 0
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 8
  br i1 %19, label %23, label %20

; <label>:20                                      ; preds = %11
  %21 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %22 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0))
  br label %23

; <label>:23                                      ; preds = %20, %11
  %24 = load %union.rec*, %union.rec** %1, align 8
  %25 = bitcast %union.rec* %24 to %struct.word_type*
  %26 = getelementptr inbounds %struct.word_type, %struct.word_type* %25, i32 0, i32 0
  %27 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %26, i32 0, i64 1
  %28 = getelementptr inbounds %struct.LIST, %struct.LIST* %27, i32 0, i32 1
  %29 = load %union.rec*, %union.rec** %28, align 8
  %30 = load %union.rec*, %union.rec** %1, align 8
  %31 = icmp ne %union.rec* %29, %30
  br i1 %31, label %35, label %32

; <label>:32                                      ; preds = %23
  %33 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %34 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0))
  br label %35

; <label>:35                                      ; preds = %32, %23
  %36 = load %union.rec*, %union.rec** %1, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 0
  %39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %38, i32 0, i64 1
  %40 = getelementptr inbounds %struct.LIST, %struct.LIST* %39, i32 0, i32 1
  %41 = load %union.rec*, %union.rec** %40, align 8
  %42 = bitcast %union.rec* %41 to %struct.word_type*
  %43 = getelementptr inbounds %struct.word_type, %struct.word_type* %42, i32 0, i32 0
  %44 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %43, i32 0, i64 0
  %45 = getelementptr inbounds %struct.LIST, %struct.LIST* %44, i32 0, i32 0
  %46 = load %union.rec*, %union.rec** %45, align 8
  store %union.rec* %46, %union.rec** %dest_index, align 8
  br label %47

; <label>:47                                      ; preds = %57, %35
  %48 = load %union.rec*, %union.rec** %dest_index, align 8
  %49 = bitcast %union.rec* %48 to %struct.word_type*
  %50 = getelementptr inbounds %struct.word_type, %struct.word_type* %49, i32 0, i32 1
  %51 = bitcast %union.FIRST_UNION* %50 to %struct.anon*
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 0
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

; <label>:56                                      ; preds = %47
  br label %57

; <label>:57                                      ; preds = %56
  %58 = load %union.rec*, %union.rec** %dest_index, align 8
  %59 = bitcast %union.rec* %58 to %struct.word_type*
  %60 = getelementptr inbounds %struct.word_type, %struct.word_type* %59, i32 0, i32 0
  %61 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %60, i32 0, i64 0
  %62 = getelementptr inbounds %struct.LIST, %struct.LIST* %61, i32 0, i32 0
  %63 = load %union.rec*, %union.rec** %62, align 8
  store %union.rec* %63, %union.rec** %dest_index, align 8
  br label %47

; <label>:64                                      ; preds = %47
  %65 = load %union.rec*, %union.rec** %dest_index, align 8
  %66 = bitcast %union.rec* %65 to %struct.word_type*
  %67 = getelementptr inbounds %struct.word_type, %struct.word_type* %66, i32 0, i32 1
  %68 = bitcast %union.FIRST_UNION* %67 to %struct.anon*
  %69 = getelementptr inbounds %struct.anon, %struct.anon* %68, i32 0, i32 0
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  switch i32 %71, label %381 [
    i32 119, label %72
    i32 120, label %73
    i32 122, label %367
  ]

; <label>:72                                      ; preds = %64
  br label %8771

; <label>:73                                      ; preds = %64
  %74 = load %union.rec*, %union.rec** %1, align 8
  %75 = call i32 @AttachGalley(%union.rec* %74, %union.rec** %inners, %union.rec** %y)
  store i32 %75, i32* %attach_status, align 4
  %76 = load %union.rec*, %union.rec** %1, align 8
  %77 = bitcast %union.rec* %76 to %struct.word_type*
  %78 = getelementptr inbounds %struct.word_type, %struct.word_type* %77, i32 0, i32 0
  %79 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %78, i32 0, i64 1
  %80 = getelementptr inbounds %struct.LIST, %struct.LIST* %79, i32 0, i32 1
  %81 = load %union.rec*, %union.rec** %80, align 8
  %82 = bitcast %union.rec* %81 to %struct.word_type*
  %83 = getelementptr inbounds %struct.word_type, %struct.word_type* %82, i32 0, i32 0
  %84 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %83, i32 0, i64 0
  %85 = getelementptr inbounds %struct.LIST, %struct.LIST* %84, i32 0, i32 0
  %86 = load %union.rec*, %union.rec** %85, align 8
  store %union.rec* %86, %union.rec** %dest_index, align 8
  br label %87

; <label>:87                                      ; preds = %97, %73
  %88 = load %union.rec*, %union.rec** %dest_index, align 8
  %89 = bitcast %union.rec* %88 to %struct.word_type*
  %90 = getelementptr inbounds %struct.word_type, %struct.word_type* %89, i32 0, i32 1
  %91 = bitcast %union.FIRST_UNION* %90 to %struct.anon*
  %92 = getelementptr inbounds %struct.anon, %struct.anon* %91, i32 0, i32 0
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %104

; <label>:96                                      ; preds = %87
  br label %97

; <label>:97                                      ; preds = %96
  %98 = load %union.rec*, %union.rec** %dest_index, align 8
  %99 = bitcast %union.rec* %98 to %struct.word_type*
  %100 = getelementptr inbounds %struct.word_type, %struct.word_type* %99, i32 0, i32 0
  %101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %100, i32 0, i64 0
  %102 = getelementptr inbounds %struct.LIST, %struct.LIST* %101, i32 0, i32 0
  %103 = load %union.rec*, %union.rec** %102, align 8
  store %union.rec* %103, %union.rec** %dest_index, align 8
  br label %87

; <label>:104                                     ; preds = %87
  %105 = load i32, i32* %attach_status, align 4
  switch i32 %105, label %363 [
    i32 0, label %106
    i32 1, label %113
    i32 2, label %122
    i32 3, label %131
    i32 4, label %137
    i32 5, label %260
  ]

; <label>:106                                     ; preds = %104
  %107 = load %union.rec*, %union.rec** %inners, align 8
  %108 = icmp eq %union.rec* %107, null
  br i1 %108, label %112, label %109

; <label>:109                                     ; preds = %106
  %110 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %111 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %110, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0))
  br label %112

; <label>:112                                     ; preds = %109, %106
  br label %8771

; <label>:113                                     ; preds = %104
  %114 = load i32, i32* %prnt_flush, align 4
  %115 = load %union.rec*, %union.rec** %dest_index, align 8
  call void @ParentFlush(i32 %114, %union.rec* %115, i32 0)
  %116 = load %union.rec*, %union.rec** %inners, align 8
  %117 = icmp eq %union.rec* %116, null
  br i1 %117, label %121, label %118

; <label>:118                                     ; preds = %113
  %119 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %120 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %119, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0))
  br label %121

; <label>:121                                     ; preds = %118, %113
  br label %8771

; <label>:122                                     ; preds = %104
  %123 = load i32, i32* %prnt_flush, align 4
  %124 = load %union.rec*, %union.rec** %dest_index, align 8
  call void @ParentFlush(i32 %123, %union.rec* %124, i32 0)
  %125 = load %union.rec*, %union.rec** %inners, align 8
  %126 = icmp eq %union.rec* %125, null
  br i1 %126, label %130, label %127

; <label>:127                                     ; preds = %122
  %128 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %129 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %128, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0))
  br label %130

; <label>:130                                     ; preds = %127, %122
  br label %8771

; <label>:131                                     ; preds = %104
  %132 = load %union.rec*, %union.rec** %inners, align 8
  %133 = icmp ne %union.rec* %132, null
  br i1 %133, label %134, label %136

; <label>:134                                     ; preds = %131
  %135 = load %union.rec*, %union.rec** %inners, align 8
  call void @FlushInners(%union.rec* %135, %union.rec* null)
  br label %11

; <label>:136                                     ; preds = %131
  store %union.rec* null, %union.rec** %stop_link, align 8
  br label %4240

; <label>:137                                     ; preds = %104
  %138 = load %union.rec*, %union.rec** %dest_index, align 8
  %139 = bitcast %union.rec* %138 to %struct.closure_type*
  %140 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %139, i32 0, i32 5
  %141 = load %union.rec*, %union.rec** %140, align 8
  %142 = bitcast %union.rec* %141 to %struct.closure_type*
  %143 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %142, i32 0, i32 5
  %144 = load %union.rec*, %union.rec** %143, align 8
  %145 = load %union.rec*, %union.rec** %1, align 8
  %146 = bitcast %union.rec* %145 to %struct.closure_type*
  %147 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %146, i32 0, i32 6
  %148 = bitcast %union.anon.12* %147 to %union.rec**
  %149 = load %union.rec*, %union.rec** %148, align 8
  %150 = icmp eq %union.rec* %144, %149
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %remove_target, align 4
  %152 = load %union.rec*, %union.rec** %1, align 8
  %153 = bitcast %union.rec* %152 to %struct.word_type*
  %154 = getelementptr inbounds %struct.word_type, %struct.word_type* %153, i32 0, i32 2
  %155 = bitcast %union.SECOND_UNION* %154 to %struct.anon.2*
  %156 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %155, i32 0, i32 2
  %157 = load i16, i16* %156, align 2
  %158 = lshr i16 %157, 12
  %159 = and i16 %158, 1
  %160 = zext i16 %159 to i32
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %232

; <label>:162                                     ; preds = %137
  %163 = load %union.rec*, %union.rec** %dest_index, align 8
  %164 = bitcast %union.rec* %163 to %struct.word_type*
  %165 = getelementptr inbounds %struct.word_type, %struct.word_type* %164, i32 0, i32 0
  %166 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %165, i32 0, i64 1
  %167 = getelementptr inbounds %struct.LIST, %struct.LIST* %166, i32 0, i32 1
  %168 = load %union.rec*, %union.rec** %167, align 8
  %169 = bitcast %union.rec* %168 to %struct.word_type*
  %170 = getelementptr inbounds %struct.word_type, %struct.word_type* %169, i32 0, i32 0
  %171 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %170, i32 0, i64 0
  %172 = getelementptr inbounds %struct.LIST, %struct.LIST* %171, i32 0, i32 0
  %173 = load %union.rec*, %union.rec** %172, align 8
  store %union.rec* %173, %union.rec** %prnt, align 8
  br label %174

; <label>:174                                     ; preds = %184, %162
  %175 = load %union.rec*, %union.rec** %prnt, align 8
  %176 = bitcast %union.rec* %175 to %struct.word_type*
  %177 = getelementptr inbounds %struct.word_type, %struct.word_type* %176, i32 0, i32 1
  %178 = bitcast %union.FIRST_UNION* %177 to %struct.anon*
  %179 = getelementptr inbounds %struct.anon, %struct.anon* %178, i32 0, i32 0
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %191

; <label>:183                                     ; preds = %174
  br label %184

; <label>:184                                     ; preds = %183
  %185 = load %union.rec*, %union.rec** %prnt, align 8
  %186 = bitcast %union.rec* %185 to %struct.word_type*
  %187 = getelementptr inbounds %struct.word_type, %struct.word_type* %186, i32 0, i32 0
  %188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %187, i32 0, i64 0
  %189 = getelementptr inbounds %struct.LIST, %struct.LIST* %188, i32 0, i32 0
  %190 = load %union.rec*, %union.rec** %189, align 8
  store %union.rec* %190, %union.rec** %prnt, align 8
  br label %174

; <label>:191                                     ; preds = %174
  %192 = load %union.rec*, %union.rec** %dest_index, align 8
  %193 = bitcast %union.rec* %192 to %struct.word_type*
  %194 = getelementptr inbounds %struct.word_type, %struct.word_type* %193, i32 0, i32 2
  %195 = bitcast %union.SECOND_UNION* %194 to %struct.anon.2*
  %196 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %195, i32 0, i32 2
  %197 = load i16, i16* %196, align 2
  %198 = and i16 %197, 1
  %199 = zext i16 %198 to i32
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %213, label %201

; <label>:201                                     ; preds = %191
  %202 = load i32, i32* %remove_target, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %213

; <label>:204                                     ; preds = %201
  %205 = load %union.rec*, %union.rec** %dest_index, align 8
  %206 = bitcast %union.rec* %205 to %struct.word_type*
  %207 = getelementptr inbounds %struct.word_type, %struct.word_type* %206, i32 0, i32 2
  %208 = bitcast %union.SECOND_UNION* %207 to %struct.anon.2*
  %209 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %208, i32 0, i32 2
  %210 = load i16, i16* %209, align 2
  %211 = and i16 %210, -2
  %212 = or i16 %211, 1
  store i16 %212, i16* %209, align 2
  store i32 1, i32* %prnt_flush, align 4
  br label %213

; <label>:213                                     ; preds = %204, %201, %191
  %214 = load %union.rec*, %union.rec** %prnt, align 8
  %215 = load %union.rec*, %union.rec** %dest_index, align 8
  %216 = bitcast %union.rec* %215 to %struct.word_type*
  %217 = getelementptr inbounds %struct.word_type, %struct.word_type* %216, i32 0, i32 0
  %218 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %217, i32 0, i64 1
  %219 = getelementptr inbounds %struct.LIST, %struct.LIST* %218, i32 0, i32 1
  %220 = load %union.rec*, %union.rec** %219, align 8
  %221 = load %union.rec*, %union.rec** %dest_index, align 8
  %222 = bitcast %union.rec* %221 to %struct.word_type*
  %223 = getelementptr inbounds %struct.word_type, %struct.word_type* %222, i32 0, i32 0
  %224 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %223, i32 0, i64 1
  %225 = getelementptr inbounds %struct.LIST, %struct.LIST* %224, i32 0, i32 1
  %226 = load %union.rec*, %union.rec** %225, align 8
  %227 = load %union.rec*, %union.rec** %1, align 8
  %228 = bitcast %union.rec* %227 to %struct.closure_type*
  %229 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %228, i32 0, i32 6
  %230 = bitcast %union.anon.12* %229 to %union.rec**
  %231 = load %union.rec*, %union.rec** %230, align 8
  call void @FreeGalley(%union.rec* %214, %union.rec* %220, %union.rec** %inners, %union.rec* %226, %union.rec* %231)
  br label %248

; <label>:232                                     ; preds = %137
  %233 = load %union.rec*, %union.rec** %dest_index, align 8
  %234 = bitcast %union.rec* %233 to %struct.word_type*
  %235 = getelementptr inbounds %struct.word_type, %struct.word_type* %234, i32 0, i32 2
  %236 = bitcast %union.SECOND_UNION* %235 to %struct.anon.2*
  %237 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %236, i32 0, i32 2
  %238 = load i16, i16* %237, align 2
  %239 = lshr i16 %238, 5
  %240 = and i16 %239, 1
  %241 = zext i16 %240 to i32
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

; <label>:243                                     ; preds = %232
  %244 = load i32, i32* %remove_target, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %247

; <label>:246                                     ; preds = %243
  store i32 1, i32* %prnt_flush, align 4
  br label %247

; <label>:247                                     ; preds = %246, %243, %232
  br label %248

; <label>:248                                     ; preds = %247, %213
  %249 = load %union.rec*, %union.rec** %1, align 8
  call void @DetachGalley(%union.rec* %249)
  %250 = load %union.rec*, %union.rec** %1, align 8
  call void @KillGalley(%union.rec* %250, i32 1)
  %251 = load %union.rec*, %union.rec** %inners, align 8
  %252 = icmp ne %union.rec* %251, null
  br i1 %252, label %253, label %255

; <label>:253                                     ; preds = %248
  %254 = load %union.rec*, %union.rec** %inners, align 8
  call void @FlushInners(%union.rec* %254, %union.rec* null)
  br label %259

; <label>:255                                     ; preds = %248
  %256 = load i32, i32* %prnt_flush, align 4
  %257 = load %union.rec*, %union.rec** %dest_index, align 8
  %258 = load i32, i32* %remove_target, align 4
  call void @ParentFlush(i32 %256, %union.rec* %257, i32 %258)
  br label %259

; <label>:259                                     ; preds = %255, %253
  br label %8771

; <label>:260                                     ; preds = %104
  %261 = load %union.rec*, %union.rec** %1, align 8
  %262 = bitcast %union.rec* %261 to %struct.word_type*
  %263 = getelementptr inbounds %struct.word_type, %struct.word_type* %262, i32 0, i32 2
  %264 = bitcast %union.SECOND_UNION* %263 to %struct.anon.2*
  %265 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %264, i32 0, i32 2
  %266 = load i16, i16* %265, align 2
  %267 = lshr i16 %266, 12
  %268 = and i16 %267, 1
  %269 = zext i16 %268 to i32
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %281, label %271

; <label>:271                                     ; preds = %260
  %272 = load %union.rec*, %union.rec** %dest_index, align 8
  %273 = bitcast %union.rec* %272 to %struct.closure_type*
  %274 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %273, i32 0, i32 5
  %275 = load %union.rec*, %union.rec** %274, align 8
  %276 = bitcast %union.rec* %275 to %struct.closure_type*
  %277 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %276, i32 0, i32 5
  %278 = load %union.rec*, %union.rec** %277, align 8
  %279 = load %union.rec*, %union.rec** @ForceGalleySym, align 8
  %280 = icmp eq %union.rec* %278, %279
  br i1 %280, label %281, label %340

; <label>:281                                     ; preds = %271, %260
  %282 = load %union.rec*, %union.rec** %dest_index, align 8
  %283 = bitcast %union.rec* %282 to %struct.word_type*
  %284 = getelementptr inbounds %struct.word_type, %struct.word_type* %283, i32 0, i32 0
  %285 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %284, i32 0, i64 1
  %286 = getelementptr inbounds %struct.LIST, %struct.LIST* %285, i32 0, i32 1
  %287 = load %union.rec*, %union.rec** %286, align 8
  %288 = bitcast %union.rec* %287 to %struct.word_type*
  %289 = getelementptr inbounds %struct.word_type, %struct.word_type* %288, i32 0, i32 0
  %290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %289, i32 0, i64 0
  %291 = getelementptr inbounds %struct.LIST, %struct.LIST* %290, i32 0, i32 0
  %292 = load %union.rec*, %union.rec** %291, align 8
  store %union.rec* %292, %union.rec** %prnt, align 8
  br label %293

; <label>:293                                     ; preds = %303, %281
  %294 = load %union.rec*, %union.rec** %prnt, align 8
  %295 = bitcast %union.rec* %294 to %struct.word_type*
  %296 = getelementptr inbounds %struct.word_type, %struct.word_type* %295, i32 0, i32 1
  %297 = bitcast %union.FIRST_UNION* %296 to %struct.anon*
  %298 = getelementptr inbounds %struct.anon, %struct.anon* %297, i32 0, i32 0
  %299 = load i8, i8* %298, align 1
  %300 = zext i8 %299 to i32
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %310

; <label>:302                                     ; preds = %293
  br label %303

; <label>:303                                     ; preds = %302
  %304 = load %union.rec*, %union.rec** %prnt, align 8
  %305 = bitcast %union.rec* %304 to %struct.word_type*
  %306 = getelementptr inbounds %struct.word_type, %struct.word_type* %305, i32 0, i32 0
  %307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %306, i32 0, i64 0
  %308 = getelementptr inbounds %struct.LIST, %struct.LIST* %307, i32 0, i32 0
  %309 = load %union.rec*, %union.rec** %308, align 8
  store %union.rec* %309, %union.rec** %prnt, align 8
  br label %293

; <label>:310                                     ; preds = %293
  %311 = load %union.rec*, %union.rec** %dest_index, align 8
  %312 = bitcast %union.rec* %311 to %struct.word_type*
  %313 = getelementptr inbounds %struct.word_type, %struct.word_type* %312, i32 0, i32 2
  %314 = bitcast %union.SECOND_UNION* %313 to %struct.anon.2*
  %315 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %314, i32 0, i32 2
  %316 = load i16, i16* %315, align 2
  %317 = and i16 %316, 1
  %318 = zext i16 %317 to i32
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %321, label %320

; <label>:320                                     ; preds = %310
  store i32 1, i32* %prnt_flush, align 4
  br label %321

; <label>:321                                     ; preds = %320, %310
  %322 = load %union.rec*, %union.rec** %prnt, align 8
  %323 = load %union.rec*, %union.rec** %dest_index, align 8
  %324 = bitcast %union.rec* %323 to %struct.word_type*
  %325 = getelementptr inbounds %struct.word_type, %struct.word_type* %324, i32 0, i32 0
  %326 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %325, i32 0, i64 1
  %327 = getelementptr inbounds %struct.LIST, %struct.LIST* %326, i32 0, i32 1
  %328 = load %union.rec*, %union.rec** %327, align 8
  %329 = load %union.rec*, %union.rec** %dest_index, align 8
  %330 = bitcast %union.rec* %329 to %struct.word_type*
  %331 = getelementptr inbounds %struct.word_type, %struct.word_type* %330, i32 0, i32 0
  %332 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %331, i32 0, i64 1
  %333 = getelementptr inbounds %struct.LIST, %struct.LIST* %332, i32 0, i32 1
  %334 = load %union.rec*, %union.rec** %333, align 8
  %335 = load %union.rec*, %union.rec** %1, align 8
  %336 = bitcast %union.rec* %335 to %struct.closure_type*
  %337 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %336, i32 0, i32 6
  %338 = bitcast %union.anon.12* %337 to %union.rec**
  %339 = load %union.rec*, %union.rec** %338, align 8
  call void @FreeGalley(%union.rec* %322, %union.rec* %328, %union.rec** %inners, %union.rec* %334, %union.rec* %339)
  br label %357

; <label>:340                                     ; preds = %271
  %341 = load i32, i32* %prnt_flush, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %354, label %343

; <label>:343                                     ; preds = %340
  %344 = load %union.rec*, %union.rec** %dest_index, align 8
  %345 = bitcast %union.rec* %344 to %struct.word_type*
  %346 = getelementptr inbounds %struct.word_type, %struct.word_type* %345, i32 0, i32 2
  %347 = bitcast %union.SECOND_UNION* %346 to %struct.anon.2*
  %348 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %347, i32 0, i32 2
  %349 = load i16, i16* %348, align 2
  %350 = lshr i16 %349, 5
  %351 = and i16 %350, 1
  %352 = zext i16 %351 to i32
  %353 = icmp ne i32 %352, 0
  br label %354

; <label>:354                                     ; preds = %343, %340
  %355 = phi i1 [ true, %340 ], [ %353, %343 ]
  %356 = zext i1 %355 to i32
  store i32 %356, i32* %prnt_flush, align 4
  br label %357

; <label>:357                                     ; preds = %354, %321
  %358 = load %union.rec*, %union.rec** %inners, align 8
  %359 = icmp ne %union.rec* %358, null
  br i1 %359, label %360, label %362

; <label>:360                                     ; preds = %357
  %361 = load %union.rec*, %union.rec** %inners, align 8
  call void @FlushInners(%union.rec* %361, %union.rec* null)
  br label %362

; <label>:362                                     ; preds = %360, %357
  br label %11

; <label>:363                                     ; preds = %104
  %364 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %365 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %364, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  br label %366

; <label>:366                                     ; preds = %363
  br label %392

; <label>:367                                     ; preds = %64
  %368 = load %union.rec*, %union.rec** %dest_index, align 8
  %369 = bitcast %union.rec* %368 to %struct.closure_type*
  %370 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %369, i32 0, i32 5
  %371 = load %union.rec*, %union.rec** %370, align 8
  %372 = bitcast %union.rec* %371 to %struct.closure_type*
  %373 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %372, i32 0, i32 5
  %374 = load %union.rec*, %union.rec** %373, align 8
  %375 = load %union.rec*, %union.rec** @InputSym, align 8
  %376 = icmp eq %union.rec* %374, %375
  br i1 %376, label %377, label %380

; <label>:377                                     ; preds = %367
  %378 = load i32, i32* %prnt_flush, align 4
  %379 = load %union.rec*, %union.rec** %dest_index, align 8
  call void @ParentFlush(i32 %378, %union.rec* %379, i32 0)
  br label %8771

; <label>:380                                     ; preds = %367
  br label %392

; <label>:381                                     ; preds = %64
  %382 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %383 = load %union.rec*, %union.rec** %dest_index, align 8
  %384 = bitcast %union.rec* %383 to %struct.word_type*
  %385 = getelementptr inbounds %struct.word_type, %struct.word_type* %384, i32 0, i32 1
  %386 = bitcast %union.FIRST_UNION* %385 to %struct.anon*
  %387 = getelementptr inbounds %struct.anon, %struct.anon* %386, i32 0, i32 0
  %388 = load i8, i8* %387, align 1
  %389 = zext i8 %388 to i32
  %390 = call i8* @Image(i32 %389)
  %391 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %382, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i8* %390)
  br label %392

; <label>:392                                     ; preds = %381, %380, %366
  %393 = load %union.rec*, %union.rec** %dest_index, align 8
  %394 = bitcast %union.rec* %393 to %struct.closure_type*
  %395 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %394, i32 0, i32 5
  %396 = load %union.rec*, %union.rec** %395, align 8
  store %union.rec* %396, %union.rec** %dest, align 8
  %397 = load %union.rec*, %union.rec** %dest, align 8
  %398 = bitcast %union.rec* %397 to %struct.word_type*
  %399 = getelementptr inbounds %struct.word_type, %struct.word_type* %398, i32 0, i32 2
  %400 = bitcast %union.SECOND_UNION* %399 to %struct.anon.1*
  %401 = bitcast %struct.anon.1* %400 to i32*
  %402 = load i32, i32* %401, align 4
  %403 = lshr i32 %402, 29
  %404 = and i32 %403, 3
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %415

; <label>:406                                     ; preds = %392
  %407 = load %union.rec*, %union.rec** %dest, align 8
  %408 = bitcast %union.rec* %407 to %struct.word_type*
  %409 = getelementptr inbounds %struct.word_type, %struct.word_type* %408, i32 0, i32 2
  %410 = bitcast %union.SECOND_UNION* %409 to %struct.anon.1*
  %411 = bitcast %struct.anon.1* %410 to i32*
  %412 = load i32, i32* %411, align 4
  %413 = and i32 %412, -1610612737
  %414 = or i32 %413, 536870912
  store i32 %414, i32* %411, align 4
  br label %415

; <label>:415                                     ; preds = %406, %392
  %416 = load i32, i32* %dim, align 4
  %417 = icmp eq i32 %416, 1
  br i1 %417, label %418, label %429

; <label>:418                                     ; preds = %415
  %419 = load %union.rec*, %union.rec** %dest, align 8
  %420 = bitcast %union.rec* %419 to %struct.word_type*
  %421 = getelementptr inbounds %struct.word_type, %struct.word_type* %420, i32 0, i32 2
  %422 = bitcast %union.SECOND_UNION* %421 to %struct.anon.2*
  %423 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %422, i32 0, i32 2
  %424 = load i16, i16* %423, align 2
  %425 = lshr i16 %424, 4
  %426 = and i16 %425, 1
  %427 = zext i16 %426 to i32
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %446

; <label>:429                                     ; preds = %418, %415
  %430 = load i32, i32* %dim, align 4
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %444

; <label>:432                                     ; preds = %429
  %433 = load %union.rec*, %union.rec** %dest, align 8
  %434 = bitcast %union.rec* %433 to %struct.word_type*
  %435 = getelementptr inbounds %struct.word_type, %struct.word_type* %434, i32 0, i32 2
  %436 = bitcast %union.SECOND_UNION* %435 to %struct.anon.2*
  %437 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %436, i32 0, i32 2
  %438 = load i16, i16* %437, align 2
  %439 = lshr i16 %438, 3
  %440 = and i16 %439, 1
  %441 = zext i16 %440 to i32
  %442 = icmp ne i32 %441, 0
  %443 = xor i1 %442, true
  br label %444

; <label>:444                                     ; preds = %432, %429
  %445 = phi i1 [ false, %429 ], [ %443, %432 ]
  br label %446

; <label>:446                                     ; preds = %444, %418
  %447 = phi i1 [ true, %418 ], [ %445, %444 ]
  %448 = zext i1 %447 to i32
  store i32 %448, i32* %target_is_internal, align 4
  store i32 0, i32* %headers_seen, align 4
  store %union.rec* null, %union.rec** %inners, align 8
  store %union.rec* null, %union.rec** %dest_encl, align 8
  store %union.rec* null, %union.rec** %stop_link, align 8
  store i32 0, i32* %need_adjust, align 4
  %449 = load %union.rec*, %union.rec** %1, align 8
  %450 = bitcast %union.rec* %449 to %struct.word_type*
  %451 = getelementptr inbounds %struct.word_type, %struct.word_type* %450, i32 0, i32 0
  %452 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %451, i32 0, i64 0
  %453 = getelementptr inbounds %struct.LIST, %struct.LIST* %452, i32 0, i32 1
  %454 = load %union.rec*, %union.rec** %453, align 8
  store %union.rec* %454, %union.rec** %link, align 8
  br label %455

; <label>:455                                     ; preds = %3020, %446
  %456 = load %union.rec*, %union.rec** %link, align 8
  %457 = load %union.rec*, %union.rec** %1, align 8
  %458 = icmp ne %union.rec* %456, %457
  br i1 %458, label %459, label %3027

; <label>:459                                     ; preds = %455
  %460 = load %union.rec*, %union.rec** %link, align 8
  %461 = bitcast %union.rec* %460 to %struct.word_type*
  %462 = getelementptr inbounds %struct.word_type, %struct.word_type* %461, i32 0, i32 0
  %463 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %462, i32 0, i64 1
  %464 = getelementptr inbounds %struct.LIST, %struct.LIST* %463, i32 0, i32 0
  %465 = load %union.rec*, %union.rec** %464, align 8
  store %union.rec* %465, %union.rec** %y, align 8
  br label %466

; <label>:466                                     ; preds = %476, %459
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
  %491 = icmp eq i32 %490, 9
  br i1 %491, label %492, label %534

; <label>:492                                     ; preds = %483
  %493 = load i32, i32* %dim, align 4
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %495, label %502

; <label>:495                                     ; preds = %492
  %496 = load %union.rec*, %union.rec** %y, align 8
  %497 = bitcast %union.rec* %496 to %struct.word_type*
  %498 = getelementptr inbounds %struct.word_type, %struct.word_type* %497, i32 0, i32 0
  %499 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %498, i32 0, i64 0
  %500 = getelementptr inbounds %struct.LIST, %struct.LIST* %499, i32 0, i32 1
  %501 = load %union.rec*, %union.rec** %500, align 8
  br label %509

; <label>:502                                     ; preds = %492
  %503 = load %union.rec*, %union.rec** %y, align 8
  %504 = bitcast %union.rec* %503 to %struct.word_type*
  %505 = getelementptr inbounds %struct.word_type, %struct.word_type* %504, i32 0, i32 0
  %506 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %505, i32 0, i64 0
  %507 = getelementptr inbounds %struct.LIST, %struct.LIST* %506, i32 0, i32 0
  %508 = load %union.rec*, %union.rec** %507, align 8
  br label %509

; <label>:509                                     ; preds = %502, %495
  %510 = phi %union.rec* [ %501, %495 ], [ %508, %502 ]
  %511 = bitcast %union.rec* %510 to %struct.word_type*
  %512 = getelementptr inbounds %struct.word_type, %struct.word_type* %511, i32 0, i32 0
  %513 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %512, i32 0, i64 1
  %514 = getelementptr inbounds %struct.LIST, %struct.LIST* %513, i32 0, i32 0
  %515 = load %union.rec*, %union.rec** %514, align 8
  store %union.rec* %515, %union.rec** %y, align 8
  br label %516

; <label>:516                                     ; preds = %526, %509
  %517 = load %union.rec*, %union.rec** %y, align 8
  %518 = bitcast %union.rec* %517 to %struct.word_type*
  %519 = getelementptr inbounds %struct.word_type, %struct.word_type* %518, i32 0, i32 1
  %520 = bitcast %union.FIRST_UNION* %519 to %struct.anon*
  %521 = getelementptr inbounds %struct.anon, %struct.anon* %520, i32 0, i32 0
  %522 = load i8, i8* %521, align 1
  %523 = zext i8 %522 to i32
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %533

; <label>:525                                     ; preds = %516
  br label %526

; <label>:526                                     ; preds = %525
  %527 = load %union.rec*, %union.rec** %y, align 8
  %528 = bitcast %union.rec* %527 to %struct.word_type*
  %529 = getelementptr inbounds %struct.word_type, %struct.word_type* %528, i32 0, i32 0
  %530 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %529, i32 0, i64 1
  %531 = getelementptr inbounds %struct.LIST, %struct.LIST* %530, i32 0, i32 0
  %532 = load %union.rec*, %union.rec** %531, align 8
  store %union.rec* %532, %union.rec** %y, align 8
  br label %516

; <label>:533                                     ; preds = %516
  br label %534

; <label>:534                                     ; preds = %533, %483
  %535 = load %union.rec*, %union.rec** %y, align 8
  %536 = bitcast %union.rec* %535 to %struct.word_type*
  %537 = getelementptr inbounds %struct.word_type, %struct.word_type* %536, i32 0, i32 1
  %538 = bitcast %union.FIRST_UNION* %537 to %struct.anon*
  %539 = getelementptr inbounds %struct.anon, %struct.anon* %538, i32 0, i32 0
  %540 = load i8, i8* %539, align 1
  %541 = zext i8 %540 to i32
  switch i32 %541, label %3008 [
    i32 1, label %542
    i32 136, label %606
    i32 137, label %606
    i32 138, label %606
    i32 133, label %606
    i32 129, label %606
    i32 130, label %606
    i32 132, label %606
    i32 134, label %606
    i32 127, label %606
    i32 128, label %606
    i32 131, label %606
    i32 135, label %606
    i32 124, label %625
    i32 120, label %625
    i32 122, label %860
    i32 121, label %860
    i32 125, label %861
    i32 20, label %1742
    i32 21, label %1742
    i32 22, label %1742
    i32 23, label %1742
    i32 5, label %1743
    i32 4, label %1743
    i32 11, label %1743
    i32 12, label %1743
    i32 24, label %1743
    i32 25, label %1743
    i32 26, label %1743
    i32 27, label %1743
    i32 28, label %1743
    i32 29, label %1743
    i32 30, label %1743
    i32 31, label %1743
    i32 32, label %1743
    i32 33, label %1743
    i32 36, label %1743
    i32 37, label %1743
    i32 38, label %1743
    i32 39, label %1743
    i32 40, label %1743
    i32 41, label %1743
    i32 44, label %1743
    i32 42, label %1743
    i32 43, label %1743
    i32 45, label %1743
    i32 46, label %1743
    i32 50, label %1743
    i32 51, label %1743
    i32 34, label %1743
    i32 35, label %1743
    i32 94, label %1743
    i32 95, label %1743
    i32 96, label %1743
    i32 97, label %1743
    i32 98, label %1743
    i32 99, label %1743
    i32 17, label %1743
    i32 18, label %1743
    i32 19, label %1743
    i32 15, label %1743
    i32 2, label %1743
    i32 6, label %1743
    i32 7, label %1743
  ]

; <label>:542                                     ; preds = %534
  %543 = load %union.rec*, %union.rec** %dest, align 8
  %544 = bitcast %union.rec* %543 to %struct.word_type*
  %545 = getelementptr inbounds %struct.word_type, %struct.word_type* %544, i32 0, i32 2
  %546 = bitcast %union.SECOND_UNION* %545 to %struct.anon.1*
  %547 = bitcast %struct.anon.1* %546 to i32*
  %548 = load i32, i32* %547, align 4
  %549 = lshr i32 %548, 29
  %550 = and i32 %549, 3
  %551 = load %union.rec*, %union.rec** %y, align 8
  %552 = bitcast %union.rec* %551 to %struct.word_type*
  %553 = getelementptr inbounds %struct.word_type, %struct.word_type* %552, i32 0, i32 2
  %554 = bitcast %union.SECOND_UNION* %553 to %struct.anon.1*
  %555 = bitcast %struct.anon.1* %554 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = and i32 %550, 3
  %558 = shl i32 %557, 29
  %559 = and i32 %556, -1610612737
  %560 = or i32 %559, %558
  store i32 %560, i32* %555, align 4
  %561 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %561, %union.rec** %prec_gap, align 8
  %562 = load i32, i32* %target_is_internal, align 4
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %564, label %584

; <label>:564                                     ; preds = %542
  %565 = load %union.rec*, %union.rec** %dest_encl, align 8
  %566 = icmp ne %union.rec* %565, null
  br i1 %566, label %567, label %583

; <label>:567                                     ; preds = %564
  %568 = load %union.rec*, %union.rec** %prec_gap, align 8
  %569 = bitcast %union.rec* %568 to %struct.gapobj_type*
  %570 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %569, i32 0, i32 3
  %571 = bitcast %struct.GAP* %570 to i16*
  %572 = load i16, i16* %571, align 4
  %573 = lshr i16 %572, 7
  %574 = and i16 %573, 1
  %575 = zext i16 %574 to i32
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %583, label %577

; <label>:577                                     ; preds = %567
  %578 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %578, %union.rec** %stop_link, align 8
  %579 = load i32, i32* %dest_back, align 4
  store i32 %579, i32* %stop_back, align 4
  %580 = load i32, i32* %dest_fwd, align 4
  store i32 %580, i32* %stop_fwd, align 4
  %581 = load i32, i32* %perp_back, align 4
  store i32 %581, i32* %stop_perp_back, align 4
  %582 = load i32, i32* %perp_fwd, align 4
  store i32 %582, i32* %stop_perp_fwd, align 4
  br label %583

; <label>:583                                     ; preds = %577, %567, %564
  br label %586

; <label>:584                                     ; preds = %542
  %585 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %585, %union.rec** %stop_link, align 8
  br label %586

; <label>:586                                     ; preds = %584, %583
  %587 = load %union.rec*, %union.rec** %y, align 8
  %588 = bitcast %union.rec* %587 to %struct.gapobj_type*
  %589 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %588, i32 0, i32 3
  %590 = bitcast %struct.GAP* %589 to i16*
  %591 = load i16, i16* %590, align 4
  %592 = lshr i16 %591, 9
  %593 = and i16 %592, 1
  %594 = zext i16 %593 to i32
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %605, label %596

; <label>:596                                     ; preds = %586
  %597 = load %union.rec*, %union.rec** %1, align 8
  %598 = bitcast %union.rec* %597 to %struct.word_type*
  %599 = getelementptr inbounds %struct.word_type, %struct.word_type* %598, i32 0, i32 2
  %600 = bitcast %union.SECOND_UNION* %599 to %struct.anon.2*
  %601 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %600, i32 0, i32 2
  %602 = load i16, i16* %601, align 2
  %603 = and i16 %602, -33
  %604 = or i16 %603, 32
  store i16 %604, i16* %601, align 2
  br label %605

; <label>:605                                     ; preds = %596, %586
  br label %3019

; <label>:606                                     ; preds = %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534
  %607 = load %union.rec*, %union.rec** %dest, align 8
  %608 = bitcast %union.rec* %607 to %struct.word_type*
  %609 = getelementptr inbounds %struct.word_type, %struct.word_type* %608, i32 0, i32 2
  %610 = bitcast %union.SECOND_UNION* %609 to %struct.anon.1*
  %611 = bitcast %struct.anon.1* %610 to i32*
  %612 = load i32, i32* %611, align 4
  %613 = lshr i32 %612, 29
  %614 = and i32 %613, 3
  %615 = load %union.rec*, %union.rec** %y, align 8
  %616 = bitcast %union.rec* %615 to %struct.word_type*
  %617 = getelementptr inbounds %struct.word_type, %struct.word_type* %616, i32 0, i32 2
  %618 = bitcast %union.SECOND_UNION* %617 to %struct.anon.1*
  %619 = bitcast %struct.anon.1* %618 to i32*
  %620 = load i32, i32* %619, align 4
  %621 = and i32 %614, 3
  %622 = shl i32 %621, 29
  %623 = and i32 %620, -1610612737
  %624 = or i32 %623, %622
  store i32 %624, i32* %619, align 4
  br label %3019

; <label>:625                                     ; preds = %534, %534
  %626 = load %union.rec*, %union.rec** %inners, align 8
  %627 = icmp eq %union.rec* %626, null
  br i1 %627, label %628, label %688

; <label>:628                                     ; preds = %625
  %629 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %630 = zext i8 %629 to i32
  store i32 %630, i32* @zz_size, align 4
  %631 = sext i32 %630 to i64
  %632 = icmp uge i64 %631, 265
  br i1 %632, label %633, label %636

; <label>:633                                     ; preds = %628
  %634 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %635 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %634)
  br label %661

; <label>:636                                     ; preds = %628
  %637 = load i32, i32* @zz_size, align 4
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %638
  %640 = load %union.rec*, %union.rec** %639, align 8
  %641 = icmp eq %union.rec* %640, null
  br i1 %641, label %642, label %646

; <label>:642                                     ; preds = %636
  %643 = load i32, i32* @zz_size, align 4
  %644 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %645 = call %union.rec* @GetMemory(i32 %643, %struct.FILE_POS* %644)
  store %union.rec* %645, %union.rec** @zz_hold, align 8
  br label %660

; <label>:646                                     ; preds = %636
  %647 = load i32, i32* @zz_size, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %648
  %650 = load %union.rec*, %union.rec** %649, align 8
  store %union.rec* %650, %union.rec** @zz_hold, align 8
  store %union.rec* %650, %union.rec** @zz_hold, align 8
  %651 = load %union.rec*, %union.rec** @zz_hold, align 8
  %652 = bitcast %union.rec* %651 to %struct.word_type*
  %653 = getelementptr inbounds %struct.word_type, %struct.word_type* %652, i32 0, i32 0
  %654 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %653, i32 0, i64 0
  %655 = getelementptr inbounds %struct.LIST, %struct.LIST* %654, i32 0, i32 0
  %656 = load %union.rec*, %union.rec** %655, align 8
  %657 = load i32, i32* @zz_size, align 4
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %658
  store %union.rec* %656, %union.rec** %659, align 8
  br label %660

; <label>:660                                     ; preds = %646, %642
  br label %661

; <label>:661                                     ; preds = %660, %633
  %662 = load %union.rec*, %union.rec** @zz_hold, align 8
  %663 = bitcast %union.rec* %662 to %struct.word_type*
  %664 = getelementptr inbounds %struct.word_type, %struct.word_type* %663, i32 0, i32 1
  %665 = bitcast %union.FIRST_UNION* %664 to %struct.anon*
  %666 = getelementptr inbounds %struct.anon, %struct.anon* %665, i32 0, i32 0
  store i8 17, i8* %666, align 1
  %667 = load %union.rec*, %union.rec** @zz_hold, align 8
  %668 = load %union.rec*, %union.rec** @zz_hold, align 8
  %669 = bitcast %union.rec* %668 to %struct.word_type*
  %670 = getelementptr inbounds %struct.word_type, %struct.word_type* %669, i32 0, i32 0
  %671 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %670, i32 0, i64 1
  %672 = getelementptr inbounds %struct.LIST, %struct.LIST* %671, i32 0, i32 1
  store %union.rec* %667, %union.rec** %672, align 8
  %673 = load %union.rec*, %union.rec** @zz_hold, align 8
  %674 = bitcast %union.rec* %673 to %struct.word_type*
  %675 = getelementptr inbounds %struct.word_type, %struct.word_type* %674, i32 0, i32 0
  %676 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %675, i32 0, i64 1
  %677 = getelementptr inbounds %struct.LIST, %struct.LIST* %676, i32 0, i32 0
  store %union.rec* %667, %union.rec** %677, align 8
  %678 = load %union.rec*, %union.rec** @zz_hold, align 8
  %679 = bitcast %union.rec* %678 to %struct.word_type*
  %680 = getelementptr inbounds %struct.word_type, %struct.word_type* %679, i32 0, i32 0
  %681 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %680, i32 0, i64 0
  %682 = getelementptr inbounds %struct.LIST, %struct.LIST* %681, i32 0, i32 1
  store %union.rec* %667, %union.rec** %682, align 8
  %683 = load %union.rec*, %union.rec** @zz_hold, align 8
  %684 = bitcast %union.rec* %683 to %struct.word_type*
  %685 = getelementptr inbounds %struct.word_type, %struct.word_type* %684, i32 0, i32 0
  %686 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %685, i32 0, i64 0
  %687 = getelementptr inbounds %struct.LIST, %struct.LIST* %686, i32 0, i32 0
  store %union.rec* %667, %union.rec** %687, align 8
  store %union.rec* %667, %union.rec** %inners, align 8
  br label %688

; <label>:688                                     ; preds = %661, %625
  %689 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %690 = zext i8 %689 to i32
  store i32 %690, i32* @zz_size, align 4
  %691 = sext i32 %690 to i64
  %692 = icmp uge i64 %691, 265
  br i1 %692, label %693, label %696

; <label>:693                                     ; preds = %688
  %694 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %695 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %694)
  br label %721

; <label>:696                                     ; preds = %688
  %697 = load i32, i32* @zz_size, align 4
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %698
  %700 = load %union.rec*, %union.rec** %699, align 8
  %701 = icmp eq %union.rec* %700, null
  br i1 %701, label %702, label %706

; <label>:702                                     ; preds = %696
  %703 = load i32, i32* @zz_size, align 4
  %704 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %705 = call %union.rec* @GetMemory(i32 %703, %struct.FILE_POS* %704)
  store %union.rec* %705, %union.rec** @zz_hold, align 8
  br label %720

; <label>:706                                     ; preds = %696
  %707 = load i32, i32* @zz_size, align 4
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %708
  %710 = load %union.rec*, %union.rec** %709, align 8
  store %union.rec* %710, %union.rec** @zz_hold, align 8
  store %union.rec* %710, %union.rec** @zz_hold, align 8
  %711 = load %union.rec*, %union.rec** @zz_hold, align 8
  %712 = bitcast %union.rec* %711 to %struct.word_type*
  %713 = getelementptr inbounds %struct.word_type, %struct.word_type* %712, i32 0, i32 0
  %714 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %713, i32 0, i64 0
  %715 = getelementptr inbounds %struct.LIST, %struct.LIST* %714, i32 0, i32 0
  %716 = load %union.rec*, %union.rec** %715, align 8
  %717 = load i32, i32* @zz_size, align 4
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %718
  store %union.rec* %716, %union.rec** %719, align 8
  br label %720

; <label>:720                                     ; preds = %706, %702
  br label %721

; <label>:721                                     ; preds = %720, %693
  %722 = load %union.rec*, %union.rec** @zz_hold, align 8
  %723 = bitcast %union.rec* %722 to %struct.word_type*
  %724 = getelementptr inbounds %struct.word_type, %struct.word_type* %723, i32 0, i32 1
  %725 = bitcast %union.FIRST_UNION* %724 to %struct.anon*
  %726 = getelementptr inbounds %struct.anon, %struct.anon* %725, i32 0, i32 0
  store i8 0, i8* %726, align 1
  %727 = load %union.rec*, %union.rec** @zz_hold, align 8
  %728 = load %union.rec*, %union.rec** @zz_hold, align 8
  %729 = bitcast %union.rec* %728 to %struct.word_type*
  %730 = getelementptr inbounds %struct.word_type, %struct.word_type* %729, i32 0, i32 0
  %731 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %730, i32 0, i64 1
  %732 = getelementptr inbounds %struct.LIST, %struct.LIST* %731, i32 0, i32 1
  store %union.rec* %727, %union.rec** %732, align 8
  %733 = load %union.rec*, %union.rec** @zz_hold, align 8
  %734 = bitcast %union.rec* %733 to %struct.word_type*
  %735 = getelementptr inbounds %struct.word_type, %struct.word_type* %734, i32 0, i32 0
  %736 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %735, i32 0, i64 1
  %737 = getelementptr inbounds %struct.LIST, %struct.LIST* %736, i32 0, i32 0
  store %union.rec* %727, %union.rec** %737, align 8
  %738 = load %union.rec*, %union.rec** @zz_hold, align 8
  %739 = bitcast %union.rec* %738 to %struct.word_type*
  %740 = getelementptr inbounds %struct.word_type, %struct.word_type* %739, i32 0, i32 0
  %741 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %740, i32 0, i64 0
  %742 = getelementptr inbounds %struct.LIST, %struct.LIST* %741, i32 0, i32 1
  store %union.rec* %727, %union.rec** %742, align 8
  %743 = load %union.rec*, %union.rec** @zz_hold, align 8
  %744 = bitcast %union.rec* %743 to %struct.word_type*
  %745 = getelementptr inbounds %struct.word_type, %struct.word_type* %744, i32 0, i32 0
  %746 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %745, i32 0, i64 0
  %747 = getelementptr inbounds %struct.LIST, %struct.LIST* %746, i32 0, i32 0
  store %union.rec* %727, %union.rec** %747, align 8
  store %union.rec* %727, %union.rec** @xx_link, align 8
  %748 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %748, %union.rec** @zz_res, align 8
  %749 = load %union.rec*, %union.rec** %inners, align 8
  store %union.rec* %749, %union.rec** @zz_hold, align 8
  %750 = load %union.rec*, %union.rec** @zz_hold, align 8
  %751 = icmp eq %union.rec* %750, null
  br i1 %751, label %752, label %754

; <label>:752                                     ; preds = %721
  %753 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %802

; <label>:754                                     ; preds = %721
  %755 = load %union.rec*, %union.rec** @zz_res, align 8
  %756 = icmp eq %union.rec* %755, null
  br i1 %756, label %757, label %759

; <label>:757                                     ; preds = %754
  %758 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %800

; <label>:759                                     ; preds = %754
  %760 = load %union.rec*, %union.rec** @zz_hold, align 8
  %761 = bitcast %union.rec* %760 to %struct.word_type*
  %762 = getelementptr inbounds %struct.word_type, %struct.word_type* %761, i32 0, i32 0
  %763 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %762, i32 0, i64 0
  %764 = getelementptr inbounds %struct.LIST, %struct.LIST* %763, i32 0, i32 0
  %765 = load %union.rec*, %union.rec** %764, align 8
  store %union.rec* %765, %union.rec** @zz_tmp, align 8
  %766 = load %union.rec*, %union.rec** @zz_res, align 8
  %767 = bitcast %union.rec* %766 to %struct.word_type*
  %768 = getelementptr inbounds %struct.word_type, %struct.word_type* %767, i32 0, i32 0
  %769 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %768, i32 0, i64 0
  %770 = getelementptr inbounds %struct.LIST, %struct.LIST* %769, i32 0, i32 0
  %771 = load %union.rec*, %union.rec** %770, align 8
  %772 = load %union.rec*, %union.rec** @zz_hold, align 8
  %773 = bitcast %union.rec* %772 to %struct.word_type*
  %774 = getelementptr inbounds %struct.word_type, %struct.word_type* %773, i32 0, i32 0
  %775 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %774, i32 0, i64 0
  %776 = getelementptr inbounds %struct.LIST, %struct.LIST* %775, i32 0, i32 0
  store %union.rec* %771, %union.rec** %776, align 8
  %777 = load %union.rec*, %union.rec** @zz_hold, align 8
  %778 = load %union.rec*, %union.rec** @zz_res, align 8
  %779 = bitcast %union.rec* %778 to %struct.word_type*
  %780 = getelementptr inbounds %struct.word_type, %struct.word_type* %779, i32 0, i32 0
  %781 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %780, i32 0, i64 0
  %782 = getelementptr inbounds %struct.LIST, %struct.LIST* %781, i32 0, i32 0
  %783 = load %union.rec*, %union.rec** %782, align 8
  %784 = bitcast %union.rec* %783 to %struct.word_type*
  %785 = getelementptr inbounds %struct.word_type, %struct.word_type* %784, i32 0, i32 0
  %786 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %785, i32 0, i64 0
  %787 = getelementptr inbounds %struct.LIST, %struct.LIST* %786, i32 0, i32 1
  store %union.rec* %777, %union.rec** %787, align 8
  %788 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %789 = load %union.rec*, %union.rec** @zz_res, align 8
  %790 = bitcast %union.rec* %789 to %struct.word_type*
  %791 = getelementptr inbounds %struct.word_type, %struct.word_type* %790, i32 0, i32 0
  %792 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %791, i32 0, i64 0
  %793 = getelementptr inbounds %struct.LIST, %struct.LIST* %792, i32 0, i32 0
  store %union.rec* %788, %union.rec** %793, align 8
  %794 = load %union.rec*, %union.rec** @zz_res, align 8
  %795 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %796 = bitcast %union.rec* %795 to %struct.word_type*
  %797 = getelementptr inbounds %struct.word_type, %struct.word_type* %796, i32 0, i32 0
  %798 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %797, i32 0, i64 0
  %799 = getelementptr inbounds %struct.LIST, %struct.LIST* %798, i32 0, i32 1
  store %union.rec* %794, %union.rec** %799, align 8
  br label %800

; <label>:800                                     ; preds = %759, %757
  %801 = phi %union.rec* [ %758, %757 ], [ %794, %759 ]
  br label %802

; <label>:802                                     ; preds = %800, %752
  %803 = phi %union.rec* [ %753, %752 ], [ %801, %800 ]
  %804 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %804, %union.rec** @zz_res, align 8
  %805 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %805, %union.rec** @zz_hold, align 8
  %806 = load %union.rec*, %union.rec** @zz_hold, align 8
  %807 = icmp eq %union.rec* %806, null
  br i1 %807, label %808, label %810

; <label>:808                                     ; preds = %802
  %809 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %858

; <label>:810                                     ; preds = %802
  %811 = load %union.rec*, %union.rec** @zz_res, align 8
  %812 = icmp eq %union.rec* %811, null
  br i1 %812, label %813, label %815

; <label>:813                                     ; preds = %810
  %814 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %856

; <label>:815                                     ; preds = %810
  %816 = load %union.rec*, %union.rec** @zz_hold, align 8
  %817 = bitcast %union.rec* %816 to %struct.word_type*
  %818 = getelementptr inbounds %struct.word_type, %struct.word_type* %817, i32 0, i32 0
  %819 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %818, i32 0, i64 1
  %820 = getelementptr inbounds %struct.LIST, %struct.LIST* %819, i32 0, i32 0
  %821 = load %union.rec*, %union.rec** %820, align 8
  store %union.rec* %821, %union.rec** @zz_tmp, align 8
  %822 = load %union.rec*, %union.rec** @zz_res, align 8
  %823 = bitcast %union.rec* %822 to %struct.word_type*
  %824 = getelementptr inbounds %struct.word_type, %struct.word_type* %823, i32 0, i32 0
  %825 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %824, i32 0, i64 1
  %826 = getelementptr inbounds %struct.LIST, %struct.LIST* %825, i32 0, i32 0
  %827 = load %union.rec*, %union.rec** %826, align 8
  %828 = load %union.rec*, %union.rec** @zz_hold, align 8
  %829 = bitcast %union.rec* %828 to %struct.word_type*
  %830 = getelementptr inbounds %struct.word_type, %struct.word_type* %829, i32 0, i32 0
  %831 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %830, i32 0, i64 1
  %832 = getelementptr inbounds %struct.LIST, %struct.LIST* %831, i32 0, i32 0
  store %union.rec* %827, %union.rec** %832, align 8
  %833 = load %union.rec*, %union.rec** @zz_hold, align 8
  %834 = load %union.rec*, %union.rec** @zz_res, align 8
  %835 = bitcast %union.rec* %834 to %struct.word_type*
  %836 = getelementptr inbounds %struct.word_type, %struct.word_type* %835, i32 0, i32 0
  %837 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %836, i32 0, i64 1
  %838 = getelementptr inbounds %struct.LIST, %struct.LIST* %837, i32 0, i32 0
  %839 = load %union.rec*, %union.rec** %838, align 8
  %840 = bitcast %union.rec* %839 to %struct.word_type*
  %841 = getelementptr inbounds %struct.word_type, %struct.word_type* %840, i32 0, i32 0
  %842 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %841, i32 0, i64 1
  %843 = getelementptr inbounds %struct.LIST, %struct.LIST* %842, i32 0, i32 1
  store %union.rec* %833, %union.rec** %843, align 8
  %844 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %845 = load %union.rec*, %union.rec** @zz_res, align 8
  %846 = bitcast %union.rec* %845 to %struct.word_type*
  %847 = getelementptr inbounds %struct.word_type, %struct.word_type* %846, i32 0, i32 0
  %848 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %847, i32 0, i64 1
  %849 = getelementptr inbounds %struct.LIST, %struct.LIST* %848, i32 0, i32 0
  store %union.rec* %844, %union.rec** %849, align 8
  %850 = load %union.rec*, %union.rec** @zz_res, align 8
  %851 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %852 = bitcast %union.rec* %851 to %struct.word_type*
  %853 = getelementptr inbounds %struct.word_type, %struct.word_type* %852, i32 0, i32 0
  %854 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %853, i32 0, i64 1
  %855 = getelementptr inbounds %struct.LIST, %struct.LIST* %854, i32 0, i32 1
  store %union.rec* %850, %union.rec** %855, align 8
  br label %856

; <label>:856                                     ; preds = %815, %813
  %857 = phi %union.rec* [ %814, %813 ], [ %850, %815 ]
  br label %858

; <label>:858                                     ; preds = %856, %808
  %859 = phi %union.rec* [ %809, %808 ], [ %857, %856 ]
  br label %3019

; <label>:860                                     ; preds = %534, %534
  br label %4240

; <label>:861                                     ; preds = %534
  %862 = load %union.rec*, %union.rec** %y, align 8
  %863 = bitcast %union.rec* %862 to %struct.word_type*
  %864 = getelementptr inbounds %struct.word_type, %struct.word_type* %863, i32 0, i32 0
  %865 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %864, i32 0, i64 0
  %866 = getelementptr inbounds %struct.LIST, %struct.LIST* %865, i32 0, i32 1
  %867 = load %union.rec*, %union.rec** %866, align 8
  %868 = bitcast %union.rec* %867 to %struct.word_type*
  %869 = getelementptr inbounds %struct.word_type, %struct.word_type* %868, i32 0, i32 0
  %870 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %869, i32 0, i64 1
  %871 = getelementptr inbounds %struct.LIST, %struct.LIST* %870, i32 0, i32 0
  %872 = load %union.rec*, %union.rec** %871, align 8
  store %union.rec* %872, %union.rec** %tmp, align 8
  br label %873

; <label>:873                                     ; preds = %883, %861
  %874 = load %union.rec*, %union.rec** %tmp, align 8
  %875 = bitcast %union.rec* %874 to %struct.word_type*
  %876 = getelementptr inbounds %struct.word_type, %struct.word_type* %875, i32 0, i32 1
  %877 = bitcast %union.FIRST_UNION* %876 to %struct.anon*
  %878 = getelementptr inbounds %struct.anon, %struct.anon* %877, i32 0, i32 0
  %879 = load i8, i8* %878, align 1
  %880 = zext i8 %879 to i32
  %881 = icmp eq i32 %880, 0
  br i1 %881, label %882, label %890

; <label>:882                                     ; preds = %873
  br label %883

; <label>:883                                     ; preds = %882
  %884 = load %union.rec*, %union.rec** %tmp, align 8
  %885 = bitcast %union.rec* %884 to %struct.word_type*
  %886 = getelementptr inbounds %struct.word_type, %struct.word_type* %885, i32 0, i32 0
  %887 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %886, i32 0, i64 1
  %888 = getelementptr inbounds %struct.LIST, %struct.LIST* %887, i32 0, i32 0
  %889 = load %union.rec*, %union.rec** %888, align 8
  store %union.rec* %889, %union.rec** %tmp, align 8
  br label %873

; <label>:890                                     ; preds = %873
  %891 = load %union.rec*, %union.rec** %tmp, align 8
  %892 = bitcast %union.rec* %891 to %struct.word_type*
  %893 = getelementptr inbounds %struct.word_type, %struct.word_type* %892, i32 0, i32 0
  %894 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %893, i32 0, i64 1
  %895 = getelementptr inbounds %struct.LIST, %struct.LIST* %894, i32 0, i32 1
  %896 = load %union.rec*, %union.rec** %895, align 8
  %897 = load %union.rec*, %union.rec** %tmp, align 8
  %898 = bitcast %union.rec* %897 to %struct.word_type*
  %899 = getelementptr inbounds %struct.word_type, %struct.word_type* %898, i32 0, i32 0
  %900 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %899, i32 0, i64 1
  %901 = getelementptr inbounds %struct.LIST, %struct.LIST* %900, i32 0, i32 0
  %902 = load %union.rec*, %union.rec** %901, align 8
  %903 = icmp eq %union.rec* %896, %902
  br i1 %903, label %904, label %1088

; <label>:904                                     ; preds = %890
  %905 = load %union.rec*, %union.rec** %link, align 8
  %906 = bitcast %union.rec* %905 to %struct.word_type*
  %907 = getelementptr inbounds %struct.word_type, %struct.word_type* %906, i32 0, i32 0
  %908 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %907, i32 0, i64 0
  %909 = getelementptr inbounds %struct.LIST, %struct.LIST* %908, i32 0, i32 0
  %910 = load %union.rec*, %union.rec** %909, align 8
  store %union.rec* %910, %union.rec** %link, align 8
  %911 = load %union.rec*, %union.rec** %link, align 8
  %912 = bitcast %union.rec* %911 to %struct.word_type*
  %913 = getelementptr inbounds %struct.word_type, %struct.word_type* %912, i32 0, i32 0
  %914 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %913, i32 0, i64 0
  %915 = getelementptr inbounds %struct.LIST, %struct.LIST* %914, i32 0, i32 1
  %916 = load %union.rec*, %union.rec** %915, align 8
  store %union.rec* %916, %union.rec** @xx_link, align 8
  %917 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %917, %union.rec** @zz_hold, align 8
  %918 = load %union.rec*, %union.rec** @zz_hold, align 8
  %919 = bitcast %union.rec* %918 to %struct.word_type*
  %920 = getelementptr inbounds %struct.word_type, %struct.word_type* %919, i32 0, i32 0
  %921 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %920, i32 0, i64 1
  %922 = getelementptr inbounds %struct.LIST, %struct.LIST* %921, i32 0, i32 1
  %923 = load %union.rec*, %union.rec** %922, align 8
  %924 = load %union.rec*, %union.rec** @zz_hold, align 8
  %925 = icmp eq %union.rec* %923, %924
  br i1 %925, label %926, label %927

; <label>:926                                     ; preds = %904
  br label %968

; <label>:927                                     ; preds = %904
  %928 = load %union.rec*, %union.rec** @zz_hold, align 8
  %929 = bitcast %union.rec* %928 to %struct.word_type*
  %930 = getelementptr inbounds %struct.word_type, %struct.word_type* %929, i32 0, i32 0
  %931 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %930, i32 0, i64 1
  %932 = getelementptr inbounds %struct.LIST, %struct.LIST* %931, i32 0, i32 1
  %933 = load %union.rec*, %union.rec** %932, align 8
  store %union.rec* %933, %union.rec** @zz_res, align 8
  %934 = load %union.rec*, %union.rec** @zz_hold, align 8
  %935 = bitcast %union.rec* %934 to %struct.word_type*
  %936 = getelementptr inbounds %struct.word_type, %struct.word_type* %935, i32 0, i32 0
  %937 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %936, i32 0, i64 1
  %938 = getelementptr inbounds %struct.LIST, %struct.LIST* %937, i32 0, i32 0
  %939 = load %union.rec*, %union.rec** %938, align 8
  %940 = load %union.rec*, %union.rec** @zz_res, align 8
  %941 = bitcast %union.rec* %940 to %struct.word_type*
  %942 = getelementptr inbounds %struct.word_type, %struct.word_type* %941, i32 0, i32 0
  %943 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %942, i32 0, i64 1
  %944 = getelementptr inbounds %struct.LIST, %struct.LIST* %943, i32 0, i32 0
  store %union.rec* %939, %union.rec** %944, align 8
  %945 = load %union.rec*, %union.rec** @zz_res, align 8
  %946 = load %union.rec*, %union.rec** @zz_hold, align 8
  %947 = bitcast %union.rec* %946 to %struct.word_type*
  %948 = getelementptr inbounds %struct.word_type, %struct.word_type* %947, i32 0, i32 0
  %949 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %948, i32 0, i64 1
  %950 = getelementptr inbounds %struct.LIST, %struct.LIST* %949, i32 0, i32 0
  %951 = load %union.rec*, %union.rec** %950, align 8
  %952 = bitcast %union.rec* %951 to %struct.word_type*
  %953 = getelementptr inbounds %struct.word_type, %struct.word_type* %952, i32 0, i32 0
  %954 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %953, i32 0, i64 1
  %955 = getelementptr inbounds %struct.LIST, %struct.LIST* %954, i32 0, i32 1
  store %union.rec* %945, %union.rec** %955, align 8
  %956 = load %union.rec*, %union.rec** @zz_hold, align 8
  %957 = load %union.rec*, %union.rec** @zz_hold, align 8
  %958 = bitcast %union.rec* %957 to %struct.word_type*
  %959 = getelementptr inbounds %struct.word_type, %struct.word_type* %958, i32 0, i32 0
  %960 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %959, i32 0, i64 1
  %961 = getelementptr inbounds %struct.LIST, %struct.LIST* %960, i32 0, i32 1
  store %union.rec* %956, %union.rec** %961, align 8
  %962 = load %union.rec*, %union.rec** @zz_hold, align 8
  %963 = bitcast %union.rec* %962 to %struct.word_type*
  %964 = getelementptr inbounds %struct.word_type, %struct.word_type* %963, i32 0, i32 0
  %965 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %964, i32 0, i64 1
  %966 = getelementptr inbounds %struct.LIST, %struct.LIST* %965, i32 0, i32 0
  store %union.rec* %956, %union.rec** %966, align 8
  %967 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %968

; <label>:968                                     ; preds = %927, %926
  %969 = phi %union.rec* [ null, %926 ], [ %967, %927 ]
  store %union.rec* %969, %union.rec** @xx_tmp, align 8
  %970 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %970, %union.rec** @zz_hold, align 8
  %971 = load %union.rec*, %union.rec** @zz_hold, align 8
  %972 = bitcast %union.rec* %971 to %struct.word_type*
  %973 = getelementptr inbounds %struct.word_type, %struct.word_type* %972, i32 0, i32 0
  %974 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %973, i32 0, i64 0
  %975 = getelementptr inbounds %struct.LIST, %struct.LIST* %974, i32 0, i32 1
  %976 = load %union.rec*, %union.rec** %975, align 8
  %977 = load %union.rec*, %union.rec** @zz_hold, align 8
  %978 = icmp eq %union.rec* %976, %977
  br i1 %978, label %979, label %980

; <label>:979                                     ; preds = %968
  br label %1021

; <label>:980                                     ; preds = %968
  %981 = load %union.rec*, %union.rec** @zz_hold, align 8
  %982 = bitcast %union.rec* %981 to %struct.word_type*
  %983 = getelementptr inbounds %struct.word_type, %struct.word_type* %982, i32 0, i32 0
  %984 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %983, i32 0, i64 0
  %985 = getelementptr inbounds %struct.LIST, %struct.LIST* %984, i32 0, i32 1
  %986 = load %union.rec*, %union.rec** %985, align 8
  store %union.rec* %986, %union.rec** @zz_res, align 8
  %987 = load %union.rec*, %union.rec** @zz_hold, align 8
  %988 = bitcast %union.rec* %987 to %struct.word_type*
  %989 = getelementptr inbounds %struct.word_type, %struct.word_type* %988, i32 0, i32 0
  %990 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %989, i32 0, i64 0
  %991 = getelementptr inbounds %struct.LIST, %struct.LIST* %990, i32 0, i32 0
  %992 = load %union.rec*, %union.rec** %991, align 8
  %993 = load %union.rec*, %union.rec** @zz_res, align 8
  %994 = bitcast %union.rec* %993 to %struct.word_type*
  %995 = getelementptr inbounds %struct.word_type, %struct.word_type* %994, i32 0, i32 0
  %996 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %995, i32 0, i64 0
  %997 = getelementptr inbounds %struct.LIST, %struct.LIST* %996, i32 0, i32 0
  store %union.rec* %992, %union.rec** %997, align 8
  %998 = load %union.rec*, %union.rec** @zz_res, align 8
  %999 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1000 = bitcast %union.rec* %999 to %struct.word_type*
  %1001 = getelementptr inbounds %struct.word_type, %struct.word_type* %1000, i32 0, i32 0
  %1002 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1001, i32 0, i64 0
  %1003 = getelementptr inbounds %struct.LIST, %struct.LIST* %1002, i32 0, i32 0
  %1004 = load %union.rec*, %union.rec** %1003, align 8
  %1005 = bitcast %union.rec* %1004 to %struct.word_type*
  %1006 = getelementptr inbounds %struct.word_type, %struct.word_type* %1005, i32 0, i32 0
  %1007 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1006, i32 0, i64 0
  %1008 = getelementptr inbounds %struct.LIST, %struct.LIST* %1007, i32 0, i32 1
  store %union.rec* %998, %union.rec** %1008, align 8
  %1009 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1010 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1011 = bitcast %union.rec* %1010 to %struct.word_type*
  %1012 = getelementptr inbounds %struct.word_type, %struct.word_type* %1011, i32 0, i32 0
  %1013 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1012, i32 0, i64 0
  %1014 = getelementptr inbounds %struct.LIST, %struct.LIST* %1013, i32 0, i32 1
  store %union.rec* %1009, %union.rec** %1014, align 8
  %1015 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1016 = bitcast %union.rec* %1015 to %struct.word_type*
  %1017 = getelementptr inbounds %struct.word_type, %struct.word_type* %1016, i32 0, i32 0
  %1018 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1017, i32 0, i64 0
  %1019 = getelementptr inbounds %struct.LIST, %struct.LIST* %1018, i32 0, i32 0
  store %union.rec* %1009, %union.rec** %1019, align 8
  %1020 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1021

; <label>:1021                                    ; preds = %980, %979
  %1022 = phi %union.rec* [ null, %979 ], [ %1020, %980 ]
  %1023 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1023, %union.rec** @zz_hold, align 8
  %1024 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1024, %union.rec** @zz_hold, align 8
  %1025 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1026 = bitcast %union.rec* %1025 to %struct.word_type*
  %1027 = getelementptr inbounds %struct.word_type, %struct.word_type* %1026, i32 0, i32 1
  %1028 = bitcast %union.FIRST_UNION* %1027 to %struct.anon*
  %1029 = getelementptr inbounds %struct.anon, %struct.anon* %1028, i32 0, i32 0
  %1030 = load i8, i8* %1029, align 1
  %1031 = zext i8 %1030 to i32
  %1032 = icmp eq i32 %1031, 11
  br i1 %1032, label %1042, label %1033

; <label>:1033                                    ; preds = %1021
  %1034 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1035 = bitcast %union.rec* %1034 to %struct.word_type*
  %1036 = getelementptr inbounds %struct.word_type, %struct.word_type* %1035, i32 0, i32 1
  %1037 = bitcast %union.FIRST_UNION* %1036 to %struct.anon*
  %1038 = getelementptr inbounds %struct.anon, %struct.anon* %1037, i32 0, i32 0
  %1039 = load i8, i8* %1038, align 1
  %1040 = zext i8 %1039 to i32
  %1041 = icmp eq i32 %1040, 12
  br i1 %1041, label %1042, label %1050

; <label>:1042                                    ; preds = %1033, %1021
  %1043 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1044 = bitcast %union.rec* %1043 to %struct.word_type*
  %1045 = getelementptr inbounds %struct.word_type, %struct.word_type* %1044, i32 0, i32 1
  %1046 = bitcast %union.FIRST_UNION* %1045 to %struct.anon*
  %1047 = getelementptr inbounds %struct.anon, %struct.anon* %1046, i32 0, i32 1
  %1048 = load i8, i8* %1047, align 1
  %1049 = zext i8 %1048 to i32
  br label %1061

; <label>:1050                                    ; preds = %1033
  %1051 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1052 = bitcast %union.rec* %1051 to %struct.word_type*
  %1053 = getelementptr inbounds %struct.word_type, %struct.word_type* %1052, i32 0, i32 1
  %1054 = bitcast %union.FIRST_UNION* %1053 to %struct.anon*
  %1055 = getelementptr inbounds %struct.anon, %struct.anon* %1054, i32 0, i32 0
  %1056 = load i8, i8* %1055, align 1
  %1057 = zext i8 %1056 to i64
  %1058 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1057
  %1059 = load i8, i8* %1058, align 1
  %1060 = zext i8 %1059 to i32
  br label %1061

; <label>:1061                                    ; preds = %1050, %1042
  %1062 = phi i32 [ %1049, %1042 ], [ %1060, %1050 ]
  store i32 %1062, i32* @zz_size, align 4
  %1063 = load i32, i32* @zz_size, align 4
  %1064 = sext i32 %1063 to i64
  %1065 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1064
  %1066 = load %union.rec*, %union.rec** %1065, align 8
  %1067 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1068 = bitcast %union.rec* %1067 to %struct.word_type*
  %1069 = getelementptr inbounds %struct.word_type, %struct.word_type* %1068, i32 0, i32 0
  %1070 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1069, i32 0, i64 0
  %1071 = getelementptr inbounds %struct.LIST, %struct.LIST* %1070, i32 0, i32 0
  store %union.rec* %1066, %union.rec** %1071, align 8
  %1072 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1073 = load i32, i32* @zz_size, align 4
  %1074 = sext i32 %1073 to i64
  %1075 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1074
  store %union.rec* %1072, %union.rec** %1075, align 8
  %1076 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %1077 = bitcast %union.rec* %1076 to %struct.word_type*
  %1078 = getelementptr inbounds %struct.word_type, %struct.word_type* %1077, i32 0, i32 0
  %1079 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1078, i32 0, i64 1
  %1080 = getelementptr inbounds %struct.LIST, %struct.LIST* %1079, i32 0, i32 1
  %1081 = load %union.rec*, %union.rec** %1080, align 8
  %1082 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %1083 = icmp eq %union.rec* %1081, %1082
  br i1 %1083, label %1084, label %1087

; <label>:1084                                    ; preds = %1061
  %1085 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %1086 = call i32 @DisposeObject(%union.rec* %1085)
  br label %1087

; <label>:1087                                    ; preds = %1084, %1061
  br label %3019

; <label>:1088                                    ; preds = %890
  %1089 = load %union.rec*, %union.rec** %tmp, align 8
  %1090 = bitcast %union.rec* %1089 to %struct.word_type*
  %1091 = getelementptr inbounds %struct.word_type, %struct.word_type* %1090, i32 0, i32 0
  %1092 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1091, i32 0, i64 1
  %1093 = getelementptr inbounds %struct.LIST, %struct.LIST* %1092, i32 0, i32 1
  %1094 = load %union.rec*, %union.rec** %1093, align 8
  %1095 = bitcast %union.rec* %1094 to %struct.word_type*
  %1096 = getelementptr inbounds %struct.word_type, %struct.word_type* %1095, i32 0, i32 0
  %1097 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1096, i32 0, i64 0
  %1098 = getelementptr inbounds %struct.LIST, %struct.LIST* %1097, i32 0, i32 0
  %1099 = load %union.rec*, %union.rec** %1098, align 8
  store %union.rec* %1099, %union.rec** %tmp, align 8
  br label %1100

; <label>:1100                                    ; preds = %1110, %1088
  %1101 = load %union.rec*, %union.rec** %tmp, align 8
  %1102 = bitcast %union.rec* %1101 to %struct.word_type*
  %1103 = getelementptr inbounds %struct.word_type, %struct.word_type* %1102, i32 0, i32 1
  %1104 = bitcast %union.FIRST_UNION* %1103 to %struct.anon*
  %1105 = getelementptr inbounds %struct.anon, %struct.anon* %1104, i32 0, i32 0
  %1106 = load i8, i8* %1105, align 1
  %1107 = zext i8 %1106 to i32
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1109, label %1117

; <label>:1109                                    ; preds = %1100
  br label %1110

; <label>:1110                                    ; preds = %1109
  %1111 = load %union.rec*, %union.rec** %tmp, align 8
  %1112 = bitcast %union.rec* %1111 to %struct.word_type*
  %1113 = getelementptr inbounds %struct.word_type, %struct.word_type* %1112, i32 0, i32 0
  %1114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1113, i32 0, i64 0
  %1115 = getelementptr inbounds %struct.LIST, %struct.LIST* %1114, i32 0, i32 0
  %1116 = load %union.rec*, %union.rec** %1115, align 8
  store %union.rec* %1116, %union.rec** %tmp, align 8
  br label %1100

; <label>:1117                                    ; preds = %1100
  %1118 = load %union.rec*, %union.rec** %tmp, align 8
  %1119 = bitcast %union.rec* %1118 to %struct.word_type*
  %1120 = getelementptr inbounds %struct.word_type, %struct.word_type* %1119, i32 0, i32 1
  %1121 = bitcast %union.FIRST_UNION* %1120 to %struct.anon*
  %1122 = getelementptr inbounds %struct.anon, %struct.anon* %1121, i32 0, i32 0
  %1123 = load i8, i8* %1122, align 1
  %1124 = zext i8 %1123 to i32
  %1125 = icmp eq i32 %1124, 124
  br i1 %1125, label %1129, label %1126

; <label>:1126                                    ; preds = %1117
  %1127 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1128 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1127, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0))
  br label %1129

; <label>:1129                                    ; preds = %1126, %1117
  %1130 = load %union.rec*, %union.rec** %tmp, align 8
  %1131 = load %union.rec*, %union.rec** %dest_index, align 8
  %1132 = call i32 @CheckComponentOrder(%union.rec* %1130, %union.rec* %1131)
  switch i32 %1132, label %1741 [
    i32 157, label %1133
    i32 154, label %1723
    i32 156, label %1724
    i32 155, label %1725
  ]

; <label>:1133                                    ; preds = %1129
  %1134 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %1134, %union.rec** @xx_hold, align 8
  br label %1135

; <label>:1135                                    ; preds = %1295, %1133
  %1136 = load %union.rec*, %union.rec** @xx_hold, align 8
  %1137 = bitcast %union.rec* %1136 to %struct.word_type*
  %1138 = getelementptr inbounds %struct.word_type, %struct.word_type* %1137, i32 0, i32 0
  %1139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1138, i32 0, i64 1
  %1140 = getelementptr inbounds %struct.LIST, %struct.LIST* %1139, i32 0, i32 1
  %1141 = load %union.rec*, %union.rec** %1140, align 8
  %1142 = load %union.rec*, %union.rec** @xx_hold, align 8
  %1143 = icmp ne %union.rec* %1141, %1142
  br i1 %1143, label %1144, label %1310

; <label>:1144                                    ; preds = %1135
  %1145 = load %union.rec*, %union.rec** @xx_hold, align 8
  %1146 = bitcast %union.rec* %1145 to %struct.word_type*
  %1147 = getelementptr inbounds %struct.word_type, %struct.word_type* %1146, i32 0, i32 0
  %1148 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1147, i32 0, i64 1
  %1149 = getelementptr inbounds %struct.LIST, %struct.LIST* %1148, i32 0, i32 1
  %1150 = load %union.rec*, %union.rec** %1149, align 8
  store %union.rec* %1150, %union.rec** @xx_link, align 8
  %1151 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1151, %union.rec** @zz_hold, align 8
  %1152 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1153 = bitcast %union.rec* %1152 to %struct.word_type*
  %1154 = getelementptr inbounds %struct.word_type, %struct.word_type* %1153, i32 0, i32 0
  %1155 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1154, i32 0, i64 1
  %1156 = getelementptr inbounds %struct.LIST, %struct.LIST* %1155, i32 0, i32 1
  %1157 = load %union.rec*, %union.rec** %1156, align 8
  %1158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1159 = icmp eq %union.rec* %1157, %1158
  br i1 %1159, label %1160, label %1161

; <label>:1160                                    ; preds = %1144
  br label %1202

; <label>:1161                                    ; preds = %1144
  %1162 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1163 = bitcast %union.rec* %1162 to %struct.word_type*
  %1164 = getelementptr inbounds %struct.word_type, %struct.word_type* %1163, i32 0, i32 0
  %1165 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1164, i32 0, i64 1
  %1166 = getelementptr inbounds %struct.LIST, %struct.LIST* %1165, i32 0, i32 1
  %1167 = load %union.rec*, %union.rec** %1166, align 8
  store %union.rec* %1167, %union.rec** @zz_res, align 8
  %1168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1169 = bitcast %union.rec* %1168 to %struct.word_type*
  %1170 = getelementptr inbounds %struct.word_type, %struct.word_type* %1169, i32 0, i32 0
  %1171 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1170, i32 0, i64 1
  %1172 = getelementptr inbounds %struct.LIST, %struct.LIST* %1171, i32 0, i32 0
  %1173 = load %union.rec*, %union.rec** %1172, align 8
  %1174 = load %union.rec*, %union.rec** @zz_res, align 8
  %1175 = bitcast %union.rec* %1174 to %struct.word_type*
  %1176 = getelementptr inbounds %struct.word_type, %struct.word_type* %1175, i32 0, i32 0
  %1177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1176, i32 0, i64 1
  %1178 = getelementptr inbounds %struct.LIST, %struct.LIST* %1177, i32 0, i32 0
  store %union.rec* %1173, %union.rec** %1178, align 8
  %1179 = load %union.rec*, %union.rec** @zz_res, align 8
  %1180 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1181 = bitcast %union.rec* %1180 to %struct.word_type*
  %1182 = getelementptr inbounds %struct.word_type, %struct.word_type* %1181, i32 0, i32 0
  %1183 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1182, i32 0, i64 1
  %1184 = getelementptr inbounds %struct.LIST, %struct.LIST* %1183, i32 0, i32 0
  %1185 = load %union.rec*, %union.rec** %1184, align 8
  %1186 = bitcast %union.rec* %1185 to %struct.word_type*
  %1187 = getelementptr inbounds %struct.word_type, %struct.word_type* %1186, i32 0, i32 0
  %1188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1187, i32 0, i64 1
  %1189 = getelementptr inbounds %struct.LIST, %struct.LIST* %1188, i32 0, i32 1
  store %union.rec* %1179, %union.rec** %1189, align 8
  %1190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1192 = bitcast %union.rec* %1191 to %struct.word_type*
  %1193 = getelementptr inbounds %struct.word_type, %struct.word_type* %1192, i32 0, i32 0
  %1194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1193, i32 0, i64 1
  %1195 = getelementptr inbounds %struct.LIST, %struct.LIST* %1194, i32 0, i32 1
  store %union.rec* %1190, %union.rec** %1195, align 8
  %1196 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1197 = bitcast %union.rec* %1196 to %struct.word_type*
  %1198 = getelementptr inbounds %struct.word_type, %struct.word_type* %1197, i32 0, i32 0
  %1199 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1198, i32 0, i64 1
  %1200 = getelementptr inbounds %struct.LIST, %struct.LIST* %1199, i32 0, i32 0
  store %union.rec* %1190, %union.rec** %1200, align 8
  %1201 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1202

; <label>:1202                                    ; preds = %1161, %1160
  %1203 = phi %union.rec* [ null, %1160 ], [ %1201, %1161 ]
  %1204 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1204, %union.rec** @zz_hold, align 8
  %1205 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1206 = bitcast %union.rec* %1205 to %struct.word_type*
  %1207 = getelementptr inbounds %struct.word_type, %struct.word_type* %1206, i32 0, i32 0
  %1208 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1207, i32 0, i64 0
  %1209 = getelementptr inbounds %struct.LIST, %struct.LIST* %1208, i32 0, i32 1
  %1210 = load %union.rec*, %union.rec** %1209, align 8
  %1211 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1212 = icmp eq %union.rec* %1210, %1211
  br i1 %1212, label %1213, label %1214

; <label>:1213                                    ; preds = %1202
  br label %1255

; <label>:1214                                    ; preds = %1202
  %1215 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1216 = bitcast %union.rec* %1215 to %struct.word_type*
  %1217 = getelementptr inbounds %struct.word_type, %struct.word_type* %1216, i32 0, i32 0
  %1218 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1217, i32 0, i64 0
  %1219 = getelementptr inbounds %struct.LIST, %struct.LIST* %1218, i32 0, i32 1
  %1220 = load %union.rec*, %union.rec** %1219, align 8
  store %union.rec* %1220, %union.rec** @zz_res, align 8
  %1221 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1222 = bitcast %union.rec* %1221 to %struct.word_type*
  %1223 = getelementptr inbounds %struct.word_type, %struct.word_type* %1222, i32 0, i32 0
  %1224 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1223, i32 0, i64 0
  %1225 = getelementptr inbounds %struct.LIST, %struct.LIST* %1224, i32 0, i32 0
  %1226 = load %union.rec*, %union.rec** %1225, align 8
  %1227 = load %union.rec*, %union.rec** @zz_res, align 8
  %1228 = bitcast %union.rec* %1227 to %struct.word_type*
  %1229 = getelementptr inbounds %struct.word_type, %struct.word_type* %1228, i32 0, i32 0
  %1230 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1229, i32 0, i64 0
  %1231 = getelementptr inbounds %struct.LIST, %struct.LIST* %1230, i32 0, i32 0
  store %union.rec* %1226, %union.rec** %1231, align 8
  %1232 = load %union.rec*, %union.rec** @zz_res, align 8
  %1233 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1234 = bitcast %union.rec* %1233 to %struct.word_type*
  %1235 = getelementptr inbounds %struct.word_type, %struct.word_type* %1234, i32 0, i32 0
  %1236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1235, i32 0, i64 0
  %1237 = getelementptr inbounds %struct.LIST, %struct.LIST* %1236, i32 0, i32 0
  %1238 = load %union.rec*, %union.rec** %1237, align 8
  %1239 = bitcast %union.rec* %1238 to %struct.word_type*
  %1240 = getelementptr inbounds %struct.word_type, %struct.word_type* %1239, i32 0, i32 0
  %1241 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1240, i32 0, i64 0
  %1242 = getelementptr inbounds %struct.LIST, %struct.LIST* %1241, i32 0, i32 1
  store %union.rec* %1232, %union.rec** %1242, align 8
  %1243 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1244 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1245 = bitcast %union.rec* %1244 to %struct.word_type*
  %1246 = getelementptr inbounds %struct.word_type, %struct.word_type* %1245, i32 0, i32 0
  %1247 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1246, i32 0, i64 0
  %1248 = getelementptr inbounds %struct.LIST, %struct.LIST* %1247, i32 0, i32 1
  store %union.rec* %1243, %union.rec** %1248, align 8
  %1249 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1250 = bitcast %union.rec* %1249 to %struct.word_type*
  %1251 = getelementptr inbounds %struct.word_type, %struct.word_type* %1250, i32 0, i32 0
  %1252 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1251, i32 0, i64 0
  %1253 = getelementptr inbounds %struct.LIST, %struct.LIST* %1252, i32 0, i32 0
  store %union.rec* %1243, %union.rec** %1253, align 8
  %1254 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1255

; <label>:1255                                    ; preds = %1214, %1213
  %1256 = phi %union.rec* [ null, %1213 ], [ %1254, %1214 ]
  %1257 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1257, %union.rec** @zz_hold, align 8
  %1258 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1258, %union.rec** @zz_hold, align 8
  %1259 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1260 = bitcast %union.rec* %1259 to %struct.word_type*
  %1261 = getelementptr inbounds %struct.word_type, %struct.word_type* %1260, i32 0, i32 1
  %1262 = bitcast %union.FIRST_UNION* %1261 to %struct.anon*
  %1263 = getelementptr inbounds %struct.anon, %struct.anon* %1262, i32 0, i32 0
  %1264 = load i8, i8* %1263, align 1
  %1265 = zext i8 %1264 to i32
  %1266 = icmp eq i32 %1265, 11
  br i1 %1266, label %1276, label %1267

; <label>:1267                                    ; preds = %1255
  %1268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1269 = bitcast %union.rec* %1268 to %struct.word_type*
  %1270 = getelementptr inbounds %struct.word_type, %struct.word_type* %1269, i32 0, i32 1
  %1271 = bitcast %union.FIRST_UNION* %1270 to %struct.anon*
  %1272 = getelementptr inbounds %struct.anon, %struct.anon* %1271, i32 0, i32 0
  %1273 = load i8, i8* %1272, align 1
  %1274 = zext i8 %1273 to i32
  %1275 = icmp eq i32 %1274, 12
  br i1 %1275, label %1276, label %1284

; <label>:1276                                    ; preds = %1267, %1255
  %1277 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1278 = bitcast %union.rec* %1277 to %struct.word_type*
  %1279 = getelementptr inbounds %struct.word_type, %struct.word_type* %1278, i32 0, i32 1
  %1280 = bitcast %union.FIRST_UNION* %1279 to %struct.anon*
  %1281 = getelementptr inbounds %struct.anon, %struct.anon* %1280, i32 0, i32 1
  %1282 = load i8, i8* %1281, align 1
  %1283 = zext i8 %1282 to i32
  br label %1295

; <label>:1284                                    ; preds = %1267
  %1285 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1286 = bitcast %union.rec* %1285 to %struct.word_type*
  %1287 = getelementptr inbounds %struct.word_type, %struct.word_type* %1286, i32 0, i32 1
  %1288 = bitcast %union.FIRST_UNION* %1287 to %struct.anon*
  %1289 = getelementptr inbounds %struct.anon, %struct.anon* %1288, i32 0, i32 0
  %1290 = load i8, i8* %1289, align 1
  %1291 = zext i8 %1290 to i64
  %1292 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1291
  %1293 = load i8, i8* %1292, align 1
  %1294 = zext i8 %1293 to i32
  br label %1295

; <label>:1295                                    ; preds = %1284, %1276
  %1296 = phi i32 [ %1283, %1276 ], [ %1294, %1284 ]
  store i32 %1296, i32* @zz_size, align 4
  %1297 = load i32, i32* @zz_size, align 4
  %1298 = sext i32 %1297 to i64
  %1299 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1298
  %1300 = load %union.rec*, %union.rec** %1299, align 8
  %1301 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1302 = bitcast %union.rec* %1301 to %struct.word_type*
  %1303 = getelementptr inbounds %struct.word_type, %struct.word_type* %1302, i32 0, i32 0
  %1304 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1303, i32 0, i64 0
  %1305 = getelementptr inbounds %struct.LIST, %struct.LIST* %1304, i32 0, i32 0
  store %union.rec* %1300, %union.rec** %1305, align 8
  %1306 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1307 = load i32, i32* @zz_size, align 4
  %1308 = sext i32 %1307 to i64
  %1309 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1308
  store %union.rec* %1306, %union.rec** %1309, align 8
  br label %1135

; <label>:1310                                    ; preds = %1135
  br label %1311

; <label>:1311                                    ; preds = %1471, %1310
  %1312 = load %union.rec*, %union.rec** @xx_hold, align 8
  %1313 = bitcast %union.rec* %1312 to %struct.word_type*
  %1314 = getelementptr inbounds %struct.word_type, %struct.word_type* %1313, i32 0, i32 0
  %1315 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1314, i32 0, i64 0
  %1316 = getelementptr inbounds %struct.LIST, %struct.LIST* %1315, i32 0, i32 1
  %1317 = load %union.rec*, %union.rec** %1316, align 8
  %1318 = load %union.rec*, %union.rec** @xx_hold, align 8
  %1319 = icmp ne %union.rec* %1317, %1318
  br i1 %1319, label %1320, label %1486

; <label>:1320                                    ; preds = %1311
  %1321 = load %union.rec*, %union.rec** @xx_hold, align 8
  %1322 = bitcast %union.rec* %1321 to %struct.word_type*
  %1323 = getelementptr inbounds %struct.word_type, %struct.word_type* %1322, i32 0, i32 0
  %1324 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1323, i32 0, i64 0
  %1325 = getelementptr inbounds %struct.LIST, %struct.LIST* %1324, i32 0, i32 1
  %1326 = load %union.rec*, %union.rec** %1325, align 8
  store %union.rec* %1326, %union.rec** @xx_link, align 8
  %1327 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1327, %union.rec** @zz_hold, align 8
  %1328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1329 = bitcast %union.rec* %1328 to %struct.word_type*
  %1330 = getelementptr inbounds %struct.word_type, %struct.word_type* %1329, i32 0, i32 0
  %1331 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1330, i32 0, i64 1
  %1332 = getelementptr inbounds %struct.LIST, %struct.LIST* %1331, i32 0, i32 1
  %1333 = load %union.rec*, %union.rec** %1332, align 8
  %1334 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1335 = icmp eq %union.rec* %1333, %1334
  br i1 %1335, label %1336, label %1337

; <label>:1336                                    ; preds = %1320
  br label %1378

; <label>:1337                                    ; preds = %1320
  %1338 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1339 = bitcast %union.rec* %1338 to %struct.word_type*
  %1340 = getelementptr inbounds %struct.word_type, %struct.word_type* %1339, i32 0, i32 0
  %1341 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1340, i32 0, i64 1
  %1342 = getelementptr inbounds %struct.LIST, %struct.LIST* %1341, i32 0, i32 1
  %1343 = load %union.rec*, %union.rec** %1342, align 8
  store %union.rec* %1343, %union.rec** @zz_res, align 8
  %1344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1345 = bitcast %union.rec* %1344 to %struct.word_type*
  %1346 = getelementptr inbounds %struct.word_type, %struct.word_type* %1345, i32 0, i32 0
  %1347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1346, i32 0, i64 1
  %1348 = getelementptr inbounds %struct.LIST, %struct.LIST* %1347, i32 0, i32 0
  %1349 = load %union.rec*, %union.rec** %1348, align 8
  %1350 = load %union.rec*, %union.rec** @zz_res, align 8
  %1351 = bitcast %union.rec* %1350 to %struct.word_type*
  %1352 = getelementptr inbounds %struct.word_type, %struct.word_type* %1351, i32 0, i32 0
  %1353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1352, i32 0, i64 1
  %1354 = getelementptr inbounds %struct.LIST, %struct.LIST* %1353, i32 0, i32 0
  store %union.rec* %1349, %union.rec** %1354, align 8
  %1355 = load %union.rec*, %union.rec** @zz_res, align 8
  %1356 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1357 = bitcast %union.rec* %1356 to %struct.word_type*
  %1358 = getelementptr inbounds %struct.word_type, %struct.word_type* %1357, i32 0, i32 0
  %1359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1358, i32 0, i64 1
  %1360 = getelementptr inbounds %struct.LIST, %struct.LIST* %1359, i32 0, i32 0
  %1361 = load %union.rec*, %union.rec** %1360, align 8
  %1362 = bitcast %union.rec* %1361 to %struct.word_type*
  %1363 = getelementptr inbounds %struct.word_type, %struct.word_type* %1362, i32 0, i32 0
  %1364 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1363, i32 0, i64 1
  %1365 = getelementptr inbounds %struct.LIST, %struct.LIST* %1364, i32 0, i32 1
  store %union.rec* %1355, %union.rec** %1365, align 8
  %1366 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1367 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1368 = bitcast %union.rec* %1367 to %struct.word_type*
  %1369 = getelementptr inbounds %struct.word_type, %struct.word_type* %1368, i32 0, i32 0
  %1370 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1369, i32 0, i64 1
  %1371 = getelementptr inbounds %struct.LIST, %struct.LIST* %1370, i32 0, i32 1
  store %union.rec* %1366, %union.rec** %1371, align 8
  %1372 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1373 = bitcast %union.rec* %1372 to %struct.word_type*
  %1374 = getelementptr inbounds %struct.word_type, %struct.word_type* %1373, i32 0, i32 0
  %1375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1374, i32 0, i64 1
  %1376 = getelementptr inbounds %struct.LIST, %struct.LIST* %1375, i32 0, i32 0
  store %union.rec* %1366, %union.rec** %1376, align 8
  %1377 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1378

; <label>:1378                                    ; preds = %1337, %1336
  %1379 = phi %union.rec* [ null, %1336 ], [ %1377, %1337 ]
  %1380 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1380, %union.rec** @zz_hold, align 8
  %1381 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1382 = bitcast %union.rec* %1381 to %struct.word_type*
  %1383 = getelementptr inbounds %struct.word_type, %struct.word_type* %1382, i32 0, i32 0
  %1384 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1383, i32 0, i64 0
  %1385 = getelementptr inbounds %struct.LIST, %struct.LIST* %1384, i32 0, i32 1
  %1386 = load %union.rec*, %union.rec** %1385, align 8
  %1387 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1388 = icmp eq %union.rec* %1386, %1387
  br i1 %1388, label %1389, label %1390

; <label>:1389                                    ; preds = %1378
  br label %1431

; <label>:1390                                    ; preds = %1378
  %1391 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1392 = bitcast %union.rec* %1391 to %struct.word_type*
  %1393 = getelementptr inbounds %struct.word_type, %struct.word_type* %1392, i32 0, i32 0
  %1394 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1393, i32 0, i64 0
  %1395 = getelementptr inbounds %struct.LIST, %struct.LIST* %1394, i32 0, i32 1
  %1396 = load %union.rec*, %union.rec** %1395, align 8
  store %union.rec* %1396, %union.rec** @zz_res, align 8
  %1397 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1398 = bitcast %union.rec* %1397 to %struct.word_type*
  %1399 = getelementptr inbounds %struct.word_type, %struct.word_type* %1398, i32 0, i32 0
  %1400 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1399, i32 0, i64 0
  %1401 = getelementptr inbounds %struct.LIST, %struct.LIST* %1400, i32 0, i32 0
  %1402 = load %union.rec*, %union.rec** %1401, align 8
  %1403 = load %union.rec*, %union.rec** @zz_res, align 8
  %1404 = bitcast %union.rec* %1403 to %struct.word_type*
  %1405 = getelementptr inbounds %struct.word_type, %struct.word_type* %1404, i32 0, i32 0
  %1406 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1405, i32 0, i64 0
  %1407 = getelementptr inbounds %struct.LIST, %struct.LIST* %1406, i32 0, i32 0
  store %union.rec* %1402, %union.rec** %1407, align 8
  %1408 = load %union.rec*, %union.rec** @zz_res, align 8
  %1409 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1410 = bitcast %union.rec* %1409 to %struct.word_type*
  %1411 = getelementptr inbounds %struct.word_type, %struct.word_type* %1410, i32 0, i32 0
  %1412 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1411, i32 0, i64 0
  %1413 = getelementptr inbounds %struct.LIST, %struct.LIST* %1412, i32 0, i32 0
  %1414 = load %union.rec*, %union.rec** %1413, align 8
  %1415 = bitcast %union.rec* %1414 to %struct.word_type*
  %1416 = getelementptr inbounds %struct.word_type, %struct.word_type* %1415, i32 0, i32 0
  %1417 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1416, i32 0, i64 0
  %1418 = getelementptr inbounds %struct.LIST, %struct.LIST* %1417, i32 0, i32 1
  store %union.rec* %1408, %union.rec** %1418, align 8
  %1419 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1420 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1421 = bitcast %union.rec* %1420 to %struct.word_type*
  %1422 = getelementptr inbounds %struct.word_type, %struct.word_type* %1421, i32 0, i32 0
  %1423 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1422, i32 0, i64 0
  %1424 = getelementptr inbounds %struct.LIST, %struct.LIST* %1423, i32 0, i32 1
  store %union.rec* %1419, %union.rec** %1424, align 8
  %1425 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1426 = bitcast %union.rec* %1425 to %struct.word_type*
  %1427 = getelementptr inbounds %struct.word_type, %struct.word_type* %1426, i32 0, i32 0
  %1428 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1427, i32 0, i64 0
  %1429 = getelementptr inbounds %struct.LIST, %struct.LIST* %1428, i32 0, i32 0
  store %union.rec* %1419, %union.rec** %1429, align 8
  %1430 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1431

; <label>:1431                                    ; preds = %1390, %1389
  %1432 = phi %union.rec* [ null, %1389 ], [ %1430, %1390 ]
  %1433 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1433, %union.rec** @zz_hold, align 8
  %1434 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1434, %union.rec** @zz_hold, align 8
  %1435 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1436 = bitcast %union.rec* %1435 to %struct.word_type*
  %1437 = getelementptr inbounds %struct.word_type, %struct.word_type* %1436, i32 0, i32 1
  %1438 = bitcast %union.FIRST_UNION* %1437 to %struct.anon*
  %1439 = getelementptr inbounds %struct.anon, %struct.anon* %1438, i32 0, i32 0
  %1440 = load i8, i8* %1439, align 1
  %1441 = zext i8 %1440 to i32
  %1442 = icmp eq i32 %1441, 11
  br i1 %1442, label %1452, label %1443

; <label>:1443                                    ; preds = %1431
  %1444 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1445 = bitcast %union.rec* %1444 to %struct.word_type*
  %1446 = getelementptr inbounds %struct.word_type, %struct.word_type* %1445, i32 0, i32 1
  %1447 = bitcast %union.FIRST_UNION* %1446 to %struct.anon*
  %1448 = getelementptr inbounds %struct.anon, %struct.anon* %1447, i32 0, i32 0
  %1449 = load i8, i8* %1448, align 1
  %1450 = zext i8 %1449 to i32
  %1451 = icmp eq i32 %1450, 12
  br i1 %1451, label %1452, label %1460

; <label>:1452                                    ; preds = %1443, %1431
  %1453 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1454 = bitcast %union.rec* %1453 to %struct.word_type*
  %1455 = getelementptr inbounds %struct.word_type, %struct.word_type* %1454, i32 0, i32 1
  %1456 = bitcast %union.FIRST_UNION* %1455 to %struct.anon*
  %1457 = getelementptr inbounds %struct.anon, %struct.anon* %1456, i32 0, i32 1
  %1458 = load i8, i8* %1457, align 1
  %1459 = zext i8 %1458 to i32
  br label %1471

; <label>:1460                                    ; preds = %1443
  %1461 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1462 = bitcast %union.rec* %1461 to %struct.word_type*
  %1463 = getelementptr inbounds %struct.word_type, %struct.word_type* %1462, i32 0, i32 1
  %1464 = bitcast %union.FIRST_UNION* %1463 to %struct.anon*
  %1465 = getelementptr inbounds %struct.anon, %struct.anon* %1464, i32 0, i32 0
  %1466 = load i8, i8* %1465, align 1
  %1467 = zext i8 %1466 to i64
  %1468 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1467
  %1469 = load i8, i8* %1468, align 1
  %1470 = zext i8 %1469 to i32
  br label %1471

; <label>:1471                                    ; preds = %1460, %1452
  %1472 = phi i32 [ %1459, %1452 ], [ %1470, %1460 ]
  store i32 %1472, i32* @zz_size, align 4
  %1473 = load i32, i32* @zz_size, align 4
  %1474 = sext i32 %1473 to i64
  %1475 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1474
  %1476 = load %union.rec*, %union.rec** %1475, align 8
  %1477 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1478 = bitcast %union.rec* %1477 to %struct.word_type*
  %1479 = getelementptr inbounds %struct.word_type, %struct.word_type* %1478, i32 0, i32 0
  %1480 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1479, i32 0, i64 0
  %1481 = getelementptr inbounds %struct.LIST, %struct.LIST* %1480, i32 0, i32 0
  store %union.rec* %1476, %union.rec** %1481, align 8
  %1482 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1483 = load i32, i32* @zz_size, align 4
  %1484 = sext i32 %1483 to i64
  %1485 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1484
  store %union.rec* %1482, %union.rec** %1485, align 8
  br label %1311

; <label>:1486                                    ; preds = %1311
  %1487 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %1487, %union.rec** @zz_hold, align 8
  %1488 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1488, %union.rec** @zz_hold, align 8
  %1489 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1490 = bitcast %union.rec* %1489 to %struct.word_type*
  %1491 = getelementptr inbounds %struct.word_type, %struct.word_type* %1490, i32 0, i32 1
  %1492 = bitcast %union.FIRST_UNION* %1491 to %struct.anon*
  %1493 = getelementptr inbounds %struct.anon, %struct.anon* %1492, i32 0, i32 0
  %1494 = load i8, i8* %1493, align 1
  %1495 = zext i8 %1494 to i32
  %1496 = icmp eq i32 %1495, 11
  br i1 %1496, label %1506, label %1497

; <label>:1497                                    ; preds = %1486
  %1498 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1499 = bitcast %union.rec* %1498 to %struct.word_type*
  %1500 = getelementptr inbounds %struct.word_type, %struct.word_type* %1499, i32 0, i32 1
  %1501 = bitcast %union.FIRST_UNION* %1500 to %struct.anon*
  %1502 = getelementptr inbounds %struct.anon, %struct.anon* %1501, i32 0, i32 0
  %1503 = load i8, i8* %1502, align 1
  %1504 = zext i8 %1503 to i32
  %1505 = icmp eq i32 %1504, 12
  br i1 %1505, label %1506, label %1514

; <label>:1506                                    ; preds = %1497, %1486
  %1507 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1508 = bitcast %union.rec* %1507 to %struct.word_type*
  %1509 = getelementptr inbounds %struct.word_type, %struct.word_type* %1508, i32 0, i32 1
  %1510 = bitcast %union.FIRST_UNION* %1509 to %struct.anon*
  %1511 = getelementptr inbounds %struct.anon, %struct.anon* %1510, i32 0, i32 1
  %1512 = load i8, i8* %1511, align 1
  %1513 = zext i8 %1512 to i32
  br label %1525

; <label>:1514                                    ; preds = %1497
  %1515 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1516 = bitcast %union.rec* %1515 to %struct.word_type*
  %1517 = getelementptr inbounds %struct.word_type, %struct.word_type* %1516, i32 0, i32 1
  %1518 = bitcast %union.FIRST_UNION* %1517 to %struct.anon*
  %1519 = getelementptr inbounds %struct.anon, %struct.anon* %1518, i32 0, i32 0
  %1520 = load i8, i8* %1519, align 1
  %1521 = zext i8 %1520 to i64
  %1522 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1521
  %1523 = load i8, i8* %1522, align 1
  %1524 = zext i8 %1523 to i32
  br label %1525

; <label>:1525                                    ; preds = %1514, %1506
  %1526 = phi i32 [ %1513, %1506 ], [ %1524, %1514 ]
  store i32 %1526, i32* @zz_size, align 4
  %1527 = load i32, i32* @zz_size, align 4
  %1528 = sext i32 %1527 to i64
  %1529 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1528
  %1530 = load %union.rec*, %union.rec** %1529, align 8
  %1531 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1532 = bitcast %union.rec* %1531 to %struct.word_type*
  %1533 = getelementptr inbounds %struct.word_type, %struct.word_type* %1532, i32 0, i32 0
  %1534 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1533, i32 0, i64 0
  %1535 = getelementptr inbounds %struct.LIST, %struct.LIST* %1534, i32 0, i32 0
  store %union.rec* %1530, %union.rec** %1535, align 8
  %1536 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1537 = load i32, i32* @zz_size, align 4
  %1538 = sext i32 %1537 to i64
  %1539 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1538
  store %union.rec* %1536, %union.rec** %1539, align 8
  %1540 = load %union.rec*, %union.rec** %link, align 8
  %1541 = bitcast %union.rec* %1540 to %struct.word_type*
  %1542 = getelementptr inbounds %struct.word_type, %struct.word_type* %1541, i32 0, i32 0
  %1543 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1542, i32 0, i64 0
  %1544 = getelementptr inbounds %struct.LIST, %struct.LIST* %1543, i32 0, i32 0
  %1545 = load %union.rec*, %union.rec** %1544, align 8
  store %union.rec* %1545, %union.rec** %link, align 8
  %1546 = load %union.rec*, %union.rec** %link, align 8
  %1547 = bitcast %union.rec* %1546 to %struct.word_type*
  %1548 = getelementptr inbounds %struct.word_type, %struct.word_type* %1547, i32 0, i32 0
  %1549 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1548, i32 0, i64 0
  %1550 = getelementptr inbounds %struct.LIST, %struct.LIST* %1549, i32 0, i32 1
  %1551 = load %union.rec*, %union.rec** %1550, align 8
  store %union.rec* %1551, %union.rec** @xx_link, align 8
  %1552 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1552, %union.rec** @zz_hold, align 8
  %1553 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1554 = bitcast %union.rec* %1553 to %struct.word_type*
  %1555 = getelementptr inbounds %struct.word_type, %struct.word_type* %1554, i32 0, i32 0
  %1556 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1555, i32 0, i64 1
  %1557 = getelementptr inbounds %struct.LIST, %struct.LIST* %1556, i32 0, i32 1
  %1558 = load %union.rec*, %union.rec** %1557, align 8
  %1559 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1560 = icmp eq %union.rec* %1558, %1559
  br i1 %1560, label %1561, label %1562

; <label>:1561                                    ; preds = %1525
  br label %1603

; <label>:1562                                    ; preds = %1525
  %1563 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1564 = bitcast %union.rec* %1563 to %struct.word_type*
  %1565 = getelementptr inbounds %struct.word_type, %struct.word_type* %1564, i32 0, i32 0
  %1566 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1565, i32 0, i64 1
  %1567 = getelementptr inbounds %struct.LIST, %struct.LIST* %1566, i32 0, i32 1
  %1568 = load %union.rec*, %union.rec** %1567, align 8
  store %union.rec* %1568, %union.rec** @zz_res, align 8
  %1569 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1570 = bitcast %union.rec* %1569 to %struct.word_type*
  %1571 = getelementptr inbounds %struct.word_type, %struct.word_type* %1570, i32 0, i32 0
  %1572 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1571, i32 0, i64 1
  %1573 = getelementptr inbounds %struct.LIST, %struct.LIST* %1572, i32 0, i32 0
  %1574 = load %union.rec*, %union.rec** %1573, align 8
  %1575 = load %union.rec*, %union.rec** @zz_res, align 8
  %1576 = bitcast %union.rec* %1575 to %struct.word_type*
  %1577 = getelementptr inbounds %struct.word_type, %struct.word_type* %1576, i32 0, i32 0
  %1578 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1577, i32 0, i64 1
  %1579 = getelementptr inbounds %struct.LIST, %struct.LIST* %1578, i32 0, i32 0
  store %union.rec* %1574, %union.rec** %1579, align 8
  %1580 = load %union.rec*, %union.rec** @zz_res, align 8
  %1581 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1582 = bitcast %union.rec* %1581 to %struct.word_type*
  %1583 = getelementptr inbounds %struct.word_type, %struct.word_type* %1582, i32 0, i32 0
  %1584 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1583, i32 0, i64 1
  %1585 = getelementptr inbounds %struct.LIST, %struct.LIST* %1584, i32 0, i32 0
  %1586 = load %union.rec*, %union.rec** %1585, align 8
  %1587 = bitcast %union.rec* %1586 to %struct.word_type*
  %1588 = getelementptr inbounds %struct.word_type, %struct.word_type* %1587, i32 0, i32 0
  %1589 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1588, i32 0, i64 1
  %1590 = getelementptr inbounds %struct.LIST, %struct.LIST* %1589, i32 0, i32 1
  store %union.rec* %1580, %union.rec** %1590, align 8
  %1591 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1592 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1593 = bitcast %union.rec* %1592 to %struct.word_type*
  %1594 = getelementptr inbounds %struct.word_type, %struct.word_type* %1593, i32 0, i32 0
  %1595 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1594, i32 0, i64 1
  %1596 = getelementptr inbounds %struct.LIST, %struct.LIST* %1595, i32 0, i32 1
  store %union.rec* %1591, %union.rec** %1596, align 8
  %1597 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1598 = bitcast %union.rec* %1597 to %struct.word_type*
  %1599 = getelementptr inbounds %struct.word_type, %struct.word_type* %1598, i32 0, i32 0
  %1600 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1599, i32 0, i64 1
  %1601 = getelementptr inbounds %struct.LIST, %struct.LIST* %1600, i32 0, i32 0
  store %union.rec* %1591, %union.rec** %1601, align 8
  %1602 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1603

; <label>:1603                                    ; preds = %1562, %1561
  %1604 = phi %union.rec* [ null, %1561 ], [ %1602, %1562 ]
  store %union.rec* %1604, %union.rec** @xx_tmp, align 8
  %1605 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1605, %union.rec** @zz_hold, align 8
  %1606 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1607 = bitcast %union.rec* %1606 to %struct.word_type*
  %1608 = getelementptr inbounds %struct.word_type, %struct.word_type* %1607, i32 0, i32 0
  %1609 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1608, i32 0, i64 0
  %1610 = getelementptr inbounds %struct.LIST, %struct.LIST* %1609, i32 0, i32 1
  %1611 = load %union.rec*, %union.rec** %1610, align 8
  %1612 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1613 = icmp eq %union.rec* %1611, %1612
  br i1 %1613, label %1614, label %1615

; <label>:1614                                    ; preds = %1603
  br label %1656

; <label>:1615                                    ; preds = %1603
  %1616 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1617 = bitcast %union.rec* %1616 to %struct.word_type*
  %1618 = getelementptr inbounds %struct.word_type, %struct.word_type* %1617, i32 0, i32 0
  %1619 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1618, i32 0, i64 0
  %1620 = getelementptr inbounds %struct.LIST, %struct.LIST* %1619, i32 0, i32 1
  %1621 = load %union.rec*, %union.rec** %1620, align 8
  store %union.rec* %1621, %union.rec** @zz_res, align 8
  %1622 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1623 = bitcast %union.rec* %1622 to %struct.word_type*
  %1624 = getelementptr inbounds %struct.word_type, %struct.word_type* %1623, i32 0, i32 0
  %1625 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1624, i32 0, i64 0
  %1626 = getelementptr inbounds %struct.LIST, %struct.LIST* %1625, i32 0, i32 0
  %1627 = load %union.rec*, %union.rec** %1626, align 8
  %1628 = load %union.rec*, %union.rec** @zz_res, align 8
  %1629 = bitcast %union.rec* %1628 to %struct.word_type*
  %1630 = getelementptr inbounds %struct.word_type, %struct.word_type* %1629, i32 0, i32 0
  %1631 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1630, i32 0, i64 0
  %1632 = getelementptr inbounds %struct.LIST, %struct.LIST* %1631, i32 0, i32 0
  store %union.rec* %1627, %union.rec** %1632, align 8
  %1633 = load %union.rec*, %union.rec** @zz_res, align 8
  %1634 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1635 = bitcast %union.rec* %1634 to %struct.word_type*
  %1636 = getelementptr inbounds %struct.word_type, %struct.word_type* %1635, i32 0, i32 0
  %1637 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1636, i32 0, i64 0
  %1638 = getelementptr inbounds %struct.LIST, %struct.LIST* %1637, i32 0, i32 0
  %1639 = load %union.rec*, %union.rec** %1638, align 8
  %1640 = bitcast %union.rec* %1639 to %struct.word_type*
  %1641 = getelementptr inbounds %struct.word_type, %struct.word_type* %1640, i32 0, i32 0
  %1642 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1641, i32 0, i64 0
  %1643 = getelementptr inbounds %struct.LIST, %struct.LIST* %1642, i32 0, i32 1
  store %union.rec* %1633, %union.rec** %1643, align 8
  %1644 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1645 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1646 = bitcast %union.rec* %1645 to %struct.word_type*
  %1647 = getelementptr inbounds %struct.word_type, %struct.word_type* %1646, i32 0, i32 0
  %1648 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1647, i32 0, i64 0
  %1649 = getelementptr inbounds %struct.LIST, %struct.LIST* %1648, i32 0, i32 1
  store %union.rec* %1644, %union.rec** %1649, align 8
  %1650 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1651 = bitcast %union.rec* %1650 to %struct.word_type*
  %1652 = getelementptr inbounds %struct.word_type, %struct.word_type* %1651, i32 0, i32 0
  %1653 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1652, i32 0, i64 0
  %1654 = getelementptr inbounds %struct.LIST, %struct.LIST* %1653, i32 0, i32 0
  store %union.rec* %1644, %union.rec** %1654, align 8
  %1655 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1656

; <label>:1656                                    ; preds = %1615, %1614
  %1657 = phi %union.rec* [ null, %1614 ], [ %1655, %1615 ]
  %1658 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1658, %union.rec** @zz_hold, align 8
  %1659 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1659, %union.rec** @zz_hold, align 8
  %1660 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1661 = bitcast %union.rec* %1660 to %struct.word_type*
  %1662 = getelementptr inbounds %struct.word_type, %struct.word_type* %1661, i32 0, i32 1
  %1663 = bitcast %union.FIRST_UNION* %1662 to %struct.anon*
  %1664 = getelementptr inbounds %struct.anon, %struct.anon* %1663, i32 0, i32 0
  %1665 = load i8, i8* %1664, align 1
  %1666 = zext i8 %1665 to i32
  %1667 = icmp eq i32 %1666, 11
  br i1 %1667, label %1677, label %1668

; <label>:1668                                    ; preds = %1656
  %1669 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1670 = bitcast %union.rec* %1669 to %struct.word_type*
  %1671 = getelementptr inbounds %struct.word_type, %struct.word_type* %1670, i32 0, i32 1
  %1672 = bitcast %union.FIRST_UNION* %1671 to %struct.anon*
  %1673 = getelementptr inbounds %struct.anon, %struct.anon* %1672, i32 0, i32 0
  %1674 = load i8, i8* %1673, align 1
  %1675 = zext i8 %1674 to i32
  %1676 = icmp eq i32 %1675, 12
  br i1 %1676, label %1677, label %1685

; <label>:1677                                    ; preds = %1668, %1656
  %1678 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1679 = bitcast %union.rec* %1678 to %struct.word_type*
  %1680 = getelementptr inbounds %struct.word_type, %struct.word_type* %1679, i32 0, i32 1
  %1681 = bitcast %union.FIRST_UNION* %1680 to %struct.anon*
  %1682 = getelementptr inbounds %struct.anon, %struct.anon* %1681, i32 0, i32 1
  %1683 = load i8, i8* %1682, align 1
  %1684 = zext i8 %1683 to i32
  br label %1696

; <label>:1685                                    ; preds = %1668
  %1686 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1687 = bitcast %union.rec* %1686 to %struct.word_type*
  %1688 = getelementptr inbounds %struct.word_type, %struct.word_type* %1687, i32 0, i32 1
  %1689 = bitcast %union.FIRST_UNION* %1688 to %struct.anon*
  %1690 = getelementptr inbounds %struct.anon, %struct.anon* %1689, i32 0, i32 0
  %1691 = load i8, i8* %1690, align 1
  %1692 = zext i8 %1691 to i64
  %1693 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1692
  %1694 = load i8, i8* %1693, align 1
  %1695 = zext i8 %1694 to i32
  br label %1696

; <label>:1696                                    ; preds = %1685, %1677
  %1697 = phi i32 [ %1684, %1677 ], [ %1695, %1685 ]
  store i32 %1697, i32* @zz_size, align 4
  %1698 = load i32, i32* @zz_size, align 4
  %1699 = sext i32 %1698 to i64
  %1700 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1699
  %1701 = load %union.rec*, %union.rec** %1700, align 8
  %1702 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1703 = bitcast %union.rec* %1702 to %struct.word_type*
  %1704 = getelementptr inbounds %struct.word_type, %struct.word_type* %1703, i32 0, i32 0
  %1705 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1704, i32 0, i64 0
  %1706 = getelementptr inbounds %struct.LIST, %struct.LIST* %1705, i32 0, i32 0
  store %union.rec* %1701, %union.rec** %1706, align 8
  %1707 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1708 = load i32, i32* @zz_size, align 4
  %1709 = sext i32 %1708 to i64
  %1710 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1709
  store %union.rec* %1707, %union.rec** %1710, align 8
  %1711 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %1712 = bitcast %union.rec* %1711 to %struct.word_type*
  %1713 = getelementptr inbounds %struct.word_type, %struct.word_type* %1712, i32 0, i32 0
  %1714 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1713, i32 0, i64 1
  %1715 = getelementptr inbounds %struct.LIST, %struct.LIST* %1714, i32 0, i32 1
  %1716 = load %union.rec*, %union.rec** %1715, align 8
  %1717 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %1718 = icmp eq %union.rec* %1716, %1717
  br i1 %1718, label %1719, label %1722

; <label>:1719                                    ; preds = %1696
  %1720 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %1721 = call i32 @DisposeObject(%union.rec* %1720)
  br label %1722

; <label>:1722                                    ; preds = %1719, %1696
  br label %1741

; <label>:1723                                    ; preds = %1129
  br label %1741

; <label>:1724                                    ; preds = %1129
  br label %4240

; <label>:1725                                    ; preds = %1129
  %1726 = load %union.rec*, %union.rec** %1, align 8
  %1727 = bitcast %union.rec* %1726 to %struct.head_type*
  %1728 = getelementptr inbounds %struct.head_type, %struct.head_type* %1727, i32 0, i32 8
  %1729 = load %union.rec*, %union.rec** %1728, align 8
  %1730 = icmp ne %union.rec* %1729, null
  br i1 %1730, label %1731, label %1740

; <label>:1731                                    ; preds = %1725
  %1732 = load %union.rec*, %union.rec** %1, align 8
  %1733 = bitcast %union.rec* %1732 to %struct.head_type*
  %1734 = getelementptr inbounds %struct.head_type, %struct.head_type* %1733, i32 0, i32 8
  %1735 = load %union.rec*, %union.rec** %1734, align 8
  %1736 = call i32 @DisposeObject(%union.rec* %1735)
  %1737 = load %union.rec*, %union.rec** %1, align 8
  %1738 = bitcast %union.rec* %1737 to %struct.head_type*
  %1739 = getelementptr inbounds %struct.head_type, %struct.head_type* %1738, i32 0, i32 8
  store %union.rec* null, %union.rec** %1739, align 8
  br label %1740

; <label>:1740                                    ; preds = %1731, %1725
  br label %3345

; <label>:1741                                    ; preds = %1129, %1723, %1722
  br label %3019

; <label>:1742                                    ; preds = %534, %534, %534, %534
  store i32 1, i32* %headers_seen, align 4
  br label %3019

; <label>:1743                                    ; preds = %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534, %534
  %1744 = load %union.rec*, %union.rec** %dest, align 8
  %1745 = bitcast %union.rec* %1744 to %struct.word_type*
  %1746 = getelementptr inbounds %struct.word_type, %struct.word_type* %1745, i32 0, i32 2
  %1747 = bitcast %union.SECOND_UNION* %1746 to %struct.anon.1*
  %1748 = bitcast %struct.anon.1* %1747 to i32*
  %1749 = load i32, i32* %1748, align 4
  %1750 = lshr i32 %1749, 29
  %1751 = and i32 %1750, 3
  %1752 = load %union.rec*, %union.rec** %y, align 8
  %1753 = bitcast %union.rec* %1752 to %struct.word_type*
  %1754 = getelementptr inbounds %struct.word_type, %struct.word_type* %1753, i32 0, i32 2
  %1755 = bitcast %union.SECOND_UNION* %1754 to %struct.anon.1*
  %1756 = bitcast %struct.anon.1* %1755 to i32*
  %1757 = load i32, i32* %1756, align 4
  %1758 = and i32 %1751, 3
  %1759 = shl i32 %1758, 29
  %1760 = and i32 %1757, -1610612737
  %1761 = or i32 %1760, %1759
  store i32 %1761, i32* %1756, align 4
  %1762 = load i32, i32* %dim, align 4
  %1763 = icmp eq i32 %1762, 1
  br i1 %1763, label %1764, label %1849

; <label>:1764                                    ; preds = %1743
  %1765 = load %union.rec*, %union.rec** %link, align 8
  %1766 = bitcast %union.rec* %1765 to %struct.word_type*
  %1767 = getelementptr inbounds %struct.word_type, %struct.word_type* %1766, i32 0, i32 0
  %1768 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1767, i32 0, i64 0
  %1769 = getelementptr inbounds %struct.LIST, %struct.LIST* %1768, i32 0, i32 1
  %1770 = load %union.rec*, %union.rec** %1769, align 8
  store %union.rec* %1770, %union.rec** %zlink, align 8
  br label %1771

; <label>:1771                                    ; preds = %1829, %1764
  %1772 = load %union.rec*, %union.rec** %zlink, align 8
  %1773 = load %union.rec*, %union.rec** %1, align 8
  %1774 = icmp ne %union.rec* %1772, %1773
  br i1 %1774, label %1775, label %1836

; <label>:1775                                    ; preds = %1771
  %1776 = load %union.rec*, %union.rec** %zlink, align 8
  %1777 = bitcast %union.rec* %1776 to %struct.word_type*
  %1778 = getelementptr inbounds %struct.word_type, %struct.word_type* %1777, i32 0, i32 0
  %1779 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1778, i32 0, i64 1
  %1780 = getelementptr inbounds %struct.LIST, %struct.LIST* %1779, i32 0, i32 0
  %1781 = load %union.rec*, %union.rec** %1780, align 8
  store %union.rec* %1781, %union.rec** %z, align 8
  br label %1782

; <label>:1782                                    ; preds = %1792, %1775
  %1783 = load %union.rec*, %union.rec** %z, align 8
  %1784 = bitcast %union.rec* %1783 to %struct.word_type*
  %1785 = getelementptr inbounds %struct.word_type, %struct.word_type* %1784, i32 0, i32 1
  %1786 = bitcast %union.FIRST_UNION* %1785 to %struct.anon*
  %1787 = getelementptr inbounds %struct.anon, %struct.anon* %1786, i32 0, i32 0
  %1788 = load i8, i8* %1787, align 1
  %1789 = zext i8 %1788 to i32
  %1790 = icmp eq i32 %1789, 0
  br i1 %1790, label %1791, label %1799

; <label>:1791                                    ; preds = %1782
  br label %1792

; <label>:1792                                    ; preds = %1791
  %1793 = load %union.rec*, %union.rec** %z, align 8
  %1794 = bitcast %union.rec* %1793 to %struct.word_type*
  %1795 = getelementptr inbounds %struct.word_type, %struct.word_type* %1794, i32 0, i32 0
  %1796 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1795, i32 0, i64 1
  %1797 = getelementptr inbounds %struct.LIST, %struct.LIST* %1796, i32 0, i32 0
  %1798 = load %union.rec*, %union.rec** %1797, align 8
  store %union.rec* %1798, %union.rec** %z, align 8
  br label %1782

; <label>:1799                                    ; preds = %1782
  %1800 = load %union.rec*, %union.rec** %z, align 8
  %1801 = bitcast %union.rec* %1800 to %struct.word_type*
  %1802 = getelementptr inbounds %struct.word_type, %struct.word_type* %1801, i32 0, i32 1
  %1803 = bitcast %union.FIRST_UNION* %1802 to %struct.anon*
  %1804 = getelementptr inbounds %struct.anon, %struct.anon* %1803, i32 0, i32 0
  %1805 = load i8, i8* %1804, align 1
  %1806 = zext i8 %1805 to i32
  switch i32 %1806, label %1827 [
    i32 121, label %1807
    i32 122, label %1807
    i32 1, label %1809
  ]

; <label>:1807                                    ; preds = %1799, %1799
  %1808 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %1808, %union.rec** %y, align 8
  br label %4240

; <label>:1809                                    ; preds = %1799
  %1810 = load %union.rec*, %union.rec** %z, align 8
  %1811 = bitcast %union.rec* %1810 to %struct.gapobj_type*
  %1812 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1811, i32 0, i32 3
  %1813 = bitcast %struct.GAP* %1812 to i16*
  %1814 = load i16, i16* %1813, align 4
  %1815 = lshr i16 %1814, 9
  %1816 = and i16 %1815, 1
  %1817 = zext i16 %1816 to i32
  %1818 = icmp ne i32 %1817, 0
  br i1 %1818, label %1826, label %1819

; <label>:1819                                    ; preds = %1809
  %1820 = load %union.rec*, %union.rec** %1, align 8
  %1821 = bitcast %union.rec* %1820 to %struct.word_type*
  %1822 = getelementptr inbounds %struct.word_type, %struct.word_type* %1821, i32 0, i32 0
  %1823 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1822, i32 0, i64 0
  %1824 = getelementptr inbounds %struct.LIST, %struct.LIST* %1823, i32 0, i32 0
  %1825 = load %union.rec*, %union.rec** %1824, align 8
  store %union.rec* %1825, %union.rec** %zlink, align 8
  br label %1826

; <label>:1826                                    ; preds = %1819, %1809
  br label %1828

; <label>:1827                                    ; preds = %1799
  br label %1828

; <label>:1828                                    ; preds = %1827, %1826
  br label %1829

; <label>:1829                                    ; preds = %1828
  %1830 = load %union.rec*, %union.rec** %zlink, align 8
  %1831 = bitcast %union.rec* %1830 to %struct.word_type*
  %1832 = getelementptr inbounds %struct.word_type, %struct.word_type* %1831, i32 0, i32 0
  %1833 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1832, i32 0, i64 0
  %1834 = getelementptr inbounds %struct.LIST, %struct.LIST* %1833, i32 0, i32 1
  %1835 = load %union.rec*, %union.rec** %1834, align 8
  store %union.rec* %1835, %union.rec** %zlink, align 8
  br label %1771

; <label>:1836                                    ; preds = %1771
  %1837 = load %union.rec*, %union.rec** %y, align 8
  %1838 = bitcast %union.rec* %1837 to %struct.word_type*
  %1839 = getelementptr inbounds %struct.word_type, %struct.word_type* %1838, i32 0, i32 1
  %1840 = bitcast %union.FIRST_UNION* %1839 to %struct.anon*
  %1841 = getelementptr inbounds %struct.anon, %struct.anon* %1840, i32 0, i32 0
  %1842 = load i8, i8* %1841, align 1
  %1843 = zext i8 %1842 to i32
  %1844 = icmp eq i32 %1843, 18
  br i1 %1844, label %1845, label %1848

; <label>:1845                                    ; preds = %1836
  %1846 = load %union.rec*, %union.rec** %y, align 8
  %1847 = call i32 @VerticalHyphenate(%union.rec* %1846)
  br label %1848

; <label>:1848                                    ; preds = %1845, %1836
  br label %1849

; <label>:1849                                    ; preds = %1848, %1743
  %1850 = load i32, i32* %target_is_internal, align 4
  %1851 = icmp ne i32 %1850, 0
  br i1 %1851, label %1852, label %2892

; <label>:1852                                    ; preds = %1849
  %1853 = load %union.rec*, %union.rec** %dest_encl, align 8
  %1854 = icmp eq %union.rec* %1853, null
  br i1 %1854, label %1855, label %2074

; <label>:1855                                    ; preds = %1852
  %1856 = load i32, i32* %dim, align 4
  %1857 = sub nsw i32 1, %1856
  %1858 = icmp eq i32 %1857, 0
  br i1 %1858, label %1859, label %1866

; <label>:1859                                    ; preds = %1855
  %1860 = load %union.rec*, %union.rec** %dest, align 8
  %1861 = bitcast %union.rec* %1860 to %struct.word_type*
  %1862 = getelementptr inbounds %struct.word_type, %struct.word_type* %1861, i32 0, i32 0
  %1863 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1862, i32 0, i64 1
  %1864 = getelementptr inbounds %struct.LIST, %struct.LIST* %1863, i32 0, i32 1
  %1865 = load %union.rec*, %union.rec** %1864, align 8
  br label %1873

; <label>:1866                                    ; preds = %1855
  %1867 = load %union.rec*, %union.rec** %dest, align 8
  %1868 = bitcast %union.rec* %1867 to %struct.word_type*
  %1869 = getelementptr inbounds %struct.word_type, %struct.word_type* %1868, i32 0, i32 0
  %1870 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1869, i32 0, i64 1
  %1871 = getelementptr inbounds %struct.LIST, %struct.LIST* %1870, i32 0, i32 0
  %1872 = load %union.rec*, %union.rec** %1871, align 8
  br label %1873

; <label>:1873                                    ; preds = %1866, %1859
  %1874 = phi %union.rec* [ %1865, %1859 ], [ %1872, %1866 ]
  %1875 = load i32, i32* %dim, align 4
  %1876 = icmp eq i32 %1875, 0
  br i1 %1876, label %1877, label %1884

; <label>:1877                                    ; preds = %1873
  %1878 = load %union.rec*, %union.rec** %dest, align 8
  %1879 = bitcast %union.rec* %1878 to %struct.word_type*
  %1880 = getelementptr inbounds %struct.word_type, %struct.word_type* %1879, i32 0, i32 0
  %1881 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1880, i32 0, i64 1
  %1882 = getelementptr inbounds %struct.LIST, %struct.LIST* %1881, i32 0, i32 1
  %1883 = load %union.rec*, %union.rec** %1882, align 8
  br label %1891

; <label>:1884                                    ; preds = %1873
  %1885 = load %union.rec*, %union.rec** %dest, align 8
  %1886 = bitcast %union.rec* %1885 to %struct.word_type*
  %1887 = getelementptr inbounds %struct.word_type, %struct.word_type* %1886, i32 0, i32 0
  %1888 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1887, i32 0, i64 1
  %1889 = getelementptr inbounds %struct.LIST, %struct.LIST* %1888, i32 0, i32 0
  %1890 = load %union.rec*, %union.rec** %1889, align 8
  br label %1891

; <label>:1891                                    ; preds = %1884, %1877
  %1892 = phi %union.rec* [ %1883, %1877 ], [ %1890, %1884 ]
  %1893 = icmp eq %union.rec* %1874, %1892
  br i1 %1893, label %1897, label %1894

; <label>:1894                                    ; preds = %1891
  %1895 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1896 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1895, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0))
  br label %1897

; <label>:1897                                    ; preds = %1894, %1891
  %1898 = load %union.rec*, %union.rec** %dest, align 8
  %1899 = bitcast %union.rec* %1898 to %struct.word_type*
  %1900 = getelementptr inbounds %struct.word_type, %struct.word_type* %1899, i32 0, i32 0
  %1901 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1900, i32 0, i64 1
  %1902 = getelementptr inbounds %struct.LIST, %struct.LIST* %1901, i32 0, i32 1
  %1903 = load %union.rec*, %union.rec** %1902, align 8
  %1904 = bitcast %union.rec* %1903 to %struct.word_type*
  %1905 = getelementptr inbounds %struct.word_type, %struct.word_type* %1904, i32 0, i32 0
  %1906 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1905, i32 0, i64 0
  %1907 = getelementptr inbounds %struct.LIST, %struct.LIST* %1906, i32 0, i32 0
  %1908 = load %union.rec*, %union.rec** %1907, align 8
  store %union.rec* %1908, %union.rec** %dest_encl, align 8
  br label %1909

; <label>:1909                                    ; preds = %1919, %1897
  %1910 = load %union.rec*, %union.rec** %dest_encl, align 8
  %1911 = bitcast %union.rec* %1910 to %struct.word_type*
  %1912 = getelementptr inbounds %struct.word_type, %struct.word_type* %1911, i32 0, i32 1
  %1913 = bitcast %union.FIRST_UNION* %1912 to %struct.anon*
  %1914 = getelementptr inbounds %struct.anon, %struct.anon* %1913, i32 0, i32 0
  %1915 = load i8, i8* %1914, align 1
  %1916 = zext i8 %1915 to i32
  %1917 = icmp eq i32 %1916, 0
  br i1 %1917, label %1918, label %1926

; <label>:1918                                    ; preds = %1909
  br label %1919

; <label>:1919                                    ; preds = %1918
  %1920 = load %union.rec*, %union.rec** %dest_encl, align 8
  %1921 = bitcast %union.rec* %1920 to %struct.word_type*
  %1922 = getelementptr inbounds %struct.word_type, %struct.word_type* %1921, i32 0, i32 0
  %1923 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1922, i32 0, i64 0
  %1924 = getelementptr inbounds %struct.LIST, %struct.LIST* %1923, i32 0, i32 0
  %1925 = load %union.rec*, %union.rec** %1924, align 8
  store %union.rec* %1925, %union.rec** %dest_encl, align 8
  br label %1909

; <label>:1926                                    ; preds = %1909
  %1927 = load i32, i32* %dim, align 4
  %1928 = icmp eq i32 %1927, 1
  br i1 %1928, label %1929, label %1938

; <label>:1929                                    ; preds = %1926
  %1930 = load %union.rec*, %union.rec** %dest_encl, align 8
  %1931 = bitcast %union.rec* %1930 to %struct.word_type*
  %1932 = getelementptr inbounds %struct.word_type, %struct.word_type* %1931, i32 0, i32 1
  %1933 = bitcast %union.FIRST_UNION* %1932 to %struct.anon*
  %1934 = getelementptr inbounds %struct.anon, %struct.anon* %1933, i32 0, i32 0
  %1935 = load i8, i8* %1934, align 1
  %1936 = zext i8 %1935 to i32
  %1937 = icmp eq i32 %1936, 19
  br i1 %1937, label %1953, label %1938

; <label>:1938                                    ; preds = %1929, %1926
  %1939 = load i32, i32* %dim, align 4
  %1940 = icmp eq i32 %1939, 0
  br i1 %1940, label %1941, label %1950

; <label>:1941                                    ; preds = %1938
  %1942 = load %union.rec*, %union.rec** %dest_encl, align 8
  %1943 = bitcast %union.rec* %1942 to %struct.word_type*
  %1944 = getelementptr inbounds %struct.word_type, %struct.word_type* %1943, i32 0, i32 1
  %1945 = bitcast %union.FIRST_UNION* %1944 to %struct.anon*
  %1946 = getelementptr inbounds %struct.anon, %struct.anon* %1945, i32 0, i32 0
  %1947 = load i8, i8* %1946, align 1
  %1948 = zext i8 %1947 to i32
  %1949 = icmp eq i32 %1948, 17
  br i1 %1949, label %1953, label %1950

; <label>:1950                                    ; preds = %1941, %1938
  %1951 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1952 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1951, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0))
  br label %1953

; <label>:1953                                    ; preds = %1950, %1941, %1929
  %1954 = load %union.rec*, %union.rec** %dest, align 8
  %1955 = bitcast %union.rec* %1954 to %struct.word_type*
  %1956 = getelementptr inbounds %struct.word_type, %struct.word_type* %1955, i32 0, i32 0
  %1957 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1956, i32 0, i64 1
  %1958 = getelementptr inbounds %struct.LIST, %struct.LIST* %1957, i32 0, i32 1
  %1959 = load %union.rec*, %union.rec** %1958, align 8
  call void @SetNeighbours(%union.rec* %1959, i32 0, %union.rec** %prec_gap, %union.rec** %prec_def, %union.rec** %succ_gap, %union.rec** %succ_def, i32* %dest_side)
  %1960 = load %union.rec*, %union.rec** %prec_gap, align 8
  %1961 = icmp ne %union.rec* %1960, null
  br i1 %1961, label %1983, label %1962

; <label>:1962                                    ; preds = %1953
  %1963 = load %union.rec*, %union.rec** %y, align 8
  %1964 = bitcast %union.rec* %1963 to %struct.word_type*
  %1965 = getelementptr inbounds %struct.word_type, %struct.word_type* %1964, i32 0, i32 1
  %1966 = bitcast %union.FIRST_UNION* %1965 to %struct.anon*
  %1967 = getelementptr inbounds %struct.anon, %struct.anon* %1966, i32 0, i32 0
  %1968 = load i8, i8* %1967, align 1
  %1969 = zext i8 %1968 to i32
  %1970 = icmp sge i32 %1969, 2
  br i1 %1970, label %1971, label %1980

; <label>:1971                                    ; preds = %1962
  %1972 = load %union.rec*, %union.rec** %y, align 8
  %1973 = bitcast %union.rec* %1972 to %struct.word_type*
  %1974 = getelementptr inbounds %struct.word_type, %struct.word_type* %1973, i32 0, i32 1
  %1975 = bitcast %union.FIRST_UNION* %1974 to %struct.anon*
  %1976 = getelementptr inbounds %struct.anon, %struct.anon* %1975, i32 0, i32 0
  %1977 = load i8, i8* %1976, align 1
  %1978 = zext i8 %1977 to i32
  %1979 = icmp sle i32 %1978, 8
  br i1 %1979, label %1983, label %1980

; <label>:1980                                    ; preds = %1971, %1962
  %1981 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1982 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1981, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i32 0, i32 0))
  br label %1983

; <label>:1983                                    ; preds = %1980, %1971, %1953
  %1984 = load %union.rec*, %union.rec** %succ_gap, align 8
  %1985 = icmp eq %union.rec* %1984, null
  br i1 %1985, label %1989, label %1986

; <label>:1986                                    ; preds = %1983
  %1987 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1988 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1987, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0))
  br label %1989

; <label>:1989                                    ; preds = %1986, %1983
  %1990 = load i32, i32* %dest_side, align 4
  %1991 = icmp eq i32 %1990, 153
  br i1 %1991, label %2013, label %1992

; <label>:1992                                    ; preds = %1989
  %1993 = load %union.rec*, %union.rec** %y, align 8
  %1994 = bitcast %union.rec* %1993 to %struct.word_type*
  %1995 = getelementptr inbounds %struct.word_type, %struct.word_type* %1994, i32 0, i32 1
  %1996 = bitcast %union.FIRST_UNION* %1995 to %struct.anon*
  %1997 = getelementptr inbounds %struct.anon, %struct.anon* %1996, i32 0, i32 0
  %1998 = load i8, i8* %1997, align 1
  %1999 = zext i8 %1998 to i32
  %2000 = icmp sge i32 %1999, 2
  br i1 %2000, label %2001, label %2010

; <label>:2001                                    ; preds = %1992
  %2002 = load %union.rec*, %union.rec** %y, align 8
  %2003 = bitcast %union.rec* %2002 to %struct.word_type*
  %2004 = getelementptr inbounds %struct.word_type, %struct.word_type* %2003, i32 0, i32 1
  %2005 = bitcast %union.FIRST_UNION* %2004 to %struct.anon*
  %2006 = getelementptr inbounds %struct.anon, %struct.anon* %2005, i32 0, i32 0
  %2007 = load i8, i8* %2006, align 1
  %2008 = zext i8 %2007 to i32
  %2009 = icmp sle i32 %2008, 8
  br i1 %2009, label %2013, label %2010

; <label>:2010                                    ; preds = %2001, %1992
  %2011 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2012 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2011, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.15, i32 0, i32 0))
  br label %2013

; <label>:2013                                    ; preds = %2010, %2001, %1989
  %2014 = load i32, i32* %dim, align 4
  %2015 = sext i32 %2014 to i64
  %2016 = load %union.rec*, %union.rec** %dest_encl, align 8
  %2017 = bitcast %union.rec* %2016 to %struct.word_type*
  %2018 = getelementptr inbounds %struct.word_type, %struct.word_type* %2017, i32 0, i32 3
  %2019 = bitcast %union.THIRD_UNION* %2018 to %struct.anon.6*
  %2020 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2019, i32 0, i32 0
  %2021 = getelementptr inbounds [2 x i32], [2 x i32]* %2020, i32 0, i64 %2015
  %2022 = load i32, i32* %2021, align 4
  store i32 %2022, i32* %dest_back, align 4
  %2023 = load i32, i32* %dim, align 4
  %2024 = sext i32 %2023 to i64
  %2025 = load %union.rec*, %union.rec** %dest_encl, align 8
  %2026 = bitcast %union.rec* %2025 to %struct.word_type*
  %2027 = getelementptr inbounds %struct.word_type, %struct.word_type* %2026, i32 0, i32 3
  %2028 = bitcast %union.THIRD_UNION* %2027 to %struct.anon.6*
  %2029 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2028, i32 0, i32 1
  %2030 = getelementptr inbounds [2 x i32], [2 x i32]* %2029, i32 0, i64 %2024
  %2031 = load i32, i32* %2030, align 4
  store i32 %2031, i32* %dest_fwd, align 4
  %2032 = load i32, i32* %dim, align 4
  %2033 = sub nsw i32 1, %2032
  %2034 = sext i32 %2033 to i64
  %2035 = load %union.rec*, %union.rec** %dest_encl, align 8
  %2036 = bitcast %union.rec* %2035 to %struct.word_type*
  %2037 = getelementptr inbounds %struct.word_type, %struct.word_type* %2036, i32 0, i32 3
  %2038 = bitcast %union.THIRD_UNION* %2037 to %struct.anon.6*
  %2039 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2038, i32 0, i32 0
  %2040 = getelementptr inbounds [2 x i32], [2 x i32]* %2039, i32 0, i64 %2034
  %2041 = load i32, i32* %2040, align 4
  store i32 %2041, i32* %perp_back, align 4
  %2042 = load i32, i32* %dim, align 4
  %2043 = sub nsw i32 1, %2042
  %2044 = sext i32 %2043 to i64
  %2045 = load %union.rec*, %union.rec** %dest_encl, align 8
  %2046 = bitcast %union.rec* %2045 to %struct.word_type*
  %2047 = getelementptr inbounds %struct.word_type, %struct.word_type* %2046, i32 0, i32 3
  %2048 = bitcast %union.THIRD_UNION* %2047 to %struct.anon.6*
  %2049 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2048, i32 0, i32 1
  %2050 = getelementptr inbounds [2 x i32], [2 x i32]* %2049, i32 0, i64 %2044
  %2051 = load i32, i32* %2050, align 4
  store i32 %2051, i32* %perp_fwd, align 4
  %2052 = load %union.rec*, %union.rec** %dest_encl, align 8
  %2053 = load i32, i32* %dim, align 4
  call void @Constrained(%union.rec* %2052, %struct.CONSTRAINT* %dest_par_constr, i32 %2053, %union.rec** %why)
  %2054 = load %union.rec*, %union.rec** %dest_encl, align 8
  %2055 = load i32, i32* %dim, align 4
  %2056 = sub nsw i32 1, %2055
  call void @Constrained(%union.rec* %2054, %struct.CONSTRAINT* %dest_perp_constr, i32 %2056, %union.rec** %why)
  %2057 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 0
  %2058 = load i32, i32* %2057, align 4
  %2059 = icmp ne i32 %2058, 8388607
  br i1 %2059, label %2068, label %2060

; <label>:2060                                    ; preds = %2013
  %2061 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 1
  %2062 = load i32, i32* %2061, align 4
  %2063 = icmp ne i32 %2062, 8388607
  br i1 %2063, label %2068, label %2064

; <label>:2064                                    ; preds = %2060
  %2065 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 2
  %2066 = load i32, i32* %2065, align 4
  %2067 = icmp ne i32 %2066, 8388607
  br i1 %2067, label %2068, label %2071

; <label>:2068                                    ; preds = %2064, %2060, %2013
  %2069 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 1
  %2070 = load i32, i32* %2069, align 4
  br label %2072

; <label>:2071                                    ; preds = %2064
  br label %2072

; <label>:2072                                    ; preds = %2071, %2068
  %2073 = phi i32 [ %2070, %2068 ], [ 0, %2071 ]
  store i32 %2073, i32* %frame_size, align 4
  br label %2074

; <label>:2074                                    ; preds = %2072, %1852
  %2075 = load %union.rec*, %union.rec** %y, align 8
  %2076 = bitcast %union.rec* %2075 to %struct.word_type*
  %2077 = getelementptr inbounds %struct.word_type, %struct.word_type* %2076, i32 0, i32 1
  %2078 = bitcast %union.FIRST_UNION* %2077 to %struct.anon*
  %2079 = getelementptr inbounds %struct.anon, %struct.anon* %2078, i32 0, i32 0
  %2080 = load i8, i8* %2079, align 1
  %2081 = zext i8 %2080 to i32
  %2082 = icmp sge i32 %2081, 2
  br i1 %2082, label %2083, label %2092

; <label>:2083                                    ; preds = %2074
  %2084 = load %union.rec*, %union.rec** %y, align 8
  %2085 = bitcast %union.rec* %2084 to %struct.word_type*
  %2086 = getelementptr inbounds %struct.word_type, %struct.word_type* %2085, i32 0, i32 1
  %2087 = bitcast %union.FIRST_UNION* %2086 to %struct.anon*
  %2088 = getelementptr inbounds %struct.anon, %struct.anon* %2087, i32 0, i32 0
  %2089 = load i8, i8* %2088, align 1
  %2090 = zext i8 %2089 to i32
  %2091 = icmp sle i32 %2090, 8
  br i1 %2091, label %2891, label %2092

; <label>:2092                                    ; preds = %2083, %2074
  %2093 = load i32, i32* %dest_fwd, align 4
  %2094 = load i32, i32* %dim, align 4
  %2095 = sext i32 %2094 to i64
  %2096 = load %union.rec*, %union.rec** %y, align 8
  %2097 = bitcast %union.rec* %2096 to %struct.word_type*
  %2098 = getelementptr inbounds %struct.word_type, %struct.word_type* %2097, i32 0, i32 3
  %2099 = bitcast %union.THIRD_UNION* %2098 to %struct.anon.6*
  %2100 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2099, i32 0, i32 1
  %2101 = getelementptr inbounds [2 x i32], [2 x i32]* %2100, i32 0, i64 %2095
  %2102 = load i32, i32* %2101, align 4
  %2103 = add nsw i32 %2093, %2102
  %2104 = load i32, i32* %dim, align 4
  %2105 = sext i32 %2104 to i64
  %2106 = load %union.rec*, %union.rec** %prec_def, align 8
  %2107 = bitcast %union.rec* %2106 to %struct.word_type*
  %2108 = getelementptr inbounds %struct.word_type, %struct.word_type* %2107, i32 0, i32 3
  %2109 = bitcast %union.THIRD_UNION* %2108 to %struct.anon.6*
  %2110 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2109, i32 0, i32 1
  %2111 = getelementptr inbounds [2 x i32], [2 x i32]* %2110, i32 0, i64 %2105
  %2112 = load i32, i32* %2111, align 4
  %2113 = sub nsw i32 %2103, %2112
  %2114 = load i32, i32* %dim, align 4
  %2115 = sext i32 %2114 to i64
  %2116 = load %union.rec*, %union.rec** %prec_def, align 8
  %2117 = bitcast %union.rec* %2116 to %struct.word_type*
  %2118 = getelementptr inbounds %struct.word_type, %struct.word_type* %2117, i32 0, i32 3
  %2119 = bitcast %union.THIRD_UNION* %2118 to %struct.anon.6*
  %2120 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2119, i32 0, i32 1
  %2121 = getelementptr inbounds [2 x i32], [2 x i32]* %2120, i32 0, i64 %2115
  %2122 = load i32, i32* %2121, align 4
  %2123 = load i32, i32* %dim, align 4
  %2124 = sext i32 %2123 to i64
  %2125 = load %union.rec*, %union.rec** %y, align 8
  %2126 = bitcast %union.rec* %2125 to %struct.word_type*
  %2127 = getelementptr inbounds %struct.word_type, %struct.word_type* %2126, i32 0, i32 3
  %2128 = bitcast %union.THIRD_UNION* %2127 to %struct.anon.6*
  %2129 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2128, i32 0, i32 0
  %2130 = getelementptr inbounds [2 x i32], [2 x i32]* %2129, i32 0, i64 %2124
  %2131 = load i32, i32* %2130, align 4
  %2132 = load i32, i32* %dim, align 4
  %2133 = sext i32 %2132 to i64
  %2134 = load %union.rec*, %union.rec** %y, align 8
  %2135 = bitcast %union.rec* %2134 to %struct.word_type*
  %2136 = getelementptr inbounds %struct.word_type, %struct.word_type* %2135, i32 0, i32 3
  %2137 = bitcast %union.THIRD_UNION* %2136 to %struct.anon.6*
  %2138 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2137, i32 0, i32 1
  %2139 = getelementptr inbounds [2 x i32], [2 x i32]* %2138, i32 0, i64 %2133
  %2140 = load i32, i32* %2139, align 4
  %2141 = load %union.rec*, %union.rec** %prec_gap, align 8
  %2142 = bitcast %union.rec* %2141 to %struct.gapobj_type*
  %2143 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2142, i32 0, i32 3
  %2144 = load i32, i32* %frame_size, align 4
  %2145 = load i32, i32* %dest_back, align 4
  %2146 = load i32, i32* %dest_fwd, align 4
  %2147 = add nsw i32 %2145, %2146
  %2148 = load i32, i32* %dim, align 4
  %2149 = sext i32 %2148 to i64
  %2150 = load %union.rec*, %union.rec** %prec_def, align 8
  %2151 = bitcast %union.rec* %2150 to %struct.word_type*
  %2152 = getelementptr inbounds %struct.word_type, %struct.word_type* %2151, i32 0, i32 3
  %2153 = bitcast %union.THIRD_UNION* %2152 to %struct.anon.6*
  %2154 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2153, i32 0, i32 1
  %2155 = getelementptr inbounds [2 x i32], [2 x i32]* %2154, i32 0, i64 %2149
  %2156 = load i32, i32* %2155, align 4
  %2157 = sub nsw i32 %2147, %2156
  %2158 = call i32 @ActualGap(i32 %2122, i32 %2131, i32 %2140, %struct.GAP* %2143, i32 %2144, i32 %2157)
  %2159 = add nsw i32 %2113, %2158
  store i32 %2159, i32* %f, align 4
  %2160 = load %union.rec*, %union.rec** %prec_gap, align 8
  %2161 = bitcast %union.rec* %2160 to %struct.gapobj_type*
  %2162 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2161, i32 0, i32 3
  %2163 = bitcast %struct.GAP* %2162 to i16*
  %2164 = load i16, i16* %2163, align 4
  %2165 = lshr i16 %2164, 10
  %2166 = and i16 %2165, 7
  %2167 = zext i16 %2166 to i32
  %2168 = icmp eq i32 %2167, 2
  br i1 %2168, label %2169, label %2177

; <label>:2169                                    ; preds = %2092
  %2170 = load %union.rec*, %union.rec** %prec_gap, align 8
  %2171 = bitcast %union.rec* %2170 to %struct.gapobj_type*
  %2172 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2171, i32 0, i32 3
  %2173 = getelementptr inbounds %struct.GAP, %struct.GAP* %2172, i32 0, i32 1
  %2174 = load i16, i16* %2173, align 2
  %2175 = sext i16 %2174 to i32
  %2176 = icmp sgt i32 %2175, 4096
  br i1 %2176, label %2206, label %2177

; <label>:2177                                    ; preds = %2169, %2092
  %2178 = load i32, i32* %dest_back, align 4
  %2179 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 0
  %2180 = load i32, i32* %2179, align 4
  %2181 = icmp sle i32 %2178, %2180
  br i1 %2181, label %2182, label %2206

; <label>:2182                                    ; preds = %2177
  %2183 = load i32, i32* %dest_back, align 4
  %2184 = load i32, i32* %f, align 4
  %2185 = add nsw i32 %2183, %2184
  %2186 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 1
  %2187 = load i32, i32* %2186, align 4
  %2188 = icmp sle i32 %2185, %2187
  br i1 %2188, label %2189, label %2206

; <label>:2189                                    ; preds = %2182
  %2190 = load i32, i32* %f, align 4
  %2191 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 2
  %2192 = load i32, i32* %2191, align 4
  %2193 = icmp sle i32 %2190, %2192
  br i1 %2193, label %2194, label %2206

; <label>:2194                                    ; preds = %2189
  %2195 = load %union.rec*, %union.rec** %1, align 8
  %2196 = bitcast %union.rec* %2195 to %struct.head_type*
  %2197 = getelementptr inbounds %struct.head_type, %struct.head_type* %2196, i32 0, i32 8
  %2198 = load %union.rec*, %union.rec** %2197, align 8
  %2199 = icmp ne %union.rec* %2198, null
  br i1 %2199, label %2200, label %2716

; <label>:2200                                    ; preds = %2194
  %2201 = load %union.rec*, %union.rec** %1, align 8
  %2202 = bitcast %union.rec* %2201 to %struct.head_type*
  %2203 = getelementptr inbounds %struct.head_type, %struct.head_type* %2202, i32 0, i32 15
  %2204 = load i32, i32* %2203, align 4
  %2205 = icmp sle i32 %2204, 0
  br i1 %2205, label %2206, label %2716

; <label>:2206                                    ; preds = %2200, %2189, %2182, %2177, %2169
  %2207 = load %union.rec*, %union.rec** %1, align 8
  %2208 = bitcast %union.rec* %2207 to %struct.head_type*
  %2209 = getelementptr inbounds %struct.head_type, %struct.head_type* %2208, i32 0, i32 8
  %2210 = load %union.rec*, %union.rec** %2209, align 8
  %2211 = icmp ne %union.rec* %2210, null
  br i1 %2211, label %2212, label %2715

; <label>:2212                                    ; preds = %2206
  %2213 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 26), align 1
  %2214 = zext i8 %2213 to i32
  store i32 %2214, i32* @zz_size, align 4
  %2215 = sext i32 %2214 to i64
  %2216 = icmp uge i64 %2215, 265
  br i1 %2216, label %2217, label %2220

; <label>:2217                                    ; preds = %2212
  %2218 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2219 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %2218)
  br label %2245

; <label>:2220                                    ; preds = %2212
  %2221 = load i32, i32* @zz_size, align 4
  %2222 = sext i32 %2221 to i64
  %2223 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2222
  %2224 = load %union.rec*, %union.rec** %2223, align 8
  %2225 = icmp eq %union.rec* %2224, null
  br i1 %2225, label %2226, label %2230

; <label>:2226                                    ; preds = %2220
  %2227 = load i32, i32* @zz_size, align 4
  %2228 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2229 = call %union.rec* @GetMemory(i32 %2227, %struct.FILE_POS* %2228)
  store %union.rec* %2229, %union.rec** @zz_hold, align 8
  br label %2244

; <label>:2230                                    ; preds = %2220
  %2231 = load i32, i32* @zz_size, align 4
  %2232 = sext i32 %2231 to i64
  %2233 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2232
  %2234 = load %union.rec*, %union.rec** %2233, align 8
  store %union.rec* %2234, %union.rec** @zz_hold, align 8
  store %union.rec* %2234, %union.rec** @zz_hold, align 8
  %2235 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2236 = bitcast %union.rec* %2235 to %struct.word_type*
  %2237 = getelementptr inbounds %struct.word_type, %struct.word_type* %2236, i32 0, i32 0
  %2238 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2237, i32 0, i64 0
  %2239 = getelementptr inbounds %struct.LIST, %struct.LIST* %2238, i32 0, i32 0
  %2240 = load %union.rec*, %union.rec** %2239, align 8
  %2241 = load i32, i32* @zz_size, align 4
  %2242 = sext i32 %2241 to i64
  %2243 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2242
  store %union.rec* %2240, %union.rec** %2243, align 8
  br label %2244

; <label>:2244                                    ; preds = %2230, %2226
  br label %2245

; <label>:2245                                    ; preds = %2244, %2217
  %2246 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2247 = bitcast %union.rec* %2246 to %struct.word_type*
  %2248 = getelementptr inbounds %struct.word_type, %struct.word_type* %2247, i32 0, i32 1
  %2249 = bitcast %union.FIRST_UNION* %2248 to %struct.anon*
  %2250 = getelementptr inbounds %struct.anon, %struct.anon* %2249, i32 0, i32 0
  store i8 26, i8* %2250, align 1
  %2251 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2253 = bitcast %union.rec* %2252 to %struct.word_type*
  %2254 = getelementptr inbounds %struct.word_type, %struct.word_type* %2253, i32 0, i32 0
  %2255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2254, i32 0, i64 1
  %2256 = getelementptr inbounds %struct.LIST, %struct.LIST* %2255, i32 0, i32 1
  store %union.rec* %2251, %union.rec** %2256, align 8
  %2257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2258 = bitcast %union.rec* %2257 to %struct.word_type*
  %2259 = getelementptr inbounds %struct.word_type, %struct.word_type* %2258, i32 0, i32 0
  %2260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2259, i32 0, i64 1
  %2261 = getelementptr inbounds %struct.LIST, %struct.LIST* %2260, i32 0, i32 0
  store %union.rec* %2251, %union.rec** %2261, align 8
  %2262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2263 = bitcast %union.rec* %2262 to %struct.word_type*
  %2264 = getelementptr inbounds %struct.word_type, %struct.word_type* %2263, i32 0, i32 0
  %2265 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2264, i32 0, i64 0
  %2266 = getelementptr inbounds %struct.LIST, %struct.LIST* %2265, i32 0, i32 1
  store %union.rec* %2251, %union.rec** %2266, align 8
  %2267 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2268 = bitcast %union.rec* %2267 to %struct.word_type*
  %2269 = getelementptr inbounds %struct.word_type, %struct.word_type* %2268, i32 0, i32 0
  %2270 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2269, i32 0, i64 0
  %2271 = getelementptr inbounds %struct.LIST, %struct.LIST* %2270, i32 0, i32 0
  store %union.rec* %2251, %union.rec** %2271, align 8
  store %union.rec* %2251, %union.rec** %z1, align 8
  %2272 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 0
  %2273 = load i32, i32* %2272, align 4
  %2274 = load %union.rec*, %union.rec** %z1, align 8
  %2275 = bitcast %union.rec* %2274 to %struct.closure_type*
  %2276 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2275, i32 0, i32 4
  %2277 = bitcast %union.FOURTH_UNION* %2276 to %struct.CONSTRAINT*
  %2278 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %2277, i32 0, i32 0
  store i32 %2273, i32* %2278, align 4
  %2279 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 1
  %2280 = load i32, i32* %2279, align 4
  %2281 = load %union.rec*, %union.rec** %z1, align 8
  %2282 = bitcast %union.rec* %2281 to %struct.closure_type*
  %2283 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2282, i32 0, i32 4
  %2284 = bitcast %union.FOURTH_UNION* %2283 to %struct.CONSTRAINT*
  %2285 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %2284, i32 0, i32 1
  store i32 %2280, i32* %2285, align 4
  %2286 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 2
  %2287 = load i32, i32* %2286, align 4
  %2288 = load %union.rec*, %union.rec** %z1, align 8
  %2289 = bitcast %union.rec* %2288 to %struct.closure_type*
  %2290 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2289, i32 0, i32 4
  %2291 = bitcast %union.FOURTH_UNION* %2290 to %struct.CONSTRAINT*
  %2292 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %2291, i32 0, i32 2
  store i32 %2287, i32* %2292, align 4
  %2293 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %2294 = zext i8 %2293 to i32
  store i32 %2294, i32* @zz_size, align 4
  %2295 = sext i32 %2294 to i64
  %2296 = icmp uge i64 %2295, 265
  br i1 %2296, label %2297, label %2300

; <label>:2297                                    ; preds = %2245
  %2298 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2299 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %2298)
  br label %2325

; <label>:2300                                    ; preds = %2245
  %2301 = load i32, i32* @zz_size, align 4
  %2302 = sext i32 %2301 to i64
  %2303 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2302
  %2304 = load %union.rec*, %union.rec** %2303, align 8
  %2305 = icmp eq %union.rec* %2304, null
  br i1 %2305, label %2306, label %2310

; <label>:2306                                    ; preds = %2300
  %2307 = load i32, i32* @zz_size, align 4
  %2308 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2309 = call %union.rec* @GetMemory(i32 %2307, %struct.FILE_POS* %2308)
  store %union.rec* %2309, %union.rec** @zz_hold, align 8
  br label %2324

; <label>:2310                                    ; preds = %2300
  %2311 = load i32, i32* @zz_size, align 4
  %2312 = sext i32 %2311 to i64
  %2313 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2312
  %2314 = load %union.rec*, %union.rec** %2313, align 8
  store %union.rec* %2314, %union.rec** @zz_hold, align 8
  store %union.rec* %2314, %union.rec** @zz_hold, align 8
  %2315 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2316 = bitcast %union.rec* %2315 to %struct.word_type*
  %2317 = getelementptr inbounds %struct.word_type, %struct.word_type* %2316, i32 0, i32 0
  %2318 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2317, i32 0, i64 0
  %2319 = getelementptr inbounds %struct.LIST, %struct.LIST* %2318, i32 0, i32 0
  %2320 = load %union.rec*, %union.rec** %2319, align 8
  %2321 = load i32, i32* @zz_size, align 4
  %2322 = sext i32 %2321 to i64
  %2323 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2322
  store %union.rec* %2320, %union.rec** %2323, align 8
  br label %2324

; <label>:2324                                    ; preds = %2310, %2306
  br label %2325

; <label>:2325                                    ; preds = %2324, %2297
  %2326 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2327 = bitcast %union.rec* %2326 to %struct.word_type*
  %2328 = getelementptr inbounds %struct.word_type, %struct.word_type* %2327, i32 0, i32 1
  %2329 = bitcast %union.FIRST_UNION* %2328 to %struct.anon*
  %2330 = getelementptr inbounds %struct.anon, %struct.anon* %2329, i32 0, i32 0
  store i8 0, i8* %2330, align 1
  %2331 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2332 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2333 = bitcast %union.rec* %2332 to %struct.word_type*
  %2334 = getelementptr inbounds %struct.word_type, %struct.word_type* %2333, i32 0, i32 0
  %2335 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2334, i32 0, i64 1
  %2336 = getelementptr inbounds %struct.LIST, %struct.LIST* %2335, i32 0, i32 1
  store %union.rec* %2331, %union.rec** %2336, align 8
  %2337 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2338 = bitcast %union.rec* %2337 to %struct.word_type*
  %2339 = getelementptr inbounds %struct.word_type, %struct.word_type* %2338, i32 0, i32 0
  %2340 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2339, i32 0, i64 1
  %2341 = getelementptr inbounds %struct.LIST, %struct.LIST* %2340, i32 0, i32 0
  store %union.rec* %2331, %union.rec** %2341, align 8
  %2342 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2343 = bitcast %union.rec* %2342 to %struct.word_type*
  %2344 = getelementptr inbounds %struct.word_type, %struct.word_type* %2343, i32 0, i32 0
  %2345 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2344, i32 0, i64 0
  %2346 = getelementptr inbounds %struct.LIST, %struct.LIST* %2345, i32 0, i32 1
  store %union.rec* %2331, %union.rec** %2346, align 8
  %2347 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2348 = bitcast %union.rec* %2347 to %struct.word_type*
  %2349 = getelementptr inbounds %struct.word_type, %struct.word_type* %2348, i32 0, i32 0
  %2350 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2349, i32 0, i64 0
  %2351 = getelementptr inbounds %struct.LIST, %struct.LIST* %2350, i32 0, i32 0
  store %union.rec* %2331, %union.rec** %2351, align 8
  store %union.rec* %2331, %union.rec** @xx_link, align 8
  %2352 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2352, %union.rec** @zz_res, align 8
  %2353 = load %union.rec*, %union.rec** %1, align 8
  %2354 = bitcast %union.rec* %2353 to %struct.head_type*
  %2355 = getelementptr inbounds %struct.head_type, %struct.head_type* %2354, i32 0, i32 9
  %2356 = load %union.rec*, %union.rec** %2355, align 8
  store %union.rec* %2356, %union.rec** @zz_hold, align 8
  %2357 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2358 = icmp eq %union.rec* %2357, null
  br i1 %2358, label %2359, label %2361

; <label>:2359                                    ; preds = %2325
  %2360 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2409

; <label>:2361                                    ; preds = %2325
  %2362 = load %union.rec*, %union.rec** @zz_res, align 8
  %2363 = icmp eq %union.rec* %2362, null
  br i1 %2363, label %2364, label %2366

; <label>:2364                                    ; preds = %2361
  %2365 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2407

; <label>:2366                                    ; preds = %2361
  %2367 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2368 = bitcast %union.rec* %2367 to %struct.word_type*
  %2369 = getelementptr inbounds %struct.word_type, %struct.word_type* %2368, i32 0, i32 0
  %2370 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2369, i32 0, i64 0
  %2371 = getelementptr inbounds %struct.LIST, %struct.LIST* %2370, i32 0, i32 0
  %2372 = load %union.rec*, %union.rec** %2371, align 8
  store %union.rec* %2372, %union.rec** @zz_tmp, align 8
  %2373 = load %union.rec*, %union.rec** @zz_res, align 8
  %2374 = bitcast %union.rec* %2373 to %struct.word_type*
  %2375 = getelementptr inbounds %struct.word_type, %struct.word_type* %2374, i32 0, i32 0
  %2376 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2375, i32 0, i64 0
  %2377 = getelementptr inbounds %struct.LIST, %struct.LIST* %2376, i32 0, i32 0
  %2378 = load %union.rec*, %union.rec** %2377, align 8
  %2379 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2380 = bitcast %union.rec* %2379 to %struct.word_type*
  %2381 = getelementptr inbounds %struct.word_type, %struct.word_type* %2380, i32 0, i32 0
  %2382 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2381, i32 0, i64 0
  %2383 = getelementptr inbounds %struct.LIST, %struct.LIST* %2382, i32 0, i32 0
  store %union.rec* %2378, %union.rec** %2383, align 8
  %2384 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2385 = load %union.rec*, %union.rec** @zz_res, align 8
  %2386 = bitcast %union.rec* %2385 to %struct.word_type*
  %2387 = getelementptr inbounds %struct.word_type, %struct.word_type* %2386, i32 0, i32 0
  %2388 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2387, i32 0, i64 0
  %2389 = getelementptr inbounds %struct.LIST, %struct.LIST* %2388, i32 0, i32 0
  %2390 = load %union.rec*, %union.rec** %2389, align 8
  %2391 = bitcast %union.rec* %2390 to %struct.word_type*
  %2392 = getelementptr inbounds %struct.word_type, %struct.word_type* %2391, i32 0, i32 0
  %2393 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2392, i32 0, i64 0
  %2394 = getelementptr inbounds %struct.LIST, %struct.LIST* %2393, i32 0, i32 1
  store %union.rec* %2384, %union.rec** %2394, align 8
  %2395 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2396 = load %union.rec*, %union.rec** @zz_res, align 8
  %2397 = bitcast %union.rec* %2396 to %struct.word_type*
  %2398 = getelementptr inbounds %struct.word_type, %struct.word_type* %2397, i32 0, i32 0
  %2399 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2398, i32 0, i64 0
  %2400 = getelementptr inbounds %struct.LIST, %struct.LIST* %2399, i32 0, i32 0
  store %union.rec* %2395, %union.rec** %2400, align 8
  %2401 = load %union.rec*, %union.rec** @zz_res, align 8
  %2402 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2403 = bitcast %union.rec* %2402 to %struct.word_type*
  %2404 = getelementptr inbounds %struct.word_type, %struct.word_type* %2403, i32 0, i32 0
  %2405 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2404, i32 0, i64 0
  %2406 = getelementptr inbounds %struct.LIST, %struct.LIST* %2405, i32 0, i32 1
  store %union.rec* %2401, %union.rec** %2406, align 8
  br label %2407

; <label>:2407                                    ; preds = %2366, %2364
  %2408 = phi %union.rec* [ %2365, %2364 ], [ %2401, %2366 ]
  br label %2409

; <label>:2409                                    ; preds = %2407, %2359
  %2410 = phi %union.rec* [ %2360, %2359 ], [ %2408, %2407 ]
  %2411 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2411, %union.rec** @zz_res, align 8
  %2412 = load %union.rec*, %union.rec** %z1, align 8
  store %union.rec* %2412, %union.rec** @zz_hold, align 8
  %2413 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2414 = icmp eq %union.rec* %2413, null
  br i1 %2414, label %2415, label %2417

; <label>:2415                                    ; preds = %2409
  %2416 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2465

; <label>:2417                                    ; preds = %2409
  %2418 = load %union.rec*, %union.rec** @zz_res, align 8
  %2419 = icmp eq %union.rec* %2418, null
  br i1 %2419, label %2420, label %2422

; <label>:2420                                    ; preds = %2417
  %2421 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2463

; <label>:2422                                    ; preds = %2417
  %2423 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2424 = bitcast %union.rec* %2423 to %struct.word_type*
  %2425 = getelementptr inbounds %struct.word_type, %struct.word_type* %2424, i32 0, i32 0
  %2426 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2425, i32 0, i64 1
  %2427 = getelementptr inbounds %struct.LIST, %struct.LIST* %2426, i32 0, i32 0
  %2428 = load %union.rec*, %union.rec** %2427, align 8
  store %union.rec* %2428, %union.rec** @zz_tmp, align 8
  %2429 = load %union.rec*, %union.rec** @zz_res, align 8
  %2430 = bitcast %union.rec* %2429 to %struct.word_type*
  %2431 = getelementptr inbounds %struct.word_type, %struct.word_type* %2430, i32 0, i32 0
  %2432 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2431, i32 0, i64 1
  %2433 = getelementptr inbounds %struct.LIST, %struct.LIST* %2432, i32 0, i32 0
  %2434 = load %union.rec*, %union.rec** %2433, align 8
  %2435 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2436 = bitcast %union.rec* %2435 to %struct.word_type*
  %2437 = getelementptr inbounds %struct.word_type, %struct.word_type* %2436, i32 0, i32 0
  %2438 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2437, i32 0, i64 1
  %2439 = getelementptr inbounds %struct.LIST, %struct.LIST* %2438, i32 0, i32 0
  store %union.rec* %2434, %union.rec** %2439, align 8
  %2440 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2441 = load %union.rec*, %union.rec** @zz_res, align 8
  %2442 = bitcast %union.rec* %2441 to %struct.word_type*
  %2443 = getelementptr inbounds %struct.word_type, %struct.word_type* %2442, i32 0, i32 0
  %2444 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2443, i32 0, i64 1
  %2445 = getelementptr inbounds %struct.LIST, %struct.LIST* %2444, i32 0, i32 0
  %2446 = load %union.rec*, %union.rec** %2445, align 8
  %2447 = bitcast %union.rec* %2446 to %struct.word_type*
  %2448 = getelementptr inbounds %struct.word_type, %struct.word_type* %2447, i32 0, i32 0
  %2449 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2448, i32 0, i64 1
  %2450 = getelementptr inbounds %struct.LIST, %struct.LIST* %2449, i32 0, i32 1
  store %union.rec* %2440, %union.rec** %2450, align 8
  %2451 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2452 = load %union.rec*, %union.rec** @zz_res, align 8
  %2453 = bitcast %union.rec* %2452 to %struct.word_type*
  %2454 = getelementptr inbounds %struct.word_type, %struct.word_type* %2453, i32 0, i32 0
  %2455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2454, i32 0, i64 1
  %2456 = getelementptr inbounds %struct.LIST, %struct.LIST* %2455, i32 0, i32 0
  store %union.rec* %2451, %union.rec** %2456, align 8
  %2457 = load %union.rec*, %union.rec** @zz_res, align 8
  %2458 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2459 = bitcast %union.rec* %2458 to %struct.word_type*
  %2460 = getelementptr inbounds %struct.word_type, %struct.word_type* %2459, i32 0, i32 0
  %2461 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2460, i32 0, i64 1
  %2462 = getelementptr inbounds %struct.LIST, %struct.LIST* %2461, i32 0, i32 1
  store %union.rec* %2457, %union.rec** %2462, align 8
  br label %2463

; <label>:2463                                    ; preds = %2422, %2420
  %2464 = phi %union.rec* [ %2421, %2420 ], [ %2457, %2422 ]
  br label %2465

; <label>:2465                                    ; preds = %2463, %2415
  %2466 = phi %union.rec* [ %2416, %2415 ], [ %2464, %2463 ]
  %2467 = load %union.rec*, %union.rec** %1, align 8
  %2468 = bitcast %union.rec* %2467 to %struct.head_type*
  %2469 = getelementptr inbounds %struct.head_type, %struct.head_type* %2468, i32 0, i32 10
  %2470 = load %union.rec*, %union.rec** %2469, align 8
  %2471 = icmp ne %union.rec* %2470, null
  br i1 %2471, label %2472, label %2710

; <label>:2472                                    ; preds = %2465
  %2473 = load %union.rec*, %union.rec** %1, align 8
  %2474 = bitcast %union.rec* %2473 to %struct.head_type*
  %2475 = getelementptr inbounds %struct.head_type, %struct.head_type* %2474, i32 0, i32 10
  %2476 = load %union.rec*, %union.rec** %2475, align 8
  %2477 = bitcast %union.rec* %2476 to %struct.word_type*
  %2478 = getelementptr inbounds %struct.word_type, %struct.word_type* %2477, i32 0, i32 0
  %2479 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2478, i32 0, i64 0
  %2480 = getelementptr inbounds %struct.LIST, %struct.LIST* %2479, i32 0, i32 1
  %2481 = load %union.rec*, %union.rec** %2480, align 8
  %2482 = load %union.rec*, %union.rec** %1, align 8
  %2483 = bitcast %union.rec* %2482 to %struct.head_type*
  %2484 = getelementptr inbounds %struct.head_type, %struct.head_type* %2483, i32 0, i32 10
  %2485 = load %union.rec*, %union.rec** %2484, align 8
  %2486 = icmp ne %union.rec* %2481, %2485
  br i1 %2486, label %2487, label %2710

; <label>:2487                                    ; preds = %2472
  %2488 = load %union.rec*, %union.rec** %1, align 8
  %2489 = bitcast %union.rec* %2488 to %struct.head_type*
  %2490 = getelementptr inbounds %struct.head_type, %struct.head_type* %2489, i32 0, i32 10
  %2491 = load %union.rec*, %union.rec** %2490, align 8
  %2492 = bitcast %union.rec* %2491 to %struct.word_type*
  %2493 = getelementptr inbounds %struct.word_type, %struct.word_type* %2492, i32 0, i32 0
  %2494 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2493, i32 0, i64 0
  %2495 = getelementptr inbounds %struct.LIST, %struct.LIST* %2494, i32 0, i32 1
  %2496 = load %union.rec*, %union.rec** %2495, align 8
  %2497 = bitcast %union.rec* %2496 to %struct.word_type*
  %2498 = getelementptr inbounds %struct.word_type, %struct.word_type* %2497, i32 0, i32 0
  %2499 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2498, i32 0, i64 1
  %2500 = getelementptr inbounds %struct.LIST, %struct.LIST* %2499, i32 0, i32 0
  %2501 = load %union.rec*, %union.rec** %2500, align 8
  store %union.rec* %2501, %union.rec** %z1, align 8
  br label %2502

; <label>:2502                                    ; preds = %2512, %2487
  %2503 = load %union.rec*, %union.rec** %z1, align 8
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
  %2513 = load %union.rec*, %union.rec** %z1, align 8
  %2514 = bitcast %union.rec* %2513 to %struct.word_type*
  %2515 = getelementptr inbounds %struct.word_type, %struct.word_type* %2514, i32 0, i32 0
  %2516 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2515, i32 0, i64 1
  %2517 = getelementptr inbounds %struct.LIST, %struct.LIST* %2516, i32 0, i32 0
  %2518 = load %union.rec*, %union.rec** %2517, align 8
  store %union.rec* %2518, %union.rec** %z1, align 8
  br label %2502

; <label>:2519                                    ; preds = %2502
  %2520 = load %union.rec*, %union.rec** %z1, align 8
  %2521 = bitcast %union.rec* %2520 to %struct.word_type*
  %2522 = getelementptr inbounds %struct.word_type, %struct.word_type* %2521, i32 0, i32 3
  %2523 = bitcast %union.THIRD_UNION* %2522 to %struct.anon.6*
  %2524 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2523, i32 0, i32 0
  %2525 = getelementptr inbounds [2 x i32], [2 x i32]* %2524, i32 0, i64 0
  %2526 = load i32, i32* %2525, align 4
  %2527 = sub nsw i32 %2526, 1
  %2528 = load %union.rec*, %union.rec** %1, align 8
  %2529 = bitcast %union.rec* %2528 to %struct.head_type*
  %2530 = getelementptr inbounds %struct.head_type, %struct.head_type* %2529, i32 0, i32 15
  %2531 = load i32, i32* %2530, align 4
  %2532 = add nsw i32 %2531, %2527
  store i32 %2532, i32* %2530, align 4
  %2533 = load %union.rec*, %union.rec** %z1, align 8
  %2534 = bitcast %union.rec* %2533 to %struct.word_type*
  %2535 = getelementptr inbounds %struct.word_type, %struct.word_type* %2534, i32 0, i32 0
  %2536 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2535, i32 0, i64 1
  %2537 = getelementptr inbounds %struct.LIST, %struct.LIST* %2536, i32 0, i32 1
  %2538 = load %union.rec*, %union.rec** %2537, align 8
  store %union.rec* %2538, %union.rec** @xx_link, align 8
  %2539 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2539, %union.rec** @zz_hold, align 8
  %2540 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2541 = bitcast %union.rec* %2540 to %struct.word_type*
  %2542 = getelementptr inbounds %struct.word_type, %struct.word_type* %2541, i32 0, i32 0
  %2543 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2542, i32 0, i64 1
  %2544 = getelementptr inbounds %struct.LIST, %struct.LIST* %2543, i32 0, i32 1
  %2545 = load %union.rec*, %union.rec** %2544, align 8
  %2546 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2547 = icmp eq %union.rec* %2545, %2546
  br i1 %2547, label %2548, label %2549

; <label>:2548                                    ; preds = %2519
  br label %2590

; <label>:2549                                    ; preds = %2519
  %2550 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2551 = bitcast %union.rec* %2550 to %struct.word_type*
  %2552 = getelementptr inbounds %struct.word_type, %struct.word_type* %2551, i32 0, i32 0
  %2553 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2552, i32 0, i64 1
  %2554 = getelementptr inbounds %struct.LIST, %struct.LIST* %2553, i32 0, i32 1
  %2555 = load %union.rec*, %union.rec** %2554, align 8
  store %union.rec* %2555, %union.rec** @zz_res, align 8
  %2556 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2557 = bitcast %union.rec* %2556 to %struct.word_type*
  %2558 = getelementptr inbounds %struct.word_type, %struct.word_type* %2557, i32 0, i32 0
  %2559 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2558, i32 0, i64 1
  %2560 = getelementptr inbounds %struct.LIST, %struct.LIST* %2559, i32 0, i32 0
  %2561 = load %union.rec*, %union.rec** %2560, align 8
  %2562 = load %union.rec*, %union.rec** @zz_res, align 8
  %2563 = bitcast %union.rec* %2562 to %struct.word_type*
  %2564 = getelementptr inbounds %struct.word_type, %struct.word_type* %2563, i32 0, i32 0
  %2565 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2564, i32 0, i64 1
  %2566 = getelementptr inbounds %struct.LIST, %struct.LIST* %2565, i32 0, i32 0
  store %union.rec* %2561, %union.rec** %2566, align 8
  %2567 = load %union.rec*, %union.rec** @zz_res, align 8
  %2568 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2569 = bitcast %union.rec* %2568 to %struct.word_type*
  %2570 = getelementptr inbounds %struct.word_type, %struct.word_type* %2569, i32 0, i32 0
  %2571 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2570, i32 0, i64 1
  %2572 = getelementptr inbounds %struct.LIST, %struct.LIST* %2571, i32 0, i32 0
  %2573 = load %union.rec*, %union.rec** %2572, align 8
  %2574 = bitcast %union.rec* %2573 to %struct.word_type*
  %2575 = getelementptr inbounds %struct.word_type, %struct.word_type* %2574, i32 0, i32 0
  %2576 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2575, i32 0, i64 1
  %2577 = getelementptr inbounds %struct.LIST, %struct.LIST* %2576, i32 0, i32 1
  store %union.rec* %2567, %union.rec** %2577, align 8
  %2578 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2579 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2580 = bitcast %union.rec* %2579 to %struct.word_type*
  %2581 = getelementptr inbounds %struct.word_type, %struct.word_type* %2580, i32 0, i32 0
  %2582 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2581, i32 0, i64 1
  %2583 = getelementptr inbounds %struct.LIST, %struct.LIST* %2582, i32 0, i32 1
  store %union.rec* %2578, %union.rec** %2583, align 8
  %2584 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2585 = bitcast %union.rec* %2584 to %struct.word_type*
  %2586 = getelementptr inbounds %struct.word_type, %struct.word_type* %2585, i32 0, i32 0
  %2587 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2586, i32 0, i64 1
  %2588 = getelementptr inbounds %struct.LIST, %struct.LIST* %2587, i32 0, i32 0
  store %union.rec* %2578, %union.rec** %2588, align 8
  %2589 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2590

; <label>:2590                                    ; preds = %2549, %2548
  %2591 = phi %union.rec* [ null, %2548 ], [ %2589, %2549 ]
  store %union.rec* %2591, %union.rec** @xx_tmp, align 8
  %2592 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2592, %union.rec** @zz_hold, align 8
  %2593 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2594 = bitcast %union.rec* %2593 to %struct.word_type*
  %2595 = getelementptr inbounds %struct.word_type, %struct.word_type* %2594, i32 0, i32 0
  %2596 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2595, i32 0, i64 0
  %2597 = getelementptr inbounds %struct.LIST, %struct.LIST* %2596, i32 0, i32 1
  %2598 = load %union.rec*, %union.rec** %2597, align 8
  %2599 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2600 = icmp eq %union.rec* %2598, %2599
  br i1 %2600, label %2601, label %2602

; <label>:2601                                    ; preds = %2590
  br label %2643

; <label>:2602                                    ; preds = %2590
  %2603 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2604 = bitcast %union.rec* %2603 to %struct.word_type*
  %2605 = getelementptr inbounds %struct.word_type, %struct.word_type* %2604, i32 0, i32 0
  %2606 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2605, i32 0, i64 0
  %2607 = getelementptr inbounds %struct.LIST, %struct.LIST* %2606, i32 0, i32 1
  %2608 = load %union.rec*, %union.rec** %2607, align 8
  store %union.rec* %2608, %union.rec** @zz_res, align 8
  %2609 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2610 = bitcast %union.rec* %2609 to %struct.word_type*
  %2611 = getelementptr inbounds %struct.word_type, %struct.word_type* %2610, i32 0, i32 0
  %2612 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2611, i32 0, i64 0
  %2613 = getelementptr inbounds %struct.LIST, %struct.LIST* %2612, i32 0, i32 0
  %2614 = load %union.rec*, %union.rec** %2613, align 8
  %2615 = load %union.rec*, %union.rec** @zz_res, align 8
  %2616 = bitcast %union.rec* %2615 to %struct.word_type*
  %2617 = getelementptr inbounds %struct.word_type, %struct.word_type* %2616, i32 0, i32 0
  %2618 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2617, i32 0, i64 0
  %2619 = getelementptr inbounds %struct.LIST, %struct.LIST* %2618, i32 0, i32 0
  store %union.rec* %2614, %union.rec** %2619, align 8
  %2620 = load %union.rec*, %union.rec** @zz_res, align 8
  %2621 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2622 = bitcast %union.rec* %2621 to %struct.word_type*
  %2623 = getelementptr inbounds %struct.word_type, %struct.word_type* %2622, i32 0, i32 0
  %2624 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2623, i32 0, i64 0
  %2625 = getelementptr inbounds %struct.LIST, %struct.LIST* %2624, i32 0, i32 0
  %2626 = load %union.rec*, %union.rec** %2625, align 8
  %2627 = bitcast %union.rec* %2626 to %struct.word_type*
  %2628 = getelementptr inbounds %struct.word_type, %struct.word_type* %2627, i32 0, i32 0
  %2629 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2628, i32 0, i64 0
  %2630 = getelementptr inbounds %struct.LIST, %struct.LIST* %2629, i32 0, i32 1
  store %union.rec* %2620, %union.rec** %2630, align 8
  %2631 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2632 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2633 = bitcast %union.rec* %2632 to %struct.word_type*
  %2634 = getelementptr inbounds %struct.word_type, %struct.word_type* %2633, i32 0, i32 0
  %2635 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2634, i32 0, i64 0
  %2636 = getelementptr inbounds %struct.LIST, %struct.LIST* %2635, i32 0, i32 1
  store %union.rec* %2631, %union.rec** %2636, align 8
  %2637 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2638 = bitcast %union.rec* %2637 to %struct.word_type*
  %2639 = getelementptr inbounds %struct.word_type, %struct.word_type* %2638, i32 0, i32 0
  %2640 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2639, i32 0, i64 0
  %2641 = getelementptr inbounds %struct.LIST, %struct.LIST* %2640, i32 0, i32 0
  store %union.rec* %2631, %union.rec** %2641, align 8
  %2642 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2643

; <label>:2643                                    ; preds = %2602, %2601
  %2644 = phi %union.rec* [ null, %2601 ], [ %2642, %2602 ]
  %2645 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2645, %union.rec** @zz_hold, align 8
  %2646 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2646, %union.rec** @zz_hold, align 8
  %2647 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2648 = bitcast %union.rec* %2647 to %struct.word_type*
  %2649 = getelementptr inbounds %struct.word_type, %struct.word_type* %2648, i32 0, i32 1
  %2650 = bitcast %union.FIRST_UNION* %2649 to %struct.anon*
  %2651 = getelementptr inbounds %struct.anon, %struct.anon* %2650, i32 0, i32 0
  %2652 = load i8, i8* %2651, align 1
  %2653 = zext i8 %2652 to i32
  %2654 = icmp eq i32 %2653, 11
  br i1 %2654, label %2664, label %2655

; <label>:2655                                    ; preds = %2643
  %2656 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2657 = bitcast %union.rec* %2656 to %struct.word_type*
  %2658 = getelementptr inbounds %struct.word_type, %struct.word_type* %2657, i32 0, i32 1
  %2659 = bitcast %union.FIRST_UNION* %2658 to %struct.anon*
  %2660 = getelementptr inbounds %struct.anon, %struct.anon* %2659, i32 0, i32 0
  %2661 = load i8, i8* %2660, align 1
  %2662 = zext i8 %2661 to i32
  %2663 = icmp eq i32 %2662, 12
  br i1 %2663, label %2664, label %2672

; <label>:2664                                    ; preds = %2655, %2643
  %2665 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2666 = bitcast %union.rec* %2665 to %struct.word_type*
  %2667 = getelementptr inbounds %struct.word_type, %struct.word_type* %2666, i32 0, i32 1
  %2668 = bitcast %union.FIRST_UNION* %2667 to %struct.anon*
  %2669 = getelementptr inbounds %struct.anon, %struct.anon* %2668, i32 0, i32 1
  %2670 = load i8, i8* %2669, align 1
  %2671 = zext i8 %2670 to i32
  br label %2683

; <label>:2672                                    ; preds = %2655
  %2673 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2674 = bitcast %union.rec* %2673 to %struct.word_type*
  %2675 = getelementptr inbounds %struct.word_type, %struct.word_type* %2674, i32 0, i32 1
  %2676 = bitcast %union.FIRST_UNION* %2675 to %struct.anon*
  %2677 = getelementptr inbounds %struct.anon, %struct.anon* %2676, i32 0, i32 0
  %2678 = load i8, i8* %2677, align 1
  %2679 = zext i8 %2678 to i64
  %2680 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %2679
  %2681 = load i8, i8* %2680, align 1
  %2682 = zext i8 %2681 to i32
  br label %2683

; <label>:2683                                    ; preds = %2672, %2664
  %2684 = phi i32 [ %2671, %2664 ], [ %2682, %2672 ]
  store i32 %2684, i32* @zz_size, align 4
  %2685 = load i32, i32* @zz_size, align 4
  %2686 = sext i32 %2685 to i64
  %2687 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2686
  %2688 = load %union.rec*, %union.rec** %2687, align 8
  %2689 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2690 = bitcast %union.rec* %2689 to %struct.word_type*
  %2691 = getelementptr inbounds %struct.word_type, %struct.word_type* %2690, i32 0, i32 0
  %2692 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2691, i32 0, i64 0
  %2693 = getelementptr inbounds %struct.LIST, %struct.LIST* %2692, i32 0, i32 0
  store %union.rec* %2688, %union.rec** %2693, align 8
  %2694 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2695 = load i32, i32* @zz_size, align 4
  %2696 = sext i32 %2695 to i64
  %2697 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2696
  store %union.rec* %2694, %union.rec** %2697, align 8
  %2698 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %2699 = bitcast %union.rec* %2698 to %struct.word_type*
  %2700 = getelementptr inbounds %struct.word_type, %struct.word_type* %2699, i32 0, i32 0
  %2701 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2700, i32 0, i64 1
  %2702 = getelementptr inbounds %struct.LIST, %struct.LIST* %2701, i32 0, i32 1
  %2703 = load %union.rec*, %union.rec** %2702, align 8
  %2704 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %2705 = icmp eq %union.rec* %2703, %2704
  br i1 %2705, label %2706, label %2709

; <label>:2706                                    ; preds = %2683
  %2707 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %2708 = call i32 @DisposeObject(%union.rec* %2707)
  br label %2709

; <label>:2709                                    ; preds = %2706, %2683
  br label %2714

; <label>:2710                                    ; preds = %2472, %2465
  %2711 = load %union.rec*, %union.rec** %1, align 8
  %2712 = bitcast %union.rec* %2711 to %struct.head_type*
  %2713 = getelementptr inbounds %struct.head_type, %struct.head_type* %2712, i32 0, i32 15
  store i32 65535, i32* %2713, align 4
  br label %2714

; <label>:2714                                    ; preds = %2710, %2709
  br label %2715

; <label>:2715                                    ; preds = %2714, %2206
  br label %3345

; <label>:2716                                    ; preds = %2200, %2194
  %2717 = load %union.rec*, %union.rec** %1, align 8
  %2718 = bitcast %union.rec* %2717 to %struct.word_type*
  %2719 = getelementptr inbounds %struct.word_type, %struct.word_type* %2718, i32 0, i32 2
  %2720 = bitcast %union.SECOND_UNION* %2719 to %struct.anon.2*
  %2721 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2720, i32 0, i32 2
  %2722 = load i16, i16* %2721, align 2
  %2723 = lshr i16 %2722, 5
  %2724 = and i16 %2723, 1
  %2725 = zext i16 %2724 to i32
  %2726 = icmp ne i32 %2725, 0
  br i1 %2726, label %2727, label %2777

; <label>:2727                                    ; preds = %2716
  store i32 0, i32* %pb, align 4
  %2728 = load i32, i32* %perp_fwd, align 4
  %2729 = load i32, i32* %dim, align 4
  %2730 = sub nsw i32 1, %2729
  %2731 = sext i32 %2730 to i64
  %2732 = load %union.rec*, %union.rec** %y, align 8
  %2733 = bitcast %union.rec* %2732 to %struct.word_type*
  %2734 = getelementptr inbounds %struct.word_type, %struct.word_type* %2733, i32 0, i32 3
  %2735 = bitcast %union.THIRD_UNION* %2734 to %struct.anon.6*
  %2736 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2735, i32 0, i32 0
  %2737 = getelementptr inbounds [2 x i32], [2 x i32]* %2736, i32 0, i64 %2731
  %2738 = load i32, i32* %2737, align 4
  %2739 = load i32, i32* %dim, align 4
  %2740 = sub nsw i32 1, %2739
  %2741 = sext i32 %2740 to i64
  %2742 = load %union.rec*, %union.rec** %y, align 8
  %2743 = bitcast %union.rec* %2742 to %struct.word_type*
  %2744 = getelementptr inbounds %struct.word_type, %struct.word_type* %2743, i32 0, i32 3
  %2745 = bitcast %union.THIRD_UNION* %2744 to %struct.anon.6*
  %2746 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2745, i32 0, i32 1
  %2747 = getelementptr inbounds [2 x i32], [2 x i32]* %2746, i32 0, i64 %2741
  %2748 = load i32, i32* %2747, align 4
  %2749 = add nsw i32 %2738, %2748
  %2750 = icmp slt i32 %2728, %2749
  br i1 %2750, label %2751, label %2773

; <label>:2751                                    ; preds = %2727
  %2752 = load i32, i32* %dim, align 4
  %2753 = sub nsw i32 1, %2752
  %2754 = sext i32 %2753 to i64
  %2755 = load %union.rec*, %union.rec** %y, align 8
  %2756 = bitcast %union.rec* %2755 to %struct.word_type*
  %2757 = getelementptr inbounds %struct.word_type, %struct.word_type* %2756, i32 0, i32 3
  %2758 = bitcast %union.THIRD_UNION* %2757 to %struct.anon.6*
  %2759 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2758, i32 0, i32 0
  %2760 = getelementptr inbounds [2 x i32], [2 x i32]* %2759, i32 0, i64 %2754
  %2761 = load i32, i32* %2760, align 4
  %2762 = load i32, i32* %dim, align 4
  %2763 = sub nsw i32 1, %2762
  %2764 = sext i32 %2763 to i64
  %2765 = load %union.rec*, %union.rec** %y, align 8
  %2766 = bitcast %union.rec* %2765 to %struct.word_type*
  %2767 = getelementptr inbounds %struct.word_type, %struct.word_type* %2766, i32 0, i32 3
  %2768 = bitcast %union.THIRD_UNION* %2767 to %struct.anon.6*
  %2769 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2768, i32 0, i32 1
  %2770 = getelementptr inbounds [2 x i32], [2 x i32]* %2769, i32 0, i64 %2764
  %2771 = load i32, i32* %2770, align 4
  %2772 = add nsw i32 %2761, %2771
  br label %2775

; <label>:2773                                    ; preds = %2727
  %2774 = load i32, i32* %perp_fwd, align 4
  br label %2775

; <label>:2775                                    ; preds = %2773, %2751
  %2776 = phi i32 [ %2772, %2751 ], [ %2774, %2773 ]
  store i32 %2776, i32* %pf, align 4
  br label %2832

; <label>:2777                                    ; preds = %2716
  %2778 = load i32, i32* %perp_back, align 4
  %2779 = load i32, i32* %dim, align 4
  %2780 = sub nsw i32 1, %2779
  %2781 = sext i32 %2780 to i64
  %2782 = load %union.rec*, %union.rec** %y, align 8
  %2783 = bitcast %union.rec* %2782 to %struct.word_type*
  %2784 = getelementptr inbounds %struct.word_type, %struct.word_type* %2783, i32 0, i32 3
  %2785 = bitcast %union.THIRD_UNION* %2784 to %struct.anon.6*
  %2786 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2785, i32 0, i32 0
  %2787 = getelementptr inbounds [2 x i32], [2 x i32]* %2786, i32 0, i64 %2781
  %2788 = load i32, i32* %2787, align 4
  %2789 = icmp slt i32 %2778, %2788
  br i1 %2789, label %2790, label %2801

; <label>:2790                                    ; preds = %2777
  %2791 = load i32, i32* %dim, align 4
  %2792 = sub nsw i32 1, %2791
  %2793 = sext i32 %2792 to i64
  %2794 = load %union.rec*, %union.rec** %y, align 8
  %2795 = bitcast %union.rec* %2794 to %struct.word_type*
  %2796 = getelementptr inbounds %struct.word_type, %struct.word_type* %2795, i32 0, i32 3
  %2797 = bitcast %union.THIRD_UNION* %2796 to %struct.anon.6*
  %2798 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2797, i32 0, i32 0
  %2799 = getelementptr inbounds [2 x i32], [2 x i32]* %2798, i32 0, i64 %2793
  %2800 = load i32, i32* %2799, align 4
  br label %2803

; <label>:2801                                    ; preds = %2777
  %2802 = load i32, i32* %perp_back, align 4
  br label %2803

; <label>:2803                                    ; preds = %2801, %2790
  %2804 = phi i32 [ %2800, %2790 ], [ %2802, %2801 ]
  store i32 %2804, i32* %pb, align 4
  %2805 = load i32, i32* %perp_fwd, align 4
  %2806 = load i32, i32* %dim, align 4
  %2807 = sub nsw i32 1, %2806
  %2808 = sext i32 %2807 to i64
  %2809 = load %union.rec*, %union.rec** %y, align 8
  %2810 = bitcast %union.rec* %2809 to %struct.word_type*
  %2811 = getelementptr inbounds %struct.word_type, %struct.word_type* %2810, i32 0, i32 3
  %2812 = bitcast %union.THIRD_UNION* %2811 to %struct.anon.6*
  %2813 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2812, i32 0, i32 1
  %2814 = getelementptr inbounds [2 x i32], [2 x i32]* %2813, i32 0, i64 %2808
  %2815 = load i32, i32* %2814, align 4
  %2816 = icmp slt i32 %2805, %2815
  br i1 %2816, label %2817, label %2828

; <label>:2817                                    ; preds = %2803
  %2818 = load i32, i32* %dim, align 4
  %2819 = sub nsw i32 1, %2818
  %2820 = sext i32 %2819 to i64
  %2821 = load %union.rec*, %union.rec** %y, align 8
  %2822 = bitcast %union.rec* %2821 to %struct.word_type*
  %2823 = getelementptr inbounds %struct.word_type, %struct.word_type* %2822, i32 0, i32 3
  %2824 = bitcast %union.THIRD_UNION* %2823 to %struct.anon.6*
  %2825 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2824, i32 0, i32 1
  %2826 = getelementptr inbounds [2 x i32], [2 x i32]* %2825, i32 0, i64 %2820
  %2827 = load i32, i32* %2826, align 4
  br label %2830

; <label>:2828                                    ; preds = %2803
  %2829 = load i32, i32* %perp_fwd, align 4
  br label %2830

; <label>:2830                                    ; preds = %2828, %2817
  %2831 = phi i32 [ %2827, %2817 ], [ %2829, %2828 ]
  store i32 %2831, i32* %pf, align 4
  br label %2832

; <label>:2832                                    ; preds = %2830, %2775
  %2833 = load i32, i32* %pb, align 4
  %2834 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_perp_constr, i32 0, i32 0
  %2835 = load i32, i32* %2834, align 4
  %2836 = icmp sle i32 %2833, %2835
  br i1 %2836, label %2837, label %2849

; <label>:2837                                    ; preds = %2832
  %2838 = load i32, i32* %pb, align 4
  %2839 = load i32, i32* %pf, align 4
  %2840 = add nsw i32 %2838, %2839
  %2841 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_perp_constr, i32 0, i32 1
  %2842 = load i32, i32* %2841, align 4
  %2843 = icmp sle i32 %2840, %2842
  br i1 %2843, label %2844, label %2849

; <label>:2844                                    ; preds = %2837
  %2845 = load i32, i32* %pf, align 4
  %2846 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_perp_constr, i32 0, i32 2
  %2847 = load i32, i32* %2846, align 4
  %2848 = icmp sle i32 %2845, %2847
  br i1 %2848, label %2874, label %2849

; <label>:2849                                    ; preds = %2844, %2837, %2832
  %2850 = load %union.rec*, %union.rec** %1, align 8
  %2851 = bitcast %union.rec* %2850 to %struct.head_type*
  %2852 = getelementptr inbounds %struct.head_type, %struct.head_type* %2851, i32 0, i32 8
  %2853 = load %union.rec*, %union.rec** %2852, align 8
  %2854 = icmp ne %union.rec* %2853, null
  br i1 %2854, label %2855, label %2864

; <label>:2855                                    ; preds = %2849
  %2856 = load %union.rec*, %union.rec** %1, align 8
  %2857 = bitcast %union.rec* %2856 to %struct.head_type*
  %2858 = getelementptr inbounds %struct.head_type, %struct.head_type* %2857, i32 0, i32 8
  %2859 = load %union.rec*, %union.rec** %2858, align 8
  %2860 = call i32 @DisposeObject(%union.rec* %2859)
  %2861 = load %union.rec*, %union.rec** %1, align 8
  %2862 = bitcast %union.rec* %2861 to %struct.head_type*
  %2863 = getelementptr inbounds %struct.head_type, %struct.head_type* %2862, i32 0, i32 8
  store %union.rec* null, %union.rec** %2863, align 8
  br label %2864

; <label>:2864                                    ; preds = %2855, %2849
  %2865 = load i32, i32* %dim, align 4
  %2866 = icmp eq i32 %2865, 1
  br i1 %2866, label %2867, label %2873

; <label>:2867                                    ; preds = %2864
  %2868 = load %union.rec*, %union.rec** %y, align 8
  %2869 = bitcast %union.rec* %2868 to %struct.word_type*
  %2870 = getelementptr inbounds %struct.word_type, %struct.word_type* %2869, i32 0, i32 1
  %2871 = bitcast %union.FIRST_UNION* %2870 to %struct.FILE_POS*
  %2872 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 20, i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0), i32 2, %struct.FILE_POS* %2871)
  br label %2873

; <label>:2873                                    ; preds = %2867, %2864
  br label %3345

; <label>:2874                                    ; preds = %2844
  %2875 = load i32, i32* %f, align 4
  store i32 %2875, i32* %dest_fwd, align 4
  %2876 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %2876, %union.rec** %prec_def, align 8
  %2877 = load i32, i32* %pb, align 4
  store i32 %2877, i32* %perp_back, align 4
  %2878 = load i32, i32* %pf, align 4
  store i32 %2878, i32* %perp_fwd, align 4
  store i32 1, i32* %need_adjust, align 4
  %2879 = load %union.rec*, %union.rec** %1, align 8
  %2880 = bitcast %union.rec* %2879 to %struct.head_type*
  %2881 = getelementptr inbounds %struct.head_type, %struct.head_type* %2880, i32 0, i32 8
  %2882 = load %union.rec*, %union.rec** %2881, align 8
  %2883 = icmp ne %union.rec* %2882, null
  br i1 %2883, label %2884, label %2890

; <label>:2884                                    ; preds = %2874
  %2885 = load %union.rec*, %union.rec** %1, align 8
  %2886 = bitcast %union.rec* %2885 to %struct.head_type*
  %2887 = getelementptr inbounds %struct.head_type, %struct.head_type* %2886, i32 0, i32 15
  %2888 = load i32, i32* %2887, align 4
  %2889 = add nsw i32 %2888, -1
  store i32 %2889, i32* %2887, align 4
  br label %2890

; <label>:2890                                    ; preds = %2884, %2874
  br label %2891

; <label>:2891                                    ; preds = %2890, %2083
  br label %2892

; <label>:2892                                    ; preds = %2891, %1849
  %2893 = load i32, i32* %prnt_flush, align 4
  %2894 = icmp ne i32 %2893, 0
  br i1 %2894, label %2906, label %2895

; <label>:2895                                    ; preds = %2892
  %2896 = load %union.rec*, %union.rec** %dest_index, align 8
  %2897 = bitcast %union.rec* %2896 to %struct.word_type*
  %2898 = getelementptr inbounds %struct.word_type, %struct.word_type* %2897, i32 0, i32 2
  %2899 = bitcast %union.SECOND_UNION* %2898 to %struct.anon.2*
  %2900 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2899, i32 0, i32 2
  %2901 = load i16, i16* %2900, align 2
  %2902 = lshr i16 %2901, 5
  %2903 = and i16 %2902, 1
  %2904 = zext i16 %2903 to i32
  %2905 = icmp ne i32 %2904, 0
  br label %2906

; <label>:2906                                    ; preds = %2895, %2892
  %2907 = phi i1 [ true, %2892 ], [ %2905, %2895 ]
  %2908 = zext i1 %2907 to i32
  store i32 %2908, i32* %prnt_flush, align 4
  %2909 = load %union.rec*, %union.rec** %inners, align 8
  %2910 = icmp ne %union.rec* %2909, null
  br i1 %2910, label %2911, label %3007

; <label>:2911                                    ; preds = %2906
  %2912 = load %union.rec*, %union.rec** %link, align 8
  %2913 = bitcast %union.rec* %2912 to %struct.word_type*
  %2914 = getelementptr inbounds %struct.word_type, %struct.word_type* %2913, i32 0, i32 0
  %2915 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2914, i32 0, i64 0
  %2916 = getelementptr inbounds %struct.LIST, %struct.LIST* %2915, i32 0, i32 1
  %2917 = load %union.rec*, %union.rec** %2916, align 8
  %2918 = bitcast %union.rec* %2917 to %struct.word_type*
  %2919 = getelementptr inbounds %struct.word_type, %struct.word_type* %2918, i32 0, i32 1
  %2920 = bitcast %union.FIRST_UNION* %2919 to %struct.anon*
  %2921 = getelementptr inbounds %struct.anon, %struct.anon* %2920, i32 0, i32 0
  %2922 = load i8, i8* %2921, align 1
  %2923 = zext i8 %2922 to i32
  %2924 = icmp eq i32 %2923, 0
  br i1 %2924, label %2925, label %2978

; <label>:2925                                    ; preds = %2911
  %2926 = load %union.rec*, %union.rec** %link, align 8
  %2927 = bitcast %union.rec* %2926 to %struct.word_type*
  %2928 = getelementptr inbounds %struct.word_type, %struct.word_type* %2927, i32 0, i32 0
  %2929 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2928, i32 0, i64 0
  %2930 = getelementptr inbounds %struct.LIST, %struct.LIST* %2929, i32 0, i32 1
  %2931 = load %union.rec*, %union.rec** %2930, align 8
  %2932 = bitcast %union.rec* %2931 to %struct.word_type*
  %2933 = getelementptr inbounds %struct.word_type, %struct.word_type* %2932, i32 0, i32 0
  %2934 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2933, i32 0, i64 1
  %2935 = getelementptr inbounds %struct.LIST, %struct.LIST* %2934, i32 0, i32 0
  %2936 = load %union.rec*, %union.rec** %2935, align 8
  store %union.rec* %2936, %union.rec** %tgp, align 8
  br label %2937

; <label>:2937                                    ; preds = %2947, %2925
  %2938 = load %union.rec*, %union.rec** %tgp, align 8
  %2939 = bitcast %union.rec* %2938 to %struct.word_type*
  %2940 = getelementptr inbounds %struct.word_type, %struct.word_type* %2939, i32 0, i32 1
  %2941 = bitcast %union.FIRST_UNION* %2940 to %struct.anon*
  %2942 = getelementptr inbounds %struct.anon, %struct.anon* %2941, i32 0, i32 0
  %2943 = load i8, i8* %2942, align 1
  %2944 = zext i8 %2943 to i32
  %2945 = icmp eq i32 %2944, 0
  br i1 %2945, label %2946, label %2954

; <label>:2946                                    ; preds = %2937
  br label %2947

; <label>:2947                                    ; preds = %2946
  %2948 = load %union.rec*, %union.rec** %tgp, align 8
  %2949 = bitcast %union.rec* %2948 to %struct.word_type*
  %2950 = getelementptr inbounds %struct.word_type, %struct.word_type* %2949, i32 0, i32 0
  %2951 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2950, i32 0, i64 1
  %2952 = getelementptr inbounds %struct.LIST, %struct.LIST* %2951, i32 0, i32 0
  %2953 = load %union.rec*, %union.rec** %2952, align 8
  store %union.rec* %2953, %union.rec** %tgp, align 8
  br label %2937

; <label>:2954                                    ; preds = %2937
  %2955 = load %union.rec*, %union.rec** %tgp, align 8
  %2956 = bitcast %union.rec* %2955 to %struct.word_type*
  %2957 = getelementptr inbounds %struct.word_type, %struct.word_type* %2956, i32 0, i32 1
  %2958 = bitcast %union.FIRST_UNION* %2957 to %struct.anon*
  %2959 = getelementptr inbounds %struct.anon, %struct.anon* %2958, i32 0, i32 0
  %2960 = load i8, i8* %2959, align 1
  %2961 = zext i8 %2960 to i32
  %2962 = icmp eq i32 %2961, 1
  br i1 %2962, label %2966, label %2963

; <label>:2963                                    ; preds = %2954
  %2964 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2965 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2964, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0))
  br label %2966

; <label>:2966                                    ; preds = %2963, %2954
  %2967 = load %union.rec*, %union.rec** %tgp, align 8
  %2968 = bitcast %union.rec* %2967 to %struct.gapobj_type*
  %2969 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2968, i32 0, i32 3
  %2970 = bitcast %struct.GAP* %2969 to i16*
  %2971 = load i16, i16* %2970, align 4
  %2972 = lshr i16 %2971, 7
  %2973 = and i16 %2972, 1
  %2974 = zext i16 %2973 to i32
  %2975 = icmp ne i32 %2974, 0
  %2976 = xor i1 %2975, true
  %2977 = zext i1 %2976 to i32
  store i32 %2977, i32* %promotable, align 4
  br label %2979

; <label>:2978                                    ; preds = %2911
  store i32 1, i32* %promotable, align 4
  br label %2979

; <label>:2979                                    ; preds = %2978, %2966
  %2980 = load i32, i32* %promotable, align 4
  %2981 = icmp ne i32 %2980, 0
  br i1 %2981, label %2982, label %3006

; <label>:2982                                    ; preds = %2979
  %2983 = load %union.rec*, %union.rec** %1, align 8
  %2984 = load %union.rec*, %union.rec** %link, align 8
  %2985 = bitcast %union.rec* %2984 to %struct.word_type*
  %2986 = getelementptr inbounds %struct.word_type, %struct.word_type* %2985, i32 0, i32 0
  %2987 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2986, i32 0, i64 0
  %2988 = getelementptr inbounds %struct.LIST, %struct.LIST* %2987, i32 0, i32 1
  %2989 = load %union.rec*, %union.rec** %2988, align 8
  %2990 = load %union.rec*, %union.rec** %dest_index, align 8
  call void @Promote(%union.rec* %2983, %union.rec* %2989, %union.rec* %2990, i32 1)
  %2991 = load i32, i32* %need_adjust, align 4
  %2992 = icmp ne i32 %2991, 0
  br i1 %2992, label %2993, label %3003

; <label>:2993                                    ; preds = %2982
  %2994 = load %union.rec*, %union.rec** %dest_encl, align 8
  %2995 = load i32, i32* %dest_back, align 4
  %2996 = load i32, i32* %dest_fwd, align 4
  %2997 = load i32, i32* %dim, align 4
  call void @AdjustSize(%union.rec* %2994, i32 %2995, i32 %2996, i32 %2997)
  %2998 = load %union.rec*, %union.rec** %dest_encl, align 8
  %2999 = load i32, i32* %perp_back, align 4
  %3000 = load i32, i32* %perp_fwd, align 4
  %3001 = load i32, i32* %dim, align 4
  %3002 = sub nsw i32 1, %3001
  call void @AdjustSize(%union.rec* %2998, i32 %2999, i32 %3000, i32 %3002)
  br label %3003

; <label>:3003                                    ; preds = %2993, %2982
  %3004 = load %union.rec*, %union.rec** %inners, align 8
  %3005 = load %union.rec*, %union.rec** %1, align 8
  call void @FlushInners(%union.rec* %3004, %union.rec* %3005)
  br label %11

; <label>:3006                                    ; preds = %2979
  br label %3007

; <label>:3007                                    ; preds = %3006, %2906
  br label %3019

; <label>:3008                                    ; preds = %534
  %3009 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3010 = load %union.rec*, %union.rec** %y, align 8
  %3011 = bitcast %union.rec* %3010 to %struct.word_type*
  %3012 = getelementptr inbounds %struct.word_type, %struct.word_type* %3011, i32 0, i32 1
  %3013 = bitcast %union.FIRST_UNION* %3012 to %struct.anon*
  %3014 = getelementptr inbounds %struct.anon, %struct.anon* %3013, i32 0, i32 0
  %3015 = load i8, i8* %3014, align 1
  %3016 = zext i8 %3015 to i32
  %3017 = call i8* @Image(i32 %3016)
  %3018 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %3009, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* %3017)
  br label %3019

; <label>:3019                                    ; preds = %3008, %3007, %1742, %1741, %1087, %858, %606, %605
  br label %3020

; <label>:3020                                    ; preds = %3019
  %3021 = load %union.rec*, %union.rec** %link, align 8
  %3022 = bitcast %union.rec* %3021 to %struct.word_type*
  %3023 = getelementptr inbounds %struct.word_type, %struct.word_type* %3022, i32 0, i32 0
  %3024 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3023, i32 0, i64 0
  %3025 = getelementptr inbounds %struct.LIST, %struct.LIST* %3024, i32 0, i32 1
  %3026 = load %union.rec*, %union.rec** %3025, align 8
  store %union.rec* %3026, %union.rec** %link, align 8
  br label %455

; <label>:3027                                    ; preds = %455
  %3028 = load %union.rec*, %union.rec** %inners, align 8
  %3029 = icmp ne %union.rec* %3028, null
  br i1 %3029, label %3030, label %3033

; <label>:3030                                    ; preds = %3027
  %3031 = load %union.rec*, %union.rec** %inners, align 8
  %3032 = call i32 @DisposeObject(%union.rec* %3031)
  br label %3033

; <label>:3033                                    ; preds = %3030, %3027
  %3034 = load %union.rec*, %union.rec** %1, align 8
  %3035 = bitcast %union.rec* %3034 to %struct.word_type*
  %3036 = getelementptr inbounds %struct.word_type, %struct.word_type* %3035, i32 0, i32 0
  %3037 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3036, i32 0, i64 0
  %3038 = getelementptr inbounds %struct.LIST, %struct.LIST* %3037, i32 0, i32 1
  %3039 = load %union.rec*, %union.rec** %3038, align 8
  %3040 = load %union.rec*, %union.rec** %1, align 8
  %3041 = icmp ne %union.rec* %3039, %3040
  br i1 %3041, label %3042, label %3059

; <label>:3042                                    ; preds = %3033
  %3043 = load %union.rec*, %union.rec** %1, align 8
  %3044 = load %union.rec*, %union.rec** %1, align 8
  %3045 = load %union.rec*, %union.rec** %dest_index, align 8
  call void @Promote(%union.rec* %3043, %union.rec* %3044, %union.rec* %3045, i32 1)
  %3046 = load i32, i32* %need_adjust, align 4
  %3047 = icmp ne i32 %3046, 0
  br i1 %3047, label %3048, label %3058

; <label>:3048                                    ; preds = %3042
  %3049 = load %union.rec*, %union.rec** %dest_encl, align 8
  %3050 = load i32, i32* %dest_back, align 4
  %3051 = load i32, i32* %dest_fwd, align 4
  %3052 = load i32, i32* %dim, align 4
  call void @AdjustSize(%union.rec* %3049, i32 %3050, i32 %3051, i32 %3052)
  %3053 = load %union.rec*, %union.rec** %dest_encl, align 8
  %3054 = load i32, i32* %perp_back, align 4
  %3055 = load i32, i32* %perp_fwd, align 4
  %3056 = load i32, i32* %dim, align 4
  %3057 = sub nsw i32 1, %3056
  call void @AdjustSize(%union.rec* %3053, i32 %3054, i32 %3055, i32 %3057)
  br label %3058

; <label>:3058                                    ; preds = %3048, %3042
  br label %3059

; <label>:3059                                    ; preds = %3058, %3033
  %3060 = load %union.rec*, %union.rec** %1, align 8
  %3061 = bitcast %union.rec* %3060 to %struct.head_type*
  %3062 = getelementptr inbounds %struct.head_type, %struct.head_type* %3061, i32 0, i32 8
  %3063 = load %union.rec*, %union.rec** %3062, align 8
  %3064 = icmp ne %union.rec* %3063, null
  br i1 %3064, label %3065, label %3340

; <label>:3065                                    ; preds = %3059
  %3066 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 26), align 1
  %3067 = zext i8 %3066 to i32
  store i32 %3067, i32* @zz_size, align 4
  %3068 = sext i32 %3067 to i64
  %3069 = icmp uge i64 %3068, 265
  br i1 %3069, label %3070, label %3073

; <label>:3070                                    ; preds = %3065
  %3071 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3072 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %3071)
  br label %3098

; <label>:3073                                    ; preds = %3065
  %3074 = load i32, i32* @zz_size, align 4
  %3075 = sext i32 %3074 to i64
  %3076 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3075
  %3077 = load %union.rec*, %union.rec** %3076, align 8
  %3078 = icmp eq %union.rec* %3077, null
  br i1 %3078, label %3079, label %3083

; <label>:3079                                    ; preds = %3073
  %3080 = load i32, i32* @zz_size, align 4
  %3081 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3082 = call %union.rec* @GetMemory(i32 %3080, %struct.FILE_POS* %3081)
  store %union.rec* %3082, %union.rec** @zz_hold, align 8
  br label %3097

; <label>:3083                                    ; preds = %3073
  %3084 = load i32, i32* @zz_size, align 4
  %3085 = sext i32 %3084 to i64
  %3086 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3085
  %3087 = load %union.rec*, %union.rec** %3086, align 8
  store %union.rec* %3087, %union.rec** @zz_hold, align 8
  store %union.rec* %3087, %union.rec** @zz_hold, align 8
  %3088 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3089 = bitcast %union.rec* %3088 to %struct.word_type*
  %3090 = getelementptr inbounds %struct.word_type, %struct.word_type* %3089, i32 0, i32 0
  %3091 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3090, i32 0, i64 0
  %3092 = getelementptr inbounds %struct.LIST, %struct.LIST* %3091, i32 0, i32 0
  %3093 = load %union.rec*, %union.rec** %3092, align 8
  %3094 = load i32, i32* @zz_size, align 4
  %3095 = sext i32 %3094 to i64
  %3096 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3095
  store %union.rec* %3093, %union.rec** %3096, align 8
  br label %3097

; <label>:3097                                    ; preds = %3083, %3079
  br label %3098

; <label>:3098                                    ; preds = %3097, %3070
  %3099 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3100 = bitcast %union.rec* %3099 to %struct.word_type*
  %3101 = getelementptr inbounds %struct.word_type, %struct.word_type* %3100, i32 0, i32 1
  %3102 = bitcast %union.FIRST_UNION* %3101 to %struct.anon*
  %3103 = getelementptr inbounds %struct.anon, %struct.anon* %3102, i32 0, i32 0
  store i8 26, i8* %3103, align 1
  %3104 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3106 = bitcast %union.rec* %3105 to %struct.word_type*
  %3107 = getelementptr inbounds %struct.word_type, %struct.word_type* %3106, i32 0, i32 0
  %3108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3107, i32 0, i64 1
  %3109 = getelementptr inbounds %struct.LIST, %struct.LIST* %3108, i32 0, i32 1
  store %union.rec* %3104, %union.rec** %3109, align 8
  %3110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3111 = bitcast %union.rec* %3110 to %struct.word_type*
  %3112 = getelementptr inbounds %struct.word_type, %struct.word_type* %3111, i32 0, i32 0
  %3113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3112, i32 0, i64 1
  %3114 = getelementptr inbounds %struct.LIST, %struct.LIST* %3113, i32 0, i32 0
  store %union.rec* %3104, %union.rec** %3114, align 8
  %3115 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3116 = bitcast %union.rec* %3115 to %struct.word_type*
  %3117 = getelementptr inbounds %struct.word_type, %struct.word_type* %3116, i32 0, i32 0
  %3118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3117, i32 0, i64 0
  %3119 = getelementptr inbounds %struct.LIST, %struct.LIST* %3118, i32 0, i32 1
  store %union.rec* %3104, %union.rec** %3119, align 8
  %3120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3121 = bitcast %union.rec* %3120 to %struct.word_type*
  %3122 = getelementptr inbounds %struct.word_type, %struct.word_type* %3121, i32 0, i32 0
  %3123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3122, i32 0, i64 0
  %3124 = getelementptr inbounds %struct.LIST, %struct.LIST* %3123, i32 0, i32 0
  store %union.rec* %3104, %union.rec** %3124, align 8
  store %union.rec* %3104, %union.rec** %z2, align 8
  %3125 = load %union.rec*, %union.rec** %dest_encl, align 8
  %3126 = icmp ne %union.rec* %3125, null
  br i1 %3126, label %3127, label %3149

; <label>:3127                                    ; preds = %3098
  %3128 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 0
  %3129 = load i32, i32* %3128, align 4
  %3130 = load %union.rec*, %union.rec** %z2, align 8
  %3131 = bitcast %union.rec* %3130 to %struct.closure_type*
  %3132 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3131, i32 0, i32 4
  %3133 = bitcast %union.FOURTH_UNION* %3132 to %struct.CONSTRAINT*
  %3134 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %3133, i32 0, i32 0
  store i32 %3129, i32* %3134, align 4
  %3135 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 1
  %3136 = load i32, i32* %3135, align 4
  %3137 = load %union.rec*, %union.rec** %z2, align 8
  %3138 = bitcast %union.rec* %3137 to %struct.closure_type*
  %3139 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3138, i32 0, i32 4
  %3140 = bitcast %union.FOURTH_UNION* %3139 to %struct.CONSTRAINT*
  %3141 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %3140, i32 0, i32 1
  store i32 %3136, i32* %3141, align 4
  %3142 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 2
  %3143 = load i32, i32* %3142, align 4
  %3144 = load %union.rec*, %union.rec** %z2, align 8
  %3145 = bitcast %union.rec* %3144 to %struct.closure_type*
  %3146 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3145, i32 0, i32 4
  %3147 = bitcast %union.FOURTH_UNION* %3146 to %struct.CONSTRAINT*
  %3148 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %3147, i32 0, i32 2
  store i32 %3143, i32* %3148, align 4
  br label %3165

; <label>:3149                                    ; preds = %3098
  %3150 = load %union.rec*, %union.rec** %z2, align 8
  %3151 = bitcast %union.rec* %3150 to %struct.closure_type*
  %3152 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3151, i32 0, i32 4
  %3153 = bitcast %union.FOURTH_UNION* %3152 to %struct.CONSTRAINT*
  %3154 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %3153, i32 0, i32 0
  store i32 8388607, i32* %3154, align 4
  %3155 = load %union.rec*, %union.rec** %z2, align 8
  %3156 = bitcast %union.rec* %3155 to %struct.closure_type*
  %3157 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3156, i32 0, i32 4
  %3158 = bitcast %union.FOURTH_UNION* %3157 to %struct.CONSTRAINT*
  %3159 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %3158, i32 0, i32 1
  store i32 8388607, i32* %3159, align 4
  %3160 = load %union.rec*, %union.rec** %z2, align 8
  %3161 = bitcast %union.rec* %3160 to %struct.closure_type*
  %3162 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3161, i32 0, i32 4
  %3163 = bitcast %union.FOURTH_UNION* %3162 to %struct.CONSTRAINT*
  %3164 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %3163, i32 0, i32 2
  store i32 8388607, i32* %3164, align 4
  br label %3165

; <label>:3165                                    ; preds = %3149, %3127
  %3166 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %3167 = zext i8 %3166 to i32
  store i32 %3167, i32* @zz_size, align 4
  %3168 = sext i32 %3167 to i64
  %3169 = icmp uge i64 %3168, 265
  br i1 %3169, label %3170, label %3173

; <label>:3170                                    ; preds = %3165
  %3171 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3172 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %3171)
  br label %3198

; <label>:3173                                    ; preds = %3165
  %3174 = load i32, i32* @zz_size, align 4
  %3175 = sext i32 %3174 to i64
  %3176 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3175
  %3177 = load %union.rec*, %union.rec** %3176, align 8
  %3178 = icmp eq %union.rec* %3177, null
  br i1 %3178, label %3179, label %3183

; <label>:3179                                    ; preds = %3173
  %3180 = load i32, i32* @zz_size, align 4
  %3181 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3182 = call %union.rec* @GetMemory(i32 %3180, %struct.FILE_POS* %3181)
  store %union.rec* %3182, %union.rec** @zz_hold, align 8
  br label %3197

; <label>:3183                                    ; preds = %3173
  %3184 = load i32, i32* @zz_size, align 4
  %3185 = sext i32 %3184 to i64
  %3186 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3185
  %3187 = load %union.rec*, %union.rec** %3186, align 8
  store %union.rec* %3187, %union.rec** @zz_hold, align 8
  store %union.rec* %3187, %union.rec** @zz_hold, align 8
  %3188 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3189 = bitcast %union.rec* %3188 to %struct.word_type*
  %3190 = getelementptr inbounds %struct.word_type, %struct.word_type* %3189, i32 0, i32 0
  %3191 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3190, i32 0, i64 0
  %3192 = getelementptr inbounds %struct.LIST, %struct.LIST* %3191, i32 0, i32 0
  %3193 = load %union.rec*, %union.rec** %3192, align 8
  %3194 = load i32, i32* @zz_size, align 4
  %3195 = sext i32 %3194 to i64
  %3196 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3195
  store %union.rec* %3193, %union.rec** %3196, align 8
  br label %3197

; <label>:3197                                    ; preds = %3183, %3179
  br label %3198

; <label>:3198                                    ; preds = %3197, %3170
  %3199 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3200 = bitcast %union.rec* %3199 to %struct.word_type*
  %3201 = getelementptr inbounds %struct.word_type, %struct.word_type* %3200, i32 0, i32 1
  %3202 = bitcast %union.FIRST_UNION* %3201 to %struct.anon*
  %3203 = getelementptr inbounds %struct.anon, %struct.anon* %3202, i32 0, i32 0
  store i8 0, i8* %3203, align 1
  %3204 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3205 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3206 = bitcast %union.rec* %3205 to %struct.word_type*
  %3207 = getelementptr inbounds %struct.word_type, %struct.word_type* %3206, i32 0, i32 0
  %3208 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3207, i32 0, i64 1
  %3209 = getelementptr inbounds %struct.LIST, %struct.LIST* %3208, i32 0, i32 1
  store %union.rec* %3204, %union.rec** %3209, align 8
  %3210 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3211 = bitcast %union.rec* %3210 to %struct.word_type*
  %3212 = getelementptr inbounds %struct.word_type, %struct.word_type* %3211, i32 0, i32 0
  %3213 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3212, i32 0, i64 1
  %3214 = getelementptr inbounds %struct.LIST, %struct.LIST* %3213, i32 0, i32 0
  store %union.rec* %3204, %union.rec** %3214, align 8
  %3215 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3216 = bitcast %union.rec* %3215 to %struct.word_type*
  %3217 = getelementptr inbounds %struct.word_type, %struct.word_type* %3216, i32 0, i32 0
  %3218 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3217, i32 0, i64 0
  %3219 = getelementptr inbounds %struct.LIST, %struct.LIST* %3218, i32 0, i32 1
  store %union.rec* %3204, %union.rec** %3219, align 8
  %3220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3221 = bitcast %union.rec* %3220 to %struct.word_type*
  %3222 = getelementptr inbounds %struct.word_type, %struct.word_type* %3221, i32 0, i32 0
  %3223 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3222, i32 0, i64 0
  %3224 = getelementptr inbounds %struct.LIST, %struct.LIST* %3223, i32 0, i32 0
  store %union.rec* %3204, %union.rec** %3224, align 8
  store %union.rec* %3204, %union.rec** @xx_link, align 8
  %3225 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3225, %union.rec** @zz_res, align 8
  %3226 = load %union.rec*, %union.rec** %1, align 8
  %3227 = bitcast %union.rec* %3226 to %struct.head_type*
  %3228 = getelementptr inbounds %struct.head_type, %struct.head_type* %3227, i32 0, i32 9
  %3229 = load %union.rec*, %union.rec** %3228, align 8
  store %union.rec* %3229, %union.rec** @zz_hold, align 8
  %3230 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3231 = icmp eq %union.rec* %3230, null
  br i1 %3231, label %3232, label %3234

; <label>:3232                                    ; preds = %3198
  %3233 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3282

; <label>:3234                                    ; preds = %3198
  %3235 = load %union.rec*, %union.rec** @zz_res, align 8
  %3236 = icmp eq %union.rec* %3235, null
  br i1 %3236, label %3237, label %3239

; <label>:3237                                    ; preds = %3234
  %3238 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %3280

; <label>:3239                                    ; preds = %3234
  %3240 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3241 = bitcast %union.rec* %3240 to %struct.word_type*
  %3242 = getelementptr inbounds %struct.word_type, %struct.word_type* %3241, i32 0, i32 0
  %3243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3242, i32 0, i64 0
  %3244 = getelementptr inbounds %struct.LIST, %struct.LIST* %3243, i32 0, i32 0
  %3245 = load %union.rec*, %union.rec** %3244, align 8
  store %union.rec* %3245, %union.rec** @zz_tmp, align 8
  %3246 = load %union.rec*, %union.rec** @zz_res, align 8
  %3247 = bitcast %union.rec* %3246 to %struct.word_type*
  %3248 = getelementptr inbounds %struct.word_type, %struct.word_type* %3247, i32 0, i32 0
  %3249 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3248, i32 0, i64 0
  %3250 = getelementptr inbounds %struct.LIST, %struct.LIST* %3249, i32 0, i32 0
  %3251 = load %union.rec*, %union.rec** %3250, align 8
  %3252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3253 = bitcast %union.rec* %3252 to %struct.word_type*
  %3254 = getelementptr inbounds %struct.word_type, %struct.word_type* %3253, i32 0, i32 0
  %3255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3254, i32 0, i64 0
  %3256 = getelementptr inbounds %struct.LIST, %struct.LIST* %3255, i32 0, i32 0
  store %union.rec* %3251, %union.rec** %3256, align 8
  %3257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3258 = load %union.rec*, %union.rec** @zz_res, align 8
  %3259 = bitcast %union.rec* %3258 to %struct.word_type*
  %3260 = getelementptr inbounds %struct.word_type, %struct.word_type* %3259, i32 0, i32 0
  %3261 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3260, i32 0, i64 0
  %3262 = getelementptr inbounds %struct.LIST, %struct.LIST* %3261, i32 0, i32 0
  %3263 = load %union.rec*, %union.rec** %3262, align 8
  %3264 = bitcast %union.rec* %3263 to %struct.word_type*
  %3265 = getelementptr inbounds %struct.word_type, %struct.word_type* %3264, i32 0, i32 0
  %3266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3265, i32 0, i64 0
  %3267 = getelementptr inbounds %struct.LIST, %struct.LIST* %3266, i32 0, i32 1
  store %union.rec* %3257, %union.rec** %3267, align 8
  %3268 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3269 = load %union.rec*, %union.rec** @zz_res, align 8
  %3270 = bitcast %union.rec* %3269 to %struct.word_type*
  %3271 = getelementptr inbounds %struct.word_type, %struct.word_type* %3270, i32 0, i32 0
  %3272 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3271, i32 0, i64 0
  %3273 = getelementptr inbounds %struct.LIST, %struct.LIST* %3272, i32 0, i32 0
  store %union.rec* %3268, %union.rec** %3273, align 8
  %3274 = load %union.rec*, %union.rec** @zz_res, align 8
  %3275 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3276 = bitcast %union.rec* %3275 to %struct.word_type*
  %3277 = getelementptr inbounds %struct.word_type, %struct.word_type* %3276, i32 0, i32 0
  %3278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3277, i32 0, i64 0
  %3279 = getelementptr inbounds %struct.LIST, %struct.LIST* %3278, i32 0, i32 1
  store %union.rec* %3274, %union.rec** %3279, align 8
  br label %3280

; <label>:3280                                    ; preds = %3239, %3237
  %3281 = phi %union.rec* [ %3238, %3237 ], [ %3274, %3239 ]
  br label %3282

; <label>:3282                                    ; preds = %3280, %3232
  %3283 = phi %union.rec* [ %3233, %3232 ], [ %3281, %3280 ]
  %3284 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3284, %union.rec** @zz_res, align 8
  %3285 = load %union.rec*, %union.rec** %z2, align 8
  store %union.rec* %3285, %union.rec** @zz_hold, align 8
  %3286 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3287 = icmp eq %union.rec* %3286, null
  br i1 %3287, label %3288, label %3290

; <label>:3288                                    ; preds = %3282
  %3289 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3338

; <label>:3290                                    ; preds = %3282
  %3291 = load %union.rec*, %union.rec** @zz_res, align 8
  %3292 = icmp eq %union.rec* %3291, null
  br i1 %3292, label %3293, label %3295

; <label>:3293                                    ; preds = %3290
  %3294 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %3336

; <label>:3295                                    ; preds = %3290
  %3296 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3297 = bitcast %union.rec* %3296 to %struct.word_type*
  %3298 = getelementptr inbounds %struct.word_type, %struct.word_type* %3297, i32 0, i32 0
  %3299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3298, i32 0, i64 1
  %3300 = getelementptr inbounds %struct.LIST, %struct.LIST* %3299, i32 0, i32 0
  %3301 = load %union.rec*, %union.rec** %3300, align 8
  store %union.rec* %3301, %union.rec** @zz_tmp, align 8
  %3302 = load %union.rec*, %union.rec** @zz_res, align 8
  %3303 = bitcast %union.rec* %3302 to %struct.word_type*
  %3304 = getelementptr inbounds %struct.word_type, %struct.word_type* %3303, i32 0, i32 0
  %3305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3304, i32 0, i64 1
  %3306 = getelementptr inbounds %struct.LIST, %struct.LIST* %3305, i32 0, i32 0
  %3307 = load %union.rec*, %union.rec** %3306, align 8
  %3308 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3309 = bitcast %union.rec* %3308 to %struct.word_type*
  %3310 = getelementptr inbounds %struct.word_type, %struct.word_type* %3309, i32 0, i32 0
  %3311 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3310, i32 0, i64 1
  %3312 = getelementptr inbounds %struct.LIST, %struct.LIST* %3311, i32 0, i32 0
  store %union.rec* %3307, %union.rec** %3312, align 8
  %3313 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3314 = load %union.rec*, %union.rec** @zz_res, align 8
  %3315 = bitcast %union.rec* %3314 to %struct.word_type*
  %3316 = getelementptr inbounds %struct.word_type, %struct.word_type* %3315, i32 0, i32 0
  %3317 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3316, i32 0, i64 1
  %3318 = getelementptr inbounds %struct.LIST, %struct.LIST* %3317, i32 0, i32 0
  %3319 = load %union.rec*, %union.rec** %3318, align 8
  %3320 = bitcast %union.rec* %3319 to %struct.word_type*
  %3321 = getelementptr inbounds %struct.word_type, %struct.word_type* %3320, i32 0, i32 0
  %3322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3321, i32 0, i64 1
  %3323 = getelementptr inbounds %struct.LIST, %struct.LIST* %3322, i32 0, i32 1
  store %union.rec* %3313, %union.rec** %3323, align 8
  %3324 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3325 = load %union.rec*, %union.rec** @zz_res, align 8
  %3326 = bitcast %union.rec* %3325 to %struct.word_type*
  %3327 = getelementptr inbounds %struct.word_type, %struct.word_type* %3326, i32 0, i32 0
  %3328 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3327, i32 0, i64 1
  %3329 = getelementptr inbounds %struct.LIST, %struct.LIST* %3328, i32 0, i32 0
  store %union.rec* %3324, %union.rec** %3329, align 8
  %3330 = load %union.rec*, %union.rec** @zz_res, align 8
  %3331 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3332 = bitcast %union.rec* %3331 to %struct.word_type*
  %3333 = getelementptr inbounds %struct.word_type, %struct.word_type* %3332, i32 0, i32 0
  %3334 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3333, i32 0, i64 1
  %3335 = getelementptr inbounds %struct.LIST, %struct.LIST* %3334, i32 0, i32 1
  store %union.rec* %3330, %union.rec** %3335, align 8
  br label %3336

; <label>:3336                                    ; preds = %3295, %3293
  %3337 = phi %union.rec* [ %3294, %3293 ], [ %3330, %3295 ]
  br label %3338

; <label>:3338                                    ; preds = %3336, %3288
  %3339 = phi %union.rec* [ %3289, %3288 ], [ %3337, %3336 ]
  br label %3340

; <label>:3340                                    ; preds = %3338, %3059
  %3341 = load %union.rec*, %union.rec** %1, align 8
  call void @DetachGalley(%union.rec* %3341)
  %3342 = load %union.rec*, %union.rec** %1, align 8
  call void @KillGalley(%union.rec* %3342, i32 1)
  %3343 = load i32, i32* %prnt_flush, align 4
  %3344 = load %union.rec*, %union.rec** %dest_index, align 8
  call void @ParentFlush(i32 %3343, %union.rec* %3344, i32 1)
  br label %8771

; <label>:3345                                    ; preds = %2873, %2715, %1740
  %3346 = load %union.rec*, %union.rec** %dest, align 8
  %3347 = bitcast %union.rec* %3346 to %struct.closure_type*
  %3348 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3347, i32 0, i32 5
  %3349 = load %union.rec*, %union.rec** %3348, align 8
  %3350 = load %union.rec*, %union.rec** @PrintSym, align 8
  %3351 = icmp ne %union.rec* %3349, %3350
  br i1 %3351, label %3355, label %3352

; <label>:3352                                    ; preds = %3345
  %3353 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3354 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3353, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0))
  br label %3355

; <label>:3355                                    ; preds = %3352, %3345
  %3356 = load %union.rec*, %union.rec** %inners, align 8
  %3357 = icmp ne %union.rec* %3356, null
  br i1 %3357, label %3358, label %3361

; <label>:3358                                    ; preds = %3355
  %3359 = load %union.rec*, %union.rec** %inners, align 8
  %3360 = call i32 @DisposeObject(%union.rec* %3359)
  br label %3361

; <label>:3361                                    ; preds = %3358, %3355
  %3362 = load %union.rec*, %union.rec** %stop_link, align 8
  %3363 = icmp ne %union.rec* %3362, null
  br i1 %3363, label %3364, label %3381

; <label>:3364                                    ; preds = %3361
  %3365 = load %union.rec*, %union.rec** %1, align 8
  %3366 = load %union.rec*, %union.rec** %stop_link, align 8
  %3367 = load %union.rec*, %union.rec** %dest_index, align 8
  call void @Promote(%union.rec* %3365, %union.rec* %3366, %union.rec* %3367, i32 1)
  %3368 = load i32, i32* %need_adjust, align 4
  %3369 = icmp ne i32 %3368, 0
  br i1 %3369, label %3370, label %3380

; <label>:3370                                    ; preds = %3364
  %3371 = load %union.rec*, %union.rec** %dest_encl, align 8
  %3372 = load i32, i32* %stop_back, align 4
  %3373 = load i32, i32* %stop_fwd, align 4
  %3374 = load i32, i32* %dim, align 4
  call void @AdjustSize(%union.rec* %3371, i32 %3372, i32 %3373, i32 %3374)
  %3375 = load %union.rec*, %union.rec** %dest_encl, align 8
  %3376 = load i32, i32* %stop_perp_back, align 4
  %3377 = load i32, i32* %stop_perp_fwd, align 4
  %3378 = load i32, i32* %dim, align 4
  %3379 = sub nsw i32 1, %3378
  call void @AdjustSize(%union.rec* %3375, i32 %3376, i32 %3377, i32 %3379)
  br label %3380

; <label>:3380                                    ; preds = %3370, %3364
  br label %3381

; <label>:3381                                    ; preds = %3380, %3361
  %3382 = load i32, i32* %target_is_internal, align 4
  %3383 = icmp ne i32 %3382, 0
  br i1 %3383, label %3384, label %3516

; <label>:3384                                    ; preds = %3381
  %3385 = load i32, i32* %headers_seen, align 4
  %3386 = icmp ne i32 %3385, 0
  br i1 %3386, label %3387, label %3516

; <label>:3387                                    ; preds = %3384
  %3388 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %3388, %union.rec** %zlink4, align 8
  br label %3389

; <label>:3389                                    ; preds = %3514, %3387
  %3390 = load %union.rec*, %union.rec** %zlink4, align 8
  %3391 = bitcast %union.rec* %3390 to %struct.word_type*
  %3392 = getelementptr inbounds %struct.word_type, %struct.word_type* %3391, i32 0, i32 0
  %3393 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3392, i32 0, i64 0
  %3394 = getelementptr inbounds %struct.LIST, %struct.LIST* %3393, i32 0, i32 1
  %3395 = load %union.rec*, %union.rec** %3394, align 8
  %3396 = load %union.rec*, %union.rec** %link, align 8
  %3397 = icmp ne %union.rec* %3395, %3396
  br i1 %3397, label %3398, label %3515

; <label>:3398                                    ; preds = %3389
  %3399 = load %union.rec*, %union.rec** %zlink4, align 8
  %3400 = bitcast %union.rec* %3399 to %struct.word_type*
  %3401 = getelementptr inbounds %struct.word_type, %struct.word_type* %3400, i32 0, i32 0
  %3402 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3401, i32 0, i64 0
  %3403 = getelementptr inbounds %struct.LIST, %struct.LIST* %3402, i32 0, i32 1
  %3404 = load %union.rec*, %union.rec** %3403, align 8
  %3405 = bitcast %union.rec* %3404 to %struct.word_type*
  %3406 = getelementptr inbounds %struct.word_type, %struct.word_type* %3405, i32 0, i32 0
  %3407 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3406, i32 0, i64 1
  %3408 = getelementptr inbounds %struct.LIST, %struct.LIST* %3407, i32 0, i32 0
  %3409 = load %union.rec*, %union.rec** %3408, align 8
  store %union.rec* %3409, %union.rec** %z3, align 8
  br label %3410

; <label>:3410                                    ; preds = %3420, %3398
  %3411 = load %union.rec*, %union.rec** %z3, align 8
  %3412 = bitcast %union.rec* %3411 to %struct.word_type*
  %3413 = getelementptr inbounds %struct.word_type, %struct.word_type* %3412, i32 0, i32 1
  %3414 = bitcast %union.FIRST_UNION* %3413 to %struct.anon*
  %3415 = getelementptr inbounds %struct.anon, %struct.anon* %3414, i32 0, i32 0
  %3416 = load i8, i8* %3415, align 1
  %3417 = zext i8 %3416 to i32
  %3418 = icmp eq i32 %3417, 0
  br i1 %3418, label %3419, label %3427

; <label>:3419                                    ; preds = %3410
  br label %3420

; <label>:3420                                    ; preds = %3419
  %3421 = load %union.rec*, %union.rec** %z3, align 8
  %3422 = bitcast %union.rec* %3421 to %struct.word_type*
  %3423 = getelementptr inbounds %struct.word_type, %struct.word_type* %3422, i32 0, i32 0
  %3424 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3423, i32 0, i64 1
  %3425 = getelementptr inbounds %struct.LIST, %struct.LIST* %3424, i32 0, i32 0
  %3426 = load %union.rec*, %union.rec** %3425, align 8
  store %union.rec* %3426, %union.rec** %z3, align 8
  br label %3410

; <label>:3427                                    ; preds = %3410
  %3428 = load %union.rec*, %union.rec** %z3, align 8
  store %union.rec* %3428, %union.rec** %top_z, align 8
  %3429 = load %union.rec*, %union.rec** %z3, align 8
  %3430 = bitcast %union.rec* %3429 to %struct.word_type*
  %3431 = getelementptr inbounds %struct.word_type, %struct.word_type* %3430, i32 0, i32 1
  %3432 = bitcast %union.FIRST_UNION* %3431 to %struct.anon*
  %3433 = getelementptr inbounds %struct.anon, %struct.anon* %3432, i32 0, i32 0
  %3434 = load i8, i8* %3433, align 1
  %3435 = zext i8 %3434 to i32
  %3436 = icmp eq i32 %3435, 9
  br i1 %3436, label %3437, label %3479

; <label>:3437                                    ; preds = %3427
  %3438 = load i32, i32* %dim, align 4
  %3439 = icmp eq i32 %3438, 0
  br i1 %3439, label %3440, label %3447

; <label>:3440                                    ; preds = %3437
  %3441 = load %union.rec*, %union.rec** %z3, align 8
  %3442 = bitcast %union.rec* %3441 to %struct.word_type*
  %3443 = getelementptr inbounds %struct.word_type, %struct.word_type* %3442, i32 0, i32 0
  %3444 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3443, i32 0, i64 0
  %3445 = getelementptr inbounds %struct.LIST, %struct.LIST* %3444, i32 0, i32 1
  %3446 = load %union.rec*, %union.rec** %3445, align 8
  br label %3454

; <label>:3447                                    ; preds = %3437
  %3448 = load %union.rec*, %union.rec** %z3, align 8
  %3449 = bitcast %union.rec* %3448 to %struct.word_type*
  %3450 = getelementptr inbounds %struct.word_type, %struct.word_type* %3449, i32 0, i32 0
  %3451 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3450, i32 0, i64 0
  %3452 = getelementptr inbounds %struct.LIST, %struct.LIST* %3451, i32 0, i32 0
  %3453 = load %union.rec*, %union.rec** %3452, align 8
  br label %3454

; <label>:3454                                    ; preds = %3447, %3440
  %3455 = phi %union.rec* [ %3446, %3440 ], [ %3453, %3447 ]
  %3456 = bitcast %union.rec* %3455 to %struct.word_type*
  %3457 = getelementptr inbounds %struct.word_type, %struct.word_type* %3456, i32 0, i32 0
  %3458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3457, i32 0, i64 1
  %3459 = getelementptr inbounds %struct.LIST, %struct.LIST* %3458, i32 0, i32 0
  %3460 = load %union.rec*, %union.rec** %3459, align 8
  store %union.rec* %3460, %union.rec** %z3, align 8
  br label %3461

; <label>:3461                                    ; preds = %3471, %3454
  %3462 = load %union.rec*, %union.rec** %z3, align 8
  %3463 = bitcast %union.rec* %3462 to %struct.word_type*
  %3464 = getelementptr inbounds %struct.word_type, %struct.word_type* %3463, i32 0, i32 1
  %3465 = bitcast %union.FIRST_UNION* %3464 to %struct.anon*
  %3466 = getelementptr inbounds %struct.anon, %struct.anon* %3465, i32 0, i32 0
  %3467 = load i8, i8* %3466, align 1
  %3468 = zext i8 %3467 to i32
  %3469 = icmp eq i32 %3468, 0
  br i1 %3469, label %3470, label %3478

; <label>:3470                                    ; preds = %3461
  br label %3471

; <label>:3471                                    ; preds = %3470
  %3472 = load %union.rec*, %union.rec** %z3, align 8
  %3473 = bitcast %union.rec* %3472 to %struct.word_type*
  %3474 = getelementptr inbounds %struct.word_type, %struct.word_type* %3473, i32 0, i32 0
  %3475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3474, i32 0, i64 1
  %3476 = getelementptr inbounds %struct.LIST, %struct.LIST* %3475, i32 0, i32 0
  %3477 = load %union.rec*, %union.rec** %3476, align 8
  store %union.rec* %3477, %union.rec** %z3, align 8
  br label %3461

; <label>:3478                                    ; preds = %3461
  br label %3479

; <label>:3479                                    ; preds = %3478, %3427
  %3480 = load %union.rec*, %union.rec** %z3, align 8
  %3481 = bitcast %union.rec* %3480 to %struct.word_type*
  %3482 = getelementptr inbounds %struct.word_type, %struct.word_type* %3481, i32 0, i32 1
  %3483 = bitcast %union.FIRST_UNION* %3482 to %struct.anon*
  %3484 = getelementptr inbounds %struct.anon, %struct.anon* %3483, i32 0, i32 0
  %3485 = load i8, i8* %3484, align 1
  %3486 = zext i8 %3485 to i32
  %3487 = icmp sge i32 %3486, 20
  br i1 %3487, label %3488, label %3507

; <label>:3488                                    ; preds = %3479
  %3489 = load %union.rec*, %union.rec** %z3, align 8
  %3490 = bitcast %union.rec* %3489 to %struct.word_type*
  %3491 = getelementptr inbounds %struct.word_type, %struct.word_type* %3490, i32 0, i32 1
  %3492 = bitcast %union.FIRST_UNION* %3491 to %struct.anon*
  %3493 = getelementptr inbounds %struct.anon, %struct.anon* %3492, i32 0, i32 0
  %3494 = load i8, i8* %3493, align 1
  %3495 = zext i8 %3494 to i32
  %3496 = icmp sle i32 %3495, 23
  br i1 %3496, label %3497, label %3507

; <label>:3497                                    ; preds = %3488
  %3498 = load %union.rec*, %union.rec** %top_z, align 8
  %3499 = load %union.rec*, %union.rec** %z3, align 8
  %3500 = icmp eq %union.rec* %3498, %3499
  br i1 %3500, label %3504, label %3501

; <label>:3501                                    ; preds = %3497
  %3502 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3503 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3502, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i32 0, i32 0))
  br label %3504

; <label>:3504                                    ; preds = %3501, %3497
  %3505 = load %union.rec*, %union.rec** %1, align 8
  %3506 = load %union.rec*, %union.rec** %z3, align 8
  call void @HandleHeader(%union.rec* %3505, %union.rec* %3506)
  br label %3514

; <label>:3507                                    ; preds = %3488, %3479
  %3508 = load %union.rec*, %union.rec** %zlink4, align 8
  %3509 = bitcast %union.rec* %3508 to %struct.word_type*
  %3510 = getelementptr inbounds %struct.word_type, %struct.word_type* %3509, i32 0, i32 0
  %3511 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3510, i32 0, i64 0
  %3512 = getelementptr inbounds %struct.LIST, %struct.LIST* %3511, i32 0, i32 1
  %3513 = load %union.rec*, %union.rec** %3512, align 8
  store %union.rec* %3513, %union.rec** %zlink4, align 8
  br label %3514

; <label>:3514                                    ; preds = %3507, %3504
  br label %3389

; <label>:3515                                    ; preds = %3389
  br label %3516

; <label>:3516                                    ; preds = %3515, %3384, %3381
  %3517 = load %union.rec*, %union.rec** %1, align 8
  %3518 = bitcast %union.rec* %3517 to %struct.head_type*
  %3519 = getelementptr inbounds %struct.head_type, %struct.head_type* %3518, i32 0, i32 13
  %3520 = load %union.rec*, %union.rec** %3519, align 8
  %3521 = icmp ne %union.rec* %3520, null
  br i1 %3521, label %3522, label %3804

; <label>:3522                                    ; preds = %3516
  %3523 = load %union.rec*, %union.rec** %1, align 8
  %3524 = bitcast %union.rec* %3523 to %struct.head_type*
  %3525 = getelementptr inbounds %struct.head_type, %struct.head_type* %3524, i32 0, i32 13
  %3526 = load %union.rec*, %union.rec** %3525, align 8
  %3527 = bitcast %union.rec* %3526 to %struct.word_type*
  %3528 = getelementptr inbounds %struct.word_type, %struct.word_type* %3527, i32 0, i32 0
  %3529 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3528, i32 0, i64 0
  %3530 = getelementptr inbounds %struct.LIST, %struct.LIST* %3529, i32 0, i32 1
  %3531 = load %union.rec*, %union.rec** %3530, align 8
  %3532 = load %union.rec*, %union.rec** %1, align 8
  %3533 = bitcast %union.rec* %3532 to %struct.head_type*
  %3534 = getelementptr inbounds %struct.head_type, %struct.head_type* %3533, i32 0, i32 13
  %3535 = load %union.rec*, %union.rec** %3534, align 8
  %3536 = icmp ne %union.rec* %3531, %3535
  br i1 %3536, label %3540, label %3537

; <label>:3537                                    ; preds = %3522
  %3538 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3539 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3538, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0))
  br label %3540

; <label>:3540                                    ; preds = %3537, %3522
  %3541 = load %union.rec*, %union.rec** %1, align 8
  %3542 = bitcast %union.rec* %3541 to %struct.word_type*
  %3543 = getelementptr inbounds %struct.word_type, %struct.word_type* %3542, i32 0, i32 0
  %3544 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3543, i32 0, i64 0
  %3545 = getelementptr inbounds %struct.LIST, %struct.LIST* %3544, i32 0, i32 1
  %3546 = load %union.rec*, %union.rec** %3545, align 8
  store %union.rec* %3546, %union.rec** %tmp, align 8
  %3547 = load %union.rec*, %union.rec** %tmp, align 8
  %3548 = load %union.rec*, %union.rec** %1, align 8
  %3549 = icmp ne %union.rec* %3547, %3548
  br i1 %3549, label %3553, label %3550

; <label>:3550                                    ; preds = %3540
  %3551 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3552 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3551, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i32 0, i32 0))
  br label %3553

; <label>:3553                                    ; preds = %3550, %3540
  store i32 0, i32* %headers_count, align 4
  %3554 = load %union.rec*, %union.rec** %1, align 8
  %3555 = bitcast %union.rec* %3554 to %struct.head_type*
  %3556 = getelementptr inbounds %struct.head_type, %struct.head_type* %3555, i32 0, i32 13
  %3557 = load %union.rec*, %union.rec** %3556, align 8
  %3558 = bitcast %union.rec* %3557 to %struct.word_type*
  %3559 = getelementptr inbounds %struct.word_type, %struct.word_type* %3558, i32 0, i32 0
  %3560 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3559, i32 0, i64 0
  %3561 = getelementptr inbounds %struct.LIST, %struct.LIST* %3560, i32 0, i32 1
  %3562 = load %union.rec*, %union.rec** %3561, align 8
  store %union.rec* %3562, %union.rec** %link, align 8
  br label %3563

; <label>:3563                                    ; preds = %3789, %3553
  %3564 = load %union.rec*, %union.rec** %link, align 8
  %3565 = load %union.rec*, %union.rec** %1, align 8
  %3566 = bitcast %union.rec* %3565 to %struct.head_type*
  %3567 = getelementptr inbounds %struct.head_type, %struct.head_type* %3566, i32 0, i32 13
  %3568 = load %union.rec*, %union.rec** %3567, align 8
  %3569 = icmp ne %union.rec* %3564, %3568
  br i1 %3569, label %3570, label %3796

; <label>:3570                                    ; preds = %3563
  %3571 = load %union.rec*, %union.rec** %link, align 8
  %3572 = bitcast %union.rec* %3571 to %struct.word_type*
  %3573 = getelementptr inbounds %struct.word_type, %struct.word_type* %3572, i32 0, i32 0
  %3574 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3573, i32 0, i64 1
  %3575 = getelementptr inbounds %struct.LIST, %struct.LIST* %3574, i32 0, i32 0
  %3576 = load %union.rec*, %union.rec** %3575, align 8
  store %union.rec* %3576, %union.rec** %y, align 8
  br label %3577

; <label>:3577                                    ; preds = %3587, %3570
  %3578 = load %union.rec*, %union.rec** %y, align 8
  %3579 = bitcast %union.rec* %3578 to %struct.word_type*
  %3580 = getelementptr inbounds %struct.word_type, %struct.word_type* %3579, i32 0, i32 1
  %3581 = bitcast %union.FIRST_UNION* %3580 to %struct.anon*
  %3582 = getelementptr inbounds %struct.anon, %struct.anon* %3581, i32 0, i32 0
  %3583 = load i8, i8* %3582, align 1
  %3584 = zext i8 %3583 to i32
  %3585 = icmp eq i32 %3584, 0
  br i1 %3585, label %3586, label %3594

; <label>:3586                                    ; preds = %3577
  br label %3587

; <label>:3587                                    ; preds = %3586
  %3588 = load %union.rec*, %union.rec** %y, align 8
  %3589 = bitcast %union.rec* %3588 to %struct.word_type*
  %3590 = getelementptr inbounds %struct.word_type, %struct.word_type* %3589, i32 0, i32 0
  %3591 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3590, i32 0, i64 1
  %3592 = getelementptr inbounds %struct.LIST, %struct.LIST* %3591, i32 0, i32 0
  %3593 = load %union.rec*, %union.rec** %3592, align 8
  store %union.rec* %3593, %union.rec** %y, align 8
  br label %3577

; <label>:3594                                    ; preds = %3577
  %3595 = load %union.rec*, %union.rec** %y, align 8
  %3596 = bitcast %union.rec* %3595 to %struct.word_type*
  %3597 = getelementptr inbounds %struct.word_type, %struct.word_type* %3596, i32 0, i32 1
  %3598 = bitcast %union.FIRST_UNION* %3597 to %struct.anon*
  %3599 = getelementptr inbounds %struct.anon, %struct.anon* %3598, i32 0, i32 0
  %3600 = load i8, i8* %3599, align 1
  %3601 = zext i8 %3600 to i32
  %3602 = icmp ne i32 %3601, 16
  br i1 %3602, label %3603, label %3612

; <label>:3603                                    ; preds = %3594
  %3604 = load %union.rec*, %union.rec** %y, align 8
  %3605 = bitcast %union.rec* %3604 to %struct.word_type*
  %3606 = getelementptr inbounds %struct.word_type, %struct.word_type* %3605, i32 0, i32 1
  %3607 = bitcast %union.FIRST_UNION* %3606 to %struct.anon*
  %3608 = getelementptr inbounds %struct.anon, %struct.anon* %3607, i32 0, i32 0
  %3609 = load i8, i8* %3608, align 1
  %3610 = zext i8 %3609 to i32
  %3611 = icmp ne i32 %3610, 15
  br i1 %3611, label %3615, label %3612

; <label>:3612                                    ; preds = %3603, %3594
  %3613 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3614 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3613, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0))
  br label %3615

; <label>:3615                                    ; preds = %3612, %3603
  %3616 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %3617 = zext i8 %3616 to i32
  store i32 %3617, i32* @zz_size, align 4
  %3618 = sext i32 %3617 to i64
  %3619 = icmp uge i64 %3618, 265
  br i1 %3619, label %3620, label %3623

; <label>:3620                                    ; preds = %3615
  %3621 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3622 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %3621)
  br label %3648

; <label>:3623                                    ; preds = %3615
  %3624 = load i32, i32* @zz_size, align 4
  %3625 = sext i32 %3624 to i64
  %3626 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3625
  %3627 = load %union.rec*, %union.rec** %3626, align 8
  %3628 = icmp eq %union.rec* %3627, null
  br i1 %3628, label %3629, label %3633

; <label>:3629                                    ; preds = %3623
  %3630 = load i32, i32* @zz_size, align 4
  %3631 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3632 = call %union.rec* @GetMemory(i32 %3630, %struct.FILE_POS* %3631)
  store %union.rec* %3632, %union.rec** @zz_hold, align 8
  br label %3647

; <label>:3633                                    ; preds = %3623
  %3634 = load i32, i32* @zz_size, align 4
  %3635 = sext i32 %3634 to i64
  %3636 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3635
  %3637 = load %union.rec*, %union.rec** %3636, align 8
  store %union.rec* %3637, %union.rec** @zz_hold, align 8
  store %union.rec* %3637, %union.rec** @zz_hold, align 8
  %3638 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3639 = bitcast %union.rec* %3638 to %struct.word_type*
  %3640 = getelementptr inbounds %struct.word_type, %struct.word_type* %3639, i32 0, i32 0
  %3641 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3640, i32 0, i64 0
  %3642 = getelementptr inbounds %struct.LIST, %struct.LIST* %3641, i32 0, i32 0
  %3643 = load %union.rec*, %union.rec** %3642, align 8
  %3644 = load i32, i32* @zz_size, align 4
  %3645 = sext i32 %3644 to i64
  %3646 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3645
  store %union.rec* %3643, %union.rec** %3646, align 8
  br label %3647

; <label>:3647                                    ; preds = %3633, %3629
  br label %3648

; <label>:3648                                    ; preds = %3647, %3620
  %3649 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3650 = bitcast %union.rec* %3649 to %struct.word_type*
  %3651 = getelementptr inbounds %struct.word_type, %struct.word_type* %3650, i32 0, i32 1
  %3652 = bitcast %union.FIRST_UNION* %3651 to %struct.anon*
  %3653 = getelementptr inbounds %struct.anon, %struct.anon* %3652, i32 0, i32 0
  store i8 0, i8* %3653, align 1
  %3654 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3655 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3656 = bitcast %union.rec* %3655 to %struct.word_type*
  %3657 = getelementptr inbounds %struct.word_type, %struct.word_type* %3656, i32 0, i32 0
  %3658 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3657, i32 0, i64 1
  %3659 = getelementptr inbounds %struct.LIST, %struct.LIST* %3658, i32 0, i32 1
  store %union.rec* %3654, %union.rec** %3659, align 8
  %3660 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3661 = bitcast %union.rec* %3660 to %struct.word_type*
  %3662 = getelementptr inbounds %struct.word_type, %struct.word_type* %3661, i32 0, i32 0
  %3663 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3662, i32 0, i64 1
  %3664 = getelementptr inbounds %struct.LIST, %struct.LIST* %3663, i32 0, i32 0
  store %union.rec* %3654, %union.rec** %3664, align 8
  %3665 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3666 = bitcast %union.rec* %3665 to %struct.word_type*
  %3667 = getelementptr inbounds %struct.word_type, %struct.word_type* %3666, i32 0, i32 0
  %3668 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3667, i32 0, i64 0
  %3669 = getelementptr inbounds %struct.LIST, %struct.LIST* %3668, i32 0, i32 1
  store %union.rec* %3654, %union.rec** %3669, align 8
  %3670 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3671 = bitcast %union.rec* %3670 to %struct.word_type*
  %3672 = getelementptr inbounds %struct.word_type, %struct.word_type* %3671, i32 0, i32 0
  %3673 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3672, i32 0, i64 0
  %3674 = getelementptr inbounds %struct.LIST, %struct.LIST* %3673, i32 0, i32 0
  store %union.rec* %3654, %union.rec** %3674, align 8
  store %union.rec* %3654, %union.rec** @xx_link, align 8
  %3675 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3675, %union.rec** @zz_res, align 8
  %3676 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %3676, %union.rec** @zz_hold, align 8
  %3677 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3678 = icmp eq %union.rec* %3677, null
  br i1 %3678, label %3679, label %3681

; <label>:3679                                    ; preds = %3648
  %3680 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3729

; <label>:3681                                    ; preds = %3648
  %3682 = load %union.rec*, %union.rec** @zz_res, align 8
  %3683 = icmp eq %union.rec* %3682, null
  br i1 %3683, label %3684, label %3686

; <label>:3684                                    ; preds = %3681
  %3685 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %3727

; <label>:3686                                    ; preds = %3681
  %3687 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3688 = bitcast %union.rec* %3687 to %struct.word_type*
  %3689 = getelementptr inbounds %struct.word_type, %struct.word_type* %3688, i32 0, i32 0
  %3690 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3689, i32 0, i64 0
  %3691 = getelementptr inbounds %struct.LIST, %struct.LIST* %3690, i32 0, i32 0
  %3692 = load %union.rec*, %union.rec** %3691, align 8
  store %union.rec* %3692, %union.rec** @zz_tmp, align 8
  %3693 = load %union.rec*, %union.rec** @zz_res, align 8
  %3694 = bitcast %union.rec* %3693 to %struct.word_type*
  %3695 = getelementptr inbounds %struct.word_type, %struct.word_type* %3694, i32 0, i32 0
  %3696 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3695, i32 0, i64 0
  %3697 = getelementptr inbounds %struct.LIST, %struct.LIST* %3696, i32 0, i32 0
  %3698 = load %union.rec*, %union.rec** %3697, align 8
  %3699 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3700 = bitcast %union.rec* %3699 to %struct.word_type*
  %3701 = getelementptr inbounds %struct.word_type, %struct.word_type* %3700, i32 0, i32 0
  %3702 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3701, i32 0, i64 0
  %3703 = getelementptr inbounds %struct.LIST, %struct.LIST* %3702, i32 0, i32 0
  store %union.rec* %3698, %union.rec** %3703, align 8
  %3704 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3705 = load %union.rec*, %union.rec** @zz_res, align 8
  %3706 = bitcast %union.rec* %3705 to %struct.word_type*
  %3707 = getelementptr inbounds %struct.word_type, %struct.word_type* %3706, i32 0, i32 0
  %3708 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3707, i32 0, i64 0
  %3709 = getelementptr inbounds %struct.LIST, %struct.LIST* %3708, i32 0, i32 0
  %3710 = load %union.rec*, %union.rec** %3709, align 8
  %3711 = bitcast %union.rec* %3710 to %struct.word_type*
  %3712 = getelementptr inbounds %struct.word_type, %struct.word_type* %3711, i32 0, i32 0
  %3713 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3712, i32 0, i64 0
  %3714 = getelementptr inbounds %struct.LIST, %struct.LIST* %3713, i32 0, i32 1
  store %union.rec* %3704, %union.rec** %3714, align 8
  %3715 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3716 = load %union.rec*, %union.rec** @zz_res, align 8
  %3717 = bitcast %union.rec* %3716 to %struct.word_type*
  %3718 = getelementptr inbounds %struct.word_type, %struct.word_type* %3717, i32 0, i32 0
  %3719 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3718, i32 0, i64 0
  %3720 = getelementptr inbounds %struct.LIST, %struct.LIST* %3719, i32 0, i32 0
  store %union.rec* %3715, %union.rec** %3720, align 8
  %3721 = load %union.rec*, %union.rec** @zz_res, align 8
  %3722 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3723 = bitcast %union.rec* %3722 to %struct.word_type*
  %3724 = getelementptr inbounds %struct.word_type, %struct.word_type* %3723, i32 0, i32 0
  %3725 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3724, i32 0, i64 0
  %3726 = getelementptr inbounds %struct.LIST, %struct.LIST* %3725, i32 0, i32 1
  store %union.rec* %3721, %union.rec** %3726, align 8
  br label %3727

; <label>:3727                                    ; preds = %3686, %3684
  %3728 = phi %union.rec* [ %3685, %3684 ], [ %3721, %3686 ]
  br label %3729

; <label>:3729                                    ; preds = %3727, %3679
  %3730 = phi %union.rec* [ %3680, %3679 ], [ %3728, %3727 ]
  %3731 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3731, %union.rec** @zz_res, align 8
  %3732 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %3732, %union.rec** @zz_hold, align 8
  %3733 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3734 = icmp eq %union.rec* %3733, null
  br i1 %3734, label %3735, label %3737

; <label>:3735                                    ; preds = %3729
  %3736 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3785

; <label>:3737                                    ; preds = %3729
  %3738 = load %union.rec*, %union.rec** @zz_res, align 8
  %3739 = icmp eq %union.rec* %3738, null
  br i1 %3739, label %3740, label %3742

; <label>:3740                                    ; preds = %3737
  %3741 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %3783

; <label>:3742                                    ; preds = %3737
  %3743 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3744 = bitcast %union.rec* %3743 to %struct.word_type*
  %3745 = getelementptr inbounds %struct.word_type, %struct.word_type* %3744, i32 0, i32 0
  %3746 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3745, i32 0, i64 1
  %3747 = getelementptr inbounds %struct.LIST, %struct.LIST* %3746, i32 0, i32 0
  %3748 = load %union.rec*, %union.rec** %3747, align 8
  store %union.rec* %3748, %union.rec** @zz_tmp, align 8
  %3749 = load %union.rec*, %union.rec** @zz_res, align 8
  %3750 = bitcast %union.rec* %3749 to %struct.word_type*
  %3751 = getelementptr inbounds %struct.word_type, %struct.word_type* %3750, i32 0, i32 0
  %3752 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3751, i32 0, i64 1
  %3753 = getelementptr inbounds %struct.LIST, %struct.LIST* %3752, i32 0, i32 0
  %3754 = load %union.rec*, %union.rec** %3753, align 8
  %3755 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3756 = bitcast %union.rec* %3755 to %struct.word_type*
  %3757 = getelementptr inbounds %struct.word_type, %struct.word_type* %3756, i32 0, i32 0
  %3758 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3757, i32 0, i64 1
  %3759 = getelementptr inbounds %struct.LIST, %struct.LIST* %3758, i32 0, i32 0
  store %union.rec* %3754, %union.rec** %3759, align 8
  %3760 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3761 = load %union.rec*, %union.rec** @zz_res, align 8
  %3762 = bitcast %union.rec* %3761 to %struct.word_type*
  %3763 = getelementptr inbounds %struct.word_type, %struct.word_type* %3762, i32 0, i32 0
  %3764 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3763, i32 0, i64 1
  %3765 = getelementptr inbounds %struct.LIST, %struct.LIST* %3764, i32 0, i32 0
  %3766 = load %union.rec*, %union.rec** %3765, align 8
  %3767 = bitcast %union.rec* %3766 to %struct.word_type*
  %3768 = getelementptr inbounds %struct.word_type, %struct.word_type* %3767, i32 0, i32 0
  %3769 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3768, i32 0, i64 1
  %3770 = getelementptr inbounds %struct.LIST, %struct.LIST* %3769, i32 0, i32 1
  store %union.rec* %3760, %union.rec** %3770, align 8
  %3771 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3772 = load %union.rec*, %union.rec** @zz_res, align 8
  %3773 = bitcast %union.rec* %3772 to %struct.word_type*
  %3774 = getelementptr inbounds %struct.word_type, %struct.word_type* %3773, i32 0, i32 0
  %3775 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3774, i32 0, i64 1
  %3776 = getelementptr inbounds %struct.LIST, %struct.LIST* %3775, i32 0, i32 0
  store %union.rec* %3771, %union.rec** %3776, align 8
  %3777 = load %union.rec*, %union.rec** @zz_res, align 8
  %3778 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3779 = bitcast %union.rec* %3778 to %struct.word_type*
  %3780 = getelementptr inbounds %struct.word_type, %struct.word_type* %3779, i32 0, i32 0
  %3781 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3780, i32 0, i64 1
  %3782 = getelementptr inbounds %struct.LIST, %struct.LIST* %3781, i32 0, i32 1
  store %union.rec* %3777, %union.rec** %3782, align 8
  br label %3783

; <label>:3783                                    ; preds = %3742, %3740
  %3784 = phi %union.rec* [ %3741, %3740 ], [ %3777, %3742 ]
  br label %3785

; <label>:3785                                    ; preds = %3783, %3735
  %3786 = phi %union.rec* [ %3736, %3735 ], [ %3784, %3783 ]
  %3787 = load i32, i32* %headers_count, align 4
  %3788 = add nsw i32 %3787, 1
  store i32 %3788, i32* %headers_count, align 4
  br label %3789

; <label>:3789                                    ; preds = %3785
  %3790 = load %union.rec*, %union.rec** %link, align 8
  %3791 = bitcast %union.rec* %3790 to %struct.word_type*
  %3792 = getelementptr inbounds %struct.word_type, %struct.word_type* %3791, i32 0, i32 0
  %3793 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3792, i32 0, i64 0
  %3794 = getelementptr inbounds %struct.LIST, %struct.LIST* %3793, i32 0, i32 1
  %3795 = load %union.rec*, %union.rec** %3794, align 8
  store %union.rec* %3795, %union.rec** %link, align 8
  br label %3563

; <label>:3796                                    ; preds = %3563
  %3797 = load i32, i32* %headers_count, align 4
  %3798 = srem i32 %3797, 2
  %3799 = icmp eq i32 %3798, 0
  br i1 %3799, label %3803, label %3800

; <label>:3800                                    ; preds = %3796
  %3801 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3802 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3801, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i32 0, i32 0))
  br label %3803

; <label>:3803                                    ; preds = %3800, %3796
  br label %3804

; <label>:3804                                    ; preds = %3803, %3516
  %3805 = load %union.rec*, %union.rec** %1, align 8
  call void @DetachGalley(%union.rec* %3805)
  %3806 = load %union.rec*, %union.rec** %dest_index, align 8
  %3807 = bitcast %union.rec* %3806 to %struct.word_type*
  %3808 = getelementptr inbounds %struct.word_type, %struct.word_type* %3807, i32 0, i32 1
  %3809 = bitcast %union.FIRST_UNION* %3808 to %struct.anon*
  %3810 = getelementptr inbounds %struct.anon, %struct.anon* %3809, i32 0, i32 0
  %3811 = load i8, i8* %3810, align 1
  %3812 = zext i8 %3811 to i32
  %3813 = icmp eq i32 %3812, 122
  br i1 %3813, label %3817, label %3814

; <label>:3814                                    ; preds = %3804
  %3815 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3816 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3815, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i32 0, i32 0))
  br label %3817

; <label>:3817                                    ; preds = %3814, %3804
  %3818 = load i32, i32* %prnt_flush, align 4
  %3819 = icmp ne i32 %3818, 0
  br i1 %3819, label %3831, label %3820

; <label>:3820                                    ; preds = %3817
  %3821 = load %union.rec*, %union.rec** %dest_index, align 8
  %3822 = bitcast %union.rec* %3821 to %struct.word_type*
  %3823 = getelementptr inbounds %struct.word_type, %struct.word_type* %3822, i32 0, i32 2
  %3824 = bitcast %union.SECOND_UNION* %3823 to %struct.anon.2*
  %3825 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3824, i32 0, i32 2
  %3826 = load i16, i16* %3825, align 2
  %3827 = lshr i16 %3826, 5
  %3828 = and i16 %3827, 1
  %3829 = zext i16 %3828 to i32
  %3830 = icmp ne i32 %3829, 0
  br label %3831

; <label>:3831                                    ; preds = %3820, %3817
  %3832 = phi i1 [ true, %3817 ], [ %3830, %3820 ]
  %3833 = zext i1 %3832 to i32
  store i32 %3833, i32* %prnt_flush, align 4
  %3834 = load %union.rec*, %union.rec** %dest_index, align 8
  store %union.rec* %3834, %union.rec** @xx_hold, align 8
  br label %3835

; <label>:3835                                    ; preds = %3995, %3831
  %3836 = load %union.rec*, %union.rec** @xx_hold, align 8
  %3837 = bitcast %union.rec* %3836 to %struct.word_type*
  %3838 = getelementptr inbounds %struct.word_type, %struct.word_type* %3837, i32 0, i32 0
  %3839 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3838, i32 0, i64 1
  %3840 = getelementptr inbounds %struct.LIST, %struct.LIST* %3839, i32 0, i32 1
  %3841 = load %union.rec*, %union.rec** %3840, align 8
  %3842 = load %union.rec*, %union.rec** @xx_hold, align 8
  %3843 = icmp ne %union.rec* %3841, %3842
  br i1 %3843, label %3844, label %4010

; <label>:3844                                    ; preds = %3835
  %3845 = load %union.rec*, %union.rec** @xx_hold, align 8
  %3846 = bitcast %union.rec* %3845 to %struct.word_type*
  %3847 = getelementptr inbounds %struct.word_type, %struct.word_type* %3846, i32 0, i32 0
  %3848 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3847, i32 0, i64 1
  %3849 = getelementptr inbounds %struct.LIST, %struct.LIST* %3848, i32 0, i32 1
  %3850 = load %union.rec*, %union.rec** %3849, align 8
  store %union.rec* %3850, %union.rec** @xx_link, align 8
  %3851 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3851, %union.rec** @zz_hold, align 8
  %3852 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3853 = bitcast %union.rec* %3852 to %struct.word_type*
  %3854 = getelementptr inbounds %struct.word_type, %struct.word_type* %3853, i32 0, i32 0
  %3855 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3854, i32 0, i64 1
  %3856 = getelementptr inbounds %struct.LIST, %struct.LIST* %3855, i32 0, i32 1
  %3857 = load %union.rec*, %union.rec** %3856, align 8
  %3858 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3859 = icmp eq %union.rec* %3857, %3858
  br i1 %3859, label %3860, label %3861

; <label>:3860                                    ; preds = %3844
  br label %3902

; <label>:3861                                    ; preds = %3844
  %3862 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3863 = bitcast %union.rec* %3862 to %struct.word_type*
  %3864 = getelementptr inbounds %struct.word_type, %struct.word_type* %3863, i32 0, i32 0
  %3865 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3864, i32 0, i64 1
  %3866 = getelementptr inbounds %struct.LIST, %struct.LIST* %3865, i32 0, i32 1
  %3867 = load %union.rec*, %union.rec** %3866, align 8
  store %union.rec* %3867, %union.rec** @zz_res, align 8
  %3868 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3869 = bitcast %union.rec* %3868 to %struct.word_type*
  %3870 = getelementptr inbounds %struct.word_type, %struct.word_type* %3869, i32 0, i32 0
  %3871 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3870, i32 0, i64 1
  %3872 = getelementptr inbounds %struct.LIST, %struct.LIST* %3871, i32 0, i32 0
  %3873 = load %union.rec*, %union.rec** %3872, align 8
  %3874 = load %union.rec*, %union.rec** @zz_res, align 8
  %3875 = bitcast %union.rec* %3874 to %struct.word_type*
  %3876 = getelementptr inbounds %struct.word_type, %struct.word_type* %3875, i32 0, i32 0
  %3877 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3876, i32 0, i64 1
  %3878 = getelementptr inbounds %struct.LIST, %struct.LIST* %3877, i32 0, i32 0
  store %union.rec* %3873, %union.rec** %3878, align 8
  %3879 = load %union.rec*, %union.rec** @zz_res, align 8
  %3880 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3881 = bitcast %union.rec* %3880 to %struct.word_type*
  %3882 = getelementptr inbounds %struct.word_type, %struct.word_type* %3881, i32 0, i32 0
  %3883 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3882, i32 0, i64 1
  %3884 = getelementptr inbounds %struct.LIST, %struct.LIST* %3883, i32 0, i32 0
  %3885 = load %union.rec*, %union.rec** %3884, align 8
  %3886 = bitcast %union.rec* %3885 to %struct.word_type*
  %3887 = getelementptr inbounds %struct.word_type, %struct.word_type* %3886, i32 0, i32 0
  %3888 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3887, i32 0, i64 1
  %3889 = getelementptr inbounds %struct.LIST, %struct.LIST* %3888, i32 0, i32 1
  store %union.rec* %3879, %union.rec** %3889, align 8
  %3890 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3891 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3892 = bitcast %union.rec* %3891 to %struct.word_type*
  %3893 = getelementptr inbounds %struct.word_type, %struct.word_type* %3892, i32 0, i32 0
  %3894 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3893, i32 0, i64 1
  %3895 = getelementptr inbounds %struct.LIST, %struct.LIST* %3894, i32 0, i32 1
  store %union.rec* %3890, %union.rec** %3895, align 8
  %3896 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3897 = bitcast %union.rec* %3896 to %struct.word_type*
  %3898 = getelementptr inbounds %struct.word_type, %struct.word_type* %3897, i32 0, i32 0
  %3899 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3898, i32 0, i64 1
  %3900 = getelementptr inbounds %struct.LIST, %struct.LIST* %3899, i32 0, i32 0
  store %union.rec* %3890, %union.rec** %3900, align 8
  %3901 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3902

; <label>:3902                                    ; preds = %3861, %3860
  %3903 = phi %union.rec* [ null, %3860 ], [ %3901, %3861 ]
  %3904 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3904, %union.rec** @zz_hold, align 8
  %3905 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3906 = bitcast %union.rec* %3905 to %struct.word_type*
  %3907 = getelementptr inbounds %struct.word_type, %struct.word_type* %3906, i32 0, i32 0
  %3908 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3907, i32 0, i64 0
  %3909 = getelementptr inbounds %struct.LIST, %struct.LIST* %3908, i32 0, i32 1
  %3910 = load %union.rec*, %union.rec** %3909, align 8
  %3911 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3912 = icmp eq %union.rec* %3910, %3911
  br i1 %3912, label %3913, label %3914

; <label>:3913                                    ; preds = %3902
  br label %3955

; <label>:3914                                    ; preds = %3902
  %3915 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3916 = bitcast %union.rec* %3915 to %struct.word_type*
  %3917 = getelementptr inbounds %struct.word_type, %struct.word_type* %3916, i32 0, i32 0
  %3918 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3917, i32 0, i64 0
  %3919 = getelementptr inbounds %struct.LIST, %struct.LIST* %3918, i32 0, i32 1
  %3920 = load %union.rec*, %union.rec** %3919, align 8
  store %union.rec* %3920, %union.rec** @zz_res, align 8
  %3921 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3922 = bitcast %union.rec* %3921 to %struct.word_type*
  %3923 = getelementptr inbounds %struct.word_type, %struct.word_type* %3922, i32 0, i32 0
  %3924 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3923, i32 0, i64 0
  %3925 = getelementptr inbounds %struct.LIST, %struct.LIST* %3924, i32 0, i32 0
  %3926 = load %union.rec*, %union.rec** %3925, align 8
  %3927 = load %union.rec*, %union.rec** @zz_res, align 8
  %3928 = bitcast %union.rec* %3927 to %struct.word_type*
  %3929 = getelementptr inbounds %struct.word_type, %struct.word_type* %3928, i32 0, i32 0
  %3930 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3929, i32 0, i64 0
  %3931 = getelementptr inbounds %struct.LIST, %struct.LIST* %3930, i32 0, i32 0
  store %union.rec* %3926, %union.rec** %3931, align 8
  %3932 = load %union.rec*, %union.rec** @zz_res, align 8
  %3933 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3934 = bitcast %union.rec* %3933 to %struct.word_type*
  %3935 = getelementptr inbounds %struct.word_type, %struct.word_type* %3934, i32 0, i32 0
  %3936 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3935, i32 0, i64 0
  %3937 = getelementptr inbounds %struct.LIST, %struct.LIST* %3936, i32 0, i32 0
  %3938 = load %union.rec*, %union.rec** %3937, align 8
  %3939 = bitcast %union.rec* %3938 to %struct.word_type*
  %3940 = getelementptr inbounds %struct.word_type, %struct.word_type* %3939, i32 0, i32 0
  %3941 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3940, i32 0, i64 0
  %3942 = getelementptr inbounds %struct.LIST, %struct.LIST* %3941, i32 0, i32 1
  store %union.rec* %3932, %union.rec** %3942, align 8
  %3943 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3944 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3945 = bitcast %union.rec* %3944 to %struct.word_type*
  %3946 = getelementptr inbounds %struct.word_type, %struct.word_type* %3945, i32 0, i32 0
  %3947 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3946, i32 0, i64 0
  %3948 = getelementptr inbounds %struct.LIST, %struct.LIST* %3947, i32 0, i32 1
  store %union.rec* %3943, %union.rec** %3948, align 8
  %3949 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3950 = bitcast %union.rec* %3949 to %struct.word_type*
  %3951 = getelementptr inbounds %struct.word_type, %struct.word_type* %3950, i32 0, i32 0
  %3952 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3951, i32 0, i64 0
  %3953 = getelementptr inbounds %struct.LIST, %struct.LIST* %3952, i32 0, i32 0
  store %union.rec* %3943, %union.rec** %3953, align 8
  %3954 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3955

; <label>:3955                                    ; preds = %3914, %3913
  %3956 = phi %union.rec* [ null, %3913 ], [ %3954, %3914 ]
  %3957 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3957, %union.rec** @zz_hold, align 8
  %3958 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %3958, %union.rec** @zz_hold, align 8
  %3959 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3960 = bitcast %union.rec* %3959 to %struct.word_type*
  %3961 = getelementptr inbounds %struct.word_type, %struct.word_type* %3960, i32 0, i32 1
  %3962 = bitcast %union.FIRST_UNION* %3961 to %struct.anon*
  %3963 = getelementptr inbounds %struct.anon, %struct.anon* %3962, i32 0, i32 0
  %3964 = load i8, i8* %3963, align 1
  %3965 = zext i8 %3964 to i32
  %3966 = icmp eq i32 %3965, 11
  br i1 %3966, label %3976, label %3967

; <label>:3967                                    ; preds = %3955
  %3968 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3969 = bitcast %union.rec* %3968 to %struct.word_type*
  %3970 = getelementptr inbounds %struct.word_type, %struct.word_type* %3969, i32 0, i32 1
  %3971 = bitcast %union.FIRST_UNION* %3970 to %struct.anon*
  %3972 = getelementptr inbounds %struct.anon, %struct.anon* %3971, i32 0, i32 0
  %3973 = load i8, i8* %3972, align 1
  %3974 = zext i8 %3973 to i32
  %3975 = icmp eq i32 %3974, 12
  br i1 %3975, label %3976, label %3984

; <label>:3976                                    ; preds = %3967, %3955
  %3977 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3978 = bitcast %union.rec* %3977 to %struct.word_type*
  %3979 = getelementptr inbounds %struct.word_type, %struct.word_type* %3978, i32 0, i32 1
  %3980 = bitcast %union.FIRST_UNION* %3979 to %struct.anon*
  %3981 = getelementptr inbounds %struct.anon, %struct.anon* %3980, i32 0, i32 1
  %3982 = load i8, i8* %3981, align 1
  %3983 = zext i8 %3982 to i32
  br label %3995

; <label>:3984                                    ; preds = %3967
  %3985 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3986 = bitcast %union.rec* %3985 to %struct.word_type*
  %3987 = getelementptr inbounds %struct.word_type, %struct.word_type* %3986, i32 0, i32 1
  %3988 = bitcast %union.FIRST_UNION* %3987 to %struct.anon*
  %3989 = getelementptr inbounds %struct.anon, %struct.anon* %3988, i32 0, i32 0
  %3990 = load i8, i8* %3989, align 1
  %3991 = zext i8 %3990 to i64
  %3992 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %3991
  %3993 = load i8, i8* %3992, align 1
  %3994 = zext i8 %3993 to i32
  br label %3995

; <label>:3995                                    ; preds = %3984, %3976
  %3996 = phi i32 [ %3983, %3976 ], [ %3994, %3984 ]
  store i32 %3996, i32* @zz_size, align 4
  %3997 = load i32, i32* @zz_size, align 4
  %3998 = sext i32 %3997 to i64
  %3999 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3998
  %4000 = load %union.rec*, %union.rec** %3999, align 8
  %4001 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4002 = bitcast %union.rec* %4001 to %struct.word_type*
  %4003 = getelementptr inbounds %struct.word_type, %struct.word_type* %4002, i32 0, i32 0
  %4004 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4003, i32 0, i64 0
  %4005 = getelementptr inbounds %struct.LIST, %struct.LIST* %4004, i32 0, i32 0
  store %union.rec* %4000, %union.rec** %4005, align 8
  %4006 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4007 = load i32, i32* @zz_size, align 4
  %4008 = sext i32 %4007 to i64
  %4009 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4008
  store %union.rec* %4006, %union.rec** %4009, align 8
  br label %3835

; <label>:4010                                    ; preds = %3835
  br label %4011

; <label>:4011                                    ; preds = %4171, %4010
  %4012 = load %union.rec*, %union.rec** @xx_hold, align 8
  %4013 = bitcast %union.rec* %4012 to %struct.word_type*
  %4014 = getelementptr inbounds %struct.word_type, %struct.word_type* %4013, i32 0, i32 0
  %4015 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4014, i32 0, i64 0
  %4016 = getelementptr inbounds %struct.LIST, %struct.LIST* %4015, i32 0, i32 1
  %4017 = load %union.rec*, %union.rec** %4016, align 8
  %4018 = load %union.rec*, %union.rec** @xx_hold, align 8
  %4019 = icmp ne %union.rec* %4017, %4018
  br i1 %4019, label %4020, label %4186

; <label>:4020                                    ; preds = %4011
  %4021 = load %union.rec*, %union.rec** @xx_hold, align 8
  %4022 = bitcast %union.rec* %4021 to %struct.word_type*
  %4023 = getelementptr inbounds %struct.word_type, %struct.word_type* %4022, i32 0, i32 0
  %4024 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4023, i32 0, i64 0
  %4025 = getelementptr inbounds %struct.LIST, %struct.LIST* %4024, i32 0, i32 1
  %4026 = load %union.rec*, %union.rec** %4025, align 8
  store %union.rec* %4026, %union.rec** @xx_link, align 8
  %4027 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4027, %union.rec** @zz_hold, align 8
  %4028 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4029 = bitcast %union.rec* %4028 to %struct.word_type*
  %4030 = getelementptr inbounds %struct.word_type, %struct.word_type* %4029, i32 0, i32 0
  %4031 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4030, i32 0, i64 1
  %4032 = getelementptr inbounds %struct.LIST, %struct.LIST* %4031, i32 0, i32 1
  %4033 = load %union.rec*, %union.rec** %4032, align 8
  %4034 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4035 = icmp eq %union.rec* %4033, %4034
  br i1 %4035, label %4036, label %4037

; <label>:4036                                    ; preds = %4020
  br label %4078

; <label>:4037                                    ; preds = %4020
  %4038 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4039 = bitcast %union.rec* %4038 to %struct.word_type*
  %4040 = getelementptr inbounds %struct.word_type, %struct.word_type* %4039, i32 0, i32 0
  %4041 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4040, i32 0, i64 1
  %4042 = getelementptr inbounds %struct.LIST, %struct.LIST* %4041, i32 0, i32 1
  %4043 = load %union.rec*, %union.rec** %4042, align 8
  store %union.rec* %4043, %union.rec** @zz_res, align 8
  %4044 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4045 = bitcast %union.rec* %4044 to %struct.word_type*
  %4046 = getelementptr inbounds %struct.word_type, %struct.word_type* %4045, i32 0, i32 0
  %4047 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4046, i32 0, i64 1
  %4048 = getelementptr inbounds %struct.LIST, %struct.LIST* %4047, i32 0, i32 0
  %4049 = load %union.rec*, %union.rec** %4048, align 8
  %4050 = load %union.rec*, %union.rec** @zz_res, align 8
  %4051 = bitcast %union.rec* %4050 to %struct.word_type*
  %4052 = getelementptr inbounds %struct.word_type, %struct.word_type* %4051, i32 0, i32 0
  %4053 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4052, i32 0, i64 1
  %4054 = getelementptr inbounds %struct.LIST, %struct.LIST* %4053, i32 0, i32 0
  store %union.rec* %4049, %union.rec** %4054, align 8
  %4055 = load %union.rec*, %union.rec** @zz_res, align 8
  %4056 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4057 = bitcast %union.rec* %4056 to %struct.word_type*
  %4058 = getelementptr inbounds %struct.word_type, %struct.word_type* %4057, i32 0, i32 0
  %4059 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4058, i32 0, i64 1
  %4060 = getelementptr inbounds %struct.LIST, %struct.LIST* %4059, i32 0, i32 0
  %4061 = load %union.rec*, %union.rec** %4060, align 8
  %4062 = bitcast %union.rec* %4061 to %struct.word_type*
  %4063 = getelementptr inbounds %struct.word_type, %struct.word_type* %4062, i32 0, i32 0
  %4064 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4063, i32 0, i64 1
  %4065 = getelementptr inbounds %struct.LIST, %struct.LIST* %4064, i32 0, i32 1
  store %union.rec* %4055, %union.rec** %4065, align 8
  %4066 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4067 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4068 = bitcast %union.rec* %4067 to %struct.word_type*
  %4069 = getelementptr inbounds %struct.word_type, %struct.word_type* %4068, i32 0, i32 0
  %4070 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4069, i32 0, i64 1
  %4071 = getelementptr inbounds %struct.LIST, %struct.LIST* %4070, i32 0, i32 1
  store %union.rec* %4066, %union.rec** %4071, align 8
  %4072 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4073 = bitcast %union.rec* %4072 to %struct.word_type*
  %4074 = getelementptr inbounds %struct.word_type, %struct.word_type* %4073, i32 0, i32 0
  %4075 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4074, i32 0, i64 1
  %4076 = getelementptr inbounds %struct.LIST, %struct.LIST* %4075, i32 0, i32 0
  store %union.rec* %4066, %union.rec** %4076, align 8
  %4077 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4078

; <label>:4078                                    ; preds = %4037, %4036
  %4079 = phi %union.rec* [ null, %4036 ], [ %4077, %4037 ]
  %4080 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4080, %union.rec** @zz_hold, align 8
  %4081 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4082 = bitcast %union.rec* %4081 to %struct.word_type*
  %4083 = getelementptr inbounds %struct.word_type, %struct.word_type* %4082, i32 0, i32 0
  %4084 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4083, i32 0, i64 0
  %4085 = getelementptr inbounds %struct.LIST, %struct.LIST* %4084, i32 0, i32 1
  %4086 = load %union.rec*, %union.rec** %4085, align 8
  %4087 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4088 = icmp eq %union.rec* %4086, %4087
  br i1 %4088, label %4089, label %4090

; <label>:4089                                    ; preds = %4078
  br label %4131

; <label>:4090                                    ; preds = %4078
  %4091 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4092 = bitcast %union.rec* %4091 to %struct.word_type*
  %4093 = getelementptr inbounds %struct.word_type, %struct.word_type* %4092, i32 0, i32 0
  %4094 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4093, i32 0, i64 0
  %4095 = getelementptr inbounds %struct.LIST, %struct.LIST* %4094, i32 0, i32 1
  %4096 = load %union.rec*, %union.rec** %4095, align 8
  store %union.rec* %4096, %union.rec** @zz_res, align 8
  %4097 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4098 = bitcast %union.rec* %4097 to %struct.word_type*
  %4099 = getelementptr inbounds %struct.word_type, %struct.word_type* %4098, i32 0, i32 0
  %4100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4099, i32 0, i64 0
  %4101 = getelementptr inbounds %struct.LIST, %struct.LIST* %4100, i32 0, i32 0
  %4102 = load %union.rec*, %union.rec** %4101, align 8
  %4103 = load %union.rec*, %union.rec** @zz_res, align 8
  %4104 = bitcast %union.rec* %4103 to %struct.word_type*
  %4105 = getelementptr inbounds %struct.word_type, %struct.word_type* %4104, i32 0, i32 0
  %4106 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4105, i32 0, i64 0
  %4107 = getelementptr inbounds %struct.LIST, %struct.LIST* %4106, i32 0, i32 0
  store %union.rec* %4102, %union.rec** %4107, align 8
  %4108 = load %union.rec*, %union.rec** @zz_res, align 8
  %4109 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4110 = bitcast %union.rec* %4109 to %struct.word_type*
  %4111 = getelementptr inbounds %struct.word_type, %struct.word_type* %4110, i32 0, i32 0
  %4112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4111, i32 0, i64 0
  %4113 = getelementptr inbounds %struct.LIST, %struct.LIST* %4112, i32 0, i32 0
  %4114 = load %union.rec*, %union.rec** %4113, align 8
  %4115 = bitcast %union.rec* %4114 to %struct.word_type*
  %4116 = getelementptr inbounds %struct.word_type, %struct.word_type* %4115, i32 0, i32 0
  %4117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4116, i32 0, i64 0
  %4118 = getelementptr inbounds %struct.LIST, %struct.LIST* %4117, i32 0, i32 1
  store %union.rec* %4108, %union.rec** %4118, align 8
  %4119 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4121 = bitcast %union.rec* %4120 to %struct.word_type*
  %4122 = getelementptr inbounds %struct.word_type, %struct.word_type* %4121, i32 0, i32 0
  %4123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4122, i32 0, i64 0
  %4124 = getelementptr inbounds %struct.LIST, %struct.LIST* %4123, i32 0, i32 1
  store %union.rec* %4119, %union.rec** %4124, align 8
  %4125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4126 = bitcast %union.rec* %4125 to %struct.word_type*
  %4127 = getelementptr inbounds %struct.word_type, %struct.word_type* %4126, i32 0, i32 0
  %4128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4127, i32 0, i64 0
  %4129 = getelementptr inbounds %struct.LIST, %struct.LIST* %4128, i32 0, i32 0
  store %union.rec* %4119, %union.rec** %4129, align 8
  %4130 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4131

; <label>:4131                                    ; preds = %4090, %4089
  %4132 = phi %union.rec* [ null, %4089 ], [ %4130, %4090 ]
  %4133 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4133, %union.rec** @zz_hold, align 8
  %4134 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %4134, %union.rec** @zz_hold, align 8
  %4135 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4136 = bitcast %union.rec* %4135 to %struct.word_type*
  %4137 = getelementptr inbounds %struct.word_type, %struct.word_type* %4136, i32 0, i32 1
  %4138 = bitcast %union.FIRST_UNION* %4137 to %struct.anon*
  %4139 = getelementptr inbounds %struct.anon, %struct.anon* %4138, i32 0, i32 0
  %4140 = load i8, i8* %4139, align 1
  %4141 = zext i8 %4140 to i32
  %4142 = icmp eq i32 %4141, 11
  br i1 %4142, label %4152, label %4143

; <label>:4143                                    ; preds = %4131
  %4144 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4145 = bitcast %union.rec* %4144 to %struct.word_type*
  %4146 = getelementptr inbounds %struct.word_type, %struct.word_type* %4145, i32 0, i32 1
  %4147 = bitcast %union.FIRST_UNION* %4146 to %struct.anon*
  %4148 = getelementptr inbounds %struct.anon, %struct.anon* %4147, i32 0, i32 0
  %4149 = load i8, i8* %4148, align 1
  %4150 = zext i8 %4149 to i32
  %4151 = icmp eq i32 %4150, 12
  br i1 %4151, label %4152, label %4160

; <label>:4152                                    ; preds = %4143, %4131
  %4153 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4154 = bitcast %union.rec* %4153 to %struct.word_type*
  %4155 = getelementptr inbounds %struct.word_type, %struct.word_type* %4154, i32 0, i32 1
  %4156 = bitcast %union.FIRST_UNION* %4155 to %struct.anon*
  %4157 = getelementptr inbounds %struct.anon, %struct.anon* %4156, i32 0, i32 1
  %4158 = load i8, i8* %4157, align 1
  %4159 = zext i8 %4158 to i32
  br label %4171

; <label>:4160                                    ; preds = %4143
  %4161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4162 = bitcast %union.rec* %4161 to %struct.word_type*
  %4163 = getelementptr inbounds %struct.word_type, %struct.word_type* %4162, i32 0, i32 1
  %4164 = bitcast %union.FIRST_UNION* %4163 to %struct.anon*
  %4165 = getelementptr inbounds %struct.anon, %struct.anon* %4164, i32 0, i32 0
  %4166 = load i8, i8* %4165, align 1
  %4167 = zext i8 %4166 to i64
  %4168 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %4167
  %4169 = load i8, i8* %4168, align 1
  %4170 = zext i8 %4169 to i32
  br label %4171

; <label>:4171                                    ; preds = %4160, %4152
  %4172 = phi i32 [ %4159, %4152 ], [ %4170, %4160 ]
  store i32 %4172, i32* @zz_size, align 4
  %4173 = load i32, i32* @zz_size, align 4
  %4174 = sext i32 %4173 to i64
  %4175 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4174
  %4176 = load %union.rec*, %union.rec** %4175, align 8
  %4177 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4178 = bitcast %union.rec* %4177 to %struct.word_type*
  %4179 = getelementptr inbounds %struct.word_type, %struct.word_type* %4178, i32 0, i32 0
  %4180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4179, i32 0, i64 0
  %4181 = getelementptr inbounds %struct.LIST, %struct.LIST* %4180, i32 0, i32 0
  store %union.rec* %4176, %union.rec** %4181, align 8
  %4182 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4183 = load i32, i32* @zz_size, align 4
  %4184 = sext i32 %4183 to i64
  %4185 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4184
  store %union.rec* %4182, %union.rec** %4185, align 8
  br label %4011

; <label>:4186                                    ; preds = %4011
  %4187 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %4187, %union.rec** @zz_hold, align 8
  %4188 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %4188, %union.rec** @zz_hold, align 8
  %4189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4190 = bitcast %union.rec* %4189 to %struct.word_type*
  %4191 = getelementptr inbounds %struct.word_type, %struct.word_type* %4190, i32 0, i32 1
  %4192 = bitcast %union.FIRST_UNION* %4191 to %struct.anon*
  %4193 = getelementptr inbounds %struct.anon, %struct.anon* %4192, i32 0, i32 0
  %4194 = load i8, i8* %4193, align 1
  %4195 = zext i8 %4194 to i32
  %4196 = icmp eq i32 %4195, 11
  br i1 %4196, label %4206, label %4197

; <label>:4197                                    ; preds = %4186
  %4198 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4199 = bitcast %union.rec* %4198 to %struct.word_type*
  %4200 = getelementptr inbounds %struct.word_type, %struct.word_type* %4199, i32 0, i32 1
  %4201 = bitcast %union.FIRST_UNION* %4200 to %struct.anon*
  %4202 = getelementptr inbounds %struct.anon, %struct.anon* %4201, i32 0, i32 0
  %4203 = load i8, i8* %4202, align 1
  %4204 = zext i8 %4203 to i32
  %4205 = icmp eq i32 %4204, 12
  br i1 %4205, label %4206, label %4214

; <label>:4206                                    ; preds = %4197, %4186
  %4207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4208 = bitcast %union.rec* %4207 to %struct.word_type*
  %4209 = getelementptr inbounds %struct.word_type, %struct.word_type* %4208, i32 0, i32 1
  %4210 = bitcast %union.FIRST_UNION* %4209 to %struct.anon*
  %4211 = getelementptr inbounds %struct.anon, %struct.anon* %4210, i32 0, i32 1
  %4212 = load i8, i8* %4211, align 1
  %4213 = zext i8 %4212 to i32
  br label %4225

; <label>:4214                                    ; preds = %4197
  %4215 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4216 = bitcast %union.rec* %4215 to %struct.word_type*
  %4217 = getelementptr inbounds %struct.word_type, %struct.word_type* %4216, i32 0, i32 1
  %4218 = bitcast %union.FIRST_UNION* %4217 to %struct.anon*
  %4219 = getelementptr inbounds %struct.anon, %struct.anon* %4218, i32 0, i32 0
  %4220 = load i8, i8* %4219, align 1
  %4221 = zext i8 %4220 to i64
  %4222 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %4221
  %4223 = load i8, i8* %4222, align 1
  %4224 = zext i8 %4223 to i32
  br label %4225

; <label>:4225                                    ; preds = %4214, %4206
  %4226 = phi i32 [ %4213, %4206 ], [ %4224, %4214 ]
  store i32 %4226, i32* @zz_size, align 4
  %4227 = load i32, i32* @zz_size, align 4
  %4228 = sext i32 %4227 to i64
  %4229 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4228
  %4230 = load %union.rec*, %union.rec** %4229, align 8
  %4231 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4232 = bitcast %union.rec* %4231 to %struct.word_type*
  %4233 = getelementptr inbounds %struct.word_type, %struct.word_type* %4232, i32 0, i32 0
  %4234 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4233, i32 0, i64 0
  %4235 = getelementptr inbounds %struct.LIST, %struct.LIST* %4234, i32 0, i32 0
  store %union.rec* %4230, %union.rec** %4235, align 8
  %4236 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4237 = load i32, i32* @zz_size, align 4
  %4238 = sext i32 %4237 to i64
  %4239 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4238
  store %union.rec* %4236, %union.rec** %4239, align 8
  br label %11

; <label>:4240                                    ; preds = %1807, %1724, %860, %136
  %4241 = load %union.rec*, %union.rec** %inners, align 8
  %4242 = icmp ne %union.rec* %4241, null
  br i1 %4242, label %4243, label %4246

; <label>:4243                                    ; preds = %4240
  %4244 = load %union.rec*, %union.rec** %inners, align 8
  %4245 = call i32 @DisposeObject(%union.rec* %4244)
  br label %4246

; <label>:4246                                    ; preds = %4243, %4240
  %4247 = load %union.rec*, %union.rec** %stop_link, align 8
  %4248 = icmp ne %union.rec* %4247, null
  br i1 %4248, label %4249, label %4266

; <label>:4249                                    ; preds = %4246
  %4250 = load %union.rec*, %union.rec** %1, align 8
  %4251 = load %union.rec*, %union.rec** %stop_link, align 8
  %4252 = load %union.rec*, %union.rec** %dest_index, align 8
  call void @Promote(%union.rec* %4250, %union.rec* %4251, %union.rec* %4252, i32 1)
  %4253 = load i32, i32* %need_adjust, align 4
  %4254 = icmp ne i32 %4253, 0
  br i1 %4254, label %4255, label %4265

; <label>:4255                                    ; preds = %4249
  %4256 = load %union.rec*, %union.rec** %dest_encl, align 8
  %4257 = load i32, i32* %stop_back, align 4
  %4258 = load i32, i32* %stop_fwd, align 4
  %4259 = load i32, i32* %dim, align 4
  call void @AdjustSize(%union.rec* %4256, i32 %4257, i32 %4258, i32 %4259)
  %4260 = load %union.rec*, %union.rec** %dest_encl, align 8
  %4261 = load i32, i32* %stop_perp_back, align 4
  %4262 = load i32, i32* %stop_perp_fwd, align 4
  %4263 = load i32, i32* %dim, align 4
  %4264 = sub nsw i32 1, %4263
  call void @AdjustSize(%union.rec* %4260, i32 %4261, i32 %4262, i32 %4264)
  br label %4265

; <label>:4265                                    ; preds = %4255, %4249
  br label %4266

; <label>:4266                                    ; preds = %4265, %4246
  %4267 = load %union.rec*, %union.rec** %y, align 8
  %4268 = bitcast %union.rec* %4267 to %struct.word_type*
  %4269 = getelementptr inbounds %struct.word_type, %struct.word_type* %4268, i32 0, i32 1
  %4270 = bitcast %union.FIRST_UNION* %4269 to %struct.anon*
  %4271 = getelementptr inbounds %struct.anon, %struct.anon* %4270, i32 0, i32 0
  %4272 = load i8, i8* %4271, align 1
  %4273 = zext i8 %4272 to i32
  %4274 = icmp eq i32 %4273, 121
  br i1 %4274, label %4275, label %6810

; <label>:4275                                    ; preds = %4266
  %4276 = load %union.rec*, %union.rec** %1, align 8
  %4277 = bitcast %union.rec* %4276 to %struct.head_type*
  %4278 = getelementptr inbounds %struct.head_type, %struct.head_type* %4277, i32 0, i32 7
  %4279 = load %union.rec*, %union.rec** %4278, align 8
  %4280 = icmp ne %union.rec* %4279, null
  br i1 %4280, label %4281, label %6810

; <label>:4281                                    ; preds = %4275
  %4282 = load i32, i32* @AllowCrossDb, align 4
  %4283 = icmp ne i32 %4282, 0
  br i1 %4283, label %4284, label %6810

; <label>:4284                                    ; preds = %4281
  %4285 = load %union.rec*, %union.rec** %1, align 8
  %4286 = bitcast %union.rec* %4285 to %struct.head_type*
  %4287 = getelementptr inbounds %struct.head_type, %struct.head_type* %4286, i32 0, i32 7
  %4288 = load %union.rec*, %union.rec** %4287, align 8
  %4289 = bitcast %union.rec* %4288 to %struct.word_type*
  %4290 = getelementptr inbounds %struct.word_type, %struct.word_type* %4289, i32 0, i32 0
  %4291 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4290, i32 0, i64 0
  %4292 = getelementptr inbounds %struct.LIST, %struct.LIST* %4291, i32 0, i32 1
  %4293 = load %union.rec*, %union.rec** %4292, align 8
  %4294 = bitcast %union.rec* %4293 to %struct.word_type*
  %4295 = getelementptr inbounds %struct.word_type, %struct.word_type* %4294, i32 0, i32 0
  %4296 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4295, i32 0, i64 1
  %4297 = getelementptr inbounds %struct.LIST, %struct.LIST* %4296, i32 0, i32 0
  %4298 = load %union.rec*, %union.rec** %4297, align 8
  store %union.rec* %4298, %union.rec** %eg, align 8
  br label %4299

; <label>:4299                                    ; preds = %4309, %4284
  %4300 = load %union.rec*, %union.rec** %eg, align 8
  %4301 = bitcast %union.rec* %4300 to %struct.word_type*
  %4302 = getelementptr inbounds %struct.word_type, %struct.word_type* %4301, i32 0, i32 1
  %4303 = bitcast %union.FIRST_UNION* %4302 to %struct.anon*
  %4304 = getelementptr inbounds %struct.anon, %struct.anon* %4303, i32 0, i32 0
  %4305 = load i8, i8* %4304, align 1
  %4306 = zext i8 %4305 to i32
  %4307 = icmp eq i32 %4306, 0
  br i1 %4307, label %4308, label %4316

; <label>:4308                                    ; preds = %4299
  br label %4309

; <label>:4309                                    ; preds = %4308
  %4310 = load %union.rec*, %union.rec** %eg, align 8
  %4311 = bitcast %union.rec* %4310 to %struct.word_type*
  %4312 = getelementptr inbounds %struct.word_type, %struct.word_type* %4311, i32 0, i32 0
  %4313 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4312, i32 0, i64 1
  %4314 = getelementptr inbounds %struct.LIST, %struct.LIST* %4313, i32 0, i32 0
  %4315 = load %union.rec*, %union.rec** %4314, align 8
  store %union.rec* %4315, %union.rec** %eg, align 8
  br label %4299

; <label>:4316                                    ; preds = %4299
  call void @SwitchScope(%union.rec* null)
  %4317 = load %union.rec*, %union.rec** %eg, align 8
  %4318 = bitcast %union.rec* %4317 to %struct.ext_gall_type*
  %4319 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %4318, i32 0, i32 2
  %4320 = load i16, i16* %4319, align 2
  %4321 = load %union.rec*, %union.rec** %eg, align 8
  %4322 = bitcast %union.rec* %4321 to %struct.ext_gall_type*
  %4323 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %4322, i32 0, i32 4
  %4324 = load i64, i64* %4323, align 8
  %4325 = load %union.rec*, %union.rec** %eg, align 8
  %4326 = bitcast %union.rec* %4325 to %struct.ext_gall_type*
  %4327 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %4326, i32 0, i32 3
  %4328 = load i32, i32* %4327, align 4
  %4329 = call %union.rec* @ReadFromFile(i16 zeroext %4320, i64 %4324, i32 %4328)
  store %union.rec* %4329, %union.rec** %val, align 8
  call void @UnSwitchScope(%union.rec* null)
  %4330 = load %union.rec*, %union.rec** %val, align 8
  %4331 = icmp eq %union.rec* %4330, null
  br i1 %4331, label %4332, label %4343

; <label>:4332                                    ; preds = %4316
  %4333 = load %union.rec*, %union.rec** %y, align 8
  %4334 = bitcast %union.rec* %4333 to %struct.word_type*
  %4335 = getelementptr inbounds %struct.word_type, %struct.word_type* %4334, i32 0, i32 1
  %4336 = bitcast %union.FIRST_UNION* %4335 to %struct.FILE_POS*
  %4337 = load %union.rec*, %union.rec** %eg, align 8
  %4338 = bitcast %union.rec* %4337 to %struct.ext_gall_type*
  %4339 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %4338, i32 0, i32 2
  %4340 = load i16, i16* %4339, align 2
  %4341 = call i8* @FileName(i16 zeroext %4340)
  %4342 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 20, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0), i32 1, %struct.FILE_POS* %4336, i8* %4341)
  br label %4343

; <label>:4343                                    ; preds = %4332, %4316
  %4344 = load %union.rec*, %union.rec** %val, align 8
  %4345 = bitcast %union.rec* %4344 to %struct.word_type*
  %4346 = getelementptr inbounds %struct.word_type, %struct.word_type* %4345, i32 0, i32 1
  %4347 = bitcast %union.FIRST_UNION* %4346 to %struct.anon*
  %4348 = getelementptr inbounds %struct.anon, %struct.anon* %4347, i32 0, i32 0
  %4349 = load i8, i8* %4348, align 1
  %4350 = zext i8 %4349 to i32
  %4351 = icmp eq i32 %4350, 2
  br i1 %4351, label %4355, label %4352

; <label>:4352                                    ; preds = %4343
  %4353 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4354 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %4353, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0))
  br label %4355

; <label>:4355                                    ; preds = %4352, %4343
  %4356 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 120), align 1
  %4357 = zext i8 %4356 to i32
  store i32 %4357, i32* @zz_size, align 4
  %4358 = sext i32 %4357 to i64
  %4359 = icmp uge i64 %4358, 265
  br i1 %4359, label %4360, label %4363

; <label>:4360                                    ; preds = %4355
  %4361 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4362 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %4361)
  br label %4388

; <label>:4363                                    ; preds = %4355
  %4364 = load i32, i32* @zz_size, align 4
  %4365 = sext i32 %4364 to i64
  %4366 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4365
  %4367 = load %union.rec*, %union.rec** %4366, align 8
  %4368 = icmp eq %union.rec* %4367, null
  br i1 %4368, label %4369, label %4373

; <label>:4369                                    ; preds = %4363
  %4370 = load i32, i32* @zz_size, align 4
  %4371 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4372 = call %union.rec* @GetMemory(i32 %4370, %struct.FILE_POS* %4371)
  store %union.rec* %4372, %union.rec** @zz_hold, align 8
  br label %4387

; <label>:4373                                    ; preds = %4363
  %4374 = load i32, i32* @zz_size, align 4
  %4375 = sext i32 %4374 to i64
  %4376 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4375
  %4377 = load %union.rec*, %union.rec** %4376, align 8
  store %union.rec* %4377, %union.rec** @zz_hold, align 8
  store %union.rec* %4377, %union.rec** @zz_hold, align 8
  %4378 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4379 = bitcast %union.rec* %4378 to %struct.word_type*
  %4380 = getelementptr inbounds %struct.word_type, %struct.word_type* %4379, i32 0, i32 0
  %4381 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4380, i32 0, i64 0
  %4382 = getelementptr inbounds %struct.LIST, %struct.LIST* %4381, i32 0, i32 0
  %4383 = load %union.rec*, %union.rec** %4382, align 8
  %4384 = load i32, i32* @zz_size, align 4
  %4385 = sext i32 %4384 to i64
  %4386 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4385
  store %union.rec* %4383, %union.rec** %4386, align 8
  br label %4387

; <label>:4387                                    ; preds = %4373, %4369
  br label %4388

; <label>:4388                                    ; preds = %4387, %4360
  %4389 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4390 = bitcast %union.rec* %4389 to %struct.word_type*
  %4391 = getelementptr inbounds %struct.word_type, %struct.word_type* %4390, i32 0, i32 1
  %4392 = bitcast %union.FIRST_UNION* %4391 to %struct.anon*
  %4393 = getelementptr inbounds %struct.anon, %struct.anon* %4392, i32 0, i32 0
  store i8 120, i8* %4393, align 1
  %4394 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4395 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4396 = bitcast %union.rec* %4395 to %struct.word_type*
  %4397 = getelementptr inbounds %struct.word_type, %struct.word_type* %4396, i32 0, i32 0
  %4398 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4397, i32 0, i64 1
  %4399 = getelementptr inbounds %struct.LIST, %struct.LIST* %4398, i32 0, i32 1
  store %union.rec* %4394, %union.rec** %4399, align 8
  %4400 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4401 = bitcast %union.rec* %4400 to %struct.word_type*
  %4402 = getelementptr inbounds %struct.word_type, %struct.word_type* %4401, i32 0, i32 0
  %4403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4402, i32 0, i64 1
  %4404 = getelementptr inbounds %struct.LIST, %struct.LIST* %4403, i32 0, i32 0
  store %union.rec* %4394, %union.rec** %4404, align 8
  %4405 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4406 = bitcast %union.rec* %4405 to %struct.word_type*
  %4407 = getelementptr inbounds %struct.word_type, %struct.word_type* %4406, i32 0, i32 0
  %4408 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4407, i32 0, i64 0
  %4409 = getelementptr inbounds %struct.LIST, %struct.LIST* %4408, i32 0, i32 1
  store %union.rec* %4394, %union.rec** %4409, align 8
  %4410 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4411 = bitcast %union.rec* %4410 to %struct.word_type*
  %4412 = getelementptr inbounds %struct.word_type, %struct.word_type* %4411, i32 0, i32 0
  %4413 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4412, i32 0, i64 0
  %4414 = getelementptr inbounds %struct.LIST, %struct.LIST* %4413, i32 0, i32 0
  store %union.rec* %4394, %union.rec** %4414, align 8
  store %union.rec* %4394, %union.rec** %index2, align 8
  %4415 = load %union.rec*, %union.rec** %index2, align 8
  %4416 = bitcast %union.rec* %4415 to %struct.closure_type*
  %4417 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %4416, i32 0, i32 6
  %4418 = bitcast %union.anon.12* %4417 to %union.rec**
  store %union.rec* null, %union.rec** %4418, align 8
  %4419 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 8), align 1
  %4420 = zext i8 %4419 to i32
  store i32 %4420, i32* @zz_size, align 4
  %4421 = sext i32 %4420 to i64
  %4422 = icmp uge i64 %4421, 265
  br i1 %4422, label %4423, label %4426

; <label>:4423                                    ; preds = %4388
  %4424 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4425 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %4424)
  br label %4451

; <label>:4426                                    ; preds = %4388
  %4427 = load i32, i32* @zz_size, align 4
  %4428 = sext i32 %4427 to i64
  %4429 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4428
  %4430 = load %union.rec*, %union.rec** %4429, align 8
  %4431 = icmp eq %union.rec* %4430, null
  br i1 %4431, label %4432, label %4436

; <label>:4432                                    ; preds = %4426
  %4433 = load i32, i32* @zz_size, align 4
  %4434 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4435 = call %union.rec* @GetMemory(i32 %4433, %struct.FILE_POS* %4434)
  store %union.rec* %4435, %union.rec** @zz_hold, align 8
  br label %4450

; <label>:4436                                    ; preds = %4426
  %4437 = load i32, i32* @zz_size, align 4
  %4438 = sext i32 %4437 to i64
  %4439 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4438
  %4440 = load %union.rec*, %union.rec** %4439, align 8
  store %union.rec* %4440, %union.rec** @zz_hold, align 8
  store %union.rec* %4440, %union.rec** @zz_hold, align 8
  %4441 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4442 = bitcast %union.rec* %4441 to %struct.word_type*
  %4443 = getelementptr inbounds %struct.word_type, %struct.word_type* %4442, i32 0, i32 0
  %4444 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4443, i32 0, i64 0
  %4445 = getelementptr inbounds %struct.LIST, %struct.LIST* %4444, i32 0, i32 0
  %4446 = load %union.rec*, %union.rec** %4445, align 8
  %4447 = load i32, i32* @zz_size, align 4
  %4448 = sext i32 %4447 to i64
  %4449 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4448
  store %union.rec* %4446, %union.rec** %4449, align 8
  br label %4450

; <label>:4450                                    ; preds = %4436, %4432
  br label %4451

; <label>:4451                                    ; preds = %4450, %4423
  %4452 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4453 = bitcast %union.rec* %4452 to %struct.word_type*
  %4454 = getelementptr inbounds %struct.word_type, %struct.word_type* %4453, i32 0, i32 1
  %4455 = bitcast %union.FIRST_UNION* %4454 to %struct.anon*
  %4456 = getelementptr inbounds %struct.anon, %struct.anon* %4455, i32 0, i32 0
  store i8 8, i8* %4456, align 1
  %4457 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4458 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4459 = bitcast %union.rec* %4458 to %struct.word_type*
  %4460 = getelementptr inbounds %struct.word_type, %struct.word_type* %4459, i32 0, i32 0
  %4461 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4460, i32 0, i64 1
  %4462 = getelementptr inbounds %struct.LIST, %struct.LIST* %4461, i32 0, i32 1
  store %union.rec* %4457, %union.rec** %4462, align 8
  %4463 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4464 = bitcast %union.rec* %4463 to %struct.word_type*
  %4465 = getelementptr inbounds %struct.word_type, %struct.word_type* %4464, i32 0, i32 0
  %4466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4465, i32 0, i64 1
  %4467 = getelementptr inbounds %struct.LIST, %struct.LIST* %4466, i32 0, i32 0
  store %union.rec* %4457, %union.rec** %4467, align 8
  %4468 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4469 = bitcast %union.rec* %4468 to %struct.word_type*
  %4470 = getelementptr inbounds %struct.word_type, %struct.word_type* %4469, i32 0, i32 0
  %4471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4470, i32 0, i64 0
  %4472 = getelementptr inbounds %struct.LIST, %struct.LIST* %4471, i32 0, i32 1
  store %union.rec* %4457, %union.rec** %4472, align 8
  %4473 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4474 = bitcast %union.rec* %4473 to %struct.word_type*
  %4475 = getelementptr inbounds %struct.word_type, %struct.word_type* %4474, i32 0, i32 0
  %4476 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4475, i32 0, i64 0
  %4477 = getelementptr inbounds %struct.LIST, %struct.LIST* %4476, i32 0, i32 0
  store %union.rec* %4457, %union.rec** %4477, align 8
  store %union.rec* %4457, %union.rec** %hd2, align 8
  %4478 = load %union.rec*, %union.rec** %val, align 8
  %4479 = bitcast %union.rec* %4478 to %struct.word_type*
  %4480 = getelementptr inbounds %struct.word_type, %struct.word_type* %4479, i32 0, i32 1
  %4481 = bitcast %union.FIRST_UNION* %4480 to %struct.FILE_POS*
  %4482 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %4481, i32 0, i32 2
  %4483 = load i16, i16* %4482, align 2
  %4484 = load %union.rec*, %union.rec** %hd2, align 8
  %4485 = bitcast %union.rec* %4484 to %struct.word_type*
  %4486 = getelementptr inbounds %struct.word_type, %struct.word_type* %4485, i32 0, i32 1
  %4487 = bitcast %union.FIRST_UNION* %4486 to %struct.FILE_POS*
  %4488 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %4487, i32 0, i32 2
  store i16 %4483, i16* %4488, align 2
  %4489 = load %union.rec*, %union.rec** %val, align 8
  %4490 = bitcast %union.rec* %4489 to %struct.word_type*
  %4491 = getelementptr inbounds %struct.word_type, %struct.word_type* %4490, i32 0, i32 1
  %4492 = bitcast %union.FIRST_UNION* %4491 to %struct.FILE_POS*
  %4493 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %4492, i32 0, i32 3
  %4494 = load i32, i32* %4493, align 4
  %4495 = and i32 %4494, 1048575
  %4496 = load %union.rec*, %union.rec** %hd2, align 8
  %4497 = bitcast %union.rec* %4496 to %struct.word_type*
  %4498 = getelementptr inbounds %struct.word_type, %struct.word_type* %4497, i32 0, i32 1
  %4499 = bitcast %union.FIRST_UNION* %4498 to %struct.FILE_POS*
  %4500 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %4499, i32 0, i32 3
  %4501 = load i32, i32* %4500, align 4
  %4502 = and i32 %4495, 1048575
  %4503 = and i32 %4501, -1048576
  %4504 = or i32 %4503, %4502
  store i32 %4504, i32* %4500, align 4
  %4505 = load %union.rec*, %union.rec** %val, align 8
  %4506 = bitcast %union.rec* %4505 to %struct.word_type*
  %4507 = getelementptr inbounds %struct.word_type, %struct.word_type* %4506, i32 0, i32 1
  %4508 = bitcast %union.FIRST_UNION* %4507 to %struct.FILE_POS*
  %4509 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %4508, i32 0, i32 3
  %4510 = load i32, i32* %4509, align 4
  %4511 = lshr i32 %4510, 20
  %4512 = load %union.rec*, %union.rec** %hd2, align 8
  %4513 = bitcast %union.rec* %4512 to %struct.word_type*
  %4514 = getelementptr inbounds %struct.word_type, %struct.word_type* %4513, i32 0, i32 1
  %4515 = bitcast %union.FIRST_UNION* %4514 to %struct.FILE_POS*
  %4516 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %4515, i32 0, i32 3
  %4517 = load i32, i32* %4516, align 4
  %4518 = and i32 %4511, 4095
  %4519 = shl i32 %4518, 20
  %4520 = and i32 %4517, 1048575
  %4521 = or i32 %4520, %4519
  store i32 %4521, i32* %4516, align 4
  %4522 = load %union.rec*, %union.rec** %val, align 8
  %4523 = bitcast %union.rec* %4522 to %struct.closure_type*
  %4524 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %4523, i32 0, i32 5
  %4525 = load %union.rec*, %union.rec** %4524, align 8
  %4526 = load %union.rec*, %union.rec** %hd2, align 8
  %4527 = bitcast %union.rec* %4526 to %struct.closure_type*
  %4528 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %4527, i32 0, i32 5
  store %union.rec* %4525, %union.rec** %4528, align 8
  %4529 = load %union.rec*, %union.rec** %hd2, align 8
  %4530 = bitcast %union.rec* %4529 to %struct.head_type*
  %4531 = getelementptr inbounds %struct.head_type, %struct.head_type* %4530, i32 0, i32 11
  store %union.rec* null, %union.rec** %4531, align 8
  %4532 = load %union.rec*, %union.rec** %hd2, align 8
  %4533 = bitcast %union.rec* %4532 to %struct.head_type*
  %4534 = getelementptr inbounds %struct.head_type, %struct.head_type* %4533, i32 0, i32 9
  store %union.rec* null, %union.rec** %4534, align 8
  %4535 = load %union.rec*, %union.rec** %hd2, align 8
  %4536 = bitcast %union.rec* %4535 to %struct.head_type*
  %4537 = getelementptr inbounds %struct.head_type, %struct.head_type* %4536, i32 0, i32 8
  store %union.rec* null, %union.rec** %4537, align 8
  %4538 = load %union.rec*, %union.rec** %val, align 8
  %4539 = bitcast %union.rec* %4538 to %struct.closure_type*
  %4540 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %4539, i32 0, i32 5
  %4541 = load %union.rec*, %union.rec** %4540, align 8
  %4542 = bitcast %union.rec* %4541 to %struct.word_type*
  %4543 = getelementptr inbounds %struct.word_type, %struct.word_type* %4542, i32 0, i32 2
  %4544 = bitcast %union.SECOND_UNION* %4543 to %struct.anon.5*
  %4545 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %4544, i32 0, i32 1
  %4546 = bitcast [3 x i8]* %4545 to i24*
  %4547 = load i24, i24* %4546, align 1
  %4548 = lshr i24 %4547, 21
  %4549 = and i24 %4548, 1
  %4550 = zext i24 %4549 to i32
  %4551 = load %union.rec*, %union.rec** %hd2, align 8
  %4552 = bitcast %union.rec* %4551 to %struct.word_type*
  %4553 = getelementptr inbounds %struct.word_type, %struct.word_type* %4552, i32 0, i32 2
  %4554 = bitcast %union.SECOND_UNION* %4553 to %struct.anon.2*
  %4555 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4554, i32 0, i32 2
  %4556 = trunc i32 %4550 to i16
  %4557 = load i16, i16* %4555, align 2
  %4558 = and i16 %4556, 1
  %4559 = shl i16 %4558, 8
  %4560 = and i16 %4557, -257
  %4561 = or i16 %4560, %4559
  store i16 %4561, i16* %4555, align 2
  %4562 = zext i16 %4558 to i32
  %4563 = load %union.rec*, %union.rec** %hd2, align 8
  %4564 = bitcast %union.rec* %4563 to %struct.word_type*
  %4565 = getelementptr inbounds %struct.word_type, %struct.word_type* %4564, i32 0, i32 2
  %4566 = bitcast %union.SECOND_UNION* %4565 to %struct.anon.2*
  %4567 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4566, i32 0, i32 2
  %4568 = load i16, i16* %4567, align 2
  %4569 = and i16 %4568, -3
  store i16 %4569, i16* %4567, align 2
  %4570 = load %union.rec*, %union.rec** %hd2, align 8
  %4571 = bitcast %union.rec* %4570 to %struct.head_type*
  %4572 = getelementptr inbounds %struct.head_type, %struct.head_type* %4571, i32 0, i32 7
  store %union.rec* null, %union.rec** %4572, align 8
  %4573 = load %union.rec*, %union.rec** %hd2, align 8
  %4574 = bitcast %union.rec* %4573 to %struct.word_type*
  %4575 = getelementptr inbounds %struct.word_type, %struct.word_type* %4574, i32 0, i32 2
  %4576 = bitcast %union.SECOND_UNION* %4575 to %struct.anon.2*
  %4577 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4576, i32 0, i32 2
  %4578 = load i16, i16* %4577, align 2
  %4579 = and i16 %4578, -129
  %4580 = or i16 %4579, 128
  store i16 %4580, i16* %4577, align 2
  %4581 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %4582 = zext i8 %4581 to i32
  store i32 %4582, i32* @zz_size, align 4
  %4583 = sext i32 %4582 to i64
  %4584 = icmp uge i64 %4583, 265
  br i1 %4584, label %4585, label %4588

; <label>:4585                                    ; preds = %4451
  %4586 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4587 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %4586)
  br label %4613

; <label>:4588                                    ; preds = %4451
  %4589 = load i32, i32* @zz_size, align 4
  %4590 = sext i32 %4589 to i64
  %4591 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4590
  %4592 = load %union.rec*, %union.rec** %4591, align 8
  %4593 = icmp eq %union.rec* %4592, null
  br i1 %4593, label %4594, label %4598

; <label>:4594                                    ; preds = %4588
  %4595 = load i32, i32* @zz_size, align 4
  %4596 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4597 = call %union.rec* @GetMemory(i32 %4595, %struct.FILE_POS* %4596)
  store %union.rec* %4597, %union.rec** @zz_hold, align 8
  br label %4612

; <label>:4598                                    ; preds = %4588
  %4599 = load i32, i32* @zz_size, align 4
  %4600 = sext i32 %4599 to i64
  %4601 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4600
  %4602 = load %union.rec*, %union.rec** %4601, align 8
  store %union.rec* %4602, %union.rec** @zz_hold, align 8
  store %union.rec* %4602, %union.rec** @zz_hold, align 8
  %4603 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4604 = bitcast %union.rec* %4603 to %struct.word_type*
  %4605 = getelementptr inbounds %struct.word_type, %struct.word_type* %4604, i32 0, i32 0
  %4606 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4605, i32 0, i64 0
  %4607 = getelementptr inbounds %struct.LIST, %struct.LIST* %4606, i32 0, i32 0
  %4608 = load %union.rec*, %union.rec** %4607, align 8
  %4609 = load i32, i32* @zz_size, align 4
  %4610 = sext i32 %4609 to i64
  %4611 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4610
  store %union.rec* %4608, %union.rec** %4611, align 8
  br label %4612

; <label>:4612                                    ; preds = %4598, %4594
  br label %4613

; <label>:4613                                    ; preds = %4612, %4585
  %4614 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4615 = bitcast %union.rec* %4614 to %struct.word_type*
  %4616 = getelementptr inbounds %struct.word_type, %struct.word_type* %4615, i32 0, i32 1
  %4617 = bitcast %union.FIRST_UNION* %4616 to %struct.anon*
  %4618 = getelementptr inbounds %struct.anon, %struct.anon* %4617, i32 0, i32 0
  store i8 0, i8* %4618, align 1
  %4619 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4620 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4621 = bitcast %union.rec* %4620 to %struct.word_type*
  %4622 = getelementptr inbounds %struct.word_type, %struct.word_type* %4621, i32 0, i32 0
  %4623 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4622, i32 0, i64 1
  %4624 = getelementptr inbounds %struct.LIST, %struct.LIST* %4623, i32 0, i32 1
  store %union.rec* %4619, %union.rec** %4624, align 8
  %4625 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4626 = bitcast %union.rec* %4625 to %struct.word_type*
  %4627 = getelementptr inbounds %struct.word_type, %struct.word_type* %4626, i32 0, i32 0
  %4628 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4627, i32 0, i64 1
  %4629 = getelementptr inbounds %struct.LIST, %struct.LIST* %4628, i32 0, i32 0
  store %union.rec* %4619, %union.rec** %4629, align 8
  %4630 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4631 = bitcast %union.rec* %4630 to %struct.word_type*
  %4632 = getelementptr inbounds %struct.word_type, %struct.word_type* %4631, i32 0, i32 0
  %4633 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4632, i32 0, i64 0
  %4634 = getelementptr inbounds %struct.LIST, %struct.LIST* %4633, i32 0, i32 1
  store %union.rec* %4619, %union.rec** %4634, align 8
  %4635 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4636 = bitcast %union.rec* %4635 to %struct.word_type*
  %4637 = getelementptr inbounds %struct.word_type, %struct.word_type* %4636, i32 0, i32 0
  %4638 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4637, i32 0, i64 0
  %4639 = getelementptr inbounds %struct.LIST, %struct.LIST* %4638, i32 0, i32 0
  store %union.rec* %4619, %union.rec** %4639, align 8
  store %union.rec* %4619, %union.rec** @xx_link, align 8
  %4640 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4640, %union.rec** @zz_res, align 8
  %4641 = load %union.rec*, %union.rec** %index2, align 8
  store %union.rec* %4641, %union.rec** @zz_hold, align 8
  %4642 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4643 = icmp eq %union.rec* %4642, null
  br i1 %4643, label %4644, label %4646

; <label>:4644                                    ; preds = %4613
  %4645 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4694

; <label>:4646                                    ; preds = %4613
  %4647 = load %union.rec*, %union.rec** @zz_res, align 8
  %4648 = icmp eq %union.rec* %4647, null
  br i1 %4648, label %4649, label %4651

; <label>:4649                                    ; preds = %4646
  %4650 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %4692

; <label>:4651                                    ; preds = %4646
  %4652 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4653 = bitcast %union.rec* %4652 to %struct.word_type*
  %4654 = getelementptr inbounds %struct.word_type, %struct.word_type* %4653, i32 0, i32 0
  %4655 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4654, i32 0, i64 0
  %4656 = getelementptr inbounds %struct.LIST, %struct.LIST* %4655, i32 0, i32 0
  %4657 = load %union.rec*, %union.rec** %4656, align 8
  store %union.rec* %4657, %union.rec** @zz_tmp, align 8
  %4658 = load %union.rec*, %union.rec** @zz_res, align 8
  %4659 = bitcast %union.rec* %4658 to %struct.word_type*
  %4660 = getelementptr inbounds %struct.word_type, %struct.word_type* %4659, i32 0, i32 0
  %4661 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4660, i32 0, i64 0
  %4662 = getelementptr inbounds %struct.LIST, %struct.LIST* %4661, i32 0, i32 0
  %4663 = load %union.rec*, %union.rec** %4662, align 8
  %4664 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4665 = bitcast %union.rec* %4664 to %struct.word_type*
  %4666 = getelementptr inbounds %struct.word_type, %struct.word_type* %4665, i32 0, i32 0
  %4667 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4666, i32 0, i64 0
  %4668 = getelementptr inbounds %struct.LIST, %struct.LIST* %4667, i32 0, i32 0
  store %union.rec* %4663, %union.rec** %4668, align 8
  %4669 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4670 = load %union.rec*, %union.rec** @zz_res, align 8
  %4671 = bitcast %union.rec* %4670 to %struct.word_type*
  %4672 = getelementptr inbounds %struct.word_type, %struct.word_type* %4671, i32 0, i32 0
  %4673 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4672, i32 0, i64 0
  %4674 = getelementptr inbounds %struct.LIST, %struct.LIST* %4673, i32 0, i32 0
  %4675 = load %union.rec*, %union.rec** %4674, align 8
  %4676 = bitcast %union.rec* %4675 to %struct.word_type*
  %4677 = getelementptr inbounds %struct.word_type, %struct.word_type* %4676, i32 0, i32 0
  %4678 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4677, i32 0, i64 0
  %4679 = getelementptr inbounds %struct.LIST, %struct.LIST* %4678, i32 0, i32 1
  store %union.rec* %4669, %union.rec** %4679, align 8
  %4680 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4681 = load %union.rec*, %union.rec** @zz_res, align 8
  %4682 = bitcast %union.rec* %4681 to %struct.word_type*
  %4683 = getelementptr inbounds %struct.word_type, %struct.word_type* %4682, i32 0, i32 0
  %4684 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4683, i32 0, i64 0
  %4685 = getelementptr inbounds %struct.LIST, %struct.LIST* %4684, i32 0, i32 0
  store %union.rec* %4680, %union.rec** %4685, align 8
  %4686 = load %union.rec*, %union.rec** @zz_res, align 8
  %4687 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4688 = bitcast %union.rec* %4687 to %struct.word_type*
  %4689 = getelementptr inbounds %struct.word_type, %struct.word_type* %4688, i32 0, i32 0
  %4690 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4689, i32 0, i64 0
  %4691 = getelementptr inbounds %struct.LIST, %struct.LIST* %4690, i32 0, i32 1
  store %union.rec* %4686, %union.rec** %4691, align 8
  br label %4692

; <label>:4692                                    ; preds = %4651, %4649
  %4693 = phi %union.rec* [ %4650, %4649 ], [ %4686, %4651 ]
  br label %4694

; <label>:4694                                    ; preds = %4692, %4644
  %4695 = phi %union.rec* [ %4645, %4644 ], [ %4693, %4692 ]
  %4696 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4696, %union.rec** @zz_res, align 8
  %4697 = load %union.rec*, %union.rec** %hd2, align 8
  store %union.rec* %4697, %union.rec** @zz_hold, align 8
  %4698 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4699 = icmp eq %union.rec* %4698, null
  br i1 %4699, label %4700, label %4702

; <label>:4700                                    ; preds = %4694
  %4701 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4750

; <label>:4702                                    ; preds = %4694
  %4703 = load %union.rec*, %union.rec** @zz_res, align 8
  %4704 = icmp eq %union.rec* %4703, null
  br i1 %4704, label %4705, label %4707

; <label>:4705                                    ; preds = %4702
  %4706 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %4748

; <label>:4707                                    ; preds = %4702
  %4708 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4709 = bitcast %union.rec* %4708 to %struct.word_type*
  %4710 = getelementptr inbounds %struct.word_type, %struct.word_type* %4709, i32 0, i32 0
  %4711 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4710, i32 0, i64 1
  %4712 = getelementptr inbounds %struct.LIST, %struct.LIST* %4711, i32 0, i32 0
  %4713 = load %union.rec*, %union.rec** %4712, align 8
  store %union.rec* %4713, %union.rec** @zz_tmp, align 8
  %4714 = load %union.rec*, %union.rec** @zz_res, align 8
  %4715 = bitcast %union.rec* %4714 to %struct.word_type*
  %4716 = getelementptr inbounds %struct.word_type, %struct.word_type* %4715, i32 0, i32 0
  %4717 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4716, i32 0, i64 1
  %4718 = getelementptr inbounds %struct.LIST, %struct.LIST* %4717, i32 0, i32 0
  %4719 = load %union.rec*, %union.rec** %4718, align 8
  %4720 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4721 = bitcast %union.rec* %4720 to %struct.word_type*
  %4722 = getelementptr inbounds %struct.word_type, %struct.word_type* %4721, i32 0, i32 0
  %4723 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4722, i32 0, i64 1
  %4724 = getelementptr inbounds %struct.LIST, %struct.LIST* %4723, i32 0, i32 0
  store %union.rec* %4719, %union.rec** %4724, align 8
  %4725 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4726 = load %union.rec*, %union.rec** @zz_res, align 8
  %4727 = bitcast %union.rec* %4726 to %struct.word_type*
  %4728 = getelementptr inbounds %struct.word_type, %struct.word_type* %4727, i32 0, i32 0
  %4729 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4728, i32 0, i64 1
  %4730 = getelementptr inbounds %struct.LIST, %struct.LIST* %4729, i32 0, i32 0
  %4731 = load %union.rec*, %union.rec** %4730, align 8
  %4732 = bitcast %union.rec* %4731 to %struct.word_type*
  %4733 = getelementptr inbounds %struct.word_type, %struct.word_type* %4732, i32 0, i32 0
  %4734 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4733, i32 0, i64 1
  %4735 = getelementptr inbounds %struct.LIST, %struct.LIST* %4734, i32 0, i32 1
  store %union.rec* %4725, %union.rec** %4735, align 8
  %4736 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4737 = load %union.rec*, %union.rec** @zz_res, align 8
  %4738 = bitcast %union.rec* %4737 to %struct.word_type*
  %4739 = getelementptr inbounds %struct.word_type, %struct.word_type* %4738, i32 0, i32 0
  %4740 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4739, i32 0, i64 1
  %4741 = getelementptr inbounds %struct.LIST, %struct.LIST* %4740, i32 0, i32 0
  store %union.rec* %4736, %union.rec** %4741, align 8
  %4742 = load %union.rec*, %union.rec** @zz_res, align 8
  %4743 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4744 = bitcast %union.rec* %4743 to %struct.word_type*
  %4745 = getelementptr inbounds %struct.word_type, %struct.word_type* %4744, i32 0, i32 0
  %4746 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4745, i32 0, i64 1
  %4747 = getelementptr inbounds %struct.LIST, %struct.LIST* %4746, i32 0, i32 1
  store %union.rec* %4742, %union.rec** %4747, align 8
  br label %4748

; <label>:4748                                    ; preds = %4707, %4705
  %4749 = phi %union.rec* [ %4706, %4705 ], [ %4742, %4707 ]
  br label %4750

; <label>:4750                                    ; preds = %4748, %4700
  %4751 = phi %union.rec* [ %4701, %4700 ], [ %4749, %4748 ]
  %4752 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %4753 = zext i8 %4752 to i32
  store i32 %4753, i32* @zz_size, align 4
  %4754 = sext i32 %4753 to i64
  %4755 = icmp uge i64 %4754, 265
  br i1 %4755, label %4756, label %4759

; <label>:4756                                    ; preds = %4750
  %4757 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4758 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %4757)
  br label %4784

; <label>:4759                                    ; preds = %4750
  %4760 = load i32, i32* @zz_size, align 4
  %4761 = sext i32 %4760 to i64
  %4762 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4761
  %4763 = load %union.rec*, %union.rec** %4762, align 8
  %4764 = icmp eq %union.rec* %4763, null
  br i1 %4764, label %4765, label %4769

; <label>:4765                                    ; preds = %4759
  %4766 = load i32, i32* @zz_size, align 4
  %4767 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4768 = call %union.rec* @GetMemory(i32 %4766, %struct.FILE_POS* %4767)
  store %union.rec* %4768, %union.rec** @zz_hold, align 8
  br label %4783

; <label>:4769                                    ; preds = %4759
  %4770 = load i32, i32* @zz_size, align 4
  %4771 = sext i32 %4770 to i64
  %4772 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4771
  %4773 = load %union.rec*, %union.rec** %4772, align 8
  store %union.rec* %4773, %union.rec** @zz_hold, align 8
  store %union.rec* %4773, %union.rec** @zz_hold, align 8
  %4774 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4775 = bitcast %union.rec* %4774 to %struct.word_type*
  %4776 = getelementptr inbounds %struct.word_type, %struct.word_type* %4775, i32 0, i32 0
  %4777 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4776, i32 0, i64 0
  %4778 = getelementptr inbounds %struct.LIST, %struct.LIST* %4777, i32 0, i32 0
  %4779 = load %union.rec*, %union.rec** %4778, align 8
  %4780 = load i32, i32* @zz_size, align 4
  %4781 = sext i32 %4780 to i64
  %4782 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4781
  store %union.rec* %4779, %union.rec** %4782, align 8
  br label %4783

; <label>:4783                                    ; preds = %4769, %4765
  br label %4784

; <label>:4784                                    ; preds = %4783, %4756
  %4785 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4786 = bitcast %union.rec* %4785 to %struct.word_type*
  %4787 = getelementptr inbounds %struct.word_type, %struct.word_type* %4786, i32 0, i32 1
  %4788 = bitcast %union.FIRST_UNION* %4787 to %struct.anon*
  %4789 = getelementptr inbounds %struct.anon, %struct.anon* %4788, i32 0, i32 0
  store i8 0, i8* %4789, align 1
  %4790 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4791 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4792 = bitcast %union.rec* %4791 to %struct.word_type*
  %4793 = getelementptr inbounds %struct.word_type, %struct.word_type* %4792, i32 0, i32 0
  %4794 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4793, i32 0, i64 1
  %4795 = getelementptr inbounds %struct.LIST, %struct.LIST* %4794, i32 0, i32 1
  store %union.rec* %4790, %union.rec** %4795, align 8
  %4796 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4797 = bitcast %union.rec* %4796 to %struct.word_type*
  %4798 = getelementptr inbounds %struct.word_type, %struct.word_type* %4797, i32 0, i32 0
  %4799 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4798, i32 0, i64 1
  %4800 = getelementptr inbounds %struct.LIST, %struct.LIST* %4799, i32 0, i32 0
  store %union.rec* %4790, %union.rec** %4800, align 8
  %4801 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4802 = bitcast %union.rec* %4801 to %struct.word_type*
  %4803 = getelementptr inbounds %struct.word_type, %struct.word_type* %4802, i32 0, i32 0
  %4804 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4803, i32 0, i64 0
  %4805 = getelementptr inbounds %struct.LIST, %struct.LIST* %4804, i32 0, i32 1
  store %union.rec* %4790, %union.rec** %4805, align 8
  %4806 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4807 = bitcast %union.rec* %4806 to %struct.word_type*
  %4808 = getelementptr inbounds %struct.word_type, %struct.word_type* %4807, i32 0, i32 0
  %4809 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4808, i32 0, i64 0
  %4810 = getelementptr inbounds %struct.LIST, %struct.LIST* %4809, i32 0, i32 0
  store %union.rec* %4790, %union.rec** %4810, align 8
  store %union.rec* %4790, %union.rec** @xx_link, align 8
  %4811 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4811, %union.rec** @zz_res, align 8
  %4812 = load %union.rec*, %union.rec** %hd2, align 8
  store %union.rec* %4812, %union.rec** @zz_hold, align 8
  %4813 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4814 = icmp eq %union.rec* %4813, null
  br i1 %4814, label %4815, label %4817

; <label>:4815                                    ; preds = %4784
  %4816 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4865

; <label>:4817                                    ; preds = %4784
  %4818 = load %union.rec*, %union.rec** @zz_res, align 8
  %4819 = icmp eq %union.rec* %4818, null
  br i1 %4819, label %4820, label %4822

; <label>:4820                                    ; preds = %4817
  %4821 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %4863

; <label>:4822                                    ; preds = %4817
  %4823 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4824 = bitcast %union.rec* %4823 to %struct.word_type*
  %4825 = getelementptr inbounds %struct.word_type, %struct.word_type* %4824, i32 0, i32 0
  %4826 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4825, i32 0, i64 0
  %4827 = getelementptr inbounds %struct.LIST, %struct.LIST* %4826, i32 0, i32 0
  %4828 = load %union.rec*, %union.rec** %4827, align 8
  store %union.rec* %4828, %union.rec** @zz_tmp, align 8
  %4829 = load %union.rec*, %union.rec** @zz_res, align 8
  %4830 = bitcast %union.rec* %4829 to %struct.word_type*
  %4831 = getelementptr inbounds %struct.word_type, %struct.word_type* %4830, i32 0, i32 0
  %4832 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4831, i32 0, i64 0
  %4833 = getelementptr inbounds %struct.LIST, %struct.LIST* %4832, i32 0, i32 0
  %4834 = load %union.rec*, %union.rec** %4833, align 8
  %4835 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4836 = bitcast %union.rec* %4835 to %struct.word_type*
  %4837 = getelementptr inbounds %struct.word_type, %struct.word_type* %4836, i32 0, i32 0
  %4838 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4837, i32 0, i64 0
  %4839 = getelementptr inbounds %struct.LIST, %struct.LIST* %4838, i32 0, i32 0
  store %union.rec* %4834, %union.rec** %4839, align 8
  %4840 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4841 = load %union.rec*, %union.rec** @zz_res, align 8
  %4842 = bitcast %union.rec* %4841 to %struct.word_type*
  %4843 = getelementptr inbounds %struct.word_type, %struct.word_type* %4842, i32 0, i32 0
  %4844 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4843, i32 0, i64 0
  %4845 = getelementptr inbounds %struct.LIST, %struct.LIST* %4844, i32 0, i32 0
  %4846 = load %union.rec*, %union.rec** %4845, align 8
  %4847 = bitcast %union.rec* %4846 to %struct.word_type*
  %4848 = getelementptr inbounds %struct.word_type, %struct.word_type* %4847, i32 0, i32 0
  %4849 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4848, i32 0, i64 0
  %4850 = getelementptr inbounds %struct.LIST, %struct.LIST* %4849, i32 0, i32 1
  store %union.rec* %4840, %union.rec** %4850, align 8
  %4851 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4852 = load %union.rec*, %union.rec** @zz_res, align 8
  %4853 = bitcast %union.rec* %4852 to %struct.word_type*
  %4854 = getelementptr inbounds %struct.word_type, %struct.word_type* %4853, i32 0, i32 0
  %4855 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4854, i32 0, i64 0
  %4856 = getelementptr inbounds %struct.LIST, %struct.LIST* %4855, i32 0, i32 0
  store %union.rec* %4851, %union.rec** %4856, align 8
  %4857 = load %union.rec*, %union.rec** @zz_res, align 8
  %4858 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4859 = bitcast %union.rec* %4858 to %struct.word_type*
  %4860 = getelementptr inbounds %struct.word_type, %struct.word_type* %4859, i32 0, i32 0
  %4861 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4860, i32 0, i64 0
  %4862 = getelementptr inbounds %struct.LIST, %struct.LIST* %4861, i32 0, i32 1
  store %union.rec* %4857, %union.rec** %4862, align 8
  br label %4863

; <label>:4863                                    ; preds = %4822, %4820
  %4864 = phi %union.rec* [ %4821, %4820 ], [ %4857, %4822 ]
  br label %4865

; <label>:4865                                    ; preds = %4863, %4815
  %4866 = phi %union.rec* [ %4816, %4815 ], [ %4864, %4863 ]
  %4867 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4867, %union.rec** @zz_res, align 8
  %4868 = load %union.rec*, %union.rec** %val, align 8
  store %union.rec* %4868, %union.rec** @zz_hold, align 8
  %4869 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4870 = icmp eq %union.rec* %4869, null
  br i1 %4870, label %4871, label %4873

; <label>:4871                                    ; preds = %4865
  %4872 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4921

; <label>:4873                                    ; preds = %4865
  %4874 = load %union.rec*, %union.rec** @zz_res, align 8
  %4875 = icmp eq %union.rec* %4874, null
  br i1 %4875, label %4876, label %4878

; <label>:4876                                    ; preds = %4873
  %4877 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %4919

; <label>:4878                                    ; preds = %4873
  %4879 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4880 = bitcast %union.rec* %4879 to %struct.word_type*
  %4881 = getelementptr inbounds %struct.word_type, %struct.word_type* %4880, i32 0, i32 0
  %4882 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4881, i32 0, i64 1
  %4883 = getelementptr inbounds %struct.LIST, %struct.LIST* %4882, i32 0, i32 0
  %4884 = load %union.rec*, %union.rec** %4883, align 8
  store %union.rec* %4884, %union.rec** @zz_tmp, align 8
  %4885 = load %union.rec*, %union.rec** @zz_res, align 8
  %4886 = bitcast %union.rec* %4885 to %struct.word_type*
  %4887 = getelementptr inbounds %struct.word_type, %struct.word_type* %4886, i32 0, i32 0
  %4888 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4887, i32 0, i64 1
  %4889 = getelementptr inbounds %struct.LIST, %struct.LIST* %4888, i32 0, i32 0
  %4890 = load %union.rec*, %union.rec** %4889, align 8
  %4891 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4892 = bitcast %union.rec* %4891 to %struct.word_type*
  %4893 = getelementptr inbounds %struct.word_type, %struct.word_type* %4892, i32 0, i32 0
  %4894 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4893, i32 0, i64 1
  %4895 = getelementptr inbounds %struct.LIST, %struct.LIST* %4894, i32 0, i32 0
  store %union.rec* %4890, %union.rec** %4895, align 8
  %4896 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4897 = load %union.rec*, %union.rec** @zz_res, align 8
  %4898 = bitcast %union.rec* %4897 to %struct.word_type*
  %4899 = getelementptr inbounds %struct.word_type, %struct.word_type* %4898, i32 0, i32 0
  %4900 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4899, i32 0, i64 1
  %4901 = getelementptr inbounds %struct.LIST, %struct.LIST* %4900, i32 0, i32 0
  %4902 = load %union.rec*, %union.rec** %4901, align 8
  %4903 = bitcast %union.rec* %4902 to %struct.word_type*
  %4904 = getelementptr inbounds %struct.word_type, %struct.word_type* %4903, i32 0, i32 0
  %4905 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4904, i32 0, i64 1
  %4906 = getelementptr inbounds %struct.LIST, %struct.LIST* %4905, i32 0, i32 1
  store %union.rec* %4896, %union.rec** %4906, align 8
  %4907 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4908 = load %union.rec*, %union.rec** @zz_res, align 8
  %4909 = bitcast %union.rec* %4908 to %struct.word_type*
  %4910 = getelementptr inbounds %struct.word_type, %struct.word_type* %4909, i32 0, i32 0
  %4911 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4910, i32 0, i64 1
  %4912 = getelementptr inbounds %struct.LIST, %struct.LIST* %4911, i32 0, i32 0
  store %union.rec* %4907, %union.rec** %4912, align 8
  %4913 = load %union.rec*, %union.rec** @zz_res, align 8
  %4914 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4915 = bitcast %union.rec* %4914 to %struct.word_type*
  %4916 = getelementptr inbounds %struct.word_type, %struct.word_type* %4915, i32 0, i32 0
  %4917 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4916, i32 0, i64 1
  %4918 = getelementptr inbounds %struct.LIST, %struct.LIST* %4917, i32 0, i32 1
  store %union.rec* %4913, %union.rec** %4918, align 8
  br label %4919

; <label>:4919                                    ; preds = %4878, %4876
  %4920 = phi %union.rec* [ %4877, %4876 ], [ %4913, %4878 ]
  br label %4921

; <label>:4921                                    ; preds = %4919, %4871
  %4922 = phi %union.rec* [ %4872, %4871 ], [ %4920, %4919 ]
  %4923 = load %union.rec*, %union.rec** %hd2, align 8
  call void @SetTarget(%union.rec* %4923)
  %4924 = load %union.rec*, %union.rec** %hd2, align 8
  %4925 = bitcast %union.rec* %4924 to %struct.word_type*
  %4926 = getelementptr inbounds %struct.word_type, %struct.word_type* %4925, i32 0, i32 2
  %4927 = bitcast %union.SECOND_UNION* %4926 to %struct.anon.2*
  %4928 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4927, i32 0, i32 0
  store i8 -127, i8* %4928, align 1
  %4929 = load %union.rec*, %union.rec** %hd2, align 8
  %4930 = bitcast %union.rec* %4929 to %struct.closure_type*
  %4931 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %4930, i32 0, i32 5
  %4932 = load %union.rec*, %union.rec** %4931, align 8
  %4933 = bitcast %union.rec* %4932 to %struct.symbol_type*
  %4934 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %4933, i32 0, i32 16
  %4935 = load i8, i8* %4934, align 2
  %4936 = lshr i8 %4935, 5
  %4937 = and i8 %4936, 1
  %4938 = zext i8 %4937 to i32
  %4939 = icmp ne i32 %4938, 0
  br i1 %4939, label %4940, label %4943

; <label>:4940                                    ; preds = %4921
  %4941 = load %union.rec*, %union.rec** %hd2, align 8
  %4942 = call %union.rec* @BuildEnclose(%union.rec* %4941)
  br label %4944

; <label>:4943                                    ; preds = %4921
  br label %4944

; <label>:4944                                    ; preds = %4943, %4940
  %4945 = phi %union.rec* [ %4942, %4940 ], [ null, %4943 ]
  %4946 = load %union.rec*, %union.rec** %hd2, align 8
  %4947 = bitcast %union.rec* %4946 to %struct.head_type*
  %4948 = getelementptr inbounds %struct.head_type, %struct.head_type* %4947, i32 0, i32 12
  store %union.rec* %4945, %union.rec** %4948, align 8
  %4949 = load %union.rec*, %union.rec** %hd2, align 8
  %4950 = bitcast %union.rec* %4949 to %struct.head_type*
  %4951 = getelementptr inbounds %struct.head_type, %struct.head_type* %4950, i32 0, i32 14
  store %union.rec* null, %union.rec** %4951, align 8
  %4952 = load %union.rec*, %union.rec** %hd2, align 8
  %4953 = bitcast %union.rec* %4952 to %struct.head_type*
  %4954 = getelementptr inbounds %struct.head_type, %struct.head_type* %4953, i32 0, i32 13
  store %union.rec* null, %union.rec** %4954, align 8
  %4955 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %4956 = zext i8 %4955 to i32
  store i32 %4956, i32* @zz_size, align 4
  %4957 = sext i32 %4956 to i64
  %4958 = icmp uge i64 %4957, 265
  br i1 %4958, label %4959, label %4962

; <label>:4959                                    ; preds = %4944
  %4960 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4961 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %4960)
  br label %4987

; <label>:4962                                    ; preds = %4944
  %4963 = load i32, i32* @zz_size, align 4
  %4964 = sext i32 %4963 to i64
  %4965 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4964
  %4966 = load %union.rec*, %union.rec** %4965, align 8
  %4967 = icmp eq %union.rec* %4966, null
  br i1 %4967, label %4968, label %4972

; <label>:4968                                    ; preds = %4962
  %4969 = load i32, i32* @zz_size, align 4
  %4970 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4971 = call %union.rec* @GetMemory(i32 %4969, %struct.FILE_POS* %4970)
  store %union.rec* %4971, %union.rec** @zz_hold, align 8
  br label %4986

; <label>:4972                                    ; preds = %4962
  %4973 = load i32, i32* @zz_size, align 4
  %4974 = sext i32 %4973 to i64
  %4975 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4974
  %4976 = load %union.rec*, %union.rec** %4975, align 8
  store %union.rec* %4976, %union.rec** @zz_hold, align 8
  store %union.rec* %4976, %union.rec** @zz_hold, align 8
  %4977 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4978 = bitcast %union.rec* %4977 to %struct.word_type*
  %4979 = getelementptr inbounds %struct.word_type, %struct.word_type* %4978, i32 0, i32 0
  %4980 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4979, i32 0, i64 0
  %4981 = getelementptr inbounds %struct.LIST, %struct.LIST* %4980, i32 0, i32 0
  %4982 = load %union.rec*, %union.rec** %4981, align 8
  %4983 = load i32, i32* @zz_size, align 4
  %4984 = sext i32 %4983 to i64
  %4985 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4984
  store %union.rec* %4982, %union.rec** %4985, align 8
  br label %4986

; <label>:4986                                    ; preds = %4972, %4968
  br label %4987

; <label>:4987                                    ; preds = %4986, %4959
  %4988 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4989 = bitcast %union.rec* %4988 to %struct.word_type*
  %4990 = getelementptr inbounds %struct.word_type, %struct.word_type* %4989, i32 0, i32 1
  %4991 = bitcast %union.FIRST_UNION* %4990 to %struct.anon*
  %4992 = getelementptr inbounds %struct.anon, %struct.anon* %4991, i32 0, i32 0
  store i8 0, i8* %4992, align 1
  %4993 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4994 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4995 = bitcast %union.rec* %4994 to %struct.word_type*
  %4996 = getelementptr inbounds %struct.word_type, %struct.word_type* %4995, i32 0, i32 0
  %4997 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4996, i32 0, i64 1
  %4998 = getelementptr inbounds %struct.LIST, %struct.LIST* %4997, i32 0, i32 1
  store %union.rec* %4993, %union.rec** %4998, align 8
  %4999 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5000 = bitcast %union.rec* %4999 to %struct.word_type*
  %5001 = getelementptr inbounds %struct.word_type, %struct.word_type* %5000, i32 0, i32 0
  %5002 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5001, i32 0, i64 1
  %5003 = getelementptr inbounds %struct.LIST, %struct.LIST* %5002, i32 0, i32 0
  store %union.rec* %4993, %union.rec** %5003, align 8
  %5004 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5005 = bitcast %union.rec* %5004 to %struct.word_type*
  %5006 = getelementptr inbounds %struct.word_type, %struct.word_type* %5005, i32 0, i32 0
  %5007 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5006, i32 0, i64 0
  %5008 = getelementptr inbounds %struct.LIST, %struct.LIST* %5007, i32 0, i32 1
  store %union.rec* %4993, %union.rec** %5008, align 8
  %5009 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5010 = bitcast %union.rec* %5009 to %struct.word_type*
  %5011 = getelementptr inbounds %struct.word_type, %struct.word_type* %5010, i32 0, i32 0
  %5012 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5011, i32 0, i64 0
  %5013 = getelementptr inbounds %struct.LIST, %struct.LIST* %5012, i32 0, i32 0
  store %union.rec* %4993, %union.rec** %5013, align 8
  store %union.rec* %4993, %union.rec** @xx_link, align 8
  %5014 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %5014, %union.rec** @zz_res, align 8
  %5015 = load %union.rec*, %union.rec** %y, align 8
  %5016 = bitcast %union.rec* %5015 to %struct.word_type*
  %5017 = getelementptr inbounds %struct.word_type, %struct.word_type* %5016, i32 0, i32 0
  %5018 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5017, i32 0, i64 1
  %5019 = getelementptr inbounds %struct.LIST, %struct.LIST* %5018, i32 0, i32 1
  %5020 = load %union.rec*, %union.rec** %5019, align 8
  store %union.rec* %5020, %union.rec** @zz_hold, align 8
  %5021 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5022 = icmp eq %union.rec* %5021, null
  br i1 %5022, label %5023, label %5025

; <label>:5023                                    ; preds = %4987
  %5024 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %5073

; <label>:5025                                    ; preds = %4987
  %5026 = load %union.rec*, %union.rec** @zz_res, align 8
  %5027 = icmp eq %union.rec* %5026, null
  br i1 %5027, label %5028, label %5030

; <label>:5028                                    ; preds = %5025
  %5029 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %5071

; <label>:5030                                    ; preds = %5025
  %5031 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5032 = bitcast %union.rec* %5031 to %struct.word_type*
  %5033 = getelementptr inbounds %struct.word_type, %struct.word_type* %5032, i32 0, i32 0
  %5034 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5033, i32 0, i64 0
  %5035 = getelementptr inbounds %struct.LIST, %struct.LIST* %5034, i32 0, i32 0
  %5036 = load %union.rec*, %union.rec** %5035, align 8
  store %union.rec* %5036, %union.rec** @zz_tmp, align 8
  %5037 = load %union.rec*, %union.rec** @zz_res, align 8
  %5038 = bitcast %union.rec* %5037 to %struct.word_type*
  %5039 = getelementptr inbounds %struct.word_type, %struct.word_type* %5038, i32 0, i32 0
  %5040 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5039, i32 0, i64 0
  %5041 = getelementptr inbounds %struct.LIST, %struct.LIST* %5040, i32 0, i32 0
  %5042 = load %union.rec*, %union.rec** %5041, align 8
  %5043 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5044 = bitcast %union.rec* %5043 to %struct.word_type*
  %5045 = getelementptr inbounds %struct.word_type, %struct.word_type* %5044, i32 0, i32 0
  %5046 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5045, i32 0, i64 0
  %5047 = getelementptr inbounds %struct.LIST, %struct.LIST* %5046, i32 0, i32 0
  store %union.rec* %5042, %union.rec** %5047, align 8
  %5048 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5049 = load %union.rec*, %union.rec** @zz_res, align 8
  %5050 = bitcast %union.rec* %5049 to %struct.word_type*
  %5051 = getelementptr inbounds %struct.word_type, %struct.word_type* %5050, i32 0, i32 0
  %5052 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5051, i32 0, i64 0
  %5053 = getelementptr inbounds %struct.LIST, %struct.LIST* %5052, i32 0, i32 0
  %5054 = load %union.rec*, %union.rec** %5053, align 8
  %5055 = bitcast %union.rec* %5054 to %struct.word_type*
  %5056 = getelementptr inbounds %struct.word_type, %struct.word_type* %5055, i32 0, i32 0
  %5057 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5056, i32 0, i64 0
  %5058 = getelementptr inbounds %struct.LIST, %struct.LIST* %5057, i32 0, i32 1
  store %union.rec* %5048, %union.rec** %5058, align 8
  %5059 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %5060 = load %union.rec*, %union.rec** @zz_res, align 8
  %5061 = bitcast %union.rec* %5060 to %struct.word_type*
  %5062 = getelementptr inbounds %struct.word_type, %struct.word_type* %5061, i32 0, i32 0
  %5063 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5062, i32 0, i64 0
  %5064 = getelementptr inbounds %struct.LIST, %struct.LIST* %5063, i32 0, i32 0
  store %union.rec* %5059, %union.rec** %5064, align 8
  %5065 = load %union.rec*, %union.rec** @zz_res, align 8
  %5066 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %5067 = bitcast %union.rec* %5066 to %struct.word_type*
  %5068 = getelementptr inbounds %struct.word_type, %struct.word_type* %5067, i32 0, i32 0
  %5069 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5068, i32 0, i64 0
  %5070 = getelementptr inbounds %struct.LIST, %struct.LIST* %5069, i32 0, i32 1
  store %union.rec* %5065, %union.rec** %5070, align 8
  br label %5071

; <label>:5071                                    ; preds = %5030, %5028
  %5072 = phi %union.rec* [ %5029, %5028 ], [ %5065, %5030 ]
  br label %5073

; <label>:5073                                    ; preds = %5071, %5023
  %5074 = phi %union.rec* [ %5024, %5023 ], [ %5072, %5071 ]
  %5075 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %5075, %union.rec** @zz_res, align 8
  %5076 = load %union.rec*, %union.rec** %index2, align 8
  store %union.rec* %5076, %union.rec** @zz_hold, align 8
  %5077 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5078 = icmp eq %union.rec* %5077, null
  br i1 %5078, label %5079, label %5081

; <label>:5079                                    ; preds = %5073
  %5080 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %5129

; <label>:5081                                    ; preds = %5073
  %5082 = load %union.rec*, %union.rec** @zz_res, align 8
  %5083 = icmp eq %union.rec* %5082, null
  br i1 %5083, label %5084, label %5086

; <label>:5084                                    ; preds = %5081
  %5085 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %5127

; <label>:5086                                    ; preds = %5081
  %5087 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5088 = bitcast %union.rec* %5087 to %struct.word_type*
  %5089 = getelementptr inbounds %struct.word_type, %struct.word_type* %5088, i32 0, i32 0
  %5090 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5089, i32 0, i64 1
  %5091 = getelementptr inbounds %struct.LIST, %struct.LIST* %5090, i32 0, i32 0
  %5092 = load %union.rec*, %union.rec** %5091, align 8
  store %union.rec* %5092, %union.rec** @zz_tmp, align 8
  %5093 = load %union.rec*, %union.rec** @zz_res, align 8
  %5094 = bitcast %union.rec* %5093 to %struct.word_type*
  %5095 = getelementptr inbounds %struct.word_type, %struct.word_type* %5094, i32 0, i32 0
  %5096 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5095, i32 0, i64 1
  %5097 = getelementptr inbounds %struct.LIST, %struct.LIST* %5096, i32 0, i32 0
  %5098 = load %union.rec*, %union.rec** %5097, align 8
  %5099 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5100 = bitcast %union.rec* %5099 to %struct.word_type*
  %5101 = getelementptr inbounds %struct.word_type, %struct.word_type* %5100, i32 0, i32 0
  %5102 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5101, i32 0, i64 1
  %5103 = getelementptr inbounds %struct.LIST, %struct.LIST* %5102, i32 0, i32 0
  store %union.rec* %5098, %union.rec** %5103, align 8
  %5104 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5105 = load %union.rec*, %union.rec** @zz_res, align 8
  %5106 = bitcast %union.rec* %5105 to %struct.word_type*
  %5107 = getelementptr inbounds %struct.word_type, %struct.word_type* %5106, i32 0, i32 0
  %5108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5107, i32 0, i64 1
  %5109 = getelementptr inbounds %struct.LIST, %struct.LIST* %5108, i32 0, i32 0
  %5110 = load %union.rec*, %union.rec** %5109, align 8
  %5111 = bitcast %union.rec* %5110 to %struct.word_type*
  %5112 = getelementptr inbounds %struct.word_type, %struct.word_type* %5111, i32 0, i32 0
  %5113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5112, i32 0, i64 1
  %5114 = getelementptr inbounds %struct.LIST, %struct.LIST* %5113, i32 0, i32 1
  store %union.rec* %5104, %union.rec** %5114, align 8
  %5115 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %5116 = load %union.rec*, %union.rec** @zz_res, align 8
  %5117 = bitcast %union.rec* %5116 to %struct.word_type*
  %5118 = getelementptr inbounds %struct.word_type, %struct.word_type* %5117, i32 0, i32 0
  %5119 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5118, i32 0, i64 1
  %5120 = getelementptr inbounds %struct.LIST, %struct.LIST* %5119, i32 0, i32 0
  store %union.rec* %5115, %union.rec** %5120, align 8
  %5121 = load %union.rec*, %union.rec** @zz_res, align 8
  %5122 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %5123 = bitcast %union.rec* %5122 to %struct.word_type*
  %5124 = getelementptr inbounds %struct.word_type, %struct.word_type* %5123, i32 0, i32 0
  %5125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5124, i32 0, i64 1
  %5126 = getelementptr inbounds %struct.LIST, %struct.LIST* %5125, i32 0, i32 1
  store %union.rec* %5121, %union.rec** %5126, align 8
  br label %5127

; <label>:5127                                    ; preds = %5086, %5084
  %5128 = phi %union.rec* [ %5085, %5084 ], [ %5121, %5086 ]
  br label %5129

; <label>:5129                                    ; preds = %5127, %5079
  %5130 = phi %union.rec* [ %5080, %5079 ], [ %5128, %5127 ]
  %5131 = load %union.rec*, %union.rec** %eg, align 8
  %5132 = bitcast %union.rec* %5131 to %struct.word_type*
  %5133 = getelementptr inbounds %struct.word_type, %struct.word_type* %5132, i32 0, i32 0
  %5134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5133, i32 0, i64 0
  %5135 = getelementptr inbounds %struct.LIST, %struct.LIST* %5134, i32 0, i32 1
  %5136 = load %union.rec*, %union.rec** %5135, align 8
  %5137 = bitcast %union.rec* %5136 to %struct.word_type*
  %5138 = getelementptr inbounds %struct.word_type, %struct.word_type* %5137, i32 0, i32 0
  %5139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5138, i32 0, i64 1
  %5140 = getelementptr inbounds %struct.LIST, %struct.LIST* %5139, i32 0, i32 0
  %5141 = load %union.rec*, %union.rec** %5140, align 8
  store %union.rec* %5141, %union.rec** %tag, align 8
  br label %5142

; <label>:5142                                    ; preds = %5152, %5129
  %5143 = load %union.rec*, %union.rec** %tag, align 8
  %5144 = bitcast %union.rec* %5143 to %struct.word_type*
  %5145 = getelementptr inbounds %struct.word_type, %struct.word_type* %5144, i32 0, i32 1
  %5146 = bitcast %union.FIRST_UNION* %5145 to %struct.anon*
  %5147 = getelementptr inbounds %struct.anon, %struct.anon* %5146, i32 0, i32 0
  %5148 = load i8, i8* %5147, align 1
  %5149 = zext i8 %5148 to i32
  %5150 = icmp eq i32 %5149, 0
  br i1 %5150, label %5151, label %5159

; <label>:5151                                    ; preds = %5142
  br label %5152

; <label>:5152                                    ; preds = %5151
  %5153 = load %union.rec*, %union.rec** %tag, align 8
  %5154 = bitcast %union.rec* %5153 to %struct.word_type*
  %5155 = getelementptr inbounds %struct.word_type, %struct.word_type* %5154, i32 0, i32 0
  %5156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5155, i32 0, i64 1
  %5157 = getelementptr inbounds %struct.LIST, %struct.LIST* %5156, i32 0, i32 0
  %5158 = load %union.rec*, %union.rec** %5157, align 8
  store %union.rec* %5158, %union.rec** %tag, align 8
  br label %5142

; <label>:5159                                    ; preds = %5142
  %5160 = load %union.rec*, %union.rec** %eg, align 8
  %5161 = bitcast %union.rec* %5160 to %struct.word_type*
  %5162 = getelementptr inbounds %struct.word_type, %struct.word_type* %5161, i32 0, i32 0
  %5163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5162, i32 0, i64 0
  %5164 = getelementptr inbounds %struct.LIST, %struct.LIST* %5163, i32 0, i32 0
  %5165 = load %union.rec*, %union.rec** %5164, align 8
  %5166 = bitcast %union.rec* %5165 to %struct.word_type*
  %5167 = getelementptr inbounds %struct.word_type, %struct.word_type* %5166, i32 0, i32 0
  %5168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5167, i32 0, i64 1
  %5169 = getelementptr inbounds %struct.LIST, %struct.LIST* %5168, i32 0, i32 0
  %5170 = load %union.rec*, %union.rec** %5169, align 8
  store %union.rec* %5170, %union.rec** %seq, align 8
  br label %5171

; <label>:5171                                    ; preds = %5181, %5159
  %5172 = load %union.rec*, %union.rec** %seq, align 8
  %5173 = bitcast %union.rec* %5172 to %struct.word_type*
  %5174 = getelementptr inbounds %struct.word_type, %struct.word_type* %5173, i32 0, i32 1
  %5175 = bitcast %union.FIRST_UNION* %5174 to %struct.anon*
  %5176 = getelementptr inbounds %struct.anon, %struct.anon* %5175, i32 0, i32 0
  %5177 = load i8, i8* %5176, align 1
  %5178 = zext i8 %5177 to i32
  %5179 = icmp eq i32 %5178, 0
  br i1 %5179, label %5180, label %5188

; <label>:5180                                    ; preds = %5171
  br label %5181

; <label>:5181                                    ; preds = %5180
  %5182 = load %union.rec*, %union.rec** %seq, align 8
  %5183 = bitcast %union.rec* %5182 to %struct.word_type*
  %5184 = getelementptr inbounds %struct.word_type, %struct.word_type* %5183, i32 0, i32 0
  %5185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5184, i32 0, i64 1
  %5186 = getelementptr inbounds %struct.LIST, %struct.LIST* %5185, i32 0, i32 0
  %5187 = load %union.rec*, %union.rec** %5186, align 8
  store %union.rec* %5187, %union.rec** %seq, align 8
  br label %5171

; <label>:5188                                    ; preds = %5171
  br label %5189

; <label>:5189                                    ; preds = %5835, %5188
  %5190 = load %union.rec*, %union.rec** @OldCrossDb, align 8
  %5191 = getelementptr inbounds [512 x i8], [512 x i8]* %newtag, i32 0, i32 0
  %5192 = getelementptr inbounds [512 x i8], [512 x i8]* %newseq, i32 0, i32 0
  %5193 = load %union.rec*, %union.rec** %eg, align 8
  %5194 = bitcast %union.rec* %5193 to %struct.ext_gall_type*
  %5195 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %5194, i32 0, i32 2
  %5196 = load %union.rec*, %union.rec** %eg, align 8
  %5197 = bitcast %union.rec* %5196 to %struct.ext_gall_type*
  %5198 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %5197, i32 0, i32 4
  %5199 = load %union.rec*, %union.rec** %eg, align 8
  %5200 = bitcast %union.rec* %5199 to %struct.ext_gall_type*
  %5201 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %5200, i32 0, i32 3
  %5202 = load %union.rec*, %union.rec** %eg, align 8
  %5203 = bitcast %union.rec* %5202 to %struct.ext_gall_type*
  %5204 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %5203, i32 0, i32 5
  %5205 = call i32 @DbRetrieveNext(%union.rec* %5190, i32* %gall, %union.rec** %newsym, i8* %5191, i8* %5192, i16* %5195, i64* %5198, i32* %5201, i64* %5204)
  store i32 %5205, i32* %found, align 4
  %5206 = load i32, i32* %found, align 4
  %5207 = icmp ne i32 %5206, 0
  br i1 %5207, label %5208, label %5229

; <label>:5208                                    ; preds = %5189
  %5209 = load i32, i32* %gall, align 4
  %5210 = icmp ne i32 %5209, 0
  br i1 %5210, label %5211, label %5226

; <label>:5211                                    ; preds = %5208
  %5212 = load %union.rec*, %union.rec** %newsym, align 8
  %5213 = load %union.rec*, %union.rec** %eg, align 8
  %5214 = bitcast %union.rec* %5213 to %struct.ext_gall_type*
  %5215 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %5214, i32 0, i32 6
  %5216 = load %union.rec*, %union.rec** %5215, align 8
  %5217 = icmp eq %union.rec* %5212, %5216
  br i1 %5217, label %5218, label %5226

; <label>:5218                                    ; preds = %5211
  %5219 = getelementptr inbounds [512 x i8], [512 x i8]* %newtag, i32 0, i32 0
  %5220 = load %union.rec*, %union.rec** %tag, align 8
  %5221 = bitcast %union.rec* %5220 to %struct.word_type*
  %5222 = getelementptr inbounds %struct.word_type, %struct.word_type* %5221, i32 0, i32 4
  %5223 = getelementptr inbounds [4 x i8], [4 x i8]* %5222, i32 0, i32 0
  %5224 = call i32 @strcmp(i8* %5219, i8* %5223) #3
  %5225 = icmp eq i32 %5224, 0
  br label %5226

; <label>:5226                                    ; preds = %5218, %5211, %5208
  %5227 = phi i1 [ false, %5211 ], [ false, %5208 ], [ %5225, %5218 ]
  %5228 = zext i1 %5227 to i32
  store i32 %5228, i32* %found, align 4
  br label %5229

; <label>:5229                                    ; preds = %5226, %5189
  %5230 = load i32, i32* %found, align 4
  %5231 = icmp ne i32 %5230, 0
  br i1 %5231, label %5232, label %5823

; <label>:5232                                    ; preds = %5229
  %5233 = getelementptr inbounds [512 x i8], [512 x i8]* %newseq, i32 0, i32 0
  %5234 = load %union.rec*, %union.rec** %seq, align 8
  %5235 = bitcast %union.rec* %5234 to %struct.word_type*
  %5236 = getelementptr inbounds %struct.word_type, %struct.word_type* %5235, i32 0, i32 4
  %5237 = getelementptr inbounds [4 x i8], [4 x i8]* %5236, i32 0, i32 0
  %5238 = call i32 @strcmp(i8* %5233, i8* %5237) #3
  %5239 = icmp eq i32 %5238, 0
  br i1 %5239, label %5240, label %5823

; <label>:5240                                    ; preds = %5232
  call void @SwitchScope(%union.rec* null)
  %5241 = load %union.rec*, %union.rec** %eg, align 8
  %5242 = bitcast %union.rec* %5241 to %struct.ext_gall_type*
  %5243 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %5242, i32 0, i32 2
  %5244 = load i16, i16* %5243, align 2
  %5245 = load %union.rec*, %union.rec** %eg, align 8
  %5246 = bitcast %union.rec* %5245 to %struct.ext_gall_type*
  %5247 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %5246, i32 0, i32 4
  %5248 = load i64, i64* %5247, align 8
  %5249 = load %union.rec*, %union.rec** %eg, align 8
  %5250 = bitcast %union.rec* %5249 to %struct.ext_gall_type*
  %5251 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %5250, i32 0, i32 3
  %5252 = load i32, i32* %5251, align 4
  %5253 = call %union.rec* @ReadFromFile(i16 zeroext %5244, i64 %5248, i32 %5252)
  store %union.rec* %5253, %union.rec** %val, align 8
  call void @UnSwitchScope(%union.rec* null)
  %5254 = load %union.rec*, %union.rec** %val, align 8
  %5255 = icmp eq %union.rec* %5254, null
  br i1 %5255, label %5256, label %5267

; <label>:5256                                    ; preds = %5240
  %5257 = load %union.rec*, %union.rec** %y, align 8
  %5258 = bitcast %union.rec* %5257 to %struct.word_type*
  %5259 = getelementptr inbounds %struct.word_type, %struct.word_type* %5258, i32 0, i32 1
  %5260 = bitcast %union.FIRST_UNION* %5259 to %struct.FILE_POS*
  %5261 = load %union.rec*, %union.rec** %eg, align 8
  %5262 = bitcast %union.rec* %5261 to %struct.ext_gall_type*
  %5263 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %5262, i32 0, i32 2
  %5264 = load i16, i16* %5263, align 2
  %5265 = call i8* @FileName(i16 zeroext %5264)
  %5266 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 20, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0), i32 1, %struct.FILE_POS* %5260, i8* %5265)
  br label %5267

; <label>:5267                                    ; preds = %5256, %5240
  %5268 = load %union.rec*, %union.rec** %val, align 8
  %5269 = bitcast %union.rec* %5268 to %struct.word_type*
  %5270 = getelementptr inbounds %struct.word_type, %struct.word_type* %5269, i32 0, i32 1
  %5271 = bitcast %union.FIRST_UNION* %5270 to %struct.anon*
  %5272 = getelementptr inbounds %struct.anon, %struct.anon* %5271, i32 0, i32 0
  %5273 = load i8, i8* %5272, align 1
  %5274 = zext i8 %5273 to i32
  %5275 = icmp eq i32 %5274, 2
  br i1 %5275, label %5279, label %5276

; <label>:5276                                    ; preds = %5267
  %5277 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5278 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %5277, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0))
  br label %5279

; <label>:5279                                    ; preds = %5276, %5267
  %5280 = load %union.rec*, %union.rec** %val, align 8
  %5281 = bitcast %union.rec* %5280 to %struct.closure_type*
  %5282 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5281, i32 0, i32 5
  %5283 = load %union.rec*, %union.rec** %5282, align 8
  %5284 = bitcast %union.rec* %5283 to %struct.symbol_type*
  %5285 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %5284, i32 0, i32 16
  %5286 = load i8, i8* %5285, align 2
  %5287 = lshr i8 %5286, 3
  %5288 = and i8 %5287, 1
  %5289 = zext i8 %5288 to i32
  %5290 = icmp ne i32 %5289, 0
  br i1 %5290, label %5294, label %5291

; <label>:5291                                    ; preds = %5279
  %5292 = load %union.rec*, %union.rec** %val, align 8
  %5293 = call i32 @DisposeObject(%union.rec* %5292)
  br label %5822

; <label>:5294                                    ; preds = %5279
  %5295 = load %union.rec*, %union.rec** %hd2, align 8
  %5296 = bitcast %union.rec* %5295 to %struct.word_type*
  %5297 = getelementptr inbounds %struct.word_type, %struct.word_type* %5296, i32 0, i32 1
  %5298 = bitcast %union.FIRST_UNION* %5297 to %struct.anon*
  %5299 = getelementptr inbounds %struct.anon, %struct.anon* %5298, i32 0, i32 0
  %5300 = load i8, i8* %5299, align 1
  %5301 = zext i8 %5300 to i32
  %5302 = icmp ne i32 %5301, 17
  br i1 %5302, label %5303, label %5650

; <label>:5303                                    ; preds = %5294
  %5304 = load %union.rec*, %union.rec** %hd2, align 8
  store %union.rec* %5304, %union.rec** %tmp5, align 8
  %5305 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %5306 = zext i8 %5305 to i32
  store i32 %5306, i32* @zz_size, align 4
  %5307 = sext i32 %5306 to i64
  %5308 = icmp uge i64 %5307, 265
  br i1 %5308, label %5309, label %5312

; <label>:5309                                    ; preds = %5303
  %5310 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5311 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %5310)
  br label %5337

; <label>:5312                                    ; preds = %5303
  %5313 = load i32, i32* @zz_size, align 4
  %5314 = sext i32 %5313 to i64
  %5315 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %5314
  %5316 = load %union.rec*, %union.rec** %5315, align 8
  %5317 = icmp eq %union.rec* %5316, null
  br i1 %5317, label %5318, label %5322

; <label>:5318                                    ; preds = %5312
  %5319 = load i32, i32* @zz_size, align 4
  %5320 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5321 = call %union.rec* @GetMemory(i32 %5319, %struct.FILE_POS* %5320)
  store %union.rec* %5321, %union.rec** @zz_hold, align 8
  br label %5336

; <label>:5322                                    ; preds = %5312
  %5323 = load i32, i32* @zz_size, align 4
  %5324 = sext i32 %5323 to i64
  %5325 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %5324
  %5326 = load %union.rec*, %union.rec** %5325, align 8
  store %union.rec* %5326, %union.rec** @zz_hold, align 8
  store %union.rec* %5326, %union.rec** @zz_hold, align 8
  %5327 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5328 = bitcast %union.rec* %5327 to %struct.word_type*
  %5329 = getelementptr inbounds %struct.word_type, %struct.word_type* %5328, i32 0, i32 0
  %5330 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5329, i32 0, i64 0
  %5331 = getelementptr inbounds %struct.LIST, %struct.LIST* %5330, i32 0, i32 0
  %5332 = load %union.rec*, %union.rec** %5331, align 8
  %5333 = load i32, i32* @zz_size, align 4
  %5334 = sext i32 %5333 to i64
  %5335 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %5334
  store %union.rec* %5332, %union.rec** %5335, align 8
  br label %5336

; <label>:5336                                    ; preds = %5322, %5318
  br label %5337

; <label>:5337                                    ; preds = %5336, %5309
  %5338 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5339 = bitcast %union.rec* %5338 to %struct.word_type*
  %5340 = getelementptr inbounds %struct.word_type, %struct.word_type* %5339, i32 0, i32 1
  %5341 = bitcast %union.FIRST_UNION* %5340 to %struct.anon*
  %5342 = getelementptr inbounds %struct.anon, %struct.anon* %5341, i32 0, i32 0
  store i8 17, i8* %5342, align 1
  %5343 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5345 = bitcast %union.rec* %5344 to %struct.word_type*
  %5346 = getelementptr inbounds %struct.word_type, %struct.word_type* %5345, i32 0, i32 0
  %5347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5346, i32 0, i64 1
  %5348 = getelementptr inbounds %struct.LIST, %struct.LIST* %5347, i32 0, i32 1
  store %union.rec* %5343, %union.rec** %5348, align 8
  %5349 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5350 = bitcast %union.rec* %5349 to %struct.word_type*
  %5351 = getelementptr inbounds %struct.word_type, %struct.word_type* %5350, i32 0, i32 0
  %5352 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5351, i32 0, i64 1
  %5353 = getelementptr inbounds %struct.LIST, %struct.LIST* %5352, i32 0, i32 0
  store %union.rec* %5343, %union.rec** %5353, align 8
  %5354 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5355 = bitcast %union.rec* %5354 to %struct.word_type*
  %5356 = getelementptr inbounds %struct.word_type, %struct.word_type* %5355, i32 0, i32 0
  %5357 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5356, i32 0, i64 0
  %5358 = getelementptr inbounds %struct.LIST, %struct.LIST* %5357, i32 0, i32 1
  store %union.rec* %5343, %union.rec** %5358, align 8
  %5359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5360 = bitcast %union.rec* %5359 to %struct.word_type*
  %5361 = getelementptr inbounds %struct.word_type, %struct.word_type* %5360, i32 0, i32 0
  %5362 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5361, i32 0, i64 0
  %5363 = getelementptr inbounds %struct.LIST, %struct.LIST* %5362, i32 0, i32 0
  store %union.rec* %5343, %union.rec** %5363, align 8
  store %union.rec* %5343, %union.rec** %hd2, align 8
  %5364 = load %union.rec*, %union.rec** %tmp5, align 8
  %5365 = bitcast %union.rec* %5364 to %struct.word_type*
  %5366 = getelementptr inbounds %struct.word_type, %struct.word_type* %5365, i32 0, i32 0
  %5367 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5366, i32 0, i64 1
  %5368 = getelementptr inbounds %struct.LIST, %struct.LIST* %5367, i32 0, i32 1
  %5369 = load %union.rec*, %union.rec** %5368, align 8
  store %union.rec* %5369, %union.rec** @xx_link, align 8
  %5370 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %5370, %union.rec** @zz_hold, align 8
  %5371 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5372 = bitcast %union.rec* %5371 to %struct.word_type*
  %5373 = getelementptr inbounds %struct.word_type, %struct.word_type* %5372, i32 0, i32 0
  %5374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5373, i32 0, i64 1
  %5375 = getelementptr inbounds %struct.LIST, %struct.LIST* %5374, i32 0, i32 1
  %5376 = load %union.rec*, %union.rec** %5375, align 8
  %5377 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5378 = icmp eq %union.rec* %5376, %5377
  br i1 %5378, label %5379, label %5380

; <label>:5379                                    ; preds = %5337
  br label %5421

; <label>:5380                                    ; preds = %5337
  %5381 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5382 = bitcast %union.rec* %5381 to %struct.word_type*
  %5383 = getelementptr inbounds %struct.word_type, %struct.word_type* %5382, i32 0, i32 0
  %5384 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5383, i32 0, i64 1
  %5385 = getelementptr inbounds %struct.LIST, %struct.LIST* %5384, i32 0, i32 1
  %5386 = load %union.rec*, %union.rec** %5385, align 8
  store %union.rec* %5386, %union.rec** @zz_res, align 8
  %5387 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5388 = bitcast %union.rec* %5387 to %struct.word_type*
  %5389 = getelementptr inbounds %struct.word_type, %struct.word_type* %5388, i32 0, i32 0
  %5390 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5389, i32 0, i64 1
  %5391 = getelementptr inbounds %struct.LIST, %struct.LIST* %5390, i32 0, i32 0
  %5392 = load %union.rec*, %union.rec** %5391, align 8
  %5393 = load %union.rec*, %union.rec** @zz_res, align 8
  %5394 = bitcast %union.rec* %5393 to %struct.word_type*
  %5395 = getelementptr inbounds %struct.word_type, %struct.word_type* %5394, i32 0, i32 0
  %5396 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5395, i32 0, i64 1
  %5397 = getelementptr inbounds %struct.LIST, %struct.LIST* %5396, i32 0, i32 0
  store %union.rec* %5392, %union.rec** %5397, align 8
  %5398 = load %union.rec*, %union.rec** @zz_res, align 8
  %5399 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5400 = bitcast %union.rec* %5399 to %struct.word_type*
  %5401 = getelementptr inbounds %struct.word_type, %struct.word_type* %5400, i32 0, i32 0
  %5402 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5401, i32 0, i64 1
  %5403 = getelementptr inbounds %struct.LIST, %struct.LIST* %5402, i32 0, i32 0
  %5404 = load %union.rec*, %union.rec** %5403, align 8
  %5405 = bitcast %union.rec* %5404 to %struct.word_type*
  %5406 = getelementptr inbounds %struct.word_type, %struct.word_type* %5405, i32 0, i32 0
  %5407 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5406, i32 0, i64 1
  %5408 = getelementptr inbounds %struct.LIST, %struct.LIST* %5407, i32 0, i32 1
  store %union.rec* %5398, %union.rec** %5408, align 8
  %5409 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5410 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5411 = bitcast %union.rec* %5410 to %struct.word_type*
  %5412 = getelementptr inbounds %struct.word_type, %struct.word_type* %5411, i32 0, i32 0
  %5413 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5412, i32 0, i64 1
  %5414 = getelementptr inbounds %struct.LIST, %struct.LIST* %5413, i32 0, i32 1
  store %union.rec* %5409, %union.rec** %5414, align 8
  %5415 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5416 = bitcast %union.rec* %5415 to %struct.word_type*
  %5417 = getelementptr inbounds %struct.word_type, %struct.word_type* %5416, i32 0, i32 0
  %5418 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5417, i32 0, i64 1
  %5419 = getelementptr inbounds %struct.LIST, %struct.LIST* %5418, i32 0, i32 0
  store %union.rec* %5409, %union.rec** %5419, align 8
  %5420 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %5421

; <label>:5421                                    ; preds = %5380, %5379
  %5422 = phi %union.rec* [ null, %5379 ], [ %5420, %5380 ]
  %5423 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %5423, %union.rec** @zz_res, align 8
  %5424 = load %union.rec*, %union.rec** %hd2, align 8
  store %union.rec* %5424, %union.rec** @zz_hold, align 8
  %5425 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5426 = icmp eq %union.rec* %5425, null
  br i1 %5426, label %5427, label %5429

; <label>:5427                                    ; preds = %5421
  %5428 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %5477

; <label>:5429                                    ; preds = %5421
  %5430 = load %union.rec*, %union.rec** @zz_res, align 8
  %5431 = icmp eq %union.rec* %5430, null
  br i1 %5431, label %5432, label %5434

; <label>:5432                                    ; preds = %5429
  %5433 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %5475

; <label>:5434                                    ; preds = %5429
  %5435 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5436 = bitcast %union.rec* %5435 to %struct.word_type*
  %5437 = getelementptr inbounds %struct.word_type, %struct.word_type* %5436, i32 0, i32 0
  %5438 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5437, i32 0, i64 1
  %5439 = getelementptr inbounds %struct.LIST, %struct.LIST* %5438, i32 0, i32 0
  %5440 = load %union.rec*, %union.rec** %5439, align 8
  store %union.rec* %5440, %union.rec** @zz_tmp, align 8
  %5441 = load %union.rec*, %union.rec** @zz_res, align 8
  %5442 = bitcast %union.rec* %5441 to %struct.word_type*
  %5443 = getelementptr inbounds %struct.word_type, %struct.word_type* %5442, i32 0, i32 0
  %5444 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5443, i32 0, i64 1
  %5445 = getelementptr inbounds %struct.LIST, %struct.LIST* %5444, i32 0, i32 0
  %5446 = load %union.rec*, %union.rec** %5445, align 8
  %5447 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5448 = bitcast %union.rec* %5447 to %struct.word_type*
  %5449 = getelementptr inbounds %struct.word_type, %struct.word_type* %5448, i32 0, i32 0
  %5450 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5449, i32 0, i64 1
  %5451 = getelementptr inbounds %struct.LIST, %struct.LIST* %5450, i32 0, i32 0
  store %union.rec* %5446, %union.rec** %5451, align 8
  %5452 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5453 = load %union.rec*, %union.rec** @zz_res, align 8
  %5454 = bitcast %union.rec* %5453 to %struct.word_type*
  %5455 = getelementptr inbounds %struct.word_type, %struct.word_type* %5454, i32 0, i32 0
  %5456 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5455, i32 0, i64 1
  %5457 = getelementptr inbounds %struct.LIST, %struct.LIST* %5456, i32 0, i32 0
  %5458 = load %union.rec*, %union.rec** %5457, align 8
  %5459 = bitcast %union.rec* %5458 to %struct.word_type*
  %5460 = getelementptr inbounds %struct.word_type, %struct.word_type* %5459, i32 0, i32 0
  %5461 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5460, i32 0, i64 1
  %5462 = getelementptr inbounds %struct.LIST, %struct.LIST* %5461, i32 0, i32 1
  store %union.rec* %5452, %union.rec** %5462, align 8
  %5463 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %5464 = load %union.rec*, %union.rec** @zz_res, align 8
  %5465 = bitcast %union.rec* %5464 to %struct.word_type*
  %5466 = getelementptr inbounds %struct.word_type, %struct.word_type* %5465, i32 0, i32 0
  %5467 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5466, i32 0, i64 1
  %5468 = getelementptr inbounds %struct.LIST, %struct.LIST* %5467, i32 0, i32 0
  store %union.rec* %5463, %union.rec** %5468, align 8
  %5469 = load %union.rec*, %union.rec** @zz_res, align 8
  %5470 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %5471 = bitcast %union.rec* %5470 to %struct.word_type*
  %5472 = getelementptr inbounds %struct.word_type, %struct.word_type* %5471, i32 0, i32 0
  %5473 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5472, i32 0, i64 1
  %5474 = getelementptr inbounds %struct.LIST, %struct.LIST* %5473, i32 0, i32 1
  store %union.rec* %5469, %union.rec** %5474, align 8
  br label %5475

; <label>:5475                                    ; preds = %5434, %5432
  %5476 = phi %union.rec* [ %5433, %5432 ], [ %5469, %5434 ]
  br label %5477

; <label>:5477                                    ; preds = %5475, %5427
  %5478 = phi %union.rec* [ %5428, %5427 ], [ %5476, %5475 ]
  %5479 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %5480 = zext i8 %5479 to i32
  store i32 %5480, i32* @zz_size, align 4
  %5481 = sext i32 %5480 to i64
  %5482 = icmp uge i64 %5481, 265
  br i1 %5482, label %5483, label %5486

; <label>:5483                                    ; preds = %5477
  %5484 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5485 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %5484)
  br label %5511

; <label>:5486                                    ; preds = %5477
  %5487 = load i32, i32* @zz_size, align 4
  %5488 = sext i32 %5487 to i64
  %5489 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %5488
  %5490 = load %union.rec*, %union.rec** %5489, align 8
  %5491 = icmp eq %union.rec* %5490, null
  br i1 %5491, label %5492, label %5496

; <label>:5492                                    ; preds = %5486
  %5493 = load i32, i32* @zz_size, align 4
  %5494 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5495 = call %union.rec* @GetMemory(i32 %5493, %struct.FILE_POS* %5494)
  store %union.rec* %5495, %union.rec** @zz_hold, align 8
  br label %5510

; <label>:5496                                    ; preds = %5486
  %5497 = load i32, i32* @zz_size, align 4
  %5498 = sext i32 %5497 to i64
  %5499 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %5498
  %5500 = load %union.rec*, %union.rec** %5499, align 8
  store %union.rec* %5500, %union.rec** @zz_hold, align 8
  store %union.rec* %5500, %union.rec** @zz_hold, align 8
  %5501 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5502 = bitcast %union.rec* %5501 to %struct.word_type*
  %5503 = getelementptr inbounds %struct.word_type, %struct.word_type* %5502, i32 0, i32 0
  %5504 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5503, i32 0, i64 0
  %5505 = getelementptr inbounds %struct.LIST, %struct.LIST* %5504, i32 0, i32 0
  %5506 = load %union.rec*, %union.rec** %5505, align 8
  %5507 = load i32, i32* @zz_size, align 4
  %5508 = sext i32 %5507 to i64
  %5509 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %5508
  store %union.rec* %5506, %union.rec** %5509, align 8
  br label %5510

; <label>:5510                                    ; preds = %5496, %5492
  br label %5511

; <label>:5511                                    ; preds = %5510, %5483
  %5512 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5513 = bitcast %union.rec* %5512 to %struct.word_type*
  %5514 = getelementptr inbounds %struct.word_type, %struct.word_type* %5513, i32 0, i32 1
  %5515 = bitcast %union.FIRST_UNION* %5514 to %struct.anon*
  %5516 = getelementptr inbounds %struct.anon, %struct.anon* %5515, i32 0, i32 0
  store i8 0, i8* %5516, align 1
  %5517 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5518 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5519 = bitcast %union.rec* %5518 to %struct.word_type*
  %5520 = getelementptr inbounds %struct.word_type, %struct.word_type* %5519, i32 0, i32 0
  %5521 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5520, i32 0, i64 1
  %5522 = getelementptr inbounds %struct.LIST, %struct.LIST* %5521, i32 0, i32 1
  store %union.rec* %5517, %union.rec** %5522, align 8
  %5523 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5524 = bitcast %union.rec* %5523 to %struct.word_type*
  %5525 = getelementptr inbounds %struct.word_type, %struct.word_type* %5524, i32 0, i32 0
  %5526 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5525, i32 0, i64 1
  %5527 = getelementptr inbounds %struct.LIST, %struct.LIST* %5526, i32 0, i32 0
  store %union.rec* %5517, %union.rec** %5527, align 8
  %5528 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5529 = bitcast %union.rec* %5528 to %struct.word_type*
  %5530 = getelementptr inbounds %struct.word_type, %struct.word_type* %5529, i32 0, i32 0
  %5531 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5530, i32 0, i64 0
  %5532 = getelementptr inbounds %struct.LIST, %struct.LIST* %5531, i32 0, i32 1
  store %union.rec* %5517, %union.rec** %5532, align 8
  %5533 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5534 = bitcast %union.rec* %5533 to %struct.word_type*
  %5535 = getelementptr inbounds %struct.word_type, %struct.word_type* %5534, i32 0, i32 0
  %5536 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5535, i32 0, i64 0
  %5537 = getelementptr inbounds %struct.LIST, %struct.LIST* %5536, i32 0, i32 0
  store %union.rec* %5517, %union.rec** %5537, align 8
  store %union.rec* %5517, %union.rec** @xx_link, align 8
  %5538 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %5538, %union.rec** @zz_res, align 8
  %5539 = load %union.rec*, %union.rec** %hd2, align 8
  store %union.rec* %5539, %union.rec** @zz_hold, align 8
  %5540 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5541 = icmp eq %union.rec* %5540, null
  br i1 %5541, label %5542, label %5544

; <label>:5542                                    ; preds = %5511
  %5543 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %5592

; <label>:5544                                    ; preds = %5511
  %5545 = load %union.rec*, %union.rec** @zz_res, align 8
  %5546 = icmp eq %union.rec* %5545, null
  br i1 %5546, label %5547, label %5549

; <label>:5547                                    ; preds = %5544
  %5548 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %5590

; <label>:5549                                    ; preds = %5544
  %5550 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5551 = bitcast %union.rec* %5550 to %struct.word_type*
  %5552 = getelementptr inbounds %struct.word_type, %struct.word_type* %5551, i32 0, i32 0
  %5553 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5552, i32 0, i64 0
  %5554 = getelementptr inbounds %struct.LIST, %struct.LIST* %5553, i32 0, i32 0
  %5555 = load %union.rec*, %union.rec** %5554, align 8
  store %union.rec* %5555, %union.rec** @zz_tmp, align 8
  %5556 = load %union.rec*, %union.rec** @zz_res, align 8
  %5557 = bitcast %union.rec* %5556 to %struct.word_type*
  %5558 = getelementptr inbounds %struct.word_type, %struct.word_type* %5557, i32 0, i32 0
  %5559 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5558, i32 0, i64 0
  %5560 = getelementptr inbounds %struct.LIST, %struct.LIST* %5559, i32 0, i32 0
  %5561 = load %union.rec*, %union.rec** %5560, align 8
  %5562 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5563 = bitcast %union.rec* %5562 to %struct.word_type*
  %5564 = getelementptr inbounds %struct.word_type, %struct.word_type* %5563, i32 0, i32 0
  %5565 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5564, i32 0, i64 0
  %5566 = getelementptr inbounds %struct.LIST, %struct.LIST* %5565, i32 0, i32 0
  store %union.rec* %5561, %union.rec** %5566, align 8
  %5567 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5568 = load %union.rec*, %union.rec** @zz_res, align 8
  %5569 = bitcast %union.rec* %5568 to %struct.word_type*
  %5570 = getelementptr inbounds %struct.word_type, %struct.word_type* %5569, i32 0, i32 0
  %5571 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5570, i32 0, i64 0
  %5572 = getelementptr inbounds %struct.LIST, %struct.LIST* %5571, i32 0, i32 0
  %5573 = load %union.rec*, %union.rec** %5572, align 8
  %5574 = bitcast %union.rec* %5573 to %struct.word_type*
  %5575 = getelementptr inbounds %struct.word_type, %struct.word_type* %5574, i32 0, i32 0
  %5576 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5575, i32 0, i64 0
  %5577 = getelementptr inbounds %struct.LIST, %struct.LIST* %5576, i32 0, i32 1
  store %union.rec* %5567, %union.rec** %5577, align 8
  %5578 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %5579 = load %union.rec*, %union.rec** @zz_res, align 8
  %5580 = bitcast %union.rec* %5579 to %struct.word_type*
  %5581 = getelementptr inbounds %struct.word_type, %struct.word_type* %5580, i32 0, i32 0
  %5582 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5581, i32 0, i64 0
  %5583 = getelementptr inbounds %struct.LIST, %struct.LIST* %5582, i32 0, i32 0
  store %union.rec* %5578, %union.rec** %5583, align 8
  %5584 = load %union.rec*, %union.rec** @zz_res, align 8
  %5585 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %5586 = bitcast %union.rec* %5585 to %struct.word_type*
  %5587 = getelementptr inbounds %struct.word_type, %struct.word_type* %5586, i32 0, i32 0
  %5588 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5587, i32 0, i64 0
  %5589 = getelementptr inbounds %struct.LIST, %struct.LIST* %5588, i32 0, i32 1
  store %union.rec* %5584, %union.rec** %5589, align 8
  br label %5590

; <label>:5590                                    ; preds = %5549, %5547
  %5591 = phi %union.rec* [ %5548, %5547 ], [ %5584, %5549 ]
  br label %5592

; <label>:5592                                    ; preds = %5590, %5542
  %5593 = phi %union.rec* [ %5543, %5542 ], [ %5591, %5590 ]
  %5594 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %5594, %union.rec** @zz_res, align 8
  %5595 = load %union.rec*, %union.rec** %tmp5, align 8
  store %union.rec* %5595, %union.rec** @zz_hold, align 8
  %5596 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5597 = icmp eq %union.rec* %5596, null
  br i1 %5597, label %5598, label %5600

; <label>:5598                                    ; preds = %5592
  %5599 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %5648

; <label>:5600                                    ; preds = %5592
  %5601 = load %union.rec*, %union.rec** @zz_res, align 8
  %5602 = icmp eq %union.rec* %5601, null
  br i1 %5602, label %5603, label %5605

; <label>:5603                                    ; preds = %5600
  %5604 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %5646

; <label>:5605                                    ; preds = %5600
  %5606 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5607 = bitcast %union.rec* %5606 to %struct.word_type*
  %5608 = getelementptr inbounds %struct.word_type, %struct.word_type* %5607, i32 0, i32 0
  %5609 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5608, i32 0, i64 1
  %5610 = getelementptr inbounds %struct.LIST, %struct.LIST* %5609, i32 0, i32 0
  %5611 = load %union.rec*, %union.rec** %5610, align 8
  store %union.rec* %5611, %union.rec** @zz_tmp, align 8
  %5612 = load %union.rec*, %union.rec** @zz_res, align 8
  %5613 = bitcast %union.rec* %5612 to %struct.word_type*
  %5614 = getelementptr inbounds %struct.word_type, %struct.word_type* %5613, i32 0, i32 0
  %5615 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5614, i32 0, i64 1
  %5616 = getelementptr inbounds %struct.LIST, %struct.LIST* %5615, i32 0, i32 0
  %5617 = load %union.rec*, %union.rec** %5616, align 8
  %5618 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5619 = bitcast %union.rec* %5618 to %struct.word_type*
  %5620 = getelementptr inbounds %struct.word_type, %struct.word_type* %5619, i32 0, i32 0
  %5621 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5620, i32 0, i64 1
  %5622 = getelementptr inbounds %struct.LIST, %struct.LIST* %5621, i32 0, i32 0
  store %union.rec* %5617, %union.rec** %5622, align 8
  %5623 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5624 = load %union.rec*, %union.rec** @zz_res, align 8
  %5625 = bitcast %union.rec* %5624 to %struct.word_type*
  %5626 = getelementptr inbounds %struct.word_type, %struct.word_type* %5625, i32 0, i32 0
  %5627 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5626, i32 0, i64 1
  %5628 = getelementptr inbounds %struct.LIST, %struct.LIST* %5627, i32 0, i32 0
  %5629 = load %union.rec*, %union.rec** %5628, align 8
  %5630 = bitcast %union.rec* %5629 to %struct.word_type*
  %5631 = getelementptr inbounds %struct.word_type, %struct.word_type* %5630, i32 0, i32 0
  %5632 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5631, i32 0, i64 1
  %5633 = getelementptr inbounds %struct.LIST, %struct.LIST* %5632, i32 0, i32 1
  store %union.rec* %5623, %union.rec** %5633, align 8
  %5634 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %5635 = load %union.rec*, %union.rec** @zz_res, align 8
  %5636 = bitcast %union.rec* %5635 to %struct.word_type*
  %5637 = getelementptr inbounds %struct.word_type, %struct.word_type* %5636, i32 0, i32 0
  %5638 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5637, i32 0, i64 1
  %5639 = getelementptr inbounds %struct.LIST, %struct.LIST* %5638, i32 0, i32 0
  store %union.rec* %5634, %union.rec** %5639, align 8
  %5640 = load %union.rec*, %union.rec** @zz_res, align 8
  %5641 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %5642 = bitcast %union.rec* %5641 to %struct.word_type*
  %5643 = getelementptr inbounds %struct.word_type, %struct.word_type* %5642, i32 0, i32 0
  %5644 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5643, i32 0, i64 1
  %5645 = getelementptr inbounds %struct.LIST, %struct.LIST* %5644, i32 0, i32 1
  store %union.rec* %5640, %union.rec** %5645, align 8
  br label %5646

; <label>:5646                                    ; preds = %5605, %5603
  %5647 = phi %union.rec* [ %5604, %5603 ], [ %5640, %5605 ]
  br label %5648

; <label>:5648                                    ; preds = %5646, %5598
  %5649 = phi %union.rec* [ %5599, %5598 ], [ %5647, %5646 ]
  br label %5650

; <label>:5650                                    ; preds = %5648, %5294
  %5651 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %5652 = zext i8 %5651 to i32
  store i32 %5652, i32* @zz_size, align 4
  %5653 = sext i32 %5652 to i64
  %5654 = icmp uge i64 %5653, 265
  br i1 %5654, label %5655, label %5658

; <label>:5655                                    ; preds = %5650
  %5656 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5657 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %5656)
  br label %5683

; <label>:5658                                    ; preds = %5650
  %5659 = load i32, i32* @zz_size, align 4
  %5660 = sext i32 %5659 to i64
  %5661 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %5660
  %5662 = load %union.rec*, %union.rec** %5661, align 8
  %5663 = icmp eq %union.rec* %5662, null
  br i1 %5663, label %5664, label %5668

; <label>:5664                                    ; preds = %5658
  %5665 = load i32, i32* @zz_size, align 4
  %5666 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5667 = call %union.rec* @GetMemory(i32 %5665, %struct.FILE_POS* %5666)
  store %union.rec* %5667, %union.rec** @zz_hold, align 8
  br label %5682

; <label>:5668                                    ; preds = %5658
  %5669 = load i32, i32* @zz_size, align 4
  %5670 = sext i32 %5669 to i64
  %5671 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %5670
  %5672 = load %union.rec*, %union.rec** %5671, align 8
  store %union.rec* %5672, %union.rec** @zz_hold, align 8
  store %union.rec* %5672, %union.rec** @zz_hold, align 8
  %5673 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5674 = bitcast %union.rec* %5673 to %struct.word_type*
  %5675 = getelementptr inbounds %struct.word_type, %struct.word_type* %5674, i32 0, i32 0
  %5676 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5675, i32 0, i64 0
  %5677 = getelementptr inbounds %struct.LIST, %struct.LIST* %5676, i32 0, i32 0
  %5678 = load %union.rec*, %union.rec** %5677, align 8
  %5679 = load i32, i32* @zz_size, align 4
  %5680 = sext i32 %5679 to i64
  %5681 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %5680
  store %union.rec* %5678, %union.rec** %5681, align 8
  br label %5682

; <label>:5682                                    ; preds = %5668, %5664
  br label %5683

; <label>:5683                                    ; preds = %5682, %5655
  %5684 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5685 = bitcast %union.rec* %5684 to %struct.word_type*
  %5686 = getelementptr inbounds %struct.word_type, %struct.word_type* %5685, i32 0, i32 1
  %5687 = bitcast %union.FIRST_UNION* %5686 to %struct.anon*
  %5688 = getelementptr inbounds %struct.anon, %struct.anon* %5687, i32 0, i32 0
  store i8 0, i8* %5688, align 1
  %5689 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5690 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5691 = bitcast %union.rec* %5690 to %struct.word_type*
  %5692 = getelementptr inbounds %struct.word_type, %struct.word_type* %5691, i32 0, i32 0
  %5693 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5692, i32 0, i64 1
  %5694 = getelementptr inbounds %struct.LIST, %struct.LIST* %5693, i32 0, i32 1
  store %union.rec* %5689, %union.rec** %5694, align 8
  %5695 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5696 = bitcast %union.rec* %5695 to %struct.word_type*
  %5697 = getelementptr inbounds %struct.word_type, %struct.word_type* %5696, i32 0, i32 0
  %5698 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5697, i32 0, i64 1
  %5699 = getelementptr inbounds %struct.LIST, %struct.LIST* %5698, i32 0, i32 0
  store %union.rec* %5689, %union.rec** %5699, align 8
  %5700 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5701 = bitcast %union.rec* %5700 to %struct.word_type*
  %5702 = getelementptr inbounds %struct.word_type, %struct.word_type* %5701, i32 0, i32 0
  %5703 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5702, i32 0, i64 0
  %5704 = getelementptr inbounds %struct.LIST, %struct.LIST* %5703, i32 0, i32 1
  store %union.rec* %5689, %union.rec** %5704, align 8
  %5705 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5706 = bitcast %union.rec* %5705 to %struct.word_type*
  %5707 = getelementptr inbounds %struct.word_type, %struct.word_type* %5706, i32 0, i32 0
  %5708 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5707, i32 0, i64 0
  %5709 = getelementptr inbounds %struct.LIST, %struct.LIST* %5708, i32 0, i32 0
  store %union.rec* %5689, %union.rec** %5709, align 8
  store %union.rec* %5689, %union.rec** @xx_link, align 8
  %5710 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %5710, %union.rec** @zz_res, align 8
  %5711 = load %union.rec*, %union.rec** %hd2, align 8
  store %union.rec* %5711, %union.rec** @zz_hold, align 8
  %5712 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5713 = icmp eq %union.rec* %5712, null
  br i1 %5713, label %5714, label %5716

; <label>:5714                                    ; preds = %5683
  %5715 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %5764

; <label>:5716                                    ; preds = %5683
  %5717 = load %union.rec*, %union.rec** @zz_res, align 8
  %5718 = icmp eq %union.rec* %5717, null
  br i1 %5718, label %5719, label %5721

; <label>:5719                                    ; preds = %5716
  %5720 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %5762

; <label>:5721                                    ; preds = %5716
  %5722 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5723 = bitcast %union.rec* %5722 to %struct.word_type*
  %5724 = getelementptr inbounds %struct.word_type, %struct.word_type* %5723, i32 0, i32 0
  %5725 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5724, i32 0, i64 0
  %5726 = getelementptr inbounds %struct.LIST, %struct.LIST* %5725, i32 0, i32 0
  %5727 = load %union.rec*, %union.rec** %5726, align 8
  store %union.rec* %5727, %union.rec** @zz_tmp, align 8
  %5728 = load %union.rec*, %union.rec** @zz_res, align 8
  %5729 = bitcast %union.rec* %5728 to %struct.word_type*
  %5730 = getelementptr inbounds %struct.word_type, %struct.word_type* %5729, i32 0, i32 0
  %5731 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5730, i32 0, i64 0
  %5732 = getelementptr inbounds %struct.LIST, %struct.LIST* %5731, i32 0, i32 0
  %5733 = load %union.rec*, %union.rec** %5732, align 8
  %5734 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5735 = bitcast %union.rec* %5734 to %struct.word_type*
  %5736 = getelementptr inbounds %struct.word_type, %struct.word_type* %5735, i32 0, i32 0
  %5737 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5736, i32 0, i64 0
  %5738 = getelementptr inbounds %struct.LIST, %struct.LIST* %5737, i32 0, i32 0
  store %union.rec* %5733, %union.rec** %5738, align 8
  %5739 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5740 = load %union.rec*, %union.rec** @zz_res, align 8
  %5741 = bitcast %union.rec* %5740 to %struct.word_type*
  %5742 = getelementptr inbounds %struct.word_type, %struct.word_type* %5741, i32 0, i32 0
  %5743 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5742, i32 0, i64 0
  %5744 = getelementptr inbounds %struct.LIST, %struct.LIST* %5743, i32 0, i32 0
  %5745 = load %union.rec*, %union.rec** %5744, align 8
  %5746 = bitcast %union.rec* %5745 to %struct.word_type*
  %5747 = getelementptr inbounds %struct.word_type, %struct.word_type* %5746, i32 0, i32 0
  %5748 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5747, i32 0, i64 0
  %5749 = getelementptr inbounds %struct.LIST, %struct.LIST* %5748, i32 0, i32 1
  store %union.rec* %5739, %union.rec** %5749, align 8
  %5750 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %5751 = load %union.rec*, %union.rec** @zz_res, align 8
  %5752 = bitcast %union.rec* %5751 to %struct.word_type*
  %5753 = getelementptr inbounds %struct.word_type, %struct.word_type* %5752, i32 0, i32 0
  %5754 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5753, i32 0, i64 0
  %5755 = getelementptr inbounds %struct.LIST, %struct.LIST* %5754, i32 0, i32 0
  store %union.rec* %5750, %union.rec** %5755, align 8
  %5756 = load %union.rec*, %union.rec** @zz_res, align 8
  %5757 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %5758 = bitcast %union.rec* %5757 to %struct.word_type*
  %5759 = getelementptr inbounds %struct.word_type, %struct.word_type* %5758, i32 0, i32 0
  %5760 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5759, i32 0, i64 0
  %5761 = getelementptr inbounds %struct.LIST, %struct.LIST* %5760, i32 0, i32 1
  store %union.rec* %5756, %union.rec** %5761, align 8
  br label %5762

; <label>:5762                                    ; preds = %5721, %5719
  %5763 = phi %union.rec* [ %5720, %5719 ], [ %5756, %5721 ]
  br label %5764

; <label>:5764                                    ; preds = %5762, %5714
  %5765 = phi %union.rec* [ %5715, %5714 ], [ %5763, %5762 ]
  %5766 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %5766, %union.rec** @zz_res, align 8
  %5767 = load %union.rec*, %union.rec** %val, align 8
  store %union.rec* %5767, %union.rec** @zz_hold, align 8
  %5768 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5769 = icmp eq %union.rec* %5768, null
  br i1 %5769, label %5770, label %5772

; <label>:5770                                    ; preds = %5764
  %5771 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %5820

; <label>:5772                                    ; preds = %5764
  %5773 = load %union.rec*, %union.rec** @zz_res, align 8
  %5774 = icmp eq %union.rec* %5773, null
  br i1 %5774, label %5775, label %5777

; <label>:5775                                    ; preds = %5772
  %5776 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %5818

; <label>:5777                                    ; preds = %5772
  %5778 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5779 = bitcast %union.rec* %5778 to %struct.word_type*
  %5780 = getelementptr inbounds %struct.word_type, %struct.word_type* %5779, i32 0, i32 0
  %5781 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5780, i32 0, i64 1
  %5782 = getelementptr inbounds %struct.LIST, %struct.LIST* %5781, i32 0, i32 0
  %5783 = load %union.rec*, %union.rec** %5782, align 8
  store %union.rec* %5783, %union.rec** @zz_tmp, align 8
  %5784 = load %union.rec*, %union.rec** @zz_res, align 8
  %5785 = bitcast %union.rec* %5784 to %struct.word_type*
  %5786 = getelementptr inbounds %struct.word_type, %struct.word_type* %5785, i32 0, i32 0
  %5787 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5786, i32 0, i64 1
  %5788 = getelementptr inbounds %struct.LIST, %struct.LIST* %5787, i32 0, i32 0
  %5789 = load %union.rec*, %union.rec** %5788, align 8
  %5790 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5791 = bitcast %union.rec* %5790 to %struct.word_type*
  %5792 = getelementptr inbounds %struct.word_type, %struct.word_type* %5791, i32 0, i32 0
  %5793 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5792, i32 0, i64 1
  %5794 = getelementptr inbounds %struct.LIST, %struct.LIST* %5793, i32 0, i32 0
  store %union.rec* %5789, %union.rec** %5794, align 8
  %5795 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5796 = load %union.rec*, %union.rec** @zz_res, align 8
  %5797 = bitcast %union.rec* %5796 to %struct.word_type*
  %5798 = getelementptr inbounds %struct.word_type, %struct.word_type* %5797, i32 0, i32 0
  %5799 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5798, i32 0, i64 1
  %5800 = getelementptr inbounds %struct.LIST, %struct.LIST* %5799, i32 0, i32 0
  %5801 = load %union.rec*, %union.rec** %5800, align 8
  %5802 = bitcast %union.rec* %5801 to %struct.word_type*
  %5803 = getelementptr inbounds %struct.word_type, %struct.word_type* %5802, i32 0, i32 0
  %5804 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5803, i32 0, i64 1
  %5805 = getelementptr inbounds %struct.LIST, %struct.LIST* %5804, i32 0, i32 1
  store %union.rec* %5795, %union.rec** %5805, align 8
  %5806 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %5807 = load %union.rec*, %union.rec** @zz_res, align 8
  %5808 = bitcast %union.rec* %5807 to %struct.word_type*
  %5809 = getelementptr inbounds %struct.word_type, %struct.word_type* %5808, i32 0, i32 0
  %5810 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5809, i32 0, i64 1
  %5811 = getelementptr inbounds %struct.LIST, %struct.LIST* %5810, i32 0, i32 0
  store %union.rec* %5806, %union.rec** %5811, align 8
  %5812 = load %union.rec*, %union.rec** @zz_res, align 8
  %5813 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %5814 = bitcast %union.rec* %5813 to %struct.word_type*
  %5815 = getelementptr inbounds %struct.word_type, %struct.word_type* %5814, i32 0, i32 0
  %5816 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5815, i32 0, i64 1
  %5817 = getelementptr inbounds %struct.LIST, %struct.LIST* %5816, i32 0, i32 1
  store %union.rec* %5812, %union.rec** %5817, align 8
  br label %5818

; <label>:5818                                    ; preds = %5777, %5775
  %5819 = phi %union.rec* [ %5776, %5775 ], [ %5812, %5777 ]
  br label %5820

; <label>:5820                                    ; preds = %5818, %5770
  %5821 = phi %union.rec* [ %5771, %5770 ], [ %5819, %5818 ]
  br label %5822

; <label>:5822                                    ; preds = %5820, %5291
  br label %5823

; <label>:5823                                    ; preds = %5822, %5232, %5229
  br label %5824

; <label>:5824                                    ; preds = %5823
  %5825 = load i32, i32* %found, align 4
  %5826 = icmp ne i32 %5825, 0
  br i1 %5826, label %5827, label %5835

; <label>:5827                                    ; preds = %5824
  %5828 = getelementptr inbounds [512 x i8], [512 x i8]* %newseq, i32 0, i32 0
  %5829 = load %union.rec*, %union.rec** %seq, align 8
  %5830 = bitcast %union.rec* %5829 to %struct.word_type*
  %5831 = getelementptr inbounds %struct.word_type, %struct.word_type* %5830, i32 0, i32 4
  %5832 = getelementptr inbounds [4 x i8], [4 x i8]* %5831, i32 0, i32 0
  %5833 = call i32 @strcmp(i8* %5828, i8* %5832) #3
  %5834 = icmp eq i32 %5833, 0
  br label %5835

; <label>:5835                                    ; preds = %5827, %5824
  %5836 = phi i1 [ false, %5824 ], [ %5834, %5827 ]
  br i1 %5836, label %5189, label %5837

; <label>:5837                                    ; preds = %5835
  %5838 = load i32, i32* %found, align 4
  %5839 = icmp ne i32 %5838, 0
  br i1 %5839, label %5840, label %6543

; <label>:5840                                    ; preds = %5837
  %5841 = load %union.rec*, %union.rec** %tag, align 8
  %5842 = bitcast %union.rec* %5841 to %struct.word_type*
  %5843 = getelementptr inbounds %struct.word_type, %struct.word_type* %5842, i32 0, i32 0
  %5844 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5843, i32 0, i64 1
  %5845 = getelementptr inbounds %struct.LIST, %struct.LIST* %5844, i32 0, i32 1
  %5846 = load %union.rec*, %union.rec** %5845, align 8
  store %union.rec* %5846, %union.rec** @xx_link, align 8
  %5847 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %5847, %union.rec** @zz_hold, align 8
  %5848 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5849 = bitcast %union.rec* %5848 to %struct.word_type*
  %5850 = getelementptr inbounds %struct.word_type, %struct.word_type* %5849, i32 0, i32 0
  %5851 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5850, i32 0, i64 1
  %5852 = getelementptr inbounds %struct.LIST, %struct.LIST* %5851, i32 0, i32 1
  %5853 = load %union.rec*, %union.rec** %5852, align 8
  %5854 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5855 = icmp eq %union.rec* %5853, %5854
  br i1 %5855, label %5856, label %5857

; <label>:5856                                    ; preds = %5840
  br label %5898

; <label>:5857                                    ; preds = %5840
  %5858 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5859 = bitcast %union.rec* %5858 to %struct.word_type*
  %5860 = getelementptr inbounds %struct.word_type, %struct.word_type* %5859, i32 0, i32 0
  %5861 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5860, i32 0, i64 1
  %5862 = getelementptr inbounds %struct.LIST, %struct.LIST* %5861, i32 0, i32 1
  %5863 = load %union.rec*, %union.rec** %5862, align 8
  store %union.rec* %5863, %union.rec** @zz_res, align 8
  %5864 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5865 = bitcast %union.rec* %5864 to %struct.word_type*
  %5866 = getelementptr inbounds %struct.word_type, %struct.word_type* %5865, i32 0, i32 0
  %5867 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5866, i32 0, i64 1
  %5868 = getelementptr inbounds %struct.LIST, %struct.LIST* %5867, i32 0, i32 0
  %5869 = load %union.rec*, %union.rec** %5868, align 8
  %5870 = load %union.rec*, %union.rec** @zz_res, align 8
  %5871 = bitcast %union.rec* %5870 to %struct.word_type*
  %5872 = getelementptr inbounds %struct.word_type, %struct.word_type* %5871, i32 0, i32 0
  %5873 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5872, i32 0, i64 1
  %5874 = getelementptr inbounds %struct.LIST, %struct.LIST* %5873, i32 0, i32 0
  store %union.rec* %5869, %union.rec** %5874, align 8
  %5875 = load %union.rec*, %union.rec** @zz_res, align 8
  %5876 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5877 = bitcast %union.rec* %5876 to %struct.word_type*
  %5878 = getelementptr inbounds %struct.word_type, %struct.word_type* %5877, i32 0, i32 0
  %5879 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5878, i32 0, i64 1
  %5880 = getelementptr inbounds %struct.LIST, %struct.LIST* %5879, i32 0, i32 0
  %5881 = load %union.rec*, %union.rec** %5880, align 8
  %5882 = bitcast %union.rec* %5881 to %struct.word_type*
  %5883 = getelementptr inbounds %struct.word_type, %struct.word_type* %5882, i32 0, i32 0
  %5884 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5883, i32 0, i64 1
  %5885 = getelementptr inbounds %struct.LIST, %struct.LIST* %5884, i32 0, i32 1
  store %union.rec* %5875, %union.rec** %5885, align 8
  %5886 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5887 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5888 = bitcast %union.rec* %5887 to %struct.word_type*
  %5889 = getelementptr inbounds %struct.word_type, %struct.word_type* %5888, i32 0, i32 0
  %5890 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5889, i32 0, i64 1
  %5891 = getelementptr inbounds %struct.LIST, %struct.LIST* %5890, i32 0, i32 1
  store %union.rec* %5886, %union.rec** %5891, align 8
  %5892 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5893 = bitcast %union.rec* %5892 to %struct.word_type*
  %5894 = getelementptr inbounds %struct.word_type, %struct.word_type* %5893, i32 0, i32 0
  %5895 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5894, i32 0, i64 1
  %5896 = getelementptr inbounds %struct.LIST, %struct.LIST* %5895, i32 0, i32 0
  store %union.rec* %5886, %union.rec** %5896, align 8
  %5897 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %5898

; <label>:5898                                    ; preds = %5857, %5856
  %5899 = phi %union.rec* [ null, %5856 ], [ %5897, %5857 ]
  store %union.rec* %5899, %union.rec** @xx_tmp, align 8
  %5900 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %5900, %union.rec** @zz_hold, align 8
  %5901 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5902 = bitcast %union.rec* %5901 to %struct.word_type*
  %5903 = getelementptr inbounds %struct.word_type, %struct.word_type* %5902, i32 0, i32 0
  %5904 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5903, i32 0, i64 0
  %5905 = getelementptr inbounds %struct.LIST, %struct.LIST* %5904, i32 0, i32 1
  %5906 = load %union.rec*, %union.rec** %5905, align 8
  %5907 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5908 = icmp eq %union.rec* %5906, %5907
  br i1 %5908, label %5909, label %5910

; <label>:5909                                    ; preds = %5898
  br label %5951

; <label>:5910                                    ; preds = %5898
  %5911 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5912 = bitcast %union.rec* %5911 to %struct.word_type*
  %5913 = getelementptr inbounds %struct.word_type, %struct.word_type* %5912, i32 0, i32 0
  %5914 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5913, i32 0, i64 0
  %5915 = getelementptr inbounds %struct.LIST, %struct.LIST* %5914, i32 0, i32 1
  %5916 = load %union.rec*, %union.rec** %5915, align 8
  store %union.rec* %5916, %union.rec** @zz_res, align 8
  %5917 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5918 = bitcast %union.rec* %5917 to %struct.word_type*
  %5919 = getelementptr inbounds %struct.word_type, %struct.word_type* %5918, i32 0, i32 0
  %5920 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5919, i32 0, i64 0
  %5921 = getelementptr inbounds %struct.LIST, %struct.LIST* %5920, i32 0, i32 0
  %5922 = load %union.rec*, %union.rec** %5921, align 8
  %5923 = load %union.rec*, %union.rec** @zz_res, align 8
  %5924 = bitcast %union.rec* %5923 to %struct.word_type*
  %5925 = getelementptr inbounds %struct.word_type, %struct.word_type* %5924, i32 0, i32 0
  %5926 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5925, i32 0, i64 0
  %5927 = getelementptr inbounds %struct.LIST, %struct.LIST* %5926, i32 0, i32 0
  store %union.rec* %5922, %union.rec** %5927, align 8
  %5928 = load %union.rec*, %union.rec** @zz_res, align 8
  %5929 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5930 = bitcast %union.rec* %5929 to %struct.word_type*
  %5931 = getelementptr inbounds %struct.word_type, %struct.word_type* %5930, i32 0, i32 0
  %5932 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5931, i32 0, i64 0
  %5933 = getelementptr inbounds %struct.LIST, %struct.LIST* %5932, i32 0, i32 0
  %5934 = load %union.rec*, %union.rec** %5933, align 8
  %5935 = bitcast %union.rec* %5934 to %struct.word_type*
  %5936 = getelementptr inbounds %struct.word_type, %struct.word_type* %5935, i32 0, i32 0
  %5937 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5936, i32 0, i64 0
  %5938 = getelementptr inbounds %struct.LIST, %struct.LIST* %5937, i32 0, i32 1
  store %union.rec* %5928, %union.rec** %5938, align 8
  %5939 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5940 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5941 = bitcast %union.rec* %5940 to %struct.word_type*
  %5942 = getelementptr inbounds %struct.word_type, %struct.word_type* %5941, i32 0, i32 0
  %5943 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5942, i32 0, i64 0
  %5944 = getelementptr inbounds %struct.LIST, %struct.LIST* %5943, i32 0, i32 1
  store %union.rec* %5939, %union.rec** %5944, align 8
  %5945 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5946 = bitcast %union.rec* %5945 to %struct.word_type*
  %5947 = getelementptr inbounds %struct.word_type, %struct.word_type* %5946, i32 0, i32 0
  %5948 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5947, i32 0, i64 0
  %5949 = getelementptr inbounds %struct.LIST, %struct.LIST* %5948, i32 0, i32 0
  store %union.rec* %5939, %union.rec** %5949, align 8
  %5950 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %5951

; <label>:5951                                    ; preds = %5910, %5909
  %5952 = phi %union.rec* [ null, %5909 ], [ %5950, %5910 ]
  %5953 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %5953, %union.rec** @zz_hold, align 8
  %5954 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %5954, %union.rec** @zz_hold, align 8
  %5955 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5956 = bitcast %union.rec* %5955 to %struct.word_type*
  %5957 = getelementptr inbounds %struct.word_type, %struct.word_type* %5956, i32 0, i32 1
  %5958 = bitcast %union.FIRST_UNION* %5957 to %struct.anon*
  %5959 = getelementptr inbounds %struct.anon, %struct.anon* %5958, i32 0, i32 0
  %5960 = load i8, i8* %5959, align 1
  %5961 = zext i8 %5960 to i32
  %5962 = icmp eq i32 %5961, 11
  br i1 %5962, label %5972, label %5963

; <label>:5963                                    ; preds = %5951
  %5964 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5965 = bitcast %union.rec* %5964 to %struct.word_type*
  %5966 = getelementptr inbounds %struct.word_type, %struct.word_type* %5965, i32 0, i32 1
  %5967 = bitcast %union.FIRST_UNION* %5966 to %struct.anon*
  %5968 = getelementptr inbounds %struct.anon, %struct.anon* %5967, i32 0, i32 0
  %5969 = load i8, i8* %5968, align 1
  %5970 = zext i8 %5969 to i32
  %5971 = icmp eq i32 %5970, 12
  br i1 %5971, label %5972, label %5980

; <label>:5972                                    ; preds = %5963, %5951
  %5973 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5974 = bitcast %union.rec* %5973 to %struct.word_type*
  %5975 = getelementptr inbounds %struct.word_type, %struct.word_type* %5974, i32 0, i32 1
  %5976 = bitcast %union.FIRST_UNION* %5975 to %struct.anon*
  %5977 = getelementptr inbounds %struct.anon, %struct.anon* %5976, i32 0, i32 1
  %5978 = load i8, i8* %5977, align 1
  %5979 = zext i8 %5978 to i32
  br label %5991

; <label>:5980                                    ; preds = %5963
  %5981 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5982 = bitcast %union.rec* %5981 to %struct.word_type*
  %5983 = getelementptr inbounds %struct.word_type, %struct.word_type* %5982, i32 0, i32 1
  %5984 = bitcast %union.FIRST_UNION* %5983 to %struct.anon*
  %5985 = getelementptr inbounds %struct.anon, %struct.anon* %5984, i32 0, i32 0
  %5986 = load i8, i8* %5985, align 1
  %5987 = zext i8 %5986 to i64
  %5988 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %5987
  %5989 = load i8, i8* %5988, align 1
  %5990 = zext i8 %5989 to i32
  br label %5991

; <label>:5991                                    ; preds = %5980, %5972
  %5992 = phi i32 [ %5979, %5972 ], [ %5990, %5980 ]
  store i32 %5992, i32* @zz_size, align 4
  %5993 = load i32, i32* @zz_size, align 4
  %5994 = sext i32 %5993 to i64
  %5995 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %5994
  %5996 = load %union.rec*, %union.rec** %5995, align 8
  %5997 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5998 = bitcast %union.rec* %5997 to %struct.word_type*
  %5999 = getelementptr inbounds %struct.word_type, %struct.word_type* %5998, i32 0, i32 0
  %6000 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5999, i32 0, i64 0
  %6001 = getelementptr inbounds %struct.LIST, %struct.LIST* %6000, i32 0, i32 0
  store %union.rec* %5996, %union.rec** %6001, align 8
  %6002 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6003 = load i32, i32* @zz_size, align 4
  %6004 = sext i32 %6003 to i64
  %6005 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6004
  store %union.rec* %6002, %union.rec** %6005, align 8
  %6006 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %6007 = bitcast %union.rec* %6006 to %struct.word_type*
  %6008 = getelementptr inbounds %struct.word_type, %struct.word_type* %6007, i32 0, i32 0
  %6009 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6008, i32 0, i64 1
  %6010 = getelementptr inbounds %struct.LIST, %struct.LIST* %6009, i32 0, i32 1
  %6011 = load %union.rec*, %union.rec** %6010, align 8
  %6012 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %6013 = icmp eq %union.rec* %6011, %6012
  br i1 %6013, label %6014, label %6017

; <label>:6014                                    ; preds = %5991
  %6015 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %6016 = call i32 @DisposeObject(%union.rec* %6015)
  br label %6017

; <label>:6017                                    ; preds = %6014, %5991
  %6018 = load %union.rec*, %union.rec** %seq, align 8
  %6019 = bitcast %union.rec* %6018 to %struct.word_type*
  %6020 = getelementptr inbounds %struct.word_type, %struct.word_type* %6019, i32 0, i32 0
  %6021 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6020, i32 0, i64 1
  %6022 = getelementptr inbounds %struct.LIST, %struct.LIST* %6021, i32 0, i32 1
  %6023 = load %union.rec*, %union.rec** %6022, align 8
  store %union.rec* %6023, %union.rec** @xx_link, align 8
  %6024 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6024, %union.rec** @zz_hold, align 8
  %6025 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6026 = bitcast %union.rec* %6025 to %struct.word_type*
  %6027 = getelementptr inbounds %struct.word_type, %struct.word_type* %6026, i32 0, i32 0
  %6028 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6027, i32 0, i64 1
  %6029 = getelementptr inbounds %struct.LIST, %struct.LIST* %6028, i32 0, i32 1
  %6030 = load %union.rec*, %union.rec** %6029, align 8
  %6031 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6032 = icmp eq %union.rec* %6030, %6031
  br i1 %6032, label %6033, label %6034

; <label>:6033                                    ; preds = %6017
  br label %6075

; <label>:6034                                    ; preds = %6017
  %6035 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6036 = bitcast %union.rec* %6035 to %struct.word_type*
  %6037 = getelementptr inbounds %struct.word_type, %struct.word_type* %6036, i32 0, i32 0
  %6038 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6037, i32 0, i64 1
  %6039 = getelementptr inbounds %struct.LIST, %struct.LIST* %6038, i32 0, i32 1
  %6040 = load %union.rec*, %union.rec** %6039, align 8
  store %union.rec* %6040, %union.rec** @zz_res, align 8
  %6041 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6042 = bitcast %union.rec* %6041 to %struct.word_type*
  %6043 = getelementptr inbounds %struct.word_type, %struct.word_type* %6042, i32 0, i32 0
  %6044 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6043, i32 0, i64 1
  %6045 = getelementptr inbounds %struct.LIST, %struct.LIST* %6044, i32 0, i32 0
  %6046 = load %union.rec*, %union.rec** %6045, align 8
  %6047 = load %union.rec*, %union.rec** @zz_res, align 8
  %6048 = bitcast %union.rec* %6047 to %struct.word_type*
  %6049 = getelementptr inbounds %struct.word_type, %struct.word_type* %6048, i32 0, i32 0
  %6050 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6049, i32 0, i64 1
  %6051 = getelementptr inbounds %struct.LIST, %struct.LIST* %6050, i32 0, i32 0
  store %union.rec* %6046, %union.rec** %6051, align 8
  %6052 = load %union.rec*, %union.rec** @zz_res, align 8
  %6053 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6054 = bitcast %union.rec* %6053 to %struct.word_type*
  %6055 = getelementptr inbounds %struct.word_type, %struct.word_type* %6054, i32 0, i32 0
  %6056 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6055, i32 0, i64 1
  %6057 = getelementptr inbounds %struct.LIST, %struct.LIST* %6056, i32 0, i32 0
  %6058 = load %union.rec*, %union.rec** %6057, align 8
  %6059 = bitcast %union.rec* %6058 to %struct.word_type*
  %6060 = getelementptr inbounds %struct.word_type, %struct.word_type* %6059, i32 0, i32 0
  %6061 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6060, i32 0, i64 1
  %6062 = getelementptr inbounds %struct.LIST, %struct.LIST* %6061, i32 0, i32 1
  store %union.rec* %6052, %union.rec** %6062, align 8
  %6063 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6064 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6065 = bitcast %union.rec* %6064 to %struct.word_type*
  %6066 = getelementptr inbounds %struct.word_type, %struct.word_type* %6065, i32 0, i32 0
  %6067 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6066, i32 0, i64 1
  %6068 = getelementptr inbounds %struct.LIST, %struct.LIST* %6067, i32 0, i32 1
  store %union.rec* %6063, %union.rec** %6068, align 8
  %6069 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6070 = bitcast %union.rec* %6069 to %struct.word_type*
  %6071 = getelementptr inbounds %struct.word_type, %struct.word_type* %6070, i32 0, i32 0
  %6072 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6071, i32 0, i64 1
  %6073 = getelementptr inbounds %struct.LIST, %struct.LIST* %6072, i32 0, i32 0
  store %union.rec* %6063, %union.rec** %6073, align 8
  %6074 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6075

; <label>:6075                                    ; preds = %6034, %6033
  %6076 = phi %union.rec* [ null, %6033 ], [ %6074, %6034 ]
  store %union.rec* %6076, %union.rec** @xx_tmp, align 8
  %6077 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6077, %union.rec** @zz_hold, align 8
  %6078 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6079 = bitcast %union.rec* %6078 to %struct.word_type*
  %6080 = getelementptr inbounds %struct.word_type, %struct.word_type* %6079, i32 0, i32 0
  %6081 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6080, i32 0, i64 0
  %6082 = getelementptr inbounds %struct.LIST, %struct.LIST* %6081, i32 0, i32 1
  %6083 = load %union.rec*, %union.rec** %6082, align 8
  %6084 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6085 = icmp eq %union.rec* %6083, %6084
  br i1 %6085, label %6086, label %6087

; <label>:6086                                    ; preds = %6075
  br label %6128

; <label>:6087                                    ; preds = %6075
  %6088 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6089 = bitcast %union.rec* %6088 to %struct.word_type*
  %6090 = getelementptr inbounds %struct.word_type, %struct.word_type* %6089, i32 0, i32 0
  %6091 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6090, i32 0, i64 0
  %6092 = getelementptr inbounds %struct.LIST, %struct.LIST* %6091, i32 0, i32 1
  %6093 = load %union.rec*, %union.rec** %6092, align 8
  store %union.rec* %6093, %union.rec** @zz_res, align 8
  %6094 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6095 = bitcast %union.rec* %6094 to %struct.word_type*
  %6096 = getelementptr inbounds %struct.word_type, %struct.word_type* %6095, i32 0, i32 0
  %6097 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6096, i32 0, i64 0
  %6098 = getelementptr inbounds %struct.LIST, %struct.LIST* %6097, i32 0, i32 0
  %6099 = load %union.rec*, %union.rec** %6098, align 8
  %6100 = load %union.rec*, %union.rec** @zz_res, align 8
  %6101 = bitcast %union.rec* %6100 to %struct.word_type*
  %6102 = getelementptr inbounds %struct.word_type, %struct.word_type* %6101, i32 0, i32 0
  %6103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6102, i32 0, i64 0
  %6104 = getelementptr inbounds %struct.LIST, %struct.LIST* %6103, i32 0, i32 0
  store %union.rec* %6099, %union.rec** %6104, align 8
  %6105 = load %union.rec*, %union.rec** @zz_res, align 8
  %6106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6107 = bitcast %union.rec* %6106 to %struct.word_type*
  %6108 = getelementptr inbounds %struct.word_type, %struct.word_type* %6107, i32 0, i32 0
  %6109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6108, i32 0, i64 0
  %6110 = getelementptr inbounds %struct.LIST, %struct.LIST* %6109, i32 0, i32 0
  %6111 = load %union.rec*, %union.rec** %6110, align 8
  %6112 = bitcast %union.rec* %6111 to %struct.word_type*
  %6113 = getelementptr inbounds %struct.word_type, %struct.word_type* %6112, i32 0, i32 0
  %6114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6113, i32 0, i64 0
  %6115 = getelementptr inbounds %struct.LIST, %struct.LIST* %6114, i32 0, i32 1
  store %union.rec* %6105, %union.rec** %6115, align 8
  %6116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6117 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6118 = bitcast %union.rec* %6117 to %struct.word_type*
  %6119 = getelementptr inbounds %struct.word_type, %struct.word_type* %6118, i32 0, i32 0
  %6120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6119, i32 0, i64 0
  %6121 = getelementptr inbounds %struct.LIST, %struct.LIST* %6120, i32 0, i32 1
  store %union.rec* %6116, %union.rec** %6121, align 8
  %6122 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6123 = bitcast %union.rec* %6122 to %struct.word_type*
  %6124 = getelementptr inbounds %struct.word_type, %struct.word_type* %6123, i32 0, i32 0
  %6125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6124, i32 0, i64 0
  %6126 = getelementptr inbounds %struct.LIST, %struct.LIST* %6125, i32 0, i32 0
  store %union.rec* %6116, %union.rec** %6126, align 8
  %6127 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6128

; <label>:6128                                    ; preds = %6087, %6086
  %6129 = phi %union.rec* [ null, %6086 ], [ %6127, %6087 ]
  %6130 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6130, %union.rec** @zz_hold, align 8
  %6131 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %6131, %union.rec** @zz_hold, align 8
  %6132 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6133 = bitcast %union.rec* %6132 to %struct.word_type*
  %6134 = getelementptr inbounds %struct.word_type, %struct.word_type* %6133, i32 0, i32 1
  %6135 = bitcast %union.FIRST_UNION* %6134 to %struct.anon*
  %6136 = getelementptr inbounds %struct.anon, %struct.anon* %6135, i32 0, i32 0
  %6137 = load i8, i8* %6136, align 1
  %6138 = zext i8 %6137 to i32
  %6139 = icmp eq i32 %6138, 11
  br i1 %6139, label %6149, label %6140

; <label>:6140                                    ; preds = %6128
  %6141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6142 = bitcast %union.rec* %6141 to %struct.word_type*
  %6143 = getelementptr inbounds %struct.word_type, %struct.word_type* %6142, i32 0, i32 1
  %6144 = bitcast %union.FIRST_UNION* %6143 to %struct.anon*
  %6145 = getelementptr inbounds %struct.anon, %struct.anon* %6144, i32 0, i32 0
  %6146 = load i8, i8* %6145, align 1
  %6147 = zext i8 %6146 to i32
  %6148 = icmp eq i32 %6147, 12
  br i1 %6148, label %6149, label %6157

; <label>:6149                                    ; preds = %6140, %6128
  %6150 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6151 = bitcast %union.rec* %6150 to %struct.word_type*
  %6152 = getelementptr inbounds %struct.word_type, %struct.word_type* %6151, i32 0, i32 1
  %6153 = bitcast %union.FIRST_UNION* %6152 to %struct.anon*
  %6154 = getelementptr inbounds %struct.anon, %struct.anon* %6153, i32 0, i32 1
  %6155 = load i8, i8* %6154, align 1
  %6156 = zext i8 %6155 to i32
  br label %6168

; <label>:6157                                    ; preds = %6140
  %6158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6159 = bitcast %union.rec* %6158 to %struct.word_type*
  %6160 = getelementptr inbounds %struct.word_type, %struct.word_type* %6159, i32 0, i32 1
  %6161 = bitcast %union.FIRST_UNION* %6160 to %struct.anon*
  %6162 = getelementptr inbounds %struct.anon, %struct.anon* %6161, i32 0, i32 0
  %6163 = load i8, i8* %6162, align 1
  %6164 = zext i8 %6163 to i64
  %6165 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %6164
  %6166 = load i8, i8* %6165, align 1
  %6167 = zext i8 %6166 to i32
  br label %6168

; <label>:6168                                    ; preds = %6157, %6149
  %6169 = phi i32 [ %6156, %6149 ], [ %6167, %6157 ]
  store i32 %6169, i32* @zz_size, align 4
  %6170 = load i32, i32* @zz_size, align 4
  %6171 = sext i32 %6170 to i64
  %6172 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6171
  %6173 = load %union.rec*, %union.rec** %6172, align 8
  %6174 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6175 = bitcast %union.rec* %6174 to %struct.word_type*
  %6176 = getelementptr inbounds %struct.word_type, %struct.word_type* %6175, i32 0, i32 0
  %6177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6176, i32 0, i64 0
  %6178 = getelementptr inbounds %struct.LIST, %struct.LIST* %6177, i32 0, i32 0
  store %union.rec* %6173, %union.rec** %6178, align 8
  %6179 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6180 = load i32, i32* @zz_size, align 4
  %6181 = sext i32 %6180 to i64
  %6182 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6181
  store %union.rec* %6179, %union.rec** %6182, align 8
  %6183 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %6184 = bitcast %union.rec* %6183 to %struct.word_type*
  %6185 = getelementptr inbounds %struct.word_type, %struct.word_type* %6184, i32 0, i32 0
  %6186 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6185, i32 0, i64 1
  %6187 = getelementptr inbounds %struct.LIST, %struct.LIST* %6186, i32 0, i32 1
  %6188 = load %union.rec*, %union.rec** %6187, align 8
  %6189 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %6190 = icmp eq %union.rec* %6188, %6189
  br i1 %6190, label %6191, label %6194

; <label>:6191                                    ; preds = %6168
  %6192 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %6193 = call i32 @DisposeObject(%union.rec* %6192)
  br label %6194

; <label>:6194                                    ; preds = %6191, %6168
  %6195 = getelementptr inbounds [512 x i8], [512 x i8]* %newtag, i32 0, i32 0
  %6196 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6197 = call %union.rec* @MakeWord(i32 11, i8* %6195, %struct.FILE_POS* %6196)
  store %union.rec* %6197, %union.rec** %tag, align 8
  %6198 = getelementptr inbounds [512 x i8], [512 x i8]* %newseq, i32 0, i32 0
  %6199 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6200 = call %union.rec* @MakeWord(i32 11, i8* %6198, %struct.FILE_POS* %6199)
  store %union.rec* %6200, %union.rec** %seq, align 8
  %6201 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %6202 = zext i8 %6201 to i32
  store i32 %6202, i32* @zz_size, align 4
  %6203 = sext i32 %6202 to i64
  %6204 = icmp uge i64 %6203, 265
  br i1 %6204, label %6205, label %6208

; <label>:6205                                    ; preds = %6194
  %6206 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6207 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %6206)
  br label %6233

; <label>:6208                                    ; preds = %6194
  %6209 = load i32, i32* @zz_size, align 4
  %6210 = sext i32 %6209 to i64
  %6211 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6210
  %6212 = load %union.rec*, %union.rec** %6211, align 8
  %6213 = icmp eq %union.rec* %6212, null
  br i1 %6213, label %6214, label %6218

; <label>:6214                                    ; preds = %6208
  %6215 = load i32, i32* @zz_size, align 4
  %6216 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6217 = call %union.rec* @GetMemory(i32 %6215, %struct.FILE_POS* %6216)
  store %union.rec* %6217, %union.rec** @zz_hold, align 8
  br label %6232

; <label>:6218                                    ; preds = %6208
  %6219 = load i32, i32* @zz_size, align 4
  %6220 = sext i32 %6219 to i64
  %6221 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6220
  %6222 = load %union.rec*, %union.rec** %6221, align 8
  store %union.rec* %6222, %union.rec** @zz_hold, align 8
  store %union.rec* %6222, %union.rec** @zz_hold, align 8
  %6223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6224 = bitcast %union.rec* %6223 to %struct.word_type*
  %6225 = getelementptr inbounds %struct.word_type, %struct.word_type* %6224, i32 0, i32 0
  %6226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6225, i32 0, i64 0
  %6227 = getelementptr inbounds %struct.LIST, %struct.LIST* %6226, i32 0, i32 0
  %6228 = load %union.rec*, %union.rec** %6227, align 8
  %6229 = load i32, i32* @zz_size, align 4
  %6230 = sext i32 %6229 to i64
  %6231 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6230
  store %union.rec* %6228, %union.rec** %6231, align 8
  br label %6232

; <label>:6232                                    ; preds = %6218, %6214
  br label %6233

; <label>:6233                                    ; preds = %6232, %6205
  %6234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6235 = bitcast %union.rec* %6234 to %struct.word_type*
  %6236 = getelementptr inbounds %struct.word_type, %struct.word_type* %6235, i32 0, i32 1
  %6237 = bitcast %union.FIRST_UNION* %6236 to %struct.anon*
  %6238 = getelementptr inbounds %struct.anon, %struct.anon* %6237, i32 0, i32 0
  store i8 0, i8* %6238, align 1
  %6239 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6240 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6241 = bitcast %union.rec* %6240 to %struct.word_type*
  %6242 = getelementptr inbounds %struct.word_type, %struct.word_type* %6241, i32 0, i32 0
  %6243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6242, i32 0, i64 1
  %6244 = getelementptr inbounds %struct.LIST, %struct.LIST* %6243, i32 0, i32 1
  store %union.rec* %6239, %union.rec** %6244, align 8
  %6245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6246 = bitcast %union.rec* %6245 to %struct.word_type*
  %6247 = getelementptr inbounds %struct.word_type, %struct.word_type* %6246, i32 0, i32 0
  %6248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6247, i32 0, i64 1
  %6249 = getelementptr inbounds %struct.LIST, %struct.LIST* %6248, i32 0, i32 0
  store %union.rec* %6239, %union.rec** %6249, align 8
  %6250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6251 = bitcast %union.rec* %6250 to %struct.word_type*
  %6252 = getelementptr inbounds %struct.word_type, %struct.word_type* %6251, i32 0, i32 0
  %6253 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6252, i32 0, i64 0
  %6254 = getelementptr inbounds %struct.LIST, %struct.LIST* %6253, i32 0, i32 1
  store %union.rec* %6239, %union.rec** %6254, align 8
  %6255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6256 = bitcast %union.rec* %6255 to %struct.word_type*
  %6257 = getelementptr inbounds %struct.word_type, %struct.word_type* %6256, i32 0, i32 0
  %6258 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6257, i32 0, i64 0
  %6259 = getelementptr inbounds %struct.LIST, %struct.LIST* %6258, i32 0, i32 0
  store %union.rec* %6239, %union.rec** %6259, align 8
  store %union.rec* %6239, %union.rec** @xx_link, align 8
  %6260 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6260, %union.rec** @zz_res, align 8
  %6261 = load %union.rec*, %union.rec** %eg, align 8
  store %union.rec* %6261, %union.rec** @zz_hold, align 8
  %6262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6263 = icmp eq %union.rec* %6262, null
  br i1 %6263, label %6264, label %6266

; <label>:6264                                    ; preds = %6233
  %6265 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6314

; <label>:6266                                    ; preds = %6233
  %6267 = load %union.rec*, %union.rec** @zz_res, align 8
  %6268 = icmp eq %union.rec* %6267, null
  br i1 %6268, label %6269, label %6271

; <label>:6269                                    ; preds = %6266
  %6270 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %6312

; <label>:6271                                    ; preds = %6266
  %6272 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6273 = bitcast %union.rec* %6272 to %struct.word_type*
  %6274 = getelementptr inbounds %struct.word_type, %struct.word_type* %6273, i32 0, i32 0
  %6275 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6274, i32 0, i64 0
  %6276 = getelementptr inbounds %struct.LIST, %struct.LIST* %6275, i32 0, i32 0
  %6277 = load %union.rec*, %union.rec** %6276, align 8
  store %union.rec* %6277, %union.rec** @zz_tmp, align 8
  %6278 = load %union.rec*, %union.rec** @zz_res, align 8
  %6279 = bitcast %union.rec* %6278 to %struct.word_type*
  %6280 = getelementptr inbounds %struct.word_type, %struct.word_type* %6279, i32 0, i32 0
  %6281 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6280, i32 0, i64 0
  %6282 = getelementptr inbounds %struct.LIST, %struct.LIST* %6281, i32 0, i32 0
  %6283 = load %union.rec*, %union.rec** %6282, align 8
  %6284 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6285 = bitcast %union.rec* %6284 to %struct.word_type*
  %6286 = getelementptr inbounds %struct.word_type, %struct.word_type* %6285, i32 0, i32 0
  %6287 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6286, i32 0, i64 0
  %6288 = getelementptr inbounds %struct.LIST, %struct.LIST* %6287, i32 0, i32 0
  store %union.rec* %6283, %union.rec** %6288, align 8
  %6289 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6290 = load %union.rec*, %union.rec** @zz_res, align 8
  %6291 = bitcast %union.rec* %6290 to %struct.word_type*
  %6292 = getelementptr inbounds %struct.word_type, %struct.word_type* %6291, i32 0, i32 0
  %6293 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6292, i32 0, i64 0
  %6294 = getelementptr inbounds %struct.LIST, %struct.LIST* %6293, i32 0, i32 0
  %6295 = load %union.rec*, %union.rec** %6294, align 8
  %6296 = bitcast %union.rec* %6295 to %struct.word_type*
  %6297 = getelementptr inbounds %struct.word_type, %struct.word_type* %6296, i32 0, i32 0
  %6298 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6297, i32 0, i64 0
  %6299 = getelementptr inbounds %struct.LIST, %struct.LIST* %6298, i32 0, i32 1
  store %union.rec* %6289, %union.rec** %6299, align 8
  %6300 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6301 = load %union.rec*, %union.rec** @zz_res, align 8
  %6302 = bitcast %union.rec* %6301 to %struct.word_type*
  %6303 = getelementptr inbounds %struct.word_type, %struct.word_type* %6302, i32 0, i32 0
  %6304 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6303, i32 0, i64 0
  %6305 = getelementptr inbounds %struct.LIST, %struct.LIST* %6304, i32 0, i32 0
  store %union.rec* %6300, %union.rec** %6305, align 8
  %6306 = load %union.rec*, %union.rec** @zz_res, align 8
  %6307 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6308 = bitcast %union.rec* %6307 to %struct.word_type*
  %6309 = getelementptr inbounds %struct.word_type, %struct.word_type* %6308, i32 0, i32 0
  %6310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6309, i32 0, i64 0
  %6311 = getelementptr inbounds %struct.LIST, %struct.LIST* %6310, i32 0, i32 1
  store %union.rec* %6306, %union.rec** %6311, align 8
  br label %6312

; <label>:6312                                    ; preds = %6271, %6269
  %6313 = phi %union.rec* [ %6270, %6269 ], [ %6306, %6271 ]
  br label %6314

; <label>:6314                                    ; preds = %6312, %6264
  %6315 = phi %union.rec* [ %6265, %6264 ], [ %6313, %6312 ]
  %6316 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6316, %union.rec** @zz_res, align 8
  %6317 = load %union.rec*, %union.rec** %tag, align 8
  store %union.rec* %6317, %union.rec** @zz_hold, align 8
  %6318 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6319 = icmp eq %union.rec* %6318, null
  br i1 %6319, label %6320, label %6322

; <label>:6320                                    ; preds = %6314
  %6321 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6370

; <label>:6322                                    ; preds = %6314
  %6323 = load %union.rec*, %union.rec** @zz_res, align 8
  %6324 = icmp eq %union.rec* %6323, null
  br i1 %6324, label %6325, label %6327

; <label>:6325                                    ; preds = %6322
  %6326 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %6368

; <label>:6327                                    ; preds = %6322
  %6328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6329 = bitcast %union.rec* %6328 to %struct.word_type*
  %6330 = getelementptr inbounds %struct.word_type, %struct.word_type* %6329, i32 0, i32 0
  %6331 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6330, i32 0, i64 1
  %6332 = getelementptr inbounds %struct.LIST, %struct.LIST* %6331, i32 0, i32 0
  %6333 = load %union.rec*, %union.rec** %6332, align 8
  store %union.rec* %6333, %union.rec** @zz_tmp, align 8
  %6334 = load %union.rec*, %union.rec** @zz_res, align 8
  %6335 = bitcast %union.rec* %6334 to %struct.word_type*
  %6336 = getelementptr inbounds %struct.word_type, %struct.word_type* %6335, i32 0, i32 0
  %6337 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6336, i32 0, i64 1
  %6338 = getelementptr inbounds %struct.LIST, %struct.LIST* %6337, i32 0, i32 0
  %6339 = load %union.rec*, %union.rec** %6338, align 8
  %6340 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6341 = bitcast %union.rec* %6340 to %struct.word_type*
  %6342 = getelementptr inbounds %struct.word_type, %struct.word_type* %6341, i32 0, i32 0
  %6343 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6342, i32 0, i64 1
  %6344 = getelementptr inbounds %struct.LIST, %struct.LIST* %6343, i32 0, i32 0
  store %union.rec* %6339, %union.rec** %6344, align 8
  %6345 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6346 = load %union.rec*, %union.rec** @zz_res, align 8
  %6347 = bitcast %union.rec* %6346 to %struct.word_type*
  %6348 = getelementptr inbounds %struct.word_type, %struct.word_type* %6347, i32 0, i32 0
  %6349 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6348, i32 0, i64 1
  %6350 = getelementptr inbounds %struct.LIST, %struct.LIST* %6349, i32 0, i32 0
  %6351 = load %union.rec*, %union.rec** %6350, align 8
  %6352 = bitcast %union.rec* %6351 to %struct.word_type*
  %6353 = getelementptr inbounds %struct.word_type, %struct.word_type* %6352, i32 0, i32 0
  %6354 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6353, i32 0, i64 1
  %6355 = getelementptr inbounds %struct.LIST, %struct.LIST* %6354, i32 0, i32 1
  store %union.rec* %6345, %union.rec** %6355, align 8
  %6356 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6357 = load %union.rec*, %union.rec** @zz_res, align 8
  %6358 = bitcast %union.rec* %6357 to %struct.word_type*
  %6359 = getelementptr inbounds %struct.word_type, %struct.word_type* %6358, i32 0, i32 0
  %6360 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6359, i32 0, i64 1
  %6361 = getelementptr inbounds %struct.LIST, %struct.LIST* %6360, i32 0, i32 0
  store %union.rec* %6356, %union.rec** %6361, align 8
  %6362 = load %union.rec*, %union.rec** @zz_res, align 8
  %6363 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6364 = bitcast %union.rec* %6363 to %struct.word_type*
  %6365 = getelementptr inbounds %struct.word_type, %struct.word_type* %6364, i32 0, i32 0
  %6366 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6365, i32 0, i64 1
  %6367 = getelementptr inbounds %struct.LIST, %struct.LIST* %6366, i32 0, i32 1
  store %union.rec* %6362, %union.rec** %6367, align 8
  br label %6368

; <label>:6368                                    ; preds = %6327, %6325
  %6369 = phi %union.rec* [ %6326, %6325 ], [ %6362, %6327 ]
  br label %6370

; <label>:6370                                    ; preds = %6368, %6320
  %6371 = phi %union.rec* [ %6321, %6320 ], [ %6369, %6368 ]
  %6372 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %6373 = zext i8 %6372 to i32
  store i32 %6373, i32* @zz_size, align 4
  %6374 = sext i32 %6373 to i64
  %6375 = icmp uge i64 %6374, 265
  br i1 %6375, label %6376, label %6379

; <label>:6376                                    ; preds = %6370
  %6377 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6378 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %6377)
  br label %6404

; <label>:6379                                    ; preds = %6370
  %6380 = load i32, i32* @zz_size, align 4
  %6381 = sext i32 %6380 to i64
  %6382 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6381
  %6383 = load %union.rec*, %union.rec** %6382, align 8
  %6384 = icmp eq %union.rec* %6383, null
  br i1 %6384, label %6385, label %6389

; <label>:6385                                    ; preds = %6379
  %6386 = load i32, i32* @zz_size, align 4
  %6387 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6388 = call %union.rec* @GetMemory(i32 %6386, %struct.FILE_POS* %6387)
  store %union.rec* %6388, %union.rec** @zz_hold, align 8
  br label %6403

; <label>:6389                                    ; preds = %6379
  %6390 = load i32, i32* @zz_size, align 4
  %6391 = sext i32 %6390 to i64
  %6392 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6391
  %6393 = load %union.rec*, %union.rec** %6392, align 8
  store %union.rec* %6393, %union.rec** @zz_hold, align 8
  store %union.rec* %6393, %union.rec** @zz_hold, align 8
  %6394 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6395 = bitcast %union.rec* %6394 to %struct.word_type*
  %6396 = getelementptr inbounds %struct.word_type, %struct.word_type* %6395, i32 0, i32 0
  %6397 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6396, i32 0, i64 0
  %6398 = getelementptr inbounds %struct.LIST, %struct.LIST* %6397, i32 0, i32 0
  %6399 = load %union.rec*, %union.rec** %6398, align 8
  %6400 = load i32, i32* @zz_size, align 4
  %6401 = sext i32 %6400 to i64
  %6402 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6401
  store %union.rec* %6399, %union.rec** %6402, align 8
  br label %6403

; <label>:6403                                    ; preds = %6389, %6385
  br label %6404

; <label>:6404                                    ; preds = %6403, %6376
  %6405 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6406 = bitcast %union.rec* %6405 to %struct.word_type*
  %6407 = getelementptr inbounds %struct.word_type, %struct.word_type* %6406, i32 0, i32 1
  %6408 = bitcast %union.FIRST_UNION* %6407 to %struct.anon*
  %6409 = getelementptr inbounds %struct.anon, %struct.anon* %6408, i32 0, i32 0
  store i8 0, i8* %6409, align 1
  %6410 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6411 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6412 = bitcast %union.rec* %6411 to %struct.word_type*
  %6413 = getelementptr inbounds %struct.word_type, %struct.word_type* %6412, i32 0, i32 0
  %6414 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6413, i32 0, i64 1
  %6415 = getelementptr inbounds %struct.LIST, %struct.LIST* %6414, i32 0, i32 1
  store %union.rec* %6410, %union.rec** %6415, align 8
  %6416 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6417 = bitcast %union.rec* %6416 to %struct.word_type*
  %6418 = getelementptr inbounds %struct.word_type, %struct.word_type* %6417, i32 0, i32 0
  %6419 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6418, i32 0, i64 1
  %6420 = getelementptr inbounds %struct.LIST, %struct.LIST* %6419, i32 0, i32 0
  store %union.rec* %6410, %union.rec** %6420, align 8
  %6421 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6422 = bitcast %union.rec* %6421 to %struct.word_type*
  %6423 = getelementptr inbounds %struct.word_type, %struct.word_type* %6422, i32 0, i32 0
  %6424 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6423, i32 0, i64 0
  %6425 = getelementptr inbounds %struct.LIST, %struct.LIST* %6424, i32 0, i32 1
  store %union.rec* %6410, %union.rec** %6425, align 8
  %6426 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6427 = bitcast %union.rec* %6426 to %struct.word_type*
  %6428 = getelementptr inbounds %struct.word_type, %struct.word_type* %6427, i32 0, i32 0
  %6429 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6428, i32 0, i64 0
  %6430 = getelementptr inbounds %struct.LIST, %struct.LIST* %6429, i32 0, i32 0
  store %union.rec* %6410, %union.rec** %6430, align 8
  store %union.rec* %6410, %union.rec** @xx_link, align 8
  %6431 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6431, %union.rec** @zz_res, align 8
  %6432 = load %union.rec*, %union.rec** %eg, align 8
  store %union.rec* %6432, %union.rec** @zz_hold, align 8
  %6433 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6434 = icmp eq %union.rec* %6433, null
  br i1 %6434, label %6435, label %6437

; <label>:6435                                    ; preds = %6404
  %6436 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6485

; <label>:6437                                    ; preds = %6404
  %6438 = load %union.rec*, %union.rec** @zz_res, align 8
  %6439 = icmp eq %union.rec* %6438, null
  br i1 %6439, label %6440, label %6442

; <label>:6440                                    ; preds = %6437
  %6441 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %6483

; <label>:6442                                    ; preds = %6437
  %6443 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6444 = bitcast %union.rec* %6443 to %struct.word_type*
  %6445 = getelementptr inbounds %struct.word_type, %struct.word_type* %6444, i32 0, i32 0
  %6446 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6445, i32 0, i64 0
  %6447 = getelementptr inbounds %struct.LIST, %struct.LIST* %6446, i32 0, i32 0
  %6448 = load %union.rec*, %union.rec** %6447, align 8
  store %union.rec* %6448, %union.rec** @zz_tmp, align 8
  %6449 = load %union.rec*, %union.rec** @zz_res, align 8
  %6450 = bitcast %union.rec* %6449 to %struct.word_type*
  %6451 = getelementptr inbounds %struct.word_type, %struct.word_type* %6450, i32 0, i32 0
  %6452 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6451, i32 0, i64 0
  %6453 = getelementptr inbounds %struct.LIST, %struct.LIST* %6452, i32 0, i32 0
  %6454 = load %union.rec*, %union.rec** %6453, align 8
  %6455 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6456 = bitcast %union.rec* %6455 to %struct.word_type*
  %6457 = getelementptr inbounds %struct.word_type, %struct.word_type* %6456, i32 0, i32 0
  %6458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6457, i32 0, i64 0
  %6459 = getelementptr inbounds %struct.LIST, %struct.LIST* %6458, i32 0, i32 0
  store %union.rec* %6454, %union.rec** %6459, align 8
  %6460 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6461 = load %union.rec*, %union.rec** @zz_res, align 8
  %6462 = bitcast %union.rec* %6461 to %struct.word_type*
  %6463 = getelementptr inbounds %struct.word_type, %struct.word_type* %6462, i32 0, i32 0
  %6464 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6463, i32 0, i64 0
  %6465 = getelementptr inbounds %struct.LIST, %struct.LIST* %6464, i32 0, i32 0
  %6466 = load %union.rec*, %union.rec** %6465, align 8
  %6467 = bitcast %union.rec* %6466 to %struct.word_type*
  %6468 = getelementptr inbounds %struct.word_type, %struct.word_type* %6467, i32 0, i32 0
  %6469 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6468, i32 0, i64 0
  %6470 = getelementptr inbounds %struct.LIST, %struct.LIST* %6469, i32 0, i32 1
  store %union.rec* %6460, %union.rec** %6470, align 8
  %6471 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6472 = load %union.rec*, %union.rec** @zz_res, align 8
  %6473 = bitcast %union.rec* %6472 to %struct.word_type*
  %6474 = getelementptr inbounds %struct.word_type, %struct.word_type* %6473, i32 0, i32 0
  %6475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6474, i32 0, i64 0
  %6476 = getelementptr inbounds %struct.LIST, %struct.LIST* %6475, i32 0, i32 0
  store %union.rec* %6471, %union.rec** %6476, align 8
  %6477 = load %union.rec*, %union.rec** @zz_res, align 8
  %6478 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6479 = bitcast %union.rec* %6478 to %struct.word_type*
  %6480 = getelementptr inbounds %struct.word_type, %struct.word_type* %6479, i32 0, i32 0
  %6481 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6480, i32 0, i64 0
  %6482 = getelementptr inbounds %struct.LIST, %struct.LIST* %6481, i32 0, i32 1
  store %union.rec* %6477, %union.rec** %6482, align 8
  br label %6483

; <label>:6483                                    ; preds = %6442, %6440
  %6484 = phi %union.rec* [ %6441, %6440 ], [ %6477, %6442 ]
  br label %6485

; <label>:6485                                    ; preds = %6483, %6435
  %6486 = phi %union.rec* [ %6436, %6435 ], [ %6484, %6483 ]
  %6487 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6487, %union.rec** @zz_res, align 8
  %6488 = load %union.rec*, %union.rec** %seq, align 8
  store %union.rec* %6488, %union.rec** @zz_hold, align 8
  %6489 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6490 = icmp eq %union.rec* %6489, null
  br i1 %6490, label %6491, label %6493

; <label>:6491                                    ; preds = %6485
  %6492 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6541

; <label>:6493                                    ; preds = %6485
  %6494 = load %union.rec*, %union.rec** @zz_res, align 8
  %6495 = icmp eq %union.rec* %6494, null
  br i1 %6495, label %6496, label %6498

; <label>:6496                                    ; preds = %6493
  %6497 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %6539

; <label>:6498                                    ; preds = %6493
  %6499 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6500 = bitcast %union.rec* %6499 to %struct.word_type*
  %6501 = getelementptr inbounds %struct.word_type, %struct.word_type* %6500, i32 0, i32 0
  %6502 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6501, i32 0, i64 1
  %6503 = getelementptr inbounds %struct.LIST, %struct.LIST* %6502, i32 0, i32 0
  %6504 = load %union.rec*, %union.rec** %6503, align 8
  store %union.rec* %6504, %union.rec** @zz_tmp, align 8
  %6505 = load %union.rec*, %union.rec** @zz_res, align 8
  %6506 = bitcast %union.rec* %6505 to %struct.word_type*
  %6507 = getelementptr inbounds %struct.word_type, %struct.word_type* %6506, i32 0, i32 0
  %6508 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6507, i32 0, i64 1
  %6509 = getelementptr inbounds %struct.LIST, %struct.LIST* %6508, i32 0, i32 0
  %6510 = load %union.rec*, %union.rec** %6509, align 8
  %6511 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6512 = bitcast %union.rec* %6511 to %struct.word_type*
  %6513 = getelementptr inbounds %struct.word_type, %struct.word_type* %6512, i32 0, i32 0
  %6514 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6513, i32 0, i64 1
  %6515 = getelementptr inbounds %struct.LIST, %struct.LIST* %6514, i32 0, i32 0
  store %union.rec* %6510, %union.rec** %6515, align 8
  %6516 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6517 = load %union.rec*, %union.rec** @zz_res, align 8
  %6518 = bitcast %union.rec* %6517 to %struct.word_type*
  %6519 = getelementptr inbounds %struct.word_type, %struct.word_type* %6518, i32 0, i32 0
  %6520 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6519, i32 0, i64 1
  %6521 = getelementptr inbounds %struct.LIST, %struct.LIST* %6520, i32 0, i32 0
  %6522 = load %union.rec*, %union.rec** %6521, align 8
  %6523 = bitcast %union.rec* %6522 to %struct.word_type*
  %6524 = getelementptr inbounds %struct.word_type, %struct.word_type* %6523, i32 0, i32 0
  %6525 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6524, i32 0, i64 1
  %6526 = getelementptr inbounds %struct.LIST, %struct.LIST* %6525, i32 0, i32 1
  store %union.rec* %6516, %union.rec** %6526, align 8
  %6527 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6528 = load %union.rec*, %union.rec** @zz_res, align 8
  %6529 = bitcast %union.rec* %6528 to %struct.word_type*
  %6530 = getelementptr inbounds %struct.word_type, %struct.word_type* %6529, i32 0, i32 0
  %6531 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6530, i32 0, i64 1
  %6532 = getelementptr inbounds %struct.LIST, %struct.LIST* %6531, i32 0, i32 0
  store %union.rec* %6527, %union.rec** %6532, align 8
  %6533 = load %union.rec*, %union.rec** @zz_res, align 8
  %6534 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6535 = bitcast %union.rec* %6534 to %struct.word_type*
  %6536 = getelementptr inbounds %struct.word_type, %struct.word_type* %6535, i32 0, i32 0
  %6537 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6536, i32 0, i64 1
  %6538 = getelementptr inbounds %struct.LIST, %struct.LIST* %6537, i32 0, i32 1
  store %union.rec* %6533, %union.rec** %6538, align 8
  br label %6539

; <label>:6539                                    ; preds = %6498, %6496
  %6540 = phi %union.rec* [ %6497, %6496 ], [ %6533, %6498 ]
  br label %6541

; <label>:6541                                    ; preds = %6539, %6491
  %6542 = phi %union.rec* [ %6492, %6491 ], [ %6540, %6539 ]
  br label %6796

; <label>:6543                                    ; preds = %5837
  %6544 = load %union.rec*, %union.rec** %eg, align 8
  %6545 = bitcast %union.rec* %6544 to %struct.word_type*
  %6546 = getelementptr inbounds %struct.word_type, %struct.word_type* %6545, i32 0, i32 0
  %6547 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6546, i32 0, i64 1
  %6548 = getelementptr inbounds %struct.LIST, %struct.LIST* %6547, i32 0, i32 1
  %6549 = load %union.rec*, %union.rec** %6548, align 8
  store %union.rec* %6549, %union.rec** @xx_link, align 8
  %6550 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6550, %union.rec** @zz_hold, align 8
  %6551 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6552 = bitcast %union.rec* %6551 to %struct.word_type*
  %6553 = getelementptr inbounds %struct.word_type, %struct.word_type* %6552, i32 0, i32 0
  %6554 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6553, i32 0, i64 1
  %6555 = getelementptr inbounds %struct.LIST, %struct.LIST* %6554, i32 0, i32 1
  %6556 = load %union.rec*, %union.rec** %6555, align 8
  %6557 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6558 = icmp eq %union.rec* %6556, %6557
  br i1 %6558, label %6559, label %6560

; <label>:6559                                    ; preds = %6543
  br label %6601

; <label>:6560                                    ; preds = %6543
  %6561 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6562 = bitcast %union.rec* %6561 to %struct.word_type*
  %6563 = getelementptr inbounds %struct.word_type, %struct.word_type* %6562, i32 0, i32 0
  %6564 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6563, i32 0, i64 1
  %6565 = getelementptr inbounds %struct.LIST, %struct.LIST* %6564, i32 0, i32 1
  %6566 = load %union.rec*, %union.rec** %6565, align 8
  store %union.rec* %6566, %union.rec** @zz_res, align 8
  %6567 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6568 = bitcast %union.rec* %6567 to %struct.word_type*
  %6569 = getelementptr inbounds %struct.word_type, %struct.word_type* %6568, i32 0, i32 0
  %6570 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6569, i32 0, i64 1
  %6571 = getelementptr inbounds %struct.LIST, %struct.LIST* %6570, i32 0, i32 0
  %6572 = load %union.rec*, %union.rec** %6571, align 8
  %6573 = load %union.rec*, %union.rec** @zz_res, align 8
  %6574 = bitcast %union.rec* %6573 to %struct.word_type*
  %6575 = getelementptr inbounds %struct.word_type, %struct.word_type* %6574, i32 0, i32 0
  %6576 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6575, i32 0, i64 1
  %6577 = getelementptr inbounds %struct.LIST, %struct.LIST* %6576, i32 0, i32 0
  store %union.rec* %6572, %union.rec** %6577, align 8
  %6578 = load %union.rec*, %union.rec** @zz_res, align 8
  %6579 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6580 = bitcast %union.rec* %6579 to %struct.word_type*
  %6581 = getelementptr inbounds %struct.word_type, %struct.word_type* %6580, i32 0, i32 0
  %6582 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6581, i32 0, i64 1
  %6583 = getelementptr inbounds %struct.LIST, %struct.LIST* %6582, i32 0, i32 0
  %6584 = load %union.rec*, %union.rec** %6583, align 8
  %6585 = bitcast %union.rec* %6584 to %struct.word_type*
  %6586 = getelementptr inbounds %struct.word_type, %struct.word_type* %6585, i32 0, i32 0
  %6587 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6586, i32 0, i64 1
  %6588 = getelementptr inbounds %struct.LIST, %struct.LIST* %6587, i32 0, i32 1
  store %union.rec* %6578, %union.rec** %6588, align 8
  %6589 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6590 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6591 = bitcast %union.rec* %6590 to %struct.word_type*
  %6592 = getelementptr inbounds %struct.word_type, %struct.word_type* %6591, i32 0, i32 0
  %6593 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6592, i32 0, i64 1
  %6594 = getelementptr inbounds %struct.LIST, %struct.LIST* %6593, i32 0, i32 1
  store %union.rec* %6589, %union.rec** %6594, align 8
  %6595 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6596 = bitcast %union.rec* %6595 to %struct.word_type*
  %6597 = getelementptr inbounds %struct.word_type, %struct.word_type* %6596, i32 0, i32 0
  %6598 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6597, i32 0, i64 1
  %6599 = getelementptr inbounds %struct.LIST, %struct.LIST* %6598, i32 0, i32 0
  store %union.rec* %6589, %union.rec** %6599, align 8
  %6600 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6601

; <label>:6601                                    ; preds = %6560, %6559
  %6602 = phi %union.rec* [ null, %6559 ], [ %6600, %6560 ]
  store %union.rec* %6602, %union.rec** @xx_tmp, align 8
  %6603 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6603, %union.rec** @zz_hold, align 8
  %6604 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6605 = bitcast %union.rec* %6604 to %struct.word_type*
  %6606 = getelementptr inbounds %struct.word_type, %struct.word_type* %6605, i32 0, i32 0
  %6607 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6606, i32 0, i64 0
  %6608 = getelementptr inbounds %struct.LIST, %struct.LIST* %6607, i32 0, i32 1
  %6609 = load %union.rec*, %union.rec** %6608, align 8
  %6610 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6611 = icmp eq %union.rec* %6609, %6610
  br i1 %6611, label %6612, label %6613

; <label>:6612                                    ; preds = %6601
  br label %6654

; <label>:6613                                    ; preds = %6601
  %6614 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6615 = bitcast %union.rec* %6614 to %struct.word_type*
  %6616 = getelementptr inbounds %struct.word_type, %struct.word_type* %6615, i32 0, i32 0
  %6617 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6616, i32 0, i64 0
  %6618 = getelementptr inbounds %struct.LIST, %struct.LIST* %6617, i32 0, i32 1
  %6619 = load %union.rec*, %union.rec** %6618, align 8
  store %union.rec* %6619, %union.rec** @zz_res, align 8
  %6620 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6621 = bitcast %union.rec* %6620 to %struct.word_type*
  %6622 = getelementptr inbounds %struct.word_type, %struct.word_type* %6621, i32 0, i32 0
  %6623 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6622, i32 0, i64 0
  %6624 = getelementptr inbounds %struct.LIST, %struct.LIST* %6623, i32 0, i32 0
  %6625 = load %union.rec*, %union.rec** %6624, align 8
  %6626 = load %union.rec*, %union.rec** @zz_res, align 8
  %6627 = bitcast %union.rec* %6626 to %struct.word_type*
  %6628 = getelementptr inbounds %struct.word_type, %struct.word_type* %6627, i32 0, i32 0
  %6629 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6628, i32 0, i64 0
  %6630 = getelementptr inbounds %struct.LIST, %struct.LIST* %6629, i32 0, i32 0
  store %union.rec* %6625, %union.rec** %6630, align 8
  %6631 = load %union.rec*, %union.rec** @zz_res, align 8
  %6632 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6633 = bitcast %union.rec* %6632 to %struct.word_type*
  %6634 = getelementptr inbounds %struct.word_type, %struct.word_type* %6633, i32 0, i32 0
  %6635 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6634, i32 0, i64 0
  %6636 = getelementptr inbounds %struct.LIST, %struct.LIST* %6635, i32 0, i32 0
  %6637 = load %union.rec*, %union.rec** %6636, align 8
  %6638 = bitcast %union.rec* %6637 to %struct.word_type*
  %6639 = getelementptr inbounds %struct.word_type, %struct.word_type* %6638, i32 0, i32 0
  %6640 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6639, i32 0, i64 0
  %6641 = getelementptr inbounds %struct.LIST, %struct.LIST* %6640, i32 0, i32 1
  store %union.rec* %6631, %union.rec** %6641, align 8
  %6642 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6643 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6644 = bitcast %union.rec* %6643 to %struct.word_type*
  %6645 = getelementptr inbounds %struct.word_type, %struct.word_type* %6644, i32 0, i32 0
  %6646 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6645, i32 0, i64 0
  %6647 = getelementptr inbounds %struct.LIST, %struct.LIST* %6646, i32 0, i32 1
  store %union.rec* %6642, %union.rec** %6647, align 8
  %6648 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6649 = bitcast %union.rec* %6648 to %struct.word_type*
  %6650 = getelementptr inbounds %struct.word_type, %struct.word_type* %6649, i32 0, i32 0
  %6651 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6650, i32 0, i64 0
  %6652 = getelementptr inbounds %struct.LIST, %struct.LIST* %6651, i32 0, i32 0
  store %union.rec* %6642, %union.rec** %6652, align 8
  %6653 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6654

; <label>:6654                                    ; preds = %6613, %6612
  %6655 = phi %union.rec* [ null, %6612 ], [ %6653, %6613 ]
  %6656 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6656, %union.rec** @zz_hold, align 8
  %6657 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %6657, %union.rec** @zz_hold, align 8
  %6658 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6659 = bitcast %union.rec* %6658 to %struct.word_type*
  %6660 = getelementptr inbounds %struct.word_type, %struct.word_type* %6659, i32 0, i32 1
  %6661 = bitcast %union.FIRST_UNION* %6660 to %struct.anon*
  %6662 = getelementptr inbounds %struct.anon, %struct.anon* %6661, i32 0, i32 0
  %6663 = load i8, i8* %6662, align 1
  %6664 = zext i8 %6663 to i32
  %6665 = icmp eq i32 %6664, 11
  br i1 %6665, label %6675, label %6666

; <label>:6666                                    ; preds = %6654
  %6667 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6668 = bitcast %union.rec* %6667 to %struct.word_type*
  %6669 = getelementptr inbounds %struct.word_type, %struct.word_type* %6668, i32 0, i32 1
  %6670 = bitcast %union.FIRST_UNION* %6669 to %struct.anon*
  %6671 = getelementptr inbounds %struct.anon, %struct.anon* %6670, i32 0, i32 0
  %6672 = load i8, i8* %6671, align 1
  %6673 = zext i8 %6672 to i32
  %6674 = icmp eq i32 %6673, 12
  br i1 %6674, label %6675, label %6683

; <label>:6675                                    ; preds = %6666, %6654
  %6676 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6677 = bitcast %union.rec* %6676 to %struct.word_type*
  %6678 = getelementptr inbounds %struct.word_type, %struct.word_type* %6677, i32 0, i32 1
  %6679 = bitcast %union.FIRST_UNION* %6678 to %struct.anon*
  %6680 = getelementptr inbounds %struct.anon, %struct.anon* %6679, i32 0, i32 1
  %6681 = load i8, i8* %6680, align 1
  %6682 = zext i8 %6681 to i32
  br label %6694

; <label>:6683                                    ; preds = %6666
  %6684 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6685 = bitcast %union.rec* %6684 to %struct.word_type*
  %6686 = getelementptr inbounds %struct.word_type, %struct.word_type* %6685, i32 0, i32 1
  %6687 = bitcast %union.FIRST_UNION* %6686 to %struct.anon*
  %6688 = getelementptr inbounds %struct.anon, %struct.anon* %6687, i32 0, i32 0
  %6689 = load i8, i8* %6688, align 1
  %6690 = zext i8 %6689 to i64
  %6691 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %6690
  %6692 = load i8, i8* %6691, align 1
  %6693 = zext i8 %6692 to i32
  br label %6694

; <label>:6694                                    ; preds = %6683, %6675
  %6695 = phi i32 [ %6682, %6675 ], [ %6693, %6683 ]
  store i32 %6695, i32* @zz_size, align 4
  %6696 = load i32, i32* @zz_size, align 4
  %6697 = sext i32 %6696 to i64
  %6698 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6697
  %6699 = load %union.rec*, %union.rec** %6698, align 8
  %6700 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6701 = bitcast %union.rec* %6700 to %struct.word_type*
  %6702 = getelementptr inbounds %struct.word_type, %struct.word_type* %6701, i32 0, i32 0
  %6703 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6702, i32 0, i64 0
  %6704 = getelementptr inbounds %struct.LIST, %struct.LIST* %6703, i32 0, i32 0
  store %union.rec* %6699, %union.rec** %6704, align 8
  %6705 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6706 = load i32, i32* @zz_size, align 4
  %6707 = sext i32 %6706 to i64
  %6708 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6707
  store %union.rec* %6705, %union.rec** %6708, align 8
  %6709 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %6710 = bitcast %union.rec* %6709 to %struct.word_type*
  %6711 = getelementptr inbounds %struct.word_type, %struct.word_type* %6710, i32 0, i32 0
  %6712 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6711, i32 0, i64 1
  %6713 = getelementptr inbounds %struct.LIST, %struct.LIST* %6712, i32 0, i32 1
  %6714 = load %union.rec*, %union.rec** %6713, align 8
  %6715 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %6716 = icmp eq %union.rec* %6714, %6715
  br i1 %6716, label %6717, label %6720

; <label>:6717                                    ; preds = %6694
  %6718 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %6719 = call i32 @DisposeObject(%union.rec* %6718)
  br label %6720

; <label>:6720                                    ; preds = %6717, %6694
  %6721 = load %union.rec*, %union.rec** %1, align 8
  %6722 = bitcast %union.rec* %6721 to %struct.head_type*
  %6723 = getelementptr inbounds %struct.head_type, %struct.head_type* %6722, i32 0, i32 7
  %6724 = load %union.rec*, %union.rec** %6723, align 8
  %6725 = bitcast %union.rec* %6724 to %struct.word_type*
  %6726 = getelementptr inbounds %struct.word_type, %struct.word_type* %6725, i32 0, i32 0
  %6727 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6726, i32 0, i64 0
  %6728 = getelementptr inbounds %struct.LIST, %struct.LIST* %6727, i32 0, i32 1
  %6729 = load %union.rec*, %union.rec** %6728, align 8
  %6730 = load %union.rec*, %union.rec** %1, align 8
  %6731 = bitcast %union.rec* %6730 to %struct.head_type*
  %6732 = getelementptr inbounds %struct.head_type, %struct.head_type* %6731, i32 0, i32 7
  %6733 = load %union.rec*, %union.rec** %6732, align 8
  %6734 = icmp eq %union.rec* %6729, %6733
  br i1 %6734, label %6735, label %6795

; <label>:6735                                    ; preds = %6720
  %6736 = load %union.rec*, %union.rec** %1, align 8
  %6737 = bitcast %union.rec* %6736 to %struct.head_type*
  %6738 = getelementptr inbounds %struct.head_type, %struct.head_type* %6737, i32 0, i32 7
  %6739 = load %union.rec*, %union.rec** %6738, align 8
  store %union.rec* %6739, %union.rec** @zz_hold, align 8
  %6740 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %6740, %union.rec** @zz_hold, align 8
  %6741 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6742 = bitcast %union.rec* %6741 to %struct.word_type*
  %6743 = getelementptr inbounds %struct.word_type, %struct.word_type* %6742, i32 0, i32 1
  %6744 = bitcast %union.FIRST_UNION* %6743 to %struct.anon*
  %6745 = getelementptr inbounds %struct.anon, %struct.anon* %6744, i32 0, i32 0
  %6746 = load i8, i8* %6745, align 1
  %6747 = zext i8 %6746 to i32
  %6748 = icmp eq i32 %6747, 11
  br i1 %6748, label %6758, label %6749

; <label>:6749                                    ; preds = %6735
  %6750 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6751 = bitcast %union.rec* %6750 to %struct.word_type*
  %6752 = getelementptr inbounds %struct.word_type, %struct.word_type* %6751, i32 0, i32 1
  %6753 = bitcast %union.FIRST_UNION* %6752 to %struct.anon*
  %6754 = getelementptr inbounds %struct.anon, %struct.anon* %6753, i32 0, i32 0
  %6755 = load i8, i8* %6754, align 1
  %6756 = zext i8 %6755 to i32
  %6757 = icmp eq i32 %6756, 12
  br i1 %6757, label %6758, label %6766

; <label>:6758                                    ; preds = %6749, %6735
  %6759 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6760 = bitcast %union.rec* %6759 to %struct.word_type*
  %6761 = getelementptr inbounds %struct.word_type, %struct.word_type* %6760, i32 0, i32 1
  %6762 = bitcast %union.FIRST_UNION* %6761 to %struct.anon*
  %6763 = getelementptr inbounds %struct.anon, %struct.anon* %6762, i32 0, i32 1
  %6764 = load i8, i8* %6763, align 1
  %6765 = zext i8 %6764 to i32
  br label %6777

; <label>:6766                                    ; preds = %6749
  %6767 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6768 = bitcast %union.rec* %6767 to %struct.word_type*
  %6769 = getelementptr inbounds %struct.word_type, %struct.word_type* %6768, i32 0, i32 1
  %6770 = bitcast %union.FIRST_UNION* %6769 to %struct.anon*
  %6771 = getelementptr inbounds %struct.anon, %struct.anon* %6770, i32 0, i32 0
  %6772 = load i8, i8* %6771, align 1
  %6773 = zext i8 %6772 to i64
  %6774 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %6773
  %6775 = load i8, i8* %6774, align 1
  %6776 = zext i8 %6775 to i32
  br label %6777

; <label>:6777                                    ; preds = %6766, %6758
  %6778 = phi i32 [ %6765, %6758 ], [ %6776, %6766 ]
  store i32 %6778, i32* @zz_size, align 4
  %6779 = load i32, i32* @zz_size, align 4
  %6780 = sext i32 %6779 to i64
  %6781 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6780
  %6782 = load %union.rec*, %union.rec** %6781, align 8
  %6783 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6784 = bitcast %union.rec* %6783 to %struct.word_type*
  %6785 = getelementptr inbounds %struct.word_type, %struct.word_type* %6784, i32 0, i32 0
  %6786 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6785, i32 0, i64 0
  %6787 = getelementptr inbounds %struct.LIST, %struct.LIST* %6786, i32 0, i32 0
  store %union.rec* %6782, %union.rec** %6787, align 8
  %6788 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6789 = load i32, i32* @zz_size, align 4
  %6790 = sext i32 %6789 to i64
  %6791 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6790
  store %union.rec* %6788, %union.rec** %6791, align 8
  %6792 = load %union.rec*, %union.rec** %1, align 8
  %6793 = bitcast %union.rec* %6792 to %struct.head_type*
  %6794 = getelementptr inbounds %struct.head_type, %struct.head_type* %6793, i32 0, i32 7
  store %union.rec* null, %union.rec** %6794, align 8
  br label %6795

; <label>:6795                                    ; preds = %6777, %6720
  br label %6796

; <label>:6796                                    ; preds = %6795, %6541
  %6797 = load %union.rec*, %union.rec** %hd2, align 8
  %6798 = bitcast %union.rec* %6797 to %struct.word_type*
  %6799 = getelementptr inbounds %struct.word_type, %struct.word_type* %6798, i32 0, i32 1
  %6800 = bitcast %union.FIRST_UNION* %6799 to %struct.anon*
  %6801 = getelementptr inbounds %struct.anon, %struct.anon* %6800, i32 0, i32 0
  %6802 = load i8, i8* %6801, align 1
  %6803 = zext i8 %6802 to i32
  %6804 = icmp eq i32 %6803, 17
  br i1 %6804, label %6805, label %6808

; <label>:6805                                    ; preds = %6796
  %6806 = load %union.rec*, %union.rec** %hd2, align 8
  %6807 = call %union.rec* @ConvertGalleyList(%union.rec* %6806)
  store %union.rec* %6807, %union.rec** %hd2, align 8
  br label %6808

; <label>:6808                                    ; preds = %6805, %6796
  %6809 = load %union.rec*, %union.rec** %hd2, align 8
  call void @FlushGalley(%union.rec* %6809)
  br label %11

; <label>:6810                                    ; preds = %4281, %4275, %4266
  %6811 = load %union.rec*, %union.rec** %y, align 8
  %6812 = bitcast %union.rec* %6811 to %struct.word_type*
  %6813 = getelementptr inbounds %struct.word_type, %struct.word_type* %6812, i32 0, i32 1
  %6814 = bitcast %union.FIRST_UNION* %6813 to %struct.anon*
  %6815 = getelementptr inbounds %struct.anon, %struct.anon* %6814, i32 0, i32 0
  %6816 = load i8, i8* %6815, align 1
  %6817 = zext i8 %6816 to i32
  %6818 = icmp eq i32 %6817, 121
  br i1 %6818, label %6819, label %7853

; <label>:6819                                    ; preds = %6810
  %6820 = load %union.rec*, %union.rec** %y, align 8
  %6821 = bitcast %union.rec* %6820 to %struct.word_type*
  %6822 = getelementptr inbounds %struct.word_type, %struct.word_type* %6821, i32 0, i32 2
  %6823 = bitcast %union.SECOND_UNION* %6822 to %struct.anon.2*
  %6824 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6823, i32 0, i32 2
  %6825 = load i16, i16* %6824, align 2
  %6826 = lshr i16 %6825, 6
  %6827 = and i16 %6826, 1
  %6828 = zext i16 %6827 to i32
  %6829 = icmp ne i32 %6828, 0
  br i1 %6829, label %6830, label %7853

; <label>:6830                                    ; preds = %6819
  %6831 = load i32, i32* @AllowCrossDb, align 4
  %6832 = icmp ne i32 %6831, 0
  br i1 %6832, label %6833, label %7853

; <label>:6833                                    ; preds = %6830
  %6834 = load %union.rec*, %union.rec** %y, align 8
  %6835 = bitcast %union.rec* %6834 to %struct.closure_type*
  %6836 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %6835, i32 0, i32 5
  %6837 = load %union.rec*, %union.rec** %6836, align 8
  %6838 = bitcast %union.rec* %6837 to %struct.closure_type*
  %6839 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %6838, i32 0, i32 5
  %6840 = load %union.rec*, %union.rec** %6839, align 8
  %6841 = call %union.rec* @FirstExternTarget(%union.rec* %6840, %union.rec** %cnt)
  store %union.rec* %6841, %union.rec** %sym, align 8
  br label %6842

; <label>:6842                                    ; preds = %7829, %6833
  %6843 = load %union.rec*, %union.rec** %sym, align 8
  %6844 = icmp ne %union.rec* %6843, null
  br i1 %6844, label %6845, label %7838

; <label>:6845                                    ; preds = %6842
  %6846 = load %union.rec*, %union.rec** %sym, align 8
  %6847 = load %union.rec*, %union.rec** %y, align 8
  %6848 = bitcast %union.rec* %6847 to %struct.closure_type*
  %6849 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %6848, i32 0, i32 5
  %6850 = load %union.rec*, %union.rec** %6849, align 8
  %6851 = bitcast %union.rec* %6850 to %struct.word_type*
  %6852 = getelementptr inbounds %struct.word_type, %struct.word_type* %6851, i32 0, i32 1
  %6853 = bitcast %union.FIRST_UNION* %6852 to %struct.FILE_POS*
  %6854 = call %union.rec* @GallTargEval(%union.rec* %6846, %struct.FILE_POS* %6853)
  store %union.rec* %6854, %union.rec** %cr, align 8
  %6855 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 132), align 1
  %6856 = zext i8 %6855 to i32
  store i32 %6856, i32* @zz_size, align 4
  %6857 = sext i32 %6856 to i64
  %6858 = icmp uge i64 %6857, 265
  br i1 %6858, label %6859, label %6862

; <label>:6859                                    ; preds = %6845
  %6860 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6861 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %6860)
  br label %6887

; <label>:6862                                    ; preds = %6845
  %6863 = load i32, i32* @zz_size, align 4
  %6864 = sext i32 %6863 to i64
  %6865 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6864
  %6866 = load %union.rec*, %union.rec** %6865, align 8
  %6867 = icmp eq %union.rec* %6866, null
  br i1 %6867, label %6868, label %6872

; <label>:6868                                    ; preds = %6862
  %6869 = load i32, i32* @zz_size, align 4
  %6870 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6871 = call %union.rec* @GetMemory(i32 %6869, %struct.FILE_POS* %6870)
  store %union.rec* %6871, %union.rec** @zz_hold, align 8
  br label %6886

; <label>:6872                                    ; preds = %6862
  %6873 = load i32, i32* @zz_size, align 4
  %6874 = sext i32 %6873 to i64
  %6875 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6874
  %6876 = load %union.rec*, %union.rec** %6875, align 8
  store %union.rec* %6876, %union.rec** @zz_hold, align 8
  store %union.rec* %6876, %union.rec** @zz_hold, align 8
  %6877 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6878 = bitcast %union.rec* %6877 to %struct.word_type*
  %6879 = getelementptr inbounds %struct.word_type, %struct.word_type* %6878, i32 0, i32 0
  %6880 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6879, i32 0, i64 0
  %6881 = getelementptr inbounds %struct.LIST, %struct.LIST* %6880, i32 0, i32 0
  %6882 = load %union.rec*, %union.rec** %6881, align 8
  %6883 = load i32, i32* @zz_size, align 4
  %6884 = sext i32 %6883 to i64
  %6885 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6884
  store %union.rec* %6882, %union.rec** %6885, align 8
  br label %6886

; <label>:6886                                    ; preds = %6872, %6868
  br label %6887

; <label>:6887                                    ; preds = %6886, %6859
  %6888 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6889 = bitcast %union.rec* %6888 to %struct.word_type*
  %6890 = getelementptr inbounds %struct.word_type, %struct.word_type* %6889, i32 0, i32 1
  %6891 = bitcast %union.FIRST_UNION* %6890 to %struct.anon*
  %6892 = getelementptr inbounds %struct.anon, %struct.anon* %6891, i32 0, i32 0
  store i8 -124, i8* %6892, align 1
  %6893 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6894 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6895 = bitcast %union.rec* %6894 to %struct.word_type*
  %6896 = getelementptr inbounds %struct.word_type, %struct.word_type* %6895, i32 0, i32 0
  %6897 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6896, i32 0, i64 1
  %6898 = getelementptr inbounds %struct.LIST, %struct.LIST* %6897, i32 0, i32 1
  store %union.rec* %6893, %union.rec** %6898, align 8
  %6899 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6900 = bitcast %union.rec* %6899 to %struct.word_type*
  %6901 = getelementptr inbounds %struct.word_type, %struct.word_type* %6900, i32 0, i32 0
  %6902 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6901, i32 0, i64 1
  %6903 = getelementptr inbounds %struct.LIST, %struct.LIST* %6902, i32 0, i32 0
  store %union.rec* %6893, %union.rec** %6903, align 8
  %6904 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6905 = bitcast %union.rec* %6904 to %struct.word_type*
  %6906 = getelementptr inbounds %struct.word_type, %struct.word_type* %6905, i32 0, i32 0
  %6907 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6906, i32 0, i64 0
  %6908 = getelementptr inbounds %struct.LIST, %struct.LIST* %6907, i32 0, i32 1
  store %union.rec* %6893, %union.rec** %6908, align 8
  %6909 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6910 = bitcast %union.rec* %6909 to %struct.word_type*
  %6911 = getelementptr inbounds %struct.word_type, %struct.word_type* %6910, i32 0, i32 0
  %6912 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6911, i32 0, i64 0
  %6913 = getelementptr inbounds %struct.LIST, %struct.LIST* %6912, i32 0, i32 0
  store %union.rec* %6893, %union.rec** %6913, align 8
  store %union.rec* %6893, %union.rec** %ins, align 8
  %6914 = load %union.rec*, %union.rec** %cr, align 8
  %6915 = load %union.rec*, %union.rec** %ins, align 8
  %6916 = bitcast %union.rec* %6915 to %struct.closure_type*
  %6917 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %6916, i32 0, i32 5
  store %union.rec* %6914, %union.rec** %6917, align 8
  %6918 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %6919 = zext i8 %6918 to i32
  store i32 %6919, i32* @zz_size, align 4
  %6920 = sext i32 %6919 to i64
  %6921 = icmp uge i64 %6920, 265
  br i1 %6921, label %6922, label %6925

; <label>:6922                                    ; preds = %6887
  %6923 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6924 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %6923)
  br label %6950

; <label>:6925                                    ; preds = %6887
  %6926 = load i32, i32* @zz_size, align 4
  %6927 = sext i32 %6926 to i64
  %6928 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6927
  %6929 = load %union.rec*, %union.rec** %6928, align 8
  %6930 = icmp eq %union.rec* %6929, null
  br i1 %6930, label %6931, label %6935

; <label>:6931                                    ; preds = %6925
  %6932 = load i32, i32* @zz_size, align 4
  %6933 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6934 = call %union.rec* @GetMemory(i32 %6932, %struct.FILE_POS* %6933)
  store %union.rec* %6934, %union.rec** @zz_hold, align 8
  br label %6949

; <label>:6935                                    ; preds = %6925
  %6936 = load i32, i32* @zz_size, align 4
  %6937 = sext i32 %6936 to i64
  %6938 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6937
  %6939 = load %union.rec*, %union.rec** %6938, align 8
  store %union.rec* %6939, %union.rec** @zz_hold, align 8
  store %union.rec* %6939, %union.rec** @zz_hold, align 8
  %6940 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6941 = bitcast %union.rec* %6940 to %struct.word_type*
  %6942 = getelementptr inbounds %struct.word_type, %struct.word_type* %6941, i32 0, i32 0
  %6943 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6942, i32 0, i64 0
  %6944 = getelementptr inbounds %struct.LIST, %struct.LIST* %6943, i32 0, i32 0
  %6945 = load %union.rec*, %union.rec** %6944, align 8
  %6946 = load i32, i32* @zz_size, align 4
  %6947 = sext i32 %6946 to i64
  %6948 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6947
  store %union.rec* %6945, %union.rec** %6948, align 8
  br label %6949

; <label>:6949                                    ; preds = %6935, %6931
  br label %6950

; <label>:6950                                    ; preds = %6949, %6922
  %6951 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6952 = bitcast %union.rec* %6951 to %struct.word_type*
  %6953 = getelementptr inbounds %struct.word_type, %struct.word_type* %6952, i32 0, i32 1
  %6954 = bitcast %union.FIRST_UNION* %6953 to %struct.anon*
  %6955 = getelementptr inbounds %struct.anon, %struct.anon* %6954, i32 0, i32 0
  store i8 0, i8* %6955, align 1
  %6956 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6957 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6958 = bitcast %union.rec* %6957 to %struct.word_type*
  %6959 = getelementptr inbounds %struct.word_type, %struct.word_type* %6958, i32 0, i32 0
  %6960 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6959, i32 0, i64 1
  %6961 = getelementptr inbounds %struct.LIST, %struct.LIST* %6960, i32 0, i32 1
  store %union.rec* %6956, %union.rec** %6961, align 8
  %6962 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6963 = bitcast %union.rec* %6962 to %struct.word_type*
  %6964 = getelementptr inbounds %struct.word_type, %struct.word_type* %6963, i32 0, i32 0
  %6965 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6964, i32 0, i64 1
  %6966 = getelementptr inbounds %struct.LIST, %struct.LIST* %6965, i32 0, i32 0
  store %union.rec* %6956, %union.rec** %6966, align 8
  %6967 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6968 = bitcast %union.rec* %6967 to %struct.word_type*
  %6969 = getelementptr inbounds %struct.word_type, %struct.word_type* %6968, i32 0, i32 0
  %6970 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6969, i32 0, i64 0
  %6971 = getelementptr inbounds %struct.LIST, %struct.LIST* %6970, i32 0, i32 1
  store %union.rec* %6956, %union.rec** %6971, align 8
  %6972 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6973 = bitcast %union.rec* %6972 to %struct.word_type*
  %6974 = getelementptr inbounds %struct.word_type, %struct.word_type* %6973, i32 0, i32 0
  %6975 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6974, i32 0, i64 0
  %6976 = getelementptr inbounds %struct.LIST, %struct.LIST* %6975, i32 0, i32 0
  store %union.rec* %6956, %union.rec** %6976, align 8
  store %union.rec* %6956, %union.rec** @xx_link, align 8
  %6977 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6977, %union.rec** @zz_res, align 8
  %6978 = load %union.rec*, %union.rec** %y, align 8
  %6979 = bitcast %union.rec* %6978 to %struct.word_type*
  %6980 = getelementptr inbounds %struct.word_type, %struct.word_type* %6979, i32 0, i32 0
  %6981 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6980, i32 0, i64 1
  %6982 = getelementptr inbounds %struct.LIST, %struct.LIST* %6981, i32 0, i32 1
  %6983 = load %union.rec*, %union.rec** %6982, align 8
  store %union.rec* %6983, %union.rec** @zz_hold, align 8
  %6984 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6985 = icmp eq %union.rec* %6984, null
  br i1 %6985, label %6986, label %6988

; <label>:6986                                    ; preds = %6950
  %6987 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7036

; <label>:6988                                    ; preds = %6950
  %6989 = load %union.rec*, %union.rec** @zz_res, align 8
  %6990 = icmp eq %union.rec* %6989, null
  br i1 %6990, label %6991, label %6993

; <label>:6991                                    ; preds = %6988
  %6992 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %7034

; <label>:6993                                    ; preds = %6988
  %6994 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6995 = bitcast %union.rec* %6994 to %struct.word_type*
  %6996 = getelementptr inbounds %struct.word_type, %struct.word_type* %6995, i32 0, i32 0
  %6997 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6996, i32 0, i64 0
  %6998 = getelementptr inbounds %struct.LIST, %struct.LIST* %6997, i32 0, i32 0
  %6999 = load %union.rec*, %union.rec** %6998, align 8
  store %union.rec* %6999, %union.rec** @zz_tmp, align 8
  %7000 = load %union.rec*, %union.rec** @zz_res, align 8
  %7001 = bitcast %union.rec* %7000 to %struct.word_type*
  %7002 = getelementptr inbounds %struct.word_type, %struct.word_type* %7001, i32 0, i32 0
  %7003 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7002, i32 0, i64 0
  %7004 = getelementptr inbounds %struct.LIST, %struct.LIST* %7003, i32 0, i32 0
  %7005 = load %union.rec*, %union.rec** %7004, align 8
  %7006 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7007 = bitcast %union.rec* %7006 to %struct.word_type*
  %7008 = getelementptr inbounds %struct.word_type, %struct.word_type* %7007, i32 0, i32 0
  %7009 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7008, i32 0, i64 0
  %7010 = getelementptr inbounds %struct.LIST, %struct.LIST* %7009, i32 0, i32 0
  store %union.rec* %7005, %union.rec** %7010, align 8
  %7011 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7012 = load %union.rec*, %union.rec** @zz_res, align 8
  %7013 = bitcast %union.rec* %7012 to %struct.word_type*
  %7014 = getelementptr inbounds %struct.word_type, %struct.word_type* %7013, i32 0, i32 0
  %7015 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7014, i32 0, i64 0
  %7016 = getelementptr inbounds %struct.LIST, %struct.LIST* %7015, i32 0, i32 0
  %7017 = load %union.rec*, %union.rec** %7016, align 8
  %7018 = bitcast %union.rec* %7017 to %struct.word_type*
  %7019 = getelementptr inbounds %struct.word_type, %struct.word_type* %7018, i32 0, i32 0
  %7020 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7019, i32 0, i64 0
  %7021 = getelementptr inbounds %struct.LIST, %struct.LIST* %7020, i32 0, i32 1
  store %union.rec* %7011, %union.rec** %7021, align 8
  %7022 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7023 = load %union.rec*, %union.rec** @zz_res, align 8
  %7024 = bitcast %union.rec* %7023 to %struct.word_type*
  %7025 = getelementptr inbounds %struct.word_type, %struct.word_type* %7024, i32 0, i32 0
  %7026 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7025, i32 0, i64 0
  %7027 = getelementptr inbounds %struct.LIST, %struct.LIST* %7026, i32 0, i32 0
  store %union.rec* %7022, %union.rec** %7027, align 8
  %7028 = load %union.rec*, %union.rec** @zz_res, align 8
  %7029 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7030 = bitcast %union.rec* %7029 to %struct.word_type*
  %7031 = getelementptr inbounds %struct.word_type, %struct.word_type* %7030, i32 0, i32 0
  %7032 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7031, i32 0, i64 0
  %7033 = getelementptr inbounds %struct.LIST, %struct.LIST* %7032, i32 0, i32 1
  store %union.rec* %7028, %union.rec** %7033, align 8
  br label %7034

; <label>:7034                                    ; preds = %6993, %6991
  %7035 = phi %union.rec* [ %6992, %6991 ], [ %7028, %6993 ]
  br label %7036

; <label>:7036                                    ; preds = %7034, %6986
  %7037 = phi %union.rec* [ %6987, %6986 ], [ %7035, %7034 ]
  %7038 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7038, %union.rec** @zz_res, align 8
  %7039 = load %union.rec*, %union.rec** %ins, align 8
  store %union.rec* %7039, %union.rec** @zz_hold, align 8
  %7040 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7041 = icmp eq %union.rec* %7040, null
  br i1 %7041, label %7042, label %7044

; <label>:7042                                    ; preds = %7036
  %7043 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7092

; <label>:7044                                    ; preds = %7036
  %7045 = load %union.rec*, %union.rec** @zz_res, align 8
  %7046 = icmp eq %union.rec* %7045, null
  br i1 %7046, label %7047, label %7049

; <label>:7047                                    ; preds = %7044
  %7048 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %7090

; <label>:7049                                    ; preds = %7044
  %7050 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7051 = bitcast %union.rec* %7050 to %struct.word_type*
  %7052 = getelementptr inbounds %struct.word_type, %struct.word_type* %7051, i32 0, i32 0
  %7053 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7052, i32 0, i64 1
  %7054 = getelementptr inbounds %struct.LIST, %struct.LIST* %7053, i32 0, i32 0
  %7055 = load %union.rec*, %union.rec** %7054, align 8
  store %union.rec* %7055, %union.rec** @zz_tmp, align 8
  %7056 = load %union.rec*, %union.rec** @zz_res, align 8
  %7057 = bitcast %union.rec* %7056 to %struct.word_type*
  %7058 = getelementptr inbounds %struct.word_type, %struct.word_type* %7057, i32 0, i32 0
  %7059 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7058, i32 0, i64 1
  %7060 = getelementptr inbounds %struct.LIST, %struct.LIST* %7059, i32 0, i32 0
  %7061 = load %union.rec*, %union.rec** %7060, align 8
  %7062 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7063 = bitcast %union.rec* %7062 to %struct.word_type*
  %7064 = getelementptr inbounds %struct.word_type, %struct.word_type* %7063, i32 0, i32 0
  %7065 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7064, i32 0, i64 1
  %7066 = getelementptr inbounds %struct.LIST, %struct.LIST* %7065, i32 0, i32 0
  store %union.rec* %7061, %union.rec** %7066, align 8
  %7067 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7068 = load %union.rec*, %union.rec** @zz_res, align 8
  %7069 = bitcast %union.rec* %7068 to %struct.word_type*
  %7070 = getelementptr inbounds %struct.word_type, %struct.word_type* %7069, i32 0, i32 0
  %7071 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7070, i32 0, i64 1
  %7072 = getelementptr inbounds %struct.LIST, %struct.LIST* %7071, i32 0, i32 0
  %7073 = load %union.rec*, %union.rec** %7072, align 8
  %7074 = bitcast %union.rec* %7073 to %struct.word_type*
  %7075 = getelementptr inbounds %struct.word_type, %struct.word_type* %7074, i32 0, i32 0
  %7076 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7075, i32 0, i64 1
  %7077 = getelementptr inbounds %struct.LIST, %struct.LIST* %7076, i32 0, i32 1
  store %union.rec* %7067, %union.rec** %7077, align 8
  %7078 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7079 = load %union.rec*, %union.rec** @zz_res, align 8
  %7080 = bitcast %union.rec* %7079 to %struct.word_type*
  %7081 = getelementptr inbounds %struct.word_type, %struct.word_type* %7080, i32 0, i32 0
  %7082 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7081, i32 0, i64 1
  %7083 = getelementptr inbounds %struct.LIST, %struct.LIST* %7082, i32 0, i32 0
  store %union.rec* %7078, %union.rec** %7083, align 8
  %7084 = load %union.rec*, %union.rec** @zz_res, align 8
  %7085 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7086 = bitcast %union.rec* %7085 to %struct.word_type*
  %7087 = getelementptr inbounds %struct.word_type, %struct.word_type* %7086, i32 0, i32 0
  %7088 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7087, i32 0, i64 1
  %7089 = getelementptr inbounds %struct.LIST, %struct.LIST* %7088, i32 0, i32 1
  store %union.rec* %7084, %union.rec** %7089, align 8
  br label %7090

; <label>:7090                                    ; preds = %7049, %7047
  %7091 = phi %union.rec* [ %7048, %7047 ], [ %7084, %7049 ]
  br label %7092

; <label>:7092                                    ; preds = %7090, %7042
  %7093 = phi %union.rec* [ %7043, %7042 ], [ %7091, %7090 ]
  %7094 = load %union.rec*, %union.rec** %cr, align 8
  %7095 = bitcast %union.rec* %7094 to %struct.word_type*
  %7096 = getelementptr inbounds %struct.word_type, %struct.word_type* %7095, i32 0, i32 0
  %7097 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7096, i32 0, i64 0
  %7098 = getelementptr inbounds %struct.LIST, %struct.LIST* %7097, i32 0, i32 0
  %7099 = load %union.rec*, %union.rec** %7098, align 8
  %7100 = bitcast %union.rec* %7099 to %struct.word_type*
  %7101 = getelementptr inbounds %struct.word_type, %struct.word_type* %7100, i32 0, i32 0
  %7102 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7101, i32 0, i64 1
  %7103 = getelementptr inbounds %struct.LIST, %struct.LIST* %7102, i32 0, i32 0
  %7104 = load %union.rec*, %union.rec** %7103, align 8
  store %union.rec* %7104, %union.rec** %tag6, align 8
  br label %7105

; <label>:7105                                    ; preds = %7115, %7092
  %7106 = load %union.rec*, %union.rec** %tag6, align 8
  %7107 = bitcast %union.rec* %7106 to %struct.word_type*
  %7108 = getelementptr inbounds %struct.word_type, %struct.word_type* %7107, i32 0, i32 1
  %7109 = bitcast %union.FIRST_UNION* %7108 to %struct.anon*
  %7110 = getelementptr inbounds %struct.anon, %struct.anon* %7109, i32 0, i32 0
  %7111 = load i8, i8* %7110, align 1
  %7112 = zext i8 %7111 to i32
  %7113 = icmp eq i32 %7112, 0
  br i1 %7113, label %7114, label %7122

; <label>:7114                                    ; preds = %7105
  br label %7115

; <label>:7115                                    ; preds = %7114
  %7116 = load %union.rec*, %union.rec** %tag6, align 8
  %7117 = bitcast %union.rec* %7116 to %struct.word_type*
  %7118 = getelementptr inbounds %struct.word_type, %struct.word_type* %7117, i32 0, i32 0
  %7119 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7118, i32 0, i64 1
  %7120 = getelementptr inbounds %struct.LIST, %struct.LIST* %7119, i32 0, i32 0
  %7121 = load %union.rec*, %union.rec** %7120, align 8
  store %union.rec* %7121, %union.rec** %tag6, align 8
  br label %7105

; <label>:7122                                    ; preds = %7105
  %7123 = load %union.rec*, %union.rec** %tag6, align 8
  %7124 = bitcast %union.rec* %7123 to %struct.word_type*
  %7125 = getelementptr inbounds %struct.word_type, %struct.word_type* %7124, i32 0, i32 1
  %7126 = bitcast %union.FIRST_UNION* %7125 to %struct.anon*
  %7127 = getelementptr inbounds %struct.anon, %struct.anon* %7126, i32 0, i32 0
  %7128 = load i8, i8* %7127, align 1
  %7129 = zext i8 %7128 to i32
  %7130 = icmp eq i32 %7129, 11
  br i1 %7130, label %7143, label %7131

; <label>:7131                                    ; preds = %7122
  %7132 = load %union.rec*, %union.rec** %tag6, align 8
  %7133 = bitcast %union.rec* %7132 to %struct.word_type*
  %7134 = getelementptr inbounds %struct.word_type, %struct.word_type* %7133, i32 0, i32 1
  %7135 = bitcast %union.FIRST_UNION* %7134 to %struct.anon*
  %7136 = getelementptr inbounds %struct.anon, %struct.anon* %7135, i32 0, i32 0
  %7137 = load i8, i8* %7136, align 1
  %7138 = zext i8 %7137 to i32
  %7139 = icmp eq i32 %7138, 12
  br i1 %7139, label %7143, label %7140

; <label>:7140                                    ; preds = %7131
  %7141 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7142 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %7141, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i32 0, i32 0))
  br label %7143

; <label>:7143                                    ; preds = %7140, %7131, %7122
  %7144 = load %union.rec*, %union.rec** @OldCrossDb, align 8
  %7145 = load %union.rec*, %union.rec** %sym, align 8
  %7146 = load %union.rec*, %union.rec** %tag6, align 8
  %7147 = bitcast %union.rec* %7146 to %struct.word_type*
  %7148 = getelementptr inbounds %struct.word_type, %struct.word_type* %7147, i32 0, i32 4
  %7149 = getelementptr inbounds [4 x i8], [4 x i8]* %7148, i32 0, i32 0
  %7150 = getelementptr inbounds [512 x i8], [512 x i8]* %newseq10, i32 0, i32 0
  %7151 = call i32 @DbRetrieve(%union.rec* %7144, i32 1, %union.rec* %7145, i8* %7149, i8* %7150, i16* %tfnum, i64* %tfpos, i32* %tlnum, i64* %tcont)
  store i32 %7151, i32* %found9, align 4
  %7152 = load i32, i32* %found9, align 4
  %7153 = icmp ne i32 %7152, 0
  br i1 %7153, label %7154, label %7828

; <label>:7154                                    ; preds = %7143
  %7155 = load %union.rec*, %union.rec** %1, align 8
  %7156 = bitcast %union.rec* %7155 to %struct.head_type*
  %7157 = getelementptr inbounds %struct.head_type, %struct.head_type* %7156, i32 0, i32 7
  %7158 = load %union.rec*, %union.rec** %7157, align 8
  %7159 = icmp eq %union.rec* %7158, null
  br i1 %7159, label %7160, label %7223

; <label>:7160                                    ; preds = %7154
  %7161 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %7162 = zext i8 %7161 to i32
  store i32 %7162, i32* @zz_size, align 4
  %7163 = sext i32 %7162 to i64
  %7164 = icmp uge i64 %7163, 265
  br i1 %7164, label %7165, label %7168

; <label>:7165                                    ; preds = %7160
  %7166 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7167 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %7166)
  br label %7193

; <label>:7168                                    ; preds = %7160
  %7169 = load i32, i32* @zz_size, align 4
  %7170 = sext i32 %7169 to i64
  %7171 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7170
  %7172 = load %union.rec*, %union.rec** %7171, align 8
  %7173 = icmp eq %union.rec* %7172, null
  br i1 %7173, label %7174, label %7178

; <label>:7174                                    ; preds = %7168
  %7175 = load i32, i32* @zz_size, align 4
  %7176 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7177 = call %union.rec* @GetMemory(i32 %7175, %struct.FILE_POS* %7176)
  store %union.rec* %7177, %union.rec** @zz_hold, align 8
  br label %7192

; <label>:7178                                    ; preds = %7168
  %7179 = load i32, i32* @zz_size, align 4
  %7180 = sext i32 %7179 to i64
  %7181 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7180
  %7182 = load %union.rec*, %union.rec** %7181, align 8
  store %union.rec* %7182, %union.rec** @zz_hold, align 8
  store %union.rec* %7182, %union.rec** @zz_hold, align 8
  %7183 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7184 = bitcast %union.rec* %7183 to %struct.word_type*
  %7185 = getelementptr inbounds %struct.word_type, %struct.word_type* %7184, i32 0, i32 0
  %7186 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7185, i32 0, i64 0
  %7187 = getelementptr inbounds %struct.LIST, %struct.LIST* %7186, i32 0, i32 0
  %7188 = load %union.rec*, %union.rec** %7187, align 8
  %7189 = load i32, i32* @zz_size, align 4
  %7190 = sext i32 %7189 to i64
  %7191 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7190
  store %union.rec* %7188, %union.rec** %7191, align 8
  br label %7192

; <label>:7192                                    ; preds = %7178, %7174
  br label %7193

; <label>:7193                                    ; preds = %7192, %7165
  %7194 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7195 = bitcast %union.rec* %7194 to %struct.word_type*
  %7196 = getelementptr inbounds %struct.word_type, %struct.word_type* %7195, i32 0, i32 1
  %7197 = bitcast %union.FIRST_UNION* %7196 to %struct.anon*
  %7198 = getelementptr inbounds %struct.anon, %struct.anon* %7197, i32 0, i32 0
  store i8 17, i8* %7198, align 1
  %7199 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7200 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7201 = bitcast %union.rec* %7200 to %struct.word_type*
  %7202 = getelementptr inbounds %struct.word_type, %struct.word_type* %7201, i32 0, i32 0
  %7203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7202, i32 0, i64 1
  %7204 = getelementptr inbounds %struct.LIST, %struct.LIST* %7203, i32 0, i32 1
  store %union.rec* %7199, %union.rec** %7204, align 8
  %7205 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7206 = bitcast %union.rec* %7205 to %struct.word_type*
  %7207 = getelementptr inbounds %struct.word_type, %struct.word_type* %7206, i32 0, i32 0
  %7208 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7207, i32 0, i64 1
  %7209 = getelementptr inbounds %struct.LIST, %struct.LIST* %7208, i32 0, i32 0
  store %union.rec* %7199, %union.rec** %7209, align 8
  %7210 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7211 = bitcast %union.rec* %7210 to %struct.word_type*
  %7212 = getelementptr inbounds %struct.word_type, %struct.word_type* %7211, i32 0, i32 0
  %7213 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7212, i32 0, i64 0
  %7214 = getelementptr inbounds %struct.LIST, %struct.LIST* %7213, i32 0, i32 1
  store %union.rec* %7199, %union.rec** %7214, align 8
  %7215 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7216 = bitcast %union.rec* %7215 to %struct.word_type*
  %7217 = getelementptr inbounds %struct.word_type, %struct.word_type* %7216, i32 0, i32 0
  %7218 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7217, i32 0, i64 0
  %7219 = getelementptr inbounds %struct.LIST, %struct.LIST* %7218, i32 0, i32 0
  store %union.rec* %7199, %union.rec** %7219, align 8
  %7220 = load %union.rec*, %union.rec** %1, align 8
  %7221 = bitcast %union.rec* %7220 to %struct.head_type*
  %7222 = getelementptr inbounds %struct.head_type, %struct.head_type* %7221, i32 0, i32 7
  store %union.rec* %7199, %union.rec** %7222, align 8
  br label %7223

; <label>:7223                                    ; preds = %7193, %7154
  %7224 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 147), align 1
  %7225 = zext i8 %7224 to i32
  store i32 %7225, i32* @zz_size, align 4
  %7226 = sext i32 %7225 to i64
  %7227 = icmp uge i64 %7226, 265
  br i1 %7227, label %7228, label %7231

; <label>:7228                                    ; preds = %7223
  %7229 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7230 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %7229)
  br label %7256

; <label>:7231                                    ; preds = %7223
  %7232 = load i32, i32* @zz_size, align 4
  %7233 = sext i32 %7232 to i64
  %7234 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7233
  %7235 = load %union.rec*, %union.rec** %7234, align 8
  %7236 = icmp eq %union.rec* %7235, null
  br i1 %7236, label %7237, label %7241

; <label>:7237                                    ; preds = %7231
  %7238 = load i32, i32* @zz_size, align 4
  %7239 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7240 = call %union.rec* @GetMemory(i32 %7238, %struct.FILE_POS* %7239)
  store %union.rec* %7240, %union.rec** @zz_hold, align 8
  br label %7255

; <label>:7241                                    ; preds = %7231
  %7242 = load i32, i32* @zz_size, align 4
  %7243 = sext i32 %7242 to i64
  %7244 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7243
  %7245 = load %union.rec*, %union.rec** %7244, align 8
  store %union.rec* %7245, %union.rec** @zz_hold, align 8
  store %union.rec* %7245, %union.rec** @zz_hold, align 8
  %7246 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7247 = bitcast %union.rec* %7246 to %struct.word_type*
  %7248 = getelementptr inbounds %struct.word_type, %struct.word_type* %7247, i32 0, i32 0
  %7249 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7248, i32 0, i64 0
  %7250 = getelementptr inbounds %struct.LIST, %struct.LIST* %7249, i32 0, i32 0
  %7251 = load %union.rec*, %union.rec** %7250, align 8
  %7252 = load i32, i32* @zz_size, align 4
  %7253 = sext i32 %7252 to i64
  %7254 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7253
  store %union.rec* %7251, %union.rec** %7254, align 8
  br label %7255

; <label>:7255                                    ; preds = %7241, %7237
  br label %7256

; <label>:7256                                    ; preds = %7255, %7228
  %7257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7258 = bitcast %union.rec* %7257 to %struct.word_type*
  %7259 = getelementptr inbounds %struct.word_type, %struct.word_type* %7258, i32 0, i32 1
  %7260 = bitcast %union.FIRST_UNION* %7259 to %struct.anon*
  %7261 = getelementptr inbounds %struct.anon, %struct.anon* %7260, i32 0, i32 0
  store i8 -109, i8* %7261, align 1
  %7262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7263 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7264 = bitcast %union.rec* %7263 to %struct.word_type*
  %7265 = getelementptr inbounds %struct.word_type, %struct.word_type* %7264, i32 0, i32 0
  %7266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7265, i32 0, i64 1
  %7267 = getelementptr inbounds %struct.LIST, %struct.LIST* %7266, i32 0, i32 1
  store %union.rec* %7262, %union.rec** %7267, align 8
  %7268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7269 = bitcast %union.rec* %7268 to %struct.word_type*
  %7270 = getelementptr inbounds %struct.word_type, %struct.word_type* %7269, i32 0, i32 0
  %7271 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7270, i32 0, i64 1
  %7272 = getelementptr inbounds %struct.LIST, %struct.LIST* %7271, i32 0, i32 0
  store %union.rec* %7262, %union.rec** %7272, align 8
  %7273 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7274 = bitcast %union.rec* %7273 to %struct.word_type*
  %7275 = getelementptr inbounds %struct.word_type, %struct.word_type* %7274, i32 0, i32 0
  %7276 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7275, i32 0, i64 0
  %7277 = getelementptr inbounds %struct.LIST, %struct.LIST* %7276, i32 0, i32 1
  store %union.rec* %7262, %union.rec** %7277, align 8
  %7278 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7279 = bitcast %union.rec* %7278 to %struct.word_type*
  %7280 = getelementptr inbounds %struct.word_type, %struct.word_type* %7279, i32 0, i32 0
  %7281 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7280, i32 0, i64 0
  %7282 = getelementptr inbounds %struct.LIST, %struct.LIST* %7281, i32 0, i32 0
  store %union.rec* %7262, %union.rec** %7282, align 8
  store %union.rec* %7262, %union.rec** %eg8, align 8
  %7283 = load i16, i16* %tfnum, align 2
  %7284 = load %union.rec*, %union.rec** %eg8, align 8
  %7285 = bitcast %union.rec* %7284 to %struct.ext_gall_type*
  %7286 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %7285, i32 0, i32 2
  store i16 %7283, i16* %7286, align 2
  %7287 = load i64, i64* %tfpos, align 8
  %7288 = load %union.rec*, %union.rec** %eg8, align 8
  %7289 = bitcast %union.rec* %7288 to %struct.ext_gall_type*
  %7290 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %7289, i32 0, i32 4
  store i64 %7287, i64* %7290, align 8
  %7291 = load i32, i32* %tlnum, align 4
  %7292 = load %union.rec*, %union.rec** %eg8, align 8
  %7293 = bitcast %union.rec* %7292 to %struct.ext_gall_type*
  %7294 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %7293, i32 0, i32 3
  store i32 %7291, i32* %7294, align 4
  %7295 = load %union.rec*, %union.rec** %sym, align 8
  %7296 = load %union.rec*, %union.rec** %eg8, align 8
  %7297 = bitcast %union.rec* %7296 to %struct.ext_gall_type*
  %7298 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %7297, i32 0, i32 6
  store %union.rec* %7295, %union.rec** %7298, align 8
  %7299 = load i64, i64* %tcont, align 8
  %7300 = load %union.rec*, %union.rec** %eg8, align 8
  %7301 = bitcast %union.rec* %7300 to %struct.ext_gall_type*
  %7302 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %7301, i32 0, i32 5
  store i64 %7299, i64* %7302, align 8
  %7303 = load %union.rec*, %union.rec** %tag6, align 8
  %7304 = bitcast %union.rec* %7303 to %struct.word_type*
  %7305 = getelementptr inbounds %struct.word_type, %struct.word_type* %7304, i32 0, i32 4
  %7306 = getelementptr inbounds [4 x i8], [4 x i8]* %7305, i32 0, i32 0
  %7307 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7308 = call %union.rec* @MakeWord(i32 11, i8* %7306, %struct.FILE_POS* %7307)
  store %union.rec* %7308, %union.rec** %tag6, align 8
  %7309 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %7310 = zext i8 %7309 to i32
  store i32 %7310, i32* @zz_size, align 4
  %7311 = sext i32 %7310 to i64
  %7312 = icmp uge i64 %7311, 265
  br i1 %7312, label %7313, label %7316

; <label>:7313                                    ; preds = %7256
  %7314 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7315 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %7314)
  br label %7341

; <label>:7316                                    ; preds = %7256
  %7317 = load i32, i32* @zz_size, align 4
  %7318 = sext i32 %7317 to i64
  %7319 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7318
  %7320 = load %union.rec*, %union.rec** %7319, align 8
  %7321 = icmp eq %union.rec* %7320, null
  br i1 %7321, label %7322, label %7326

; <label>:7322                                    ; preds = %7316
  %7323 = load i32, i32* @zz_size, align 4
  %7324 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7325 = call %union.rec* @GetMemory(i32 %7323, %struct.FILE_POS* %7324)
  store %union.rec* %7325, %union.rec** @zz_hold, align 8
  br label %7340

; <label>:7326                                    ; preds = %7316
  %7327 = load i32, i32* @zz_size, align 4
  %7328 = sext i32 %7327 to i64
  %7329 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7328
  %7330 = load %union.rec*, %union.rec** %7329, align 8
  store %union.rec* %7330, %union.rec** @zz_hold, align 8
  store %union.rec* %7330, %union.rec** @zz_hold, align 8
  %7331 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7332 = bitcast %union.rec* %7331 to %struct.word_type*
  %7333 = getelementptr inbounds %struct.word_type, %struct.word_type* %7332, i32 0, i32 0
  %7334 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7333, i32 0, i64 0
  %7335 = getelementptr inbounds %struct.LIST, %struct.LIST* %7334, i32 0, i32 0
  %7336 = load %union.rec*, %union.rec** %7335, align 8
  %7337 = load i32, i32* @zz_size, align 4
  %7338 = sext i32 %7337 to i64
  %7339 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7338
  store %union.rec* %7336, %union.rec** %7339, align 8
  br label %7340

; <label>:7340                                    ; preds = %7326, %7322
  br label %7341

; <label>:7341                                    ; preds = %7340, %7313
  %7342 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7343 = bitcast %union.rec* %7342 to %struct.word_type*
  %7344 = getelementptr inbounds %struct.word_type, %struct.word_type* %7343, i32 0, i32 1
  %7345 = bitcast %union.FIRST_UNION* %7344 to %struct.anon*
  %7346 = getelementptr inbounds %struct.anon, %struct.anon* %7345, i32 0, i32 0
  store i8 0, i8* %7346, align 1
  %7347 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7348 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7349 = bitcast %union.rec* %7348 to %struct.word_type*
  %7350 = getelementptr inbounds %struct.word_type, %struct.word_type* %7349, i32 0, i32 0
  %7351 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7350, i32 0, i64 1
  %7352 = getelementptr inbounds %struct.LIST, %struct.LIST* %7351, i32 0, i32 1
  store %union.rec* %7347, %union.rec** %7352, align 8
  %7353 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7354 = bitcast %union.rec* %7353 to %struct.word_type*
  %7355 = getelementptr inbounds %struct.word_type, %struct.word_type* %7354, i32 0, i32 0
  %7356 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7355, i32 0, i64 1
  %7357 = getelementptr inbounds %struct.LIST, %struct.LIST* %7356, i32 0, i32 0
  store %union.rec* %7347, %union.rec** %7357, align 8
  %7358 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7359 = bitcast %union.rec* %7358 to %struct.word_type*
  %7360 = getelementptr inbounds %struct.word_type, %struct.word_type* %7359, i32 0, i32 0
  %7361 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7360, i32 0, i64 0
  %7362 = getelementptr inbounds %struct.LIST, %struct.LIST* %7361, i32 0, i32 1
  store %union.rec* %7347, %union.rec** %7362, align 8
  %7363 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7364 = bitcast %union.rec* %7363 to %struct.word_type*
  %7365 = getelementptr inbounds %struct.word_type, %struct.word_type* %7364, i32 0, i32 0
  %7366 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7365, i32 0, i64 0
  %7367 = getelementptr inbounds %struct.LIST, %struct.LIST* %7366, i32 0, i32 0
  store %union.rec* %7347, %union.rec** %7367, align 8
  store %union.rec* %7347, %union.rec** @xx_link, align 8
  %7368 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7368, %union.rec** @zz_res, align 8
  %7369 = load %union.rec*, %union.rec** %eg8, align 8
  store %union.rec* %7369, %union.rec** @zz_hold, align 8
  %7370 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7371 = icmp eq %union.rec* %7370, null
  br i1 %7371, label %7372, label %7374

; <label>:7372                                    ; preds = %7341
  %7373 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7422

; <label>:7374                                    ; preds = %7341
  %7375 = load %union.rec*, %union.rec** @zz_res, align 8
  %7376 = icmp eq %union.rec* %7375, null
  br i1 %7376, label %7377, label %7379

; <label>:7377                                    ; preds = %7374
  %7378 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %7420

; <label>:7379                                    ; preds = %7374
  %7380 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7381 = bitcast %union.rec* %7380 to %struct.word_type*
  %7382 = getelementptr inbounds %struct.word_type, %struct.word_type* %7381, i32 0, i32 0
  %7383 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7382, i32 0, i64 0
  %7384 = getelementptr inbounds %struct.LIST, %struct.LIST* %7383, i32 0, i32 0
  %7385 = load %union.rec*, %union.rec** %7384, align 8
  store %union.rec* %7385, %union.rec** @zz_tmp, align 8
  %7386 = load %union.rec*, %union.rec** @zz_res, align 8
  %7387 = bitcast %union.rec* %7386 to %struct.word_type*
  %7388 = getelementptr inbounds %struct.word_type, %struct.word_type* %7387, i32 0, i32 0
  %7389 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7388, i32 0, i64 0
  %7390 = getelementptr inbounds %struct.LIST, %struct.LIST* %7389, i32 0, i32 0
  %7391 = load %union.rec*, %union.rec** %7390, align 8
  %7392 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7393 = bitcast %union.rec* %7392 to %struct.word_type*
  %7394 = getelementptr inbounds %struct.word_type, %struct.word_type* %7393, i32 0, i32 0
  %7395 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7394, i32 0, i64 0
  %7396 = getelementptr inbounds %struct.LIST, %struct.LIST* %7395, i32 0, i32 0
  store %union.rec* %7391, %union.rec** %7396, align 8
  %7397 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7398 = load %union.rec*, %union.rec** @zz_res, align 8
  %7399 = bitcast %union.rec* %7398 to %struct.word_type*
  %7400 = getelementptr inbounds %struct.word_type, %struct.word_type* %7399, i32 0, i32 0
  %7401 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7400, i32 0, i64 0
  %7402 = getelementptr inbounds %struct.LIST, %struct.LIST* %7401, i32 0, i32 0
  %7403 = load %union.rec*, %union.rec** %7402, align 8
  %7404 = bitcast %union.rec* %7403 to %struct.word_type*
  %7405 = getelementptr inbounds %struct.word_type, %struct.word_type* %7404, i32 0, i32 0
  %7406 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7405, i32 0, i64 0
  %7407 = getelementptr inbounds %struct.LIST, %struct.LIST* %7406, i32 0, i32 1
  store %union.rec* %7397, %union.rec** %7407, align 8
  %7408 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7409 = load %union.rec*, %union.rec** @zz_res, align 8
  %7410 = bitcast %union.rec* %7409 to %struct.word_type*
  %7411 = getelementptr inbounds %struct.word_type, %struct.word_type* %7410, i32 0, i32 0
  %7412 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7411, i32 0, i64 0
  %7413 = getelementptr inbounds %struct.LIST, %struct.LIST* %7412, i32 0, i32 0
  store %union.rec* %7408, %union.rec** %7413, align 8
  %7414 = load %union.rec*, %union.rec** @zz_res, align 8
  %7415 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7416 = bitcast %union.rec* %7415 to %struct.word_type*
  %7417 = getelementptr inbounds %struct.word_type, %struct.word_type* %7416, i32 0, i32 0
  %7418 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7417, i32 0, i64 0
  %7419 = getelementptr inbounds %struct.LIST, %struct.LIST* %7418, i32 0, i32 1
  store %union.rec* %7414, %union.rec** %7419, align 8
  br label %7420

; <label>:7420                                    ; preds = %7379, %7377
  %7421 = phi %union.rec* [ %7378, %7377 ], [ %7414, %7379 ]
  br label %7422

; <label>:7422                                    ; preds = %7420, %7372
  %7423 = phi %union.rec* [ %7373, %7372 ], [ %7421, %7420 ]
  %7424 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7424, %union.rec** @zz_res, align 8
  %7425 = load %union.rec*, %union.rec** %tag6, align 8
  store %union.rec* %7425, %union.rec** @zz_hold, align 8
  %7426 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7427 = icmp eq %union.rec* %7426, null
  br i1 %7427, label %7428, label %7430

; <label>:7428                                    ; preds = %7422
  %7429 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7478

; <label>:7430                                    ; preds = %7422
  %7431 = load %union.rec*, %union.rec** @zz_res, align 8
  %7432 = icmp eq %union.rec* %7431, null
  br i1 %7432, label %7433, label %7435

; <label>:7433                                    ; preds = %7430
  %7434 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %7476

; <label>:7435                                    ; preds = %7430
  %7436 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7437 = bitcast %union.rec* %7436 to %struct.word_type*
  %7438 = getelementptr inbounds %struct.word_type, %struct.word_type* %7437, i32 0, i32 0
  %7439 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7438, i32 0, i64 1
  %7440 = getelementptr inbounds %struct.LIST, %struct.LIST* %7439, i32 0, i32 0
  %7441 = load %union.rec*, %union.rec** %7440, align 8
  store %union.rec* %7441, %union.rec** @zz_tmp, align 8
  %7442 = load %union.rec*, %union.rec** @zz_res, align 8
  %7443 = bitcast %union.rec* %7442 to %struct.word_type*
  %7444 = getelementptr inbounds %struct.word_type, %struct.word_type* %7443, i32 0, i32 0
  %7445 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7444, i32 0, i64 1
  %7446 = getelementptr inbounds %struct.LIST, %struct.LIST* %7445, i32 0, i32 0
  %7447 = load %union.rec*, %union.rec** %7446, align 8
  %7448 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7449 = bitcast %union.rec* %7448 to %struct.word_type*
  %7450 = getelementptr inbounds %struct.word_type, %struct.word_type* %7449, i32 0, i32 0
  %7451 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7450, i32 0, i64 1
  %7452 = getelementptr inbounds %struct.LIST, %struct.LIST* %7451, i32 0, i32 0
  store %union.rec* %7447, %union.rec** %7452, align 8
  %7453 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7454 = load %union.rec*, %union.rec** @zz_res, align 8
  %7455 = bitcast %union.rec* %7454 to %struct.word_type*
  %7456 = getelementptr inbounds %struct.word_type, %struct.word_type* %7455, i32 0, i32 0
  %7457 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7456, i32 0, i64 1
  %7458 = getelementptr inbounds %struct.LIST, %struct.LIST* %7457, i32 0, i32 0
  %7459 = load %union.rec*, %union.rec** %7458, align 8
  %7460 = bitcast %union.rec* %7459 to %struct.word_type*
  %7461 = getelementptr inbounds %struct.word_type, %struct.word_type* %7460, i32 0, i32 0
  %7462 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7461, i32 0, i64 1
  %7463 = getelementptr inbounds %struct.LIST, %struct.LIST* %7462, i32 0, i32 1
  store %union.rec* %7453, %union.rec** %7463, align 8
  %7464 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7465 = load %union.rec*, %union.rec** @zz_res, align 8
  %7466 = bitcast %union.rec* %7465 to %struct.word_type*
  %7467 = getelementptr inbounds %struct.word_type, %struct.word_type* %7466, i32 0, i32 0
  %7468 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7467, i32 0, i64 1
  %7469 = getelementptr inbounds %struct.LIST, %struct.LIST* %7468, i32 0, i32 0
  store %union.rec* %7464, %union.rec** %7469, align 8
  %7470 = load %union.rec*, %union.rec** @zz_res, align 8
  %7471 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7472 = bitcast %union.rec* %7471 to %struct.word_type*
  %7473 = getelementptr inbounds %struct.word_type, %struct.word_type* %7472, i32 0, i32 0
  %7474 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7473, i32 0, i64 1
  %7475 = getelementptr inbounds %struct.LIST, %struct.LIST* %7474, i32 0, i32 1
  store %union.rec* %7470, %union.rec** %7475, align 8
  br label %7476

; <label>:7476                                    ; preds = %7435, %7433
  %7477 = phi %union.rec* [ %7434, %7433 ], [ %7470, %7435 ]
  br label %7478

; <label>:7478                                    ; preds = %7476, %7428
  %7479 = phi %union.rec* [ %7429, %7428 ], [ %7477, %7476 ]
  %7480 = getelementptr inbounds [512 x i8], [512 x i8]* %newseq10, i32 0, i32 0
  %7481 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7482 = call %union.rec* @MakeWord(i32 11, i8* %7480, %struct.FILE_POS* %7481)
  store %union.rec* %7482, %union.rec** %seq7, align 8
  %7483 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %7484 = zext i8 %7483 to i32
  store i32 %7484, i32* @zz_size, align 4
  %7485 = sext i32 %7484 to i64
  %7486 = icmp uge i64 %7485, 265
  br i1 %7486, label %7487, label %7490

; <label>:7487                                    ; preds = %7478
  %7488 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7489 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %7488)
  br label %7515

; <label>:7490                                    ; preds = %7478
  %7491 = load i32, i32* @zz_size, align 4
  %7492 = sext i32 %7491 to i64
  %7493 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7492
  %7494 = load %union.rec*, %union.rec** %7493, align 8
  %7495 = icmp eq %union.rec* %7494, null
  br i1 %7495, label %7496, label %7500

; <label>:7496                                    ; preds = %7490
  %7497 = load i32, i32* @zz_size, align 4
  %7498 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7499 = call %union.rec* @GetMemory(i32 %7497, %struct.FILE_POS* %7498)
  store %union.rec* %7499, %union.rec** @zz_hold, align 8
  br label %7514

; <label>:7500                                    ; preds = %7490
  %7501 = load i32, i32* @zz_size, align 4
  %7502 = sext i32 %7501 to i64
  %7503 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7502
  %7504 = load %union.rec*, %union.rec** %7503, align 8
  store %union.rec* %7504, %union.rec** @zz_hold, align 8
  store %union.rec* %7504, %union.rec** @zz_hold, align 8
  %7505 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7506 = bitcast %union.rec* %7505 to %struct.word_type*
  %7507 = getelementptr inbounds %struct.word_type, %struct.word_type* %7506, i32 0, i32 0
  %7508 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7507, i32 0, i64 0
  %7509 = getelementptr inbounds %struct.LIST, %struct.LIST* %7508, i32 0, i32 0
  %7510 = load %union.rec*, %union.rec** %7509, align 8
  %7511 = load i32, i32* @zz_size, align 4
  %7512 = sext i32 %7511 to i64
  %7513 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7512
  store %union.rec* %7510, %union.rec** %7513, align 8
  br label %7514

; <label>:7514                                    ; preds = %7500, %7496
  br label %7515

; <label>:7515                                    ; preds = %7514, %7487
  %7516 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7517 = bitcast %union.rec* %7516 to %struct.word_type*
  %7518 = getelementptr inbounds %struct.word_type, %struct.word_type* %7517, i32 0, i32 1
  %7519 = bitcast %union.FIRST_UNION* %7518 to %struct.anon*
  %7520 = getelementptr inbounds %struct.anon, %struct.anon* %7519, i32 0, i32 0
  store i8 0, i8* %7520, align 1
  %7521 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7522 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7523 = bitcast %union.rec* %7522 to %struct.word_type*
  %7524 = getelementptr inbounds %struct.word_type, %struct.word_type* %7523, i32 0, i32 0
  %7525 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7524, i32 0, i64 1
  %7526 = getelementptr inbounds %struct.LIST, %struct.LIST* %7525, i32 0, i32 1
  store %union.rec* %7521, %union.rec** %7526, align 8
  %7527 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7528 = bitcast %union.rec* %7527 to %struct.word_type*
  %7529 = getelementptr inbounds %struct.word_type, %struct.word_type* %7528, i32 0, i32 0
  %7530 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7529, i32 0, i64 1
  %7531 = getelementptr inbounds %struct.LIST, %struct.LIST* %7530, i32 0, i32 0
  store %union.rec* %7521, %union.rec** %7531, align 8
  %7532 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7533 = bitcast %union.rec* %7532 to %struct.word_type*
  %7534 = getelementptr inbounds %struct.word_type, %struct.word_type* %7533, i32 0, i32 0
  %7535 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7534, i32 0, i64 0
  %7536 = getelementptr inbounds %struct.LIST, %struct.LIST* %7535, i32 0, i32 1
  store %union.rec* %7521, %union.rec** %7536, align 8
  %7537 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7538 = bitcast %union.rec* %7537 to %struct.word_type*
  %7539 = getelementptr inbounds %struct.word_type, %struct.word_type* %7538, i32 0, i32 0
  %7540 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7539, i32 0, i64 0
  %7541 = getelementptr inbounds %struct.LIST, %struct.LIST* %7540, i32 0, i32 0
  store %union.rec* %7521, %union.rec** %7541, align 8
  store %union.rec* %7521, %union.rec** @xx_link, align 8
  %7542 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7542, %union.rec** @zz_res, align 8
  %7543 = load %union.rec*, %union.rec** %eg8, align 8
  store %union.rec* %7543, %union.rec** @zz_hold, align 8
  %7544 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7545 = icmp eq %union.rec* %7544, null
  br i1 %7545, label %7546, label %7548

; <label>:7546                                    ; preds = %7515
  %7547 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7596

; <label>:7548                                    ; preds = %7515
  %7549 = load %union.rec*, %union.rec** @zz_res, align 8
  %7550 = icmp eq %union.rec* %7549, null
  br i1 %7550, label %7551, label %7553

; <label>:7551                                    ; preds = %7548
  %7552 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %7594

; <label>:7553                                    ; preds = %7548
  %7554 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7555 = bitcast %union.rec* %7554 to %struct.word_type*
  %7556 = getelementptr inbounds %struct.word_type, %struct.word_type* %7555, i32 0, i32 0
  %7557 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7556, i32 0, i64 0
  %7558 = getelementptr inbounds %struct.LIST, %struct.LIST* %7557, i32 0, i32 0
  %7559 = load %union.rec*, %union.rec** %7558, align 8
  store %union.rec* %7559, %union.rec** @zz_tmp, align 8
  %7560 = load %union.rec*, %union.rec** @zz_res, align 8
  %7561 = bitcast %union.rec* %7560 to %struct.word_type*
  %7562 = getelementptr inbounds %struct.word_type, %struct.word_type* %7561, i32 0, i32 0
  %7563 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7562, i32 0, i64 0
  %7564 = getelementptr inbounds %struct.LIST, %struct.LIST* %7563, i32 0, i32 0
  %7565 = load %union.rec*, %union.rec** %7564, align 8
  %7566 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7567 = bitcast %union.rec* %7566 to %struct.word_type*
  %7568 = getelementptr inbounds %struct.word_type, %struct.word_type* %7567, i32 0, i32 0
  %7569 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7568, i32 0, i64 0
  %7570 = getelementptr inbounds %struct.LIST, %struct.LIST* %7569, i32 0, i32 0
  store %union.rec* %7565, %union.rec** %7570, align 8
  %7571 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7572 = load %union.rec*, %union.rec** @zz_res, align 8
  %7573 = bitcast %union.rec* %7572 to %struct.word_type*
  %7574 = getelementptr inbounds %struct.word_type, %struct.word_type* %7573, i32 0, i32 0
  %7575 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7574, i32 0, i64 0
  %7576 = getelementptr inbounds %struct.LIST, %struct.LIST* %7575, i32 0, i32 0
  %7577 = load %union.rec*, %union.rec** %7576, align 8
  %7578 = bitcast %union.rec* %7577 to %struct.word_type*
  %7579 = getelementptr inbounds %struct.word_type, %struct.word_type* %7578, i32 0, i32 0
  %7580 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7579, i32 0, i64 0
  %7581 = getelementptr inbounds %struct.LIST, %struct.LIST* %7580, i32 0, i32 1
  store %union.rec* %7571, %union.rec** %7581, align 8
  %7582 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7583 = load %union.rec*, %union.rec** @zz_res, align 8
  %7584 = bitcast %union.rec* %7583 to %struct.word_type*
  %7585 = getelementptr inbounds %struct.word_type, %struct.word_type* %7584, i32 0, i32 0
  %7586 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7585, i32 0, i64 0
  %7587 = getelementptr inbounds %struct.LIST, %struct.LIST* %7586, i32 0, i32 0
  store %union.rec* %7582, %union.rec** %7587, align 8
  %7588 = load %union.rec*, %union.rec** @zz_res, align 8
  %7589 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7590 = bitcast %union.rec* %7589 to %struct.word_type*
  %7591 = getelementptr inbounds %struct.word_type, %struct.word_type* %7590, i32 0, i32 0
  %7592 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7591, i32 0, i64 0
  %7593 = getelementptr inbounds %struct.LIST, %struct.LIST* %7592, i32 0, i32 1
  store %union.rec* %7588, %union.rec** %7593, align 8
  br label %7594

; <label>:7594                                    ; preds = %7553, %7551
  %7595 = phi %union.rec* [ %7552, %7551 ], [ %7588, %7553 ]
  br label %7596

; <label>:7596                                    ; preds = %7594, %7546
  %7597 = phi %union.rec* [ %7547, %7546 ], [ %7595, %7594 ]
  %7598 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7598, %union.rec** @zz_res, align 8
  %7599 = load %union.rec*, %union.rec** %seq7, align 8
  store %union.rec* %7599, %union.rec** @zz_hold, align 8
  %7600 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7601 = icmp eq %union.rec* %7600, null
  br i1 %7601, label %7602, label %7604

; <label>:7602                                    ; preds = %7596
  %7603 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7652

; <label>:7604                                    ; preds = %7596
  %7605 = load %union.rec*, %union.rec** @zz_res, align 8
  %7606 = icmp eq %union.rec* %7605, null
  br i1 %7606, label %7607, label %7609

; <label>:7607                                    ; preds = %7604
  %7608 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %7650

; <label>:7609                                    ; preds = %7604
  %7610 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7611 = bitcast %union.rec* %7610 to %struct.word_type*
  %7612 = getelementptr inbounds %struct.word_type, %struct.word_type* %7611, i32 0, i32 0
  %7613 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7612, i32 0, i64 1
  %7614 = getelementptr inbounds %struct.LIST, %struct.LIST* %7613, i32 0, i32 0
  %7615 = load %union.rec*, %union.rec** %7614, align 8
  store %union.rec* %7615, %union.rec** @zz_tmp, align 8
  %7616 = load %union.rec*, %union.rec** @zz_res, align 8
  %7617 = bitcast %union.rec* %7616 to %struct.word_type*
  %7618 = getelementptr inbounds %struct.word_type, %struct.word_type* %7617, i32 0, i32 0
  %7619 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7618, i32 0, i64 1
  %7620 = getelementptr inbounds %struct.LIST, %struct.LIST* %7619, i32 0, i32 0
  %7621 = load %union.rec*, %union.rec** %7620, align 8
  %7622 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7623 = bitcast %union.rec* %7622 to %struct.word_type*
  %7624 = getelementptr inbounds %struct.word_type, %struct.word_type* %7623, i32 0, i32 0
  %7625 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7624, i32 0, i64 1
  %7626 = getelementptr inbounds %struct.LIST, %struct.LIST* %7625, i32 0, i32 0
  store %union.rec* %7621, %union.rec** %7626, align 8
  %7627 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7628 = load %union.rec*, %union.rec** @zz_res, align 8
  %7629 = bitcast %union.rec* %7628 to %struct.word_type*
  %7630 = getelementptr inbounds %struct.word_type, %struct.word_type* %7629, i32 0, i32 0
  %7631 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7630, i32 0, i64 1
  %7632 = getelementptr inbounds %struct.LIST, %struct.LIST* %7631, i32 0, i32 0
  %7633 = load %union.rec*, %union.rec** %7632, align 8
  %7634 = bitcast %union.rec* %7633 to %struct.word_type*
  %7635 = getelementptr inbounds %struct.word_type, %struct.word_type* %7634, i32 0, i32 0
  %7636 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7635, i32 0, i64 1
  %7637 = getelementptr inbounds %struct.LIST, %struct.LIST* %7636, i32 0, i32 1
  store %union.rec* %7627, %union.rec** %7637, align 8
  %7638 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7639 = load %union.rec*, %union.rec** @zz_res, align 8
  %7640 = bitcast %union.rec* %7639 to %struct.word_type*
  %7641 = getelementptr inbounds %struct.word_type, %struct.word_type* %7640, i32 0, i32 0
  %7642 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7641, i32 0, i64 1
  %7643 = getelementptr inbounds %struct.LIST, %struct.LIST* %7642, i32 0, i32 0
  store %union.rec* %7638, %union.rec** %7643, align 8
  %7644 = load %union.rec*, %union.rec** @zz_res, align 8
  %7645 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7646 = bitcast %union.rec* %7645 to %struct.word_type*
  %7647 = getelementptr inbounds %struct.word_type, %struct.word_type* %7646, i32 0, i32 0
  %7648 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7647, i32 0, i64 1
  %7649 = getelementptr inbounds %struct.LIST, %struct.LIST* %7648, i32 0, i32 1
  store %union.rec* %7644, %union.rec** %7649, align 8
  br label %7650

; <label>:7650                                    ; preds = %7609, %7607
  %7651 = phi %union.rec* [ %7608, %7607 ], [ %7644, %7609 ]
  br label %7652

; <label>:7652                                    ; preds = %7650, %7602
  %7653 = phi %union.rec* [ %7603, %7602 ], [ %7651, %7650 ]
  %7654 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %7655 = zext i8 %7654 to i32
  store i32 %7655, i32* @zz_size, align 4
  %7656 = sext i32 %7655 to i64
  %7657 = icmp uge i64 %7656, 265
  br i1 %7657, label %7658, label %7661

; <label>:7658                                    ; preds = %7652
  %7659 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7660 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %7659)
  br label %7686

; <label>:7661                                    ; preds = %7652
  %7662 = load i32, i32* @zz_size, align 4
  %7663 = sext i32 %7662 to i64
  %7664 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7663
  %7665 = load %union.rec*, %union.rec** %7664, align 8
  %7666 = icmp eq %union.rec* %7665, null
  br i1 %7666, label %7667, label %7671

; <label>:7667                                    ; preds = %7661
  %7668 = load i32, i32* @zz_size, align 4
  %7669 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7670 = call %union.rec* @GetMemory(i32 %7668, %struct.FILE_POS* %7669)
  store %union.rec* %7670, %union.rec** @zz_hold, align 8
  br label %7685

; <label>:7671                                    ; preds = %7661
  %7672 = load i32, i32* @zz_size, align 4
  %7673 = sext i32 %7672 to i64
  %7674 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7673
  %7675 = load %union.rec*, %union.rec** %7674, align 8
  store %union.rec* %7675, %union.rec** @zz_hold, align 8
  store %union.rec* %7675, %union.rec** @zz_hold, align 8
  %7676 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7677 = bitcast %union.rec* %7676 to %struct.word_type*
  %7678 = getelementptr inbounds %struct.word_type, %struct.word_type* %7677, i32 0, i32 0
  %7679 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7678, i32 0, i64 0
  %7680 = getelementptr inbounds %struct.LIST, %struct.LIST* %7679, i32 0, i32 0
  %7681 = load %union.rec*, %union.rec** %7680, align 8
  %7682 = load i32, i32* @zz_size, align 4
  %7683 = sext i32 %7682 to i64
  %7684 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7683
  store %union.rec* %7681, %union.rec** %7684, align 8
  br label %7685

; <label>:7685                                    ; preds = %7671, %7667
  br label %7686

; <label>:7686                                    ; preds = %7685, %7658
  %7687 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7688 = bitcast %union.rec* %7687 to %struct.word_type*
  %7689 = getelementptr inbounds %struct.word_type, %struct.word_type* %7688, i32 0, i32 1
  %7690 = bitcast %union.FIRST_UNION* %7689 to %struct.anon*
  %7691 = getelementptr inbounds %struct.anon, %struct.anon* %7690, i32 0, i32 0
  store i8 0, i8* %7691, align 1
  %7692 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7693 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7694 = bitcast %union.rec* %7693 to %struct.word_type*
  %7695 = getelementptr inbounds %struct.word_type, %struct.word_type* %7694, i32 0, i32 0
  %7696 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7695, i32 0, i64 1
  %7697 = getelementptr inbounds %struct.LIST, %struct.LIST* %7696, i32 0, i32 1
  store %union.rec* %7692, %union.rec** %7697, align 8
  %7698 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7699 = bitcast %union.rec* %7698 to %struct.word_type*
  %7700 = getelementptr inbounds %struct.word_type, %struct.word_type* %7699, i32 0, i32 0
  %7701 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7700, i32 0, i64 1
  %7702 = getelementptr inbounds %struct.LIST, %struct.LIST* %7701, i32 0, i32 0
  store %union.rec* %7692, %union.rec** %7702, align 8
  %7703 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7704 = bitcast %union.rec* %7703 to %struct.word_type*
  %7705 = getelementptr inbounds %struct.word_type, %struct.word_type* %7704, i32 0, i32 0
  %7706 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7705, i32 0, i64 0
  %7707 = getelementptr inbounds %struct.LIST, %struct.LIST* %7706, i32 0, i32 1
  store %union.rec* %7692, %union.rec** %7707, align 8
  %7708 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7709 = bitcast %union.rec* %7708 to %struct.word_type*
  %7710 = getelementptr inbounds %struct.word_type, %struct.word_type* %7709, i32 0, i32 0
  %7711 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7710, i32 0, i64 0
  %7712 = getelementptr inbounds %struct.LIST, %struct.LIST* %7711, i32 0, i32 0
  store %union.rec* %7692, %union.rec** %7712, align 8
  store %union.rec* %7692, %union.rec** @xx_link, align 8
  %7713 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7713, %union.rec** @zz_res, align 8
  %7714 = load %union.rec*, %union.rec** %1, align 8
  %7715 = bitcast %union.rec* %7714 to %struct.head_type*
  %7716 = getelementptr inbounds %struct.head_type, %struct.head_type* %7715, i32 0, i32 7
  %7717 = load %union.rec*, %union.rec** %7716, align 8
  store %union.rec* %7717, %union.rec** @zz_hold, align 8
  %7718 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7719 = icmp eq %union.rec* %7718, null
  br i1 %7719, label %7720, label %7722

; <label>:7720                                    ; preds = %7686
  %7721 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7770

; <label>:7722                                    ; preds = %7686
  %7723 = load %union.rec*, %union.rec** @zz_res, align 8
  %7724 = icmp eq %union.rec* %7723, null
  br i1 %7724, label %7725, label %7727

; <label>:7725                                    ; preds = %7722
  %7726 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %7768

; <label>:7727                                    ; preds = %7722
  %7728 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7729 = bitcast %union.rec* %7728 to %struct.word_type*
  %7730 = getelementptr inbounds %struct.word_type, %struct.word_type* %7729, i32 0, i32 0
  %7731 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7730, i32 0, i64 0
  %7732 = getelementptr inbounds %struct.LIST, %struct.LIST* %7731, i32 0, i32 0
  %7733 = load %union.rec*, %union.rec** %7732, align 8
  store %union.rec* %7733, %union.rec** @zz_tmp, align 8
  %7734 = load %union.rec*, %union.rec** @zz_res, align 8
  %7735 = bitcast %union.rec* %7734 to %struct.word_type*
  %7736 = getelementptr inbounds %struct.word_type, %struct.word_type* %7735, i32 0, i32 0
  %7737 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7736, i32 0, i64 0
  %7738 = getelementptr inbounds %struct.LIST, %struct.LIST* %7737, i32 0, i32 0
  %7739 = load %union.rec*, %union.rec** %7738, align 8
  %7740 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7741 = bitcast %union.rec* %7740 to %struct.word_type*
  %7742 = getelementptr inbounds %struct.word_type, %struct.word_type* %7741, i32 0, i32 0
  %7743 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7742, i32 0, i64 0
  %7744 = getelementptr inbounds %struct.LIST, %struct.LIST* %7743, i32 0, i32 0
  store %union.rec* %7739, %union.rec** %7744, align 8
  %7745 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7746 = load %union.rec*, %union.rec** @zz_res, align 8
  %7747 = bitcast %union.rec* %7746 to %struct.word_type*
  %7748 = getelementptr inbounds %struct.word_type, %struct.word_type* %7747, i32 0, i32 0
  %7749 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7748, i32 0, i64 0
  %7750 = getelementptr inbounds %struct.LIST, %struct.LIST* %7749, i32 0, i32 0
  %7751 = load %union.rec*, %union.rec** %7750, align 8
  %7752 = bitcast %union.rec* %7751 to %struct.word_type*
  %7753 = getelementptr inbounds %struct.word_type, %struct.word_type* %7752, i32 0, i32 0
  %7754 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7753, i32 0, i64 0
  %7755 = getelementptr inbounds %struct.LIST, %struct.LIST* %7754, i32 0, i32 1
  store %union.rec* %7745, %union.rec** %7755, align 8
  %7756 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7757 = load %union.rec*, %union.rec** @zz_res, align 8
  %7758 = bitcast %union.rec* %7757 to %struct.word_type*
  %7759 = getelementptr inbounds %struct.word_type, %struct.word_type* %7758, i32 0, i32 0
  %7760 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7759, i32 0, i64 0
  %7761 = getelementptr inbounds %struct.LIST, %struct.LIST* %7760, i32 0, i32 0
  store %union.rec* %7756, %union.rec** %7761, align 8
  %7762 = load %union.rec*, %union.rec** @zz_res, align 8
  %7763 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7764 = bitcast %union.rec* %7763 to %struct.word_type*
  %7765 = getelementptr inbounds %struct.word_type, %struct.word_type* %7764, i32 0, i32 0
  %7766 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7765, i32 0, i64 0
  %7767 = getelementptr inbounds %struct.LIST, %struct.LIST* %7766, i32 0, i32 1
  store %union.rec* %7762, %union.rec** %7767, align 8
  br label %7768

; <label>:7768                                    ; preds = %7727, %7725
  %7769 = phi %union.rec* [ %7726, %7725 ], [ %7762, %7727 ]
  br label %7770

; <label>:7770                                    ; preds = %7768, %7720
  %7771 = phi %union.rec* [ %7721, %7720 ], [ %7769, %7768 ]
  %7772 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7772, %union.rec** @zz_res, align 8
  %7773 = load %union.rec*, %union.rec** %eg8, align 8
  store %union.rec* %7773, %union.rec** @zz_hold, align 8
  %7774 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7775 = icmp eq %union.rec* %7774, null
  br i1 %7775, label %7776, label %7778

; <label>:7776                                    ; preds = %7770
  %7777 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7826

; <label>:7778                                    ; preds = %7770
  %7779 = load %union.rec*, %union.rec** @zz_res, align 8
  %7780 = icmp eq %union.rec* %7779, null
  br i1 %7780, label %7781, label %7783

; <label>:7781                                    ; preds = %7778
  %7782 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %7824

; <label>:7783                                    ; preds = %7778
  %7784 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7785 = bitcast %union.rec* %7784 to %struct.word_type*
  %7786 = getelementptr inbounds %struct.word_type, %struct.word_type* %7785, i32 0, i32 0
  %7787 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7786, i32 0, i64 1
  %7788 = getelementptr inbounds %struct.LIST, %struct.LIST* %7787, i32 0, i32 0
  %7789 = load %union.rec*, %union.rec** %7788, align 8
  store %union.rec* %7789, %union.rec** @zz_tmp, align 8
  %7790 = load %union.rec*, %union.rec** @zz_res, align 8
  %7791 = bitcast %union.rec* %7790 to %struct.word_type*
  %7792 = getelementptr inbounds %struct.word_type, %struct.word_type* %7791, i32 0, i32 0
  %7793 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7792, i32 0, i64 1
  %7794 = getelementptr inbounds %struct.LIST, %struct.LIST* %7793, i32 0, i32 0
  %7795 = load %union.rec*, %union.rec** %7794, align 8
  %7796 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7797 = bitcast %union.rec* %7796 to %struct.word_type*
  %7798 = getelementptr inbounds %struct.word_type, %struct.word_type* %7797, i32 0, i32 0
  %7799 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7798, i32 0, i64 1
  %7800 = getelementptr inbounds %struct.LIST, %struct.LIST* %7799, i32 0, i32 0
  store %union.rec* %7795, %union.rec** %7800, align 8
  %7801 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7802 = load %union.rec*, %union.rec** @zz_res, align 8
  %7803 = bitcast %union.rec* %7802 to %struct.word_type*
  %7804 = getelementptr inbounds %struct.word_type, %struct.word_type* %7803, i32 0, i32 0
  %7805 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7804, i32 0, i64 1
  %7806 = getelementptr inbounds %struct.LIST, %struct.LIST* %7805, i32 0, i32 0
  %7807 = load %union.rec*, %union.rec** %7806, align 8
  %7808 = bitcast %union.rec* %7807 to %struct.word_type*
  %7809 = getelementptr inbounds %struct.word_type, %struct.word_type* %7808, i32 0, i32 0
  %7810 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7809, i32 0, i64 1
  %7811 = getelementptr inbounds %struct.LIST, %struct.LIST* %7810, i32 0, i32 1
  store %union.rec* %7801, %union.rec** %7811, align 8
  %7812 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7813 = load %union.rec*, %union.rec** @zz_res, align 8
  %7814 = bitcast %union.rec* %7813 to %struct.word_type*
  %7815 = getelementptr inbounds %struct.word_type, %struct.word_type* %7814, i32 0, i32 0
  %7816 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7815, i32 0, i64 1
  %7817 = getelementptr inbounds %struct.LIST, %struct.LIST* %7816, i32 0, i32 0
  store %union.rec* %7812, %union.rec** %7817, align 8
  %7818 = load %union.rec*, %union.rec** @zz_res, align 8
  %7819 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7820 = bitcast %union.rec* %7819 to %struct.word_type*
  %7821 = getelementptr inbounds %struct.word_type, %struct.word_type* %7820, i32 0, i32 0
  %7822 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7821, i32 0, i64 1
  %7823 = getelementptr inbounds %struct.LIST, %struct.LIST* %7822, i32 0, i32 1
  store %union.rec* %7818, %union.rec** %7823, align 8
  br label %7824

; <label>:7824                                    ; preds = %7783, %7781
  %7825 = phi %union.rec* [ %7782, %7781 ], [ %7818, %7783 ]
  br label %7826

; <label>:7826                                    ; preds = %7824, %7776
  %7827 = phi %union.rec* [ %7777, %7776 ], [ %7825, %7824 ]
  br label %7828

; <label>:7828                                    ; preds = %7826, %7143
  br label %7829

; <label>:7829                                    ; preds = %7828
  %7830 = load %union.rec*, %union.rec** %y, align 8
  %7831 = bitcast %union.rec* %7830 to %struct.closure_type*
  %7832 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7831, i32 0, i32 5
  %7833 = load %union.rec*, %union.rec** %7832, align 8
  %7834 = bitcast %union.rec* %7833 to %struct.closure_type*
  %7835 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7834, i32 0, i32 5
  %7836 = load %union.rec*, %union.rec** %7835, align 8
  %7837 = call %union.rec* @NextExternTarget(%union.rec* %7836, %union.rec** %cnt)
  store %union.rec* %7837, %union.rec** %sym, align 8
  br label %6842

; <label>:7838                                    ; preds = %6842
  %7839 = load %union.rec*, %union.rec** %y, align 8
  %7840 = bitcast %union.rec* %7839 to %struct.word_type*
  %7841 = getelementptr inbounds %struct.word_type, %struct.word_type* %7840, i32 0, i32 2
  %7842 = bitcast %union.SECOND_UNION* %7841 to %struct.anon.2*
  %7843 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7842, i32 0, i32 2
  %7844 = load i16, i16* %7843, align 2
  %7845 = and i16 %7844, -65
  store i16 %7845, i16* %7843, align 2
  %7846 = load %union.rec*, %union.rec** %1, align 8
  %7847 = bitcast %union.rec* %7846 to %struct.head_type*
  %7848 = getelementptr inbounds %struct.head_type, %struct.head_type* %7847, i32 0, i32 7
  %7849 = load %union.rec*, %union.rec** %7848, align 8
  %7850 = icmp ne %union.rec* %7849, null
  br i1 %7850, label %7851, label %7852

; <label>:7851                                    ; preds = %7838
  br label %11

; <label>:7852                                    ; preds = %7838
  br label %7853

; <label>:7853                                    ; preds = %7852, %6830, %6819, %6810
  br label %7854

; <label>:7854                                    ; preds = %7853
  %7855 = load %union.rec*, %union.rec** %y, align 8
  %7856 = bitcast %union.rec* %7855 to %struct.word_type*
  %7857 = getelementptr inbounds %struct.word_type, %struct.word_type* %7856, i32 0, i32 1
  %7858 = bitcast %union.FIRST_UNION* %7857 to %struct.anon*
  %7859 = getelementptr inbounds %struct.anon, %struct.anon* %7858, i32 0, i32 0
  %7860 = load i8, i8* %7859, align 1
  %7861 = zext i8 %7860 to i32
  %7862 = icmp eq i32 %7861, 121
  br i1 %7862, label %7863, label %8280

; <label>:7863                                    ; preds = %7854
  %7864 = load %union.rec*, %union.rec** %y, align 8
  %7865 = bitcast %union.rec* %7864 to %struct.word_type*
  %7866 = getelementptr inbounds %struct.word_type, %struct.word_type* %7865, i32 0, i32 2
  %7867 = bitcast %union.SECOND_UNION* %7866 to %struct.anon.2*
  %7868 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7867, i32 0, i32 2
  %7869 = load i16, i16* %7868, align 2
  %7870 = and i16 %7869, 1
  %7871 = zext i16 %7870 to i32
  %7872 = icmp ne i32 %7871, 0
  br i1 %7872, label %7873, label %8280

; <label>:7873                                    ; preds = %7863
  %7874 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %7874, %union.rec** @xx_hold, align 8
  br label %7875

; <label>:7875                                    ; preds = %8035, %7873
  %7876 = load %union.rec*, %union.rec** @xx_hold, align 8
  %7877 = bitcast %union.rec* %7876 to %struct.word_type*
  %7878 = getelementptr inbounds %struct.word_type, %struct.word_type* %7877, i32 0, i32 0
  %7879 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7878, i32 0, i64 1
  %7880 = getelementptr inbounds %struct.LIST, %struct.LIST* %7879, i32 0, i32 1
  %7881 = load %union.rec*, %union.rec** %7880, align 8
  %7882 = load %union.rec*, %union.rec** @xx_hold, align 8
  %7883 = icmp ne %union.rec* %7881, %7882
  br i1 %7883, label %7884, label %8050

; <label>:7884                                    ; preds = %7875
  %7885 = load %union.rec*, %union.rec** @xx_hold, align 8
  %7886 = bitcast %union.rec* %7885 to %struct.word_type*
  %7887 = getelementptr inbounds %struct.word_type, %struct.word_type* %7886, i32 0, i32 0
  %7888 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7887, i32 0, i64 1
  %7889 = getelementptr inbounds %struct.LIST, %struct.LIST* %7888, i32 0, i32 1
  %7890 = load %union.rec*, %union.rec** %7889, align 8
  store %union.rec* %7890, %union.rec** @xx_link, align 8
  %7891 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7891, %union.rec** @zz_hold, align 8
  %7892 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7893 = bitcast %union.rec* %7892 to %struct.word_type*
  %7894 = getelementptr inbounds %struct.word_type, %struct.word_type* %7893, i32 0, i32 0
  %7895 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7894, i32 0, i64 1
  %7896 = getelementptr inbounds %struct.LIST, %struct.LIST* %7895, i32 0, i32 1
  %7897 = load %union.rec*, %union.rec** %7896, align 8
  %7898 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7899 = icmp eq %union.rec* %7897, %7898
  br i1 %7899, label %7900, label %7901

; <label>:7900                                    ; preds = %7884
  br label %7942

; <label>:7901                                    ; preds = %7884
  %7902 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7903 = bitcast %union.rec* %7902 to %struct.word_type*
  %7904 = getelementptr inbounds %struct.word_type, %struct.word_type* %7903, i32 0, i32 0
  %7905 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7904, i32 0, i64 1
  %7906 = getelementptr inbounds %struct.LIST, %struct.LIST* %7905, i32 0, i32 1
  %7907 = load %union.rec*, %union.rec** %7906, align 8
  store %union.rec* %7907, %union.rec** @zz_res, align 8
  %7908 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7909 = bitcast %union.rec* %7908 to %struct.word_type*
  %7910 = getelementptr inbounds %struct.word_type, %struct.word_type* %7909, i32 0, i32 0
  %7911 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7910, i32 0, i64 1
  %7912 = getelementptr inbounds %struct.LIST, %struct.LIST* %7911, i32 0, i32 0
  %7913 = load %union.rec*, %union.rec** %7912, align 8
  %7914 = load %union.rec*, %union.rec** @zz_res, align 8
  %7915 = bitcast %union.rec* %7914 to %struct.word_type*
  %7916 = getelementptr inbounds %struct.word_type, %struct.word_type* %7915, i32 0, i32 0
  %7917 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7916, i32 0, i64 1
  %7918 = getelementptr inbounds %struct.LIST, %struct.LIST* %7917, i32 0, i32 0
  store %union.rec* %7913, %union.rec** %7918, align 8
  %7919 = load %union.rec*, %union.rec** @zz_res, align 8
  %7920 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7921 = bitcast %union.rec* %7920 to %struct.word_type*
  %7922 = getelementptr inbounds %struct.word_type, %struct.word_type* %7921, i32 0, i32 0
  %7923 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7922, i32 0, i64 1
  %7924 = getelementptr inbounds %struct.LIST, %struct.LIST* %7923, i32 0, i32 0
  %7925 = load %union.rec*, %union.rec** %7924, align 8
  %7926 = bitcast %union.rec* %7925 to %struct.word_type*
  %7927 = getelementptr inbounds %struct.word_type, %struct.word_type* %7926, i32 0, i32 0
  %7928 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7927, i32 0, i64 1
  %7929 = getelementptr inbounds %struct.LIST, %struct.LIST* %7928, i32 0, i32 1
  store %union.rec* %7919, %union.rec** %7929, align 8
  %7930 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7931 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7932 = bitcast %union.rec* %7931 to %struct.word_type*
  %7933 = getelementptr inbounds %struct.word_type, %struct.word_type* %7932, i32 0, i32 0
  %7934 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7933, i32 0, i64 1
  %7935 = getelementptr inbounds %struct.LIST, %struct.LIST* %7934, i32 0, i32 1
  store %union.rec* %7930, %union.rec** %7935, align 8
  %7936 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7937 = bitcast %union.rec* %7936 to %struct.word_type*
  %7938 = getelementptr inbounds %struct.word_type, %struct.word_type* %7937, i32 0, i32 0
  %7939 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7938, i32 0, i64 1
  %7940 = getelementptr inbounds %struct.LIST, %struct.LIST* %7939, i32 0, i32 0
  store %union.rec* %7930, %union.rec** %7940, align 8
  %7941 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7942

; <label>:7942                                    ; preds = %7901, %7900
  %7943 = phi %union.rec* [ null, %7900 ], [ %7941, %7901 ]
  %7944 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7944, %union.rec** @zz_hold, align 8
  %7945 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7946 = bitcast %union.rec* %7945 to %struct.word_type*
  %7947 = getelementptr inbounds %struct.word_type, %struct.word_type* %7946, i32 0, i32 0
  %7948 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7947, i32 0, i64 0
  %7949 = getelementptr inbounds %struct.LIST, %struct.LIST* %7948, i32 0, i32 1
  %7950 = load %union.rec*, %union.rec** %7949, align 8
  %7951 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7952 = icmp eq %union.rec* %7950, %7951
  br i1 %7952, label %7953, label %7954

; <label>:7953                                    ; preds = %7942
  br label %7995

; <label>:7954                                    ; preds = %7942
  %7955 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7956 = bitcast %union.rec* %7955 to %struct.word_type*
  %7957 = getelementptr inbounds %struct.word_type, %struct.word_type* %7956, i32 0, i32 0
  %7958 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7957, i32 0, i64 0
  %7959 = getelementptr inbounds %struct.LIST, %struct.LIST* %7958, i32 0, i32 1
  %7960 = load %union.rec*, %union.rec** %7959, align 8
  store %union.rec* %7960, %union.rec** @zz_res, align 8
  %7961 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7962 = bitcast %union.rec* %7961 to %struct.word_type*
  %7963 = getelementptr inbounds %struct.word_type, %struct.word_type* %7962, i32 0, i32 0
  %7964 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7963, i32 0, i64 0
  %7965 = getelementptr inbounds %struct.LIST, %struct.LIST* %7964, i32 0, i32 0
  %7966 = load %union.rec*, %union.rec** %7965, align 8
  %7967 = load %union.rec*, %union.rec** @zz_res, align 8
  %7968 = bitcast %union.rec* %7967 to %struct.word_type*
  %7969 = getelementptr inbounds %struct.word_type, %struct.word_type* %7968, i32 0, i32 0
  %7970 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7969, i32 0, i64 0
  %7971 = getelementptr inbounds %struct.LIST, %struct.LIST* %7970, i32 0, i32 0
  store %union.rec* %7966, %union.rec** %7971, align 8
  %7972 = load %union.rec*, %union.rec** @zz_res, align 8
  %7973 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7974 = bitcast %union.rec* %7973 to %struct.word_type*
  %7975 = getelementptr inbounds %struct.word_type, %struct.word_type* %7974, i32 0, i32 0
  %7976 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7975, i32 0, i64 0
  %7977 = getelementptr inbounds %struct.LIST, %struct.LIST* %7976, i32 0, i32 0
  %7978 = load %union.rec*, %union.rec** %7977, align 8
  %7979 = bitcast %union.rec* %7978 to %struct.word_type*
  %7980 = getelementptr inbounds %struct.word_type, %struct.word_type* %7979, i32 0, i32 0
  %7981 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7980, i32 0, i64 0
  %7982 = getelementptr inbounds %struct.LIST, %struct.LIST* %7981, i32 0, i32 1
  store %union.rec* %7972, %union.rec** %7982, align 8
  %7983 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7984 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7985 = bitcast %union.rec* %7984 to %struct.word_type*
  %7986 = getelementptr inbounds %struct.word_type, %struct.word_type* %7985, i32 0, i32 0
  %7987 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7986, i32 0, i64 0
  %7988 = getelementptr inbounds %struct.LIST, %struct.LIST* %7987, i32 0, i32 1
  store %union.rec* %7983, %union.rec** %7988, align 8
  %7989 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7990 = bitcast %union.rec* %7989 to %struct.word_type*
  %7991 = getelementptr inbounds %struct.word_type, %struct.word_type* %7990, i32 0, i32 0
  %7992 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7991, i32 0, i64 0
  %7993 = getelementptr inbounds %struct.LIST, %struct.LIST* %7992, i32 0, i32 0
  store %union.rec* %7983, %union.rec** %7993, align 8
  %7994 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7995

; <label>:7995                                    ; preds = %7954, %7953
  %7996 = phi %union.rec* [ null, %7953 ], [ %7994, %7954 ]
  %7997 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7997, %union.rec** @zz_hold, align 8
  %7998 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %7998, %union.rec** @zz_hold, align 8
  %7999 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8000 = bitcast %union.rec* %7999 to %struct.word_type*
  %8001 = getelementptr inbounds %struct.word_type, %struct.word_type* %8000, i32 0, i32 1
  %8002 = bitcast %union.FIRST_UNION* %8001 to %struct.anon*
  %8003 = getelementptr inbounds %struct.anon, %struct.anon* %8002, i32 0, i32 0
  %8004 = load i8, i8* %8003, align 1
  %8005 = zext i8 %8004 to i32
  %8006 = icmp eq i32 %8005, 11
  br i1 %8006, label %8016, label %8007

; <label>:8007                                    ; preds = %7995
  %8008 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8009 = bitcast %union.rec* %8008 to %struct.word_type*
  %8010 = getelementptr inbounds %struct.word_type, %struct.word_type* %8009, i32 0, i32 1
  %8011 = bitcast %union.FIRST_UNION* %8010 to %struct.anon*
  %8012 = getelementptr inbounds %struct.anon, %struct.anon* %8011, i32 0, i32 0
  %8013 = load i8, i8* %8012, align 1
  %8014 = zext i8 %8013 to i32
  %8015 = icmp eq i32 %8014, 12
  br i1 %8015, label %8016, label %8024

; <label>:8016                                    ; preds = %8007, %7995
  %8017 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8018 = bitcast %union.rec* %8017 to %struct.word_type*
  %8019 = getelementptr inbounds %struct.word_type, %struct.word_type* %8018, i32 0, i32 1
  %8020 = bitcast %union.FIRST_UNION* %8019 to %struct.anon*
  %8021 = getelementptr inbounds %struct.anon, %struct.anon* %8020, i32 0, i32 1
  %8022 = load i8, i8* %8021, align 1
  %8023 = zext i8 %8022 to i32
  br label %8035

; <label>:8024                                    ; preds = %8007
  %8025 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8026 = bitcast %union.rec* %8025 to %struct.word_type*
  %8027 = getelementptr inbounds %struct.word_type, %struct.word_type* %8026, i32 0, i32 1
  %8028 = bitcast %union.FIRST_UNION* %8027 to %struct.anon*
  %8029 = getelementptr inbounds %struct.anon, %struct.anon* %8028, i32 0, i32 0
  %8030 = load i8, i8* %8029, align 1
  %8031 = zext i8 %8030 to i64
  %8032 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %8031
  %8033 = load i8, i8* %8032, align 1
  %8034 = zext i8 %8033 to i32
  br label %8035

; <label>:8035                                    ; preds = %8024, %8016
  %8036 = phi i32 [ %8023, %8016 ], [ %8034, %8024 ]
  store i32 %8036, i32* @zz_size, align 4
  %8037 = load i32, i32* @zz_size, align 4
  %8038 = sext i32 %8037 to i64
  %8039 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8038
  %8040 = load %union.rec*, %union.rec** %8039, align 8
  %8041 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8042 = bitcast %union.rec* %8041 to %struct.word_type*
  %8043 = getelementptr inbounds %struct.word_type, %struct.word_type* %8042, i32 0, i32 0
  %8044 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8043, i32 0, i64 0
  %8045 = getelementptr inbounds %struct.LIST, %struct.LIST* %8044, i32 0, i32 0
  store %union.rec* %8040, %union.rec** %8045, align 8
  %8046 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8047 = load i32, i32* @zz_size, align 4
  %8048 = sext i32 %8047 to i64
  %8049 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8048
  store %union.rec* %8046, %union.rec** %8049, align 8
  br label %7875

; <label>:8050                                    ; preds = %7875
  br label %8051

; <label>:8051                                    ; preds = %8211, %8050
  %8052 = load %union.rec*, %union.rec** @xx_hold, align 8
  %8053 = bitcast %union.rec* %8052 to %struct.word_type*
  %8054 = getelementptr inbounds %struct.word_type, %struct.word_type* %8053, i32 0, i32 0
  %8055 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8054, i32 0, i64 0
  %8056 = getelementptr inbounds %struct.LIST, %struct.LIST* %8055, i32 0, i32 1
  %8057 = load %union.rec*, %union.rec** %8056, align 8
  %8058 = load %union.rec*, %union.rec** @xx_hold, align 8
  %8059 = icmp ne %union.rec* %8057, %8058
  br i1 %8059, label %8060, label %8226

; <label>:8060                                    ; preds = %8051
  %8061 = load %union.rec*, %union.rec** @xx_hold, align 8
  %8062 = bitcast %union.rec* %8061 to %struct.word_type*
  %8063 = getelementptr inbounds %struct.word_type, %struct.word_type* %8062, i32 0, i32 0
  %8064 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8063, i32 0, i64 0
  %8065 = getelementptr inbounds %struct.LIST, %struct.LIST* %8064, i32 0, i32 1
  %8066 = load %union.rec*, %union.rec** %8065, align 8
  store %union.rec* %8066, %union.rec** @xx_link, align 8
  %8067 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8067, %union.rec** @zz_hold, align 8
  %8068 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8069 = bitcast %union.rec* %8068 to %struct.word_type*
  %8070 = getelementptr inbounds %struct.word_type, %struct.word_type* %8069, i32 0, i32 0
  %8071 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8070, i32 0, i64 1
  %8072 = getelementptr inbounds %struct.LIST, %struct.LIST* %8071, i32 0, i32 1
  %8073 = load %union.rec*, %union.rec** %8072, align 8
  %8074 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8075 = icmp eq %union.rec* %8073, %8074
  br i1 %8075, label %8076, label %8077

; <label>:8076                                    ; preds = %8060
  br label %8118

; <label>:8077                                    ; preds = %8060
  %8078 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8079 = bitcast %union.rec* %8078 to %struct.word_type*
  %8080 = getelementptr inbounds %struct.word_type, %struct.word_type* %8079, i32 0, i32 0
  %8081 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8080, i32 0, i64 1
  %8082 = getelementptr inbounds %struct.LIST, %struct.LIST* %8081, i32 0, i32 1
  %8083 = load %union.rec*, %union.rec** %8082, align 8
  store %union.rec* %8083, %union.rec** @zz_res, align 8
  %8084 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8085 = bitcast %union.rec* %8084 to %struct.word_type*
  %8086 = getelementptr inbounds %struct.word_type, %struct.word_type* %8085, i32 0, i32 0
  %8087 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8086, i32 0, i64 1
  %8088 = getelementptr inbounds %struct.LIST, %struct.LIST* %8087, i32 0, i32 0
  %8089 = load %union.rec*, %union.rec** %8088, align 8
  %8090 = load %union.rec*, %union.rec** @zz_res, align 8
  %8091 = bitcast %union.rec* %8090 to %struct.word_type*
  %8092 = getelementptr inbounds %struct.word_type, %struct.word_type* %8091, i32 0, i32 0
  %8093 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8092, i32 0, i64 1
  %8094 = getelementptr inbounds %struct.LIST, %struct.LIST* %8093, i32 0, i32 0
  store %union.rec* %8089, %union.rec** %8094, align 8
  %8095 = load %union.rec*, %union.rec** @zz_res, align 8
  %8096 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8097 = bitcast %union.rec* %8096 to %struct.word_type*
  %8098 = getelementptr inbounds %struct.word_type, %struct.word_type* %8097, i32 0, i32 0
  %8099 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8098, i32 0, i64 1
  %8100 = getelementptr inbounds %struct.LIST, %struct.LIST* %8099, i32 0, i32 0
  %8101 = load %union.rec*, %union.rec** %8100, align 8
  %8102 = bitcast %union.rec* %8101 to %struct.word_type*
  %8103 = getelementptr inbounds %struct.word_type, %struct.word_type* %8102, i32 0, i32 0
  %8104 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8103, i32 0, i64 1
  %8105 = getelementptr inbounds %struct.LIST, %struct.LIST* %8104, i32 0, i32 1
  store %union.rec* %8095, %union.rec** %8105, align 8
  %8106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8107 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8108 = bitcast %union.rec* %8107 to %struct.word_type*
  %8109 = getelementptr inbounds %struct.word_type, %struct.word_type* %8108, i32 0, i32 0
  %8110 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8109, i32 0, i64 1
  %8111 = getelementptr inbounds %struct.LIST, %struct.LIST* %8110, i32 0, i32 1
  store %union.rec* %8106, %union.rec** %8111, align 8
  %8112 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8113 = bitcast %union.rec* %8112 to %struct.word_type*
  %8114 = getelementptr inbounds %struct.word_type, %struct.word_type* %8113, i32 0, i32 0
  %8115 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8114, i32 0, i64 1
  %8116 = getelementptr inbounds %struct.LIST, %struct.LIST* %8115, i32 0, i32 0
  store %union.rec* %8106, %union.rec** %8116, align 8
  %8117 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %8118

; <label>:8118                                    ; preds = %8077, %8076
  %8119 = phi %union.rec* [ null, %8076 ], [ %8117, %8077 ]
  %8120 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8120, %union.rec** @zz_hold, align 8
  %8121 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8122 = bitcast %union.rec* %8121 to %struct.word_type*
  %8123 = getelementptr inbounds %struct.word_type, %struct.word_type* %8122, i32 0, i32 0
  %8124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8123, i32 0, i64 0
  %8125 = getelementptr inbounds %struct.LIST, %struct.LIST* %8124, i32 0, i32 1
  %8126 = load %union.rec*, %union.rec** %8125, align 8
  %8127 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8128 = icmp eq %union.rec* %8126, %8127
  br i1 %8128, label %8129, label %8130

; <label>:8129                                    ; preds = %8118
  br label %8171

; <label>:8130                                    ; preds = %8118
  %8131 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8132 = bitcast %union.rec* %8131 to %struct.word_type*
  %8133 = getelementptr inbounds %struct.word_type, %struct.word_type* %8132, i32 0, i32 0
  %8134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8133, i32 0, i64 0
  %8135 = getelementptr inbounds %struct.LIST, %struct.LIST* %8134, i32 0, i32 1
  %8136 = load %union.rec*, %union.rec** %8135, align 8
  store %union.rec* %8136, %union.rec** @zz_res, align 8
  %8137 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8138 = bitcast %union.rec* %8137 to %struct.word_type*
  %8139 = getelementptr inbounds %struct.word_type, %struct.word_type* %8138, i32 0, i32 0
  %8140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8139, i32 0, i64 0
  %8141 = getelementptr inbounds %struct.LIST, %struct.LIST* %8140, i32 0, i32 0
  %8142 = load %union.rec*, %union.rec** %8141, align 8
  %8143 = load %union.rec*, %union.rec** @zz_res, align 8
  %8144 = bitcast %union.rec* %8143 to %struct.word_type*
  %8145 = getelementptr inbounds %struct.word_type, %struct.word_type* %8144, i32 0, i32 0
  %8146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8145, i32 0, i64 0
  %8147 = getelementptr inbounds %struct.LIST, %struct.LIST* %8146, i32 0, i32 0
  store %union.rec* %8142, %union.rec** %8147, align 8
  %8148 = load %union.rec*, %union.rec** @zz_res, align 8
  %8149 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8150 = bitcast %union.rec* %8149 to %struct.word_type*
  %8151 = getelementptr inbounds %struct.word_type, %struct.word_type* %8150, i32 0, i32 0
  %8152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8151, i32 0, i64 0
  %8153 = getelementptr inbounds %struct.LIST, %struct.LIST* %8152, i32 0, i32 0
  %8154 = load %union.rec*, %union.rec** %8153, align 8
  %8155 = bitcast %union.rec* %8154 to %struct.word_type*
  %8156 = getelementptr inbounds %struct.word_type, %struct.word_type* %8155, i32 0, i32 0
  %8157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8156, i32 0, i64 0
  %8158 = getelementptr inbounds %struct.LIST, %struct.LIST* %8157, i32 0, i32 1
  store %union.rec* %8148, %union.rec** %8158, align 8
  %8159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8160 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8161 = bitcast %union.rec* %8160 to %struct.word_type*
  %8162 = getelementptr inbounds %struct.word_type, %struct.word_type* %8161, i32 0, i32 0
  %8163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8162, i32 0, i64 0
  %8164 = getelementptr inbounds %struct.LIST, %struct.LIST* %8163, i32 0, i32 1
  store %union.rec* %8159, %union.rec** %8164, align 8
  %8165 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8166 = bitcast %union.rec* %8165 to %struct.word_type*
  %8167 = getelementptr inbounds %struct.word_type, %struct.word_type* %8166, i32 0, i32 0
  %8168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8167, i32 0, i64 0
  %8169 = getelementptr inbounds %struct.LIST, %struct.LIST* %8168, i32 0, i32 0
  store %union.rec* %8159, %union.rec** %8169, align 8
  %8170 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %8171

; <label>:8171                                    ; preds = %8130, %8129
  %8172 = phi %union.rec* [ null, %8129 ], [ %8170, %8130 ]
  %8173 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8173, %union.rec** @zz_hold, align 8
  %8174 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %8174, %union.rec** @zz_hold, align 8
  %8175 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8176 = bitcast %union.rec* %8175 to %struct.word_type*
  %8177 = getelementptr inbounds %struct.word_type, %struct.word_type* %8176, i32 0, i32 1
  %8178 = bitcast %union.FIRST_UNION* %8177 to %struct.anon*
  %8179 = getelementptr inbounds %struct.anon, %struct.anon* %8178, i32 0, i32 0
  %8180 = load i8, i8* %8179, align 1
  %8181 = zext i8 %8180 to i32
  %8182 = icmp eq i32 %8181, 11
  br i1 %8182, label %8192, label %8183

; <label>:8183                                    ; preds = %8171
  %8184 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8185 = bitcast %union.rec* %8184 to %struct.word_type*
  %8186 = getelementptr inbounds %struct.word_type, %struct.word_type* %8185, i32 0, i32 1
  %8187 = bitcast %union.FIRST_UNION* %8186 to %struct.anon*
  %8188 = getelementptr inbounds %struct.anon, %struct.anon* %8187, i32 0, i32 0
  %8189 = load i8, i8* %8188, align 1
  %8190 = zext i8 %8189 to i32
  %8191 = icmp eq i32 %8190, 12
  br i1 %8191, label %8192, label %8200

; <label>:8192                                    ; preds = %8183, %8171
  %8193 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8194 = bitcast %union.rec* %8193 to %struct.word_type*
  %8195 = getelementptr inbounds %struct.word_type, %struct.word_type* %8194, i32 0, i32 1
  %8196 = bitcast %union.FIRST_UNION* %8195 to %struct.anon*
  %8197 = getelementptr inbounds %struct.anon, %struct.anon* %8196, i32 0, i32 1
  %8198 = load i8, i8* %8197, align 1
  %8199 = zext i8 %8198 to i32
  br label %8211

; <label>:8200                                    ; preds = %8183
  %8201 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8202 = bitcast %union.rec* %8201 to %struct.word_type*
  %8203 = getelementptr inbounds %struct.word_type, %struct.word_type* %8202, i32 0, i32 1
  %8204 = bitcast %union.FIRST_UNION* %8203 to %struct.anon*
  %8205 = getelementptr inbounds %struct.anon, %struct.anon* %8204, i32 0, i32 0
  %8206 = load i8, i8* %8205, align 1
  %8207 = zext i8 %8206 to i64
  %8208 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %8207
  %8209 = load i8, i8* %8208, align 1
  %8210 = zext i8 %8209 to i32
  br label %8211

; <label>:8211                                    ; preds = %8200, %8192
  %8212 = phi i32 [ %8199, %8192 ], [ %8210, %8200 ]
  store i32 %8212, i32* @zz_size, align 4
  %8213 = load i32, i32* @zz_size, align 4
  %8214 = sext i32 %8213 to i64
  %8215 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8214
  %8216 = load %union.rec*, %union.rec** %8215, align 8
  %8217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8218 = bitcast %union.rec* %8217 to %struct.word_type*
  %8219 = getelementptr inbounds %struct.word_type, %struct.word_type* %8218, i32 0, i32 0
  %8220 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8219, i32 0, i64 0
  %8221 = getelementptr inbounds %struct.LIST, %struct.LIST* %8220, i32 0, i32 0
  store %union.rec* %8216, %union.rec** %8221, align 8
  %8222 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8223 = load i32, i32* @zz_size, align 4
  %8224 = sext i32 %8223 to i64
  %8225 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8224
  store %union.rec* %8222, %union.rec** %8225, align 8
  br label %8051

; <label>:8226                                    ; preds = %8051
  %8227 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %8227, %union.rec** @zz_hold, align 8
  %8228 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %8228, %union.rec** @zz_hold, align 8
  %8229 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8230 = bitcast %union.rec* %8229 to %struct.word_type*
  %8231 = getelementptr inbounds %struct.word_type, %struct.word_type* %8230, i32 0, i32 1
  %8232 = bitcast %union.FIRST_UNION* %8231 to %struct.anon*
  %8233 = getelementptr inbounds %struct.anon, %struct.anon* %8232, i32 0, i32 0
  %8234 = load i8, i8* %8233, align 1
  %8235 = zext i8 %8234 to i32
  %8236 = icmp eq i32 %8235, 11
  br i1 %8236, label %8246, label %8237

; <label>:8237                                    ; preds = %8226
  %8238 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8239 = bitcast %union.rec* %8238 to %struct.word_type*
  %8240 = getelementptr inbounds %struct.word_type, %struct.word_type* %8239, i32 0, i32 1
  %8241 = bitcast %union.FIRST_UNION* %8240 to %struct.anon*
  %8242 = getelementptr inbounds %struct.anon, %struct.anon* %8241, i32 0, i32 0
  %8243 = load i8, i8* %8242, align 1
  %8244 = zext i8 %8243 to i32
  %8245 = icmp eq i32 %8244, 12
  br i1 %8245, label %8246, label %8254

; <label>:8246                                    ; preds = %8237, %8226
  %8247 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8248 = bitcast %union.rec* %8247 to %struct.word_type*
  %8249 = getelementptr inbounds %struct.word_type, %struct.word_type* %8248, i32 0, i32 1
  %8250 = bitcast %union.FIRST_UNION* %8249 to %struct.anon*
  %8251 = getelementptr inbounds %struct.anon, %struct.anon* %8250, i32 0, i32 1
  %8252 = load i8, i8* %8251, align 1
  %8253 = zext i8 %8252 to i32
  br label %8265

; <label>:8254                                    ; preds = %8237
  %8255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8256 = bitcast %union.rec* %8255 to %struct.word_type*
  %8257 = getelementptr inbounds %struct.word_type, %struct.word_type* %8256, i32 0, i32 1
  %8258 = bitcast %union.FIRST_UNION* %8257 to %struct.anon*
  %8259 = getelementptr inbounds %struct.anon, %struct.anon* %8258, i32 0, i32 0
  %8260 = load i8, i8* %8259, align 1
  %8261 = zext i8 %8260 to i64
  %8262 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %8261
  %8263 = load i8, i8* %8262, align 1
  %8264 = zext i8 %8263 to i32
  br label %8265

; <label>:8265                                    ; preds = %8254, %8246
  %8266 = phi i32 [ %8253, %8246 ], [ %8264, %8254 ]
  store i32 %8266, i32* @zz_size, align 4
  %8267 = load i32, i32* @zz_size, align 4
  %8268 = sext i32 %8267 to i64
  %8269 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8268
  %8270 = load %union.rec*, %union.rec** %8269, align 8
  %8271 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8272 = bitcast %union.rec* %8271 to %struct.word_type*
  %8273 = getelementptr inbounds %struct.word_type, %struct.word_type* %8272, i32 0, i32 0
  %8274 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8273, i32 0, i64 0
  %8275 = getelementptr inbounds %struct.LIST, %struct.LIST* %8274, i32 0, i32 0
  store %union.rec* %8270, %union.rec** %8275, align 8
  %8276 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8277 = load i32, i32* @zz_size, align 4
  %8278 = sext i32 %8277 to i64
  %8279 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8278
  store %union.rec* %8276, %union.rec** %8279, align 8
  br label %11

; <label>:8280                                    ; preds = %7863, %7854
  %8281 = load %union.rec*, %union.rec** %y, align 8
  %8282 = bitcast %union.rec* %8281 to %struct.word_type*
  %8283 = getelementptr inbounds %struct.word_type, %struct.word_type* %8282, i32 0, i32 1
  %8284 = bitcast %union.FIRST_UNION* %8283 to %struct.anon*
  %8285 = getelementptr inbounds %struct.anon, %struct.anon* %8284, i32 0, i32 0
  %8286 = load i8, i8* %8285, align 1
  %8287 = zext i8 %8286 to i32
  %8288 = icmp eq i32 %8287, 122
  br i1 %8288, label %8289, label %8759

; <label>:8289                                    ; preds = %8280
  %8290 = load %union.rec*, %union.rec** %y, align 8
  %8291 = bitcast %union.rec* %8290 to %struct.word_type*
  %8292 = getelementptr inbounds %struct.word_type, %struct.word_type* %8291, i32 0, i32 2
  %8293 = bitcast %union.SECOND_UNION* %8292 to %struct.anon.2*
  %8294 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8293, i32 0, i32 2
  %8295 = load i16, i16* %8294, align 2
  %8296 = and i16 %8295, 1
  %8297 = zext i16 %8296 to i32
  %8298 = icmp ne i32 %8297, 0
  br i1 %8298, label %8299, label %8759

; <label>:8299                                    ; preds = %8289
  %8300 = load %union.rec*, %union.rec** %y, align 8
  %8301 = bitcast %union.rec* %8300 to %struct.word_type*
  %8302 = getelementptr inbounds %struct.word_type, %struct.word_type* %8301, i32 0, i32 0
  %8303 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8302, i32 0, i64 0
  %8304 = getelementptr inbounds %struct.LIST, %struct.LIST* %8303, i32 0, i32 1
  %8305 = load %union.rec*, %union.rec** %8304, align 8
  %8306 = load %union.rec*, %union.rec** %y, align 8
  %8307 = icmp eq %union.rec* %8305, %8306
  br i1 %8307, label %8308, label %8715

; <label>:8308                                    ; preds = %8299
  %8309 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %8309, %union.rec** @xx_hold, align 8
  br label %8310

; <label>:8310                                    ; preds = %8470, %8308
  %8311 = load %union.rec*, %union.rec** @xx_hold, align 8
  %8312 = bitcast %union.rec* %8311 to %struct.word_type*
  %8313 = getelementptr inbounds %struct.word_type, %struct.word_type* %8312, i32 0, i32 0
  %8314 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8313, i32 0, i64 1
  %8315 = getelementptr inbounds %struct.LIST, %struct.LIST* %8314, i32 0, i32 1
  %8316 = load %union.rec*, %union.rec** %8315, align 8
  %8317 = load %union.rec*, %union.rec** @xx_hold, align 8
  %8318 = icmp ne %union.rec* %8316, %8317
  br i1 %8318, label %8319, label %8485

; <label>:8319                                    ; preds = %8310
  %8320 = load %union.rec*, %union.rec** @xx_hold, align 8
  %8321 = bitcast %union.rec* %8320 to %struct.word_type*
  %8322 = getelementptr inbounds %struct.word_type, %struct.word_type* %8321, i32 0, i32 0
  %8323 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8322, i32 0, i64 1
  %8324 = getelementptr inbounds %struct.LIST, %struct.LIST* %8323, i32 0, i32 1
  %8325 = load %union.rec*, %union.rec** %8324, align 8
  store %union.rec* %8325, %union.rec** @xx_link, align 8
  %8326 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8326, %union.rec** @zz_hold, align 8
  %8327 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8328 = bitcast %union.rec* %8327 to %struct.word_type*
  %8329 = getelementptr inbounds %struct.word_type, %struct.word_type* %8328, i32 0, i32 0
  %8330 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8329, i32 0, i64 1
  %8331 = getelementptr inbounds %struct.LIST, %struct.LIST* %8330, i32 0, i32 1
  %8332 = load %union.rec*, %union.rec** %8331, align 8
  %8333 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8334 = icmp eq %union.rec* %8332, %8333
  br i1 %8334, label %8335, label %8336

; <label>:8335                                    ; preds = %8319
  br label %8377

; <label>:8336                                    ; preds = %8319
  %8337 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8338 = bitcast %union.rec* %8337 to %struct.word_type*
  %8339 = getelementptr inbounds %struct.word_type, %struct.word_type* %8338, i32 0, i32 0
  %8340 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8339, i32 0, i64 1
  %8341 = getelementptr inbounds %struct.LIST, %struct.LIST* %8340, i32 0, i32 1
  %8342 = load %union.rec*, %union.rec** %8341, align 8
  store %union.rec* %8342, %union.rec** @zz_res, align 8
  %8343 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8344 = bitcast %union.rec* %8343 to %struct.word_type*
  %8345 = getelementptr inbounds %struct.word_type, %struct.word_type* %8344, i32 0, i32 0
  %8346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8345, i32 0, i64 1
  %8347 = getelementptr inbounds %struct.LIST, %struct.LIST* %8346, i32 0, i32 0
  %8348 = load %union.rec*, %union.rec** %8347, align 8
  %8349 = load %union.rec*, %union.rec** @zz_res, align 8
  %8350 = bitcast %union.rec* %8349 to %struct.word_type*
  %8351 = getelementptr inbounds %struct.word_type, %struct.word_type* %8350, i32 0, i32 0
  %8352 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8351, i32 0, i64 1
  %8353 = getelementptr inbounds %struct.LIST, %struct.LIST* %8352, i32 0, i32 0
  store %union.rec* %8348, %union.rec** %8353, align 8
  %8354 = load %union.rec*, %union.rec** @zz_res, align 8
  %8355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8356 = bitcast %union.rec* %8355 to %struct.word_type*
  %8357 = getelementptr inbounds %struct.word_type, %struct.word_type* %8356, i32 0, i32 0
  %8358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8357, i32 0, i64 1
  %8359 = getelementptr inbounds %struct.LIST, %struct.LIST* %8358, i32 0, i32 0
  %8360 = load %union.rec*, %union.rec** %8359, align 8
  %8361 = bitcast %union.rec* %8360 to %struct.word_type*
  %8362 = getelementptr inbounds %struct.word_type, %struct.word_type* %8361, i32 0, i32 0
  %8363 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8362, i32 0, i64 1
  %8364 = getelementptr inbounds %struct.LIST, %struct.LIST* %8363, i32 0, i32 1
  store %union.rec* %8354, %union.rec** %8364, align 8
  %8365 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8366 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8367 = bitcast %union.rec* %8366 to %struct.word_type*
  %8368 = getelementptr inbounds %struct.word_type, %struct.word_type* %8367, i32 0, i32 0
  %8369 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8368, i32 0, i64 1
  %8370 = getelementptr inbounds %struct.LIST, %struct.LIST* %8369, i32 0, i32 1
  store %union.rec* %8365, %union.rec** %8370, align 8
  %8371 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8372 = bitcast %union.rec* %8371 to %struct.word_type*
  %8373 = getelementptr inbounds %struct.word_type, %struct.word_type* %8372, i32 0, i32 0
  %8374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8373, i32 0, i64 1
  %8375 = getelementptr inbounds %struct.LIST, %struct.LIST* %8374, i32 0, i32 0
  store %union.rec* %8365, %union.rec** %8375, align 8
  %8376 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %8377

; <label>:8377                                    ; preds = %8336, %8335
  %8378 = phi %union.rec* [ null, %8335 ], [ %8376, %8336 ]
  %8379 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8379, %union.rec** @zz_hold, align 8
  %8380 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8381 = bitcast %union.rec* %8380 to %struct.word_type*
  %8382 = getelementptr inbounds %struct.word_type, %struct.word_type* %8381, i32 0, i32 0
  %8383 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8382, i32 0, i64 0
  %8384 = getelementptr inbounds %struct.LIST, %struct.LIST* %8383, i32 0, i32 1
  %8385 = load %union.rec*, %union.rec** %8384, align 8
  %8386 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8387 = icmp eq %union.rec* %8385, %8386
  br i1 %8387, label %8388, label %8389

; <label>:8388                                    ; preds = %8377
  br label %8430

; <label>:8389                                    ; preds = %8377
  %8390 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8391 = bitcast %union.rec* %8390 to %struct.word_type*
  %8392 = getelementptr inbounds %struct.word_type, %struct.word_type* %8391, i32 0, i32 0
  %8393 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8392, i32 0, i64 0
  %8394 = getelementptr inbounds %struct.LIST, %struct.LIST* %8393, i32 0, i32 1
  %8395 = load %union.rec*, %union.rec** %8394, align 8
  store %union.rec* %8395, %union.rec** @zz_res, align 8
  %8396 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8397 = bitcast %union.rec* %8396 to %struct.word_type*
  %8398 = getelementptr inbounds %struct.word_type, %struct.word_type* %8397, i32 0, i32 0
  %8399 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8398, i32 0, i64 0
  %8400 = getelementptr inbounds %struct.LIST, %struct.LIST* %8399, i32 0, i32 0
  %8401 = load %union.rec*, %union.rec** %8400, align 8
  %8402 = load %union.rec*, %union.rec** @zz_res, align 8
  %8403 = bitcast %union.rec* %8402 to %struct.word_type*
  %8404 = getelementptr inbounds %struct.word_type, %struct.word_type* %8403, i32 0, i32 0
  %8405 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8404, i32 0, i64 0
  %8406 = getelementptr inbounds %struct.LIST, %struct.LIST* %8405, i32 0, i32 0
  store %union.rec* %8401, %union.rec** %8406, align 8
  %8407 = load %union.rec*, %union.rec** @zz_res, align 8
  %8408 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8409 = bitcast %union.rec* %8408 to %struct.word_type*
  %8410 = getelementptr inbounds %struct.word_type, %struct.word_type* %8409, i32 0, i32 0
  %8411 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8410, i32 0, i64 0
  %8412 = getelementptr inbounds %struct.LIST, %struct.LIST* %8411, i32 0, i32 0
  %8413 = load %union.rec*, %union.rec** %8412, align 8
  %8414 = bitcast %union.rec* %8413 to %struct.word_type*
  %8415 = getelementptr inbounds %struct.word_type, %struct.word_type* %8414, i32 0, i32 0
  %8416 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8415, i32 0, i64 0
  %8417 = getelementptr inbounds %struct.LIST, %struct.LIST* %8416, i32 0, i32 1
  store %union.rec* %8407, %union.rec** %8417, align 8
  %8418 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8419 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8420 = bitcast %union.rec* %8419 to %struct.word_type*
  %8421 = getelementptr inbounds %struct.word_type, %struct.word_type* %8420, i32 0, i32 0
  %8422 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8421, i32 0, i64 0
  %8423 = getelementptr inbounds %struct.LIST, %struct.LIST* %8422, i32 0, i32 1
  store %union.rec* %8418, %union.rec** %8423, align 8
  %8424 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8425 = bitcast %union.rec* %8424 to %struct.word_type*
  %8426 = getelementptr inbounds %struct.word_type, %struct.word_type* %8425, i32 0, i32 0
  %8427 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8426, i32 0, i64 0
  %8428 = getelementptr inbounds %struct.LIST, %struct.LIST* %8427, i32 0, i32 0
  store %union.rec* %8418, %union.rec** %8428, align 8
  %8429 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %8430

; <label>:8430                                    ; preds = %8389, %8388
  %8431 = phi %union.rec* [ null, %8388 ], [ %8429, %8389 ]
  %8432 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8432, %union.rec** @zz_hold, align 8
  %8433 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %8433, %union.rec** @zz_hold, align 8
  %8434 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8435 = bitcast %union.rec* %8434 to %struct.word_type*
  %8436 = getelementptr inbounds %struct.word_type, %struct.word_type* %8435, i32 0, i32 1
  %8437 = bitcast %union.FIRST_UNION* %8436 to %struct.anon*
  %8438 = getelementptr inbounds %struct.anon, %struct.anon* %8437, i32 0, i32 0
  %8439 = load i8, i8* %8438, align 1
  %8440 = zext i8 %8439 to i32
  %8441 = icmp eq i32 %8440, 11
  br i1 %8441, label %8451, label %8442

; <label>:8442                                    ; preds = %8430
  %8443 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8444 = bitcast %union.rec* %8443 to %struct.word_type*
  %8445 = getelementptr inbounds %struct.word_type, %struct.word_type* %8444, i32 0, i32 1
  %8446 = bitcast %union.FIRST_UNION* %8445 to %struct.anon*
  %8447 = getelementptr inbounds %struct.anon, %struct.anon* %8446, i32 0, i32 0
  %8448 = load i8, i8* %8447, align 1
  %8449 = zext i8 %8448 to i32
  %8450 = icmp eq i32 %8449, 12
  br i1 %8450, label %8451, label %8459

; <label>:8451                                    ; preds = %8442, %8430
  %8452 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8453 = bitcast %union.rec* %8452 to %struct.word_type*
  %8454 = getelementptr inbounds %struct.word_type, %struct.word_type* %8453, i32 0, i32 1
  %8455 = bitcast %union.FIRST_UNION* %8454 to %struct.anon*
  %8456 = getelementptr inbounds %struct.anon, %struct.anon* %8455, i32 0, i32 1
  %8457 = load i8, i8* %8456, align 1
  %8458 = zext i8 %8457 to i32
  br label %8470

; <label>:8459                                    ; preds = %8442
  %8460 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8461 = bitcast %union.rec* %8460 to %struct.word_type*
  %8462 = getelementptr inbounds %struct.word_type, %struct.word_type* %8461, i32 0, i32 1
  %8463 = bitcast %union.FIRST_UNION* %8462 to %struct.anon*
  %8464 = getelementptr inbounds %struct.anon, %struct.anon* %8463, i32 0, i32 0
  %8465 = load i8, i8* %8464, align 1
  %8466 = zext i8 %8465 to i64
  %8467 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %8466
  %8468 = load i8, i8* %8467, align 1
  %8469 = zext i8 %8468 to i32
  br label %8470

; <label>:8470                                    ; preds = %8459, %8451
  %8471 = phi i32 [ %8458, %8451 ], [ %8469, %8459 ]
  store i32 %8471, i32* @zz_size, align 4
  %8472 = load i32, i32* @zz_size, align 4
  %8473 = sext i32 %8472 to i64
  %8474 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8473
  %8475 = load %union.rec*, %union.rec** %8474, align 8
  %8476 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8477 = bitcast %union.rec* %8476 to %struct.word_type*
  %8478 = getelementptr inbounds %struct.word_type, %struct.word_type* %8477, i32 0, i32 0
  %8479 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8478, i32 0, i64 0
  %8480 = getelementptr inbounds %struct.LIST, %struct.LIST* %8479, i32 0, i32 0
  store %union.rec* %8475, %union.rec** %8480, align 8
  %8481 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8482 = load i32, i32* @zz_size, align 4
  %8483 = sext i32 %8482 to i64
  %8484 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8483
  store %union.rec* %8481, %union.rec** %8484, align 8
  br label %8310

; <label>:8485                                    ; preds = %8310
  br label %8486

; <label>:8486                                    ; preds = %8646, %8485
  %8487 = load %union.rec*, %union.rec** @xx_hold, align 8
  %8488 = bitcast %union.rec* %8487 to %struct.word_type*
  %8489 = getelementptr inbounds %struct.word_type, %struct.word_type* %8488, i32 0, i32 0
  %8490 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8489, i32 0, i64 0
  %8491 = getelementptr inbounds %struct.LIST, %struct.LIST* %8490, i32 0, i32 1
  %8492 = load %union.rec*, %union.rec** %8491, align 8
  %8493 = load %union.rec*, %union.rec** @xx_hold, align 8
  %8494 = icmp ne %union.rec* %8492, %8493
  br i1 %8494, label %8495, label %8661

; <label>:8495                                    ; preds = %8486
  %8496 = load %union.rec*, %union.rec** @xx_hold, align 8
  %8497 = bitcast %union.rec* %8496 to %struct.word_type*
  %8498 = getelementptr inbounds %struct.word_type, %struct.word_type* %8497, i32 0, i32 0
  %8499 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8498, i32 0, i64 0
  %8500 = getelementptr inbounds %struct.LIST, %struct.LIST* %8499, i32 0, i32 1
  %8501 = load %union.rec*, %union.rec** %8500, align 8
  store %union.rec* %8501, %union.rec** @xx_link, align 8
  %8502 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8502, %union.rec** @zz_hold, align 8
  %8503 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8504 = bitcast %union.rec* %8503 to %struct.word_type*
  %8505 = getelementptr inbounds %struct.word_type, %struct.word_type* %8504, i32 0, i32 0
  %8506 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8505, i32 0, i64 1
  %8507 = getelementptr inbounds %struct.LIST, %struct.LIST* %8506, i32 0, i32 1
  %8508 = load %union.rec*, %union.rec** %8507, align 8
  %8509 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8510 = icmp eq %union.rec* %8508, %8509
  br i1 %8510, label %8511, label %8512

; <label>:8511                                    ; preds = %8495
  br label %8553

; <label>:8512                                    ; preds = %8495
  %8513 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8514 = bitcast %union.rec* %8513 to %struct.word_type*
  %8515 = getelementptr inbounds %struct.word_type, %struct.word_type* %8514, i32 0, i32 0
  %8516 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8515, i32 0, i64 1
  %8517 = getelementptr inbounds %struct.LIST, %struct.LIST* %8516, i32 0, i32 1
  %8518 = load %union.rec*, %union.rec** %8517, align 8
  store %union.rec* %8518, %union.rec** @zz_res, align 8
  %8519 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8520 = bitcast %union.rec* %8519 to %struct.word_type*
  %8521 = getelementptr inbounds %struct.word_type, %struct.word_type* %8520, i32 0, i32 0
  %8522 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8521, i32 0, i64 1
  %8523 = getelementptr inbounds %struct.LIST, %struct.LIST* %8522, i32 0, i32 0
  %8524 = load %union.rec*, %union.rec** %8523, align 8
  %8525 = load %union.rec*, %union.rec** @zz_res, align 8
  %8526 = bitcast %union.rec* %8525 to %struct.word_type*
  %8527 = getelementptr inbounds %struct.word_type, %struct.word_type* %8526, i32 0, i32 0
  %8528 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8527, i32 0, i64 1
  %8529 = getelementptr inbounds %struct.LIST, %struct.LIST* %8528, i32 0, i32 0
  store %union.rec* %8524, %union.rec** %8529, align 8
  %8530 = load %union.rec*, %union.rec** @zz_res, align 8
  %8531 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8532 = bitcast %union.rec* %8531 to %struct.word_type*
  %8533 = getelementptr inbounds %struct.word_type, %struct.word_type* %8532, i32 0, i32 0
  %8534 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8533, i32 0, i64 1
  %8535 = getelementptr inbounds %struct.LIST, %struct.LIST* %8534, i32 0, i32 0
  %8536 = load %union.rec*, %union.rec** %8535, align 8
  %8537 = bitcast %union.rec* %8536 to %struct.word_type*
  %8538 = getelementptr inbounds %struct.word_type, %struct.word_type* %8537, i32 0, i32 0
  %8539 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8538, i32 0, i64 1
  %8540 = getelementptr inbounds %struct.LIST, %struct.LIST* %8539, i32 0, i32 1
  store %union.rec* %8530, %union.rec** %8540, align 8
  %8541 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8542 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8543 = bitcast %union.rec* %8542 to %struct.word_type*
  %8544 = getelementptr inbounds %struct.word_type, %struct.word_type* %8543, i32 0, i32 0
  %8545 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8544, i32 0, i64 1
  %8546 = getelementptr inbounds %struct.LIST, %struct.LIST* %8545, i32 0, i32 1
  store %union.rec* %8541, %union.rec** %8546, align 8
  %8547 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8548 = bitcast %union.rec* %8547 to %struct.word_type*
  %8549 = getelementptr inbounds %struct.word_type, %struct.word_type* %8548, i32 0, i32 0
  %8550 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8549, i32 0, i64 1
  %8551 = getelementptr inbounds %struct.LIST, %struct.LIST* %8550, i32 0, i32 0
  store %union.rec* %8541, %union.rec** %8551, align 8
  %8552 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %8553

; <label>:8553                                    ; preds = %8512, %8511
  %8554 = phi %union.rec* [ null, %8511 ], [ %8552, %8512 ]
  %8555 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8555, %union.rec** @zz_hold, align 8
  %8556 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8557 = bitcast %union.rec* %8556 to %struct.word_type*
  %8558 = getelementptr inbounds %struct.word_type, %struct.word_type* %8557, i32 0, i32 0
  %8559 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8558, i32 0, i64 0
  %8560 = getelementptr inbounds %struct.LIST, %struct.LIST* %8559, i32 0, i32 1
  %8561 = load %union.rec*, %union.rec** %8560, align 8
  %8562 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8563 = icmp eq %union.rec* %8561, %8562
  br i1 %8563, label %8564, label %8565

; <label>:8564                                    ; preds = %8553
  br label %8606

; <label>:8565                                    ; preds = %8553
  %8566 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8567 = bitcast %union.rec* %8566 to %struct.word_type*
  %8568 = getelementptr inbounds %struct.word_type, %struct.word_type* %8567, i32 0, i32 0
  %8569 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8568, i32 0, i64 0
  %8570 = getelementptr inbounds %struct.LIST, %struct.LIST* %8569, i32 0, i32 1
  %8571 = load %union.rec*, %union.rec** %8570, align 8
  store %union.rec* %8571, %union.rec** @zz_res, align 8
  %8572 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8573 = bitcast %union.rec* %8572 to %struct.word_type*
  %8574 = getelementptr inbounds %struct.word_type, %struct.word_type* %8573, i32 0, i32 0
  %8575 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8574, i32 0, i64 0
  %8576 = getelementptr inbounds %struct.LIST, %struct.LIST* %8575, i32 0, i32 0
  %8577 = load %union.rec*, %union.rec** %8576, align 8
  %8578 = load %union.rec*, %union.rec** @zz_res, align 8
  %8579 = bitcast %union.rec* %8578 to %struct.word_type*
  %8580 = getelementptr inbounds %struct.word_type, %struct.word_type* %8579, i32 0, i32 0
  %8581 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8580, i32 0, i64 0
  %8582 = getelementptr inbounds %struct.LIST, %struct.LIST* %8581, i32 0, i32 0
  store %union.rec* %8577, %union.rec** %8582, align 8
  %8583 = load %union.rec*, %union.rec** @zz_res, align 8
  %8584 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8585 = bitcast %union.rec* %8584 to %struct.word_type*
  %8586 = getelementptr inbounds %struct.word_type, %struct.word_type* %8585, i32 0, i32 0
  %8587 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8586, i32 0, i64 0
  %8588 = getelementptr inbounds %struct.LIST, %struct.LIST* %8587, i32 0, i32 0
  %8589 = load %union.rec*, %union.rec** %8588, align 8
  %8590 = bitcast %union.rec* %8589 to %struct.word_type*
  %8591 = getelementptr inbounds %struct.word_type, %struct.word_type* %8590, i32 0, i32 0
  %8592 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8591, i32 0, i64 0
  %8593 = getelementptr inbounds %struct.LIST, %struct.LIST* %8592, i32 0, i32 1
  store %union.rec* %8583, %union.rec** %8593, align 8
  %8594 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8595 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8596 = bitcast %union.rec* %8595 to %struct.word_type*
  %8597 = getelementptr inbounds %struct.word_type, %struct.word_type* %8596, i32 0, i32 0
  %8598 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8597, i32 0, i64 0
  %8599 = getelementptr inbounds %struct.LIST, %struct.LIST* %8598, i32 0, i32 1
  store %union.rec* %8594, %union.rec** %8599, align 8
  %8600 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8601 = bitcast %union.rec* %8600 to %struct.word_type*
  %8602 = getelementptr inbounds %struct.word_type, %struct.word_type* %8601, i32 0, i32 0
  %8603 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8602, i32 0, i64 0
  %8604 = getelementptr inbounds %struct.LIST, %struct.LIST* %8603, i32 0, i32 0
  store %union.rec* %8594, %union.rec** %8604, align 8
  %8605 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %8606

; <label>:8606                                    ; preds = %8565, %8564
  %8607 = phi %union.rec* [ null, %8564 ], [ %8605, %8565 ]
  %8608 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8608, %union.rec** @zz_hold, align 8
  %8609 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %8609, %union.rec** @zz_hold, align 8
  %8610 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8611 = bitcast %union.rec* %8610 to %struct.word_type*
  %8612 = getelementptr inbounds %struct.word_type, %struct.word_type* %8611, i32 0, i32 1
  %8613 = bitcast %union.FIRST_UNION* %8612 to %struct.anon*
  %8614 = getelementptr inbounds %struct.anon, %struct.anon* %8613, i32 0, i32 0
  %8615 = load i8, i8* %8614, align 1
  %8616 = zext i8 %8615 to i32
  %8617 = icmp eq i32 %8616, 11
  br i1 %8617, label %8627, label %8618

; <label>:8618                                    ; preds = %8606
  %8619 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8620 = bitcast %union.rec* %8619 to %struct.word_type*
  %8621 = getelementptr inbounds %struct.word_type, %struct.word_type* %8620, i32 0, i32 1
  %8622 = bitcast %union.FIRST_UNION* %8621 to %struct.anon*
  %8623 = getelementptr inbounds %struct.anon, %struct.anon* %8622, i32 0, i32 0
  %8624 = load i8, i8* %8623, align 1
  %8625 = zext i8 %8624 to i32
  %8626 = icmp eq i32 %8625, 12
  br i1 %8626, label %8627, label %8635

; <label>:8627                                    ; preds = %8618, %8606
  %8628 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8629 = bitcast %union.rec* %8628 to %struct.word_type*
  %8630 = getelementptr inbounds %struct.word_type, %struct.word_type* %8629, i32 0, i32 1
  %8631 = bitcast %union.FIRST_UNION* %8630 to %struct.anon*
  %8632 = getelementptr inbounds %struct.anon, %struct.anon* %8631, i32 0, i32 1
  %8633 = load i8, i8* %8632, align 1
  %8634 = zext i8 %8633 to i32
  br label %8646

; <label>:8635                                    ; preds = %8618
  %8636 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8637 = bitcast %union.rec* %8636 to %struct.word_type*
  %8638 = getelementptr inbounds %struct.word_type, %struct.word_type* %8637, i32 0, i32 1
  %8639 = bitcast %union.FIRST_UNION* %8638 to %struct.anon*
  %8640 = getelementptr inbounds %struct.anon, %struct.anon* %8639, i32 0, i32 0
  %8641 = load i8, i8* %8640, align 1
  %8642 = zext i8 %8641 to i64
  %8643 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %8642
  %8644 = load i8, i8* %8643, align 1
  %8645 = zext i8 %8644 to i32
  br label %8646

; <label>:8646                                    ; preds = %8635, %8627
  %8647 = phi i32 [ %8634, %8627 ], [ %8645, %8635 ]
  store i32 %8647, i32* @zz_size, align 4
  %8648 = load i32, i32* @zz_size, align 4
  %8649 = sext i32 %8648 to i64
  %8650 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8649
  %8651 = load %union.rec*, %union.rec** %8650, align 8
  %8652 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8653 = bitcast %union.rec* %8652 to %struct.word_type*
  %8654 = getelementptr inbounds %struct.word_type, %struct.word_type* %8653, i32 0, i32 0
  %8655 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8654, i32 0, i64 0
  %8656 = getelementptr inbounds %struct.LIST, %struct.LIST* %8655, i32 0, i32 0
  store %union.rec* %8651, %union.rec** %8656, align 8
  %8657 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8658 = load i32, i32* @zz_size, align 4
  %8659 = sext i32 %8658 to i64
  %8660 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8659
  store %union.rec* %8657, %union.rec** %8660, align 8
  br label %8486

; <label>:8661                                    ; preds = %8486
  %8662 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %8662, %union.rec** @zz_hold, align 8
  %8663 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %8663, %union.rec** @zz_hold, align 8
  %8664 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8665 = bitcast %union.rec* %8664 to %struct.word_type*
  %8666 = getelementptr inbounds %struct.word_type, %struct.word_type* %8665, i32 0, i32 1
  %8667 = bitcast %union.FIRST_UNION* %8666 to %struct.anon*
  %8668 = getelementptr inbounds %struct.anon, %struct.anon* %8667, i32 0, i32 0
  %8669 = load i8, i8* %8668, align 1
  %8670 = zext i8 %8669 to i32
  %8671 = icmp eq i32 %8670, 11
  br i1 %8671, label %8681, label %8672

; <label>:8672                                    ; preds = %8661
  %8673 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8674 = bitcast %union.rec* %8673 to %struct.word_type*
  %8675 = getelementptr inbounds %struct.word_type, %struct.word_type* %8674, i32 0, i32 1
  %8676 = bitcast %union.FIRST_UNION* %8675 to %struct.anon*
  %8677 = getelementptr inbounds %struct.anon, %struct.anon* %8676, i32 0, i32 0
  %8678 = load i8, i8* %8677, align 1
  %8679 = zext i8 %8678 to i32
  %8680 = icmp eq i32 %8679, 12
  br i1 %8680, label %8681, label %8689

; <label>:8681                                    ; preds = %8672, %8661
  %8682 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8683 = bitcast %union.rec* %8682 to %struct.word_type*
  %8684 = getelementptr inbounds %struct.word_type, %struct.word_type* %8683, i32 0, i32 1
  %8685 = bitcast %union.FIRST_UNION* %8684 to %struct.anon*
  %8686 = getelementptr inbounds %struct.anon, %struct.anon* %8685, i32 0, i32 1
  %8687 = load i8, i8* %8686, align 1
  %8688 = zext i8 %8687 to i32
  br label %8700

; <label>:8689                                    ; preds = %8672
  %8690 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8691 = bitcast %union.rec* %8690 to %struct.word_type*
  %8692 = getelementptr inbounds %struct.word_type, %struct.word_type* %8691, i32 0, i32 1
  %8693 = bitcast %union.FIRST_UNION* %8692 to %struct.anon*
  %8694 = getelementptr inbounds %struct.anon, %struct.anon* %8693, i32 0, i32 0
  %8695 = load i8, i8* %8694, align 1
  %8696 = zext i8 %8695 to i64
  %8697 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %8696
  %8698 = load i8, i8* %8697, align 1
  %8699 = zext i8 %8698 to i32
  br label %8700

; <label>:8700                                    ; preds = %8689, %8681
  %8701 = phi i32 [ %8688, %8681 ], [ %8699, %8689 ]
  store i32 %8701, i32* @zz_size, align 4
  %8702 = load i32, i32* @zz_size, align 4
  %8703 = sext i32 %8702 to i64
  %8704 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8703
  %8705 = load %union.rec*, %union.rec** %8704, align 8
  %8706 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8707 = bitcast %union.rec* %8706 to %struct.word_type*
  %8708 = getelementptr inbounds %struct.word_type, %struct.word_type* %8707, i32 0, i32 0
  %8709 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8708, i32 0, i64 0
  %8710 = getelementptr inbounds %struct.LIST, %struct.LIST* %8709, i32 0, i32 0
  store %union.rec* %8705, %union.rec** %8710, align 8
  %8711 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8712 = load i32, i32* @zz_size, align 4
  %8713 = sext i32 %8712 to i64
  %8714 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8713
  store %union.rec* %8711, %union.rec** %8714, align 8
  br label %8758

; <label>:8715                                    ; preds = %8299
  %8716 = load %union.rec*, %union.rec** %y, align 8
  %8717 = bitcast %union.rec* %8716 to %struct.word_type*
  %8718 = getelementptr inbounds %struct.word_type, %struct.word_type* %8717, i32 0, i32 0
  %8719 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8718, i32 0, i64 0
  %8720 = getelementptr inbounds %struct.LIST, %struct.LIST* %8719, i32 0, i32 1
  %8721 = load %union.rec*, %union.rec** %8720, align 8
  %8722 = bitcast %union.rec* %8721 to %struct.word_type*
  %8723 = getelementptr inbounds %struct.word_type, %struct.word_type* %8722, i32 0, i32 0
  %8724 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8723, i32 0, i64 1
  %8725 = getelementptr inbounds %struct.LIST, %struct.LIST* %8724, i32 0, i32 0
  %8726 = load %union.rec*, %union.rec** %8725, align 8
  store %union.rec* %8726, %union.rec** %z, align 8
  br label %8727

; <label>:8727                                    ; preds = %8737, %8715
  %8728 = load %union.rec*, %union.rec** %z, align 8
  %8729 = bitcast %union.rec* %8728 to %struct.word_type*
  %8730 = getelementptr inbounds %struct.word_type, %struct.word_type* %8729, i32 0, i32 1
  %8731 = bitcast %union.FIRST_UNION* %8730 to %struct.anon*
  %8732 = getelementptr inbounds %struct.anon, %struct.anon* %8731, i32 0, i32 0
  %8733 = load i8, i8* %8732, align 1
  %8734 = zext i8 %8733 to i32
  %8735 = icmp eq i32 %8734, 0
  br i1 %8735, label %8736, label %8744

; <label>:8736                                    ; preds = %8727
  br label %8737

; <label>:8737                                    ; preds = %8736
  %8738 = load %union.rec*, %union.rec** %z, align 8
  %8739 = bitcast %union.rec* %8738 to %struct.word_type*
  %8740 = getelementptr inbounds %struct.word_type, %struct.word_type* %8739, i32 0, i32 0
  %8741 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8740, i32 0, i64 1
  %8742 = getelementptr inbounds %struct.LIST, %struct.LIST* %8741, i32 0, i32 0
  %8743 = load %union.rec*, %union.rec** %8742, align 8
  store %union.rec* %8743, %union.rec** %z, align 8
  br label %8727

; <label>:8744                                    ; preds = %8727
  %8745 = load %union.rec*, %union.rec** %z, align 8
  %8746 = bitcast %union.rec* %8745 to %struct.head_type*
  %8747 = getelementptr inbounds %struct.head_type, %struct.head_type* %8746, i32 0, i32 8
  %8748 = load %union.rec*, %union.rec** %8747, align 8
  %8749 = icmp ne %union.rec* %8748, null
  br i1 %8749, label %8750, label %8756

; <label>:8750                                    ; preds = %8744
  %8751 = load %union.rec*, %union.rec** %z, align 8
  %8752 = load %union.rec*, %union.rec** %y, align 8
  %8753 = bitcast %union.rec* %8752 to %struct.closure_type*
  %8754 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8753, i32 0, i32 5
  %8755 = load %union.rec*, %union.rec** %8754, align 8
  call void @GazumpOptimize(%union.rec* %8751, %union.rec* %8755)
  br label %8756

; <label>:8756                                    ; preds = %8750, %8744
  %8757 = load %union.rec*, %union.rec** %z, align 8
  call void @DetachGalley(%union.rec* %8757)
  br label %8758

; <label>:8758                                    ; preds = %8756, %8700
  br label %11

; <label>:8759                                    ; preds = %8289, %8280
  br label %8760

; <label>:8760                                    ; preds = %8759
  %8761 = load %union.rec*, %union.rec** %y, align 8
  %8762 = bitcast %union.rec* %8761 to %struct.word_type*
  %8763 = getelementptr inbounds %struct.word_type, %struct.word_type* %8762, i32 0, i32 2
  %8764 = bitcast %union.SECOND_UNION* %8763 to %struct.anon.2*
  %8765 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8764, i32 0, i32 2
  %8766 = load i16, i16* %8765, align 2
  %8767 = and i16 %8766, -33
  %8768 = or i16 %8767, 32
  store i16 %8768, i16* %8765, align 2
  %8769 = load i32, i32* %prnt_flush, align 4
  %8770 = load %union.rec*, %union.rec** %dest_index, align 8
  call void @ParentFlush(i32 %8769, %union.rec* %8770, i32 0)
  br label %8771

; <label>:8771                                    ; preds = %8760, %3340, %377, %259, %130, %121, %112, %72
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare i32 @AttachGalley(%union.rec*, %union.rec**, %union.rec**) #1

; Function Attrs: nounwind uwtable
define internal void @ParentFlush(i32 %prnt_flush, %union.rec* %dest_index, i32 %kill) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.rec*, align 8
  %3 = alloca i32, align 4
  %prnt = alloca %union.rec*, align 8
  store i32 %prnt_flush, i32* %1, align 4
  store %union.rec* %dest_index, %union.rec** %2, align 8
  store i32 %kill, i32* %3, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %447

; <label>:6                                       ; preds = %0
  %7 = load %union.rec*, %union.rec** %2, align 8
  %8 = bitcast %union.rec* %7 to %struct.word_type*
  %9 = getelementptr inbounds %struct.word_type, %struct.word_type* %8, i32 0, i32 0
  %10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9, i32 0, i64 1
  %11 = getelementptr inbounds %struct.LIST, %struct.LIST* %10, i32 0, i32 1
  %12 = load %union.rec*, %union.rec** %11, align 8
  %13 = bitcast %union.rec* %12 to %struct.word_type*
  %14 = getelementptr inbounds %struct.word_type, %struct.word_type* %13, i32 0, i32 0
  %15 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %14, i32 0, i64 0
  %16 = getelementptr inbounds %struct.LIST, %struct.LIST* %15, i32 0, i32 0
  %17 = load %union.rec*, %union.rec** %16, align 8
  store %union.rec* %17, %union.rec** %prnt, align 8
  br label %18

; <label>:18                                      ; preds = %28, %6
  %19 = load %union.rec*, %union.rec** %prnt, align 8
  %20 = bitcast %union.rec* %19 to %struct.word_type*
  %21 = getelementptr inbounds %struct.word_type, %struct.word_type* %20, i32 0, i32 1
  %22 = bitcast %union.FIRST_UNION* %21 to %struct.anon*
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

; <label>:27                                      ; preds = %18
  br label %28

; <label>:28                                      ; preds = %27
  %29 = load %union.rec*, %union.rec** %prnt, align 8
  %30 = bitcast %union.rec* %29 to %struct.word_type*
  %31 = getelementptr inbounds %struct.word_type, %struct.word_type* %30, i32 0, i32 0
  %32 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %31, i32 0, i64 0
  %33 = getelementptr inbounds %struct.LIST, %struct.LIST* %32, i32 0, i32 0
  %34 = load %union.rec*, %union.rec** %33, align 8
  store %union.rec* %34, %union.rec** %prnt, align 8
  br label %18

; <label>:35                                      ; preds = %18
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %445

; <label>:38                                      ; preds = %35
  %39 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %39, %union.rec** @xx_hold, align 8
  br label %40

; <label>:40                                      ; preds = %200, %38
  %41 = load %union.rec*, %union.rec** @xx_hold, align 8
  %42 = bitcast %union.rec* %41 to %struct.word_type*
  %43 = getelementptr inbounds %struct.word_type, %struct.word_type* %42, i32 0, i32 0
  %44 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %43, i32 0, i64 1
  %45 = getelementptr inbounds %struct.LIST, %struct.LIST* %44, i32 0, i32 1
  %46 = load %union.rec*, %union.rec** %45, align 8
  %47 = load %union.rec*, %union.rec** @xx_hold, align 8
  %48 = icmp ne %union.rec* %46, %47
  br i1 %48, label %49, label %215

; <label>:49                                      ; preds = %40
  %50 = load %union.rec*, %union.rec** @xx_hold, align 8
  %51 = bitcast %union.rec* %50 to %struct.word_type*
  %52 = getelementptr inbounds %struct.word_type, %struct.word_type* %51, i32 0, i32 0
  %53 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %52, i32 0, i64 1
  %54 = getelementptr inbounds %struct.LIST, %struct.LIST* %53, i32 0, i32 1
  %55 = load %union.rec*, %union.rec** %54, align 8
  store %union.rec* %55, %union.rec** @xx_link, align 8
  %56 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %56, %union.rec** @zz_hold, align 8
  %57 = load %union.rec*, %union.rec** @zz_hold, align 8
  %58 = bitcast %union.rec* %57 to %struct.word_type*
  %59 = getelementptr inbounds %struct.word_type, %struct.word_type* %58, i32 0, i32 0
  %60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %59, i32 0, i64 1
  %61 = getelementptr inbounds %struct.LIST, %struct.LIST* %60, i32 0, i32 1
  %62 = load %union.rec*, %union.rec** %61, align 8
  %63 = load %union.rec*, %union.rec** @zz_hold, align 8
  %64 = icmp eq %union.rec* %62, %63
  br i1 %64, label %65, label %66

; <label>:65                                      ; preds = %49
  br label %107

; <label>:66                                      ; preds = %49
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  %68 = bitcast %union.rec* %67 to %struct.word_type*
  %69 = getelementptr inbounds %struct.word_type, %struct.word_type* %68, i32 0, i32 0
  %70 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %69, i32 0, i64 1
  %71 = getelementptr inbounds %struct.LIST, %struct.LIST* %70, i32 0, i32 1
  %72 = load %union.rec*, %union.rec** %71, align 8
  store %union.rec* %72, %union.rec** @zz_res, align 8
  %73 = load %union.rec*, %union.rec** @zz_hold, align 8
  %74 = bitcast %union.rec* %73 to %struct.word_type*
  %75 = getelementptr inbounds %struct.word_type, %struct.word_type* %74, i32 0, i32 0
  %76 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %75, i32 0, i64 1
  %77 = getelementptr inbounds %struct.LIST, %struct.LIST* %76, i32 0, i32 0
  %78 = load %union.rec*, %union.rec** %77, align 8
  %79 = load %union.rec*, %union.rec** @zz_res, align 8
  %80 = bitcast %union.rec* %79 to %struct.word_type*
  %81 = getelementptr inbounds %struct.word_type, %struct.word_type* %80, i32 0, i32 0
  %82 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %81, i32 0, i64 1
  %83 = getelementptr inbounds %struct.LIST, %struct.LIST* %82, i32 0, i32 0
  store %union.rec* %78, %union.rec** %83, align 8
  %84 = load %union.rec*, %union.rec** @zz_res, align 8
  %85 = load %union.rec*, %union.rec** @zz_hold, align 8
  %86 = bitcast %union.rec* %85 to %struct.word_type*
  %87 = getelementptr inbounds %struct.word_type, %struct.word_type* %86, i32 0, i32 0
  %88 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %87, i32 0, i64 1
  %89 = getelementptr inbounds %struct.LIST, %struct.LIST* %88, i32 0, i32 0
  %90 = load %union.rec*, %union.rec** %89, align 8
  %91 = bitcast %union.rec* %90 to %struct.word_type*
  %92 = getelementptr inbounds %struct.word_type, %struct.word_type* %91, i32 0, i32 0
  %93 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %92, i32 0, i64 1
  %94 = getelementptr inbounds %struct.LIST, %struct.LIST* %93, i32 0, i32 1
  store %union.rec* %84, %union.rec** %94, align 8
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  %96 = load %union.rec*, %union.rec** @zz_hold, align 8
  %97 = bitcast %union.rec* %96 to %struct.word_type*
  %98 = getelementptr inbounds %struct.word_type, %struct.word_type* %97, i32 0, i32 0
  %99 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %98, i32 0, i64 1
  %100 = getelementptr inbounds %struct.LIST, %struct.LIST* %99, i32 0, i32 1
  store %union.rec* %95, %union.rec** %100, align 8
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %102 = bitcast %union.rec* %101 to %struct.word_type*
  %103 = getelementptr inbounds %struct.word_type, %struct.word_type* %102, i32 0, i32 0
  %104 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %103, i32 0, i64 1
  %105 = getelementptr inbounds %struct.LIST, %struct.LIST* %104, i32 0, i32 0
  store %union.rec* %95, %union.rec** %105, align 8
  %106 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %107

; <label>:107                                     ; preds = %66, %65
  %108 = phi %union.rec* [ null, %65 ], [ %106, %66 ]
  %109 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %109, %union.rec** @zz_hold, align 8
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %111 = bitcast %union.rec* %110 to %struct.word_type*
  %112 = getelementptr inbounds %struct.word_type, %struct.word_type* %111, i32 0, i32 0
  %113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %112, i32 0, i64 0
  %114 = getelementptr inbounds %struct.LIST, %struct.LIST* %113, i32 0, i32 1
  %115 = load %union.rec*, %union.rec** %114, align 8
  %116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %117 = icmp eq %union.rec* %115, %116
  br i1 %117, label %118, label %119

; <label>:118                                     ; preds = %107
  br label %160

; <label>:119                                     ; preds = %107
  %120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %121 = bitcast %union.rec* %120 to %struct.word_type*
  %122 = getelementptr inbounds %struct.word_type, %struct.word_type* %121, i32 0, i32 0
  %123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %122, i32 0, i64 0
  %124 = getelementptr inbounds %struct.LIST, %struct.LIST* %123, i32 0, i32 1
  %125 = load %union.rec*, %union.rec** %124, align 8
  store %union.rec* %125, %union.rec** @zz_res, align 8
  %126 = load %union.rec*, %union.rec** @zz_hold, align 8
  %127 = bitcast %union.rec* %126 to %struct.word_type*
  %128 = getelementptr inbounds %struct.word_type, %struct.word_type* %127, i32 0, i32 0
  %129 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %128, i32 0, i64 0
  %130 = getelementptr inbounds %struct.LIST, %struct.LIST* %129, i32 0, i32 0
  %131 = load %union.rec*, %union.rec** %130, align 8
  %132 = load %union.rec*, %union.rec** @zz_res, align 8
  %133 = bitcast %union.rec* %132 to %struct.word_type*
  %134 = getelementptr inbounds %struct.word_type, %struct.word_type* %133, i32 0, i32 0
  %135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %134, i32 0, i64 0
  %136 = getelementptr inbounds %struct.LIST, %struct.LIST* %135, i32 0, i32 0
  store %union.rec* %131, %union.rec** %136, align 8
  %137 = load %union.rec*, %union.rec** @zz_res, align 8
  %138 = load %union.rec*, %union.rec** @zz_hold, align 8
  %139 = bitcast %union.rec* %138 to %struct.word_type*
  %140 = getelementptr inbounds %struct.word_type, %struct.word_type* %139, i32 0, i32 0
  %141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %140, i32 0, i64 0
  %142 = getelementptr inbounds %struct.LIST, %struct.LIST* %141, i32 0, i32 0
  %143 = load %union.rec*, %union.rec** %142, align 8
  %144 = bitcast %union.rec* %143 to %struct.word_type*
  %145 = getelementptr inbounds %struct.word_type, %struct.word_type* %144, i32 0, i32 0
  %146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %145, i32 0, i64 0
  %147 = getelementptr inbounds %struct.LIST, %struct.LIST* %146, i32 0, i32 1
  store %union.rec* %137, %union.rec** %147, align 8
  %148 = load %union.rec*, %union.rec** @zz_hold, align 8
  %149 = load %union.rec*, %union.rec** @zz_hold, align 8
  %150 = bitcast %union.rec* %149 to %struct.word_type*
  %151 = getelementptr inbounds %struct.word_type, %struct.word_type* %150, i32 0, i32 0
  %152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %151, i32 0, i64 0
  %153 = getelementptr inbounds %struct.LIST, %struct.LIST* %152, i32 0, i32 1
  store %union.rec* %148, %union.rec** %153, align 8
  %154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %155 = bitcast %union.rec* %154 to %struct.word_type*
  %156 = getelementptr inbounds %struct.word_type, %struct.word_type* %155, i32 0, i32 0
  %157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %156, i32 0, i64 0
  %158 = getelementptr inbounds %struct.LIST, %struct.LIST* %157, i32 0, i32 0
  store %union.rec* %148, %union.rec** %158, align 8
  %159 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %160

; <label>:160                                     ; preds = %119, %118
  %161 = phi %union.rec* [ null, %118 ], [ %159, %119 ]
  %162 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %162, %union.rec** @zz_hold, align 8
  %163 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %163, %union.rec** @zz_hold, align 8
  %164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %165 = bitcast %union.rec* %164 to %struct.word_type*
  %166 = getelementptr inbounds %struct.word_type, %struct.word_type* %165, i32 0, i32 1
  %167 = bitcast %union.FIRST_UNION* %166 to %struct.anon*
  %168 = getelementptr inbounds %struct.anon, %struct.anon* %167, i32 0, i32 0
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = icmp eq i32 %170, 11
  br i1 %171, label %181, label %172

; <label>:172                                     ; preds = %160
  %173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %174 = bitcast %union.rec* %173 to %struct.word_type*
  %175 = getelementptr inbounds %struct.word_type, %struct.word_type* %174, i32 0, i32 1
  %176 = bitcast %union.FIRST_UNION* %175 to %struct.anon*
  %177 = getelementptr inbounds %struct.anon, %struct.anon* %176, i32 0, i32 0
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = icmp eq i32 %179, 12
  br i1 %180, label %181, label %189

; <label>:181                                     ; preds = %172, %160
  %182 = load %union.rec*, %union.rec** @zz_hold, align 8
  %183 = bitcast %union.rec* %182 to %struct.word_type*
  %184 = getelementptr inbounds %struct.word_type, %struct.word_type* %183, i32 0, i32 1
  %185 = bitcast %union.FIRST_UNION* %184 to %struct.anon*
  %186 = getelementptr inbounds %struct.anon, %struct.anon* %185, i32 0, i32 1
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  br label %200

; <label>:189                                     ; preds = %172
  %190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %191 = bitcast %union.rec* %190 to %struct.word_type*
  %192 = getelementptr inbounds %struct.word_type, %struct.word_type* %191, i32 0, i32 1
  %193 = bitcast %union.FIRST_UNION* %192 to %struct.anon*
  %194 = getelementptr inbounds %struct.anon, %struct.anon* %193, i32 0, i32 0
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i64
  %197 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  br label %200

; <label>:200                                     ; preds = %189, %181
  %201 = phi i32 [ %188, %181 ], [ %199, %189 ]
  store i32 %201, i32* @zz_size, align 4
  %202 = load i32, i32* @zz_size, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %203
  %205 = load %union.rec*, %union.rec** %204, align 8
  %206 = load %union.rec*, %union.rec** @zz_hold, align 8
  %207 = bitcast %union.rec* %206 to %struct.word_type*
  %208 = getelementptr inbounds %struct.word_type, %struct.word_type* %207, i32 0, i32 0
  %209 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %208, i32 0, i64 0
  %210 = getelementptr inbounds %struct.LIST, %struct.LIST* %209, i32 0, i32 0
  store %union.rec* %205, %union.rec** %210, align 8
  %211 = load %union.rec*, %union.rec** @zz_hold, align 8
  %212 = load i32, i32* @zz_size, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %213
  store %union.rec* %211, %union.rec** %214, align 8
  br label %40

; <label>:215                                     ; preds = %40
  br label %216

; <label>:216                                     ; preds = %376, %215
  %217 = load %union.rec*, %union.rec** @xx_hold, align 8
  %218 = bitcast %union.rec* %217 to %struct.word_type*
  %219 = getelementptr inbounds %struct.word_type, %struct.word_type* %218, i32 0, i32 0
  %220 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %219, i32 0, i64 0
  %221 = getelementptr inbounds %struct.LIST, %struct.LIST* %220, i32 0, i32 1
  %222 = load %union.rec*, %union.rec** %221, align 8
  %223 = load %union.rec*, %union.rec** @xx_hold, align 8
  %224 = icmp ne %union.rec* %222, %223
  br i1 %224, label %225, label %391

; <label>:225                                     ; preds = %216
  %226 = load %union.rec*, %union.rec** @xx_hold, align 8
  %227 = bitcast %union.rec* %226 to %struct.word_type*
  %228 = getelementptr inbounds %struct.word_type, %struct.word_type* %227, i32 0, i32 0
  %229 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %228, i32 0, i64 0
  %230 = getelementptr inbounds %struct.LIST, %struct.LIST* %229, i32 0, i32 1
  %231 = load %union.rec*, %union.rec** %230, align 8
  store %union.rec* %231, %union.rec** @xx_link, align 8
  %232 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %232, %union.rec** @zz_hold, align 8
  %233 = load %union.rec*, %union.rec** @zz_hold, align 8
  %234 = bitcast %union.rec* %233 to %struct.word_type*
  %235 = getelementptr inbounds %struct.word_type, %struct.word_type* %234, i32 0, i32 0
  %236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %235, i32 0, i64 1
  %237 = getelementptr inbounds %struct.LIST, %struct.LIST* %236, i32 0, i32 1
  %238 = load %union.rec*, %union.rec** %237, align 8
  %239 = load %union.rec*, %union.rec** @zz_hold, align 8
  %240 = icmp eq %union.rec* %238, %239
  br i1 %240, label %241, label %242

; <label>:241                                     ; preds = %225
  br label %283

; <label>:242                                     ; preds = %225
  %243 = load %union.rec*, %union.rec** @zz_hold, align 8
  %244 = bitcast %union.rec* %243 to %struct.word_type*
  %245 = getelementptr inbounds %struct.word_type, %struct.word_type* %244, i32 0, i32 0
  %246 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %245, i32 0, i64 1
  %247 = getelementptr inbounds %struct.LIST, %struct.LIST* %246, i32 0, i32 1
  %248 = load %union.rec*, %union.rec** %247, align 8
  store %union.rec* %248, %union.rec** @zz_res, align 8
  %249 = load %union.rec*, %union.rec** @zz_hold, align 8
  %250 = bitcast %union.rec* %249 to %struct.word_type*
  %251 = getelementptr inbounds %struct.word_type, %struct.word_type* %250, i32 0, i32 0
  %252 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %251, i32 0, i64 1
  %253 = getelementptr inbounds %struct.LIST, %struct.LIST* %252, i32 0, i32 0
  %254 = load %union.rec*, %union.rec** %253, align 8
  %255 = load %union.rec*, %union.rec** @zz_res, align 8
  %256 = bitcast %union.rec* %255 to %struct.word_type*
  %257 = getelementptr inbounds %struct.word_type, %struct.word_type* %256, i32 0, i32 0
  %258 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %257, i32 0, i64 1
  %259 = getelementptr inbounds %struct.LIST, %struct.LIST* %258, i32 0, i32 0
  store %union.rec* %254, %union.rec** %259, align 8
  %260 = load %union.rec*, %union.rec** @zz_res, align 8
  %261 = load %union.rec*, %union.rec** @zz_hold, align 8
  %262 = bitcast %union.rec* %261 to %struct.word_type*
  %263 = getelementptr inbounds %struct.word_type, %struct.word_type* %262, i32 0, i32 0
  %264 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %263, i32 0, i64 1
  %265 = getelementptr inbounds %struct.LIST, %struct.LIST* %264, i32 0, i32 0
  %266 = load %union.rec*, %union.rec** %265, align 8
  %267 = bitcast %union.rec* %266 to %struct.word_type*
  %268 = getelementptr inbounds %struct.word_type, %struct.word_type* %267, i32 0, i32 0
  %269 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %268, i32 0, i64 1
  %270 = getelementptr inbounds %struct.LIST, %struct.LIST* %269, i32 0, i32 1
  store %union.rec* %260, %union.rec** %270, align 8
  %271 = load %union.rec*, %union.rec** @zz_hold, align 8
  %272 = load %union.rec*, %union.rec** @zz_hold, align 8
  %273 = bitcast %union.rec* %272 to %struct.word_type*
  %274 = getelementptr inbounds %struct.word_type, %struct.word_type* %273, i32 0, i32 0
  %275 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %274, i32 0, i64 1
  %276 = getelementptr inbounds %struct.LIST, %struct.LIST* %275, i32 0, i32 1
  store %union.rec* %271, %union.rec** %276, align 8
  %277 = load %union.rec*, %union.rec** @zz_hold, align 8
  %278 = bitcast %union.rec* %277 to %struct.word_type*
  %279 = getelementptr inbounds %struct.word_type, %struct.word_type* %278, i32 0, i32 0
  %280 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %279, i32 0, i64 1
  %281 = getelementptr inbounds %struct.LIST, %struct.LIST* %280, i32 0, i32 0
  store %union.rec* %271, %union.rec** %281, align 8
  %282 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %283

; <label>:283                                     ; preds = %242, %241
  %284 = phi %union.rec* [ null, %241 ], [ %282, %242 ]
  %285 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %285, %union.rec** @zz_hold, align 8
  %286 = load %union.rec*, %union.rec** @zz_hold, align 8
  %287 = bitcast %union.rec* %286 to %struct.word_type*
  %288 = getelementptr inbounds %struct.word_type, %struct.word_type* %287, i32 0, i32 0
  %289 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %288, i32 0, i64 0
  %290 = getelementptr inbounds %struct.LIST, %struct.LIST* %289, i32 0, i32 1
  %291 = load %union.rec*, %union.rec** %290, align 8
  %292 = load %union.rec*, %union.rec** @zz_hold, align 8
  %293 = icmp eq %union.rec* %291, %292
  br i1 %293, label %294, label %295

; <label>:294                                     ; preds = %283
  br label %336

; <label>:295                                     ; preds = %283
  %296 = load %union.rec*, %union.rec** @zz_hold, align 8
  %297 = bitcast %union.rec* %296 to %struct.word_type*
  %298 = getelementptr inbounds %struct.word_type, %struct.word_type* %297, i32 0, i32 0
  %299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %298, i32 0, i64 0
  %300 = getelementptr inbounds %struct.LIST, %struct.LIST* %299, i32 0, i32 1
  %301 = load %union.rec*, %union.rec** %300, align 8
  store %union.rec* %301, %union.rec** @zz_res, align 8
  %302 = load %union.rec*, %union.rec** @zz_hold, align 8
  %303 = bitcast %union.rec* %302 to %struct.word_type*
  %304 = getelementptr inbounds %struct.word_type, %struct.word_type* %303, i32 0, i32 0
  %305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %304, i32 0, i64 0
  %306 = getelementptr inbounds %struct.LIST, %struct.LIST* %305, i32 0, i32 0
  %307 = load %union.rec*, %union.rec** %306, align 8
  %308 = load %union.rec*, %union.rec** @zz_res, align 8
  %309 = bitcast %union.rec* %308 to %struct.word_type*
  %310 = getelementptr inbounds %struct.word_type, %struct.word_type* %309, i32 0, i32 0
  %311 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %310, i32 0, i64 0
  %312 = getelementptr inbounds %struct.LIST, %struct.LIST* %311, i32 0, i32 0
  store %union.rec* %307, %union.rec** %312, align 8
  %313 = load %union.rec*, %union.rec** @zz_res, align 8
  %314 = load %union.rec*, %union.rec** @zz_hold, align 8
  %315 = bitcast %union.rec* %314 to %struct.word_type*
  %316 = getelementptr inbounds %struct.word_type, %struct.word_type* %315, i32 0, i32 0
  %317 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %316, i32 0, i64 0
  %318 = getelementptr inbounds %struct.LIST, %struct.LIST* %317, i32 0, i32 0
  %319 = load %union.rec*, %union.rec** %318, align 8
  %320 = bitcast %union.rec* %319 to %struct.word_type*
  %321 = getelementptr inbounds %struct.word_type, %struct.word_type* %320, i32 0, i32 0
  %322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %321, i32 0, i64 0
  %323 = getelementptr inbounds %struct.LIST, %struct.LIST* %322, i32 0, i32 1
  store %union.rec* %313, %union.rec** %323, align 8
  %324 = load %union.rec*, %union.rec** @zz_hold, align 8
  %325 = load %union.rec*, %union.rec** @zz_hold, align 8
  %326 = bitcast %union.rec* %325 to %struct.word_type*
  %327 = getelementptr inbounds %struct.word_type, %struct.word_type* %326, i32 0, i32 0
  %328 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %327, i32 0, i64 0
  %329 = getelementptr inbounds %struct.LIST, %struct.LIST* %328, i32 0, i32 1
  store %union.rec* %324, %union.rec** %329, align 8
  %330 = load %union.rec*, %union.rec** @zz_hold, align 8
  %331 = bitcast %union.rec* %330 to %struct.word_type*
  %332 = getelementptr inbounds %struct.word_type, %struct.word_type* %331, i32 0, i32 0
  %333 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %332, i32 0, i64 0
  %334 = getelementptr inbounds %struct.LIST, %struct.LIST* %333, i32 0, i32 0
  store %union.rec* %324, %union.rec** %334, align 8
  %335 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %336

; <label>:336                                     ; preds = %295, %294
  %337 = phi %union.rec* [ null, %294 ], [ %335, %295 ]
  %338 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %338, %union.rec** @zz_hold, align 8
  %339 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %339, %union.rec** @zz_hold, align 8
  %340 = load %union.rec*, %union.rec** @zz_hold, align 8
  %341 = bitcast %union.rec* %340 to %struct.word_type*
  %342 = getelementptr inbounds %struct.word_type, %struct.word_type* %341, i32 0, i32 1
  %343 = bitcast %union.FIRST_UNION* %342 to %struct.anon*
  %344 = getelementptr inbounds %struct.anon, %struct.anon* %343, i32 0, i32 0
  %345 = load i8, i8* %344, align 1
  %346 = zext i8 %345 to i32
  %347 = icmp eq i32 %346, 11
  br i1 %347, label %357, label %348

; <label>:348                                     ; preds = %336
  %349 = load %union.rec*, %union.rec** @zz_hold, align 8
  %350 = bitcast %union.rec* %349 to %struct.word_type*
  %351 = getelementptr inbounds %struct.word_type, %struct.word_type* %350, i32 0, i32 1
  %352 = bitcast %union.FIRST_UNION* %351 to %struct.anon*
  %353 = getelementptr inbounds %struct.anon, %struct.anon* %352, i32 0, i32 0
  %354 = load i8, i8* %353, align 1
  %355 = zext i8 %354 to i32
  %356 = icmp eq i32 %355, 12
  br i1 %356, label %357, label %365

; <label>:357                                     ; preds = %348, %336
  %358 = load %union.rec*, %union.rec** @zz_hold, align 8
  %359 = bitcast %union.rec* %358 to %struct.word_type*
  %360 = getelementptr inbounds %struct.word_type, %struct.word_type* %359, i32 0, i32 1
  %361 = bitcast %union.FIRST_UNION* %360 to %struct.anon*
  %362 = getelementptr inbounds %struct.anon, %struct.anon* %361, i32 0, i32 1
  %363 = load i8, i8* %362, align 1
  %364 = zext i8 %363 to i32
  br label %376

; <label>:365                                     ; preds = %348
  %366 = load %union.rec*, %union.rec** @zz_hold, align 8
  %367 = bitcast %union.rec* %366 to %struct.word_type*
  %368 = getelementptr inbounds %struct.word_type, %struct.word_type* %367, i32 0, i32 1
  %369 = bitcast %union.FIRST_UNION* %368 to %struct.anon*
  %370 = getelementptr inbounds %struct.anon, %struct.anon* %369, i32 0, i32 0
  %371 = load i8, i8* %370, align 1
  %372 = zext i8 %371 to i64
  %373 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %372
  %374 = load i8, i8* %373, align 1
  %375 = zext i8 %374 to i32
  br label %376

; <label>:376                                     ; preds = %365, %357
  %377 = phi i32 [ %364, %357 ], [ %375, %365 ]
  store i32 %377, i32* @zz_size, align 4
  %378 = load i32, i32* @zz_size, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %379
  %381 = load %union.rec*, %union.rec** %380, align 8
  %382 = load %union.rec*, %union.rec** @zz_hold, align 8
  %383 = bitcast %union.rec* %382 to %struct.word_type*
  %384 = getelementptr inbounds %struct.word_type, %struct.word_type* %383, i32 0, i32 0
  %385 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %384, i32 0, i64 0
  %386 = getelementptr inbounds %struct.LIST, %struct.LIST* %385, i32 0, i32 0
  store %union.rec* %381, %union.rec** %386, align 8
  %387 = load %union.rec*, %union.rec** @zz_hold, align 8
  %388 = load i32, i32* @zz_size, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %389
  store %union.rec* %387, %union.rec** %390, align 8
  br label %216

; <label>:391                                     ; preds = %216
  %392 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %392, %union.rec** @zz_hold, align 8
  %393 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %393, %union.rec** @zz_hold, align 8
  %394 = load %union.rec*, %union.rec** @zz_hold, align 8
  %395 = bitcast %union.rec* %394 to %struct.word_type*
  %396 = getelementptr inbounds %struct.word_type, %struct.word_type* %395, i32 0, i32 1
  %397 = bitcast %union.FIRST_UNION* %396 to %struct.anon*
  %398 = getelementptr inbounds %struct.anon, %struct.anon* %397, i32 0, i32 0
  %399 = load i8, i8* %398, align 1
  %400 = zext i8 %399 to i32
  %401 = icmp eq i32 %400, 11
  br i1 %401, label %411, label %402

; <label>:402                                     ; preds = %391
  %403 = load %union.rec*, %union.rec** @zz_hold, align 8
  %404 = bitcast %union.rec* %403 to %struct.word_type*
  %405 = getelementptr inbounds %struct.word_type, %struct.word_type* %404, i32 0, i32 1
  %406 = bitcast %union.FIRST_UNION* %405 to %struct.anon*
  %407 = getelementptr inbounds %struct.anon, %struct.anon* %406, i32 0, i32 0
  %408 = load i8, i8* %407, align 1
  %409 = zext i8 %408 to i32
  %410 = icmp eq i32 %409, 12
  br i1 %410, label %411, label %419

; <label>:411                                     ; preds = %402, %391
  %412 = load %union.rec*, %union.rec** @zz_hold, align 8
  %413 = bitcast %union.rec* %412 to %struct.word_type*
  %414 = getelementptr inbounds %struct.word_type, %struct.word_type* %413, i32 0, i32 1
  %415 = bitcast %union.FIRST_UNION* %414 to %struct.anon*
  %416 = getelementptr inbounds %struct.anon, %struct.anon* %415, i32 0, i32 1
  %417 = load i8, i8* %416, align 1
  %418 = zext i8 %417 to i32
  br label %430

; <label>:419                                     ; preds = %402
  %420 = load %union.rec*, %union.rec** @zz_hold, align 8
  %421 = bitcast %union.rec* %420 to %struct.word_type*
  %422 = getelementptr inbounds %struct.word_type, %struct.word_type* %421, i32 0, i32 1
  %423 = bitcast %union.FIRST_UNION* %422 to %struct.anon*
  %424 = getelementptr inbounds %struct.anon, %struct.anon* %423, i32 0, i32 0
  %425 = load i8, i8* %424, align 1
  %426 = zext i8 %425 to i64
  %427 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %426
  %428 = load i8, i8* %427, align 1
  %429 = zext i8 %428 to i32
  br label %430

; <label>:430                                     ; preds = %419, %411
  %431 = phi i32 [ %418, %411 ], [ %429, %419 ]
  store i32 %431, i32* @zz_size, align 4
  %432 = load i32, i32* @zz_size, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %433
  %435 = load %union.rec*, %union.rec** %434, align 8
  %436 = load %union.rec*, %union.rec** @zz_hold, align 8
  %437 = bitcast %union.rec* %436 to %struct.word_type*
  %438 = getelementptr inbounds %struct.word_type, %struct.word_type* %437, i32 0, i32 0
  %439 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %438, i32 0, i64 0
  %440 = getelementptr inbounds %struct.LIST, %struct.LIST* %439, i32 0, i32 0
  store %union.rec* %435, %union.rec** %440, align 8
  %441 = load %union.rec*, %union.rec** @zz_hold, align 8
  %442 = load i32, i32* @zz_size, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %443
  store %union.rec* %441, %union.rec** %444, align 8
  br label %445

; <label>:445                                     ; preds = %430, %35
  %446 = load %union.rec*, %union.rec** %prnt, align 8
  call void @FlushGalley(%union.rec* %446)
  br label %858

; <label>:447                                     ; preds = %0
  %448 = load i32, i32* %3, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %857

; <label>:450                                     ; preds = %447
  %451 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %451, %union.rec** @xx_hold, align 8
  br label %452

; <label>:452                                     ; preds = %612, %450
  %453 = load %union.rec*, %union.rec** @xx_hold, align 8
  %454 = bitcast %union.rec* %453 to %struct.word_type*
  %455 = getelementptr inbounds %struct.word_type, %struct.word_type* %454, i32 0, i32 0
  %456 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %455, i32 0, i64 1
  %457 = getelementptr inbounds %struct.LIST, %struct.LIST* %456, i32 0, i32 1
  %458 = load %union.rec*, %union.rec** %457, align 8
  %459 = load %union.rec*, %union.rec** @xx_hold, align 8
  %460 = icmp ne %union.rec* %458, %459
  br i1 %460, label %461, label %627

; <label>:461                                     ; preds = %452
  %462 = load %union.rec*, %union.rec** @xx_hold, align 8
  %463 = bitcast %union.rec* %462 to %struct.word_type*
  %464 = getelementptr inbounds %struct.word_type, %struct.word_type* %463, i32 0, i32 0
  %465 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %464, i32 0, i64 1
  %466 = getelementptr inbounds %struct.LIST, %struct.LIST* %465, i32 0, i32 1
  %467 = load %union.rec*, %union.rec** %466, align 8
  store %union.rec* %467, %union.rec** @xx_link, align 8
  %468 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %468, %union.rec** @zz_hold, align 8
  %469 = load %union.rec*, %union.rec** @zz_hold, align 8
  %470 = bitcast %union.rec* %469 to %struct.word_type*
  %471 = getelementptr inbounds %struct.word_type, %struct.word_type* %470, i32 0, i32 0
  %472 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %471, i32 0, i64 1
  %473 = getelementptr inbounds %struct.LIST, %struct.LIST* %472, i32 0, i32 1
  %474 = load %union.rec*, %union.rec** %473, align 8
  %475 = load %union.rec*, %union.rec** @zz_hold, align 8
  %476 = icmp eq %union.rec* %474, %475
  br i1 %476, label %477, label %478

; <label>:477                                     ; preds = %461
  br label %519

; <label>:478                                     ; preds = %461
  %479 = load %union.rec*, %union.rec** @zz_hold, align 8
  %480 = bitcast %union.rec* %479 to %struct.word_type*
  %481 = getelementptr inbounds %struct.word_type, %struct.word_type* %480, i32 0, i32 0
  %482 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %481, i32 0, i64 1
  %483 = getelementptr inbounds %struct.LIST, %struct.LIST* %482, i32 0, i32 1
  %484 = load %union.rec*, %union.rec** %483, align 8
  store %union.rec* %484, %union.rec** @zz_res, align 8
  %485 = load %union.rec*, %union.rec** @zz_hold, align 8
  %486 = bitcast %union.rec* %485 to %struct.word_type*
  %487 = getelementptr inbounds %struct.word_type, %struct.word_type* %486, i32 0, i32 0
  %488 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %487, i32 0, i64 1
  %489 = getelementptr inbounds %struct.LIST, %struct.LIST* %488, i32 0, i32 0
  %490 = load %union.rec*, %union.rec** %489, align 8
  %491 = load %union.rec*, %union.rec** @zz_res, align 8
  %492 = bitcast %union.rec* %491 to %struct.word_type*
  %493 = getelementptr inbounds %struct.word_type, %struct.word_type* %492, i32 0, i32 0
  %494 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %493, i32 0, i64 1
  %495 = getelementptr inbounds %struct.LIST, %struct.LIST* %494, i32 0, i32 0
  store %union.rec* %490, %union.rec** %495, align 8
  %496 = load %union.rec*, %union.rec** @zz_res, align 8
  %497 = load %union.rec*, %union.rec** @zz_hold, align 8
  %498 = bitcast %union.rec* %497 to %struct.word_type*
  %499 = getelementptr inbounds %struct.word_type, %struct.word_type* %498, i32 0, i32 0
  %500 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %499, i32 0, i64 1
  %501 = getelementptr inbounds %struct.LIST, %struct.LIST* %500, i32 0, i32 0
  %502 = load %union.rec*, %union.rec** %501, align 8
  %503 = bitcast %union.rec* %502 to %struct.word_type*
  %504 = getelementptr inbounds %struct.word_type, %struct.word_type* %503, i32 0, i32 0
  %505 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %504, i32 0, i64 1
  %506 = getelementptr inbounds %struct.LIST, %struct.LIST* %505, i32 0, i32 1
  store %union.rec* %496, %union.rec** %506, align 8
  %507 = load %union.rec*, %union.rec** @zz_hold, align 8
  %508 = load %union.rec*, %union.rec** @zz_hold, align 8
  %509 = bitcast %union.rec* %508 to %struct.word_type*
  %510 = getelementptr inbounds %struct.word_type, %struct.word_type* %509, i32 0, i32 0
  %511 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %510, i32 0, i64 1
  %512 = getelementptr inbounds %struct.LIST, %struct.LIST* %511, i32 0, i32 1
  store %union.rec* %507, %union.rec** %512, align 8
  %513 = load %union.rec*, %union.rec** @zz_hold, align 8
  %514 = bitcast %union.rec* %513 to %struct.word_type*
  %515 = getelementptr inbounds %struct.word_type, %struct.word_type* %514, i32 0, i32 0
  %516 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %515, i32 0, i64 1
  %517 = getelementptr inbounds %struct.LIST, %struct.LIST* %516, i32 0, i32 0
  store %union.rec* %507, %union.rec** %517, align 8
  %518 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %519

; <label>:519                                     ; preds = %478, %477
  %520 = phi %union.rec* [ null, %477 ], [ %518, %478 ]
  %521 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %521, %union.rec** @zz_hold, align 8
  %522 = load %union.rec*, %union.rec** @zz_hold, align 8
  %523 = bitcast %union.rec* %522 to %struct.word_type*
  %524 = getelementptr inbounds %struct.word_type, %struct.word_type* %523, i32 0, i32 0
  %525 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %524, i32 0, i64 0
  %526 = getelementptr inbounds %struct.LIST, %struct.LIST* %525, i32 0, i32 1
  %527 = load %union.rec*, %union.rec** %526, align 8
  %528 = load %union.rec*, %union.rec** @zz_hold, align 8
  %529 = icmp eq %union.rec* %527, %528
  br i1 %529, label %530, label %531

; <label>:530                                     ; preds = %519
  br label %572

; <label>:531                                     ; preds = %519
  %532 = load %union.rec*, %union.rec** @zz_hold, align 8
  %533 = bitcast %union.rec* %532 to %struct.word_type*
  %534 = getelementptr inbounds %struct.word_type, %struct.word_type* %533, i32 0, i32 0
  %535 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %534, i32 0, i64 0
  %536 = getelementptr inbounds %struct.LIST, %struct.LIST* %535, i32 0, i32 1
  %537 = load %union.rec*, %union.rec** %536, align 8
  store %union.rec* %537, %union.rec** @zz_res, align 8
  %538 = load %union.rec*, %union.rec** @zz_hold, align 8
  %539 = bitcast %union.rec* %538 to %struct.word_type*
  %540 = getelementptr inbounds %struct.word_type, %struct.word_type* %539, i32 0, i32 0
  %541 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %540, i32 0, i64 0
  %542 = getelementptr inbounds %struct.LIST, %struct.LIST* %541, i32 0, i32 0
  %543 = load %union.rec*, %union.rec** %542, align 8
  %544 = load %union.rec*, %union.rec** @zz_res, align 8
  %545 = bitcast %union.rec* %544 to %struct.word_type*
  %546 = getelementptr inbounds %struct.word_type, %struct.word_type* %545, i32 0, i32 0
  %547 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %546, i32 0, i64 0
  %548 = getelementptr inbounds %struct.LIST, %struct.LIST* %547, i32 0, i32 0
  store %union.rec* %543, %union.rec** %548, align 8
  %549 = load %union.rec*, %union.rec** @zz_res, align 8
  %550 = load %union.rec*, %union.rec** @zz_hold, align 8
  %551 = bitcast %union.rec* %550 to %struct.word_type*
  %552 = getelementptr inbounds %struct.word_type, %struct.word_type* %551, i32 0, i32 0
  %553 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %552, i32 0, i64 0
  %554 = getelementptr inbounds %struct.LIST, %struct.LIST* %553, i32 0, i32 0
  %555 = load %union.rec*, %union.rec** %554, align 8
  %556 = bitcast %union.rec* %555 to %struct.word_type*
  %557 = getelementptr inbounds %struct.word_type, %struct.word_type* %556, i32 0, i32 0
  %558 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %557, i32 0, i64 0
  %559 = getelementptr inbounds %struct.LIST, %struct.LIST* %558, i32 0, i32 1
  store %union.rec* %549, %union.rec** %559, align 8
  %560 = load %union.rec*, %union.rec** @zz_hold, align 8
  %561 = load %union.rec*, %union.rec** @zz_hold, align 8
  %562 = bitcast %union.rec* %561 to %struct.word_type*
  %563 = getelementptr inbounds %struct.word_type, %struct.word_type* %562, i32 0, i32 0
  %564 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %563, i32 0, i64 0
  %565 = getelementptr inbounds %struct.LIST, %struct.LIST* %564, i32 0, i32 1
  store %union.rec* %560, %union.rec** %565, align 8
  %566 = load %union.rec*, %union.rec** @zz_hold, align 8
  %567 = bitcast %union.rec* %566 to %struct.word_type*
  %568 = getelementptr inbounds %struct.word_type, %struct.word_type* %567, i32 0, i32 0
  %569 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %568, i32 0, i64 0
  %570 = getelementptr inbounds %struct.LIST, %struct.LIST* %569, i32 0, i32 0
  store %union.rec* %560, %union.rec** %570, align 8
  %571 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %572

; <label>:572                                     ; preds = %531, %530
  %573 = phi %union.rec* [ null, %530 ], [ %571, %531 ]
  %574 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %574, %union.rec** @zz_hold, align 8
  %575 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %575, %union.rec** @zz_hold, align 8
  %576 = load %union.rec*, %union.rec** @zz_hold, align 8
  %577 = bitcast %union.rec* %576 to %struct.word_type*
  %578 = getelementptr inbounds %struct.word_type, %struct.word_type* %577, i32 0, i32 1
  %579 = bitcast %union.FIRST_UNION* %578 to %struct.anon*
  %580 = getelementptr inbounds %struct.anon, %struct.anon* %579, i32 0, i32 0
  %581 = load i8, i8* %580, align 1
  %582 = zext i8 %581 to i32
  %583 = icmp eq i32 %582, 11
  br i1 %583, label %593, label %584

; <label>:584                                     ; preds = %572
  %585 = load %union.rec*, %union.rec** @zz_hold, align 8
  %586 = bitcast %union.rec* %585 to %struct.word_type*
  %587 = getelementptr inbounds %struct.word_type, %struct.word_type* %586, i32 0, i32 1
  %588 = bitcast %union.FIRST_UNION* %587 to %struct.anon*
  %589 = getelementptr inbounds %struct.anon, %struct.anon* %588, i32 0, i32 0
  %590 = load i8, i8* %589, align 1
  %591 = zext i8 %590 to i32
  %592 = icmp eq i32 %591, 12
  br i1 %592, label %593, label %601

; <label>:593                                     ; preds = %584, %572
  %594 = load %union.rec*, %union.rec** @zz_hold, align 8
  %595 = bitcast %union.rec* %594 to %struct.word_type*
  %596 = getelementptr inbounds %struct.word_type, %struct.word_type* %595, i32 0, i32 1
  %597 = bitcast %union.FIRST_UNION* %596 to %struct.anon*
  %598 = getelementptr inbounds %struct.anon, %struct.anon* %597, i32 0, i32 1
  %599 = load i8, i8* %598, align 1
  %600 = zext i8 %599 to i32
  br label %612

; <label>:601                                     ; preds = %584
  %602 = load %union.rec*, %union.rec** @zz_hold, align 8
  %603 = bitcast %union.rec* %602 to %struct.word_type*
  %604 = getelementptr inbounds %struct.word_type, %struct.word_type* %603, i32 0, i32 1
  %605 = bitcast %union.FIRST_UNION* %604 to %struct.anon*
  %606 = getelementptr inbounds %struct.anon, %struct.anon* %605, i32 0, i32 0
  %607 = load i8, i8* %606, align 1
  %608 = zext i8 %607 to i64
  %609 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %608
  %610 = load i8, i8* %609, align 1
  %611 = zext i8 %610 to i32
  br label %612

; <label>:612                                     ; preds = %601, %593
  %613 = phi i32 [ %600, %593 ], [ %611, %601 ]
  store i32 %613, i32* @zz_size, align 4
  %614 = load i32, i32* @zz_size, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %615
  %617 = load %union.rec*, %union.rec** %616, align 8
  %618 = load %union.rec*, %union.rec** @zz_hold, align 8
  %619 = bitcast %union.rec* %618 to %struct.word_type*
  %620 = getelementptr inbounds %struct.word_type, %struct.word_type* %619, i32 0, i32 0
  %621 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %620, i32 0, i64 0
  %622 = getelementptr inbounds %struct.LIST, %struct.LIST* %621, i32 0, i32 0
  store %union.rec* %617, %union.rec** %622, align 8
  %623 = load %union.rec*, %union.rec** @zz_hold, align 8
  %624 = load i32, i32* @zz_size, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %625
  store %union.rec* %623, %union.rec** %626, align 8
  br label %452

; <label>:627                                     ; preds = %452
  br label %628

; <label>:628                                     ; preds = %788, %627
  %629 = load %union.rec*, %union.rec** @xx_hold, align 8
  %630 = bitcast %union.rec* %629 to %struct.word_type*
  %631 = getelementptr inbounds %struct.word_type, %struct.word_type* %630, i32 0, i32 0
  %632 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %631, i32 0, i64 0
  %633 = getelementptr inbounds %struct.LIST, %struct.LIST* %632, i32 0, i32 1
  %634 = load %union.rec*, %union.rec** %633, align 8
  %635 = load %union.rec*, %union.rec** @xx_hold, align 8
  %636 = icmp ne %union.rec* %634, %635
  br i1 %636, label %637, label %803

; <label>:637                                     ; preds = %628
  %638 = load %union.rec*, %union.rec** @xx_hold, align 8
  %639 = bitcast %union.rec* %638 to %struct.word_type*
  %640 = getelementptr inbounds %struct.word_type, %struct.word_type* %639, i32 0, i32 0
  %641 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %640, i32 0, i64 0
  %642 = getelementptr inbounds %struct.LIST, %struct.LIST* %641, i32 0, i32 1
  %643 = load %union.rec*, %union.rec** %642, align 8
  store %union.rec* %643, %union.rec** @xx_link, align 8
  %644 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %644, %union.rec** @zz_hold, align 8
  %645 = load %union.rec*, %union.rec** @zz_hold, align 8
  %646 = bitcast %union.rec* %645 to %struct.word_type*
  %647 = getelementptr inbounds %struct.word_type, %struct.word_type* %646, i32 0, i32 0
  %648 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %647, i32 0, i64 1
  %649 = getelementptr inbounds %struct.LIST, %struct.LIST* %648, i32 0, i32 1
  %650 = load %union.rec*, %union.rec** %649, align 8
  %651 = load %union.rec*, %union.rec** @zz_hold, align 8
  %652 = icmp eq %union.rec* %650, %651
  br i1 %652, label %653, label %654

; <label>:653                                     ; preds = %637
  br label %695

; <label>:654                                     ; preds = %637
  %655 = load %union.rec*, %union.rec** @zz_hold, align 8
  %656 = bitcast %union.rec* %655 to %struct.word_type*
  %657 = getelementptr inbounds %struct.word_type, %struct.word_type* %656, i32 0, i32 0
  %658 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %657, i32 0, i64 1
  %659 = getelementptr inbounds %struct.LIST, %struct.LIST* %658, i32 0, i32 1
  %660 = load %union.rec*, %union.rec** %659, align 8
  store %union.rec* %660, %union.rec** @zz_res, align 8
  %661 = load %union.rec*, %union.rec** @zz_hold, align 8
  %662 = bitcast %union.rec* %661 to %struct.word_type*
  %663 = getelementptr inbounds %struct.word_type, %struct.word_type* %662, i32 0, i32 0
  %664 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %663, i32 0, i64 1
  %665 = getelementptr inbounds %struct.LIST, %struct.LIST* %664, i32 0, i32 0
  %666 = load %union.rec*, %union.rec** %665, align 8
  %667 = load %union.rec*, %union.rec** @zz_res, align 8
  %668 = bitcast %union.rec* %667 to %struct.word_type*
  %669 = getelementptr inbounds %struct.word_type, %struct.word_type* %668, i32 0, i32 0
  %670 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %669, i32 0, i64 1
  %671 = getelementptr inbounds %struct.LIST, %struct.LIST* %670, i32 0, i32 0
  store %union.rec* %666, %union.rec** %671, align 8
  %672 = load %union.rec*, %union.rec** @zz_res, align 8
  %673 = load %union.rec*, %union.rec** @zz_hold, align 8
  %674 = bitcast %union.rec* %673 to %struct.word_type*
  %675 = getelementptr inbounds %struct.word_type, %struct.word_type* %674, i32 0, i32 0
  %676 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %675, i32 0, i64 1
  %677 = getelementptr inbounds %struct.LIST, %struct.LIST* %676, i32 0, i32 0
  %678 = load %union.rec*, %union.rec** %677, align 8
  %679 = bitcast %union.rec* %678 to %struct.word_type*
  %680 = getelementptr inbounds %struct.word_type, %struct.word_type* %679, i32 0, i32 0
  %681 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %680, i32 0, i64 1
  %682 = getelementptr inbounds %struct.LIST, %struct.LIST* %681, i32 0, i32 1
  store %union.rec* %672, %union.rec** %682, align 8
  %683 = load %union.rec*, %union.rec** @zz_hold, align 8
  %684 = load %union.rec*, %union.rec** @zz_hold, align 8
  %685 = bitcast %union.rec* %684 to %struct.word_type*
  %686 = getelementptr inbounds %struct.word_type, %struct.word_type* %685, i32 0, i32 0
  %687 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %686, i32 0, i64 1
  %688 = getelementptr inbounds %struct.LIST, %struct.LIST* %687, i32 0, i32 1
  store %union.rec* %683, %union.rec** %688, align 8
  %689 = load %union.rec*, %union.rec** @zz_hold, align 8
  %690 = bitcast %union.rec* %689 to %struct.word_type*
  %691 = getelementptr inbounds %struct.word_type, %struct.word_type* %690, i32 0, i32 0
  %692 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %691, i32 0, i64 1
  %693 = getelementptr inbounds %struct.LIST, %struct.LIST* %692, i32 0, i32 0
  store %union.rec* %683, %union.rec** %693, align 8
  %694 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %695

; <label>:695                                     ; preds = %654, %653
  %696 = phi %union.rec* [ null, %653 ], [ %694, %654 ]
  %697 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %697, %union.rec** @zz_hold, align 8
  %698 = load %union.rec*, %union.rec** @zz_hold, align 8
  %699 = bitcast %union.rec* %698 to %struct.word_type*
  %700 = getelementptr inbounds %struct.word_type, %struct.word_type* %699, i32 0, i32 0
  %701 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %700, i32 0, i64 0
  %702 = getelementptr inbounds %struct.LIST, %struct.LIST* %701, i32 0, i32 1
  %703 = load %union.rec*, %union.rec** %702, align 8
  %704 = load %union.rec*, %union.rec** @zz_hold, align 8
  %705 = icmp eq %union.rec* %703, %704
  br i1 %705, label %706, label %707

; <label>:706                                     ; preds = %695
  br label %748

; <label>:707                                     ; preds = %695
  %708 = load %union.rec*, %union.rec** @zz_hold, align 8
  %709 = bitcast %union.rec* %708 to %struct.word_type*
  %710 = getelementptr inbounds %struct.word_type, %struct.word_type* %709, i32 0, i32 0
  %711 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %710, i32 0, i64 0
  %712 = getelementptr inbounds %struct.LIST, %struct.LIST* %711, i32 0, i32 1
  %713 = load %union.rec*, %union.rec** %712, align 8
  store %union.rec* %713, %union.rec** @zz_res, align 8
  %714 = load %union.rec*, %union.rec** @zz_hold, align 8
  %715 = bitcast %union.rec* %714 to %struct.word_type*
  %716 = getelementptr inbounds %struct.word_type, %struct.word_type* %715, i32 0, i32 0
  %717 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %716, i32 0, i64 0
  %718 = getelementptr inbounds %struct.LIST, %struct.LIST* %717, i32 0, i32 0
  %719 = load %union.rec*, %union.rec** %718, align 8
  %720 = load %union.rec*, %union.rec** @zz_res, align 8
  %721 = bitcast %union.rec* %720 to %struct.word_type*
  %722 = getelementptr inbounds %struct.word_type, %struct.word_type* %721, i32 0, i32 0
  %723 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %722, i32 0, i64 0
  %724 = getelementptr inbounds %struct.LIST, %struct.LIST* %723, i32 0, i32 0
  store %union.rec* %719, %union.rec** %724, align 8
  %725 = load %union.rec*, %union.rec** @zz_res, align 8
  %726 = load %union.rec*, %union.rec** @zz_hold, align 8
  %727 = bitcast %union.rec* %726 to %struct.word_type*
  %728 = getelementptr inbounds %struct.word_type, %struct.word_type* %727, i32 0, i32 0
  %729 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %728, i32 0, i64 0
  %730 = getelementptr inbounds %struct.LIST, %struct.LIST* %729, i32 0, i32 0
  %731 = load %union.rec*, %union.rec** %730, align 8
  %732 = bitcast %union.rec* %731 to %struct.word_type*
  %733 = getelementptr inbounds %struct.word_type, %struct.word_type* %732, i32 0, i32 0
  %734 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %733, i32 0, i64 0
  %735 = getelementptr inbounds %struct.LIST, %struct.LIST* %734, i32 0, i32 1
  store %union.rec* %725, %union.rec** %735, align 8
  %736 = load %union.rec*, %union.rec** @zz_hold, align 8
  %737 = load %union.rec*, %union.rec** @zz_hold, align 8
  %738 = bitcast %union.rec* %737 to %struct.word_type*
  %739 = getelementptr inbounds %struct.word_type, %struct.word_type* %738, i32 0, i32 0
  %740 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %739, i32 0, i64 0
  %741 = getelementptr inbounds %struct.LIST, %struct.LIST* %740, i32 0, i32 1
  store %union.rec* %736, %union.rec** %741, align 8
  %742 = load %union.rec*, %union.rec** @zz_hold, align 8
  %743 = bitcast %union.rec* %742 to %struct.word_type*
  %744 = getelementptr inbounds %struct.word_type, %struct.word_type* %743, i32 0, i32 0
  %745 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %744, i32 0, i64 0
  %746 = getelementptr inbounds %struct.LIST, %struct.LIST* %745, i32 0, i32 0
  store %union.rec* %736, %union.rec** %746, align 8
  %747 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %748

; <label>:748                                     ; preds = %707, %706
  %749 = phi %union.rec* [ null, %706 ], [ %747, %707 ]
  %750 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %750, %union.rec** @zz_hold, align 8
  %751 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %751, %union.rec** @zz_hold, align 8
  %752 = load %union.rec*, %union.rec** @zz_hold, align 8
  %753 = bitcast %union.rec* %752 to %struct.word_type*
  %754 = getelementptr inbounds %struct.word_type, %struct.word_type* %753, i32 0, i32 1
  %755 = bitcast %union.FIRST_UNION* %754 to %struct.anon*
  %756 = getelementptr inbounds %struct.anon, %struct.anon* %755, i32 0, i32 0
  %757 = load i8, i8* %756, align 1
  %758 = zext i8 %757 to i32
  %759 = icmp eq i32 %758, 11
  br i1 %759, label %769, label %760

; <label>:760                                     ; preds = %748
  %761 = load %union.rec*, %union.rec** @zz_hold, align 8
  %762 = bitcast %union.rec* %761 to %struct.word_type*
  %763 = getelementptr inbounds %struct.word_type, %struct.word_type* %762, i32 0, i32 1
  %764 = bitcast %union.FIRST_UNION* %763 to %struct.anon*
  %765 = getelementptr inbounds %struct.anon, %struct.anon* %764, i32 0, i32 0
  %766 = load i8, i8* %765, align 1
  %767 = zext i8 %766 to i32
  %768 = icmp eq i32 %767, 12
  br i1 %768, label %769, label %777

; <label>:769                                     ; preds = %760, %748
  %770 = load %union.rec*, %union.rec** @zz_hold, align 8
  %771 = bitcast %union.rec* %770 to %struct.word_type*
  %772 = getelementptr inbounds %struct.word_type, %struct.word_type* %771, i32 0, i32 1
  %773 = bitcast %union.FIRST_UNION* %772 to %struct.anon*
  %774 = getelementptr inbounds %struct.anon, %struct.anon* %773, i32 0, i32 1
  %775 = load i8, i8* %774, align 1
  %776 = zext i8 %775 to i32
  br label %788

; <label>:777                                     ; preds = %760
  %778 = load %union.rec*, %union.rec** @zz_hold, align 8
  %779 = bitcast %union.rec* %778 to %struct.word_type*
  %780 = getelementptr inbounds %struct.word_type, %struct.word_type* %779, i32 0, i32 1
  %781 = bitcast %union.FIRST_UNION* %780 to %struct.anon*
  %782 = getelementptr inbounds %struct.anon, %struct.anon* %781, i32 0, i32 0
  %783 = load i8, i8* %782, align 1
  %784 = zext i8 %783 to i64
  %785 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %784
  %786 = load i8, i8* %785, align 1
  %787 = zext i8 %786 to i32
  br label %788

; <label>:788                                     ; preds = %777, %769
  %789 = phi i32 [ %776, %769 ], [ %787, %777 ]
  store i32 %789, i32* @zz_size, align 4
  %790 = load i32, i32* @zz_size, align 4
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %791
  %793 = load %union.rec*, %union.rec** %792, align 8
  %794 = load %union.rec*, %union.rec** @zz_hold, align 8
  %795 = bitcast %union.rec* %794 to %struct.word_type*
  %796 = getelementptr inbounds %struct.word_type, %struct.word_type* %795, i32 0, i32 0
  %797 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %796, i32 0, i64 0
  %798 = getelementptr inbounds %struct.LIST, %struct.LIST* %797, i32 0, i32 0
  store %union.rec* %793, %union.rec** %798, align 8
  %799 = load %union.rec*, %union.rec** @zz_hold, align 8
  %800 = load i32, i32* @zz_size, align 4
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %801
  store %union.rec* %799, %union.rec** %802, align 8
  br label %628

; <label>:803                                     ; preds = %628
  %804 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %804, %union.rec** @zz_hold, align 8
  %805 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %805, %union.rec** @zz_hold, align 8
  %806 = load %union.rec*, %union.rec** @zz_hold, align 8
  %807 = bitcast %union.rec* %806 to %struct.word_type*
  %808 = getelementptr inbounds %struct.word_type, %struct.word_type* %807, i32 0, i32 1
  %809 = bitcast %union.FIRST_UNION* %808 to %struct.anon*
  %810 = getelementptr inbounds %struct.anon, %struct.anon* %809, i32 0, i32 0
  %811 = load i8, i8* %810, align 1
  %812 = zext i8 %811 to i32
  %813 = icmp eq i32 %812, 11
  br i1 %813, label %823, label %814

; <label>:814                                     ; preds = %803
  %815 = load %union.rec*, %union.rec** @zz_hold, align 8
  %816 = bitcast %union.rec* %815 to %struct.word_type*
  %817 = getelementptr inbounds %struct.word_type, %struct.word_type* %816, i32 0, i32 1
  %818 = bitcast %union.FIRST_UNION* %817 to %struct.anon*
  %819 = getelementptr inbounds %struct.anon, %struct.anon* %818, i32 0, i32 0
  %820 = load i8, i8* %819, align 1
  %821 = zext i8 %820 to i32
  %822 = icmp eq i32 %821, 12
  br i1 %822, label %823, label %831

; <label>:823                                     ; preds = %814, %803
  %824 = load %union.rec*, %union.rec** @zz_hold, align 8
  %825 = bitcast %union.rec* %824 to %struct.word_type*
  %826 = getelementptr inbounds %struct.word_type, %struct.word_type* %825, i32 0, i32 1
  %827 = bitcast %union.FIRST_UNION* %826 to %struct.anon*
  %828 = getelementptr inbounds %struct.anon, %struct.anon* %827, i32 0, i32 1
  %829 = load i8, i8* %828, align 1
  %830 = zext i8 %829 to i32
  br label %842

; <label>:831                                     ; preds = %814
  %832 = load %union.rec*, %union.rec** @zz_hold, align 8
  %833 = bitcast %union.rec* %832 to %struct.word_type*
  %834 = getelementptr inbounds %struct.word_type, %struct.word_type* %833, i32 0, i32 1
  %835 = bitcast %union.FIRST_UNION* %834 to %struct.anon*
  %836 = getelementptr inbounds %struct.anon, %struct.anon* %835, i32 0, i32 0
  %837 = load i8, i8* %836, align 1
  %838 = zext i8 %837 to i64
  %839 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %838
  %840 = load i8, i8* %839, align 1
  %841 = zext i8 %840 to i32
  br label %842

; <label>:842                                     ; preds = %831, %823
  %843 = phi i32 [ %830, %823 ], [ %841, %831 ]
  store i32 %843, i32* @zz_size, align 4
  %844 = load i32, i32* @zz_size, align 4
  %845 = sext i32 %844 to i64
  %846 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %845
  %847 = load %union.rec*, %union.rec** %846, align 8
  %848 = load %union.rec*, %union.rec** @zz_hold, align 8
  %849 = bitcast %union.rec* %848 to %struct.word_type*
  %850 = getelementptr inbounds %struct.word_type, %struct.word_type* %849, i32 0, i32 0
  %851 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %850, i32 0, i64 0
  %852 = getelementptr inbounds %struct.LIST, %struct.LIST* %851, i32 0, i32 0
  store %union.rec* %847, %union.rec** %852, align 8
  %853 = load %union.rec*, %union.rec** @zz_hold, align 8
  %854 = load i32, i32* @zz_size, align 4
  %855 = sext i32 %854 to i64
  %856 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %855
  store %union.rec* %853, %union.rec** %856, align 8
  br label %857

; <label>:857                                     ; preds = %842, %447
  br label %858

; <label>:858                                     ; preds = %857, %445
  ret void
}

declare void @FlushInners(%union.rec*, %union.rec*) #1

declare void @FreeGalley(%union.rec*, %union.rec*, %union.rec**, %union.rec*, %union.rec*) #1

declare void @DetachGalley(%union.rec*) #1

declare void @KillGalley(%union.rec*, i32) #1

declare i8* @Image(i32) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare i32 @DisposeObject(%union.rec*) #1

declare i32 @CheckComponentOrder(%union.rec*, %union.rec*) #1

declare i32 @VerticalHyphenate(%union.rec*) #1

declare void @SetNeighbours(%union.rec*, i32, %union.rec**, %union.rec**, %union.rec**, %union.rec**, i32*) #1

declare void @Constrained(%union.rec*, %struct.CONSTRAINT*, i32, %union.rec**) #1

declare i32 @ActualGap(i32, i32, i32, %struct.GAP*, i32, i32) #1

declare void @Promote(%union.rec*, %union.rec*, %union.rec*, i32) #1

declare void @AdjustSize(%union.rec*, i32, i32, i32) #1

declare void @HandleHeader(%union.rec*, %union.rec*) #1

declare void @SwitchScope(%union.rec*) #1

declare %union.rec* @ReadFromFile(i16 zeroext, i64, i32) #1

declare void @UnSwitchScope(%union.rec*) #1

declare i8* @FileName(i16 zeroext) #1

declare void @SetTarget(%union.rec*) #1

declare %union.rec* @BuildEnclose(%union.rec*) #1

declare i32 @DbRetrieveNext(%union.rec*, i32*, %union.rec**, i8*, i8*, i16*, i64*, i32*, i64*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

declare %union.rec* @ConvertGalleyList(%union.rec*) #1

declare %union.rec* @FirstExternTarget(%union.rec*, %union.rec**) #1

declare %union.rec* @GallTargEval(%union.rec*, %struct.FILE_POS*) #1

declare i32 @DbRetrieve(%union.rec*, i32, %union.rec*, i8*, i8*, i16*, i64*, i32*, i64*) #1

declare %union.rec* @NextExternTarget(%union.rec*, %union.rec**) #1

declare void @GazumpOptimize(%union.rec*, %union.rec*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
