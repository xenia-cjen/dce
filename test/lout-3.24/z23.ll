; ModuleID = 'z23.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FILE_POS = type { i8, i8, i16, i32 }
%struct.font_rec = type { %struct.metrics*, i8*, i16*, %struct.composite_rec*, i32, %union.rec*, %union.rec*, i16, i16, i16*, i8*, i8*, i16* }
%struct.metrics = type { i16, i16, i16, i16, i16 }
%struct.composite_rec = type { i8, i16, i16 }
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
%struct.back_end_rec = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, void (%struct._IO_FILE*)*, void (i8*, i32, i32)*, void (%union.rec*, i32, i8*, i8*)*, void (i8*, i32)*, void (i32)*, void (i32, i32, i8*)*, void (i32, i32, i8*)*, void ()*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, %union.rec*)*, void (i32, i32, i32, i32, i32)*, void (i32, i32)*, void (i32)*, void (float, float)*, void (%union.rec*)*, void ()*, void (%union.rec*)*, void (%union.rec*)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (...)* }
%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.anon.4 = type { i16, i16 }
%struct.anon.2 = type { i8, i8, i16 }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }
%struct.anon.11 = type { i8, [3 x i8] }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"FAPO HSPAN/VSPAN!\00", align 1
@finfo = external global %struct.font_rec*, align 8
@font_curr_page = external global i32, align 4
@BackEnd = external global %struct.back_end_rec*, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"object deleted (it cannot be scaled vertically)\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"object deleted (it cannot be scaled horizontally)\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"FAPO: horizontal scale factor!\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"FAPO: vertical scale factor!\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"NextDefiniteWithGap: g == nilobj!\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"FAPO: final start_group!\00", align 1
@.str.8 = private unnamed_addr constant [71 x i8] c"word %s horizontally scaled by factor %.2f (too wide for %s paragraph)\00", align 1
@.str.9 = private unnamed_addr constant [73 x i8] c"%s object horizontally scaled by factor %.2f (too wide for %s paragraph)\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"oversize object has size 0 or less\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"word %s deleted (too wide for %s paragraph)\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"%s object deleted (too wide for %s paragraph)\00", align 1
@xx_link = external global %union.rec*, align 8
@zz_hold = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@zz_free = external global [0 x %union.rec*], align 8
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_tmp = external global %union.rec*, align 8
@.str.15 = private unnamed_addr constant [23 x i8] c"FAPO: adjustable_gaps!\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"FixAndPrint: underline(prev)!\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"FixAndPrintObject: thr!\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"FixAndPrintObject: link or uplink!\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"FAPO: THR!\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"%s symbol ignored (out of place)\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"FixAndPrintObject:\00", align 1

; Function Attrs: nounwind uwtable
define %union.rec* @FixAndPrintObject(%union.rec* %x, i32 %xmk, i32 %xb, i32 %xf, i32 %dim, i32 %suppress, i32 %pg, i32 %count, i32* %actual_back, i32* %actual_fwd) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %prev = alloca %union.rec*, align 8
  %g = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %face = alloca %union.rec*, align 8
  %thr = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %uplink = alloca %union.rec*, align 8
  %mk = alloca i32, align 4
  %ymk = alloca i32, align 4
  %frame_size = alloca i32, align 4
  %back_edge = alloca i32, align 4
  %yb = alloca i32, align 4
  %yf = alloca i32, align 4
  %inc = alloca i32, align 4
  %f = alloca i32, align 4
  %aback = alloca i32, align 4
  %afwd = alloca i32, align 4
  %i = alloca i32, align 4
  %scale_factor = alloca float, align 4
  %jn = alloca i32, align 4
  %colc = alloca %struct.CONSTRAINT, align 4
  %rowc = alloca %struct.CONSTRAINT, align 4
  %yc = alloca %struct.CONSTRAINT, align 4
  %colc1 = alloca %struct.CONSTRAINT, align 4
  %rowc2 = alloca %struct.CONSTRAINT, align 4
  %yc3 = alloca %struct.CONSTRAINT, align 4
  %tmp = alloca %union.rec*, align 8
  %pre = alloca %union.rec*, align 8
  %post = alloca %union.rec*, align 8
  %tmp4 = alloca %union.rec*, align 8
  %pre5 = alloca %union.rec*, align 8
  %post6 = alloca %union.rec*, align 8
  %start_group = alloca %union.rec*, align 8
  %zlink = alloca %union.rec*, align 8
  %m = alloca %union.rec*, align 8
  %dble_found = alloca i32, align 4
  %b = alloca i32, align 4
  %f7 = alloca i32, align 4
  %dlen = alloca i32, align 4
  %will_adjust = alloca i32, align 4
  %adjusting = alloca i32, align 4
  %actual_size = alloca i32, align 4
  %adjust_indent = alloca i32, align 4
  %frame_size8 = alloca i32, align 4
  %back_edge9 = alloca i32, align 4
  %adjust_inc = alloca i32, align 4
  %inc10 = alloca i32, align 4
  %adjust_sofar = alloca i32, align 4
  %adjustable_gaps = alloca i32, align 4
  %gaps_sofar = alloca i32, align 4
  %underlining = alloca i32, align 4
  %underline_xstart = alloca i32, align 4
  %underline_font = alloca i32, align 4
  %underline_colour = alloca i32, align 4
  %urec = alloca %union.rec*, align 8
  %last_bad_gap = alloca %union.rec*, align 8
  %c = alloca %struct.CONSTRAINT, align 4
  %prnt = alloca %union.rec*, align 8
  %tmp11 = alloca i32, align 4
  store %union.rec* %x, %union.rec** %1, align 8
  store i32 %xmk, i32* %2, align 4
  store i32 %xb, i32* %3, align 4
  store i32 %xf, i32* %4, align 4
  store i32 %dim, i32* %5, align 4
  store i32 %suppress, i32* %6, align 4
  store i32 %pg, i32* %7, align 4
  store i32 %count, i32* %8, align 4
  store i32* %actual_back, i32** %9, align 8
  store i32* %actual_fwd, i32** %10, align 8
  %11 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %11, %union.rec** %res, align 8
  %12 = load %union.rec*, %union.rec** %1, align 8
  %13 = bitcast %union.rec* %12 to %struct.word_type*
  %14 = getelementptr inbounds %struct.word_type, %struct.word_type* %13, i32 0, i32 1
  %15 = bitcast %union.FIRST_UNION* %14 to %struct.anon*
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 0
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  switch i32 %18, label %8220 [
    i32 2, label %19
    i32 5, label %19
    i32 4, label %19
    i32 6, label %19
    i32 7, label %19
    i32 44, label %24
    i32 42, label %24
    i32 43, label %24
    i32 45, label %344
    i32 46, label %344
    i32 11, label %603
    i32 12, label %603
    i32 26, label %674
    i32 27, label %674
    i32 28, label %769
    i32 29, label %769
    i32 36, label %926
    i32 37, label %926
    i32 24, label %1013
    i32 25, label %1013
    i32 38, label %1013
    i32 39, label %1013
    i32 40, label %1013
    i32 41, label %1013
    i32 31, label %1095
    i32 30, label %1254
    i32 34, label %1470
    i32 35, label %1657
    i32 51, label %1749
    i32 50, label %1850
    i32 96, label %2045
    i32 97, label %2320
    i32 98, label %2615
    i32 99, label %2615
    i32 94, label %2789
    i32 95, label %2789
    i32 9, label %2895
    i32 19, label %2999
    i32 18, label %2999
    i32 17, label %4899
    i32 16, label %7761
    i32 15, label %7761
    i32 20, label %8202
    i32 21, label %8202
    i32 22, label %8202
    i32 23, label %8202
  ]

; <label>:19                                      ; preds = %0, %0, %0, %0, %0
  %20 = load i32, i32* %3, align 4
  %21 = load i32*, i32** %9, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32*, i32** %10, align 8
  store i32 %22, i32* %23, align 4
  br label %8231

; <label>:24                                      ; preds = %0, %0, %0
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

; <label>:27                                      ; preds = %24
  %28 = load %union.rec*, %union.rec** %1, align 8
  %29 = bitcast %union.rec* %28 to %struct.word_type*
  %30 = getelementptr inbounds %struct.word_type, %struct.word_type* %29, i32 0, i32 0
  %31 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %30, i32 0, i64 0
  %32 = getelementptr inbounds %struct.LIST, %struct.LIST* %31, i32 0, i32 1
  %33 = load %union.rec*, %union.rec** %32, align 8
  br label %41

; <label>:34                                      ; preds = %24
  %35 = load %union.rec*, %union.rec** %1, align 8
  %36 = bitcast %union.rec* %35 to %struct.word_type*
  %37 = getelementptr inbounds %struct.word_type, %struct.word_type* %36, i32 0, i32 0
  %38 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %37, i32 0, i64 0
  %39 = getelementptr inbounds %struct.LIST, %struct.LIST* %38, i32 0, i32 0
  %40 = load %union.rec*, %union.rec** %39, align 8
  br label %41

; <label>:41                                      ; preds = %34, %27
  %42 = phi %union.rec* [ %33, %27 ], [ %40, %34 ]
  %43 = bitcast %union.rec* %42 to %struct.word_type*
  %44 = getelementptr inbounds %struct.word_type, %struct.word_type* %43, i32 0, i32 0
  %45 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %44, i32 0, i64 1
  %46 = getelementptr inbounds %struct.LIST, %struct.LIST* %45, i32 0, i32 0
  %47 = load %union.rec*, %union.rec** %46, align 8
  store %union.rec* %47, %union.rec** %y, align 8
  store i32 1, i32* %8, align 4
  br label %48

; <label>:48                                      ; preds = %58, %41
  %49 = load %union.rec*, %union.rec** %y, align 8
  %50 = bitcast %union.rec* %49 to %struct.word_type*
  %51 = getelementptr inbounds %struct.word_type, %struct.word_type* %50, i32 0, i32 1
  %52 = bitcast %union.FIRST_UNION* %51 to %struct.anon*
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %52, i32 0, i32 0
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %67

; <label>:57                                      ; preds = %48
  br label %58

; <label>:58                                      ; preds = %57
  %59 = load %union.rec*, %union.rec** %y, align 8
  %60 = bitcast %union.rec* %59 to %struct.word_type*
  %61 = getelementptr inbounds %struct.word_type, %struct.word_type* %60, i32 0, i32 0
  %62 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %61, i32 0, i64 1
  %63 = getelementptr inbounds %struct.LIST, %struct.LIST* %62, i32 0, i32 0
  %64 = load %union.rec*, %union.rec** %63, align 8
  store %union.rec* %64, %union.rec** %y, align 8
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %48

; <label>:67                                      ; preds = %48
  %68 = load %union.rec*, %union.rec** %y, align 8
  %69 = bitcast %union.rec* %68 to %struct.word_type*
  %70 = getelementptr inbounds %struct.word_type, %struct.word_type* %69, i32 0, i32 1
  %71 = bitcast %union.FIRST_UNION* %70 to %struct.anon*
  %72 = getelementptr inbounds %struct.anon, %struct.anon* %71, i32 0, i32 0
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %74, 13
  br i1 %75, label %85, label %76

; <label>:76                                      ; preds = %67
  %77 = load %union.rec*, %union.rec** %y, align 8
  %78 = bitcast %union.rec* %77 to %struct.word_type*
  %79 = getelementptr inbounds %struct.word_type, %struct.word_type* %78, i32 0, i32 1
  %80 = bitcast %union.FIRST_UNION* %79 to %struct.anon*
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %80, i32 0, i32 0
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 14
  br i1 %84, label %85, label %331

; <label>:85                                      ; preds = %76, %67
  %86 = load %union.rec*, %union.rec** %y, align 8
  %87 = bitcast %union.rec* %86 to %struct.word_type*
  %88 = getelementptr inbounds %struct.word_type, %struct.word_type* %87, i32 0, i32 0
  %89 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %88, i32 0, i64 0
  %90 = getelementptr inbounds %struct.LIST, %struct.LIST* %89, i32 0, i32 1
  %91 = load %union.rec*, %union.rec** %90, align 8
  %92 = bitcast %union.rec* %91 to %struct.word_type*
  %93 = getelementptr inbounds %struct.word_type, %struct.word_type* %92, i32 0, i32 0
  %94 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %93, i32 0, i64 1
  %95 = getelementptr inbounds %struct.LIST, %struct.LIST* %94, i32 0, i32 0
  %96 = load %union.rec*, %union.rec** %95, align 8
  store %union.rec* %96, %union.rec** %z, align 8
  br label %97

; <label>:97                                      ; preds = %107, %85
  %98 = load %union.rec*, %union.rec** %z, align 8
  %99 = bitcast %union.rec* %98 to %struct.word_type*
  %100 = getelementptr inbounds %struct.word_type, %struct.word_type* %99, i32 0, i32 1
  %101 = bitcast %union.FIRST_UNION* %100 to %struct.anon*
  %102 = getelementptr inbounds %struct.anon, %struct.anon* %101, i32 0, i32 0
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %114

; <label>:106                                     ; preds = %97
  br label %107

; <label>:107                                     ; preds = %106
  %108 = load %union.rec*, %union.rec** %z, align 8
  %109 = bitcast %union.rec* %108 to %struct.word_type*
  %110 = getelementptr inbounds %struct.word_type, %struct.word_type* %109, i32 0, i32 0
  %111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %110, i32 0, i64 1
  %112 = getelementptr inbounds %struct.LIST, %struct.LIST* %111, i32 0, i32 0
  %113 = load %union.rec*, %union.rec** %112, align 8
  store %union.rec* %113, %union.rec** %z, align 8
  br label %97

; <label>:114                                     ; preds = %97
  %115 = load i32, i32* %5, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %124

; <label>:117                                     ; preds = %114
  %118 = load %union.rec*, %union.rec** %1, align 8
  %119 = bitcast %union.rec* %118 to %struct.word_type*
  %120 = getelementptr inbounds %struct.word_type, %struct.word_type* %119, i32 0, i32 0
  %121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %120, i32 0, i64 1
  %122 = getelementptr inbounds %struct.LIST, %struct.LIST* %121, i32 0, i32 1
  %123 = load %union.rec*, %union.rec** %122, align 8
  br label %131

; <label>:124                                     ; preds = %114
  %125 = load %union.rec*, %union.rec** %1, align 8
  %126 = bitcast %union.rec* %125 to %struct.word_type*
  %127 = getelementptr inbounds %struct.word_type, %struct.word_type* %126, i32 0, i32 0
  %128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %127, i32 0, i64 1
  %129 = getelementptr inbounds %struct.LIST, %struct.LIST* %128, i32 0, i32 0
  %130 = load %union.rec*, %union.rec** %129, align 8
  br label %131

; <label>:131                                     ; preds = %124, %117
  %132 = phi %union.rec* [ %123, %117 ], [ %130, %124 ]
  %133 = bitcast %union.rec* %132 to %struct.word_type*
  %134 = getelementptr inbounds %struct.word_type, %struct.word_type* %133, i32 0, i32 0
  %135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %134, i32 0, i64 0
  %136 = getelementptr inbounds %struct.LIST, %struct.LIST* %135, i32 0, i32 0
  %137 = load %union.rec*, %union.rec** %136, align 8
  store %union.rec* %137, %union.rec** %thr, align 8
  br label %138

; <label>:138                                     ; preds = %148, %131
  %139 = load %union.rec*, %union.rec** %thr, align 8
  %140 = bitcast %union.rec* %139 to %struct.word_type*
  %141 = getelementptr inbounds %struct.word_type, %struct.word_type* %140, i32 0, i32 1
  %142 = bitcast %union.FIRST_UNION* %141 to %struct.anon*
  %143 = getelementptr inbounds %struct.anon, %struct.anon* %142, i32 0, i32 0
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %155

; <label>:147                                     ; preds = %138
  br label %148

; <label>:148                                     ; preds = %147
  %149 = load %union.rec*, %union.rec** %thr, align 8
  %150 = bitcast %union.rec* %149 to %struct.word_type*
  %151 = getelementptr inbounds %struct.word_type, %struct.word_type* %150, i32 0, i32 0
  %152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %151, i32 0, i64 0
  %153 = getelementptr inbounds %struct.LIST, %struct.LIST* %152, i32 0, i32 0
  %154 = load %union.rec*, %union.rec** %153, align 8
  store %union.rec* %154, %union.rec** %thr, align 8
  br label %138

; <label>:155                                     ; preds = %138
  %156 = load i32, i32* %2, align 4
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = load %union.rec*, %union.rec** %thr, align 8
  %160 = bitcast %union.rec* %159 to %struct.word_type*
  %161 = getelementptr inbounds %struct.word_type, %struct.word_type* %160, i32 0, i32 3
  %162 = bitcast %union.THIRD_UNION* %161 to %struct.anon.6*
  %163 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %162, i32 0, i32 0
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %163, i32 0, i64 %158
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %156, %165
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = load %union.rec*, %union.rec** %z, align 8
  %170 = bitcast %union.rec* %169 to %struct.word_type*
  %171 = getelementptr inbounds %struct.word_type, %struct.word_type* %170, i32 0, i32 3
  %172 = bitcast %union.THIRD_UNION* %171 to %struct.anon.6*
  %173 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %172, i32 0, i32 0
  %174 = getelementptr inbounds [2 x i32], [2 x i32]* %173, i32 0, i64 %168
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %166, %175
  %177 = load %union.rec*, %union.rec** %y, align 8
  %178 = bitcast %union.rec* %177 to %struct.closure_type*
  %179 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %178, i32 0, i32 6
  %180 = bitcast %union.anon.12* %179 to i32*
  store i32 %176, i32* %180, align 4
  %181 = load %union.rec*, %union.rec** %y, align 8
  %182 = bitcast %union.rec* %181 to %struct.word_type*
  %183 = getelementptr inbounds %struct.word_type, %struct.word_type* %182, i32 0, i32 2
  %184 = bitcast %union.SECOND_UNION* %183 to %struct.anon.1*
  %185 = bitcast %struct.anon.1* %184 to i32*
  %186 = load i32, i32* %185, align 4
  %187 = lshr i32 %186, 23
  %188 = and i32 %187, 63
  %189 = add i32 %188, 1
  %190 = load i32, i32* %185, align 4
  %191 = and i32 %189, 63
  %192 = shl i32 %191, 23
  %193 = and i32 %190, -528482305
  %194 = or i32 %193, %192
  store i32 %194, i32* %185, align 4
  %195 = load %union.rec*, %union.rec** %y, align 8
  %196 = bitcast %union.rec* %195 to %struct.word_type*
  %197 = getelementptr inbounds %struct.word_type, %struct.word_type* %196, i32 0, i32 2
  %198 = bitcast %union.SECOND_UNION* %197 to %struct.anon.1*
  %199 = bitcast %struct.anon.1* %198 to i32*
  %200 = load i32, i32* %199, align 4
  %201 = and i32 %200, 4095
  %202 = icmp eq i32 %191, %201
  br i1 %202, label %203, label %310

; <label>:203                                     ; preds = %155
  %204 = load i32, i32* %2, align 4
  %205 = load i32, i32* %4, align 4
  %206 = add nsw i32 %204, %205
  %207 = load %union.rec*, %union.rec** %y, align 8
  %208 = bitcast %union.rec* %207 to %struct.closure_type*
  %209 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %208, i32 0, i32 6
  %210 = bitcast %union.anon.12* %209 to i32*
  %211 = load i32, i32* %210, align 4
  %212 = sub nsw i32 %206, %211
  %213 = load i32, i32* %5, align 4
  %214 = sext i32 %213 to i64
  %215 = load %union.rec*, %union.rec** %z, align 8
  %216 = bitcast %union.rec* %215 to %struct.word_type*
  %217 = getelementptr inbounds %struct.word_type, %struct.word_type* %216, i32 0, i32 3
  %218 = bitcast %union.THIRD_UNION* %217 to %struct.anon.6*
  %219 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %218, i32 0, i32 1
  %220 = getelementptr inbounds [2 x i32], [2 x i32]* %219, i32 0, i64 %214
  %221 = load i32, i32* %220, align 4
  %222 = icmp slt i32 %212, %221
  br i1 %222, label %223, label %233

; <label>:223                                     ; preds = %203
  %224 = load i32, i32* %5, align 4
  %225 = sext i32 %224 to i64
  %226 = load %union.rec*, %union.rec** %z, align 8
  %227 = bitcast %union.rec* %226 to %struct.word_type*
  %228 = getelementptr inbounds %struct.word_type, %struct.word_type* %227, i32 0, i32 3
  %229 = bitcast %union.THIRD_UNION* %228 to %struct.anon.6*
  %230 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %229, i32 0, i32 1
  %231 = getelementptr inbounds [2 x i32], [2 x i32]* %230, i32 0, i64 %225
  %232 = load i32, i32* %231, align 4
  br label %243

; <label>:233                                     ; preds = %203
  %234 = load i32, i32* %2, align 4
  %235 = load i32, i32* %4, align 4
  %236 = add nsw i32 %234, %235
  %237 = load %union.rec*, %union.rec** %y, align 8
  %238 = bitcast %union.rec* %237 to %struct.closure_type*
  %239 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %238, i32 0, i32 6
  %240 = bitcast %union.anon.12* %239 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = sub nsw i32 %236, %241
  br label %243

; <label>:243                                     ; preds = %233, %223
  %244 = phi i32 [ %232, %223 ], [ %242, %233 ]
  store i32 %244, i32* %yf, align 4
  %245 = load i32, i32* %yf, align 4
  %246 = load %union.rec*, %union.rec** %y, align 8
  %247 = bitcast %union.rec* %246 to %struct.closure_type*
  %248 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %247, i32 0, i32 4
  %249 = bitcast %union.FOURTH_UNION* %248 to %struct.CONSTRAINT*
  %250 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %5, align 4
  %253 = sext i32 %252 to i64
  %254 = load %union.rec*, %union.rec** %z, align 8
  %255 = bitcast %union.rec* %254 to %struct.word_type*
  %256 = getelementptr inbounds %struct.word_type, %struct.word_type* %255, i32 0, i32 3
  %257 = bitcast %union.THIRD_UNION* %256 to %struct.anon.6*
  %258 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %257, i32 0, i32 0
  %259 = getelementptr inbounds [2 x i32], [2 x i32]* %258, i32 0, i64 %253
  %260 = load i32, i32* %259, align 4
  %261 = sub nsw i32 %251, %260
  %262 = icmp slt i32 %245, %261
  br i1 %262, label %263, label %280

; <label>:263                                     ; preds = %243
  %264 = load %union.rec*, %union.rec** %y, align 8
  %265 = bitcast %union.rec* %264 to %struct.closure_type*
  %266 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %265, i32 0, i32 4
  %267 = bitcast %union.FOURTH_UNION* %266 to %struct.CONSTRAINT*
  %268 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %5, align 4
  %271 = sext i32 %270 to i64
  %272 = load %union.rec*, %union.rec** %z, align 8
  %273 = bitcast %union.rec* %272 to %struct.word_type*
  %274 = getelementptr inbounds %struct.word_type, %struct.word_type* %273, i32 0, i32 3
  %275 = bitcast %union.THIRD_UNION* %274 to %struct.anon.6*
  %276 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %275, i32 0, i32 0
  %277 = getelementptr inbounds [2 x i32], [2 x i32]* %276, i32 0, i64 %271
  %278 = load i32, i32* %277, align 4
  %279 = sub nsw i32 %269, %278
  br label %282

; <label>:280                                     ; preds = %243
  %281 = load i32, i32* %yf, align 4
  br label %282

; <label>:282                                     ; preds = %280, %263
  %283 = phi i32 [ %279, %263 ], [ %281, %280 ]
  store i32 %283, i32* %yf, align 4
  %284 = load %union.rec*, %union.rec** %z, align 8
  %285 = load %union.rec*, %union.rec** %y, align 8
  %286 = bitcast %union.rec* %285 to %struct.closure_type*
  %287 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %286, i32 0, i32 6
  %288 = bitcast %union.anon.12* %287 to i32*
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %5, align 4
  %291 = sext i32 %290 to i64
  %292 = load %union.rec*, %union.rec** %z, align 8
  %293 = bitcast %union.rec* %292 to %struct.word_type*
  %294 = getelementptr inbounds %struct.word_type, %struct.word_type* %293, i32 0, i32 3
  %295 = bitcast %union.THIRD_UNION* %294 to %struct.anon.6*
  %296 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %295, i32 0, i32 0
  %297 = getelementptr inbounds [2 x i32], [2 x i32]* %296, i32 0, i64 %291
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* %yf, align 4
  %300 = load i32, i32* %5, align 4
  %301 = load i32, i32* %7, align 4
  %302 = call %union.rec* @FixAndPrintObject(%union.rec* %284, i32 %289, i32 %298, i32 %299, i32 %300, i32 0, i32 %301, i32 1, i32* %aback, i32* %afwd)
  store %union.rec* %302, %union.rec** %z, align 8
  %303 = load %union.rec*, %union.rec** %y, align 8
  %304 = bitcast %union.rec* %303 to %struct.word_type*
  %305 = getelementptr inbounds %struct.word_type, %struct.word_type* %304, i32 0, i32 2
  %306 = bitcast %union.SECOND_UNION* %305 to %struct.anon.1*
  %307 = bitcast %struct.anon.1* %306 to i32*
  %308 = load i32, i32* %307, align 4
  %309 = and i32 %308, -528482305
  store i32 %309, i32* %307, align 4
  br label %310

; <label>:310                                     ; preds = %282, %155
  %311 = load i32, i32* %5, align 4
  %312 = sext i32 %311 to i64
  %313 = load %union.rec*, %union.rec** %1, align 8
  %314 = bitcast %union.rec* %313 to %struct.word_type*
  %315 = getelementptr inbounds %struct.word_type, %struct.word_type* %314, i32 0, i32 3
  %316 = bitcast %union.THIRD_UNION* %315 to %struct.anon.6*
  %317 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %316, i32 0, i32 0
  %318 = getelementptr inbounds [2 x i32], [2 x i32]* %317, i32 0, i64 %312
  %319 = load i32, i32* %318, align 4
  %320 = load i32*, i32** %9, align 8
  store i32 %319, i32* %320, align 4
  %321 = load i32, i32* %5, align 4
  %322 = sext i32 %321 to i64
  %323 = load %union.rec*, %union.rec** %1, align 8
  %324 = bitcast %union.rec* %323 to %struct.word_type*
  %325 = getelementptr inbounds %struct.word_type, %struct.word_type* %324, i32 0, i32 3
  %326 = bitcast %union.THIRD_UNION* %325 to %struct.anon.6*
  %327 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %326, i32 0, i32 1
  %328 = getelementptr inbounds [2 x i32], [2 x i32]* %327, i32 0, i64 %322
  %329 = load i32, i32* %328, align 4
  %330 = load i32*, i32** %10, align 8
  store i32 %329, i32* %330, align 4
  br label %343

; <label>:331                                     ; preds = %76
  %332 = load %union.rec*, %union.rec** %y, align 8
  %333 = load i32, i32* %2, align 4
  %334 = load i32, i32* %3, align 4
  %335 = load i32, i32* %4, align 4
  %336 = load i32, i32* %5, align 4
  %337 = load i32, i32* %6, align 4
  %338 = load i32, i32* %7, align 4
  %339 = load i32, i32* %8, align 4
  %340 = load i32*, i32** %9, align 8
  %341 = load i32*, i32** %10, align 8
  %342 = call %union.rec* @FixAndPrintObject(%union.rec* %332, i32 %333, i32 %334, i32 %335, i32 %336, i32 %337, i32 %338, i32 %339, i32* %340, i32* %341)
  store %union.rec* %342, %union.rec** %y, align 8
  br label %343

; <label>:343                                     ; preds = %331, %310
  br label %8231

; <label>:344                                     ; preds = %0, %0
  %345 = load i32, i32* %5, align 4
  %346 = icmp eq i32 %345, 0
  %347 = zext i1 %346 to i32
  %348 = load %union.rec*, %union.rec** %1, align 8
  %349 = bitcast %union.rec* %348 to %struct.word_type*
  %350 = getelementptr inbounds %struct.word_type, %struct.word_type* %349, i32 0, i32 1
  %351 = bitcast %union.FIRST_UNION* %350 to %struct.anon*
  %352 = getelementptr inbounds %struct.anon, %struct.anon* %351, i32 0, i32 0
  %353 = load i8, i8* %352, align 1
  %354 = zext i8 %353 to i32
  %355 = icmp eq i32 %354, 45
  %356 = zext i1 %355 to i32
  %357 = icmp eq i32 %347, %356
  br i1 %357, label %358, label %602

; <label>:358                                     ; preds = %344
  %359 = load i32, i32* %5, align 4
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %368

; <label>:361                                     ; preds = %358
  %362 = load %union.rec*, %union.rec** %1, align 8
  %363 = bitcast %union.rec* %362 to %struct.word_type*
  %364 = getelementptr inbounds %struct.word_type, %struct.word_type* %363, i32 0, i32 0
  %365 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %364, i32 0, i64 0
  %366 = getelementptr inbounds %struct.LIST, %struct.LIST* %365, i32 0, i32 1
  %367 = load %union.rec*, %union.rec** %366, align 8
  br label %375

; <label>:368                                     ; preds = %358
  %369 = load %union.rec*, %union.rec** %1, align 8
  %370 = bitcast %union.rec* %369 to %struct.word_type*
  %371 = getelementptr inbounds %struct.word_type, %struct.word_type* %370, i32 0, i32 0
  %372 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %371, i32 0, i64 0
  %373 = getelementptr inbounds %struct.LIST, %struct.LIST* %372, i32 0, i32 0
  %374 = load %union.rec*, %union.rec** %373, align 8
  br label %375

; <label>:375                                     ; preds = %368, %361
  %376 = phi %union.rec* [ %367, %361 ], [ %374, %368 ]
  %377 = bitcast %union.rec* %376 to %struct.word_type*
  %378 = getelementptr inbounds %struct.word_type, %struct.word_type* %377, i32 0, i32 0
  %379 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %378, i32 0, i64 1
  %380 = getelementptr inbounds %struct.LIST, %struct.LIST* %379, i32 0, i32 0
  %381 = load %union.rec*, %union.rec** %380, align 8
  store %union.rec* %381, %union.rec** %y, align 8
  store i32 1, i32* %8, align 4
  br label %382

; <label>:382                                     ; preds = %392, %375
  %383 = load %union.rec*, %union.rec** %y, align 8
  %384 = bitcast %union.rec* %383 to %struct.word_type*
  %385 = getelementptr inbounds %struct.word_type, %struct.word_type* %384, i32 0, i32 1
  %386 = bitcast %union.FIRST_UNION* %385 to %struct.anon*
  %387 = getelementptr inbounds %struct.anon, %struct.anon* %386, i32 0, i32 0
  %388 = load i8, i8* %387, align 1
  %389 = zext i8 %388 to i32
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %401

; <label>:391                                     ; preds = %382
  br label %392

; <label>:392                                     ; preds = %391
  %393 = load %union.rec*, %union.rec** %y, align 8
  %394 = bitcast %union.rec* %393 to %struct.word_type*
  %395 = getelementptr inbounds %struct.word_type, %struct.word_type* %394, i32 0, i32 0
  %396 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %395, i32 0, i64 1
  %397 = getelementptr inbounds %struct.LIST, %struct.LIST* %396, i32 0, i32 0
  %398 = load %union.rec*, %union.rec** %397, align 8
  store %union.rec* %398, %union.rec** %y, align 8
  %399 = load i32, i32* %8, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %8, align 4
  br label %382

; <label>:401                                     ; preds = %382
  %402 = load %union.rec*, %union.rec** %y, align 8
  %403 = bitcast %union.rec* %402 to %struct.word_type*
  %404 = getelementptr inbounds %struct.word_type, %struct.word_type* %403, i32 0, i32 1
  %405 = bitcast %union.FIRST_UNION* %404 to %struct.anon*
  %406 = getelementptr inbounds %struct.anon, %struct.anon* %405, i32 0, i32 0
  %407 = load i8, i8* %406, align 1
  %408 = zext i8 %407 to i32
  %409 = icmp eq i32 %408, 13
  br i1 %409, label %422, label %410

; <label>:410                                     ; preds = %401
  %411 = load %union.rec*, %union.rec** %y, align 8
  %412 = bitcast %union.rec* %411 to %struct.word_type*
  %413 = getelementptr inbounds %struct.word_type, %struct.word_type* %412, i32 0, i32 1
  %414 = bitcast %union.FIRST_UNION* %413 to %struct.anon*
  %415 = getelementptr inbounds %struct.anon, %struct.anon* %414, i32 0, i32 0
  %416 = load i8, i8* %415, align 1
  %417 = zext i8 %416 to i32
  %418 = icmp eq i32 %417, 14
  br i1 %418, label %422, label %419

; <label>:419                                     ; preds = %410
  %420 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %421 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %420, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %422

; <label>:422                                     ; preds = %419, %410, %401
  %423 = load %union.rec*, %union.rec** %y, align 8
  %424 = bitcast %union.rec* %423 to %struct.word_type*
  %425 = getelementptr inbounds %struct.word_type, %struct.word_type* %424, i32 0, i32 2
  %426 = bitcast %union.SECOND_UNION* %425 to %struct.anon.1*
  %427 = bitcast %struct.anon.1* %426 to i32*
  %428 = load i32, i32* %427, align 4
  %429 = lshr i32 %428, 23
  %430 = and i32 %429, 63
  %431 = add i32 %430, 1
  %432 = load i32, i32* %427, align 4
  %433 = and i32 %431, 63
  %434 = shl i32 %433, 23
  %435 = and i32 %432, -528482305
  %436 = or i32 %435, %434
  store i32 %436, i32* %427, align 4
  %437 = load %union.rec*, %union.rec** %y, align 8
  %438 = bitcast %union.rec* %437 to %struct.word_type*
  %439 = getelementptr inbounds %struct.word_type, %struct.word_type* %438, i32 0, i32 2
  %440 = bitcast %union.SECOND_UNION* %439 to %struct.anon.1*
  %441 = bitcast %struct.anon.1* %440 to i32*
  %442 = load i32, i32* %441, align 4
  %443 = and i32 %442, 4095
  %444 = icmp eq i32 %433, %443
  br i1 %444, label %445, label %601

; <label>:445                                     ; preds = %422
  %446 = load %union.rec*, %union.rec** %y, align 8
  %447 = bitcast %union.rec* %446 to %struct.word_type*
  %448 = getelementptr inbounds %struct.word_type, %struct.word_type* %447, i32 0, i32 0
  %449 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %448, i32 0, i64 0
  %450 = getelementptr inbounds %struct.LIST, %struct.LIST* %449, i32 0, i32 1
  %451 = load %union.rec*, %union.rec** %450, align 8
  %452 = bitcast %union.rec* %451 to %struct.word_type*
  %453 = getelementptr inbounds %struct.word_type, %struct.word_type* %452, i32 0, i32 0
  %454 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %453, i32 0, i64 1
  %455 = getelementptr inbounds %struct.LIST, %struct.LIST* %454, i32 0, i32 0
  %456 = load %union.rec*, %union.rec** %455, align 8
  store %union.rec* %456, %union.rec** %z, align 8
  br label %457

; <label>:457                                     ; preds = %467, %445
  %458 = load %union.rec*, %union.rec** %z, align 8
  %459 = bitcast %union.rec* %458 to %struct.word_type*
  %460 = getelementptr inbounds %struct.word_type, %struct.word_type* %459, i32 0, i32 1
  %461 = bitcast %union.FIRST_UNION* %460 to %struct.anon*
  %462 = getelementptr inbounds %struct.anon, %struct.anon* %461, i32 0, i32 0
  %463 = load i8, i8* %462, align 1
  %464 = zext i8 %463 to i32
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %474

; <label>:466                                     ; preds = %457
  br label %467

; <label>:467                                     ; preds = %466
  %468 = load %union.rec*, %union.rec** %z, align 8
  %469 = bitcast %union.rec* %468 to %struct.word_type*
  %470 = getelementptr inbounds %struct.word_type, %struct.word_type* %469, i32 0, i32 0
  %471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %470, i32 0, i64 1
  %472 = getelementptr inbounds %struct.LIST, %struct.LIST* %471, i32 0, i32 0
  %473 = load %union.rec*, %union.rec** %472, align 8
  store %union.rec* %473, %union.rec** %z, align 8
  br label %457

; <label>:474                                     ; preds = %457
  %475 = load i32, i32* %2, align 4
  %476 = load i32, i32* %4, align 4
  %477 = add nsw i32 %475, %476
  %478 = load %union.rec*, %union.rec** %y, align 8
  %479 = bitcast %union.rec* %478 to %struct.closure_type*
  %480 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %479, i32 0, i32 6
  %481 = bitcast %union.anon.12* %480 to i32*
  %482 = load i32, i32* %481, align 4
  %483 = sub nsw i32 %477, %482
  %484 = load i32, i32* %5, align 4
  %485 = sext i32 %484 to i64
  %486 = load %union.rec*, %union.rec** %z, align 8
  %487 = bitcast %union.rec* %486 to %struct.word_type*
  %488 = getelementptr inbounds %struct.word_type, %struct.word_type* %487, i32 0, i32 3
  %489 = bitcast %union.THIRD_UNION* %488 to %struct.anon.6*
  %490 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %489, i32 0, i32 1
  %491 = getelementptr inbounds [2 x i32], [2 x i32]* %490, i32 0, i64 %485
  %492 = load i32, i32* %491, align 4
  %493 = icmp slt i32 %483, %492
  br i1 %493, label %494, label %504

; <label>:494                                     ; preds = %474
  %495 = load i32, i32* %5, align 4
  %496 = sext i32 %495 to i64
  %497 = load %union.rec*, %union.rec** %z, align 8
  %498 = bitcast %union.rec* %497 to %struct.word_type*
  %499 = getelementptr inbounds %struct.word_type, %struct.word_type* %498, i32 0, i32 3
  %500 = bitcast %union.THIRD_UNION* %499 to %struct.anon.6*
  %501 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %500, i32 0, i32 1
  %502 = getelementptr inbounds [2 x i32], [2 x i32]* %501, i32 0, i64 %496
  %503 = load i32, i32* %502, align 4
  br label %514

; <label>:504                                     ; preds = %474
  %505 = load i32, i32* %2, align 4
  %506 = load i32, i32* %4, align 4
  %507 = add nsw i32 %505, %506
  %508 = load %union.rec*, %union.rec** %y, align 8
  %509 = bitcast %union.rec* %508 to %struct.closure_type*
  %510 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %509, i32 0, i32 6
  %511 = bitcast %union.anon.12* %510 to i32*
  %512 = load i32, i32* %511, align 4
  %513 = sub nsw i32 %507, %512
  br label %514

; <label>:514                                     ; preds = %504, %494
  %515 = phi i32 [ %503, %494 ], [ %513, %504 ]
  store i32 %515, i32* %yf, align 4
  %516 = load i32, i32* %yf, align 4
  %517 = load %union.rec*, %union.rec** %y, align 8
  %518 = bitcast %union.rec* %517 to %struct.closure_type*
  %519 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %518, i32 0, i32 4
  %520 = bitcast %union.FOURTH_UNION* %519 to %struct.CONSTRAINT*
  %521 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %520, i32 0, i32 1
  %522 = load i32, i32* %521, align 4
  %523 = load i32, i32* %5, align 4
  %524 = sext i32 %523 to i64
  %525 = load %union.rec*, %union.rec** %z, align 8
  %526 = bitcast %union.rec* %525 to %struct.word_type*
  %527 = getelementptr inbounds %struct.word_type, %struct.word_type* %526, i32 0, i32 3
  %528 = bitcast %union.THIRD_UNION* %527 to %struct.anon.6*
  %529 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %528, i32 0, i32 0
  %530 = getelementptr inbounds [2 x i32], [2 x i32]* %529, i32 0, i64 %524
  %531 = load i32, i32* %530, align 4
  %532 = sub nsw i32 %522, %531
  %533 = icmp slt i32 %516, %532
  br i1 %533, label %534, label %551

; <label>:534                                     ; preds = %514
  %535 = load %union.rec*, %union.rec** %y, align 8
  %536 = bitcast %union.rec* %535 to %struct.closure_type*
  %537 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %536, i32 0, i32 4
  %538 = bitcast %union.FOURTH_UNION* %537 to %struct.CONSTRAINT*
  %539 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %538, i32 0, i32 1
  %540 = load i32, i32* %539, align 4
  %541 = load i32, i32* %5, align 4
  %542 = sext i32 %541 to i64
  %543 = load %union.rec*, %union.rec** %z, align 8
  %544 = bitcast %union.rec* %543 to %struct.word_type*
  %545 = getelementptr inbounds %struct.word_type, %struct.word_type* %544, i32 0, i32 3
  %546 = bitcast %union.THIRD_UNION* %545 to %struct.anon.6*
  %547 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %546, i32 0, i32 0
  %548 = getelementptr inbounds [2 x i32], [2 x i32]* %547, i32 0, i64 %542
  %549 = load i32, i32* %548, align 4
  %550 = sub nsw i32 %540, %549
  br label %553

; <label>:551                                     ; preds = %514
  %552 = load i32, i32* %yf, align 4
  br label %553

; <label>:553                                     ; preds = %551, %534
  %554 = phi i32 [ %550, %534 ], [ %552, %551 ]
  store i32 %554, i32* %yf, align 4
  %555 = load %union.rec*, %union.rec** %z, align 8
  %556 = load %union.rec*, %union.rec** %y, align 8
  %557 = bitcast %union.rec* %556 to %struct.closure_type*
  %558 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %557, i32 0, i32 6
  %559 = bitcast %union.anon.12* %558 to i32*
  %560 = load i32, i32* %559, align 4
  %561 = load i32, i32* %5, align 4
  %562 = sext i32 %561 to i64
  %563 = load %union.rec*, %union.rec** %z, align 8
  %564 = bitcast %union.rec* %563 to %struct.word_type*
  %565 = getelementptr inbounds %struct.word_type, %struct.word_type* %564, i32 0, i32 3
  %566 = bitcast %union.THIRD_UNION* %565 to %struct.anon.6*
  %567 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %566, i32 0, i32 0
  %568 = getelementptr inbounds [2 x i32], [2 x i32]* %567, i32 0, i64 %562
  %569 = load i32, i32* %568, align 4
  %570 = load i32, i32* %yf, align 4
  %571 = load i32, i32* %5, align 4
  %572 = load i32, i32* %7, align 4
  %573 = call %union.rec* @FixAndPrintObject(%union.rec* %555, i32 %560, i32 %569, i32 %570, i32 %571, i32 0, i32 %572, i32 1, i32* %aback, i32* %afwd)
  store %union.rec* %573, %union.rec** %z, align 8
  %574 = load i32, i32* %5, align 4
  %575 = sext i32 %574 to i64
  %576 = load %union.rec*, %union.rec** %1, align 8
  %577 = bitcast %union.rec* %576 to %struct.word_type*
  %578 = getelementptr inbounds %struct.word_type, %struct.word_type* %577, i32 0, i32 3
  %579 = bitcast %union.THIRD_UNION* %578 to %struct.anon.6*
  %580 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %579, i32 0, i32 0
  %581 = getelementptr inbounds [2 x i32], [2 x i32]* %580, i32 0, i64 %575
  %582 = load i32, i32* %581, align 4
  %583 = load i32*, i32** %9, align 8
  store i32 %582, i32* %583, align 4
  %584 = load i32, i32* %5, align 4
  %585 = sext i32 %584 to i64
  %586 = load %union.rec*, %union.rec** %1, align 8
  %587 = bitcast %union.rec* %586 to %struct.word_type*
  %588 = getelementptr inbounds %struct.word_type, %struct.word_type* %587, i32 0, i32 3
  %589 = bitcast %union.THIRD_UNION* %588 to %struct.anon.6*
  %590 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %589, i32 0, i32 1
  %591 = getelementptr inbounds [2 x i32], [2 x i32]* %590, i32 0, i64 %585
  %592 = load i32, i32* %591, align 4
  %593 = load i32*, i32** %10, align 8
  store i32 %592, i32* %593, align 4
  %594 = load %union.rec*, %union.rec** %y, align 8
  %595 = bitcast %union.rec* %594 to %struct.word_type*
  %596 = getelementptr inbounds %struct.word_type, %struct.word_type* %595, i32 0, i32 2
  %597 = bitcast %union.SECOND_UNION* %596 to %struct.anon.1*
  %598 = bitcast %struct.anon.1* %597 to i32*
  %599 = load i32, i32* %598, align 4
  %600 = and i32 %599, -528482305
  store i32 %600, i32* %598, align 4
  br label %601

; <label>:601                                     ; preds = %553, %422
  br label %602

; <label>:602                                     ; preds = %601, %344
  br label %8231

; <label>:603                                     ; preds = %0, %0
  %604 = load i32, i32* %5, align 4
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %606, label %646

; <label>:606                                     ; preds = %603
  %607 = load i32, i32* %2, align 4
  %608 = load %union.rec*, %union.rec** %1, align 8
  %609 = bitcast %union.rec* %608 to %struct.word_type*
  %610 = getelementptr inbounds %struct.word_type, %struct.word_type* %609, i32 0, i32 1
  %611 = bitcast %union.FIRST_UNION* %610 to %struct.anon*
  %612 = getelementptr inbounds %struct.anon, %struct.anon* %611, i32 0, i32 2
  store i32 %607, i32* %612, align 4
  %613 = load %union.rec*, %union.rec** %1, align 8
  %614 = bitcast %union.rec* %613 to %struct.word_type*
  %615 = getelementptr inbounds %struct.word_type, %struct.word_type* %614, i32 0, i32 4
  %616 = getelementptr inbounds [4 x i8], [4 x i8]* %615, i32 0, i64 0
  %617 = load i8, i8* %616, align 1
  %618 = zext i8 %617 to i32
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %620, label %645

; <label>:620                                     ; preds = %606
  %621 = load %union.rec*, %union.rec** %1, align 8
  %622 = bitcast %union.rec* %621 to %struct.word_type*
  %623 = getelementptr inbounds %struct.word_type, %struct.word_type* %622, i32 0, i32 2
  %624 = bitcast %union.SECOND_UNION* %623 to %struct.anon.1*
  %625 = bitcast %struct.anon.1* %624 to i32*
  %626 = load i32, i32* %625, align 4
  %627 = and i32 %626, 4095
  %628 = zext i32 %627 to i64
  %629 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %630 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %629, i64 %628
  %631 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %630, i32 0, i32 6
  %632 = load %union.rec*, %union.rec** %631, align 8
  store %union.rec* %632, %union.rec** %face, align 8
  %633 = load %union.rec*, %union.rec** %face, align 8
  %634 = bitcast %union.rec* %633 to %struct.word_type*
  %635 = getelementptr inbounds %struct.word_type, %struct.word_type* %634, i32 0, i32 2
  %636 = bitcast %union.SECOND_UNION* %635 to %struct.anon.4*
  %637 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %636, i32 0, i32 1
  %638 = load i16, i16* %637, align 2
  %639 = zext i16 %638 to i32
  %640 = load i32, i32* @font_curr_page, align 4
  %641 = icmp slt i32 %639, %640
  br i1 %641, label %642, label %644

; <label>:642                                     ; preds = %620
  %643 = load %union.rec*, %union.rec** %face, align 8
  call void @FontPageUsed(%union.rec* %643)
  br label %644

; <label>:644                                     ; preds = %642, %620
  br label %645

; <label>:645                                     ; preds = %644, %606
  br label %669

; <label>:646                                     ; preds = %603
  %647 = load %union.rec*, %union.rec** %1, align 8
  %648 = bitcast %union.rec* %647 to %struct.word_type*
  %649 = getelementptr inbounds %struct.word_type, %struct.word_type* %648, i32 0, i32 4
  %650 = getelementptr inbounds [4 x i8], [4 x i8]* %649, i32 0, i64 0
  %651 = load i8, i8* %650, align 1
  %652 = zext i8 %651 to i32
  %653 = icmp ne i32 %652, 0
  br i1 %653, label %654, label %668

; <label>:654                                     ; preds = %646
  %655 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %656 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %655, i32 0, i32 18
  %657 = load void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32)** %656, align 8
  %658 = load %union.rec*, %union.rec** %1, align 8
  %659 = load %union.rec*, %union.rec** %1, align 8
  %660 = bitcast %union.rec* %659 to %struct.word_type*
  %661 = getelementptr inbounds %struct.word_type, %struct.word_type* %660, i32 0, i32 1
  %662 = bitcast %union.FIRST_UNION* %661 to %struct.anon*
  %663 = getelementptr inbounds %struct.anon, %struct.anon* %662, i32 0, i32 2
  %664 = load i32, i32* %663, align 4
  %665 = load i32, i32* %7, align 4
  %666 = load i32, i32* %2, align 4
  %667 = sub nsw i32 %665, %666
  call void %657(%union.rec* %658, i32 %664, i32 %667)
  br label %668

; <label>:668                                     ; preds = %654, %646
  br label %669

; <label>:669                                     ; preds = %668, %645
  %670 = load i32, i32* %3, align 4
  %671 = load i32*, i32** %9, align 8
  store i32 %670, i32* %671, align 4
  %672 = load i32, i32* %4, align 4
  %673 = load i32*, i32** %10, align 8
  store i32 %672, i32* %673, align 4
  br label %8231

; <label>:674                                     ; preds = %0, %0
  %675 = load %union.rec*, %union.rec** %1, align 8
  %676 = bitcast %union.rec* %675 to %struct.word_type*
  %677 = getelementptr inbounds %struct.word_type, %struct.word_type* %676, i32 0, i32 0
  %678 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %677, i32 0, i64 0
  %679 = getelementptr inbounds %struct.LIST, %struct.LIST* %678, i32 0, i32 1
  %680 = load %union.rec*, %union.rec** %679, align 8
  %681 = bitcast %union.rec* %680 to %struct.word_type*
  %682 = getelementptr inbounds %struct.word_type, %struct.word_type* %681, i32 0, i32 0
  %683 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %682, i32 0, i64 1
  %684 = getelementptr inbounds %struct.LIST, %struct.LIST* %683, i32 0, i32 0
  %685 = load %union.rec*, %union.rec** %684, align 8
  store %union.rec* %685, %union.rec** %y, align 8
  store i32 1, i32* %8, align 4
  br label %686

; <label>:686                                     ; preds = %696, %674
  %687 = load %union.rec*, %union.rec** %y, align 8
  %688 = bitcast %union.rec* %687 to %struct.word_type*
  %689 = getelementptr inbounds %struct.word_type, %struct.word_type* %688, i32 0, i32 1
  %690 = bitcast %union.FIRST_UNION* %689 to %struct.anon*
  %691 = getelementptr inbounds %struct.anon, %struct.anon* %690, i32 0, i32 0
  %692 = load i8, i8* %691, align 1
  %693 = zext i8 %692 to i32
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %695, label %705

; <label>:695                                     ; preds = %686
  br label %696

; <label>:696                                     ; preds = %695
  %697 = load %union.rec*, %union.rec** %y, align 8
  %698 = bitcast %union.rec* %697 to %struct.word_type*
  %699 = getelementptr inbounds %struct.word_type, %struct.word_type* %698, i32 0, i32 0
  %700 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %699, i32 0, i64 1
  %701 = getelementptr inbounds %struct.LIST, %struct.LIST* %700, i32 0, i32 0
  %702 = load %union.rec*, %union.rec** %701, align 8
  store %union.rec* %702, %union.rec** %y, align 8
  %703 = load i32, i32* %8, align 4
  %704 = add nsw i32 %703, 1
  store i32 %704, i32* %8, align 4
  br label %686

; <label>:705                                     ; preds = %686
  %706 = load i32, i32* %5, align 4
  %707 = icmp eq i32 %706, 0
  %708 = zext i1 %707 to i32
  %709 = load %union.rec*, %union.rec** %1, align 8
  %710 = bitcast %union.rec* %709 to %struct.word_type*
  %711 = getelementptr inbounds %struct.word_type, %struct.word_type* %710, i32 0, i32 1
  %712 = bitcast %union.FIRST_UNION* %711 to %struct.anon*
  %713 = getelementptr inbounds %struct.anon, %struct.anon* %712, i32 0, i32 0
  %714 = load i8, i8* %713, align 1
  %715 = zext i8 %714 to i32
  %716 = icmp eq i32 %715, 26
  %717 = zext i1 %716 to i32
  %718 = icmp eq i32 %708, %717
  br i1 %718, label %719, label %756

; <label>:719                                     ; preds = %705
  %720 = load %union.rec*, %union.rec** %1, align 8
  %721 = bitcast %union.rec* %720 to %struct.closure_type*
  %722 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %721, i32 0, i32 4
  %723 = bitcast %union.FOURTH_UNION* %722 to %struct.CONSTRAINT*
  %724 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %723, i32 0, i32 1
  %725 = load i32, i32* %724, align 4
  %726 = load i32, i32* %5, align 4
  %727 = sext i32 %726 to i64
  %728 = load %union.rec*, %union.rec** %y, align 8
  %729 = bitcast %union.rec* %728 to %struct.word_type*
  %730 = getelementptr inbounds %struct.word_type, %struct.word_type* %729, i32 0, i32 3
  %731 = bitcast %union.THIRD_UNION* %730 to %struct.anon.6*
  %732 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %731, i32 0, i32 0
  %733 = getelementptr inbounds [2 x i32], [2 x i32]* %732, i32 0, i64 %727
  %734 = load i32, i32* %733, align 4
  %735 = sub nsw i32 %725, %734
  store i32 %735, i32* %yf, align 4
  %736 = load %union.rec*, %union.rec** %y, align 8
  %737 = load i32, i32* %2, align 4
  %738 = load i32, i32* %5, align 4
  %739 = sext i32 %738 to i64
  %740 = load %union.rec*, %union.rec** %y, align 8
  %741 = bitcast %union.rec* %740 to %struct.word_type*
  %742 = getelementptr inbounds %struct.word_type, %struct.word_type* %741, i32 0, i32 3
  %743 = bitcast %union.THIRD_UNION* %742 to %struct.anon.6*
  %744 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %743, i32 0, i32 0
  %745 = getelementptr inbounds [2 x i32], [2 x i32]* %744, i32 0, i64 %739
  %746 = load i32, i32* %745, align 4
  %747 = load i32, i32* %yf, align 4
  %748 = load i32, i32* %5, align 4
  %749 = load i32, i32* %7, align 4
  %750 = load i32, i32* %8, align 4
  %751 = call %union.rec* @FixAndPrintObject(%union.rec* %736, i32 %737, i32 %746, i32 %747, i32 %748, i32 0, i32 %749, i32 %750, i32* %aback, i32* %afwd)
  store %union.rec* %751, %union.rec** %y, align 8
  %752 = load i32, i32* %3, align 4
  %753 = load i32*, i32** %9, align 8
  store i32 %752, i32* %753, align 4
  %754 = load i32, i32* %4, align 4
  %755 = load i32*, i32** %10, align 8
  store i32 %754, i32* %755, align 4
  br label %768

; <label>:756                                     ; preds = %705
  %757 = load %union.rec*, %union.rec** %y, align 8
  %758 = load i32, i32* %2, align 4
  %759 = load i32, i32* %3, align 4
  %760 = load i32, i32* %4, align 4
  %761 = load i32, i32* %5, align 4
  %762 = load i32, i32* %6, align 4
  %763 = load i32, i32* %7, align 4
  %764 = load i32, i32* %8, align 4
  %765 = load i32*, i32** %9, align 8
  %766 = load i32*, i32** %10, align 8
  %767 = call %union.rec* @FixAndPrintObject(%union.rec* %757, i32 %758, i32 %759, i32 %760, i32 %761, i32 %762, i32 %763, i32 %764, i32* %765, i32* %766)
  store %union.rec* %767, %union.rec** %y, align 8
  br label %768

; <label>:768                                     ; preds = %756, %719
  br label %8231

; <label>:769                                     ; preds = %0, %0
  %770 = load %union.rec*, %union.rec** %1, align 8
  %771 = bitcast %union.rec* %770 to %struct.word_type*
  %772 = getelementptr inbounds %struct.word_type, %struct.word_type* %771, i32 0, i32 0
  %773 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %772, i32 0, i64 0
  %774 = getelementptr inbounds %struct.LIST, %struct.LIST* %773, i32 0, i32 1
  %775 = load %union.rec*, %union.rec** %774, align 8
  %776 = bitcast %union.rec* %775 to %struct.word_type*
  %777 = getelementptr inbounds %struct.word_type, %struct.word_type* %776, i32 0, i32 0
  %778 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %777, i32 0, i64 1
  %779 = getelementptr inbounds %struct.LIST, %struct.LIST* %778, i32 0, i32 0
  %780 = load %union.rec*, %union.rec** %779, align 8
  store %union.rec* %780, %union.rec** %y, align 8
  store i32 1, i32* %8, align 4
  br label %781

; <label>:781                                     ; preds = %791, %769
  %782 = load %union.rec*, %union.rec** %y, align 8
  %783 = bitcast %union.rec* %782 to %struct.word_type*
  %784 = getelementptr inbounds %struct.word_type, %struct.word_type* %783, i32 0, i32 1
  %785 = bitcast %union.FIRST_UNION* %784 to %struct.anon*
  %786 = getelementptr inbounds %struct.anon, %struct.anon* %785, i32 0, i32 0
  %787 = load i8, i8* %786, align 1
  %788 = zext i8 %787 to i32
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %790, label %800

; <label>:790                                     ; preds = %781
  br label %791

; <label>:791                                     ; preds = %790
  %792 = load %union.rec*, %union.rec** %y, align 8
  %793 = bitcast %union.rec* %792 to %struct.word_type*
  %794 = getelementptr inbounds %struct.word_type, %struct.word_type* %793, i32 0, i32 0
  %795 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %794, i32 0, i64 1
  %796 = getelementptr inbounds %struct.LIST, %struct.LIST* %795, i32 0, i32 0
  %797 = load %union.rec*, %union.rec** %796, align 8
  store %union.rec* %797, %union.rec** %y, align 8
  %798 = load i32, i32* %8, align 4
  %799 = add nsw i32 %798, 1
  store i32 %799, i32* %8, align 4
  br label %781

; <label>:800                                     ; preds = %781
  %801 = load i32, i32* %5, align 4
  %802 = icmp eq i32 %801, 0
  %803 = zext i1 %802 to i32
  %804 = load %union.rec*, %union.rec** %1, align 8
  %805 = bitcast %union.rec* %804 to %struct.word_type*
  %806 = getelementptr inbounds %struct.word_type, %struct.word_type* %805, i32 0, i32 1
  %807 = bitcast %union.FIRST_UNION* %806 to %struct.anon*
  %808 = getelementptr inbounds %struct.anon, %struct.anon* %807, i32 0, i32 0
  %809 = load i8, i8* %808, align 1
  %810 = zext i8 %809 to i32
  %811 = icmp eq i32 %810, 28
  %812 = zext i1 %811 to i32
  %813 = icmp eq i32 %803, %812
  br i1 %813, label %814, label %913

; <label>:814                                     ; preds = %800
  %815 = load %union.rec*, %union.rec** %1, align 8
  %816 = load %union.rec*, %union.rec** %y, align 8
  %817 = load i32, i32* %5, align 4
  %818 = call i32 @FindShift(%union.rec* %815, %union.rec* %816, i32 %817)
  store i32 %818, i32* %f, align 4
  %819 = load i32, i32* %2, align 4
  %820 = load i32, i32* %f, align 4
  %821 = sub nsw i32 %819, %820
  store i32 %821, i32* %ymk, align 4
  %822 = load i32, i32* %3, align 4
  %823 = load i32, i32* %f, align 4
  %824 = sub nsw i32 %822, %823
  %825 = icmp slt i32 0, %824
  br i1 %825, label %826, label %830

; <label>:826                                     ; preds = %814
  %827 = load i32, i32* %3, align 4
  %828 = load i32, i32* %f, align 4
  %829 = sub nsw i32 %827, %828
  br label %831

; <label>:830                                     ; preds = %814
  br label %831

; <label>:831                                     ; preds = %830, %826
  %832 = phi i32 [ %829, %826 ], [ 0, %830 ]
  store i32 %832, i32* %yb, align 4
  %833 = load i32, i32* %4, align 4
  %834 = load i32, i32* %f, align 4
  %835 = add nsw i32 %833, %834
  %836 = icmp slt i32 0, %835
  br i1 %836, label %837, label %841

; <label>:837                                     ; preds = %831
  %838 = load i32, i32* %4, align 4
  %839 = load i32, i32* %f, align 4
  %840 = add nsw i32 %838, %839
  br label %842

; <label>:841                                     ; preds = %831
  br label %842

; <label>:842                                     ; preds = %841, %837
  %843 = phi i32 [ %840, %837 ], [ 0, %841 ]
  store i32 %843, i32* %yf, align 4
  %844 = load %union.rec*, %union.rec** %y, align 8
  %845 = load i32, i32* %ymk, align 4
  %846 = load i32, i32* %yb, align 4
  %847 = load i32, i32* %yf, align 4
  %848 = load i32, i32* %5, align 4
  %849 = load i32, i32* %6, align 4
  %850 = load i32, i32* %7, align 4
  %851 = load i32, i32* %8, align 4
  %852 = call %union.rec* @FixAndPrintObject(%union.rec* %844, i32 %845, i32 %846, i32 %847, i32 %848, i32 %849, i32 %850, i32 %851, i32* %aback, i32* %afwd)
  store %union.rec* %852, %union.rec** %y, align 8
  %853 = load %union.rec*, %union.rec** %1, align 8
  %854 = load %union.rec*, %union.rec** %y, align 8
  %855 = load i32, i32* %5, align 4
  %856 = call i32 @FindShift(%union.rec* %853, %union.rec* %854, i32 %855)
  store i32 %856, i32* %f, align 4
  %857 = load i32, i32* %aback, align 4
  %858 = load i32, i32* %f, align 4
  %859 = add nsw i32 %857, %858
  %860 = icmp slt i32 0, %859
  br i1 %860, label %861, label %865

; <label>:861                                     ; preds = %842
  %862 = load i32, i32* %aback, align 4
  %863 = load i32, i32* %f, align 4
  %864 = add nsw i32 %862, %863
  br label %866

; <label>:865                                     ; preds = %842
  br label %866

; <label>:866                                     ; preds = %865, %861
  %867 = phi i32 [ %864, %861 ], [ 0, %865 ]
  %868 = icmp slt i32 8388607, %867
  br i1 %868, label %869, label %870

; <label>:869                                     ; preds = %866
  br label %882

; <label>:870                                     ; preds = %866
  %871 = load i32, i32* %aback, align 4
  %872 = load i32, i32* %f, align 4
  %873 = add nsw i32 %871, %872
  %874 = icmp slt i32 0, %873
  br i1 %874, label %875, label %879

; <label>:875                                     ; preds = %870
  %876 = load i32, i32* %aback, align 4
  %877 = load i32, i32* %f, align 4
  %878 = add nsw i32 %876, %877
  br label %880

; <label>:879                                     ; preds = %870
  br label %880

; <label>:880                                     ; preds = %879, %875
  %881 = phi i32 [ %878, %875 ], [ 0, %879 ]
  br label %882

; <label>:882                                     ; preds = %880, %869
  %883 = phi i32 [ 8388607, %869 ], [ %881, %880 ]
  %884 = load i32*, i32** %9, align 8
  store i32 %883, i32* %884, align 4
  %885 = load i32, i32* %afwd, align 4
  %886 = load i32, i32* %f, align 4
  %887 = sub nsw i32 %885, %886
  %888 = icmp slt i32 0, %887
  br i1 %888, label %889, label %893

; <label>:889                                     ; preds = %882
  %890 = load i32, i32* %afwd, align 4
  %891 = load i32, i32* %f, align 4
  %892 = sub nsw i32 %890, %891
  br label %894

; <label>:893                                     ; preds = %882
  br label %894

; <label>:894                                     ; preds = %893, %889
  %895 = phi i32 [ %892, %889 ], [ 0, %893 ]
  %896 = icmp slt i32 8388607, %895
  br i1 %896, label %897, label %898

; <label>:897                                     ; preds = %894
  br label %910

; <label>:898                                     ; preds = %894
  %899 = load i32, i32* %afwd, align 4
  %900 = load i32, i32* %f, align 4
  %901 = sub nsw i32 %899, %900
  %902 = icmp slt i32 0, %901
  br i1 %902, label %903, label %907

; <label>:903                                     ; preds = %898
  %904 = load i32, i32* %afwd, align 4
  %905 = load i32, i32* %f, align 4
  %906 = sub nsw i32 %904, %905
  br label %908

; <label>:907                                     ; preds = %898
  br label %908

; <label>:908                                     ; preds = %907, %903
  %909 = phi i32 [ %906, %903 ], [ 0, %907 ]
  br label %910

; <label>:910                                     ; preds = %908, %897
  %911 = phi i32 [ 8388607, %897 ], [ %909, %908 ]
  %912 = load i32*, i32** %10, align 8
  store i32 %911, i32* %912, align 4
  br label %925

; <label>:913                                     ; preds = %800
  %914 = load %union.rec*, %union.rec** %y, align 8
  %915 = load i32, i32* %2, align 4
  %916 = load i32, i32* %3, align 4
  %917 = load i32, i32* %4, align 4
  %918 = load i32, i32* %5, align 4
  %919 = load i32, i32* %6, align 4
  %920 = load i32, i32* %7, align 4
  %921 = load i32, i32* %8, align 4
  %922 = load i32*, i32** %9, align 8
  %923 = load i32*, i32** %10, align 8
  %924 = call %union.rec* @FixAndPrintObject(%union.rec* %914, i32 %915, i32 %916, i32 %917, i32 %918, i32 %919, i32 %920, i32 %921, i32* %922, i32* %923)
  store %union.rec* %924, %union.rec** %y, align 8
  br label %925

; <label>:925                                     ; preds = %913, %910
  br label %8231

; <label>:926                                     ; preds = %0, %0
  %927 = load %union.rec*, %union.rec** %1, align 8
  %928 = bitcast %union.rec* %927 to %struct.word_type*
  %929 = getelementptr inbounds %struct.word_type, %struct.word_type* %928, i32 0, i32 0
  %930 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %929, i32 0, i64 0
  %931 = getelementptr inbounds %struct.LIST, %struct.LIST* %930, i32 0, i32 1
  %932 = load %union.rec*, %union.rec** %931, align 8
  %933 = bitcast %union.rec* %932 to %struct.word_type*
  %934 = getelementptr inbounds %struct.word_type, %struct.word_type* %933, i32 0, i32 0
  %935 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %934, i32 0, i64 1
  %936 = getelementptr inbounds %struct.LIST, %struct.LIST* %935, i32 0, i32 0
  %937 = load %union.rec*, %union.rec** %936, align 8
  store %union.rec* %937, %union.rec** %y, align 8
  store i32 1, i32* %8, align 4
  br label %938

; <label>:938                                     ; preds = %948, %926
  %939 = load %union.rec*, %union.rec** %y, align 8
  %940 = bitcast %union.rec* %939 to %struct.word_type*
  %941 = getelementptr inbounds %struct.word_type, %struct.word_type* %940, i32 0, i32 1
  %942 = bitcast %union.FIRST_UNION* %941 to %struct.anon*
  %943 = getelementptr inbounds %struct.anon, %struct.anon* %942, i32 0, i32 0
  %944 = load i8, i8* %943, align 1
  %945 = zext i8 %944 to i32
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %947, label %957

; <label>:947                                     ; preds = %938
  br label %948

; <label>:948                                     ; preds = %947
  %949 = load %union.rec*, %union.rec** %y, align 8
  %950 = bitcast %union.rec* %949 to %struct.word_type*
  %951 = getelementptr inbounds %struct.word_type, %struct.word_type* %950, i32 0, i32 0
  %952 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %951, i32 0, i64 1
  %953 = getelementptr inbounds %struct.LIST, %struct.LIST* %952, i32 0, i32 0
  %954 = load %union.rec*, %union.rec** %953, align 8
  store %union.rec* %954, %union.rec** %y, align 8
  %955 = load i32, i32* %8, align 4
  %956 = add nsw i32 %955, 1
  store i32 %956, i32* %8, align 4
  br label %938

; <label>:957                                     ; preds = %938
  %958 = load i32, i32* %5, align 4
  %959 = icmp eq i32 %958, 0
  %960 = zext i1 %959 to i32
  %961 = load %union.rec*, %union.rec** %1, align 8
  %962 = bitcast %union.rec* %961 to %struct.word_type*
  %963 = getelementptr inbounds %struct.word_type, %struct.word_type* %962, i32 0, i32 1
  %964 = bitcast %union.FIRST_UNION* %963 to %struct.anon*
  %965 = getelementptr inbounds %struct.anon, %struct.anon* %964, i32 0, i32 0
  %966 = load i8, i8* %965, align 1
  %967 = zext i8 %966 to i32
  %968 = icmp eq i32 %967, 36
  %969 = zext i1 %968 to i32
  %970 = icmp eq i32 %960, %969
  br i1 %970, label %971, label %1000

; <label>:971                                     ; preds = %957
  %972 = load %union.rec*, %union.rec** %y, align 8
  %973 = load i32, i32* %2, align 4
  %974 = load i32, i32* %5, align 4
  %975 = sext i32 %974 to i64
  %976 = load %union.rec*, %union.rec** %y, align 8
  %977 = bitcast %union.rec* %976 to %struct.word_type*
  %978 = getelementptr inbounds %struct.word_type, %struct.word_type* %977, i32 0, i32 3
  %979 = bitcast %union.THIRD_UNION* %978 to %struct.anon.6*
  %980 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %979, i32 0, i32 0
  %981 = getelementptr inbounds [2 x i32], [2 x i32]* %980, i32 0, i64 %975
  %982 = load i32, i32* %981, align 4
  %983 = load i32, i32* %5, align 4
  %984 = sext i32 %983 to i64
  %985 = load %union.rec*, %union.rec** %y, align 8
  %986 = bitcast %union.rec* %985 to %struct.word_type*
  %987 = getelementptr inbounds %struct.word_type, %struct.word_type* %986, i32 0, i32 3
  %988 = bitcast %union.THIRD_UNION* %987 to %struct.anon.6*
  %989 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %988, i32 0, i32 1
  %990 = getelementptr inbounds [2 x i32], [2 x i32]* %989, i32 0, i64 %984
  %991 = load i32, i32* %990, align 4
  %992 = load i32, i32* %5, align 4
  %993 = load i32, i32* %7, align 4
  %994 = load i32, i32* %8, align 4
  %995 = call %union.rec* @FixAndPrintObject(%union.rec* %972, i32 %973, i32 %982, i32 %991, i32 %992, i32 0, i32 %993, i32 %994, i32* %aback, i32* %afwd)
  store %union.rec* %995, %union.rec** %y, align 8
  %996 = load i32, i32* %3, align 4
  %997 = load i32*, i32** %9, align 8
  store i32 %996, i32* %997, align 4
  %998 = load i32, i32* %4, align 4
  %999 = load i32*, i32** %10, align 8
  store i32 %998, i32* %999, align 4
  br label %1012

; <label>:1000                                    ; preds = %957
  %1001 = load %union.rec*, %union.rec** %y, align 8
  %1002 = load i32, i32* %2, align 4
  %1003 = load i32, i32* %3, align 4
  %1004 = load i32, i32* %4, align 4
  %1005 = load i32, i32* %5, align 4
  %1006 = load i32, i32* %6, align 4
  %1007 = load i32, i32* %7, align 4
  %1008 = load i32, i32* %8, align 4
  %1009 = load i32*, i32** %9, align 8
  %1010 = load i32*, i32** %10, align 8
  %1011 = call %union.rec* @FixAndPrintObject(%union.rec* %1001, i32 %1002, i32 %1003, i32 %1004, i32 %1005, i32 %1006, i32 %1007, i32 %1008, i32* %1009, i32* %1010)
  store %union.rec* %1011, %union.rec** %y, align 8
  br label %1012

; <label>:1012                                    ; preds = %1000, %971
  br label %8231

; <label>:1013                                    ; preds = %0, %0, %0, %0, %0, %0
  %1014 = load %union.rec*, %union.rec** %1, align 8
  %1015 = bitcast %union.rec* %1014 to %struct.word_type*
  %1016 = getelementptr inbounds %struct.word_type, %struct.word_type* %1015, i32 0, i32 0
  %1017 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1016, i32 0, i64 0
  %1018 = getelementptr inbounds %struct.LIST, %struct.LIST* %1017, i32 0, i32 1
  %1019 = load %union.rec*, %union.rec** %1018, align 8
  %1020 = bitcast %union.rec* %1019 to %struct.word_type*
  %1021 = getelementptr inbounds %struct.word_type, %struct.word_type* %1020, i32 0, i32 0
  %1022 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1021, i32 0, i64 1
  %1023 = getelementptr inbounds %struct.LIST, %struct.LIST* %1022, i32 0, i32 0
  %1024 = load %union.rec*, %union.rec** %1023, align 8
  store %union.rec* %1024, %union.rec** %y, align 8
  store i32 1, i32* %8, align 4
  br label %1025

; <label>:1025                                    ; preds = %1035, %1013
  %1026 = load %union.rec*, %union.rec** %y, align 8
  %1027 = bitcast %union.rec* %1026 to %struct.word_type*
  %1028 = getelementptr inbounds %struct.word_type, %struct.word_type* %1027, i32 0, i32 1
  %1029 = bitcast %union.FIRST_UNION* %1028 to %struct.anon*
  %1030 = getelementptr inbounds %struct.anon, %struct.anon* %1029, i32 0, i32 0
  %1031 = load i8, i8* %1030, align 1
  %1032 = zext i8 %1031 to i32
  %1033 = icmp eq i32 %1032, 0
  br i1 %1033, label %1034, label %1044

; <label>:1034                                    ; preds = %1025
  br label %1035

; <label>:1035                                    ; preds = %1034
  %1036 = load %union.rec*, %union.rec** %y, align 8
  %1037 = bitcast %union.rec* %1036 to %struct.word_type*
  %1038 = getelementptr inbounds %struct.word_type, %struct.word_type* %1037, i32 0, i32 0
  %1039 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1038, i32 0, i64 1
  %1040 = getelementptr inbounds %struct.LIST, %struct.LIST* %1039, i32 0, i32 0
  %1041 = load %union.rec*, %union.rec** %1040, align 8
  store %union.rec* %1041, %union.rec** %y, align 8
  %1042 = load i32, i32* %8, align 4
  %1043 = add nsw i32 %1042, 1
  store i32 %1043, i32* %8, align 4
  br label %1025

; <label>:1044                                    ; preds = %1025
  %1045 = load i32, i32* %5, align 4
  %1046 = icmp eq i32 %1045, 0
  %1047 = zext i1 %1046 to i32
  %1048 = load %union.rec*, %union.rec** %1, align 8
  %1049 = bitcast %union.rec* %1048 to %struct.word_type*
  %1050 = getelementptr inbounds %struct.word_type, %struct.word_type* %1049, i32 0, i32 1
  %1051 = bitcast %union.FIRST_UNION* %1050 to %struct.anon*
  %1052 = getelementptr inbounds %struct.anon, %struct.anon* %1051, i32 0, i32 0
  %1053 = load i8, i8* %1052, align 1
  %1054 = zext i8 %1053 to i32
  %1055 = icmp eq i32 %1054, 24
  br i1 %1055, label %1065, label %1056

; <label>:1056                                    ; preds = %1044
  %1057 = load %union.rec*, %union.rec** %1, align 8
  %1058 = bitcast %union.rec* %1057 to %struct.word_type*
  %1059 = getelementptr inbounds %struct.word_type, %struct.word_type* %1058, i32 0, i32 1
  %1060 = bitcast %union.FIRST_UNION* %1059 to %struct.anon*
  %1061 = getelementptr inbounds %struct.anon, %struct.anon* %1060, i32 0, i32 0
  %1062 = load i8, i8* %1061, align 1
  %1063 = zext i8 %1062 to i32
  %1064 = icmp eq i32 %1063, 40
  br label %1065

; <label>:1065                                    ; preds = %1056, %1044
  %1066 = phi i1 [ true, %1044 ], [ %1064, %1056 ]
  %1067 = zext i1 %1066 to i32
  %1068 = icmp eq i32 %1047, %1067
  br i1 %1068, label %1069, label %1082

; <label>:1069                                    ; preds = %1065
  %1070 = load %union.rec*, %union.rec** %y, align 8
  %1071 = load i32, i32* %2, align 4
  %1072 = load i32, i32* %3, align 4
  %1073 = load i32, i32* %4, align 4
  %1074 = load i32, i32* %5, align 4
  %1075 = load i32, i32* %7, align 4
  %1076 = load i32, i32* %8, align 4
  %1077 = call %union.rec* @FixAndPrintObject(%union.rec* %1070, i32 %1071, i32 %1072, i32 %1073, i32 %1074, i32 0, i32 %1075, i32 %1076, i32* %aback, i32* %afwd)
  store %union.rec* %1077, %union.rec** %y, align 8
  %1078 = load i32, i32* %3, align 4
  %1079 = load i32*, i32** %9, align 8
  store i32 %1078, i32* %1079, align 4
  %1080 = load i32, i32* %4, align 4
  %1081 = load i32*, i32** %10, align 8
  store i32 %1080, i32* %1081, align 4
  br label %1094

; <label>:1082                                    ; preds = %1065
  %1083 = load %union.rec*, %union.rec** %y, align 8
  %1084 = load i32, i32* %2, align 4
  %1085 = load i32, i32* %3, align 4
  %1086 = load i32, i32* %4, align 4
  %1087 = load i32, i32* %5, align 4
  %1088 = load i32, i32* %6, align 4
  %1089 = load i32, i32* %7, align 4
  %1090 = load i32, i32* %8, align 4
  %1091 = load i32*, i32** %9, align 8
  %1092 = load i32*, i32** %10, align 8
  %1093 = call %union.rec* @FixAndPrintObject(%union.rec* %1083, i32 %1084, i32 %1085, i32 %1086, i32 %1087, i32 %1088, i32 %1089, i32 %1090, i32* %1091, i32* %1092)
  store %union.rec* %1093, %union.rec** %y, align 8
  br label %1094

; <label>:1094                                    ; preds = %1082, %1069
  br label %8231

; <label>:1095                                    ; preds = %0
  %1096 = load %union.rec*, %union.rec** %1, align 8
  %1097 = bitcast %union.rec* %1096 to %struct.word_type*
  %1098 = getelementptr inbounds %struct.word_type, %struct.word_type* %1097, i32 0, i32 0
  %1099 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1098, i32 0, i64 0
  %1100 = getelementptr inbounds %struct.LIST, %struct.LIST* %1099, i32 0, i32 1
  %1101 = load %union.rec*, %union.rec** %1100, align 8
  %1102 = bitcast %union.rec* %1101 to %struct.word_type*
  %1103 = getelementptr inbounds %struct.word_type, %struct.word_type* %1102, i32 0, i32 0
  %1104 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1103, i32 0, i64 1
  %1105 = getelementptr inbounds %struct.LIST, %struct.LIST* %1104, i32 0, i32 0
  %1106 = load %union.rec*, %union.rec** %1105, align 8
  store %union.rec* %1106, %union.rec** %y, align 8
  store i32 1, i32* %8, align 4
  br label %1107

; <label>:1107                                    ; preds = %1117, %1095
  %1108 = load %union.rec*, %union.rec** %y, align 8
  %1109 = bitcast %union.rec* %1108 to %struct.word_type*
  %1110 = getelementptr inbounds %struct.word_type, %struct.word_type* %1109, i32 0, i32 1
  %1111 = bitcast %union.FIRST_UNION* %1110 to %struct.anon*
  %1112 = getelementptr inbounds %struct.anon, %struct.anon* %1111, i32 0, i32 0
  %1113 = load i8, i8* %1112, align 1
  %1114 = zext i8 %1113 to i32
  %1115 = icmp eq i32 %1114, 0
  br i1 %1115, label %1116, label %1126

; <label>:1116                                    ; preds = %1107
  br label %1117

; <label>:1117                                    ; preds = %1116
  %1118 = load %union.rec*, %union.rec** %y, align 8
  %1119 = bitcast %union.rec* %1118 to %struct.word_type*
  %1120 = getelementptr inbounds %struct.word_type, %struct.word_type* %1119, i32 0, i32 0
  %1121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1120, i32 0, i64 1
  %1122 = getelementptr inbounds %struct.LIST, %struct.LIST* %1121, i32 0, i32 0
  %1123 = load %union.rec*, %union.rec** %1122, align 8
  store %union.rec* %1123, %union.rec** %y, align 8
  %1124 = load i32, i32* %8, align 4
  %1125 = add nsw i32 %1124, 1
  store i32 %1125, i32* %8, align 4
  br label %1107

; <label>:1126                                    ; preds = %1107
  %1127 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1128 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1127, i32 0, i32 2
  %1129 = load i32, i32* %1128, align 4
  %1130 = icmp ne i32 %1129, 0
  br i1 %1130, label %1131, label %1249

; <label>:1131                                    ; preds = %1126
  %1132 = load i32, i32* %5, align 4
  %1133 = icmp eq i32 %1132, 0
  br i1 %1133, label %1134, label %1143

; <label>:1134                                    ; preds = %1131
  %1135 = load %union.rec*, %union.rec** %y, align 8
  %1136 = load i32, i32* %2, align 4
  %1137 = load i32, i32* %3, align 4
  %1138 = load i32, i32* %4, align 4
  %1139 = load i32, i32* %5, align 4
  %1140 = load i32, i32* %7, align 4
  %1141 = load i32, i32* %8, align 4
  %1142 = call %union.rec* @FixAndPrintObject(%union.rec* %1135, i32 %1136, i32 %1137, i32 %1138, i32 %1139, i32 0, i32 %1140, i32 %1141, i32* %aback, i32* %afwd)
  store %union.rec* %1142, %union.rec** %y, align 8
  br label %1248

; <label>:1143                                    ; preds = %1131
  %1144 = load i32, i32* %3, align 4
  %1145 = load i32, i32* %4, align 4
  %1146 = add nsw i32 %1144, %1145
  %1147 = load %union.rec*, %union.rec** %y, align 8
  %1148 = bitcast %union.rec* %1147 to %struct.word_type*
  %1149 = getelementptr inbounds %struct.word_type, %struct.word_type* %1148, i32 0, i32 3
  %1150 = bitcast %union.THIRD_UNION* %1149 to %struct.anon.6*
  %1151 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1150, i32 0, i32 0
  %1152 = getelementptr inbounds [2 x i32], [2 x i32]* %1151, i32 0, i64 1
  %1153 = load i32, i32* %1152, align 4
  %1154 = load %union.rec*, %union.rec** %y, align 8
  %1155 = bitcast %union.rec* %1154 to %struct.word_type*
  %1156 = getelementptr inbounds %struct.word_type, %struct.word_type* %1155, i32 0, i32 3
  %1157 = bitcast %union.THIRD_UNION* %1156 to %struct.anon.6*
  %1158 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1157, i32 0, i32 1
  %1159 = getelementptr inbounds [2 x i32], [2 x i32]* %1158, i32 0, i64 1
  %1160 = load i32, i32* %1159, align 4
  %1161 = add nsw i32 %1153, %1160
  %1162 = call float @ScaleFactor(i32 %1146, i32 %1161)
  store float %1162, float* %scale_factor, align 4
  %1163 = fcmp ogt float %1162, 0.000000e+00
  br i1 %1163, label %1164, label %1214

; <label>:1164                                    ; preds = %1143
  %1165 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1166 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1165, i32 0, i32 24
  %1167 = load void (%union.rec*)*, void (%union.rec*)** %1166, align 8
  %1168 = load %union.rec*, %union.rec** %y, align 8
  call void %1167(%union.rec* %1168)
  %1169 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1170 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1169, i32 0, i32 21
  %1171 = load void (i32, i32)*, void (i32, i32)** %1170, align 8
  %1172 = load i32, i32* %7, align 4
  %1173 = load i32, i32* %2, align 4
  %1174 = load i32, i32* %3, align 4
  %1175 = sub nsw i32 %1173, %1174
  %1176 = load %union.rec*, %union.rec** %y, align 8
  %1177 = bitcast %union.rec* %1176 to %struct.word_type*
  %1178 = getelementptr inbounds %struct.word_type, %struct.word_type* %1177, i32 0, i32 3
  %1179 = bitcast %union.THIRD_UNION* %1178 to %struct.anon.6*
  %1180 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1179, i32 0, i32 0
  %1181 = getelementptr inbounds [2 x i32], [2 x i32]* %1180, i32 0, i64 1
  %1182 = load i32, i32* %1181, align 4
  %1183 = sitofp i32 %1182 to float
  %1184 = load float, float* %scale_factor, align 4
  %1185 = fmul float %1183, %1184
  %1186 = fptosi float %1185 to i32
  %1187 = add nsw i32 %1175, %1186
  %1188 = sub nsw i32 %1172, %1187
  call void %1171(i32 0, i32 %1188)
  %1189 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1190 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1189, i32 0, i32 23
  %1191 = load void (float, float)*, void (float, float)** %1190, align 8
  %1192 = load float, float* %scale_factor, align 4
  call void %1191(float 1.000000e+00, float %1192)
  %1193 = load %union.rec*, %union.rec** %y, align 8
  %1194 = load %union.rec*, %union.rec** %y, align 8
  %1195 = bitcast %union.rec* %1194 to %struct.word_type*
  %1196 = getelementptr inbounds %struct.word_type, %struct.word_type* %1195, i32 0, i32 3
  %1197 = bitcast %union.THIRD_UNION* %1196 to %struct.anon.6*
  %1198 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1197, i32 0, i32 0
  %1199 = getelementptr inbounds [2 x i32], [2 x i32]* %1198, i32 0, i64 1
  %1200 = load i32, i32* %1199, align 4
  %1201 = load %union.rec*, %union.rec** %y, align 8
  %1202 = bitcast %union.rec* %1201 to %struct.word_type*
  %1203 = getelementptr inbounds %struct.word_type, %struct.word_type* %1202, i32 0, i32 3
  %1204 = bitcast %union.THIRD_UNION* %1203 to %struct.anon.6*
  %1205 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1204, i32 0, i32 1
  %1206 = getelementptr inbounds [2 x i32], [2 x i32]* %1205, i32 0, i64 1
  %1207 = load i32, i32* %1206, align 4
  %1208 = load i32, i32* %5, align 4
  %1209 = load i32, i32* %8, align 4
  %1210 = call %union.rec* @FixAndPrintObject(%union.rec* %1193, i32 0, i32 %1200, i32 %1207, i32 %1208, i32 0, i32 0, i32 %1209, i32* %aback, i32* %afwd)
  store %union.rec* %1210, %union.rec** %y, align 8
  %1211 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1212 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1211, i32 0, i32 25
  %1213 = load void ()*, void ()** %1212, align 8
  call void %1213()
  br label %1247

; <label>:1214                                    ; preds = %1143
  %1215 = load %union.rec*, %union.rec** %y, align 8
  %1216 = bitcast %union.rec* %1215 to %struct.word_type*
  %1217 = getelementptr inbounds %struct.word_type, %struct.word_type* %1216, i32 0, i32 1
  %1218 = bitcast %union.FIRST_UNION* %1217 to %struct.anon*
  %1219 = getelementptr inbounds %struct.anon, %struct.anon* %1218, i32 0, i32 0
  %1220 = load i8, i8* %1219, align 1
  %1221 = zext i8 %1220 to i32
  %1222 = icmp eq i32 %1221, 11
  br i1 %1222, label %1232, label %1223

; <label>:1223                                    ; preds = %1214
  %1224 = load %union.rec*, %union.rec** %y, align 8
  %1225 = bitcast %union.rec* %1224 to %struct.word_type*
  %1226 = getelementptr inbounds %struct.word_type, %struct.word_type* %1225, i32 0, i32 1
  %1227 = bitcast %union.FIRST_UNION* %1226 to %struct.anon*
  %1228 = getelementptr inbounds %struct.anon, %struct.anon* %1227, i32 0, i32 0
  %1229 = load i8, i8* %1228, align 1
  %1230 = zext i8 %1229 to i32
  %1231 = icmp eq i32 %1230, 12
  br i1 %1231, label %1232, label %1240

; <label>:1232                                    ; preds = %1223, %1214
  %1233 = load %union.rec*, %union.rec** %y, align 8
  %1234 = bitcast %union.rec* %1233 to %struct.word_type*
  %1235 = getelementptr inbounds %struct.word_type, %struct.word_type* %1234, i32 0, i32 4
  %1236 = getelementptr inbounds [4 x i8], [4 x i8]* %1235, i32 0, i64 0
  %1237 = load i8, i8* %1236, align 1
  %1238 = zext i8 %1237 to i32
  %1239 = icmp ne i32 %1238, 0
  br i1 %1239, label %1240, label %1246

; <label>:1240                                    ; preds = %1232, %1223
  %1241 = load %union.rec*, %union.rec** %1, align 8
  %1242 = bitcast %union.rec* %1241 to %struct.word_type*
  %1243 = getelementptr inbounds %struct.word_type, %struct.word_type* %1242, i32 0, i32 1
  %1244 = bitcast %union.FIRST_UNION* %1243 to %struct.FILE_POS*
  %1245 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 23, i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0), i32 2, %struct.FILE_POS* %1244)
  br label %1246

; <label>:1246                                    ; preds = %1240, %1232
  br label %1247

; <label>:1247                                    ; preds = %1246, %1164
  br label %1248

; <label>:1248                                    ; preds = %1247, %1134
  br label %1249

; <label>:1249                                    ; preds = %1248, %1126
  %1250 = load i32, i32* %3, align 4
  %1251 = load i32*, i32** %9, align 8
  store i32 %1250, i32* %1251, align 4
  %1252 = load i32, i32* %4, align 4
  %1253 = load i32*, i32** %10, align 8
  store i32 %1252, i32* %1253, align 4
  br label %8231

; <label>:1254                                    ; preds = %0
  %1255 = load %union.rec*, %union.rec** %1, align 8
  %1256 = bitcast %union.rec* %1255 to %struct.word_type*
  %1257 = getelementptr inbounds %struct.word_type, %struct.word_type* %1256, i32 0, i32 0
  %1258 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1257, i32 0, i64 0
  %1259 = getelementptr inbounds %struct.LIST, %struct.LIST* %1258, i32 0, i32 1
  %1260 = load %union.rec*, %union.rec** %1259, align 8
  %1261 = bitcast %union.rec* %1260 to %struct.word_type*
  %1262 = getelementptr inbounds %struct.word_type, %struct.word_type* %1261, i32 0, i32 0
  %1263 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1262, i32 0, i64 1
  %1264 = getelementptr inbounds %struct.LIST, %struct.LIST* %1263, i32 0, i32 0
  %1265 = load %union.rec*, %union.rec** %1264, align 8
  store %union.rec* %1265, %union.rec** %y, align 8
  store i32 1, i32* %8, align 4
  br label %1266

; <label>:1266                                    ; preds = %1276, %1254
  %1267 = load %union.rec*, %union.rec** %y, align 8
  %1268 = bitcast %union.rec* %1267 to %struct.word_type*
  %1269 = getelementptr inbounds %struct.word_type, %struct.word_type* %1268, i32 0, i32 1
  %1270 = bitcast %union.FIRST_UNION* %1269 to %struct.anon*
  %1271 = getelementptr inbounds %struct.anon, %struct.anon* %1270, i32 0, i32 0
  %1272 = load i8, i8* %1271, align 1
  %1273 = zext i8 %1272 to i32
  %1274 = icmp eq i32 %1273, 0
  br i1 %1274, label %1275, label %1285

; <label>:1275                                    ; preds = %1266
  br label %1276

; <label>:1276                                    ; preds = %1275
  %1277 = load %union.rec*, %union.rec** %y, align 8
  %1278 = bitcast %union.rec* %1277 to %struct.word_type*
  %1279 = getelementptr inbounds %struct.word_type, %struct.word_type* %1278, i32 0, i32 0
  %1280 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1279, i32 0, i64 1
  %1281 = getelementptr inbounds %struct.LIST, %struct.LIST* %1280, i32 0, i32 0
  %1282 = load %union.rec*, %union.rec** %1281, align 8
  store %union.rec* %1282, %union.rec** %y, align 8
  %1283 = load i32, i32* %8, align 4
  %1284 = add nsw i32 %1283, 1
  store i32 %1284, i32* %8, align 4
  br label %1266

; <label>:1285                                    ; preds = %1266
  %1286 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1287 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1286, i32 0, i32 2
  %1288 = load i32, i32* %1287, align 4
  %1289 = icmp ne i32 %1288, 0
  br i1 %1289, label %1290, label %1465

; <label>:1290                                    ; preds = %1285
  %1291 = load i32, i32* %5, align 4
  %1292 = icmp eq i32 %1291, 0
  br i1 %1292, label %1293, label %1385

; <label>:1293                                    ; preds = %1290
  %1294 = load i32, i32* %2, align 4
  %1295 = load %union.rec*, %union.rec** %1, align 8
  %1296 = bitcast %union.rec* %1295 to %struct.closure_type*
  %1297 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1296, i32 0, i32 6
  %1298 = bitcast %union.anon.12* %1297 to i32*
  store i32 %1294, i32* %1298, align 4
  %1299 = load i32, i32* %3, align 4
  %1300 = load %union.rec*, %union.rec** %1, align 8
  %1301 = bitcast %union.rec* %1300 to %struct.closure_type*
  %1302 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1301, i32 0, i32 4
  %1303 = bitcast %union.FOURTH_UNION* %1302 to %struct.CONSTRAINT*
  %1304 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1303, i32 0, i32 0
  store i32 %1299, i32* %1304, align 4
  %1305 = load i32, i32* %4, align 4
  %1306 = load %union.rec*, %union.rec** %1, align 8
  %1307 = bitcast %union.rec* %1306 to %struct.closure_type*
  %1308 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1307, i32 0, i32 4
  %1309 = bitcast %union.FOURTH_UNION* %1308 to %struct.CONSTRAINT*
  %1310 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1309, i32 0, i32 2
  store i32 %1305, i32* %1310, align 4
  %1311 = load i32, i32* %3, align 4
  %1312 = load i32, i32* %4, align 4
  %1313 = add nsw i32 %1311, %1312
  %1314 = load %union.rec*, %union.rec** %y, align 8
  %1315 = bitcast %union.rec* %1314 to %struct.word_type*
  %1316 = getelementptr inbounds %struct.word_type, %struct.word_type* %1315, i32 0, i32 3
  %1317 = bitcast %union.THIRD_UNION* %1316 to %struct.anon.6*
  %1318 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1317, i32 0, i32 0
  %1319 = getelementptr inbounds [2 x i32], [2 x i32]* %1318, i32 0, i64 0
  %1320 = load i32, i32* %1319, align 4
  %1321 = load %union.rec*, %union.rec** %y, align 8
  %1322 = bitcast %union.rec* %1321 to %struct.word_type*
  %1323 = getelementptr inbounds %struct.word_type, %struct.word_type* %1322, i32 0, i32 3
  %1324 = bitcast %union.THIRD_UNION* %1323 to %struct.anon.6*
  %1325 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1324, i32 0, i32 1
  %1326 = getelementptr inbounds [2 x i32], [2 x i32]* %1325, i32 0, i64 0
  %1327 = load i32, i32* %1326, align 4
  %1328 = add nsw i32 %1320, %1327
  %1329 = call float @ScaleFactor(i32 %1313, i32 %1328)
  store float %1329, float* %scale_factor, align 4
  %1330 = fcmp ogt float %1329, 0.000000e+00
  br i1 %1330, label %1331, label %1351

; <label>:1331                                    ; preds = %1293
  %1332 = load %union.rec*, %union.rec** %y, align 8
  %1333 = load %union.rec*, %union.rec** %y, align 8
  %1334 = bitcast %union.rec* %1333 to %struct.word_type*
  %1335 = getelementptr inbounds %struct.word_type, %struct.word_type* %1334, i32 0, i32 3
  %1336 = bitcast %union.THIRD_UNION* %1335 to %struct.anon.6*
  %1337 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1336, i32 0, i32 0
  %1338 = getelementptr inbounds [2 x i32], [2 x i32]* %1337, i32 0, i64 0
  %1339 = load i32, i32* %1338, align 4
  %1340 = load %union.rec*, %union.rec** %y, align 8
  %1341 = bitcast %union.rec* %1340 to %struct.word_type*
  %1342 = getelementptr inbounds %struct.word_type, %struct.word_type* %1341, i32 0, i32 3
  %1343 = bitcast %union.THIRD_UNION* %1342 to %struct.anon.6*
  %1344 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1343, i32 0, i32 1
  %1345 = getelementptr inbounds [2 x i32], [2 x i32]* %1344, i32 0, i64 0
  %1346 = load i32, i32* %1345, align 4
  %1347 = load i32, i32* %5, align 4
  %1348 = load i32, i32* %7, align 4
  %1349 = load i32, i32* %8, align 4
  %1350 = call %union.rec* @FixAndPrintObject(%union.rec* %1332, i32 0, i32 %1339, i32 %1346, i32 %1347, i32 0, i32 %1348, i32 %1349, i32* %aback, i32* %afwd)
  store %union.rec* %1350, %union.rec** %y, align 8
  br label %1384

; <label>:1351                                    ; preds = %1293
  %1352 = load %union.rec*, %union.rec** %y, align 8
  %1353 = bitcast %union.rec* %1352 to %struct.word_type*
  %1354 = getelementptr inbounds %struct.word_type, %struct.word_type* %1353, i32 0, i32 1
  %1355 = bitcast %union.FIRST_UNION* %1354 to %struct.anon*
  %1356 = getelementptr inbounds %struct.anon, %struct.anon* %1355, i32 0, i32 0
  %1357 = load i8, i8* %1356, align 1
  %1358 = zext i8 %1357 to i32
  %1359 = icmp eq i32 %1358, 11
  br i1 %1359, label %1369, label %1360

; <label>:1360                                    ; preds = %1351
  %1361 = load %union.rec*, %union.rec** %y, align 8
  %1362 = bitcast %union.rec* %1361 to %struct.word_type*
  %1363 = getelementptr inbounds %struct.word_type, %struct.word_type* %1362, i32 0, i32 1
  %1364 = bitcast %union.FIRST_UNION* %1363 to %struct.anon*
  %1365 = getelementptr inbounds %struct.anon, %struct.anon* %1364, i32 0, i32 0
  %1366 = load i8, i8* %1365, align 1
  %1367 = zext i8 %1366 to i32
  %1368 = icmp eq i32 %1367, 12
  br i1 %1368, label %1369, label %1377

; <label>:1369                                    ; preds = %1360, %1351
  %1370 = load %union.rec*, %union.rec** %y, align 8
  %1371 = bitcast %union.rec* %1370 to %struct.word_type*
  %1372 = getelementptr inbounds %struct.word_type, %struct.word_type* %1371, i32 0, i32 4
  %1373 = getelementptr inbounds [4 x i8], [4 x i8]* %1372, i32 0, i64 0
  %1374 = load i8, i8* %1373, align 1
  %1375 = zext i8 %1374 to i32
  %1376 = icmp ne i32 %1375, 0
  br i1 %1376, label %1377, label %1383

; <label>:1377                                    ; preds = %1369, %1360
  %1378 = load %union.rec*, %union.rec** %y, align 8
  %1379 = bitcast %union.rec* %1378 to %struct.word_type*
  %1380 = getelementptr inbounds %struct.word_type, %struct.word_type* %1379, i32 0, i32 1
  %1381 = bitcast %union.FIRST_UNION* %1380 to %struct.FILE_POS*
  %1382 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 23, i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i32 0, i32 0), i32 2, %struct.FILE_POS* %1381)
  br label %1383

; <label>:1383                                    ; preds = %1377, %1369
  br label %1384

; <label>:1384                                    ; preds = %1383, %1331
  br label %1464

; <label>:1385                                    ; preds = %1290
  %1386 = load %union.rec*, %union.rec** %1, align 8
  %1387 = bitcast %union.rec* %1386 to %struct.closure_type*
  %1388 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1387, i32 0, i32 4
  %1389 = bitcast %union.FOURTH_UNION* %1388 to %struct.CONSTRAINT*
  %1390 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1389, i32 0, i32 0
  %1391 = load i32, i32* %1390, align 4
  %1392 = load %union.rec*, %union.rec** %1, align 8
  %1393 = bitcast %union.rec* %1392 to %struct.closure_type*
  %1394 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1393, i32 0, i32 4
  %1395 = bitcast %union.FOURTH_UNION* %1394 to %struct.CONSTRAINT*
  %1396 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1395, i32 0, i32 2
  %1397 = load i32, i32* %1396, align 4
  %1398 = add nsw i32 %1391, %1397
  %1399 = load %union.rec*, %union.rec** %y, align 8
  %1400 = bitcast %union.rec* %1399 to %struct.word_type*
  %1401 = getelementptr inbounds %struct.word_type, %struct.word_type* %1400, i32 0, i32 3
  %1402 = bitcast %union.THIRD_UNION* %1401 to %struct.anon.6*
  %1403 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1402, i32 0, i32 0
  %1404 = getelementptr inbounds [2 x i32], [2 x i32]* %1403, i32 0, i64 0
  %1405 = load i32, i32* %1404, align 4
  %1406 = load %union.rec*, %union.rec** %y, align 8
  %1407 = bitcast %union.rec* %1406 to %struct.word_type*
  %1408 = getelementptr inbounds %struct.word_type, %struct.word_type* %1407, i32 0, i32 3
  %1409 = bitcast %union.THIRD_UNION* %1408 to %struct.anon.6*
  %1410 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1409, i32 0, i32 1
  %1411 = getelementptr inbounds [2 x i32], [2 x i32]* %1410, i32 0, i64 0
  %1412 = load i32, i32* %1411, align 4
  %1413 = add nsw i32 %1405, %1412
  %1414 = call float @ScaleFactor(i32 %1398, i32 %1413)
  store float %1414, float* %scale_factor, align 4
  %1415 = fcmp ogt float %1414, 0.000000e+00
  br i1 %1415, label %1416, label %1463

; <label>:1416                                    ; preds = %1385
  %1417 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1418 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1417, i32 0, i32 24
  %1419 = load void (%union.rec*)*, void (%union.rec*)** %1418, align 8
  %1420 = load %union.rec*, %union.rec** %y, align 8
  call void %1419(%union.rec* %1420)
  %1421 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1422 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1421, i32 0, i32 21
  %1423 = load void (i32, i32)*, void (i32, i32)** %1422, align 8
  %1424 = load %union.rec*, %union.rec** %1, align 8
  %1425 = bitcast %union.rec* %1424 to %struct.closure_type*
  %1426 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1425, i32 0, i32 6
  %1427 = bitcast %union.anon.12* %1426 to i32*
  %1428 = load i32, i32* %1427, align 4
  %1429 = load %union.rec*, %union.rec** %1, align 8
  %1430 = bitcast %union.rec* %1429 to %struct.closure_type*
  %1431 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1430, i32 0, i32 4
  %1432 = bitcast %union.FOURTH_UNION* %1431 to %struct.CONSTRAINT*
  %1433 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1432, i32 0, i32 0
  %1434 = load i32, i32* %1433, align 4
  %1435 = sub nsw i32 %1428, %1434
  %1436 = load %union.rec*, %union.rec** %y, align 8
  %1437 = bitcast %union.rec* %1436 to %struct.word_type*
  %1438 = getelementptr inbounds %struct.word_type, %struct.word_type* %1437, i32 0, i32 3
  %1439 = bitcast %union.THIRD_UNION* %1438 to %struct.anon.6*
  %1440 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1439, i32 0, i32 0
  %1441 = getelementptr inbounds [2 x i32], [2 x i32]* %1440, i32 0, i64 0
  %1442 = load i32, i32* %1441, align 4
  %1443 = sitofp i32 %1442 to float
  %1444 = load float, float* %scale_factor, align 4
  %1445 = fmul float %1443, %1444
  %1446 = fptosi float %1445 to i32
  %1447 = add nsw i32 %1435, %1446
  call void %1423(i32 %1447, i32 0)
  %1448 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1449 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1448, i32 0, i32 23
  %1450 = load void (float, float)*, void (float, float)** %1449, align 8
  %1451 = load float, float* %scale_factor, align 4
  call void %1450(float %1451, float 1.000000e+00)
  %1452 = load %union.rec*, %union.rec** %y, align 8
  %1453 = load i32, i32* %2, align 4
  %1454 = load i32, i32* %3, align 4
  %1455 = load i32, i32* %4, align 4
  %1456 = load i32, i32* %5, align 4
  %1457 = load i32, i32* %7, align 4
  %1458 = load i32, i32* %8, align 4
  %1459 = call %union.rec* @FixAndPrintObject(%union.rec* %1452, i32 %1453, i32 %1454, i32 %1455, i32 %1456, i32 0, i32 %1457, i32 %1458, i32* %aback, i32* %afwd)
  store %union.rec* %1459, %union.rec** %y, align 8
  %1460 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1461 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1460, i32 0, i32 25
  %1462 = load void ()*, void ()** %1461, align 8
  call void %1462()
  br label %1463

; <label>:1463                                    ; preds = %1416, %1385
  br label %1464

; <label>:1464                                    ; preds = %1463, %1384
  br label %1465

; <label>:1465                                    ; preds = %1464, %1285
  %1466 = load i32, i32* %3, align 4
  %1467 = load i32*, i32** %9, align 8
  store i32 %1466, i32* %1467, align 4
  %1468 = load i32, i32* %4, align 4
  %1469 = load i32*, i32** %10, align 8
  store i32 %1468, i32* %1469, align 4
  br label %8231

; <label>:1470                                    ; preds = %0
  %1471 = load %union.rec*, %union.rec** %1, align 8
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
  store i32 1, i32* %8, align 4
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
  br i1 %1490, label %1491, label %1501

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
  %1499 = load i32, i32* %8, align 4
  %1500 = add nsw i32 %1499, 1
  store i32 %1500, i32* %8, align 4
  br label %1482

; <label>:1501                                    ; preds = %1482
  %1502 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1503 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1502, i32 0, i32 2
  %1504 = load i32, i32* %1503, align 4
  %1505 = icmp ne i32 %1504, 0
  br i1 %1505, label %1506, label %1625

; <label>:1506                                    ; preds = %1501
  %1507 = load i32, i32* %5, align 4
  %1508 = icmp eq i32 %1507, 0
  br i1 %1508, label %1509, label %1551

; <label>:1509                                    ; preds = %1506
  %1510 = load %union.rec*, %union.rec** %1, align 8
  %1511 = bitcast %union.rec* %1510 to %struct.closure_type*
  %1512 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1511, i32 0, i32 4
  %1513 = bitcast %union.FOURTH_UNION* %1512 to %struct.CONSTRAINT*
  %1514 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1513, i32 0, i32 0
  %1515 = load i32, i32* %1514, align 4
  %1516 = icmp sgt i32 %1515, 0
  br i1 %1516, label %1520, label %1517

; <label>:1517                                    ; preds = %1509
  %1518 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1519 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1518, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0))
  br label %1520

; <label>:1520                                    ; preds = %1517, %1509
  %1521 = load i32, i32* %2, align 4
  %1522 = load %union.rec*, %union.rec** %1, align 8
  %1523 = bitcast %union.rec* %1522 to %struct.closure_type*
  %1524 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1523, i32 0, i32 6
  %1525 = bitcast %union.anon.12* %1524 to i32*
  store i32 %1521, i32* %1525, align 4
  %1526 = load i32, i32* %3, align 4
  %1527 = mul nsw i32 %1526, 128
  %1528 = load %union.rec*, %union.rec** %1, align 8
  %1529 = bitcast %union.rec* %1528 to %struct.closure_type*
  %1530 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1529, i32 0, i32 4
  %1531 = bitcast %union.FOURTH_UNION* %1530 to %struct.CONSTRAINT*
  %1532 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1531, i32 0, i32 0
  %1533 = load i32, i32* %1532, align 4
  %1534 = sdiv i32 %1527, %1533
  store i32 %1534, i32* %yb, align 4
  %1535 = load i32, i32* %4, align 4
  %1536 = mul nsw i32 %1535, 128
  %1537 = load %union.rec*, %union.rec** %1, align 8
  %1538 = bitcast %union.rec* %1537 to %struct.closure_type*
  %1539 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1538, i32 0, i32 4
  %1540 = bitcast %union.FOURTH_UNION* %1539 to %struct.CONSTRAINT*
  %1541 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1540, i32 0, i32 0
  %1542 = load i32, i32* %1541, align 4
  %1543 = sdiv i32 %1536, %1542
  store i32 %1543, i32* %yf, align 4
  %1544 = load %union.rec*, %union.rec** %y, align 8
  %1545 = load i32, i32* %yb, align 4
  %1546 = load i32, i32* %yf, align 4
  %1547 = load i32, i32* %5, align 4
  %1548 = load i32, i32* %7, align 4
  %1549 = load i32, i32* %8, align 4
  %1550 = call %union.rec* @FixAndPrintObject(%union.rec* %1544, i32 0, i32 %1545, i32 %1546, i32 %1547, i32 0, i32 %1548, i32 %1549, i32* %aback, i32* %afwd)
  store %union.rec* %1550, %union.rec** %y, align 8
  br label %1624

; <label>:1551                                    ; preds = %1506
  %1552 = load %union.rec*, %union.rec** %1, align 8
  %1553 = bitcast %union.rec* %1552 to %struct.closure_type*
  %1554 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1553, i32 0, i32 4
  %1555 = bitcast %union.FOURTH_UNION* %1554 to %struct.CONSTRAINT*
  %1556 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1555, i32 0, i32 2
  %1557 = load i32, i32* %1556, align 4
  %1558 = icmp sgt i32 %1557, 0
  br i1 %1558, label %1562, label %1559

; <label>:1559                                    ; preds = %1551
  %1560 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1561 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1560, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0))
  br label %1562

; <label>:1562                                    ; preds = %1559, %1551
  %1563 = load i32, i32* %3, align 4
  %1564 = mul nsw i32 %1563, 128
  %1565 = load %union.rec*, %union.rec** %1, align 8
  %1566 = bitcast %union.rec* %1565 to %struct.closure_type*
  %1567 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1566, i32 0, i32 4
  %1568 = bitcast %union.FOURTH_UNION* %1567 to %struct.CONSTRAINT*
  %1569 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1568, i32 0, i32 2
  %1570 = load i32, i32* %1569, align 4
  %1571 = sdiv i32 %1564, %1570
  store i32 %1571, i32* %yb, align 4
  %1572 = load i32, i32* %4, align 4
  %1573 = mul nsw i32 %1572, 128
  %1574 = load %union.rec*, %union.rec** %1, align 8
  %1575 = bitcast %union.rec* %1574 to %struct.closure_type*
  %1576 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1575, i32 0, i32 4
  %1577 = bitcast %union.FOURTH_UNION* %1576 to %struct.CONSTRAINT*
  %1578 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1577, i32 0, i32 2
  %1579 = load i32, i32* %1578, align 4
  %1580 = sdiv i32 %1573, %1579
  store i32 %1580, i32* %yf, align 4
  %1581 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1582 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1581, i32 0, i32 24
  %1583 = load void (%union.rec*)*, void (%union.rec*)** %1582, align 8
  %1584 = load %union.rec*, %union.rec** %y, align 8
  call void %1583(%union.rec* %1584)
  %1585 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1586 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1585, i32 0, i32 21
  %1587 = load void (i32, i32)*, void (i32, i32)** %1586, align 8
  %1588 = load %union.rec*, %union.rec** %1, align 8
  %1589 = bitcast %union.rec* %1588 to %struct.closure_type*
  %1590 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1589, i32 0, i32 6
  %1591 = bitcast %union.anon.12* %1590 to i32*
  %1592 = load i32, i32* %1591, align 4
  %1593 = load i32, i32* %7, align 4
  %1594 = load i32, i32* %2, align 4
  %1595 = sub nsw i32 %1593, %1594
  call void %1587(i32 %1592, i32 %1595)
  %1596 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1597 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1596, i32 0, i32 23
  %1598 = load void (float, float)*, void (float, float)** %1597, align 8
  %1599 = load %union.rec*, %union.rec** %1, align 8
  %1600 = bitcast %union.rec* %1599 to %struct.closure_type*
  %1601 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1600, i32 0, i32 4
  %1602 = bitcast %union.FOURTH_UNION* %1601 to %struct.CONSTRAINT*
  %1603 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1602, i32 0, i32 0
  %1604 = load i32, i32* %1603, align 4
  %1605 = sitofp i32 %1604 to float
  %1606 = fdiv float %1605, 1.280000e+02
  %1607 = load %union.rec*, %union.rec** %1, align 8
  %1608 = bitcast %union.rec* %1607 to %struct.closure_type*
  %1609 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1608, i32 0, i32 4
  %1610 = bitcast %union.FOURTH_UNION* %1609 to %struct.CONSTRAINT*
  %1611 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1610, i32 0, i32 2
  %1612 = load i32, i32* %1611, align 4
  %1613 = sitofp i32 %1612 to float
  %1614 = fdiv float %1613, 1.280000e+02
  call void %1598(float %1606, float %1614)
  %1615 = load %union.rec*, %union.rec** %y, align 8
  %1616 = load i32, i32* %yb, align 4
  %1617 = load i32, i32* %yf, align 4
  %1618 = load i32, i32* %5, align 4
  %1619 = load i32, i32* %8, align 4
  %1620 = call %union.rec* @FixAndPrintObject(%union.rec* %1615, i32 0, i32 %1616, i32 %1617, i32 %1618, i32 0, i32 0, i32 %1619, i32* %aback, i32* %afwd)
  store %union.rec* %1620, %union.rec** %y, align 8
  %1621 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1622 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1621, i32 0, i32 25
  %1623 = load void ()*, void ()** %1622, align 8
  call void %1623()
  br label %1624

; <label>:1624                                    ; preds = %1562, %1520
  br label %1652

; <label>:1625                                    ; preds = %1501
  %1626 = load %union.rec*, %union.rec** %1, align 8
  %1627 = bitcast %union.rec* %1626 to %struct.closure_type*
  %1628 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1627, i32 0, i32 4
  %1629 = bitcast %union.FOURTH_UNION* %1628 to %struct.CONSTRAINT*
  %1630 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1629, i32 0, i32 0
  %1631 = load i32, i32* %1630, align 4
  %1632 = icmp eq i32 %1631, 128
  br i1 %1632, label %1633, label %1651

; <label>:1633                                    ; preds = %1625
  %1634 = load %union.rec*, %union.rec** %1, align 8
  %1635 = bitcast %union.rec* %1634 to %struct.closure_type*
  %1636 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1635, i32 0, i32 4
  %1637 = bitcast %union.FOURTH_UNION* %1636 to %struct.CONSTRAINT*
  %1638 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1637, i32 0, i32 2
  %1639 = load i32, i32* %1638, align 4
  %1640 = icmp eq i32 %1639, 128
  br i1 %1640, label %1641, label %1651

; <label>:1641                                    ; preds = %1633
  %1642 = load %union.rec*, %union.rec** %y, align 8
  %1643 = load i32, i32* %2, align 4
  %1644 = load i32, i32* %3, align 4
  %1645 = load i32, i32* %4, align 4
  %1646 = load i32, i32* %5, align 4
  %1647 = load i32, i32* %6, align 4
  %1648 = load i32, i32* %7, align 4
  %1649 = load i32, i32* %8, align 4
  %1650 = call %union.rec* @FixAndPrintObject(%union.rec* %1642, i32 %1643, i32 %1644, i32 %1645, i32 %1646, i32 %1647, i32 %1648, i32 %1649, i32* %aback, i32* %afwd)
  store %union.rec* %1650, %union.rec** %y, align 8
  br label %1651

; <label>:1651                                    ; preds = %1641, %1633, %1625
  br label %1652

; <label>:1652                                    ; preds = %1651, %1624
  %1653 = load i32, i32* %3, align 4
  %1654 = load i32*, i32** %9, align 8
  store i32 %1653, i32* %1654, align 4
  %1655 = load i32, i32* %4, align 4
  %1656 = load i32*, i32** %10, align 8
  store i32 %1655, i32* %1656, align 4
  br label %8231

; <label>:1657                                    ; preds = %0
  %1658 = load %union.rec*, %union.rec** %1, align 8
  %1659 = bitcast %union.rec* %1658 to %struct.word_type*
  %1660 = getelementptr inbounds %struct.word_type, %struct.word_type* %1659, i32 0, i32 0
  %1661 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1660, i32 0, i64 0
  %1662 = getelementptr inbounds %struct.LIST, %struct.LIST* %1661, i32 0, i32 0
  %1663 = load %union.rec*, %union.rec** %1662, align 8
  %1664 = bitcast %union.rec* %1663 to %struct.word_type*
  %1665 = getelementptr inbounds %struct.word_type, %struct.word_type* %1664, i32 0, i32 0
  %1666 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1665, i32 0, i64 1
  %1667 = getelementptr inbounds %struct.LIST, %struct.LIST* %1666, i32 0, i32 0
  %1668 = load %union.rec*, %union.rec** %1667, align 8
  store %union.rec* %1668, %union.rec** %y, align 8
  store i32 1, i32* %8, align 4
  br label %1669

; <label>:1669                                    ; preds = %1679, %1657
  %1670 = load %union.rec*, %union.rec** %y, align 8
  %1671 = bitcast %union.rec* %1670 to %struct.word_type*
  %1672 = getelementptr inbounds %struct.word_type, %struct.word_type* %1671, i32 0, i32 1
  %1673 = bitcast %union.FIRST_UNION* %1672 to %struct.anon*
  %1674 = getelementptr inbounds %struct.anon, %struct.anon* %1673, i32 0, i32 0
  %1675 = load i8, i8* %1674, align 1
  %1676 = zext i8 %1675 to i32
  %1677 = icmp eq i32 %1676, 0
  br i1 %1677, label %1678, label %1688

; <label>:1678                                    ; preds = %1669
  br label %1679

; <label>:1679                                    ; preds = %1678
  %1680 = load %union.rec*, %union.rec** %y, align 8
  %1681 = bitcast %union.rec* %1680 to %struct.word_type*
  %1682 = getelementptr inbounds %struct.word_type, %struct.word_type* %1681, i32 0, i32 0
  %1683 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1682, i32 0, i64 1
  %1684 = getelementptr inbounds %struct.LIST, %struct.LIST* %1683, i32 0, i32 0
  %1685 = load %union.rec*, %union.rec** %1684, align 8
  store %union.rec* %1685, %union.rec** %y, align 8
  %1686 = load i32, i32* %8, align 4
  %1687 = add nsw i32 %1686, 1
  store i32 %1687, i32* %8, align 4
  br label %1669

; <label>:1688                                    ; preds = %1669
  %1689 = load i32, i32* %5, align 4
  %1690 = icmp eq i32 %1689, 0
  br i1 %1690, label %1691, label %1736

; <label>:1691                                    ; preds = %1688
  %1692 = load %union.rec*, %union.rec** %y, align 8
  %1693 = load i32, i32* %2, align 4
  %1694 = load i32, i32* %5, align 4
  %1695 = sext i32 %1694 to i64
  %1696 = load %union.rec*, %union.rec** %y, align 8
  %1697 = bitcast %union.rec* %1696 to %struct.word_type*
  %1698 = getelementptr inbounds %struct.word_type, %struct.word_type* %1697, i32 0, i32 3
  %1699 = bitcast %union.THIRD_UNION* %1698 to %struct.anon.6*
  %1700 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1699, i32 0, i32 0
  %1701 = getelementptr inbounds [2 x i32], [2 x i32]* %1700, i32 0, i64 %1695
  %1702 = load i32, i32* %1701, align 4
  %1703 = load i32, i32* %5, align 4
  %1704 = sext i32 %1703 to i64
  %1705 = load %union.rec*, %union.rec** %y, align 8
  %1706 = bitcast %union.rec* %1705 to %struct.word_type*
  %1707 = getelementptr inbounds %struct.word_type, %struct.word_type* %1706, i32 0, i32 3
  %1708 = bitcast %union.THIRD_UNION* %1707 to %struct.anon.6*
  %1709 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1708, i32 0, i32 1
  %1710 = getelementptr inbounds [2 x i32], [2 x i32]* %1709, i32 0, i64 %1704
  %1711 = load i32, i32* %1710, align 4
  %1712 = load i32, i32* %5, align 4
  %1713 = load i32, i32* %7, align 4
  %1714 = load i32, i32* %8, align 4
  %1715 = call %union.rec* @FixAndPrintObject(%union.rec* %1692, i32 %1693, i32 %1702, i32 %1711, i32 %1712, i32 0, i32 %1713, i32 %1714, i32* %aback, i32* %afwd)
  store %union.rec* %1715, %union.rec** %y, align 8
  %1716 = load i32, i32* %5, align 4
  %1717 = sext i32 %1716 to i64
  %1718 = load %union.rec*, %union.rec** %1, align 8
  %1719 = bitcast %union.rec* %1718 to %struct.word_type*
  %1720 = getelementptr inbounds %struct.word_type, %struct.word_type* %1719, i32 0, i32 3
  %1721 = bitcast %union.THIRD_UNION* %1720 to %struct.anon.6*
  %1722 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1721, i32 0, i32 0
  %1723 = getelementptr inbounds [2 x i32], [2 x i32]* %1722, i32 0, i64 %1717
  %1724 = load i32, i32* %1723, align 4
  %1725 = load i32*, i32** %9, align 8
  store i32 %1724, i32* %1725, align 4
  %1726 = load i32, i32* %5, align 4
  %1727 = sext i32 %1726 to i64
  %1728 = load %union.rec*, %union.rec** %1, align 8
  %1729 = bitcast %union.rec* %1728 to %struct.word_type*
  %1730 = getelementptr inbounds %struct.word_type, %struct.word_type* %1729, i32 0, i32 3
  %1731 = bitcast %union.THIRD_UNION* %1730 to %struct.anon.6*
  %1732 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1731, i32 0, i32 1
  %1733 = getelementptr inbounds [2 x i32], [2 x i32]* %1732, i32 0, i64 %1727
  %1734 = load i32, i32* %1733, align 4
  %1735 = load i32*, i32** %10, align 8
  store i32 %1734, i32* %1735, align 4
  br label %1748

; <label>:1736                                    ; preds = %1688
  %1737 = load %union.rec*, %union.rec** %y, align 8
  %1738 = load i32, i32* %2, align 4
  %1739 = load i32, i32* %3, align 4
  %1740 = load i32, i32* %4, align 4
  %1741 = load i32, i32* %5, align 4
  %1742 = load i32, i32* %6, align 4
  %1743 = load i32, i32* %7, align 4
  %1744 = load i32, i32* %8, align 4
  %1745 = load i32*, i32** %9, align 8
  %1746 = load i32*, i32** %10, align 8
  %1747 = call %union.rec* @FixAndPrintObject(%union.rec* %1737, i32 %1738, i32 %1739, i32 %1740, i32 %1741, i32 %1742, i32 %1743, i32 %1744, i32* %1745, i32* %1746)
  store %union.rec* %1747, %union.rec** %y, align 8
  br label %1748

; <label>:1748                                    ; preds = %1736, %1691
  br label %8231

; <label>:1749                                    ; preds = %0
  %1750 = load %union.rec*, %union.rec** %1, align 8
  %1751 = bitcast %union.rec* %1750 to %struct.word_type*
  %1752 = getelementptr inbounds %struct.word_type, %struct.word_type* %1751, i32 0, i32 0
  %1753 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1752, i32 0, i64 0
  %1754 = getelementptr inbounds %struct.LIST, %struct.LIST* %1753, i32 0, i32 1
  %1755 = load %union.rec*, %union.rec** %1754, align 8
  %1756 = bitcast %union.rec* %1755 to %struct.word_type*
  %1757 = getelementptr inbounds %struct.word_type, %struct.word_type* %1756, i32 0, i32 0
  %1758 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1757, i32 0, i64 1
  %1759 = getelementptr inbounds %struct.LIST, %struct.LIST* %1758, i32 0, i32 0
  %1760 = load %union.rec*, %union.rec** %1759, align 8
  store %union.rec* %1760, %union.rec** %y, align 8
  store i32 1, i32* %8, align 4
  br label %1761

; <label>:1761                                    ; preds = %1771, %1749
  %1762 = load %union.rec*, %union.rec** %y, align 8
  %1763 = bitcast %union.rec* %1762 to %struct.word_type*
  %1764 = getelementptr inbounds %struct.word_type, %struct.word_type* %1763, i32 0, i32 1
  %1765 = bitcast %union.FIRST_UNION* %1764 to %struct.anon*
  %1766 = getelementptr inbounds %struct.anon, %struct.anon* %1765, i32 0, i32 0
  %1767 = load i8, i8* %1766, align 1
  %1768 = zext i8 %1767 to i32
  %1769 = icmp eq i32 %1768, 0
  br i1 %1769, label %1770, label %1780

; <label>:1770                                    ; preds = %1761
  br label %1771

; <label>:1771                                    ; preds = %1770
  %1772 = load %union.rec*, %union.rec** %y, align 8
  %1773 = bitcast %union.rec* %1772 to %struct.word_type*
  %1774 = getelementptr inbounds %struct.word_type, %struct.word_type* %1773, i32 0, i32 0
  %1775 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1774, i32 0, i64 1
  %1776 = getelementptr inbounds %struct.LIST, %struct.LIST* %1775, i32 0, i32 0
  %1777 = load %union.rec*, %union.rec** %1776, align 8
  store %union.rec* %1777, %union.rec** %y, align 8
  %1778 = load i32, i32* %8, align 4
  %1779 = add nsw i32 %1778, 1
  store i32 %1779, i32* %8, align 4
  br label %1761

; <label>:1780                                    ; preds = %1761
  %1781 = load %union.rec*, %union.rec** %y, align 8
  %1782 = load i32, i32* %2, align 4
  %1783 = load i32, i32* %3, align 4
  %1784 = load i32, i32* %4, align 4
  %1785 = load i32, i32* %5, align 4
  %1786 = load i32, i32* %6, align 4
  %1787 = load i32, i32* %7, align 4
  %1788 = load i32, i32* %8, align 4
  %1789 = call %union.rec* @FixAndPrintObject(%union.rec* %1781, i32 %1782, i32 %1783, i32 %1784, i32 %1785, i32 %1786, i32 %1787, i32 %1788, i32* %aback, i32* %afwd)
  store %union.rec* %1789, %union.rec** %y, align 8
  %1790 = load %union.rec*, %union.rec** %1, align 8
  %1791 = bitcast %union.rec* %1790 to %struct.word_type*
  %1792 = getelementptr inbounds %struct.word_type, %struct.word_type* %1791, i32 0, i32 0
  %1793 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1792, i32 0, i64 0
  %1794 = getelementptr inbounds %struct.LIST, %struct.LIST* %1793, i32 0, i32 0
  %1795 = load %union.rec*, %union.rec** %1794, align 8
  %1796 = bitcast %union.rec* %1795 to %struct.word_type*
  %1797 = getelementptr inbounds %struct.word_type, %struct.word_type* %1796, i32 0, i32 0
  %1798 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1797, i32 0, i64 1
  %1799 = getelementptr inbounds %struct.LIST, %struct.LIST* %1798, i32 0, i32 0
  %1800 = load %union.rec*, %union.rec** %1799, align 8
  store %union.rec* %1800, %union.rec** %y, align 8
  store i32 1, i32* %8, align 4
  br label %1801

; <label>:1801                                    ; preds = %1811, %1780
  %1802 = load %union.rec*, %union.rec** %y, align 8
  %1803 = bitcast %union.rec* %1802 to %struct.word_type*
  %1804 = getelementptr inbounds %struct.word_type, %struct.word_type* %1803, i32 0, i32 1
  %1805 = bitcast %union.FIRST_UNION* %1804 to %struct.anon*
  %1806 = getelementptr inbounds %struct.anon, %struct.anon* %1805, i32 0, i32 0
  %1807 = load i8, i8* %1806, align 1
  %1808 = zext i8 %1807 to i32
  %1809 = icmp eq i32 %1808, 0
  br i1 %1809, label %1810, label %1820

; <label>:1810                                    ; preds = %1801
  br label %1811

; <label>:1811                                    ; preds = %1810
  %1812 = load %union.rec*, %union.rec** %y, align 8
  %1813 = bitcast %union.rec* %1812 to %struct.word_type*
  %1814 = getelementptr inbounds %struct.word_type, %struct.word_type* %1813, i32 0, i32 0
  %1815 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1814, i32 0, i64 1
  %1816 = getelementptr inbounds %struct.LIST, %struct.LIST* %1815, i32 0, i32 0
  %1817 = load %union.rec*, %union.rec** %1816, align 8
  store %union.rec* %1817, %union.rec** %y, align 8
  %1818 = load i32, i32* %8, align 4
  %1819 = add nsw i32 %1818, 1
  store i32 %1819, i32* %8, align 4
  br label %1801

; <label>:1820                                    ; preds = %1801
  %1821 = load %union.rec*, %union.rec** %y, align 8
  %1822 = load i32, i32* %2, align 4
  %1823 = load i32, i32* %3, align 4
  %1824 = load i32, i32* %4, align 4
  %1825 = load i32, i32* %5, align 4
  %1826 = load i32, i32* %6, align 4
  %1827 = load i32, i32* %7, align 4
  %1828 = load i32, i32* %8, align 4
  %1829 = call %union.rec* @FixAndPrintObject(%union.rec* %1821, i32 %1822, i32 %1823, i32 %1824, i32 %1825, i32 %1826, i32 %1827, i32 %1828, i32* %aback, i32* %afwd)
  store %union.rec* %1829, %union.rec** %y, align 8
  %1830 = load i32, i32* %5, align 4
  %1831 = sext i32 %1830 to i64
  %1832 = load %union.rec*, %union.rec** %1, align 8
  %1833 = bitcast %union.rec* %1832 to %struct.word_type*
  %1834 = getelementptr inbounds %struct.word_type, %struct.word_type* %1833, i32 0, i32 3
  %1835 = bitcast %union.THIRD_UNION* %1834 to %struct.anon.6*
  %1836 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1835, i32 0, i32 0
  %1837 = getelementptr inbounds [2 x i32], [2 x i32]* %1836, i32 0, i64 %1831
  %1838 = load i32, i32* %1837, align 4
  %1839 = load i32*, i32** %9, align 8
  store i32 %1838, i32* %1839, align 4
  %1840 = load i32, i32* %5, align 4
  %1841 = sext i32 %1840 to i64
  %1842 = load %union.rec*, %union.rec** %1, align 8
  %1843 = bitcast %union.rec* %1842 to %struct.word_type*
  %1844 = getelementptr inbounds %struct.word_type, %struct.word_type* %1843, i32 0, i32 3
  %1845 = bitcast %union.THIRD_UNION* %1844 to %struct.anon.6*
  %1846 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1845, i32 0, i32 1
  %1847 = getelementptr inbounds [2 x i32], [2 x i32]* %1846, i32 0, i64 %1841
  %1848 = load i32, i32* %1847, align 4
  %1849 = load i32*, i32** %10, align 8
  store i32 %1848, i32* %1849, align 4
  br label %8231

; <label>:1850                                    ; preds = %0
  %1851 = load %union.rec*, %union.rec** %1, align 8
  %1852 = bitcast %union.rec* %1851 to %struct.word_type*
  %1853 = getelementptr inbounds %struct.word_type, %struct.word_type* %1852, i32 0, i32 0
  %1854 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1853, i32 0, i64 0
  %1855 = getelementptr inbounds %struct.LIST, %struct.LIST* %1854, i32 0, i32 1
  %1856 = load %union.rec*, %union.rec** %1855, align 8
  %1857 = bitcast %union.rec* %1856 to %struct.word_type*
  %1858 = getelementptr inbounds %struct.word_type, %struct.word_type* %1857, i32 0, i32 0
  %1859 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1858, i32 0, i64 1
  %1860 = getelementptr inbounds %struct.LIST, %struct.LIST* %1859, i32 0, i32 0
  %1861 = load %union.rec*, %union.rec** %1860, align 8
  store %union.rec* %1861, %union.rec** %y, align 8
  store i32 1, i32* %8, align 4
  br label %1862

; <label>:1862                                    ; preds = %1872, %1850
  %1863 = load %union.rec*, %union.rec** %y, align 8
  %1864 = bitcast %union.rec* %1863 to %struct.word_type*
  %1865 = getelementptr inbounds %struct.word_type, %struct.word_type* %1864, i32 0, i32 1
  %1866 = bitcast %union.FIRST_UNION* %1865 to %struct.anon*
  %1867 = getelementptr inbounds %struct.anon, %struct.anon* %1866, i32 0, i32 0
  %1868 = load i8, i8* %1867, align 1
  %1869 = zext i8 %1868 to i32
  %1870 = icmp eq i32 %1869, 0
  br i1 %1870, label %1871, label %1881

; <label>:1871                                    ; preds = %1862
  br label %1872

; <label>:1872                                    ; preds = %1871
  %1873 = load %union.rec*, %union.rec** %y, align 8
  %1874 = bitcast %union.rec* %1873 to %struct.word_type*
  %1875 = getelementptr inbounds %struct.word_type, %struct.word_type* %1874, i32 0, i32 0
  %1876 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1875, i32 0, i64 1
  %1877 = getelementptr inbounds %struct.LIST, %struct.LIST* %1876, i32 0, i32 0
  %1878 = load %union.rec*, %union.rec** %1877, align 8
  store %union.rec* %1878, %union.rec** %y, align 8
  %1879 = load i32, i32* %8, align 4
  %1880 = add nsw i32 %1879, 1
  store i32 %1880, i32* %8, align 4
  br label %1862

; <label>:1881                                    ; preds = %1862
  %1882 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1883 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1882, i32 0, i32 3
  %1884 = load i32, i32* %1883, align 4
  %1885 = icmp ne i32 %1884, 0
  br i1 %1885, label %1886, label %2021

; <label>:1886                                    ; preds = %1881
  %1887 = load i32, i32* %5, align 4
  %1888 = icmp eq i32 %1887, 0
  br i1 %1888, label %1889, label %1944

; <label>:1889                                    ; preds = %1886
  %1890 = load i32, i32* %2, align 4
  %1891 = load %union.rec*, %union.rec** %1, align 8
  %1892 = bitcast %union.rec* %1891 to %struct.closure_type*
  %1893 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1892, i32 0, i32 6
  %1894 = bitcast %union.anon.12* %1893 to i32*
  store i32 %1890, i32* %1894, align 4
  %1895 = load %union.rec*, %union.rec** %1, align 8
  %1896 = bitcast %union.rec* %1895 to %struct.word_type*
  %1897 = getelementptr inbounds %struct.word_type, %struct.word_type* %1896, i32 0, i32 3
  %1898 = bitcast %union.THIRD_UNION* %1897 to %struct.anon.6*
  %1899 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1898, i32 0, i32 0
  %1900 = getelementptr inbounds [2 x i32], [2 x i32]* %1899, i32 0, i64 0
  %1901 = load i32, i32* %1900, align 4
  %1902 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %colc, i32 0, i32 0
  store i32 %1901, i32* %1902, align 4
  %1903 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %colc, i32 0, i32 1
  store i32 8388607, i32* %1903, align 4
  %1904 = load %union.rec*, %union.rec** %1, align 8
  %1905 = bitcast %union.rec* %1904 to %struct.word_type*
  %1906 = getelementptr inbounds %struct.word_type, %struct.word_type* %1905, i32 0, i32 3
  %1907 = bitcast %union.THIRD_UNION* %1906 to %struct.anon.6*
  %1908 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1907, i32 0, i32 1
  %1909 = getelementptr inbounds [2 x i32], [2 x i32]* %1908, i32 0, i64 0
  %1910 = load i32, i32* %1909, align 4
  %1911 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %colc, i32 0, i32 2
  store i32 %1910, i32* %1911, align 4
  %1912 = load %union.rec*, %union.rec** %1, align 8
  %1913 = bitcast %union.rec* %1912 to %struct.word_type*
  %1914 = getelementptr inbounds %struct.word_type, %struct.word_type* %1913, i32 0, i32 3
  %1915 = bitcast %union.THIRD_UNION* %1914 to %struct.anon.6*
  %1916 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1915, i32 0, i32 0
  %1917 = getelementptr inbounds [2 x i32], [2 x i32]* %1916, i32 0, i64 1
  %1918 = load i32, i32* %1917, align 4
  %1919 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %rowc, i32 0, i32 0
  store i32 %1918, i32* %1919, align 4
  %1920 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %rowc, i32 0, i32 1
  store i32 8388607, i32* %1920, align 4
  %1921 = load %union.rec*, %union.rec** %1, align 8
  %1922 = bitcast %union.rec* %1921 to %struct.word_type*
  %1923 = getelementptr inbounds %struct.word_type, %struct.word_type* %1922, i32 0, i32 3
  %1924 = bitcast %union.THIRD_UNION* %1923 to %struct.anon.6*
  %1925 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1924, i32 0, i32 1
  %1926 = getelementptr inbounds [2 x i32], [2 x i32]* %1925, i32 0, i64 1
  %1927 = load i32, i32* %1926, align 4
  %1928 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %rowc, i32 0, i32 2
  store i32 %1927, i32* %1928, align 4
  %1929 = load %union.rec*, %union.rec** %y, align 8
  %1930 = load %union.rec*, %union.rec** %1, align 8
  %1931 = bitcast %union.rec* %1930 to %struct.closure_type*
  %1932 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1931, i32 0, i32 4
  %1933 = bitcast %union.FOURTH_UNION* %1932 to %struct.CONSTRAINT*
  %1934 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1933, i32 0, i32 3
  %1935 = load i32, i32* %1934, align 4
  call void @RotateConstraint(%struct.CONSTRAINT* %yc, %union.rec* %1929, i32 %1935, %struct.CONSTRAINT* %colc, %struct.CONSTRAINT* %rowc, i32 0)
  %1936 = load %union.rec*, %union.rec** %y, align 8
  %1937 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %1938 = load i32, i32* %1937, align 4
  %1939 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %1940 = load i32, i32* %1939, align 4
  %1941 = load i32, i32* %7, align 4
  %1942 = load i32, i32* %8, align 4
  %1943 = call %union.rec* @FixAndPrintObject(%union.rec* %1936, i32 0, i32 %1938, i32 %1940, i32 0, i32 0, i32 %1941, i32 %1942, i32* %aback, i32* %afwd)
  store %union.rec* %1943, %union.rec** %y, align 8
  br label %2020

; <label>:1944                                    ; preds = %1886
  %1945 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1946 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1945, i32 0, i32 24
  %1947 = load void (%union.rec*)*, void (%union.rec*)** %1946, align 8
  %1948 = load %union.rec*, %union.rec** %y, align 8
  call void %1947(%union.rec* %1948)
  %1949 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1950 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1949, i32 0, i32 21
  %1951 = load void (i32, i32)*, void (i32, i32)** %1950, align 8
  %1952 = load %union.rec*, %union.rec** %1, align 8
  %1953 = bitcast %union.rec* %1952 to %struct.closure_type*
  %1954 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1953, i32 0, i32 6
  %1955 = bitcast %union.anon.12* %1954 to i32*
  %1956 = load i32, i32* %1955, align 4
  %1957 = load i32, i32* %7, align 4
  %1958 = load i32, i32* %2, align 4
  %1959 = sub nsw i32 %1957, %1958
  call void %1951(i32 %1956, i32 %1959)
  %1960 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1961 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1960, i32 0, i32 22
  %1962 = load void (i32)*, void (i32)** %1961, align 8
  %1963 = load %union.rec*, %union.rec** %1, align 8
  %1964 = bitcast %union.rec* %1963 to %struct.closure_type*
  %1965 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1964, i32 0, i32 4
  %1966 = bitcast %union.FOURTH_UNION* %1965 to %struct.CONSTRAINT*
  %1967 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1966, i32 0, i32 3
  %1968 = load i32, i32* %1967, align 4
  call void %1962(i32 %1968)
  %1969 = load %union.rec*, %union.rec** %1, align 8
  %1970 = bitcast %union.rec* %1969 to %struct.word_type*
  %1971 = getelementptr inbounds %struct.word_type, %struct.word_type* %1970, i32 0, i32 3
  %1972 = bitcast %union.THIRD_UNION* %1971 to %struct.anon.6*
  %1973 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1972, i32 0, i32 0
  %1974 = getelementptr inbounds [2 x i32], [2 x i32]* %1973, i32 0, i64 0
  %1975 = load i32, i32* %1974, align 4
  %1976 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %colc1, i32 0, i32 0
  store i32 %1975, i32* %1976, align 4
  %1977 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %colc1, i32 0, i32 1
  store i32 8388607, i32* %1977, align 4
  %1978 = load %union.rec*, %union.rec** %1, align 8
  %1979 = bitcast %union.rec* %1978 to %struct.word_type*
  %1980 = getelementptr inbounds %struct.word_type, %struct.word_type* %1979, i32 0, i32 3
  %1981 = bitcast %union.THIRD_UNION* %1980 to %struct.anon.6*
  %1982 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1981, i32 0, i32 1
  %1983 = getelementptr inbounds [2 x i32], [2 x i32]* %1982, i32 0, i64 0
  %1984 = load i32, i32* %1983, align 4
  %1985 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %colc1, i32 0, i32 2
  store i32 %1984, i32* %1985, align 4
  %1986 = load %union.rec*, %union.rec** %1, align 8
  %1987 = bitcast %union.rec* %1986 to %struct.word_type*
  %1988 = getelementptr inbounds %struct.word_type, %struct.word_type* %1987, i32 0, i32 3
  %1989 = bitcast %union.THIRD_UNION* %1988 to %struct.anon.6*
  %1990 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1989, i32 0, i32 0
  %1991 = getelementptr inbounds [2 x i32], [2 x i32]* %1990, i32 0, i64 1
  %1992 = load i32, i32* %1991, align 4
  %1993 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %rowc2, i32 0, i32 0
  store i32 %1992, i32* %1993, align 4
  %1994 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %rowc2, i32 0, i32 1
  store i32 8388607, i32* %1994, align 4
  %1995 = load %union.rec*, %union.rec** %1, align 8
  %1996 = bitcast %union.rec* %1995 to %struct.word_type*
  %1997 = getelementptr inbounds %struct.word_type, %struct.word_type* %1996, i32 0, i32 3
  %1998 = bitcast %union.THIRD_UNION* %1997 to %struct.anon.6*
  %1999 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1998, i32 0, i32 1
  %2000 = getelementptr inbounds [2 x i32], [2 x i32]* %1999, i32 0, i64 1
  %2001 = load i32, i32* %2000, align 4
  %2002 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %rowc2, i32 0, i32 2
  store i32 %2001, i32* %2002, align 4
  %2003 = load %union.rec*, %union.rec** %y, align 8
  %2004 = load %union.rec*, %union.rec** %1, align 8
  %2005 = bitcast %union.rec* %2004 to %struct.closure_type*
  %2006 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2005, i32 0, i32 4
  %2007 = bitcast %union.FOURTH_UNION* %2006 to %struct.CONSTRAINT*
  %2008 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %2007, i32 0, i32 3
  %2009 = load i32, i32* %2008, align 4
  call void @RotateConstraint(%struct.CONSTRAINT* %yc3, %union.rec* %2003, i32 %2009, %struct.CONSTRAINT* %colc1, %struct.CONSTRAINT* %rowc2, i32 1)
  %2010 = load %union.rec*, %union.rec** %y, align 8
  %2011 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc3, i32 0, i32 0
  %2012 = load i32, i32* %2011, align 4
  %2013 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc3, i32 0, i32 2
  %2014 = load i32, i32* %2013, align 4
  %2015 = load i32, i32* %8, align 4
  %2016 = call %union.rec* @FixAndPrintObject(%union.rec* %2010, i32 0, i32 %2012, i32 %2014, i32 1, i32 0, i32 0, i32 %2015, i32* %aback, i32* %afwd)
  store %union.rec* %2016, %union.rec** %y, align 8
  %2017 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %2018 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %2017, i32 0, i32 25
  %2019 = load void ()*, void ()** %2018, align 8
  call void %2019()
  br label %2020

; <label>:2020                                    ; preds = %1944, %1889
  br label %2040

; <label>:2021                                    ; preds = %1881
  %2022 = load %union.rec*, %union.rec** %1, align 8
  %2023 = bitcast %union.rec* %2022 to %struct.closure_type*
  %2024 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2023, i32 0, i32 4
  %2025 = bitcast %union.FOURTH_UNION* %2024 to %struct.CONSTRAINT*
  %2026 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %2025, i32 0, i32 3
  %2027 = load i32, i32* %2026, align 4
  %2028 = icmp eq i32 %2027, 0
  br i1 %2028, label %2029, label %2039

; <label>:2029                                    ; preds = %2021
  %2030 = load %union.rec*, %union.rec** %y, align 8
  %2031 = load i32, i32* %2, align 4
  %2032 = load i32, i32* %3, align 4
  %2033 = load i32, i32* %4, align 4
  %2034 = load i32, i32* %5, align 4
  %2035 = load i32, i32* %6, align 4
  %2036 = load i32, i32* %7, align 4
  %2037 = load i32, i32* %8, align 4
  %2038 = call %union.rec* @FixAndPrintObject(%union.rec* %2030, i32 %2031, i32 %2032, i32 %2033, i32 %2034, i32 %2035, i32 %2036, i32 %2037, i32* %aback, i32* %afwd)
  store %union.rec* %2038, %union.rec** %y, align 8
  br label %2039

; <label>:2039                                    ; preds = %2029, %2021
  br label %2040

; <label>:2040                                    ; preds = %2039, %2020
  %2041 = load i32, i32* %3, align 4
  %2042 = load i32*, i32** %9, align 8
  store i32 %2041, i32* %2042, align 4
  %2043 = load i32, i32* %4, align 4
  %2044 = load i32*, i32** %10, align 8
  store i32 %2043, i32* %2044, align 4
  br label %8231

; <label>:2045                                    ; preds = %0
  %2046 = load %union.rec*, %union.rec** %1, align 8
  %2047 = bitcast %union.rec* %2046 to %struct.word_type*
  %2048 = getelementptr inbounds %struct.word_type, %struct.word_type* %2047, i32 0, i32 0
  %2049 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2048, i32 0, i64 0
  %2050 = getelementptr inbounds %struct.LIST, %struct.LIST* %2049, i32 0, i32 0
  %2051 = load %union.rec*, %union.rec** %2050, align 8
  %2052 = bitcast %union.rec* %2051 to %struct.word_type*
  %2053 = getelementptr inbounds %struct.word_type, %struct.word_type* %2052, i32 0, i32 0
  %2054 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2053, i32 0, i64 1
  %2055 = getelementptr inbounds %struct.LIST, %struct.LIST* %2054, i32 0, i32 0
  %2056 = load %union.rec*, %union.rec** %2055, align 8
  store %union.rec* %2056, %union.rec** %y, align 8
  store i32 1, i32* %8, align 4
  br label %2057

; <label>:2057                                    ; preds = %2067, %2045
  %2058 = load %union.rec*, %union.rec** %y, align 8
  %2059 = bitcast %union.rec* %2058 to %struct.word_type*
  %2060 = getelementptr inbounds %struct.word_type, %struct.word_type* %2059, i32 0, i32 1
  %2061 = bitcast %union.FIRST_UNION* %2060 to %struct.anon*
  %2062 = getelementptr inbounds %struct.anon, %struct.anon* %2061, i32 0, i32 0
  %2063 = load i8, i8* %2062, align 1
  %2064 = zext i8 %2063 to i32
  %2065 = icmp eq i32 %2064, 0
  br i1 %2065, label %2066, label %2076

; <label>:2066                                    ; preds = %2057
  br label %2067

; <label>:2067                                    ; preds = %2066
  %2068 = load %union.rec*, %union.rec** %y, align 8
  %2069 = bitcast %union.rec* %2068 to %struct.word_type*
  %2070 = getelementptr inbounds %struct.word_type, %struct.word_type* %2069, i32 0, i32 0
  %2071 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2070, i32 0, i64 1
  %2072 = getelementptr inbounds %struct.LIST, %struct.LIST* %2071, i32 0, i32 0
  %2073 = load %union.rec*, %union.rec** %2072, align 8
  store %union.rec* %2073, %union.rec** %y, align 8
  %2074 = load i32, i32* %8, align 4
  %2075 = add nsw i32 %2074, 1
  store i32 %2075, i32* %8, align 4
  br label %2057

; <label>:2076                                    ; preds = %2057
  %2077 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %2078 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %2077, i32 0, i32 6
  %2079 = load i32, i32* %2078, align 4
  %2080 = icmp ne i32 %2079, 0
  br i1 %2080, label %2081, label %2305

; <label>:2081                                    ; preds = %2076
  %2082 = load i32, i32* %5, align 4
  %2083 = icmp eq i32 %2082, 0
  br i1 %2083, label %2084, label %2127

; <label>:2084                                    ; preds = %2081
  %2085 = load i32, i32* %3, align 4
  %2086 = load i32, i32* %5, align 4
  %2087 = sext i32 %2086 to i64
  %2088 = load %union.rec*, %union.rec** %1, align 8
  %2089 = bitcast %union.rec* %2088 to %struct.word_type*
  %2090 = getelementptr inbounds %struct.word_type, %struct.word_type* %2089, i32 0, i32 3
  %2091 = bitcast %union.THIRD_UNION* %2090 to %struct.anon.6*
  %2092 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2091, i32 0, i32 0
  %2093 = getelementptr inbounds [2 x i32], [2 x i32]* %2092, i32 0, i64 %2087
  store i32 %2085, i32* %2093, align 4
  %2094 = load i32, i32* %4, align 4
  %2095 = load i32, i32* %5, align 4
  %2096 = sext i32 %2095 to i64
  %2097 = load %union.rec*, %union.rec** %1, align 8
  %2098 = bitcast %union.rec* %2097 to %struct.word_type*
  %2099 = getelementptr inbounds %struct.word_type, %struct.word_type* %2098, i32 0, i32 3
  %2100 = bitcast %union.THIRD_UNION* %2099 to %struct.anon.6*
  %2101 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2100, i32 0, i32 1
  %2102 = getelementptr inbounds [2 x i32], [2 x i32]* %2101, i32 0, i64 %2096
  store i32 %2094, i32* %2102, align 4
  %2103 = load i32, i32* %2, align 4
  %2104 = load i32, i32* %5, align 4
  %2105 = sext i32 %2104 to i64
  %2106 = load %union.rec*, %union.rec** %1, align 8
  %2107 = bitcast %union.rec* %2106 to %struct.word_type*
  %2108 = getelementptr inbounds %struct.word_type, %struct.word_type* %2107, i32 0, i32 3
  %2109 = bitcast %union.THIRD_UNION* %2108 to %struct.anon.6*
  %2110 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2109, i32 0, i32 0
  %2111 = getelementptr inbounds [2 x i32], [2 x i32]* %2110, i32 0, i64 %2105
  %2112 = load i32, i32* %2111, align 4
  %2113 = sub nsw i32 %2103, %2112
  %2114 = load %union.rec*, %union.rec** %1, align 8
  %2115 = bitcast %union.rec* %2114 to %struct.closure_type*
  %2116 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2115, i32 0, i32 6
  %2117 = bitcast %union.anon.12* %2116 to i32*
  store i32 %2113, i32* %2117, align 4
  %2118 = load %union.rec*, %union.rec** %y, align 8
  %2119 = load i32, i32* %2, align 4
  %2120 = load i32, i32* %3, align 4
  %2121 = load i32, i32* %4, align 4
  %2122 = load i32, i32* %5, align 4
  %2123 = load i32, i32* %6, align 4
  %2124 = load i32, i32* %7, align 4
  %2125 = load i32, i32* %8, align 4
  %2126 = call %union.rec* @FixAndPrintObject(%union.rec* %2118, i32 %2119, i32 %2120, i32 %2121, i32 %2122, i32 %2123, i32 %2124, i32 %2125, i32* %aback, i32* %afwd)
  store %union.rec* %2126, %union.rec** %y, align 8
  br label %2304

; <label>:2127                                    ; preds = %2081
  %2128 = load %union.rec*, %union.rec** %1, align 8
  %2129 = bitcast %union.rec* %2128 to %struct.word_type*
  %2130 = getelementptr inbounds %struct.word_type, %struct.word_type* %2129, i32 0, i32 0
  %2131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2130, i32 0, i64 0
  %2132 = getelementptr inbounds %struct.LIST, %struct.LIST* %2131, i32 0, i32 1
  %2133 = load %union.rec*, %union.rec** %2132, align 8
  %2134 = bitcast %union.rec* %2133 to %struct.word_type*
  %2135 = getelementptr inbounds %struct.word_type, %struct.word_type* %2134, i32 0, i32 0
  %2136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2135, i32 0, i64 1
  %2137 = getelementptr inbounds %struct.LIST, %struct.LIST* %2136, i32 0, i32 0
  %2138 = load %union.rec*, %union.rec** %2137, align 8
  store %union.rec* %2138, %union.rec** %tmp, align 8
  br label %2139

; <label>:2139                                    ; preds = %2149, %2127
  %2140 = load %union.rec*, %union.rec** %tmp, align 8
  %2141 = bitcast %union.rec* %2140 to %struct.word_type*
  %2142 = getelementptr inbounds %struct.word_type, %struct.word_type* %2141, i32 0, i32 1
  %2143 = bitcast %union.FIRST_UNION* %2142 to %struct.anon*
  %2144 = getelementptr inbounds %struct.anon, %struct.anon* %2143, i32 0, i32 0
  %2145 = load i8, i8* %2144, align 1
  %2146 = zext i8 %2145 to i32
  %2147 = icmp eq i32 %2146, 0
  br i1 %2147, label %2148, label %2156

; <label>:2148                                    ; preds = %2139
  br label %2149

; <label>:2149                                    ; preds = %2148
  %2150 = load %union.rec*, %union.rec** %tmp, align 8
  %2151 = bitcast %union.rec* %2150 to %struct.word_type*
  %2152 = getelementptr inbounds %struct.word_type, %struct.word_type* %2151, i32 0, i32 0
  %2153 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2152, i32 0, i64 1
  %2154 = getelementptr inbounds %struct.LIST, %struct.LIST* %2153, i32 0, i32 0
  %2155 = load %union.rec*, %union.rec** %2154, align 8
  store %union.rec* %2155, %union.rec** %tmp, align 8
  br label %2139

; <label>:2156                                    ; preds = %2139
  %2157 = load %union.rec*, %union.rec** %tmp, align 8
  %2158 = bitcast %union.rec* %2157 to %struct.word_type*
  %2159 = getelementptr inbounds %struct.word_type, %struct.word_type* %2158, i32 0, i32 1
  %2160 = bitcast %union.FIRST_UNION* %2159 to %struct.anon*
  %2161 = getelementptr inbounds %struct.anon, %struct.anon* %2160, i32 0, i32 0
  %2162 = load i8, i8* %2161, align 1
  %2163 = zext i8 %2162 to i32
  %2164 = icmp eq i32 %2163, 19
  br i1 %2164, label %2165, label %2224

; <label>:2165                                    ; preds = %2156
  %2166 = load %union.rec*, %union.rec** %tmp, align 8
  %2167 = bitcast %union.rec* %2166 to %struct.word_type*
  %2168 = getelementptr inbounds %struct.word_type, %struct.word_type* %2167, i32 0, i32 0
  %2169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2168, i32 0, i64 0
  %2170 = getelementptr inbounds %struct.LIST, %struct.LIST* %2169, i32 0, i32 1
  %2171 = load %union.rec*, %union.rec** %2170, align 8
  %2172 = bitcast %union.rec* %2171 to %struct.word_type*
  %2173 = getelementptr inbounds %struct.word_type, %struct.word_type* %2172, i32 0, i32 0
  %2174 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2173, i32 0, i64 1
  %2175 = getelementptr inbounds %struct.LIST, %struct.LIST* %2174, i32 0, i32 0
  %2176 = load %union.rec*, %union.rec** %2175, align 8
  store %union.rec* %2176, %union.rec** %pre, align 8
  br label %2177

; <label>:2177                                    ; preds = %2187, %2165
  %2178 = load %union.rec*, %union.rec** %pre, align 8
  %2179 = bitcast %union.rec* %2178 to %struct.word_type*
  %2180 = getelementptr inbounds %struct.word_type, %struct.word_type* %2179, i32 0, i32 1
  %2181 = bitcast %union.FIRST_UNION* %2180 to %struct.anon*
  %2182 = getelementptr inbounds %struct.anon, %struct.anon* %2181, i32 0, i32 0
  %2183 = load i8, i8* %2182, align 1
  %2184 = zext i8 %2183 to i32
  %2185 = icmp eq i32 %2184, 0
  br i1 %2185, label %2186, label %2194

; <label>:2186                                    ; preds = %2177
  br label %2187

; <label>:2187                                    ; preds = %2186
  %2188 = load %union.rec*, %union.rec** %pre, align 8
  %2189 = bitcast %union.rec* %2188 to %struct.word_type*
  %2190 = getelementptr inbounds %struct.word_type, %struct.word_type* %2189, i32 0, i32 0
  %2191 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2190, i32 0, i64 1
  %2192 = getelementptr inbounds %struct.LIST, %struct.LIST* %2191, i32 0, i32 0
  %2193 = load %union.rec*, %union.rec** %2192, align 8
  store %union.rec* %2193, %union.rec** %pre, align 8
  br label %2177

; <label>:2194                                    ; preds = %2177
  %2195 = load %union.rec*, %union.rec** %tmp, align 8
  %2196 = bitcast %union.rec* %2195 to %struct.word_type*
  %2197 = getelementptr inbounds %struct.word_type, %struct.word_type* %2196, i32 0, i32 0
  %2198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2197, i32 0, i64 0
  %2199 = getelementptr inbounds %struct.LIST, %struct.LIST* %2198, i32 0, i32 0
  %2200 = load %union.rec*, %union.rec** %2199, align 8
  %2201 = bitcast %union.rec* %2200 to %struct.word_type*
  %2202 = getelementptr inbounds %struct.word_type, %struct.word_type* %2201, i32 0, i32 0
  %2203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2202, i32 0, i64 1
  %2204 = getelementptr inbounds %struct.LIST, %struct.LIST* %2203, i32 0, i32 0
  %2205 = load %union.rec*, %union.rec** %2204, align 8
  store %union.rec* %2205, %union.rec** %post, align 8
  br label %2206

; <label>:2206                                    ; preds = %2216, %2194
  %2207 = load %union.rec*, %union.rec** %post, align 8
  %2208 = bitcast %union.rec* %2207 to %struct.word_type*
  %2209 = getelementptr inbounds %struct.word_type, %struct.word_type* %2208, i32 0, i32 1
  %2210 = bitcast %union.FIRST_UNION* %2209 to %struct.anon*
  %2211 = getelementptr inbounds %struct.anon, %struct.anon* %2210, i32 0, i32 0
  %2212 = load i8, i8* %2211, align 1
  %2213 = zext i8 %2212 to i32
  %2214 = icmp eq i32 %2213, 0
  br i1 %2214, label %2215, label %2223

; <label>:2215                                    ; preds = %2206
  br label %2216

; <label>:2216                                    ; preds = %2215
  %2217 = load %union.rec*, %union.rec** %post, align 8
  %2218 = bitcast %union.rec* %2217 to %struct.word_type*
  %2219 = getelementptr inbounds %struct.word_type, %struct.word_type* %2218, i32 0, i32 0
  %2220 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2219, i32 0, i64 1
  %2221 = getelementptr inbounds %struct.LIST, %struct.LIST* %2220, i32 0, i32 0
  %2222 = load %union.rec*, %union.rec** %2221, align 8
  store %union.rec* %2222, %union.rec** %post, align 8
  br label %2206

; <label>:2223                                    ; preds = %2206
  br label %2226

; <label>:2224                                    ; preds = %2156
  %2225 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %2225, %union.rec** %pre, align 8
  store %union.rec* null, %union.rec** %post, align 8
  br label %2226

; <label>:2226                                    ; preds = %2224, %2223
  %2227 = load i32, i32* %3, align 4
  %2228 = load i32, i32* %5, align 4
  %2229 = sext i32 %2228 to i64
  %2230 = load %union.rec*, %union.rec** %1, align 8
  %2231 = bitcast %union.rec* %2230 to %struct.word_type*
  %2232 = getelementptr inbounds %struct.word_type, %struct.word_type* %2231, i32 0, i32 3
  %2233 = bitcast %union.THIRD_UNION* %2232 to %struct.anon.6*
  %2234 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2233, i32 0, i32 0
  %2235 = getelementptr inbounds [2 x i32], [2 x i32]* %2234, i32 0, i64 %2229
  store i32 %2227, i32* %2235, align 4
  %2236 = load i32, i32* %4, align 4
  %2237 = load i32, i32* %5, align 4
  %2238 = sext i32 %2237 to i64
  %2239 = load %union.rec*, %union.rec** %1, align 8
  %2240 = bitcast %union.rec* %2239 to %struct.word_type*
  %2241 = getelementptr inbounds %struct.word_type, %struct.word_type* %2240, i32 0, i32 3
  %2242 = bitcast %union.THIRD_UNION* %2241 to %struct.anon.6*
  %2243 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2242, i32 0, i32 1
  %2244 = getelementptr inbounds [2 x i32], [2 x i32]* %2243, i32 0, i64 %2238
  store i32 %2236, i32* %2244, align 4
  %2245 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %2246 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %2245, i32 0, i32 19
  %2247 = load void (%union.rec*, i32, i32, %union.rec*)*, void (%union.rec*, i32, i32, %union.rec*)** %2246, align 8
  %2248 = load %union.rec*, %union.rec** %pre, align 8
  %2249 = load %union.rec*, %union.rec** %1, align 8
  %2250 = bitcast %union.rec* %2249 to %struct.closure_type*
  %2251 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2250, i32 0, i32 6
  %2252 = bitcast %union.anon.12* %2251 to i32*
  %2253 = load i32, i32* %2252, align 4
  %2254 = load i32, i32* %7, align 4
  %2255 = load i32, i32* %2, align 4
  %2256 = load i32, i32* %5, align 4
  %2257 = sext i32 %2256 to i64
  %2258 = load %union.rec*, %union.rec** %1, align 8
  %2259 = bitcast %union.rec* %2258 to %struct.word_type*
  %2260 = getelementptr inbounds %struct.word_type, %struct.word_type* %2259, i32 0, i32 3
  %2261 = bitcast %union.THIRD_UNION* %2260 to %struct.anon.6*
  %2262 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2261, i32 0, i32 0
  %2263 = getelementptr inbounds [2 x i32], [2 x i32]* %2262, i32 0, i64 %2257
  %2264 = load i32, i32* %2263, align 4
  %2265 = sub nsw i32 %2255, %2264
  %2266 = sub nsw i32 %2254, %2265
  %2267 = load %union.rec*, %union.rec** %1, align 8
  call void %2247(%union.rec* %2248, i32 %2253, i32 %2266, %union.rec* %2267)
  %2268 = load %union.rec*, %union.rec** %y, align 8
  %2269 = load i32, i32* %2, align 4
  %2270 = load i32, i32* %3, align 4
  %2271 = load i32, i32* %4, align 4
  %2272 = load i32, i32* %5, align 4
  %2273 = load i32, i32* %6, align 4
  %2274 = load i32, i32* %7, align 4
  %2275 = load i32, i32* %8, align 4
  %2276 = call %union.rec* @FixAndPrintObject(%union.rec* %2268, i32 %2269, i32 %2270, i32 %2271, i32 %2272, i32 %2273, i32 %2274, i32 %2275, i32* %aback, i32* %afwd)
  store %union.rec* %2276, %union.rec** %y, align 8
  %2277 = load %union.rec*, %union.rec** %post, align 8
  %2278 = icmp ne %union.rec* %2277, null
  br i1 %2278, label %2279, label %2303

; <label>:2279                                    ; preds = %2226
  %2280 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %2281 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %2280, i32 0, i32 19
  %2282 = load void (%union.rec*, i32, i32, %union.rec*)*, void (%union.rec*, i32, i32, %union.rec*)** %2281, align 8
  %2283 = load %union.rec*, %union.rec** %post, align 8
  %2284 = load %union.rec*, %union.rec** %1, align 8
  %2285 = bitcast %union.rec* %2284 to %struct.closure_type*
  %2286 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2285, i32 0, i32 6
  %2287 = bitcast %union.anon.12* %2286 to i32*
  %2288 = load i32, i32* %2287, align 4
  %2289 = load i32, i32* %7, align 4
  %2290 = load i32, i32* %2, align 4
  %2291 = load i32, i32* %5, align 4
  %2292 = sext i32 %2291 to i64
  %2293 = load %union.rec*, %union.rec** %1, align 8
  %2294 = bitcast %union.rec* %2293 to %struct.word_type*
  %2295 = getelementptr inbounds %struct.word_type, %struct.word_type* %2294, i32 0, i32 3
  %2296 = bitcast %union.THIRD_UNION* %2295 to %struct.anon.6*
  %2297 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2296, i32 0, i32 0
  %2298 = getelementptr inbounds [2 x i32], [2 x i32]* %2297, i32 0, i64 %2292
  %2299 = load i32, i32* %2298, align 4
  %2300 = sub nsw i32 %2290, %2299
  %2301 = sub nsw i32 %2289, %2300
  %2302 = load %union.rec*, %union.rec** %1, align 8
  call void %2282(%union.rec* %2283, i32 %2288, i32 %2301, %union.rec* %2302)
  br label %2303

; <label>:2303                                    ; preds = %2279, %2226
  br label %2304

; <label>:2304                                    ; preds = %2303, %2084
  br label %2315

; <label>:2305                                    ; preds = %2076
  %2306 = load %union.rec*, %union.rec** %y, align 8
  %2307 = load i32, i32* %2, align 4
  %2308 = load i32, i32* %3, align 4
  %2309 = load i32, i32* %4, align 4
  %2310 = load i32, i32* %5, align 4
  %2311 = load i32, i32* %6, align 4
  %2312 = load i32, i32* %7, align 4
  %2313 = load i32, i32* %8, align 4
  %2314 = call %union.rec* @FixAndPrintObject(%union.rec* %2306, i32 %2307, i32 %2308, i32 %2309, i32 %2310, i32 %2311, i32 %2312, i32 %2313, i32* %aback, i32* %afwd)
  store %union.rec* %2314, %union.rec** %y, align 8
  br label %2315

; <label>:2315                                    ; preds = %2305, %2304
  %2316 = load i32, i32* %3, align 4
  %2317 = load i32*, i32** %9, align 8
  store i32 %2316, i32* %2317, align 4
  %2318 = load i32, i32* %4, align 4
  %2319 = load i32*, i32** %10, align 8
  store i32 %2318, i32* %2319, align 4
  br label %8231

; <label>:2320                                    ; preds = %0
  %2321 = load %union.rec*, %union.rec** %1, align 8
  %2322 = bitcast %union.rec* %2321 to %struct.word_type*
  %2323 = getelementptr inbounds %struct.word_type, %struct.word_type* %2322, i32 0, i32 0
  %2324 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2323, i32 0, i64 0
  %2325 = getelementptr inbounds %struct.LIST, %struct.LIST* %2324, i32 0, i32 0
  %2326 = load %union.rec*, %union.rec** %2325, align 8
  %2327 = bitcast %union.rec* %2326 to %struct.word_type*
  %2328 = getelementptr inbounds %struct.word_type, %struct.word_type* %2327, i32 0, i32 0
  %2329 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2328, i32 0, i64 1
  %2330 = getelementptr inbounds %struct.LIST, %struct.LIST* %2329, i32 0, i32 0
  %2331 = load %union.rec*, %union.rec** %2330, align 8
  store %union.rec* %2331, %union.rec** %y, align 8
  store i32 1, i32* %8, align 4
  br label %2332

; <label>:2332                                    ; preds = %2342, %2320
  %2333 = load %union.rec*, %union.rec** %y, align 8
  %2334 = bitcast %union.rec* %2333 to %struct.word_type*
  %2335 = getelementptr inbounds %struct.word_type, %struct.word_type* %2334, i32 0, i32 1
  %2336 = bitcast %union.FIRST_UNION* %2335 to %struct.anon*
  %2337 = getelementptr inbounds %struct.anon, %struct.anon* %2336, i32 0, i32 0
  %2338 = load i8, i8* %2337, align 1
  %2339 = zext i8 %2338 to i32
  %2340 = icmp eq i32 %2339, 0
  br i1 %2340, label %2341, label %2351

; <label>:2341                                    ; preds = %2332
  br label %2342

; <label>:2342                                    ; preds = %2341
  %2343 = load %union.rec*, %union.rec** %y, align 8
  %2344 = bitcast %union.rec* %2343 to %struct.word_type*
  %2345 = getelementptr inbounds %struct.word_type, %struct.word_type* %2344, i32 0, i32 0
  %2346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2345, i32 0, i64 1
  %2347 = getelementptr inbounds %struct.LIST, %struct.LIST* %2346, i32 0, i32 0
  %2348 = load %union.rec*, %union.rec** %2347, align 8
  store %union.rec* %2348, %union.rec** %y, align 8
  %2349 = load i32, i32* %8, align 4
  %2350 = add nsw i32 %2349, 1
  store i32 %2350, i32* %8, align 4
  br label %2332

; <label>:2351                                    ; preds = %2332
  %2352 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %2353 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %2352, i32 0, i32 4
  %2354 = load i32, i32* %2353, align 4
  %2355 = icmp ne i32 %2354, 0
  br i1 %2355, label %2356, label %2600

; <label>:2356                                    ; preds = %2351
  %2357 = load i32, i32* %5, align 4
  %2358 = icmp eq i32 %2357, 0
  br i1 %2358, label %2359, label %2433

; <label>:2359                                    ; preds = %2356
  %2360 = load %union.rec*, %union.rec** %1, align 8
  %2361 = bitcast %union.rec* %2360 to %struct.closure_type*
  %2362 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2361, i32 0, i32 4
  %2363 = bitcast %union.FOURTH_UNION* %2362 to %struct.STYLE*
  %2364 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2363, i32 0, i32 4
  %2365 = load i32, i32* %2364, align 4
  %2366 = and i32 %2365, 4095
  %2367 = icmp sgt i32 %2366, 0
  br i1 %2367, label %2368, label %2393

; <label>:2368                                    ; preds = %2359
  %2369 = load %union.rec*, %union.rec** %1, align 8
  %2370 = bitcast %union.rec* %2369 to %struct.closure_type*
  %2371 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2370, i32 0, i32 4
  %2372 = bitcast %union.FOURTH_UNION* %2371 to %struct.STYLE*
  %2373 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2372, i32 0, i32 4
  %2374 = load i32, i32* %2373, align 4
  %2375 = and i32 %2374, 4095
  %2376 = zext i32 %2375 to i64
  %2377 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %2378 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2377, i64 %2376
  %2379 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2378, i32 0, i32 6
  %2380 = load %union.rec*, %union.rec** %2379, align 8
  store %union.rec* %2380, %union.rec** %face, align 8
  %2381 = load %union.rec*, %union.rec** %face, align 8
  %2382 = bitcast %union.rec* %2381 to %struct.word_type*
  %2383 = getelementptr inbounds %struct.word_type, %struct.word_type* %2382, i32 0, i32 2
  %2384 = bitcast %union.SECOND_UNION* %2383 to %struct.anon.4*
  %2385 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2384, i32 0, i32 1
  %2386 = load i16, i16* %2385, align 2
  %2387 = zext i16 %2386 to i32
  %2388 = load i32, i32* @font_curr_page, align 4
  %2389 = icmp slt i32 %2387, %2388
  br i1 %2389, label %2390, label %2392

; <label>:2390                                    ; preds = %2368
  %2391 = load %union.rec*, %union.rec** %face, align 8
  call void @FontPageUsed(%union.rec* %2391)
  br label %2392

; <label>:2392                                    ; preds = %2390, %2368
  br label %2393

; <label>:2393                                    ; preds = %2392, %2359
  %2394 = load i32, i32* %3, align 4
  %2395 = load i32, i32* %5, align 4
  %2396 = sext i32 %2395 to i64
  %2397 = load %union.rec*, %union.rec** %1, align 8
  %2398 = bitcast %union.rec* %2397 to %struct.word_type*
  %2399 = getelementptr inbounds %struct.word_type, %struct.word_type* %2398, i32 0, i32 3
  %2400 = bitcast %union.THIRD_UNION* %2399 to %struct.anon.6*
  %2401 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2400, i32 0, i32 0
  %2402 = getelementptr inbounds [2 x i32], [2 x i32]* %2401, i32 0, i64 %2396
  store i32 %2394, i32* %2402, align 4
  %2403 = load i32, i32* %4, align 4
  %2404 = load i32, i32* %5, align 4
  %2405 = sext i32 %2404 to i64
  %2406 = load %union.rec*, %union.rec** %1, align 8
  %2407 = bitcast %union.rec* %2406 to %struct.word_type*
  %2408 = getelementptr inbounds %struct.word_type, %struct.word_type* %2407, i32 0, i32 3
  %2409 = bitcast %union.THIRD_UNION* %2408 to %struct.anon.6*
  %2410 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2409, i32 0, i32 1
  %2411 = getelementptr inbounds [2 x i32], [2 x i32]* %2410, i32 0, i64 %2405
  store i32 %2403, i32* %2411, align 4
  %2412 = load i32, i32* %2, align 4
  %2413 = load %union.rec*, %union.rec** %1, align 8
  %2414 = bitcast %union.rec* %2413 to %struct.word_type*
  %2415 = getelementptr inbounds %struct.word_type, %struct.word_type* %2414, i32 0, i32 3
  %2416 = bitcast %union.THIRD_UNION* %2415 to %struct.anon.6*
  %2417 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2416, i32 0, i32 0
  %2418 = getelementptr inbounds [2 x i32], [2 x i32]* %2417, i32 0, i64 0
  %2419 = load i32, i32* %2418, align 4
  %2420 = sub nsw i32 %2412, %2419
  %2421 = load %union.rec*, %union.rec** %1, align 8
  %2422 = bitcast %union.rec* %2421 to %struct.closure_type*
  %2423 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2422, i32 0, i32 6
  %2424 = bitcast %union.anon.12* %2423 to i32*
  store i32 %2420, i32* %2424, align 4
  %2425 = load %union.rec*, %union.rec** %y, align 8
  %2426 = load i32, i32* %3, align 4
  %2427 = load i32, i32* %3, align 4
  %2428 = load i32, i32* %4, align 4
  %2429 = load i32, i32* %5, align 4
  %2430 = load i32, i32* %7, align 4
  %2431 = load i32, i32* %8, align 4
  %2432 = call %union.rec* @FixAndPrintObject(%union.rec* %2425, i32 %2426, i32 %2427, i32 %2428, i32 %2429, i32 0, i32 %2430, i32 %2431, i32* %aback, i32* %afwd)
  store %union.rec* %2432, %union.rec** %y, align 8
  br label %2599

; <label>:2433                                    ; preds = %2356
  %2434 = load %union.rec*, %union.rec** %1, align 8
  %2435 = bitcast %union.rec* %2434 to %struct.word_type*
  %2436 = getelementptr inbounds %struct.word_type, %struct.word_type* %2435, i32 0, i32 0
  %2437 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2436, i32 0, i64 0
  %2438 = getelementptr inbounds %struct.LIST, %struct.LIST* %2437, i32 0, i32 1
  %2439 = load %union.rec*, %union.rec** %2438, align 8
  %2440 = bitcast %union.rec* %2439 to %struct.word_type*
  %2441 = getelementptr inbounds %struct.word_type, %struct.word_type* %2440, i32 0, i32 0
  %2442 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2441, i32 0, i64 1
  %2443 = getelementptr inbounds %struct.LIST, %struct.LIST* %2442, i32 0, i32 0
  %2444 = load %union.rec*, %union.rec** %2443, align 8
  store %union.rec* %2444, %union.rec** %tmp4, align 8
  br label %2445

; <label>:2445                                    ; preds = %2455, %2433
  %2446 = load %union.rec*, %union.rec** %tmp4, align 8
  %2447 = bitcast %union.rec* %2446 to %struct.word_type*
  %2448 = getelementptr inbounds %struct.word_type, %struct.word_type* %2447, i32 0, i32 1
  %2449 = bitcast %union.FIRST_UNION* %2448 to %struct.anon*
  %2450 = getelementptr inbounds %struct.anon, %struct.anon* %2449, i32 0, i32 0
  %2451 = load i8, i8* %2450, align 1
  %2452 = zext i8 %2451 to i32
  %2453 = icmp eq i32 %2452, 0
  br i1 %2453, label %2454, label %2462

; <label>:2454                                    ; preds = %2445
  br label %2455

; <label>:2455                                    ; preds = %2454
  %2456 = load %union.rec*, %union.rec** %tmp4, align 8
  %2457 = bitcast %union.rec* %2456 to %struct.word_type*
  %2458 = getelementptr inbounds %struct.word_type, %struct.word_type* %2457, i32 0, i32 0
  %2459 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2458, i32 0, i64 1
  %2460 = getelementptr inbounds %struct.LIST, %struct.LIST* %2459, i32 0, i32 0
  %2461 = load %union.rec*, %union.rec** %2460, align 8
  store %union.rec* %2461, %union.rec** %tmp4, align 8
  br label %2445

; <label>:2462                                    ; preds = %2445
  %2463 = load %union.rec*, %union.rec** %tmp4, align 8
  %2464 = bitcast %union.rec* %2463 to %struct.word_type*
  %2465 = getelementptr inbounds %struct.word_type, %struct.word_type* %2464, i32 0, i32 1
  %2466 = bitcast %union.FIRST_UNION* %2465 to %struct.anon*
  %2467 = getelementptr inbounds %struct.anon, %struct.anon* %2466, i32 0, i32 0
  %2468 = load i8, i8* %2467, align 1
  %2469 = zext i8 %2468 to i32
  %2470 = icmp eq i32 %2469, 19
  br i1 %2470, label %2471, label %2530

; <label>:2471                                    ; preds = %2462
  %2472 = load %union.rec*, %union.rec** %tmp4, align 8
  %2473 = bitcast %union.rec* %2472 to %struct.word_type*
  %2474 = getelementptr inbounds %struct.word_type, %struct.word_type* %2473, i32 0, i32 0
  %2475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2474, i32 0, i64 0
  %2476 = getelementptr inbounds %struct.LIST, %struct.LIST* %2475, i32 0, i32 1
  %2477 = load %union.rec*, %union.rec** %2476, align 8
  %2478 = bitcast %union.rec* %2477 to %struct.word_type*
  %2479 = getelementptr inbounds %struct.word_type, %struct.word_type* %2478, i32 0, i32 0
  %2480 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2479, i32 0, i64 1
  %2481 = getelementptr inbounds %struct.LIST, %struct.LIST* %2480, i32 0, i32 0
  %2482 = load %union.rec*, %union.rec** %2481, align 8
  store %union.rec* %2482, %union.rec** %pre5, align 8
  br label %2483

; <label>:2483                                    ; preds = %2493, %2471
  %2484 = load %union.rec*, %union.rec** %pre5, align 8
  %2485 = bitcast %union.rec* %2484 to %struct.word_type*
  %2486 = getelementptr inbounds %struct.word_type, %struct.word_type* %2485, i32 0, i32 1
  %2487 = bitcast %union.FIRST_UNION* %2486 to %struct.anon*
  %2488 = getelementptr inbounds %struct.anon, %struct.anon* %2487, i32 0, i32 0
  %2489 = load i8, i8* %2488, align 1
  %2490 = zext i8 %2489 to i32
  %2491 = icmp eq i32 %2490, 0
  br i1 %2491, label %2492, label %2500

; <label>:2492                                    ; preds = %2483
  br label %2493

; <label>:2493                                    ; preds = %2492
  %2494 = load %union.rec*, %union.rec** %pre5, align 8
  %2495 = bitcast %union.rec* %2494 to %struct.word_type*
  %2496 = getelementptr inbounds %struct.word_type, %struct.word_type* %2495, i32 0, i32 0
  %2497 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2496, i32 0, i64 1
  %2498 = getelementptr inbounds %struct.LIST, %struct.LIST* %2497, i32 0, i32 0
  %2499 = load %union.rec*, %union.rec** %2498, align 8
  store %union.rec* %2499, %union.rec** %pre5, align 8
  br label %2483

; <label>:2500                                    ; preds = %2483
  %2501 = load %union.rec*, %union.rec** %tmp4, align 8
  %2502 = bitcast %union.rec* %2501 to %struct.word_type*
  %2503 = getelementptr inbounds %struct.word_type, %struct.word_type* %2502, i32 0, i32 0
  %2504 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2503, i32 0, i64 0
  %2505 = getelementptr inbounds %struct.LIST, %struct.LIST* %2504, i32 0, i32 0
  %2506 = load %union.rec*, %union.rec** %2505, align 8
  %2507 = bitcast %union.rec* %2506 to %struct.word_type*
  %2508 = getelementptr inbounds %struct.word_type, %struct.word_type* %2507, i32 0, i32 0
  %2509 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2508, i32 0, i64 1
  %2510 = getelementptr inbounds %struct.LIST, %struct.LIST* %2509, i32 0, i32 0
  %2511 = load %union.rec*, %union.rec** %2510, align 8
  store %union.rec* %2511, %union.rec** %post6, align 8
  br label %2512

; <label>:2512                                    ; preds = %2522, %2500
  %2513 = load %union.rec*, %union.rec** %post6, align 8
  %2514 = bitcast %union.rec* %2513 to %struct.word_type*
  %2515 = getelementptr inbounds %struct.word_type, %struct.word_type* %2514, i32 0, i32 1
  %2516 = bitcast %union.FIRST_UNION* %2515 to %struct.anon*
  %2517 = getelementptr inbounds %struct.anon, %struct.anon* %2516, i32 0, i32 0
  %2518 = load i8, i8* %2517, align 1
  %2519 = zext i8 %2518 to i32
  %2520 = icmp eq i32 %2519, 0
  br i1 %2520, label %2521, label %2529

; <label>:2521                                    ; preds = %2512
  br label %2522

; <label>:2522                                    ; preds = %2521
  %2523 = load %union.rec*, %union.rec** %post6, align 8
  %2524 = bitcast %union.rec* %2523 to %struct.word_type*
  %2525 = getelementptr inbounds %struct.word_type, %struct.word_type* %2524, i32 0, i32 0
  %2526 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2525, i32 0, i64 1
  %2527 = getelementptr inbounds %struct.LIST, %struct.LIST* %2526, i32 0, i32 0
  %2528 = load %union.rec*, %union.rec** %2527, align 8
  store %union.rec* %2528, %union.rec** %post6, align 8
  br label %2512

; <label>:2529                                    ; preds = %2512
  br label %2532

; <label>:2530                                    ; preds = %2462
  %2531 = load %union.rec*, %union.rec** %tmp4, align 8
  store %union.rec* %2531, %union.rec** %pre5, align 8
  store %union.rec* null, %union.rec** %post6, align 8
  br label %2532

; <label>:2532                                    ; preds = %2530, %2529
  %2533 = load i32, i32* %3, align 4
  %2534 = load i32, i32* %5, align 4
  %2535 = sext i32 %2534 to i64
  %2536 = load %union.rec*, %union.rec** %1, align 8
  %2537 = bitcast %union.rec* %2536 to %struct.word_type*
  %2538 = getelementptr inbounds %struct.word_type, %struct.word_type* %2537, i32 0, i32 3
  %2539 = bitcast %union.THIRD_UNION* %2538 to %struct.anon.6*
  %2540 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2539, i32 0, i32 0
  %2541 = getelementptr inbounds [2 x i32], [2 x i32]* %2540, i32 0, i64 %2535
  store i32 %2533, i32* %2541, align 4
  %2542 = load i32, i32* %4, align 4
  %2543 = load i32, i32* %5, align 4
  %2544 = sext i32 %2543 to i64
  %2545 = load %union.rec*, %union.rec** %1, align 8
  %2546 = bitcast %union.rec* %2545 to %struct.word_type*
  %2547 = getelementptr inbounds %struct.word_type, %struct.word_type* %2546, i32 0, i32 3
  %2548 = bitcast %union.THIRD_UNION* %2547 to %struct.anon.6*
  %2549 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2548, i32 0, i32 1
  %2550 = getelementptr inbounds [2 x i32], [2 x i32]* %2549, i32 0, i64 %2544
  store i32 %2542, i32* %2550, align 4
  %2551 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %2552 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %2551, i32 0, i32 28
  %2553 = load void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32)** %2552, align 8
  %2554 = load %union.rec*, %union.rec** %1, align 8
  %2555 = load %union.rec*, %union.rec** %1, align 8
  %2556 = bitcast %union.rec* %2555 to %struct.closure_type*
  %2557 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2556, i32 0, i32 6
  %2558 = bitcast %union.anon.12* %2557 to i32*
  %2559 = load i32, i32* %2558, align 4
  %2560 = load i32, i32* %7, align 4
  %2561 = load i32, i32* %2, align 4
  %2562 = load %union.rec*, %union.rec** %1, align 8
  %2563 = bitcast %union.rec* %2562 to %struct.word_type*
  %2564 = getelementptr inbounds %struct.word_type, %struct.word_type* %2563, i32 0, i32 3
  %2565 = bitcast %union.THIRD_UNION* %2564 to %struct.anon.6*
  %2566 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2565, i32 0, i32 1
  %2567 = getelementptr inbounds [2 x i32], [2 x i32]* %2566, i32 0, i64 1
  %2568 = load i32, i32* %2567, align 4
  %2569 = add nsw i32 %2561, %2568
  %2570 = sub nsw i32 %2560, %2569
  call void %2553(%union.rec* %2554, i32 %2559, i32 %2570)
  %2571 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %2572 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %2571, i32 0, i32 26
  %2573 = load void (%union.rec*)*, void (%union.rec*)** %2572, align 8
  %2574 = load %union.rec*, %union.rec** %pre5, align 8
  call void %2573(%union.rec* %2574)
  %2575 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %2576 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %2575, i32 0, i32 25
  %2577 = load void ()*, void ()** %2576, align 8
  call void %2577()
  %2578 = load %union.rec*, %union.rec** %y, align 8
  %2579 = load i32, i32* %3, align 4
  %2580 = load i32, i32* %3, align 4
  %2581 = load i32, i32* %4, align 4
  %2582 = load i32, i32* %5, align 4
  %2583 = load i32, i32* %3, align 4
  %2584 = load i32, i32* %4, align 4
  %2585 = add nsw i32 %2583, %2584
  %2586 = load i32, i32* %8, align 4
  %2587 = call %union.rec* @FixAndPrintObject(%union.rec* %2578, i32 %2579, i32 %2580, i32 %2581, i32 %2582, i32 0, i32 %2585, i32 %2586, i32* %aback, i32* %afwd)
  store %union.rec* %2587, %union.rec** %y, align 8
  %2588 = load %union.rec*, %union.rec** %post6, align 8
  %2589 = icmp ne %union.rec* %2588, null
  br i1 %2589, label %2590, label %2595

; <label>:2590                                    ; preds = %2532
  %2591 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %2592 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %2591, i32 0, i32 26
  %2593 = load void (%union.rec*)*, void (%union.rec*)** %2592, align 8
  %2594 = load %union.rec*, %union.rec** %post6, align 8
  call void %2593(%union.rec* %2594)
  br label %2595

; <label>:2595                                    ; preds = %2590, %2532
  %2596 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %2597 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %2596, i32 0, i32 25
  %2598 = load void ()*, void ()** %2597, align 8
  call void %2598()
  br label %2599

; <label>:2599                                    ; preds = %2595, %2393
  br label %2610

; <label>:2600                                    ; preds = %2351
  %2601 = load %union.rec*, %union.rec** %y, align 8
  %2602 = load i32, i32* %2, align 4
  %2603 = load i32, i32* %3, align 4
  %2604 = load i32, i32* %4, align 4
  %2605 = load i32, i32* %5, align 4
  %2606 = load i32, i32* %6, align 4
  %2607 = load i32, i32* %7, align 4
  %2608 = load i32, i32* %8, align 4
  %2609 = call %union.rec* @FixAndPrintObject(%union.rec* %2601, i32 %2602, i32 %2603, i32 %2604, i32 %2605, i32 %2606, i32 %2607, i32 %2608, i32* %aback, i32* %afwd)
  store %union.rec* %2609, %union.rec** %y, align 8
  br label %2610

; <label>:2610                                    ; preds = %2600, %2599
  %2611 = load i32, i32* %3, align 4
  %2612 = load i32*, i32** %9, align 8
  store i32 %2611, i32* %2612, align 4
  %2613 = load i32, i32* %4, align 4
  %2614 = load i32*, i32** %10, align 8
  store i32 %2613, i32* %2614, align 4
  br label %8231

; <label>:2615                                    ; preds = %0, %0
  %2616 = load %union.rec*, %union.rec** %1, align 8
  %2617 = bitcast %union.rec* %2616 to %struct.word_type*
  %2618 = getelementptr inbounds %struct.word_type, %struct.word_type* %2617, i32 0, i32 0
  %2619 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2618, i32 0, i64 0
  %2620 = getelementptr inbounds %struct.LIST, %struct.LIST* %2619, i32 0, i32 0
  %2621 = load %union.rec*, %union.rec** %2620, align 8
  %2622 = bitcast %union.rec* %2621 to %struct.word_type*
  %2623 = getelementptr inbounds %struct.word_type, %struct.word_type* %2622, i32 0, i32 0
  %2624 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2623, i32 0, i64 1
  %2625 = getelementptr inbounds %struct.LIST, %struct.LIST* %2624, i32 0, i32 0
  %2626 = load %union.rec*, %union.rec** %2625, align 8
  store %union.rec* %2626, %union.rec** %y, align 8
  store i32 1, i32* %8, align 4
  br label %2627

; <label>:2627                                    ; preds = %2637, %2615
  %2628 = load %union.rec*, %union.rec** %y, align 8
  %2629 = bitcast %union.rec* %2628 to %struct.word_type*
  %2630 = getelementptr inbounds %struct.word_type, %struct.word_type* %2629, i32 0, i32 1
  %2631 = bitcast %union.FIRST_UNION* %2630 to %struct.anon*
  %2632 = getelementptr inbounds %struct.anon, %struct.anon* %2631, i32 0, i32 0
  %2633 = load i8, i8* %2632, align 1
  %2634 = zext i8 %2633 to i32
  %2635 = icmp eq i32 %2634, 0
  br i1 %2635, label %2636, label %2646

; <label>:2636                                    ; preds = %2627
  br label %2637

; <label>:2637                                    ; preds = %2636
  %2638 = load %union.rec*, %union.rec** %y, align 8
  %2639 = bitcast %union.rec* %2638 to %struct.word_type*
  %2640 = getelementptr inbounds %struct.word_type, %struct.word_type* %2639, i32 0, i32 0
  %2641 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2640, i32 0, i64 1
  %2642 = getelementptr inbounds %struct.LIST, %struct.LIST* %2641, i32 0, i32 0
  %2643 = load %union.rec*, %union.rec** %2642, align 8
  store %union.rec* %2643, %union.rec** %y, align 8
  %2644 = load i32, i32* %8, align 4
  %2645 = add nsw i32 %2644, 1
  store i32 %2645, i32* %8, align 4
  br label %2627

; <label>:2646                                    ; preds = %2627
  %2647 = load i32, i32* %5, align 4
  %2648 = icmp eq i32 %2647, 0
  br i1 %2648, label %2649, label %2655

; <label>:2649                                    ; preds = %2646
  %2650 = load i32, i32* %2, align 4
  %2651 = load %union.rec*, %union.rec** %1, align 8
  %2652 = bitcast %union.rec* %2651 to %struct.closure_type*
  %2653 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2652, i32 0, i32 6
  %2654 = bitcast %union.anon.12* %2653 to i32*
  store i32 %2650, i32* %2654, align 4
  br label %2776

; <label>:2655                                    ; preds = %2646
  %2656 = load %union.rec*, %union.rec** %1, align 8
  %2657 = bitcast %union.rec* %2656 to %struct.word_type*
  %2658 = getelementptr inbounds %struct.word_type, %struct.word_type* %2657, i32 0, i32 0
  %2659 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2658, i32 0, i64 0
  %2660 = getelementptr inbounds %struct.LIST, %struct.LIST* %2659, i32 0, i32 1
  %2661 = load %union.rec*, %union.rec** %2660, align 8
  %2662 = bitcast %union.rec* %2661 to %struct.word_type*
  %2663 = getelementptr inbounds %struct.word_type, %struct.word_type* %2662, i32 0, i32 0
  %2664 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2663, i32 0, i64 1
  %2665 = getelementptr inbounds %struct.LIST, %struct.LIST* %2664, i32 0, i32 0
  %2666 = load %union.rec*, %union.rec** %2665, align 8
  store %union.rec* %2666, %union.rec** %z, align 8
  br label %2667

; <label>:2667                                    ; preds = %2677, %2655
  %2668 = load %union.rec*, %union.rec** %z, align 8
  %2669 = bitcast %union.rec* %2668 to %struct.word_type*
  %2670 = getelementptr inbounds %struct.word_type, %struct.word_type* %2669, i32 0, i32 1
  %2671 = bitcast %union.FIRST_UNION* %2670 to %struct.anon*
  %2672 = getelementptr inbounds %struct.anon, %struct.anon* %2671, i32 0, i32 0
  %2673 = load i8, i8* %2672, align 1
  %2674 = zext i8 %2673 to i32
  %2675 = icmp eq i32 %2674, 0
  br i1 %2675, label %2676, label %2684

; <label>:2676                                    ; preds = %2667
  br label %2677

; <label>:2677                                    ; preds = %2676
  %2678 = load %union.rec*, %union.rec** %z, align 8
  %2679 = bitcast %union.rec* %2678 to %struct.word_type*
  %2680 = getelementptr inbounds %struct.word_type, %struct.word_type* %2679, i32 0, i32 0
  %2681 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2680, i32 0, i64 1
  %2682 = getelementptr inbounds %struct.LIST, %struct.LIST* %2681, i32 0, i32 0
  %2683 = load %union.rec*, %union.rec** %2682, align 8
  store %union.rec* %2683, %union.rec** %z, align 8
  br label %2667

; <label>:2684                                    ; preds = %2667
  %2685 = load %union.rec*, %union.rec** %1, align 8
  %2686 = bitcast %union.rec* %2685 to %struct.word_type*
  %2687 = getelementptr inbounds %struct.word_type, %struct.word_type* %2686, i32 0, i32 1
  %2688 = bitcast %union.FIRST_UNION* %2687 to %struct.anon*
  %2689 = getelementptr inbounds %struct.anon, %struct.anon* %2688, i32 0, i32 0
  %2690 = load i8, i8* %2689, align 1
  %2691 = zext i8 %2690 to i32
  %2692 = icmp eq i32 %2691, 98
  br i1 %2692, label %2693, label %2734

; <label>:2693                                    ; preds = %2684
  %2694 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %2695 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %2694, i32 0, i32 30
  %2696 = load void (%union.rec*, i32, i32, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)** %2695, align 8
  %2697 = load %union.rec*, %union.rec** %z, align 8
  %2698 = load %union.rec*, %union.rec** %1, align 8
  %2699 = bitcast %union.rec* %2698 to %struct.closure_type*
  %2700 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2699, i32 0, i32 6
  %2701 = bitcast %union.anon.12* %2700 to i32*
  %2702 = load i32, i32* %2701, align 4
  %2703 = load %union.rec*, %union.rec** %1, align 8
  %2704 = bitcast %union.rec* %2703 to %struct.word_type*
  %2705 = getelementptr inbounds %struct.word_type, %struct.word_type* %2704, i32 0, i32 3
  %2706 = bitcast %union.THIRD_UNION* %2705 to %struct.anon.6*
  %2707 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2706, i32 0, i32 0
  %2708 = getelementptr inbounds [2 x i32], [2 x i32]* %2707, i32 0, i64 0
  %2709 = load i32, i32* %2708, align 4
  %2710 = sub nsw i32 %2702, %2709
  %2711 = load i32, i32* %7, align 4
  %2712 = load i32, i32* %2, align 4
  %2713 = sub nsw i32 %2711, %2712
  %2714 = load i32, i32* %4, align 4
  %2715 = sub nsw i32 %2713, %2714
  %2716 = load %union.rec*, %union.rec** %1, align 8
  %2717 = bitcast %union.rec* %2716 to %struct.closure_type*
  %2718 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2717, i32 0, i32 6
  %2719 = bitcast %union.anon.12* %2718 to i32*
  %2720 = load i32, i32* %2719, align 4
  %2721 = load %union.rec*, %union.rec** %1, align 8
  %2722 = bitcast %union.rec* %2721 to %struct.word_type*
  %2723 = getelementptr inbounds %struct.word_type, %struct.word_type* %2722, i32 0, i32 3
  %2724 = bitcast %union.THIRD_UNION* %2723 to %struct.anon.6*
  %2725 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2724, i32 0, i32 1
  %2726 = getelementptr inbounds [2 x i32], [2 x i32]* %2725, i32 0, i64 0
  %2727 = load i32, i32* %2726, align 4
  %2728 = add nsw i32 %2720, %2727
  %2729 = load i32, i32* %7, align 4
  %2730 = load i32, i32* %2, align 4
  %2731 = sub nsw i32 %2729, %2730
  %2732 = load i32, i32* %3, align 4
  %2733 = add nsw i32 %2731, %2732
  call void %2696(%union.rec* %2697, i32 %2710, i32 %2715, i32 %2728, i32 %2733)
  br label %2775

; <label>:2734                                    ; preds = %2684
  %2735 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %2736 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %2735, i32 0, i32 31
  %2737 = load void (%union.rec*, i32, i32, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)** %2736, align 8
  %2738 = load %union.rec*, %union.rec** %z, align 8
  %2739 = load %union.rec*, %union.rec** %1, align 8
  %2740 = bitcast %union.rec* %2739 to %struct.closure_type*
  %2741 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2740, i32 0, i32 6
  %2742 = bitcast %union.anon.12* %2741 to i32*
  %2743 = load i32, i32* %2742, align 4
  %2744 = load %union.rec*, %union.rec** %1, align 8
  %2745 = bitcast %union.rec* %2744 to %struct.word_type*
  %2746 = getelementptr inbounds %struct.word_type, %struct.word_type* %2745, i32 0, i32 3
  %2747 = bitcast %union.THIRD_UNION* %2746 to %struct.anon.6*
  %2748 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2747, i32 0, i32 0
  %2749 = getelementptr inbounds [2 x i32], [2 x i32]* %2748, i32 0, i64 0
  %2750 = load i32, i32* %2749, align 4
  %2751 = sub nsw i32 %2743, %2750
  %2752 = load i32, i32* %7, align 4
  %2753 = load i32, i32* %2, align 4
  %2754 = sub nsw i32 %2752, %2753
  %2755 = load i32, i32* %4, align 4
  %2756 = sub nsw i32 %2754, %2755
  %2757 = load %union.rec*, %union.rec** %1, align 8
  %2758 = bitcast %union.rec* %2757 to %struct.closure_type*
  %2759 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2758, i32 0, i32 6
  %2760 = bitcast %union.anon.12* %2759 to i32*
  %2761 = load i32, i32* %2760, align 4
  %2762 = load %union.rec*, %union.rec** %1, align 8
  %2763 = bitcast %union.rec* %2762 to %struct.word_type*
  %2764 = getelementptr inbounds %struct.word_type, %struct.word_type* %2763, i32 0, i32 3
  %2765 = bitcast %union.THIRD_UNION* %2764 to %struct.anon.6*
  %2766 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2765, i32 0, i32 1
  %2767 = getelementptr inbounds [2 x i32], [2 x i32]* %2766, i32 0, i64 0
  %2768 = load i32, i32* %2767, align 4
  %2769 = add nsw i32 %2761, %2768
  %2770 = load i32, i32* %7, align 4
  %2771 = load i32, i32* %2, align 4
  %2772 = sub nsw i32 %2770, %2771
  %2773 = load i32, i32* %3, align 4
  %2774 = add nsw i32 %2772, %2773
  call void %2737(%union.rec* %2738, i32 %2751, i32 %2756, i32 %2769, i32 %2774)
  br label %2775

; <label>:2775                                    ; preds = %2734, %2693
  br label %2776

; <label>:2776                                    ; preds = %2775, %2649
  %2777 = load %union.rec*, %union.rec** %y, align 8
  %2778 = load i32, i32* %2, align 4
  %2779 = load i32, i32* %3, align 4
  %2780 = load i32, i32* %4, align 4
  %2781 = load i32, i32* %5, align 4
  %2782 = load i32, i32* %7, align 4
  %2783 = load i32, i32* %8, align 4
  %2784 = call %union.rec* @FixAndPrintObject(%union.rec* %2777, i32 %2778, i32 %2779, i32 %2780, i32 %2781, i32 0, i32 %2782, i32 %2783, i32* %aback, i32* %afwd)
  store %union.rec* %2784, %union.rec** %y, align 8
  %2785 = load i32, i32* %3, align 4
  %2786 = load i32*, i32** %9, align 8
  store i32 %2785, i32* %2786, align 4
  %2787 = load i32, i32* %4, align 4
  %2788 = load i32*, i32** %10, align 8
  store i32 %2787, i32* %2788, align 4
  br label %8231

; <label>:2789                                    ; preds = %0, %0
  %2790 = load %union.rec*, %union.rec** %1, align 8
  %2791 = bitcast %union.rec* %2790 to %struct.word_type*
  %2792 = getelementptr inbounds %struct.word_type, %struct.word_type* %2791, i32 0, i32 0
  %2793 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2792, i32 0, i64 0
  %2794 = getelementptr inbounds %struct.LIST, %struct.LIST* %2793, i32 0, i32 1
  %2795 = load %union.rec*, %union.rec** %2794, align 8
  %2796 = bitcast %union.rec* %2795 to %struct.word_type*
  %2797 = getelementptr inbounds %struct.word_type, %struct.word_type* %2796, i32 0, i32 0
  %2798 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2797, i32 0, i64 1
  %2799 = getelementptr inbounds %struct.LIST, %struct.LIST* %2798, i32 0, i32 0
  %2800 = load %union.rec*, %union.rec** %2799, align 8
  store %union.rec* %2800, %union.rec** %y, align 8
  store i32 1, i32* %8, align 4
  br label %2801

; <label>:2801                                    ; preds = %2811, %2789
  %2802 = load %union.rec*, %union.rec** %y, align 8
  %2803 = bitcast %union.rec* %2802 to %struct.word_type*
  %2804 = getelementptr inbounds %struct.word_type, %struct.word_type* %2803, i32 0, i32 1
  %2805 = bitcast %union.FIRST_UNION* %2804 to %struct.anon*
  %2806 = getelementptr inbounds %struct.anon, %struct.anon* %2805, i32 0, i32 0
  %2807 = load i8, i8* %2806, align 1
  %2808 = zext i8 %2807 to i32
  %2809 = icmp eq i32 %2808, 0
  br i1 %2809, label %2810, label %2820

; <label>:2810                                    ; preds = %2801
  br label %2811

; <label>:2811                                    ; preds = %2810
  %2812 = load %union.rec*, %union.rec** %y, align 8
  %2813 = bitcast %union.rec* %2812 to %struct.word_type*
  %2814 = getelementptr inbounds %struct.word_type, %struct.word_type* %2813, i32 0, i32 0
  %2815 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2814, i32 0, i64 1
  %2816 = getelementptr inbounds %struct.LIST, %struct.LIST* %2815, i32 0, i32 0
  %2817 = load %union.rec*, %union.rec** %2816, align 8
  store %union.rec* %2817, %union.rec** %y, align 8
  %2818 = load i32, i32* %8, align 4
  %2819 = add nsw i32 %2818, 1
  store i32 %2819, i32* %8, align 4
  br label %2801

; <label>:2820                                    ; preds = %2801
  %2821 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %2822 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %2821, i32 0, i32 5
  %2823 = load i32, i32* %2822, align 4
  %2824 = icmp ne i32 %2823, 0
  br i1 %2824, label %2825, label %2890

; <label>:2825                                    ; preds = %2820
  %2826 = load i32, i32* %5, align 4
  %2827 = icmp eq i32 %2826, 0
  br i1 %2827, label %2828, label %2867

; <label>:2828                                    ; preds = %2825
  %2829 = load i32, i32* %2, align 4
  %2830 = load %union.rec*, %union.rec** %1, align 8
  %2831 = bitcast %union.rec* %2830 to %struct.closure_type*
  %2832 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2831, i32 0, i32 6
  %2833 = bitcast %union.anon.12* %2832 to i32*
  store i32 %2829, i32* %2833, align 4
  %2834 = load %union.rec*, %union.rec** %1, align 8
  %2835 = bitcast %union.rec* %2834 to %struct.word_type*
  %2836 = getelementptr inbounds %struct.word_type, %struct.word_type* %2835, i32 0, i32 2
  %2837 = bitcast %union.SECOND_UNION* %2836 to %struct.anon.2*
  %2838 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2837, i32 0, i32 1
  %2839 = load i8, i8* %2838, align 1
  %2840 = icmp ne i8 %2839, 0
  br i1 %2840, label %2841, label %2866

; <label>:2841                                    ; preds = %2828
  %2842 = load %union.rec*, %union.rec** %1, align 8
  %2843 = bitcast %union.rec* %2842 to %struct.closure_type*
  %2844 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2843, i32 0, i32 4
  %2845 = bitcast %union.FOURTH_UNION* %2844 to %struct.STYLE*
  %2846 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2845, i32 0, i32 4
  %2847 = load i32, i32* %2846, align 4
  %2848 = and i32 %2847, 4095
  %2849 = zext i32 %2848 to i64
  %2850 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %2851 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2850, i64 %2849
  %2852 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2851, i32 0, i32 6
  %2853 = load %union.rec*, %union.rec** %2852, align 8
  store %union.rec* %2853, %union.rec** %face, align 8
  %2854 = load %union.rec*, %union.rec** %face, align 8
  %2855 = bitcast %union.rec* %2854 to %struct.word_type*
  %2856 = getelementptr inbounds %struct.word_type, %struct.word_type* %2855, i32 0, i32 2
  %2857 = bitcast %union.SECOND_UNION* %2856 to %struct.anon.4*
  %2858 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2857, i32 0, i32 1
  %2859 = load i16, i16* %2858, align 2
  %2860 = zext i16 %2859 to i32
  %2861 = load i32, i32* @font_curr_page, align 4
  %2862 = icmp slt i32 %2860, %2861
  br i1 %2862, label %2863, label %2865

; <label>:2863                                    ; preds = %2841
  %2864 = load %union.rec*, %union.rec** %face, align 8
  call void @FontPageUsed(%union.rec* %2864)
  br label %2865

; <label>:2865                                    ; preds = %2863, %2841
  br label %2866

; <label>:2866                                    ; preds = %2865, %2828
  br label %2889

; <label>:2867                                    ; preds = %2825
  %2868 = load %union.rec*, %union.rec** %1, align 8
  %2869 = bitcast %union.rec* %2868 to %struct.word_type*
  %2870 = getelementptr inbounds %struct.word_type, %struct.word_type* %2869, i32 0, i32 2
  %2871 = bitcast %union.SECOND_UNION* %2870 to %struct.anon.2*
  %2872 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2871, i32 0, i32 1
  %2873 = load i8, i8* %2872, align 1
  %2874 = icmp ne i8 %2873, 0
  br i1 %2874, label %2875, label %2888

; <label>:2875                                    ; preds = %2867
  %2876 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %2877 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %2876, i32 0, i32 29
  %2878 = load void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32)** %2877, align 8
  %2879 = load %union.rec*, %union.rec** %1, align 8
  %2880 = load %union.rec*, %union.rec** %1, align 8
  %2881 = bitcast %union.rec* %2880 to %struct.closure_type*
  %2882 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2881, i32 0, i32 6
  %2883 = bitcast %union.anon.12* %2882 to i32*
  %2884 = load i32, i32* %2883, align 4
  %2885 = load i32, i32* %7, align 4
  %2886 = load i32, i32* %2, align 4
  %2887 = sub nsw i32 %2885, %2886
  call void %2878(%union.rec* %2879, i32 %2884, i32 %2887)
  br label %2888

; <label>:2888                                    ; preds = %2875, %2867
  br label %2889

; <label>:2889                                    ; preds = %2888, %2866
  br label %2890

; <label>:2890                                    ; preds = %2889, %2820
  %2891 = load i32, i32* %3, align 4
  %2892 = load i32*, i32** %9, align 8
  store i32 %2891, i32* %2892, align 4
  %2893 = load i32, i32* %4, align 4
  %2894 = load i32*, i32** %10, align 8
  store i32 %2893, i32* %2894, align 4
  br label %8231

; <label>:2895                                    ; preds = %0
  %2896 = load i32, i32* %5, align 4
  %2897 = icmp eq i32 %2896, 0
  br i1 %2897, label %2898, label %2905

; <label>:2898                                    ; preds = %2895
  %2899 = load %union.rec*, %union.rec** %1, align 8
  %2900 = bitcast %union.rec* %2899 to %struct.word_type*
  %2901 = getelementptr inbounds %struct.word_type, %struct.word_type* %2900, i32 0, i32 0
  %2902 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2901, i32 0, i64 0
  %2903 = getelementptr inbounds %struct.LIST, %struct.LIST* %2902, i32 0, i32 1
  %2904 = load %union.rec*, %union.rec** %2903, align 8
  br label %2912

; <label>:2905                                    ; preds = %2895
  %2906 = load %union.rec*, %union.rec** %1, align 8
  %2907 = bitcast %union.rec* %2906 to %struct.word_type*
  %2908 = getelementptr inbounds %struct.word_type, %struct.word_type* %2907, i32 0, i32 0
  %2909 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2908, i32 0, i64 0
  %2910 = getelementptr inbounds %struct.LIST, %struct.LIST* %2909, i32 0, i32 0
  %2911 = load %union.rec*, %union.rec** %2910, align 8
  br label %2912

; <label>:2912                                    ; preds = %2905, %2898
  %2913 = phi %union.rec* [ %2904, %2898 ], [ %2911, %2905 ]
  store %union.rec* %2913, %union.rec** %link, align 8
  %2914 = load %union.rec*, %union.rec** %link, align 8
  %2915 = bitcast %union.rec* %2914 to %struct.word_type*
  %2916 = getelementptr inbounds %struct.word_type, %struct.word_type* %2915, i32 0, i32 0
  %2917 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2916, i32 0, i64 1
  %2918 = getelementptr inbounds %struct.LIST, %struct.LIST* %2917, i32 0, i32 0
  %2919 = load %union.rec*, %union.rec** %2918, align 8
  store %union.rec* %2919, %union.rec** %y, align 8
  store i32 1, i32* %8, align 4
  br label %2920

; <label>:2920                                    ; preds = %2930, %2912
  %2921 = load %union.rec*, %union.rec** %y, align 8
  %2922 = bitcast %union.rec* %2921 to %struct.word_type*
  %2923 = getelementptr inbounds %struct.word_type, %struct.word_type* %2922, i32 0, i32 1
  %2924 = bitcast %union.FIRST_UNION* %2923 to %struct.anon*
  %2925 = getelementptr inbounds %struct.anon, %struct.anon* %2924, i32 0, i32 0
  %2926 = load i8, i8* %2925, align 1
  %2927 = zext i8 %2926 to i32
  %2928 = icmp eq i32 %2927, 0
  br i1 %2928, label %2929, label %2939

; <label>:2929                                    ; preds = %2920
  br label %2930

; <label>:2930                                    ; preds = %2929
  %2931 = load %union.rec*, %union.rec** %y, align 8
  %2932 = bitcast %union.rec* %2931 to %struct.word_type*
  %2933 = getelementptr inbounds %struct.word_type, %struct.word_type* %2932, i32 0, i32 0
  %2934 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2933, i32 0, i64 1
  %2935 = getelementptr inbounds %struct.LIST, %struct.LIST* %2934, i32 0, i32 0
  %2936 = load %union.rec*, %union.rec** %2935, align 8
  store %union.rec* %2936, %union.rec** %y, align 8
  %2937 = load i32, i32* %8, align 4
  %2938 = add nsw i32 %2937, 1
  store i32 %2938, i32* %8, align 4
  br label %2920

; <label>:2939                                    ; preds = %2920
  %2940 = load %union.rec*, %union.rec** %y, align 8
  %2941 = load i32, i32* %2, align 4
  %2942 = load i32, i32* %5, align 4
  %2943 = sext i32 %2942 to i64
  %2944 = load %union.rec*, %union.rec** %y, align 8
  %2945 = bitcast %union.rec* %2944 to %struct.word_type*
  %2946 = getelementptr inbounds %struct.word_type, %struct.word_type* %2945, i32 0, i32 3
  %2947 = bitcast %union.THIRD_UNION* %2946 to %struct.anon.6*
  %2948 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2947, i32 0, i32 0
  %2949 = getelementptr inbounds [2 x i32], [2 x i32]* %2948, i32 0, i64 %2943
  %2950 = load i32, i32* %2949, align 4
  %2951 = load i32, i32* %3, align 4
  %2952 = icmp slt i32 %2950, %2951
  br i1 %2952, label %2953, label %2955

; <label>:2953                                    ; preds = %2939
  %2954 = load i32, i32* %3, align 4
  br label %2965

; <label>:2955                                    ; preds = %2939
  %2956 = load i32, i32* %5, align 4
  %2957 = sext i32 %2956 to i64
  %2958 = load %union.rec*, %union.rec** %y, align 8
  %2959 = bitcast %union.rec* %2958 to %struct.word_type*
  %2960 = getelementptr inbounds %struct.word_type, %struct.word_type* %2959, i32 0, i32 3
  %2961 = bitcast %union.THIRD_UNION* %2960 to %struct.anon.6*
  %2962 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2961, i32 0, i32 0
  %2963 = getelementptr inbounds [2 x i32], [2 x i32]* %2962, i32 0, i64 %2957
  %2964 = load i32, i32* %2963, align 4
  br label %2965

; <label>:2965                                    ; preds = %2955, %2953
  %2966 = phi i32 [ %2954, %2953 ], [ %2964, %2955 ]
  %2967 = load i32, i32* %5, align 4
  %2968 = sext i32 %2967 to i64
  %2969 = load %union.rec*, %union.rec** %y, align 8
  %2970 = bitcast %union.rec* %2969 to %struct.word_type*
  %2971 = getelementptr inbounds %struct.word_type, %struct.word_type* %2970, i32 0, i32 3
  %2972 = bitcast %union.THIRD_UNION* %2971 to %struct.anon.6*
  %2973 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2972, i32 0, i32 1
  %2974 = getelementptr inbounds [2 x i32], [2 x i32]* %2973, i32 0, i64 %2968
  %2975 = load i32, i32* %2974, align 4
  %2976 = load i32, i32* %4, align 4
  %2977 = icmp slt i32 %2975, %2976
  br i1 %2977, label %2978, label %2980

; <label>:2978                                    ; preds = %2965
  %2979 = load i32, i32* %4, align 4
  br label %2990

; <label>:2980                                    ; preds = %2965
  %2981 = load i32, i32* %5, align 4
  %2982 = sext i32 %2981 to i64
  %2983 = load %union.rec*, %union.rec** %y, align 8
  %2984 = bitcast %union.rec* %2983 to %struct.word_type*
  %2985 = getelementptr inbounds %struct.word_type, %struct.word_type* %2984, i32 0, i32 3
  %2986 = bitcast %union.THIRD_UNION* %2985 to %struct.anon.6*
  %2987 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2986, i32 0, i32 1
  %2988 = getelementptr inbounds [2 x i32], [2 x i32]* %2987, i32 0, i64 %2982
  %2989 = load i32, i32* %2988, align 4
  br label %2990

; <label>:2990                                    ; preds = %2980, %2978
  %2991 = phi i32 [ %2979, %2978 ], [ %2989, %2980 ]
  %2992 = load i32, i32* %5, align 4
  %2993 = load i32, i32* %6, align 4
  %2994 = load i32, i32* %7, align 4
  %2995 = load i32, i32* %8, align 4
  %2996 = load i32*, i32** %9, align 8
  %2997 = load i32*, i32** %10, align 8
  %2998 = call %union.rec* @FixAndPrintObject(%union.rec* %2940, i32 %2941, i32 %2966, i32 %2991, i32 %2992, i32 %2993, i32 %2994, i32 %2995, i32* %2996, i32* %2997)
  store %union.rec* %2998, %union.rec** %y, align 8
  br label %8231

; <label>:2999                                    ; preds = %0, %0
  %3000 = load %union.rec*, %union.rec** %1, align 8
  %3001 = bitcast %union.rec* %3000 to %struct.word_type*
  %3002 = getelementptr inbounds %struct.word_type, %struct.word_type* %3001, i32 0, i32 1
  %3003 = bitcast %union.FIRST_UNION* %3002 to %struct.anon*
  %3004 = getelementptr inbounds %struct.anon, %struct.anon* %3003, i32 0, i32 0
  %3005 = load i8, i8* %3004, align 1
  %3006 = zext i8 %3005 to i32
  %3007 = icmp eq i32 %3006, 19
  %3008 = zext i1 %3007 to i32
  %3009 = load i32, i32* %5, align 4
  %3010 = icmp eq i32 %3009, 1
  %3011 = zext i1 %3010 to i32
  %3012 = icmp eq i32 %3008, %3011
  br i1 %3012, label %3013, label %3988

; <label>:3013                                    ; preds = %2999
  store i32 1, i32* %jn, align 4
  %3014 = load %union.rec*, %union.rec** %1, align 8
  %3015 = bitcast %union.rec* %3014 to %struct.word_type*
  %3016 = getelementptr inbounds %struct.word_type, %struct.word_type* %3015, i32 0, i32 0
  %3017 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3016, i32 0, i64 0
  %3018 = getelementptr inbounds %struct.LIST, %struct.LIST* %3017, i32 0, i32 1
  %3019 = load %union.rec*, %union.rec** %3018, align 8
  store %union.rec* %3019, %union.rec** %link, align 8
  br label %3020

; <label>:3020                                    ; preds = %3109, %3013
  %3021 = load %union.rec*, %union.rec** %link, align 8
  %3022 = load %union.rec*, %union.rec** %1, align 8
  %3023 = icmp ne %union.rec* %3021, %3022
  br i1 %3023, label %3024, label %3116

; <label>:3024                                    ; preds = %3020
  %3025 = load %union.rec*, %union.rec** %link, align 8
  %3026 = bitcast %union.rec* %3025 to %struct.word_type*
  %3027 = getelementptr inbounds %struct.word_type, %struct.word_type* %3026, i32 0, i32 0
  %3028 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3027, i32 0, i64 1
  %3029 = getelementptr inbounds %struct.LIST, %struct.LIST* %3028, i32 0, i32 0
  %3030 = load %union.rec*, %union.rec** %3029, align 8
  store %union.rec* %3030, %union.rec** %prev, align 8
  br label %3031

; <label>:3031                                    ; preds = %3041, %3024
  %3032 = load %union.rec*, %union.rec** %prev, align 8
  %3033 = bitcast %union.rec* %3032 to %struct.word_type*
  %3034 = getelementptr inbounds %struct.word_type, %struct.word_type* %3033, i32 0, i32 1
  %3035 = bitcast %union.FIRST_UNION* %3034 to %struct.anon*
  %3036 = getelementptr inbounds %struct.anon, %struct.anon* %3035, i32 0, i32 0
  %3037 = load i8, i8* %3036, align 1
  %3038 = zext i8 %3037 to i32
  %3039 = icmp eq i32 %3038, 0
  br i1 %3039, label %3040, label %3048

; <label>:3040                                    ; preds = %3031
  br label %3041

; <label>:3041                                    ; preds = %3040
  %3042 = load %union.rec*, %union.rec** %prev, align 8
  %3043 = bitcast %union.rec* %3042 to %struct.word_type*
  %3044 = getelementptr inbounds %struct.word_type, %struct.word_type* %3043, i32 0, i32 0
  %3045 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3044, i32 0, i64 1
  %3046 = getelementptr inbounds %struct.LIST, %struct.LIST* %3045, i32 0, i32 0
  %3047 = load %union.rec*, %union.rec** %3046, align 8
  store %union.rec* %3047, %union.rec** %prev, align 8
  br label %3031

; <label>:3048                                    ; preds = %3031
  %3049 = load %union.rec*, %union.rec** %prev, align 8
  %3050 = bitcast %union.rec* %3049 to %struct.word_type*
  %3051 = getelementptr inbounds %struct.word_type, %struct.word_type* %3050, i32 0, i32 1
  %3052 = bitcast %union.FIRST_UNION* %3051 to %struct.anon*
  %3053 = getelementptr inbounds %struct.anon, %struct.anon* %3052, i32 0, i32 0
  %3054 = load i8, i8* %3053, align 1
  %3055 = zext i8 %3054 to i32
  %3056 = icmp eq i32 %3055, 1
  br i1 %3056, label %3057, label %3073

; <label>:3057                                    ; preds = %3048
  %3058 = load i32, i32* %jn, align 4
  %3059 = icmp ne i32 %3058, 0
  br i1 %3059, label %3060, label %3070

; <label>:3060                                    ; preds = %3057
  %3061 = load %union.rec*, %union.rec** %prev, align 8
  %3062 = bitcast %union.rec* %3061 to %struct.gapobj_type*
  %3063 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3062, i32 0, i32 3
  %3064 = bitcast %struct.GAP* %3063 to i16*
  %3065 = load i16, i16* %3064, align 4
  %3066 = lshr i16 %3065, 9
  %3067 = and i16 %3066, 1
  %3068 = zext i16 %3067 to i32
  %3069 = icmp ne i32 %3068, 0
  br label %3070

; <label>:3070                                    ; preds = %3060, %3057
  %3071 = phi i1 [ false, %3057 ], [ %3069, %3060 ]
  %3072 = zext i1 %3071 to i32
  store i32 %3072, i32* %jn, align 4
  br label %3108

; <label>:3073                                    ; preds = %3048
  %3074 = load %union.rec*, %union.rec** %prev, align 8
  %3075 = bitcast %union.rec* %3074 to %struct.word_type*
  %3076 = getelementptr inbounds %struct.word_type, %struct.word_type* %3075, i32 0, i32 1
  %3077 = bitcast %union.FIRST_UNION* %3076 to %struct.anon*
  %3078 = getelementptr inbounds %struct.anon, %struct.anon* %3077, i32 0, i32 0
  %3079 = load i8, i8* %3078, align 1
  %3080 = zext i8 %3079 to i32
  %3081 = icmp eq i32 %3080, 9
  br i1 %3081, label %3082, label %3086

; <label>:3082                                    ; preds = %3073
  %3083 = load %union.rec*, %union.rec** %prev, align 8
  %3084 = call i32 @SplitIsDefinite(%union.rec* %3083)
  %3085 = icmp ne i32 %3084, 0
  br i1 %3085, label %3106, label %3107

; <label>:3086                                    ; preds = %3073
  %3087 = load %union.rec*, %union.rec** %prev, align 8
  %3088 = bitcast %union.rec* %3087 to %struct.word_type*
  %3089 = getelementptr inbounds %struct.word_type, %struct.word_type* %3088, i32 0, i32 1
  %3090 = bitcast %union.FIRST_UNION* %3089 to %struct.anon*
  %3091 = getelementptr inbounds %struct.anon, %struct.anon* %3090, i32 0, i32 0
  %3092 = load i8, i8* %3091, align 1
  %3093 = zext i8 %3092 to i32
  %3094 = icmp sge i32 %3093, 9
  br i1 %3094, label %3095, label %3104

; <label>:3095                                    ; preds = %3086
  %3096 = load %union.rec*, %union.rec** %prev, align 8
  %3097 = bitcast %union.rec* %3096 to %struct.word_type*
  %3098 = getelementptr inbounds %struct.word_type, %struct.word_type* %3097, i32 0, i32 1
  %3099 = bitcast %union.FIRST_UNION* %3098 to %struct.anon*
  %3100 = getelementptr inbounds %struct.anon, %struct.anon* %3099, i32 0, i32 0
  %3101 = load i8, i8* %3100, align 1
  %3102 = zext i8 %3101 to i32
  %3103 = icmp sle i32 %3102, 99
  br label %3104

; <label>:3104                                    ; preds = %3095, %3086
  %3105 = phi i1 [ false, %3086 ], [ %3103, %3095 ]
  br i1 %3105, label %3106, label %3107

; <label>:3106                                    ; preds = %3104, %3082
  br label %3116

; <label>:3107                                    ; preds = %3104, %3082
  br label %3108

; <label>:3108                                    ; preds = %3107, %3070
  br label %3109

; <label>:3109                                    ; preds = %3108
  %3110 = load %union.rec*, %union.rec** %link, align 8
  %3111 = bitcast %union.rec* %3110 to %struct.word_type*
  %3112 = getelementptr inbounds %struct.word_type, %struct.word_type* %3111, i32 0, i32 0
  %3113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3112, i32 0, i64 0
  %3114 = getelementptr inbounds %struct.LIST, %struct.LIST* %3113, i32 0, i32 1
  %3115 = load %union.rec*, %union.rec** %3114, align 8
  store %union.rec* %3115, %union.rec** %link, align 8
  br label %3020

; <label>:3116                                    ; preds = %3106, %3020
  %3117 = load %union.rec*, %union.rec** %link, align 8
  %3118 = load %union.rec*, %union.rec** %1, align 8
  %3119 = icmp ne %union.rec* %3117, %3118
  br i1 %3119, label %3120, label %3982

; <label>:3120                                    ; preds = %3116
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %3121 = load %union.rec*, %union.rec** %link, align 8
  %3122 = bitcast %union.rec* %3121 to %struct.word_type*
  %3123 = getelementptr inbounds %struct.word_type, %struct.word_type* %3122, i32 0, i32 0
  %3124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3123, i32 0, i64 0
  %3125 = getelementptr inbounds %struct.LIST, %struct.LIST* %3124, i32 0, i32 1
  %3126 = load %union.rec*, %union.rec** %3125, align 8
  store %union.rec* %3126, %union.rec** %link, align 8
  br label %3127

; <label>:3127                                    ; preds = %3223, %3120
  %3128 = load %union.rec*, %union.rec** %link, align 8
  %3129 = load %union.rec*, %union.rec** %1, align 8
  %3130 = icmp ne %union.rec* %3128, %3129
  br i1 %3130, label %3131, label %3230

; <label>:3131                                    ; preds = %3127
  %3132 = load %union.rec*, %union.rec** %link, align 8
  %3133 = bitcast %union.rec* %3132 to %struct.word_type*
  %3134 = getelementptr inbounds %struct.word_type, %struct.word_type* %3133, i32 0, i32 0
  %3135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3134, i32 0, i64 1
  %3136 = getelementptr inbounds %struct.LIST, %struct.LIST* %3135, i32 0, i32 0
  %3137 = load %union.rec*, %union.rec** %3136, align 8
  store %union.rec* %3137, %union.rec** %y, align 8
  br label %3138

; <label>:3138                                    ; preds = %3148, %3131
  %3139 = load %union.rec*, %union.rec** %y, align 8
  %3140 = bitcast %union.rec* %3139 to %struct.word_type*
  %3141 = getelementptr inbounds %struct.word_type, %struct.word_type* %3140, i32 0, i32 1
  %3142 = bitcast %union.FIRST_UNION* %3141 to %struct.anon*
  %3143 = getelementptr inbounds %struct.anon, %struct.anon* %3142, i32 0, i32 0
  %3144 = load i8, i8* %3143, align 1
  %3145 = zext i8 %3144 to i32
  %3146 = icmp eq i32 %3145, 0
  br i1 %3146, label %3147, label %3155

; <label>:3147                                    ; preds = %3138
  br label %3148

; <label>:3148                                    ; preds = %3147
  %3149 = load %union.rec*, %union.rec** %y, align 8
  %3150 = bitcast %union.rec* %3149 to %struct.word_type*
  %3151 = getelementptr inbounds %struct.word_type, %struct.word_type* %3150, i32 0, i32 0
  %3152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3151, i32 0, i64 1
  %3153 = getelementptr inbounds %struct.LIST, %struct.LIST* %3152, i32 0, i32 0
  %3154 = load %union.rec*, %union.rec** %3153, align 8
  store %union.rec* %3154, %union.rec** %y, align 8
  br label %3138

; <label>:3155                                    ; preds = %3138
  %3156 = load %union.rec*, %union.rec** %y, align 8
  %3157 = bitcast %union.rec* %3156 to %struct.word_type*
  %3158 = getelementptr inbounds %struct.word_type, %struct.word_type* %3157, i32 0, i32 1
  %3159 = bitcast %union.FIRST_UNION* %3158 to %struct.anon*
  %3160 = getelementptr inbounds %struct.anon, %struct.anon* %3159, i32 0, i32 0
  %3161 = load i8, i8* %3160, align 1
  %3162 = zext i8 %3161 to i32
  %3163 = icmp eq i32 %3162, 1
  br i1 %3163, label %3164, label %3181

; <label>:3164                                    ; preds = %3155
  %3165 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %3165, %union.rec** %g, align 8
  %3166 = load i32, i32* %jn, align 4
  %3167 = icmp ne i32 %3166, 0
  br i1 %3167, label %3168, label %3178

; <label>:3168                                    ; preds = %3164
  %3169 = load %union.rec*, %union.rec** %y, align 8
  %3170 = bitcast %union.rec* %3169 to %struct.gapobj_type*
  %3171 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3170, i32 0, i32 3
  %3172 = bitcast %struct.GAP* %3171 to i16*
  %3173 = load i16, i16* %3172, align 4
  %3174 = lshr i16 %3173, 9
  %3175 = and i16 %3174, 1
  %3176 = zext i16 %3175 to i32
  %3177 = icmp ne i32 %3176, 0
  br label %3178

; <label>:3178                                    ; preds = %3168, %3164
  %3179 = phi i1 [ false, %3164 ], [ %3177, %3168 ]
  %3180 = zext i1 %3179 to i32
  store i32 %3180, i32* %jn, align 4
  br label %3222

; <label>:3181                                    ; preds = %3155
  %3182 = load %union.rec*, %union.rec** %y, align 8
  %3183 = bitcast %union.rec* %3182 to %struct.word_type*
  %3184 = getelementptr inbounds %struct.word_type, %struct.word_type* %3183, i32 0, i32 1
  %3185 = bitcast %union.FIRST_UNION* %3184 to %struct.anon*
  %3186 = getelementptr inbounds %struct.anon, %struct.anon* %3185, i32 0, i32 0
  %3187 = load i8, i8* %3186, align 1
  %3188 = zext i8 %3187 to i32
  %3189 = icmp eq i32 %3188, 9
  br i1 %3189, label %3190, label %3194

; <label>:3190                                    ; preds = %3181
  %3191 = load %union.rec*, %union.rec** %y, align 8
  %3192 = call i32 @SplitIsDefinite(%union.rec* %3191)
  %3193 = icmp ne i32 %3192, 0
  br i1 %3193, label %3214, label %3221

; <label>:3194                                    ; preds = %3181
  %3195 = load %union.rec*, %union.rec** %y, align 8
  %3196 = bitcast %union.rec* %3195 to %struct.word_type*
  %3197 = getelementptr inbounds %struct.word_type, %struct.word_type* %3196, i32 0, i32 1
  %3198 = bitcast %union.FIRST_UNION* %3197 to %struct.anon*
  %3199 = getelementptr inbounds %struct.anon, %struct.anon* %3198, i32 0, i32 0
  %3200 = load i8, i8* %3199, align 1
  %3201 = zext i8 %3200 to i32
  %3202 = icmp sge i32 %3201, 9
  br i1 %3202, label %3203, label %3212

; <label>:3203                                    ; preds = %3194
  %3204 = load %union.rec*, %union.rec** %y, align 8
  %3205 = bitcast %union.rec* %3204 to %struct.word_type*
  %3206 = getelementptr inbounds %struct.word_type, %struct.word_type* %3205, i32 0, i32 1
  %3207 = bitcast %union.FIRST_UNION* %3206 to %struct.anon*
  %3208 = getelementptr inbounds %struct.anon, %struct.anon* %3207, i32 0, i32 0
  %3209 = load i8, i8* %3208, align 1
  %3210 = zext i8 %3209 to i32
  %3211 = icmp sle i32 %3210, 99
  br label %3212

; <label>:3212                                    ; preds = %3203, %3194
  %3213 = phi i1 [ false, %3194 ], [ %3211, %3203 ]
  br i1 %3213, label %3214, label %3221

; <label>:3214                                    ; preds = %3212, %3190
  %3215 = load %union.rec*, %union.rec** %g, align 8
  %3216 = icmp ne %union.rec* %3215, null
  br i1 %3216, label %3220, label %3217

; <label>:3217                                    ; preds = %3214
  %3218 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3219 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3218, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %3220

; <label>:3220                                    ; preds = %3217, %3214
  br label %3230

; <label>:3221                                    ; preds = %3212, %3190
  br label %3222

; <label>:3222                                    ; preds = %3221, %3178
  br label %3223

; <label>:3223                                    ; preds = %3222
  %3224 = load %union.rec*, %union.rec** %link, align 8
  %3225 = bitcast %union.rec* %3224 to %struct.word_type*
  %3226 = getelementptr inbounds %struct.word_type, %struct.word_type* %3225, i32 0, i32 0
  %3227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3226, i32 0, i64 0
  %3228 = getelementptr inbounds %struct.LIST, %struct.LIST* %3227, i32 0, i32 1
  %3229 = load %union.rec*, %union.rec** %3228, align 8
  store %union.rec* %3229, %union.rec** %link, align 8
  br label %3127

; <label>:3230                                    ; preds = %3220, %3127
  %3231 = load %union.rec*, %union.rec** %link, align 8
  %3232 = load %union.rec*, %union.rec** %1, align 8
  %3233 = icmp ne %union.rec* %3231, %3232
  br i1 %3233, label %3234, label %3306

; <label>:3234                                    ; preds = %3230
  %3235 = load %union.rec*, %union.rec** %g, align 8
  %3236 = bitcast %union.rec* %3235 to %struct.gapobj_type*
  %3237 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3236, i32 0, i32 3
  %3238 = bitcast %struct.GAP* %3237 to i16*
  %3239 = load i16, i16* %3238, align 4
  %3240 = lshr i16 %3239, 13
  %3241 = zext i16 %3240 to i32
  %3242 = icmp eq i32 %3241, 6
  br i1 %3242, label %3243, label %3306

; <label>:3243                                    ; preds = %3234
  %3244 = load %union.rec*, %union.rec** %g, align 8
  %3245 = bitcast %union.rec* %3244 to %struct.gapobj_type*
  %3246 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3245, i32 0, i32 3
  %3247 = bitcast %struct.GAP* %3246 to i16*
  %3248 = load i16, i16* %3247, align 4
  %3249 = lshr i16 %3248, 10
  %3250 = and i16 %3249, 7
  %3251 = zext i16 %3250 to i32
  %3252 = icmp eq i32 %3251, 3
  br i1 %3252, label %3253, label %3306

; <label>:3253                                    ; preds = %3243
  %3254 = load %union.rec*, %union.rec** %g, align 8
  %3255 = bitcast %union.rec* %3254 to %struct.gapobj_type*
  %3256 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3255, i32 0, i32 3
  %3257 = getelementptr inbounds %struct.GAP, %struct.GAP* %3256, i32 0, i32 1
  %3258 = load i16, i16* %3257, align 2
  %3259 = sext i16 %3258 to i32
  %3260 = icmp eq i32 %3259, 0
  br i1 %3260, label %3261, label %3306

; <label>:3261                                    ; preds = %3253
  %3262 = load i32, i32* %3, align 4
  %3263 = load i32, i32* %5, align 4
  %3264 = sext i32 %3263 to i64
  %3265 = load %union.rec*, %union.rec** %1, align 8
  %3266 = bitcast %union.rec* %3265 to %struct.word_type*
  %3267 = getelementptr inbounds %struct.word_type, %struct.word_type* %3266, i32 0, i32 3
  %3268 = bitcast %union.THIRD_UNION* %3267 to %struct.anon.6*
  %3269 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3268, i32 0, i32 0
  %3270 = getelementptr inbounds [2 x i32], [2 x i32]* %3269, i32 0, i64 %3264
  %3271 = load i32, i32* %3270, align 4
  %3272 = sub nsw i32 %3262, %3271
  %3273 = load i32, i32* %5, align 4
  %3274 = sext i32 %3273 to i64
  %3275 = load %union.rec*, %union.rec** %prev, align 8
  %3276 = bitcast %union.rec* %3275 to %struct.word_type*
  %3277 = getelementptr inbounds %struct.word_type, %struct.word_type* %3276, i32 0, i32 3
  %3278 = bitcast %union.THIRD_UNION* %3277 to %struct.anon.6*
  %3279 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3278, i32 0, i32 1
  %3280 = getelementptr inbounds [2 x i32], [2 x i32]* %3279, i32 0, i64 %3274
  %3281 = load i32, i32* %3280, align 4
  %3282 = add nsw i32 %3281, %3272
  store i32 %3282, i32* %3280, align 4
  %3283 = load i32, i32* %3, align 4
  %3284 = load i32, i32* %5, align 4
  %3285 = sext i32 %3284 to i64
  %3286 = load %union.rec*, %union.rec** %1, align 8
  %3287 = bitcast %union.rec* %3286 to %struct.word_type*
  %3288 = getelementptr inbounds %struct.word_type, %struct.word_type* %3287, i32 0, i32 3
  %3289 = bitcast %union.THIRD_UNION* %3288 to %struct.anon.6*
  %3290 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3289, i32 0, i32 0
  %3291 = getelementptr inbounds [2 x i32], [2 x i32]* %3290, i32 0, i64 %3285
  store i32 %3283, i32* %3291, align 4
  %3292 = load %union.rec*, %union.rec** %g, align 8
  %3293 = bitcast %union.rec* %3292 to %struct.gapobj_type*
  %3294 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3293, i32 0, i32 3
  %3295 = bitcast %struct.GAP* %3294 to i16*
  %3296 = load i16, i16* %3295, align 4
  %3297 = and i16 %3296, 8191
  %3298 = or i16 %3297, 8192
  store i16 %3298, i16* %3295, align 4
  %3299 = load %union.rec*, %union.rec** %g, align 8
  %3300 = bitcast %union.rec* %3299 to %struct.gapobj_type*
  %3301 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3300, i32 0, i32 3
  %3302 = bitcast %struct.GAP* %3301 to i16*
  %3303 = load i16, i16* %3302, align 4
  %3304 = and i16 %3303, -7169
  %3305 = or i16 %3304, 1024
  store i16 %3305, i16* %3302, align 4
  br label %3306

; <label>:3306                                    ; preds = %3261, %3253, %3243, %3234, %3230
  store i32 1, i32* %jn, align 4
  %3307 = load %union.rec*, %union.rec** %1, align 8
  %3308 = bitcast %union.rec* %3307 to %struct.word_type*
  %3309 = getelementptr inbounds %struct.word_type, %struct.word_type* %3308, i32 0, i32 0
  %3310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3309, i32 0, i64 0
  %3311 = getelementptr inbounds %struct.LIST, %struct.LIST* %3310, i32 0, i32 1
  %3312 = load %union.rec*, %union.rec** %3311, align 8
  store %union.rec* %3312, %union.rec** %link, align 8
  br label %3313

; <label>:3313                                    ; preds = %3402, %3306
  %3314 = load %union.rec*, %union.rec** %link, align 8
  %3315 = load %union.rec*, %union.rec** %1, align 8
  %3316 = icmp ne %union.rec* %3314, %3315
  br i1 %3316, label %3317, label %3409

; <label>:3317                                    ; preds = %3313
  %3318 = load %union.rec*, %union.rec** %link, align 8
  %3319 = bitcast %union.rec* %3318 to %struct.word_type*
  %3320 = getelementptr inbounds %struct.word_type, %struct.word_type* %3319, i32 0, i32 0
  %3321 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3320, i32 0, i64 1
  %3322 = getelementptr inbounds %struct.LIST, %struct.LIST* %3321, i32 0, i32 0
  %3323 = load %union.rec*, %union.rec** %3322, align 8
  store %union.rec* %3323, %union.rec** %prev, align 8
  br label %3324

; <label>:3324                                    ; preds = %3334, %3317
  %3325 = load %union.rec*, %union.rec** %prev, align 8
  %3326 = bitcast %union.rec* %3325 to %struct.word_type*
  %3327 = getelementptr inbounds %struct.word_type, %struct.word_type* %3326, i32 0, i32 1
  %3328 = bitcast %union.FIRST_UNION* %3327 to %struct.anon*
  %3329 = getelementptr inbounds %struct.anon, %struct.anon* %3328, i32 0, i32 0
  %3330 = load i8, i8* %3329, align 1
  %3331 = zext i8 %3330 to i32
  %3332 = icmp eq i32 %3331, 0
  br i1 %3332, label %3333, label %3341

; <label>:3333                                    ; preds = %3324
  br label %3334

; <label>:3334                                    ; preds = %3333
  %3335 = load %union.rec*, %union.rec** %prev, align 8
  %3336 = bitcast %union.rec* %3335 to %struct.word_type*
  %3337 = getelementptr inbounds %struct.word_type, %struct.word_type* %3336, i32 0, i32 0
  %3338 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3337, i32 0, i64 1
  %3339 = getelementptr inbounds %struct.LIST, %struct.LIST* %3338, i32 0, i32 0
  %3340 = load %union.rec*, %union.rec** %3339, align 8
  store %union.rec* %3340, %union.rec** %prev, align 8
  br label %3324

; <label>:3341                                    ; preds = %3324
  %3342 = load %union.rec*, %union.rec** %prev, align 8
  %3343 = bitcast %union.rec* %3342 to %struct.word_type*
  %3344 = getelementptr inbounds %struct.word_type, %struct.word_type* %3343, i32 0, i32 1
  %3345 = bitcast %union.FIRST_UNION* %3344 to %struct.anon*
  %3346 = getelementptr inbounds %struct.anon, %struct.anon* %3345, i32 0, i32 0
  %3347 = load i8, i8* %3346, align 1
  %3348 = zext i8 %3347 to i32
  %3349 = icmp eq i32 %3348, 1
  br i1 %3349, label %3350, label %3366

; <label>:3350                                    ; preds = %3341
  %3351 = load i32, i32* %jn, align 4
  %3352 = icmp ne i32 %3351, 0
  br i1 %3352, label %3353, label %3363

; <label>:3353                                    ; preds = %3350
  %3354 = load %union.rec*, %union.rec** %prev, align 8
  %3355 = bitcast %union.rec* %3354 to %struct.gapobj_type*
  %3356 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3355, i32 0, i32 3
  %3357 = bitcast %struct.GAP* %3356 to i16*
  %3358 = load i16, i16* %3357, align 4
  %3359 = lshr i16 %3358, 9
  %3360 = and i16 %3359, 1
  %3361 = zext i16 %3360 to i32
  %3362 = icmp ne i32 %3361, 0
  br label %3363

; <label>:3363                                    ; preds = %3353, %3350
  %3364 = phi i1 [ false, %3350 ], [ %3362, %3353 ]
  %3365 = zext i1 %3364 to i32
  store i32 %3365, i32* %jn, align 4
  br label %3401

; <label>:3366                                    ; preds = %3341
  %3367 = load %union.rec*, %union.rec** %prev, align 8
  %3368 = bitcast %union.rec* %3367 to %struct.word_type*
  %3369 = getelementptr inbounds %struct.word_type, %struct.word_type* %3368, i32 0, i32 1
  %3370 = bitcast %union.FIRST_UNION* %3369 to %struct.anon*
  %3371 = getelementptr inbounds %struct.anon, %struct.anon* %3370, i32 0, i32 0
  %3372 = load i8, i8* %3371, align 1
  %3373 = zext i8 %3372 to i32
  %3374 = icmp eq i32 %3373, 9
  br i1 %3374, label %3375, label %3379

; <label>:3375                                    ; preds = %3366
  %3376 = load %union.rec*, %union.rec** %prev, align 8
  %3377 = call i32 @SplitIsDefinite(%union.rec* %3376)
  %3378 = icmp ne i32 %3377, 0
  br i1 %3378, label %3399, label %3400

; <label>:3379                                    ; preds = %3366
  %3380 = load %union.rec*, %union.rec** %prev, align 8
  %3381 = bitcast %union.rec* %3380 to %struct.word_type*
  %3382 = getelementptr inbounds %struct.word_type, %struct.word_type* %3381, i32 0, i32 1
  %3383 = bitcast %union.FIRST_UNION* %3382 to %struct.anon*
  %3384 = getelementptr inbounds %struct.anon, %struct.anon* %3383, i32 0, i32 0
  %3385 = load i8, i8* %3384, align 1
  %3386 = zext i8 %3385 to i32
  %3387 = icmp sge i32 %3386, 9
  br i1 %3387, label %3388, label %3397

; <label>:3388                                    ; preds = %3379
  %3389 = load %union.rec*, %union.rec** %prev, align 8
  %3390 = bitcast %union.rec* %3389 to %struct.word_type*
  %3391 = getelementptr inbounds %struct.word_type, %struct.word_type* %3390, i32 0, i32 1
  %3392 = bitcast %union.FIRST_UNION* %3391 to %struct.anon*
  %3393 = getelementptr inbounds %struct.anon, %struct.anon* %3392, i32 0, i32 0
  %3394 = load i8, i8* %3393, align 1
  %3395 = zext i8 %3394 to i32
  %3396 = icmp sle i32 %3395, 99
  br label %3397

; <label>:3397                                    ; preds = %3388, %3379
  %3398 = phi i1 [ false, %3379 ], [ %3396, %3388 ]
  br i1 %3398, label %3399, label %3400

; <label>:3399                                    ; preds = %3397, %3375
  br label %3409

; <label>:3400                                    ; preds = %3397, %3375
  br label %3401

; <label>:3401                                    ; preds = %3400, %3363
  br label %3402

; <label>:3402                                    ; preds = %3401
  %3403 = load %union.rec*, %union.rec** %link, align 8
  %3404 = bitcast %union.rec* %3403 to %struct.word_type*
  %3405 = getelementptr inbounds %struct.word_type, %struct.word_type* %3404, i32 0, i32 0
  %3406 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3405, i32 0, i64 0
  %3407 = getelementptr inbounds %struct.LIST, %struct.LIST* %3406, i32 0, i32 1
  %3408 = load %union.rec*, %union.rec** %3407, align 8
  store %union.rec* %3408, %union.rec** %link, align 8
  br label %3313

; <label>:3409                                    ; preds = %3399, %3313
  %3410 = load i32, i32* %5, align 4
  %3411 = sext i32 %3410 to i64
  %3412 = load %union.rec*, %union.rec** %1, align 8
  %3413 = bitcast %union.rec* %3412 to %struct.word_type*
  %3414 = getelementptr inbounds %struct.word_type, %struct.word_type* %3413, i32 0, i32 3
  %3415 = bitcast %union.THIRD_UNION* %3414 to %struct.anon.6*
  %3416 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3415, i32 0, i32 0
  %3417 = getelementptr inbounds [2 x i32], [2 x i32]* %3416, i32 0, i64 %3411
  %3418 = load i32, i32* %3417, align 4
  %3419 = load i32, i32* %4, align 4
  %3420 = add nsw i32 %3418, %3419
  store i32 %3420, i32* %frame_size, align 4
  %3421 = load i32, i32* %2, align 4
  %3422 = load i32, i32* %5, align 4
  %3423 = sext i32 %3422 to i64
  %3424 = load %union.rec*, %union.rec** %1, align 8
  %3425 = bitcast %union.rec* %3424 to %struct.word_type*
  %3426 = getelementptr inbounds %struct.word_type, %struct.word_type* %3425, i32 0, i32 3
  %3427 = bitcast %union.THIRD_UNION* %3426 to %struct.anon.6*
  %3428 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3427, i32 0, i32 0
  %3429 = getelementptr inbounds [2 x i32], [2 x i32]* %3428, i32 0, i64 %3423
  %3430 = load i32, i32* %3429, align 4
  %3431 = sub nsw i32 %3421, %3430
  store i32 %3431, i32* %back_edge, align 4
  %3432 = load %union.rec*, %union.rec** %1, align 8
  %3433 = bitcast %union.rec* %3432 to %struct.word_type*
  %3434 = getelementptr inbounds %struct.word_type, %struct.word_type* %3433, i32 0, i32 2
  %3435 = bitcast %union.SECOND_UNION* %3434 to %struct.anon.2*
  %3436 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3435, i32 0, i32 2
  %3437 = load i16, i16* %3436, align 2
  %3438 = lshr i16 %3437, 11
  %3439 = and i16 %3438, 1
  %3440 = zext i16 %3439 to i32
  %3441 = icmp ne i32 %3440, 0
  br i1 %3441, label %3442, label %3450

; <label>:3442                                    ; preds = %3409
  %3443 = load i32, i32* %6, align 4
  %3444 = icmp ne i32 %3443, 0
  br i1 %3444, label %3450, label %3445

; <label>:3445                                    ; preds = %3442
  %3446 = load %union.rec*, %union.rec** %1, align 8
  %3447 = load i32, i32* %frame_size, align 4
  %3448 = load i32, i32* %5, align 4
  %3449 = call i32 @FindAdjustIncrement(%union.rec* %3446, i32 %3447, i32 %3448)
  store i32 %3449, i32* %inc, align 4
  br label %3451

; <label>:3450                                    ; preds = %3442, %3409
  store i32 0, i32* %inc, align 4
  br label %3451

; <label>:3451                                    ; preds = %3450, %3445
  %3452 = load i32, i32* %back_edge, align 4
  %3453 = load i32, i32* %5, align 4
  %3454 = sext i32 %3453 to i64
  %3455 = load %union.rec*, %union.rec** %prev, align 8
  %3456 = bitcast %union.rec* %3455 to %struct.word_type*
  %3457 = getelementptr inbounds %struct.word_type, %struct.word_type* %3456, i32 0, i32 3
  %3458 = bitcast %union.THIRD_UNION* %3457 to %struct.anon.6*
  %3459 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3458, i32 0, i32 0
  %3460 = getelementptr inbounds [2 x i32], [2 x i32]* %3459, i32 0, i64 %3454
  %3461 = load i32, i32* %3460, align 4
  %3462 = add nsw i32 %3452, %3461
  store i32 %3462, i32* %mk, align 4
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %3463 = load %union.rec*, %union.rec** %link, align 8
  %3464 = bitcast %union.rec* %3463 to %struct.word_type*
  %3465 = getelementptr inbounds %struct.word_type, %struct.word_type* %3464, i32 0, i32 0
  %3466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3465, i32 0, i64 0
  %3467 = getelementptr inbounds %struct.LIST, %struct.LIST* %3466, i32 0, i32 1
  %3468 = load %union.rec*, %union.rec** %3467, align 8
  store %union.rec* %3468, %union.rec** %link, align 8
  br label %3469

; <label>:3469                                    ; preds = %3565, %3451
  %3470 = load %union.rec*, %union.rec** %link, align 8
  %3471 = load %union.rec*, %union.rec** %1, align 8
  %3472 = icmp ne %union.rec* %3470, %3471
  br i1 %3472, label %3473, label %3572

; <label>:3473                                    ; preds = %3469
  %3474 = load %union.rec*, %union.rec** %link, align 8
  %3475 = bitcast %union.rec* %3474 to %struct.word_type*
  %3476 = getelementptr inbounds %struct.word_type, %struct.word_type* %3475, i32 0, i32 0
  %3477 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3476, i32 0, i64 1
  %3478 = getelementptr inbounds %struct.LIST, %struct.LIST* %3477, i32 0, i32 0
  %3479 = load %union.rec*, %union.rec** %3478, align 8
  store %union.rec* %3479, %union.rec** %y, align 8
  br label %3480

; <label>:3480                                    ; preds = %3490, %3473
  %3481 = load %union.rec*, %union.rec** %y, align 8
  %3482 = bitcast %union.rec* %3481 to %struct.word_type*
  %3483 = getelementptr inbounds %struct.word_type, %struct.word_type* %3482, i32 0, i32 1
  %3484 = bitcast %union.FIRST_UNION* %3483 to %struct.anon*
  %3485 = getelementptr inbounds %struct.anon, %struct.anon* %3484, i32 0, i32 0
  %3486 = load i8, i8* %3485, align 1
  %3487 = zext i8 %3486 to i32
  %3488 = icmp eq i32 %3487, 0
  br i1 %3488, label %3489, label %3497

; <label>:3489                                    ; preds = %3480
  br label %3490

; <label>:3490                                    ; preds = %3489
  %3491 = load %union.rec*, %union.rec** %y, align 8
  %3492 = bitcast %union.rec* %3491 to %struct.word_type*
  %3493 = getelementptr inbounds %struct.word_type, %struct.word_type* %3492, i32 0, i32 0
  %3494 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3493, i32 0, i64 1
  %3495 = getelementptr inbounds %struct.LIST, %struct.LIST* %3494, i32 0, i32 0
  %3496 = load %union.rec*, %union.rec** %3495, align 8
  store %union.rec* %3496, %union.rec** %y, align 8
  br label %3480

; <label>:3497                                    ; preds = %3480
  %3498 = load %union.rec*, %union.rec** %y, align 8
  %3499 = bitcast %union.rec* %3498 to %struct.word_type*
  %3500 = getelementptr inbounds %struct.word_type, %struct.word_type* %3499, i32 0, i32 1
  %3501 = bitcast %union.FIRST_UNION* %3500 to %struct.anon*
  %3502 = getelementptr inbounds %struct.anon, %struct.anon* %3501, i32 0, i32 0
  %3503 = load i8, i8* %3502, align 1
  %3504 = zext i8 %3503 to i32
  %3505 = icmp eq i32 %3504, 1
  br i1 %3505, label %3506, label %3523

; <label>:3506                                    ; preds = %3497
  %3507 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %3507, %union.rec** %g, align 8
  %3508 = load i32, i32* %jn, align 4
  %3509 = icmp ne i32 %3508, 0
  br i1 %3509, label %3510, label %3520

; <label>:3510                                    ; preds = %3506
  %3511 = load %union.rec*, %union.rec** %y, align 8
  %3512 = bitcast %union.rec* %3511 to %struct.gapobj_type*
  %3513 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3512, i32 0, i32 3
  %3514 = bitcast %struct.GAP* %3513 to i16*
  %3515 = load i16, i16* %3514, align 4
  %3516 = lshr i16 %3515, 9
  %3517 = and i16 %3516, 1
  %3518 = zext i16 %3517 to i32
  %3519 = icmp ne i32 %3518, 0
  br label %3520

; <label>:3520                                    ; preds = %3510, %3506
  %3521 = phi i1 [ false, %3506 ], [ %3519, %3510 ]
  %3522 = zext i1 %3521 to i32
  store i32 %3522, i32* %jn, align 4
  br label %3564

; <label>:3523                                    ; preds = %3497
  %3524 = load %union.rec*, %union.rec** %y, align 8
  %3525 = bitcast %union.rec* %3524 to %struct.word_type*
  %3526 = getelementptr inbounds %struct.word_type, %struct.word_type* %3525, i32 0, i32 1
  %3527 = bitcast %union.FIRST_UNION* %3526 to %struct.anon*
  %3528 = getelementptr inbounds %struct.anon, %struct.anon* %3527, i32 0, i32 0
  %3529 = load i8, i8* %3528, align 1
  %3530 = zext i8 %3529 to i32
  %3531 = icmp eq i32 %3530, 9
  br i1 %3531, label %3532, label %3536

; <label>:3532                                    ; preds = %3523
  %3533 = load %union.rec*, %union.rec** %y, align 8
  %3534 = call i32 @SplitIsDefinite(%union.rec* %3533)
  %3535 = icmp ne i32 %3534, 0
  br i1 %3535, label %3556, label %3563

; <label>:3536                                    ; preds = %3523
  %3537 = load %union.rec*, %union.rec** %y, align 8
  %3538 = bitcast %union.rec* %3537 to %struct.word_type*
  %3539 = getelementptr inbounds %struct.word_type, %struct.word_type* %3538, i32 0, i32 1
  %3540 = bitcast %union.FIRST_UNION* %3539 to %struct.anon*
  %3541 = getelementptr inbounds %struct.anon, %struct.anon* %3540, i32 0, i32 0
  %3542 = load i8, i8* %3541, align 1
  %3543 = zext i8 %3542 to i32
  %3544 = icmp sge i32 %3543, 9
  br i1 %3544, label %3545, label %3554

; <label>:3545                                    ; preds = %3536
  %3546 = load %union.rec*, %union.rec** %y, align 8
  %3547 = bitcast %union.rec* %3546 to %struct.word_type*
  %3548 = getelementptr inbounds %struct.word_type, %struct.word_type* %3547, i32 0, i32 1
  %3549 = bitcast %union.FIRST_UNION* %3548 to %struct.anon*
  %3550 = getelementptr inbounds %struct.anon, %struct.anon* %3549, i32 0, i32 0
  %3551 = load i8, i8* %3550, align 1
  %3552 = zext i8 %3551 to i32
  %3553 = icmp sle i32 %3552, 99
  br label %3554

; <label>:3554                                    ; preds = %3545, %3536
  %3555 = phi i1 [ false, %3536 ], [ %3553, %3545 ]
  br i1 %3555, label %3556, label %3563

; <label>:3556                                    ; preds = %3554, %3532
  %3557 = load %union.rec*, %union.rec** %g, align 8
  %3558 = icmp ne %union.rec* %3557, null
  br i1 %3558, label %3562, label %3559

; <label>:3559                                    ; preds = %3556
  %3560 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3561 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3560, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %3562

; <label>:3562                                    ; preds = %3559, %3556
  br label %3572

; <label>:3563                                    ; preds = %3554, %3532
  br label %3564

; <label>:3564                                    ; preds = %3563, %3520
  br label %3565

; <label>:3565                                    ; preds = %3564
  %3566 = load %union.rec*, %union.rec** %link, align 8
  %3567 = bitcast %union.rec* %3566 to %struct.word_type*
  %3568 = getelementptr inbounds %struct.word_type, %struct.word_type* %3567, i32 0, i32 0
  %3569 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3568, i32 0, i64 0
  %3570 = getelementptr inbounds %struct.LIST, %struct.LIST* %3569, i32 0, i32 1
  %3571 = load %union.rec*, %union.rec** %3570, align 8
  store %union.rec* %3571, %union.rec** %link, align 8
  br label %3469

; <label>:3572                                    ; preds = %3562, %3469
  br label %3573

; <label>:3573                                    ; preds = %3860, %3572
  %3574 = load %union.rec*, %union.rec** %link, align 8
  %3575 = load %union.rec*, %union.rec** %1, align 8
  %3576 = icmp ne %union.rec* %3574, %3575
  br i1 %3576, label %3577, label %3861

; <label>:3577                                    ; preds = %3573
  %3578 = load %union.rec*, %union.rec** %g, align 8
  %3579 = bitcast %union.rec* %3578 to %struct.gapobj_type*
  %3580 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3579, i32 0, i32 3
  %3581 = bitcast %struct.GAP* %3580 to i16*
  %3582 = load i16, i16* %3581, align 4
  %3583 = lshr i16 %3582, 13
  %3584 = zext i16 %3583 to i32
  %3585 = icmp eq i32 %3584, 6
  br i1 %3585, label %3586, label %3693

; <label>:3586                                    ; preds = %3577
  %3587 = load %union.rec*, %union.rec** %g, align 8
  %3588 = bitcast %union.rec* %3587 to %struct.gapobj_type*
  %3589 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3588, i32 0, i32 3
  %3590 = bitcast %struct.GAP* %3589 to i16*
  %3591 = load i16, i16* %3590, align 4
  %3592 = lshr i16 %3591, 10
  %3593 = and i16 %3592, 7
  %3594 = zext i16 %3593 to i32
  %3595 = icmp eq i32 %3594, 3
  br i1 %3595, label %3596, label %3693

; <label>:3596                                    ; preds = %3586
  %3597 = load %union.rec*, %union.rec** %g, align 8
  %3598 = bitcast %union.rec* %3597 to %struct.gapobj_type*
  %3599 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3598, i32 0, i32 3
  %3600 = getelementptr inbounds %struct.GAP, %struct.GAP* %3599, i32 0, i32 1
  %3601 = load i16, i16* %3600, align 2
  %3602 = sext i16 %3601 to i32
  %3603 = icmp eq i32 %3602, 4096
  br i1 %3603, label %3604, label %3693

; <label>:3604                                    ; preds = %3596
  %3605 = load %union.rec*, %union.rec** %prev, align 8
  %3606 = load i32, i32* %mk, align 4
  %3607 = load i32, i32* %5, align 4
  %3608 = sext i32 %3607 to i64
  %3609 = load %union.rec*, %union.rec** %prev, align 8
  %3610 = bitcast %union.rec* %3609 to %struct.word_type*
  %3611 = getelementptr inbounds %struct.word_type, %struct.word_type* %3610, i32 0, i32 3
  %3612 = bitcast %union.THIRD_UNION* %3611 to %struct.anon.6*
  %3613 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3612, i32 0, i32 0
  %3614 = getelementptr inbounds [2 x i32], [2 x i32]* %3613, i32 0, i64 %3608
  %3615 = load i32, i32* %3614, align 4
  %3616 = load i32, i32* %5, align 4
  %3617 = sext i32 %3616 to i64
  %3618 = load %union.rec*, %union.rec** %prev, align 8
  %3619 = bitcast %union.rec* %3618 to %struct.word_type*
  %3620 = getelementptr inbounds %struct.word_type, %struct.word_type* %3619, i32 0, i32 3
  %3621 = bitcast %union.THIRD_UNION* %3620 to %struct.anon.6*
  %3622 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3621, i32 0, i32 1
  %3623 = getelementptr inbounds [2 x i32], [2 x i32]* %3622, i32 0, i64 %3617
  %3624 = load i32, i32* %3623, align 4
  %3625 = load i32, i32* %2, align 4
  %3626 = load i32, i32* %4, align 4
  %3627 = add nsw i32 %3625, %3626
  %3628 = load i32, i32* %mk, align 4
  %3629 = sub nsw i32 %3627, %3628
  %3630 = load i32, i32* %5, align 4
  %3631 = sext i32 %3630 to i64
  %3632 = load %union.rec*, %union.rec** %y, align 8
  %3633 = bitcast %union.rec* %3632 to %struct.word_type*
  %3634 = getelementptr inbounds %struct.word_type, %struct.word_type* %3633, i32 0, i32 3
  %3635 = bitcast %union.THIRD_UNION* %3634 to %struct.anon.6*
  %3636 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3635, i32 0, i32 0
  %3637 = getelementptr inbounds [2 x i32], [2 x i32]* %3636, i32 0, i64 %3631
  %3638 = load i32, i32* %3637, align 4
  %3639 = load i32, i32* %5, align 4
  %3640 = sext i32 %3639 to i64
  %3641 = load %union.rec*, %union.rec** %y, align 8
  %3642 = bitcast %union.rec* %3641 to %struct.word_type*
  %3643 = getelementptr inbounds %struct.word_type, %struct.word_type* %3642, i32 0, i32 3
  %3644 = bitcast %union.THIRD_UNION* %3643 to %struct.anon.6*
  %3645 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3644, i32 0, i32 1
  %3646 = getelementptr inbounds [2 x i32], [2 x i32]* %3645, i32 0, i64 %3640
  %3647 = load i32, i32* %3646, align 4
  %3648 = add nsw i32 %3638, %3647
  %3649 = sub nsw i32 %3629, %3648
  %3650 = icmp slt i32 %3624, %3649
  br i1 %3650, label %3651, label %3677

; <label>:3651                                    ; preds = %3604
  %3652 = load i32, i32* %2, align 4
  %3653 = load i32, i32* %4, align 4
  %3654 = add nsw i32 %3652, %3653
  %3655 = load i32, i32* %mk, align 4
  %3656 = sub nsw i32 %3654, %3655
  %3657 = load i32, i32* %5, align 4
  %3658 = sext i32 %3657 to i64
  %3659 = load %union.rec*, %union.rec** %y, align 8
  %3660 = bitcast %union.rec* %3659 to %struct.word_type*
  %3661 = getelementptr inbounds %struct.word_type, %struct.word_type* %3660, i32 0, i32 3
  %3662 = bitcast %union.THIRD_UNION* %3661 to %struct.anon.6*
  %3663 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3662, i32 0, i32 0
  %3664 = getelementptr inbounds [2 x i32], [2 x i32]* %3663, i32 0, i64 %3658
  %3665 = load i32, i32* %3664, align 4
  %3666 = load i32, i32* %5, align 4
  %3667 = sext i32 %3666 to i64
  %3668 = load %union.rec*, %union.rec** %y, align 8
  %3669 = bitcast %union.rec* %3668 to %struct.word_type*
  %3670 = getelementptr inbounds %struct.word_type, %struct.word_type* %3669, i32 0, i32 3
  %3671 = bitcast %union.THIRD_UNION* %3670 to %struct.anon.6*
  %3672 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3671, i32 0, i32 1
  %3673 = getelementptr inbounds [2 x i32], [2 x i32]* %3672, i32 0, i64 %3667
  %3674 = load i32, i32* %3673, align 4
  %3675 = add nsw i32 %3665, %3674
  %3676 = sub nsw i32 %3656, %3675
  br label %3687

; <label>:3677                                    ; preds = %3604
  %3678 = load i32, i32* %5, align 4
  %3679 = sext i32 %3678 to i64
  %3680 = load %union.rec*, %union.rec** %prev, align 8
  %3681 = bitcast %union.rec* %3680 to %struct.word_type*
  %3682 = getelementptr inbounds %struct.word_type, %struct.word_type* %3681, i32 0, i32 3
  %3683 = bitcast %union.THIRD_UNION* %3682 to %struct.anon.6*
  %3684 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3683, i32 0, i32 1
  %3685 = getelementptr inbounds [2 x i32], [2 x i32]* %3684, i32 0, i64 %3679
  %3686 = load i32, i32* %3685, align 4
  br label %3687

; <label>:3687                                    ; preds = %3677, %3651
  %3688 = phi i32 [ %3676, %3651 ], [ %3686, %3677 ]
  %3689 = load i32, i32* %5, align 4
  %3690 = load i32, i32* %7, align 4
  %3691 = load i32, i32* %8, align 4
  %3692 = call %union.rec* @FixAndPrintObject(%union.rec* %3605, i32 %3606, i32 %3615, i32 %3688, i32 %3689, i32 0, i32 %3690, i32 %3691, i32* %aback, i32* %afwd)
  store %union.rec* %3692, %union.rec** %prev, align 8
  br label %3720

; <label>:3693                                    ; preds = %3596, %3586, %3577
  %3694 = load %union.rec*, %union.rec** %prev, align 8
  %3695 = load i32, i32* %mk, align 4
  %3696 = load i32, i32* %5, align 4
  %3697 = sext i32 %3696 to i64
  %3698 = load %union.rec*, %union.rec** %prev, align 8
  %3699 = bitcast %union.rec* %3698 to %struct.word_type*
  %3700 = getelementptr inbounds %struct.word_type, %struct.word_type* %3699, i32 0, i32 3
  %3701 = bitcast %union.THIRD_UNION* %3700 to %struct.anon.6*
  %3702 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3701, i32 0, i32 0
  %3703 = getelementptr inbounds [2 x i32], [2 x i32]* %3702, i32 0, i64 %3697
  %3704 = load i32, i32* %3703, align 4
  %3705 = load i32, i32* %5, align 4
  %3706 = sext i32 %3705 to i64
  %3707 = load %union.rec*, %union.rec** %prev, align 8
  %3708 = bitcast %union.rec* %3707 to %struct.word_type*
  %3709 = getelementptr inbounds %struct.word_type, %struct.word_type* %3708, i32 0, i32 3
  %3710 = bitcast %union.THIRD_UNION* %3709 to %struct.anon.6*
  %3711 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3710, i32 0, i32 1
  %3712 = getelementptr inbounds [2 x i32], [2 x i32]* %3711, i32 0, i64 %3706
  %3713 = load i32, i32* %3712, align 4
  %3714 = load i32, i32* %inc, align 4
  %3715 = add nsw i32 %3713, %3714
  %3716 = load i32, i32* %5, align 4
  %3717 = load i32, i32* %7, align 4
  %3718 = load i32, i32* %8, align 4
  %3719 = call %union.rec* @FixAndPrintObject(%union.rec* %3694, i32 %3695, i32 %3704, i32 %3715, i32 %3716, i32 0, i32 %3717, i32 %3718, i32* %aback, i32* %afwd)
  store %union.rec* %3719, %union.rec** %prev, align 8
  br label %3720

; <label>:3720                                    ; preds = %3693, %3687
  %3721 = load i32, i32* %afwd, align 4
  %3722 = load i32, i32* %5, align 4
  %3723 = sext i32 %3722 to i64
  %3724 = load %union.rec*, %union.rec** %y, align 8
  %3725 = bitcast %union.rec* %3724 to %struct.word_type*
  %3726 = getelementptr inbounds %struct.word_type, %struct.word_type* %3725, i32 0, i32 3
  %3727 = bitcast %union.THIRD_UNION* %3726 to %struct.anon.6*
  %3728 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3727, i32 0, i32 0
  %3729 = getelementptr inbounds [2 x i32], [2 x i32]* %3728, i32 0, i64 %3723
  %3730 = load i32, i32* %3729, align 4
  %3731 = load i32, i32* %5, align 4
  %3732 = sext i32 %3731 to i64
  %3733 = load %union.rec*, %union.rec** %y, align 8
  %3734 = bitcast %union.rec* %3733 to %struct.word_type*
  %3735 = getelementptr inbounds %struct.word_type, %struct.word_type* %3734, i32 0, i32 3
  %3736 = bitcast %union.THIRD_UNION* %3735 to %struct.anon.6*
  %3737 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3736, i32 0, i32 1
  %3738 = getelementptr inbounds [2 x i32], [2 x i32]* %3737, i32 0, i64 %3732
  %3739 = load i32, i32* %3738, align 4
  %3740 = load %union.rec*, %union.rec** %g, align 8
  %3741 = bitcast %union.rec* %3740 to %struct.gapobj_type*
  %3742 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3741, i32 0, i32 3
  %3743 = load i32, i32* %frame_size, align 4
  %3744 = load i32, i32* %mk, align 4
  %3745 = load i32, i32* %back_edge, align 4
  %3746 = sub nsw i32 %3744, %3745
  %3747 = call i32 @ActualGap(i32 %3721, i32 %3730, i32 %3739, %struct.GAP* %3742, i32 %3743, i32 %3746)
  %3748 = load i32, i32* %mk, align 4
  %3749 = add nsw i32 %3748, %3747
  store i32 %3749, i32* %mk, align 4
  %3750 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %3750, %union.rec** %prev, align 8
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %3751 = load %union.rec*, %union.rec** %link, align 8
  %3752 = bitcast %union.rec* %3751 to %struct.word_type*
  %3753 = getelementptr inbounds %struct.word_type, %struct.word_type* %3752, i32 0, i32 0
  %3754 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3753, i32 0, i64 0
  %3755 = getelementptr inbounds %struct.LIST, %struct.LIST* %3754, i32 0, i32 1
  %3756 = load %union.rec*, %union.rec** %3755, align 8
  store %union.rec* %3756, %union.rec** %link, align 8
  br label %3757

; <label>:3757                                    ; preds = %3853, %3720
  %3758 = load %union.rec*, %union.rec** %link, align 8
  %3759 = load %union.rec*, %union.rec** %1, align 8
  %3760 = icmp ne %union.rec* %3758, %3759
  br i1 %3760, label %3761, label %3860

; <label>:3761                                    ; preds = %3757
  %3762 = load %union.rec*, %union.rec** %link, align 8
  %3763 = bitcast %union.rec* %3762 to %struct.word_type*
  %3764 = getelementptr inbounds %struct.word_type, %struct.word_type* %3763, i32 0, i32 0
  %3765 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3764, i32 0, i64 1
  %3766 = getelementptr inbounds %struct.LIST, %struct.LIST* %3765, i32 0, i32 0
  %3767 = load %union.rec*, %union.rec** %3766, align 8
  store %union.rec* %3767, %union.rec** %y, align 8
  br label %3768

; <label>:3768                                    ; preds = %3778, %3761
  %3769 = load %union.rec*, %union.rec** %y, align 8
  %3770 = bitcast %union.rec* %3769 to %struct.word_type*
  %3771 = getelementptr inbounds %struct.word_type, %struct.word_type* %3770, i32 0, i32 1
  %3772 = bitcast %union.FIRST_UNION* %3771 to %struct.anon*
  %3773 = getelementptr inbounds %struct.anon, %struct.anon* %3772, i32 0, i32 0
  %3774 = load i8, i8* %3773, align 1
  %3775 = zext i8 %3774 to i32
  %3776 = icmp eq i32 %3775, 0
  br i1 %3776, label %3777, label %3785

; <label>:3777                                    ; preds = %3768
  br label %3778

; <label>:3778                                    ; preds = %3777
  %3779 = load %union.rec*, %union.rec** %y, align 8
  %3780 = bitcast %union.rec* %3779 to %struct.word_type*
  %3781 = getelementptr inbounds %struct.word_type, %struct.word_type* %3780, i32 0, i32 0
  %3782 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3781, i32 0, i64 1
  %3783 = getelementptr inbounds %struct.LIST, %struct.LIST* %3782, i32 0, i32 0
  %3784 = load %union.rec*, %union.rec** %3783, align 8
  store %union.rec* %3784, %union.rec** %y, align 8
  br label %3768

; <label>:3785                                    ; preds = %3768
  %3786 = load %union.rec*, %union.rec** %y, align 8
  %3787 = bitcast %union.rec* %3786 to %struct.word_type*
  %3788 = getelementptr inbounds %struct.word_type, %struct.word_type* %3787, i32 0, i32 1
  %3789 = bitcast %union.FIRST_UNION* %3788 to %struct.anon*
  %3790 = getelementptr inbounds %struct.anon, %struct.anon* %3789, i32 0, i32 0
  %3791 = load i8, i8* %3790, align 1
  %3792 = zext i8 %3791 to i32
  %3793 = icmp eq i32 %3792, 1
  br i1 %3793, label %3794, label %3811

; <label>:3794                                    ; preds = %3785
  %3795 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %3795, %union.rec** %g, align 8
  %3796 = load i32, i32* %jn, align 4
  %3797 = icmp ne i32 %3796, 0
  br i1 %3797, label %3798, label %3808

; <label>:3798                                    ; preds = %3794
  %3799 = load %union.rec*, %union.rec** %y, align 8
  %3800 = bitcast %union.rec* %3799 to %struct.gapobj_type*
  %3801 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3800, i32 0, i32 3
  %3802 = bitcast %struct.GAP* %3801 to i16*
  %3803 = load i16, i16* %3802, align 4
  %3804 = lshr i16 %3803, 9
  %3805 = and i16 %3804, 1
  %3806 = zext i16 %3805 to i32
  %3807 = icmp ne i32 %3806, 0
  br label %3808

; <label>:3808                                    ; preds = %3798, %3794
  %3809 = phi i1 [ false, %3794 ], [ %3807, %3798 ]
  %3810 = zext i1 %3809 to i32
  store i32 %3810, i32* %jn, align 4
  br label %3852

; <label>:3811                                    ; preds = %3785
  %3812 = load %union.rec*, %union.rec** %y, align 8
  %3813 = bitcast %union.rec* %3812 to %struct.word_type*
  %3814 = getelementptr inbounds %struct.word_type, %struct.word_type* %3813, i32 0, i32 1
  %3815 = bitcast %union.FIRST_UNION* %3814 to %struct.anon*
  %3816 = getelementptr inbounds %struct.anon, %struct.anon* %3815, i32 0, i32 0
  %3817 = load i8, i8* %3816, align 1
  %3818 = zext i8 %3817 to i32
  %3819 = icmp eq i32 %3818, 9
  br i1 %3819, label %3820, label %3824

; <label>:3820                                    ; preds = %3811
  %3821 = load %union.rec*, %union.rec** %y, align 8
  %3822 = call i32 @SplitIsDefinite(%union.rec* %3821)
  %3823 = icmp ne i32 %3822, 0
  br i1 %3823, label %3844, label %3851

; <label>:3824                                    ; preds = %3811
  %3825 = load %union.rec*, %union.rec** %y, align 8
  %3826 = bitcast %union.rec* %3825 to %struct.word_type*
  %3827 = getelementptr inbounds %struct.word_type, %struct.word_type* %3826, i32 0, i32 1
  %3828 = bitcast %union.FIRST_UNION* %3827 to %struct.anon*
  %3829 = getelementptr inbounds %struct.anon, %struct.anon* %3828, i32 0, i32 0
  %3830 = load i8, i8* %3829, align 1
  %3831 = zext i8 %3830 to i32
  %3832 = icmp sge i32 %3831, 9
  br i1 %3832, label %3833, label %3842

; <label>:3833                                    ; preds = %3824
  %3834 = load %union.rec*, %union.rec** %y, align 8
  %3835 = bitcast %union.rec* %3834 to %struct.word_type*
  %3836 = getelementptr inbounds %struct.word_type, %struct.word_type* %3835, i32 0, i32 1
  %3837 = bitcast %union.FIRST_UNION* %3836 to %struct.anon*
  %3838 = getelementptr inbounds %struct.anon, %struct.anon* %3837, i32 0, i32 0
  %3839 = load i8, i8* %3838, align 1
  %3840 = zext i8 %3839 to i32
  %3841 = icmp sle i32 %3840, 99
  br label %3842

; <label>:3842                                    ; preds = %3833, %3824
  %3843 = phi i1 [ false, %3824 ], [ %3841, %3833 ]
  br i1 %3843, label %3844, label %3851

; <label>:3844                                    ; preds = %3842, %3820
  %3845 = load %union.rec*, %union.rec** %g, align 8
  %3846 = icmp ne %union.rec* %3845, null
  br i1 %3846, label %3850, label %3847

; <label>:3847                                    ; preds = %3844
  %3848 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3849 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3848, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %3850

; <label>:3850                                    ; preds = %3847, %3844
  br label %3860

; <label>:3851                                    ; preds = %3842, %3820
  br label %3852

; <label>:3852                                    ; preds = %3851, %3808
  br label %3853

; <label>:3853                                    ; preds = %3852
  %3854 = load %union.rec*, %union.rec** %link, align 8
  %3855 = bitcast %union.rec* %3854 to %struct.word_type*
  %3856 = getelementptr inbounds %struct.word_type, %struct.word_type* %3855, i32 0, i32 0
  %3857 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3856, i32 0, i64 0
  %3858 = getelementptr inbounds %struct.LIST, %struct.LIST* %3857, i32 0, i32 1
  %3859 = load %union.rec*, %union.rec** %3858, align 8
  store %union.rec* %3859, %union.rec** %link, align 8
  br label %3757

; <label>:3860                                    ; preds = %3850, %3757
  br label %3573

; <label>:3861                                    ; preds = %3573
  %3862 = load i32, i32* %6, align 4
  %3863 = icmp ne i32 %3862, 0
  br i1 %3863, label %3864, label %3889

; <label>:3864                                    ; preds = %3861
  %3865 = load %union.rec*, %union.rec** %prev, align 8
  %3866 = load i32, i32* %mk, align 4
  %3867 = load i32, i32* %5, align 4
  %3868 = sext i32 %3867 to i64
  %3869 = load %union.rec*, %union.rec** %prev, align 8
  %3870 = bitcast %union.rec* %3869 to %struct.word_type*
  %3871 = getelementptr inbounds %struct.word_type, %struct.word_type* %3870, i32 0, i32 3
  %3872 = bitcast %union.THIRD_UNION* %3871 to %struct.anon.6*
  %3873 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3872, i32 0, i32 0
  %3874 = getelementptr inbounds [2 x i32], [2 x i32]* %3873, i32 0, i64 %3868
  %3875 = load i32, i32* %3874, align 4
  %3876 = load i32, i32* %5, align 4
  %3877 = sext i32 %3876 to i64
  %3878 = load %union.rec*, %union.rec** %prev, align 8
  %3879 = bitcast %union.rec* %3878 to %struct.word_type*
  %3880 = getelementptr inbounds %struct.word_type, %struct.word_type* %3879, i32 0, i32 3
  %3881 = bitcast %union.THIRD_UNION* %3880 to %struct.anon.6*
  %3882 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3881, i32 0, i32 1
  %3883 = getelementptr inbounds [2 x i32], [2 x i32]* %3882, i32 0, i64 %3877
  %3884 = load i32, i32* %3883, align 4
  %3885 = load i32, i32* %5, align 4
  %3886 = load i32, i32* %7, align 4
  %3887 = load i32, i32* %8, align 4
  %3888 = call %union.rec* @FixAndPrintObject(%union.rec* %3865, i32 %3866, i32 %3875, i32 %3884, i32 %3885, i32 0, i32 %3886, i32 %3887, i32* %aback, i32* %afwd)
  store %union.rec* %3888, %union.rec** %prev, align 8
  br label %3938

; <label>:3889                                    ; preds = %3861
  %3890 = load %union.rec*, %union.rec** %prev, align 8
  %3891 = load i32, i32* %mk, align 4
  %3892 = load i32, i32* %5, align 4
  %3893 = sext i32 %3892 to i64
  %3894 = load %union.rec*, %union.rec** %prev, align 8
  %3895 = bitcast %union.rec* %3894 to %struct.word_type*
  %3896 = getelementptr inbounds %struct.word_type, %struct.word_type* %3895, i32 0, i32 3
  %3897 = bitcast %union.THIRD_UNION* %3896 to %struct.anon.6*
  %3898 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3897, i32 0, i32 0
  %3899 = getelementptr inbounds [2 x i32], [2 x i32]* %3898, i32 0, i64 %3893
  %3900 = load i32, i32* %3899, align 4
  %3901 = load i32, i32* %5, align 4
  %3902 = sext i32 %3901 to i64
  %3903 = load %union.rec*, %union.rec** %prev, align 8
  %3904 = bitcast %union.rec* %3903 to %struct.word_type*
  %3905 = getelementptr inbounds %struct.word_type, %struct.word_type* %3904, i32 0, i32 3
  %3906 = bitcast %union.THIRD_UNION* %3905 to %struct.anon.6*
  %3907 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3906, i32 0, i32 1
  %3908 = getelementptr inbounds [2 x i32], [2 x i32]* %3907, i32 0, i64 %3902
  %3909 = load i32, i32* %3908, align 4
  %3910 = load i32, i32* %2, align 4
  %3911 = load i32, i32* %4, align 4
  %3912 = add nsw i32 %3910, %3911
  %3913 = load i32, i32* %mk, align 4
  %3914 = sub nsw i32 %3912, %3913
  %3915 = icmp slt i32 %3909, %3914
  br i1 %3915, label %3916, label %3922

; <label>:3916                                    ; preds = %3889
  %3917 = load i32, i32* %2, align 4
  %3918 = load i32, i32* %4, align 4
  %3919 = add nsw i32 %3917, %3918
  %3920 = load i32, i32* %mk, align 4
  %3921 = sub nsw i32 %3919, %3920
  br label %3932

; <label>:3922                                    ; preds = %3889
  %3923 = load i32, i32* %5, align 4
  %3924 = sext i32 %3923 to i64
  %3925 = load %union.rec*, %union.rec** %prev, align 8
  %3926 = bitcast %union.rec* %3925 to %struct.word_type*
  %3927 = getelementptr inbounds %struct.word_type, %struct.word_type* %3926, i32 0, i32 3
  %3928 = bitcast %union.THIRD_UNION* %3927 to %struct.anon.6*
  %3929 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3928, i32 0, i32 1
  %3930 = getelementptr inbounds [2 x i32], [2 x i32]* %3929, i32 0, i64 %3924
  %3931 = load i32, i32* %3930, align 4
  br label %3932

; <label>:3932                                    ; preds = %3922, %3916
  %3933 = phi i32 [ %3921, %3916 ], [ %3931, %3922 ]
  %3934 = load i32, i32* %5, align 4
  %3935 = load i32, i32* %7, align 4
  %3936 = load i32, i32* %8, align 4
  %3937 = call %union.rec* @FixAndPrintObject(%union.rec* %3890, i32 %3891, i32 %3900, i32 %3933, i32 %3934, i32 0, i32 %3935, i32 %3936, i32* %aback, i32* %afwd)
  store %union.rec* %3937, %union.rec** %prev, align 8
  br label %3938

; <label>:3938                                    ; preds = %3932, %3864
  %3939 = load i32, i32* %5, align 4
  %3940 = sext i32 %3939 to i64
  %3941 = load %union.rec*, %union.rec** %1, align 8
  %3942 = bitcast %union.rec* %3941 to %struct.word_type*
  %3943 = getelementptr inbounds %struct.word_type, %struct.word_type* %3942, i32 0, i32 3
  %3944 = bitcast %union.THIRD_UNION* %3943 to %struct.anon.6*
  %3945 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3944, i32 0, i32 0
  %3946 = getelementptr inbounds [2 x i32], [2 x i32]* %3945, i32 0, i64 %3940
  %3947 = load i32, i32* %3946, align 4
  %3948 = load i32, i32* %3, align 4
  %3949 = icmp slt i32 %3947, %3948
  br i1 %3949, label %3950, label %3952

; <label>:3950                                    ; preds = %3938
  %3951 = load i32, i32* %3, align 4
  br label %3962

; <label>:3952                                    ; preds = %3938
  %3953 = load i32, i32* %5, align 4
  %3954 = sext i32 %3953 to i64
  %3955 = load %union.rec*, %union.rec** %1, align 8
  %3956 = bitcast %union.rec* %3955 to %struct.word_type*
  %3957 = getelementptr inbounds %struct.word_type, %struct.word_type* %3956, i32 0, i32 3
  %3958 = bitcast %union.THIRD_UNION* %3957 to %struct.anon.6*
  %3959 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3958, i32 0, i32 0
  %3960 = getelementptr inbounds [2 x i32], [2 x i32]* %3959, i32 0, i64 %3954
  %3961 = load i32, i32* %3960, align 4
  br label %3962

; <label>:3962                                    ; preds = %3952, %3950
  %3963 = phi i32 [ %3951, %3950 ], [ %3961, %3952 ]
  %3964 = load i32*, i32** %9, align 8
  store i32 %3963, i32* %3964, align 4
  %3965 = load i32, i32* %mk, align 4
  %3966 = load i32, i32* %5, align 4
  %3967 = sext i32 %3966 to i64
  %3968 = load %union.rec*, %union.rec** %prev, align 8
  %3969 = bitcast %union.rec* %3968 to %struct.word_type*
  %3970 = getelementptr inbounds %struct.word_type, %struct.word_type* %3969, i32 0, i32 3
  %3971 = bitcast %union.THIRD_UNION* %3970 to %struct.anon.6*
  %3972 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3971, i32 0, i32 1
  %3973 = getelementptr inbounds [2 x i32], [2 x i32]* %3972, i32 0, i64 %3967
  %3974 = load i32, i32* %3973, align 4
  %3975 = add nsw i32 %3965, %3974
  %3976 = load i32, i32* %back_edge, align 4
  %3977 = sub nsw i32 %3975, %3976
  %3978 = load i32*, i32** %9, align 8
  %3979 = load i32, i32* %3978, align 4
  %3980 = sub nsw i32 %3977, %3979
  %3981 = load i32*, i32** %10, align 8
  store i32 %3980, i32* %3981, align 4
  br label %3987

; <label>:3982                                    ; preds = %3116
  %3983 = load i32, i32* %3, align 4
  %3984 = load i32*, i32** %9, align 8
  store i32 %3983, i32* %3984, align 4
  %3985 = load i32, i32* %4, align 4
  %3986 = load i32*, i32** %10, align 8
  store i32 %3985, i32* %3986, align 4
  br label %3987

; <label>:3987                                    ; preds = %3982, %3962
  br label %4898

; <label>:3988                                    ; preds = %2999
  store %union.rec* null, %union.rec** %start_group, align 8
  store i32 0, i32* %dble_found, align 4
  store i32 0, i32* %dlen, align 4
  store i32 1, i32* %jn, align 4
  %3989 = load %union.rec*, %union.rec** %1, align 8
  %3990 = bitcast %union.rec* %3989 to %struct.word_type*
  %3991 = getelementptr inbounds %struct.word_type, %struct.word_type* %3990, i32 0, i32 0
  %3992 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3991, i32 0, i64 0
  %3993 = getelementptr inbounds %struct.LIST, %struct.LIST* %3992, i32 0, i32 1
  %3994 = load %union.rec*, %union.rec** %3993, align 8
  store %union.rec* %3994, %union.rec** %link, align 8
  br label %3995

; <label>:3995                                    ; preds = %4084, %3988
  %3996 = load %union.rec*, %union.rec** %link, align 8
  %3997 = load %union.rec*, %union.rec** %1, align 8
  %3998 = icmp ne %union.rec* %3996, %3997
  br i1 %3998, label %3999, label %4091

; <label>:3999                                    ; preds = %3995
  %4000 = load %union.rec*, %union.rec** %link, align 8
  %4001 = bitcast %union.rec* %4000 to %struct.word_type*
  %4002 = getelementptr inbounds %struct.word_type, %struct.word_type* %4001, i32 0, i32 0
  %4003 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4002, i32 0, i64 1
  %4004 = getelementptr inbounds %struct.LIST, %struct.LIST* %4003, i32 0, i32 0
  %4005 = load %union.rec*, %union.rec** %4004, align 8
  store %union.rec* %4005, %union.rec** %y, align 8
  br label %4006

; <label>:4006                                    ; preds = %4016, %3999
  %4007 = load %union.rec*, %union.rec** %y, align 8
  %4008 = bitcast %union.rec* %4007 to %struct.word_type*
  %4009 = getelementptr inbounds %struct.word_type, %struct.word_type* %4008, i32 0, i32 1
  %4010 = bitcast %union.FIRST_UNION* %4009 to %struct.anon*
  %4011 = getelementptr inbounds %struct.anon, %struct.anon* %4010, i32 0, i32 0
  %4012 = load i8, i8* %4011, align 1
  %4013 = zext i8 %4012 to i32
  %4014 = icmp eq i32 %4013, 0
  br i1 %4014, label %4015, label %4023

; <label>:4015                                    ; preds = %4006
  br label %4016

; <label>:4016                                    ; preds = %4015
  %4017 = load %union.rec*, %union.rec** %y, align 8
  %4018 = bitcast %union.rec* %4017 to %struct.word_type*
  %4019 = getelementptr inbounds %struct.word_type, %struct.word_type* %4018, i32 0, i32 0
  %4020 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4019, i32 0, i64 1
  %4021 = getelementptr inbounds %struct.LIST, %struct.LIST* %4020, i32 0, i32 0
  %4022 = load %union.rec*, %union.rec** %4021, align 8
  store %union.rec* %4022, %union.rec** %y, align 8
  br label %4006

; <label>:4023                                    ; preds = %4006
  %4024 = load %union.rec*, %union.rec** %y, align 8
  %4025 = bitcast %union.rec* %4024 to %struct.word_type*
  %4026 = getelementptr inbounds %struct.word_type, %struct.word_type* %4025, i32 0, i32 1
  %4027 = bitcast %union.FIRST_UNION* %4026 to %struct.anon*
  %4028 = getelementptr inbounds %struct.anon, %struct.anon* %4027, i32 0, i32 0
  %4029 = load i8, i8* %4028, align 1
  %4030 = zext i8 %4029 to i32
  %4031 = icmp eq i32 %4030, 1
  br i1 %4031, label %4032, label %4048

; <label>:4032                                    ; preds = %4023
  %4033 = load i32, i32* %jn, align 4
  %4034 = icmp ne i32 %4033, 0
  br i1 %4034, label %4035, label %4045

; <label>:4035                                    ; preds = %4032
  %4036 = load %union.rec*, %union.rec** %y, align 8
  %4037 = bitcast %union.rec* %4036 to %struct.gapobj_type*
  %4038 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %4037, i32 0, i32 3
  %4039 = bitcast %struct.GAP* %4038 to i16*
  %4040 = load i16, i16* %4039, align 4
  %4041 = lshr i16 %4040, 9
  %4042 = and i16 %4041, 1
  %4043 = zext i16 %4042 to i32
  %4044 = icmp ne i32 %4043, 0
  br label %4045

; <label>:4045                                    ; preds = %4035, %4032
  %4046 = phi i1 [ false, %4032 ], [ %4044, %4035 ]
  %4047 = zext i1 %4046 to i32
  store i32 %4047, i32* %jn, align 4
  br label %4083

; <label>:4048                                    ; preds = %4023
  %4049 = load %union.rec*, %union.rec** %y, align 8
  %4050 = bitcast %union.rec* %4049 to %struct.word_type*
  %4051 = getelementptr inbounds %struct.word_type, %struct.word_type* %4050, i32 0, i32 1
  %4052 = bitcast %union.FIRST_UNION* %4051 to %struct.anon*
  %4053 = getelementptr inbounds %struct.anon, %struct.anon* %4052, i32 0, i32 0
  %4054 = load i8, i8* %4053, align 1
  %4055 = zext i8 %4054 to i32
  %4056 = icmp eq i32 %4055, 9
  br i1 %4056, label %4057, label %4061

; <label>:4057                                    ; preds = %4048
  %4058 = load %union.rec*, %union.rec** %y, align 8
  %4059 = call i32 @SplitIsDefinite(%union.rec* %4058)
  %4060 = icmp ne i32 %4059, 0
  br i1 %4060, label %4081, label %4082

; <label>:4061                                    ; preds = %4048
  %4062 = load %union.rec*, %union.rec** %y, align 8
  %4063 = bitcast %union.rec* %4062 to %struct.word_type*
  %4064 = getelementptr inbounds %struct.word_type, %struct.word_type* %4063, i32 0, i32 1
  %4065 = bitcast %union.FIRST_UNION* %4064 to %struct.anon*
  %4066 = getelementptr inbounds %struct.anon, %struct.anon* %4065, i32 0, i32 0
  %4067 = load i8, i8* %4066, align 1
  %4068 = zext i8 %4067 to i32
  %4069 = icmp sge i32 %4068, 9
  br i1 %4069, label %4070, label %4079

; <label>:4070                                    ; preds = %4061
  %4071 = load %union.rec*, %union.rec** %y, align 8
  %4072 = bitcast %union.rec* %4071 to %struct.word_type*
  %4073 = getelementptr inbounds %struct.word_type, %struct.word_type* %4072, i32 0, i32 1
  %4074 = bitcast %union.FIRST_UNION* %4073 to %struct.anon*
  %4075 = getelementptr inbounds %struct.anon, %struct.anon* %4074, i32 0, i32 0
  %4076 = load i8, i8* %4075, align 1
  %4077 = zext i8 %4076 to i32
  %4078 = icmp sle i32 %4077, 99
  br label %4079

; <label>:4079                                    ; preds = %4070, %4061
  %4080 = phi i1 [ false, %4061 ], [ %4078, %4070 ]
  br i1 %4080, label %4081, label %4082

; <label>:4081                                    ; preds = %4079, %4057
  br label %4091

; <label>:4082                                    ; preds = %4079, %4057
  br label %4083

; <label>:4083                                    ; preds = %4082, %4045
  br label %4084

; <label>:4084                                    ; preds = %4083
  %4085 = load %union.rec*, %union.rec** %link, align 8
  %4086 = bitcast %union.rec* %4085 to %struct.word_type*
  %4087 = getelementptr inbounds %struct.word_type, %struct.word_type* %4086, i32 0, i32 0
  %4088 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4087, i32 0, i64 0
  %4089 = getelementptr inbounds %struct.LIST, %struct.LIST* %4088, i32 0, i32 1
  %4090 = load %union.rec*, %union.rec** %4089, align 8
  store %union.rec* %4090, %union.rec** %link, align 8
  br label %3995

; <label>:4091                                    ; preds = %4081, %3995
  %4092 = load %union.rec*, %union.rec** %link, align 8
  %4093 = load %union.rec*, %union.rec** %1, align 8
  %4094 = icmp ne %union.rec* %4092, %4093
  br i1 %4094, label %4095, label %4897

; <label>:4095                                    ; preds = %4091
  %4096 = load i32, i32* %5, align 4
  %4097 = sext i32 %4096 to i64
  %4098 = load %union.rec*, %union.rec** %y, align 8
  %4099 = bitcast %union.rec* %4098 to %struct.word_type*
  %4100 = getelementptr inbounds %struct.word_type, %struct.word_type* %4099, i32 0, i32 3
  %4101 = bitcast %union.THIRD_UNION* %4100 to %struct.anon.6*
  %4102 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4101, i32 0, i32 0
  %4103 = getelementptr inbounds [2 x i32], [2 x i32]* %4102, i32 0, i64 %4097
  %4104 = load i32, i32* %4103, align 4
  store i32 %4104, i32* %b, align 4
  %4105 = load i32, i32* %5, align 4
  %4106 = sext i32 %4105 to i64
  %4107 = load %union.rec*, %union.rec** %y, align 8
  %4108 = bitcast %union.rec* %4107 to %struct.word_type*
  %4109 = getelementptr inbounds %struct.word_type, %struct.word_type* %4108, i32 0, i32 3
  %4110 = bitcast %union.THIRD_UNION* %4109 to %struct.anon.6*
  %4111 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4110, i32 0, i32 1
  %4112 = getelementptr inbounds [2 x i32], [2 x i32]* %4111, i32 0, i64 %4106
  %4113 = load i32, i32* %4112, align 4
  store i32 %4113, i32* %f7, align 4
  %4114 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %4114, %union.rec** %m, align 8
  %4115 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %4115, %union.rec** %start_group, align 8
  %4116 = load i32, i32* %jn, align 4
  %4117 = icmp ne i32 %4116, 0
  %4118 = xor i1 %4117, true
  %4119 = zext i1 %4118 to i32
  store i32 %4119, i32* %dble_found, align 4
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %4120 = load %union.rec*, %union.rec** %link, align 8
  %4121 = bitcast %union.rec* %4120 to %struct.word_type*
  %4122 = getelementptr inbounds %struct.word_type, %struct.word_type* %4121, i32 0, i32 0
  %4123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4122, i32 0, i64 0
  %4124 = getelementptr inbounds %struct.LIST, %struct.LIST* %4123, i32 0, i32 1
  %4125 = load %union.rec*, %union.rec** %4124, align 8
  store %union.rec* %4125, %union.rec** %link, align 8
  br label %4126

; <label>:4126                                    ; preds = %4222, %4095
  %4127 = load %union.rec*, %union.rec** %link, align 8
  %4128 = load %union.rec*, %union.rec** %1, align 8
  %4129 = icmp ne %union.rec* %4127, %4128
  br i1 %4129, label %4130, label %4229

; <label>:4130                                    ; preds = %4126
  %4131 = load %union.rec*, %union.rec** %link, align 8
  %4132 = bitcast %union.rec* %4131 to %struct.word_type*
  %4133 = getelementptr inbounds %struct.word_type, %struct.word_type* %4132, i32 0, i32 0
  %4134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4133, i32 0, i64 1
  %4135 = getelementptr inbounds %struct.LIST, %struct.LIST* %4134, i32 0, i32 0
  %4136 = load %union.rec*, %union.rec** %4135, align 8
  store %union.rec* %4136, %union.rec** %y, align 8
  br label %4137

; <label>:4137                                    ; preds = %4147, %4130
  %4138 = load %union.rec*, %union.rec** %y, align 8
  %4139 = bitcast %union.rec* %4138 to %struct.word_type*
  %4140 = getelementptr inbounds %struct.word_type, %struct.word_type* %4139, i32 0, i32 1
  %4141 = bitcast %union.FIRST_UNION* %4140 to %struct.anon*
  %4142 = getelementptr inbounds %struct.anon, %struct.anon* %4141, i32 0, i32 0
  %4143 = load i8, i8* %4142, align 1
  %4144 = zext i8 %4143 to i32
  %4145 = icmp eq i32 %4144, 0
  br i1 %4145, label %4146, label %4154

; <label>:4146                                    ; preds = %4137
  br label %4147

; <label>:4147                                    ; preds = %4146
  %4148 = load %union.rec*, %union.rec** %y, align 8
  %4149 = bitcast %union.rec* %4148 to %struct.word_type*
  %4150 = getelementptr inbounds %struct.word_type, %struct.word_type* %4149, i32 0, i32 0
  %4151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4150, i32 0, i64 1
  %4152 = getelementptr inbounds %struct.LIST, %struct.LIST* %4151, i32 0, i32 0
  %4153 = load %union.rec*, %union.rec** %4152, align 8
  store %union.rec* %4153, %union.rec** %y, align 8
  br label %4137

; <label>:4154                                    ; preds = %4137
  %4155 = load %union.rec*, %union.rec** %y, align 8
  %4156 = bitcast %union.rec* %4155 to %struct.word_type*
  %4157 = getelementptr inbounds %struct.word_type, %struct.word_type* %4156, i32 0, i32 1
  %4158 = bitcast %union.FIRST_UNION* %4157 to %struct.anon*
  %4159 = getelementptr inbounds %struct.anon, %struct.anon* %4158, i32 0, i32 0
  %4160 = load i8, i8* %4159, align 1
  %4161 = zext i8 %4160 to i32
  %4162 = icmp eq i32 %4161, 1
  br i1 %4162, label %4163, label %4180

; <label>:4163                                    ; preds = %4154
  %4164 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %4164, %union.rec** %g, align 8
  %4165 = load i32, i32* %jn, align 4
  %4166 = icmp ne i32 %4165, 0
  br i1 %4166, label %4167, label %4177

; <label>:4167                                    ; preds = %4163
  %4168 = load %union.rec*, %union.rec** %y, align 8
  %4169 = bitcast %union.rec* %4168 to %struct.gapobj_type*
  %4170 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %4169, i32 0, i32 3
  %4171 = bitcast %struct.GAP* %4170 to i16*
  %4172 = load i16, i16* %4171, align 4
  %4173 = lshr i16 %4172, 9
  %4174 = and i16 %4173, 1
  %4175 = zext i16 %4174 to i32
  %4176 = icmp ne i32 %4175, 0
  br label %4177

; <label>:4177                                    ; preds = %4167, %4163
  %4178 = phi i1 [ false, %4163 ], [ %4176, %4167 ]
  %4179 = zext i1 %4178 to i32
  store i32 %4179, i32* %jn, align 4
  br label %4221

; <label>:4180                                    ; preds = %4154
  %4181 = load %union.rec*, %union.rec** %y, align 8
  %4182 = bitcast %union.rec* %4181 to %struct.word_type*
  %4183 = getelementptr inbounds %struct.word_type, %struct.word_type* %4182, i32 0, i32 1
  %4184 = bitcast %union.FIRST_UNION* %4183 to %struct.anon*
  %4185 = getelementptr inbounds %struct.anon, %struct.anon* %4184, i32 0, i32 0
  %4186 = load i8, i8* %4185, align 1
  %4187 = zext i8 %4186 to i32
  %4188 = icmp eq i32 %4187, 9
  br i1 %4188, label %4189, label %4193

; <label>:4189                                    ; preds = %4180
  %4190 = load %union.rec*, %union.rec** %y, align 8
  %4191 = call i32 @SplitIsDefinite(%union.rec* %4190)
  %4192 = icmp ne i32 %4191, 0
  br i1 %4192, label %4213, label %4220

; <label>:4193                                    ; preds = %4180
  %4194 = load %union.rec*, %union.rec** %y, align 8
  %4195 = bitcast %union.rec* %4194 to %struct.word_type*
  %4196 = getelementptr inbounds %struct.word_type, %struct.word_type* %4195, i32 0, i32 1
  %4197 = bitcast %union.FIRST_UNION* %4196 to %struct.anon*
  %4198 = getelementptr inbounds %struct.anon, %struct.anon* %4197, i32 0, i32 0
  %4199 = load i8, i8* %4198, align 1
  %4200 = zext i8 %4199 to i32
  %4201 = icmp sge i32 %4200, 9
  br i1 %4201, label %4202, label %4211

; <label>:4202                                    ; preds = %4193
  %4203 = load %union.rec*, %union.rec** %y, align 8
  %4204 = bitcast %union.rec* %4203 to %struct.word_type*
  %4205 = getelementptr inbounds %struct.word_type, %struct.word_type* %4204, i32 0, i32 1
  %4206 = bitcast %union.FIRST_UNION* %4205 to %struct.anon*
  %4207 = getelementptr inbounds %struct.anon, %struct.anon* %4206, i32 0, i32 0
  %4208 = load i8, i8* %4207, align 1
  %4209 = zext i8 %4208 to i32
  %4210 = icmp sle i32 %4209, 99
  br label %4211

; <label>:4211                                    ; preds = %4202, %4193
  %4212 = phi i1 [ false, %4193 ], [ %4210, %4202 ]
  br i1 %4212, label %4213, label %4220

; <label>:4213                                    ; preds = %4211, %4189
  %4214 = load %union.rec*, %union.rec** %g, align 8
  %4215 = icmp ne %union.rec* %4214, null
  br i1 %4215, label %4219, label %4216

; <label>:4216                                    ; preds = %4213
  %4217 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4218 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %4217, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %4219

; <label>:4219                                    ; preds = %4216, %4213
  br label %4229

; <label>:4220                                    ; preds = %4211, %4189
  br label %4221

; <label>:4221                                    ; preds = %4220, %4177
  br label %4222

; <label>:4222                                    ; preds = %4221
  %4223 = load %union.rec*, %union.rec** %link, align 8
  %4224 = bitcast %union.rec* %4223 to %struct.word_type*
  %4225 = getelementptr inbounds %struct.word_type, %struct.word_type* %4224, i32 0, i32 0
  %4226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4225, i32 0, i64 0
  %4227 = getelementptr inbounds %struct.LIST, %struct.LIST* %4226, i32 0, i32 1
  %4228 = load %union.rec*, %union.rec** %4227, align 8
  store %union.rec* %4228, %union.rec** %link, align 8
  br label %4126

; <label>:4229                                    ; preds = %4219, %4126
  br label %4230

; <label>:4230                                    ; preds = %4609, %4229
  %4231 = load %union.rec*, %union.rec** %link, align 8
  %4232 = load %union.rec*, %union.rec** %1, align 8
  %4233 = icmp ne %union.rec* %4231, %4232
  br i1 %4233, label %4234, label %4610

; <label>:4234                                    ; preds = %4230
  %4235 = load i32, i32* %jn, align 4
  %4236 = icmp ne i32 %4235, 0
  br i1 %4236, label %4426, label %4237

; <label>:4237                                    ; preds = %4234
  %4238 = load %union.rec*, %union.rec** %m, align 8
  %4239 = load i32, i32* %2, align 4
  %4240 = load i32, i32* %b, align 4
  %4241 = add nsw i32 %4239, %4240
  %4242 = load i32, i32* %b, align 4
  %4243 = load i32, i32* %4, align 4
  %4244 = load i32, i32* %b, align 4
  %4245 = sub nsw i32 %4243, %4244
  %4246 = load i32, i32* %5, align 4
  %4247 = load i32, i32* %7, align 4
  %4248 = load i32, i32* %8, align 4
  %4249 = call %union.rec* @FixAndPrintObject(%union.rec* %4238, i32 %4241, i32 %4242, i32 %4245, i32 %4246, i32 0, i32 %4247, i32 %4248, i32* %aback, i32* %afwd)
  store %union.rec* %4249, %union.rec** %m, align 8
  %4250 = load i32, i32* %5, align 4
  %4251 = sext i32 %4250 to i64
  %4252 = load %union.rec*, %union.rec** %m, align 8
  %4253 = bitcast %union.rec* %4252 to %struct.word_type*
  %4254 = getelementptr inbounds %struct.word_type, %struct.word_type* %4253, i32 0, i32 3
  %4255 = bitcast %union.THIRD_UNION* %4254 to %struct.anon.6*
  %4256 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4255, i32 0, i32 0
  %4257 = getelementptr inbounds [2 x i32], [2 x i32]* %4256, i32 0, i64 %4251
  %4258 = load i32, i32* %4257, align 4
  store i32 %4258, i32* %b, align 4
  %4259 = load i32, i32* %5, align 4
  %4260 = sext i32 %4259 to i64
  %4261 = load %union.rec*, %union.rec** %m, align 8
  %4262 = bitcast %union.rec* %4261 to %struct.word_type*
  %4263 = getelementptr inbounds %struct.word_type, %struct.word_type* %4262, i32 0, i32 3
  %4264 = bitcast %union.THIRD_UNION* %4263 to %struct.anon.6*
  %4265 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4264, i32 0, i32 1
  %4266 = getelementptr inbounds [2 x i32], [2 x i32]* %4265, i32 0, i64 %4260
  %4267 = load i32, i32* %4266, align 4
  store i32 %4267, i32* %f7, align 4
  %4268 = load %union.rec*, %union.rec** %start_group, align 8
  store %union.rec* %4268, %union.rec** %zlink, align 8
  br label %4269

; <label>:4269                                    ; preds = %4385, %4237
  %4270 = load %union.rec*, %union.rec** %zlink, align 8
  %4271 = load %union.rec*, %union.rec** %link, align 8
  %4272 = icmp ne %union.rec* %4270, %4271
  br i1 %4272, label %4273, label %4392

; <label>:4273                                    ; preds = %4269
  %4274 = load %union.rec*, %union.rec** %zlink, align 8
  %4275 = bitcast %union.rec* %4274 to %struct.word_type*
  %4276 = getelementptr inbounds %struct.word_type, %struct.word_type* %4275, i32 0, i32 0
  %4277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4276, i32 0, i64 1
  %4278 = getelementptr inbounds %struct.LIST, %struct.LIST* %4277, i32 0, i32 0
  %4279 = load %union.rec*, %union.rec** %4278, align 8
  store %union.rec* %4279, %union.rec** %z, align 8
  store i32 1, i32* %8, align 4
  br label %4280

; <label>:4280                                    ; preds = %4290, %4273
  %4281 = load %union.rec*, %union.rec** %z, align 8
  %4282 = bitcast %union.rec* %4281 to %struct.word_type*
  %4283 = getelementptr inbounds %struct.word_type, %struct.word_type* %4282, i32 0, i32 1
  %4284 = bitcast %union.FIRST_UNION* %4283 to %struct.anon*
  %4285 = getelementptr inbounds %struct.anon, %struct.anon* %4284, i32 0, i32 0
  %4286 = load i8, i8* %4285, align 1
  %4287 = zext i8 %4286 to i32
  %4288 = icmp eq i32 %4287, 0
  br i1 %4288, label %4289, label %4299

; <label>:4289                                    ; preds = %4280
  br label %4290

; <label>:4290                                    ; preds = %4289
  %4291 = load %union.rec*, %union.rec** %z, align 8
  %4292 = bitcast %union.rec* %4291 to %struct.word_type*
  %4293 = getelementptr inbounds %struct.word_type, %struct.word_type* %4292, i32 0, i32 0
  %4294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4293, i32 0, i64 1
  %4295 = getelementptr inbounds %struct.LIST, %struct.LIST* %4294, i32 0, i32 0
  %4296 = load %union.rec*, %union.rec** %4295, align 8
  store %union.rec* %4296, %union.rec** %z, align 8
  %4297 = load i32, i32* %8, align 4
  %4298 = add nsw i32 %4297, 1
  store i32 %4298, i32* %8, align 4
  br label %4280

; <label>:4299                                    ; preds = %4280
  %4300 = load %union.rec*, %union.rec** %z, align 8
  %4301 = bitcast %union.rec* %4300 to %struct.word_type*
  %4302 = getelementptr inbounds %struct.word_type, %struct.word_type* %4301, i32 0, i32 1
  %4303 = bitcast %union.FIRST_UNION* %4302 to %struct.anon*
  %4304 = getelementptr inbounds %struct.anon, %struct.anon* %4303, i32 0, i32 0
  %4305 = load i8, i8* %4304, align 1
  %4306 = zext i8 %4305 to i32
  %4307 = icmp sge i32 %4306, 9
  br i1 %4307, label %4308, label %4321

; <label>:4308                                    ; preds = %4299
  %4309 = load %union.rec*, %union.rec** %z, align 8
  %4310 = bitcast %union.rec* %4309 to %struct.word_type*
  %4311 = getelementptr inbounds %struct.word_type, %struct.word_type* %4310, i32 0, i32 1
  %4312 = bitcast %union.FIRST_UNION* %4311 to %struct.anon*
  %4313 = getelementptr inbounds %struct.anon, %struct.anon* %4312, i32 0, i32 0
  %4314 = load i8, i8* %4313, align 1
  %4315 = zext i8 %4314 to i32
  %4316 = icmp sle i32 %4315, 99
  br i1 %4316, label %4317, label %4321

; <label>:4317                                    ; preds = %4308
  %4318 = load %union.rec*, %union.rec** %z, align 8
  %4319 = load %union.rec*, %union.rec** %m, align 8
  %4320 = icmp eq %union.rec* %4318, %4319
  br i1 %4320, label %4321, label %4322

; <label>:4321                                    ; preds = %4317, %4308, %4299
  br label %4385

; <label>:4322                                    ; preds = %4317
  %4323 = load %union.rec*, %union.rec** %z, align 8
  %4324 = load i32, i32* %2, align 4
  %4325 = load i32, i32* %b, align 4
  %4326 = add nsw i32 %4324, %4325
  %4327 = load i32, i32* %b, align 4
  %4328 = load i32, i32* %4, align 4
  %4329 = load i32, i32* %b, align 4
  %4330 = sub nsw i32 %4328, %4329
  %4331 = load i32, i32* %5, align 4
  %4332 = load i32, i32* %7, align 4
  %4333 = load i32, i32* %8, align 4
  %4334 = call %union.rec* @FixAndPrintObject(%union.rec* %4323, i32 %4326, i32 %4327, i32 %4330, i32 %4331, i32 1, i32 %4332, i32 %4333, i32* %aback, i32* %afwd)
  store %union.rec* %4334, %union.rec** %z, align 8
  %4335 = load i32, i32* %b, align 4
  %4336 = load i32, i32* %5, align 4
  %4337 = sext i32 %4336 to i64
  %4338 = load %union.rec*, %union.rec** %z, align 8
  %4339 = bitcast %union.rec* %4338 to %struct.word_type*
  %4340 = getelementptr inbounds %struct.word_type, %struct.word_type* %4339, i32 0, i32 3
  %4341 = bitcast %union.THIRD_UNION* %4340 to %struct.anon.6*
  %4342 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4341, i32 0, i32 0
  %4343 = getelementptr inbounds [2 x i32], [2 x i32]* %4342, i32 0, i64 %4337
  %4344 = load i32, i32* %4343, align 4
  %4345 = icmp slt i32 %4335, %4344
  br i1 %4345, label %4346, label %4356

; <label>:4346                                    ; preds = %4322
  %4347 = load i32, i32* %5, align 4
  %4348 = sext i32 %4347 to i64
  %4349 = load %union.rec*, %union.rec** %z, align 8
  %4350 = bitcast %union.rec* %4349 to %struct.word_type*
  %4351 = getelementptr inbounds %struct.word_type, %struct.word_type* %4350, i32 0, i32 3
  %4352 = bitcast %union.THIRD_UNION* %4351 to %struct.anon.6*
  %4353 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4352, i32 0, i32 0
  %4354 = getelementptr inbounds [2 x i32], [2 x i32]* %4353, i32 0, i64 %4348
  %4355 = load i32, i32* %4354, align 4
  br label %4358

; <label>:4356                                    ; preds = %4322
  %4357 = load i32, i32* %b, align 4
  br label %4358

; <label>:4358                                    ; preds = %4356, %4346
  %4359 = phi i32 [ %4355, %4346 ], [ %4357, %4356 ]
  store i32 %4359, i32* %b, align 4
  %4360 = load i32, i32* %f7, align 4
  %4361 = load i32, i32* %5, align 4
  %4362 = sext i32 %4361 to i64
  %4363 = load %union.rec*, %union.rec** %z, align 8
  %4364 = bitcast %union.rec* %4363 to %struct.word_type*
  %4365 = getelementptr inbounds %struct.word_type, %struct.word_type* %4364, i32 0, i32 3
  %4366 = bitcast %union.THIRD_UNION* %4365 to %struct.anon.6*
  %4367 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4366, i32 0, i32 1
  %4368 = getelementptr inbounds [2 x i32], [2 x i32]* %4367, i32 0, i64 %4362
  %4369 = load i32, i32* %4368, align 4
  %4370 = icmp slt i32 %4360, %4369
  br i1 %4370, label %4371, label %4381

; <label>:4371                                    ; preds = %4358
  %4372 = load i32, i32* %5, align 4
  %4373 = sext i32 %4372 to i64
  %4374 = load %union.rec*, %union.rec** %z, align 8
  %4375 = bitcast %union.rec* %4374 to %struct.word_type*
  %4376 = getelementptr inbounds %struct.word_type, %struct.word_type* %4375, i32 0, i32 3
  %4377 = bitcast %union.THIRD_UNION* %4376 to %struct.anon.6*
  %4378 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4377, i32 0, i32 1
  %4379 = getelementptr inbounds [2 x i32], [2 x i32]* %4378, i32 0, i64 %4373
  %4380 = load i32, i32* %4379, align 4
  br label %4383

; <label>:4381                                    ; preds = %4358
  %4382 = load i32, i32* %f7, align 4
  br label %4383

; <label>:4383                                    ; preds = %4381, %4371
  %4384 = phi i32 [ %4380, %4371 ], [ %4382, %4381 ]
  store i32 %4384, i32* %f7, align 4
  br label %4385

; <label>:4385                                    ; preds = %4383, %4321
  %4386 = load %union.rec*, %union.rec** %zlink, align 8
  %4387 = bitcast %union.rec* %4386 to %struct.word_type*
  %4388 = getelementptr inbounds %struct.word_type, %struct.word_type* %4387, i32 0, i32 0
  %4389 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4388, i32 0, i64 0
  %4390 = getelementptr inbounds %struct.LIST, %struct.LIST* %4389, i32 0, i32 1
  %4391 = load %union.rec*, %union.rec** %4390, align 8
  store %union.rec* %4391, %union.rec** %zlink, align 8
  br label %4269

; <label>:4392                                    ; preds = %4269
  %4393 = load i32, i32* %dlen, align 4
  %4394 = load i32, i32* %b, align 4
  %4395 = load i32, i32* %f7, align 4
  %4396 = add nsw i32 %4394, %4395
  %4397 = icmp slt i32 %4393, %4396
  br i1 %4397, label %4398, label %4402

; <label>:4398                                    ; preds = %4392
  %4399 = load i32, i32* %b, align 4
  %4400 = load i32, i32* %f7, align 4
  %4401 = add nsw i32 %4399, %4400
  br label %4404

; <label>:4402                                    ; preds = %4392
  %4403 = load i32, i32* %dlen, align 4
  br label %4404

; <label>:4404                                    ; preds = %4402, %4398
  %4405 = phi i32 [ %4401, %4398 ], [ %4403, %4402 ]
  store i32 %4405, i32* %dlen, align 4
  store i32 1, i32* %dble_found, align 4
  store %union.rec* null, %union.rec** %start_group, align 8
  %4406 = load i32, i32* %5, align 4
  %4407 = sext i32 %4406 to i64
  %4408 = load %union.rec*, %union.rec** %y, align 8
  %4409 = bitcast %union.rec* %4408 to %struct.word_type*
  %4410 = getelementptr inbounds %struct.word_type, %struct.word_type* %4409, i32 0, i32 3
  %4411 = bitcast %union.THIRD_UNION* %4410 to %struct.anon.6*
  %4412 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4411, i32 0, i32 0
  %4413 = getelementptr inbounds [2 x i32], [2 x i32]* %4412, i32 0, i64 %4407
  %4414 = load i32, i32* %4413, align 4
  store i32 %4414, i32* %b, align 4
  %4415 = load i32, i32* %5, align 4
  %4416 = sext i32 %4415 to i64
  %4417 = load %union.rec*, %union.rec** %y, align 8
  %4418 = bitcast %union.rec* %4417 to %struct.word_type*
  %4419 = getelementptr inbounds %struct.word_type, %struct.word_type* %4418, i32 0, i32 3
  %4420 = bitcast %union.THIRD_UNION* %4419 to %struct.anon.6*
  %4421 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4420, i32 0, i32 1
  %4422 = getelementptr inbounds [2 x i32], [2 x i32]* %4421, i32 0, i64 %4416
  %4423 = load i32, i32* %4422, align 4
  store i32 %4423, i32* %f7, align 4
  %4424 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %4424, %union.rec** %m, align 8
  %4425 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %4425, %union.rec** %start_group, align 8
  br label %4499

; <label>:4426                                    ; preds = %4234
  %4427 = load i32, i32* %b, align 4
  %4428 = load i32, i32* %5, align 4
  %4429 = sext i32 %4428 to i64
  %4430 = load %union.rec*, %union.rec** %y, align 8
  %4431 = bitcast %union.rec* %4430 to %struct.word_type*
  %4432 = getelementptr inbounds %struct.word_type, %struct.word_type* %4431, i32 0, i32 3
  %4433 = bitcast %union.THIRD_UNION* %4432 to %struct.anon.6*
  %4434 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4433, i32 0, i32 0
  %4435 = getelementptr inbounds [2 x i32], [2 x i32]* %4434, i32 0, i64 %4429
  %4436 = load i32, i32* %4435, align 4
  %4437 = icmp slt i32 %4427, %4436
  br i1 %4437, label %4438, label %4448

; <label>:4438                                    ; preds = %4426
  %4439 = load i32, i32* %5, align 4
  %4440 = sext i32 %4439 to i64
  %4441 = load %union.rec*, %union.rec** %y, align 8
  %4442 = bitcast %union.rec* %4441 to %struct.word_type*
  %4443 = getelementptr inbounds %struct.word_type, %struct.word_type* %4442, i32 0, i32 3
  %4444 = bitcast %union.THIRD_UNION* %4443 to %struct.anon.6*
  %4445 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4444, i32 0, i32 0
  %4446 = getelementptr inbounds [2 x i32], [2 x i32]* %4445, i32 0, i64 %4440
  %4447 = load i32, i32* %4446, align 4
  br label %4450

; <label>:4448                                    ; preds = %4426
  %4449 = load i32, i32* %b, align 4
  br label %4450

; <label>:4450                                    ; preds = %4448, %4438
  %4451 = phi i32 [ %4447, %4438 ], [ %4449, %4448 ]
  store i32 %4451, i32* %b, align 4
  %4452 = load i32, i32* %f7, align 4
  %4453 = load i32, i32* %5, align 4
  %4454 = sext i32 %4453 to i64
  %4455 = load %union.rec*, %union.rec** %y, align 8
  %4456 = bitcast %union.rec* %4455 to %struct.word_type*
  %4457 = getelementptr inbounds %struct.word_type, %struct.word_type* %4456, i32 0, i32 3
  %4458 = bitcast %union.THIRD_UNION* %4457 to %struct.anon.6*
  %4459 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4458, i32 0, i32 1
  %4460 = getelementptr inbounds [2 x i32], [2 x i32]* %4459, i32 0, i64 %4454
  %4461 = load i32, i32* %4460, align 4
  %4462 = icmp slt i32 %4452, %4461
  br i1 %4462, label %4463, label %4473

; <label>:4463                                    ; preds = %4450
  %4464 = load i32, i32* %5, align 4
  %4465 = sext i32 %4464 to i64
  %4466 = load %union.rec*, %union.rec** %y, align 8
  %4467 = bitcast %union.rec* %4466 to %struct.word_type*
  %4468 = getelementptr inbounds %struct.word_type, %struct.word_type* %4467, i32 0, i32 3
  %4469 = bitcast %union.THIRD_UNION* %4468 to %struct.anon.6*
  %4470 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4469, i32 0, i32 1
  %4471 = getelementptr inbounds [2 x i32], [2 x i32]* %4470, i32 0, i64 %4465
  %4472 = load i32, i32* %4471, align 4
  br label %4475

; <label>:4473                                    ; preds = %4450
  %4474 = load i32, i32* %f7, align 4
  br label %4475

; <label>:4475                                    ; preds = %4473, %4463
  %4476 = phi i32 [ %4472, %4463 ], [ %4474, %4473 ]
  store i32 %4476, i32* %f7, align 4
  %4477 = load i32, i32* %5, align 4
  %4478 = sext i32 %4477 to i64
  %4479 = load %union.rec*, %union.rec** %y, align 8
  %4480 = bitcast %union.rec* %4479 to %struct.word_type*
  %4481 = getelementptr inbounds %struct.word_type, %struct.word_type* %4480, i32 0, i32 3
  %4482 = bitcast %union.THIRD_UNION* %4481 to %struct.anon.6*
  %4483 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4482, i32 0, i32 1
  %4484 = getelementptr inbounds [2 x i32], [2 x i32]* %4483, i32 0, i64 %4478
  %4485 = load i32, i32* %4484, align 4
  %4486 = load i32, i32* %5, align 4
  %4487 = sext i32 %4486 to i64
  %4488 = load %union.rec*, %union.rec** %m, align 8
  %4489 = bitcast %union.rec* %4488 to %struct.word_type*
  %4490 = getelementptr inbounds %struct.word_type, %struct.word_type* %4489, i32 0, i32 3
  %4491 = bitcast %union.THIRD_UNION* %4490 to %struct.anon.6*
  %4492 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4491, i32 0, i32 1
  %4493 = getelementptr inbounds [2 x i32], [2 x i32]* %4492, i32 0, i64 %4487
  %4494 = load i32, i32* %4493, align 4
  %4495 = icmp sgt i32 %4485, %4494
  br i1 %4495, label %4496, label %4498

; <label>:4496                                    ; preds = %4475
  %4497 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %4497, %union.rec** %m, align 8
  br label %4498

; <label>:4498                                    ; preds = %4496, %4475
  br label %4499

; <label>:4499                                    ; preds = %4498, %4404
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %4500 = load %union.rec*, %union.rec** %link, align 8
  %4501 = bitcast %union.rec* %4500 to %struct.word_type*
  %4502 = getelementptr inbounds %struct.word_type, %struct.word_type* %4501, i32 0, i32 0
  %4503 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4502, i32 0, i64 0
  %4504 = getelementptr inbounds %struct.LIST, %struct.LIST* %4503, i32 0, i32 1
  %4505 = load %union.rec*, %union.rec** %4504, align 8
  store %union.rec* %4505, %union.rec** %link, align 8
  br label %4506

; <label>:4506                                    ; preds = %4602, %4499
  %4507 = load %union.rec*, %union.rec** %link, align 8
  %4508 = load %union.rec*, %union.rec** %1, align 8
  %4509 = icmp ne %union.rec* %4507, %4508
  br i1 %4509, label %4510, label %4609

; <label>:4510                                    ; preds = %4506
  %4511 = load %union.rec*, %union.rec** %link, align 8
  %4512 = bitcast %union.rec* %4511 to %struct.word_type*
  %4513 = getelementptr inbounds %struct.word_type, %struct.word_type* %4512, i32 0, i32 0
  %4514 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4513, i32 0, i64 1
  %4515 = getelementptr inbounds %struct.LIST, %struct.LIST* %4514, i32 0, i32 0
  %4516 = load %union.rec*, %union.rec** %4515, align 8
  store %union.rec* %4516, %union.rec** %y, align 8
  br label %4517

; <label>:4517                                    ; preds = %4527, %4510
  %4518 = load %union.rec*, %union.rec** %y, align 8
  %4519 = bitcast %union.rec* %4518 to %struct.word_type*
  %4520 = getelementptr inbounds %struct.word_type, %struct.word_type* %4519, i32 0, i32 1
  %4521 = bitcast %union.FIRST_UNION* %4520 to %struct.anon*
  %4522 = getelementptr inbounds %struct.anon, %struct.anon* %4521, i32 0, i32 0
  %4523 = load i8, i8* %4522, align 1
  %4524 = zext i8 %4523 to i32
  %4525 = icmp eq i32 %4524, 0
  br i1 %4525, label %4526, label %4534

; <label>:4526                                    ; preds = %4517
  br label %4527

; <label>:4527                                    ; preds = %4526
  %4528 = load %union.rec*, %union.rec** %y, align 8
  %4529 = bitcast %union.rec* %4528 to %struct.word_type*
  %4530 = getelementptr inbounds %struct.word_type, %struct.word_type* %4529, i32 0, i32 0
  %4531 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4530, i32 0, i64 1
  %4532 = getelementptr inbounds %struct.LIST, %struct.LIST* %4531, i32 0, i32 0
  %4533 = load %union.rec*, %union.rec** %4532, align 8
  store %union.rec* %4533, %union.rec** %y, align 8
  br label %4517

; <label>:4534                                    ; preds = %4517
  %4535 = load %union.rec*, %union.rec** %y, align 8
  %4536 = bitcast %union.rec* %4535 to %struct.word_type*
  %4537 = getelementptr inbounds %struct.word_type, %struct.word_type* %4536, i32 0, i32 1
  %4538 = bitcast %union.FIRST_UNION* %4537 to %struct.anon*
  %4539 = getelementptr inbounds %struct.anon, %struct.anon* %4538, i32 0, i32 0
  %4540 = load i8, i8* %4539, align 1
  %4541 = zext i8 %4540 to i32
  %4542 = icmp eq i32 %4541, 1
  br i1 %4542, label %4543, label %4560

; <label>:4543                                    ; preds = %4534
  %4544 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %4544, %union.rec** %g, align 8
  %4545 = load i32, i32* %jn, align 4
  %4546 = icmp ne i32 %4545, 0
  br i1 %4546, label %4547, label %4557

; <label>:4547                                    ; preds = %4543
  %4548 = load %union.rec*, %union.rec** %y, align 8
  %4549 = bitcast %union.rec* %4548 to %struct.gapobj_type*
  %4550 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %4549, i32 0, i32 3
  %4551 = bitcast %struct.GAP* %4550 to i16*
  %4552 = load i16, i16* %4551, align 4
  %4553 = lshr i16 %4552, 9
  %4554 = and i16 %4553, 1
  %4555 = zext i16 %4554 to i32
  %4556 = icmp ne i32 %4555, 0
  br label %4557

; <label>:4557                                    ; preds = %4547, %4543
  %4558 = phi i1 [ false, %4543 ], [ %4556, %4547 ]
  %4559 = zext i1 %4558 to i32
  store i32 %4559, i32* %jn, align 4
  br label %4601

; <label>:4560                                    ; preds = %4534
  %4561 = load %union.rec*, %union.rec** %y, align 8
  %4562 = bitcast %union.rec* %4561 to %struct.word_type*
  %4563 = getelementptr inbounds %struct.word_type, %struct.word_type* %4562, i32 0, i32 1
  %4564 = bitcast %union.FIRST_UNION* %4563 to %struct.anon*
  %4565 = getelementptr inbounds %struct.anon, %struct.anon* %4564, i32 0, i32 0
  %4566 = load i8, i8* %4565, align 1
  %4567 = zext i8 %4566 to i32
  %4568 = icmp eq i32 %4567, 9
  br i1 %4568, label %4569, label %4573

; <label>:4569                                    ; preds = %4560
  %4570 = load %union.rec*, %union.rec** %y, align 8
  %4571 = call i32 @SplitIsDefinite(%union.rec* %4570)
  %4572 = icmp ne i32 %4571, 0
  br i1 %4572, label %4593, label %4600

; <label>:4573                                    ; preds = %4560
  %4574 = load %union.rec*, %union.rec** %y, align 8
  %4575 = bitcast %union.rec* %4574 to %struct.word_type*
  %4576 = getelementptr inbounds %struct.word_type, %struct.word_type* %4575, i32 0, i32 1
  %4577 = bitcast %union.FIRST_UNION* %4576 to %struct.anon*
  %4578 = getelementptr inbounds %struct.anon, %struct.anon* %4577, i32 0, i32 0
  %4579 = load i8, i8* %4578, align 1
  %4580 = zext i8 %4579 to i32
  %4581 = icmp sge i32 %4580, 9
  br i1 %4581, label %4582, label %4591

; <label>:4582                                    ; preds = %4573
  %4583 = load %union.rec*, %union.rec** %y, align 8
  %4584 = bitcast %union.rec* %4583 to %struct.word_type*
  %4585 = getelementptr inbounds %struct.word_type, %struct.word_type* %4584, i32 0, i32 1
  %4586 = bitcast %union.FIRST_UNION* %4585 to %struct.anon*
  %4587 = getelementptr inbounds %struct.anon, %struct.anon* %4586, i32 0, i32 0
  %4588 = load i8, i8* %4587, align 1
  %4589 = zext i8 %4588 to i32
  %4590 = icmp sle i32 %4589, 99
  br label %4591

; <label>:4591                                    ; preds = %4582, %4573
  %4592 = phi i1 [ false, %4573 ], [ %4590, %4582 ]
  br i1 %4592, label %4593, label %4600

; <label>:4593                                    ; preds = %4591, %4569
  %4594 = load %union.rec*, %union.rec** %g, align 8
  %4595 = icmp ne %union.rec* %4594, null
  br i1 %4595, label %4599, label %4596

; <label>:4596                                    ; preds = %4593
  %4597 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4598 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %4597, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %4599

; <label>:4599                                    ; preds = %4596, %4593
  br label %4609

; <label>:4600                                    ; preds = %4591, %4569
  br label %4601

; <label>:4601                                    ; preds = %4600, %4557
  br label %4602

; <label>:4602                                    ; preds = %4601
  %4603 = load %union.rec*, %union.rec** %link, align 8
  %4604 = bitcast %union.rec* %4603 to %struct.word_type*
  %4605 = getelementptr inbounds %struct.word_type, %struct.word_type* %4604, i32 0, i32 0
  %4606 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4605, i32 0, i64 0
  %4607 = getelementptr inbounds %struct.LIST, %struct.LIST* %4606, i32 0, i32 1
  %4608 = load %union.rec*, %union.rec** %4607, align 8
  store %union.rec* %4608, %union.rec** %link, align 8
  br label %4506

; <label>:4609                                    ; preds = %4599, %4506
  br label %4230

; <label>:4610                                    ; preds = %4230
  %4611 = load %union.rec*, %union.rec** %start_group, align 8
  %4612 = icmp ne %union.rec* %4611, null
  br i1 %4612, label %4616, label %4613

; <label>:4613                                    ; preds = %4610
  %4614 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4615 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %4614, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0))
  br label %4616

; <label>:4616                                    ; preds = %4613, %4610
  %4617 = load i32, i32* %dble_found, align 4
  %4618 = icmp ne i32 %4617, 0
  br i1 %4618, label %4622, label %4619

; <label>:4619                                    ; preds = %4616
  %4620 = load i32, i32* %jn, align 4
  %4621 = icmp ne i32 %4620, 0
  br i1 %4621, label %4794, label %4622

; <label>:4622                                    ; preds = %4619, %4616
  %4623 = load %union.rec*, %union.rec** %m, align 8
  %4624 = load i32, i32* %2, align 4
  %4625 = load i32, i32* %b, align 4
  %4626 = add nsw i32 %4624, %4625
  %4627 = load i32, i32* %b, align 4
  %4628 = load i32, i32* %4, align 4
  %4629 = load i32, i32* %b, align 4
  %4630 = sub nsw i32 %4628, %4629
  %4631 = load i32, i32* %5, align 4
  %4632 = load i32, i32* %7, align 4
  %4633 = load i32, i32* %8, align 4
  %4634 = call %union.rec* @FixAndPrintObject(%union.rec* %4623, i32 %4626, i32 %4627, i32 %4630, i32 %4631, i32 0, i32 %4632, i32 %4633, i32* %aback, i32* %afwd)
  store %union.rec* %4634, %union.rec** %m, align 8
  %4635 = load i32, i32* %5, align 4
  %4636 = sext i32 %4635 to i64
  %4637 = load %union.rec*, %union.rec** %m, align 8
  %4638 = bitcast %union.rec* %4637 to %struct.word_type*
  %4639 = getelementptr inbounds %struct.word_type, %struct.word_type* %4638, i32 0, i32 3
  %4640 = bitcast %union.THIRD_UNION* %4639 to %struct.anon.6*
  %4641 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4640, i32 0, i32 0
  %4642 = getelementptr inbounds [2 x i32], [2 x i32]* %4641, i32 0, i64 %4636
  %4643 = load i32, i32* %4642, align 4
  store i32 %4643, i32* %b, align 4
  %4644 = load i32, i32* %5, align 4
  %4645 = sext i32 %4644 to i64
  %4646 = load %union.rec*, %union.rec** %m, align 8
  %4647 = bitcast %union.rec* %4646 to %struct.word_type*
  %4648 = getelementptr inbounds %struct.word_type, %struct.word_type* %4647, i32 0, i32 3
  %4649 = bitcast %union.THIRD_UNION* %4648 to %struct.anon.6*
  %4650 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4649, i32 0, i32 1
  %4651 = getelementptr inbounds [2 x i32], [2 x i32]* %4650, i32 0, i64 %4645
  %4652 = load i32, i32* %4651, align 4
  store i32 %4652, i32* %f7, align 4
  %4653 = load %union.rec*, %union.rec** %start_group, align 8
  store %union.rec* %4653, %union.rec** %zlink, align 8
  br label %4654

; <label>:4654                                    ; preds = %4770, %4622
  %4655 = load %union.rec*, %union.rec** %zlink, align 8
  %4656 = load %union.rec*, %union.rec** %1, align 8
  %4657 = icmp ne %union.rec* %4655, %4656
  br i1 %4657, label %4658, label %4777

; <label>:4658                                    ; preds = %4654
  %4659 = load %union.rec*, %union.rec** %zlink, align 8
  %4660 = bitcast %union.rec* %4659 to %struct.word_type*
  %4661 = getelementptr inbounds %struct.word_type, %struct.word_type* %4660, i32 0, i32 0
  %4662 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4661, i32 0, i64 1
  %4663 = getelementptr inbounds %struct.LIST, %struct.LIST* %4662, i32 0, i32 0
  %4664 = load %union.rec*, %union.rec** %4663, align 8
  store %union.rec* %4664, %union.rec** %z, align 8
  store i32 1, i32* %8, align 4
  br label %4665

; <label>:4665                                    ; preds = %4675, %4658
  %4666 = load %union.rec*, %union.rec** %z, align 8
  %4667 = bitcast %union.rec* %4666 to %struct.word_type*
  %4668 = getelementptr inbounds %struct.word_type, %struct.word_type* %4667, i32 0, i32 1
  %4669 = bitcast %union.FIRST_UNION* %4668 to %struct.anon*
  %4670 = getelementptr inbounds %struct.anon, %struct.anon* %4669, i32 0, i32 0
  %4671 = load i8, i8* %4670, align 1
  %4672 = zext i8 %4671 to i32
  %4673 = icmp eq i32 %4672, 0
  br i1 %4673, label %4674, label %4684

; <label>:4674                                    ; preds = %4665
  br label %4675

; <label>:4675                                    ; preds = %4674
  %4676 = load %union.rec*, %union.rec** %z, align 8
  %4677 = bitcast %union.rec* %4676 to %struct.word_type*
  %4678 = getelementptr inbounds %struct.word_type, %struct.word_type* %4677, i32 0, i32 0
  %4679 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4678, i32 0, i64 1
  %4680 = getelementptr inbounds %struct.LIST, %struct.LIST* %4679, i32 0, i32 0
  %4681 = load %union.rec*, %union.rec** %4680, align 8
  store %union.rec* %4681, %union.rec** %z, align 8
  %4682 = load i32, i32* %8, align 4
  %4683 = add nsw i32 %4682, 1
  store i32 %4683, i32* %8, align 4
  br label %4665

; <label>:4684                                    ; preds = %4665
  %4685 = load %union.rec*, %union.rec** %z, align 8
  %4686 = bitcast %union.rec* %4685 to %struct.word_type*
  %4687 = getelementptr inbounds %struct.word_type, %struct.word_type* %4686, i32 0, i32 1
  %4688 = bitcast %union.FIRST_UNION* %4687 to %struct.anon*
  %4689 = getelementptr inbounds %struct.anon, %struct.anon* %4688, i32 0, i32 0
  %4690 = load i8, i8* %4689, align 1
  %4691 = zext i8 %4690 to i32
  %4692 = icmp sge i32 %4691, 9
  br i1 %4692, label %4693, label %4706

; <label>:4693                                    ; preds = %4684
  %4694 = load %union.rec*, %union.rec** %z, align 8
  %4695 = bitcast %union.rec* %4694 to %struct.word_type*
  %4696 = getelementptr inbounds %struct.word_type, %struct.word_type* %4695, i32 0, i32 1
  %4697 = bitcast %union.FIRST_UNION* %4696 to %struct.anon*
  %4698 = getelementptr inbounds %struct.anon, %struct.anon* %4697, i32 0, i32 0
  %4699 = load i8, i8* %4698, align 1
  %4700 = zext i8 %4699 to i32
  %4701 = icmp sle i32 %4700, 99
  br i1 %4701, label %4702, label %4706

; <label>:4702                                    ; preds = %4693
  %4703 = load %union.rec*, %union.rec** %z, align 8
  %4704 = load %union.rec*, %union.rec** %m, align 8
  %4705 = icmp eq %union.rec* %4703, %4704
  br i1 %4705, label %4706, label %4707

; <label>:4706                                    ; preds = %4702, %4693, %4684
  br label %4770

; <label>:4707                                    ; preds = %4702
  %4708 = load %union.rec*, %union.rec** %z, align 8
  %4709 = load i32, i32* %2, align 4
  %4710 = load i32, i32* %b, align 4
  %4711 = add nsw i32 %4709, %4710
  %4712 = load i32, i32* %b, align 4
  %4713 = load i32, i32* %4, align 4
  %4714 = load i32, i32* %b, align 4
  %4715 = sub nsw i32 %4713, %4714
  %4716 = load i32, i32* %5, align 4
  %4717 = load i32, i32* %7, align 4
  %4718 = load i32, i32* %8, align 4
  %4719 = call %union.rec* @FixAndPrintObject(%union.rec* %4708, i32 %4711, i32 %4712, i32 %4715, i32 %4716, i32 1, i32 %4717, i32 %4718, i32* %aback, i32* %afwd)
  store %union.rec* %4719, %union.rec** %z, align 8
  %4720 = load i32, i32* %b, align 4
  %4721 = load i32, i32* %5, align 4
  %4722 = sext i32 %4721 to i64
  %4723 = load %union.rec*, %union.rec** %z, align 8
  %4724 = bitcast %union.rec* %4723 to %struct.word_type*
  %4725 = getelementptr inbounds %struct.word_type, %struct.word_type* %4724, i32 0, i32 3
  %4726 = bitcast %union.THIRD_UNION* %4725 to %struct.anon.6*
  %4727 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4726, i32 0, i32 0
  %4728 = getelementptr inbounds [2 x i32], [2 x i32]* %4727, i32 0, i64 %4722
  %4729 = load i32, i32* %4728, align 4
  %4730 = icmp slt i32 %4720, %4729
  br i1 %4730, label %4731, label %4741

; <label>:4731                                    ; preds = %4707
  %4732 = load i32, i32* %5, align 4
  %4733 = sext i32 %4732 to i64
  %4734 = load %union.rec*, %union.rec** %z, align 8
  %4735 = bitcast %union.rec* %4734 to %struct.word_type*
  %4736 = getelementptr inbounds %struct.word_type, %struct.word_type* %4735, i32 0, i32 3
  %4737 = bitcast %union.THIRD_UNION* %4736 to %struct.anon.6*
  %4738 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4737, i32 0, i32 0
  %4739 = getelementptr inbounds [2 x i32], [2 x i32]* %4738, i32 0, i64 %4733
  %4740 = load i32, i32* %4739, align 4
  br label %4743

; <label>:4741                                    ; preds = %4707
  %4742 = load i32, i32* %b, align 4
  br label %4743

; <label>:4743                                    ; preds = %4741, %4731
  %4744 = phi i32 [ %4740, %4731 ], [ %4742, %4741 ]
  store i32 %4744, i32* %b, align 4
  %4745 = load i32, i32* %f7, align 4
  %4746 = load i32, i32* %5, align 4
  %4747 = sext i32 %4746 to i64
  %4748 = load %union.rec*, %union.rec** %z, align 8
  %4749 = bitcast %union.rec* %4748 to %struct.word_type*
  %4750 = getelementptr inbounds %struct.word_type, %struct.word_type* %4749, i32 0, i32 3
  %4751 = bitcast %union.THIRD_UNION* %4750 to %struct.anon.6*
  %4752 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4751, i32 0, i32 1
  %4753 = getelementptr inbounds [2 x i32], [2 x i32]* %4752, i32 0, i64 %4747
  %4754 = load i32, i32* %4753, align 4
  %4755 = icmp slt i32 %4745, %4754
  br i1 %4755, label %4756, label %4766

; <label>:4756                                    ; preds = %4743
  %4757 = load i32, i32* %5, align 4
  %4758 = sext i32 %4757 to i64
  %4759 = load %union.rec*, %union.rec** %z, align 8
  %4760 = bitcast %union.rec* %4759 to %struct.word_type*
  %4761 = getelementptr inbounds %struct.word_type, %struct.word_type* %4760, i32 0, i32 3
  %4762 = bitcast %union.THIRD_UNION* %4761 to %struct.anon.6*
  %4763 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4762, i32 0, i32 1
  %4764 = getelementptr inbounds [2 x i32], [2 x i32]* %4763, i32 0, i64 %4758
  %4765 = load i32, i32* %4764, align 4
  br label %4768

; <label>:4766                                    ; preds = %4743
  %4767 = load i32, i32* %f7, align 4
  br label %4768

; <label>:4768                                    ; preds = %4766, %4756
  %4769 = phi i32 [ %4765, %4756 ], [ %4767, %4766 ]
  store i32 %4769, i32* %f7, align 4
  br label %4770

; <label>:4770                                    ; preds = %4768, %4706
  %4771 = load %union.rec*, %union.rec** %zlink, align 8
  %4772 = bitcast %union.rec* %4771 to %struct.word_type*
  %4773 = getelementptr inbounds %struct.word_type, %struct.word_type* %4772, i32 0, i32 0
  %4774 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4773, i32 0, i64 0
  %4775 = getelementptr inbounds %struct.LIST, %struct.LIST* %4774, i32 0, i32 1
  %4776 = load %union.rec*, %union.rec** %4775, align 8
  store %union.rec* %4776, %union.rec** %zlink, align 8
  br label %4654

; <label>:4777                                    ; preds = %4654
  %4778 = load i32, i32* %dlen, align 4
  %4779 = load i32, i32* %b, align 4
  %4780 = load i32, i32* %f7, align 4
  %4781 = add nsw i32 %4779, %4780
  %4782 = icmp slt i32 %4778, %4781
  br i1 %4782, label %4783, label %4787

; <label>:4783                                    ; preds = %4777
  %4784 = load i32, i32* %b, align 4
  %4785 = load i32, i32* %f7, align 4
  %4786 = add nsw i32 %4784, %4785
  br label %4789

; <label>:4787                                    ; preds = %4777
  %4788 = load i32, i32* %dlen, align 4
  br label %4789

; <label>:4789                                    ; preds = %4787, %4783
  %4790 = phi i32 [ %4786, %4783 ], [ %4788, %4787 ]
  store i32 %4790, i32* %dlen, align 4
  %4791 = load i32*, i32** %9, align 8
  store i32 0, i32* %4791, align 4
  %4792 = load i32, i32* %dlen, align 4
  %4793 = load i32*, i32** %10, align 8
  store i32 %4792, i32* %4793, align 4
  br label %4896

; <label>:4794                                    ; preds = %4619
  %4795 = load %union.rec*, %union.rec** %m, align 8
  %4796 = load i32, i32* %2, align 4
  %4797 = load i32, i32* %3, align 4
  %4798 = load i32, i32* %4, align 4
  %4799 = load i32, i32* %5, align 4
  %4800 = load i32, i32* %7, align 4
  %4801 = load i32, i32* %8, align 4
  %4802 = call %union.rec* @FixAndPrintObject(%union.rec* %4795, i32 %4796, i32 %4797, i32 %4798, i32 %4799, i32 0, i32 %4800, i32 %4801, i32* %b, i32* %f7)
  store %union.rec* %4802, %union.rec** %m, align 8
  %4803 = load %union.rec*, %union.rec** %start_group, align 8
  store %union.rec* %4803, %union.rec** %zlink, align 8
  br label %4804

; <label>:4804                                    ; preds = %4884, %4794
  %4805 = load %union.rec*, %union.rec** %zlink, align 8
  %4806 = load %union.rec*, %union.rec** %1, align 8
  %4807 = icmp ne %union.rec* %4805, %4806
  br i1 %4807, label %4808, label %4891

; <label>:4808                                    ; preds = %4804
  %4809 = load %union.rec*, %union.rec** %zlink, align 8
  %4810 = bitcast %union.rec* %4809 to %struct.word_type*
  %4811 = getelementptr inbounds %struct.word_type, %struct.word_type* %4810, i32 0, i32 0
  %4812 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4811, i32 0, i64 1
  %4813 = getelementptr inbounds %struct.LIST, %struct.LIST* %4812, i32 0, i32 0
  %4814 = load %union.rec*, %union.rec** %4813, align 8
  store %union.rec* %4814, %union.rec** %z, align 8
  store i32 1, i32* %8, align 4
  br label %4815

; <label>:4815                                    ; preds = %4825, %4808
  %4816 = load %union.rec*, %union.rec** %z, align 8
  %4817 = bitcast %union.rec* %4816 to %struct.word_type*
  %4818 = getelementptr inbounds %struct.word_type, %struct.word_type* %4817, i32 0, i32 1
  %4819 = bitcast %union.FIRST_UNION* %4818 to %struct.anon*
  %4820 = getelementptr inbounds %struct.anon, %struct.anon* %4819, i32 0, i32 0
  %4821 = load i8, i8* %4820, align 1
  %4822 = zext i8 %4821 to i32
  %4823 = icmp eq i32 %4822, 0
  br i1 %4823, label %4824, label %4834

; <label>:4824                                    ; preds = %4815
  br label %4825

; <label>:4825                                    ; preds = %4824
  %4826 = load %union.rec*, %union.rec** %z, align 8
  %4827 = bitcast %union.rec* %4826 to %struct.word_type*
  %4828 = getelementptr inbounds %struct.word_type, %struct.word_type* %4827, i32 0, i32 0
  %4829 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4828, i32 0, i64 1
  %4830 = getelementptr inbounds %struct.LIST, %struct.LIST* %4829, i32 0, i32 0
  %4831 = load %union.rec*, %union.rec** %4830, align 8
  store %union.rec* %4831, %union.rec** %z, align 8
  %4832 = load i32, i32* %8, align 4
  %4833 = add nsw i32 %4832, 1
  store i32 %4833, i32* %8, align 4
  br label %4815

; <label>:4834                                    ; preds = %4815
  %4835 = load %union.rec*, %union.rec** %z, align 8
  %4836 = bitcast %union.rec* %4835 to %struct.word_type*
  %4837 = getelementptr inbounds %struct.word_type, %struct.word_type* %4836, i32 0, i32 1
  %4838 = bitcast %union.FIRST_UNION* %4837 to %struct.anon*
  %4839 = getelementptr inbounds %struct.anon, %struct.anon* %4838, i32 0, i32 0
  %4840 = load i8, i8* %4839, align 1
  %4841 = zext i8 %4840 to i32
  %4842 = icmp sge i32 %4841, 9
  br i1 %4842, label %4843, label %4856

; <label>:4843                                    ; preds = %4834
  %4844 = load %union.rec*, %union.rec** %z, align 8
  %4845 = bitcast %union.rec* %4844 to %struct.word_type*
  %4846 = getelementptr inbounds %struct.word_type, %struct.word_type* %4845, i32 0, i32 1
  %4847 = bitcast %union.FIRST_UNION* %4846 to %struct.anon*
  %4848 = getelementptr inbounds %struct.anon, %struct.anon* %4847, i32 0, i32 0
  %4849 = load i8, i8* %4848, align 1
  %4850 = zext i8 %4849 to i32
  %4851 = icmp sle i32 %4850, 99
  br i1 %4851, label %4852, label %4856

; <label>:4852                                    ; preds = %4843
  %4853 = load %union.rec*, %union.rec** %z, align 8
  %4854 = load %union.rec*, %union.rec** %m, align 8
  %4855 = icmp eq %union.rec* %4853, %4854
  br i1 %4855, label %4856, label %4857

; <label>:4856                                    ; preds = %4852, %4843, %4834
  br label %4884

; <label>:4857                                    ; preds = %4852
  %4858 = load %union.rec*, %union.rec** %z, align 8
  %4859 = load i32, i32* %2, align 4
  %4860 = load i32, i32* %3, align 4
  %4861 = load i32, i32* %4, align 4
  %4862 = load i32, i32* %5, align 4
  %4863 = load i32, i32* %7, align 4
  %4864 = load i32, i32* %8, align 4
  %4865 = call %union.rec* @FixAndPrintObject(%union.rec* %4858, i32 %4859, i32 %4860, i32 %4861, i32 %4862, i32 1, i32 %4863, i32 %4864, i32* %aback, i32* %afwd)
  store %union.rec* %4865, %union.rec** %z, align 8
  %4866 = load i32, i32* %b, align 4
  %4867 = load i32, i32* %aback, align 4
  %4868 = icmp slt i32 %4866, %4867
  br i1 %4868, label %4869, label %4871

; <label>:4869                                    ; preds = %4857
  %4870 = load i32, i32* %aback, align 4
  br label %4873

; <label>:4871                                    ; preds = %4857
  %4872 = load i32, i32* %b, align 4
  br label %4873

; <label>:4873                                    ; preds = %4871, %4869
  %4874 = phi i32 [ %4870, %4869 ], [ %4872, %4871 ]
  store i32 %4874, i32* %b, align 4
  %4875 = load i32, i32* %f7, align 4
  %4876 = load i32, i32* %afwd, align 4
  %4877 = icmp slt i32 %4875, %4876
  br i1 %4877, label %4878, label %4880

; <label>:4878                                    ; preds = %4873
  %4879 = load i32, i32* %afwd, align 4
  br label %4882

; <label>:4880                                    ; preds = %4873
  %4881 = load i32, i32* %f7, align 4
  br label %4882

; <label>:4882                                    ; preds = %4880, %4878
  %4883 = phi i32 [ %4879, %4878 ], [ %4881, %4880 ]
  store i32 %4883, i32* %f7, align 4
  br label %4884

; <label>:4884                                    ; preds = %4882, %4856
  %4885 = load %union.rec*, %union.rec** %zlink, align 8
  %4886 = bitcast %union.rec* %4885 to %struct.word_type*
  %4887 = getelementptr inbounds %struct.word_type, %struct.word_type* %4886, i32 0, i32 0
  %4888 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4887, i32 0, i64 0
  %4889 = getelementptr inbounds %struct.LIST, %struct.LIST* %4888, i32 0, i32 1
  %4890 = load %union.rec*, %union.rec** %4889, align 8
  store %union.rec* %4890, %union.rec** %zlink, align 8
  br label %4804

; <label>:4891                                    ; preds = %4804
  %4892 = load i32, i32* %b, align 4
  %4893 = load i32*, i32** %9, align 8
  store i32 %4892, i32* %4893, align 4
  %4894 = load i32, i32* %f7, align 4
  %4895 = load i32*, i32** %10, align 8
  store i32 %4894, i32* %4895, align 4
  br label %4896

; <label>:4896                                    ; preds = %4891, %4789
  br label %4897

; <label>:4897                                    ; preds = %4896, %4091
  br label %4898

; <label>:4898                                    ; preds = %4897, %3987
  br label %8231

; <label>:4899                                    ; preds = %0
  %4900 = load i32, i32* %5, align 4
  %4901 = icmp eq i32 %4900, 0
  br i1 %4901, label %4902, label %7458

; <label>:4902                                    ; preds = %4899
  store i32 1, i32* %jn, align 4
  %4903 = load %union.rec*, %union.rec** %1, align 8
  %4904 = bitcast %union.rec* %4903 to %struct.word_type*
  %4905 = getelementptr inbounds %struct.word_type, %struct.word_type* %4904, i32 0, i32 0
  %4906 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4905, i32 0, i64 0
  %4907 = getelementptr inbounds %struct.LIST, %struct.LIST* %4906, i32 0, i32 1
  %4908 = load %union.rec*, %union.rec** %4907, align 8
  store %union.rec* %4908, %union.rec** %link, align 8
  br label %4909

; <label>:4909                                    ; preds = %4998, %4902
  %4910 = load %union.rec*, %union.rec** %link, align 8
  %4911 = load %union.rec*, %union.rec** %1, align 8
  %4912 = icmp ne %union.rec* %4910, %4911
  br i1 %4912, label %4913, label %5005

; <label>:4913                                    ; preds = %4909
  %4914 = load %union.rec*, %union.rec** %link, align 8
  %4915 = bitcast %union.rec* %4914 to %struct.word_type*
  %4916 = getelementptr inbounds %struct.word_type, %struct.word_type* %4915, i32 0, i32 0
  %4917 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4916, i32 0, i64 1
  %4918 = getelementptr inbounds %struct.LIST, %struct.LIST* %4917, i32 0, i32 0
  %4919 = load %union.rec*, %union.rec** %4918, align 8
  store %union.rec* %4919, %union.rec** %y, align 8
  br label %4920

; <label>:4920                                    ; preds = %4930, %4913
  %4921 = load %union.rec*, %union.rec** %y, align 8
  %4922 = bitcast %union.rec* %4921 to %struct.word_type*
  %4923 = getelementptr inbounds %struct.word_type, %struct.word_type* %4922, i32 0, i32 1
  %4924 = bitcast %union.FIRST_UNION* %4923 to %struct.anon*
  %4925 = getelementptr inbounds %struct.anon, %struct.anon* %4924, i32 0, i32 0
  %4926 = load i8, i8* %4925, align 1
  %4927 = zext i8 %4926 to i32
  %4928 = icmp eq i32 %4927, 0
  br i1 %4928, label %4929, label %4937

; <label>:4929                                    ; preds = %4920
  br label %4930

; <label>:4930                                    ; preds = %4929
  %4931 = load %union.rec*, %union.rec** %y, align 8
  %4932 = bitcast %union.rec* %4931 to %struct.word_type*
  %4933 = getelementptr inbounds %struct.word_type, %struct.word_type* %4932, i32 0, i32 0
  %4934 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4933, i32 0, i64 1
  %4935 = getelementptr inbounds %struct.LIST, %struct.LIST* %4934, i32 0, i32 0
  %4936 = load %union.rec*, %union.rec** %4935, align 8
  store %union.rec* %4936, %union.rec** %y, align 8
  br label %4920

; <label>:4937                                    ; preds = %4920
  %4938 = load %union.rec*, %union.rec** %y, align 8
  %4939 = bitcast %union.rec* %4938 to %struct.word_type*
  %4940 = getelementptr inbounds %struct.word_type, %struct.word_type* %4939, i32 0, i32 1
  %4941 = bitcast %union.FIRST_UNION* %4940 to %struct.anon*
  %4942 = getelementptr inbounds %struct.anon, %struct.anon* %4941, i32 0, i32 0
  %4943 = load i8, i8* %4942, align 1
  %4944 = zext i8 %4943 to i32
  %4945 = icmp eq i32 %4944, 1
  br i1 %4945, label %4946, label %4962

; <label>:4946                                    ; preds = %4937
  %4947 = load i32, i32* %jn, align 4
  %4948 = icmp ne i32 %4947, 0
  br i1 %4948, label %4949, label %4959

; <label>:4949                                    ; preds = %4946
  %4950 = load %union.rec*, %union.rec** %y, align 8
  %4951 = bitcast %union.rec* %4950 to %struct.gapobj_type*
  %4952 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %4951, i32 0, i32 3
  %4953 = bitcast %struct.GAP* %4952 to i16*
  %4954 = load i16, i16* %4953, align 4
  %4955 = lshr i16 %4954, 9
  %4956 = and i16 %4955, 1
  %4957 = zext i16 %4956 to i32
  %4958 = icmp ne i32 %4957, 0
  br label %4959

; <label>:4959                                    ; preds = %4949, %4946
  %4960 = phi i1 [ false, %4946 ], [ %4958, %4949 ]
  %4961 = zext i1 %4960 to i32
  store i32 %4961, i32* %jn, align 4
  br label %4997

; <label>:4962                                    ; preds = %4937
  %4963 = load %union.rec*, %union.rec** %y, align 8
  %4964 = bitcast %union.rec* %4963 to %struct.word_type*
  %4965 = getelementptr inbounds %struct.word_type, %struct.word_type* %4964, i32 0, i32 1
  %4966 = bitcast %union.FIRST_UNION* %4965 to %struct.anon*
  %4967 = getelementptr inbounds %struct.anon, %struct.anon* %4966, i32 0, i32 0
  %4968 = load i8, i8* %4967, align 1
  %4969 = zext i8 %4968 to i32
  %4970 = icmp eq i32 %4969, 9
  br i1 %4970, label %4971, label %4975

; <label>:4971                                    ; preds = %4962
  %4972 = load %union.rec*, %union.rec** %y, align 8
  %4973 = call i32 @SplitIsDefinite(%union.rec* %4972)
  %4974 = icmp ne i32 %4973, 0
  br i1 %4974, label %4995, label %4996

; <label>:4975                                    ; preds = %4962
  %4976 = load %union.rec*, %union.rec** %y, align 8
  %4977 = bitcast %union.rec* %4976 to %struct.word_type*
  %4978 = getelementptr inbounds %struct.word_type, %struct.word_type* %4977, i32 0, i32 1
  %4979 = bitcast %union.FIRST_UNION* %4978 to %struct.anon*
  %4980 = getelementptr inbounds %struct.anon, %struct.anon* %4979, i32 0, i32 0
  %4981 = load i8, i8* %4980, align 1
  %4982 = zext i8 %4981 to i32
  %4983 = icmp sge i32 %4982, 9
  br i1 %4983, label %4984, label %4993

; <label>:4984                                    ; preds = %4975
  %4985 = load %union.rec*, %union.rec** %y, align 8
  %4986 = bitcast %union.rec* %4985 to %struct.word_type*
  %4987 = getelementptr inbounds %struct.word_type, %struct.word_type* %4986, i32 0, i32 1
  %4988 = bitcast %union.FIRST_UNION* %4987 to %struct.anon*
  %4989 = getelementptr inbounds %struct.anon, %struct.anon* %4988, i32 0, i32 0
  %4990 = load i8, i8* %4989, align 1
  %4991 = zext i8 %4990 to i32
  %4992 = icmp sle i32 %4991, 99
  br label %4993

; <label>:4993                                    ; preds = %4984, %4975
  %4994 = phi i1 [ false, %4975 ], [ %4992, %4984 ]
  br i1 %4994, label %4995, label %4996

; <label>:4995                                    ; preds = %4993, %4971
  br label %5005

; <label>:4996                                    ; preds = %4993, %4971
  br label %4997

; <label>:4997                                    ; preds = %4996, %4959
  br label %4998

; <label>:4998                                    ; preds = %4997
  %4999 = load %union.rec*, %union.rec** %link, align 8
  %5000 = bitcast %union.rec* %4999 to %struct.word_type*
  %5001 = getelementptr inbounds %struct.word_type, %struct.word_type* %5000, i32 0, i32 0
  %5002 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5001, i32 0, i64 0
  %5003 = getelementptr inbounds %struct.LIST, %struct.LIST* %5002, i32 0, i32 1
  %5004 = load %union.rec*, %union.rec** %5003, align 8
  store %union.rec* %5004, %union.rec** %link, align 8
  br label %4909

; <label>:5005                                    ; preds = %4995, %4909
  %5006 = load %union.rec*, %union.rec** %link, align 8
  %5007 = load %union.rec*, %union.rec** %1, align 8
  %5008 = icmp eq %union.rec* %5006, %5007
  br i1 %5008, label %5009, label %5030

; <label>:5009                                    ; preds = %5005
  %5010 = load i32, i32* %5, align 4
  %5011 = sext i32 %5010 to i64
  %5012 = load %union.rec*, %union.rec** %1, align 8
  %5013 = bitcast %union.rec* %5012 to %struct.word_type*
  %5014 = getelementptr inbounds %struct.word_type, %struct.word_type* %5013, i32 0, i32 3
  %5015 = bitcast %union.THIRD_UNION* %5014 to %struct.anon.6*
  %5016 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5015, i32 0, i32 0
  %5017 = getelementptr inbounds [2 x i32], [2 x i32]* %5016, i32 0, i64 %5011
  %5018 = load i32, i32* %5017, align 4
  %5019 = load i32*, i32** %9, align 8
  store i32 %5018, i32* %5019, align 4
  %5020 = load i32, i32* %5, align 4
  %5021 = sext i32 %5020 to i64
  %5022 = load %union.rec*, %union.rec** %1, align 8
  %5023 = bitcast %union.rec* %5022 to %struct.word_type*
  %5024 = getelementptr inbounds %struct.word_type, %struct.word_type* %5023, i32 0, i32 3
  %5025 = bitcast %union.THIRD_UNION* %5024 to %struct.anon.6*
  %5026 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5025, i32 0, i32 1
  %5027 = getelementptr inbounds [2 x i32], [2 x i32]* %5026, i32 0, i64 %5021
  %5028 = load i32, i32* %5027, align 4
  %5029 = load i32*, i32** %10, align 8
  store i32 %5028, i32* %5029, align 4
  br label %8231

; <label>:5030                                    ; preds = %5005
  store %union.rec* null, %union.rec** %last_bad_gap, align 8
  store i32 0, i32* %adjustable_gaps, align 4
  %5031 = load i32, i32* %2, align 4
  %5032 = load i32, i32* %3, align 4
  %5033 = sub nsw i32 %5031, %5032
  store i32 %5033, i32* %back_edge9, align 4
  %5034 = load i32, i32* %back_edge9, align 4
  %5035 = load i32, i32* %5, align 4
  %5036 = sext i32 %5035 to i64
  %5037 = load %union.rec*, %union.rec** %y, align 8
  %5038 = bitcast %union.rec* %5037 to %struct.word_type*
  %5039 = getelementptr inbounds %struct.word_type, %struct.word_type* %5038, i32 0, i32 3
  %5040 = bitcast %union.THIRD_UNION* %5039 to %struct.anon.6*
  %5041 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5040, i32 0, i32 0
  %5042 = getelementptr inbounds [2 x i32], [2 x i32]* %5041, i32 0, i64 %5036
  %5043 = load i32, i32* %5042, align 4
  %5044 = add nsw i32 %5034, %5043
  store i32 %5044, i32* %mk, align 4
  %5045 = load i32, i32* %3, align 4
  %5046 = load i32, i32* %4, align 4
  %5047 = add nsw i32 %5045, %5046
  store i32 %5047, i32* %frame_size8, align 4
  %5048 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %5048, %union.rec** %prev, align 8
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %5049 = load %union.rec*, %union.rec** %link, align 8
  %5050 = bitcast %union.rec* %5049 to %struct.word_type*
  %5051 = getelementptr inbounds %struct.word_type, %struct.word_type* %5050, i32 0, i32 0
  %5052 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5051, i32 0, i64 0
  %5053 = getelementptr inbounds %struct.LIST, %struct.LIST* %5052, i32 0, i32 1
  %5054 = load %union.rec*, %union.rec** %5053, align 8
  store %union.rec* %5054, %union.rec** %link, align 8
  br label %5055

; <label>:5055                                    ; preds = %5151, %5030
  %5056 = load %union.rec*, %union.rec** %link, align 8
  %5057 = load %union.rec*, %union.rec** %1, align 8
  %5058 = icmp ne %union.rec* %5056, %5057
  br i1 %5058, label %5059, label %5158

; <label>:5059                                    ; preds = %5055
  %5060 = load %union.rec*, %union.rec** %link, align 8
  %5061 = bitcast %union.rec* %5060 to %struct.word_type*
  %5062 = getelementptr inbounds %struct.word_type, %struct.word_type* %5061, i32 0, i32 0
  %5063 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5062, i32 0, i64 1
  %5064 = getelementptr inbounds %struct.LIST, %struct.LIST* %5063, i32 0, i32 0
  %5065 = load %union.rec*, %union.rec** %5064, align 8
  store %union.rec* %5065, %union.rec** %y, align 8
  br label %5066

; <label>:5066                                    ; preds = %5076, %5059
  %5067 = load %union.rec*, %union.rec** %y, align 8
  %5068 = bitcast %union.rec* %5067 to %struct.word_type*
  %5069 = getelementptr inbounds %struct.word_type, %struct.word_type* %5068, i32 0, i32 1
  %5070 = bitcast %union.FIRST_UNION* %5069 to %struct.anon*
  %5071 = getelementptr inbounds %struct.anon, %struct.anon* %5070, i32 0, i32 0
  %5072 = load i8, i8* %5071, align 1
  %5073 = zext i8 %5072 to i32
  %5074 = icmp eq i32 %5073, 0
  br i1 %5074, label %5075, label %5083

; <label>:5075                                    ; preds = %5066
  br label %5076

; <label>:5076                                    ; preds = %5075
  %5077 = load %union.rec*, %union.rec** %y, align 8
  %5078 = bitcast %union.rec* %5077 to %struct.word_type*
  %5079 = getelementptr inbounds %struct.word_type, %struct.word_type* %5078, i32 0, i32 0
  %5080 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5079, i32 0, i64 1
  %5081 = getelementptr inbounds %struct.LIST, %struct.LIST* %5080, i32 0, i32 0
  %5082 = load %union.rec*, %union.rec** %5081, align 8
  store %union.rec* %5082, %union.rec** %y, align 8
  br label %5066

; <label>:5083                                    ; preds = %5066
  %5084 = load %union.rec*, %union.rec** %y, align 8
  %5085 = bitcast %union.rec* %5084 to %struct.word_type*
  %5086 = getelementptr inbounds %struct.word_type, %struct.word_type* %5085, i32 0, i32 1
  %5087 = bitcast %union.FIRST_UNION* %5086 to %struct.anon*
  %5088 = getelementptr inbounds %struct.anon, %struct.anon* %5087, i32 0, i32 0
  %5089 = load i8, i8* %5088, align 1
  %5090 = zext i8 %5089 to i32
  %5091 = icmp eq i32 %5090, 1
  br i1 %5091, label %5092, label %5109

; <label>:5092                                    ; preds = %5083
  %5093 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %5093, %union.rec** %g, align 8
  %5094 = load i32, i32* %jn, align 4
  %5095 = icmp ne i32 %5094, 0
  br i1 %5095, label %5096, label %5106

; <label>:5096                                    ; preds = %5092
  %5097 = load %union.rec*, %union.rec** %y, align 8
  %5098 = bitcast %union.rec* %5097 to %struct.gapobj_type*
  %5099 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %5098, i32 0, i32 3
  %5100 = bitcast %struct.GAP* %5099 to i16*
  %5101 = load i16, i16* %5100, align 4
  %5102 = lshr i16 %5101, 9
  %5103 = and i16 %5102, 1
  %5104 = zext i16 %5103 to i32
  %5105 = icmp ne i32 %5104, 0
  br label %5106

; <label>:5106                                    ; preds = %5096, %5092
  %5107 = phi i1 [ false, %5092 ], [ %5105, %5096 ]
  %5108 = zext i1 %5107 to i32
  store i32 %5108, i32* %jn, align 4
  br label %5150

; <label>:5109                                    ; preds = %5083
  %5110 = load %union.rec*, %union.rec** %y, align 8
  %5111 = bitcast %union.rec* %5110 to %struct.word_type*
  %5112 = getelementptr inbounds %struct.word_type, %struct.word_type* %5111, i32 0, i32 1
  %5113 = bitcast %union.FIRST_UNION* %5112 to %struct.anon*
  %5114 = getelementptr inbounds %struct.anon, %struct.anon* %5113, i32 0, i32 0
  %5115 = load i8, i8* %5114, align 1
  %5116 = zext i8 %5115 to i32
  %5117 = icmp eq i32 %5116, 9
  br i1 %5117, label %5118, label %5122

; <label>:5118                                    ; preds = %5109
  %5119 = load %union.rec*, %union.rec** %y, align 8
  %5120 = call i32 @SplitIsDefinite(%union.rec* %5119)
  %5121 = icmp ne i32 %5120, 0
  br i1 %5121, label %5142, label %5149

; <label>:5122                                    ; preds = %5109
  %5123 = load %union.rec*, %union.rec** %y, align 8
  %5124 = bitcast %union.rec* %5123 to %struct.word_type*
  %5125 = getelementptr inbounds %struct.word_type, %struct.word_type* %5124, i32 0, i32 1
  %5126 = bitcast %union.FIRST_UNION* %5125 to %struct.anon*
  %5127 = getelementptr inbounds %struct.anon, %struct.anon* %5126, i32 0, i32 0
  %5128 = load i8, i8* %5127, align 1
  %5129 = zext i8 %5128 to i32
  %5130 = icmp sge i32 %5129, 9
  br i1 %5130, label %5131, label %5140

; <label>:5131                                    ; preds = %5122
  %5132 = load %union.rec*, %union.rec** %y, align 8
  %5133 = bitcast %union.rec* %5132 to %struct.word_type*
  %5134 = getelementptr inbounds %struct.word_type, %struct.word_type* %5133, i32 0, i32 1
  %5135 = bitcast %union.FIRST_UNION* %5134 to %struct.anon*
  %5136 = getelementptr inbounds %struct.anon, %struct.anon* %5135, i32 0, i32 0
  %5137 = load i8, i8* %5136, align 1
  %5138 = zext i8 %5137 to i32
  %5139 = icmp sle i32 %5138, 99
  br label %5140

; <label>:5140                                    ; preds = %5131, %5122
  %5141 = phi i1 [ false, %5122 ], [ %5139, %5131 ]
  br i1 %5141, label %5142, label %5149

; <label>:5142                                    ; preds = %5140, %5118
  %5143 = load %union.rec*, %union.rec** %g, align 8
  %5144 = icmp ne %union.rec* %5143, null
  br i1 %5144, label %5148, label %5145

; <label>:5145                                    ; preds = %5142
  %5146 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5147 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %5146, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %5148

; <label>:5148                                    ; preds = %5145, %5142
  br label %5158

; <label>:5149                                    ; preds = %5140, %5118
  br label %5150

; <label>:5150                                    ; preds = %5149, %5106
  br label %5151

; <label>:5151                                    ; preds = %5150
  %5152 = load %union.rec*, %union.rec** %link, align 8
  %5153 = bitcast %union.rec* %5152 to %struct.word_type*
  %5154 = getelementptr inbounds %struct.word_type, %struct.word_type* %5153, i32 0, i32 0
  %5155 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5154, i32 0, i64 0
  %5156 = getelementptr inbounds %struct.LIST, %struct.LIST* %5155, i32 0, i32 1
  %5157 = load %union.rec*, %union.rec** %5156, align 8
  store %union.rec* %5157, %union.rec** %link, align 8
  br label %5055

; <label>:5158                                    ; preds = %5148, %5055
  br label %5159

; <label>:5159                                    ; preds = %5363, %5158
  %5160 = load %union.rec*, %union.rec** %link, align 8
  %5161 = load %union.rec*, %union.rec** %1, align 8
  %5162 = icmp ne %union.rec* %5160, %5161
  br i1 %5162, label %5163, label %5364

; <label>:5163                                    ; preds = %5159
  %5164 = load i32, i32* %5, align 4
  %5165 = sext i32 %5164 to i64
  %5166 = load %union.rec*, %union.rec** %prev, align 8
  %5167 = bitcast %union.rec* %5166 to %struct.word_type*
  %5168 = getelementptr inbounds %struct.word_type, %struct.word_type* %5167, i32 0, i32 3
  %5169 = bitcast %union.THIRD_UNION* %5168 to %struct.anon.6*
  %5170 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5169, i32 0, i32 1
  %5171 = getelementptr inbounds [2 x i32], [2 x i32]* %5170, i32 0, i64 %5165
  %5172 = load i32, i32* %5171, align 4
  %5173 = load i32, i32* %5, align 4
  %5174 = sext i32 %5173 to i64
  %5175 = load %union.rec*, %union.rec** %y, align 8
  %5176 = bitcast %union.rec* %5175 to %struct.word_type*
  %5177 = getelementptr inbounds %struct.word_type, %struct.word_type* %5176, i32 0, i32 3
  %5178 = bitcast %union.THIRD_UNION* %5177 to %struct.anon.6*
  %5179 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5178, i32 0, i32 0
  %5180 = getelementptr inbounds [2 x i32], [2 x i32]* %5179, i32 0, i64 %5174
  %5181 = load i32, i32* %5180, align 4
  %5182 = load i32, i32* %5, align 4
  %5183 = sext i32 %5182 to i64
  %5184 = load %union.rec*, %union.rec** %y, align 8
  %5185 = bitcast %union.rec* %5184 to %struct.word_type*
  %5186 = getelementptr inbounds %struct.word_type, %struct.word_type* %5185, i32 0, i32 3
  %5187 = bitcast %union.THIRD_UNION* %5186 to %struct.anon.6*
  %5188 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5187, i32 0, i32 1
  %5189 = getelementptr inbounds [2 x i32], [2 x i32]* %5188, i32 0, i64 %5183
  %5190 = load i32, i32* %5189, align 4
  %5191 = load %union.rec*, %union.rec** %g, align 8
  %5192 = bitcast %union.rec* %5191 to %struct.gapobj_type*
  %5193 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %5192, i32 0, i32 3
  %5194 = load i32, i32* %frame_size8, align 4
  %5195 = load i32, i32* %mk, align 4
  %5196 = load i32, i32* %back_edge9, align 4
  %5197 = sub nsw i32 %5195, %5196
  %5198 = call i32 @ActualGap(i32 %5172, i32 %5181, i32 %5190, %struct.GAP* %5193, i32 %5194, i32 %5197)
  %5199 = trunc i32 %5198 to i16
  %5200 = load %union.rec*, %union.rec** %g, align 8
  %5201 = bitcast %union.rec* %5200 to %struct.gapobj_type*
  %5202 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %5201, i32 0, i32 6
  store i16 %5199, i16* %5202, align 2
  %5203 = load %union.rec*, %union.rec** %g, align 8
  %5204 = bitcast %union.rec* %5203 to %struct.gapobj_type*
  %5205 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %5204, i32 0, i32 6
  %5206 = load i16, i16* %5205, align 2
  %5207 = sext i16 %5206 to i32
  %5208 = load i32, i32* %mk, align 4
  %5209 = add nsw i32 %5208, %5207
  store i32 %5209, i32* %mk, align 4
  %5210 = load %union.rec*, %union.rec** %g, align 8
  %5211 = bitcast %union.rec* %5210 to %struct.gapobj_type*
  %5212 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %5211, i32 0, i32 3
  %5213 = bitcast %struct.GAP* %5212 to i16*
  %5214 = load i16, i16* %5213, align 4
  %5215 = lshr i16 %5214, 13
  %5216 = zext i16 %5215 to i32
  %5217 = icmp eq i32 %5216, 6
  br i1 %5217, label %5238, label %5218

; <label>:5218                                    ; preds = %5163
  %5219 = load %union.rec*, %union.rec** %g, align 8
  %5220 = bitcast %union.rec* %5219 to %struct.gapobj_type*
  %5221 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %5220, i32 0, i32 3
  %5222 = bitcast %struct.GAP* %5221 to i16*
  %5223 = load i16, i16* %5222, align 4
  %5224 = lshr i16 %5223, 10
  %5225 = and i16 %5224, 7
  %5226 = zext i16 %5225 to i32
  %5227 = icmp eq i32 %5226, 3
  br i1 %5227, label %5238, label %5228

; <label>:5228                                    ; preds = %5218
  %5229 = load %union.rec*, %union.rec** %g, align 8
  %5230 = bitcast %union.rec* %5229 to %struct.gapobj_type*
  %5231 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %5230, i32 0, i32 3
  %5232 = bitcast %struct.GAP* %5231 to i16*
  %5233 = load i16, i16* %5232, align 4
  %5234 = lshr i16 %5233, 10
  %5235 = and i16 %5234, 7
  %5236 = zext i16 %5235 to i32
  %5237 = icmp eq i32 %5236, 2
  br i1 %5237, label %5238, label %5240

; <label>:5238                                    ; preds = %5228, %5218, %5163
  %5239 = load %union.rec*, %union.rec** %g, align 8
  store %union.rec* %5239, %union.rec** %last_bad_gap, align 8
  store i32 0, i32* %adjustable_gaps, align 4
  br label %5252

; <label>:5240                                    ; preds = %5228
  %5241 = load %union.rec*, %union.rec** %g, align 8
  %5242 = bitcast %union.rec* %5241 to %struct.gapobj_type*
  %5243 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %5242, i32 0, i32 3
  %5244 = getelementptr inbounds %struct.GAP, %struct.GAP* %5243, i32 0, i32 1
  %5245 = load i16, i16* %5244, align 2
  %5246 = sext i16 %5245 to i32
  %5247 = icmp sgt i32 %5246, 0
  br i1 %5247, label %5248, label %5251

; <label>:5248                                    ; preds = %5240
  %5249 = load i32, i32* %adjustable_gaps, align 4
  %5250 = add nsw i32 %5249, 1
  store i32 %5250, i32* %adjustable_gaps, align 4
  br label %5251

; <label>:5251                                    ; preds = %5248, %5240
  br label %5252

; <label>:5252                                    ; preds = %5251, %5238
  %5253 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %5253, %union.rec** %prev, align 8
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %5254 = load %union.rec*, %union.rec** %link, align 8
  %5255 = bitcast %union.rec* %5254 to %struct.word_type*
  %5256 = getelementptr inbounds %struct.word_type, %struct.word_type* %5255, i32 0, i32 0
  %5257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5256, i32 0, i64 0
  %5258 = getelementptr inbounds %struct.LIST, %struct.LIST* %5257, i32 0, i32 1
  %5259 = load %union.rec*, %union.rec** %5258, align 8
  store %union.rec* %5259, %union.rec** %link, align 8
  br label %5260

; <label>:5260                                    ; preds = %5356, %5252
  %5261 = load %union.rec*, %union.rec** %link, align 8
  %5262 = load %union.rec*, %union.rec** %1, align 8
  %5263 = icmp ne %union.rec* %5261, %5262
  br i1 %5263, label %5264, label %5363

; <label>:5264                                    ; preds = %5260
  %5265 = load %union.rec*, %union.rec** %link, align 8
  %5266 = bitcast %union.rec* %5265 to %struct.word_type*
  %5267 = getelementptr inbounds %struct.word_type, %struct.word_type* %5266, i32 0, i32 0
  %5268 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5267, i32 0, i64 1
  %5269 = getelementptr inbounds %struct.LIST, %struct.LIST* %5268, i32 0, i32 0
  %5270 = load %union.rec*, %union.rec** %5269, align 8
  store %union.rec* %5270, %union.rec** %y, align 8
  br label %5271

; <label>:5271                                    ; preds = %5281, %5264
  %5272 = load %union.rec*, %union.rec** %y, align 8
  %5273 = bitcast %union.rec* %5272 to %struct.word_type*
  %5274 = getelementptr inbounds %struct.word_type, %struct.word_type* %5273, i32 0, i32 1
  %5275 = bitcast %union.FIRST_UNION* %5274 to %struct.anon*
  %5276 = getelementptr inbounds %struct.anon, %struct.anon* %5275, i32 0, i32 0
  %5277 = load i8, i8* %5276, align 1
  %5278 = zext i8 %5277 to i32
  %5279 = icmp eq i32 %5278, 0
  br i1 %5279, label %5280, label %5288

; <label>:5280                                    ; preds = %5271
  br label %5281

; <label>:5281                                    ; preds = %5280
  %5282 = load %union.rec*, %union.rec** %y, align 8
  %5283 = bitcast %union.rec* %5282 to %struct.word_type*
  %5284 = getelementptr inbounds %struct.word_type, %struct.word_type* %5283, i32 0, i32 0
  %5285 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5284, i32 0, i64 1
  %5286 = getelementptr inbounds %struct.LIST, %struct.LIST* %5285, i32 0, i32 0
  %5287 = load %union.rec*, %union.rec** %5286, align 8
  store %union.rec* %5287, %union.rec** %y, align 8
  br label %5271

; <label>:5288                                    ; preds = %5271
  %5289 = load %union.rec*, %union.rec** %y, align 8
  %5290 = bitcast %union.rec* %5289 to %struct.word_type*
  %5291 = getelementptr inbounds %struct.word_type, %struct.word_type* %5290, i32 0, i32 1
  %5292 = bitcast %union.FIRST_UNION* %5291 to %struct.anon*
  %5293 = getelementptr inbounds %struct.anon, %struct.anon* %5292, i32 0, i32 0
  %5294 = load i8, i8* %5293, align 1
  %5295 = zext i8 %5294 to i32
  %5296 = icmp eq i32 %5295, 1
  br i1 %5296, label %5297, label %5314

; <label>:5297                                    ; preds = %5288
  %5298 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %5298, %union.rec** %g, align 8
  %5299 = load i32, i32* %jn, align 4
  %5300 = icmp ne i32 %5299, 0
  br i1 %5300, label %5301, label %5311

; <label>:5301                                    ; preds = %5297
  %5302 = load %union.rec*, %union.rec** %y, align 8
  %5303 = bitcast %union.rec* %5302 to %struct.gapobj_type*
  %5304 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %5303, i32 0, i32 3
  %5305 = bitcast %struct.GAP* %5304 to i16*
  %5306 = load i16, i16* %5305, align 4
  %5307 = lshr i16 %5306, 9
  %5308 = and i16 %5307, 1
  %5309 = zext i16 %5308 to i32
  %5310 = icmp ne i32 %5309, 0
  br label %5311

; <label>:5311                                    ; preds = %5301, %5297
  %5312 = phi i1 [ false, %5297 ], [ %5310, %5301 ]
  %5313 = zext i1 %5312 to i32
  store i32 %5313, i32* %jn, align 4
  br label %5355

; <label>:5314                                    ; preds = %5288
  %5315 = load %union.rec*, %union.rec** %y, align 8
  %5316 = bitcast %union.rec* %5315 to %struct.word_type*
  %5317 = getelementptr inbounds %struct.word_type, %struct.word_type* %5316, i32 0, i32 1
  %5318 = bitcast %union.FIRST_UNION* %5317 to %struct.anon*
  %5319 = getelementptr inbounds %struct.anon, %struct.anon* %5318, i32 0, i32 0
  %5320 = load i8, i8* %5319, align 1
  %5321 = zext i8 %5320 to i32
  %5322 = icmp eq i32 %5321, 9
  br i1 %5322, label %5323, label %5327

; <label>:5323                                    ; preds = %5314
  %5324 = load %union.rec*, %union.rec** %y, align 8
  %5325 = call i32 @SplitIsDefinite(%union.rec* %5324)
  %5326 = icmp ne i32 %5325, 0
  br i1 %5326, label %5347, label %5354

; <label>:5327                                    ; preds = %5314
  %5328 = load %union.rec*, %union.rec** %y, align 8
  %5329 = bitcast %union.rec* %5328 to %struct.word_type*
  %5330 = getelementptr inbounds %struct.word_type, %struct.word_type* %5329, i32 0, i32 1
  %5331 = bitcast %union.FIRST_UNION* %5330 to %struct.anon*
  %5332 = getelementptr inbounds %struct.anon, %struct.anon* %5331, i32 0, i32 0
  %5333 = load i8, i8* %5332, align 1
  %5334 = zext i8 %5333 to i32
  %5335 = icmp sge i32 %5334, 9
  br i1 %5335, label %5336, label %5345

; <label>:5336                                    ; preds = %5327
  %5337 = load %union.rec*, %union.rec** %y, align 8
  %5338 = bitcast %union.rec* %5337 to %struct.word_type*
  %5339 = getelementptr inbounds %struct.word_type, %struct.word_type* %5338, i32 0, i32 1
  %5340 = bitcast %union.FIRST_UNION* %5339 to %struct.anon*
  %5341 = getelementptr inbounds %struct.anon, %struct.anon* %5340, i32 0, i32 0
  %5342 = load i8, i8* %5341, align 1
  %5343 = zext i8 %5342 to i32
  %5344 = icmp sle i32 %5343, 99
  br label %5345

; <label>:5345                                    ; preds = %5336, %5327
  %5346 = phi i1 [ false, %5327 ], [ %5344, %5336 ]
  br i1 %5346, label %5347, label %5354

; <label>:5347                                    ; preds = %5345, %5323
  %5348 = load %union.rec*, %union.rec** %g, align 8
  %5349 = icmp ne %union.rec* %5348, null
  br i1 %5349, label %5353, label %5350

; <label>:5350                                    ; preds = %5347
  %5351 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5352 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %5351, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %5353

; <label>:5353                                    ; preds = %5350, %5347
  br label %5363

; <label>:5354                                    ; preds = %5345, %5323
  br label %5355

; <label>:5355                                    ; preds = %5354, %5311
  br label %5356

; <label>:5356                                    ; preds = %5355
  %5357 = load %union.rec*, %union.rec** %link, align 8
  %5358 = bitcast %union.rec* %5357 to %struct.word_type*
  %5359 = getelementptr inbounds %struct.word_type, %struct.word_type* %5358, i32 0, i32 0
  %5360 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5359, i32 0, i64 0
  %5361 = getelementptr inbounds %struct.LIST, %struct.LIST* %5360, i32 0, i32 1
  %5362 = load %union.rec*, %union.rec** %5361, align 8
  store %union.rec* %5362, %union.rec** %link, align 8
  br label %5260

; <label>:5363                                    ; preds = %5353, %5260
  br label %5159

; <label>:5364                                    ; preds = %5159
  %5365 = load i32, i32* %mk, align 4
  %5366 = load i32, i32* %5, align 4
  %5367 = sext i32 %5366 to i64
  %5368 = load %union.rec*, %union.rec** %prev, align 8
  %5369 = bitcast %union.rec* %5368 to %struct.word_type*
  %5370 = getelementptr inbounds %struct.word_type, %struct.word_type* %5369, i32 0, i32 3
  %5371 = bitcast %union.THIRD_UNION* %5370 to %struct.anon.6*
  %5372 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5371, i32 0, i32 1
  %5373 = getelementptr inbounds [2 x i32], [2 x i32]* %5372, i32 0, i64 %5367
  %5374 = load i32, i32* %5373, align 4
  %5375 = add nsw i32 %5365, %5374
  %5376 = load i32, i32* %back_edge9, align 4
  %5377 = sub nsw i32 %5375, %5376
  store i32 %5377, i32* %actual_size, align 4
  %5378 = load i32, i32* %actual_size, align 4
  %5379 = load i32, i32* %frame_size8, align 4
  %5380 = icmp sgt i32 %5378, %5379
  br i1 %5380, label %5381, label %6093

; <label>:5381                                    ; preds = %5364
  %5382 = load i32, i32* %adjustable_gaps, align 4
  %5383 = icmp eq i32 %5382, 0
  br i1 %5383, label %5384, label %6093

; <label>:5384                                    ; preds = %5381
  %5385 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 0
  store i32 0, i32* %5385, align 4
  %5386 = load i32, i32* %frame_size8, align 4
  %5387 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  store i32 %5386, i32* %5387, align 4
  %5388 = load i32, i32* %frame_size8, align 4
  %5389 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 2
  store i32 %5388, i32* %5389, align 4
  %5390 = load i32, i32* %actual_size, align 4
  %5391 = load i32, i32* %5, align 4
  %5392 = sext i32 %5391 to i64
  %5393 = load %union.rec*, %union.rec** %1, align 8
  %5394 = bitcast %union.rec* %5393 to %struct.word_type*
  %5395 = getelementptr inbounds %struct.word_type, %struct.word_type* %5394, i32 0, i32 3
  %5396 = bitcast %union.THIRD_UNION* %5395 to %struct.anon.6*
  %5397 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5396, i32 0, i32 1
  %5398 = getelementptr inbounds [2 x i32], [2 x i32]* %5397, i32 0, i64 %5392
  store i32 %5390, i32* %5398, align 4
  %5399 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %5400 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %5399, i32 0, i32 2
  %5401 = load i32, i32* %5400, align 4
  %5402 = icmp ne i32 %5401, 0
  br i1 %5402, label %5403, label %5583

; <label>:5403                                    ; preds = %5384
  %5404 = load %union.rec*, %union.rec** %1, align 8
  %5405 = call i32 @InsertScale(%union.rec* %5404, %struct.CONSTRAINT* %c)
  %5406 = icmp ne i32 %5405, 0
  br i1 %5406, label %5407, label %5583

; <label>:5407                                    ; preds = %5403
  %5408 = load %union.rec*, %union.rec** %1, align 8
  %5409 = bitcast %union.rec* %5408 to %struct.word_type*
  %5410 = getelementptr inbounds %struct.word_type, %struct.word_type* %5409, i32 0, i32 0
  %5411 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5410, i32 0, i64 1
  %5412 = getelementptr inbounds %struct.LIST, %struct.LIST* %5411, i32 0, i32 1
  %5413 = load %union.rec*, %union.rec** %5412, align 8
  %5414 = bitcast %union.rec* %5413 to %struct.word_type*
  %5415 = getelementptr inbounds %struct.word_type, %struct.word_type* %5414, i32 0, i32 0
  %5416 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5415, i32 0, i64 0
  %5417 = getelementptr inbounds %struct.LIST, %struct.LIST* %5416, i32 0, i32 0
  %5418 = load %union.rec*, %union.rec** %5417, align 8
  store %union.rec* %5418, %union.rec** %prnt, align 8
  br label %5419

; <label>:5419                                    ; preds = %5429, %5407
  %5420 = load %union.rec*, %union.rec** %prnt, align 8
  %5421 = bitcast %union.rec* %5420 to %struct.word_type*
  %5422 = getelementptr inbounds %struct.word_type, %struct.word_type* %5421, i32 0, i32 1
  %5423 = bitcast %union.FIRST_UNION* %5422 to %struct.anon*
  %5424 = getelementptr inbounds %struct.anon, %struct.anon* %5423, i32 0, i32 0
  %5425 = load i8, i8* %5424, align 1
  %5426 = zext i8 %5425 to i32
  %5427 = icmp eq i32 %5426, 0
  br i1 %5427, label %5428, label %5436

; <label>:5428                                    ; preds = %5419
  br label %5429

; <label>:5429                                    ; preds = %5428
  %5430 = load %union.rec*, %union.rec** %prnt, align 8
  %5431 = bitcast %union.rec* %5430 to %struct.word_type*
  %5432 = getelementptr inbounds %struct.word_type, %struct.word_type* %5431, i32 0, i32 0
  %5433 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5432, i32 0, i64 0
  %5434 = getelementptr inbounds %struct.LIST, %struct.LIST* %5433, i32 0, i32 0
  %5435 = load %union.rec*, %union.rec** %5434, align 8
  store %union.rec* %5435, %union.rec** %prnt, align 8
  br label %5419

; <label>:5436                                    ; preds = %5419
  %5437 = load %union.rec*, %union.rec** %1, align 8
  %5438 = bitcast %union.rec* %5437 to %struct.word_type*
  %5439 = getelementptr inbounds %struct.word_type, %struct.word_type* %5438, i32 0, i32 0
  %5440 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5439, i32 0, i64 0
  %5441 = getelementptr inbounds %struct.LIST, %struct.LIST* %5440, i32 0, i32 1
  %5442 = load %union.rec*, %union.rec** %5441, align 8
  %5443 = bitcast %union.rec* %5442 to %struct.word_type*
  %5444 = getelementptr inbounds %struct.word_type, %struct.word_type* %5443, i32 0, i32 0
  %5445 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5444, i32 0, i64 1
  %5446 = getelementptr inbounds %struct.LIST, %struct.LIST* %5445, i32 0, i32 0
  %5447 = load %union.rec*, %union.rec** %5446, align 8
  store %union.rec* %5447, %union.rec** %y, align 8
  br label %5448

; <label>:5448                                    ; preds = %5458, %5436
  %5449 = load %union.rec*, %union.rec** %y, align 8
  %5450 = bitcast %union.rec* %5449 to %struct.word_type*
  %5451 = getelementptr inbounds %struct.word_type, %struct.word_type* %5450, i32 0, i32 1
  %5452 = bitcast %union.FIRST_UNION* %5451 to %struct.anon*
  %5453 = getelementptr inbounds %struct.anon, %struct.anon* %5452, i32 0, i32 0
  %5454 = load i8, i8* %5453, align 1
  %5455 = zext i8 %5454 to i32
  %5456 = icmp eq i32 %5455, 0
  br i1 %5456, label %5457, label %5465

; <label>:5457                                    ; preds = %5448
  br label %5458

; <label>:5458                                    ; preds = %5457
  %5459 = load %union.rec*, %union.rec** %y, align 8
  %5460 = bitcast %union.rec* %5459 to %struct.word_type*
  %5461 = getelementptr inbounds %struct.word_type, %struct.word_type* %5460, i32 0, i32 0
  %5462 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5461, i32 0, i64 1
  %5463 = getelementptr inbounds %struct.LIST, %struct.LIST* %5462, i32 0, i32 0
  %5464 = load %union.rec*, %union.rec** %5463, align 8
  store %union.rec* %5464, %union.rec** %y, align 8
  br label %5448

; <label>:5465                                    ; preds = %5448
  %5466 = load i32, i32* %actual_size, align 4
  %5467 = load i32, i32* %frame_size8, align 4
  %5468 = sub nsw i32 %5466, %5467
  %5469 = icmp slt i32 %5468, 20
  br i1 %5469, label %5470, label %5471

; <label>:5470                                    ; preds = %5465
  br label %5558

; <label>:5471                                    ; preds = %5465
  %5472 = load %union.rec*, %union.rec** %1, align 8
  %5473 = bitcast %union.rec* %5472 to %struct.word_type*
  %5474 = getelementptr inbounds %struct.word_type, %struct.word_type* %5473, i32 0, i32 0
  %5475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5474, i32 0, i64 0
  %5476 = getelementptr inbounds %struct.LIST, %struct.LIST* %5475, i32 0, i32 1
  %5477 = load %union.rec*, %union.rec** %5476, align 8
  %5478 = load %union.rec*, %union.rec** %1, align 8
  %5479 = bitcast %union.rec* %5478 to %struct.word_type*
  %5480 = getelementptr inbounds %struct.word_type, %struct.word_type* %5479, i32 0, i32 0
  %5481 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5480, i32 0, i64 0
  %5482 = getelementptr inbounds %struct.LIST, %struct.LIST* %5481, i32 0, i32 0
  %5483 = load %union.rec*, %union.rec** %5482, align 8
  %5484 = icmp eq %union.rec* %5477, %5483
  br i1 %5484, label %5485, label %5524

; <label>:5485                                    ; preds = %5471
  %5486 = load %union.rec*, %union.rec** %y, align 8
  %5487 = bitcast %union.rec* %5486 to %struct.word_type*
  %5488 = getelementptr inbounds %struct.word_type, %struct.word_type* %5487, i32 0, i32 1
  %5489 = bitcast %union.FIRST_UNION* %5488 to %struct.anon*
  %5490 = getelementptr inbounds %struct.anon, %struct.anon* %5489, i32 0, i32 0
  %5491 = load i8, i8* %5490, align 1
  %5492 = zext i8 %5491 to i32
  %5493 = icmp eq i32 %5492, 11
  br i1 %5493, label %5503, label %5494

; <label>:5494                                    ; preds = %5485
  %5495 = load %union.rec*, %union.rec** %y, align 8
  %5496 = bitcast %union.rec* %5495 to %struct.word_type*
  %5497 = getelementptr inbounds %struct.word_type, %struct.word_type* %5496, i32 0, i32 1
  %5498 = bitcast %union.FIRST_UNION* %5497 to %struct.anon*
  %5499 = getelementptr inbounds %struct.anon, %struct.anon* %5498, i32 0, i32 0
  %5500 = load i8, i8* %5499, align 1
  %5501 = zext i8 %5500 to i32
  %5502 = icmp eq i32 %5501, 12
  br i1 %5502, label %5503, label %5524

; <label>:5503                                    ; preds = %5494, %5485
  %5504 = load %union.rec*, %union.rec** %y, align 8
  %5505 = bitcast %union.rec* %5504 to %struct.word_type*
  %5506 = getelementptr inbounds %struct.word_type, %struct.word_type* %5505, i32 0, i32 1
  %5507 = bitcast %union.FIRST_UNION* %5506 to %struct.FILE_POS*
  %5508 = load %union.rec*, %union.rec** %y, align 8
  %5509 = bitcast %union.rec* %5508 to %struct.word_type*
  %5510 = getelementptr inbounds %struct.word_type, %struct.word_type* %5509, i32 0, i32 4
  %5511 = getelementptr inbounds [4 x i8], [4 x i8]* %5510, i32 0, i32 0
  %5512 = load %union.rec*, %union.rec** %prnt, align 8
  %5513 = bitcast %union.rec* %5512 to %struct.closure_type*
  %5514 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5513, i32 0, i32 4
  %5515 = bitcast %union.FOURTH_UNION* %5514 to %struct.CONSTRAINT*
  %5516 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %5515, i32 0, i32 0
  %5517 = load i32, i32* %5516, align 4
  %5518 = sitofp i32 %5517 to float
  %5519 = fdiv float %5518, 1.280000e+02
  %5520 = fpext float %5519 to double
  %5521 = load i32, i32* %frame_size8, align 4
  %5522 = call i8* @EchoLength(i32 %5521)
  %5523 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 23, i32 3, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.8, i32 0, i32 0), i32 2, %struct.FILE_POS* %5507, i8* %5511, double %5520, i8* %5522)
  br label %5557

; <label>:5524                                    ; preds = %5494, %5471
  %5525 = load %union.rec*, %union.rec** %1, align 8
  %5526 = bitcast %union.rec* %5525 to %struct.word_type*
  %5527 = getelementptr inbounds %struct.word_type, %struct.word_type* %5526, i32 0, i32 1
  %5528 = bitcast %union.FIRST_UNION* %5527 to %struct.FILE_POS*
  %5529 = load %union.rec*, %union.rec** %1, align 8
  %5530 = bitcast %union.rec* %5529 to %struct.word_type*
  %5531 = getelementptr inbounds %struct.word_type, %struct.word_type* %5530, i32 0, i32 3
  %5532 = bitcast %union.THIRD_UNION* %5531 to %struct.anon.6*
  %5533 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5532, i32 0, i32 0
  %5534 = getelementptr inbounds [2 x i32], [2 x i32]* %5533, i32 0, i64 0
  %5535 = load i32, i32* %5534, align 4
  %5536 = load %union.rec*, %union.rec** %1, align 8
  %5537 = bitcast %union.rec* %5536 to %struct.word_type*
  %5538 = getelementptr inbounds %struct.word_type, %struct.word_type* %5537, i32 0, i32 3
  %5539 = bitcast %union.THIRD_UNION* %5538 to %struct.anon.6*
  %5540 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5539, i32 0, i32 1
  %5541 = getelementptr inbounds [2 x i32], [2 x i32]* %5540, i32 0, i64 0
  %5542 = load i32, i32* %5541, align 4
  %5543 = add nsw i32 %5535, %5542
  %5544 = call i8* @EchoLength(i32 %5543)
  %5545 = load %union.rec*, %union.rec** %prnt, align 8
  %5546 = bitcast %union.rec* %5545 to %struct.closure_type*
  %5547 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5546, i32 0, i32 4
  %5548 = bitcast %union.FOURTH_UNION* %5547 to %struct.CONSTRAINT*
  %5549 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %5548, i32 0, i32 0
  %5550 = load i32, i32* %5549, align 4
  %5551 = sitofp i32 %5550 to float
  %5552 = fdiv float %5551, 1.280000e+02
  %5553 = fpext float %5552 to double
  %5554 = load i32, i32* %frame_size8, align 4
  %5555 = call i8* @EchoLength(i32 %5554)
  %5556 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 23, i32 4, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.9, i32 0, i32 0), i32 2, %struct.FILE_POS* %5528, i8* %5544, double %5553, i8* %5555)
  br label %5557

; <label>:5557                                    ; preds = %5524, %5503
  br label %5558

; <label>:5558                                    ; preds = %5557, %5470
  %5559 = load %union.rec*, %union.rec** %prnt, align 8
  %5560 = load i32, i32* %2, align 4
  %5561 = load i32, i32* %5, align 4
  %5562 = sext i32 %5561 to i64
  %5563 = load %union.rec*, %union.rec** %prnt, align 8
  %5564 = bitcast %union.rec* %5563 to %struct.word_type*
  %5565 = getelementptr inbounds %struct.word_type, %struct.word_type* %5564, i32 0, i32 3
  %5566 = bitcast %union.THIRD_UNION* %5565 to %struct.anon.6*
  %5567 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5566, i32 0, i32 0
  %5568 = getelementptr inbounds [2 x i32], [2 x i32]* %5567, i32 0, i64 %5562
  %5569 = load i32, i32* %5568, align 4
  %5570 = load i32, i32* %5, align 4
  %5571 = sext i32 %5570 to i64
  %5572 = load %union.rec*, %union.rec** %prnt, align 8
  %5573 = bitcast %union.rec* %5572 to %struct.word_type*
  %5574 = getelementptr inbounds %struct.word_type, %struct.word_type* %5573, i32 0, i32 3
  %5575 = bitcast %union.THIRD_UNION* %5574 to %struct.anon.6*
  %5576 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5575, i32 0, i32 1
  %5577 = getelementptr inbounds [2 x i32], [2 x i32]* %5576, i32 0, i64 %5571
  %5578 = load i32, i32* %5577, align 4
  %5579 = load i32, i32* %5, align 4
  %5580 = load i32, i32* %7, align 4
  %5581 = load i32, i32* %8, align 4
  %5582 = call %union.rec* @FixAndPrintObject(%union.rec* %5559, i32 %5560, i32 %5569, i32 %5578, i32 %5579, i32 0, i32 %5580, i32 %5581, i32* %aback, i32* %afwd)
  store %union.rec* %5582, %union.rec** %prnt, align 8
  br label %6092

; <label>:5583                                    ; preds = %5403, %5384
  %5584 = load %union.rec*, %union.rec** %1, align 8
  %5585 = bitcast %union.rec* %5584 to %struct.word_type*
  %5586 = getelementptr inbounds %struct.word_type, %struct.word_type* %5585, i32 0, i32 3
  %5587 = bitcast %union.THIRD_UNION* %5586 to %struct.anon.6*
  %5588 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5587, i32 0, i32 0
  %5589 = getelementptr inbounds [2 x i32], [2 x i32]* %5588, i32 0, i64 0
  %5590 = load i32, i32* %5589, align 4
  %5591 = load %union.rec*, %union.rec** %1, align 8
  %5592 = bitcast %union.rec* %5591 to %struct.word_type*
  %5593 = getelementptr inbounds %struct.word_type, %struct.word_type* %5592, i32 0, i32 3
  %5594 = bitcast %union.THIRD_UNION* %5593 to %struct.anon.6*
  %5595 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5594, i32 0, i32 1
  %5596 = getelementptr inbounds [2 x i32], [2 x i32]* %5595, i32 0, i64 0
  %5597 = load i32, i32* %5596, align 4
  %5598 = add nsw i32 %5590, %5597
  %5599 = icmp sle i32 %5598, 0
  br i1 %5599, label %5600, label %5606

; <label>:5600                                    ; preds = %5583
  %5601 = load %union.rec*, %union.rec** %1, align 8
  %5602 = bitcast %union.rec* %5601 to %struct.word_type*
  %5603 = getelementptr inbounds %struct.word_type, %struct.word_type* %5602, i32 0, i32 1
  %5604 = bitcast %union.FIRST_UNION* %5603 to %struct.FILE_POS*
  %5605 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 23, i32 5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %5604)
  br label %5606

; <label>:5606                                    ; preds = %5600, %5583
  %5607 = load %union.rec*, %union.rec** %1, align 8
  %5608 = bitcast %union.rec* %5607 to %struct.word_type*
  %5609 = getelementptr inbounds %struct.word_type, %struct.word_type* %5608, i32 0, i32 0
  %5610 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5609, i32 0, i64 0
  %5611 = getelementptr inbounds %struct.LIST, %struct.LIST* %5610, i32 0, i32 1
  %5612 = load %union.rec*, %union.rec** %5611, align 8
  %5613 = bitcast %union.rec* %5612 to %struct.word_type*
  %5614 = getelementptr inbounds %struct.word_type, %struct.word_type* %5613, i32 0, i32 0
  %5615 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5614, i32 0, i64 1
  %5616 = getelementptr inbounds %struct.LIST, %struct.LIST* %5615, i32 0, i32 0
  %5617 = load %union.rec*, %union.rec** %5616, align 8
  store %union.rec* %5617, %union.rec** %y, align 8
  br label %5618

; <label>:5618                                    ; preds = %5628, %5606
  %5619 = load %union.rec*, %union.rec** %y, align 8
  %5620 = bitcast %union.rec* %5619 to %struct.word_type*
  %5621 = getelementptr inbounds %struct.word_type, %struct.word_type* %5620, i32 0, i32 1
  %5622 = bitcast %union.FIRST_UNION* %5621 to %struct.anon*
  %5623 = getelementptr inbounds %struct.anon, %struct.anon* %5622, i32 0, i32 0
  %5624 = load i8, i8* %5623, align 1
  %5625 = zext i8 %5624 to i32
  %5626 = icmp eq i32 %5625, 0
  br i1 %5626, label %5627, label %5635

; <label>:5627                                    ; preds = %5618
  br label %5628

; <label>:5628                                    ; preds = %5627
  %5629 = load %union.rec*, %union.rec** %y, align 8
  %5630 = bitcast %union.rec* %5629 to %struct.word_type*
  %5631 = getelementptr inbounds %struct.word_type, %struct.word_type* %5630, i32 0, i32 0
  %5632 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5631, i32 0, i64 1
  %5633 = getelementptr inbounds %struct.LIST, %struct.LIST* %5632, i32 0, i32 0
  %5634 = load %union.rec*, %union.rec** %5633, align 8
  store %union.rec* %5634, %union.rec** %y, align 8
  br label %5618

; <label>:5635                                    ; preds = %5618
  %5636 = load %union.rec*, %union.rec** %1, align 8
  %5637 = bitcast %union.rec* %5636 to %struct.word_type*
  %5638 = getelementptr inbounds %struct.word_type, %struct.word_type* %5637, i32 0, i32 0
  %5639 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5638, i32 0, i64 0
  %5640 = getelementptr inbounds %struct.LIST, %struct.LIST* %5639, i32 0, i32 1
  %5641 = load %union.rec*, %union.rec** %5640, align 8
  %5642 = load %union.rec*, %union.rec** %1, align 8
  %5643 = bitcast %union.rec* %5642 to %struct.word_type*
  %5644 = getelementptr inbounds %struct.word_type, %struct.word_type* %5643, i32 0, i32 0
  %5645 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5644, i32 0, i64 0
  %5646 = getelementptr inbounds %struct.LIST, %struct.LIST* %5645, i32 0, i32 0
  %5647 = load %union.rec*, %union.rec** %5646, align 8
  %5648 = icmp eq %union.rec* %5641, %5647
  br i1 %5648, label %5649, label %5679

; <label>:5649                                    ; preds = %5635
  %5650 = load %union.rec*, %union.rec** %y, align 8
  %5651 = bitcast %union.rec* %5650 to %struct.word_type*
  %5652 = getelementptr inbounds %struct.word_type, %struct.word_type* %5651, i32 0, i32 1
  %5653 = bitcast %union.FIRST_UNION* %5652 to %struct.anon*
  %5654 = getelementptr inbounds %struct.anon, %struct.anon* %5653, i32 0, i32 0
  %5655 = load i8, i8* %5654, align 1
  %5656 = zext i8 %5655 to i32
  %5657 = icmp eq i32 %5656, 11
  br i1 %5657, label %5667, label %5658

; <label>:5658                                    ; preds = %5649
  %5659 = load %union.rec*, %union.rec** %y, align 8
  %5660 = bitcast %union.rec* %5659 to %struct.word_type*
  %5661 = getelementptr inbounds %struct.word_type, %struct.word_type* %5660, i32 0, i32 1
  %5662 = bitcast %union.FIRST_UNION* %5661 to %struct.anon*
  %5663 = getelementptr inbounds %struct.anon, %struct.anon* %5662, i32 0, i32 0
  %5664 = load i8, i8* %5663, align 1
  %5665 = zext i8 %5664 to i32
  %5666 = icmp eq i32 %5665, 12
  br i1 %5666, label %5667, label %5679

; <label>:5667                                    ; preds = %5658, %5649
  %5668 = load %union.rec*, %union.rec** %y, align 8
  %5669 = bitcast %union.rec* %5668 to %struct.word_type*
  %5670 = getelementptr inbounds %struct.word_type, %struct.word_type* %5669, i32 0, i32 1
  %5671 = bitcast %union.FIRST_UNION* %5670 to %struct.FILE_POS*
  %5672 = load %union.rec*, %union.rec** %y, align 8
  %5673 = bitcast %union.rec* %5672 to %struct.word_type*
  %5674 = getelementptr inbounds %struct.word_type, %struct.word_type* %5673, i32 0, i32 4
  %5675 = getelementptr inbounds [4 x i8], [4 x i8]* %5674, i32 0, i32 0
  %5676 = load i32, i32* %frame_size8, align 4
  %5677 = call i8* @EchoLength(i32 %5676)
  %5678 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 23, i32 6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i32 0, i32 0), i32 2, %struct.FILE_POS* %5671, i8* %5675, i8* %5677)
  br label %5703

; <label>:5679                                    ; preds = %5658, %5635
  %5680 = load %union.rec*, %union.rec** %1, align 8
  %5681 = bitcast %union.rec* %5680 to %struct.word_type*
  %5682 = getelementptr inbounds %struct.word_type, %struct.word_type* %5681, i32 0, i32 1
  %5683 = bitcast %union.FIRST_UNION* %5682 to %struct.FILE_POS*
  %5684 = load %union.rec*, %union.rec** %1, align 8
  %5685 = bitcast %union.rec* %5684 to %struct.word_type*
  %5686 = getelementptr inbounds %struct.word_type, %struct.word_type* %5685, i32 0, i32 3
  %5687 = bitcast %union.THIRD_UNION* %5686 to %struct.anon.6*
  %5688 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5687, i32 0, i32 0
  %5689 = getelementptr inbounds [2 x i32], [2 x i32]* %5688, i32 0, i64 0
  %5690 = load i32, i32* %5689, align 4
  %5691 = load %union.rec*, %union.rec** %1, align 8
  %5692 = bitcast %union.rec* %5691 to %struct.word_type*
  %5693 = getelementptr inbounds %struct.word_type, %struct.word_type* %5692, i32 0, i32 3
  %5694 = bitcast %union.THIRD_UNION* %5693 to %struct.anon.6*
  %5695 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5694, i32 0, i32 1
  %5696 = getelementptr inbounds [2 x i32], [2 x i32]* %5695, i32 0, i64 0
  %5697 = load i32, i32* %5696, align 4
  %5698 = add nsw i32 %5690, %5697
  %5699 = call i8* @EchoLength(i32 %5698)
  %5700 = load i32, i32* %frame_size8, align 4
  %5701 = call i8* @EchoLength(i32 %5700)
  %5702 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 23, i32 7, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i32 0, i32 0), i32 2, %struct.FILE_POS* %5683, i8* %5699, i8* %5701)
  br label %5703

; <label>:5703                                    ; preds = %5679, %5667
  br label %5704

; <label>:5704                                    ; preds = %5890, %5703
  %5705 = load %union.rec*, %union.rec** %1, align 8
  %5706 = bitcast %union.rec* %5705 to %struct.word_type*
  %5707 = getelementptr inbounds %struct.word_type, %struct.word_type* %5706, i32 0, i32 0
  %5708 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5707, i32 0, i64 0
  %5709 = getelementptr inbounds %struct.LIST, %struct.LIST* %5708, i32 0, i32 1
  %5710 = load %union.rec*, %union.rec** %5709, align 8
  %5711 = load %union.rec*, %union.rec** %1, align 8
  %5712 = icmp ne %union.rec* %5710, %5711
  br i1 %5712, label %5713, label %5891

; <label>:5713                                    ; preds = %5704
  %5714 = load %union.rec*, %union.rec** %1, align 8
  %5715 = bitcast %union.rec* %5714 to %struct.word_type*
  %5716 = getelementptr inbounds %struct.word_type, %struct.word_type* %5715, i32 0, i32 0
  %5717 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5716, i32 0, i64 0
  %5718 = getelementptr inbounds %struct.LIST, %struct.LIST* %5717, i32 0, i32 1
  %5719 = load %union.rec*, %union.rec** %5718, align 8
  store %union.rec* %5719, %union.rec** @xx_link, align 8
  %5720 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %5720, %union.rec** @zz_hold, align 8
  %5721 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5722 = bitcast %union.rec* %5721 to %struct.word_type*
  %5723 = getelementptr inbounds %struct.word_type, %struct.word_type* %5722, i32 0, i32 0
  %5724 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5723, i32 0, i64 1
  %5725 = getelementptr inbounds %struct.LIST, %struct.LIST* %5724, i32 0, i32 1
  %5726 = load %union.rec*, %union.rec** %5725, align 8
  %5727 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5728 = icmp eq %union.rec* %5726, %5727
  br i1 %5728, label %5729, label %5730

; <label>:5729                                    ; preds = %5713
  br label %5771

; <label>:5730                                    ; preds = %5713
  %5731 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5732 = bitcast %union.rec* %5731 to %struct.word_type*
  %5733 = getelementptr inbounds %struct.word_type, %struct.word_type* %5732, i32 0, i32 0
  %5734 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5733, i32 0, i64 1
  %5735 = getelementptr inbounds %struct.LIST, %struct.LIST* %5734, i32 0, i32 1
  %5736 = load %union.rec*, %union.rec** %5735, align 8
  store %union.rec* %5736, %union.rec** @zz_res, align 8
  %5737 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5738 = bitcast %union.rec* %5737 to %struct.word_type*
  %5739 = getelementptr inbounds %struct.word_type, %struct.word_type* %5738, i32 0, i32 0
  %5740 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5739, i32 0, i64 1
  %5741 = getelementptr inbounds %struct.LIST, %struct.LIST* %5740, i32 0, i32 0
  %5742 = load %union.rec*, %union.rec** %5741, align 8
  %5743 = load %union.rec*, %union.rec** @zz_res, align 8
  %5744 = bitcast %union.rec* %5743 to %struct.word_type*
  %5745 = getelementptr inbounds %struct.word_type, %struct.word_type* %5744, i32 0, i32 0
  %5746 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5745, i32 0, i64 1
  %5747 = getelementptr inbounds %struct.LIST, %struct.LIST* %5746, i32 0, i32 0
  store %union.rec* %5742, %union.rec** %5747, align 8
  %5748 = load %union.rec*, %union.rec** @zz_res, align 8
  %5749 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5750 = bitcast %union.rec* %5749 to %struct.word_type*
  %5751 = getelementptr inbounds %struct.word_type, %struct.word_type* %5750, i32 0, i32 0
  %5752 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5751, i32 0, i64 1
  %5753 = getelementptr inbounds %struct.LIST, %struct.LIST* %5752, i32 0, i32 0
  %5754 = load %union.rec*, %union.rec** %5753, align 8
  %5755 = bitcast %union.rec* %5754 to %struct.word_type*
  %5756 = getelementptr inbounds %struct.word_type, %struct.word_type* %5755, i32 0, i32 0
  %5757 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5756, i32 0, i64 1
  %5758 = getelementptr inbounds %struct.LIST, %struct.LIST* %5757, i32 0, i32 1
  store %union.rec* %5748, %union.rec** %5758, align 8
  %5759 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5760 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5761 = bitcast %union.rec* %5760 to %struct.word_type*
  %5762 = getelementptr inbounds %struct.word_type, %struct.word_type* %5761, i32 0, i32 0
  %5763 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5762, i32 0, i64 1
  %5764 = getelementptr inbounds %struct.LIST, %struct.LIST* %5763, i32 0, i32 1
  store %union.rec* %5759, %union.rec** %5764, align 8
  %5765 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5766 = bitcast %union.rec* %5765 to %struct.word_type*
  %5767 = getelementptr inbounds %struct.word_type, %struct.word_type* %5766, i32 0, i32 0
  %5768 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5767, i32 0, i64 1
  %5769 = getelementptr inbounds %struct.LIST, %struct.LIST* %5768, i32 0, i32 0
  store %union.rec* %5759, %union.rec** %5769, align 8
  %5770 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %5771

; <label>:5771                                    ; preds = %5730, %5729
  %5772 = phi %union.rec* [ null, %5729 ], [ %5770, %5730 ]
  store %union.rec* %5772, %union.rec** @xx_tmp, align 8
  %5773 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %5773, %union.rec** @zz_hold, align 8
  %5774 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5775 = bitcast %union.rec* %5774 to %struct.word_type*
  %5776 = getelementptr inbounds %struct.word_type, %struct.word_type* %5775, i32 0, i32 0
  %5777 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5776, i32 0, i64 0
  %5778 = getelementptr inbounds %struct.LIST, %struct.LIST* %5777, i32 0, i32 1
  %5779 = load %union.rec*, %union.rec** %5778, align 8
  %5780 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5781 = icmp eq %union.rec* %5779, %5780
  br i1 %5781, label %5782, label %5783

; <label>:5782                                    ; preds = %5771
  br label %5824

; <label>:5783                                    ; preds = %5771
  %5784 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5785 = bitcast %union.rec* %5784 to %struct.word_type*
  %5786 = getelementptr inbounds %struct.word_type, %struct.word_type* %5785, i32 0, i32 0
  %5787 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5786, i32 0, i64 0
  %5788 = getelementptr inbounds %struct.LIST, %struct.LIST* %5787, i32 0, i32 1
  %5789 = load %union.rec*, %union.rec** %5788, align 8
  store %union.rec* %5789, %union.rec** @zz_res, align 8
  %5790 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5791 = bitcast %union.rec* %5790 to %struct.word_type*
  %5792 = getelementptr inbounds %struct.word_type, %struct.word_type* %5791, i32 0, i32 0
  %5793 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5792, i32 0, i64 0
  %5794 = getelementptr inbounds %struct.LIST, %struct.LIST* %5793, i32 0, i32 0
  %5795 = load %union.rec*, %union.rec** %5794, align 8
  %5796 = load %union.rec*, %union.rec** @zz_res, align 8
  %5797 = bitcast %union.rec* %5796 to %struct.word_type*
  %5798 = getelementptr inbounds %struct.word_type, %struct.word_type* %5797, i32 0, i32 0
  %5799 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5798, i32 0, i64 0
  %5800 = getelementptr inbounds %struct.LIST, %struct.LIST* %5799, i32 0, i32 0
  store %union.rec* %5795, %union.rec** %5800, align 8
  %5801 = load %union.rec*, %union.rec** @zz_res, align 8
  %5802 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5803 = bitcast %union.rec* %5802 to %struct.word_type*
  %5804 = getelementptr inbounds %struct.word_type, %struct.word_type* %5803, i32 0, i32 0
  %5805 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5804, i32 0, i64 0
  %5806 = getelementptr inbounds %struct.LIST, %struct.LIST* %5805, i32 0, i32 0
  %5807 = load %union.rec*, %union.rec** %5806, align 8
  %5808 = bitcast %union.rec* %5807 to %struct.word_type*
  %5809 = getelementptr inbounds %struct.word_type, %struct.word_type* %5808, i32 0, i32 0
  %5810 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5809, i32 0, i64 0
  %5811 = getelementptr inbounds %struct.LIST, %struct.LIST* %5810, i32 0, i32 1
  store %union.rec* %5801, %union.rec** %5811, align 8
  %5812 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5813 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5814 = bitcast %union.rec* %5813 to %struct.word_type*
  %5815 = getelementptr inbounds %struct.word_type, %struct.word_type* %5814, i32 0, i32 0
  %5816 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5815, i32 0, i64 0
  %5817 = getelementptr inbounds %struct.LIST, %struct.LIST* %5816, i32 0, i32 1
  store %union.rec* %5812, %union.rec** %5817, align 8
  %5818 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5819 = bitcast %union.rec* %5818 to %struct.word_type*
  %5820 = getelementptr inbounds %struct.word_type, %struct.word_type* %5819, i32 0, i32 0
  %5821 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5820, i32 0, i64 0
  %5822 = getelementptr inbounds %struct.LIST, %struct.LIST* %5821, i32 0, i32 0
  store %union.rec* %5812, %union.rec** %5822, align 8
  %5823 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %5824

; <label>:5824                                    ; preds = %5783, %5782
  %5825 = phi %union.rec* [ null, %5782 ], [ %5823, %5783 ]
  %5826 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %5826, %union.rec** @zz_hold, align 8
  %5827 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %5827, %union.rec** @zz_hold, align 8
  %5828 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5829 = bitcast %union.rec* %5828 to %struct.word_type*
  %5830 = getelementptr inbounds %struct.word_type, %struct.word_type* %5829, i32 0, i32 1
  %5831 = bitcast %union.FIRST_UNION* %5830 to %struct.anon*
  %5832 = getelementptr inbounds %struct.anon, %struct.anon* %5831, i32 0, i32 0
  %5833 = load i8, i8* %5832, align 1
  %5834 = zext i8 %5833 to i32
  %5835 = icmp eq i32 %5834, 11
  br i1 %5835, label %5845, label %5836

; <label>:5836                                    ; preds = %5824
  %5837 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5838 = bitcast %union.rec* %5837 to %struct.word_type*
  %5839 = getelementptr inbounds %struct.word_type, %struct.word_type* %5838, i32 0, i32 1
  %5840 = bitcast %union.FIRST_UNION* %5839 to %struct.anon*
  %5841 = getelementptr inbounds %struct.anon, %struct.anon* %5840, i32 0, i32 0
  %5842 = load i8, i8* %5841, align 1
  %5843 = zext i8 %5842 to i32
  %5844 = icmp eq i32 %5843, 12
  br i1 %5844, label %5845, label %5853

; <label>:5845                                    ; preds = %5836, %5824
  %5846 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5847 = bitcast %union.rec* %5846 to %struct.word_type*
  %5848 = getelementptr inbounds %struct.word_type, %struct.word_type* %5847, i32 0, i32 1
  %5849 = bitcast %union.FIRST_UNION* %5848 to %struct.anon*
  %5850 = getelementptr inbounds %struct.anon, %struct.anon* %5849, i32 0, i32 1
  %5851 = load i8, i8* %5850, align 1
  %5852 = zext i8 %5851 to i32
  br label %5864

; <label>:5853                                    ; preds = %5836
  %5854 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5855 = bitcast %union.rec* %5854 to %struct.word_type*
  %5856 = getelementptr inbounds %struct.word_type, %struct.word_type* %5855, i32 0, i32 1
  %5857 = bitcast %union.FIRST_UNION* %5856 to %struct.anon*
  %5858 = getelementptr inbounds %struct.anon, %struct.anon* %5857, i32 0, i32 0
  %5859 = load i8, i8* %5858, align 1
  %5860 = zext i8 %5859 to i64
  %5861 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %5860
  %5862 = load i8, i8* %5861, align 1
  %5863 = zext i8 %5862 to i32
  br label %5864

; <label>:5864                                    ; preds = %5853, %5845
  %5865 = phi i32 [ %5852, %5845 ], [ %5863, %5853 ]
  store i32 %5865, i32* @zz_size, align 4
  %5866 = load i32, i32* @zz_size, align 4
  %5867 = sext i32 %5866 to i64
  %5868 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %5867
  %5869 = load %union.rec*, %union.rec** %5868, align 8
  %5870 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5871 = bitcast %union.rec* %5870 to %struct.word_type*
  %5872 = getelementptr inbounds %struct.word_type, %struct.word_type* %5871, i32 0, i32 0
  %5873 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5872, i32 0, i64 0
  %5874 = getelementptr inbounds %struct.LIST, %struct.LIST* %5873, i32 0, i32 0
  store %union.rec* %5869, %union.rec** %5874, align 8
  %5875 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5876 = load i32, i32* @zz_size, align 4
  %5877 = sext i32 %5876 to i64
  %5878 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %5877
  store %union.rec* %5875, %union.rec** %5878, align 8
  %5879 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %5880 = bitcast %union.rec* %5879 to %struct.word_type*
  %5881 = getelementptr inbounds %struct.word_type, %struct.word_type* %5880, i32 0, i32 0
  %5882 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5881, i32 0, i64 1
  %5883 = getelementptr inbounds %struct.LIST, %struct.LIST* %5882, i32 0, i32 1
  %5884 = load %union.rec*, %union.rec** %5883, align 8
  %5885 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %5886 = icmp eq %union.rec* %5884, %5885
  br i1 %5886, label %5887, label %5890

; <label>:5887                                    ; preds = %5864
  %5888 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %5889 = call i32 @DisposeObject(%union.rec* %5888)
  br label %5890

; <label>:5890                                    ; preds = %5887, %5864
  br label %5704

; <label>:5891                                    ; preds = %5704
  %5892 = load %union.rec*, %union.rec** %1, align 8
  %5893 = bitcast %union.rec* %5892 to %struct.word_type*
  %5894 = getelementptr inbounds %struct.word_type, %struct.word_type* %5893, i32 0, i32 1
  %5895 = bitcast %union.FIRST_UNION* %5894 to %struct.FILE_POS*
  %5896 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), %struct.FILE_POS* %5895)
  store %union.rec* %5896, %union.rec** %y, align 8
  %5897 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %5898 = zext i8 %5897 to i32
  store i32 %5898, i32* @zz_size, align 4
  %5899 = sext i32 %5898 to i64
  %5900 = icmp uge i64 %5899, 265
  br i1 %5900, label %5901, label %5904

; <label>:5901                                    ; preds = %5891
  %5902 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5903 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %5902)
  br label %5929

; <label>:5904                                    ; preds = %5891
  %5905 = load i32, i32* @zz_size, align 4
  %5906 = sext i32 %5905 to i64
  %5907 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %5906
  %5908 = load %union.rec*, %union.rec** %5907, align 8
  %5909 = icmp eq %union.rec* %5908, null
  br i1 %5909, label %5910, label %5914

; <label>:5910                                    ; preds = %5904
  %5911 = load i32, i32* @zz_size, align 4
  %5912 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5913 = call %union.rec* @GetMemory(i32 %5911, %struct.FILE_POS* %5912)
  store %union.rec* %5913, %union.rec** @zz_hold, align 8
  br label %5928

; <label>:5914                                    ; preds = %5904
  %5915 = load i32, i32* @zz_size, align 4
  %5916 = sext i32 %5915 to i64
  %5917 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %5916
  %5918 = load %union.rec*, %union.rec** %5917, align 8
  store %union.rec* %5918, %union.rec** @zz_hold, align 8
  store %union.rec* %5918, %union.rec** @zz_hold, align 8
  %5919 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5920 = bitcast %union.rec* %5919 to %struct.word_type*
  %5921 = getelementptr inbounds %struct.word_type, %struct.word_type* %5920, i32 0, i32 0
  %5922 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5921, i32 0, i64 0
  %5923 = getelementptr inbounds %struct.LIST, %struct.LIST* %5922, i32 0, i32 0
  %5924 = load %union.rec*, %union.rec** %5923, align 8
  %5925 = load i32, i32* @zz_size, align 4
  %5926 = sext i32 %5925 to i64
  %5927 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %5926
  store %union.rec* %5924, %union.rec** %5927, align 8
  br label %5928

; <label>:5928                                    ; preds = %5914, %5910
  br label %5929

; <label>:5929                                    ; preds = %5928, %5901
  %5930 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5931 = bitcast %union.rec* %5930 to %struct.word_type*
  %5932 = getelementptr inbounds %struct.word_type, %struct.word_type* %5931, i32 0, i32 1
  %5933 = bitcast %union.FIRST_UNION* %5932 to %struct.anon*
  %5934 = getelementptr inbounds %struct.anon, %struct.anon* %5933, i32 0, i32 0
  store i8 0, i8* %5934, align 1
  %5935 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5936 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5937 = bitcast %union.rec* %5936 to %struct.word_type*
  %5938 = getelementptr inbounds %struct.word_type, %struct.word_type* %5937, i32 0, i32 0
  %5939 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5938, i32 0, i64 1
  %5940 = getelementptr inbounds %struct.LIST, %struct.LIST* %5939, i32 0, i32 1
  store %union.rec* %5935, %union.rec** %5940, align 8
  %5941 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5942 = bitcast %union.rec* %5941 to %struct.word_type*
  %5943 = getelementptr inbounds %struct.word_type, %struct.word_type* %5942, i32 0, i32 0
  %5944 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5943, i32 0, i64 1
  %5945 = getelementptr inbounds %struct.LIST, %struct.LIST* %5944, i32 0, i32 0
  store %union.rec* %5935, %union.rec** %5945, align 8
  %5946 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5947 = bitcast %union.rec* %5946 to %struct.word_type*
  %5948 = getelementptr inbounds %struct.word_type, %struct.word_type* %5947, i32 0, i32 0
  %5949 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5948, i32 0, i64 0
  %5950 = getelementptr inbounds %struct.LIST, %struct.LIST* %5949, i32 0, i32 1
  store %union.rec* %5935, %union.rec** %5950, align 8
  %5951 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5952 = bitcast %union.rec* %5951 to %struct.word_type*
  %5953 = getelementptr inbounds %struct.word_type, %struct.word_type* %5952, i32 0, i32 0
  %5954 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5953, i32 0, i64 0
  %5955 = getelementptr inbounds %struct.LIST, %struct.LIST* %5954, i32 0, i32 0
  store %union.rec* %5935, %union.rec** %5955, align 8
  store %union.rec* %5935, %union.rec** @xx_link, align 8
  %5956 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %5956, %union.rec** @zz_res, align 8
  %5957 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %5957, %union.rec** @zz_hold, align 8
  %5958 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5959 = icmp eq %union.rec* %5958, null
  br i1 %5959, label %5960, label %5962

; <label>:5960                                    ; preds = %5929
  %5961 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6010

; <label>:5962                                    ; preds = %5929
  %5963 = load %union.rec*, %union.rec** @zz_res, align 8
  %5964 = icmp eq %union.rec* %5963, null
  br i1 %5964, label %5965, label %5967

; <label>:5965                                    ; preds = %5962
  %5966 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %6008

; <label>:5967                                    ; preds = %5962
  %5968 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5969 = bitcast %union.rec* %5968 to %struct.word_type*
  %5970 = getelementptr inbounds %struct.word_type, %struct.word_type* %5969, i32 0, i32 0
  %5971 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5970, i32 0, i64 0
  %5972 = getelementptr inbounds %struct.LIST, %struct.LIST* %5971, i32 0, i32 0
  %5973 = load %union.rec*, %union.rec** %5972, align 8
  store %union.rec* %5973, %union.rec** @zz_tmp, align 8
  %5974 = load %union.rec*, %union.rec** @zz_res, align 8
  %5975 = bitcast %union.rec* %5974 to %struct.word_type*
  %5976 = getelementptr inbounds %struct.word_type, %struct.word_type* %5975, i32 0, i32 0
  %5977 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5976, i32 0, i64 0
  %5978 = getelementptr inbounds %struct.LIST, %struct.LIST* %5977, i32 0, i32 0
  %5979 = load %union.rec*, %union.rec** %5978, align 8
  %5980 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5981 = bitcast %union.rec* %5980 to %struct.word_type*
  %5982 = getelementptr inbounds %struct.word_type, %struct.word_type* %5981, i32 0, i32 0
  %5983 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5982, i32 0, i64 0
  %5984 = getelementptr inbounds %struct.LIST, %struct.LIST* %5983, i32 0, i32 0
  store %union.rec* %5979, %union.rec** %5984, align 8
  %5985 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5986 = load %union.rec*, %union.rec** @zz_res, align 8
  %5987 = bitcast %union.rec* %5986 to %struct.word_type*
  %5988 = getelementptr inbounds %struct.word_type, %struct.word_type* %5987, i32 0, i32 0
  %5989 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5988, i32 0, i64 0
  %5990 = getelementptr inbounds %struct.LIST, %struct.LIST* %5989, i32 0, i32 0
  %5991 = load %union.rec*, %union.rec** %5990, align 8
  %5992 = bitcast %union.rec* %5991 to %struct.word_type*
  %5993 = getelementptr inbounds %struct.word_type, %struct.word_type* %5992, i32 0, i32 0
  %5994 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5993, i32 0, i64 0
  %5995 = getelementptr inbounds %struct.LIST, %struct.LIST* %5994, i32 0, i32 1
  store %union.rec* %5985, %union.rec** %5995, align 8
  %5996 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %5997 = load %union.rec*, %union.rec** @zz_res, align 8
  %5998 = bitcast %union.rec* %5997 to %struct.word_type*
  %5999 = getelementptr inbounds %struct.word_type, %struct.word_type* %5998, i32 0, i32 0
  %6000 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5999, i32 0, i64 0
  %6001 = getelementptr inbounds %struct.LIST, %struct.LIST* %6000, i32 0, i32 0
  store %union.rec* %5996, %union.rec** %6001, align 8
  %6002 = load %union.rec*, %union.rec** @zz_res, align 8
  %6003 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6004 = bitcast %union.rec* %6003 to %struct.word_type*
  %6005 = getelementptr inbounds %struct.word_type, %struct.word_type* %6004, i32 0, i32 0
  %6006 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6005, i32 0, i64 0
  %6007 = getelementptr inbounds %struct.LIST, %struct.LIST* %6006, i32 0, i32 1
  store %union.rec* %6002, %union.rec** %6007, align 8
  br label %6008

; <label>:6008                                    ; preds = %5967, %5965
  %6009 = phi %union.rec* [ %5966, %5965 ], [ %6002, %5967 ]
  br label %6010

; <label>:6010                                    ; preds = %6008, %5960
  %6011 = phi %union.rec* [ %5961, %5960 ], [ %6009, %6008 ]
  %6012 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6012, %union.rec** @zz_res, align 8
  %6013 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %6013, %union.rec** @zz_hold, align 8
  %6014 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6015 = icmp eq %union.rec* %6014, null
  br i1 %6015, label %6016, label %6018

; <label>:6016                                    ; preds = %6010
  %6017 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6066

; <label>:6018                                    ; preds = %6010
  %6019 = load %union.rec*, %union.rec** @zz_res, align 8
  %6020 = icmp eq %union.rec* %6019, null
  br i1 %6020, label %6021, label %6023

; <label>:6021                                    ; preds = %6018
  %6022 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %6064

; <label>:6023                                    ; preds = %6018
  %6024 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6025 = bitcast %union.rec* %6024 to %struct.word_type*
  %6026 = getelementptr inbounds %struct.word_type, %struct.word_type* %6025, i32 0, i32 0
  %6027 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6026, i32 0, i64 1
  %6028 = getelementptr inbounds %struct.LIST, %struct.LIST* %6027, i32 0, i32 0
  %6029 = load %union.rec*, %union.rec** %6028, align 8
  store %union.rec* %6029, %union.rec** @zz_tmp, align 8
  %6030 = load %union.rec*, %union.rec** @zz_res, align 8
  %6031 = bitcast %union.rec* %6030 to %struct.word_type*
  %6032 = getelementptr inbounds %struct.word_type, %struct.word_type* %6031, i32 0, i32 0
  %6033 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6032, i32 0, i64 1
  %6034 = getelementptr inbounds %struct.LIST, %struct.LIST* %6033, i32 0, i32 0
  %6035 = load %union.rec*, %union.rec** %6034, align 8
  %6036 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6037 = bitcast %union.rec* %6036 to %struct.word_type*
  %6038 = getelementptr inbounds %struct.word_type, %struct.word_type* %6037, i32 0, i32 0
  %6039 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6038, i32 0, i64 1
  %6040 = getelementptr inbounds %struct.LIST, %struct.LIST* %6039, i32 0, i32 0
  store %union.rec* %6035, %union.rec** %6040, align 8
  %6041 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6042 = load %union.rec*, %union.rec** @zz_res, align 8
  %6043 = bitcast %union.rec* %6042 to %struct.word_type*
  %6044 = getelementptr inbounds %struct.word_type, %struct.word_type* %6043, i32 0, i32 0
  %6045 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6044, i32 0, i64 1
  %6046 = getelementptr inbounds %struct.LIST, %struct.LIST* %6045, i32 0, i32 0
  %6047 = load %union.rec*, %union.rec** %6046, align 8
  %6048 = bitcast %union.rec* %6047 to %struct.word_type*
  %6049 = getelementptr inbounds %struct.word_type, %struct.word_type* %6048, i32 0, i32 0
  %6050 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6049, i32 0, i64 1
  %6051 = getelementptr inbounds %struct.LIST, %struct.LIST* %6050, i32 0, i32 1
  store %union.rec* %6041, %union.rec** %6051, align 8
  %6052 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6053 = load %union.rec*, %union.rec** @zz_res, align 8
  %6054 = bitcast %union.rec* %6053 to %struct.word_type*
  %6055 = getelementptr inbounds %struct.word_type, %struct.word_type* %6054, i32 0, i32 0
  %6056 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6055, i32 0, i64 1
  %6057 = getelementptr inbounds %struct.LIST, %struct.LIST* %6056, i32 0, i32 0
  store %union.rec* %6052, %union.rec** %6057, align 8
  %6058 = load %union.rec*, %union.rec** @zz_res, align 8
  %6059 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6060 = bitcast %union.rec* %6059 to %struct.word_type*
  %6061 = getelementptr inbounds %struct.word_type, %struct.word_type* %6060, i32 0, i32 0
  %6062 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6061, i32 0, i64 1
  %6063 = getelementptr inbounds %struct.LIST, %struct.LIST* %6062, i32 0, i32 1
  store %union.rec* %6058, %union.rec** %6063, align 8
  br label %6064

; <label>:6064                                    ; preds = %6023, %6021
  %6065 = phi %union.rec* [ %6022, %6021 ], [ %6058, %6023 ]
  br label %6066

; <label>:6066                                    ; preds = %6064, %6016
  %6067 = phi %union.rec* [ %6017, %6016 ], [ %6065, %6064 ]
  %6068 = load %union.rec*, %union.rec** %y, align 8
  %6069 = bitcast %union.rec* %6068 to %struct.word_type*
  %6070 = getelementptr inbounds %struct.word_type, %struct.word_type* %6069, i32 0, i32 3
  %6071 = bitcast %union.THIRD_UNION* %6070 to %struct.anon.6*
  %6072 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %6071, i32 0, i32 1
  %6073 = getelementptr inbounds [2 x i32], [2 x i32]* %6072, i32 0, i64 0
  store i32 0, i32* %6073, align 4
  %6074 = load %union.rec*, %union.rec** %y, align 8
  %6075 = bitcast %union.rec* %6074 to %struct.word_type*
  %6076 = getelementptr inbounds %struct.word_type, %struct.word_type* %6075, i32 0, i32 3
  %6077 = bitcast %union.THIRD_UNION* %6076 to %struct.anon.6*
  %6078 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %6077, i32 0, i32 0
  %6079 = getelementptr inbounds [2 x i32], [2 x i32]* %6078, i32 0, i64 0
  store i32 0, i32* %6079, align 4
  %6080 = load %union.rec*, %union.rec** %y, align 8
  %6081 = bitcast %union.rec* %6080 to %struct.word_type*
  %6082 = getelementptr inbounds %struct.word_type, %struct.word_type* %6081, i32 0, i32 3
  %6083 = bitcast %union.THIRD_UNION* %6082 to %struct.anon.6*
  %6084 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %6083, i32 0, i32 1
  %6085 = getelementptr inbounds [2 x i32], [2 x i32]* %6084, i32 0, i64 1
  store i32 0, i32* %6085, align 4
  %6086 = load %union.rec*, %union.rec** %y, align 8
  %6087 = bitcast %union.rec* %6086 to %struct.word_type*
  %6088 = getelementptr inbounds %struct.word_type, %struct.word_type* %6087, i32 0, i32 3
  %6089 = bitcast %union.THIRD_UNION* %6088 to %struct.anon.6*
  %6090 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %6089, i32 0, i32 0
  %6091 = getelementptr inbounds [2 x i32], [2 x i32]* %6090, i32 0, i64 1
  store i32 0, i32* %6091, align 4
  br label %6092

; <label>:6092                                    ; preds = %6066, %5558
  br label %7457

; <label>:6093                                    ; preds = %5381, %5364
  %6094 = load i32, i32* %actual_size, align 4
  %6095 = load i32, i32* %frame_size8, align 4
  %6096 = icmp sgt i32 %6094, %6095
  br i1 %6096, label %6097, label %6112

; <label>:6097                                    ; preds = %6093
  %6098 = load i32, i32* %adjustable_gaps, align 4
  %6099 = icmp sgt i32 %6098, 0
  br i1 %6099, label %6103, label %6100

; <label>:6100                                    ; preds = %6097
  %6101 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6102 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %6101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0))
  br label %6103

; <label>:6103                                    ; preds = %6100, %6097
  %6104 = load %union.rec*, %union.rec** %1, align 8
  %6105 = bitcast %union.rec* %6104 to %struct.word_type*
  %6106 = getelementptr inbounds %struct.word_type, %struct.word_type* %6105, i32 0, i32 2
  %6107 = bitcast %union.SECOND_UNION* %6106 to %struct.anon.2*
  %6108 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6107, i32 0, i32 2
  %6109 = load i16, i16* %6108, align 2
  %6110 = and i16 %6109, -2049
  %6111 = or i16 %6110, 2048
  store i16 %6111, i16* %6108, align 2
  store i32 0, i32* %adjust_indent, align 4
  br label %6158

; <label>:6112                                    ; preds = %6093
  %6113 = load %union.rec*, %union.rec** %1, align 8
  %6114 = bitcast %union.rec* %6113 to %struct.closure_type*
  %6115 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %6114, i32 0, i32 4
  %6116 = bitcast %union.FOURTH_UNION* %6115 to %struct.STYLE*
  %6117 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %6116, i32 0, i32 1
  %6118 = bitcast %union.anon.10* %6117 to %struct.anon.11*
  %6119 = bitcast %struct.anon.11* %6118 to i8*
  %6120 = load i8, i8* %6119, align 4
  %6121 = lshr i8 %6120, 4
  %6122 = and i8 %6121, 7
  %6123 = zext i8 %6122 to i32
  switch i32 %6123, label %6156 [
    i32 7, label %6124
    i32 5, label %6133
    i32 6, label %6145
  ]

; <label>:6124                                    ; preds = %6112
  %6125 = load %union.rec*, %union.rec** %1, align 8
  %6126 = bitcast %union.rec* %6125 to %struct.word_type*
  %6127 = getelementptr inbounds %struct.word_type, %struct.word_type* %6126, i32 0, i32 2
  %6128 = bitcast %union.SECOND_UNION* %6127 to %struct.anon.2*
  %6129 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6128, i32 0, i32 2
  %6130 = load i16, i16* %6129, align 2
  %6131 = and i16 %6130, -2049
  %6132 = or i16 %6131, 2048
  store i16 %6132, i16* %6129, align 2
  store i32 0, i32* %adjust_indent, align 4
  br label %6157

; <label>:6133                                    ; preds = %6112
  %6134 = load %union.rec*, %union.rec** %1, align 8
  %6135 = bitcast %union.rec* %6134 to %struct.word_type*
  %6136 = getelementptr inbounds %struct.word_type, %struct.word_type* %6135, i32 0, i32 2
  %6137 = bitcast %union.SECOND_UNION* %6136 to %struct.anon.2*
  %6138 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6137, i32 0, i32 2
  %6139 = load i16, i16* %6138, align 2
  %6140 = and i16 %6139, -2049
  store i16 %6140, i16* %6138, align 2
  %6141 = load i32, i32* %frame_size8, align 4
  %6142 = load i32, i32* %actual_size, align 4
  %6143 = sub nsw i32 %6141, %6142
  %6144 = sdiv i32 %6143, 2
  store i32 %6144, i32* %adjust_indent, align 4
  br label %6157

; <label>:6145                                    ; preds = %6112
  %6146 = load %union.rec*, %union.rec** %1, align 8
  %6147 = bitcast %union.rec* %6146 to %struct.word_type*
  %6148 = getelementptr inbounds %struct.word_type, %struct.word_type* %6147, i32 0, i32 2
  %6149 = bitcast %union.SECOND_UNION* %6148 to %struct.anon.2*
  %6150 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6149, i32 0, i32 2
  %6151 = load i16, i16* %6150, align 2
  %6152 = and i16 %6151, -2049
  store i16 %6152, i16* %6150, align 2
  %6153 = load i32, i32* %frame_size8, align 4
  %6154 = load i32, i32* %actual_size, align 4
  %6155 = sub nsw i32 %6153, %6154
  store i32 %6155, i32* %adjust_indent, align 4
  br label %6157

; <label>:6156                                    ; preds = %6112
  store i32 0, i32* %adjust_indent, align 4
  br label %6157

; <label>:6157                                    ; preds = %6156, %6145, %6133, %6124
  br label %6158

; <label>:6158                                    ; preds = %6157, %6103
  %6159 = load %union.rec*, %union.rec** %1, align 8
  %6160 = bitcast %union.rec* %6159 to %struct.word_type*
  %6161 = getelementptr inbounds %struct.word_type, %struct.word_type* %6160, i32 0, i32 2
  %6162 = bitcast %union.SECOND_UNION* %6161 to %struct.anon.2*
  %6163 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6162, i32 0, i32 2
  %6164 = load i16, i16* %6163, align 2
  %6165 = lshr i16 %6164, 11
  %6166 = and i16 %6165, 1
  %6167 = zext i16 %6166 to i32
  %6168 = icmp ne i32 %6167, 0
  br i1 %6168, label %6169, label %6185

; <label>:6169                                    ; preds = %6158
  %6170 = load i32, i32* %adjustable_gaps, align 4
  %6171 = icmp sgt i32 %6170, 0
  br i1 %6171, label %6172, label %6185

; <label>:6172                                    ; preds = %6169
  store i32 1, i32* %will_adjust, align 4
  %6173 = load i32, i32* %frame_size8, align 4
  %6174 = load i32, i32* %actual_size, align 4
  %6175 = sub nsw i32 %6173, %6174
  %6176 = load i32, i32* %adjustable_gaps, align 4
  %6177 = sdiv i32 %6175, %6176
  store i32 %6177, i32* %adjust_inc, align 4
  %6178 = load i32, i32* %adjust_inc, align 4
  %6179 = icmp slt i32 %6178, 0
  br i1 %6179, label %6180, label %6181

; <label>:6180                                    ; preds = %6172
  br label %6183

; <label>:6181                                    ; preds = %6172
  %6182 = load i32, i32* %adjust_inc, align 4
  br label %6183

; <label>:6183                                    ; preds = %6181, %6180
  %6184 = phi i32 [ 0, %6180 ], [ %6182, %6181 ]
  store i32 %6184, i32* %inc10, align 4
  store i32 0, i32* %gaps_sofar, align 4
  store i32 0, i32* %adjust_sofar, align 4
  br label %6186

; <label>:6185                                    ; preds = %6169, %6158
  store i32 0, i32* %will_adjust, align 4
  br label %6186

; <label>:6186                                    ; preds = %6185, %6183
  store i32 0, i32* %underlining, align 4
  %6187 = load i32, i32* %will_adjust, align 4
  %6188 = icmp ne i32 %6187, 0
  br i1 %6188, label %6189, label %6192

; <label>:6189                                    ; preds = %6186
  %6190 = load %union.rec*, %union.rec** %last_bad_gap, align 8
  %6191 = icmp eq %union.rec* %6190, null
  br label %6192

; <label>:6192                                    ; preds = %6189, %6186
  %6193 = phi i1 [ false, %6186 ], [ %6191, %6189 ]
  %6194 = zext i1 %6193 to i32
  store i32 %6194, i32* %adjusting, align 4
  store i32 1, i32* %jn, align 4
  %6195 = load %union.rec*, %union.rec** %1, align 8
  %6196 = bitcast %union.rec* %6195 to %struct.word_type*
  %6197 = getelementptr inbounds %struct.word_type, %struct.word_type* %6196, i32 0, i32 0
  %6198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6197, i32 0, i64 0
  %6199 = getelementptr inbounds %struct.LIST, %struct.LIST* %6198, i32 0, i32 1
  %6200 = load %union.rec*, %union.rec** %6199, align 8
  store %union.rec* %6200, %union.rec** %link, align 8
  br label %6201

; <label>:6201                                    ; preds = %6290, %6192
  %6202 = load %union.rec*, %union.rec** %link, align 8
  %6203 = load %union.rec*, %union.rec** %1, align 8
  %6204 = icmp ne %union.rec* %6202, %6203
  br i1 %6204, label %6205, label %6297

; <label>:6205                                    ; preds = %6201
  %6206 = load %union.rec*, %union.rec** %link, align 8
  %6207 = bitcast %union.rec* %6206 to %struct.word_type*
  %6208 = getelementptr inbounds %struct.word_type, %struct.word_type* %6207, i32 0, i32 0
  %6209 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6208, i32 0, i64 1
  %6210 = getelementptr inbounds %struct.LIST, %struct.LIST* %6209, i32 0, i32 0
  %6211 = load %union.rec*, %union.rec** %6210, align 8
  store %union.rec* %6211, %union.rec** %y, align 8
  br label %6212

; <label>:6212                                    ; preds = %6222, %6205
  %6213 = load %union.rec*, %union.rec** %y, align 8
  %6214 = bitcast %union.rec* %6213 to %struct.word_type*
  %6215 = getelementptr inbounds %struct.word_type, %struct.word_type* %6214, i32 0, i32 1
  %6216 = bitcast %union.FIRST_UNION* %6215 to %struct.anon*
  %6217 = getelementptr inbounds %struct.anon, %struct.anon* %6216, i32 0, i32 0
  %6218 = load i8, i8* %6217, align 1
  %6219 = zext i8 %6218 to i32
  %6220 = icmp eq i32 %6219, 0
  br i1 %6220, label %6221, label %6229

; <label>:6221                                    ; preds = %6212
  br label %6222

; <label>:6222                                    ; preds = %6221
  %6223 = load %union.rec*, %union.rec** %y, align 8
  %6224 = bitcast %union.rec* %6223 to %struct.word_type*
  %6225 = getelementptr inbounds %struct.word_type, %struct.word_type* %6224, i32 0, i32 0
  %6226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6225, i32 0, i64 1
  %6227 = getelementptr inbounds %struct.LIST, %struct.LIST* %6226, i32 0, i32 0
  %6228 = load %union.rec*, %union.rec** %6227, align 8
  store %union.rec* %6228, %union.rec** %y, align 8
  br label %6212

; <label>:6229                                    ; preds = %6212
  %6230 = load %union.rec*, %union.rec** %y, align 8
  %6231 = bitcast %union.rec* %6230 to %struct.word_type*
  %6232 = getelementptr inbounds %struct.word_type, %struct.word_type* %6231, i32 0, i32 1
  %6233 = bitcast %union.FIRST_UNION* %6232 to %struct.anon*
  %6234 = getelementptr inbounds %struct.anon, %struct.anon* %6233, i32 0, i32 0
  %6235 = load i8, i8* %6234, align 1
  %6236 = zext i8 %6235 to i32
  %6237 = icmp eq i32 %6236, 1
  br i1 %6237, label %6238, label %6254

; <label>:6238                                    ; preds = %6229
  %6239 = load i32, i32* %jn, align 4
  %6240 = icmp ne i32 %6239, 0
  br i1 %6240, label %6241, label %6251

; <label>:6241                                    ; preds = %6238
  %6242 = load %union.rec*, %union.rec** %y, align 8
  %6243 = bitcast %union.rec* %6242 to %struct.gapobj_type*
  %6244 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %6243, i32 0, i32 3
  %6245 = bitcast %struct.GAP* %6244 to i16*
  %6246 = load i16, i16* %6245, align 4
  %6247 = lshr i16 %6246, 9
  %6248 = and i16 %6247, 1
  %6249 = zext i16 %6248 to i32
  %6250 = icmp ne i32 %6249, 0
  br label %6251

; <label>:6251                                    ; preds = %6241, %6238
  %6252 = phi i1 [ false, %6238 ], [ %6250, %6241 ]
  %6253 = zext i1 %6252 to i32
  store i32 %6253, i32* %jn, align 4
  br label %6289

; <label>:6254                                    ; preds = %6229
  %6255 = load %union.rec*, %union.rec** %y, align 8
  %6256 = bitcast %union.rec* %6255 to %struct.word_type*
  %6257 = getelementptr inbounds %struct.word_type, %struct.word_type* %6256, i32 0, i32 1
  %6258 = bitcast %union.FIRST_UNION* %6257 to %struct.anon*
  %6259 = getelementptr inbounds %struct.anon, %struct.anon* %6258, i32 0, i32 0
  %6260 = load i8, i8* %6259, align 1
  %6261 = zext i8 %6260 to i32
  %6262 = icmp eq i32 %6261, 9
  br i1 %6262, label %6263, label %6267

; <label>:6263                                    ; preds = %6254
  %6264 = load %union.rec*, %union.rec** %y, align 8
  %6265 = call i32 @SplitIsDefinite(%union.rec* %6264)
  %6266 = icmp ne i32 %6265, 0
  br i1 %6266, label %6287, label %6288

; <label>:6267                                    ; preds = %6254
  %6268 = load %union.rec*, %union.rec** %y, align 8
  %6269 = bitcast %union.rec* %6268 to %struct.word_type*
  %6270 = getelementptr inbounds %struct.word_type, %struct.word_type* %6269, i32 0, i32 1
  %6271 = bitcast %union.FIRST_UNION* %6270 to %struct.anon*
  %6272 = getelementptr inbounds %struct.anon, %struct.anon* %6271, i32 0, i32 0
  %6273 = load i8, i8* %6272, align 1
  %6274 = zext i8 %6273 to i32
  %6275 = icmp sge i32 %6274, 9
  br i1 %6275, label %6276, label %6285

; <label>:6276                                    ; preds = %6267
  %6277 = load %union.rec*, %union.rec** %y, align 8
  %6278 = bitcast %union.rec* %6277 to %struct.word_type*
  %6279 = getelementptr inbounds %struct.word_type, %struct.word_type* %6278, i32 0, i32 1
  %6280 = bitcast %union.FIRST_UNION* %6279 to %struct.anon*
  %6281 = getelementptr inbounds %struct.anon, %struct.anon* %6280, i32 0, i32 0
  %6282 = load i8, i8* %6281, align 1
  %6283 = zext i8 %6282 to i32
  %6284 = icmp sle i32 %6283, 99
  br label %6285

; <label>:6285                                    ; preds = %6276, %6267
  %6286 = phi i1 [ false, %6267 ], [ %6284, %6276 ]
  br i1 %6286, label %6287, label %6288

; <label>:6287                                    ; preds = %6285, %6263
  br label %6297

; <label>:6288                                    ; preds = %6285, %6263
  br label %6289

; <label>:6289                                    ; preds = %6288, %6251
  br label %6290

; <label>:6290                                    ; preds = %6289
  %6291 = load %union.rec*, %union.rec** %link, align 8
  %6292 = bitcast %union.rec* %6291 to %struct.word_type*
  %6293 = getelementptr inbounds %struct.word_type, %struct.word_type* %6292, i32 0, i32 0
  %6294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6293, i32 0, i64 0
  %6295 = getelementptr inbounds %struct.LIST, %struct.LIST* %6294, i32 0, i32 1
  %6296 = load %union.rec*, %union.rec** %6295, align 8
  store %union.rec* %6296, %union.rec** %link, align 8
  br label %6201

; <label>:6297                                    ; preds = %6287, %6201
  %6298 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %6298, %union.rec** %prev, align 8
  %6299 = load i32, i32* %2, align 4
  %6300 = load i32, i32* %5, align 4
  %6301 = sext i32 %6300 to i64
  %6302 = load %union.rec*, %union.rec** %1, align 8
  %6303 = bitcast %union.rec* %6302 to %struct.word_type*
  %6304 = getelementptr inbounds %struct.word_type, %struct.word_type* %6303, i32 0, i32 3
  %6305 = bitcast %union.THIRD_UNION* %6304 to %struct.anon.6*
  %6306 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %6305, i32 0, i32 0
  %6307 = getelementptr inbounds [2 x i32], [2 x i32]* %6306, i32 0, i64 %6301
  %6308 = load i32, i32* %6307, align 4
  %6309 = sub nsw i32 %6299, %6308
  %6310 = load i32, i32* %5, align 4
  %6311 = sext i32 %6310 to i64
  %6312 = load %union.rec*, %union.rec** %y, align 8
  %6313 = bitcast %union.rec* %6312 to %struct.word_type*
  %6314 = getelementptr inbounds %struct.word_type, %struct.word_type* %6313, i32 0, i32 3
  %6315 = bitcast %union.THIRD_UNION* %6314 to %struct.anon.6*
  %6316 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %6315, i32 0, i32 0
  %6317 = getelementptr inbounds [2 x i32], [2 x i32]* %6316, i32 0, i64 %6311
  %6318 = load i32, i32* %6317, align 4
  %6319 = add nsw i32 %6309, %6318
  %6320 = load i32, i32* %adjust_indent, align 4
  %6321 = add nsw i32 %6319, %6320
  store i32 %6321, i32* %mk, align 4
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %6322 = load %union.rec*, %union.rec** %link, align 8
  %6323 = bitcast %union.rec* %6322 to %struct.word_type*
  %6324 = getelementptr inbounds %struct.word_type, %struct.word_type* %6323, i32 0, i32 0
  %6325 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6324, i32 0, i64 0
  %6326 = getelementptr inbounds %struct.LIST, %struct.LIST* %6325, i32 0, i32 1
  %6327 = load %union.rec*, %union.rec** %6326, align 8
  store %union.rec* %6327, %union.rec** %link, align 8
  br label %6328

; <label>:6328                                    ; preds = %6424, %6297
  %6329 = load %union.rec*, %union.rec** %link, align 8
  %6330 = load %union.rec*, %union.rec** %1, align 8
  %6331 = icmp ne %union.rec* %6329, %6330
  br i1 %6331, label %6332, label %6431

; <label>:6332                                    ; preds = %6328
  %6333 = load %union.rec*, %union.rec** %link, align 8
  %6334 = bitcast %union.rec* %6333 to %struct.word_type*
  %6335 = getelementptr inbounds %struct.word_type, %struct.word_type* %6334, i32 0, i32 0
  %6336 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6335, i32 0, i64 1
  %6337 = getelementptr inbounds %struct.LIST, %struct.LIST* %6336, i32 0, i32 0
  %6338 = load %union.rec*, %union.rec** %6337, align 8
  store %union.rec* %6338, %union.rec** %y, align 8
  br label %6339

; <label>:6339                                    ; preds = %6349, %6332
  %6340 = load %union.rec*, %union.rec** %y, align 8
  %6341 = bitcast %union.rec* %6340 to %struct.word_type*
  %6342 = getelementptr inbounds %struct.word_type, %struct.word_type* %6341, i32 0, i32 1
  %6343 = bitcast %union.FIRST_UNION* %6342 to %struct.anon*
  %6344 = getelementptr inbounds %struct.anon, %struct.anon* %6343, i32 0, i32 0
  %6345 = load i8, i8* %6344, align 1
  %6346 = zext i8 %6345 to i32
  %6347 = icmp eq i32 %6346, 0
  br i1 %6347, label %6348, label %6356

; <label>:6348                                    ; preds = %6339
  br label %6349

; <label>:6349                                    ; preds = %6348
  %6350 = load %union.rec*, %union.rec** %y, align 8
  %6351 = bitcast %union.rec* %6350 to %struct.word_type*
  %6352 = getelementptr inbounds %struct.word_type, %struct.word_type* %6351, i32 0, i32 0
  %6353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6352, i32 0, i64 1
  %6354 = getelementptr inbounds %struct.LIST, %struct.LIST* %6353, i32 0, i32 0
  %6355 = load %union.rec*, %union.rec** %6354, align 8
  store %union.rec* %6355, %union.rec** %y, align 8
  br label %6339

; <label>:6356                                    ; preds = %6339
  %6357 = load %union.rec*, %union.rec** %y, align 8
  %6358 = bitcast %union.rec* %6357 to %struct.word_type*
  %6359 = getelementptr inbounds %struct.word_type, %struct.word_type* %6358, i32 0, i32 1
  %6360 = bitcast %union.FIRST_UNION* %6359 to %struct.anon*
  %6361 = getelementptr inbounds %struct.anon, %struct.anon* %6360, i32 0, i32 0
  %6362 = load i8, i8* %6361, align 1
  %6363 = zext i8 %6362 to i32
  %6364 = icmp eq i32 %6363, 1
  br i1 %6364, label %6365, label %6382

; <label>:6365                                    ; preds = %6356
  %6366 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %6366, %union.rec** %g, align 8
  %6367 = load i32, i32* %jn, align 4
  %6368 = icmp ne i32 %6367, 0
  br i1 %6368, label %6369, label %6379

; <label>:6369                                    ; preds = %6365
  %6370 = load %union.rec*, %union.rec** %y, align 8
  %6371 = bitcast %union.rec* %6370 to %struct.gapobj_type*
  %6372 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %6371, i32 0, i32 3
  %6373 = bitcast %struct.GAP* %6372 to i16*
  %6374 = load i16, i16* %6373, align 4
  %6375 = lshr i16 %6374, 9
  %6376 = and i16 %6375, 1
  %6377 = zext i16 %6376 to i32
  %6378 = icmp ne i32 %6377, 0
  br label %6379

; <label>:6379                                    ; preds = %6369, %6365
  %6380 = phi i1 [ false, %6365 ], [ %6378, %6369 ]
  %6381 = zext i1 %6380 to i32
  store i32 %6381, i32* %jn, align 4
  br label %6423

; <label>:6382                                    ; preds = %6356
  %6383 = load %union.rec*, %union.rec** %y, align 8
  %6384 = bitcast %union.rec* %6383 to %struct.word_type*
  %6385 = getelementptr inbounds %struct.word_type, %struct.word_type* %6384, i32 0, i32 1
  %6386 = bitcast %union.FIRST_UNION* %6385 to %struct.anon*
  %6387 = getelementptr inbounds %struct.anon, %struct.anon* %6386, i32 0, i32 0
  %6388 = load i8, i8* %6387, align 1
  %6389 = zext i8 %6388 to i32
  %6390 = icmp eq i32 %6389, 9
  br i1 %6390, label %6391, label %6395

; <label>:6391                                    ; preds = %6382
  %6392 = load %union.rec*, %union.rec** %y, align 8
  %6393 = call i32 @SplitIsDefinite(%union.rec* %6392)
  %6394 = icmp ne i32 %6393, 0
  br i1 %6394, label %6415, label %6422

; <label>:6395                                    ; preds = %6382
  %6396 = load %union.rec*, %union.rec** %y, align 8
  %6397 = bitcast %union.rec* %6396 to %struct.word_type*
  %6398 = getelementptr inbounds %struct.word_type, %struct.word_type* %6397, i32 0, i32 1
  %6399 = bitcast %union.FIRST_UNION* %6398 to %struct.anon*
  %6400 = getelementptr inbounds %struct.anon, %struct.anon* %6399, i32 0, i32 0
  %6401 = load i8, i8* %6400, align 1
  %6402 = zext i8 %6401 to i32
  %6403 = icmp sge i32 %6402, 9
  br i1 %6403, label %6404, label %6413

; <label>:6404                                    ; preds = %6395
  %6405 = load %union.rec*, %union.rec** %y, align 8
  %6406 = bitcast %union.rec* %6405 to %struct.word_type*
  %6407 = getelementptr inbounds %struct.word_type, %struct.word_type* %6406, i32 0, i32 1
  %6408 = bitcast %union.FIRST_UNION* %6407 to %struct.anon*
  %6409 = getelementptr inbounds %struct.anon, %struct.anon* %6408, i32 0, i32 0
  %6410 = load i8, i8* %6409, align 1
  %6411 = zext i8 %6410 to i32
  %6412 = icmp sle i32 %6411, 99
  br label %6413

; <label>:6413                                    ; preds = %6404, %6395
  %6414 = phi i1 [ false, %6395 ], [ %6412, %6404 ]
  br i1 %6414, label %6415, label %6422

; <label>:6415                                    ; preds = %6413, %6391
  %6416 = load %union.rec*, %union.rec** %g, align 8
  %6417 = icmp ne %union.rec* %6416, null
  br i1 %6417, label %6421, label %6418

; <label>:6418                                    ; preds = %6415
  %6419 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6420 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %6419, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %6421

; <label>:6421                                    ; preds = %6418, %6415
  br label %6431

; <label>:6422                                    ; preds = %6413, %6391
  br label %6423

; <label>:6423                                    ; preds = %6422, %6379
  br label %6424

; <label>:6424                                    ; preds = %6423
  %6425 = load %union.rec*, %union.rec** %link, align 8
  %6426 = bitcast %union.rec* %6425 to %struct.word_type*
  %6427 = getelementptr inbounds %struct.word_type, %struct.word_type* %6426, i32 0, i32 0
  %6428 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6427, i32 0, i64 0
  %6429 = getelementptr inbounds %struct.LIST, %struct.LIST* %6428, i32 0, i32 1
  %6430 = load %union.rec*, %union.rec** %6429, align 8
  store %union.rec* %6430, %union.rec** %link, align 8
  br label %6328

; <label>:6431                                    ; preds = %6421, %6328
  br label %6432

; <label>:6432                                    ; preds = %7031, %6431
  %6433 = load %union.rec*, %union.rec** %link, align 8
  %6434 = load %union.rec*, %union.rec** %1, align 8
  %6435 = icmp ne %union.rec* %6433, %6434
  br i1 %6435, label %6436, label %7032

; <label>:6436                                    ; preds = %6432
  %6437 = load %union.rec*, %union.rec** %prev, align 8
  %6438 = bitcast %union.rec* %6437 to %struct.word_type*
  %6439 = getelementptr inbounds %struct.word_type, %struct.word_type* %6438, i32 0, i32 2
  %6440 = bitcast %union.SECOND_UNION* %6439 to %struct.anon.1*
  %6441 = bitcast %struct.anon.1* %6440 to i32*
  %6442 = load i32, i32* %6441, align 4
  %6443 = lshr i32 %6442, 29
  %6444 = and i32 %6443, 3
  %6445 = icmp eq i32 %6444, 2
  br i1 %6445, label %6446, label %6818

; <label>:6446                                    ; preds = %6436
  %6447 = load i32, i32* %underlining, align 4
  %6448 = icmp ne i32 %6447, 0
  br i1 %6448, label %6533, label %6449

; <label>:6449                                    ; preds = %6446
  store i32 1, i32* %underlining, align 4
  %6450 = load %union.rec*, %union.rec** %prev, align 8
  %6451 = bitcast %union.rec* %6450 to %struct.word_type*
  %6452 = getelementptr inbounds %struct.word_type, %struct.word_type* %6451, i32 0, i32 1
  %6453 = bitcast %union.FIRST_UNION* %6452 to %struct.anon*
  %6454 = getelementptr inbounds %struct.anon, %struct.anon* %6453, i32 0, i32 0
  %6455 = load i8, i8* %6454, align 1
  %6456 = zext i8 %6455 to i32
  %6457 = icmp eq i32 %6456, 11
  br i1 %6457, label %6467, label %6458

; <label>:6458                                    ; preds = %6449
  %6459 = load %union.rec*, %union.rec** %prev, align 8
  %6460 = bitcast %union.rec* %6459 to %struct.word_type*
  %6461 = getelementptr inbounds %struct.word_type, %struct.word_type* %6460, i32 0, i32 1
  %6462 = bitcast %union.FIRST_UNION* %6461 to %struct.anon*
  %6463 = getelementptr inbounds %struct.anon, %struct.anon* %6462, i32 0, i32 0
  %6464 = load i8, i8* %6463, align 1
  %6465 = zext i8 %6464 to i32
  %6466 = icmp eq i32 %6465, 12
  br i1 %6466, label %6467, label %6475

; <label>:6467                                    ; preds = %6458, %6449
  %6468 = load %union.rec*, %union.rec** %prev, align 8
  %6469 = bitcast %union.rec* %6468 to %struct.word_type*
  %6470 = getelementptr inbounds %struct.word_type, %struct.word_type* %6469, i32 0, i32 2
  %6471 = bitcast %union.SECOND_UNION* %6470 to %struct.anon.1*
  %6472 = bitcast %struct.anon.1* %6471 to i32*
  %6473 = load i32, i32* %6472, align 4
  %6474 = and i32 %6473, 4095
  br label %6483

; <label>:6475                                    ; preds = %6458
  %6476 = load %union.rec*, %union.rec** %1, align 8
  %6477 = bitcast %union.rec* %6476 to %struct.closure_type*
  %6478 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %6477, i32 0, i32 4
  %6479 = bitcast %union.FOURTH_UNION* %6478 to %struct.STYLE*
  %6480 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %6479, i32 0, i32 4
  %6481 = load i32, i32* %6480, align 4
  %6482 = and i32 %6481, 4095
  br label %6483

; <label>:6483                                    ; preds = %6475, %6467
  %6484 = phi i32 [ %6474, %6467 ], [ %6482, %6475 ]
  store i32 %6484, i32* %underline_font, align 4
  %6485 = load %union.rec*, %union.rec** %prev, align 8
  %6486 = bitcast %union.rec* %6485 to %struct.word_type*
  %6487 = getelementptr inbounds %struct.word_type, %struct.word_type* %6486, i32 0, i32 1
  %6488 = bitcast %union.FIRST_UNION* %6487 to %struct.anon*
  %6489 = getelementptr inbounds %struct.anon, %struct.anon* %6488, i32 0, i32 0
  %6490 = load i8, i8* %6489, align 1
  %6491 = zext i8 %6490 to i32
  %6492 = icmp eq i32 %6491, 11
  br i1 %6492, label %6502, label %6493

; <label>:6493                                    ; preds = %6483
  %6494 = load %union.rec*, %union.rec** %prev, align 8
  %6495 = bitcast %union.rec* %6494 to %struct.word_type*
  %6496 = getelementptr inbounds %struct.word_type, %struct.word_type* %6495, i32 0, i32 1
  %6497 = bitcast %union.FIRST_UNION* %6496 to %struct.anon*
  %6498 = getelementptr inbounds %struct.anon, %struct.anon* %6497, i32 0, i32 0
  %6499 = load i8, i8* %6498, align 1
  %6500 = zext i8 %6499 to i32
  %6501 = icmp eq i32 %6500, 12
  br i1 %6501, label %6502, label %6511

; <label>:6502                                    ; preds = %6493, %6483
  %6503 = load %union.rec*, %union.rec** %prev, align 8
  %6504 = bitcast %union.rec* %6503 to %struct.word_type*
  %6505 = getelementptr inbounds %struct.word_type, %struct.word_type* %6504, i32 0, i32 2
  %6506 = bitcast %union.SECOND_UNION* %6505 to %struct.anon.1*
  %6507 = bitcast %struct.anon.1* %6506 to i32*
  %6508 = load i32, i32* %6507, align 4
  %6509 = lshr i32 %6508, 12
  %6510 = and i32 %6509, 1023
  br label %6520

; <label>:6511                                    ; preds = %6493
  %6512 = load %union.rec*, %union.rec** %1, align 8
  %6513 = bitcast %union.rec* %6512 to %struct.closure_type*
  %6514 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %6513, i32 0, i32 4
  %6515 = bitcast %union.FOURTH_UNION* %6514 to %struct.STYLE*
  %6516 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %6515, i32 0, i32 4
  %6517 = load i32, i32* %6516, align 4
  %6518 = lshr i32 %6517, 12
  %6519 = and i32 %6518, 1023
  br label %6520

; <label>:6520                                    ; preds = %6511, %6502
  %6521 = phi i32 [ %6510, %6502 ], [ %6519, %6511 ]
  store i32 %6521, i32* %underline_colour, align 4
  %6522 = load i32, i32* %mk, align 4
  %6523 = load i32, i32* %5, align 4
  %6524 = sext i32 %6523 to i64
  %6525 = load %union.rec*, %union.rec** %prev, align 8
  %6526 = bitcast %union.rec* %6525 to %struct.word_type*
  %6527 = getelementptr inbounds %struct.word_type, %struct.word_type* %6526, i32 0, i32 3
  %6528 = bitcast %union.THIRD_UNION* %6527 to %struct.anon.6*
  %6529 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %6528, i32 0, i32 0
  %6530 = getelementptr inbounds [2 x i32], [2 x i32]* %6529, i32 0, i64 %6524
  %6531 = load i32, i32* %6530, align 4
  %6532 = sub nsw i32 %6522, %6531
  store i32 %6532, i32* %underline_xstart, align 4
  br label %6533

; <label>:6533                                    ; preds = %6520, %6446
  %6534 = load %union.rec*, %union.rec** %g, align 8
  %6535 = bitcast %union.rec* %6534 to %struct.word_type*
  %6536 = getelementptr inbounds %struct.word_type, %struct.word_type* %6535, i32 0, i32 2
  %6537 = bitcast %union.SECOND_UNION* %6536 to %struct.anon.1*
  %6538 = bitcast %struct.anon.1* %6537 to i32*
  %6539 = load i32, i32* %6538, align 4
  %6540 = lshr i32 %6539, 29
  %6541 = and i32 %6540, 3
  %6542 = icmp eq i32 %6541, 1
  br i1 %6542, label %6543, label %6817

; <label>:6543                                    ; preds = %6533
  %6544 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 3), align 1
  %6545 = zext i8 %6544 to i32
  store i32 %6545, i32* @zz_size, align 4
  %6546 = sext i32 %6545 to i64
  %6547 = icmp uge i64 %6546, 265
  br i1 %6547, label %6548, label %6551

; <label>:6548                                    ; preds = %6543
  %6549 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6550 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %6549)
  br label %6576

; <label>:6551                                    ; preds = %6543
  %6552 = load i32, i32* @zz_size, align 4
  %6553 = sext i32 %6552 to i64
  %6554 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6553
  %6555 = load %union.rec*, %union.rec** %6554, align 8
  %6556 = icmp eq %union.rec* %6555, null
  br i1 %6556, label %6557, label %6561

; <label>:6557                                    ; preds = %6551
  %6558 = load i32, i32* @zz_size, align 4
  %6559 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6560 = call %union.rec* @GetMemory(i32 %6558, %struct.FILE_POS* %6559)
  store %union.rec* %6560, %union.rec** @zz_hold, align 8
  br label %6575

; <label>:6561                                    ; preds = %6551
  %6562 = load i32, i32* @zz_size, align 4
  %6563 = sext i32 %6562 to i64
  %6564 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6563
  %6565 = load %union.rec*, %union.rec** %6564, align 8
  store %union.rec* %6565, %union.rec** @zz_hold, align 8
  store %union.rec* %6565, %union.rec** @zz_hold, align 8
  %6566 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6567 = bitcast %union.rec* %6566 to %struct.word_type*
  %6568 = getelementptr inbounds %struct.word_type, %struct.word_type* %6567, i32 0, i32 0
  %6569 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6568, i32 0, i64 0
  %6570 = getelementptr inbounds %struct.LIST, %struct.LIST* %6569, i32 0, i32 0
  %6571 = load %union.rec*, %union.rec** %6570, align 8
  %6572 = load i32, i32* @zz_size, align 4
  %6573 = sext i32 %6572 to i64
  %6574 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6573
  store %union.rec* %6571, %union.rec** %6574, align 8
  br label %6575

; <label>:6575                                    ; preds = %6561, %6557
  br label %6576

; <label>:6576                                    ; preds = %6575, %6548
  %6577 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6578 = bitcast %union.rec* %6577 to %struct.word_type*
  %6579 = getelementptr inbounds %struct.word_type, %struct.word_type* %6578, i32 0, i32 1
  %6580 = bitcast %union.FIRST_UNION* %6579 to %struct.anon*
  %6581 = getelementptr inbounds %struct.anon, %struct.anon* %6580, i32 0, i32 0
  store i8 3, i8* %6581, align 1
  %6582 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6583 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6584 = bitcast %union.rec* %6583 to %struct.word_type*
  %6585 = getelementptr inbounds %struct.word_type, %struct.word_type* %6584, i32 0, i32 0
  %6586 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6585, i32 0, i64 1
  %6587 = getelementptr inbounds %struct.LIST, %struct.LIST* %6586, i32 0, i32 1
  store %union.rec* %6582, %union.rec** %6587, align 8
  %6588 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6589 = bitcast %union.rec* %6588 to %struct.word_type*
  %6590 = getelementptr inbounds %struct.word_type, %struct.word_type* %6589, i32 0, i32 0
  %6591 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6590, i32 0, i64 1
  %6592 = getelementptr inbounds %struct.LIST, %struct.LIST* %6591, i32 0, i32 0
  store %union.rec* %6582, %union.rec** %6592, align 8
  %6593 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6594 = bitcast %union.rec* %6593 to %struct.word_type*
  %6595 = getelementptr inbounds %struct.word_type, %struct.word_type* %6594, i32 0, i32 0
  %6596 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6595, i32 0, i64 0
  %6597 = getelementptr inbounds %struct.LIST, %struct.LIST* %6596, i32 0, i32 1
  store %union.rec* %6582, %union.rec** %6597, align 8
  %6598 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6599 = bitcast %union.rec* %6598 to %struct.word_type*
  %6600 = getelementptr inbounds %struct.word_type, %struct.word_type* %6599, i32 0, i32 0
  %6601 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6600, i32 0, i64 0
  %6602 = getelementptr inbounds %struct.LIST, %struct.LIST* %6601, i32 0, i32 0
  store %union.rec* %6582, %union.rec** %6602, align 8
  store %union.rec* %6582, %union.rec** %urec, align 8
  %6603 = load i32, i32* %underline_xstart, align 4
  %6604 = load %union.rec*, %union.rec** %urec, align 8
  %6605 = bitcast %union.rec* %6604 to %struct.word_type*
  %6606 = getelementptr inbounds %struct.word_type, %struct.word_type* %6605, i32 0, i32 3
  %6607 = bitcast %union.THIRD_UNION* %6606 to %struct.anon.6*
  %6608 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %6607, i32 0, i32 0
  %6609 = getelementptr inbounds [2 x i32], [2 x i32]* %6608, i32 0, i64 0
  store i32 %6603, i32* %6609, align 4
  %6610 = load i32, i32* %mk, align 4
  %6611 = load i32, i32* %5, align 4
  %6612 = sext i32 %6611 to i64
  %6613 = load %union.rec*, %union.rec** %prev, align 8
  %6614 = bitcast %union.rec* %6613 to %struct.word_type*
  %6615 = getelementptr inbounds %struct.word_type, %struct.word_type* %6614, i32 0, i32 3
  %6616 = bitcast %union.THIRD_UNION* %6615 to %struct.anon.6*
  %6617 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %6616, i32 0, i32 1
  %6618 = getelementptr inbounds [2 x i32], [2 x i32]* %6617, i32 0, i64 %6612
  %6619 = load i32, i32* %6618, align 4
  %6620 = add nsw i32 %6610, %6619
  %6621 = load %union.rec*, %union.rec** %urec, align 8
  %6622 = bitcast %union.rec* %6621 to %struct.word_type*
  %6623 = getelementptr inbounds %struct.word_type, %struct.word_type* %6622, i32 0, i32 3
  %6624 = bitcast %union.THIRD_UNION* %6623 to %struct.anon.6*
  %6625 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %6624, i32 0, i32 1
  %6626 = getelementptr inbounds [2 x i32], [2 x i32]* %6625, i32 0, i64 0
  store i32 %6620, i32* %6626, align 4
  %6627 = load i32, i32* %underline_font, align 4
  %6628 = load %union.rec*, %union.rec** %urec, align 8
  %6629 = bitcast %union.rec* %6628 to %struct.word_type*
  %6630 = getelementptr inbounds %struct.word_type, %struct.word_type* %6629, i32 0, i32 3
  %6631 = bitcast %union.THIRD_UNION* %6630 to %struct.anon.6*
  %6632 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %6631, i32 0, i32 0
  %6633 = getelementptr inbounds [2 x i32], [2 x i32]* %6632, i32 0, i64 1
  store i32 %6627, i32* %6633, align 4
  %6634 = load i32, i32* %underline_colour, align 4
  %6635 = load %union.rec*, %union.rec** %urec, align 8
  %6636 = bitcast %union.rec* %6635 to %struct.word_type*
  %6637 = getelementptr inbounds %struct.word_type, %struct.word_type* %6636, i32 0, i32 3
  %6638 = bitcast %union.THIRD_UNION* %6637 to %struct.anon.6*
  %6639 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %6638, i32 0, i32 1
  %6640 = getelementptr inbounds [2 x i32], [2 x i32]* %6639, i32 0, i64 1
  store i32 %6634, i32* %6640, align 4
  store i32 0, i32* %underlining, align 4
  %6641 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %6642 = zext i8 %6641 to i32
  store i32 %6642, i32* @zz_size, align 4
  %6643 = sext i32 %6642 to i64
  %6644 = icmp uge i64 %6643, 265
  br i1 %6644, label %6645, label %6648

; <label>:6645                                    ; preds = %6576
  %6646 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6647 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %6646)
  br label %6673

; <label>:6648                                    ; preds = %6576
  %6649 = load i32, i32* @zz_size, align 4
  %6650 = sext i32 %6649 to i64
  %6651 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6650
  %6652 = load %union.rec*, %union.rec** %6651, align 8
  %6653 = icmp eq %union.rec* %6652, null
  br i1 %6653, label %6654, label %6658

; <label>:6654                                    ; preds = %6648
  %6655 = load i32, i32* @zz_size, align 4
  %6656 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6657 = call %union.rec* @GetMemory(i32 %6655, %struct.FILE_POS* %6656)
  store %union.rec* %6657, %union.rec** @zz_hold, align 8
  br label %6672

; <label>:6658                                    ; preds = %6648
  %6659 = load i32, i32* @zz_size, align 4
  %6660 = sext i32 %6659 to i64
  %6661 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6660
  %6662 = load %union.rec*, %union.rec** %6661, align 8
  store %union.rec* %6662, %union.rec** @zz_hold, align 8
  store %union.rec* %6662, %union.rec** @zz_hold, align 8
  %6663 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6664 = bitcast %union.rec* %6663 to %struct.word_type*
  %6665 = getelementptr inbounds %struct.word_type, %struct.word_type* %6664, i32 0, i32 0
  %6666 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6665, i32 0, i64 0
  %6667 = getelementptr inbounds %struct.LIST, %struct.LIST* %6666, i32 0, i32 0
  %6668 = load %union.rec*, %union.rec** %6667, align 8
  %6669 = load i32, i32* @zz_size, align 4
  %6670 = sext i32 %6669 to i64
  %6671 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6670
  store %union.rec* %6668, %union.rec** %6671, align 8
  br label %6672

; <label>:6672                                    ; preds = %6658, %6654
  br label %6673

; <label>:6673                                    ; preds = %6672, %6645
  %6674 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6675 = bitcast %union.rec* %6674 to %struct.word_type*
  %6676 = getelementptr inbounds %struct.word_type, %struct.word_type* %6675, i32 0, i32 1
  %6677 = bitcast %union.FIRST_UNION* %6676 to %struct.anon*
  %6678 = getelementptr inbounds %struct.anon, %struct.anon* %6677, i32 0, i32 0
  store i8 0, i8* %6678, align 1
  %6679 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6680 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6681 = bitcast %union.rec* %6680 to %struct.word_type*
  %6682 = getelementptr inbounds %struct.word_type, %struct.word_type* %6681, i32 0, i32 0
  %6683 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6682, i32 0, i64 1
  %6684 = getelementptr inbounds %struct.LIST, %struct.LIST* %6683, i32 0, i32 1
  store %union.rec* %6679, %union.rec** %6684, align 8
  %6685 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6686 = bitcast %union.rec* %6685 to %struct.word_type*
  %6687 = getelementptr inbounds %struct.word_type, %struct.word_type* %6686, i32 0, i32 0
  %6688 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6687, i32 0, i64 1
  %6689 = getelementptr inbounds %struct.LIST, %struct.LIST* %6688, i32 0, i32 0
  store %union.rec* %6679, %union.rec** %6689, align 8
  %6690 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6691 = bitcast %union.rec* %6690 to %struct.word_type*
  %6692 = getelementptr inbounds %struct.word_type, %struct.word_type* %6691, i32 0, i32 0
  %6693 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6692, i32 0, i64 0
  %6694 = getelementptr inbounds %struct.LIST, %struct.LIST* %6693, i32 0, i32 1
  store %union.rec* %6679, %union.rec** %6694, align 8
  %6695 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6696 = bitcast %union.rec* %6695 to %struct.word_type*
  %6697 = getelementptr inbounds %struct.word_type, %struct.word_type* %6696, i32 0, i32 0
  %6698 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6697, i32 0, i64 0
  %6699 = getelementptr inbounds %struct.LIST, %struct.LIST* %6698, i32 0, i32 0
  store %union.rec* %6679, %union.rec** %6699, align 8
  store %union.rec* %6679, %union.rec** @xx_link, align 8
  %6700 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6700, %union.rec** @zz_res, align 8
  %6701 = load %union.rec*, %union.rec** %prev, align 8
  %6702 = bitcast %union.rec* %6701 to %struct.word_type*
  %6703 = getelementptr inbounds %struct.word_type, %struct.word_type* %6702, i32 0, i32 0
  %6704 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6703, i32 0, i64 1
  %6705 = getelementptr inbounds %struct.LIST, %struct.LIST* %6704, i32 0, i32 1
  %6706 = load %union.rec*, %union.rec** %6705, align 8
  store %union.rec* %6706, %union.rec** @zz_hold, align 8
  %6707 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6708 = icmp eq %union.rec* %6707, null
  br i1 %6708, label %6709, label %6711

; <label>:6709                                    ; preds = %6673
  %6710 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6759

; <label>:6711                                    ; preds = %6673
  %6712 = load %union.rec*, %union.rec** @zz_res, align 8
  %6713 = icmp eq %union.rec* %6712, null
  br i1 %6713, label %6714, label %6716

; <label>:6714                                    ; preds = %6711
  %6715 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %6757

; <label>:6716                                    ; preds = %6711
  %6717 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6718 = bitcast %union.rec* %6717 to %struct.word_type*
  %6719 = getelementptr inbounds %struct.word_type, %struct.word_type* %6718, i32 0, i32 0
  %6720 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6719, i32 0, i64 0
  %6721 = getelementptr inbounds %struct.LIST, %struct.LIST* %6720, i32 0, i32 0
  %6722 = load %union.rec*, %union.rec** %6721, align 8
  store %union.rec* %6722, %union.rec** @zz_tmp, align 8
  %6723 = load %union.rec*, %union.rec** @zz_res, align 8
  %6724 = bitcast %union.rec* %6723 to %struct.word_type*
  %6725 = getelementptr inbounds %struct.word_type, %struct.word_type* %6724, i32 0, i32 0
  %6726 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6725, i32 0, i64 0
  %6727 = getelementptr inbounds %struct.LIST, %struct.LIST* %6726, i32 0, i32 0
  %6728 = load %union.rec*, %union.rec** %6727, align 8
  %6729 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6730 = bitcast %union.rec* %6729 to %struct.word_type*
  %6731 = getelementptr inbounds %struct.word_type, %struct.word_type* %6730, i32 0, i32 0
  %6732 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6731, i32 0, i64 0
  %6733 = getelementptr inbounds %struct.LIST, %struct.LIST* %6732, i32 0, i32 0
  store %union.rec* %6728, %union.rec** %6733, align 8
  %6734 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6735 = load %union.rec*, %union.rec** @zz_res, align 8
  %6736 = bitcast %union.rec* %6735 to %struct.word_type*
  %6737 = getelementptr inbounds %struct.word_type, %struct.word_type* %6736, i32 0, i32 0
  %6738 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6737, i32 0, i64 0
  %6739 = getelementptr inbounds %struct.LIST, %struct.LIST* %6738, i32 0, i32 0
  %6740 = load %union.rec*, %union.rec** %6739, align 8
  %6741 = bitcast %union.rec* %6740 to %struct.word_type*
  %6742 = getelementptr inbounds %struct.word_type, %struct.word_type* %6741, i32 0, i32 0
  %6743 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6742, i32 0, i64 0
  %6744 = getelementptr inbounds %struct.LIST, %struct.LIST* %6743, i32 0, i32 1
  store %union.rec* %6734, %union.rec** %6744, align 8
  %6745 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6746 = load %union.rec*, %union.rec** @zz_res, align 8
  %6747 = bitcast %union.rec* %6746 to %struct.word_type*
  %6748 = getelementptr inbounds %struct.word_type, %struct.word_type* %6747, i32 0, i32 0
  %6749 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6748, i32 0, i64 0
  %6750 = getelementptr inbounds %struct.LIST, %struct.LIST* %6749, i32 0, i32 0
  store %union.rec* %6745, %union.rec** %6750, align 8
  %6751 = load %union.rec*, %union.rec** @zz_res, align 8
  %6752 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6753 = bitcast %union.rec* %6752 to %struct.word_type*
  %6754 = getelementptr inbounds %struct.word_type, %struct.word_type* %6753, i32 0, i32 0
  %6755 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6754, i32 0, i64 0
  %6756 = getelementptr inbounds %struct.LIST, %struct.LIST* %6755, i32 0, i32 1
  store %union.rec* %6751, %union.rec** %6756, align 8
  br label %6757

; <label>:6757                                    ; preds = %6716, %6714
  %6758 = phi %union.rec* [ %6715, %6714 ], [ %6751, %6716 ]
  br label %6759

; <label>:6759                                    ; preds = %6757, %6709
  %6760 = phi %union.rec* [ %6710, %6709 ], [ %6758, %6757 ]
  %6761 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6761, %union.rec** @zz_res, align 8
  %6762 = load %union.rec*, %union.rec** %urec, align 8
  store %union.rec* %6762, %union.rec** @zz_hold, align 8
  %6763 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6764 = icmp eq %union.rec* %6763, null
  br i1 %6764, label %6765, label %6767

; <label>:6765                                    ; preds = %6759
  %6766 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6815

; <label>:6767                                    ; preds = %6759
  %6768 = load %union.rec*, %union.rec** @zz_res, align 8
  %6769 = icmp eq %union.rec* %6768, null
  br i1 %6769, label %6770, label %6772

; <label>:6770                                    ; preds = %6767
  %6771 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %6813

; <label>:6772                                    ; preds = %6767
  %6773 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6774 = bitcast %union.rec* %6773 to %struct.word_type*
  %6775 = getelementptr inbounds %struct.word_type, %struct.word_type* %6774, i32 0, i32 0
  %6776 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6775, i32 0, i64 1
  %6777 = getelementptr inbounds %struct.LIST, %struct.LIST* %6776, i32 0, i32 0
  %6778 = load %union.rec*, %union.rec** %6777, align 8
  store %union.rec* %6778, %union.rec** @zz_tmp, align 8
  %6779 = load %union.rec*, %union.rec** @zz_res, align 8
  %6780 = bitcast %union.rec* %6779 to %struct.word_type*
  %6781 = getelementptr inbounds %struct.word_type, %struct.word_type* %6780, i32 0, i32 0
  %6782 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6781, i32 0, i64 1
  %6783 = getelementptr inbounds %struct.LIST, %struct.LIST* %6782, i32 0, i32 0
  %6784 = load %union.rec*, %union.rec** %6783, align 8
  %6785 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6786 = bitcast %union.rec* %6785 to %struct.word_type*
  %6787 = getelementptr inbounds %struct.word_type, %struct.word_type* %6786, i32 0, i32 0
  %6788 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6787, i32 0, i64 1
  %6789 = getelementptr inbounds %struct.LIST, %struct.LIST* %6788, i32 0, i32 0
  store %union.rec* %6784, %union.rec** %6789, align 8
  %6790 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6791 = load %union.rec*, %union.rec** @zz_res, align 8
  %6792 = bitcast %union.rec* %6791 to %struct.word_type*
  %6793 = getelementptr inbounds %struct.word_type, %struct.word_type* %6792, i32 0, i32 0
  %6794 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6793, i32 0, i64 1
  %6795 = getelementptr inbounds %struct.LIST, %struct.LIST* %6794, i32 0, i32 0
  %6796 = load %union.rec*, %union.rec** %6795, align 8
  %6797 = bitcast %union.rec* %6796 to %struct.word_type*
  %6798 = getelementptr inbounds %struct.word_type, %struct.word_type* %6797, i32 0, i32 0
  %6799 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6798, i32 0, i64 1
  %6800 = getelementptr inbounds %struct.LIST, %struct.LIST* %6799, i32 0, i32 1
  store %union.rec* %6790, %union.rec** %6800, align 8
  %6801 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6802 = load %union.rec*, %union.rec** @zz_res, align 8
  %6803 = bitcast %union.rec* %6802 to %struct.word_type*
  %6804 = getelementptr inbounds %struct.word_type, %struct.word_type* %6803, i32 0, i32 0
  %6805 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6804, i32 0, i64 1
  %6806 = getelementptr inbounds %struct.LIST, %struct.LIST* %6805, i32 0, i32 0
  store %union.rec* %6801, %union.rec** %6806, align 8
  %6807 = load %union.rec*, %union.rec** @zz_res, align 8
  %6808 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6809 = bitcast %union.rec* %6808 to %struct.word_type*
  %6810 = getelementptr inbounds %struct.word_type, %struct.word_type* %6809, i32 0, i32 0
  %6811 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6810, i32 0, i64 1
  %6812 = getelementptr inbounds %struct.LIST, %struct.LIST* %6811, i32 0, i32 1
  store %union.rec* %6807, %union.rec** %6812, align 8
  br label %6813

; <label>:6813                                    ; preds = %6772, %6770
  %6814 = phi %union.rec* [ %6771, %6770 ], [ %6807, %6772 ]
  br label %6815

; <label>:6815                                    ; preds = %6813, %6765
  %6816 = phi %union.rec* [ %6766, %6765 ], [ %6814, %6813 ]
  br label %6817

; <label>:6817                                    ; preds = %6815, %6533
  br label %6818

; <label>:6818                                    ; preds = %6817, %6436
  %6819 = load i32, i32* %adjusting, align 4
  %6820 = icmp ne i32 %6819, 0
  br i1 %6820, label %6821, label %6877

; <label>:6821                                    ; preds = %6818
  %6822 = load %union.rec*, %union.rec** %g, align 8
  %6823 = bitcast %union.rec* %6822 to %struct.gapobj_type*
  %6824 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %6823, i32 0, i32 3
  %6825 = getelementptr inbounds %struct.GAP, %struct.GAP* %6824, i32 0, i32 1
  %6826 = load i16, i16* %6825, align 2
  %6827 = sext i16 %6826 to i32
  %6828 = icmp sgt i32 %6827, 0
  br i1 %6828, label %6829, label %6877

; <label>:6829                                    ; preds = %6821
  %6830 = load %union.rec*, %union.rec** %prev, align 8
  %6831 = load i32, i32* %mk, align 4
  %6832 = load i32, i32* %5, align 4
  %6833 = sext i32 %6832 to i64
  %6834 = load %union.rec*, %union.rec** %prev, align 8
  %6835 = bitcast %union.rec* %6834 to %struct.word_type*
  %6836 = getelementptr inbounds %struct.word_type, %struct.word_type* %6835, i32 0, i32 3
  %6837 = bitcast %union.THIRD_UNION* %6836 to %struct.anon.6*
  %6838 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %6837, i32 0, i32 0
  %6839 = getelementptr inbounds [2 x i32], [2 x i32]* %6838, i32 0, i64 %6833
  %6840 = load i32, i32* %6839, align 4
  %6841 = load i32, i32* %5, align 4
  %6842 = sext i32 %6841 to i64
  %6843 = load %union.rec*, %union.rec** %prev, align 8
  %6844 = bitcast %union.rec* %6843 to %struct.word_type*
  %6845 = getelementptr inbounds %struct.word_type, %struct.word_type* %6844, i32 0, i32 3
  %6846 = bitcast %union.THIRD_UNION* %6845 to %struct.anon.6*
  %6847 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %6846, i32 0, i32 1
  %6848 = getelementptr inbounds [2 x i32], [2 x i32]* %6847, i32 0, i64 %6842
  %6849 = load i32, i32* %6848, align 4
  %6850 = load i32, i32* %inc10, align 4
  %6851 = add nsw i32 %6849, %6850
  %6852 = load i32, i32* %5, align 4
  %6853 = load i32, i32* %7, align 4
  %6854 = load i32, i32* %8, align 4
  %6855 = call %union.rec* @FixAndPrintObject(%union.rec* %6830, i32 %6831, i32 %6840, i32 %6851, i32 %6852, i32 0, i32 %6853, i32 %6854, i32* %aback, i32* %afwd)
  store %union.rec* %6855, %union.rec** %prev, align 8
  %6856 = load i32, i32* %gaps_sofar, align 4
  %6857 = add nsw i32 %6856, 1
  store i32 %6857, i32* %gaps_sofar, align 4
  %6858 = load i32, i32* %frame_size8, align 4
  %6859 = load i32, i32* %actual_size, align 4
  %6860 = sub nsw i32 %6858, %6859
  %6861 = load i32, i32* %gaps_sofar, align 4
  %6862 = mul nsw i32 %6860, %6861
  %6863 = load i32, i32* %adjustable_gaps, align 4
  %6864 = sdiv i32 %6862, %6863
  store i32 %6864, i32* %tmp11, align 4
  %6865 = load %union.rec*, %union.rec** %g, align 8
  %6866 = bitcast %union.rec* %6865 to %struct.gapobj_type*
  %6867 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %6866, i32 0, i32 6
  %6868 = load i16, i16* %6867, align 2
  %6869 = sext i16 %6868 to i32
  %6870 = load i32, i32* %tmp11, align 4
  %6871 = load i32, i32* %adjust_sofar, align 4
  %6872 = sub nsw i32 %6870, %6871
  %6873 = add nsw i32 %6869, %6872
  %6874 = load i32, i32* %mk, align 4
  %6875 = add nsw i32 %6874, %6873
  store i32 %6875, i32* %mk, align 4
  %6876 = load i32, i32* %tmp11, align 4
  store i32 %6876, i32* %adjust_sofar, align 4
  br label %6909

; <label>:6877                                    ; preds = %6821, %6818
  %6878 = load %union.rec*, %union.rec** %prev, align 8
  %6879 = load i32, i32* %mk, align 4
  %6880 = load i32, i32* %5, align 4
  %6881 = sext i32 %6880 to i64
  %6882 = load %union.rec*, %union.rec** %prev, align 8
  %6883 = bitcast %union.rec* %6882 to %struct.word_type*
  %6884 = getelementptr inbounds %struct.word_type, %struct.word_type* %6883, i32 0, i32 3
  %6885 = bitcast %union.THIRD_UNION* %6884 to %struct.anon.6*
  %6886 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %6885, i32 0, i32 0
  %6887 = getelementptr inbounds [2 x i32], [2 x i32]* %6886, i32 0, i64 %6881
  %6888 = load i32, i32* %6887, align 4
  %6889 = load i32, i32* %5, align 4
  %6890 = sext i32 %6889 to i64
  %6891 = load %union.rec*, %union.rec** %prev, align 8
  %6892 = bitcast %union.rec* %6891 to %struct.word_type*
  %6893 = getelementptr inbounds %struct.word_type, %struct.word_type* %6892, i32 0, i32 3
  %6894 = bitcast %union.THIRD_UNION* %6893 to %struct.anon.6*
  %6895 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %6894, i32 0, i32 1
  %6896 = getelementptr inbounds [2 x i32], [2 x i32]* %6895, i32 0, i64 %6890
  %6897 = load i32, i32* %6896, align 4
  %6898 = load i32, i32* %5, align 4
  %6899 = load i32, i32* %7, align 4
  %6900 = load i32, i32* %8, align 4
  %6901 = call %union.rec* @FixAndPrintObject(%union.rec* %6878, i32 %6879, i32 %6888, i32 %6897, i32 %6898, i32 0, i32 %6899, i32 %6900, i32* %aback, i32* %afwd)
  store %union.rec* %6901, %union.rec** %prev, align 8
  %6902 = load %union.rec*, %union.rec** %g, align 8
  %6903 = bitcast %union.rec* %6902 to %struct.gapobj_type*
  %6904 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %6903, i32 0, i32 6
  %6905 = load i16, i16* %6904, align 2
  %6906 = sext i16 %6905 to i32
  %6907 = load i32, i32* %mk, align 4
  %6908 = add nsw i32 %6907, %6906
  store i32 %6908, i32* %mk, align 4
  br label %6909

; <label>:6909                                    ; preds = %6877, %6829
  %6910 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %6910, %union.rec** %prev, align 8
  %6911 = load i32, i32* %adjusting, align 4
  %6912 = icmp ne i32 %6911, 0
  br i1 %6912, label %6921, label %6913

; <label>:6913                                    ; preds = %6909
  %6914 = load i32, i32* %will_adjust, align 4
  %6915 = icmp ne i32 %6914, 0
  br i1 %6915, label %6916, label %6921

; <label>:6916                                    ; preds = %6913
  %6917 = load %union.rec*, %union.rec** %g, align 8
  %6918 = load %union.rec*, %union.rec** %last_bad_gap, align 8
  %6919 = icmp eq %union.rec* %6917, %6918
  br i1 %6919, label %6920, label %6921

; <label>:6920                                    ; preds = %6916
  store i32 1, i32* %adjusting, align 4
  br label %6921

; <label>:6921                                    ; preds = %6920, %6916, %6913, %6909
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %6922 = load %union.rec*, %union.rec** %link, align 8
  %6923 = bitcast %union.rec* %6922 to %struct.word_type*
  %6924 = getelementptr inbounds %struct.word_type, %struct.word_type* %6923, i32 0, i32 0
  %6925 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6924, i32 0, i64 0
  %6926 = getelementptr inbounds %struct.LIST, %struct.LIST* %6925, i32 0, i32 1
  %6927 = load %union.rec*, %union.rec** %6926, align 8
  store %union.rec* %6927, %union.rec** %link, align 8
  br label %6928

; <label>:6928                                    ; preds = %7024, %6921
  %6929 = load %union.rec*, %union.rec** %link, align 8
  %6930 = load %union.rec*, %union.rec** %1, align 8
  %6931 = icmp ne %union.rec* %6929, %6930
  br i1 %6931, label %6932, label %7031

; <label>:6932                                    ; preds = %6928
  %6933 = load %union.rec*, %union.rec** %link, align 8
  %6934 = bitcast %union.rec* %6933 to %struct.word_type*
  %6935 = getelementptr inbounds %struct.word_type, %struct.word_type* %6934, i32 0, i32 0
  %6936 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6935, i32 0, i64 1
  %6937 = getelementptr inbounds %struct.LIST, %struct.LIST* %6936, i32 0, i32 0
  %6938 = load %union.rec*, %union.rec** %6937, align 8
  store %union.rec* %6938, %union.rec** %y, align 8
  br label %6939

; <label>:6939                                    ; preds = %6949, %6932
  %6940 = load %union.rec*, %union.rec** %y, align 8
  %6941 = bitcast %union.rec* %6940 to %struct.word_type*
  %6942 = getelementptr inbounds %struct.word_type, %struct.word_type* %6941, i32 0, i32 1
  %6943 = bitcast %union.FIRST_UNION* %6942 to %struct.anon*
  %6944 = getelementptr inbounds %struct.anon, %struct.anon* %6943, i32 0, i32 0
  %6945 = load i8, i8* %6944, align 1
  %6946 = zext i8 %6945 to i32
  %6947 = icmp eq i32 %6946, 0
  br i1 %6947, label %6948, label %6956

; <label>:6948                                    ; preds = %6939
  br label %6949

; <label>:6949                                    ; preds = %6948
  %6950 = load %union.rec*, %union.rec** %y, align 8
  %6951 = bitcast %union.rec* %6950 to %struct.word_type*
  %6952 = getelementptr inbounds %struct.word_type, %struct.word_type* %6951, i32 0, i32 0
  %6953 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6952, i32 0, i64 1
  %6954 = getelementptr inbounds %struct.LIST, %struct.LIST* %6953, i32 0, i32 0
  %6955 = load %union.rec*, %union.rec** %6954, align 8
  store %union.rec* %6955, %union.rec** %y, align 8
  br label %6939

; <label>:6956                                    ; preds = %6939
  %6957 = load %union.rec*, %union.rec** %y, align 8
  %6958 = bitcast %union.rec* %6957 to %struct.word_type*
  %6959 = getelementptr inbounds %struct.word_type, %struct.word_type* %6958, i32 0, i32 1
  %6960 = bitcast %union.FIRST_UNION* %6959 to %struct.anon*
  %6961 = getelementptr inbounds %struct.anon, %struct.anon* %6960, i32 0, i32 0
  %6962 = load i8, i8* %6961, align 1
  %6963 = zext i8 %6962 to i32
  %6964 = icmp eq i32 %6963, 1
  br i1 %6964, label %6965, label %6982

; <label>:6965                                    ; preds = %6956
  %6966 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %6966, %union.rec** %g, align 8
  %6967 = load i32, i32* %jn, align 4
  %6968 = icmp ne i32 %6967, 0
  br i1 %6968, label %6969, label %6979

; <label>:6969                                    ; preds = %6965
  %6970 = load %union.rec*, %union.rec** %y, align 8
  %6971 = bitcast %union.rec* %6970 to %struct.gapobj_type*
  %6972 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %6971, i32 0, i32 3
  %6973 = bitcast %struct.GAP* %6972 to i16*
  %6974 = load i16, i16* %6973, align 4
  %6975 = lshr i16 %6974, 9
  %6976 = and i16 %6975, 1
  %6977 = zext i16 %6976 to i32
  %6978 = icmp ne i32 %6977, 0
  br label %6979

; <label>:6979                                    ; preds = %6969, %6965
  %6980 = phi i1 [ false, %6965 ], [ %6978, %6969 ]
  %6981 = zext i1 %6980 to i32
  store i32 %6981, i32* %jn, align 4
  br label %7023

; <label>:6982                                    ; preds = %6956
  %6983 = load %union.rec*, %union.rec** %y, align 8
  %6984 = bitcast %union.rec* %6983 to %struct.word_type*
  %6985 = getelementptr inbounds %struct.word_type, %struct.word_type* %6984, i32 0, i32 1
  %6986 = bitcast %union.FIRST_UNION* %6985 to %struct.anon*
  %6987 = getelementptr inbounds %struct.anon, %struct.anon* %6986, i32 0, i32 0
  %6988 = load i8, i8* %6987, align 1
  %6989 = zext i8 %6988 to i32
  %6990 = icmp eq i32 %6989, 9
  br i1 %6990, label %6991, label %6995

; <label>:6991                                    ; preds = %6982
  %6992 = load %union.rec*, %union.rec** %y, align 8
  %6993 = call i32 @SplitIsDefinite(%union.rec* %6992)
  %6994 = icmp ne i32 %6993, 0
  br i1 %6994, label %7015, label %7022

; <label>:6995                                    ; preds = %6982
  %6996 = load %union.rec*, %union.rec** %y, align 8
  %6997 = bitcast %union.rec* %6996 to %struct.word_type*
  %6998 = getelementptr inbounds %struct.word_type, %struct.word_type* %6997, i32 0, i32 1
  %6999 = bitcast %union.FIRST_UNION* %6998 to %struct.anon*
  %7000 = getelementptr inbounds %struct.anon, %struct.anon* %6999, i32 0, i32 0
  %7001 = load i8, i8* %7000, align 1
  %7002 = zext i8 %7001 to i32
  %7003 = icmp sge i32 %7002, 9
  br i1 %7003, label %7004, label %7013

; <label>:7004                                    ; preds = %6995
  %7005 = load %union.rec*, %union.rec** %y, align 8
  %7006 = bitcast %union.rec* %7005 to %struct.word_type*
  %7007 = getelementptr inbounds %struct.word_type, %struct.word_type* %7006, i32 0, i32 1
  %7008 = bitcast %union.FIRST_UNION* %7007 to %struct.anon*
  %7009 = getelementptr inbounds %struct.anon, %struct.anon* %7008, i32 0, i32 0
  %7010 = load i8, i8* %7009, align 1
  %7011 = zext i8 %7010 to i32
  %7012 = icmp sle i32 %7011, 99
  br label %7013

; <label>:7013                                    ; preds = %7004, %6995
  %7014 = phi i1 [ false, %6995 ], [ %7012, %7004 ]
  br i1 %7014, label %7015, label %7022

; <label>:7015                                    ; preds = %7013, %6991
  %7016 = load %union.rec*, %union.rec** %g, align 8
  %7017 = icmp ne %union.rec* %7016, null
  br i1 %7017, label %7021, label %7018

; <label>:7018                                    ; preds = %7015
  %7019 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7020 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %7019, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %7021

; <label>:7021                                    ; preds = %7018, %7015
  br label %7031

; <label>:7022                                    ; preds = %7013, %6991
  br label %7023

; <label>:7023                                    ; preds = %7022, %6979
  br label %7024

; <label>:7024                                    ; preds = %7023
  %7025 = load %union.rec*, %union.rec** %link, align 8
  %7026 = bitcast %union.rec* %7025 to %struct.word_type*
  %7027 = getelementptr inbounds %struct.word_type, %struct.word_type* %7026, i32 0, i32 0
  %7028 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7027, i32 0, i64 0
  %7029 = getelementptr inbounds %struct.LIST, %struct.LIST* %7028, i32 0, i32 1
  %7030 = load %union.rec*, %union.rec** %7029, align 8
  store %union.rec* %7030, %union.rec** %link, align 8
  br label %6928

; <label>:7031                                    ; preds = %7021, %6928
  br label %6432

; <label>:7032                                    ; preds = %6432
  %7033 = load %union.rec*, %union.rec** %prev, align 8
  %7034 = bitcast %union.rec* %7033 to %struct.word_type*
  %7035 = getelementptr inbounds %struct.word_type, %struct.word_type* %7034, i32 0, i32 2
  %7036 = bitcast %union.SECOND_UNION* %7035 to %struct.anon.1*
  %7037 = bitcast %struct.anon.1* %7036 to i32*
  %7038 = load i32, i32* %7037, align 4
  %7039 = lshr i32 %7038, 29
  %7040 = and i32 %7039, 3
  %7041 = icmp eq i32 %7040, 1
  br i1 %7041, label %7055, label %7042

; <label>:7042                                    ; preds = %7032
  %7043 = load %union.rec*, %union.rec** %prev, align 8
  %7044 = bitcast %union.rec* %7043 to %struct.word_type*
  %7045 = getelementptr inbounds %struct.word_type, %struct.word_type* %7044, i32 0, i32 2
  %7046 = bitcast %union.SECOND_UNION* %7045 to %struct.anon.1*
  %7047 = bitcast %struct.anon.1* %7046 to i32*
  %7048 = load i32, i32* %7047, align 4
  %7049 = lshr i32 %7048, 29
  %7050 = and i32 %7049, 3
  %7051 = icmp eq i32 %7050, 2
  br i1 %7051, label %7055, label %7052

; <label>:7052                                    ; preds = %7042
  %7053 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7054 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %7053, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0))
  br label %7055

; <label>:7055                                    ; preds = %7052, %7042, %7032
  %7056 = load %union.rec*, %union.rec** %prev, align 8
  %7057 = bitcast %union.rec* %7056 to %struct.word_type*
  %7058 = getelementptr inbounds %struct.word_type, %struct.word_type* %7057, i32 0, i32 2
  %7059 = bitcast %union.SECOND_UNION* %7058 to %struct.anon.1*
  %7060 = bitcast %struct.anon.1* %7059 to i32*
  %7061 = load i32, i32* %7060, align 4
  %7062 = lshr i32 %7061, 29
  %7063 = and i32 %7062, 3
  %7064 = icmp eq i32 %7063, 2
  br i1 %7064, label %7065, label %7426

; <label>:7065                                    ; preds = %7055
  %7066 = load i32, i32* %underlining, align 4
  %7067 = icmp ne i32 %7066, 0
  br i1 %7067, label %7152, label %7068

; <label>:7068                                    ; preds = %7065
  store i32 1, i32* %underlining, align 4
  %7069 = load %union.rec*, %union.rec** %prev, align 8
  %7070 = bitcast %union.rec* %7069 to %struct.word_type*
  %7071 = getelementptr inbounds %struct.word_type, %struct.word_type* %7070, i32 0, i32 1
  %7072 = bitcast %union.FIRST_UNION* %7071 to %struct.anon*
  %7073 = getelementptr inbounds %struct.anon, %struct.anon* %7072, i32 0, i32 0
  %7074 = load i8, i8* %7073, align 1
  %7075 = zext i8 %7074 to i32
  %7076 = icmp eq i32 %7075, 11
  br i1 %7076, label %7086, label %7077

; <label>:7077                                    ; preds = %7068
  %7078 = load %union.rec*, %union.rec** %prev, align 8
  %7079 = bitcast %union.rec* %7078 to %struct.word_type*
  %7080 = getelementptr inbounds %struct.word_type, %struct.word_type* %7079, i32 0, i32 1
  %7081 = bitcast %union.FIRST_UNION* %7080 to %struct.anon*
  %7082 = getelementptr inbounds %struct.anon, %struct.anon* %7081, i32 0, i32 0
  %7083 = load i8, i8* %7082, align 1
  %7084 = zext i8 %7083 to i32
  %7085 = icmp eq i32 %7084, 12
  br i1 %7085, label %7086, label %7094

; <label>:7086                                    ; preds = %7077, %7068
  %7087 = load %union.rec*, %union.rec** %prev, align 8
  %7088 = bitcast %union.rec* %7087 to %struct.word_type*
  %7089 = getelementptr inbounds %struct.word_type, %struct.word_type* %7088, i32 0, i32 2
  %7090 = bitcast %union.SECOND_UNION* %7089 to %struct.anon.1*
  %7091 = bitcast %struct.anon.1* %7090 to i32*
  %7092 = load i32, i32* %7091, align 4
  %7093 = and i32 %7092, 4095
  br label %7102

; <label>:7094                                    ; preds = %7077
  %7095 = load %union.rec*, %union.rec** %1, align 8
  %7096 = bitcast %union.rec* %7095 to %struct.closure_type*
  %7097 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7096, i32 0, i32 4
  %7098 = bitcast %union.FOURTH_UNION* %7097 to %struct.STYLE*
  %7099 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7098, i32 0, i32 4
  %7100 = load i32, i32* %7099, align 4
  %7101 = and i32 %7100, 4095
  br label %7102

; <label>:7102                                    ; preds = %7094, %7086
  %7103 = phi i32 [ %7093, %7086 ], [ %7101, %7094 ]
  store i32 %7103, i32* %underline_font, align 4
  %7104 = load %union.rec*, %union.rec** %prev, align 8
  %7105 = bitcast %union.rec* %7104 to %struct.word_type*
  %7106 = getelementptr inbounds %struct.word_type, %struct.word_type* %7105, i32 0, i32 1
  %7107 = bitcast %union.FIRST_UNION* %7106 to %struct.anon*
  %7108 = getelementptr inbounds %struct.anon, %struct.anon* %7107, i32 0, i32 0
  %7109 = load i8, i8* %7108, align 1
  %7110 = zext i8 %7109 to i32
  %7111 = icmp eq i32 %7110, 11
  br i1 %7111, label %7121, label %7112

; <label>:7112                                    ; preds = %7102
  %7113 = load %union.rec*, %union.rec** %prev, align 8
  %7114 = bitcast %union.rec* %7113 to %struct.word_type*
  %7115 = getelementptr inbounds %struct.word_type, %struct.word_type* %7114, i32 0, i32 1
  %7116 = bitcast %union.FIRST_UNION* %7115 to %struct.anon*
  %7117 = getelementptr inbounds %struct.anon, %struct.anon* %7116, i32 0, i32 0
  %7118 = load i8, i8* %7117, align 1
  %7119 = zext i8 %7118 to i32
  %7120 = icmp eq i32 %7119, 12
  br i1 %7120, label %7121, label %7130

; <label>:7121                                    ; preds = %7112, %7102
  %7122 = load %union.rec*, %union.rec** %prev, align 8
  %7123 = bitcast %union.rec* %7122 to %struct.word_type*
  %7124 = getelementptr inbounds %struct.word_type, %struct.word_type* %7123, i32 0, i32 2
  %7125 = bitcast %union.SECOND_UNION* %7124 to %struct.anon.1*
  %7126 = bitcast %struct.anon.1* %7125 to i32*
  %7127 = load i32, i32* %7126, align 4
  %7128 = lshr i32 %7127, 12
  %7129 = and i32 %7128, 1023
  br label %7139

; <label>:7130                                    ; preds = %7112
  %7131 = load %union.rec*, %union.rec** %1, align 8
  %7132 = bitcast %union.rec* %7131 to %struct.closure_type*
  %7133 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7132, i32 0, i32 4
  %7134 = bitcast %union.FOURTH_UNION* %7133 to %struct.STYLE*
  %7135 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7134, i32 0, i32 4
  %7136 = load i32, i32* %7135, align 4
  %7137 = lshr i32 %7136, 12
  %7138 = and i32 %7137, 1023
  br label %7139

; <label>:7139                                    ; preds = %7130, %7121
  %7140 = phi i32 [ %7129, %7121 ], [ %7138, %7130 ]
  store i32 %7140, i32* %underline_colour, align 4
  %7141 = load i32, i32* %mk, align 4
  %7142 = load i32, i32* %5, align 4
  %7143 = sext i32 %7142 to i64
  %7144 = load %union.rec*, %union.rec** %prev, align 8
  %7145 = bitcast %union.rec* %7144 to %struct.word_type*
  %7146 = getelementptr inbounds %struct.word_type, %struct.word_type* %7145, i32 0, i32 3
  %7147 = bitcast %union.THIRD_UNION* %7146 to %struct.anon.6*
  %7148 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %7147, i32 0, i32 0
  %7149 = getelementptr inbounds [2 x i32], [2 x i32]* %7148, i32 0, i64 %7143
  %7150 = load i32, i32* %7149, align 4
  %7151 = sub nsw i32 %7141, %7150
  store i32 %7151, i32* %underline_xstart, align 4
  br label %7152

; <label>:7152                                    ; preds = %7139, %7065
  %7153 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 3), align 1
  %7154 = zext i8 %7153 to i32
  store i32 %7154, i32* @zz_size, align 4
  %7155 = sext i32 %7154 to i64
  %7156 = icmp uge i64 %7155, 265
  br i1 %7156, label %7157, label %7160

; <label>:7157                                    ; preds = %7152
  %7158 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7159 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %7158)
  br label %7185

; <label>:7160                                    ; preds = %7152
  %7161 = load i32, i32* @zz_size, align 4
  %7162 = sext i32 %7161 to i64
  %7163 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7162
  %7164 = load %union.rec*, %union.rec** %7163, align 8
  %7165 = icmp eq %union.rec* %7164, null
  br i1 %7165, label %7166, label %7170

; <label>:7166                                    ; preds = %7160
  %7167 = load i32, i32* @zz_size, align 4
  %7168 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7169 = call %union.rec* @GetMemory(i32 %7167, %struct.FILE_POS* %7168)
  store %union.rec* %7169, %union.rec** @zz_hold, align 8
  br label %7184

; <label>:7170                                    ; preds = %7160
  %7171 = load i32, i32* @zz_size, align 4
  %7172 = sext i32 %7171 to i64
  %7173 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7172
  %7174 = load %union.rec*, %union.rec** %7173, align 8
  store %union.rec* %7174, %union.rec** @zz_hold, align 8
  store %union.rec* %7174, %union.rec** @zz_hold, align 8
  %7175 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7176 = bitcast %union.rec* %7175 to %struct.word_type*
  %7177 = getelementptr inbounds %struct.word_type, %struct.word_type* %7176, i32 0, i32 0
  %7178 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7177, i32 0, i64 0
  %7179 = getelementptr inbounds %struct.LIST, %struct.LIST* %7178, i32 0, i32 0
  %7180 = load %union.rec*, %union.rec** %7179, align 8
  %7181 = load i32, i32* @zz_size, align 4
  %7182 = sext i32 %7181 to i64
  %7183 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7182
  store %union.rec* %7180, %union.rec** %7183, align 8
  br label %7184

; <label>:7184                                    ; preds = %7170, %7166
  br label %7185

; <label>:7185                                    ; preds = %7184, %7157
  %7186 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7187 = bitcast %union.rec* %7186 to %struct.word_type*
  %7188 = getelementptr inbounds %struct.word_type, %struct.word_type* %7187, i32 0, i32 1
  %7189 = bitcast %union.FIRST_UNION* %7188 to %struct.anon*
  %7190 = getelementptr inbounds %struct.anon, %struct.anon* %7189, i32 0, i32 0
  store i8 3, i8* %7190, align 1
  %7191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7193 = bitcast %union.rec* %7192 to %struct.word_type*
  %7194 = getelementptr inbounds %struct.word_type, %struct.word_type* %7193, i32 0, i32 0
  %7195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7194, i32 0, i64 1
  %7196 = getelementptr inbounds %struct.LIST, %struct.LIST* %7195, i32 0, i32 1
  store %union.rec* %7191, %union.rec** %7196, align 8
  %7197 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7198 = bitcast %union.rec* %7197 to %struct.word_type*
  %7199 = getelementptr inbounds %struct.word_type, %struct.word_type* %7198, i32 0, i32 0
  %7200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7199, i32 0, i64 1
  %7201 = getelementptr inbounds %struct.LIST, %struct.LIST* %7200, i32 0, i32 0
  store %union.rec* %7191, %union.rec** %7201, align 8
  %7202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7203 = bitcast %union.rec* %7202 to %struct.word_type*
  %7204 = getelementptr inbounds %struct.word_type, %struct.word_type* %7203, i32 0, i32 0
  %7205 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7204, i32 0, i64 0
  %7206 = getelementptr inbounds %struct.LIST, %struct.LIST* %7205, i32 0, i32 1
  store %union.rec* %7191, %union.rec** %7206, align 8
  %7207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7208 = bitcast %union.rec* %7207 to %struct.word_type*
  %7209 = getelementptr inbounds %struct.word_type, %struct.word_type* %7208, i32 0, i32 0
  %7210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7209, i32 0, i64 0
  %7211 = getelementptr inbounds %struct.LIST, %struct.LIST* %7210, i32 0, i32 0
  store %union.rec* %7191, %union.rec** %7211, align 8
  store %union.rec* %7191, %union.rec** %urec, align 8
  %7212 = load i32, i32* %underline_xstart, align 4
  %7213 = load %union.rec*, %union.rec** %urec, align 8
  %7214 = bitcast %union.rec* %7213 to %struct.word_type*
  %7215 = getelementptr inbounds %struct.word_type, %struct.word_type* %7214, i32 0, i32 3
  %7216 = bitcast %union.THIRD_UNION* %7215 to %struct.anon.6*
  %7217 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %7216, i32 0, i32 0
  %7218 = getelementptr inbounds [2 x i32], [2 x i32]* %7217, i32 0, i64 0
  store i32 %7212, i32* %7218, align 4
  %7219 = load i32, i32* %mk, align 4
  %7220 = load i32, i32* %5, align 4
  %7221 = sext i32 %7220 to i64
  %7222 = load %union.rec*, %union.rec** %prev, align 8
  %7223 = bitcast %union.rec* %7222 to %struct.word_type*
  %7224 = getelementptr inbounds %struct.word_type, %struct.word_type* %7223, i32 0, i32 3
  %7225 = bitcast %union.THIRD_UNION* %7224 to %struct.anon.6*
  %7226 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %7225, i32 0, i32 1
  %7227 = getelementptr inbounds [2 x i32], [2 x i32]* %7226, i32 0, i64 %7221
  %7228 = load i32, i32* %7227, align 4
  %7229 = add nsw i32 %7219, %7228
  %7230 = load %union.rec*, %union.rec** %urec, align 8
  %7231 = bitcast %union.rec* %7230 to %struct.word_type*
  %7232 = getelementptr inbounds %struct.word_type, %struct.word_type* %7231, i32 0, i32 3
  %7233 = bitcast %union.THIRD_UNION* %7232 to %struct.anon.6*
  %7234 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %7233, i32 0, i32 1
  %7235 = getelementptr inbounds [2 x i32], [2 x i32]* %7234, i32 0, i64 0
  store i32 %7229, i32* %7235, align 4
  %7236 = load i32, i32* %underline_font, align 4
  %7237 = load %union.rec*, %union.rec** %urec, align 8
  %7238 = bitcast %union.rec* %7237 to %struct.word_type*
  %7239 = getelementptr inbounds %struct.word_type, %struct.word_type* %7238, i32 0, i32 3
  %7240 = bitcast %union.THIRD_UNION* %7239 to %struct.anon.6*
  %7241 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %7240, i32 0, i32 0
  %7242 = getelementptr inbounds [2 x i32], [2 x i32]* %7241, i32 0, i64 1
  store i32 %7236, i32* %7242, align 4
  %7243 = load i32, i32* %underline_colour, align 4
  %7244 = load %union.rec*, %union.rec** %urec, align 8
  %7245 = bitcast %union.rec* %7244 to %struct.word_type*
  %7246 = getelementptr inbounds %struct.word_type, %struct.word_type* %7245, i32 0, i32 3
  %7247 = bitcast %union.THIRD_UNION* %7246 to %struct.anon.6*
  %7248 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %7247, i32 0, i32 1
  %7249 = getelementptr inbounds [2 x i32], [2 x i32]* %7248, i32 0, i64 1
  store i32 %7243, i32* %7249, align 4
  store i32 0, i32* %underlining, align 4
  %7250 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %7251 = zext i8 %7250 to i32
  store i32 %7251, i32* @zz_size, align 4
  %7252 = sext i32 %7251 to i64
  %7253 = icmp uge i64 %7252, 265
  br i1 %7253, label %7254, label %7257

; <label>:7254                                    ; preds = %7185
  %7255 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7256 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %7255)
  br label %7282

; <label>:7257                                    ; preds = %7185
  %7258 = load i32, i32* @zz_size, align 4
  %7259 = sext i32 %7258 to i64
  %7260 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7259
  %7261 = load %union.rec*, %union.rec** %7260, align 8
  %7262 = icmp eq %union.rec* %7261, null
  br i1 %7262, label %7263, label %7267

; <label>:7263                                    ; preds = %7257
  %7264 = load i32, i32* @zz_size, align 4
  %7265 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7266 = call %union.rec* @GetMemory(i32 %7264, %struct.FILE_POS* %7265)
  store %union.rec* %7266, %union.rec** @zz_hold, align 8
  br label %7281

; <label>:7267                                    ; preds = %7257
  %7268 = load i32, i32* @zz_size, align 4
  %7269 = sext i32 %7268 to i64
  %7270 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7269
  %7271 = load %union.rec*, %union.rec** %7270, align 8
  store %union.rec* %7271, %union.rec** @zz_hold, align 8
  store %union.rec* %7271, %union.rec** @zz_hold, align 8
  %7272 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7273 = bitcast %union.rec* %7272 to %struct.word_type*
  %7274 = getelementptr inbounds %struct.word_type, %struct.word_type* %7273, i32 0, i32 0
  %7275 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7274, i32 0, i64 0
  %7276 = getelementptr inbounds %struct.LIST, %struct.LIST* %7275, i32 0, i32 0
  %7277 = load %union.rec*, %union.rec** %7276, align 8
  %7278 = load i32, i32* @zz_size, align 4
  %7279 = sext i32 %7278 to i64
  %7280 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7279
  store %union.rec* %7277, %union.rec** %7280, align 8
  br label %7281

; <label>:7281                                    ; preds = %7267, %7263
  br label %7282

; <label>:7282                                    ; preds = %7281, %7254
  %7283 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7284 = bitcast %union.rec* %7283 to %struct.word_type*
  %7285 = getelementptr inbounds %struct.word_type, %struct.word_type* %7284, i32 0, i32 1
  %7286 = bitcast %union.FIRST_UNION* %7285 to %struct.anon*
  %7287 = getelementptr inbounds %struct.anon, %struct.anon* %7286, i32 0, i32 0
  store i8 0, i8* %7287, align 1
  %7288 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7289 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7290 = bitcast %union.rec* %7289 to %struct.word_type*
  %7291 = getelementptr inbounds %struct.word_type, %struct.word_type* %7290, i32 0, i32 0
  %7292 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7291, i32 0, i64 1
  %7293 = getelementptr inbounds %struct.LIST, %struct.LIST* %7292, i32 0, i32 1
  store %union.rec* %7288, %union.rec** %7293, align 8
  %7294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7295 = bitcast %union.rec* %7294 to %struct.word_type*
  %7296 = getelementptr inbounds %struct.word_type, %struct.word_type* %7295, i32 0, i32 0
  %7297 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7296, i32 0, i64 1
  %7298 = getelementptr inbounds %struct.LIST, %struct.LIST* %7297, i32 0, i32 0
  store %union.rec* %7288, %union.rec** %7298, align 8
  %7299 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7300 = bitcast %union.rec* %7299 to %struct.word_type*
  %7301 = getelementptr inbounds %struct.word_type, %struct.word_type* %7300, i32 0, i32 0
  %7302 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7301, i32 0, i64 0
  %7303 = getelementptr inbounds %struct.LIST, %struct.LIST* %7302, i32 0, i32 1
  store %union.rec* %7288, %union.rec** %7303, align 8
  %7304 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7305 = bitcast %union.rec* %7304 to %struct.word_type*
  %7306 = getelementptr inbounds %struct.word_type, %struct.word_type* %7305, i32 0, i32 0
  %7307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7306, i32 0, i64 0
  %7308 = getelementptr inbounds %struct.LIST, %struct.LIST* %7307, i32 0, i32 0
  store %union.rec* %7288, %union.rec** %7308, align 8
  store %union.rec* %7288, %union.rec** @xx_link, align 8
  %7309 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7309, %union.rec** @zz_res, align 8
  %7310 = load %union.rec*, %union.rec** %prev, align 8
  %7311 = bitcast %union.rec* %7310 to %struct.word_type*
  %7312 = getelementptr inbounds %struct.word_type, %struct.word_type* %7311, i32 0, i32 0
  %7313 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7312, i32 0, i64 1
  %7314 = getelementptr inbounds %struct.LIST, %struct.LIST* %7313, i32 0, i32 1
  %7315 = load %union.rec*, %union.rec** %7314, align 8
  store %union.rec* %7315, %union.rec** @zz_hold, align 8
  %7316 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7317 = icmp eq %union.rec* %7316, null
  br i1 %7317, label %7318, label %7320

; <label>:7318                                    ; preds = %7282
  %7319 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7368

; <label>:7320                                    ; preds = %7282
  %7321 = load %union.rec*, %union.rec** @zz_res, align 8
  %7322 = icmp eq %union.rec* %7321, null
  br i1 %7322, label %7323, label %7325

; <label>:7323                                    ; preds = %7320
  %7324 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %7366

; <label>:7325                                    ; preds = %7320
  %7326 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7327 = bitcast %union.rec* %7326 to %struct.word_type*
  %7328 = getelementptr inbounds %struct.word_type, %struct.word_type* %7327, i32 0, i32 0
  %7329 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7328, i32 0, i64 0
  %7330 = getelementptr inbounds %struct.LIST, %struct.LIST* %7329, i32 0, i32 0
  %7331 = load %union.rec*, %union.rec** %7330, align 8
  store %union.rec* %7331, %union.rec** @zz_tmp, align 8
  %7332 = load %union.rec*, %union.rec** @zz_res, align 8
  %7333 = bitcast %union.rec* %7332 to %struct.word_type*
  %7334 = getelementptr inbounds %struct.word_type, %struct.word_type* %7333, i32 0, i32 0
  %7335 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7334, i32 0, i64 0
  %7336 = getelementptr inbounds %struct.LIST, %struct.LIST* %7335, i32 0, i32 0
  %7337 = load %union.rec*, %union.rec** %7336, align 8
  %7338 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7339 = bitcast %union.rec* %7338 to %struct.word_type*
  %7340 = getelementptr inbounds %struct.word_type, %struct.word_type* %7339, i32 0, i32 0
  %7341 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7340, i32 0, i64 0
  %7342 = getelementptr inbounds %struct.LIST, %struct.LIST* %7341, i32 0, i32 0
  store %union.rec* %7337, %union.rec** %7342, align 8
  %7343 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7344 = load %union.rec*, %union.rec** @zz_res, align 8
  %7345 = bitcast %union.rec* %7344 to %struct.word_type*
  %7346 = getelementptr inbounds %struct.word_type, %struct.word_type* %7345, i32 0, i32 0
  %7347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7346, i32 0, i64 0
  %7348 = getelementptr inbounds %struct.LIST, %struct.LIST* %7347, i32 0, i32 0
  %7349 = load %union.rec*, %union.rec** %7348, align 8
  %7350 = bitcast %union.rec* %7349 to %struct.word_type*
  %7351 = getelementptr inbounds %struct.word_type, %struct.word_type* %7350, i32 0, i32 0
  %7352 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7351, i32 0, i64 0
  %7353 = getelementptr inbounds %struct.LIST, %struct.LIST* %7352, i32 0, i32 1
  store %union.rec* %7343, %union.rec** %7353, align 8
  %7354 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7355 = load %union.rec*, %union.rec** @zz_res, align 8
  %7356 = bitcast %union.rec* %7355 to %struct.word_type*
  %7357 = getelementptr inbounds %struct.word_type, %struct.word_type* %7356, i32 0, i32 0
  %7358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7357, i32 0, i64 0
  %7359 = getelementptr inbounds %struct.LIST, %struct.LIST* %7358, i32 0, i32 0
  store %union.rec* %7354, %union.rec** %7359, align 8
  %7360 = load %union.rec*, %union.rec** @zz_res, align 8
  %7361 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7362 = bitcast %union.rec* %7361 to %struct.word_type*
  %7363 = getelementptr inbounds %struct.word_type, %struct.word_type* %7362, i32 0, i32 0
  %7364 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7363, i32 0, i64 0
  %7365 = getelementptr inbounds %struct.LIST, %struct.LIST* %7364, i32 0, i32 1
  store %union.rec* %7360, %union.rec** %7365, align 8
  br label %7366

; <label>:7366                                    ; preds = %7325, %7323
  %7367 = phi %union.rec* [ %7324, %7323 ], [ %7360, %7325 ]
  br label %7368

; <label>:7368                                    ; preds = %7366, %7318
  %7369 = phi %union.rec* [ %7319, %7318 ], [ %7367, %7366 ]
  %7370 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7370, %union.rec** @zz_res, align 8
  %7371 = load %union.rec*, %union.rec** %urec, align 8
  store %union.rec* %7371, %union.rec** @zz_hold, align 8
  %7372 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7373 = icmp eq %union.rec* %7372, null
  br i1 %7373, label %7374, label %7376

; <label>:7374                                    ; preds = %7368
  %7375 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7424

; <label>:7376                                    ; preds = %7368
  %7377 = load %union.rec*, %union.rec** @zz_res, align 8
  %7378 = icmp eq %union.rec* %7377, null
  br i1 %7378, label %7379, label %7381

; <label>:7379                                    ; preds = %7376
  %7380 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %7422

; <label>:7381                                    ; preds = %7376
  %7382 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7383 = bitcast %union.rec* %7382 to %struct.word_type*
  %7384 = getelementptr inbounds %struct.word_type, %struct.word_type* %7383, i32 0, i32 0
  %7385 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7384, i32 0, i64 1
  %7386 = getelementptr inbounds %struct.LIST, %struct.LIST* %7385, i32 0, i32 0
  %7387 = load %union.rec*, %union.rec** %7386, align 8
  store %union.rec* %7387, %union.rec** @zz_tmp, align 8
  %7388 = load %union.rec*, %union.rec** @zz_res, align 8
  %7389 = bitcast %union.rec* %7388 to %struct.word_type*
  %7390 = getelementptr inbounds %struct.word_type, %struct.word_type* %7389, i32 0, i32 0
  %7391 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7390, i32 0, i64 1
  %7392 = getelementptr inbounds %struct.LIST, %struct.LIST* %7391, i32 0, i32 0
  %7393 = load %union.rec*, %union.rec** %7392, align 8
  %7394 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7395 = bitcast %union.rec* %7394 to %struct.word_type*
  %7396 = getelementptr inbounds %struct.word_type, %struct.word_type* %7395, i32 0, i32 0
  %7397 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7396, i32 0, i64 1
  %7398 = getelementptr inbounds %struct.LIST, %struct.LIST* %7397, i32 0, i32 0
  store %union.rec* %7393, %union.rec** %7398, align 8
  %7399 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7400 = load %union.rec*, %union.rec** @zz_res, align 8
  %7401 = bitcast %union.rec* %7400 to %struct.word_type*
  %7402 = getelementptr inbounds %struct.word_type, %struct.word_type* %7401, i32 0, i32 0
  %7403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7402, i32 0, i64 1
  %7404 = getelementptr inbounds %struct.LIST, %struct.LIST* %7403, i32 0, i32 0
  %7405 = load %union.rec*, %union.rec** %7404, align 8
  %7406 = bitcast %union.rec* %7405 to %struct.word_type*
  %7407 = getelementptr inbounds %struct.word_type, %struct.word_type* %7406, i32 0, i32 0
  %7408 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7407, i32 0, i64 1
  %7409 = getelementptr inbounds %struct.LIST, %struct.LIST* %7408, i32 0, i32 1
  store %union.rec* %7399, %union.rec** %7409, align 8
  %7410 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7411 = load %union.rec*, %union.rec** @zz_res, align 8
  %7412 = bitcast %union.rec* %7411 to %struct.word_type*
  %7413 = getelementptr inbounds %struct.word_type, %struct.word_type* %7412, i32 0, i32 0
  %7414 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7413, i32 0, i64 1
  %7415 = getelementptr inbounds %struct.LIST, %struct.LIST* %7414, i32 0, i32 0
  store %union.rec* %7410, %union.rec** %7415, align 8
  %7416 = load %union.rec*, %union.rec** @zz_res, align 8
  %7417 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7418 = bitcast %union.rec* %7417 to %struct.word_type*
  %7419 = getelementptr inbounds %struct.word_type, %struct.word_type* %7418, i32 0, i32 0
  %7420 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7419, i32 0, i64 1
  %7421 = getelementptr inbounds %struct.LIST, %struct.LIST* %7420, i32 0, i32 1
  store %union.rec* %7416, %union.rec** %7421, align 8
  br label %7422

; <label>:7422                                    ; preds = %7381, %7379
  %7423 = phi %union.rec* [ %7380, %7379 ], [ %7416, %7381 ]
  br label %7424

; <label>:7424                                    ; preds = %7422, %7374
  %7425 = phi %union.rec* [ %7375, %7374 ], [ %7423, %7422 ]
  br label %7426

; <label>:7426                                    ; preds = %7424, %7055
  %7427 = load %union.rec*, %union.rec** %prev, align 8
  %7428 = load i32, i32* %mk, align 4
  %7429 = load i32, i32* %5, align 4
  %7430 = sext i32 %7429 to i64
  %7431 = load %union.rec*, %union.rec** %prev, align 8
  %7432 = bitcast %union.rec* %7431 to %struct.word_type*
  %7433 = getelementptr inbounds %struct.word_type, %struct.word_type* %7432, i32 0, i32 3
  %7434 = bitcast %union.THIRD_UNION* %7433 to %struct.anon.6*
  %7435 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %7434, i32 0, i32 0
  %7436 = getelementptr inbounds [2 x i32], [2 x i32]* %7435, i32 0, i64 %7430
  %7437 = load i32, i32* %7436, align 4
  %7438 = load i32, i32* %frame_size8, align 4
  %7439 = load i32, i32* %mk, align 4
  %7440 = load i32, i32* %2, align 4
  %7441 = sub nsw i32 %7439, %7440
  %7442 = sub nsw i32 %7438, %7441
  %7443 = load i32, i32* %5, align 4
  %7444 = sext i32 %7443 to i64
  %7445 = load %union.rec*, %union.rec** %1, align 8
  %7446 = bitcast %union.rec* %7445 to %struct.word_type*
  %7447 = getelementptr inbounds %struct.word_type, %struct.word_type* %7446, i32 0, i32 3
  %7448 = bitcast %union.THIRD_UNION* %7447 to %struct.anon.6*
  %7449 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %7448, i32 0, i32 0
  %7450 = getelementptr inbounds [2 x i32], [2 x i32]* %7449, i32 0, i64 %7444
  %7451 = load i32, i32* %7450, align 4
  %7452 = sub nsw i32 %7442, %7451
  %7453 = load i32, i32* %5, align 4
  %7454 = load i32, i32* %7, align 4
  %7455 = load i32, i32* %8, align 4
  %7456 = call %union.rec* @FixAndPrintObject(%union.rec* %7427, i32 %7428, i32 %7437, i32 %7452, i32 %7453, i32 0, i32 %7454, i32 %7455, i32* %aback, i32* %afwd)
  store %union.rec* %7456, %union.rec** %prev, align 8
  br label %7457

; <label>:7457                                    ; preds = %7426, %6092
  br label %7756

; <label>:7458                                    ; preds = %4899
  %7459 = load %union.rec*, %union.rec** %1, align 8
  %7460 = bitcast %union.rec* %7459 to %struct.word_type*
  %7461 = getelementptr inbounds %struct.word_type, %struct.word_type* %7460, i32 0, i32 0
  %7462 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7461, i32 0, i64 0
  %7463 = getelementptr inbounds %struct.LIST, %struct.LIST* %7462, i32 0, i32 1
  %7464 = load %union.rec*, %union.rec** %7463, align 8
  store %union.rec* %7464, %union.rec** %link, align 8
  br label %7465

; <label>:7465                                    ; preds = %7748, %7458
  %7466 = load %union.rec*, %union.rec** %link, align 8
  %7467 = load %union.rec*, %union.rec** %1, align 8
  %7468 = icmp ne %union.rec* %7466, %7467
  br i1 %7468, label %7469, label %7755

; <label>:7469                                    ; preds = %7465
  %7470 = load %union.rec*, %union.rec** %link, align 8
  %7471 = bitcast %union.rec* %7470 to %struct.word_type*
  %7472 = getelementptr inbounds %struct.word_type, %struct.word_type* %7471, i32 0, i32 0
  %7473 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7472, i32 0, i64 1
  %7474 = getelementptr inbounds %struct.LIST, %struct.LIST* %7473, i32 0, i32 0
  %7475 = load %union.rec*, %union.rec** %7474, align 8
  store %union.rec* %7475, %union.rec** %y, align 8
  br label %7476

; <label>:7476                                    ; preds = %7486, %7469
  %7477 = load %union.rec*, %union.rec** %y, align 8
  %7478 = bitcast %union.rec* %7477 to %struct.word_type*
  %7479 = getelementptr inbounds %struct.word_type, %struct.word_type* %7478, i32 0, i32 1
  %7480 = bitcast %union.FIRST_UNION* %7479 to %struct.anon*
  %7481 = getelementptr inbounds %struct.anon, %struct.anon* %7480, i32 0, i32 0
  %7482 = load i8, i8* %7481, align 1
  %7483 = zext i8 %7482 to i32
  %7484 = icmp eq i32 %7483, 0
  br i1 %7484, label %7485, label %7493

; <label>:7485                                    ; preds = %7476
  br label %7486

; <label>:7486                                    ; preds = %7485
  %7487 = load %union.rec*, %union.rec** %y, align 8
  %7488 = bitcast %union.rec* %7487 to %struct.word_type*
  %7489 = getelementptr inbounds %struct.word_type, %struct.word_type* %7488, i32 0, i32 0
  %7490 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7489, i32 0, i64 1
  %7491 = getelementptr inbounds %struct.LIST, %struct.LIST* %7490, i32 0, i32 0
  %7492 = load %union.rec*, %union.rec** %7491, align 8
  store %union.rec* %7492, %union.rec** %y, align 8
  br label %7476

; <label>:7493                                    ; preds = %7476
  %7494 = load %union.rec*, %union.rec** %y, align 8
  %7495 = bitcast %union.rec* %7494 to %struct.word_type*
  %7496 = getelementptr inbounds %struct.word_type, %struct.word_type* %7495, i32 0, i32 1
  %7497 = bitcast %union.FIRST_UNION* %7496 to %struct.anon*
  %7498 = getelementptr inbounds %struct.anon, %struct.anon* %7497, i32 0, i32 0
  %7499 = load i8, i8* %7498, align 1
  %7500 = zext i8 %7499 to i32
  %7501 = icmp sge i32 %7500, 9
  br i1 %7501, label %7502, label %7511

; <label>:7502                                    ; preds = %7493
  %7503 = load %union.rec*, %union.rec** %y, align 8
  %7504 = bitcast %union.rec* %7503 to %struct.word_type*
  %7505 = getelementptr inbounds %struct.word_type, %struct.word_type* %7504, i32 0, i32 1
  %7506 = bitcast %union.FIRST_UNION* %7505 to %struct.anon*
  %7507 = getelementptr inbounds %struct.anon, %struct.anon* %7506, i32 0, i32 0
  %7508 = load i8, i8* %7507, align 1
  %7509 = zext i8 %7508 to i32
  %7510 = icmp sle i32 %7509, 99
  br i1 %7510, label %7739, label %7511

; <label>:7511                                    ; preds = %7502, %7493
  %7512 = load %union.rec*, %union.rec** %y, align 8
  %7513 = bitcast %union.rec* %7512 to %struct.word_type*
  %7514 = getelementptr inbounds %struct.word_type, %struct.word_type* %7513, i32 0, i32 1
  %7515 = bitcast %union.FIRST_UNION* %7514 to %struct.anon*
  %7516 = getelementptr inbounds %struct.anon, %struct.anon* %7515, i32 0, i32 0
  %7517 = load i8, i8* %7516, align 1
  %7518 = zext i8 %7517 to i32
  %7519 = icmp eq i32 %7518, 3
  br i1 %7519, label %7520, label %7738

; <label>:7520                                    ; preds = %7511
  %7521 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %7522 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %7521, i32 0, i32 20
  %7523 = load void (i32, i32, i32, i32, i32)*, void (i32, i32, i32, i32, i32)** %7522, align 8
  %7524 = load %union.rec*, %union.rec** %y, align 8
  %7525 = bitcast %union.rec* %7524 to %struct.word_type*
  %7526 = getelementptr inbounds %struct.word_type, %struct.word_type* %7525, i32 0, i32 3
  %7527 = bitcast %union.THIRD_UNION* %7526 to %struct.anon.6*
  %7528 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %7527, i32 0, i32 0
  %7529 = getelementptr inbounds [2 x i32], [2 x i32]* %7528, i32 0, i64 1
  %7530 = load i32, i32* %7529, align 4
  %7531 = load %union.rec*, %union.rec** %y, align 8
  %7532 = bitcast %union.rec* %7531 to %struct.word_type*
  %7533 = getelementptr inbounds %struct.word_type, %struct.word_type* %7532, i32 0, i32 3
  %7534 = bitcast %union.THIRD_UNION* %7533 to %struct.anon.6*
  %7535 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %7534, i32 0, i32 1
  %7536 = getelementptr inbounds [2 x i32], [2 x i32]* %7535, i32 0, i64 1
  %7537 = load i32, i32* %7536, align 4
  %7538 = load %union.rec*, %union.rec** %y, align 8
  %7539 = bitcast %union.rec* %7538 to %struct.word_type*
  %7540 = getelementptr inbounds %struct.word_type, %struct.word_type* %7539, i32 0, i32 3
  %7541 = bitcast %union.THIRD_UNION* %7540 to %struct.anon.6*
  %7542 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %7541, i32 0, i32 0
  %7543 = getelementptr inbounds [2 x i32], [2 x i32]* %7542, i32 0, i64 0
  %7544 = load i32, i32* %7543, align 4
  %7545 = load %union.rec*, %union.rec** %y, align 8
  %7546 = bitcast %union.rec* %7545 to %struct.word_type*
  %7547 = getelementptr inbounds %struct.word_type, %struct.word_type* %7546, i32 0, i32 3
  %7548 = bitcast %union.THIRD_UNION* %7547 to %struct.anon.6*
  %7549 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %7548, i32 0, i32 1
  %7550 = getelementptr inbounds [2 x i32], [2 x i32]* %7549, i32 0, i64 0
  %7551 = load i32, i32* %7550, align 4
  %7552 = load i32, i32* %7, align 4
  %7553 = load i32, i32* %2, align 4
  %7554 = sub nsw i32 %7552, %7553
  call void %7523(i32 %7530, i32 %7537, i32 %7544, i32 %7551, i32 %7554)
  %7555 = load %union.rec*, %union.rec** %link, align 8
  %7556 = bitcast %union.rec* %7555 to %struct.word_type*
  %7557 = getelementptr inbounds %struct.word_type, %struct.word_type* %7556, i32 0, i32 0
  %7558 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7557, i32 0, i64 0
  %7559 = getelementptr inbounds %struct.LIST, %struct.LIST* %7558, i32 0, i32 0
  %7560 = load %union.rec*, %union.rec** %7559, align 8
  store %union.rec* %7560, %union.rec** %link, align 8
  %7561 = load %union.rec*, %union.rec** %y, align 8
  %7562 = bitcast %union.rec* %7561 to %struct.word_type*
  %7563 = getelementptr inbounds %struct.word_type, %struct.word_type* %7562, i32 0, i32 0
  %7564 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7563, i32 0, i64 1
  %7565 = getelementptr inbounds %struct.LIST, %struct.LIST* %7564, i32 0, i32 1
  %7566 = load %union.rec*, %union.rec** %7565, align 8
  store %union.rec* %7566, %union.rec** @xx_link, align 8
  %7567 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7567, %union.rec** @zz_hold, align 8
  %7568 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7569 = bitcast %union.rec* %7568 to %struct.word_type*
  %7570 = getelementptr inbounds %struct.word_type, %struct.word_type* %7569, i32 0, i32 0
  %7571 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7570, i32 0, i64 1
  %7572 = getelementptr inbounds %struct.LIST, %struct.LIST* %7571, i32 0, i32 1
  %7573 = load %union.rec*, %union.rec** %7572, align 8
  %7574 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7575 = icmp eq %union.rec* %7573, %7574
  br i1 %7575, label %7576, label %7577

; <label>:7576                                    ; preds = %7520
  br label %7618

; <label>:7577                                    ; preds = %7520
  %7578 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7579 = bitcast %union.rec* %7578 to %struct.word_type*
  %7580 = getelementptr inbounds %struct.word_type, %struct.word_type* %7579, i32 0, i32 0
  %7581 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7580, i32 0, i64 1
  %7582 = getelementptr inbounds %struct.LIST, %struct.LIST* %7581, i32 0, i32 1
  %7583 = load %union.rec*, %union.rec** %7582, align 8
  store %union.rec* %7583, %union.rec** @zz_res, align 8
  %7584 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7585 = bitcast %union.rec* %7584 to %struct.word_type*
  %7586 = getelementptr inbounds %struct.word_type, %struct.word_type* %7585, i32 0, i32 0
  %7587 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7586, i32 0, i64 1
  %7588 = getelementptr inbounds %struct.LIST, %struct.LIST* %7587, i32 0, i32 0
  %7589 = load %union.rec*, %union.rec** %7588, align 8
  %7590 = load %union.rec*, %union.rec** @zz_res, align 8
  %7591 = bitcast %union.rec* %7590 to %struct.word_type*
  %7592 = getelementptr inbounds %struct.word_type, %struct.word_type* %7591, i32 0, i32 0
  %7593 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7592, i32 0, i64 1
  %7594 = getelementptr inbounds %struct.LIST, %struct.LIST* %7593, i32 0, i32 0
  store %union.rec* %7589, %union.rec** %7594, align 8
  %7595 = load %union.rec*, %union.rec** @zz_res, align 8
  %7596 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7597 = bitcast %union.rec* %7596 to %struct.word_type*
  %7598 = getelementptr inbounds %struct.word_type, %struct.word_type* %7597, i32 0, i32 0
  %7599 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7598, i32 0, i64 1
  %7600 = getelementptr inbounds %struct.LIST, %struct.LIST* %7599, i32 0, i32 0
  %7601 = load %union.rec*, %union.rec** %7600, align 8
  %7602 = bitcast %union.rec* %7601 to %struct.word_type*
  %7603 = getelementptr inbounds %struct.word_type, %struct.word_type* %7602, i32 0, i32 0
  %7604 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7603, i32 0, i64 1
  %7605 = getelementptr inbounds %struct.LIST, %struct.LIST* %7604, i32 0, i32 1
  store %union.rec* %7595, %union.rec** %7605, align 8
  %7606 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7607 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7608 = bitcast %union.rec* %7607 to %struct.word_type*
  %7609 = getelementptr inbounds %struct.word_type, %struct.word_type* %7608, i32 0, i32 0
  %7610 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7609, i32 0, i64 1
  %7611 = getelementptr inbounds %struct.LIST, %struct.LIST* %7610, i32 0, i32 1
  store %union.rec* %7606, %union.rec** %7611, align 8
  %7612 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7613 = bitcast %union.rec* %7612 to %struct.word_type*
  %7614 = getelementptr inbounds %struct.word_type, %struct.word_type* %7613, i32 0, i32 0
  %7615 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7614, i32 0, i64 1
  %7616 = getelementptr inbounds %struct.LIST, %struct.LIST* %7615, i32 0, i32 0
  store %union.rec* %7606, %union.rec** %7616, align 8
  %7617 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7618

; <label>:7618                                    ; preds = %7577, %7576
  %7619 = phi %union.rec* [ null, %7576 ], [ %7617, %7577 ]
  store %union.rec* %7619, %union.rec** @xx_tmp, align 8
  %7620 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7620, %union.rec** @zz_hold, align 8
  %7621 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7622 = bitcast %union.rec* %7621 to %struct.word_type*
  %7623 = getelementptr inbounds %struct.word_type, %struct.word_type* %7622, i32 0, i32 0
  %7624 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7623, i32 0, i64 0
  %7625 = getelementptr inbounds %struct.LIST, %struct.LIST* %7624, i32 0, i32 1
  %7626 = load %union.rec*, %union.rec** %7625, align 8
  %7627 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7628 = icmp eq %union.rec* %7626, %7627
  br i1 %7628, label %7629, label %7630

; <label>:7629                                    ; preds = %7618
  br label %7671

; <label>:7630                                    ; preds = %7618
  %7631 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7632 = bitcast %union.rec* %7631 to %struct.word_type*
  %7633 = getelementptr inbounds %struct.word_type, %struct.word_type* %7632, i32 0, i32 0
  %7634 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7633, i32 0, i64 0
  %7635 = getelementptr inbounds %struct.LIST, %struct.LIST* %7634, i32 0, i32 1
  %7636 = load %union.rec*, %union.rec** %7635, align 8
  store %union.rec* %7636, %union.rec** @zz_res, align 8
  %7637 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7638 = bitcast %union.rec* %7637 to %struct.word_type*
  %7639 = getelementptr inbounds %struct.word_type, %struct.word_type* %7638, i32 0, i32 0
  %7640 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7639, i32 0, i64 0
  %7641 = getelementptr inbounds %struct.LIST, %struct.LIST* %7640, i32 0, i32 0
  %7642 = load %union.rec*, %union.rec** %7641, align 8
  %7643 = load %union.rec*, %union.rec** @zz_res, align 8
  %7644 = bitcast %union.rec* %7643 to %struct.word_type*
  %7645 = getelementptr inbounds %struct.word_type, %struct.word_type* %7644, i32 0, i32 0
  %7646 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7645, i32 0, i64 0
  %7647 = getelementptr inbounds %struct.LIST, %struct.LIST* %7646, i32 0, i32 0
  store %union.rec* %7642, %union.rec** %7647, align 8
  %7648 = load %union.rec*, %union.rec** @zz_res, align 8
  %7649 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7650 = bitcast %union.rec* %7649 to %struct.word_type*
  %7651 = getelementptr inbounds %struct.word_type, %struct.word_type* %7650, i32 0, i32 0
  %7652 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7651, i32 0, i64 0
  %7653 = getelementptr inbounds %struct.LIST, %struct.LIST* %7652, i32 0, i32 0
  %7654 = load %union.rec*, %union.rec** %7653, align 8
  %7655 = bitcast %union.rec* %7654 to %struct.word_type*
  %7656 = getelementptr inbounds %struct.word_type, %struct.word_type* %7655, i32 0, i32 0
  %7657 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7656, i32 0, i64 0
  %7658 = getelementptr inbounds %struct.LIST, %struct.LIST* %7657, i32 0, i32 1
  store %union.rec* %7648, %union.rec** %7658, align 8
  %7659 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7660 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7661 = bitcast %union.rec* %7660 to %struct.word_type*
  %7662 = getelementptr inbounds %struct.word_type, %struct.word_type* %7661, i32 0, i32 0
  %7663 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7662, i32 0, i64 0
  %7664 = getelementptr inbounds %struct.LIST, %struct.LIST* %7663, i32 0, i32 1
  store %union.rec* %7659, %union.rec** %7664, align 8
  %7665 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7666 = bitcast %union.rec* %7665 to %struct.word_type*
  %7667 = getelementptr inbounds %struct.word_type, %struct.word_type* %7666, i32 0, i32 0
  %7668 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7667, i32 0, i64 0
  %7669 = getelementptr inbounds %struct.LIST, %struct.LIST* %7668, i32 0, i32 0
  store %union.rec* %7659, %union.rec** %7669, align 8
  %7670 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7671

; <label>:7671                                    ; preds = %7630, %7629
  %7672 = phi %union.rec* [ null, %7629 ], [ %7670, %7630 ]
  %7673 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7673, %union.rec** @zz_hold, align 8
  %7674 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %7674, %union.rec** @zz_hold, align 8
  %7675 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7676 = bitcast %union.rec* %7675 to %struct.word_type*
  %7677 = getelementptr inbounds %struct.word_type, %struct.word_type* %7676, i32 0, i32 1
  %7678 = bitcast %union.FIRST_UNION* %7677 to %struct.anon*
  %7679 = getelementptr inbounds %struct.anon, %struct.anon* %7678, i32 0, i32 0
  %7680 = load i8, i8* %7679, align 1
  %7681 = zext i8 %7680 to i32
  %7682 = icmp eq i32 %7681, 11
  br i1 %7682, label %7692, label %7683

; <label>:7683                                    ; preds = %7671
  %7684 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7685 = bitcast %union.rec* %7684 to %struct.word_type*
  %7686 = getelementptr inbounds %struct.word_type, %struct.word_type* %7685, i32 0, i32 1
  %7687 = bitcast %union.FIRST_UNION* %7686 to %struct.anon*
  %7688 = getelementptr inbounds %struct.anon, %struct.anon* %7687, i32 0, i32 0
  %7689 = load i8, i8* %7688, align 1
  %7690 = zext i8 %7689 to i32
  %7691 = icmp eq i32 %7690, 12
  br i1 %7691, label %7692, label %7700

; <label>:7692                                    ; preds = %7683, %7671
  %7693 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7694 = bitcast %union.rec* %7693 to %struct.word_type*
  %7695 = getelementptr inbounds %struct.word_type, %struct.word_type* %7694, i32 0, i32 1
  %7696 = bitcast %union.FIRST_UNION* %7695 to %struct.anon*
  %7697 = getelementptr inbounds %struct.anon, %struct.anon* %7696, i32 0, i32 1
  %7698 = load i8, i8* %7697, align 1
  %7699 = zext i8 %7698 to i32
  br label %7711

; <label>:7700                                    ; preds = %7683
  %7701 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7702 = bitcast %union.rec* %7701 to %struct.word_type*
  %7703 = getelementptr inbounds %struct.word_type, %struct.word_type* %7702, i32 0, i32 1
  %7704 = bitcast %union.FIRST_UNION* %7703 to %struct.anon*
  %7705 = getelementptr inbounds %struct.anon, %struct.anon* %7704, i32 0, i32 0
  %7706 = load i8, i8* %7705, align 1
  %7707 = zext i8 %7706 to i64
  %7708 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %7707
  %7709 = load i8, i8* %7708, align 1
  %7710 = zext i8 %7709 to i32
  br label %7711

; <label>:7711                                    ; preds = %7700, %7692
  %7712 = phi i32 [ %7699, %7692 ], [ %7710, %7700 ]
  store i32 %7712, i32* @zz_size, align 4
  %7713 = load i32, i32* @zz_size, align 4
  %7714 = sext i32 %7713 to i64
  %7715 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7714
  %7716 = load %union.rec*, %union.rec** %7715, align 8
  %7717 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7718 = bitcast %union.rec* %7717 to %struct.word_type*
  %7719 = getelementptr inbounds %struct.word_type, %struct.word_type* %7718, i32 0, i32 0
  %7720 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7719, i32 0, i64 0
  %7721 = getelementptr inbounds %struct.LIST, %struct.LIST* %7720, i32 0, i32 0
  store %union.rec* %7716, %union.rec** %7721, align 8
  %7722 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7723 = load i32, i32* @zz_size, align 4
  %7724 = sext i32 %7723 to i64
  %7725 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7724
  store %union.rec* %7722, %union.rec** %7725, align 8
  %7726 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %7727 = bitcast %union.rec* %7726 to %struct.word_type*
  %7728 = getelementptr inbounds %struct.word_type, %struct.word_type* %7727, i32 0, i32 0
  %7729 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7728, i32 0, i64 1
  %7730 = getelementptr inbounds %struct.LIST, %struct.LIST* %7729, i32 0, i32 1
  %7731 = load %union.rec*, %union.rec** %7730, align 8
  %7732 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %7733 = icmp eq %union.rec* %7731, %7732
  br i1 %7733, label %7734, label %7737

; <label>:7734                                    ; preds = %7711
  %7735 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %7736 = call i32 @DisposeObject(%union.rec* %7735)
  br label %7737

; <label>:7737                                    ; preds = %7734, %7711
  br label %7738

; <label>:7738                                    ; preds = %7737, %7511
  br label %7748

; <label>:7739                                    ; preds = %7502
  %7740 = load %union.rec*, %union.rec** %y, align 8
  %7741 = load i32, i32* %2, align 4
  %7742 = load i32, i32* %3, align 4
  %7743 = load i32, i32* %4, align 4
  %7744 = load i32, i32* %5, align 4
  %7745 = load i32, i32* %7, align 4
  %7746 = load i32, i32* %8, align 4
  %7747 = call %union.rec* @FixAndPrintObject(%union.rec* %7740, i32 %7741, i32 %7742, i32 %7743, i32 %7744, i32 0, i32 %7745, i32 %7746, i32* %aback, i32* %afwd)
  store %union.rec* %7747, %union.rec** %y, align 8
  br label %7748

; <label>:7748                                    ; preds = %7739, %7738
  %7749 = load %union.rec*, %union.rec** %link, align 8
  %7750 = bitcast %union.rec* %7749 to %struct.word_type*
  %7751 = getelementptr inbounds %struct.word_type, %struct.word_type* %7750, i32 0, i32 0
  %7752 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7751, i32 0, i64 0
  %7753 = getelementptr inbounds %struct.LIST, %struct.LIST* %7752, i32 0, i32 1
  %7754 = load %union.rec*, %union.rec** %7753, align 8
  store %union.rec* %7754, %union.rec** %link, align 8
  br label %7465

; <label>:7755                                    ; preds = %7465
  br label %7756

; <label>:7756                                    ; preds = %7755, %7457
  %7757 = load i32, i32* %3, align 4
  %7758 = load i32*, i32** %9, align 8
  store i32 %7757, i32* %7758, align 4
  %7759 = load i32, i32* %4, align 4
  %7760 = load i32*, i32** %10, align 8
  store i32 %7759, i32* %7760, align 4
  br label %8231

; <label>:7761                                    ; preds = %0, %0
  %7762 = load %union.rec*, %union.rec** %1, align 8
  %7763 = bitcast %union.rec* %7762 to %struct.word_type*
  %7764 = getelementptr inbounds %struct.word_type, %struct.word_type* %7763, i32 0, i32 1
  %7765 = bitcast %union.FIRST_UNION* %7764 to %struct.anon*
  %7766 = getelementptr inbounds %struct.anon, %struct.anon* %7765, i32 0, i32 0
  %7767 = load i8, i8* %7766, align 1
  %7768 = zext i8 %7767 to i32
  %7769 = icmp eq i32 %7768, 16
  %7770 = zext i1 %7769 to i32
  %7771 = load i32, i32* %5, align 4
  %7772 = icmp eq i32 %7771, 0
  %7773 = zext i1 %7772 to i32
  %7774 = icmp eq i32 %7770, %7773
  br i1 %7774, label %7778, label %7775

; <label>:7775                                    ; preds = %7761
  %7776 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7777 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %7776, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0))
  br label %7778

; <label>:7778                                    ; preds = %7775, %7761
  %7779 = load %union.rec*, %union.rec** %1, align 8
  %7780 = bitcast %union.rec* %7779 to %struct.word_type*
  %7781 = getelementptr inbounds %struct.word_type, %struct.word_type* %7780, i32 0, i32 0
  %7782 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7781, i32 0, i64 0
  %7783 = getelementptr inbounds %struct.LIST, %struct.LIST* %7782, i32 0, i32 1
  %7784 = load %union.rec*, %union.rec** %7783, align 8
  store %union.rec* %7784, %union.rec** %link, align 8
  %7785 = load %union.rec*, %union.rec** %1, align 8
  %7786 = bitcast %union.rec* %7785 to %struct.word_type*
  %7787 = getelementptr inbounds %struct.word_type, %struct.word_type* %7786, i32 0, i32 0
  %7788 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7787, i32 0, i64 1
  %7789 = getelementptr inbounds %struct.LIST, %struct.LIST* %7788, i32 0, i32 1
  %7790 = load %union.rec*, %union.rec** %7789, align 8
  store %union.rec* %7790, %union.rec** %uplink, align 8
  store i32 1, i32* %i, align 4
  br label %7791

; <label>:7791                                    ; preds = %7806, %7778
  %7792 = load %union.rec*, %union.rec** %link, align 8
  %7793 = load %union.rec*, %union.rec** %1, align 8
  %7794 = icmp ne %union.rec* %7792, %7793
  br i1 %7794, label %7795, label %7803

; <label>:7795                                    ; preds = %7791
  %7796 = load %union.rec*, %union.rec** %uplink, align 8
  %7797 = load %union.rec*, %union.rec** %1, align 8
  %7798 = icmp ne %union.rec* %7796, %7797
  br i1 %7798, label %7799, label %7803

; <label>:7799                                    ; preds = %7795
  %7800 = load i32, i32* %i, align 4
  %7801 = load i32, i32* %8, align 4
  %7802 = icmp slt i32 %7800, %7801
  br label %7803

; <label>:7803                                    ; preds = %7799, %7795, %7791
  %7804 = phi i1 [ false, %7795 ], [ false, %7791 ], [ %7802, %7799 ]
  br i1 %7804, label %7805, label %7821

; <label>:7805                                    ; preds = %7803
  br label %7806

; <label>:7806                                    ; preds = %7805
  %7807 = load %union.rec*, %union.rec** %link, align 8
  %7808 = bitcast %union.rec* %7807 to %struct.word_type*
  %7809 = getelementptr inbounds %struct.word_type, %struct.word_type* %7808, i32 0, i32 0
  %7810 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7809, i32 0, i64 0
  %7811 = getelementptr inbounds %struct.LIST, %struct.LIST* %7810, i32 0, i32 1
  %7812 = load %union.rec*, %union.rec** %7811, align 8
  store %union.rec* %7812, %union.rec** %link, align 8
  %7813 = load %union.rec*, %union.rec** %uplink, align 8
  %7814 = bitcast %union.rec* %7813 to %struct.word_type*
  %7815 = getelementptr inbounds %struct.word_type, %struct.word_type* %7814, i32 0, i32 0
  %7816 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7815, i32 0, i64 1
  %7817 = getelementptr inbounds %struct.LIST, %struct.LIST* %7816, i32 0, i32 1
  %7818 = load %union.rec*, %union.rec** %7817, align 8
  store %union.rec* %7818, %union.rec** %uplink, align 8
  %7819 = load i32, i32* %i, align 4
  %7820 = add nsw i32 %7819, 1
  store i32 %7820, i32* %i, align 4
  br label %7791

; <label>:7821                                    ; preds = %7803
  %7822 = load %union.rec*, %union.rec** %link, align 8
  %7823 = load %union.rec*, %union.rec** %1, align 8
  %7824 = icmp ne %union.rec* %7822, %7823
  br i1 %7824, label %7825, label %7829

; <label>:7825                                    ; preds = %7821
  %7826 = load %union.rec*, %union.rec** %uplink, align 8
  %7827 = load %union.rec*, %union.rec** %1, align 8
  %7828 = icmp ne %union.rec* %7826, %7827
  br i1 %7828, label %7832, label %7829

; <label>:7829                                    ; preds = %7825, %7821
  %7830 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7831 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %7830, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0))
  br label %7832

; <label>:7832                                    ; preds = %7829, %7825
  %7833 = load %union.rec*, %union.rec** %link, align 8
  %7834 = bitcast %union.rec* %7833 to %struct.word_type*
  %7835 = getelementptr inbounds %struct.word_type, %struct.word_type* %7834, i32 0, i32 0
  %7836 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7835, i32 0, i64 1
  %7837 = getelementptr inbounds %struct.LIST, %struct.LIST* %7836, i32 0, i32 0
  %7838 = load %union.rec*, %union.rec** %7837, align 8
  store %union.rec* %7838, %union.rec** %y, align 8
  store i32 1, i32* %8, align 4
  br label %7839

; <label>:7839                                    ; preds = %7849, %7832
  %7840 = load %union.rec*, %union.rec** %y, align 8
  %7841 = bitcast %union.rec* %7840 to %struct.word_type*
  %7842 = getelementptr inbounds %struct.word_type, %struct.word_type* %7841, i32 0, i32 1
  %7843 = bitcast %union.FIRST_UNION* %7842 to %struct.anon*
  %7844 = getelementptr inbounds %struct.anon, %struct.anon* %7843, i32 0, i32 0
  %7845 = load i8, i8* %7844, align 1
  %7846 = zext i8 %7845 to i32
  %7847 = icmp eq i32 %7846, 0
  br i1 %7847, label %7848, label %7858

; <label>:7848                                    ; preds = %7839
  br label %7849

; <label>:7849                                    ; preds = %7848
  %7850 = load %union.rec*, %union.rec** %y, align 8
  %7851 = bitcast %union.rec* %7850 to %struct.word_type*
  %7852 = getelementptr inbounds %struct.word_type, %struct.word_type* %7851, i32 0, i32 0
  %7853 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7852, i32 0, i64 1
  %7854 = getelementptr inbounds %struct.LIST, %struct.LIST* %7853, i32 0, i32 0
  %7855 = load %union.rec*, %union.rec** %7854, align 8
  store %union.rec* %7855, %union.rec** %y, align 8
  %7856 = load i32, i32* %8, align 4
  %7857 = add nsw i32 %7856, 1
  store i32 %7857, i32* %8, align 4
  br label %7839

; <label>:7858                                    ; preds = %7839
  %7859 = load %union.rec*, %union.rec** %uplink, align 8
  store %union.rec* %7859, %union.rec** @xx_link, align 8
  %7860 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7860, %union.rec** @zz_hold, align 8
  %7861 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7862 = bitcast %union.rec* %7861 to %struct.word_type*
  %7863 = getelementptr inbounds %struct.word_type, %struct.word_type* %7862, i32 0, i32 0
  %7864 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7863, i32 0, i64 1
  %7865 = getelementptr inbounds %struct.LIST, %struct.LIST* %7864, i32 0, i32 1
  %7866 = load %union.rec*, %union.rec** %7865, align 8
  %7867 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7868 = icmp eq %union.rec* %7866, %7867
  br i1 %7868, label %7869, label %7870

; <label>:7869                                    ; preds = %7858
  br label %7911

; <label>:7870                                    ; preds = %7858
  %7871 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7872 = bitcast %union.rec* %7871 to %struct.word_type*
  %7873 = getelementptr inbounds %struct.word_type, %struct.word_type* %7872, i32 0, i32 0
  %7874 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7873, i32 0, i64 1
  %7875 = getelementptr inbounds %struct.LIST, %struct.LIST* %7874, i32 0, i32 1
  %7876 = load %union.rec*, %union.rec** %7875, align 8
  store %union.rec* %7876, %union.rec** @zz_res, align 8
  %7877 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7878 = bitcast %union.rec* %7877 to %struct.word_type*
  %7879 = getelementptr inbounds %struct.word_type, %struct.word_type* %7878, i32 0, i32 0
  %7880 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7879, i32 0, i64 1
  %7881 = getelementptr inbounds %struct.LIST, %struct.LIST* %7880, i32 0, i32 0
  %7882 = load %union.rec*, %union.rec** %7881, align 8
  %7883 = load %union.rec*, %union.rec** @zz_res, align 8
  %7884 = bitcast %union.rec* %7883 to %struct.word_type*
  %7885 = getelementptr inbounds %struct.word_type, %struct.word_type* %7884, i32 0, i32 0
  %7886 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7885, i32 0, i64 1
  %7887 = getelementptr inbounds %struct.LIST, %struct.LIST* %7886, i32 0, i32 0
  store %union.rec* %7882, %union.rec** %7887, align 8
  %7888 = load %union.rec*, %union.rec** @zz_res, align 8
  %7889 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7890 = bitcast %union.rec* %7889 to %struct.word_type*
  %7891 = getelementptr inbounds %struct.word_type, %struct.word_type* %7890, i32 0, i32 0
  %7892 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7891, i32 0, i64 1
  %7893 = getelementptr inbounds %struct.LIST, %struct.LIST* %7892, i32 0, i32 0
  %7894 = load %union.rec*, %union.rec** %7893, align 8
  %7895 = bitcast %union.rec* %7894 to %struct.word_type*
  %7896 = getelementptr inbounds %struct.word_type, %struct.word_type* %7895, i32 0, i32 0
  %7897 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7896, i32 0, i64 1
  %7898 = getelementptr inbounds %struct.LIST, %struct.LIST* %7897, i32 0, i32 1
  store %union.rec* %7888, %union.rec** %7898, align 8
  %7899 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7900 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7901 = bitcast %union.rec* %7900 to %struct.word_type*
  %7902 = getelementptr inbounds %struct.word_type, %struct.word_type* %7901, i32 0, i32 0
  %7903 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7902, i32 0, i64 1
  %7904 = getelementptr inbounds %struct.LIST, %struct.LIST* %7903, i32 0, i32 1
  store %union.rec* %7899, %union.rec** %7904, align 8
  %7905 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7906 = bitcast %union.rec* %7905 to %struct.word_type*
  %7907 = getelementptr inbounds %struct.word_type, %struct.word_type* %7906, i32 0, i32 0
  %7908 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7907, i32 0, i64 1
  %7909 = getelementptr inbounds %struct.LIST, %struct.LIST* %7908, i32 0, i32 0
  store %union.rec* %7899, %union.rec** %7909, align 8
  %7910 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7911

; <label>:7911                                    ; preds = %7870, %7869
  %7912 = phi %union.rec* [ null, %7869 ], [ %7910, %7870 ]
  %7913 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7913, %union.rec** @zz_res, align 8
  %7914 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %7914, %union.rec** @zz_hold, align 8
  %7915 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7916 = icmp eq %union.rec* %7915, null
  br i1 %7916, label %7917, label %7919

; <label>:7917                                    ; preds = %7911
  %7918 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7967

; <label>:7919                                    ; preds = %7911
  %7920 = load %union.rec*, %union.rec** @zz_res, align 8
  %7921 = icmp eq %union.rec* %7920, null
  br i1 %7921, label %7922, label %7924

; <label>:7922                                    ; preds = %7919
  %7923 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %7965

; <label>:7924                                    ; preds = %7919
  %7925 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7926 = bitcast %union.rec* %7925 to %struct.word_type*
  %7927 = getelementptr inbounds %struct.word_type, %struct.word_type* %7926, i32 0, i32 0
  %7928 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7927, i32 0, i64 1
  %7929 = getelementptr inbounds %struct.LIST, %struct.LIST* %7928, i32 0, i32 0
  %7930 = load %union.rec*, %union.rec** %7929, align 8
  store %union.rec* %7930, %union.rec** @zz_tmp, align 8
  %7931 = load %union.rec*, %union.rec** @zz_res, align 8
  %7932 = bitcast %union.rec* %7931 to %struct.word_type*
  %7933 = getelementptr inbounds %struct.word_type, %struct.word_type* %7932, i32 0, i32 0
  %7934 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7933, i32 0, i64 1
  %7935 = getelementptr inbounds %struct.LIST, %struct.LIST* %7934, i32 0, i32 0
  %7936 = load %union.rec*, %union.rec** %7935, align 8
  %7937 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7938 = bitcast %union.rec* %7937 to %struct.word_type*
  %7939 = getelementptr inbounds %struct.word_type, %struct.word_type* %7938, i32 0, i32 0
  %7940 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7939, i32 0, i64 1
  %7941 = getelementptr inbounds %struct.LIST, %struct.LIST* %7940, i32 0, i32 0
  store %union.rec* %7936, %union.rec** %7941, align 8
  %7942 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7943 = load %union.rec*, %union.rec** @zz_res, align 8
  %7944 = bitcast %union.rec* %7943 to %struct.word_type*
  %7945 = getelementptr inbounds %struct.word_type, %struct.word_type* %7944, i32 0, i32 0
  %7946 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7945, i32 0, i64 1
  %7947 = getelementptr inbounds %struct.LIST, %struct.LIST* %7946, i32 0, i32 0
  %7948 = load %union.rec*, %union.rec** %7947, align 8
  %7949 = bitcast %union.rec* %7948 to %struct.word_type*
  %7950 = getelementptr inbounds %struct.word_type, %struct.word_type* %7949, i32 0, i32 0
  %7951 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7950, i32 0, i64 1
  %7952 = getelementptr inbounds %struct.LIST, %struct.LIST* %7951, i32 0, i32 1
  store %union.rec* %7942, %union.rec** %7952, align 8
  %7953 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7954 = load %union.rec*, %union.rec** @zz_res, align 8
  %7955 = bitcast %union.rec* %7954 to %struct.word_type*
  %7956 = getelementptr inbounds %struct.word_type, %struct.word_type* %7955, i32 0, i32 0
  %7957 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7956, i32 0, i64 1
  %7958 = getelementptr inbounds %struct.LIST, %struct.LIST* %7957, i32 0, i32 0
  store %union.rec* %7953, %union.rec** %7958, align 8
  %7959 = load %union.rec*, %union.rec** @zz_res, align 8
  %7960 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7961 = bitcast %union.rec* %7960 to %struct.word_type*
  %7962 = getelementptr inbounds %struct.word_type, %struct.word_type* %7961, i32 0, i32 0
  %7963 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7962, i32 0, i64 1
  %7964 = getelementptr inbounds %struct.LIST, %struct.LIST* %7963, i32 0, i32 1
  store %union.rec* %7959, %union.rec** %7964, align 8
  br label %7965

; <label>:7965                                    ; preds = %7924, %7922
  %7966 = phi %union.rec* [ %7923, %7922 ], [ %7959, %7924 ]
  br label %7967

; <label>:7967                                    ; preds = %7965, %7917
  %7968 = phi %union.rec* [ %7918, %7917 ], [ %7966, %7965 ]
  %7969 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %7969, %union.rec** @xx_link, align 8
  %7970 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7970, %union.rec** @zz_hold, align 8
  %7971 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7972 = bitcast %union.rec* %7971 to %struct.word_type*
  %7973 = getelementptr inbounds %struct.word_type, %struct.word_type* %7972, i32 0, i32 0
  %7974 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7973, i32 0, i64 1
  %7975 = getelementptr inbounds %struct.LIST, %struct.LIST* %7974, i32 0, i32 1
  %7976 = load %union.rec*, %union.rec** %7975, align 8
  %7977 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7978 = icmp eq %union.rec* %7976, %7977
  br i1 %7978, label %7979, label %7980

; <label>:7979                                    ; preds = %7967
  br label %8021

; <label>:7980                                    ; preds = %7967
  %7981 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7982 = bitcast %union.rec* %7981 to %struct.word_type*
  %7983 = getelementptr inbounds %struct.word_type, %struct.word_type* %7982, i32 0, i32 0
  %7984 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7983, i32 0, i64 1
  %7985 = getelementptr inbounds %struct.LIST, %struct.LIST* %7984, i32 0, i32 1
  %7986 = load %union.rec*, %union.rec** %7985, align 8
  store %union.rec* %7986, %union.rec** @zz_res, align 8
  %7987 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7988 = bitcast %union.rec* %7987 to %struct.word_type*
  %7989 = getelementptr inbounds %struct.word_type, %struct.word_type* %7988, i32 0, i32 0
  %7990 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7989, i32 0, i64 1
  %7991 = getelementptr inbounds %struct.LIST, %struct.LIST* %7990, i32 0, i32 0
  %7992 = load %union.rec*, %union.rec** %7991, align 8
  %7993 = load %union.rec*, %union.rec** @zz_res, align 8
  %7994 = bitcast %union.rec* %7993 to %struct.word_type*
  %7995 = getelementptr inbounds %struct.word_type, %struct.word_type* %7994, i32 0, i32 0
  %7996 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7995, i32 0, i64 1
  %7997 = getelementptr inbounds %struct.LIST, %struct.LIST* %7996, i32 0, i32 0
  store %union.rec* %7992, %union.rec** %7997, align 8
  %7998 = load %union.rec*, %union.rec** @zz_res, align 8
  %7999 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8000 = bitcast %union.rec* %7999 to %struct.word_type*
  %8001 = getelementptr inbounds %struct.word_type, %struct.word_type* %8000, i32 0, i32 0
  %8002 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8001, i32 0, i64 1
  %8003 = getelementptr inbounds %struct.LIST, %struct.LIST* %8002, i32 0, i32 0
  %8004 = load %union.rec*, %union.rec** %8003, align 8
  %8005 = bitcast %union.rec* %8004 to %struct.word_type*
  %8006 = getelementptr inbounds %struct.word_type, %struct.word_type* %8005, i32 0, i32 0
  %8007 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8006, i32 0, i64 1
  %8008 = getelementptr inbounds %struct.LIST, %struct.LIST* %8007, i32 0, i32 1
  store %union.rec* %7998, %union.rec** %8008, align 8
  %8009 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8010 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8011 = bitcast %union.rec* %8010 to %struct.word_type*
  %8012 = getelementptr inbounds %struct.word_type, %struct.word_type* %8011, i32 0, i32 0
  %8013 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8012, i32 0, i64 1
  %8014 = getelementptr inbounds %struct.LIST, %struct.LIST* %8013, i32 0, i32 1
  store %union.rec* %8009, %union.rec** %8014, align 8
  %8015 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8016 = bitcast %union.rec* %8015 to %struct.word_type*
  %8017 = getelementptr inbounds %struct.word_type, %struct.word_type* %8016, i32 0, i32 0
  %8018 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8017, i32 0, i64 1
  %8019 = getelementptr inbounds %struct.LIST, %struct.LIST* %8018, i32 0, i32 0
  store %union.rec* %8009, %union.rec** %8019, align 8
  %8020 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %8021

; <label>:8021                                    ; preds = %7980, %7979
  %8022 = phi %union.rec* [ null, %7979 ], [ %8020, %7980 ]
  %8023 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8023, %union.rec** @zz_hold, align 8
  %8024 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8025 = bitcast %union.rec* %8024 to %struct.word_type*
  %8026 = getelementptr inbounds %struct.word_type, %struct.word_type* %8025, i32 0, i32 0
  %8027 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8026, i32 0, i64 0
  %8028 = getelementptr inbounds %struct.LIST, %struct.LIST* %8027, i32 0, i32 1
  %8029 = load %union.rec*, %union.rec** %8028, align 8
  %8030 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8031 = icmp eq %union.rec* %8029, %8030
  br i1 %8031, label %8032, label %8033

; <label>:8032                                    ; preds = %8021
  br label %8074

; <label>:8033                                    ; preds = %8021
  %8034 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8035 = bitcast %union.rec* %8034 to %struct.word_type*
  %8036 = getelementptr inbounds %struct.word_type, %struct.word_type* %8035, i32 0, i32 0
  %8037 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8036, i32 0, i64 0
  %8038 = getelementptr inbounds %struct.LIST, %struct.LIST* %8037, i32 0, i32 1
  %8039 = load %union.rec*, %union.rec** %8038, align 8
  store %union.rec* %8039, %union.rec** @zz_res, align 8
  %8040 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8041 = bitcast %union.rec* %8040 to %struct.word_type*
  %8042 = getelementptr inbounds %struct.word_type, %struct.word_type* %8041, i32 0, i32 0
  %8043 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8042, i32 0, i64 0
  %8044 = getelementptr inbounds %struct.LIST, %struct.LIST* %8043, i32 0, i32 0
  %8045 = load %union.rec*, %union.rec** %8044, align 8
  %8046 = load %union.rec*, %union.rec** @zz_res, align 8
  %8047 = bitcast %union.rec* %8046 to %struct.word_type*
  %8048 = getelementptr inbounds %struct.word_type, %struct.word_type* %8047, i32 0, i32 0
  %8049 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8048, i32 0, i64 0
  %8050 = getelementptr inbounds %struct.LIST, %struct.LIST* %8049, i32 0, i32 0
  store %union.rec* %8045, %union.rec** %8050, align 8
  %8051 = load %union.rec*, %union.rec** @zz_res, align 8
  %8052 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8053 = bitcast %union.rec* %8052 to %struct.word_type*
  %8054 = getelementptr inbounds %struct.word_type, %struct.word_type* %8053, i32 0, i32 0
  %8055 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8054, i32 0, i64 0
  %8056 = getelementptr inbounds %struct.LIST, %struct.LIST* %8055, i32 0, i32 0
  %8057 = load %union.rec*, %union.rec** %8056, align 8
  %8058 = bitcast %union.rec* %8057 to %struct.word_type*
  %8059 = getelementptr inbounds %struct.word_type, %struct.word_type* %8058, i32 0, i32 0
  %8060 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8059, i32 0, i64 0
  %8061 = getelementptr inbounds %struct.LIST, %struct.LIST* %8060, i32 0, i32 1
  store %union.rec* %8051, %union.rec** %8061, align 8
  %8062 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8063 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8064 = bitcast %union.rec* %8063 to %struct.word_type*
  %8065 = getelementptr inbounds %struct.word_type, %struct.word_type* %8064, i32 0, i32 0
  %8066 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8065, i32 0, i64 0
  %8067 = getelementptr inbounds %struct.LIST, %struct.LIST* %8066, i32 0, i32 1
  store %union.rec* %8062, %union.rec** %8067, align 8
  %8068 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8069 = bitcast %union.rec* %8068 to %struct.word_type*
  %8070 = getelementptr inbounds %struct.word_type, %struct.word_type* %8069, i32 0, i32 0
  %8071 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8070, i32 0, i64 0
  %8072 = getelementptr inbounds %struct.LIST, %struct.LIST* %8071, i32 0, i32 0
  store %union.rec* %8062, %union.rec** %8072, align 8
  %8073 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %8074

; <label>:8074                                    ; preds = %8033, %8032
  %8075 = phi %union.rec* [ null, %8032 ], [ %8073, %8033 ]
  %8076 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8076, %union.rec** @zz_hold, align 8
  %8077 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %8077, %union.rec** @zz_hold, align 8
  %8078 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8079 = bitcast %union.rec* %8078 to %struct.word_type*
  %8080 = getelementptr inbounds %struct.word_type, %struct.word_type* %8079, i32 0, i32 1
  %8081 = bitcast %union.FIRST_UNION* %8080 to %struct.anon*
  %8082 = getelementptr inbounds %struct.anon, %struct.anon* %8081, i32 0, i32 0
  %8083 = load i8, i8* %8082, align 1
  %8084 = zext i8 %8083 to i32
  %8085 = icmp eq i32 %8084, 11
  br i1 %8085, label %8095, label %8086

; <label>:8086                                    ; preds = %8074
  %8087 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8088 = bitcast %union.rec* %8087 to %struct.word_type*
  %8089 = getelementptr inbounds %struct.word_type, %struct.word_type* %8088, i32 0, i32 1
  %8090 = bitcast %union.FIRST_UNION* %8089 to %struct.anon*
  %8091 = getelementptr inbounds %struct.anon, %struct.anon* %8090, i32 0, i32 0
  %8092 = load i8, i8* %8091, align 1
  %8093 = zext i8 %8092 to i32
  %8094 = icmp eq i32 %8093, 12
  br i1 %8094, label %8095, label %8103

; <label>:8095                                    ; preds = %8086, %8074
  %8096 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8097 = bitcast %union.rec* %8096 to %struct.word_type*
  %8098 = getelementptr inbounds %struct.word_type, %struct.word_type* %8097, i32 0, i32 1
  %8099 = bitcast %union.FIRST_UNION* %8098 to %struct.anon*
  %8100 = getelementptr inbounds %struct.anon, %struct.anon* %8099, i32 0, i32 1
  %8101 = load i8, i8* %8100, align 1
  %8102 = zext i8 %8101 to i32
  br label %8114

; <label>:8103                                    ; preds = %8086
  %8104 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8105 = bitcast %union.rec* %8104 to %struct.word_type*
  %8106 = getelementptr inbounds %struct.word_type, %struct.word_type* %8105, i32 0, i32 1
  %8107 = bitcast %union.FIRST_UNION* %8106 to %struct.anon*
  %8108 = getelementptr inbounds %struct.anon, %struct.anon* %8107, i32 0, i32 0
  %8109 = load i8, i8* %8108, align 1
  %8110 = zext i8 %8109 to i64
  %8111 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %8110
  %8112 = load i8, i8* %8111, align 1
  %8113 = zext i8 %8112 to i32
  br label %8114

; <label>:8114                                    ; preds = %8103, %8095
  %8115 = phi i32 [ %8102, %8095 ], [ %8113, %8103 ]
  store i32 %8115, i32* @zz_size, align 4
  %8116 = load i32, i32* @zz_size, align 4
  %8117 = sext i32 %8116 to i64
  %8118 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8117
  %8119 = load %union.rec*, %union.rec** %8118, align 8
  %8120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8121 = bitcast %union.rec* %8120 to %struct.word_type*
  %8122 = getelementptr inbounds %struct.word_type, %struct.word_type* %8121, i32 0, i32 0
  %8123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8122, i32 0, i64 0
  %8124 = getelementptr inbounds %struct.LIST, %struct.LIST* %8123, i32 0, i32 0
  store %union.rec* %8119, %union.rec** %8124, align 8
  %8125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8126 = load i32, i32* @zz_size, align 4
  %8127 = sext i32 %8126 to i64
  %8128 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8127
  store %union.rec* %8125, %union.rec** %8128, align 8
  %8129 = load %union.rec*, %union.rec** %y, align 8
  %8130 = bitcast %union.rec* %8129 to %struct.word_type*
  %8131 = getelementptr inbounds %struct.word_type, %struct.word_type* %8130, i32 0, i32 1
  %8132 = bitcast %union.FIRST_UNION* %8131 to %struct.anon*
  %8133 = getelementptr inbounds %struct.anon, %struct.anon* %8132, i32 0, i32 0
  %8134 = load i8, i8* %8133, align 1
  %8135 = zext i8 %8134 to i32
  %8136 = icmp ne i32 %8135, 1
  br i1 %8136, label %8140, label %8137

; <label>:8137                                    ; preds = %8114
  %8138 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %8139 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %8138, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0))
  br label %8140

; <label>:8140                                    ; preds = %8137, %8114
  %8141 = load %union.rec*, %union.rec** %1, align 8
  %8142 = bitcast %union.rec* %8141 to %struct.word_type*
  %8143 = getelementptr inbounds %struct.word_type, %struct.word_type* %8142, i32 0, i32 2
  %8144 = bitcast %union.SECOND_UNION* %8143 to %struct.anon.2*
  %8145 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8144, i32 0, i32 1
  %8146 = load i8, i8* %8145, align 1
  %8147 = zext i8 %8146 to i32
  %8148 = icmp ne i32 %8147, 2
  br i1 %8148, label %8149, label %8173

; <label>:8149                                    ; preds = %8140
  %8150 = load i32, i32* %3, align 4
  %8151 = load i32, i32* %5, align 4
  %8152 = sext i32 %8151 to i64
  %8153 = load %union.rec*, %union.rec** %1, align 8
  %8154 = bitcast %union.rec* %8153 to %struct.word_type*
  %8155 = getelementptr inbounds %struct.word_type, %struct.word_type* %8154, i32 0, i32 3
  %8156 = bitcast %union.THIRD_UNION* %8155 to %struct.anon.6*
  %8157 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %8156, i32 0, i32 0
  %8158 = getelementptr inbounds [2 x i32], [2 x i32]* %8157, i32 0, i64 %8152
  store i32 %8150, i32* %8158, align 4
  %8159 = load i32, i32* %4, align 4
  %8160 = load i32, i32* %5, align 4
  %8161 = sext i32 %8160 to i64
  %8162 = load %union.rec*, %union.rec** %1, align 8
  %8163 = bitcast %union.rec* %8162 to %struct.word_type*
  %8164 = getelementptr inbounds %struct.word_type, %struct.word_type* %8163, i32 0, i32 3
  %8165 = bitcast %union.THIRD_UNION* %8164 to %struct.anon.6*
  %8166 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %8165, i32 0, i32 1
  %8167 = getelementptr inbounds [2 x i32], [2 x i32]* %8166, i32 0, i64 %8161
  store i32 %8159, i32* %8167, align 4
  %8168 = load %union.rec*, %union.rec** %1, align 8
  %8169 = bitcast %union.rec* %8168 to %struct.word_type*
  %8170 = getelementptr inbounds %struct.word_type, %struct.word_type* %8169, i32 0, i32 2
  %8171 = bitcast %union.SECOND_UNION* %8170 to %struct.anon.2*
  %8172 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8171, i32 0, i32 1
  store i8 2, i8* %8172, align 1
  br label %8173

; <label>:8173                                    ; preds = %8149, %8140
  %8174 = load %union.rec*, %union.rec** %y, align 8
  %8175 = load i32, i32* %2, align 4
  %8176 = load i32, i32* %5, align 4
  %8177 = sext i32 %8176 to i64
  %8178 = load %union.rec*, %union.rec** %1, align 8
  %8179 = bitcast %union.rec* %8178 to %struct.word_type*
  %8180 = getelementptr inbounds %struct.word_type, %struct.word_type* %8179, i32 0, i32 3
  %8181 = bitcast %union.THIRD_UNION* %8180 to %struct.anon.6*
  %8182 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %8181, i32 0, i32 0
  %8183 = getelementptr inbounds [2 x i32], [2 x i32]* %8182, i32 0, i64 %8177
  %8184 = load i32, i32* %8183, align 4
  %8185 = load i32, i32* %5, align 4
  %8186 = sext i32 %8185 to i64
  %8187 = load %union.rec*, %union.rec** %1, align 8
  %8188 = bitcast %union.rec* %8187 to %struct.word_type*
  %8189 = getelementptr inbounds %struct.word_type, %struct.word_type* %8188, i32 0, i32 3
  %8190 = bitcast %union.THIRD_UNION* %8189 to %struct.anon.6*
  %8191 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %8190, i32 0, i32 1
  %8192 = getelementptr inbounds [2 x i32], [2 x i32]* %8191, i32 0, i64 %8186
  %8193 = load i32, i32* %8192, align 4
  %8194 = load i32, i32* %5, align 4
  %8195 = load i32, i32* %7, align 4
  %8196 = load i32, i32* %8, align 4
  %8197 = call %union.rec* @FixAndPrintObject(%union.rec* %8174, i32 %8175, i32 %8184, i32 %8193, i32 %8194, i32 0, i32 %8195, i32 %8196, i32* %aback, i32* %afwd)
  store %union.rec* %8197, %union.rec** %y, align 8
  %8198 = load i32, i32* %3, align 4
  %8199 = load i32*, i32** %9, align 8
  store i32 %8198, i32* %8199, align 4
  %8200 = load i32, i32* %4, align 4
  %8201 = load i32*, i32** %10, align 8
  store i32 %8200, i32* %8201, align 4
  br label %8231

; <label>:8202                                    ; preds = %0, %0, %0, %0
  %8203 = load i32, i32* %5, align 4
  %8204 = icmp eq i32 %8203, 0
  br i1 %8204, label %8205, label %8219

; <label>:8205                                    ; preds = %8202
  %8206 = load %union.rec*, %union.rec** %1, align 8
  %8207 = bitcast %union.rec* %8206 to %struct.word_type*
  %8208 = getelementptr inbounds %struct.word_type, %struct.word_type* %8207, i32 0, i32 1
  %8209 = bitcast %union.FIRST_UNION* %8208 to %struct.FILE_POS*
  %8210 = load %union.rec*, %union.rec** %1, align 8
  %8211 = bitcast %union.rec* %8210 to %struct.word_type*
  %8212 = getelementptr inbounds %struct.word_type, %struct.word_type* %8211, i32 0, i32 1
  %8213 = bitcast %union.FIRST_UNION* %8212 to %struct.anon*
  %8214 = getelementptr inbounds %struct.anon, %struct.anon* %8213, i32 0, i32 0
  %8215 = load i8, i8* %8214, align 1
  %8216 = zext i8 %8215 to i32
  %8217 = call i8* @Image(i32 %8216)
  %8218 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 23, i32 8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct.FILE_POS* %8209, i8* %8217)
  br label %8219

; <label>:8219                                    ; preds = %8205, %8202
  br label %8231

; <label>:8220                                    ; preds = %0
  %8221 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %8222 = load %union.rec*, %union.rec** %1, align 8
  %8223 = bitcast %union.rec* %8222 to %struct.word_type*
  %8224 = getelementptr inbounds %struct.word_type, %struct.word_type* %8223, i32 0, i32 1
  %8225 = bitcast %union.FIRST_UNION* %8224 to %struct.anon*
  %8226 = getelementptr inbounds %struct.anon, %struct.anon* %8225, i32 0, i32 0
  %8227 = load i8, i8* %8226, align 1
  %8228 = zext i8 %8227 to i32
  %8229 = call i8* @Image(i32 %8228)
  %8230 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0), i32 0, %struct.FILE_POS* %8221, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), i8* %8229)
  br label %8231

; <label>:8231                                    ; preds = %8220, %8219, %8173, %7756, %5009, %4898, %2990, %2890, %2776, %2610, %2315, %2040, %1820, %1748, %1652, %1465, %1249, %1094, %1012, %925, %768, %669, %602, %343, %19
  %8232 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %8232
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare void @FontPageUsed(%union.rec*) #1

declare i32 @FindShift(%union.rec*, %union.rec*, i32) #1

; Function Attrs: nounwind uwtable
define internal float @ScaleFactor(i32 %avail_size, i32 %inner_size) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %scale_factor = alloca float, align 4
  store i32 %avail_size, i32* %1, align 4
  store i32 %inner_size, i32* %2, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp sle i32 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  br label %18

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp sle i32 %7, 0
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %6
  br label %16

; <label>:10                                      ; preds = %6
  %11 = load i32, i32* %1, align 4
  %12 = sitofp i32 %11 to float
  %13 = load i32, i32* %2, align 4
  %14 = sitofp i32 %13 to float
  %15 = fdiv float %12, %14
  br label %16

; <label>:16                                      ; preds = %10, %9
  %17 = phi float [ 0.000000e+00, %9 ], [ %15, %10 ]
  br label %18

; <label>:18                                      ; preds = %16, %5
  %19 = phi float [ 0.000000e+00, %5 ], [ %17, %16 ]
  store float %19, float* %scale_factor, align 4
  %20 = load float, float* %scale_factor, align 4
  ret float %20
}

declare void @RotateConstraint(%struct.CONSTRAINT*, %union.rec*, i32, %struct.CONSTRAINT*, %struct.CONSTRAINT*, i32) #1

declare i32 @SplitIsDefinite(%union.rec*) #1

; Function Attrs: nounwind uwtable
define internal i32 @FindAdjustIncrement(%union.rec* %x, i32 %frame_size, i32 %dim) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.rec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %prev = alloca %union.rec*, align 8
  %g = alloca %union.rec*, align 8
  %adjustable_gaps = alloca i32, align 4
  %jn = alloca i32, align 4
  %inc = alloca i32, align 4
  %mk = alloca i32, align 4
  %actual_size = alloca i32, align 4
  store %union.rec* %x, %union.rec** %2, align 8
  store i32 %frame_size, i32* %3, align 4
  store i32 %dim, i32* %4, align 4
  store i32 1, i32* %jn, align 4
  %5 = load %union.rec*, %union.rec** %2, align 8
  %6 = bitcast %union.rec* %5 to %struct.word_type*
  %7 = getelementptr inbounds %struct.word_type, %struct.word_type* %6, i32 0, i32 0
  %8 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7, i32 0, i64 0
  %9 = getelementptr inbounds %struct.LIST, %struct.LIST* %8, i32 0, i32 1
  %10 = load %union.rec*, %union.rec** %9, align 8
  store %union.rec* %10, %union.rec** %link, align 8
  br label %11

; <label>:11                                      ; preds = %100, %0
  %12 = load %union.rec*, %union.rec** %link, align 8
  %13 = load %union.rec*, %union.rec** %2, align 8
  %14 = icmp ne %union.rec* %12, %13
  br i1 %14, label %15, label %107

; <label>:15                                      ; preds = %11
  %16 = load %union.rec*, %union.rec** %link, align 8
  %17 = bitcast %union.rec* %16 to %struct.word_type*
  %18 = getelementptr inbounds %struct.word_type, %struct.word_type* %17, i32 0, i32 0
  %19 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %18, i32 0, i64 1
  %20 = getelementptr inbounds %struct.LIST, %struct.LIST* %19, i32 0, i32 0
  %21 = load %union.rec*, %union.rec** %20, align 8
  store %union.rec* %21, %union.rec** %prev, align 8
  br label %22

; <label>:22                                      ; preds = %32, %15
  %23 = load %union.rec*, %union.rec** %prev, align 8
  %24 = bitcast %union.rec* %23 to %struct.word_type*
  %25 = getelementptr inbounds %struct.word_type, %struct.word_type* %24, i32 0, i32 1
  %26 = bitcast %union.FIRST_UNION* %25 to %struct.anon*
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 0
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

; <label>:31                                      ; preds = %22
  br label %32

; <label>:32                                      ; preds = %31
  %33 = load %union.rec*, %union.rec** %prev, align 8
  %34 = bitcast %union.rec* %33 to %struct.word_type*
  %35 = getelementptr inbounds %struct.word_type, %struct.word_type* %34, i32 0, i32 0
  %36 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %35, i32 0, i64 1
  %37 = getelementptr inbounds %struct.LIST, %struct.LIST* %36, i32 0, i32 0
  %38 = load %union.rec*, %union.rec** %37, align 8
  store %union.rec* %38, %union.rec** %prev, align 8
  br label %22

; <label>:39                                      ; preds = %22
  %40 = load %union.rec*, %union.rec** %prev, align 8
  %41 = bitcast %union.rec* %40 to %struct.word_type*
  %42 = getelementptr inbounds %struct.word_type, %struct.word_type* %41, i32 0, i32 1
  %43 = bitcast %union.FIRST_UNION* %42 to %struct.anon*
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 0
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %64

; <label>:48                                      ; preds = %39
  %49 = load i32, i32* %jn, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

; <label>:51                                      ; preds = %48
  %52 = load %union.rec*, %union.rec** %prev, align 8
  %53 = bitcast %union.rec* %52 to %struct.gapobj_type*
  %54 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %53, i32 0, i32 3
  %55 = bitcast %struct.GAP* %54 to i16*
  %56 = load i16, i16* %55, align 4
  %57 = lshr i16 %56, 9
  %58 = and i16 %57, 1
  %59 = zext i16 %58 to i32
  %60 = icmp ne i32 %59, 0
  br label %61

; <label>:61                                      ; preds = %51, %48
  %62 = phi i1 [ false, %48 ], [ %60, %51 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %jn, align 4
  br label %99

; <label>:64                                      ; preds = %39
  %65 = load %union.rec*, %union.rec** %prev, align 8
  %66 = bitcast %union.rec* %65 to %struct.word_type*
  %67 = getelementptr inbounds %struct.word_type, %struct.word_type* %66, i32 0, i32 1
  %68 = bitcast %union.FIRST_UNION* %67 to %struct.anon*
  %69 = getelementptr inbounds %struct.anon, %struct.anon* %68, i32 0, i32 0
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp eq i32 %71, 9
  br i1 %72, label %73, label %77

; <label>:73                                      ; preds = %64
  %74 = load %union.rec*, %union.rec** %prev, align 8
  %75 = call i32 @SplitIsDefinite(%union.rec* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %97, label %98

; <label>:77                                      ; preds = %64
  %78 = load %union.rec*, %union.rec** %prev, align 8
  %79 = bitcast %union.rec* %78 to %struct.word_type*
  %80 = getelementptr inbounds %struct.word_type, %struct.word_type* %79, i32 0, i32 1
  %81 = bitcast %union.FIRST_UNION* %80 to %struct.anon*
  %82 = getelementptr inbounds %struct.anon, %struct.anon* %81, i32 0, i32 0
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp sge i32 %84, 9
  br i1 %85, label %86, label %95

; <label>:86                                      ; preds = %77
  %87 = load %union.rec*, %union.rec** %prev, align 8
  %88 = bitcast %union.rec* %87 to %struct.word_type*
  %89 = getelementptr inbounds %struct.word_type, %struct.word_type* %88, i32 0, i32 1
  %90 = bitcast %union.FIRST_UNION* %89 to %struct.anon*
  %91 = getelementptr inbounds %struct.anon, %struct.anon* %90, i32 0, i32 0
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp sle i32 %93, 99
  br label %95

; <label>:95                                      ; preds = %86, %77
  %96 = phi i1 [ false, %77 ], [ %94, %86 ]
  br i1 %96, label %97, label %98

; <label>:97                                      ; preds = %95, %73
  br label %107

; <label>:98                                      ; preds = %95, %73
  br label %99

; <label>:99                                      ; preds = %98, %61
  br label %100

; <label>:100                                     ; preds = %99
  %101 = load %union.rec*, %union.rec** %link, align 8
  %102 = bitcast %union.rec* %101 to %struct.word_type*
  %103 = getelementptr inbounds %struct.word_type, %struct.word_type* %102, i32 0, i32 0
  %104 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %103, i32 0, i64 0
  %105 = getelementptr inbounds %struct.LIST, %struct.LIST* %104, i32 0, i32 1
  %106 = load %union.rec*, %union.rec** %105, align 8
  store %union.rec* %106, %union.rec** %link, align 8
  br label %11

; <label>:107                                     ; preds = %97, %11
  %108 = load %union.rec*, %union.rec** %link, align 8
  %109 = load %union.rec*, %union.rec** %2, align 8
  %110 = icmp ne %union.rec* %108, %109
  br i1 %110, label %111, label %437

; <label>:111                                     ; preds = %107
  store i32 0, i32* %adjustable_gaps, align 4
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = load %union.rec*, %union.rec** %prev, align 8
  %115 = bitcast %union.rec* %114 to %struct.word_type*
  %116 = getelementptr inbounds %struct.word_type, %struct.word_type* %115, i32 0, i32 3
  %117 = bitcast %union.THIRD_UNION* %116 to %struct.anon.6*
  %118 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %117, i32 0, i32 0
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %118, i32 0, i64 %113
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %mk, align 4
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %121 = load %union.rec*, %union.rec** %link, align 8
  %122 = bitcast %union.rec* %121 to %struct.word_type*
  %123 = getelementptr inbounds %struct.word_type, %struct.word_type* %122, i32 0, i32 0
  %124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %123, i32 0, i64 0
  %125 = getelementptr inbounds %struct.LIST, %struct.LIST* %124, i32 0, i32 1
  %126 = load %union.rec*, %union.rec** %125, align 8
  store %union.rec* %126, %union.rec** %link, align 8
  br label %127

; <label>:127                                     ; preds = %223, %111
  %128 = load %union.rec*, %union.rec** %link, align 8
  %129 = load %union.rec*, %union.rec** %2, align 8
  %130 = icmp ne %union.rec* %128, %129
  br i1 %130, label %131, label %230

; <label>:131                                     ; preds = %127
  %132 = load %union.rec*, %union.rec** %link, align 8
  %133 = bitcast %union.rec* %132 to %struct.word_type*
  %134 = getelementptr inbounds %struct.word_type, %struct.word_type* %133, i32 0, i32 0
  %135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %134, i32 0, i64 1
  %136 = getelementptr inbounds %struct.LIST, %struct.LIST* %135, i32 0, i32 0
  %137 = load %union.rec*, %union.rec** %136, align 8
  store %union.rec* %137, %union.rec** %y, align 8
  br label %138

; <label>:138                                     ; preds = %148, %131
  %139 = load %union.rec*, %union.rec** %y, align 8
  %140 = bitcast %union.rec* %139 to %struct.word_type*
  %141 = getelementptr inbounds %struct.word_type, %struct.word_type* %140, i32 0, i32 1
  %142 = bitcast %union.FIRST_UNION* %141 to %struct.anon*
  %143 = getelementptr inbounds %struct.anon, %struct.anon* %142, i32 0, i32 0
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %155

; <label>:147                                     ; preds = %138
  br label %148

; <label>:148                                     ; preds = %147
  %149 = load %union.rec*, %union.rec** %y, align 8
  %150 = bitcast %union.rec* %149 to %struct.word_type*
  %151 = getelementptr inbounds %struct.word_type, %struct.word_type* %150, i32 0, i32 0
  %152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %151, i32 0, i64 1
  %153 = getelementptr inbounds %struct.LIST, %struct.LIST* %152, i32 0, i32 0
  %154 = load %union.rec*, %union.rec** %153, align 8
  store %union.rec* %154, %union.rec** %y, align 8
  br label %138

; <label>:155                                     ; preds = %138
  %156 = load %union.rec*, %union.rec** %y, align 8
  %157 = bitcast %union.rec* %156 to %struct.word_type*
  %158 = getelementptr inbounds %struct.word_type, %struct.word_type* %157, i32 0, i32 1
  %159 = bitcast %union.FIRST_UNION* %158 to %struct.anon*
  %160 = getelementptr inbounds %struct.anon, %struct.anon* %159, i32 0, i32 0
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %181

; <label>:164                                     ; preds = %155
  %165 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %165, %union.rec** %g, align 8
  %166 = load i32, i32* %jn, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %178

; <label>:168                                     ; preds = %164
  %169 = load %union.rec*, %union.rec** %y, align 8
  %170 = bitcast %union.rec* %169 to %struct.gapobj_type*
  %171 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %170, i32 0, i32 3
  %172 = bitcast %struct.GAP* %171 to i16*
  %173 = load i16, i16* %172, align 4
  %174 = lshr i16 %173, 9
  %175 = and i16 %174, 1
  %176 = zext i16 %175 to i32
  %177 = icmp ne i32 %176, 0
  br label %178

; <label>:178                                     ; preds = %168, %164
  %179 = phi i1 [ false, %164 ], [ %177, %168 ]
  %180 = zext i1 %179 to i32
  store i32 %180, i32* %jn, align 4
  br label %222

; <label>:181                                     ; preds = %155
  %182 = load %union.rec*, %union.rec** %y, align 8
  %183 = bitcast %union.rec* %182 to %struct.word_type*
  %184 = getelementptr inbounds %struct.word_type, %struct.word_type* %183, i32 0, i32 1
  %185 = bitcast %union.FIRST_UNION* %184 to %struct.anon*
  %186 = getelementptr inbounds %struct.anon, %struct.anon* %185, i32 0, i32 0
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = icmp eq i32 %188, 9
  br i1 %189, label %190, label %194

; <label>:190                                     ; preds = %181
  %191 = load %union.rec*, %union.rec** %y, align 8
  %192 = call i32 @SplitIsDefinite(%union.rec* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %214, label %221

; <label>:194                                     ; preds = %181
  %195 = load %union.rec*, %union.rec** %y, align 8
  %196 = bitcast %union.rec* %195 to %struct.word_type*
  %197 = getelementptr inbounds %struct.word_type, %struct.word_type* %196, i32 0, i32 1
  %198 = bitcast %union.FIRST_UNION* %197 to %struct.anon*
  %199 = getelementptr inbounds %struct.anon, %struct.anon* %198, i32 0, i32 0
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i32
  %202 = icmp sge i32 %201, 9
  br i1 %202, label %203, label %212

; <label>:203                                     ; preds = %194
  %204 = load %union.rec*, %union.rec** %y, align 8
  %205 = bitcast %union.rec* %204 to %struct.word_type*
  %206 = getelementptr inbounds %struct.word_type, %struct.word_type* %205, i32 0, i32 1
  %207 = bitcast %union.FIRST_UNION* %206 to %struct.anon*
  %208 = getelementptr inbounds %struct.anon, %struct.anon* %207, i32 0, i32 0
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = icmp sle i32 %210, 99
  br label %212

; <label>:212                                     ; preds = %203, %194
  %213 = phi i1 [ false, %194 ], [ %211, %203 ]
  br i1 %213, label %214, label %221

; <label>:214                                     ; preds = %212, %190
  %215 = load %union.rec*, %union.rec** %g, align 8
  %216 = icmp ne %union.rec* %215, null
  br i1 %216, label %220, label %217

; <label>:217                                     ; preds = %214
  %218 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %219 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %218, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %220

; <label>:220                                     ; preds = %217, %214
  br label %230

; <label>:221                                     ; preds = %212, %190
  br label %222

; <label>:222                                     ; preds = %221, %178
  br label %223

; <label>:223                                     ; preds = %222
  %224 = load %union.rec*, %union.rec** %link, align 8
  %225 = bitcast %union.rec* %224 to %struct.word_type*
  %226 = getelementptr inbounds %struct.word_type, %struct.word_type* %225, i32 0, i32 0
  %227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %226, i32 0, i64 0
  %228 = getelementptr inbounds %struct.LIST, %struct.LIST* %227, i32 0, i32 1
  %229 = load %union.rec*, %union.rec** %228, align 8
  store %union.rec* %229, %union.rec** %link, align 8
  br label %127

; <label>:230                                     ; preds = %220, %127
  br label %231

; <label>:231                                     ; preds = %413, %230
  %232 = load %union.rec*, %union.rec** %link, align 8
  %233 = load %union.rec*, %union.rec** %2, align 8
  %234 = icmp ne %union.rec* %232, %233
  br i1 %234, label %235, label %414

; <label>:235                                     ; preds = %231
  %236 = load %union.rec*, %union.rec** %g, align 8
  %237 = bitcast %union.rec* %236 to %struct.gapobj_type*
  %238 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %237, i32 0, i32 3
  %239 = bitcast %struct.GAP* %238 to i16*
  %240 = load i16, i16* %239, align 4
  %241 = lshr i16 %240, 13
  %242 = zext i16 %241 to i32
  %243 = icmp eq i32 %242, 6
  br i1 %243, label %264, label %244

; <label>:244                                     ; preds = %235
  %245 = load %union.rec*, %union.rec** %g, align 8
  %246 = bitcast %union.rec* %245 to %struct.gapobj_type*
  %247 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %246, i32 0, i32 3
  %248 = bitcast %struct.GAP* %247 to i16*
  %249 = load i16, i16* %248, align 4
  %250 = lshr i16 %249, 10
  %251 = and i16 %250, 7
  %252 = zext i16 %251 to i32
  %253 = icmp eq i32 %252, 3
  br i1 %253, label %264, label %254

; <label>:254                                     ; preds = %244
  %255 = load %union.rec*, %union.rec** %g, align 8
  %256 = bitcast %union.rec* %255 to %struct.gapobj_type*
  %257 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %256, i32 0, i32 3
  %258 = bitcast %struct.GAP* %257 to i16*
  %259 = load i16, i16* %258, align 4
  %260 = lshr i16 %259, 10
  %261 = and i16 %260, 7
  %262 = zext i16 %261 to i32
  %263 = icmp eq i32 %262, 2
  br i1 %263, label %264, label %265

; <label>:264                                     ; preds = %254, %244, %235
  store i32 0, i32* %1
  br label %440

; <label>:265                                     ; preds = %254
  %266 = load i32, i32* %4, align 4
  %267 = sext i32 %266 to i64
  %268 = load %union.rec*, %union.rec** %prev, align 8
  %269 = bitcast %union.rec* %268 to %struct.word_type*
  %270 = getelementptr inbounds %struct.word_type, %struct.word_type* %269, i32 0, i32 3
  %271 = bitcast %union.THIRD_UNION* %270 to %struct.anon.6*
  %272 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %271, i32 0, i32 1
  %273 = getelementptr inbounds [2 x i32], [2 x i32]* %272, i32 0, i64 %267
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %4, align 4
  %276 = sext i32 %275 to i64
  %277 = load %union.rec*, %union.rec** %y, align 8
  %278 = bitcast %union.rec* %277 to %struct.word_type*
  %279 = getelementptr inbounds %struct.word_type, %struct.word_type* %278, i32 0, i32 3
  %280 = bitcast %union.THIRD_UNION* %279 to %struct.anon.6*
  %281 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %280, i32 0, i32 0
  %282 = getelementptr inbounds [2 x i32], [2 x i32]* %281, i32 0, i64 %276
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %4, align 4
  %285 = sext i32 %284 to i64
  %286 = load %union.rec*, %union.rec** %y, align 8
  %287 = bitcast %union.rec* %286 to %struct.word_type*
  %288 = getelementptr inbounds %struct.word_type, %struct.word_type* %287, i32 0, i32 3
  %289 = bitcast %union.THIRD_UNION* %288 to %struct.anon.6*
  %290 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %289, i32 0, i32 1
  %291 = getelementptr inbounds [2 x i32], [2 x i32]* %290, i32 0, i64 %285
  %292 = load i32, i32* %291, align 4
  %293 = load %union.rec*, %union.rec** %g, align 8
  %294 = bitcast %union.rec* %293 to %struct.gapobj_type*
  %295 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %294, i32 0, i32 3
  %296 = load i32, i32* %3, align 4
  %297 = load i32, i32* %mk, align 4
  %298 = call i32 @ActualGap(i32 %274, i32 %283, i32 %292, %struct.GAP* %295, i32 %296, i32 %297)
  %299 = load i32, i32* %mk, align 4
  %300 = add nsw i32 %299, %298
  store i32 %300, i32* %mk, align 4
  %301 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %301, %union.rec** %prev, align 8
  %302 = load i32, i32* %adjustable_gaps, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %adjustable_gaps, align 4
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %304 = load %union.rec*, %union.rec** %link, align 8
  %305 = bitcast %union.rec* %304 to %struct.word_type*
  %306 = getelementptr inbounds %struct.word_type, %struct.word_type* %305, i32 0, i32 0
  %307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %306, i32 0, i64 0
  %308 = getelementptr inbounds %struct.LIST, %struct.LIST* %307, i32 0, i32 1
  %309 = load %union.rec*, %union.rec** %308, align 8
  store %union.rec* %309, %union.rec** %link, align 8
  br label %310

; <label>:310                                     ; preds = %406, %265
  %311 = load %union.rec*, %union.rec** %link, align 8
  %312 = load %union.rec*, %union.rec** %2, align 8
  %313 = icmp ne %union.rec* %311, %312
  br i1 %313, label %314, label %413

; <label>:314                                     ; preds = %310
  %315 = load %union.rec*, %union.rec** %link, align 8
  %316 = bitcast %union.rec* %315 to %struct.word_type*
  %317 = getelementptr inbounds %struct.word_type, %struct.word_type* %316, i32 0, i32 0
  %318 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %317, i32 0, i64 1
  %319 = getelementptr inbounds %struct.LIST, %struct.LIST* %318, i32 0, i32 0
  %320 = load %union.rec*, %union.rec** %319, align 8
  store %union.rec* %320, %union.rec** %y, align 8
  br label %321

; <label>:321                                     ; preds = %331, %314
  %322 = load %union.rec*, %union.rec** %y, align 8
  %323 = bitcast %union.rec* %322 to %struct.word_type*
  %324 = getelementptr inbounds %struct.word_type, %struct.word_type* %323, i32 0, i32 1
  %325 = bitcast %union.FIRST_UNION* %324 to %struct.anon*
  %326 = getelementptr inbounds %struct.anon, %struct.anon* %325, i32 0, i32 0
  %327 = load i8, i8* %326, align 1
  %328 = zext i8 %327 to i32
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %338

; <label>:330                                     ; preds = %321
  br label %331

; <label>:331                                     ; preds = %330
  %332 = load %union.rec*, %union.rec** %y, align 8
  %333 = bitcast %union.rec* %332 to %struct.word_type*
  %334 = getelementptr inbounds %struct.word_type, %struct.word_type* %333, i32 0, i32 0
  %335 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %334, i32 0, i64 1
  %336 = getelementptr inbounds %struct.LIST, %struct.LIST* %335, i32 0, i32 0
  %337 = load %union.rec*, %union.rec** %336, align 8
  store %union.rec* %337, %union.rec** %y, align 8
  br label %321

; <label>:338                                     ; preds = %321
  %339 = load %union.rec*, %union.rec** %y, align 8
  %340 = bitcast %union.rec* %339 to %struct.word_type*
  %341 = getelementptr inbounds %struct.word_type, %struct.word_type* %340, i32 0, i32 1
  %342 = bitcast %union.FIRST_UNION* %341 to %struct.anon*
  %343 = getelementptr inbounds %struct.anon, %struct.anon* %342, i32 0, i32 0
  %344 = load i8, i8* %343, align 1
  %345 = zext i8 %344 to i32
  %346 = icmp eq i32 %345, 1
  br i1 %346, label %347, label %364

; <label>:347                                     ; preds = %338
  %348 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %348, %union.rec** %g, align 8
  %349 = load i32, i32* %jn, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %361

; <label>:351                                     ; preds = %347
  %352 = load %union.rec*, %union.rec** %y, align 8
  %353 = bitcast %union.rec* %352 to %struct.gapobj_type*
  %354 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %353, i32 0, i32 3
  %355 = bitcast %struct.GAP* %354 to i16*
  %356 = load i16, i16* %355, align 4
  %357 = lshr i16 %356, 9
  %358 = and i16 %357, 1
  %359 = zext i16 %358 to i32
  %360 = icmp ne i32 %359, 0
  br label %361

; <label>:361                                     ; preds = %351, %347
  %362 = phi i1 [ false, %347 ], [ %360, %351 ]
  %363 = zext i1 %362 to i32
  store i32 %363, i32* %jn, align 4
  br label %405

; <label>:364                                     ; preds = %338
  %365 = load %union.rec*, %union.rec** %y, align 8
  %366 = bitcast %union.rec* %365 to %struct.word_type*
  %367 = getelementptr inbounds %struct.word_type, %struct.word_type* %366, i32 0, i32 1
  %368 = bitcast %union.FIRST_UNION* %367 to %struct.anon*
  %369 = getelementptr inbounds %struct.anon, %struct.anon* %368, i32 0, i32 0
  %370 = load i8, i8* %369, align 1
  %371 = zext i8 %370 to i32
  %372 = icmp eq i32 %371, 9
  br i1 %372, label %373, label %377

; <label>:373                                     ; preds = %364
  %374 = load %union.rec*, %union.rec** %y, align 8
  %375 = call i32 @SplitIsDefinite(%union.rec* %374)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %397, label %404

; <label>:377                                     ; preds = %364
  %378 = load %union.rec*, %union.rec** %y, align 8
  %379 = bitcast %union.rec* %378 to %struct.word_type*
  %380 = getelementptr inbounds %struct.word_type, %struct.word_type* %379, i32 0, i32 1
  %381 = bitcast %union.FIRST_UNION* %380 to %struct.anon*
  %382 = getelementptr inbounds %struct.anon, %struct.anon* %381, i32 0, i32 0
  %383 = load i8, i8* %382, align 1
  %384 = zext i8 %383 to i32
  %385 = icmp sge i32 %384, 9
  br i1 %385, label %386, label %395

; <label>:386                                     ; preds = %377
  %387 = load %union.rec*, %union.rec** %y, align 8
  %388 = bitcast %union.rec* %387 to %struct.word_type*
  %389 = getelementptr inbounds %struct.word_type, %struct.word_type* %388, i32 0, i32 1
  %390 = bitcast %union.FIRST_UNION* %389 to %struct.anon*
  %391 = getelementptr inbounds %struct.anon, %struct.anon* %390, i32 0, i32 0
  %392 = load i8, i8* %391, align 1
  %393 = zext i8 %392 to i32
  %394 = icmp sle i32 %393, 99
  br label %395

; <label>:395                                     ; preds = %386, %377
  %396 = phi i1 [ false, %377 ], [ %394, %386 ]
  br i1 %396, label %397, label %404

; <label>:397                                     ; preds = %395, %373
  %398 = load %union.rec*, %union.rec** %g, align 8
  %399 = icmp ne %union.rec* %398, null
  br i1 %399, label %403, label %400

; <label>:400                                     ; preds = %397
  %401 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %402 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %401, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %403

; <label>:403                                     ; preds = %400, %397
  br label %413

; <label>:404                                     ; preds = %395, %373
  br label %405

; <label>:405                                     ; preds = %404, %361
  br label %406

; <label>:406                                     ; preds = %405
  %407 = load %union.rec*, %union.rec** %link, align 8
  %408 = bitcast %union.rec* %407 to %struct.word_type*
  %409 = getelementptr inbounds %struct.word_type, %struct.word_type* %408, i32 0, i32 0
  %410 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %409, i32 0, i64 0
  %411 = getelementptr inbounds %struct.LIST, %struct.LIST* %410, i32 0, i32 1
  %412 = load %union.rec*, %union.rec** %411, align 8
  store %union.rec* %412, %union.rec** %link, align 8
  br label %310

; <label>:413                                     ; preds = %403, %310
  br label %231

; <label>:414                                     ; preds = %231
  %415 = load i32, i32* %mk, align 4
  %416 = load i32, i32* %4, align 4
  %417 = sext i32 %416 to i64
  %418 = load %union.rec*, %union.rec** %prev, align 8
  %419 = bitcast %union.rec* %418 to %struct.word_type*
  %420 = getelementptr inbounds %struct.word_type, %struct.word_type* %419, i32 0, i32 3
  %421 = bitcast %union.THIRD_UNION* %420 to %struct.anon.6*
  %422 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %421, i32 0, i32 1
  %423 = getelementptr inbounds [2 x i32], [2 x i32]* %422, i32 0, i64 %417
  %424 = load i32, i32* %423, align 4
  %425 = add nsw i32 %415, %424
  store i32 %425, i32* %actual_size, align 4
  %426 = load i32, i32* %adjustable_gaps, align 4
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %429

; <label>:428                                     ; preds = %414
  br label %435

; <label>:429                                     ; preds = %414
  %430 = load i32, i32* %3, align 4
  %431 = load i32, i32* %actual_size, align 4
  %432 = sub nsw i32 %430, %431
  %433 = load i32, i32* %adjustable_gaps, align 4
  %434 = sdiv i32 %432, %433
  br label %435

; <label>:435                                     ; preds = %429, %428
  %436 = phi i32 [ 0, %428 ], [ %434, %429 ]
  store i32 %436, i32* %inc, align 4
  br label %438

; <label>:437                                     ; preds = %107
  store i32 0, i32* %inc, align 4
  br label %438

; <label>:438                                     ; preds = %437, %435
  %439 = load i32, i32* %inc, align 4
  store i32 %439, i32* %1
  br label %440

; <label>:440                                     ; preds = %438, %264
  %441 = load i32, i32* %1
  ret i32 %441
}

declare i32 @ActualGap(i32, i32, i32, %struct.GAP*, i32, i32) #1

declare i32 @InsertScale(%union.rec*, %struct.CONSTRAINT*) #1

declare i8* @EchoLength(i32) #1

declare i32 @DisposeObject(%union.rec*) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare i8* @Image(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
