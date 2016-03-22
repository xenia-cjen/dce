; ModuleID = 'z14.c'
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
%struct.INTERVAL = type { %union.rec*, %union.rec*, %union.rec*, i32, i32, i32, i8, i8, i32, i32 }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.anon.11 = type { i8, [3 x i8] }
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.anon.0 = type { i8, i8, i8 }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }
%struct.anon.2 = type { i8, i8, i16 }
%struct.anon.9 = type { i8, [3 x i8] }

@FillObject.hyph_word = internal global %union.rec* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"FillObject: type(x) != ACAT!\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"FillObject: initial size!\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"paragraph deleted (assigned width %s is too narrow)\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@zz_hold = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"1rt\00", align 1
@xx_link = external global %union.rec*, align 8
@.str.7 = private unnamed_addr constant [43 x i8] c"FillObject/extend_unbreakable:  link == x!\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"NextDefiniteWithGap: g == nilobj!\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"hyphen or nohyphen option missing\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"MoveRightToGap: newg!\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"SIB: glink!\00", align 1
@BackEnd = external global %struct.back_end_rec*, align 8
@.str.13 = private unnamed_addr constant [33 x i8] c"SetIntervalBadness: badness < 0!\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"IntervalShiftRightEnd: AT_END!\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"IntervalShiftRightEnd: type(g)!\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"IntervalShiftRightEnd: rlink == x!\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"IntervalShiftLeftEnd: AT_END!\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"IntervalShiftLeftEnd: llink == x!\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"IntervalShiftLeftEnd: tab_count <= 0!\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"FillObject: IntervalClass(I)\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"TransferLinks: start_link!\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"almost empty paragraph!\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"FillObject: last word!\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"FillObject: last gap_obj!\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"FillObject: type(gp) != GAP_OBJ (a)!\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"FillObject: type(gp) != GAP_OBJ (b)!\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"FillObject: empty paragraph!\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"FillObject: last line is empty!\00", align 1

; Function Attrs: nounwind uwtable
define %union.rec* @FillObject(%union.rec* %x, %struct.CONSTRAINT* %c, %union.rec* %multi, i32 %can_hyphenate, i32 %allow_shrink, i32 %extend_unbreakable, i32* %hyph_used) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %3 = alloca %struct.CONSTRAINT*, align 8
  %4 = alloca %union.rec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %I = alloca %struct.INTERVAL, align 8
  %BestI = alloca %struct.INTERVAL, align 8
  %res = alloca %union.rec*, align 8
  %gp = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %ylink = alloca %union.rec*, align 8
  %prev = alloca %union.rec*, align 8
  %next = alloca %union.rec*, align 8
  %max_width = alloca i32, align 4
  %etc_width = alloca i32, align 4
  %outdent_margin = alloca i32, align 4
  %f = alloca i32, align 4
  %jn = alloca i32, align 4
  %typ = alloca i32, align 4
  %hyph_allowed = alloca i32, align 4
  %f1 = alloca i32, align 4
  %max_f = alloca i32, align 4
  %g = alloca %union.rec*, align 8
  %rlink = alloca %union.rec*, align 8
  %right = alloca %union.rec*, align 8
  %jn2 = alloca i32, align 4
  %newg = alloca %union.rec*, align 8
  %foll = alloca %union.rec*, align 8
  %tmp3 = alloca %union.rec*, align 8
  %jn4 = alloca i32, align 4
  %unbreakable_at_right = alloca i32, align 4
  %g5 = alloca %union.rec*, align 8
  %badness = alloca i32, align 4
  %col_width = alloca i32, align 4
  %glink = alloca %union.rec*, align 8
  %rlink6 = alloca %union.rec*, align 8
  %g7 = alloca %union.rec*, align 8
  %right8 = alloca %union.rec*, align 8
  %newg9 = alloca %union.rec*, align 8
  %foll10 = alloca %union.rec*, align 8
  %tmp11 = alloca %union.rec*, align 8
  %jn12 = alloca i32, align 4
  %unbreakable_at_right13 = alloca i32, align 4
  %g14 = alloca %union.rec*, align 8
  %badness15 = alloca i32, align 4
  %col_width16 = alloca i32, align 4
  %glink17 = alloca %union.rec*, align 8
  %llink = alloca %union.rec*, align 8
  %left = alloca %union.rec*, align 8
  %lgap = alloca %union.rec*, align 8
  %y18 = alloca %union.rec*, align 8
  %jn19 = alloca i32, align 4
  %tlink = alloca %union.rec*, align 8
  %g20 = alloca %union.rec*, align 8
  %badness21 = alloca i32, align 4
  %col_width22 = alloca i32, align 4
  %glink23 = alloca %union.rec*, align 8
  %lgap24 = alloca %union.rec*, align 8
  %llink25 = alloca %union.rec*, align 8
  %t1 = alloca %union.rec*, align 8
  %t2 = alloca %union.rec*, align 8
  %z26 = alloca %union.rec*, align 8
  %xxstart = alloca %union.rec*, align 8
  %xxstop = alloca %union.rec*, align 8
  %xxdest = alloca %union.rec*, align 8
  %z27 = alloca %union.rec*, align 8
  %under = alloca i32, align 4
  store %union.rec* %x, %union.rec** %2, align 8
  store %struct.CONSTRAINT* %c, %struct.CONSTRAINT** %3, align 8
  store %union.rec* %multi, %union.rec** %4, align 8
  store i32 %can_hyphenate, i32* %5, align 4
  store i32 %allow_shrink, i32* %6, align 4
  store i32 %extend_unbreakable, i32* %7, align 4
  store i32* %hyph_used, i32** %8, align 8
  %9 = load %union.rec*, %union.rec** %2, align 8
  %10 = bitcast %union.rec* %9 to %struct.word_type*
  %11 = getelementptr inbounds %struct.word_type, %struct.word_type* %10, i32 0, i32 1
  %12 = bitcast %union.FIRST_UNION* %11 to %struct.anon*
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, 17
  br i1 %16, label %20, label %17

; <label>:17                                      ; preds = %0
  %18 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %19 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0))
  br label %20

; <label>:20                                      ; preds = %17, %0
  %21 = load i32*, i32** %8, align 8
  store i32 0, i32* %21, align 4
  %22 = load %union.rec*, %union.rec** %4, align 8
  %23 = icmp eq %union.rec* %22, null
  br i1 %23, label %24, label %347

; <label>:24                                      ; preds = %20
  %25 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %26 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %29 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %36

; <label>:32                                      ; preds = %24
  %33 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %34 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  br label %40

; <label>:36                                      ; preds = %24
  %37 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %38 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  br label %40

; <label>:40                                      ; preds = %36, %32
  %41 = phi i32 [ %35, %32 ], [ %39, %36 ]
  store i32 %41, i32* %max_width, align 4
  %42 = load %union.rec*, %union.rec** %2, align 8
  %43 = bitcast %union.rec* %42 to %struct.closure_type*
  %44 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %43, i32 0, i32 4
  %45 = bitcast %union.FOURTH_UNION* %44 to %struct.STYLE*
  %46 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %45, i32 0, i32 1
  %47 = bitcast %union.anon.10* %46 to %struct.anon.11*
  %48 = bitcast %struct.anon.11* %47 to i8*
  %49 = load i8, i8* %48, align 4
  %50 = lshr i8 %49, 4
  %51 = and i8 %50, 7
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %67, label %54

; <label>:54                                      ; preds = %40
  %55 = load %union.rec*, %union.rec** %2, align 8
  %56 = bitcast %union.rec* %55 to %struct.closure_type*
  %57 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %56, i32 0, i32 4
  %58 = bitcast %union.FOURTH_UNION* %57 to %struct.STYLE*
  %59 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %58, i32 0, i32 1
  %60 = bitcast %union.anon.10* %59 to %struct.anon.11*
  %61 = bitcast %struct.anon.11* %60 to i8*
  %62 = load i8, i8* %61, align 4
  %63 = lshr i8 %62, 4
  %64 = and i8 %63, 7
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %67, label %81

; <label>:67                                      ; preds = %54, %40
  %68 = load %union.rec*, %union.rec** %2, align 8
  %69 = bitcast %union.rec* %68 to %struct.closure_type*
  %70 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %69, i32 0, i32 4
  %71 = bitcast %union.FOURTH_UNION* %70 to %struct.STYLE*
  %72 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 4095
  %75 = load %union.rec*, %union.rec** %2, align 8
  %76 = call i32 @FontSize(i32 %74, %union.rec* %75)
  %77 = mul nsw i32 2, %76
  store i32 %77, i32* %outdent_margin, align 4
  %78 = load i32, i32* %max_width, align 4
  %79 = load i32, i32* %outdent_margin, align 4
  %80 = sub nsw i32 %78, %79
  store i32 %80, i32* %etc_width, align 4
  br label %83

; <label>:81                                      ; preds = %54
  %82 = load i32, i32* %max_width, align 4
  store i32 %82, i32* %etc_width, align 4
  br label %83

; <label>:83                                      ; preds = %81, %67
  %84 = load %union.rec*, %union.rec** %2, align 8
  %85 = bitcast %union.rec* %84 to %struct.word_type*
  %86 = getelementptr inbounds %struct.word_type, %struct.word_type* %85, i32 0, i32 3
  %87 = bitcast %union.THIRD_UNION* %86 to %struct.anon.6*
  %88 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %87, i32 0, i32 0
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %88, i32 0, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load %union.rec*, %union.rec** %2, align 8
  %92 = bitcast %union.rec* %91 to %struct.word_type*
  %93 = getelementptr inbounds %struct.word_type, %struct.word_type* %92, i32 0, i32 3
  %94 = bitcast %union.THIRD_UNION* %93 to %struct.anon.6*
  %95 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %94, i32 0, i32 1
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %95, i32 0, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %90, %97
  %99 = load i32, i32* %max_width, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %104, label %101

; <label>:101                                     ; preds = %83
  %102 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %103 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %102, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %104

; <label>:104                                     ; preds = %101, %83
  %105 = load i32, i32* %max_width, align 4
  %106 = load %union.rec*, %union.rec** %2, align 8
  %107 = bitcast %union.rec* %106 to %struct.closure_type*
  %108 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %107, i32 0, i32 4
  %109 = bitcast %union.FOURTH_UNION* %108 to %struct.STYLE*
  %110 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 4095
  %113 = load %union.rec*, %union.rec** %2, align 8
  %114 = call i32 @FontSize(i32 %112, %union.rec* %113)
  %115 = mul nsw i32 2, %114
  %116 = icmp sle i32 %105, %115
  br i1 %116, label %117, label %346

; <label>:117                                     ; preds = %104
  %118 = load %union.rec*, %union.rec** %2, align 8
  %119 = bitcast %union.rec* %118 to %struct.word_type*
  %120 = getelementptr inbounds %struct.word_type, %struct.word_type* %119, i32 0, i32 1
  %121 = bitcast %union.FIRST_UNION* %120 to %struct.FILE_POS*
  %122 = load i32, i32* %max_width, align 4
  %123 = call i8* @EchoLength(i32 %122)
  %124 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 14, i32 6, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i32 0, i32 0), i32 2, %struct.FILE_POS* %121, i8* %123)
  %125 = load %union.rec*, %union.rec** %2, align 8
  %126 = bitcast %union.rec* %125 to %struct.word_type*
  %127 = getelementptr inbounds %struct.word_type, %struct.word_type* %126, i32 0, i32 1
  %128 = bitcast %union.FIRST_UNION* %127 to %struct.FILE_POS*
  %129 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %struct.FILE_POS* %128)
  store %union.rec* %129, %union.rec** %res, align 8
  %130 = load %union.rec*, %union.rec** %2, align 8
  %131 = bitcast %union.rec* %130 to %struct.closure_type*
  %132 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %131, i32 0, i32 4
  %133 = bitcast %union.FOURTH_UNION* %132 to %struct.STYLE*
  %134 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 4095
  %137 = load %union.rec*, %union.rec** %res, align 8
  %138 = bitcast %union.rec* %137 to %struct.word_type*
  %139 = getelementptr inbounds %struct.word_type, %struct.word_type* %138, i32 0, i32 2
  %140 = bitcast %union.SECOND_UNION* %139 to %struct.anon.1*
  %141 = bitcast %struct.anon.1* %140 to i32*
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %136, 4095
  %144 = and i32 %142, -4096
  %145 = or i32 %144, %143
  store i32 %145, i32* %141, align 4
  %146 = load %union.rec*, %union.rec** %2, align 8
  %147 = bitcast %union.rec* %146 to %struct.closure_type*
  %148 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %147, i32 0, i32 4
  %149 = bitcast %union.FOURTH_UNION* %148 to %struct.STYLE*
  %150 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = lshr i32 %151, 12
  %153 = and i32 %152, 1023
  %154 = load %union.rec*, %union.rec** %res, align 8
  %155 = bitcast %union.rec* %154 to %struct.word_type*
  %156 = getelementptr inbounds %struct.word_type, %struct.word_type* %155, i32 0, i32 2
  %157 = bitcast %union.SECOND_UNION* %156 to %struct.anon.1*
  %158 = bitcast %struct.anon.1* %157 to i32*
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %153, 1023
  %161 = shl i32 %160, 12
  %162 = and i32 %159, -4190209
  %163 = or i32 %162, %161
  store i32 %163, i32* %158, align 4
  %164 = load %union.rec*, %union.rec** %2, align 8
  %165 = bitcast %union.rec* %164 to %struct.closure_type*
  %166 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %165, i32 0, i32 4
  %167 = bitcast %union.FOURTH_UNION* %166 to %struct.STYLE*
  %168 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = lshr i32 %169, 22
  %171 = and i32 %170, 3
  %172 = load %union.rec*, %union.rec** %res, align 8
  %173 = bitcast %union.rec* %172 to %struct.word_type*
  %174 = getelementptr inbounds %struct.word_type, %struct.word_type* %173, i32 0, i32 2
  %175 = bitcast %union.SECOND_UNION* %174 to %struct.anon.1*
  %176 = bitcast %struct.anon.1* %175 to i32*
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %171, 1
  %179 = shl i32 %178, 22
  %180 = and i32 %177, -4194305
  %181 = or i32 %180, %179
  store i32 %181, i32* %176, align 4
  %182 = load %union.rec*, %union.rec** %2, align 8
  %183 = bitcast %union.rec* %182 to %struct.closure_type*
  %184 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %183, i32 0, i32 4
  %185 = bitcast %union.FOURTH_UNION* %184 to %struct.STYLE*
  %186 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = lshr i32 %187, 24
  %189 = and i32 %188, 63
  %190 = load %union.rec*, %union.rec** %res, align 8
  %191 = bitcast %union.rec* %190 to %struct.word_type*
  %192 = getelementptr inbounds %struct.word_type, %struct.word_type* %191, i32 0, i32 2
  %193 = bitcast %union.SECOND_UNION* %192 to %struct.anon.1*
  %194 = bitcast %struct.anon.1* %193 to i32*
  %195 = load i32, i32* %194, align 4
  %196 = and i32 %189, 63
  %197 = shl i32 %196, 23
  %198 = and i32 %195, -528482305
  %199 = or i32 %198, %197
  store i32 %199, i32* %194, align 4
  %200 = load %union.rec*, %union.rec** %2, align 8
  %201 = bitcast %union.rec* %200 to %struct.closure_type*
  %202 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %201, i32 0, i32 4
  %203 = bitcast %union.FOURTH_UNION* %202 to %struct.STYLE*
  %204 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %203, i32 0, i32 1
  %205 = bitcast %union.anon.10* %204 to %struct.anon.11*
  %206 = bitcast %struct.anon.11* %205 to i8*
  %207 = load i8, i8* %206, align 4
  %208 = and i8 %207, 3
  %209 = zext i8 %208 to i32
  %210 = icmp eq i32 %209, 2
  %211 = zext i1 %210 to i32
  %212 = load %union.rec*, %union.rec** %res, align 8
  %213 = bitcast %union.rec* %212 to %struct.word_type*
  %214 = getelementptr inbounds %struct.word_type, %struct.word_type* %213, i32 0, i32 2
  %215 = bitcast %union.SECOND_UNION* %214 to %struct.anon.1*
  %216 = bitcast %struct.anon.1* %215 to i32*
  %217 = load i32, i32* %216, align 4
  %218 = and i32 %211, 1
  %219 = shl i32 %218, 31
  %220 = and i32 %217, 2147483647
  %221 = or i32 %220, %219
  store i32 %221, i32* %216, align 4
  %222 = load %union.rec*, %union.rec** %res, align 8
  %223 = bitcast %union.rec* %222 to %struct.word_type*
  %224 = getelementptr inbounds %struct.word_type, %struct.word_type* %223, i32 0, i32 3
  %225 = bitcast %union.THIRD_UNION* %224 to %struct.anon.6*
  %226 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %225, i32 0, i32 1
  %227 = getelementptr inbounds [2 x i32], [2 x i32]* %226, i32 0, i64 0
  store i32 0, i32* %227, align 4
  %228 = load %union.rec*, %union.rec** %res, align 8
  %229 = bitcast %union.rec* %228 to %struct.word_type*
  %230 = getelementptr inbounds %struct.word_type, %struct.word_type* %229, i32 0, i32 3
  %231 = bitcast %union.THIRD_UNION* %230 to %struct.anon.6*
  %232 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %231, i32 0, i32 0
  %233 = getelementptr inbounds [2 x i32], [2 x i32]* %232, i32 0, i64 0
  store i32 0, i32* %233, align 4
  %234 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %234, %union.rec** @zz_hold, align 8
  %235 = load %union.rec*, %union.rec** @zz_hold, align 8
  %236 = bitcast %union.rec* %235 to %struct.word_type*
  %237 = getelementptr inbounds %struct.word_type, %struct.word_type* %236, i32 0, i32 0
  %238 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %237, i32 0, i64 1
  %239 = getelementptr inbounds %struct.LIST, %struct.LIST* %238, i32 0, i32 1
  %240 = load %union.rec*, %union.rec** %239, align 8
  %241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %242 = icmp eq %union.rec* %240, %241
  br i1 %242, label %243, label %244

; <label>:243                                     ; preds = %117
  br label %285

; <label>:244                                     ; preds = %117
  %245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %246 = bitcast %union.rec* %245 to %struct.word_type*
  %247 = getelementptr inbounds %struct.word_type, %struct.word_type* %246, i32 0, i32 0
  %248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %247, i32 0, i64 1
  %249 = getelementptr inbounds %struct.LIST, %struct.LIST* %248, i32 0, i32 1
  %250 = load %union.rec*, %union.rec** %249, align 8
  store %union.rec* %250, %union.rec** @zz_res, align 8
  %251 = load %union.rec*, %union.rec** @zz_hold, align 8
  %252 = bitcast %union.rec* %251 to %struct.word_type*
  %253 = getelementptr inbounds %struct.word_type, %struct.word_type* %252, i32 0, i32 0
  %254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %253, i32 0, i64 1
  %255 = getelementptr inbounds %struct.LIST, %struct.LIST* %254, i32 0, i32 0
  %256 = load %union.rec*, %union.rec** %255, align 8
  %257 = load %union.rec*, %union.rec** @zz_res, align 8
  %258 = bitcast %union.rec* %257 to %struct.word_type*
  %259 = getelementptr inbounds %struct.word_type, %struct.word_type* %258, i32 0, i32 0
  %260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %259, i32 0, i64 1
  %261 = getelementptr inbounds %struct.LIST, %struct.LIST* %260, i32 0, i32 0
  store %union.rec* %256, %union.rec** %261, align 8
  %262 = load %union.rec*, %union.rec** @zz_res, align 8
  %263 = load %union.rec*, %union.rec** @zz_hold, align 8
  %264 = bitcast %union.rec* %263 to %struct.word_type*
  %265 = getelementptr inbounds %struct.word_type, %struct.word_type* %264, i32 0, i32 0
  %266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %265, i32 0, i64 1
  %267 = getelementptr inbounds %struct.LIST, %struct.LIST* %266, i32 0, i32 0
  %268 = load %union.rec*, %union.rec** %267, align 8
  %269 = bitcast %union.rec* %268 to %struct.word_type*
  %270 = getelementptr inbounds %struct.word_type, %struct.word_type* %269, i32 0, i32 0
  %271 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %270, i32 0, i64 1
  %272 = getelementptr inbounds %struct.LIST, %struct.LIST* %271, i32 0, i32 1
  store %union.rec* %262, %union.rec** %272, align 8
  %273 = load %union.rec*, %union.rec** @zz_hold, align 8
  %274 = load %union.rec*, %union.rec** @zz_hold, align 8
  %275 = bitcast %union.rec* %274 to %struct.word_type*
  %276 = getelementptr inbounds %struct.word_type, %struct.word_type* %275, i32 0, i32 0
  %277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %276, i32 0, i64 1
  %278 = getelementptr inbounds %struct.LIST, %struct.LIST* %277, i32 0, i32 1
  store %union.rec* %273, %union.rec** %278, align 8
  %279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %280 = bitcast %union.rec* %279 to %struct.word_type*
  %281 = getelementptr inbounds %struct.word_type, %struct.word_type* %280, i32 0, i32 0
  %282 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %281, i32 0, i64 1
  %283 = getelementptr inbounds %struct.LIST, %struct.LIST* %282, i32 0, i32 0
  store %union.rec* %273, %union.rec** %283, align 8
  %284 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %285

; <label>:285                                     ; preds = %244, %243
  %286 = phi %union.rec* [ null, %243 ], [ %284, %244 ]
  store %union.rec* %286, %union.rec** @xx_tmp, align 8
  %287 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %287, %union.rec** @zz_res, align 8
  %288 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %288, %union.rec** @zz_hold, align 8
  %289 = load %union.rec*, %union.rec** @zz_hold, align 8
  %290 = icmp eq %union.rec* %289, null
  br i1 %290, label %291, label %293

; <label>:291                                     ; preds = %285
  %292 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %341

; <label>:293                                     ; preds = %285
  %294 = load %union.rec*, %union.rec** @zz_res, align 8
  %295 = icmp eq %union.rec* %294, null
  br i1 %295, label %296, label %298

; <label>:296                                     ; preds = %293
  %297 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %339

; <label>:298                                     ; preds = %293
  %299 = load %union.rec*, %union.rec** @zz_hold, align 8
  %300 = bitcast %union.rec* %299 to %struct.word_type*
  %301 = getelementptr inbounds %struct.word_type, %struct.word_type* %300, i32 0, i32 0
  %302 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %301, i32 0, i64 1
  %303 = getelementptr inbounds %struct.LIST, %struct.LIST* %302, i32 0, i32 0
  %304 = load %union.rec*, %union.rec** %303, align 8
  store %union.rec* %304, %union.rec** @zz_tmp, align 8
  %305 = load %union.rec*, %union.rec** @zz_res, align 8
  %306 = bitcast %union.rec* %305 to %struct.word_type*
  %307 = getelementptr inbounds %struct.word_type, %struct.word_type* %306, i32 0, i32 0
  %308 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %307, i32 0, i64 1
  %309 = getelementptr inbounds %struct.LIST, %struct.LIST* %308, i32 0, i32 0
  %310 = load %union.rec*, %union.rec** %309, align 8
  %311 = load %union.rec*, %union.rec** @zz_hold, align 8
  %312 = bitcast %union.rec* %311 to %struct.word_type*
  %313 = getelementptr inbounds %struct.word_type, %struct.word_type* %312, i32 0, i32 0
  %314 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %313, i32 0, i64 1
  %315 = getelementptr inbounds %struct.LIST, %struct.LIST* %314, i32 0, i32 0
  store %union.rec* %310, %union.rec** %315, align 8
  %316 = load %union.rec*, %union.rec** @zz_hold, align 8
  %317 = load %union.rec*, %union.rec** @zz_res, align 8
  %318 = bitcast %union.rec* %317 to %struct.word_type*
  %319 = getelementptr inbounds %struct.word_type, %struct.word_type* %318, i32 0, i32 0
  %320 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %319, i32 0, i64 1
  %321 = getelementptr inbounds %struct.LIST, %struct.LIST* %320, i32 0, i32 0
  %322 = load %union.rec*, %union.rec** %321, align 8
  %323 = bitcast %union.rec* %322 to %struct.word_type*
  %324 = getelementptr inbounds %struct.word_type, %struct.word_type* %323, i32 0, i32 0
  %325 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %324, i32 0, i64 1
  %326 = getelementptr inbounds %struct.LIST, %struct.LIST* %325, i32 0, i32 1
  store %union.rec* %316, %union.rec** %326, align 8
  %327 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %328 = load %union.rec*, %union.rec** @zz_res, align 8
  %329 = bitcast %union.rec* %328 to %struct.word_type*
  %330 = getelementptr inbounds %struct.word_type, %struct.word_type* %329, i32 0, i32 0
  %331 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %330, i32 0, i64 1
  %332 = getelementptr inbounds %struct.LIST, %struct.LIST* %331, i32 0, i32 0
  store %union.rec* %327, %union.rec** %332, align 8
  %333 = load %union.rec*, %union.rec** @zz_res, align 8
  %334 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %335 = bitcast %union.rec* %334 to %struct.word_type*
  %336 = getelementptr inbounds %struct.word_type, %struct.word_type* %335, i32 0, i32 0
  %337 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %336, i32 0, i64 1
  %338 = getelementptr inbounds %struct.LIST, %struct.LIST* %337, i32 0, i32 1
  store %union.rec* %333, %union.rec** %338, align 8
  br label %339

; <label>:339                                     ; preds = %298, %296
  %340 = phi %union.rec* [ %297, %296 ], [ %333, %298 ]
  br label %341

; <label>:341                                     ; preds = %339, %291
  %342 = phi %union.rec* [ %292, %291 ], [ %340, %339 ]
  %343 = load %union.rec*, %union.rec** %2, align 8
  %344 = call i32 @DisposeObject(%union.rec* %343)
  %345 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %345, %union.rec** %1
  br label %10626

; <label>:346                                     ; preds = %104
  br label %348

; <label>:347                                     ; preds = %20
  store i32 0, i32* %etc_width, align 4
  store i32 0, i32* %max_width, align 4
  br label %348

; <label>:348                                     ; preds = %347, %346
  %349 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %350 = zext i8 %349 to i32
  store i32 %350, i32* @zz_size, align 4
  %351 = sext i32 %350 to i64
  %352 = icmp uge i64 %351, 265
  br i1 %352, label %353, label %356

; <label>:353                                     ; preds = %348
  %354 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %355 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %354)
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
  store i8 1, i8* %386, align 1
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
  store %union.rec* %387, %union.rec** %gp, align 8
  %408 = load %union.rec*, %union.rec** %gp, align 8
  %409 = bitcast %union.rec* %408 to %struct.word_type*
  %410 = getelementptr inbounds %struct.word_type, %struct.word_type* %409, i32 0, i32 2
  %411 = bitcast %union.SECOND_UNION* %410 to %struct.anon.0*
  %412 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %411, i32 0, i32 1
  store i8 1, i8* %412, align 1
  %413 = load %union.rec*, %union.rec** %gp, align 8
  %414 = bitcast %union.rec* %413 to %struct.word_type*
  %415 = getelementptr inbounds %struct.word_type, %struct.word_type* %414, i32 0, i32 2
  %416 = bitcast %union.SECOND_UNION* %415 to %struct.anon.0*
  %417 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %416, i32 0, i32 2
  store i8 0, i8* %417, align 1
  %418 = load %union.rec*, %union.rec** %gp, align 8
  %419 = bitcast %union.rec* %418 to %struct.gapobj_type*
  %420 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %419, i32 0, i32 3
  %421 = bitcast %struct.GAP* %420 to i16*
  %422 = load i16, i16* %421, align 4
  %423 = and i16 %422, -129
  store i16 %423, i16* %421, align 4
  %424 = load %union.rec*, %union.rec** %gp, align 8
  %425 = bitcast %union.rec* %424 to %struct.gapobj_type*
  %426 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %425, i32 0, i32 3
  %427 = bitcast %struct.GAP* %426 to i16*
  %428 = load i16, i16* %427, align 4
  %429 = and i16 %428, -257
  store i16 %429, i16* %427, align 4
  %430 = load %union.rec*, %union.rec** %gp, align 8
  %431 = bitcast %union.rec* %430 to %struct.gapobj_type*
  %432 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %431, i32 0, i32 3
  %433 = bitcast %struct.GAP* %432 to i16*
  %434 = load i16, i16* %433, align 4
  %435 = and i16 %434, -513
  %436 = or i16 %435, 512
  store i16 %436, i16* %433, align 4
  %437 = load %union.rec*, %union.rec** %gp, align 8
  %438 = bitcast %union.rec* %437 to %struct.gapobj_type*
  %439 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %438, i32 0, i32 3
  %440 = bitcast %struct.GAP* %439 to i16*
  %441 = load i16, i16* %440, align 4
  %442 = and i16 %441, -7169
  %443 = or i16 %442, 3072
  store i16 %443, i16* %440, align 4
  %444 = load %union.rec*, %union.rec** %gp, align 8
  %445 = bitcast %union.rec* %444 to %struct.gapobj_type*
  %446 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %445, i32 0, i32 3
  %447 = bitcast %struct.GAP* %446 to i16*
  %448 = load i16, i16* %447, align 4
  %449 = and i16 %448, 8191
  %450 = or i16 %449, -16384
  store i16 %450, i16* %447, align 4
  %451 = load %union.rec*, %union.rec** %gp, align 8
  %452 = bitcast %union.rec* %451 to %struct.gapobj_type*
  %453 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %452, i32 0, i32 3
  %454 = getelementptr inbounds %struct.GAP, %struct.GAP* %453, i32 0, i32 1
  store i16 4096, i16* %454, align 2
  %455 = load %union.rec*, %union.rec** %2, align 8
  %456 = bitcast %union.rec* %455 to %struct.word_type*
  %457 = getelementptr inbounds %struct.word_type, %struct.word_type* %456, i32 0, i32 1
  %458 = bitcast %union.FIRST_UNION* %457 to %struct.FILE_POS*
  %459 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), %struct.FILE_POS* %458)
  store %union.rec* %459, %union.rec** %tmp, align 8
  %460 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %461 = zext i8 %460 to i32
  store i32 %461, i32* @zz_size, align 4
  %462 = sext i32 %461 to i64
  %463 = icmp uge i64 %462, 265
  br i1 %463, label %464, label %467

; <label>:464                                     ; preds = %381
  %465 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %466 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %465)
  br label %492

; <label>:467                                     ; preds = %381
  %468 = load i32, i32* @zz_size, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %469
  %471 = load %union.rec*, %union.rec** %470, align 8
  %472 = icmp eq %union.rec* %471, null
  br i1 %472, label %473, label %477

; <label>:473                                     ; preds = %467
  %474 = load i32, i32* @zz_size, align 4
  %475 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %476 = call %union.rec* @GetMemory(i32 %474, %struct.FILE_POS* %475)
  store %union.rec* %476, %union.rec** @zz_hold, align 8
  br label %491

; <label>:477                                     ; preds = %467
  %478 = load i32, i32* @zz_size, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %479
  %481 = load %union.rec*, %union.rec** %480, align 8
  store %union.rec* %481, %union.rec** @zz_hold, align 8
  store %union.rec* %481, %union.rec** @zz_hold, align 8
  %482 = load %union.rec*, %union.rec** @zz_hold, align 8
  %483 = bitcast %union.rec* %482 to %struct.word_type*
  %484 = getelementptr inbounds %struct.word_type, %struct.word_type* %483, i32 0, i32 0
  %485 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %484, i32 0, i64 0
  %486 = getelementptr inbounds %struct.LIST, %struct.LIST* %485, i32 0, i32 0
  %487 = load %union.rec*, %union.rec** %486, align 8
  %488 = load i32, i32* @zz_size, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %489
  store %union.rec* %487, %union.rec** %490, align 8
  br label %491

; <label>:491                                     ; preds = %477, %473
  br label %492

; <label>:492                                     ; preds = %491, %464
  %493 = load %union.rec*, %union.rec** @zz_hold, align 8
  %494 = bitcast %union.rec* %493 to %struct.word_type*
  %495 = getelementptr inbounds %struct.word_type, %struct.word_type* %494, i32 0, i32 1
  %496 = bitcast %union.FIRST_UNION* %495 to %struct.anon*
  %497 = getelementptr inbounds %struct.anon, %struct.anon* %496, i32 0, i32 0
  store i8 0, i8* %497, align 1
  %498 = load %union.rec*, %union.rec** @zz_hold, align 8
  %499 = load %union.rec*, %union.rec** @zz_hold, align 8
  %500 = bitcast %union.rec* %499 to %struct.word_type*
  %501 = getelementptr inbounds %struct.word_type, %struct.word_type* %500, i32 0, i32 0
  %502 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %501, i32 0, i64 1
  %503 = getelementptr inbounds %struct.LIST, %struct.LIST* %502, i32 0, i32 1
  store %union.rec* %498, %union.rec** %503, align 8
  %504 = load %union.rec*, %union.rec** @zz_hold, align 8
  %505 = bitcast %union.rec* %504 to %struct.word_type*
  %506 = getelementptr inbounds %struct.word_type, %struct.word_type* %505, i32 0, i32 0
  %507 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %506, i32 0, i64 1
  %508 = getelementptr inbounds %struct.LIST, %struct.LIST* %507, i32 0, i32 0
  store %union.rec* %498, %union.rec** %508, align 8
  %509 = load %union.rec*, %union.rec** @zz_hold, align 8
  %510 = bitcast %union.rec* %509 to %struct.word_type*
  %511 = getelementptr inbounds %struct.word_type, %struct.word_type* %510, i32 0, i32 0
  %512 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %511, i32 0, i64 0
  %513 = getelementptr inbounds %struct.LIST, %struct.LIST* %512, i32 0, i32 1
  store %union.rec* %498, %union.rec** %513, align 8
  %514 = load %union.rec*, %union.rec** @zz_hold, align 8
  %515 = bitcast %union.rec* %514 to %struct.word_type*
  %516 = getelementptr inbounds %struct.word_type, %struct.word_type* %515, i32 0, i32 0
  %517 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %516, i32 0, i64 0
  %518 = getelementptr inbounds %struct.LIST, %struct.LIST* %517, i32 0, i32 0
  store %union.rec* %498, %union.rec** %518, align 8
  store %union.rec* %498, %union.rec** @xx_link, align 8
  %519 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %519, %union.rec** @zz_res, align 8
  %520 = load %union.rec*, %union.rec** %gp, align 8
  store %union.rec* %520, %union.rec** @zz_hold, align 8
  %521 = load %union.rec*, %union.rec** @zz_hold, align 8
  %522 = icmp eq %union.rec* %521, null
  br i1 %522, label %523, label %525

; <label>:523                                     ; preds = %492
  %524 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %573

; <label>:525                                     ; preds = %492
  %526 = load %union.rec*, %union.rec** @zz_res, align 8
  %527 = icmp eq %union.rec* %526, null
  br i1 %527, label %528, label %530

; <label>:528                                     ; preds = %525
  %529 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %571

; <label>:530                                     ; preds = %525
  %531 = load %union.rec*, %union.rec** @zz_hold, align 8
  %532 = bitcast %union.rec* %531 to %struct.word_type*
  %533 = getelementptr inbounds %struct.word_type, %struct.word_type* %532, i32 0, i32 0
  %534 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %533, i32 0, i64 0
  %535 = getelementptr inbounds %struct.LIST, %struct.LIST* %534, i32 0, i32 0
  %536 = load %union.rec*, %union.rec** %535, align 8
  store %union.rec* %536, %union.rec** @zz_tmp, align 8
  %537 = load %union.rec*, %union.rec** @zz_res, align 8
  %538 = bitcast %union.rec* %537 to %struct.word_type*
  %539 = getelementptr inbounds %struct.word_type, %struct.word_type* %538, i32 0, i32 0
  %540 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %539, i32 0, i64 0
  %541 = getelementptr inbounds %struct.LIST, %struct.LIST* %540, i32 0, i32 0
  %542 = load %union.rec*, %union.rec** %541, align 8
  %543 = load %union.rec*, %union.rec** @zz_hold, align 8
  %544 = bitcast %union.rec* %543 to %struct.word_type*
  %545 = getelementptr inbounds %struct.word_type, %struct.word_type* %544, i32 0, i32 0
  %546 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %545, i32 0, i64 0
  %547 = getelementptr inbounds %struct.LIST, %struct.LIST* %546, i32 0, i32 0
  store %union.rec* %542, %union.rec** %547, align 8
  %548 = load %union.rec*, %union.rec** @zz_hold, align 8
  %549 = load %union.rec*, %union.rec** @zz_res, align 8
  %550 = bitcast %union.rec* %549 to %struct.word_type*
  %551 = getelementptr inbounds %struct.word_type, %struct.word_type* %550, i32 0, i32 0
  %552 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %551, i32 0, i64 0
  %553 = getelementptr inbounds %struct.LIST, %struct.LIST* %552, i32 0, i32 0
  %554 = load %union.rec*, %union.rec** %553, align 8
  %555 = bitcast %union.rec* %554 to %struct.word_type*
  %556 = getelementptr inbounds %struct.word_type, %struct.word_type* %555, i32 0, i32 0
  %557 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %556, i32 0, i64 0
  %558 = getelementptr inbounds %struct.LIST, %struct.LIST* %557, i32 0, i32 1
  store %union.rec* %548, %union.rec** %558, align 8
  %559 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %560 = load %union.rec*, %union.rec** @zz_res, align 8
  %561 = bitcast %union.rec* %560 to %struct.word_type*
  %562 = getelementptr inbounds %struct.word_type, %struct.word_type* %561, i32 0, i32 0
  %563 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %562, i32 0, i64 0
  %564 = getelementptr inbounds %struct.LIST, %struct.LIST* %563, i32 0, i32 0
  store %union.rec* %559, %union.rec** %564, align 8
  %565 = load %union.rec*, %union.rec** @zz_res, align 8
  %566 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %567 = bitcast %union.rec* %566 to %struct.word_type*
  %568 = getelementptr inbounds %struct.word_type, %struct.word_type* %567, i32 0, i32 0
  %569 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %568, i32 0, i64 0
  %570 = getelementptr inbounds %struct.LIST, %struct.LIST* %569, i32 0, i32 1
  store %union.rec* %565, %union.rec** %570, align 8
  br label %571

; <label>:571                                     ; preds = %530, %528
  %572 = phi %union.rec* [ %529, %528 ], [ %565, %530 ]
  br label %573

; <label>:573                                     ; preds = %571, %523
  %574 = phi %union.rec* [ %524, %523 ], [ %572, %571 ]
  %575 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %575, %union.rec** @zz_res, align 8
  %576 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %576, %union.rec** @zz_hold, align 8
  %577 = load %union.rec*, %union.rec** @zz_hold, align 8
  %578 = icmp eq %union.rec* %577, null
  br i1 %578, label %579, label %581

; <label>:579                                     ; preds = %573
  %580 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %629

; <label>:581                                     ; preds = %573
  %582 = load %union.rec*, %union.rec** @zz_res, align 8
  %583 = icmp eq %union.rec* %582, null
  br i1 %583, label %584, label %586

; <label>:584                                     ; preds = %581
  %585 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %627

; <label>:586                                     ; preds = %581
  %587 = load %union.rec*, %union.rec** @zz_hold, align 8
  %588 = bitcast %union.rec* %587 to %struct.word_type*
  %589 = getelementptr inbounds %struct.word_type, %struct.word_type* %588, i32 0, i32 0
  %590 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %589, i32 0, i64 1
  %591 = getelementptr inbounds %struct.LIST, %struct.LIST* %590, i32 0, i32 0
  %592 = load %union.rec*, %union.rec** %591, align 8
  store %union.rec* %592, %union.rec** @zz_tmp, align 8
  %593 = load %union.rec*, %union.rec** @zz_res, align 8
  %594 = bitcast %union.rec* %593 to %struct.word_type*
  %595 = getelementptr inbounds %struct.word_type, %struct.word_type* %594, i32 0, i32 0
  %596 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %595, i32 0, i64 1
  %597 = getelementptr inbounds %struct.LIST, %struct.LIST* %596, i32 0, i32 0
  %598 = load %union.rec*, %union.rec** %597, align 8
  %599 = load %union.rec*, %union.rec** @zz_hold, align 8
  %600 = bitcast %union.rec* %599 to %struct.word_type*
  %601 = getelementptr inbounds %struct.word_type, %struct.word_type* %600, i32 0, i32 0
  %602 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %601, i32 0, i64 1
  %603 = getelementptr inbounds %struct.LIST, %struct.LIST* %602, i32 0, i32 0
  store %union.rec* %598, %union.rec** %603, align 8
  %604 = load %union.rec*, %union.rec** @zz_hold, align 8
  %605 = load %union.rec*, %union.rec** @zz_res, align 8
  %606 = bitcast %union.rec* %605 to %struct.word_type*
  %607 = getelementptr inbounds %struct.word_type, %struct.word_type* %606, i32 0, i32 0
  %608 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %607, i32 0, i64 1
  %609 = getelementptr inbounds %struct.LIST, %struct.LIST* %608, i32 0, i32 0
  %610 = load %union.rec*, %union.rec** %609, align 8
  %611 = bitcast %union.rec* %610 to %struct.word_type*
  %612 = getelementptr inbounds %struct.word_type, %struct.word_type* %611, i32 0, i32 0
  %613 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %612, i32 0, i64 1
  %614 = getelementptr inbounds %struct.LIST, %struct.LIST* %613, i32 0, i32 1
  store %union.rec* %604, %union.rec** %614, align 8
  %615 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %616 = load %union.rec*, %union.rec** @zz_res, align 8
  %617 = bitcast %union.rec* %616 to %struct.word_type*
  %618 = getelementptr inbounds %struct.word_type, %struct.word_type* %617, i32 0, i32 0
  %619 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %618, i32 0, i64 1
  %620 = getelementptr inbounds %struct.LIST, %struct.LIST* %619, i32 0, i32 0
  store %union.rec* %615, %union.rec** %620, align 8
  %621 = load %union.rec*, %union.rec** @zz_res, align 8
  %622 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %623 = bitcast %union.rec* %622 to %struct.word_type*
  %624 = getelementptr inbounds %struct.word_type, %struct.word_type* %623, i32 0, i32 0
  %625 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %624, i32 0, i64 1
  %626 = getelementptr inbounds %struct.LIST, %struct.LIST* %625, i32 0, i32 1
  store %union.rec* %621, %union.rec** %626, align 8
  br label %627

; <label>:627                                     ; preds = %586, %584
  %628 = phi %union.rec* [ %585, %584 ], [ %621, %586 ]
  br label %629

; <label>:629                                     ; preds = %627, %579
  %630 = phi %union.rec* [ %580, %579 ], [ %628, %627 ]
  %631 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %632 = zext i8 %631 to i32
  store i32 %632, i32* @zz_size, align 4
  %633 = sext i32 %632 to i64
  %634 = icmp uge i64 %633, 265
  br i1 %634, label %635, label %638

; <label>:635                                     ; preds = %629
  %636 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %637 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %636)
  br label %663

; <label>:638                                     ; preds = %629
  %639 = load i32, i32* @zz_size, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %640
  %642 = load %union.rec*, %union.rec** %641, align 8
  %643 = icmp eq %union.rec* %642, null
  br i1 %643, label %644, label %648

; <label>:644                                     ; preds = %638
  %645 = load i32, i32* @zz_size, align 4
  %646 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %647 = call %union.rec* @GetMemory(i32 %645, %struct.FILE_POS* %646)
  store %union.rec* %647, %union.rec** @zz_hold, align 8
  br label %662

; <label>:648                                     ; preds = %638
  %649 = load i32, i32* @zz_size, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %650
  %652 = load %union.rec*, %union.rec** %651, align 8
  store %union.rec* %652, %union.rec** @zz_hold, align 8
  store %union.rec* %652, %union.rec** @zz_hold, align 8
  %653 = load %union.rec*, %union.rec** @zz_hold, align 8
  %654 = bitcast %union.rec* %653 to %struct.word_type*
  %655 = getelementptr inbounds %struct.word_type, %struct.word_type* %654, i32 0, i32 0
  %656 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %655, i32 0, i64 0
  %657 = getelementptr inbounds %struct.LIST, %struct.LIST* %656, i32 0, i32 0
  %658 = load %union.rec*, %union.rec** %657, align 8
  %659 = load i32, i32* @zz_size, align 4
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %660
  store %union.rec* %658, %union.rec** %661, align 8
  br label %662

; <label>:662                                     ; preds = %648, %644
  br label %663

; <label>:663                                     ; preds = %662, %635
  %664 = load %union.rec*, %union.rec** @zz_hold, align 8
  %665 = bitcast %union.rec* %664 to %struct.word_type*
  %666 = getelementptr inbounds %struct.word_type, %struct.word_type* %665, i32 0, i32 1
  %667 = bitcast %union.FIRST_UNION* %666 to %struct.anon*
  %668 = getelementptr inbounds %struct.anon, %struct.anon* %667, i32 0, i32 0
  store i8 0, i8* %668, align 1
  %669 = load %union.rec*, %union.rec** @zz_hold, align 8
  %670 = load %union.rec*, %union.rec** @zz_hold, align 8
  %671 = bitcast %union.rec* %670 to %struct.word_type*
  %672 = getelementptr inbounds %struct.word_type, %struct.word_type* %671, i32 0, i32 0
  %673 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %672, i32 0, i64 1
  %674 = getelementptr inbounds %struct.LIST, %struct.LIST* %673, i32 0, i32 1
  store %union.rec* %669, %union.rec** %674, align 8
  %675 = load %union.rec*, %union.rec** @zz_hold, align 8
  %676 = bitcast %union.rec* %675 to %struct.word_type*
  %677 = getelementptr inbounds %struct.word_type, %struct.word_type* %676, i32 0, i32 0
  %678 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %677, i32 0, i64 1
  %679 = getelementptr inbounds %struct.LIST, %struct.LIST* %678, i32 0, i32 0
  store %union.rec* %669, %union.rec** %679, align 8
  %680 = load %union.rec*, %union.rec** @zz_hold, align 8
  %681 = bitcast %union.rec* %680 to %struct.word_type*
  %682 = getelementptr inbounds %struct.word_type, %struct.word_type* %681, i32 0, i32 0
  %683 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %682, i32 0, i64 0
  %684 = getelementptr inbounds %struct.LIST, %struct.LIST* %683, i32 0, i32 1
  store %union.rec* %669, %union.rec** %684, align 8
  %685 = load %union.rec*, %union.rec** @zz_hold, align 8
  %686 = bitcast %union.rec* %685 to %struct.word_type*
  %687 = getelementptr inbounds %struct.word_type, %struct.word_type* %686, i32 0, i32 0
  %688 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %687, i32 0, i64 0
  %689 = getelementptr inbounds %struct.LIST, %struct.LIST* %688, i32 0, i32 0
  store %union.rec* %669, %union.rec** %689, align 8
  store %union.rec* %669, %union.rec** @xx_link, align 8
  %690 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %690, %union.rec** @zz_res, align 8
  %691 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %691, %union.rec** @zz_hold, align 8
  %692 = load %union.rec*, %union.rec** @zz_hold, align 8
  %693 = icmp eq %union.rec* %692, null
  br i1 %693, label %694, label %696

; <label>:694                                     ; preds = %663
  %695 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %744

; <label>:696                                     ; preds = %663
  %697 = load %union.rec*, %union.rec** @zz_res, align 8
  %698 = icmp eq %union.rec* %697, null
  br i1 %698, label %699, label %701

; <label>:699                                     ; preds = %696
  %700 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %742

; <label>:701                                     ; preds = %696
  %702 = load %union.rec*, %union.rec** @zz_hold, align 8
  %703 = bitcast %union.rec* %702 to %struct.word_type*
  %704 = getelementptr inbounds %struct.word_type, %struct.word_type* %703, i32 0, i32 0
  %705 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %704, i32 0, i64 0
  %706 = getelementptr inbounds %struct.LIST, %struct.LIST* %705, i32 0, i32 0
  %707 = load %union.rec*, %union.rec** %706, align 8
  store %union.rec* %707, %union.rec** @zz_tmp, align 8
  %708 = load %union.rec*, %union.rec** @zz_res, align 8
  %709 = bitcast %union.rec* %708 to %struct.word_type*
  %710 = getelementptr inbounds %struct.word_type, %struct.word_type* %709, i32 0, i32 0
  %711 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %710, i32 0, i64 0
  %712 = getelementptr inbounds %struct.LIST, %struct.LIST* %711, i32 0, i32 0
  %713 = load %union.rec*, %union.rec** %712, align 8
  %714 = load %union.rec*, %union.rec** @zz_hold, align 8
  %715 = bitcast %union.rec* %714 to %struct.word_type*
  %716 = getelementptr inbounds %struct.word_type, %struct.word_type* %715, i32 0, i32 0
  %717 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %716, i32 0, i64 0
  %718 = getelementptr inbounds %struct.LIST, %struct.LIST* %717, i32 0, i32 0
  store %union.rec* %713, %union.rec** %718, align 8
  %719 = load %union.rec*, %union.rec** @zz_hold, align 8
  %720 = load %union.rec*, %union.rec** @zz_res, align 8
  %721 = bitcast %union.rec* %720 to %struct.word_type*
  %722 = getelementptr inbounds %struct.word_type, %struct.word_type* %721, i32 0, i32 0
  %723 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %722, i32 0, i64 0
  %724 = getelementptr inbounds %struct.LIST, %struct.LIST* %723, i32 0, i32 0
  %725 = load %union.rec*, %union.rec** %724, align 8
  %726 = bitcast %union.rec* %725 to %struct.word_type*
  %727 = getelementptr inbounds %struct.word_type, %struct.word_type* %726, i32 0, i32 0
  %728 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %727, i32 0, i64 0
  %729 = getelementptr inbounds %struct.LIST, %struct.LIST* %728, i32 0, i32 1
  store %union.rec* %719, %union.rec** %729, align 8
  %730 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %731 = load %union.rec*, %union.rec** @zz_res, align 8
  %732 = bitcast %union.rec* %731 to %struct.word_type*
  %733 = getelementptr inbounds %struct.word_type, %struct.word_type* %732, i32 0, i32 0
  %734 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %733, i32 0, i64 0
  %735 = getelementptr inbounds %struct.LIST, %struct.LIST* %734, i32 0, i32 0
  store %union.rec* %730, %union.rec** %735, align 8
  %736 = load %union.rec*, %union.rec** @zz_res, align 8
  %737 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %738 = bitcast %union.rec* %737 to %struct.word_type*
  %739 = getelementptr inbounds %struct.word_type, %struct.word_type* %738, i32 0, i32 0
  %740 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %739, i32 0, i64 0
  %741 = getelementptr inbounds %struct.LIST, %struct.LIST* %740, i32 0, i32 1
  store %union.rec* %736, %union.rec** %741, align 8
  br label %742

; <label>:742                                     ; preds = %701, %699
  %743 = phi %union.rec* [ %700, %699 ], [ %736, %701 ]
  br label %744

; <label>:744                                     ; preds = %742, %694
  %745 = phi %union.rec* [ %695, %694 ], [ %743, %742 ]
  %746 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %746, %union.rec** @zz_res, align 8
  %747 = load %union.rec*, %union.rec** %gp, align 8
  store %union.rec* %747, %union.rec** @zz_hold, align 8
  %748 = load %union.rec*, %union.rec** @zz_hold, align 8
  %749 = icmp eq %union.rec* %748, null
  br i1 %749, label %750, label %752

; <label>:750                                     ; preds = %744
  %751 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %800

; <label>:752                                     ; preds = %744
  %753 = load %union.rec*, %union.rec** @zz_res, align 8
  %754 = icmp eq %union.rec* %753, null
  br i1 %754, label %755, label %757

; <label>:755                                     ; preds = %752
  %756 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %798

; <label>:757                                     ; preds = %752
  %758 = load %union.rec*, %union.rec** @zz_hold, align 8
  %759 = bitcast %union.rec* %758 to %struct.word_type*
  %760 = getelementptr inbounds %struct.word_type, %struct.word_type* %759, i32 0, i32 0
  %761 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %760, i32 0, i64 1
  %762 = getelementptr inbounds %struct.LIST, %struct.LIST* %761, i32 0, i32 0
  %763 = load %union.rec*, %union.rec** %762, align 8
  store %union.rec* %763, %union.rec** @zz_tmp, align 8
  %764 = load %union.rec*, %union.rec** @zz_res, align 8
  %765 = bitcast %union.rec* %764 to %struct.word_type*
  %766 = getelementptr inbounds %struct.word_type, %struct.word_type* %765, i32 0, i32 0
  %767 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %766, i32 0, i64 1
  %768 = getelementptr inbounds %struct.LIST, %struct.LIST* %767, i32 0, i32 0
  %769 = load %union.rec*, %union.rec** %768, align 8
  %770 = load %union.rec*, %union.rec** @zz_hold, align 8
  %771 = bitcast %union.rec* %770 to %struct.word_type*
  %772 = getelementptr inbounds %struct.word_type, %struct.word_type* %771, i32 0, i32 0
  %773 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %772, i32 0, i64 1
  %774 = getelementptr inbounds %struct.LIST, %struct.LIST* %773, i32 0, i32 0
  store %union.rec* %769, %union.rec** %774, align 8
  %775 = load %union.rec*, %union.rec** @zz_hold, align 8
  %776 = load %union.rec*, %union.rec** @zz_res, align 8
  %777 = bitcast %union.rec* %776 to %struct.word_type*
  %778 = getelementptr inbounds %struct.word_type, %struct.word_type* %777, i32 0, i32 0
  %779 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %778, i32 0, i64 1
  %780 = getelementptr inbounds %struct.LIST, %struct.LIST* %779, i32 0, i32 0
  %781 = load %union.rec*, %union.rec** %780, align 8
  %782 = bitcast %union.rec* %781 to %struct.word_type*
  %783 = getelementptr inbounds %struct.word_type, %struct.word_type* %782, i32 0, i32 0
  %784 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %783, i32 0, i64 1
  %785 = getelementptr inbounds %struct.LIST, %struct.LIST* %784, i32 0, i32 1
  store %union.rec* %775, %union.rec** %785, align 8
  %786 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %787 = load %union.rec*, %union.rec** @zz_res, align 8
  %788 = bitcast %union.rec* %787 to %struct.word_type*
  %789 = getelementptr inbounds %struct.word_type, %struct.word_type* %788, i32 0, i32 0
  %790 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %789, i32 0, i64 1
  %791 = getelementptr inbounds %struct.LIST, %struct.LIST* %790, i32 0, i32 0
  store %union.rec* %786, %union.rec** %791, align 8
  %792 = load %union.rec*, %union.rec** @zz_res, align 8
  %793 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %794 = bitcast %union.rec* %793 to %struct.word_type*
  %795 = getelementptr inbounds %struct.word_type, %struct.word_type* %794, i32 0, i32 0
  %796 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %795, i32 0, i64 1
  %797 = getelementptr inbounds %struct.LIST, %struct.LIST* %796, i32 0, i32 1
  store %union.rec* %792, %union.rec** %797, align 8
  br label %798

; <label>:798                                     ; preds = %757, %755
  %799 = phi %union.rec* [ %756, %755 ], [ %792, %757 ]
  br label %800

; <label>:800                                     ; preds = %798, %750
  %801 = phi %union.rec* [ %751, %750 ], [ %799, %798 ]
  %802 = load %union.rec*, %union.rec** %2, align 8
  %803 = bitcast %union.rec* %802 to %struct.word_type*
  %804 = getelementptr inbounds %struct.word_type, %struct.word_type* %803, i32 0, i32 1
  %805 = bitcast %union.FIRST_UNION* %804 to %struct.FILE_POS*
  %806 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %struct.FILE_POS* %805)
  store %union.rec* %806, %union.rec** %tmp, align 8
  %807 = load %union.rec*, %union.rec** %tmp, align 8
  %808 = bitcast %union.rec* %807 to %struct.word_type*
  %809 = getelementptr inbounds %struct.word_type, %struct.word_type* %808, i32 0, i32 3
  %810 = bitcast %union.THIRD_UNION* %809 to %struct.anon.6*
  %811 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %810, i32 0, i32 1
  %812 = getelementptr inbounds [2 x i32], [2 x i32]* %811, i32 0, i64 1
  store i32 0, i32* %812, align 4
  %813 = load %union.rec*, %union.rec** %tmp, align 8
  %814 = bitcast %union.rec* %813 to %struct.word_type*
  %815 = getelementptr inbounds %struct.word_type, %struct.word_type* %814, i32 0, i32 3
  %816 = bitcast %union.THIRD_UNION* %815 to %struct.anon.6*
  %817 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %816, i32 0, i32 0
  %818 = getelementptr inbounds [2 x i32], [2 x i32]* %817, i32 0, i64 1
  store i32 0, i32* %818, align 4
  %819 = load %union.rec*, %union.rec** %tmp, align 8
  %820 = bitcast %union.rec* %819 to %struct.word_type*
  %821 = getelementptr inbounds %struct.word_type, %struct.word_type* %820, i32 0, i32 3
  %822 = bitcast %union.THIRD_UNION* %821 to %struct.anon.6*
  %823 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %822, i32 0, i32 1
  %824 = getelementptr inbounds [2 x i32], [2 x i32]* %823, i32 0, i64 0
  store i32 0, i32* %824, align 4
  %825 = load %union.rec*, %union.rec** %tmp, align 8
  %826 = bitcast %union.rec* %825 to %struct.word_type*
  %827 = getelementptr inbounds %struct.word_type, %struct.word_type* %826, i32 0, i32 3
  %828 = bitcast %union.THIRD_UNION* %827 to %struct.anon.6*
  %829 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %828, i32 0, i32 0
  %830 = getelementptr inbounds [2 x i32], [2 x i32]* %829, i32 0, i64 0
  store i32 0, i32* %830, align 4
  %831 = load %union.rec*, %union.rec** %tmp, align 8
  %832 = bitcast %union.rec* %831 to %struct.word_type*
  %833 = getelementptr inbounds %struct.word_type, %struct.word_type* %832, i32 0, i32 2
  %834 = bitcast %union.SECOND_UNION* %833 to %struct.anon.1*
  %835 = bitcast %struct.anon.1* %834 to i32*
  %836 = load i32, i32* %835, align 4
  %837 = and i32 %836, -4096
  store i32 %837, i32* %835, align 4
  %838 = load %union.rec*, %union.rec** %tmp, align 8
  %839 = bitcast %union.rec* %838 to %struct.word_type*
  %840 = getelementptr inbounds %struct.word_type, %struct.word_type* %839, i32 0, i32 2
  %841 = bitcast %union.SECOND_UNION* %840 to %struct.anon.1*
  %842 = bitcast %struct.anon.1* %841 to i32*
  %843 = load i32, i32* %842, align 4
  %844 = and i32 %843, -4190209
  store i32 %844, i32* %842, align 4
  %845 = load %union.rec*, %union.rec** %tmp, align 8
  %846 = bitcast %union.rec* %845 to %struct.word_type*
  %847 = getelementptr inbounds %struct.word_type, %struct.word_type* %846, i32 0, i32 2
  %848 = bitcast %union.SECOND_UNION* %847 to %struct.anon.1*
  %849 = bitcast %struct.anon.1* %848 to i32*
  %850 = load i32, i32* %849, align 4
  %851 = and i32 %850, -4194305
  store i32 %851, i32* %849, align 4
  %852 = load %union.rec*, %union.rec** %tmp, align 8
  %853 = bitcast %union.rec* %852 to %struct.word_type*
  %854 = getelementptr inbounds %struct.word_type, %struct.word_type* %853, i32 0, i32 2
  %855 = bitcast %union.SECOND_UNION* %854 to %struct.anon.1*
  %856 = bitcast %struct.anon.1* %855 to i32*
  %857 = load i32, i32* %856, align 4
  %858 = and i32 %857, -528482305
  store i32 %858, i32* %856, align 4
  %859 = load %union.rec*, %union.rec** %tmp, align 8
  %860 = bitcast %union.rec* %859 to %struct.word_type*
  %861 = getelementptr inbounds %struct.word_type, %struct.word_type* %860, i32 0, i32 2
  %862 = bitcast %union.SECOND_UNION* %861 to %struct.anon.1*
  %863 = bitcast %struct.anon.1* %862 to i32*
  %864 = load i32, i32* %863, align 4
  %865 = and i32 %864, 2147483647
  store i32 %865, i32* %863, align 4
  %866 = load %union.rec*, %union.rec** %tmp, align 8
  %867 = bitcast %union.rec* %866 to %struct.word_type*
  %868 = getelementptr inbounds %struct.word_type, %struct.word_type* %867, i32 0, i32 2
  %869 = bitcast %union.SECOND_UNION* %868 to %struct.anon.1*
  %870 = bitcast %struct.anon.1* %869 to i32*
  %871 = load i32, i32* %870, align 4
  %872 = and i32 %871, -1610612737
  %873 = or i32 %872, 536870912
  store i32 %873, i32* %870, align 4
  %874 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %875 = zext i8 %874 to i32
  store i32 %875, i32* @zz_size, align 4
  %876 = sext i32 %875 to i64
  %877 = icmp uge i64 %876, 265
  br i1 %877, label %878, label %881

; <label>:878                                     ; preds = %800
  %879 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %880 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %879)
  br label %906

; <label>:881                                     ; preds = %800
  %882 = load i32, i32* @zz_size, align 4
  %883 = sext i32 %882 to i64
  %884 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %883
  %885 = load %union.rec*, %union.rec** %884, align 8
  %886 = icmp eq %union.rec* %885, null
  br i1 %886, label %887, label %891

; <label>:887                                     ; preds = %881
  %888 = load i32, i32* @zz_size, align 4
  %889 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %890 = call %union.rec* @GetMemory(i32 %888, %struct.FILE_POS* %889)
  store %union.rec* %890, %union.rec** @zz_hold, align 8
  br label %905

; <label>:891                                     ; preds = %881
  %892 = load i32, i32* @zz_size, align 4
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %893
  %895 = load %union.rec*, %union.rec** %894, align 8
  store %union.rec* %895, %union.rec** @zz_hold, align 8
  store %union.rec* %895, %union.rec** @zz_hold, align 8
  %896 = load %union.rec*, %union.rec** @zz_hold, align 8
  %897 = bitcast %union.rec* %896 to %struct.word_type*
  %898 = getelementptr inbounds %struct.word_type, %struct.word_type* %897, i32 0, i32 0
  %899 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %898, i32 0, i64 0
  %900 = getelementptr inbounds %struct.LIST, %struct.LIST* %899, i32 0, i32 0
  %901 = load %union.rec*, %union.rec** %900, align 8
  %902 = load i32, i32* @zz_size, align 4
  %903 = sext i32 %902 to i64
  %904 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %903
  store %union.rec* %901, %union.rec** %904, align 8
  br label %905

; <label>:905                                     ; preds = %891, %887
  br label %906

; <label>:906                                     ; preds = %905, %878
  %907 = load %union.rec*, %union.rec** @zz_hold, align 8
  %908 = bitcast %union.rec* %907 to %struct.word_type*
  %909 = getelementptr inbounds %struct.word_type, %struct.word_type* %908, i32 0, i32 1
  %910 = bitcast %union.FIRST_UNION* %909 to %struct.anon*
  %911 = getelementptr inbounds %struct.anon, %struct.anon* %910, i32 0, i32 0
  store i8 0, i8* %911, align 1
  %912 = load %union.rec*, %union.rec** @zz_hold, align 8
  %913 = load %union.rec*, %union.rec** @zz_hold, align 8
  %914 = bitcast %union.rec* %913 to %struct.word_type*
  %915 = getelementptr inbounds %struct.word_type, %struct.word_type* %914, i32 0, i32 0
  %916 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %915, i32 0, i64 1
  %917 = getelementptr inbounds %struct.LIST, %struct.LIST* %916, i32 0, i32 1
  store %union.rec* %912, %union.rec** %917, align 8
  %918 = load %union.rec*, %union.rec** @zz_hold, align 8
  %919 = bitcast %union.rec* %918 to %struct.word_type*
  %920 = getelementptr inbounds %struct.word_type, %struct.word_type* %919, i32 0, i32 0
  %921 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %920, i32 0, i64 1
  %922 = getelementptr inbounds %struct.LIST, %struct.LIST* %921, i32 0, i32 0
  store %union.rec* %912, %union.rec** %922, align 8
  %923 = load %union.rec*, %union.rec** @zz_hold, align 8
  %924 = bitcast %union.rec* %923 to %struct.word_type*
  %925 = getelementptr inbounds %struct.word_type, %struct.word_type* %924, i32 0, i32 0
  %926 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %925, i32 0, i64 0
  %927 = getelementptr inbounds %struct.LIST, %struct.LIST* %926, i32 0, i32 1
  store %union.rec* %912, %union.rec** %927, align 8
  %928 = load %union.rec*, %union.rec** @zz_hold, align 8
  %929 = bitcast %union.rec* %928 to %struct.word_type*
  %930 = getelementptr inbounds %struct.word_type, %struct.word_type* %929, i32 0, i32 0
  %931 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %930, i32 0, i64 0
  %932 = getelementptr inbounds %struct.LIST, %struct.LIST* %931, i32 0, i32 0
  store %union.rec* %912, %union.rec** %932, align 8
  store %union.rec* %912, %union.rec** @xx_link, align 8
  %933 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %933, %union.rec** @zz_res, align 8
  %934 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %934, %union.rec** @zz_hold, align 8
  %935 = load %union.rec*, %union.rec** @zz_hold, align 8
  %936 = icmp eq %union.rec* %935, null
  br i1 %936, label %937, label %939

; <label>:937                                     ; preds = %906
  %938 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %987

; <label>:939                                     ; preds = %906
  %940 = load %union.rec*, %union.rec** @zz_res, align 8
  %941 = icmp eq %union.rec* %940, null
  br i1 %941, label %942, label %944

; <label>:942                                     ; preds = %939
  %943 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %985

; <label>:944                                     ; preds = %939
  %945 = load %union.rec*, %union.rec** @zz_hold, align 8
  %946 = bitcast %union.rec* %945 to %struct.word_type*
  %947 = getelementptr inbounds %struct.word_type, %struct.word_type* %946, i32 0, i32 0
  %948 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %947, i32 0, i64 0
  %949 = getelementptr inbounds %struct.LIST, %struct.LIST* %948, i32 0, i32 0
  %950 = load %union.rec*, %union.rec** %949, align 8
  store %union.rec* %950, %union.rec** @zz_tmp, align 8
  %951 = load %union.rec*, %union.rec** @zz_res, align 8
  %952 = bitcast %union.rec* %951 to %struct.word_type*
  %953 = getelementptr inbounds %struct.word_type, %struct.word_type* %952, i32 0, i32 0
  %954 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %953, i32 0, i64 0
  %955 = getelementptr inbounds %struct.LIST, %struct.LIST* %954, i32 0, i32 0
  %956 = load %union.rec*, %union.rec** %955, align 8
  %957 = load %union.rec*, %union.rec** @zz_hold, align 8
  %958 = bitcast %union.rec* %957 to %struct.word_type*
  %959 = getelementptr inbounds %struct.word_type, %struct.word_type* %958, i32 0, i32 0
  %960 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %959, i32 0, i64 0
  %961 = getelementptr inbounds %struct.LIST, %struct.LIST* %960, i32 0, i32 0
  store %union.rec* %956, %union.rec** %961, align 8
  %962 = load %union.rec*, %union.rec** @zz_hold, align 8
  %963 = load %union.rec*, %union.rec** @zz_res, align 8
  %964 = bitcast %union.rec* %963 to %struct.word_type*
  %965 = getelementptr inbounds %struct.word_type, %struct.word_type* %964, i32 0, i32 0
  %966 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %965, i32 0, i64 0
  %967 = getelementptr inbounds %struct.LIST, %struct.LIST* %966, i32 0, i32 0
  %968 = load %union.rec*, %union.rec** %967, align 8
  %969 = bitcast %union.rec* %968 to %struct.word_type*
  %970 = getelementptr inbounds %struct.word_type, %struct.word_type* %969, i32 0, i32 0
  %971 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %970, i32 0, i64 0
  %972 = getelementptr inbounds %struct.LIST, %struct.LIST* %971, i32 0, i32 1
  store %union.rec* %962, %union.rec** %972, align 8
  %973 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %974 = load %union.rec*, %union.rec** @zz_res, align 8
  %975 = bitcast %union.rec* %974 to %struct.word_type*
  %976 = getelementptr inbounds %struct.word_type, %struct.word_type* %975, i32 0, i32 0
  %977 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %976, i32 0, i64 0
  %978 = getelementptr inbounds %struct.LIST, %struct.LIST* %977, i32 0, i32 0
  store %union.rec* %973, %union.rec** %978, align 8
  %979 = load %union.rec*, %union.rec** @zz_res, align 8
  %980 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %981 = bitcast %union.rec* %980 to %struct.word_type*
  %982 = getelementptr inbounds %struct.word_type, %struct.word_type* %981, i32 0, i32 0
  %983 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %982, i32 0, i64 0
  %984 = getelementptr inbounds %struct.LIST, %struct.LIST* %983, i32 0, i32 1
  store %union.rec* %979, %union.rec** %984, align 8
  br label %985

; <label>:985                                     ; preds = %944, %942
  %986 = phi %union.rec* [ %943, %942 ], [ %979, %944 ]
  br label %987

; <label>:987                                     ; preds = %985, %937
  %988 = phi %union.rec* [ %938, %937 ], [ %986, %985 ]
  %989 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %989, %union.rec** @zz_res, align 8
  %990 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %990, %union.rec** @zz_hold, align 8
  %991 = load %union.rec*, %union.rec** @zz_hold, align 8
  %992 = icmp eq %union.rec* %991, null
  br i1 %992, label %993, label %995

; <label>:993                                     ; preds = %987
  %994 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1043

; <label>:995                                     ; preds = %987
  %996 = load %union.rec*, %union.rec** @zz_res, align 8
  %997 = icmp eq %union.rec* %996, null
  br i1 %997, label %998, label %1000

; <label>:998                                     ; preds = %995
  %999 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1041

; <label>:1000                                    ; preds = %995
  %1001 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1002 = bitcast %union.rec* %1001 to %struct.word_type*
  %1003 = getelementptr inbounds %struct.word_type, %struct.word_type* %1002, i32 0, i32 0
  %1004 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1003, i32 0, i64 1
  %1005 = getelementptr inbounds %struct.LIST, %struct.LIST* %1004, i32 0, i32 0
  %1006 = load %union.rec*, %union.rec** %1005, align 8
  store %union.rec* %1006, %union.rec** @zz_tmp, align 8
  %1007 = load %union.rec*, %union.rec** @zz_res, align 8
  %1008 = bitcast %union.rec* %1007 to %struct.word_type*
  %1009 = getelementptr inbounds %struct.word_type, %struct.word_type* %1008, i32 0, i32 0
  %1010 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1009, i32 0, i64 1
  %1011 = getelementptr inbounds %struct.LIST, %struct.LIST* %1010, i32 0, i32 0
  %1012 = load %union.rec*, %union.rec** %1011, align 8
  %1013 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1014 = bitcast %union.rec* %1013 to %struct.word_type*
  %1015 = getelementptr inbounds %struct.word_type, %struct.word_type* %1014, i32 0, i32 0
  %1016 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1015, i32 0, i64 1
  %1017 = getelementptr inbounds %struct.LIST, %struct.LIST* %1016, i32 0, i32 0
  store %union.rec* %1012, %union.rec** %1017, align 8
  %1018 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1019 = load %union.rec*, %union.rec** @zz_res, align 8
  %1020 = bitcast %union.rec* %1019 to %struct.word_type*
  %1021 = getelementptr inbounds %struct.word_type, %struct.word_type* %1020, i32 0, i32 0
  %1022 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1021, i32 0, i64 1
  %1023 = getelementptr inbounds %struct.LIST, %struct.LIST* %1022, i32 0, i32 0
  %1024 = load %union.rec*, %union.rec** %1023, align 8
  %1025 = bitcast %union.rec* %1024 to %struct.word_type*
  %1026 = getelementptr inbounds %struct.word_type, %struct.word_type* %1025, i32 0, i32 0
  %1027 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1026, i32 0, i64 1
  %1028 = getelementptr inbounds %struct.LIST, %struct.LIST* %1027, i32 0, i32 1
  store %union.rec* %1018, %union.rec** %1028, align 8
  %1029 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1030 = load %union.rec*, %union.rec** @zz_res, align 8
  %1031 = bitcast %union.rec* %1030 to %struct.word_type*
  %1032 = getelementptr inbounds %struct.word_type, %struct.word_type* %1031, i32 0, i32 0
  %1033 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1032, i32 0, i64 1
  %1034 = getelementptr inbounds %struct.LIST, %struct.LIST* %1033, i32 0, i32 0
  store %union.rec* %1029, %union.rec** %1034, align 8
  %1035 = load %union.rec*, %union.rec** @zz_res, align 8
  %1036 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1037 = bitcast %union.rec* %1036 to %struct.word_type*
  %1038 = getelementptr inbounds %struct.word_type, %struct.word_type* %1037, i32 0, i32 0
  %1039 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1038, i32 0, i64 1
  %1040 = getelementptr inbounds %struct.LIST, %struct.LIST* %1039, i32 0, i32 1
  store %union.rec* %1035, %union.rec** %1040, align 8
  br label %1041

; <label>:1041                                    ; preds = %1000, %998
  %1042 = phi %union.rec* [ %999, %998 ], [ %1035, %1000 ]
  br label %1043

; <label>:1043                                    ; preds = %1041, %993
  %1044 = phi %union.rec* [ %994, %993 ], [ %1042, %1041 ]
  %1045 = load i32, i32* %7, align 4
  %1046 = icmp ne i32 %1045, 0
  br i1 %1046, label %1047, label %1469

; <label>:1047                                    ; preds = %1043
  store i32 1, i32* %jn, align 4
  %1048 = load %union.rec*, %union.rec** %2, align 8
  %1049 = bitcast %union.rec* %1048 to %struct.word_type*
  %1050 = getelementptr inbounds %struct.word_type, %struct.word_type* %1049, i32 0, i32 0
  %1051 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1050, i32 0, i64 0
  %1052 = getelementptr inbounds %struct.LIST, %struct.LIST* %1051, i32 0, i32 1
  %1053 = load %union.rec*, %union.rec** %1052, align 8
  store %union.rec* %1053, %union.rec** %link, align 8
  br label %1054

; <label>:1054                                    ; preds = %1143, %1047
  %1055 = load %union.rec*, %union.rec** %link, align 8
  %1056 = load %union.rec*, %union.rec** %2, align 8
  %1057 = icmp ne %union.rec* %1055, %1056
  br i1 %1057, label %1058, label %1150

; <label>:1058                                    ; preds = %1054
  %1059 = load %union.rec*, %union.rec** %link, align 8
  %1060 = bitcast %union.rec* %1059 to %struct.word_type*
  %1061 = getelementptr inbounds %struct.word_type, %struct.word_type* %1060, i32 0, i32 0
  %1062 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1061, i32 0, i64 1
  %1063 = getelementptr inbounds %struct.LIST, %struct.LIST* %1062, i32 0, i32 0
  %1064 = load %union.rec*, %union.rec** %1063, align 8
  store %union.rec* %1064, %union.rec** %y, align 8
  br label %1065

; <label>:1065                                    ; preds = %1075, %1058
  %1066 = load %union.rec*, %union.rec** %y, align 8
  %1067 = bitcast %union.rec* %1066 to %struct.word_type*
  %1068 = getelementptr inbounds %struct.word_type, %struct.word_type* %1067, i32 0, i32 1
  %1069 = bitcast %union.FIRST_UNION* %1068 to %struct.anon*
  %1070 = getelementptr inbounds %struct.anon, %struct.anon* %1069, i32 0, i32 0
  %1071 = load i8, i8* %1070, align 1
  %1072 = zext i8 %1071 to i32
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %1074, label %1082

; <label>:1074                                    ; preds = %1065
  br label %1075

; <label>:1075                                    ; preds = %1074
  %1076 = load %union.rec*, %union.rec** %y, align 8
  %1077 = bitcast %union.rec* %1076 to %struct.word_type*
  %1078 = getelementptr inbounds %struct.word_type, %struct.word_type* %1077, i32 0, i32 0
  %1079 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1078, i32 0, i64 1
  %1080 = getelementptr inbounds %struct.LIST, %struct.LIST* %1079, i32 0, i32 0
  %1081 = load %union.rec*, %union.rec** %1080, align 8
  store %union.rec* %1081, %union.rec** %y, align 8
  br label %1065

; <label>:1082                                    ; preds = %1065
  %1083 = load %union.rec*, %union.rec** %y, align 8
  %1084 = bitcast %union.rec* %1083 to %struct.word_type*
  %1085 = getelementptr inbounds %struct.word_type, %struct.word_type* %1084, i32 0, i32 1
  %1086 = bitcast %union.FIRST_UNION* %1085 to %struct.anon*
  %1087 = getelementptr inbounds %struct.anon, %struct.anon* %1086, i32 0, i32 0
  %1088 = load i8, i8* %1087, align 1
  %1089 = zext i8 %1088 to i32
  %1090 = icmp eq i32 %1089, 1
  br i1 %1090, label %1091, label %1107

; <label>:1091                                    ; preds = %1082
  %1092 = load i32, i32* %jn, align 4
  %1093 = icmp ne i32 %1092, 0
  br i1 %1093, label %1094, label %1104

; <label>:1094                                    ; preds = %1091
  %1095 = load %union.rec*, %union.rec** %y, align 8
  %1096 = bitcast %union.rec* %1095 to %struct.gapobj_type*
  %1097 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1096, i32 0, i32 3
  %1098 = bitcast %struct.GAP* %1097 to i16*
  %1099 = load i16, i16* %1098, align 4
  %1100 = lshr i16 %1099, 9
  %1101 = and i16 %1100, 1
  %1102 = zext i16 %1101 to i32
  %1103 = icmp ne i32 %1102, 0
  br label %1104

; <label>:1104                                    ; preds = %1094, %1091
  %1105 = phi i1 [ false, %1091 ], [ %1103, %1094 ]
  %1106 = zext i1 %1105 to i32
  store i32 %1106, i32* %jn, align 4
  br label %1142

; <label>:1107                                    ; preds = %1082
  %1108 = load %union.rec*, %union.rec** %y, align 8
  %1109 = bitcast %union.rec* %1108 to %struct.word_type*
  %1110 = getelementptr inbounds %struct.word_type, %struct.word_type* %1109, i32 0, i32 1
  %1111 = bitcast %union.FIRST_UNION* %1110 to %struct.anon*
  %1112 = getelementptr inbounds %struct.anon, %struct.anon* %1111, i32 0, i32 0
  %1113 = load i8, i8* %1112, align 1
  %1114 = zext i8 %1113 to i32
  %1115 = icmp eq i32 %1114, 9
  br i1 %1115, label %1116, label %1120

; <label>:1116                                    ; preds = %1107
  %1117 = load %union.rec*, %union.rec** %y, align 8
  %1118 = call i32 @SplitIsDefinite(%union.rec* %1117)
  %1119 = icmp ne i32 %1118, 0
  br i1 %1119, label %1140, label %1141

; <label>:1120                                    ; preds = %1107
  %1121 = load %union.rec*, %union.rec** %y, align 8
  %1122 = bitcast %union.rec* %1121 to %struct.word_type*
  %1123 = getelementptr inbounds %struct.word_type, %struct.word_type* %1122, i32 0, i32 1
  %1124 = bitcast %union.FIRST_UNION* %1123 to %struct.anon*
  %1125 = getelementptr inbounds %struct.anon, %struct.anon* %1124, i32 0, i32 0
  %1126 = load i8, i8* %1125, align 1
  %1127 = zext i8 %1126 to i32
  %1128 = icmp sge i32 %1127, 9
  br i1 %1128, label %1129, label %1138

; <label>:1129                                    ; preds = %1120
  %1130 = load %union.rec*, %union.rec** %y, align 8
  %1131 = bitcast %union.rec* %1130 to %struct.word_type*
  %1132 = getelementptr inbounds %struct.word_type, %struct.word_type* %1131, i32 0, i32 1
  %1133 = bitcast %union.FIRST_UNION* %1132 to %struct.anon*
  %1134 = getelementptr inbounds %struct.anon, %struct.anon* %1133, i32 0, i32 0
  %1135 = load i8, i8* %1134, align 1
  %1136 = zext i8 %1135 to i32
  %1137 = icmp sle i32 %1136, 99
  br label %1138

; <label>:1138                                    ; preds = %1129, %1120
  %1139 = phi i1 [ false, %1120 ], [ %1137, %1129 ]
  br i1 %1139, label %1140, label %1141

; <label>:1140                                    ; preds = %1138, %1116
  br label %1150

; <label>:1141                                    ; preds = %1138, %1116
  br label %1142

; <label>:1142                                    ; preds = %1141, %1104
  br label %1143

; <label>:1143                                    ; preds = %1142
  %1144 = load %union.rec*, %union.rec** %link, align 8
  %1145 = bitcast %union.rec* %1144 to %struct.word_type*
  %1146 = getelementptr inbounds %struct.word_type, %struct.word_type* %1145, i32 0, i32 0
  %1147 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1146, i32 0, i64 0
  %1148 = getelementptr inbounds %struct.LIST, %struct.LIST* %1147, i32 0, i32 1
  %1149 = load %union.rec*, %union.rec** %1148, align 8
  store %union.rec* %1149, %union.rec** %link, align 8
  br label %1054

; <label>:1150                                    ; preds = %1140, %1054
  %1151 = load %union.rec*, %union.rec** %link, align 8
  %1152 = load %union.rec*, %union.rec** %2, align 8
  %1153 = icmp ne %union.rec* %1151, %1152
  br i1 %1153, label %1157, label %1154

; <label>:1154                                    ; preds = %1150
  %1155 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1156 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1155, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i32 0, i32 0))
  br label %1157

; <label>:1157                                    ; preds = %1154, %1150
  %1158 = load %union.rec*, %union.rec** %y, align 8
  %1159 = bitcast %union.rec* %1158 to %struct.word_type*
  %1160 = getelementptr inbounds %struct.word_type, %struct.word_type* %1159, i32 0, i32 3
  %1161 = bitcast %union.THIRD_UNION* %1160 to %struct.anon.6*
  %1162 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1161, i32 0, i32 0
  %1163 = getelementptr inbounds [2 x i32], [2 x i32]* %1162, i32 0, i64 0
  %1164 = load i32, i32* %1163, align 4
  %1165 = load %union.rec*, %union.rec** %y, align 8
  %1166 = bitcast %union.rec* %1165 to %struct.word_type*
  %1167 = getelementptr inbounds %struct.word_type, %struct.word_type* %1166, i32 0, i32 3
  %1168 = bitcast %union.THIRD_UNION* %1167 to %struct.anon.6*
  %1169 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1168, i32 0, i32 1
  %1170 = getelementptr inbounds [2 x i32], [2 x i32]* %1169, i32 0, i64 0
  %1171 = load i32, i32* %1170, align 4
  %1172 = add nsw i32 %1164, %1171
  store i32 %1172, i32* %max_f, align 4
  store i32 %1172, i32* %f1, align 4
  %1173 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1173, %union.rec** %prev, align 8
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %1174 = load %union.rec*, %union.rec** %link, align 8
  %1175 = bitcast %union.rec* %1174 to %struct.word_type*
  %1176 = getelementptr inbounds %struct.word_type, %struct.word_type* %1175, i32 0, i32 0
  %1177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1176, i32 0, i64 0
  %1178 = getelementptr inbounds %struct.LIST, %struct.LIST* %1177, i32 0, i32 1
  %1179 = load %union.rec*, %union.rec** %1178, align 8
  store %union.rec* %1179, %union.rec** %link, align 8
  br label %1180

; <label>:1180                                    ; preds = %1276, %1157
  %1181 = load %union.rec*, %union.rec** %link, align 8
  %1182 = load %union.rec*, %union.rec** %2, align 8
  %1183 = icmp ne %union.rec* %1181, %1182
  br i1 %1183, label %1184, label %1283

; <label>:1184                                    ; preds = %1180
  %1185 = load %union.rec*, %union.rec** %link, align 8
  %1186 = bitcast %union.rec* %1185 to %struct.word_type*
  %1187 = getelementptr inbounds %struct.word_type, %struct.word_type* %1186, i32 0, i32 0
  %1188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1187, i32 0, i64 1
  %1189 = getelementptr inbounds %struct.LIST, %struct.LIST* %1188, i32 0, i32 0
  %1190 = load %union.rec*, %union.rec** %1189, align 8
  store %union.rec* %1190, %union.rec** %y, align 8
  br label %1191

; <label>:1191                                    ; preds = %1201, %1184
  %1192 = load %union.rec*, %union.rec** %y, align 8
  %1193 = bitcast %union.rec* %1192 to %struct.word_type*
  %1194 = getelementptr inbounds %struct.word_type, %struct.word_type* %1193, i32 0, i32 1
  %1195 = bitcast %union.FIRST_UNION* %1194 to %struct.anon*
  %1196 = getelementptr inbounds %struct.anon, %struct.anon* %1195, i32 0, i32 0
  %1197 = load i8, i8* %1196, align 1
  %1198 = zext i8 %1197 to i32
  %1199 = icmp eq i32 %1198, 0
  br i1 %1199, label %1200, label %1208

; <label>:1200                                    ; preds = %1191
  br label %1201

; <label>:1201                                    ; preds = %1200
  %1202 = load %union.rec*, %union.rec** %y, align 8
  %1203 = bitcast %union.rec* %1202 to %struct.word_type*
  %1204 = getelementptr inbounds %struct.word_type, %struct.word_type* %1203, i32 0, i32 0
  %1205 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1204, i32 0, i64 1
  %1206 = getelementptr inbounds %struct.LIST, %struct.LIST* %1205, i32 0, i32 0
  %1207 = load %union.rec*, %union.rec** %1206, align 8
  store %union.rec* %1207, %union.rec** %y, align 8
  br label %1191

; <label>:1208                                    ; preds = %1191
  %1209 = load %union.rec*, %union.rec** %y, align 8
  %1210 = bitcast %union.rec* %1209 to %struct.word_type*
  %1211 = getelementptr inbounds %struct.word_type, %struct.word_type* %1210, i32 0, i32 1
  %1212 = bitcast %union.FIRST_UNION* %1211 to %struct.anon*
  %1213 = getelementptr inbounds %struct.anon, %struct.anon* %1212, i32 0, i32 0
  %1214 = load i8, i8* %1213, align 1
  %1215 = zext i8 %1214 to i32
  %1216 = icmp eq i32 %1215, 1
  br i1 %1216, label %1217, label %1234

; <label>:1217                                    ; preds = %1208
  %1218 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1218, %union.rec** %g, align 8
  %1219 = load i32, i32* %jn, align 4
  %1220 = icmp ne i32 %1219, 0
  br i1 %1220, label %1221, label %1231

; <label>:1221                                    ; preds = %1217
  %1222 = load %union.rec*, %union.rec** %y, align 8
  %1223 = bitcast %union.rec* %1222 to %struct.gapobj_type*
  %1224 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1223, i32 0, i32 3
  %1225 = bitcast %struct.GAP* %1224 to i16*
  %1226 = load i16, i16* %1225, align 4
  %1227 = lshr i16 %1226, 9
  %1228 = and i16 %1227, 1
  %1229 = zext i16 %1228 to i32
  %1230 = icmp ne i32 %1229, 0
  br label %1231

; <label>:1231                                    ; preds = %1221, %1217
  %1232 = phi i1 [ false, %1217 ], [ %1230, %1221 ]
  %1233 = zext i1 %1232 to i32
  store i32 %1233, i32* %jn, align 4
  br label %1275

; <label>:1234                                    ; preds = %1208
  %1235 = load %union.rec*, %union.rec** %y, align 8
  %1236 = bitcast %union.rec* %1235 to %struct.word_type*
  %1237 = getelementptr inbounds %struct.word_type, %struct.word_type* %1236, i32 0, i32 1
  %1238 = bitcast %union.FIRST_UNION* %1237 to %struct.anon*
  %1239 = getelementptr inbounds %struct.anon, %struct.anon* %1238, i32 0, i32 0
  %1240 = load i8, i8* %1239, align 1
  %1241 = zext i8 %1240 to i32
  %1242 = icmp eq i32 %1241, 9
  br i1 %1242, label %1243, label %1247

; <label>:1243                                    ; preds = %1234
  %1244 = load %union.rec*, %union.rec** %y, align 8
  %1245 = call i32 @SplitIsDefinite(%union.rec* %1244)
  %1246 = icmp ne i32 %1245, 0
  br i1 %1246, label %1267, label %1274

; <label>:1247                                    ; preds = %1234
  %1248 = load %union.rec*, %union.rec** %y, align 8
  %1249 = bitcast %union.rec* %1248 to %struct.word_type*
  %1250 = getelementptr inbounds %struct.word_type, %struct.word_type* %1249, i32 0, i32 1
  %1251 = bitcast %union.FIRST_UNION* %1250 to %struct.anon*
  %1252 = getelementptr inbounds %struct.anon, %struct.anon* %1251, i32 0, i32 0
  %1253 = load i8, i8* %1252, align 1
  %1254 = zext i8 %1253 to i32
  %1255 = icmp sge i32 %1254, 9
  br i1 %1255, label %1256, label %1265

; <label>:1256                                    ; preds = %1247
  %1257 = load %union.rec*, %union.rec** %y, align 8
  %1258 = bitcast %union.rec* %1257 to %struct.word_type*
  %1259 = getelementptr inbounds %struct.word_type, %struct.word_type* %1258, i32 0, i32 1
  %1260 = bitcast %union.FIRST_UNION* %1259 to %struct.anon*
  %1261 = getelementptr inbounds %struct.anon, %struct.anon* %1260, i32 0, i32 0
  %1262 = load i8, i8* %1261, align 1
  %1263 = zext i8 %1262 to i32
  %1264 = icmp sle i32 %1263, 99
  br label %1265

; <label>:1265                                    ; preds = %1256, %1247
  %1266 = phi i1 [ false, %1247 ], [ %1264, %1256 ]
  br i1 %1266, label %1267, label %1274

; <label>:1267                                    ; preds = %1265, %1243
  %1268 = load %union.rec*, %union.rec** %g, align 8
  %1269 = icmp ne %union.rec* %1268, null
  br i1 %1269, label %1273, label %1270

; <label>:1270                                    ; preds = %1267
  %1271 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1272 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1271, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0))
  br label %1273

; <label>:1273                                    ; preds = %1270, %1267
  br label %1283

; <label>:1274                                    ; preds = %1265, %1243
  br label %1275

; <label>:1275                                    ; preds = %1274, %1231
  br label %1276

; <label>:1276                                    ; preds = %1275
  %1277 = load %union.rec*, %union.rec** %link, align 8
  %1278 = bitcast %union.rec* %1277 to %struct.word_type*
  %1279 = getelementptr inbounds %struct.word_type, %struct.word_type* %1278, i32 0, i32 0
  %1280 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1279, i32 0, i64 0
  %1281 = getelementptr inbounds %struct.LIST, %struct.LIST* %1280, i32 0, i32 1
  %1282 = load %union.rec*, %union.rec** %1281, align 8
  store %union.rec* %1282, %union.rec** %link, align 8
  br label %1180

; <label>:1283                                    ; preds = %1273, %1180
  br label %1284

; <label>:1284                                    ; preds = %1467, %1283
  %1285 = load %union.rec*, %union.rec** %link, align 8
  %1286 = load %union.rec*, %union.rec** %2, align 8
  %1287 = icmp ne %union.rec* %1285, %1286
  br i1 %1287, label %1288, label %1468

; <label>:1288                                    ; preds = %1284
  %1289 = load %union.rec*, %union.rec** %prev, align 8
  %1290 = bitcast %union.rec* %1289 to %struct.word_type*
  %1291 = getelementptr inbounds %struct.word_type, %struct.word_type* %1290, i32 0, i32 3
  %1292 = bitcast %union.THIRD_UNION* %1291 to %struct.anon.6*
  %1293 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1292, i32 0, i32 1
  %1294 = getelementptr inbounds [2 x i32], [2 x i32]* %1293, i32 0, i64 0
  %1295 = load i32, i32* %1294, align 4
  %1296 = load %union.rec*, %union.rec** %y, align 8
  %1297 = bitcast %union.rec* %1296 to %struct.word_type*
  %1298 = getelementptr inbounds %struct.word_type, %struct.word_type* %1297, i32 0, i32 3
  %1299 = bitcast %union.THIRD_UNION* %1298 to %struct.anon.6*
  %1300 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1299, i32 0, i32 0
  %1301 = getelementptr inbounds [2 x i32], [2 x i32]* %1300, i32 0, i64 0
  %1302 = load i32, i32* %1301, align 4
  %1303 = load %union.rec*, %union.rec** %y, align 8
  %1304 = bitcast %union.rec* %1303 to %struct.word_type*
  %1305 = getelementptr inbounds %struct.word_type, %struct.word_type* %1304, i32 0, i32 3
  %1306 = bitcast %union.THIRD_UNION* %1305 to %struct.anon.6*
  %1307 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1306, i32 0, i32 1
  %1308 = getelementptr inbounds [2 x i32], [2 x i32]* %1307, i32 0, i64 0
  %1309 = load i32, i32* %1308, align 4
  %1310 = load %union.rec*, %union.rec** %g, align 8
  %1311 = bitcast %union.rec* %1310 to %struct.gapobj_type*
  %1312 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1311, i32 0, i32 3
  %1313 = call i32 @MinGap(i32 %1295, i32 %1302, i32 %1309, %struct.GAP* %1312)
  %1314 = load %union.rec*, %union.rec** %prev, align 8
  %1315 = bitcast %union.rec* %1314 to %struct.word_type*
  %1316 = getelementptr inbounds %struct.word_type, %struct.word_type* %1315, i32 0, i32 3
  %1317 = bitcast %union.THIRD_UNION* %1316 to %struct.anon.6*
  %1318 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1317, i32 0, i32 1
  %1319 = getelementptr inbounds [2 x i32], [2 x i32]* %1318, i32 0, i64 0
  %1320 = load i32, i32* %1319, align 4
  %1321 = sub nsw i32 %1313, %1320
  %1322 = load %union.rec*, %union.rec** %y, align 8
  %1323 = bitcast %union.rec* %1322 to %struct.word_type*
  %1324 = getelementptr inbounds %struct.word_type, %struct.word_type* %1323, i32 0, i32 3
  %1325 = bitcast %union.THIRD_UNION* %1324 to %struct.anon.6*
  %1326 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1325, i32 0, i32 0
  %1327 = getelementptr inbounds [2 x i32], [2 x i32]* %1326, i32 0, i64 0
  %1328 = load i32, i32* %1327, align 4
  %1329 = add nsw i32 %1321, %1328
  %1330 = load i32, i32* %f1, align 4
  %1331 = add nsw i32 %1330, %1329
  store i32 %1331, i32* %f1, align 4
  %1332 = load i32, i32* %f1, align 4
  %1333 = load i32, i32* %max_f, align 4
  %1334 = icmp slt i32 %1332, %1333
  br i1 %1334, label %1335, label %1354

; <label>:1335                                    ; preds = %1288
  %1336 = load %union.rec*, %union.rec** %g, align 8
  %1337 = bitcast %union.rec* %1336 to %struct.gapobj_type*
  %1338 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1337, i32 0, i32 3
  %1339 = bitcast %struct.GAP* %1338 to i16*
  %1340 = load i16, i16* %1339, align 4
  %1341 = lshr i16 %1340, 10
  %1342 = and i16 %1341, 7
  %1343 = zext i16 %1342 to i32
  %1344 = icmp eq i32 %1343, 1
  br i1 %1344, label %1345, label %1353

; <label>:1345                                    ; preds = %1335
  %1346 = load %union.rec*, %union.rec** %g, align 8
  %1347 = bitcast %union.rec* %1346 to %struct.gapobj_type*
  %1348 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1347, i32 0, i32 3
  %1349 = bitcast %struct.GAP* %1348 to i16*
  %1350 = load i16, i16* %1349, align 4
  %1351 = and i16 %1350, -129
  %1352 = or i16 %1351, 128
  store i16 %1352, i16* %1349, align 4
  br label %1353

; <label>:1353                                    ; preds = %1345, %1335
  br label %1356

; <label>:1354                                    ; preds = %1288
  %1355 = load i32, i32* %f1, align 4
  store i32 %1355, i32* %max_f, align 4
  br label %1356

; <label>:1356                                    ; preds = %1354, %1353
  %1357 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1357, %union.rec** %prev, align 8
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %1358 = load %union.rec*, %union.rec** %link, align 8
  %1359 = bitcast %union.rec* %1358 to %struct.word_type*
  %1360 = getelementptr inbounds %struct.word_type, %struct.word_type* %1359, i32 0, i32 0
  %1361 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1360, i32 0, i64 0
  %1362 = getelementptr inbounds %struct.LIST, %struct.LIST* %1361, i32 0, i32 1
  %1363 = load %union.rec*, %union.rec** %1362, align 8
  store %union.rec* %1363, %union.rec** %link, align 8
  br label %1364

; <label>:1364                                    ; preds = %1460, %1356
  %1365 = load %union.rec*, %union.rec** %link, align 8
  %1366 = load %union.rec*, %union.rec** %2, align 8
  %1367 = icmp ne %union.rec* %1365, %1366
  br i1 %1367, label %1368, label %1467

; <label>:1368                                    ; preds = %1364
  %1369 = load %union.rec*, %union.rec** %link, align 8
  %1370 = bitcast %union.rec* %1369 to %struct.word_type*
  %1371 = getelementptr inbounds %struct.word_type, %struct.word_type* %1370, i32 0, i32 0
  %1372 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1371, i32 0, i64 1
  %1373 = getelementptr inbounds %struct.LIST, %struct.LIST* %1372, i32 0, i32 0
  %1374 = load %union.rec*, %union.rec** %1373, align 8
  store %union.rec* %1374, %union.rec** %y, align 8
  br label %1375

; <label>:1375                                    ; preds = %1385, %1368
  %1376 = load %union.rec*, %union.rec** %y, align 8
  %1377 = bitcast %union.rec* %1376 to %struct.word_type*
  %1378 = getelementptr inbounds %struct.word_type, %struct.word_type* %1377, i32 0, i32 1
  %1379 = bitcast %union.FIRST_UNION* %1378 to %struct.anon*
  %1380 = getelementptr inbounds %struct.anon, %struct.anon* %1379, i32 0, i32 0
  %1381 = load i8, i8* %1380, align 1
  %1382 = zext i8 %1381 to i32
  %1383 = icmp eq i32 %1382, 0
  br i1 %1383, label %1384, label %1392

; <label>:1384                                    ; preds = %1375
  br label %1385

; <label>:1385                                    ; preds = %1384
  %1386 = load %union.rec*, %union.rec** %y, align 8
  %1387 = bitcast %union.rec* %1386 to %struct.word_type*
  %1388 = getelementptr inbounds %struct.word_type, %struct.word_type* %1387, i32 0, i32 0
  %1389 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1388, i32 0, i64 1
  %1390 = getelementptr inbounds %struct.LIST, %struct.LIST* %1389, i32 0, i32 0
  %1391 = load %union.rec*, %union.rec** %1390, align 8
  store %union.rec* %1391, %union.rec** %y, align 8
  br label %1375

; <label>:1392                                    ; preds = %1375
  %1393 = load %union.rec*, %union.rec** %y, align 8
  %1394 = bitcast %union.rec* %1393 to %struct.word_type*
  %1395 = getelementptr inbounds %struct.word_type, %struct.word_type* %1394, i32 0, i32 1
  %1396 = bitcast %union.FIRST_UNION* %1395 to %struct.anon*
  %1397 = getelementptr inbounds %struct.anon, %struct.anon* %1396, i32 0, i32 0
  %1398 = load i8, i8* %1397, align 1
  %1399 = zext i8 %1398 to i32
  %1400 = icmp eq i32 %1399, 1
  br i1 %1400, label %1401, label %1418

; <label>:1401                                    ; preds = %1392
  %1402 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1402, %union.rec** %g, align 8
  %1403 = load i32, i32* %jn, align 4
  %1404 = icmp ne i32 %1403, 0
  br i1 %1404, label %1405, label %1415

; <label>:1405                                    ; preds = %1401
  %1406 = load %union.rec*, %union.rec** %y, align 8
  %1407 = bitcast %union.rec* %1406 to %struct.gapobj_type*
  %1408 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1407, i32 0, i32 3
  %1409 = bitcast %struct.GAP* %1408 to i16*
  %1410 = load i16, i16* %1409, align 4
  %1411 = lshr i16 %1410, 9
  %1412 = and i16 %1411, 1
  %1413 = zext i16 %1412 to i32
  %1414 = icmp ne i32 %1413, 0
  br label %1415

; <label>:1415                                    ; preds = %1405, %1401
  %1416 = phi i1 [ false, %1401 ], [ %1414, %1405 ]
  %1417 = zext i1 %1416 to i32
  store i32 %1417, i32* %jn, align 4
  br label %1459

; <label>:1418                                    ; preds = %1392
  %1419 = load %union.rec*, %union.rec** %y, align 8
  %1420 = bitcast %union.rec* %1419 to %struct.word_type*
  %1421 = getelementptr inbounds %struct.word_type, %struct.word_type* %1420, i32 0, i32 1
  %1422 = bitcast %union.FIRST_UNION* %1421 to %struct.anon*
  %1423 = getelementptr inbounds %struct.anon, %struct.anon* %1422, i32 0, i32 0
  %1424 = load i8, i8* %1423, align 1
  %1425 = zext i8 %1424 to i32
  %1426 = icmp eq i32 %1425, 9
  br i1 %1426, label %1427, label %1431

; <label>:1427                                    ; preds = %1418
  %1428 = load %union.rec*, %union.rec** %y, align 8
  %1429 = call i32 @SplitIsDefinite(%union.rec* %1428)
  %1430 = icmp ne i32 %1429, 0
  br i1 %1430, label %1451, label %1458

; <label>:1431                                    ; preds = %1418
  %1432 = load %union.rec*, %union.rec** %y, align 8
  %1433 = bitcast %union.rec* %1432 to %struct.word_type*
  %1434 = getelementptr inbounds %struct.word_type, %struct.word_type* %1433, i32 0, i32 1
  %1435 = bitcast %union.FIRST_UNION* %1434 to %struct.anon*
  %1436 = getelementptr inbounds %struct.anon, %struct.anon* %1435, i32 0, i32 0
  %1437 = load i8, i8* %1436, align 1
  %1438 = zext i8 %1437 to i32
  %1439 = icmp sge i32 %1438, 9
  br i1 %1439, label %1440, label %1449

; <label>:1440                                    ; preds = %1431
  %1441 = load %union.rec*, %union.rec** %y, align 8
  %1442 = bitcast %union.rec* %1441 to %struct.word_type*
  %1443 = getelementptr inbounds %struct.word_type, %struct.word_type* %1442, i32 0, i32 1
  %1444 = bitcast %union.FIRST_UNION* %1443 to %struct.anon*
  %1445 = getelementptr inbounds %struct.anon, %struct.anon* %1444, i32 0, i32 0
  %1446 = load i8, i8* %1445, align 1
  %1447 = zext i8 %1446 to i32
  %1448 = icmp sle i32 %1447, 99
  br label %1449

; <label>:1449                                    ; preds = %1440, %1431
  %1450 = phi i1 [ false, %1431 ], [ %1448, %1440 ]
  br i1 %1450, label %1451, label %1458

; <label>:1451                                    ; preds = %1449, %1427
  %1452 = load %union.rec*, %union.rec** %g, align 8
  %1453 = icmp ne %union.rec* %1452, null
  br i1 %1453, label %1457, label %1454

; <label>:1454                                    ; preds = %1451
  %1455 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1456 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1455, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0))
  br label %1457

; <label>:1457                                    ; preds = %1454, %1451
  br label %1467

; <label>:1458                                    ; preds = %1449, %1427
  br label %1459

; <label>:1459                                    ; preds = %1458, %1415
  br label %1460

; <label>:1460                                    ; preds = %1459
  %1461 = load %union.rec*, %union.rec** %link, align 8
  %1462 = bitcast %union.rec* %1461 to %struct.word_type*
  %1463 = getelementptr inbounds %struct.word_type, %struct.word_type* %1462, i32 0, i32 0
  %1464 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1463, i32 0, i64 0
  %1465 = getelementptr inbounds %struct.LIST, %struct.LIST* %1464, i32 0, i32 1
  %1466 = load %union.rec*, %union.rec** %1465, align 8
  store %union.rec* %1466, %union.rec** %link, align 8
  br label %1364

; <label>:1467                                    ; preds = %1457, %1364
  br label %1284

; <label>:1468                                    ; preds = %1284
  br label %1469

; <label>:1469                                    ; preds = %1468, %1043
  %1470 = load %union.rec*, %union.rec** %2, align 8
  %1471 = bitcast %union.rec* %1470 to %struct.closure_type*
  %1472 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1471, i32 0, i32 4
  %1473 = bitcast %union.FOURTH_UNION* %1472 to %struct.STYLE*
  %1474 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1473, i32 0, i32 1
  %1475 = bitcast %union.anon.10* %1474 to %struct.anon.11*
  %1476 = bitcast %struct.anon.11* %1475 to i8*
  %1477 = load i8, i8* %1476, align 4
  %1478 = and i8 %1477, 3
  %1479 = zext i8 %1478 to i32
  %1480 = icmp eq i32 %1479, 0
  br i1 %1480, label %1481, label %1487

; <label>:1481                                    ; preds = %1469
  %1482 = load %union.rec*, %union.rec** %2, align 8
  %1483 = bitcast %union.rec* %1482 to %struct.word_type*
  %1484 = getelementptr inbounds %struct.word_type, %struct.word_type* %1483, i32 0, i32 1
  %1485 = bitcast %union.FIRST_UNION* %1484 to %struct.FILE_POS*
  %1486 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 14, i32 7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %1485)
  br label %1487

; <label>:1487                                    ; preds = %1481, %1469
  store i32 0, i32* %hyph_allowed, align 4
  br label %1488

; <label>:1488                                    ; preds = %4426, %1487
  %1489 = load %union.rec*, %union.rec** %2, align 8
  %1490 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  store %union.rec* %1489, %union.rec** %1490, align 8
  store i32 1, i32* %jn2, align 4
  %1491 = load %union.rec*, %union.rec** %2, align 8
  %1492 = bitcast %union.rec* %1491 to %struct.word_type*
  %1493 = getelementptr inbounds %struct.word_type, %struct.word_type* %1492, i32 0, i32 0
  %1494 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1493, i32 0, i64 0
  %1495 = getelementptr inbounds %struct.LIST, %struct.LIST* %1494, i32 0, i32 1
  %1496 = load %union.rec*, %union.rec** %1495, align 8
  store %union.rec* %1496, %union.rec** %rlink, align 8
  br label %1497

; <label>:1497                                    ; preds = %1586, %1488
  %1498 = load %union.rec*, %union.rec** %rlink, align 8
  %1499 = load %union.rec*, %union.rec** %2, align 8
  %1500 = icmp ne %union.rec* %1498, %1499
  br i1 %1500, label %1501, label %1593

; <label>:1501                                    ; preds = %1497
  %1502 = load %union.rec*, %union.rec** %rlink, align 8
  %1503 = bitcast %union.rec* %1502 to %struct.word_type*
  %1504 = getelementptr inbounds %struct.word_type, %struct.word_type* %1503, i32 0, i32 0
  %1505 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1504, i32 0, i64 1
  %1506 = getelementptr inbounds %struct.LIST, %struct.LIST* %1505, i32 0, i32 0
  %1507 = load %union.rec*, %union.rec** %1506, align 8
  store %union.rec* %1507, %union.rec** %right, align 8
  br label %1508

; <label>:1508                                    ; preds = %1518, %1501
  %1509 = load %union.rec*, %union.rec** %right, align 8
  %1510 = bitcast %union.rec* %1509 to %struct.word_type*
  %1511 = getelementptr inbounds %struct.word_type, %struct.word_type* %1510, i32 0, i32 1
  %1512 = bitcast %union.FIRST_UNION* %1511 to %struct.anon*
  %1513 = getelementptr inbounds %struct.anon, %struct.anon* %1512, i32 0, i32 0
  %1514 = load i8, i8* %1513, align 1
  %1515 = zext i8 %1514 to i32
  %1516 = icmp eq i32 %1515, 0
  br i1 %1516, label %1517, label %1525

; <label>:1517                                    ; preds = %1508
  br label %1518

; <label>:1518                                    ; preds = %1517
  %1519 = load %union.rec*, %union.rec** %right, align 8
  %1520 = bitcast %union.rec* %1519 to %struct.word_type*
  %1521 = getelementptr inbounds %struct.word_type, %struct.word_type* %1520, i32 0, i32 0
  %1522 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1521, i32 0, i64 1
  %1523 = getelementptr inbounds %struct.LIST, %struct.LIST* %1522, i32 0, i32 0
  %1524 = load %union.rec*, %union.rec** %1523, align 8
  store %union.rec* %1524, %union.rec** %right, align 8
  br label %1508

; <label>:1525                                    ; preds = %1508
  %1526 = load %union.rec*, %union.rec** %right, align 8
  %1527 = bitcast %union.rec* %1526 to %struct.word_type*
  %1528 = getelementptr inbounds %struct.word_type, %struct.word_type* %1527, i32 0, i32 1
  %1529 = bitcast %union.FIRST_UNION* %1528 to %struct.anon*
  %1530 = getelementptr inbounds %struct.anon, %struct.anon* %1529, i32 0, i32 0
  %1531 = load i8, i8* %1530, align 1
  %1532 = zext i8 %1531 to i32
  %1533 = icmp eq i32 %1532, 1
  br i1 %1533, label %1534, label %1550

; <label>:1534                                    ; preds = %1525
  %1535 = load i32, i32* %jn2, align 4
  %1536 = icmp ne i32 %1535, 0
  br i1 %1536, label %1537, label %1547

; <label>:1537                                    ; preds = %1534
  %1538 = load %union.rec*, %union.rec** %right, align 8
  %1539 = bitcast %union.rec* %1538 to %struct.gapobj_type*
  %1540 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1539, i32 0, i32 3
  %1541 = bitcast %struct.GAP* %1540 to i16*
  %1542 = load i16, i16* %1541, align 4
  %1543 = lshr i16 %1542, 9
  %1544 = and i16 %1543, 1
  %1545 = zext i16 %1544 to i32
  %1546 = icmp ne i32 %1545, 0
  br label %1547

; <label>:1547                                    ; preds = %1537, %1534
  %1548 = phi i1 [ false, %1534 ], [ %1546, %1537 ]
  %1549 = zext i1 %1548 to i32
  store i32 %1549, i32* %jn2, align 4
  br label %1585

; <label>:1550                                    ; preds = %1525
  %1551 = load %union.rec*, %union.rec** %right, align 8
  %1552 = bitcast %union.rec* %1551 to %struct.word_type*
  %1553 = getelementptr inbounds %struct.word_type, %struct.word_type* %1552, i32 0, i32 1
  %1554 = bitcast %union.FIRST_UNION* %1553 to %struct.anon*
  %1555 = getelementptr inbounds %struct.anon, %struct.anon* %1554, i32 0, i32 0
  %1556 = load i8, i8* %1555, align 1
  %1557 = zext i8 %1556 to i32
  %1558 = icmp eq i32 %1557, 9
  br i1 %1558, label %1559, label %1563

; <label>:1559                                    ; preds = %1550
  %1560 = load %union.rec*, %union.rec** %right, align 8
  %1561 = call i32 @SplitIsDefinite(%union.rec* %1560)
  %1562 = icmp ne i32 %1561, 0
  br i1 %1562, label %1583, label %1584

; <label>:1563                                    ; preds = %1550
  %1564 = load %union.rec*, %union.rec** %right, align 8
  %1565 = bitcast %union.rec* %1564 to %struct.word_type*
  %1566 = getelementptr inbounds %struct.word_type, %struct.word_type* %1565, i32 0, i32 1
  %1567 = bitcast %union.FIRST_UNION* %1566 to %struct.anon*
  %1568 = getelementptr inbounds %struct.anon, %struct.anon* %1567, i32 0, i32 0
  %1569 = load i8, i8* %1568, align 1
  %1570 = zext i8 %1569 to i32
  %1571 = icmp sge i32 %1570, 9
  br i1 %1571, label %1572, label %1581

; <label>:1572                                    ; preds = %1563
  %1573 = load %union.rec*, %union.rec** %right, align 8
  %1574 = bitcast %union.rec* %1573 to %struct.word_type*
  %1575 = getelementptr inbounds %struct.word_type, %struct.word_type* %1574, i32 0, i32 1
  %1576 = bitcast %union.FIRST_UNION* %1575 to %struct.anon*
  %1577 = getelementptr inbounds %struct.anon, %struct.anon* %1576, i32 0, i32 0
  %1578 = load i8, i8* %1577, align 1
  %1579 = zext i8 %1578 to i32
  %1580 = icmp sle i32 %1579, 99
  br label %1581

; <label>:1581                                    ; preds = %1572, %1563
  %1582 = phi i1 [ false, %1563 ], [ %1580, %1572 ]
  br i1 %1582, label %1583, label %1584

; <label>:1583                                    ; preds = %1581, %1559
  br label %1593

; <label>:1584                                    ; preds = %1581, %1559
  br label %1585

; <label>:1585                                    ; preds = %1584, %1547
  br label %1586

; <label>:1586                                    ; preds = %1585
  %1587 = load %union.rec*, %union.rec** %rlink, align 8
  %1588 = bitcast %union.rec* %1587 to %struct.word_type*
  %1589 = getelementptr inbounds %struct.word_type, %struct.word_type* %1588, i32 0, i32 0
  %1590 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1589, i32 0, i64 0
  %1591 = getelementptr inbounds %struct.LIST, %struct.LIST* %1590, i32 0, i32 1
  %1592 = load %union.rec*, %union.rec** %1591, align 8
  store %union.rec* %1592, %union.rec** %rlink, align 8
  br label %1497

; <label>:1593                                    ; preds = %1583, %1497
  %1594 = load %union.rec*, %union.rec** %rlink, align 8
  %1595 = load %union.rec*, %union.rec** %2, align 8
  %1596 = icmp eq %union.rec* %1594, %1595
  br i1 %1596, label %1597, label %1601

; <label>:1597                                    ; preds = %1593
  %1598 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 5, i8* %1598, align 1
  %1599 = load %union.rec*, %union.rec** %2, align 8
  %1600 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 1
  store %union.rec* %1599, %union.rec** %1600, align 8
  br label %2517

; <label>:1601                                    ; preds = %1593
  %1602 = load %union.rec*, %union.rec** %4, align 8
  %1603 = icmp ne %union.rec* %1602, null
  br i1 %1603, label %1604, label %1638

; <label>:1604                                    ; preds = %1601
  %1605 = load %union.rec*, %union.rec** %4, align 8
  %1606 = bitcast %union.rec* %1605 to %struct.word_type*
  %1607 = getelementptr inbounds %struct.word_type, %struct.word_type* %1606, i32 0, i32 0
  %1608 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1607, i32 0, i64 0
  %1609 = getelementptr inbounds %struct.LIST, %struct.LIST* %1608, i32 0, i32 1
  %1610 = load %union.rec*, %union.rec** %1609, align 8
  %1611 = bitcast %union.rec* %1610 to %struct.word_type*
  %1612 = getelementptr inbounds %struct.word_type, %struct.word_type* %1611, i32 0, i32 0
  %1613 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1612, i32 0, i64 1
  %1614 = getelementptr inbounds %struct.LIST, %struct.LIST* %1613, i32 0, i32 0
  %1615 = load %union.rec*, %union.rec** %1614, align 8
  %1616 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  store %union.rec* %1615, %union.rec** %1616, align 8
  br label %1617

; <label>:1617                                    ; preds = %1628, %1604
  %1618 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %1619 = load %union.rec*, %union.rec** %1618, align 8
  %1620 = bitcast %union.rec* %1619 to %struct.word_type*
  %1621 = getelementptr inbounds %struct.word_type, %struct.word_type* %1620, i32 0, i32 1
  %1622 = bitcast %union.FIRST_UNION* %1621 to %struct.anon*
  %1623 = getelementptr inbounds %struct.anon, %struct.anon* %1622, i32 0, i32 0
  %1624 = load i8, i8* %1623, align 1
  %1625 = zext i8 %1624 to i32
  %1626 = icmp eq i32 %1625, 0
  br i1 %1626, label %1627, label %1637

; <label>:1627                                    ; preds = %1617
  br label %1628

; <label>:1628                                    ; preds = %1627
  %1629 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %1630 = load %union.rec*, %union.rec** %1629, align 8
  %1631 = bitcast %union.rec* %1630 to %struct.word_type*
  %1632 = getelementptr inbounds %struct.word_type, %struct.word_type* %1631, i32 0, i32 0
  %1633 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1632, i32 0, i64 1
  %1634 = getelementptr inbounds %struct.LIST, %struct.LIST* %1633, i32 0, i32 0
  %1635 = load %union.rec*, %union.rec** %1634, align 8
  %1636 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  store %union.rec* %1635, %union.rec** %1636, align 8
  br label %1617

; <label>:1637                                    ; preds = %1617
  br label %1640

; <label>:1638                                    ; preds = %1601
  %1639 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  store %union.rec* null, %union.rec** %1639, align 8
  br label %1640

; <label>:1640                                    ; preds = %1638, %1637
  %1641 = load %union.rec*, %union.rec** %right, align 8
  %1642 = bitcast %union.rec* %1641 to %struct.word_type*
  %1643 = getelementptr inbounds %struct.word_type, %struct.word_type* %1642, i32 0, i32 3
  %1644 = bitcast %union.THIRD_UNION* %1643 to %struct.anon.6*
  %1645 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1644, i32 0, i32 0
  %1646 = getelementptr inbounds [2 x i32], [2 x i32]* %1645, i32 0, i64 0
  %1647 = load i32, i32* %1646, align 4
  %1648 = load %union.rec*, %union.rec** %right, align 8
  %1649 = bitcast %union.rec* %1648 to %struct.word_type*
  %1650 = getelementptr inbounds %struct.word_type, %struct.word_type* %1649, i32 0, i32 3
  %1651 = bitcast %union.THIRD_UNION* %1650 to %struct.anon.6*
  %1652 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1651, i32 0, i32 1
  %1653 = getelementptr inbounds [2 x i32], [2 x i32]* %1652, i32 0, i64 0
  %1654 = load i32, i32* %1653, align 4
  %1655 = add nsw i32 %1647, %1654
  %1656 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  store i32 %1655, i32* %1656, align 4
  %1657 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 4
  store i32 0, i32* %1657, align 4
  %1658 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  store i8 0, i8* %1658, align 1
  store i32 0, i32* %unbreakable_at_right, align 4
  %1659 = load %union.rec*, %union.rec** %rlink, align 8
  %1660 = bitcast %union.rec* %1659 to %struct.word_type*
  %1661 = getelementptr inbounds %struct.word_type, %struct.word_type* %1660, i32 0, i32 0
  %1662 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1661, i32 0, i64 1
  %1663 = getelementptr inbounds %struct.LIST, %struct.LIST* %1662, i32 0, i32 0
  %1664 = load %union.rec*, %union.rec** %1663, align 8
  store %union.rec* %1664, %union.rec** %tmp3, align 8
  br label %1665

; <label>:1665                                    ; preds = %1675, %1640
  %1666 = load %union.rec*, %union.rec** %tmp3, align 8
  %1667 = bitcast %union.rec* %1666 to %struct.word_type*
  %1668 = getelementptr inbounds %struct.word_type, %struct.word_type* %1667, i32 0, i32 1
  %1669 = bitcast %union.FIRST_UNION* %1668 to %struct.anon*
  %1670 = getelementptr inbounds %struct.anon, %struct.anon* %1669, i32 0, i32 0
  %1671 = load i8, i8* %1670, align 1
  %1672 = zext i8 %1671 to i32
  %1673 = icmp eq i32 %1672, 0
  br i1 %1673, label %1674, label %1682

; <label>:1674                                    ; preds = %1665
  br label %1675

; <label>:1675                                    ; preds = %1674
  %1676 = load %union.rec*, %union.rec** %tmp3, align 8
  %1677 = bitcast %union.rec* %1676 to %struct.word_type*
  %1678 = getelementptr inbounds %struct.word_type, %struct.word_type* %1677, i32 0, i32 0
  %1679 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1678, i32 0, i64 1
  %1680 = getelementptr inbounds %struct.LIST, %struct.LIST* %1679, i32 0, i32 0
  %1681 = load %union.rec*, %union.rec** %1680, align 8
  store %union.rec* %1681, %union.rec** %tmp3, align 8
  br label %1665

; <label>:1682                                    ; preds = %1665
  store %union.rec* null, %union.rec** %newg, align 8
  store i32 1, i32* %jn4, align 4
  %1683 = load %union.rec*, %union.rec** %rlink, align 8
  %1684 = bitcast %union.rec* %1683 to %struct.word_type*
  %1685 = getelementptr inbounds %struct.word_type, %struct.word_type* %1684, i32 0, i32 0
  %1686 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1685, i32 0, i64 0
  %1687 = getelementptr inbounds %struct.LIST, %struct.LIST* %1686, i32 0, i32 1
  %1688 = load %union.rec*, %union.rec** %1687, align 8
  store %union.rec* %1688, %union.rec** %rlink, align 8
  br label %1689

; <label>:1689                                    ; preds = %1785, %1682
  %1690 = load %union.rec*, %union.rec** %rlink, align 8
  %1691 = load %union.rec*, %union.rec** %2, align 8
  %1692 = icmp ne %union.rec* %1690, %1691
  br i1 %1692, label %1693, label %1792

; <label>:1693                                    ; preds = %1689
  %1694 = load %union.rec*, %union.rec** %rlink, align 8
  %1695 = bitcast %union.rec* %1694 to %struct.word_type*
  %1696 = getelementptr inbounds %struct.word_type, %struct.word_type* %1695, i32 0, i32 0
  %1697 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1696, i32 0, i64 1
  %1698 = getelementptr inbounds %struct.LIST, %struct.LIST* %1697, i32 0, i32 0
  %1699 = load %union.rec*, %union.rec** %1698, align 8
  store %union.rec* %1699, %union.rec** %foll, align 8
  br label %1700

; <label>:1700                                    ; preds = %1710, %1693
  %1701 = load %union.rec*, %union.rec** %foll, align 8
  %1702 = bitcast %union.rec* %1701 to %struct.word_type*
  %1703 = getelementptr inbounds %struct.word_type, %struct.word_type* %1702, i32 0, i32 1
  %1704 = bitcast %union.FIRST_UNION* %1703 to %struct.anon*
  %1705 = getelementptr inbounds %struct.anon, %struct.anon* %1704, i32 0, i32 0
  %1706 = load i8, i8* %1705, align 1
  %1707 = zext i8 %1706 to i32
  %1708 = icmp eq i32 %1707, 0
  br i1 %1708, label %1709, label %1717

; <label>:1709                                    ; preds = %1700
  br label %1710

; <label>:1710                                    ; preds = %1709
  %1711 = load %union.rec*, %union.rec** %foll, align 8
  %1712 = bitcast %union.rec* %1711 to %struct.word_type*
  %1713 = getelementptr inbounds %struct.word_type, %struct.word_type* %1712, i32 0, i32 0
  %1714 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1713, i32 0, i64 1
  %1715 = getelementptr inbounds %struct.LIST, %struct.LIST* %1714, i32 0, i32 0
  %1716 = load %union.rec*, %union.rec** %1715, align 8
  store %union.rec* %1716, %union.rec** %foll, align 8
  br label %1700

; <label>:1717                                    ; preds = %1700
  %1718 = load %union.rec*, %union.rec** %foll, align 8
  %1719 = bitcast %union.rec* %1718 to %struct.word_type*
  %1720 = getelementptr inbounds %struct.word_type, %struct.word_type* %1719, i32 0, i32 1
  %1721 = bitcast %union.FIRST_UNION* %1720 to %struct.anon*
  %1722 = getelementptr inbounds %struct.anon, %struct.anon* %1721, i32 0, i32 0
  %1723 = load i8, i8* %1722, align 1
  %1724 = zext i8 %1723 to i32
  %1725 = icmp eq i32 %1724, 1
  br i1 %1725, label %1726, label %1743

; <label>:1726                                    ; preds = %1717
  %1727 = load %union.rec*, %union.rec** %foll, align 8
  store %union.rec* %1727, %union.rec** %newg, align 8
  %1728 = load i32, i32* %jn4, align 4
  %1729 = icmp ne i32 %1728, 0
  br i1 %1729, label %1730, label %1740

; <label>:1730                                    ; preds = %1726
  %1731 = load %union.rec*, %union.rec** %foll, align 8
  %1732 = bitcast %union.rec* %1731 to %struct.gapobj_type*
  %1733 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1732, i32 0, i32 3
  %1734 = bitcast %struct.GAP* %1733 to i16*
  %1735 = load i16, i16* %1734, align 4
  %1736 = lshr i16 %1735, 9
  %1737 = and i16 %1736, 1
  %1738 = zext i16 %1737 to i32
  %1739 = icmp ne i32 %1738, 0
  br label %1740

; <label>:1740                                    ; preds = %1730, %1726
  %1741 = phi i1 [ false, %1726 ], [ %1739, %1730 ]
  %1742 = zext i1 %1741 to i32
  store i32 %1742, i32* %jn4, align 4
  br label %1784

; <label>:1743                                    ; preds = %1717
  %1744 = load %union.rec*, %union.rec** %foll, align 8
  %1745 = bitcast %union.rec* %1744 to %struct.word_type*
  %1746 = getelementptr inbounds %struct.word_type, %struct.word_type* %1745, i32 0, i32 1
  %1747 = bitcast %union.FIRST_UNION* %1746 to %struct.anon*
  %1748 = getelementptr inbounds %struct.anon, %struct.anon* %1747, i32 0, i32 0
  %1749 = load i8, i8* %1748, align 1
  %1750 = zext i8 %1749 to i32
  %1751 = icmp eq i32 %1750, 9
  br i1 %1751, label %1752, label %1756

; <label>:1752                                    ; preds = %1743
  %1753 = load %union.rec*, %union.rec** %foll, align 8
  %1754 = call i32 @SplitIsDefinite(%union.rec* %1753)
  %1755 = icmp ne i32 %1754, 0
  br i1 %1755, label %1776, label %1783

; <label>:1756                                    ; preds = %1743
  %1757 = load %union.rec*, %union.rec** %foll, align 8
  %1758 = bitcast %union.rec* %1757 to %struct.word_type*
  %1759 = getelementptr inbounds %struct.word_type, %struct.word_type* %1758, i32 0, i32 1
  %1760 = bitcast %union.FIRST_UNION* %1759 to %struct.anon*
  %1761 = getelementptr inbounds %struct.anon, %struct.anon* %1760, i32 0, i32 0
  %1762 = load i8, i8* %1761, align 1
  %1763 = zext i8 %1762 to i32
  %1764 = icmp sge i32 %1763, 9
  br i1 %1764, label %1765, label %1774

; <label>:1765                                    ; preds = %1756
  %1766 = load %union.rec*, %union.rec** %foll, align 8
  %1767 = bitcast %union.rec* %1766 to %struct.word_type*
  %1768 = getelementptr inbounds %struct.word_type, %struct.word_type* %1767, i32 0, i32 1
  %1769 = bitcast %union.FIRST_UNION* %1768 to %struct.anon*
  %1770 = getelementptr inbounds %struct.anon, %struct.anon* %1769, i32 0, i32 0
  %1771 = load i8, i8* %1770, align 1
  %1772 = zext i8 %1771 to i32
  %1773 = icmp sle i32 %1772, 99
  br label %1774

; <label>:1774                                    ; preds = %1765, %1756
  %1775 = phi i1 [ false, %1756 ], [ %1773, %1765 ]
  br i1 %1775, label %1776, label %1783

; <label>:1776                                    ; preds = %1774, %1752
  %1777 = load %union.rec*, %union.rec** %newg, align 8
  %1778 = icmp ne %union.rec* %1777, null
  br i1 %1778, label %1782, label %1779

; <label>:1779                                    ; preds = %1776
  %1780 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1781 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1780, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0))
  br label %1782

; <label>:1782                                    ; preds = %1779, %1776
  br label %1792

; <label>:1783                                    ; preds = %1774, %1752
  br label %1784

; <label>:1784                                    ; preds = %1783, %1740
  br label %1785

; <label>:1785                                    ; preds = %1784
  %1786 = load %union.rec*, %union.rec** %rlink, align 8
  %1787 = bitcast %union.rec* %1786 to %struct.word_type*
  %1788 = getelementptr inbounds %struct.word_type, %struct.word_type* %1787, i32 0, i32 0
  %1789 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1788, i32 0, i64 0
  %1790 = getelementptr inbounds %struct.LIST, %struct.LIST* %1789, i32 0, i32 1
  %1791 = load %union.rec*, %union.rec** %1790, align 8
  store %union.rec* %1791, %union.rec** %rlink, align 8
  br label %1689

; <label>:1792                                    ; preds = %1782, %1689
  %1793 = load %union.rec*, %union.rec** %rlink, align 8
  %1794 = load %union.rec*, %union.rec** %2, align 8
  %1795 = icmp ne %union.rec* %1793, %1794
  br i1 %1795, label %1796, label %2195

; <label>:1796                                    ; preds = %1792
  %1797 = load %union.rec*, %union.rec** %newg, align 8
  %1798 = bitcast %union.rec* %1797 to %struct.word_type*
  %1799 = getelementptr inbounds %struct.word_type, %struct.word_type* %1798, i32 0, i32 0
  %1800 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1799, i32 0, i64 1
  %1801 = getelementptr inbounds %struct.LIST, %struct.LIST* %1800, i32 0, i32 1
  %1802 = load %union.rec*, %union.rec** %1801, align 8
  %1803 = load %union.rec*, %union.rec** %newg, align 8
  %1804 = bitcast %union.rec* %1803 to %struct.word_type*
  %1805 = getelementptr inbounds %struct.word_type, %struct.word_type* %1804, i32 0, i32 0
  %1806 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1805, i32 0, i64 1
  %1807 = getelementptr inbounds %struct.LIST, %struct.LIST* %1806, i32 0, i32 0
  %1808 = load %union.rec*, %union.rec** %1807, align 8
  %1809 = icmp eq %union.rec* %1802, %1808
  br i1 %1809, label %1813, label %1810

; <label>:1810                                    ; preds = %1796
  %1811 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1812 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1811, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0))
  br label %1813

; <label>:1813                                    ; preds = %1810, %1796
  %1814 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %1815 = load %union.rec*, %union.rec** %1814, align 8
  %1816 = icmp ne %union.rec* %1815, null
  br i1 %1816, label %1817, label %1825

; <label>:1817                                    ; preds = %1813
  %1818 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %1819 = load %union.rec*, %union.rec** %1818, align 8
  %1820 = bitcast %union.rec* %1819 to %struct.closure_type*
  %1821 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1820, i32 0, i32 4
  %1822 = bitcast %union.FOURTH_UNION* %1821 to %struct.CONSTRAINT*
  %1823 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1822, i32 0, i32 1
  %1824 = load i32, i32* %1823, align 4
  store i32 %1824, i32* %etc_width, align 4
  br label %1825

; <label>:1825                                    ; preds = %1817, %1813
  %1826 = load %union.rec*, %union.rec** %newg, align 8
  %1827 = bitcast %union.rec* %1826 to %struct.gapobj_type*
  %1828 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1827, i32 0, i32 3
  %1829 = bitcast %struct.GAP* %1828 to i16*
  %1830 = load i16, i16* %1829, align 4
  %1831 = lshr i16 %1830, 13
  %1832 = zext i16 %1831 to i32
  %1833 = icmp eq i32 %1832, 6
  br i1 %1833, label %1834, label %1866

; <label>:1834                                    ; preds = %1825
  %1835 = load %union.rec*, %union.rec** %foll, align 8
  %1836 = bitcast %union.rec* %1835 to %struct.word_type*
  %1837 = getelementptr inbounds %struct.word_type, %struct.word_type* %1836, i32 0, i32 3
  %1838 = bitcast %union.THIRD_UNION* %1837 to %struct.anon.6*
  %1839 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1838, i32 0, i32 0
  %1840 = getelementptr inbounds [2 x i32], [2 x i32]* %1839, i32 0, i64 0
  %1841 = load i32, i32* %1840, align 4
  %1842 = load %union.rec*, %union.rec** %foll, align 8
  %1843 = bitcast %union.rec* %1842 to %struct.word_type*
  %1844 = getelementptr inbounds %struct.word_type, %struct.word_type* %1843, i32 0, i32 3
  %1845 = bitcast %union.THIRD_UNION* %1844 to %struct.anon.6*
  %1846 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1845, i32 0, i32 1
  %1847 = getelementptr inbounds [2 x i32], [2 x i32]* %1846, i32 0, i64 0
  %1848 = load i32, i32* %1847, align 4
  %1849 = load %union.rec*, %union.rec** %newg, align 8
  %1850 = bitcast %union.rec* %1849 to %struct.gapobj_type*
  %1851 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1850, i32 0, i32 3
  %1852 = load i32, i32* %etc_width, align 4
  %1853 = call i32 @ActualGap(i32 0, i32 %1841, i32 %1848, %struct.GAP* %1851, i32 %1852, i32 0)
  %1854 = load %union.rec*, %union.rec** %foll, align 8
  %1855 = bitcast %union.rec* %1854 to %struct.word_type*
  %1856 = getelementptr inbounds %struct.word_type, %struct.word_type* %1855, i32 0, i32 3
  %1857 = bitcast %union.THIRD_UNION* %1856 to %struct.anon.6*
  %1858 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1857, i32 0, i32 0
  %1859 = getelementptr inbounds [2 x i32], [2 x i32]* %1858, i32 0, i64 0
  %1860 = load i32, i32* %1859, align 4
  %1861 = sub nsw i32 %1853, %1860
  %1862 = trunc i32 %1861 to i16
  %1863 = load %union.rec*, %union.rec** %newg, align 8
  %1864 = bitcast %union.rec* %1863 to %struct.gapobj_type*
  %1865 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1864, i32 0, i32 5
  store i16 %1862, i16* %1865, align 2
  br label %1923

; <label>:1866                                    ; preds = %1825
  %1867 = load %union.rec*, %union.rec** %right, align 8
  %1868 = bitcast %union.rec* %1867 to %struct.word_type*
  %1869 = getelementptr inbounds %struct.word_type, %struct.word_type* %1868, i32 0, i32 3
  %1870 = bitcast %union.THIRD_UNION* %1869 to %struct.anon.6*
  %1871 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1870, i32 0, i32 1
  %1872 = getelementptr inbounds [2 x i32], [2 x i32]* %1871, i32 0, i64 0
  %1873 = load i32, i32* %1872, align 4
  %1874 = load %union.rec*, %union.rec** %foll, align 8
  %1875 = bitcast %union.rec* %1874 to %struct.word_type*
  %1876 = getelementptr inbounds %struct.word_type, %struct.word_type* %1875, i32 0, i32 3
  %1877 = bitcast %union.THIRD_UNION* %1876 to %struct.anon.6*
  %1878 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1877, i32 0, i32 0
  %1879 = getelementptr inbounds [2 x i32], [2 x i32]* %1878, i32 0, i64 0
  %1880 = load i32, i32* %1879, align 4
  %1881 = load %union.rec*, %union.rec** %foll, align 8
  %1882 = bitcast %union.rec* %1881 to %struct.word_type*
  %1883 = getelementptr inbounds %struct.word_type, %struct.word_type* %1882, i32 0, i32 3
  %1884 = bitcast %union.THIRD_UNION* %1883 to %struct.anon.6*
  %1885 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1884, i32 0, i32 1
  %1886 = getelementptr inbounds [2 x i32], [2 x i32]* %1885, i32 0, i64 0
  %1887 = load i32, i32* %1886, align 4
  %1888 = load %union.rec*, %union.rec** %newg, align 8
  %1889 = bitcast %union.rec* %1888 to %struct.gapobj_type*
  %1890 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1889, i32 0, i32 3
  %1891 = load i32, i32* %etc_width, align 4
  %1892 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %1893 = load i32, i32* %1892, align 4
  %1894 = load %union.rec*, %union.rec** %right, align 8
  %1895 = bitcast %union.rec* %1894 to %struct.word_type*
  %1896 = getelementptr inbounds %struct.word_type, %struct.word_type* %1895, i32 0, i32 3
  %1897 = bitcast %union.THIRD_UNION* %1896 to %struct.anon.6*
  %1898 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1897, i32 0, i32 1
  %1899 = getelementptr inbounds [2 x i32], [2 x i32]* %1898, i32 0, i64 0
  %1900 = load i32, i32* %1899, align 4
  %1901 = sub nsw i32 %1893, %1900
  %1902 = call i32 @ActualGap(i32 %1873, i32 %1880, i32 %1887, %struct.GAP* %1890, i32 %1891, i32 %1901)
  %1903 = load %union.rec*, %union.rec** %foll, align 8
  %1904 = bitcast %union.rec* %1903 to %struct.word_type*
  %1905 = getelementptr inbounds %struct.word_type, %struct.word_type* %1904, i32 0, i32 3
  %1906 = bitcast %union.THIRD_UNION* %1905 to %struct.anon.6*
  %1907 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1906, i32 0, i32 0
  %1908 = getelementptr inbounds [2 x i32], [2 x i32]* %1907, i32 0, i64 0
  %1909 = load i32, i32* %1908, align 4
  %1910 = sub nsw i32 %1902, %1909
  %1911 = load %union.rec*, %union.rec** %right, align 8
  %1912 = bitcast %union.rec* %1911 to %struct.word_type*
  %1913 = getelementptr inbounds %struct.word_type, %struct.word_type* %1912, i32 0, i32 3
  %1914 = bitcast %union.THIRD_UNION* %1913 to %struct.anon.6*
  %1915 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1914, i32 0, i32 1
  %1916 = getelementptr inbounds [2 x i32], [2 x i32]* %1915, i32 0, i64 0
  %1917 = load i32, i32* %1916, align 4
  %1918 = sub nsw i32 %1910, %1917
  %1919 = trunc i32 %1918 to i16
  %1920 = load %union.rec*, %union.rec** %newg, align 8
  %1921 = bitcast %union.rec* %1920 to %struct.gapobj_type*
  %1922 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1921, i32 0, i32 5
  store i16 %1919, i16* %1922, align 2
  br label %1923

; <label>:1923                                    ; preds = %1866, %1834
  %1924 = load %union.rec*, %union.rec** %newg, align 8
  %1925 = bitcast %union.rec* %1924 to %struct.gapobj_type*
  %1926 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1925, i32 0, i32 3
  %1927 = bitcast %struct.GAP* %1926 to i16*
  %1928 = load i16, i16* %1927, align 4
  %1929 = lshr i16 %1928, 13
  %1930 = zext i16 %1929 to i32
  %1931 = icmp eq i32 %1930, 2
  br i1 %1931, label %1941, label %1932

; <label>:1932                                    ; preds = %1923
  %1933 = load %union.rec*, %union.rec** %newg, align 8
  %1934 = bitcast %union.rec* %1933 to %struct.gapobj_type*
  %1935 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1934, i32 0, i32 3
  %1936 = bitcast %struct.GAP* %1935 to i16*
  %1937 = load i16, i16* %1936, align 4
  %1938 = lshr i16 %1937, 13
  %1939 = zext i16 %1938 to i32
  %1940 = icmp eq i32 %1939, 7
  br i1 %1940, label %1941, label %2175

; <label>:1941                                    ; preds = %1932, %1923
  %1942 = load i32, i32* %hyph_allowed, align 4
  %1943 = icmp ne i32 %1942, 0
  br i1 %1943, label %1944, label %2173

; <label>:1944                                    ; preds = %1941
  %1945 = load %union.rec*, %union.rec** %right, align 8
  %1946 = bitcast %union.rec* %1945 to %struct.word_type*
  %1947 = getelementptr inbounds %struct.word_type, %struct.word_type* %1946, i32 0, i32 1
  %1948 = bitcast %union.FIRST_UNION* %1947 to %struct.anon*
  %1949 = getelementptr inbounds %struct.anon, %struct.anon* %1948, i32 0, i32 0
  %1950 = load i8, i8* %1949, align 1
  %1951 = zext i8 %1950 to i32
  %1952 = icmp eq i32 %1951, 11
  br i1 %1952, label %1962, label %1953

; <label>:1953                                    ; preds = %1944
  %1954 = load %union.rec*, %union.rec** %right, align 8
  %1955 = bitcast %union.rec* %1954 to %struct.word_type*
  %1956 = getelementptr inbounds %struct.word_type, %struct.word_type* %1955, i32 0, i32 1
  %1957 = bitcast %union.FIRST_UNION* %1956 to %struct.anon*
  %1958 = getelementptr inbounds %struct.anon, %struct.anon* %1957, i32 0, i32 0
  %1959 = load i8, i8* %1958, align 1
  %1960 = zext i8 %1959 to i32
  %1961 = icmp eq i32 %1960, 12
  br i1 %1961, label %1962, label %2172

; <label>:1962                                    ; preds = %1953, %1944
  %1963 = load %union.rec*, %union.rec** %right, align 8
  %1964 = bitcast %union.rec* %1963 to %struct.word_type*
  %1965 = getelementptr inbounds %struct.word_type, %struct.word_type* %1964, i32 0, i32 4
  %1966 = getelementptr inbounds [4 x i8], [4 x i8]* %1965, i32 0, i32 0
  %1967 = call i64 @strlen(i8* %1966) #4
  %1968 = sub i64 %1967, 1
  %1969 = load %union.rec*, %union.rec** %right, align 8
  %1970 = bitcast %union.rec* %1969 to %struct.word_type*
  %1971 = getelementptr inbounds %struct.word_type, %struct.word_type* %1970, i32 0, i32 4
  %1972 = getelementptr inbounds [4 x i8], [4 x i8]* %1971, i32 0, i64 %1968
  %1973 = load i8, i8* %1972, align 1
  %1974 = zext i8 %1973 to i32
  %1975 = icmp eq i32 %1974, 45
  br i1 %1975, label %2172, label %1976

; <label>:1976                                    ; preds = %1962
  %1977 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %1978 = icmp eq %union.rec* %1977, null
  br i1 %1978, label %1979, label %2068

; <label>:1979                                    ; preds = %1976
  %1980 = load %union.rec*, %union.rec** %2, align 8
  %1981 = bitcast %union.rec* %1980 to %struct.word_type*
  %1982 = getelementptr inbounds %struct.word_type, %struct.word_type* %1981, i32 0, i32 1
  %1983 = bitcast %union.FIRST_UNION* %1982 to %struct.FILE_POS*
  %1984 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), %struct.FILE_POS* %1983)
  store %union.rec* %1984, %union.rec** @FillObject.hyph_word, align 8
  %1985 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %1986 = bitcast %union.rec* %1985 to %struct.word_type*
  %1987 = getelementptr inbounds %struct.word_type, %struct.word_type* %1986, i32 0, i32 2
  %1988 = bitcast %union.SECOND_UNION* %1987 to %struct.anon.1*
  %1989 = bitcast %struct.anon.1* %1988 to i32*
  %1990 = load i32, i32* %1989, align 4
  %1991 = and i32 %1990, -4096
  store i32 %1991, i32* %1989, align 4
  %1992 = load %union.rec*, %union.rec** %2, align 8
  %1993 = bitcast %union.rec* %1992 to %struct.closure_type*
  %1994 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1993, i32 0, i32 4
  %1995 = bitcast %union.FOURTH_UNION* %1994 to %struct.STYLE*
  %1996 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1995, i32 0, i32 4
  %1997 = load i32, i32* %1996, align 4
  %1998 = lshr i32 %1997, 12
  %1999 = and i32 %1998, 1023
  %2000 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %2001 = bitcast %union.rec* %2000 to %struct.word_type*
  %2002 = getelementptr inbounds %struct.word_type, %struct.word_type* %2001, i32 0, i32 2
  %2003 = bitcast %union.SECOND_UNION* %2002 to %struct.anon.1*
  %2004 = bitcast %struct.anon.1* %2003 to i32*
  %2005 = load i32, i32* %2004, align 4
  %2006 = and i32 %1999, 1023
  %2007 = shl i32 %2006, 12
  %2008 = and i32 %2005, -4190209
  %2009 = or i32 %2008, %2007
  store i32 %2009, i32* %2004, align 4
  %2010 = load %union.rec*, %union.rec** %2, align 8
  %2011 = bitcast %union.rec* %2010 to %struct.closure_type*
  %2012 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2011, i32 0, i32 4
  %2013 = bitcast %union.FOURTH_UNION* %2012 to %struct.STYLE*
  %2014 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2013, i32 0, i32 4
  %2015 = load i32, i32* %2014, align 4
  %2016 = lshr i32 %2015, 22
  %2017 = and i32 %2016, 3
  %2018 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %2019 = bitcast %union.rec* %2018 to %struct.word_type*
  %2020 = getelementptr inbounds %struct.word_type, %struct.word_type* %2019, i32 0, i32 2
  %2021 = bitcast %union.SECOND_UNION* %2020 to %struct.anon.1*
  %2022 = bitcast %struct.anon.1* %2021 to i32*
  %2023 = load i32, i32* %2022, align 4
  %2024 = and i32 %2017, 1
  %2025 = shl i32 %2024, 22
  %2026 = and i32 %2023, -4194305
  %2027 = or i32 %2026, %2025
  store i32 %2027, i32* %2022, align 4
  %2028 = load %union.rec*, %union.rec** %2, align 8
  %2029 = bitcast %union.rec* %2028 to %struct.closure_type*
  %2030 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2029, i32 0, i32 4
  %2031 = bitcast %union.FOURTH_UNION* %2030 to %struct.STYLE*
  %2032 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2031, i32 0, i32 4
  %2033 = load i32, i32* %2032, align 4
  %2034 = lshr i32 %2033, 24
  %2035 = and i32 %2034, 63
  %2036 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %2037 = bitcast %union.rec* %2036 to %struct.word_type*
  %2038 = getelementptr inbounds %struct.word_type, %struct.word_type* %2037, i32 0, i32 2
  %2039 = bitcast %union.SECOND_UNION* %2038 to %struct.anon.1*
  %2040 = bitcast %struct.anon.1* %2039 to i32*
  %2041 = load i32, i32* %2040, align 4
  %2042 = and i32 %2035, 63
  %2043 = shl i32 %2042, 23
  %2044 = and i32 %2041, -528482305
  %2045 = or i32 %2044, %2043
  store i32 %2045, i32* %2040, align 4
  %2046 = load %union.rec*, %union.rec** %2, align 8
  %2047 = bitcast %union.rec* %2046 to %struct.closure_type*
  %2048 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2047, i32 0, i32 4
  %2049 = bitcast %union.FOURTH_UNION* %2048 to %struct.STYLE*
  %2050 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2049, i32 0, i32 1
  %2051 = bitcast %union.anon.10* %2050 to %struct.anon.11*
  %2052 = bitcast %struct.anon.11* %2051 to i8*
  %2053 = load i8, i8* %2052, align 4
  %2054 = and i8 %2053, 3
  %2055 = zext i8 %2054 to i32
  %2056 = icmp eq i32 %2055, 2
  %2057 = zext i1 %2056 to i32
  %2058 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %2059 = bitcast %union.rec* %2058 to %struct.word_type*
  %2060 = getelementptr inbounds %struct.word_type, %struct.word_type* %2059, i32 0, i32 2
  %2061 = bitcast %union.SECOND_UNION* %2060 to %struct.anon.1*
  %2062 = bitcast %struct.anon.1* %2061 to i32*
  %2063 = load i32, i32* %2062, align 4
  %2064 = and i32 %2057, 1
  %2065 = shl i32 %2064, 31
  %2066 = and i32 %2063, 2147483647
  %2067 = or i32 %2066, %2065
  store i32 %2067, i32* %2062, align 4
  br label %2068

; <label>:2068                                    ; preds = %1979, %1976
  %2069 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %2070 = bitcast %union.rec* %2069 to %struct.word_type*
  %2071 = getelementptr inbounds %struct.word_type, %struct.word_type* %2070, i32 0, i32 2
  %2072 = bitcast %union.SECOND_UNION* %2071 to %struct.anon.1*
  %2073 = bitcast %struct.anon.1* %2072 to i32*
  %2074 = load i32, i32* %2073, align 4
  %2075 = and i32 %2074, 4095
  %2076 = load %union.rec*, %union.rec** %2, align 8
  %2077 = bitcast %union.rec* %2076 to %struct.closure_type*
  %2078 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2077, i32 0, i32 4
  %2079 = bitcast %union.FOURTH_UNION* %2078 to %struct.STYLE*
  %2080 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2079, i32 0, i32 4
  %2081 = load i32, i32* %2080, align 4
  %2082 = and i32 %2081, 4095
  %2083 = icmp ne i32 %2075, %2082
  br i1 %2083, label %2084, label %2146

; <label>:2084                                    ; preds = %2068
  %2085 = load %union.rec*, %union.rec** %2, align 8
  %2086 = bitcast %union.rec* %2085 to %struct.closure_type*
  %2087 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2086, i32 0, i32 4
  %2088 = bitcast %union.FOURTH_UNION* %2087 to %struct.STYLE*
  %2089 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2088, i32 0, i32 4
  %2090 = load i32, i32* %2089, align 4
  %2091 = and i32 %2090, 4095
  %2092 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %2093 = bitcast %union.rec* %2092 to %struct.word_type*
  %2094 = getelementptr inbounds %struct.word_type, %struct.word_type* %2093, i32 0, i32 2
  %2095 = bitcast %union.SECOND_UNION* %2094 to %struct.anon.1*
  %2096 = bitcast %struct.anon.1* %2095 to i32*
  %2097 = load i32, i32* %2096, align 4
  %2098 = and i32 %2091, 4095
  %2099 = and i32 %2097, -4096
  %2100 = or i32 %2099, %2098
  store i32 %2100, i32* %2096, align 4
  %2101 = load %union.rec*, %union.rec** %2, align 8
  %2102 = bitcast %union.rec* %2101 to %struct.word_type*
  %2103 = getelementptr inbounds %struct.word_type, %struct.word_type* %2102, i32 0, i32 1
  %2104 = bitcast %union.FIRST_UNION* %2103 to %struct.FILE_POS*
  %2105 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2104, i32 0, i32 2
  %2106 = load i16, i16* %2105, align 2
  %2107 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %2108 = bitcast %union.rec* %2107 to %struct.word_type*
  %2109 = getelementptr inbounds %struct.word_type, %struct.word_type* %2108, i32 0, i32 1
  %2110 = bitcast %union.FIRST_UNION* %2109 to %struct.FILE_POS*
  %2111 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2110, i32 0, i32 2
  store i16 %2106, i16* %2111, align 2
  %2112 = load %union.rec*, %union.rec** %2, align 8
  %2113 = bitcast %union.rec* %2112 to %struct.word_type*
  %2114 = getelementptr inbounds %struct.word_type, %struct.word_type* %2113, i32 0, i32 1
  %2115 = bitcast %union.FIRST_UNION* %2114 to %struct.FILE_POS*
  %2116 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2115, i32 0, i32 3
  %2117 = load i32, i32* %2116, align 4
  %2118 = and i32 %2117, 1048575
  %2119 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %2120 = bitcast %union.rec* %2119 to %struct.word_type*
  %2121 = getelementptr inbounds %struct.word_type, %struct.word_type* %2120, i32 0, i32 1
  %2122 = bitcast %union.FIRST_UNION* %2121 to %struct.FILE_POS*
  %2123 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2122, i32 0, i32 3
  %2124 = load i32, i32* %2123, align 4
  %2125 = and i32 %2118, 1048575
  %2126 = and i32 %2124, -1048576
  %2127 = or i32 %2126, %2125
  store i32 %2127, i32* %2123, align 4
  %2128 = load %union.rec*, %union.rec** %2, align 8
  %2129 = bitcast %union.rec* %2128 to %struct.word_type*
  %2130 = getelementptr inbounds %struct.word_type, %struct.word_type* %2129, i32 0, i32 1
  %2131 = bitcast %union.FIRST_UNION* %2130 to %struct.FILE_POS*
  %2132 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2131, i32 0, i32 3
  %2133 = load i32, i32* %2132, align 4
  %2134 = lshr i32 %2133, 20
  %2135 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %2136 = bitcast %union.rec* %2135 to %struct.word_type*
  %2137 = getelementptr inbounds %struct.word_type, %struct.word_type* %2136, i32 0, i32 1
  %2138 = bitcast %union.FIRST_UNION* %2137 to %struct.FILE_POS*
  %2139 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2138, i32 0, i32 3
  %2140 = load i32, i32* %2139, align 4
  %2141 = and i32 %2134, 4095
  %2142 = shl i32 %2141, 20
  %2143 = and i32 %2140, 1048575
  %2144 = or i32 %2143, %2142
  store i32 %2144, i32* %2139, align 4
  %2145 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  call void @FontWordSize(%union.rec* %2145)
  br label %2146

; <label>:2146                                    ; preds = %2084, %2068
  %2147 = load %union.rec*, %union.rec** %newg, align 8
  %2148 = bitcast %union.rec* %2147 to %struct.gapobj_type*
  %2149 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2148, i32 0, i32 3
  %2150 = bitcast %struct.GAP* %2149 to i16*
  %2151 = load i16, i16* %2150, align 4
  %2152 = and i16 %2151, 8191
  %2153 = or i16 %2152, -8192
  store i16 %2153, i16* %2150, align 4
  %2154 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %2155 = bitcast %union.rec* %2154 to %struct.word_type*
  %2156 = getelementptr inbounds %struct.word_type, %struct.word_type* %2155, i32 0, i32 3
  %2157 = bitcast %union.THIRD_UNION* %2156 to %struct.anon.6*
  %2158 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2157, i32 0, i32 0
  %2159 = getelementptr inbounds [2 x i32], [2 x i32]* %2158, i32 0, i64 0
  %2160 = load i32, i32* %2159, align 4
  %2161 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %2162 = bitcast %union.rec* %2161 to %struct.word_type*
  %2163 = getelementptr inbounds %struct.word_type, %struct.word_type* %2162, i32 0, i32 3
  %2164 = bitcast %union.THIRD_UNION* %2163 to %struct.anon.6*
  %2165 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2164, i32 0, i32 1
  %2166 = getelementptr inbounds [2 x i32], [2 x i32]* %2165, i32 0, i64 0
  %2167 = load i32, i32* %2166, align 4
  %2168 = add nsw i32 %2160, %2167
  %2169 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %2170 = load i32, i32* %2169, align 4
  %2171 = add nsw i32 %2170, %2168
  store i32 %2171, i32* %2169, align 4
  br label %2172

; <label>:2172                                    ; preds = %2146, %1962, %1953
  br label %2174

; <label>:2173                                    ; preds = %1941
  store i32 1, i32* %unbreakable_at_right, align 4
  br label %2174

; <label>:2174                                    ; preds = %2173, %2172
  br label %2187

; <label>:2175                                    ; preds = %1932
  %2176 = load %union.rec*, %union.rec** %newg, align 8
  %2177 = bitcast %union.rec* %2176 to %struct.gapobj_type*
  %2178 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2177, i32 0, i32 3
  %2179 = bitcast %struct.GAP* %2178 to i16*
  %2180 = load i16, i16* %2179, align 4
  %2181 = lshr i16 %2180, 7
  %2182 = and i16 %2181, 1
  %2183 = zext i16 %2182 to i32
  %2184 = icmp ne i32 %2183, 0
  br i1 %2184, label %2185, label %2186

; <label>:2185                                    ; preds = %2175
  store i32 1, i32* %unbreakable_at_right, align 4
  br label %2186

; <label>:2186                                    ; preds = %2185, %2175
  br label %2187

; <label>:2187                                    ; preds = %2186, %2174
  %2188 = load %union.rec*, %union.rec** %newg, align 8
  %2189 = bitcast %union.rec* %2188 to %struct.word_type*
  %2190 = getelementptr inbounds %struct.word_type, %struct.word_type* %2189, i32 0, i32 0
  %2191 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2190, i32 0, i64 1
  %2192 = getelementptr inbounds %struct.LIST, %struct.LIST* %2191, i32 0, i32 1
  %2193 = load %union.rec*, %union.rec** %2192, align 8
  %2194 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 1
  store %union.rec* %2193, %union.rec** %2194, align 8
  br label %2198

; <label>:2195                                    ; preds = %1792
  %2196 = load %union.rec*, %union.rec** %2, align 8
  %2197 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 1
  store %union.rec* %2196, %union.rec** %2197, align 8
  br label %2198

; <label>:2198                                    ; preds = %2195, %2187
  %2199 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %2200 = load %union.rec*, %union.rec** %2199, align 8
  %2201 = load %union.rec*, %union.rec** %2, align 8
  %2202 = icmp eq %union.rec* %2200, %2201
  br i1 %2202, label %2203, label %2220

; <label>:2203                                    ; preds = %2198
  %2204 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %2205 = load %union.rec*, %union.rec** %2204, align 8
  %2206 = icmp ne %union.rec* %2205, null
  br i1 %2206, label %2207, label %2215

; <label>:2207                                    ; preds = %2203
  %2208 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %2209 = load %union.rec*, %union.rec** %2208, align 8
  %2210 = bitcast %union.rec* %2209 to %struct.closure_type*
  %2211 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2210, i32 0, i32 4
  %2212 = bitcast %union.FOURTH_UNION* %2211 to %struct.CONSTRAINT*
  %2213 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %2212, i32 0, i32 1
  %2214 = load i32, i32* %2213, align 4
  br label %2217

; <label>:2215                                    ; preds = %2203
  %2216 = load i32, i32* %max_width, align 4
  br label %2217

; <label>:2217                                    ; preds = %2215, %2207
  %2218 = phi i32 [ %2214, %2207 ], [ %2216, %2215 ]
  store i32 %2218, i32* %col_width, align 4
  %2219 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  store i32 0, i32* %2219, align 4
  br label %2266

; <label>:2220                                    ; preds = %2198
  %2221 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %2222 = load %union.rec*, %union.rec** %2221, align 8
  %2223 = icmp ne %union.rec* %2222, null
  br i1 %2223, label %2224, label %2232

; <label>:2224                                    ; preds = %2220
  %2225 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %2226 = load %union.rec*, %union.rec** %2225, align 8
  %2227 = bitcast %union.rec* %2226 to %struct.closure_type*
  %2228 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2227, i32 0, i32 4
  %2229 = bitcast %union.FOURTH_UNION* %2228 to %struct.CONSTRAINT*
  %2230 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %2229, i32 0, i32 1
  %2231 = load i32, i32* %2230, align 4
  br label %2234

; <label>:2232                                    ; preds = %2220
  %2233 = load i32, i32* %etc_width, align 4
  br label %2234

; <label>:2234                                    ; preds = %2232, %2224
  %2235 = phi i32 [ %2231, %2224 ], [ %2233, %2232 ]
  store i32 %2235, i32* %col_width, align 4
  %2236 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %2237 = load %union.rec*, %union.rec** %2236, align 8
  %2238 = bitcast %union.rec* %2237 to %struct.word_type*
  %2239 = getelementptr inbounds %struct.word_type, %struct.word_type* %2238, i32 0, i32 0
  %2240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2239, i32 0, i64 1
  %2241 = getelementptr inbounds %struct.LIST, %struct.LIST* %2240, i32 0, i32 0
  %2242 = load %union.rec*, %union.rec** %2241, align 8
  store %union.rec* %2242, %union.rec** %g5, align 8
  br label %2243

; <label>:2243                                    ; preds = %2253, %2234
  %2244 = load %union.rec*, %union.rec** %g5, align 8
  %2245 = bitcast %union.rec* %2244 to %struct.word_type*
  %2246 = getelementptr inbounds %struct.word_type, %struct.word_type* %2245, i32 0, i32 1
  %2247 = bitcast %union.FIRST_UNION* %2246 to %struct.anon*
  %2248 = getelementptr inbounds %struct.anon, %struct.anon* %2247, i32 0, i32 0
  %2249 = load i8, i8* %2248, align 1
  %2250 = zext i8 %2249 to i32
  %2251 = icmp eq i32 %2250, 0
  br i1 %2251, label %2252, label %2260

; <label>:2252                                    ; preds = %2243
  br label %2253

; <label>:2253                                    ; preds = %2252
  %2254 = load %union.rec*, %union.rec** %g5, align 8
  %2255 = bitcast %union.rec* %2254 to %struct.word_type*
  %2256 = getelementptr inbounds %struct.word_type, %struct.word_type* %2255, i32 0, i32 0
  %2257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2256, i32 0, i64 1
  %2258 = getelementptr inbounds %struct.LIST, %struct.LIST* %2257, i32 0, i32 0
  %2259 = load %union.rec*, %union.rec** %2258, align 8
  store %union.rec* %2259, %union.rec** %g5, align 8
  br label %2243

; <label>:2260                                    ; preds = %2243
  %2261 = load %union.rec*, %union.rec** %g5, align 8
  %2262 = bitcast %union.rec* %2261 to %struct.gapobj_type*
  %2263 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2262, i32 0, i32 4
  %2264 = load i32, i32* %2263, align 4
  %2265 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  store i32 %2264, i32* %2265, align 4
  br label %2266

; <label>:2266                                    ; preds = %2260, %2217
  %2267 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %2268 = load i8, i8* %2267, align 1
  %2269 = zext i8 %2268 to i32
  %2270 = icmp sgt i32 %2269, 0
  br i1 %2270, label %2271, label %2360

; <label>:2271                                    ; preds = %2266
  %2272 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %2273 = load %union.rec*, %union.rec** %2272, align 8
  %2274 = bitcast %union.rec* %2273 to %struct.word_type*
  %2275 = getelementptr inbounds %struct.word_type, %struct.word_type* %2274, i32 0, i32 0
  %2276 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2275, i32 0, i64 0
  %2277 = getelementptr inbounds %struct.LIST, %struct.LIST* %2276, i32 0, i32 1
  %2278 = load %union.rec*, %union.rec** %2277, align 8
  %2279 = bitcast %union.rec* %2278 to %struct.word_type*
  %2280 = getelementptr inbounds %struct.word_type, %struct.word_type* %2279, i32 0, i32 0
  %2281 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2280, i32 0, i64 0
  %2282 = getelementptr inbounds %struct.LIST, %struct.LIST* %2281, i32 0, i32 1
  %2283 = load %union.rec*, %union.rec** %2282, align 8
  store %union.rec* %2283, %union.rec** %glink, align 8
  %2284 = load %union.rec*, %union.rec** %glink, align 8
  %2285 = bitcast %union.rec* %2284 to %struct.word_type*
  %2286 = getelementptr inbounds %struct.word_type, %struct.word_type* %2285, i32 0, i32 1
  %2287 = bitcast %union.FIRST_UNION* %2286 to %struct.anon*
  %2288 = getelementptr inbounds %struct.anon, %struct.anon* %2287, i32 0, i32 0
  %2289 = load i8, i8* %2288, align 1
  %2290 = zext i8 %2289 to i32
  %2291 = icmp eq i32 %2290, 0
  br i1 %2291, label %2295, label %2292

; <label>:2292                                    ; preds = %2271
  %2293 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2294 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2293, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  br label %2295

; <label>:2295                                    ; preds = %2292, %2271
  %2296 = load %union.rec*, %union.rec** %glink, align 8
  %2297 = bitcast %union.rec* %2296 to %struct.word_type*
  %2298 = getelementptr inbounds %struct.word_type, %struct.word_type* %2297, i32 0, i32 0
  %2299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2298, i32 0, i64 1
  %2300 = getelementptr inbounds %struct.LIST, %struct.LIST* %2299, i32 0, i32 0
  %2301 = load %union.rec*, %union.rec** %2300, align 8
  store %union.rec* %2301, %union.rec** %g5, align 8
  br label %2302

; <label>:2302                                    ; preds = %2312, %2295
  %2303 = load %union.rec*, %union.rec** %g5, align 8
  %2304 = bitcast %union.rec* %2303 to %struct.word_type*
  %2305 = getelementptr inbounds %struct.word_type, %struct.word_type* %2304, i32 0, i32 1
  %2306 = bitcast %union.FIRST_UNION* %2305 to %struct.anon*
  %2307 = getelementptr inbounds %struct.anon, %struct.anon* %2306, i32 0, i32 0
  %2308 = load i8, i8* %2307, align 1
  %2309 = zext i8 %2308 to i32
  %2310 = icmp eq i32 %2309, 0
  br i1 %2310, label %2311, label %2319

; <label>:2311                                    ; preds = %2302
  br label %2312

; <label>:2312                                    ; preds = %2311
  %2313 = load %union.rec*, %union.rec** %g5, align 8
  %2314 = bitcast %union.rec* %2313 to %struct.word_type*
  %2315 = getelementptr inbounds %struct.word_type, %struct.word_type* %2314, i32 0, i32 0
  %2316 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2315, i32 0, i64 1
  %2317 = getelementptr inbounds %struct.LIST, %struct.LIST* %2316, i32 0, i32 0
  %2318 = load %union.rec*, %union.rec** %2317, align 8
  store %union.rec* %2318, %union.rec** %g5, align 8
  br label %2302

; <label>:2319                                    ; preds = %2302
  %2320 = load %union.rec*, %union.rec** %g5, align 8
  %2321 = bitcast %union.rec* %2320 to %struct.word_type*
  %2322 = getelementptr inbounds %struct.word_type, %struct.word_type* %2321, i32 0, i32 1
  %2323 = bitcast %union.FIRST_UNION* %2322 to %struct.anon*
  %2324 = getelementptr inbounds %struct.anon, %struct.anon* %2323, i32 0, i32 0
  %2325 = load i8, i8* %2324, align 1
  %2326 = zext i8 %2325 to i32
  %2327 = icmp eq i32 %2326, 1
  br i1 %2327, label %2328, label %2359

; <label>:2328                                    ; preds = %2319
  %2329 = load %union.rec*, %union.rec** %g5, align 8
  %2330 = bitcast %union.rec* %2329 to %struct.gapobj_type*
  %2331 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2330, i32 0, i32 3
  %2332 = bitcast %struct.GAP* %2331 to i16*
  %2333 = load i16, i16* %2332, align 4
  %2334 = lshr i16 %2333, 13
  %2335 = zext i16 %2334 to i32
  %2336 = icmp eq i32 %2335, 6
  br i1 %2336, label %2337, label %2359

; <label>:2337                                    ; preds = %2328
  %2338 = load %union.rec*, %union.rec** %g5, align 8
  %2339 = bitcast %union.rec* %2338 to %struct.gapobj_type*
  %2340 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2339, i32 0, i32 3
  %2341 = bitcast %struct.GAP* %2340 to i16*
  %2342 = load i16, i16* %2341, align 4
  %2343 = lshr i16 %2342, 10
  %2344 = and i16 %2343, 7
  %2345 = zext i16 %2344 to i32
  %2346 = icmp eq i32 %2345, 3
  br i1 %2346, label %2347, label %2359

; <label>:2347                                    ; preds = %2337
  %2348 = load %union.rec*, %union.rec** %g5, align 8
  %2349 = bitcast %union.rec* %2348 to %struct.gapobj_type*
  %2350 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2349, i32 0, i32 3
  %2351 = getelementptr inbounds %struct.GAP, %struct.GAP* %2350, i32 0, i32 1
  %2352 = load i16, i16* %2351, align 2
  %2353 = sext i16 %2352 to i32
  %2354 = icmp eq i32 %2353, 4096
  br i1 %2354, label %2355, label %2359

; <label>:2355                                    ; preds = %2347
  %2356 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %2357 = load i32, i32* %2356, align 4
  %2358 = add nsw i32 %2357, 128
  store i32 %2358, i32* %2356, align 4
  br label %2359

; <label>:2359                                    ; preds = %2355, %2347, %2337, %2328, %2319
  br label %2360

; <label>:2360                                    ; preds = %2359, %2266
  %2361 = load i32, i32* %col_width, align 4
  %2362 = icmp sle i32 %2361, 0
  br i1 %2362, label %2363, label %2378

; <label>:2363                                    ; preds = %2360
  %2364 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %2365 = load i32, i32* %2364, align 4
  %2366 = icmp eq i32 %2365, 0
  br i1 %2366, label %2367, label %2372

; <label>:2367                                    ; preds = %2363
  %2368 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 0, i8* %2368, align 1
  %2369 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %2370 = load i32, i32* %2369, align 4
  %2371 = add nsw i32 %2370, 0
  store i32 %2371, i32* %2369, align 4
  br label %2377

; <label>:2372                                    ; preds = %2363
  %2373 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 2, i8* %2373, align 1
  %2374 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %2375 = load i32, i32* %2374, align 4
  %2376 = add nsw i32 %2375, 1048576
  store i32 %2376, i32* %2374, align 4
  br label %2377

; <label>:2377                                    ; preds = %2372, %2367
  br label %2486

; <label>:2378                                    ; preds = %2360
  %2379 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %2380 = load i8, i8* %2379, align 1
  %2381 = zext i8 %2380 to i32
  %2382 = icmp sgt i32 %2381, 0
  br i1 %2382, label %2383, label %2394

; <label>:2383                                    ; preds = %2378
  %2384 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 9
  %2385 = load i32, i32* %2384, align 4
  %2386 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 8
  %2387 = load i32, i32* %2386, align 4
  %2388 = icmp sgt i32 %2385, %2387
  br i1 %2388, label %2389, label %2394

; <label>:2389                                    ; preds = %2383
  %2390 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 4, i8* %2390, align 1
  %2391 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %2392 = load i32, i32* %2391, align 4
  %2393 = add nsw i32 %2392, 1048576
  store i32 %2393, i32* %2391, align 4
  br label %2485

; <label>:2394                                    ; preds = %2383, %2378
  %2395 = load i32, i32* %col_width, align 4
  %2396 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %2397 = load i32, i32* %2396, align 4
  %2398 = sub nsw i32 %2395, %2397
  %2399 = mul nsw i32 1, %2398
  %2400 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 4
  %2401 = load i32, i32* %2400, align 4
  %2402 = mul nsw i32 2, %2401
  %2403 = icmp sgt i32 %2399, %2402
  br i1 %2403, label %2404, label %2425

; <label>:2404                                    ; preds = %2394
  %2405 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %2406 = load i8, i8* %2405, align 1
  %2407 = zext i8 %2406 to i32
  %2408 = icmp sgt i32 %2407, 0
  %2409 = select i1 %2408, i32 1, i32 0
  %2410 = trunc i32 %2409 to i8
  %2411 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 %2410, i8* %2411, align 1
  %2412 = load i32, i32* %col_width, align 4
  %2413 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %2414 = load i32, i32* %2413, align 4
  %2415 = sub nsw i32 %2412, %2414
  %2416 = mul nsw i32 512, %2415
  %2417 = load i32, i32* %col_width, align 4
  %2418 = sdiv i32 %2416, %2417
  store i32 %2418, i32* %badness, align 4
  %2419 = load i32, i32* %badness, align 4
  %2420 = load i32, i32* %badness, align 4
  %2421 = mul nsw i32 %2419, %2420
  %2422 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %2423 = load i32, i32* %2422, align 4
  %2424 = add nsw i32 %2423, %2421
  store i32 %2424, i32* %2422, align 4
  br label %2484

; <label>:2425                                    ; preds = %2394
  %2426 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %2427 = load i32, i32* %2426, align 4
  %2428 = load i32, i32* %col_width, align 4
  %2429 = icmp sle i32 %2427, %2428
  br i1 %2429, label %2430, label %2445

; <label>:2430                                    ; preds = %2425
  %2431 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 1, i8* %2431, align 1
  %2432 = load i32, i32* %col_width, align 4
  %2433 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %2434 = load i32, i32* %2433, align 4
  %2435 = sub nsw i32 %2432, %2434
  %2436 = mul nsw i32 128, %2435
  %2437 = load i32, i32* %col_width, align 4
  %2438 = sdiv i32 %2436, %2437
  store i32 %2438, i32* %badness, align 4
  %2439 = load i32, i32* %badness, align 4
  %2440 = load i32, i32* %badness, align 4
  %2441 = mul nsw i32 %2439, %2440
  %2442 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %2443 = load i32, i32* %2442, align 4
  %2444 = add nsw i32 %2443, %2441
  store i32 %2444, i32* %2442, align 4
  br label %2483

; <label>:2445                                    ; preds = %2425
  %2446 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %2447 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %2446, i32 0, i32 7
  %2448 = load i32, i32* %2447, align 4
  %2449 = icmp ne i32 %2448, 0
  br i1 %2449, label %2450, label %2477

; <label>:2450                                    ; preds = %2445
  %2451 = load i32, i32* %6, align 4
  %2452 = icmp ne i32 %2451, 0
  br i1 %2452, label %2453, label %2477

; <label>:2453                                    ; preds = %2450
  %2454 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %2455 = load i32, i32* %2454, align 4
  %2456 = load i32, i32* %col_width, align 4
  %2457 = sub nsw i32 %2455, %2456
  %2458 = mul nsw i32 4, %2457
  %2459 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 4
  %2460 = load i32, i32* %2459, align 4
  %2461 = icmp sle i32 %2458, %2460
  br i1 %2461, label %2462, label %2477

; <label>:2462                                    ; preds = %2453
  %2463 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 2, i8* %2463, align 1
  %2464 = load i32, i32* %col_width, align 4
  %2465 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %2466 = load i32, i32* %2465, align 4
  %2467 = sub nsw i32 %2464, %2466
  %2468 = mul nsw i32 128, %2467
  %2469 = load i32, i32* %col_width, align 4
  %2470 = sdiv i32 %2468, %2469
  store i32 %2470, i32* %badness, align 4
  %2471 = load i32, i32* %badness, align 4
  %2472 = load i32, i32* %badness, align 4
  %2473 = mul nsw i32 %2471, %2472
  %2474 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %2475 = load i32, i32* %2474, align 4
  %2476 = add nsw i32 %2475, %2473
  store i32 %2476, i32* %2474, align 4
  br label %2482

; <label>:2477                                    ; preds = %2453, %2450, %2445
  %2478 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 3, i8* %2478, align 1
  %2479 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %2480 = load i32, i32* %2479, align 4
  %2481 = add nsw i32 %2480, 1048576
  store i32 %2481, i32* %2479, align 4
  br label %2482

; <label>:2482                                    ; preds = %2477, %2462
  br label %2483

; <label>:2483                                    ; preds = %2482, %2430
  br label %2484

; <label>:2484                                    ; preds = %2483, %2404
  br label %2485

; <label>:2485                                    ; preds = %2484, %2389
  br label %2486

; <label>:2486                                    ; preds = %2485, %2377
  %2487 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %2488 = load i32, i32* %2487, align 4
  %2489 = icmp sge i32 %2488, 0
  br i1 %2489, label %2493, label %2490

; <label>:2490                                    ; preds = %2486
  %2491 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2492 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2491, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0))
  br label %2493

; <label>:2493                                    ; preds = %2490, %2486
  %2494 = load i32, i32* %unbreakable_at_right, align 4
  %2495 = icmp ne i32 %2494, 0
  br i1 %2495, label %2496, label %2498

; <label>:2496                                    ; preds = %2493
  %2497 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 7, i8* %2497, align 1
  br label %2516

; <label>:2498                                    ; preds = %2493
  %2499 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  %2500 = load i8, i8* %2499, align 1
  %2501 = zext i8 %2500 to i32
  %2502 = icmp eq i32 %2501, 2
  br i1 %2502, label %2503, label %2515

; <label>:2503                                    ; preds = %2498
  %2504 = load %union.rec*, %union.rec** %newg, align 8
  %2505 = bitcast %union.rec* %2504 to %struct.gapobj_type*
  %2506 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2505, i32 0, i32 3
  %2507 = bitcast %struct.GAP* %2506 to i16*
  %2508 = load i16, i16* %2507, align 4
  %2509 = lshr i16 %2508, 13
  %2510 = zext i16 %2509 to i32
  %2511 = icmp eq i32 %2510, 6
  br i1 %2511, label %2512, label %2515

; <label>:2512                                    ; preds = %2503
  %2513 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 3, i8* %2513, align 1
  %2514 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  store i32 1048576, i32* %2514, align 4
  br label %2515

; <label>:2515                                    ; preds = %2512, %2503, %2498
  br label %2516

; <label>:2516                                    ; preds = %2515, %2496
  br label %2517

; <label>:2517                                    ; preds = %2516, %1597
  %2518 = bitcast %struct.INTERVAL* %BestI to i8*
  %2519 = bitcast %struct.INTERVAL* %I to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2518, i8* %2519, i64 48, i32 8, i1 false)
  br label %2520

; <label>:2520                                    ; preds = %4418, %2517
  %2521 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  %2522 = load i8, i8* %2521, align 1
  %2523 = zext i8 %2522 to i32
  %2524 = icmp ne i32 %2523, 5
  br i1 %2524, label %2525, label %4419

; <label>:2525                                    ; preds = %2520
  %2526 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  %2527 = load i8, i8* %2526, align 1
  %2528 = zext i8 %2527 to i32
  switch i32 %2528, label %4415 [
    i32 0, label %2529
    i32 8, label %2529
    i32 7, label %2544
    i32 1, label %3668
    i32 2, label %3668
    i32 3, label %3668
    i32 6, label %3678
    i32 4, label %3678
  ]

; <label>:2529                                    ; preds = %2525, %2525
  %2530 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  %2531 = load i8, i8* %2530, align 1
  %2532 = zext i8 %2531 to i32
  %2533 = icmp eq i32 %2532, 8
  br i1 %2533, label %2540, label %2534

; <label>:2534                                    ; preds = %2529
  %2535 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %BestI, i32 0, i32 5
  %2536 = load i32, i32* %2535, align 4
  %2537 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %2538 = load i32, i32* %2537, align 4
  %2539 = icmp sle i32 %2536, %2538
  br i1 %2539, label %2540, label %2543

; <label>:2540                                    ; preds = %2534, %2529
  %2541 = bitcast %struct.INTERVAL* %I to i8*
  %2542 = bitcast %struct.INTERVAL* %BestI to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2541, i8* %2542, i64 48, i32 8, i1 false)
  br label %2543

; <label>:2543                                    ; preds = %2540, %2534
  br label %2544

; <label>:2544                                    ; preds = %2525, %2543
  %2545 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  %2546 = load i8, i8* %2545, align 1
  %2547 = zext i8 %2546 to i32
  %2548 = icmp ne i32 %2547, 5
  br i1 %2548, label %2552, label %2549

; <label>:2549                                    ; preds = %2544
  %2550 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2551 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2550, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0))
  br label %2552

; <label>:2552                                    ; preds = %2549, %2544
  %2553 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 1
  %2554 = load %union.rec*, %union.rec** %2553, align 8
  store %union.rec* %2554, %union.rec** %rlink6, align 8
  %2555 = load %union.rec*, %union.rec** %rlink6, align 8
  %2556 = load %union.rec*, %union.rec** %2, align 8
  %2557 = icmp eq %union.rec* %2555, %2556
  br i1 %2557, label %2558, label %2560

; <label>:2558                                    ; preds = %2552
  %2559 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 5, i8* %2559, align 1
  br label %3665

; <label>:2560                                    ; preds = %2552
  %2561 = load %union.rec*, %union.rec** %rlink6, align 8
  %2562 = bitcast %union.rec* %2561 to %struct.word_type*
  %2563 = getelementptr inbounds %struct.word_type, %struct.word_type* %2562, i32 0, i32 0
  %2564 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2563, i32 0, i64 1
  %2565 = getelementptr inbounds %struct.LIST, %struct.LIST* %2564, i32 0, i32 0
  %2566 = load %union.rec*, %union.rec** %2565, align 8
  store %union.rec* %2566, %union.rec** %g7, align 8
  br label %2567

; <label>:2567                                    ; preds = %2577, %2560
  %2568 = load %union.rec*, %union.rec** %g7, align 8
  %2569 = bitcast %union.rec* %2568 to %struct.word_type*
  %2570 = getelementptr inbounds %struct.word_type, %struct.word_type* %2569, i32 0, i32 1
  %2571 = bitcast %union.FIRST_UNION* %2570 to %struct.anon*
  %2572 = getelementptr inbounds %struct.anon, %struct.anon* %2571, i32 0, i32 0
  %2573 = load i8, i8* %2572, align 1
  %2574 = zext i8 %2573 to i32
  %2575 = icmp eq i32 %2574, 0
  br i1 %2575, label %2576, label %2584

; <label>:2576                                    ; preds = %2567
  br label %2577

; <label>:2577                                    ; preds = %2576
  %2578 = load %union.rec*, %union.rec** %g7, align 8
  %2579 = bitcast %union.rec* %2578 to %struct.word_type*
  %2580 = getelementptr inbounds %struct.word_type, %struct.word_type* %2579, i32 0, i32 0
  %2581 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2580, i32 0, i64 1
  %2582 = getelementptr inbounds %struct.LIST, %struct.LIST* %2581, i32 0, i32 0
  %2583 = load %union.rec*, %union.rec** %2582, align 8
  store %union.rec* %2583, %union.rec** %g7, align 8
  br label %2567

; <label>:2584                                    ; preds = %2567
  %2585 = load %union.rec*, %union.rec** %g7, align 8
  %2586 = bitcast %union.rec* %2585 to %struct.word_type*
  %2587 = getelementptr inbounds %struct.word_type, %struct.word_type* %2586, i32 0, i32 1
  %2588 = bitcast %union.FIRST_UNION* %2587 to %struct.anon*
  %2589 = getelementptr inbounds %struct.anon, %struct.anon* %2588, i32 0, i32 0
  %2590 = load i8, i8* %2589, align 1
  %2591 = zext i8 %2590 to i32
  %2592 = icmp eq i32 %2591, 1
  br i1 %2592, label %2596, label %2593

; <label>:2593                                    ; preds = %2584
  %2594 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2595 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2594, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0))
  br label %2596

; <label>:2596                                    ; preds = %2593, %2584
  %2597 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %2598 = load i32, i32* %2597, align 4
  %2599 = load %union.rec*, %union.rec** %g7, align 8
  %2600 = bitcast %union.rec* %2599 to %struct.gapobj_type*
  %2601 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2600, i32 0, i32 4
  store i32 %2598, i32* %2601, align 4
  %2602 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %2603 = load %union.rec*, %union.rec** %2602, align 8
  %2604 = load %union.rec*, %union.rec** %g7, align 8
  %2605 = bitcast %union.rec* %2604 to %struct.gapobj_type*
  %2606 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2605, i32 0, i32 7
  store %union.rec* %2603, %union.rec** %2606, align 8
  %2607 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %2608 = load %union.rec*, %union.rec** %2607, align 8
  %2609 = load %union.rec*, %union.rec** %g7, align 8
  %2610 = bitcast %union.rec* %2609 to %struct.gapobj_type*
  %2611 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2610, i32 0, i32 8
  store %union.rec* %2608, %union.rec** %2611, align 8
  %2612 = load %union.rec*, %union.rec** %g7, align 8
  %2613 = bitcast %union.rec* %2612 to %struct.gapobj_type*
  %2614 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2613, i32 0, i32 3
  %2615 = bitcast %struct.GAP* %2614 to i16*
  %2616 = load i16, i16* %2615, align 4
  %2617 = lshr i16 %2616, 13
  %2618 = zext i16 %2617 to i32
  %2619 = icmp eq i32 %2618, 7
  br i1 %2619, label %2620, label %2644

; <label>:2620                                    ; preds = %2596
  %2621 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %2622 = bitcast %union.rec* %2621 to %struct.word_type*
  %2623 = getelementptr inbounds %struct.word_type, %struct.word_type* %2622, i32 0, i32 3
  %2624 = bitcast %union.THIRD_UNION* %2623 to %struct.anon.6*
  %2625 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2624, i32 0, i32 0
  %2626 = getelementptr inbounds [2 x i32], [2 x i32]* %2625, i32 0, i64 0
  %2627 = load i32, i32* %2626, align 4
  %2628 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %2629 = bitcast %union.rec* %2628 to %struct.word_type*
  %2630 = getelementptr inbounds %struct.word_type, %struct.word_type* %2629, i32 0, i32 3
  %2631 = bitcast %union.THIRD_UNION* %2630 to %struct.anon.6*
  %2632 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2631, i32 0, i32 1
  %2633 = getelementptr inbounds [2 x i32], [2 x i32]* %2632, i32 0, i64 0
  %2634 = load i32, i32* %2633, align 4
  %2635 = add nsw i32 %2627, %2634
  %2636 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %2637 = load i32, i32* %2636, align 4
  %2638 = sub nsw i32 %2637, %2635
  store i32 %2638, i32* %2636, align 4
  %2639 = load %union.rec*, %union.rec** %g7, align 8
  %2640 = bitcast %union.rec* %2639 to %struct.gapobj_type*
  %2641 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2640, i32 0, i32 4
  %2642 = load i32, i32* %2641, align 4
  %2643 = add nsw i32 %2642, 16
  store i32 %2643, i32* %2641, align 4
  br label %2644

; <label>:2644                                    ; preds = %2620, %2596
  %2645 = load %union.rec*, %union.rec** %rlink6, align 8
  %2646 = bitcast %union.rec* %2645 to %struct.word_type*
  %2647 = getelementptr inbounds %struct.word_type, %struct.word_type* %2646, i32 0, i32 0
  %2648 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2647, i32 0, i64 0
  %2649 = getelementptr inbounds %struct.LIST, %struct.LIST* %2648, i32 0, i32 1
  %2650 = load %union.rec*, %union.rec** %2649, align 8
  store %union.rec* %2650, %union.rec** %rlink6, align 8
  br label %2651

; <label>:2651                                    ; preds = %2714, %2644
  %2652 = load %union.rec*, %union.rec** %rlink6, align 8
  %2653 = load %union.rec*, %union.rec** %2, align 8
  %2654 = icmp ne %union.rec* %2652, %2653
  br i1 %2654, label %2655, label %2721

; <label>:2655                                    ; preds = %2651
  %2656 = load %union.rec*, %union.rec** %rlink6, align 8
  %2657 = bitcast %union.rec* %2656 to %struct.word_type*
  %2658 = getelementptr inbounds %struct.word_type, %struct.word_type* %2657, i32 0, i32 0
  %2659 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2658, i32 0, i64 1
  %2660 = getelementptr inbounds %struct.LIST, %struct.LIST* %2659, i32 0, i32 0
  %2661 = load %union.rec*, %union.rec** %2660, align 8
  store %union.rec* %2661, %union.rec** %right8, align 8
  br label %2662

; <label>:2662                                    ; preds = %2672, %2655
  %2663 = load %union.rec*, %union.rec** %right8, align 8
  %2664 = bitcast %union.rec* %2663 to %struct.word_type*
  %2665 = getelementptr inbounds %struct.word_type, %struct.word_type* %2664, i32 0, i32 1
  %2666 = bitcast %union.FIRST_UNION* %2665 to %struct.anon*
  %2667 = getelementptr inbounds %struct.anon, %struct.anon* %2666, i32 0, i32 0
  %2668 = load i8, i8* %2667, align 1
  %2669 = zext i8 %2668 to i32
  %2670 = icmp eq i32 %2669, 0
  br i1 %2670, label %2671, label %2679

; <label>:2671                                    ; preds = %2662
  br label %2672

; <label>:2672                                    ; preds = %2671
  %2673 = load %union.rec*, %union.rec** %right8, align 8
  %2674 = bitcast %union.rec* %2673 to %struct.word_type*
  %2675 = getelementptr inbounds %struct.word_type, %struct.word_type* %2674, i32 0, i32 0
  %2676 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2675, i32 0, i64 1
  %2677 = getelementptr inbounds %struct.LIST, %struct.LIST* %2676, i32 0, i32 0
  %2678 = load %union.rec*, %union.rec** %2677, align 8
  store %union.rec* %2678, %union.rec** %right8, align 8
  br label %2662

; <label>:2679                                    ; preds = %2662
  %2680 = load %union.rec*, %union.rec** %right8, align 8
  %2681 = bitcast %union.rec* %2680 to %struct.word_type*
  %2682 = getelementptr inbounds %struct.word_type, %struct.word_type* %2681, i32 0, i32 1
  %2683 = bitcast %union.FIRST_UNION* %2682 to %struct.anon*
  %2684 = getelementptr inbounds %struct.anon, %struct.anon* %2683, i32 0, i32 0
  %2685 = load i8, i8* %2684, align 1
  %2686 = zext i8 %2685 to i32
  %2687 = icmp eq i32 %2686, 9
  br i1 %2687, label %2688, label %2692

; <label>:2688                                    ; preds = %2679
  %2689 = load %union.rec*, %union.rec** %right8, align 8
  %2690 = call i32 @SplitIsDefinite(%union.rec* %2689)
  %2691 = icmp ne i32 %2690, 0
  br i1 %2691, label %2712, label %2713

; <label>:2692                                    ; preds = %2679
  %2693 = load %union.rec*, %union.rec** %right8, align 8
  %2694 = bitcast %union.rec* %2693 to %struct.word_type*
  %2695 = getelementptr inbounds %struct.word_type, %struct.word_type* %2694, i32 0, i32 1
  %2696 = bitcast %union.FIRST_UNION* %2695 to %struct.anon*
  %2697 = getelementptr inbounds %struct.anon, %struct.anon* %2696, i32 0, i32 0
  %2698 = load i8, i8* %2697, align 1
  %2699 = zext i8 %2698 to i32
  %2700 = icmp sge i32 %2699, 9
  br i1 %2700, label %2701, label %2710

; <label>:2701                                    ; preds = %2692
  %2702 = load %union.rec*, %union.rec** %right8, align 8
  %2703 = bitcast %union.rec* %2702 to %struct.word_type*
  %2704 = getelementptr inbounds %struct.word_type, %struct.word_type* %2703, i32 0, i32 1
  %2705 = bitcast %union.FIRST_UNION* %2704 to %struct.anon*
  %2706 = getelementptr inbounds %struct.anon, %struct.anon* %2705, i32 0, i32 0
  %2707 = load i8, i8* %2706, align 1
  %2708 = zext i8 %2707 to i32
  %2709 = icmp sle i32 %2708, 99
  br label %2710

; <label>:2710                                    ; preds = %2701, %2692
  %2711 = phi i1 [ false, %2692 ], [ %2709, %2701 ]
  br i1 %2711, label %2712, label %2713

; <label>:2712                                    ; preds = %2710, %2688
  br label %2721

; <label>:2713                                    ; preds = %2710, %2688
  br label %2714

; <label>:2714                                    ; preds = %2713
  %2715 = load %union.rec*, %union.rec** %rlink6, align 8
  %2716 = bitcast %union.rec* %2715 to %struct.word_type*
  %2717 = getelementptr inbounds %struct.word_type, %struct.word_type* %2716, i32 0, i32 0
  %2718 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2717, i32 0, i64 0
  %2719 = getelementptr inbounds %struct.LIST, %struct.LIST* %2718, i32 0, i32 1
  %2720 = load %union.rec*, %union.rec** %2719, align 8
  store %union.rec* %2720, %union.rec** %rlink6, align 8
  br label %2651

; <label>:2721                                    ; preds = %2712, %2651
  %2722 = load %union.rec*, %union.rec** %rlink6, align 8
  %2723 = load %union.rec*, %union.rec** %2, align 8
  %2724 = icmp ne %union.rec* %2722, %2723
  br i1 %2724, label %2728, label %2725

; <label>:2725                                    ; preds = %2721
  %2726 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2727 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2726, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i32 0, i32 0))
  br label %2728

; <label>:2728                                    ; preds = %2725, %2721
  %2729 = load %union.rec*, %union.rec** %g7, align 8
  %2730 = bitcast %union.rec* %2729 to %struct.gapobj_type*
  %2731 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2730, i32 0, i32 3
  %2732 = bitcast %struct.GAP* %2731 to i16*
  %2733 = load i16, i16* %2732, align 4
  %2734 = lshr i16 %2733, 13
  %2735 = zext i16 %2734 to i32
  %2736 = icmp eq i32 %2735, 6
  br i1 %2736, label %2737, label %2773

; <label>:2737                                    ; preds = %2728
  %2738 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %2739 = load i8, i8* %2738, align 1
  %2740 = add i8 %2739, 1
  store i8 %2740, i8* %2738, align 1
  %2741 = load %union.rec*, %union.rec** %g7, align 8
  %2742 = bitcast %union.rec* %2741 to %struct.gapobj_type*
  %2743 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2742, i32 0, i32 5
  %2744 = load i16, i16* %2743, align 2
  %2745 = sext i16 %2744 to i32
  %2746 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 8
  store i32 %2745, i32* %2746, align 4
  %2747 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %2748 = load i32, i32* %2747, align 4
  %2749 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 9
  store i32 %2748, i32* %2749, align 4
  %2750 = load %union.rec*, %union.rec** %g7, align 8
  %2751 = bitcast %union.rec* %2750 to %struct.gapobj_type*
  %2752 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2751, i32 0, i32 5
  %2753 = load i16, i16* %2752, align 2
  %2754 = sext i16 %2753 to i32
  %2755 = load %union.rec*, %union.rec** %right8, align 8
  %2756 = bitcast %union.rec* %2755 to %struct.word_type*
  %2757 = getelementptr inbounds %struct.word_type, %struct.word_type* %2756, i32 0, i32 3
  %2758 = bitcast %union.THIRD_UNION* %2757 to %struct.anon.6*
  %2759 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2758, i32 0, i32 0
  %2760 = getelementptr inbounds [2 x i32], [2 x i32]* %2759, i32 0, i64 0
  %2761 = load i32, i32* %2760, align 4
  %2762 = load %union.rec*, %union.rec** %right8, align 8
  %2763 = bitcast %union.rec* %2762 to %struct.word_type*
  %2764 = getelementptr inbounds %struct.word_type, %struct.word_type* %2763, i32 0, i32 3
  %2765 = bitcast %union.THIRD_UNION* %2764 to %struct.anon.6*
  %2766 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2765, i32 0, i32 1
  %2767 = getelementptr inbounds [2 x i32], [2 x i32]* %2766, i32 0, i64 0
  %2768 = load i32, i32* %2767, align 4
  %2769 = add nsw i32 %2761, %2768
  %2770 = add nsw i32 %2754, %2769
  %2771 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  store i32 %2770, i32* %2771, align 4
  %2772 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 4
  store i32 0, i32* %2772, align 4
  br label %2806

; <label>:2773                                    ; preds = %2728
  %2774 = load %union.rec*, %union.rec** %g7, align 8
  %2775 = bitcast %union.rec* %2774 to %struct.gapobj_type*
  %2776 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2775, i32 0, i32 5
  %2777 = load i16, i16* %2776, align 2
  %2778 = sext i16 %2777 to i32
  %2779 = load %union.rec*, %union.rec** %right8, align 8
  %2780 = bitcast %union.rec* %2779 to %struct.word_type*
  %2781 = getelementptr inbounds %struct.word_type, %struct.word_type* %2780, i32 0, i32 3
  %2782 = bitcast %union.THIRD_UNION* %2781 to %struct.anon.6*
  %2783 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2782, i32 0, i32 0
  %2784 = getelementptr inbounds [2 x i32], [2 x i32]* %2783, i32 0, i64 0
  %2785 = load i32, i32* %2784, align 4
  %2786 = load %union.rec*, %union.rec** %right8, align 8
  %2787 = bitcast %union.rec* %2786 to %struct.word_type*
  %2788 = getelementptr inbounds %struct.word_type, %struct.word_type* %2787, i32 0, i32 3
  %2789 = bitcast %union.THIRD_UNION* %2788 to %struct.anon.6*
  %2790 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2789, i32 0, i32 1
  %2791 = getelementptr inbounds [2 x i32], [2 x i32]* %2790, i32 0, i64 0
  %2792 = load i32, i32* %2791, align 4
  %2793 = add nsw i32 %2785, %2792
  %2794 = add nsw i32 %2778, %2793
  %2795 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %2796 = load i32, i32* %2795, align 4
  %2797 = add nsw i32 %2796, %2794
  store i32 %2797, i32* %2795, align 4
  %2798 = load %union.rec*, %union.rec** %g7, align 8
  %2799 = bitcast %union.rec* %2798 to %struct.gapobj_type*
  %2800 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2799, i32 0, i32 5
  %2801 = load i16, i16* %2800, align 2
  %2802 = sext i16 %2801 to i32
  %2803 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 4
  %2804 = load i32, i32* %2803, align 4
  %2805 = add nsw i32 %2804, %2802
  store i32 %2805, i32* %2803, align 4
  br label %2806

; <label>:2806                                    ; preds = %2773, %2737
  store i32 0, i32* %unbreakable_at_right13, align 4
  %2807 = load %union.rec*, %union.rec** %rlink6, align 8
  %2808 = bitcast %union.rec* %2807 to %struct.word_type*
  %2809 = getelementptr inbounds %struct.word_type, %struct.word_type* %2808, i32 0, i32 0
  %2810 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2809, i32 0, i64 1
  %2811 = getelementptr inbounds %struct.LIST, %struct.LIST* %2810, i32 0, i32 0
  %2812 = load %union.rec*, %union.rec** %2811, align 8
  store %union.rec* %2812, %union.rec** %tmp11, align 8
  br label %2813

; <label>:2813                                    ; preds = %2823, %2806
  %2814 = load %union.rec*, %union.rec** %tmp11, align 8
  %2815 = bitcast %union.rec* %2814 to %struct.word_type*
  %2816 = getelementptr inbounds %struct.word_type, %struct.word_type* %2815, i32 0, i32 1
  %2817 = bitcast %union.FIRST_UNION* %2816 to %struct.anon*
  %2818 = getelementptr inbounds %struct.anon, %struct.anon* %2817, i32 0, i32 0
  %2819 = load i8, i8* %2818, align 1
  %2820 = zext i8 %2819 to i32
  %2821 = icmp eq i32 %2820, 0
  br i1 %2821, label %2822, label %2830

; <label>:2822                                    ; preds = %2813
  br label %2823

; <label>:2823                                    ; preds = %2822
  %2824 = load %union.rec*, %union.rec** %tmp11, align 8
  %2825 = bitcast %union.rec* %2824 to %struct.word_type*
  %2826 = getelementptr inbounds %struct.word_type, %struct.word_type* %2825, i32 0, i32 0
  %2827 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2826, i32 0, i64 1
  %2828 = getelementptr inbounds %struct.LIST, %struct.LIST* %2827, i32 0, i32 0
  %2829 = load %union.rec*, %union.rec** %2828, align 8
  store %union.rec* %2829, %union.rec** %tmp11, align 8
  br label %2813

; <label>:2830                                    ; preds = %2813
  store %union.rec* null, %union.rec** %newg9, align 8
  store i32 1, i32* %jn12, align 4
  %2831 = load %union.rec*, %union.rec** %rlink6, align 8
  %2832 = bitcast %union.rec* %2831 to %struct.word_type*
  %2833 = getelementptr inbounds %struct.word_type, %struct.word_type* %2832, i32 0, i32 0
  %2834 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2833, i32 0, i64 0
  %2835 = getelementptr inbounds %struct.LIST, %struct.LIST* %2834, i32 0, i32 1
  %2836 = load %union.rec*, %union.rec** %2835, align 8
  store %union.rec* %2836, %union.rec** %rlink6, align 8
  br label %2837

; <label>:2837                                    ; preds = %2933, %2830
  %2838 = load %union.rec*, %union.rec** %rlink6, align 8
  %2839 = load %union.rec*, %union.rec** %2, align 8
  %2840 = icmp ne %union.rec* %2838, %2839
  br i1 %2840, label %2841, label %2940

; <label>:2841                                    ; preds = %2837
  %2842 = load %union.rec*, %union.rec** %rlink6, align 8
  %2843 = bitcast %union.rec* %2842 to %struct.word_type*
  %2844 = getelementptr inbounds %struct.word_type, %struct.word_type* %2843, i32 0, i32 0
  %2845 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2844, i32 0, i64 1
  %2846 = getelementptr inbounds %struct.LIST, %struct.LIST* %2845, i32 0, i32 0
  %2847 = load %union.rec*, %union.rec** %2846, align 8
  store %union.rec* %2847, %union.rec** %foll10, align 8
  br label %2848

; <label>:2848                                    ; preds = %2858, %2841
  %2849 = load %union.rec*, %union.rec** %foll10, align 8
  %2850 = bitcast %union.rec* %2849 to %struct.word_type*
  %2851 = getelementptr inbounds %struct.word_type, %struct.word_type* %2850, i32 0, i32 1
  %2852 = bitcast %union.FIRST_UNION* %2851 to %struct.anon*
  %2853 = getelementptr inbounds %struct.anon, %struct.anon* %2852, i32 0, i32 0
  %2854 = load i8, i8* %2853, align 1
  %2855 = zext i8 %2854 to i32
  %2856 = icmp eq i32 %2855, 0
  br i1 %2856, label %2857, label %2865

; <label>:2857                                    ; preds = %2848
  br label %2858

; <label>:2858                                    ; preds = %2857
  %2859 = load %union.rec*, %union.rec** %foll10, align 8
  %2860 = bitcast %union.rec* %2859 to %struct.word_type*
  %2861 = getelementptr inbounds %struct.word_type, %struct.word_type* %2860, i32 0, i32 0
  %2862 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2861, i32 0, i64 1
  %2863 = getelementptr inbounds %struct.LIST, %struct.LIST* %2862, i32 0, i32 0
  %2864 = load %union.rec*, %union.rec** %2863, align 8
  store %union.rec* %2864, %union.rec** %foll10, align 8
  br label %2848

; <label>:2865                                    ; preds = %2848
  %2866 = load %union.rec*, %union.rec** %foll10, align 8
  %2867 = bitcast %union.rec* %2866 to %struct.word_type*
  %2868 = getelementptr inbounds %struct.word_type, %struct.word_type* %2867, i32 0, i32 1
  %2869 = bitcast %union.FIRST_UNION* %2868 to %struct.anon*
  %2870 = getelementptr inbounds %struct.anon, %struct.anon* %2869, i32 0, i32 0
  %2871 = load i8, i8* %2870, align 1
  %2872 = zext i8 %2871 to i32
  %2873 = icmp eq i32 %2872, 1
  br i1 %2873, label %2874, label %2891

; <label>:2874                                    ; preds = %2865
  %2875 = load %union.rec*, %union.rec** %foll10, align 8
  store %union.rec* %2875, %union.rec** %newg9, align 8
  %2876 = load i32, i32* %jn12, align 4
  %2877 = icmp ne i32 %2876, 0
  br i1 %2877, label %2878, label %2888

; <label>:2878                                    ; preds = %2874
  %2879 = load %union.rec*, %union.rec** %foll10, align 8
  %2880 = bitcast %union.rec* %2879 to %struct.gapobj_type*
  %2881 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2880, i32 0, i32 3
  %2882 = bitcast %struct.GAP* %2881 to i16*
  %2883 = load i16, i16* %2882, align 4
  %2884 = lshr i16 %2883, 9
  %2885 = and i16 %2884, 1
  %2886 = zext i16 %2885 to i32
  %2887 = icmp ne i32 %2886, 0
  br label %2888

; <label>:2888                                    ; preds = %2878, %2874
  %2889 = phi i1 [ false, %2874 ], [ %2887, %2878 ]
  %2890 = zext i1 %2889 to i32
  store i32 %2890, i32* %jn12, align 4
  br label %2932

; <label>:2891                                    ; preds = %2865
  %2892 = load %union.rec*, %union.rec** %foll10, align 8
  %2893 = bitcast %union.rec* %2892 to %struct.word_type*
  %2894 = getelementptr inbounds %struct.word_type, %struct.word_type* %2893, i32 0, i32 1
  %2895 = bitcast %union.FIRST_UNION* %2894 to %struct.anon*
  %2896 = getelementptr inbounds %struct.anon, %struct.anon* %2895, i32 0, i32 0
  %2897 = load i8, i8* %2896, align 1
  %2898 = zext i8 %2897 to i32
  %2899 = icmp eq i32 %2898, 9
  br i1 %2899, label %2900, label %2904

; <label>:2900                                    ; preds = %2891
  %2901 = load %union.rec*, %union.rec** %foll10, align 8
  %2902 = call i32 @SplitIsDefinite(%union.rec* %2901)
  %2903 = icmp ne i32 %2902, 0
  br i1 %2903, label %2924, label %2931

; <label>:2904                                    ; preds = %2891
  %2905 = load %union.rec*, %union.rec** %foll10, align 8
  %2906 = bitcast %union.rec* %2905 to %struct.word_type*
  %2907 = getelementptr inbounds %struct.word_type, %struct.word_type* %2906, i32 0, i32 1
  %2908 = bitcast %union.FIRST_UNION* %2907 to %struct.anon*
  %2909 = getelementptr inbounds %struct.anon, %struct.anon* %2908, i32 0, i32 0
  %2910 = load i8, i8* %2909, align 1
  %2911 = zext i8 %2910 to i32
  %2912 = icmp sge i32 %2911, 9
  br i1 %2912, label %2913, label %2922

; <label>:2913                                    ; preds = %2904
  %2914 = load %union.rec*, %union.rec** %foll10, align 8
  %2915 = bitcast %union.rec* %2914 to %struct.word_type*
  %2916 = getelementptr inbounds %struct.word_type, %struct.word_type* %2915, i32 0, i32 1
  %2917 = bitcast %union.FIRST_UNION* %2916 to %struct.anon*
  %2918 = getelementptr inbounds %struct.anon, %struct.anon* %2917, i32 0, i32 0
  %2919 = load i8, i8* %2918, align 1
  %2920 = zext i8 %2919 to i32
  %2921 = icmp sle i32 %2920, 99
  br label %2922

; <label>:2922                                    ; preds = %2913, %2904
  %2923 = phi i1 [ false, %2904 ], [ %2921, %2913 ]
  br i1 %2923, label %2924, label %2931

; <label>:2924                                    ; preds = %2922, %2900
  %2925 = load %union.rec*, %union.rec** %newg9, align 8
  %2926 = icmp ne %union.rec* %2925, null
  br i1 %2926, label %2930, label %2927

; <label>:2927                                    ; preds = %2924
  %2928 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2929 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2928, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0))
  br label %2930

; <label>:2930                                    ; preds = %2927, %2924
  br label %2940

; <label>:2931                                    ; preds = %2922, %2900
  br label %2932

; <label>:2932                                    ; preds = %2931, %2888
  br label %2933

; <label>:2933                                    ; preds = %2932
  %2934 = load %union.rec*, %union.rec** %rlink6, align 8
  %2935 = bitcast %union.rec* %2934 to %struct.word_type*
  %2936 = getelementptr inbounds %struct.word_type, %struct.word_type* %2935, i32 0, i32 0
  %2937 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2936, i32 0, i64 0
  %2938 = getelementptr inbounds %struct.LIST, %struct.LIST* %2937, i32 0, i32 1
  %2939 = load %union.rec*, %union.rec** %2938, align 8
  store %union.rec* %2939, %union.rec** %rlink6, align 8
  br label %2837

; <label>:2940                                    ; preds = %2930, %2837
  %2941 = load %union.rec*, %union.rec** %rlink6, align 8
  %2942 = load %union.rec*, %union.rec** %2, align 8
  %2943 = icmp ne %union.rec* %2941, %2942
  br i1 %2943, label %2944, label %3343

; <label>:2944                                    ; preds = %2940
  %2945 = load %union.rec*, %union.rec** %newg9, align 8
  %2946 = bitcast %union.rec* %2945 to %struct.word_type*
  %2947 = getelementptr inbounds %struct.word_type, %struct.word_type* %2946, i32 0, i32 0
  %2948 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2947, i32 0, i64 1
  %2949 = getelementptr inbounds %struct.LIST, %struct.LIST* %2948, i32 0, i32 1
  %2950 = load %union.rec*, %union.rec** %2949, align 8
  %2951 = load %union.rec*, %union.rec** %newg9, align 8
  %2952 = bitcast %union.rec* %2951 to %struct.word_type*
  %2953 = getelementptr inbounds %struct.word_type, %struct.word_type* %2952, i32 0, i32 0
  %2954 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2953, i32 0, i64 1
  %2955 = getelementptr inbounds %struct.LIST, %struct.LIST* %2954, i32 0, i32 0
  %2956 = load %union.rec*, %union.rec** %2955, align 8
  %2957 = icmp eq %union.rec* %2950, %2956
  br i1 %2957, label %2961, label %2958

; <label>:2958                                    ; preds = %2944
  %2959 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2960 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2959, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0))
  br label %2961

; <label>:2961                                    ; preds = %2958, %2944
  %2962 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %2963 = load %union.rec*, %union.rec** %2962, align 8
  %2964 = icmp ne %union.rec* %2963, null
  br i1 %2964, label %2965, label %2973

; <label>:2965                                    ; preds = %2961
  %2966 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %2967 = load %union.rec*, %union.rec** %2966, align 8
  %2968 = bitcast %union.rec* %2967 to %struct.closure_type*
  %2969 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2968, i32 0, i32 4
  %2970 = bitcast %union.FOURTH_UNION* %2969 to %struct.CONSTRAINT*
  %2971 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %2970, i32 0, i32 1
  %2972 = load i32, i32* %2971, align 4
  store i32 %2972, i32* %etc_width, align 4
  br label %2973

; <label>:2973                                    ; preds = %2965, %2961
  %2974 = load %union.rec*, %union.rec** %newg9, align 8
  %2975 = bitcast %union.rec* %2974 to %struct.gapobj_type*
  %2976 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2975, i32 0, i32 3
  %2977 = bitcast %struct.GAP* %2976 to i16*
  %2978 = load i16, i16* %2977, align 4
  %2979 = lshr i16 %2978, 13
  %2980 = zext i16 %2979 to i32
  %2981 = icmp eq i32 %2980, 6
  br i1 %2981, label %2982, label %3014

; <label>:2982                                    ; preds = %2973
  %2983 = load %union.rec*, %union.rec** %foll10, align 8
  %2984 = bitcast %union.rec* %2983 to %struct.word_type*
  %2985 = getelementptr inbounds %struct.word_type, %struct.word_type* %2984, i32 0, i32 3
  %2986 = bitcast %union.THIRD_UNION* %2985 to %struct.anon.6*
  %2987 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2986, i32 0, i32 0
  %2988 = getelementptr inbounds [2 x i32], [2 x i32]* %2987, i32 0, i64 0
  %2989 = load i32, i32* %2988, align 4
  %2990 = load %union.rec*, %union.rec** %foll10, align 8
  %2991 = bitcast %union.rec* %2990 to %struct.word_type*
  %2992 = getelementptr inbounds %struct.word_type, %struct.word_type* %2991, i32 0, i32 3
  %2993 = bitcast %union.THIRD_UNION* %2992 to %struct.anon.6*
  %2994 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2993, i32 0, i32 1
  %2995 = getelementptr inbounds [2 x i32], [2 x i32]* %2994, i32 0, i64 0
  %2996 = load i32, i32* %2995, align 4
  %2997 = load %union.rec*, %union.rec** %newg9, align 8
  %2998 = bitcast %union.rec* %2997 to %struct.gapobj_type*
  %2999 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2998, i32 0, i32 3
  %3000 = load i32, i32* %etc_width, align 4
  %3001 = call i32 @ActualGap(i32 0, i32 %2989, i32 %2996, %struct.GAP* %2999, i32 %3000, i32 0)
  %3002 = load %union.rec*, %union.rec** %foll10, align 8
  %3003 = bitcast %union.rec* %3002 to %struct.word_type*
  %3004 = getelementptr inbounds %struct.word_type, %struct.word_type* %3003, i32 0, i32 3
  %3005 = bitcast %union.THIRD_UNION* %3004 to %struct.anon.6*
  %3006 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3005, i32 0, i32 0
  %3007 = getelementptr inbounds [2 x i32], [2 x i32]* %3006, i32 0, i64 0
  %3008 = load i32, i32* %3007, align 4
  %3009 = sub nsw i32 %3001, %3008
  %3010 = trunc i32 %3009 to i16
  %3011 = load %union.rec*, %union.rec** %newg9, align 8
  %3012 = bitcast %union.rec* %3011 to %struct.gapobj_type*
  %3013 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3012, i32 0, i32 5
  store i16 %3010, i16* %3013, align 2
  br label %3071

; <label>:3014                                    ; preds = %2973
  %3015 = load %union.rec*, %union.rec** %right8, align 8
  %3016 = bitcast %union.rec* %3015 to %struct.word_type*
  %3017 = getelementptr inbounds %struct.word_type, %struct.word_type* %3016, i32 0, i32 3
  %3018 = bitcast %union.THIRD_UNION* %3017 to %struct.anon.6*
  %3019 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3018, i32 0, i32 1
  %3020 = getelementptr inbounds [2 x i32], [2 x i32]* %3019, i32 0, i64 0
  %3021 = load i32, i32* %3020, align 4
  %3022 = load %union.rec*, %union.rec** %foll10, align 8
  %3023 = bitcast %union.rec* %3022 to %struct.word_type*
  %3024 = getelementptr inbounds %struct.word_type, %struct.word_type* %3023, i32 0, i32 3
  %3025 = bitcast %union.THIRD_UNION* %3024 to %struct.anon.6*
  %3026 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3025, i32 0, i32 0
  %3027 = getelementptr inbounds [2 x i32], [2 x i32]* %3026, i32 0, i64 0
  %3028 = load i32, i32* %3027, align 4
  %3029 = load %union.rec*, %union.rec** %foll10, align 8
  %3030 = bitcast %union.rec* %3029 to %struct.word_type*
  %3031 = getelementptr inbounds %struct.word_type, %struct.word_type* %3030, i32 0, i32 3
  %3032 = bitcast %union.THIRD_UNION* %3031 to %struct.anon.6*
  %3033 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3032, i32 0, i32 1
  %3034 = getelementptr inbounds [2 x i32], [2 x i32]* %3033, i32 0, i64 0
  %3035 = load i32, i32* %3034, align 4
  %3036 = load %union.rec*, %union.rec** %newg9, align 8
  %3037 = bitcast %union.rec* %3036 to %struct.gapobj_type*
  %3038 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3037, i32 0, i32 3
  %3039 = load i32, i32* %etc_width, align 4
  %3040 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %3041 = load i32, i32* %3040, align 4
  %3042 = load %union.rec*, %union.rec** %right8, align 8
  %3043 = bitcast %union.rec* %3042 to %struct.word_type*
  %3044 = getelementptr inbounds %struct.word_type, %struct.word_type* %3043, i32 0, i32 3
  %3045 = bitcast %union.THIRD_UNION* %3044 to %struct.anon.6*
  %3046 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3045, i32 0, i32 1
  %3047 = getelementptr inbounds [2 x i32], [2 x i32]* %3046, i32 0, i64 0
  %3048 = load i32, i32* %3047, align 4
  %3049 = sub nsw i32 %3041, %3048
  %3050 = call i32 @ActualGap(i32 %3021, i32 %3028, i32 %3035, %struct.GAP* %3038, i32 %3039, i32 %3049)
  %3051 = load %union.rec*, %union.rec** %foll10, align 8
  %3052 = bitcast %union.rec* %3051 to %struct.word_type*
  %3053 = getelementptr inbounds %struct.word_type, %struct.word_type* %3052, i32 0, i32 3
  %3054 = bitcast %union.THIRD_UNION* %3053 to %struct.anon.6*
  %3055 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3054, i32 0, i32 0
  %3056 = getelementptr inbounds [2 x i32], [2 x i32]* %3055, i32 0, i64 0
  %3057 = load i32, i32* %3056, align 4
  %3058 = sub nsw i32 %3050, %3057
  %3059 = load %union.rec*, %union.rec** %right8, align 8
  %3060 = bitcast %union.rec* %3059 to %struct.word_type*
  %3061 = getelementptr inbounds %struct.word_type, %struct.word_type* %3060, i32 0, i32 3
  %3062 = bitcast %union.THIRD_UNION* %3061 to %struct.anon.6*
  %3063 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3062, i32 0, i32 1
  %3064 = getelementptr inbounds [2 x i32], [2 x i32]* %3063, i32 0, i64 0
  %3065 = load i32, i32* %3064, align 4
  %3066 = sub nsw i32 %3058, %3065
  %3067 = trunc i32 %3066 to i16
  %3068 = load %union.rec*, %union.rec** %newg9, align 8
  %3069 = bitcast %union.rec* %3068 to %struct.gapobj_type*
  %3070 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3069, i32 0, i32 5
  store i16 %3067, i16* %3070, align 2
  br label %3071

; <label>:3071                                    ; preds = %3014, %2982
  %3072 = load %union.rec*, %union.rec** %newg9, align 8
  %3073 = bitcast %union.rec* %3072 to %struct.gapobj_type*
  %3074 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3073, i32 0, i32 3
  %3075 = bitcast %struct.GAP* %3074 to i16*
  %3076 = load i16, i16* %3075, align 4
  %3077 = lshr i16 %3076, 13
  %3078 = zext i16 %3077 to i32
  %3079 = icmp eq i32 %3078, 2
  br i1 %3079, label %3089, label %3080

; <label>:3080                                    ; preds = %3071
  %3081 = load %union.rec*, %union.rec** %newg9, align 8
  %3082 = bitcast %union.rec* %3081 to %struct.gapobj_type*
  %3083 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3082, i32 0, i32 3
  %3084 = bitcast %struct.GAP* %3083 to i16*
  %3085 = load i16, i16* %3084, align 4
  %3086 = lshr i16 %3085, 13
  %3087 = zext i16 %3086 to i32
  %3088 = icmp eq i32 %3087, 7
  br i1 %3088, label %3089, label %3323

; <label>:3089                                    ; preds = %3080, %3071
  %3090 = load i32, i32* %hyph_allowed, align 4
  %3091 = icmp ne i32 %3090, 0
  br i1 %3091, label %3092, label %3321

; <label>:3092                                    ; preds = %3089
  %3093 = load %union.rec*, %union.rec** %right8, align 8
  %3094 = bitcast %union.rec* %3093 to %struct.word_type*
  %3095 = getelementptr inbounds %struct.word_type, %struct.word_type* %3094, i32 0, i32 1
  %3096 = bitcast %union.FIRST_UNION* %3095 to %struct.anon*
  %3097 = getelementptr inbounds %struct.anon, %struct.anon* %3096, i32 0, i32 0
  %3098 = load i8, i8* %3097, align 1
  %3099 = zext i8 %3098 to i32
  %3100 = icmp eq i32 %3099, 11
  br i1 %3100, label %3110, label %3101

; <label>:3101                                    ; preds = %3092
  %3102 = load %union.rec*, %union.rec** %right8, align 8
  %3103 = bitcast %union.rec* %3102 to %struct.word_type*
  %3104 = getelementptr inbounds %struct.word_type, %struct.word_type* %3103, i32 0, i32 1
  %3105 = bitcast %union.FIRST_UNION* %3104 to %struct.anon*
  %3106 = getelementptr inbounds %struct.anon, %struct.anon* %3105, i32 0, i32 0
  %3107 = load i8, i8* %3106, align 1
  %3108 = zext i8 %3107 to i32
  %3109 = icmp eq i32 %3108, 12
  br i1 %3109, label %3110, label %3320

; <label>:3110                                    ; preds = %3101, %3092
  %3111 = load %union.rec*, %union.rec** %right8, align 8
  %3112 = bitcast %union.rec* %3111 to %struct.word_type*
  %3113 = getelementptr inbounds %struct.word_type, %struct.word_type* %3112, i32 0, i32 4
  %3114 = getelementptr inbounds [4 x i8], [4 x i8]* %3113, i32 0, i32 0
  %3115 = call i64 @strlen(i8* %3114) #4
  %3116 = sub i64 %3115, 1
  %3117 = load %union.rec*, %union.rec** %right8, align 8
  %3118 = bitcast %union.rec* %3117 to %struct.word_type*
  %3119 = getelementptr inbounds %struct.word_type, %struct.word_type* %3118, i32 0, i32 4
  %3120 = getelementptr inbounds [4 x i8], [4 x i8]* %3119, i32 0, i64 %3116
  %3121 = load i8, i8* %3120, align 1
  %3122 = zext i8 %3121 to i32
  %3123 = icmp eq i32 %3122, 45
  br i1 %3123, label %3320, label %3124

; <label>:3124                                    ; preds = %3110
  %3125 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %3126 = icmp eq %union.rec* %3125, null
  br i1 %3126, label %3127, label %3216

; <label>:3127                                    ; preds = %3124
  %3128 = load %union.rec*, %union.rec** %2, align 8
  %3129 = bitcast %union.rec* %3128 to %struct.word_type*
  %3130 = getelementptr inbounds %struct.word_type, %struct.word_type* %3129, i32 0, i32 1
  %3131 = bitcast %union.FIRST_UNION* %3130 to %struct.FILE_POS*
  %3132 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), %struct.FILE_POS* %3131)
  store %union.rec* %3132, %union.rec** @FillObject.hyph_word, align 8
  %3133 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %3134 = bitcast %union.rec* %3133 to %struct.word_type*
  %3135 = getelementptr inbounds %struct.word_type, %struct.word_type* %3134, i32 0, i32 2
  %3136 = bitcast %union.SECOND_UNION* %3135 to %struct.anon.1*
  %3137 = bitcast %struct.anon.1* %3136 to i32*
  %3138 = load i32, i32* %3137, align 4
  %3139 = and i32 %3138, -4096
  store i32 %3139, i32* %3137, align 4
  %3140 = load %union.rec*, %union.rec** %2, align 8
  %3141 = bitcast %union.rec* %3140 to %struct.closure_type*
  %3142 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3141, i32 0, i32 4
  %3143 = bitcast %union.FOURTH_UNION* %3142 to %struct.STYLE*
  %3144 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %3143, i32 0, i32 4
  %3145 = load i32, i32* %3144, align 4
  %3146 = lshr i32 %3145, 12
  %3147 = and i32 %3146, 1023
  %3148 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %3149 = bitcast %union.rec* %3148 to %struct.word_type*
  %3150 = getelementptr inbounds %struct.word_type, %struct.word_type* %3149, i32 0, i32 2
  %3151 = bitcast %union.SECOND_UNION* %3150 to %struct.anon.1*
  %3152 = bitcast %struct.anon.1* %3151 to i32*
  %3153 = load i32, i32* %3152, align 4
  %3154 = and i32 %3147, 1023
  %3155 = shl i32 %3154, 12
  %3156 = and i32 %3153, -4190209
  %3157 = or i32 %3156, %3155
  store i32 %3157, i32* %3152, align 4
  %3158 = load %union.rec*, %union.rec** %2, align 8
  %3159 = bitcast %union.rec* %3158 to %struct.closure_type*
  %3160 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3159, i32 0, i32 4
  %3161 = bitcast %union.FOURTH_UNION* %3160 to %struct.STYLE*
  %3162 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %3161, i32 0, i32 4
  %3163 = load i32, i32* %3162, align 4
  %3164 = lshr i32 %3163, 22
  %3165 = and i32 %3164, 3
  %3166 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %3167 = bitcast %union.rec* %3166 to %struct.word_type*
  %3168 = getelementptr inbounds %struct.word_type, %struct.word_type* %3167, i32 0, i32 2
  %3169 = bitcast %union.SECOND_UNION* %3168 to %struct.anon.1*
  %3170 = bitcast %struct.anon.1* %3169 to i32*
  %3171 = load i32, i32* %3170, align 4
  %3172 = and i32 %3165, 1
  %3173 = shl i32 %3172, 22
  %3174 = and i32 %3171, -4194305
  %3175 = or i32 %3174, %3173
  store i32 %3175, i32* %3170, align 4
  %3176 = load %union.rec*, %union.rec** %2, align 8
  %3177 = bitcast %union.rec* %3176 to %struct.closure_type*
  %3178 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3177, i32 0, i32 4
  %3179 = bitcast %union.FOURTH_UNION* %3178 to %struct.STYLE*
  %3180 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %3179, i32 0, i32 4
  %3181 = load i32, i32* %3180, align 4
  %3182 = lshr i32 %3181, 24
  %3183 = and i32 %3182, 63
  %3184 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %3185 = bitcast %union.rec* %3184 to %struct.word_type*
  %3186 = getelementptr inbounds %struct.word_type, %struct.word_type* %3185, i32 0, i32 2
  %3187 = bitcast %union.SECOND_UNION* %3186 to %struct.anon.1*
  %3188 = bitcast %struct.anon.1* %3187 to i32*
  %3189 = load i32, i32* %3188, align 4
  %3190 = and i32 %3183, 63
  %3191 = shl i32 %3190, 23
  %3192 = and i32 %3189, -528482305
  %3193 = or i32 %3192, %3191
  store i32 %3193, i32* %3188, align 4
  %3194 = load %union.rec*, %union.rec** %2, align 8
  %3195 = bitcast %union.rec* %3194 to %struct.closure_type*
  %3196 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3195, i32 0, i32 4
  %3197 = bitcast %union.FOURTH_UNION* %3196 to %struct.STYLE*
  %3198 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %3197, i32 0, i32 1
  %3199 = bitcast %union.anon.10* %3198 to %struct.anon.11*
  %3200 = bitcast %struct.anon.11* %3199 to i8*
  %3201 = load i8, i8* %3200, align 4
  %3202 = and i8 %3201, 3
  %3203 = zext i8 %3202 to i32
  %3204 = icmp eq i32 %3203, 2
  %3205 = zext i1 %3204 to i32
  %3206 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %3207 = bitcast %union.rec* %3206 to %struct.word_type*
  %3208 = getelementptr inbounds %struct.word_type, %struct.word_type* %3207, i32 0, i32 2
  %3209 = bitcast %union.SECOND_UNION* %3208 to %struct.anon.1*
  %3210 = bitcast %struct.anon.1* %3209 to i32*
  %3211 = load i32, i32* %3210, align 4
  %3212 = and i32 %3205, 1
  %3213 = shl i32 %3212, 31
  %3214 = and i32 %3211, 2147483647
  %3215 = or i32 %3214, %3213
  store i32 %3215, i32* %3210, align 4
  br label %3216

; <label>:3216                                    ; preds = %3127, %3124
  %3217 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %3218 = bitcast %union.rec* %3217 to %struct.word_type*
  %3219 = getelementptr inbounds %struct.word_type, %struct.word_type* %3218, i32 0, i32 2
  %3220 = bitcast %union.SECOND_UNION* %3219 to %struct.anon.1*
  %3221 = bitcast %struct.anon.1* %3220 to i32*
  %3222 = load i32, i32* %3221, align 4
  %3223 = and i32 %3222, 4095
  %3224 = load %union.rec*, %union.rec** %2, align 8
  %3225 = bitcast %union.rec* %3224 to %struct.closure_type*
  %3226 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3225, i32 0, i32 4
  %3227 = bitcast %union.FOURTH_UNION* %3226 to %struct.STYLE*
  %3228 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %3227, i32 0, i32 4
  %3229 = load i32, i32* %3228, align 4
  %3230 = and i32 %3229, 4095
  %3231 = icmp ne i32 %3223, %3230
  br i1 %3231, label %3232, label %3294

; <label>:3232                                    ; preds = %3216
  %3233 = load %union.rec*, %union.rec** %2, align 8
  %3234 = bitcast %union.rec* %3233 to %struct.closure_type*
  %3235 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3234, i32 0, i32 4
  %3236 = bitcast %union.FOURTH_UNION* %3235 to %struct.STYLE*
  %3237 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %3236, i32 0, i32 4
  %3238 = load i32, i32* %3237, align 4
  %3239 = and i32 %3238, 4095
  %3240 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %3241 = bitcast %union.rec* %3240 to %struct.word_type*
  %3242 = getelementptr inbounds %struct.word_type, %struct.word_type* %3241, i32 0, i32 2
  %3243 = bitcast %union.SECOND_UNION* %3242 to %struct.anon.1*
  %3244 = bitcast %struct.anon.1* %3243 to i32*
  %3245 = load i32, i32* %3244, align 4
  %3246 = and i32 %3239, 4095
  %3247 = and i32 %3245, -4096
  %3248 = or i32 %3247, %3246
  store i32 %3248, i32* %3244, align 4
  %3249 = load %union.rec*, %union.rec** %2, align 8
  %3250 = bitcast %union.rec* %3249 to %struct.word_type*
  %3251 = getelementptr inbounds %struct.word_type, %struct.word_type* %3250, i32 0, i32 1
  %3252 = bitcast %union.FIRST_UNION* %3251 to %struct.FILE_POS*
  %3253 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %3252, i32 0, i32 2
  %3254 = load i16, i16* %3253, align 2
  %3255 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %3256 = bitcast %union.rec* %3255 to %struct.word_type*
  %3257 = getelementptr inbounds %struct.word_type, %struct.word_type* %3256, i32 0, i32 1
  %3258 = bitcast %union.FIRST_UNION* %3257 to %struct.FILE_POS*
  %3259 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %3258, i32 0, i32 2
  store i16 %3254, i16* %3259, align 2
  %3260 = load %union.rec*, %union.rec** %2, align 8
  %3261 = bitcast %union.rec* %3260 to %struct.word_type*
  %3262 = getelementptr inbounds %struct.word_type, %struct.word_type* %3261, i32 0, i32 1
  %3263 = bitcast %union.FIRST_UNION* %3262 to %struct.FILE_POS*
  %3264 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %3263, i32 0, i32 3
  %3265 = load i32, i32* %3264, align 4
  %3266 = and i32 %3265, 1048575
  %3267 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %3268 = bitcast %union.rec* %3267 to %struct.word_type*
  %3269 = getelementptr inbounds %struct.word_type, %struct.word_type* %3268, i32 0, i32 1
  %3270 = bitcast %union.FIRST_UNION* %3269 to %struct.FILE_POS*
  %3271 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %3270, i32 0, i32 3
  %3272 = load i32, i32* %3271, align 4
  %3273 = and i32 %3266, 1048575
  %3274 = and i32 %3272, -1048576
  %3275 = or i32 %3274, %3273
  store i32 %3275, i32* %3271, align 4
  %3276 = load %union.rec*, %union.rec** %2, align 8
  %3277 = bitcast %union.rec* %3276 to %struct.word_type*
  %3278 = getelementptr inbounds %struct.word_type, %struct.word_type* %3277, i32 0, i32 1
  %3279 = bitcast %union.FIRST_UNION* %3278 to %struct.FILE_POS*
  %3280 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %3279, i32 0, i32 3
  %3281 = load i32, i32* %3280, align 4
  %3282 = lshr i32 %3281, 20
  %3283 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %3284 = bitcast %union.rec* %3283 to %struct.word_type*
  %3285 = getelementptr inbounds %struct.word_type, %struct.word_type* %3284, i32 0, i32 1
  %3286 = bitcast %union.FIRST_UNION* %3285 to %struct.FILE_POS*
  %3287 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %3286, i32 0, i32 3
  %3288 = load i32, i32* %3287, align 4
  %3289 = and i32 %3282, 4095
  %3290 = shl i32 %3289, 20
  %3291 = and i32 %3288, 1048575
  %3292 = or i32 %3291, %3290
  store i32 %3292, i32* %3287, align 4
  %3293 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  call void @FontWordSize(%union.rec* %3293)
  br label %3294

; <label>:3294                                    ; preds = %3232, %3216
  %3295 = load %union.rec*, %union.rec** %newg9, align 8
  %3296 = bitcast %union.rec* %3295 to %struct.gapobj_type*
  %3297 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3296, i32 0, i32 3
  %3298 = bitcast %struct.GAP* %3297 to i16*
  %3299 = load i16, i16* %3298, align 4
  %3300 = and i16 %3299, 8191
  %3301 = or i16 %3300, -8192
  store i16 %3301, i16* %3298, align 4
  %3302 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %3303 = bitcast %union.rec* %3302 to %struct.word_type*
  %3304 = getelementptr inbounds %struct.word_type, %struct.word_type* %3303, i32 0, i32 3
  %3305 = bitcast %union.THIRD_UNION* %3304 to %struct.anon.6*
  %3306 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3305, i32 0, i32 0
  %3307 = getelementptr inbounds [2 x i32], [2 x i32]* %3306, i32 0, i64 0
  %3308 = load i32, i32* %3307, align 4
  %3309 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %3310 = bitcast %union.rec* %3309 to %struct.word_type*
  %3311 = getelementptr inbounds %struct.word_type, %struct.word_type* %3310, i32 0, i32 3
  %3312 = bitcast %union.THIRD_UNION* %3311 to %struct.anon.6*
  %3313 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3312, i32 0, i32 1
  %3314 = getelementptr inbounds [2 x i32], [2 x i32]* %3313, i32 0, i64 0
  %3315 = load i32, i32* %3314, align 4
  %3316 = add nsw i32 %3308, %3315
  %3317 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %3318 = load i32, i32* %3317, align 4
  %3319 = add nsw i32 %3318, %3316
  store i32 %3319, i32* %3317, align 4
  br label %3320

; <label>:3320                                    ; preds = %3294, %3110, %3101
  br label %3322

; <label>:3321                                    ; preds = %3089
  store i32 1, i32* %unbreakable_at_right13, align 4
  br label %3322

; <label>:3322                                    ; preds = %3321, %3320
  br label %3335

; <label>:3323                                    ; preds = %3080
  %3324 = load %union.rec*, %union.rec** %newg9, align 8
  %3325 = bitcast %union.rec* %3324 to %struct.gapobj_type*
  %3326 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3325, i32 0, i32 3
  %3327 = bitcast %struct.GAP* %3326 to i16*
  %3328 = load i16, i16* %3327, align 4
  %3329 = lshr i16 %3328, 7
  %3330 = and i16 %3329, 1
  %3331 = zext i16 %3330 to i32
  %3332 = icmp ne i32 %3331, 0
  br i1 %3332, label %3333, label %3334

; <label>:3333                                    ; preds = %3323
  store i32 1, i32* %unbreakable_at_right13, align 4
  br label %3334

; <label>:3334                                    ; preds = %3333, %3323
  br label %3335

; <label>:3335                                    ; preds = %3334, %3322
  %3336 = load %union.rec*, %union.rec** %newg9, align 8
  %3337 = bitcast %union.rec* %3336 to %struct.word_type*
  %3338 = getelementptr inbounds %struct.word_type, %struct.word_type* %3337, i32 0, i32 0
  %3339 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3338, i32 0, i64 1
  %3340 = getelementptr inbounds %struct.LIST, %struct.LIST* %3339, i32 0, i32 1
  %3341 = load %union.rec*, %union.rec** %3340, align 8
  %3342 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 1
  store %union.rec* %3341, %union.rec** %3342, align 8
  br label %3346

; <label>:3343                                    ; preds = %2940
  %3344 = load %union.rec*, %union.rec** %2, align 8
  %3345 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 1
  store %union.rec* %3344, %union.rec** %3345, align 8
  br label %3346

; <label>:3346                                    ; preds = %3343, %3335
  %3347 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %3348 = load %union.rec*, %union.rec** %3347, align 8
  %3349 = load %union.rec*, %union.rec** %2, align 8
  %3350 = icmp eq %union.rec* %3348, %3349
  br i1 %3350, label %3351, label %3368

; <label>:3351                                    ; preds = %3346
  %3352 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %3353 = load %union.rec*, %union.rec** %3352, align 8
  %3354 = icmp ne %union.rec* %3353, null
  br i1 %3354, label %3355, label %3363

; <label>:3355                                    ; preds = %3351
  %3356 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %3357 = load %union.rec*, %union.rec** %3356, align 8
  %3358 = bitcast %union.rec* %3357 to %struct.closure_type*
  %3359 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3358, i32 0, i32 4
  %3360 = bitcast %union.FOURTH_UNION* %3359 to %struct.CONSTRAINT*
  %3361 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %3360, i32 0, i32 1
  %3362 = load i32, i32* %3361, align 4
  br label %3365

; <label>:3363                                    ; preds = %3351
  %3364 = load i32, i32* %max_width, align 4
  br label %3365

; <label>:3365                                    ; preds = %3363, %3355
  %3366 = phi i32 [ %3362, %3355 ], [ %3364, %3363 ]
  store i32 %3366, i32* %col_width16, align 4
  %3367 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  store i32 0, i32* %3367, align 4
  br label %3414

; <label>:3368                                    ; preds = %3346
  %3369 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %3370 = load %union.rec*, %union.rec** %3369, align 8
  %3371 = icmp ne %union.rec* %3370, null
  br i1 %3371, label %3372, label %3380

; <label>:3372                                    ; preds = %3368
  %3373 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %3374 = load %union.rec*, %union.rec** %3373, align 8
  %3375 = bitcast %union.rec* %3374 to %struct.closure_type*
  %3376 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3375, i32 0, i32 4
  %3377 = bitcast %union.FOURTH_UNION* %3376 to %struct.CONSTRAINT*
  %3378 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %3377, i32 0, i32 1
  %3379 = load i32, i32* %3378, align 4
  br label %3382

; <label>:3380                                    ; preds = %3368
  %3381 = load i32, i32* %etc_width, align 4
  br label %3382

; <label>:3382                                    ; preds = %3380, %3372
  %3383 = phi i32 [ %3379, %3372 ], [ %3381, %3380 ]
  store i32 %3383, i32* %col_width16, align 4
  %3384 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %3385 = load %union.rec*, %union.rec** %3384, align 8
  %3386 = bitcast %union.rec* %3385 to %struct.word_type*
  %3387 = getelementptr inbounds %struct.word_type, %struct.word_type* %3386, i32 0, i32 0
  %3388 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3387, i32 0, i64 1
  %3389 = getelementptr inbounds %struct.LIST, %struct.LIST* %3388, i32 0, i32 0
  %3390 = load %union.rec*, %union.rec** %3389, align 8
  store %union.rec* %3390, %union.rec** %g14, align 8
  br label %3391

; <label>:3391                                    ; preds = %3401, %3382
  %3392 = load %union.rec*, %union.rec** %g14, align 8
  %3393 = bitcast %union.rec* %3392 to %struct.word_type*
  %3394 = getelementptr inbounds %struct.word_type, %struct.word_type* %3393, i32 0, i32 1
  %3395 = bitcast %union.FIRST_UNION* %3394 to %struct.anon*
  %3396 = getelementptr inbounds %struct.anon, %struct.anon* %3395, i32 0, i32 0
  %3397 = load i8, i8* %3396, align 1
  %3398 = zext i8 %3397 to i32
  %3399 = icmp eq i32 %3398, 0
  br i1 %3399, label %3400, label %3408

; <label>:3400                                    ; preds = %3391
  br label %3401

; <label>:3401                                    ; preds = %3400
  %3402 = load %union.rec*, %union.rec** %g14, align 8
  %3403 = bitcast %union.rec* %3402 to %struct.word_type*
  %3404 = getelementptr inbounds %struct.word_type, %struct.word_type* %3403, i32 0, i32 0
  %3405 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3404, i32 0, i64 1
  %3406 = getelementptr inbounds %struct.LIST, %struct.LIST* %3405, i32 0, i32 0
  %3407 = load %union.rec*, %union.rec** %3406, align 8
  store %union.rec* %3407, %union.rec** %g14, align 8
  br label %3391

; <label>:3408                                    ; preds = %3391
  %3409 = load %union.rec*, %union.rec** %g14, align 8
  %3410 = bitcast %union.rec* %3409 to %struct.gapobj_type*
  %3411 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3410, i32 0, i32 4
  %3412 = load i32, i32* %3411, align 4
  %3413 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  store i32 %3412, i32* %3413, align 4
  br label %3414

; <label>:3414                                    ; preds = %3408, %3365
  %3415 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %3416 = load i8, i8* %3415, align 1
  %3417 = zext i8 %3416 to i32
  %3418 = icmp sgt i32 %3417, 0
  br i1 %3418, label %3419, label %3508

; <label>:3419                                    ; preds = %3414
  %3420 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %3421 = load %union.rec*, %union.rec** %3420, align 8
  %3422 = bitcast %union.rec* %3421 to %struct.word_type*
  %3423 = getelementptr inbounds %struct.word_type, %struct.word_type* %3422, i32 0, i32 0
  %3424 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3423, i32 0, i64 0
  %3425 = getelementptr inbounds %struct.LIST, %struct.LIST* %3424, i32 0, i32 1
  %3426 = load %union.rec*, %union.rec** %3425, align 8
  %3427 = bitcast %union.rec* %3426 to %struct.word_type*
  %3428 = getelementptr inbounds %struct.word_type, %struct.word_type* %3427, i32 0, i32 0
  %3429 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3428, i32 0, i64 0
  %3430 = getelementptr inbounds %struct.LIST, %struct.LIST* %3429, i32 0, i32 1
  %3431 = load %union.rec*, %union.rec** %3430, align 8
  store %union.rec* %3431, %union.rec** %glink17, align 8
  %3432 = load %union.rec*, %union.rec** %glink17, align 8
  %3433 = bitcast %union.rec* %3432 to %struct.word_type*
  %3434 = getelementptr inbounds %struct.word_type, %struct.word_type* %3433, i32 0, i32 1
  %3435 = bitcast %union.FIRST_UNION* %3434 to %struct.anon*
  %3436 = getelementptr inbounds %struct.anon, %struct.anon* %3435, i32 0, i32 0
  %3437 = load i8, i8* %3436, align 1
  %3438 = zext i8 %3437 to i32
  %3439 = icmp eq i32 %3438, 0
  br i1 %3439, label %3443, label %3440

; <label>:3440                                    ; preds = %3419
  %3441 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3442 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3441, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  br label %3443

; <label>:3443                                    ; preds = %3440, %3419
  %3444 = load %union.rec*, %union.rec** %glink17, align 8
  %3445 = bitcast %union.rec* %3444 to %struct.word_type*
  %3446 = getelementptr inbounds %struct.word_type, %struct.word_type* %3445, i32 0, i32 0
  %3447 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3446, i32 0, i64 1
  %3448 = getelementptr inbounds %struct.LIST, %struct.LIST* %3447, i32 0, i32 0
  %3449 = load %union.rec*, %union.rec** %3448, align 8
  store %union.rec* %3449, %union.rec** %g14, align 8
  br label %3450

; <label>:3450                                    ; preds = %3460, %3443
  %3451 = load %union.rec*, %union.rec** %g14, align 8
  %3452 = bitcast %union.rec* %3451 to %struct.word_type*
  %3453 = getelementptr inbounds %struct.word_type, %struct.word_type* %3452, i32 0, i32 1
  %3454 = bitcast %union.FIRST_UNION* %3453 to %struct.anon*
  %3455 = getelementptr inbounds %struct.anon, %struct.anon* %3454, i32 0, i32 0
  %3456 = load i8, i8* %3455, align 1
  %3457 = zext i8 %3456 to i32
  %3458 = icmp eq i32 %3457, 0
  br i1 %3458, label %3459, label %3467

; <label>:3459                                    ; preds = %3450
  br label %3460

; <label>:3460                                    ; preds = %3459
  %3461 = load %union.rec*, %union.rec** %g14, align 8
  %3462 = bitcast %union.rec* %3461 to %struct.word_type*
  %3463 = getelementptr inbounds %struct.word_type, %struct.word_type* %3462, i32 0, i32 0
  %3464 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3463, i32 0, i64 1
  %3465 = getelementptr inbounds %struct.LIST, %struct.LIST* %3464, i32 0, i32 0
  %3466 = load %union.rec*, %union.rec** %3465, align 8
  store %union.rec* %3466, %union.rec** %g14, align 8
  br label %3450

; <label>:3467                                    ; preds = %3450
  %3468 = load %union.rec*, %union.rec** %g14, align 8
  %3469 = bitcast %union.rec* %3468 to %struct.word_type*
  %3470 = getelementptr inbounds %struct.word_type, %struct.word_type* %3469, i32 0, i32 1
  %3471 = bitcast %union.FIRST_UNION* %3470 to %struct.anon*
  %3472 = getelementptr inbounds %struct.anon, %struct.anon* %3471, i32 0, i32 0
  %3473 = load i8, i8* %3472, align 1
  %3474 = zext i8 %3473 to i32
  %3475 = icmp eq i32 %3474, 1
  br i1 %3475, label %3476, label %3507

; <label>:3476                                    ; preds = %3467
  %3477 = load %union.rec*, %union.rec** %g14, align 8
  %3478 = bitcast %union.rec* %3477 to %struct.gapobj_type*
  %3479 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3478, i32 0, i32 3
  %3480 = bitcast %struct.GAP* %3479 to i16*
  %3481 = load i16, i16* %3480, align 4
  %3482 = lshr i16 %3481, 13
  %3483 = zext i16 %3482 to i32
  %3484 = icmp eq i32 %3483, 6
  br i1 %3484, label %3485, label %3507

; <label>:3485                                    ; preds = %3476
  %3486 = load %union.rec*, %union.rec** %g14, align 8
  %3487 = bitcast %union.rec* %3486 to %struct.gapobj_type*
  %3488 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3487, i32 0, i32 3
  %3489 = bitcast %struct.GAP* %3488 to i16*
  %3490 = load i16, i16* %3489, align 4
  %3491 = lshr i16 %3490, 10
  %3492 = and i16 %3491, 7
  %3493 = zext i16 %3492 to i32
  %3494 = icmp eq i32 %3493, 3
  br i1 %3494, label %3495, label %3507

; <label>:3495                                    ; preds = %3485
  %3496 = load %union.rec*, %union.rec** %g14, align 8
  %3497 = bitcast %union.rec* %3496 to %struct.gapobj_type*
  %3498 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3497, i32 0, i32 3
  %3499 = getelementptr inbounds %struct.GAP, %struct.GAP* %3498, i32 0, i32 1
  %3500 = load i16, i16* %3499, align 2
  %3501 = sext i16 %3500 to i32
  %3502 = icmp eq i32 %3501, 4096
  br i1 %3502, label %3503, label %3507

; <label>:3503                                    ; preds = %3495
  %3504 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %3505 = load i32, i32* %3504, align 4
  %3506 = add nsw i32 %3505, 128
  store i32 %3506, i32* %3504, align 4
  br label %3507

; <label>:3507                                    ; preds = %3503, %3495, %3485, %3476, %3467
  br label %3508

; <label>:3508                                    ; preds = %3507, %3414
  %3509 = load i32, i32* %col_width16, align 4
  %3510 = icmp sle i32 %3509, 0
  br i1 %3510, label %3511, label %3526

; <label>:3511                                    ; preds = %3508
  %3512 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %3513 = load i32, i32* %3512, align 4
  %3514 = icmp eq i32 %3513, 0
  br i1 %3514, label %3515, label %3520

; <label>:3515                                    ; preds = %3511
  %3516 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 0, i8* %3516, align 1
  %3517 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %3518 = load i32, i32* %3517, align 4
  %3519 = add nsw i32 %3518, 0
  store i32 %3519, i32* %3517, align 4
  br label %3525

; <label>:3520                                    ; preds = %3511
  %3521 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 2, i8* %3521, align 1
  %3522 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %3523 = load i32, i32* %3522, align 4
  %3524 = add nsw i32 %3523, 1048576
  store i32 %3524, i32* %3522, align 4
  br label %3525

; <label>:3525                                    ; preds = %3520, %3515
  br label %3634

; <label>:3526                                    ; preds = %3508
  %3527 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %3528 = load i8, i8* %3527, align 1
  %3529 = zext i8 %3528 to i32
  %3530 = icmp sgt i32 %3529, 0
  br i1 %3530, label %3531, label %3542

; <label>:3531                                    ; preds = %3526
  %3532 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 9
  %3533 = load i32, i32* %3532, align 4
  %3534 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 8
  %3535 = load i32, i32* %3534, align 4
  %3536 = icmp sgt i32 %3533, %3535
  br i1 %3536, label %3537, label %3542

; <label>:3537                                    ; preds = %3531
  %3538 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 4, i8* %3538, align 1
  %3539 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %3540 = load i32, i32* %3539, align 4
  %3541 = add nsw i32 %3540, 1048576
  store i32 %3541, i32* %3539, align 4
  br label %3633

; <label>:3542                                    ; preds = %3531, %3526
  %3543 = load i32, i32* %col_width16, align 4
  %3544 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %3545 = load i32, i32* %3544, align 4
  %3546 = sub nsw i32 %3543, %3545
  %3547 = mul nsw i32 1, %3546
  %3548 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 4
  %3549 = load i32, i32* %3548, align 4
  %3550 = mul nsw i32 2, %3549
  %3551 = icmp sgt i32 %3547, %3550
  br i1 %3551, label %3552, label %3573

; <label>:3552                                    ; preds = %3542
  %3553 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %3554 = load i8, i8* %3553, align 1
  %3555 = zext i8 %3554 to i32
  %3556 = icmp sgt i32 %3555, 0
  %3557 = select i1 %3556, i32 1, i32 0
  %3558 = trunc i32 %3557 to i8
  %3559 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 %3558, i8* %3559, align 1
  %3560 = load i32, i32* %col_width16, align 4
  %3561 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %3562 = load i32, i32* %3561, align 4
  %3563 = sub nsw i32 %3560, %3562
  %3564 = mul nsw i32 512, %3563
  %3565 = load i32, i32* %col_width16, align 4
  %3566 = sdiv i32 %3564, %3565
  store i32 %3566, i32* %badness15, align 4
  %3567 = load i32, i32* %badness15, align 4
  %3568 = load i32, i32* %badness15, align 4
  %3569 = mul nsw i32 %3567, %3568
  %3570 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %3571 = load i32, i32* %3570, align 4
  %3572 = add nsw i32 %3571, %3569
  store i32 %3572, i32* %3570, align 4
  br label %3632

; <label>:3573                                    ; preds = %3542
  %3574 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %3575 = load i32, i32* %3574, align 4
  %3576 = load i32, i32* %col_width16, align 4
  %3577 = icmp sle i32 %3575, %3576
  br i1 %3577, label %3578, label %3593

; <label>:3578                                    ; preds = %3573
  %3579 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 1, i8* %3579, align 1
  %3580 = load i32, i32* %col_width16, align 4
  %3581 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %3582 = load i32, i32* %3581, align 4
  %3583 = sub nsw i32 %3580, %3582
  %3584 = mul nsw i32 128, %3583
  %3585 = load i32, i32* %col_width16, align 4
  %3586 = sdiv i32 %3584, %3585
  store i32 %3586, i32* %badness15, align 4
  %3587 = load i32, i32* %badness15, align 4
  %3588 = load i32, i32* %badness15, align 4
  %3589 = mul nsw i32 %3587, %3588
  %3590 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %3591 = load i32, i32* %3590, align 4
  %3592 = add nsw i32 %3591, %3589
  store i32 %3592, i32* %3590, align 4
  br label %3631

; <label>:3593                                    ; preds = %3573
  %3594 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %3595 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %3594, i32 0, i32 7
  %3596 = load i32, i32* %3595, align 4
  %3597 = icmp ne i32 %3596, 0
  br i1 %3597, label %3598, label %3625

; <label>:3598                                    ; preds = %3593
  %3599 = load i32, i32* %6, align 4
  %3600 = icmp ne i32 %3599, 0
  br i1 %3600, label %3601, label %3625

; <label>:3601                                    ; preds = %3598
  %3602 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %3603 = load i32, i32* %3602, align 4
  %3604 = load i32, i32* %col_width16, align 4
  %3605 = sub nsw i32 %3603, %3604
  %3606 = mul nsw i32 4, %3605
  %3607 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 4
  %3608 = load i32, i32* %3607, align 4
  %3609 = icmp sle i32 %3606, %3608
  br i1 %3609, label %3610, label %3625

; <label>:3610                                    ; preds = %3601
  %3611 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 2, i8* %3611, align 1
  %3612 = load i32, i32* %col_width16, align 4
  %3613 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %3614 = load i32, i32* %3613, align 4
  %3615 = sub nsw i32 %3612, %3614
  %3616 = mul nsw i32 128, %3615
  %3617 = load i32, i32* %col_width16, align 4
  %3618 = sdiv i32 %3616, %3617
  store i32 %3618, i32* %badness15, align 4
  %3619 = load i32, i32* %badness15, align 4
  %3620 = load i32, i32* %badness15, align 4
  %3621 = mul nsw i32 %3619, %3620
  %3622 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %3623 = load i32, i32* %3622, align 4
  %3624 = add nsw i32 %3623, %3621
  store i32 %3624, i32* %3622, align 4
  br label %3630

; <label>:3625                                    ; preds = %3601, %3598, %3593
  %3626 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 3, i8* %3626, align 1
  %3627 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %3628 = load i32, i32* %3627, align 4
  %3629 = add nsw i32 %3628, 1048576
  store i32 %3629, i32* %3627, align 4
  br label %3630

; <label>:3630                                    ; preds = %3625, %3610
  br label %3631

; <label>:3631                                    ; preds = %3630, %3578
  br label %3632

; <label>:3632                                    ; preds = %3631, %3552
  br label %3633

; <label>:3633                                    ; preds = %3632, %3537
  br label %3634

; <label>:3634                                    ; preds = %3633, %3525
  %3635 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %3636 = load i32, i32* %3635, align 4
  %3637 = icmp sge i32 %3636, 0
  br i1 %3637, label %3641, label %3638

; <label>:3638                                    ; preds = %3634
  %3639 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3640 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3639, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0))
  br label %3641

; <label>:3641                                    ; preds = %3638, %3634
  %3642 = load i32, i32* %unbreakable_at_right13, align 4
  %3643 = icmp ne i32 %3642, 0
  br i1 %3643, label %3644, label %3646

; <label>:3644                                    ; preds = %3641
  %3645 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 7, i8* %3645, align 1
  br label %3664

; <label>:3646                                    ; preds = %3641
  %3647 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  %3648 = load i8, i8* %3647, align 1
  %3649 = zext i8 %3648 to i32
  %3650 = icmp eq i32 %3649, 2
  br i1 %3650, label %3651, label %3663

; <label>:3651                                    ; preds = %3646
  %3652 = load %union.rec*, %union.rec** %newg9, align 8
  %3653 = bitcast %union.rec* %3652 to %struct.gapobj_type*
  %3654 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3653, i32 0, i32 3
  %3655 = bitcast %struct.GAP* %3654 to i16*
  %3656 = load i16, i16* %3655, align 4
  %3657 = lshr i16 %3656, 13
  %3658 = zext i16 %3657 to i32
  %3659 = icmp eq i32 %3658, 6
  br i1 %3659, label %3660, label %3663

; <label>:3660                                    ; preds = %3651
  %3661 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 3, i8* %3661, align 1
  %3662 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  store i32 1048576, i32* %3662, align 4
  br label %3663

; <label>:3663                                    ; preds = %3660, %3651, %3646
  br label %3664

; <label>:3664                                    ; preds = %3663, %3644
  br label %3665

; <label>:3665                                    ; preds = %3664, %2558
  %3666 = bitcast %struct.INTERVAL* %BestI to i8*
  %3667 = bitcast %struct.INTERVAL* %I to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3666, i8* %3667, i64 48, i32 8, i1 false)
  br label %4418

; <label>:3668                                    ; preds = %2525, %2525, %2525
  %3669 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %3670 = load i32, i32* %3669, align 4
  %3671 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %BestI, i32 0, i32 5
  %3672 = load i32, i32* %3671, align 4
  %3673 = icmp slt i32 %3670, %3672
  br i1 %3673, label %3674, label %3677

; <label>:3674                                    ; preds = %3668
  %3675 = bitcast %struct.INTERVAL* %BestI to i8*
  %3676 = bitcast %struct.INTERVAL* %I to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3675, i8* %3676, i64 48, i32 8, i1 false)
  br label %3677

; <label>:3677                                    ; preds = %3674, %3668
  br label %3678

; <label>:3678                                    ; preds = %2525, %2525, %3677
  %3679 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  %3680 = load i8, i8* %3679, align 1
  %3681 = zext i8 %3680 to i32
  %3682 = icmp ne i32 %3681, 5
  br i1 %3682, label %3686, label %3683

; <label>:3683                                    ; preds = %3678
  %3684 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3685 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3684, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0))
  br label %3686

; <label>:3686                                    ; preds = %3683, %3678
  %3687 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %3688 = load %union.rec*, %union.rec** %3687, align 8
  store %union.rec* %3688, %union.rec** %llink, align 8
  %3689 = load %union.rec*, %union.rec** %llink, align 8
  %3690 = bitcast %union.rec* %3689 to %struct.word_type*
  %3691 = getelementptr inbounds %struct.word_type, %struct.word_type* %3690, i32 0, i32 0
  %3692 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3691, i32 0, i64 0
  %3693 = getelementptr inbounds %struct.LIST, %struct.LIST* %3692, i32 0, i32 1
  %3694 = load %union.rec*, %union.rec** %3693, align 8
  store %union.rec* %3694, %union.rec** %llink, align 8
  br label %3695

; <label>:3695                                    ; preds = %3758, %3686
  %3696 = load %union.rec*, %union.rec** %llink, align 8
  %3697 = load %union.rec*, %union.rec** %2, align 8
  %3698 = icmp ne %union.rec* %3696, %3697
  br i1 %3698, label %3699, label %3765

; <label>:3699                                    ; preds = %3695
  %3700 = load %union.rec*, %union.rec** %llink, align 8
  %3701 = bitcast %union.rec* %3700 to %struct.word_type*
  %3702 = getelementptr inbounds %struct.word_type, %struct.word_type* %3701, i32 0, i32 0
  %3703 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3702, i32 0, i64 1
  %3704 = getelementptr inbounds %struct.LIST, %struct.LIST* %3703, i32 0, i32 0
  %3705 = load %union.rec*, %union.rec** %3704, align 8
  store %union.rec* %3705, %union.rec** %left, align 8
  br label %3706

; <label>:3706                                    ; preds = %3716, %3699
  %3707 = load %union.rec*, %union.rec** %left, align 8
  %3708 = bitcast %union.rec* %3707 to %struct.word_type*
  %3709 = getelementptr inbounds %struct.word_type, %struct.word_type* %3708, i32 0, i32 1
  %3710 = bitcast %union.FIRST_UNION* %3709 to %struct.anon*
  %3711 = getelementptr inbounds %struct.anon, %struct.anon* %3710, i32 0, i32 0
  %3712 = load i8, i8* %3711, align 1
  %3713 = zext i8 %3712 to i32
  %3714 = icmp eq i32 %3713, 0
  br i1 %3714, label %3715, label %3723

; <label>:3715                                    ; preds = %3706
  br label %3716

; <label>:3716                                    ; preds = %3715
  %3717 = load %union.rec*, %union.rec** %left, align 8
  %3718 = bitcast %union.rec* %3717 to %struct.word_type*
  %3719 = getelementptr inbounds %struct.word_type, %struct.word_type* %3718, i32 0, i32 0
  %3720 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3719, i32 0, i64 1
  %3721 = getelementptr inbounds %struct.LIST, %struct.LIST* %3720, i32 0, i32 0
  %3722 = load %union.rec*, %union.rec** %3721, align 8
  store %union.rec* %3722, %union.rec** %left, align 8
  br label %3706

; <label>:3723                                    ; preds = %3706
  %3724 = load %union.rec*, %union.rec** %left, align 8
  %3725 = bitcast %union.rec* %3724 to %struct.word_type*
  %3726 = getelementptr inbounds %struct.word_type, %struct.word_type* %3725, i32 0, i32 1
  %3727 = bitcast %union.FIRST_UNION* %3726 to %struct.anon*
  %3728 = getelementptr inbounds %struct.anon, %struct.anon* %3727, i32 0, i32 0
  %3729 = load i8, i8* %3728, align 1
  %3730 = zext i8 %3729 to i32
  %3731 = icmp eq i32 %3730, 9
  br i1 %3731, label %3732, label %3736

; <label>:3732                                    ; preds = %3723
  %3733 = load %union.rec*, %union.rec** %left, align 8
  %3734 = call i32 @SplitIsDefinite(%union.rec* %3733)
  %3735 = icmp ne i32 %3734, 0
  br i1 %3735, label %3756, label %3757

; <label>:3736                                    ; preds = %3723
  %3737 = load %union.rec*, %union.rec** %left, align 8
  %3738 = bitcast %union.rec* %3737 to %struct.word_type*
  %3739 = getelementptr inbounds %struct.word_type, %struct.word_type* %3738, i32 0, i32 1
  %3740 = bitcast %union.FIRST_UNION* %3739 to %struct.anon*
  %3741 = getelementptr inbounds %struct.anon, %struct.anon* %3740, i32 0, i32 0
  %3742 = load i8, i8* %3741, align 1
  %3743 = zext i8 %3742 to i32
  %3744 = icmp sge i32 %3743, 9
  br i1 %3744, label %3745, label %3754

; <label>:3745                                    ; preds = %3736
  %3746 = load %union.rec*, %union.rec** %left, align 8
  %3747 = bitcast %union.rec* %3746 to %struct.word_type*
  %3748 = getelementptr inbounds %struct.word_type, %struct.word_type* %3747, i32 0, i32 1
  %3749 = bitcast %union.FIRST_UNION* %3748 to %struct.anon*
  %3750 = getelementptr inbounds %struct.anon, %struct.anon* %3749, i32 0, i32 0
  %3751 = load i8, i8* %3750, align 1
  %3752 = zext i8 %3751 to i32
  %3753 = icmp sle i32 %3752, 99
  br label %3754

; <label>:3754                                    ; preds = %3745, %3736
  %3755 = phi i1 [ false, %3736 ], [ %3753, %3745 ]
  br i1 %3755, label %3756, label %3757

; <label>:3756                                    ; preds = %3754, %3732
  br label %3765

; <label>:3757                                    ; preds = %3754, %3732
  br label %3758

; <label>:3758                                    ; preds = %3757
  %3759 = load %union.rec*, %union.rec** %llink, align 8
  %3760 = bitcast %union.rec* %3759 to %struct.word_type*
  %3761 = getelementptr inbounds %struct.word_type, %struct.word_type* %3760, i32 0, i32 0
  %3762 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3761, i32 0, i64 0
  %3763 = getelementptr inbounds %struct.LIST, %struct.LIST* %3762, i32 0, i32 1
  %3764 = load %union.rec*, %union.rec** %3763, align 8
  store %union.rec* %3764, %union.rec** %llink, align 8
  br label %3695

; <label>:3765                                    ; preds = %3756, %3695
  %3766 = load %union.rec*, %union.rec** %llink, align 8
  %3767 = load %union.rec*, %union.rec** %2, align 8
  %3768 = icmp ne %union.rec* %3766, %3767
  br i1 %3768, label %3772, label %3769

; <label>:3769                                    ; preds = %3765
  %3770 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3771 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3770, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i32 0, i32 0))
  br label %3772

; <label>:3772                                    ; preds = %3769, %3765
  store %union.rec* null, %union.rec** %lgap, align 8
  store i32 1, i32* %jn19, align 4
  %3773 = load %union.rec*, %union.rec** %llink, align 8
  %3774 = bitcast %union.rec* %3773 to %struct.word_type*
  %3775 = getelementptr inbounds %struct.word_type, %struct.word_type* %3774, i32 0, i32 0
  %3776 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3775, i32 0, i64 0
  %3777 = getelementptr inbounds %struct.LIST, %struct.LIST* %3776, i32 0, i32 1
  %3778 = load %union.rec*, %union.rec** %3777, align 8
  store %union.rec* %3778, %union.rec** %llink, align 8
  br label %3779

; <label>:3779                                    ; preds = %3875, %3772
  %3780 = load %union.rec*, %union.rec** %llink, align 8
  %3781 = load %union.rec*, %union.rec** %2, align 8
  %3782 = icmp ne %union.rec* %3780, %3781
  br i1 %3782, label %3783, label %3882

; <label>:3783                                    ; preds = %3779
  %3784 = load %union.rec*, %union.rec** %llink, align 8
  %3785 = bitcast %union.rec* %3784 to %struct.word_type*
  %3786 = getelementptr inbounds %struct.word_type, %struct.word_type* %3785, i32 0, i32 0
  %3787 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3786, i32 0, i64 1
  %3788 = getelementptr inbounds %struct.LIST, %struct.LIST* %3787, i32 0, i32 0
  %3789 = load %union.rec*, %union.rec** %3788, align 8
  store %union.rec* %3789, %union.rec** %y18, align 8
  br label %3790

; <label>:3790                                    ; preds = %3800, %3783
  %3791 = load %union.rec*, %union.rec** %y18, align 8
  %3792 = bitcast %union.rec* %3791 to %struct.word_type*
  %3793 = getelementptr inbounds %struct.word_type, %struct.word_type* %3792, i32 0, i32 1
  %3794 = bitcast %union.FIRST_UNION* %3793 to %struct.anon*
  %3795 = getelementptr inbounds %struct.anon, %struct.anon* %3794, i32 0, i32 0
  %3796 = load i8, i8* %3795, align 1
  %3797 = zext i8 %3796 to i32
  %3798 = icmp eq i32 %3797, 0
  br i1 %3798, label %3799, label %3807

; <label>:3799                                    ; preds = %3790
  br label %3800

; <label>:3800                                    ; preds = %3799
  %3801 = load %union.rec*, %union.rec** %y18, align 8
  %3802 = bitcast %union.rec* %3801 to %struct.word_type*
  %3803 = getelementptr inbounds %struct.word_type, %struct.word_type* %3802, i32 0, i32 0
  %3804 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3803, i32 0, i64 1
  %3805 = getelementptr inbounds %struct.LIST, %struct.LIST* %3804, i32 0, i32 0
  %3806 = load %union.rec*, %union.rec** %3805, align 8
  store %union.rec* %3806, %union.rec** %y18, align 8
  br label %3790

; <label>:3807                                    ; preds = %3790
  %3808 = load %union.rec*, %union.rec** %y18, align 8
  %3809 = bitcast %union.rec* %3808 to %struct.word_type*
  %3810 = getelementptr inbounds %struct.word_type, %struct.word_type* %3809, i32 0, i32 1
  %3811 = bitcast %union.FIRST_UNION* %3810 to %struct.anon*
  %3812 = getelementptr inbounds %struct.anon, %struct.anon* %3811, i32 0, i32 0
  %3813 = load i8, i8* %3812, align 1
  %3814 = zext i8 %3813 to i32
  %3815 = icmp eq i32 %3814, 1
  br i1 %3815, label %3816, label %3833

; <label>:3816                                    ; preds = %3807
  %3817 = load %union.rec*, %union.rec** %y18, align 8
  store %union.rec* %3817, %union.rec** %lgap, align 8
  %3818 = load i32, i32* %jn19, align 4
  %3819 = icmp ne i32 %3818, 0
  br i1 %3819, label %3820, label %3830

; <label>:3820                                    ; preds = %3816
  %3821 = load %union.rec*, %union.rec** %y18, align 8
  %3822 = bitcast %union.rec* %3821 to %struct.gapobj_type*
  %3823 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3822, i32 0, i32 3
  %3824 = bitcast %struct.GAP* %3823 to i16*
  %3825 = load i16, i16* %3824, align 4
  %3826 = lshr i16 %3825, 9
  %3827 = and i16 %3826, 1
  %3828 = zext i16 %3827 to i32
  %3829 = icmp ne i32 %3828, 0
  br label %3830

; <label>:3830                                    ; preds = %3820, %3816
  %3831 = phi i1 [ false, %3816 ], [ %3829, %3820 ]
  %3832 = zext i1 %3831 to i32
  store i32 %3832, i32* %jn19, align 4
  br label %3874

; <label>:3833                                    ; preds = %3807
  %3834 = load %union.rec*, %union.rec** %y18, align 8
  %3835 = bitcast %union.rec* %3834 to %struct.word_type*
  %3836 = getelementptr inbounds %struct.word_type, %struct.word_type* %3835, i32 0, i32 1
  %3837 = bitcast %union.FIRST_UNION* %3836 to %struct.anon*
  %3838 = getelementptr inbounds %struct.anon, %struct.anon* %3837, i32 0, i32 0
  %3839 = load i8, i8* %3838, align 1
  %3840 = zext i8 %3839 to i32
  %3841 = icmp eq i32 %3840, 9
  br i1 %3841, label %3842, label %3846

; <label>:3842                                    ; preds = %3833
  %3843 = load %union.rec*, %union.rec** %y18, align 8
  %3844 = call i32 @SplitIsDefinite(%union.rec* %3843)
  %3845 = icmp ne i32 %3844, 0
  br i1 %3845, label %3866, label %3873

; <label>:3846                                    ; preds = %3833
  %3847 = load %union.rec*, %union.rec** %y18, align 8
  %3848 = bitcast %union.rec* %3847 to %struct.word_type*
  %3849 = getelementptr inbounds %struct.word_type, %struct.word_type* %3848, i32 0, i32 1
  %3850 = bitcast %union.FIRST_UNION* %3849 to %struct.anon*
  %3851 = getelementptr inbounds %struct.anon, %struct.anon* %3850, i32 0, i32 0
  %3852 = load i8, i8* %3851, align 1
  %3853 = zext i8 %3852 to i32
  %3854 = icmp sge i32 %3853, 9
  br i1 %3854, label %3855, label %3864

; <label>:3855                                    ; preds = %3846
  %3856 = load %union.rec*, %union.rec** %y18, align 8
  %3857 = bitcast %union.rec* %3856 to %struct.word_type*
  %3858 = getelementptr inbounds %struct.word_type, %struct.word_type* %3857, i32 0, i32 1
  %3859 = bitcast %union.FIRST_UNION* %3858 to %struct.anon*
  %3860 = getelementptr inbounds %struct.anon, %struct.anon* %3859, i32 0, i32 0
  %3861 = load i8, i8* %3860, align 1
  %3862 = zext i8 %3861 to i32
  %3863 = icmp sle i32 %3862, 99
  br label %3864

; <label>:3864                                    ; preds = %3855, %3846
  %3865 = phi i1 [ false, %3846 ], [ %3863, %3855 ]
  br i1 %3865, label %3866, label %3873

; <label>:3866                                    ; preds = %3864, %3842
  %3867 = load %union.rec*, %union.rec** %lgap, align 8
  %3868 = icmp ne %union.rec* %3867, null
  br i1 %3868, label %3872, label %3869

; <label>:3869                                    ; preds = %3866
  %3870 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3871 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3870, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0))
  br label %3872

; <label>:3872                                    ; preds = %3869, %3866
  br label %3882

; <label>:3873                                    ; preds = %3864, %3842
  br label %3874

; <label>:3874                                    ; preds = %3873, %3830
  br label %3875

; <label>:3875                                    ; preds = %3874
  %3876 = load %union.rec*, %union.rec** %llink, align 8
  %3877 = bitcast %union.rec* %3876 to %struct.word_type*
  %3878 = getelementptr inbounds %struct.word_type, %struct.word_type* %3877, i32 0, i32 0
  %3879 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3878, i32 0, i64 0
  %3880 = getelementptr inbounds %struct.LIST, %struct.LIST* %3879, i32 0, i32 1
  %3881 = load %union.rec*, %union.rec** %3880, align 8
  store %union.rec* %3881, %union.rec** %llink, align 8
  br label %3779

; <label>:3882                                    ; preds = %3872, %3779
  %3883 = load %union.rec*, %union.rec** %llink, align 8
  %3884 = load %union.rec*, %union.rec** %2, align 8
  %3885 = icmp ne %union.rec* %3883, %3884
  br i1 %3885, label %3889, label %3886

; <label>:3886                                    ; preds = %3882
  %3887 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3888 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3887, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i32 0, i32 0))
  br label %3889

; <label>:3889                                    ; preds = %3886, %3882
  %3890 = load %union.rec*, %union.rec** %lgap, align 8
  %3891 = bitcast %union.rec* %3890 to %struct.gapobj_type*
  %3892 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3891, i32 0, i32 3
  %3893 = bitcast %struct.GAP* %3892 to i16*
  %3894 = load i16, i16* %3893, align 4
  %3895 = lshr i16 %3894, 13
  %3896 = zext i16 %3895 to i32
  %3897 = icmp eq i32 %3896, 6
  br i1 %3897, label %3898, label %3934

; <label>:3898                                    ; preds = %3889
  %3899 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %3900 = load i8, i8* %3899, align 1
  %3901 = zext i8 %3900 to i32
  %3902 = icmp sgt i32 %3901, 0
  br i1 %3902, label %3916, label %3903

; <label>:3903                                    ; preds = %3898
  %3904 = load %union.rec*, %union.rec** %lgap, align 8
  %3905 = bitcast %union.rec* %3904 to %struct.word_type*
  %3906 = getelementptr inbounds %struct.word_type, %struct.word_type* %3905, i32 0, i32 0
  %3907 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3906, i32 0, i64 1
  %3908 = getelementptr inbounds %struct.LIST, %struct.LIST* %3907, i32 0, i32 1
  %3909 = load %union.rec*, %union.rec** %3908, align 8
  %3910 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 1
  %3911 = load %union.rec*, %union.rec** %3910, align 8
  %3912 = icmp eq %union.rec* %3909, %3911
  br i1 %3912, label %3916, label %3913

; <label>:3913                                    ; preds = %3903
  %3914 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3915 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3914, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i32 0, i32 0))
  br label %3916

; <label>:3916                                    ; preds = %3913, %3903, %3898
  %3917 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %3918 = load i8, i8* %3917, align 1
  %3919 = add i8 %3918, -1
  store i8 %3919, i8* %3917, align 1
  %3920 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %3921 = load i8, i8* %3920, align 1
  %3922 = zext i8 %3921 to i32
  %3923 = icmp eq i32 %3922, 0
  br i1 %3923, label %3924, label %3933

; <label>:3924                                    ; preds = %3916
  %3925 = load %union.rec*, %union.rec** %lgap, align 8
  %3926 = bitcast %union.rec* %3925 to %struct.gapobj_type*
  %3927 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3926, i32 0, i32 5
  %3928 = load i16, i16* %3927, align 2
  %3929 = sext i16 %3928 to i32
  %3930 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %3931 = load i32, i32* %3930, align 4
  %3932 = sub nsw i32 %3931, %3929
  store i32 %3932, i32* %3930, align 4
  br label %3933

; <label>:3933                                    ; preds = %3924, %3916
  br label %4004

; <label>:3934                                    ; preds = %3889
  %3935 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %3936 = load i8, i8* %3935, align 1
  %3937 = zext i8 %3936 to i32
  %3938 = icmp eq i32 %3937, 0
  br i1 %3938, label %3939, label %3972

; <label>:3939                                    ; preds = %3934
  %3940 = load %union.rec*, %union.rec** %lgap, align 8
  %3941 = bitcast %union.rec* %3940 to %struct.gapobj_type*
  %3942 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3941, i32 0, i32 5
  %3943 = load i16, i16* %3942, align 2
  %3944 = sext i16 %3943 to i32
  %3945 = load %union.rec*, %union.rec** %left, align 8
  %3946 = bitcast %union.rec* %3945 to %struct.word_type*
  %3947 = getelementptr inbounds %struct.word_type, %struct.word_type* %3946, i32 0, i32 3
  %3948 = bitcast %union.THIRD_UNION* %3947 to %struct.anon.6*
  %3949 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3948, i32 0, i32 0
  %3950 = getelementptr inbounds [2 x i32], [2 x i32]* %3949, i32 0, i64 0
  %3951 = load i32, i32* %3950, align 4
  %3952 = load %union.rec*, %union.rec** %left, align 8
  %3953 = bitcast %union.rec* %3952 to %struct.word_type*
  %3954 = getelementptr inbounds %struct.word_type, %struct.word_type* %3953, i32 0, i32 3
  %3955 = bitcast %union.THIRD_UNION* %3954 to %struct.anon.6*
  %3956 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3955, i32 0, i32 1
  %3957 = getelementptr inbounds [2 x i32], [2 x i32]* %3956, i32 0, i64 0
  %3958 = load i32, i32* %3957, align 4
  %3959 = add nsw i32 %3951, %3958
  %3960 = add nsw i32 %3944, %3959
  %3961 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %3962 = load i32, i32* %3961, align 4
  %3963 = sub nsw i32 %3962, %3960
  store i32 %3963, i32* %3961, align 4
  %3964 = load %union.rec*, %union.rec** %lgap, align 8
  %3965 = bitcast %union.rec* %3964 to %struct.gapobj_type*
  %3966 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3965, i32 0, i32 5
  %3967 = load i16, i16* %3966, align 2
  %3968 = sext i16 %3967 to i32
  %3969 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 4
  %3970 = load i32, i32* %3969, align 4
  %3971 = sub nsw i32 %3970, %3968
  store i32 %3971, i32* %3969, align 4
  br label %4003

; <label>:3972                                    ; preds = %3934
  %3973 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %3974 = load i8, i8* %3973, align 1
  %3975 = zext i8 %3974 to i32
  %3976 = icmp eq i32 %3975, 1
  br i1 %3976, label %3977, label %4002

; <label>:3977                                    ; preds = %3972
  %3978 = load %union.rec*, %union.rec** %lgap, align 8
  %3979 = bitcast %union.rec* %3978 to %struct.gapobj_type*
  %3980 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %3979, i32 0, i32 5
  %3981 = load i16, i16* %3980, align 2
  %3982 = sext i16 %3981 to i32
  %3983 = load %union.rec*, %union.rec** %left, align 8
  %3984 = bitcast %union.rec* %3983 to %struct.word_type*
  %3985 = getelementptr inbounds %struct.word_type, %struct.word_type* %3984, i32 0, i32 3
  %3986 = bitcast %union.THIRD_UNION* %3985 to %struct.anon.6*
  %3987 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3986, i32 0, i32 0
  %3988 = getelementptr inbounds [2 x i32], [2 x i32]* %3987, i32 0, i64 0
  %3989 = load i32, i32* %3988, align 4
  %3990 = load %union.rec*, %union.rec** %left, align 8
  %3991 = bitcast %union.rec* %3990 to %struct.word_type*
  %3992 = getelementptr inbounds %struct.word_type, %struct.word_type* %3991, i32 0, i32 3
  %3993 = bitcast %union.THIRD_UNION* %3992 to %struct.anon.6*
  %3994 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3993, i32 0, i32 1
  %3995 = getelementptr inbounds [2 x i32], [2 x i32]* %3994, i32 0, i64 0
  %3996 = load i32, i32* %3995, align 4
  %3997 = add nsw i32 %3989, %3996
  %3998 = add nsw i32 %3982, %3997
  %3999 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 9
  %4000 = load i32, i32* %3999, align 4
  %4001 = sub nsw i32 %4000, %3998
  store i32 %4001, i32* %3999, align 4
  br label %4002

; <label>:4002                                    ; preds = %3977, %3972
  br label %4003

; <label>:4003                                    ; preds = %4002, %3939
  br label %4004

; <label>:4004                                    ; preds = %4003, %3933
  %4005 = load %union.rec*, %union.rec** %lgap, align 8
  %4006 = bitcast %union.rec* %4005 to %struct.word_type*
  %4007 = getelementptr inbounds %struct.word_type, %struct.word_type* %4006, i32 0, i32 0
  %4008 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4007, i32 0, i64 1
  %4009 = getelementptr inbounds %struct.LIST, %struct.LIST* %4008, i32 0, i32 1
  %4010 = load %union.rec*, %union.rec** %4009, align 8
  %4011 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  store %union.rec* %4010, %union.rec** %4011, align 8
  %4012 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %4013 = load %union.rec*, %union.rec** %4012, align 8
  %4014 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 1
  %4015 = load %union.rec*, %union.rec** %4014, align 8
  %4016 = icmp eq %union.rec* %4013, %4015
  br i1 %4016, label %4017, label %4020

; <label>:4017                                    ; preds = %4004
  %4018 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 8, i8* %4018, align 1
  %4019 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  store i32 1048577, i32* %4019, align 4
  br label %4414

; <label>:4020                                    ; preds = %4004
  %4021 = load %union.rec*, %union.rec** %lgap, align 8
  %4022 = bitcast %union.rec* %4021 to %struct.gapobj_type*
  %4023 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %4022, i32 0, i32 8
  %4024 = load %union.rec*, %union.rec** %4023, align 8
  %4025 = icmp ne %union.rec* %4024, null
  br i1 %4025, label %4026, label %4085

; <label>:4026                                    ; preds = %4020
  %4027 = load %union.rec*, %union.rec** %lgap, align 8
  %4028 = bitcast %union.rec* %4027 to %struct.gapobj_type*
  %4029 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %4028, i32 0, i32 8
  %4030 = load %union.rec*, %union.rec** %4029, align 8
  %4031 = bitcast %union.rec* %4030 to %struct.word_type*
  %4032 = getelementptr inbounds %struct.word_type, %struct.word_type* %4031, i32 0, i32 0
  %4033 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4032, i32 0, i64 1
  %4034 = getelementptr inbounds %struct.LIST, %struct.LIST* %4033, i32 0, i32 1
  %4035 = load %union.rec*, %union.rec** %4034, align 8
  %4036 = bitcast %union.rec* %4035 to %struct.word_type*
  %4037 = getelementptr inbounds %struct.word_type, %struct.word_type* %4036, i32 0, i32 0
  %4038 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4037, i32 0, i64 0
  %4039 = getelementptr inbounds %struct.LIST, %struct.LIST* %4038, i32 0, i32 1
  %4040 = load %union.rec*, %union.rec** %4039, align 8
  store %union.rec* %4040, %union.rec** %tlink, align 8
  %4041 = load %union.rec*, %union.rec** %tlink, align 8
  %4042 = bitcast %union.rec* %4041 to %struct.word_type*
  %4043 = getelementptr inbounds %struct.word_type, %struct.word_type* %4042, i32 0, i32 1
  %4044 = bitcast %union.FIRST_UNION* %4043 to %struct.anon*
  %4045 = getelementptr inbounds %struct.anon, %struct.anon* %4044, i32 0, i32 0
  %4046 = load i8, i8* %4045, align 1
  %4047 = zext i8 %4046 to i32
  %4048 = icmp eq i32 %4047, 17
  br i1 %4048, label %4049, label %4055

; <label>:4049                                    ; preds = %4026
  %4050 = load %union.rec*, %union.rec** %lgap, align 8
  %4051 = bitcast %union.rec* %4050 to %struct.gapobj_type*
  %4052 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %4051, i32 0, i32 8
  %4053 = load %union.rec*, %union.rec** %4052, align 8
  %4054 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  store %union.rec* %4053, %union.rec** %4054, align 8
  br label %4084

; <label>:4055                                    ; preds = %4026
  %4056 = load %union.rec*, %union.rec** %tlink, align 8
  %4057 = bitcast %union.rec* %4056 to %struct.word_type*
  %4058 = getelementptr inbounds %struct.word_type, %struct.word_type* %4057, i32 0, i32 0
  %4059 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4058, i32 0, i64 1
  %4060 = getelementptr inbounds %struct.LIST, %struct.LIST* %4059, i32 0, i32 0
  %4061 = load %union.rec*, %union.rec** %4060, align 8
  %4062 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  store %union.rec* %4061, %union.rec** %4062, align 8
  br label %4063

; <label>:4063                                    ; preds = %4074, %4055
  %4064 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %4065 = load %union.rec*, %union.rec** %4064, align 8
  %4066 = bitcast %union.rec* %4065 to %struct.word_type*
  %4067 = getelementptr inbounds %struct.word_type, %struct.word_type* %4066, i32 0, i32 1
  %4068 = bitcast %union.FIRST_UNION* %4067 to %struct.anon*
  %4069 = getelementptr inbounds %struct.anon, %struct.anon* %4068, i32 0, i32 0
  %4070 = load i8, i8* %4069, align 1
  %4071 = zext i8 %4070 to i32
  %4072 = icmp eq i32 %4071, 0
  br i1 %4072, label %4073, label %4083

; <label>:4073                                    ; preds = %4063
  br label %4074

; <label>:4074                                    ; preds = %4073
  %4075 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %4076 = load %union.rec*, %union.rec** %4075, align 8
  %4077 = bitcast %union.rec* %4076 to %struct.word_type*
  %4078 = getelementptr inbounds %struct.word_type, %struct.word_type* %4077, i32 0, i32 0
  %4079 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4078, i32 0, i64 1
  %4080 = getelementptr inbounds %struct.LIST, %struct.LIST* %4079, i32 0, i32 0
  %4081 = load %union.rec*, %union.rec** %4080, align 8
  %4082 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  store %union.rec* %4081, %union.rec** %4082, align 8
  br label %4063

; <label>:4083                                    ; preds = %4063
  br label %4084

; <label>:4084                                    ; preds = %4083, %4049
  br label %4085

; <label>:4085                                    ; preds = %4084, %4020
  %4086 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %4087 = load %union.rec*, %union.rec** %4086, align 8
  %4088 = load %union.rec*, %union.rec** %2, align 8
  %4089 = icmp eq %union.rec* %4087, %4088
  br i1 %4089, label %4090, label %4107

; <label>:4090                                    ; preds = %4085
  %4091 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %4092 = load %union.rec*, %union.rec** %4091, align 8
  %4093 = icmp ne %union.rec* %4092, null
  br i1 %4093, label %4094, label %4102

; <label>:4094                                    ; preds = %4090
  %4095 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %4096 = load %union.rec*, %union.rec** %4095, align 8
  %4097 = bitcast %union.rec* %4096 to %struct.closure_type*
  %4098 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %4097, i32 0, i32 4
  %4099 = bitcast %union.FOURTH_UNION* %4098 to %struct.CONSTRAINT*
  %4100 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %4099, i32 0, i32 1
  %4101 = load i32, i32* %4100, align 4
  br label %4104

; <label>:4102                                    ; preds = %4090
  %4103 = load i32, i32* %max_width, align 4
  br label %4104

; <label>:4104                                    ; preds = %4102, %4094
  %4105 = phi i32 [ %4101, %4094 ], [ %4103, %4102 ]
  store i32 %4105, i32* %col_width22, align 4
  %4106 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  store i32 0, i32* %4106, align 4
  br label %4153

; <label>:4107                                    ; preds = %4085
  %4108 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %4109 = load %union.rec*, %union.rec** %4108, align 8
  %4110 = icmp ne %union.rec* %4109, null
  br i1 %4110, label %4111, label %4119

; <label>:4111                                    ; preds = %4107
  %4112 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %4113 = load %union.rec*, %union.rec** %4112, align 8
  %4114 = bitcast %union.rec* %4113 to %struct.closure_type*
  %4115 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %4114, i32 0, i32 4
  %4116 = bitcast %union.FOURTH_UNION* %4115 to %struct.CONSTRAINT*
  %4117 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %4116, i32 0, i32 1
  %4118 = load i32, i32* %4117, align 4
  br label %4121

; <label>:4119                                    ; preds = %4107
  %4120 = load i32, i32* %etc_width, align 4
  br label %4121

; <label>:4121                                    ; preds = %4119, %4111
  %4122 = phi i32 [ %4118, %4111 ], [ %4120, %4119 ]
  store i32 %4122, i32* %col_width22, align 4
  %4123 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %4124 = load %union.rec*, %union.rec** %4123, align 8
  %4125 = bitcast %union.rec* %4124 to %struct.word_type*
  %4126 = getelementptr inbounds %struct.word_type, %struct.word_type* %4125, i32 0, i32 0
  %4127 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4126, i32 0, i64 1
  %4128 = getelementptr inbounds %struct.LIST, %struct.LIST* %4127, i32 0, i32 0
  %4129 = load %union.rec*, %union.rec** %4128, align 8
  store %union.rec* %4129, %union.rec** %g20, align 8
  br label %4130

; <label>:4130                                    ; preds = %4140, %4121
  %4131 = load %union.rec*, %union.rec** %g20, align 8
  %4132 = bitcast %union.rec* %4131 to %struct.word_type*
  %4133 = getelementptr inbounds %struct.word_type, %struct.word_type* %4132, i32 0, i32 1
  %4134 = bitcast %union.FIRST_UNION* %4133 to %struct.anon*
  %4135 = getelementptr inbounds %struct.anon, %struct.anon* %4134, i32 0, i32 0
  %4136 = load i8, i8* %4135, align 1
  %4137 = zext i8 %4136 to i32
  %4138 = icmp eq i32 %4137, 0
  br i1 %4138, label %4139, label %4147

; <label>:4139                                    ; preds = %4130
  br label %4140

; <label>:4140                                    ; preds = %4139
  %4141 = load %union.rec*, %union.rec** %g20, align 8
  %4142 = bitcast %union.rec* %4141 to %struct.word_type*
  %4143 = getelementptr inbounds %struct.word_type, %struct.word_type* %4142, i32 0, i32 0
  %4144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4143, i32 0, i64 1
  %4145 = getelementptr inbounds %struct.LIST, %struct.LIST* %4144, i32 0, i32 0
  %4146 = load %union.rec*, %union.rec** %4145, align 8
  store %union.rec* %4146, %union.rec** %g20, align 8
  br label %4130

; <label>:4147                                    ; preds = %4130
  %4148 = load %union.rec*, %union.rec** %g20, align 8
  %4149 = bitcast %union.rec* %4148 to %struct.gapobj_type*
  %4150 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %4149, i32 0, i32 4
  %4151 = load i32, i32* %4150, align 4
  %4152 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  store i32 %4151, i32* %4152, align 4
  br label %4153

; <label>:4153                                    ; preds = %4147, %4104
  %4154 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %4155 = load i8, i8* %4154, align 1
  %4156 = zext i8 %4155 to i32
  %4157 = icmp sgt i32 %4156, 0
  br i1 %4157, label %4158, label %4247

; <label>:4158                                    ; preds = %4153
  %4159 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %4160 = load %union.rec*, %union.rec** %4159, align 8
  %4161 = bitcast %union.rec* %4160 to %struct.word_type*
  %4162 = getelementptr inbounds %struct.word_type, %struct.word_type* %4161, i32 0, i32 0
  %4163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4162, i32 0, i64 0
  %4164 = getelementptr inbounds %struct.LIST, %struct.LIST* %4163, i32 0, i32 1
  %4165 = load %union.rec*, %union.rec** %4164, align 8
  %4166 = bitcast %union.rec* %4165 to %struct.word_type*
  %4167 = getelementptr inbounds %struct.word_type, %struct.word_type* %4166, i32 0, i32 0
  %4168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4167, i32 0, i64 0
  %4169 = getelementptr inbounds %struct.LIST, %struct.LIST* %4168, i32 0, i32 1
  %4170 = load %union.rec*, %union.rec** %4169, align 8
  store %union.rec* %4170, %union.rec** %glink23, align 8
  %4171 = load %union.rec*, %union.rec** %glink23, align 8
  %4172 = bitcast %union.rec* %4171 to %struct.word_type*
  %4173 = getelementptr inbounds %struct.word_type, %struct.word_type* %4172, i32 0, i32 1
  %4174 = bitcast %union.FIRST_UNION* %4173 to %struct.anon*
  %4175 = getelementptr inbounds %struct.anon, %struct.anon* %4174, i32 0, i32 0
  %4176 = load i8, i8* %4175, align 1
  %4177 = zext i8 %4176 to i32
  %4178 = icmp eq i32 %4177, 0
  br i1 %4178, label %4182, label %4179

; <label>:4179                                    ; preds = %4158
  %4180 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4181 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %4180, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  br label %4182

; <label>:4182                                    ; preds = %4179, %4158
  %4183 = load %union.rec*, %union.rec** %glink23, align 8
  %4184 = bitcast %union.rec* %4183 to %struct.word_type*
  %4185 = getelementptr inbounds %struct.word_type, %struct.word_type* %4184, i32 0, i32 0
  %4186 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4185, i32 0, i64 1
  %4187 = getelementptr inbounds %struct.LIST, %struct.LIST* %4186, i32 0, i32 0
  %4188 = load %union.rec*, %union.rec** %4187, align 8
  store %union.rec* %4188, %union.rec** %g20, align 8
  br label %4189

; <label>:4189                                    ; preds = %4199, %4182
  %4190 = load %union.rec*, %union.rec** %g20, align 8
  %4191 = bitcast %union.rec* %4190 to %struct.word_type*
  %4192 = getelementptr inbounds %struct.word_type, %struct.word_type* %4191, i32 0, i32 1
  %4193 = bitcast %union.FIRST_UNION* %4192 to %struct.anon*
  %4194 = getelementptr inbounds %struct.anon, %struct.anon* %4193, i32 0, i32 0
  %4195 = load i8, i8* %4194, align 1
  %4196 = zext i8 %4195 to i32
  %4197 = icmp eq i32 %4196, 0
  br i1 %4197, label %4198, label %4206

; <label>:4198                                    ; preds = %4189
  br label %4199

; <label>:4199                                    ; preds = %4198
  %4200 = load %union.rec*, %union.rec** %g20, align 8
  %4201 = bitcast %union.rec* %4200 to %struct.word_type*
  %4202 = getelementptr inbounds %struct.word_type, %struct.word_type* %4201, i32 0, i32 0
  %4203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4202, i32 0, i64 1
  %4204 = getelementptr inbounds %struct.LIST, %struct.LIST* %4203, i32 0, i32 0
  %4205 = load %union.rec*, %union.rec** %4204, align 8
  store %union.rec* %4205, %union.rec** %g20, align 8
  br label %4189

; <label>:4206                                    ; preds = %4189
  %4207 = load %union.rec*, %union.rec** %g20, align 8
  %4208 = bitcast %union.rec* %4207 to %struct.word_type*
  %4209 = getelementptr inbounds %struct.word_type, %struct.word_type* %4208, i32 0, i32 1
  %4210 = bitcast %union.FIRST_UNION* %4209 to %struct.anon*
  %4211 = getelementptr inbounds %struct.anon, %struct.anon* %4210, i32 0, i32 0
  %4212 = load i8, i8* %4211, align 1
  %4213 = zext i8 %4212 to i32
  %4214 = icmp eq i32 %4213, 1
  br i1 %4214, label %4215, label %4246

; <label>:4215                                    ; preds = %4206
  %4216 = load %union.rec*, %union.rec** %g20, align 8
  %4217 = bitcast %union.rec* %4216 to %struct.gapobj_type*
  %4218 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %4217, i32 0, i32 3
  %4219 = bitcast %struct.GAP* %4218 to i16*
  %4220 = load i16, i16* %4219, align 4
  %4221 = lshr i16 %4220, 13
  %4222 = zext i16 %4221 to i32
  %4223 = icmp eq i32 %4222, 6
  br i1 %4223, label %4224, label %4246

; <label>:4224                                    ; preds = %4215
  %4225 = load %union.rec*, %union.rec** %g20, align 8
  %4226 = bitcast %union.rec* %4225 to %struct.gapobj_type*
  %4227 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %4226, i32 0, i32 3
  %4228 = bitcast %struct.GAP* %4227 to i16*
  %4229 = load i16, i16* %4228, align 4
  %4230 = lshr i16 %4229, 10
  %4231 = and i16 %4230, 7
  %4232 = zext i16 %4231 to i32
  %4233 = icmp eq i32 %4232, 3
  br i1 %4233, label %4234, label %4246

; <label>:4234                                    ; preds = %4224
  %4235 = load %union.rec*, %union.rec** %g20, align 8
  %4236 = bitcast %union.rec* %4235 to %struct.gapobj_type*
  %4237 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %4236, i32 0, i32 3
  %4238 = getelementptr inbounds %struct.GAP, %struct.GAP* %4237, i32 0, i32 1
  %4239 = load i16, i16* %4238, align 2
  %4240 = sext i16 %4239 to i32
  %4241 = icmp eq i32 %4240, 4096
  br i1 %4241, label %4242, label %4246

; <label>:4242                                    ; preds = %4234
  %4243 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %4244 = load i32, i32* %4243, align 4
  %4245 = add nsw i32 %4244, 128
  store i32 %4245, i32* %4243, align 4
  br label %4246

; <label>:4246                                    ; preds = %4242, %4234, %4224, %4215, %4206
  br label %4247

; <label>:4247                                    ; preds = %4246, %4153
  %4248 = load i32, i32* %col_width22, align 4
  %4249 = icmp sle i32 %4248, 0
  br i1 %4249, label %4250, label %4265

; <label>:4250                                    ; preds = %4247
  %4251 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %4252 = load i32, i32* %4251, align 4
  %4253 = icmp eq i32 %4252, 0
  br i1 %4253, label %4254, label %4259

; <label>:4254                                    ; preds = %4250
  %4255 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 0, i8* %4255, align 1
  %4256 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %4257 = load i32, i32* %4256, align 4
  %4258 = add nsw i32 %4257, 0
  store i32 %4258, i32* %4256, align 4
  br label %4264

; <label>:4259                                    ; preds = %4250
  %4260 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 2, i8* %4260, align 1
  %4261 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %4262 = load i32, i32* %4261, align 4
  %4263 = add nsw i32 %4262, 1048576
  store i32 %4263, i32* %4261, align 4
  br label %4264

; <label>:4264                                    ; preds = %4259, %4254
  br label %4373

; <label>:4265                                    ; preds = %4247
  %4266 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %4267 = load i8, i8* %4266, align 1
  %4268 = zext i8 %4267 to i32
  %4269 = icmp sgt i32 %4268, 0
  br i1 %4269, label %4270, label %4281

; <label>:4270                                    ; preds = %4265
  %4271 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 9
  %4272 = load i32, i32* %4271, align 4
  %4273 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 8
  %4274 = load i32, i32* %4273, align 4
  %4275 = icmp sgt i32 %4272, %4274
  br i1 %4275, label %4276, label %4281

; <label>:4276                                    ; preds = %4270
  %4277 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 4, i8* %4277, align 1
  %4278 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %4279 = load i32, i32* %4278, align 4
  %4280 = add nsw i32 %4279, 1048576
  store i32 %4280, i32* %4278, align 4
  br label %4372

; <label>:4281                                    ; preds = %4270, %4265
  %4282 = load i32, i32* %col_width22, align 4
  %4283 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %4284 = load i32, i32* %4283, align 4
  %4285 = sub nsw i32 %4282, %4284
  %4286 = mul nsw i32 1, %4285
  %4287 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 4
  %4288 = load i32, i32* %4287, align 4
  %4289 = mul nsw i32 2, %4288
  %4290 = icmp sgt i32 %4286, %4289
  br i1 %4290, label %4291, label %4312

; <label>:4291                                    ; preds = %4281
  %4292 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %4293 = load i8, i8* %4292, align 1
  %4294 = zext i8 %4293 to i32
  %4295 = icmp sgt i32 %4294, 0
  %4296 = select i1 %4295, i32 1, i32 0
  %4297 = trunc i32 %4296 to i8
  %4298 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 %4297, i8* %4298, align 1
  %4299 = load i32, i32* %col_width22, align 4
  %4300 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %4301 = load i32, i32* %4300, align 4
  %4302 = sub nsw i32 %4299, %4301
  %4303 = mul nsw i32 512, %4302
  %4304 = load i32, i32* %col_width22, align 4
  %4305 = sdiv i32 %4303, %4304
  store i32 %4305, i32* %badness21, align 4
  %4306 = load i32, i32* %badness21, align 4
  %4307 = load i32, i32* %badness21, align 4
  %4308 = mul nsw i32 %4306, %4307
  %4309 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %4310 = load i32, i32* %4309, align 4
  %4311 = add nsw i32 %4310, %4308
  store i32 %4311, i32* %4309, align 4
  br label %4371

; <label>:4312                                    ; preds = %4281
  %4313 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %4314 = load i32, i32* %4313, align 4
  %4315 = load i32, i32* %col_width22, align 4
  %4316 = icmp sle i32 %4314, %4315
  br i1 %4316, label %4317, label %4332

; <label>:4317                                    ; preds = %4312
  %4318 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 1, i8* %4318, align 1
  %4319 = load i32, i32* %col_width22, align 4
  %4320 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %4321 = load i32, i32* %4320, align 4
  %4322 = sub nsw i32 %4319, %4321
  %4323 = mul nsw i32 128, %4322
  %4324 = load i32, i32* %col_width22, align 4
  %4325 = sdiv i32 %4323, %4324
  store i32 %4325, i32* %badness21, align 4
  %4326 = load i32, i32* %badness21, align 4
  %4327 = load i32, i32* %badness21, align 4
  %4328 = mul nsw i32 %4326, %4327
  %4329 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %4330 = load i32, i32* %4329, align 4
  %4331 = add nsw i32 %4330, %4328
  store i32 %4331, i32* %4329, align 4
  br label %4370

; <label>:4332                                    ; preds = %4312
  %4333 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %4334 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %4333, i32 0, i32 7
  %4335 = load i32, i32* %4334, align 4
  %4336 = icmp ne i32 %4335, 0
  br i1 %4336, label %4337, label %4364

; <label>:4337                                    ; preds = %4332
  %4338 = load i32, i32* %6, align 4
  %4339 = icmp ne i32 %4338, 0
  br i1 %4339, label %4340, label %4364

; <label>:4340                                    ; preds = %4337
  %4341 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %4342 = load i32, i32* %4341, align 4
  %4343 = load i32, i32* %col_width22, align 4
  %4344 = sub nsw i32 %4342, %4343
  %4345 = mul nsw i32 4, %4344
  %4346 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 4
  %4347 = load i32, i32* %4346, align 4
  %4348 = icmp sle i32 %4345, %4347
  br i1 %4348, label %4349, label %4364

; <label>:4349                                    ; preds = %4340
  %4350 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 2, i8* %4350, align 1
  %4351 = load i32, i32* %col_width22, align 4
  %4352 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %4353 = load i32, i32* %4352, align 4
  %4354 = sub nsw i32 %4351, %4353
  %4355 = mul nsw i32 128, %4354
  %4356 = load i32, i32* %col_width22, align 4
  %4357 = sdiv i32 %4355, %4356
  store i32 %4357, i32* %badness21, align 4
  %4358 = load i32, i32* %badness21, align 4
  %4359 = load i32, i32* %badness21, align 4
  %4360 = mul nsw i32 %4358, %4359
  %4361 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %4362 = load i32, i32* %4361, align 4
  %4363 = add nsw i32 %4362, %4360
  store i32 %4363, i32* %4361, align 4
  br label %4369

; <label>:4364                                    ; preds = %4340, %4337, %4332
  %4365 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 3, i8* %4365, align 1
  %4366 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %4367 = load i32, i32* %4366, align 4
  %4368 = add nsw i32 %4367, 1048576
  store i32 %4368, i32* %4366, align 4
  br label %4369

; <label>:4369                                    ; preds = %4364, %4349
  br label %4370

; <label>:4370                                    ; preds = %4369, %4317
  br label %4371

; <label>:4371                                    ; preds = %4370, %4291
  br label %4372

; <label>:4372                                    ; preds = %4371, %4276
  br label %4373

; <label>:4373                                    ; preds = %4372, %4264
  %4374 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %4375 = load i32, i32* %4374, align 4
  %4376 = icmp sge i32 %4375, 0
  br i1 %4376, label %4380, label %4377

; <label>:4377                                    ; preds = %4373
  %4378 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4379 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %4378, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0))
  br label %4380

; <label>:4380                                    ; preds = %4377, %4373
  %4381 = load %union.rec*, %union.rec** %lgap, align 8
  %4382 = bitcast %union.rec* %4381 to %struct.gapobj_type*
  %4383 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %4382, i32 0, i32 3
  %4384 = bitcast %struct.GAP* %4383 to i16*
  %4385 = load i16, i16* %4384, align 4
  %4386 = lshr i16 %4385, 7
  %4387 = and i16 %4386, 1
  %4388 = zext i16 %4387 to i32
  %4389 = icmp ne i32 %4388, 0
  br i1 %4389, label %4411, label %4390

; <label>:4390                                    ; preds = %4380
  %4391 = load i32, i32* %hyph_allowed, align 4
  %4392 = icmp ne i32 %4391, 0
  br i1 %4392, label %4413, label %4393

; <label>:4393                                    ; preds = %4390
  %4394 = load %union.rec*, %union.rec** %lgap, align 8
  %4395 = bitcast %union.rec* %4394 to %struct.gapobj_type*
  %4396 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %4395, i32 0, i32 3
  %4397 = bitcast %struct.GAP* %4396 to i16*
  %4398 = load i16, i16* %4397, align 4
  %4399 = lshr i16 %4398, 13
  %4400 = zext i16 %4399 to i32
  %4401 = icmp eq i32 %4400, 2
  br i1 %4401, label %4411, label %4402

; <label>:4402                                    ; preds = %4393
  %4403 = load %union.rec*, %union.rec** %lgap, align 8
  %4404 = bitcast %union.rec* %4403 to %struct.gapobj_type*
  %4405 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %4404, i32 0, i32 3
  %4406 = bitcast %struct.GAP* %4405 to i16*
  %4407 = load i16, i16* %4406, align 4
  %4408 = lshr i16 %4407, 13
  %4409 = zext i16 %4408 to i32
  %4410 = icmp eq i32 %4409, 7
  br i1 %4410, label %4411, label %4413

; <label>:4411                                    ; preds = %4402, %4393, %4380
  %4412 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 6, i8* %4412, align 1
  br label %4413

; <label>:4413                                    ; preds = %4411, %4402, %4390
  br label %4414

; <label>:4414                                    ; preds = %4413, %4017
  br label %4418

; <label>:4415                                    ; preds = %2525
  %4416 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4417 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %4416, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0))
  br label %4418

; <label>:4418                                    ; preds = %4415, %4414, %3665
  br label %2520

; <label>:4419                                    ; preds = %2520
  %4420 = load i32, i32* %5, align 4
  %4421 = icmp ne i32 %4420, 0
  br i1 %4421, label %4422, label %4430

; <label>:4422                                    ; preds = %4419
  %4423 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %BestI, i32 0, i32 5
  %4424 = load i32, i32* %4423, align 4
  %4425 = icmp sgt i32 %4424, 128
  br i1 %4425, label %4426, label %4430

; <label>:4426                                    ; preds = %4422
  %4427 = load %union.rec*, %union.rec** %2, align 8
  %4428 = call %union.rec* @Hyphenate(%union.rec* %4427)
  store %union.rec* %4428, %union.rec** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %hyph_allowed, align 4
  %4429 = load i32*, i32** %8, align 8
  store i32 1, i32* %4429, align 4
  br label %1488

; <label>:4430                                    ; preds = %4422, %4419
  %4431 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %4432 = load %union.rec*, %union.rec** %4431, align 8
  %4433 = load %union.rec*, %union.rec** %2, align 8
  %4434 = icmp eq %union.rec* %4432, %4433
  br i1 %4434, label %4435, label %4801

; <label>:4435                                    ; preds = %4430
  %4436 = load %union.rec*, %union.rec** %4, align 8
  %4437 = icmp eq %union.rec* %4436, null
  br i1 %4437, label %4438, label %4453

; <label>:4438                                    ; preds = %4435
  %4439 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %4439, %union.rec** %res, align 8
  %4440 = load %union.rec*, %union.rec** %res, align 8
  %4441 = bitcast %union.rec* %4440 to %struct.word_type*
  %4442 = getelementptr inbounds %struct.word_type, %struct.word_type* %4441, i32 0, i32 3
  %4443 = bitcast %union.THIRD_UNION* %4442 to %struct.anon.6*
  %4444 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4443, i32 0, i32 0
  %4445 = getelementptr inbounds [2 x i32], [2 x i32]* %4444, i32 0, i64 0
  store i32 0, i32* %4445, align 4
  %4446 = load i32, i32* %max_width, align 4
  %4447 = load %union.rec*, %union.rec** %res, align 8
  %4448 = bitcast %union.rec* %4447 to %struct.word_type*
  %4449 = getelementptr inbounds %struct.word_type, %struct.word_type* %4448, i32 0, i32 3
  %4450 = bitcast %union.THIRD_UNION* %4449 to %struct.anon.6*
  %4451 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4450, i32 0, i32 1
  %4452 = getelementptr inbounds [2 x i32], [2 x i32]* %4451, i32 0, i64 0
  store i32 %4446, i32* %4452, align 4
  br label %4800

; <label>:4453                                    ; preds = %4435
  %4454 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 19), align 1
  %4455 = zext i8 %4454 to i32
  store i32 %4455, i32* @zz_size, align 4
  %4456 = sext i32 %4455 to i64
  %4457 = icmp uge i64 %4456, 265
  br i1 %4457, label %4458, label %4461

; <label>:4458                                    ; preds = %4453
  %4459 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4460 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %4459)
  br label %4486

; <label>:4461                                    ; preds = %4453
  %4462 = load i32, i32* @zz_size, align 4
  %4463 = sext i32 %4462 to i64
  %4464 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4463
  %4465 = load %union.rec*, %union.rec** %4464, align 8
  %4466 = icmp eq %union.rec* %4465, null
  br i1 %4466, label %4467, label %4471

; <label>:4467                                    ; preds = %4461
  %4468 = load i32, i32* @zz_size, align 4
  %4469 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4470 = call %union.rec* @GetMemory(i32 %4468, %struct.FILE_POS* %4469)
  store %union.rec* %4470, %union.rec** @zz_hold, align 8
  br label %4485

; <label>:4471                                    ; preds = %4461
  %4472 = load i32, i32* @zz_size, align 4
  %4473 = sext i32 %4472 to i64
  %4474 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4473
  %4475 = load %union.rec*, %union.rec** %4474, align 8
  store %union.rec* %4475, %union.rec** @zz_hold, align 8
  store %union.rec* %4475, %union.rec** @zz_hold, align 8
  %4476 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4477 = bitcast %union.rec* %4476 to %struct.word_type*
  %4478 = getelementptr inbounds %struct.word_type, %struct.word_type* %4477, i32 0, i32 0
  %4479 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4478, i32 0, i64 0
  %4480 = getelementptr inbounds %struct.LIST, %struct.LIST* %4479, i32 0, i32 0
  %4481 = load %union.rec*, %union.rec** %4480, align 8
  %4482 = load i32, i32* @zz_size, align 4
  %4483 = sext i32 %4482 to i64
  %4484 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4483
  store %union.rec* %4481, %union.rec** %4484, align 8
  br label %4485

; <label>:4485                                    ; preds = %4471, %4467
  br label %4486

; <label>:4486                                    ; preds = %4485, %4458
  %4487 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4488 = bitcast %union.rec* %4487 to %struct.word_type*
  %4489 = getelementptr inbounds %struct.word_type, %struct.word_type* %4488, i32 0, i32 1
  %4490 = bitcast %union.FIRST_UNION* %4489 to %struct.anon*
  %4491 = getelementptr inbounds %struct.anon, %struct.anon* %4490, i32 0, i32 0
  store i8 19, i8* %4491, align 1
  %4492 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4493 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4494 = bitcast %union.rec* %4493 to %struct.word_type*
  %4495 = getelementptr inbounds %struct.word_type, %struct.word_type* %4494, i32 0, i32 0
  %4496 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4495, i32 0, i64 1
  %4497 = getelementptr inbounds %struct.LIST, %struct.LIST* %4496, i32 0, i32 1
  store %union.rec* %4492, %union.rec** %4497, align 8
  %4498 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4499 = bitcast %union.rec* %4498 to %struct.word_type*
  %4500 = getelementptr inbounds %struct.word_type, %struct.word_type* %4499, i32 0, i32 0
  %4501 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4500, i32 0, i64 1
  %4502 = getelementptr inbounds %struct.LIST, %struct.LIST* %4501, i32 0, i32 0
  store %union.rec* %4492, %union.rec** %4502, align 8
  %4503 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4504 = bitcast %union.rec* %4503 to %struct.word_type*
  %4505 = getelementptr inbounds %struct.word_type, %struct.word_type* %4504, i32 0, i32 0
  %4506 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4505, i32 0, i64 0
  %4507 = getelementptr inbounds %struct.LIST, %struct.LIST* %4506, i32 0, i32 1
  store %union.rec* %4492, %union.rec** %4507, align 8
  %4508 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4509 = bitcast %union.rec* %4508 to %struct.word_type*
  %4510 = getelementptr inbounds %struct.word_type, %struct.word_type* %4509, i32 0, i32 0
  %4511 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4510, i32 0, i64 0
  %4512 = getelementptr inbounds %struct.LIST, %struct.LIST* %4511, i32 0, i32 0
  store %union.rec* %4492, %union.rec** %4512, align 8
  store %union.rec* %4492, %union.rec** %res, align 8
  %4513 = load %union.rec*, %union.rec** %res, align 8
  %4514 = bitcast %union.rec* %4513 to %struct.word_type*
  %4515 = getelementptr inbounds %struct.word_type, %struct.word_type* %4514, i32 0, i32 2
  %4516 = bitcast %union.SECOND_UNION* %4515 to %struct.anon.2*
  %4517 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4516, i32 0, i32 2
  %4518 = load i16, i16* %4517, align 2
  %4519 = and i16 %4518, -2049
  store i16 %4519, i16* %4517, align 2
  %4520 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %4520, %union.rec** @zz_hold, align 8
  %4521 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4522 = bitcast %union.rec* %4521 to %struct.word_type*
  %4523 = getelementptr inbounds %struct.word_type, %struct.word_type* %4522, i32 0, i32 0
  %4524 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4523, i32 0, i64 1
  %4525 = getelementptr inbounds %struct.LIST, %struct.LIST* %4524, i32 0, i32 1
  %4526 = load %union.rec*, %union.rec** %4525, align 8
  %4527 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4528 = icmp eq %union.rec* %4526, %4527
  br i1 %4528, label %4529, label %4530

; <label>:4529                                    ; preds = %4486
  br label %4571

; <label>:4530                                    ; preds = %4486
  %4531 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4532 = bitcast %union.rec* %4531 to %struct.word_type*
  %4533 = getelementptr inbounds %struct.word_type, %struct.word_type* %4532, i32 0, i32 0
  %4534 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4533, i32 0, i64 1
  %4535 = getelementptr inbounds %struct.LIST, %struct.LIST* %4534, i32 0, i32 1
  %4536 = load %union.rec*, %union.rec** %4535, align 8
  store %union.rec* %4536, %union.rec** @zz_res, align 8
  %4537 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4538 = bitcast %union.rec* %4537 to %struct.word_type*
  %4539 = getelementptr inbounds %struct.word_type, %struct.word_type* %4538, i32 0, i32 0
  %4540 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4539, i32 0, i64 1
  %4541 = getelementptr inbounds %struct.LIST, %struct.LIST* %4540, i32 0, i32 0
  %4542 = load %union.rec*, %union.rec** %4541, align 8
  %4543 = load %union.rec*, %union.rec** @zz_res, align 8
  %4544 = bitcast %union.rec* %4543 to %struct.word_type*
  %4545 = getelementptr inbounds %struct.word_type, %struct.word_type* %4544, i32 0, i32 0
  %4546 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4545, i32 0, i64 1
  %4547 = getelementptr inbounds %struct.LIST, %struct.LIST* %4546, i32 0, i32 0
  store %union.rec* %4542, %union.rec** %4547, align 8
  %4548 = load %union.rec*, %union.rec** @zz_res, align 8
  %4549 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4550 = bitcast %union.rec* %4549 to %struct.word_type*
  %4551 = getelementptr inbounds %struct.word_type, %struct.word_type* %4550, i32 0, i32 0
  %4552 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4551, i32 0, i64 1
  %4553 = getelementptr inbounds %struct.LIST, %struct.LIST* %4552, i32 0, i32 0
  %4554 = load %union.rec*, %union.rec** %4553, align 8
  %4555 = bitcast %union.rec* %4554 to %struct.word_type*
  %4556 = getelementptr inbounds %struct.word_type, %struct.word_type* %4555, i32 0, i32 0
  %4557 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4556, i32 0, i64 1
  %4558 = getelementptr inbounds %struct.LIST, %struct.LIST* %4557, i32 0, i32 1
  store %union.rec* %4548, %union.rec** %4558, align 8
  %4559 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4560 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4561 = bitcast %union.rec* %4560 to %struct.word_type*
  %4562 = getelementptr inbounds %struct.word_type, %struct.word_type* %4561, i32 0, i32 0
  %4563 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4562, i32 0, i64 1
  %4564 = getelementptr inbounds %struct.LIST, %struct.LIST* %4563, i32 0, i32 1
  store %union.rec* %4559, %union.rec** %4564, align 8
  %4565 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4566 = bitcast %union.rec* %4565 to %struct.word_type*
  %4567 = getelementptr inbounds %struct.word_type, %struct.word_type* %4566, i32 0, i32 0
  %4568 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4567, i32 0, i64 1
  %4569 = getelementptr inbounds %struct.LIST, %struct.LIST* %4568, i32 0, i32 0
  store %union.rec* %4559, %union.rec** %4569, align 8
  %4570 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4571

; <label>:4571                                    ; preds = %4530, %4529
  %4572 = phi %union.rec* [ null, %4529 ], [ %4570, %4530 ]
  store %union.rec* %4572, %union.rec** @xx_tmp, align 8
  %4573 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %4573, %union.rec** @zz_res, align 8
  %4574 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %4574, %union.rec** @zz_hold, align 8
  %4575 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4576 = icmp eq %union.rec* %4575, null
  br i1 %4576, label %4577, label %4579

; <label>:4577                                    ; preds = %4571
  %4578 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4627

; <label>:4579                                    ; preds = %4571
  %4580 = load %union.rec*, %union.rec** @zz_res, align 8
  %4581 = icmp eq %union.rec* %4580, null
  br i1 %4581, label %4582, label %4584

; <label>:4582                                    ; preds = %4579
  %4583 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %4625

; <label>:4584                                    ; preds = %4579
  %4585 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4586 = bitcast %union.rec* %4585 to %struct.word_type*
  %4587 = getelementptr inbounds %struct.word_type, %struct.word_type* %4586, i32 0, i32 0
  %4588 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4587, i32 0, i64 1
  %4589 = getelementptr inbounds %struct.LIST, %struct.LIST* %4588, i32 0, i32 0
  %4590 = load %union.rec*, %union.rec** %4589, align 8
  store %union.rec* %4590, %union.rec** @zz_tmp, align 8
  %4591 = load %union.rec*, %union.rec** @zz_res, align 8
  %4592 = bitcast %union.rec* %4591 to %struct.word_type*
  %4593 = getelementptr inbounds %struct.word_type, %struct.word_type* %4592, i32 0, i32 0
  %4594 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4593, i32 0, i64 1
  %4595 = getelementptr inbounds %struct.LIST, %struct.LIST* %4594, i32 0, i32 0
  %4596 = load %union.rec*, %union.rec** %4595, align 8
  %4597 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4598 = bitcast %union.rec* %4597 to %struct.word_type*
  %4599 = getelementptr inbounds %struct.word_type, %struct.word_type* %4598, i32 0, i32 0
  %4600 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4599, i32 0, i64 1
  %4601 = getelementptr inbounds %struct.LIST, %struct.LIST* %4600, i32 0, i32 0
  store %union.rec* %4596, %union.rec** %4601, align 8
  %4602 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4603 = load %union.rec*, %union.rec** @zz_res, align 8
  %4604 = bitcast %union.rec* %4603 to %struct.word_type*
  %4605 = getelementptr inbounds %struct.word_type, %struct.word_type* %4604, i32 0, i32 0
  %4606 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4605, i32 0, i64 1
  %4607 = getelementptr inbounds %struct.LIST, %struct.LIST* %4606, i32 0, i32 0
  %4608 = load %union.rec*, %union.rec** %4607, align 8
  %4609 = bitcast %union.rec* %4608 to %struct.word_type*
  %4610 = getelementptr inbounds %struct.word_type, %struct.word_type* %4609, i32 0, i32 0
  %4611 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4610, i32 0, i64 1
  %4612 = getelementptr inbounds %struct.LIST, %struct.LIST* %4611, i32 0, i32 1
  store %union.rec* %4602, %union.rec** %4612, align 8
  %4613 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4614 = load %union.rec*, %union.rec** @zz_res, align 8
  %4615 = bitcast %union.rec* %4614 to %struct.word_type*
  %4616 = getelementptr inbounds %struct.word_type, %struct.word_type* %4615, i32 0, i32 0
  %4617 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4616, i32 0, i64 1
  %4618 = getelementptr inbounds %struct.LIST, %struct.LIST* %4617, i32 0, i32 0
  store %union.rec* %4613, %union.rec** %4618, align 8
  %4619 = load %union.rec*, %union.rec** @zz_res, align 8
  %4620 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4621 = bitcast %union.rec* %4620 to %struct.word_type*
  %4622 = getelementptr inbounds %struct.word_type, %struct.word_type* %4621, i32 0, i32 0
  %4623 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4622, i32 0, i64 1
  %4624 = getelementptr inbounds %struct.LIST, %struct.LIST* %4623, i32 0, i32 1
  store %union.rec* %4619, %union.rec** %4624, align 8
  br label %4625

; <label>:4625                                    ; preds = %4584, %4582
  %4626 = phi %union.rec* [ %4583, %4582 ], [ %4619, %4584 ]
  br label %4627

; <label>:4627                                    ; preds = %4625, %4577
  %4628 = phi %union.rec* [ %4578, %4577 ], [ %4626, %4625 ]
  %4629 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %4630 = zext i8 %4629 to i32
  store i32 %4630, i32* @zz_size, align 4
  %4631 = sext i32 %4630 to i64
  %4632 = icmp uge i64 %4631, 265
  br i1 %4632, label %4633, label %4636

; <label>:4633                                    ; preds = %4627
  %4634 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4635 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %4634)
  br label %4661

; <label>:4636                                    ; preds = %4627
  %4637 = load i32, i32* @zz_size, align 4
  %4638 = sext i32 %4637 to i64
  %4639 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4638
  %4640 = load %union.rec*, %union.rec** %4639, align 8
  %4641 = icmp eq %union.rec* %4640, null
  br i1 %4641, label %4642, label %4646

; <label>:4642                                    ; preds = %4636
  %4643 = load i32, i32* @zz_size, align 4
  %4644 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4645 = call %union.rec* @GetMemory(i32 %4643, %struct.FILE_POS* %4644)
  store %union.rec* %4645, %union.rec** @zz_hold, align 8
  br label %4660

; <label>:4646                                    ; preds = %4636
  %4647 = load i32, i32* @zz_size, align 4
  %4648 = sext i32 %4647 to i64
  %4649 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4648
  %4650 = load %union.rec*, %union.rec** %4649, align 8
  store %union.rec* %4650, %union.rec** @zz_hold, align 8
  store %union.rec* %4650, %union.rec** @zz_hold, align 8
  %4651 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4652 = bitcast %union.rec* %4651 to %struct.word_type*
  %4653 = getelementptr inbounds %struct.word_type, %struct.word_type* %4652, i32 0, i32 0
  %4654 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4653, i32 0, i64 0
  %4655 = getelementptr inbounds %struct.LIST, %struct.LIST* %4654, i32 0, i32 0
  %4656 = load %union.rec*, %union.rec** %4655, align 8
  %4657 = load i32, i32* @zz_size, align 4
  %4658 = sext i32 %4657 to i64
  %4659 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4658
  store %union.rec* %4656, %union.rec** %4659, align 8
  br label %4660

; <label>:4660                                    ; preds = %4646, %4642
  br label %4661

; <label>:4661                                    ; preds = %4660, %4633
  %4662 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4663 = bitcast %union.rec* %4662 to %struct.word_type*
  %4664 = getelementptr inbounds %struct.word_type, %struct.word_type* %4663, i32 0, i32 1
  %4665 = bitcast %union.FIRST_UNION* %4664 to %struct.anon*
  %4666 = getelementptr inbounds %struct.anon, %struct.anon* %4665, i32 0, i32 0
  store i8 0, i8* %4666, align 1
  %4667 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4668 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4669 = bitcast %union.rec* %4668 to %struct.word_type*
  %4670 = getelementptr inbounds %struct.word_type, %struct.word_type* %4669, i32 0, i32 0
  %4671 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4670, i32 0, i64 1
  %4672 = getelementptr inbounds %struct.LIST, %struct.LIST* %4671, i32 0, i32 1
  store %union.rec* %4667, %union.rec** %4672, align 8
  %4673 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4674 = bitcast %union.rec* %4673 to %struct.word_type*
  %4675 = getelementptr inbounds %struct.word_type, %struct.word_type* %4674, i32 0, i32 0
  %4676 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4675, i32 0, i64 1
  %4677 = getelementptr inbounds %struct.LIST, %struct.LIST* %4676, i32 0, i32 0
  store %union.rec* %4667, %union.rec** %4677, align 8
  %4678 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4679 = bitcast %union.rec* %4678 to %struct.word_type*
  %4680 = getelementptr inbounds %struct.word_type, %struct.word_type* %4679, i32 0, i32 0
  %4681 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4680, i32 0, i64 0
  %4682 = getelementptr inbounds %struct.LIST, %struct.LIST* %4681, i32 0, i32 1
  store %union.rec* %4667, %union.rec** %4682, align 8
  %4683 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4684 = bitcast %union.rec* %4683 to %struct.word_type*
  %4685 = getelementptr inbounds %struct.word_type, %struct.word_type* %4684, i32 0, i32 0
  %4686 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4685, i32 0, i64 0
  %4687 = getelementptr inbounds %struct.LIST, %struct.LIST* %4686, i32 0, i32 0
  store %union.rec* %4667, %union.rec** %4687, align 8
  store %union.rec* %4667, %union.rec** @xx_link, align 8
  %4688 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4688, %union.rec** @zz_res, align 8
  %4689 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %4689, %union.rec** @zz_hold, align 8
  %4690 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4691 = icmp eq %union.rec* %4690, null
  br i1 %4691, label %4692, label %4694

; <label>:4692                                    ; preds = %4661
  %4693 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4742

; <label>:4694                                    ; preds = %4661
  %4695 = load %union.rec*, %union.rec** @zz_res, align 8
  %4696 = icmp eq %union.rec* %4695, null
  br i1 %4696, label %4697, label %4699

; <label>:4697                                    ; preds = %4694
  %4698 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %4740

; <label>:4699                                    ; preds = %4694
  %4700 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4701 = bitcast %union.rec* %4700 to %struct.word_type*
  %4702 = getelementptr inbounds %struct.word_type, %struct.word_type* %4701, i32 0, i32 0
  %4703 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4702, i32 0, i64 0
  %4704 = getelementptr inbounds %struct.LIST, %struct.LIST* %4703, i32 0, i32 0
  %4705 = load %union.rec*, %union.rec** %4704, align 8
  store %union.rec* %4705, %union.rec** @zz_tmp, align 8
  %4706 = load %union.rec*, %union.rec** @zz_res, align 8
  %4707 = bitcast %union.rec* %4706 to %struct.word_type*
  %4708 = getelementptr inbounds %struct.word_type, %struct.word_type* %4707, i32 0, i32 0
  %4709 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4708, i32 0, i64 0
  %4710 = getelementptr inbounds %struct.LIST, %struct.LIST* %4709, i32 0, i32 0
  %4711 = load %union.rec*, %union.rec** %4710, align 8
  %4712 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4713 = bitcast %union.rec* %4712 to %struct.word_type*
  %4714 = getelementptr inbounds %struct.word_type, %struct.word_type* %4713, i32 0, i32 0
  %4715 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4714, i32 0, i64 0
  %4716 = getelementptr inbounds %struct.LIST, %struct.LIST* %4715, i32 0, i32 0
  store %union.rec* %4711, %union.rec** %4716, align 8
  %4717 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4718 = load %union.rec*, %union.rec** @zz_res, align 8
  %4719 = bitcast %union.rec* %4718 to %struct.word_type*
  %4720 = getelementptr inbounds %struct.word_type, %struct.word_type* %4719, i32 0, i32 0
  %4721 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4720, i32 0, i64 0
  %4722 = getelementptr inbounds %struct.LIST, %struct.LIST* %4721, i32 0, i32 0
  %4723 = load %union.rec*, %union.rec** %4722, align 8
  %4724 = bitcast %union.rec* %4723 to %struct.word_type*
  %4725 = getelementptr inbounds %struct.word_type, %struct.word_type* %4724, i32 0, i32 0
  %4726 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4725, i32 0, i64 0
  %4727 = getelementptr inbounds %struct.LIST, %struct.LIST* %4726, i32 0, i32 1
  store %union.rec* %4717, %union.rec** %4727, align 8
  %4728 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4729 = load %union.rec*, %union.rec** @zz_res, align 8
  %4730 = bitcast %union.rec* %4729 to %struct.word_type*
  %4731 = getelementptr inbounds %struct.word_type, %struct.word_type* %4730, i32 0, i32 0
  %4732 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4731, i32 0, i64 0
  %4733 = getelementptr inbounds %struct.LIST, %struct.LIST* %4732, i32 0, i32 0
  store %union.rec* %4728, %union.rec** %4733, align 8
  %4734 = load %union.rec*, %union.rec** @zz_res, align 8
  %4735 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4736 = bitcast %union.rec* %4735 to %struct.word_type*
  %4737 = getelementptr inbounds %struct.word_type, %struct.word_type* %4736, i32 0, i32 0
  %4738 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4737, i32 0, i64 0
  %4739 = getelementptr inbounds %struct.LIST, %struct.LIST* %4738, i32 0, i32 1
  store %union.rec* %4734, %union.rec** %4739, align 8
  br label %4740

; <label>:4740                                    ; preds = %4699, %4697
  %4741 = phi %union.rec* [ %4698, %4697 ], [ %4734, %4699 ]
  br label %4742

; <label>:4742                                    ; preds = %4740, %4692
  %4743 = phi %union.rec* [ %4693, %4692 ], [ %4741, %4740 ]
  %4744 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4744, %union.rec** @zz_res, align 8
  %4745 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %4745, %union.rec** @zz_hold, align 8
  %4746 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4747 = icmp eq %union.rec* %4746, null
  br i1 %4747, label %4748, label %4750

; <label>:4748                                    ; preds = %4742
  %4749 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4798

; <label>:4750                                    ; preds = %4742
  %4751 = load %union.rec*, %union.rec** @zz_res, align 8
  %4752 = icmp eq %union.rec* %4751, null
  br i1 %4752, label %4753, label %4755

; <label>:4753                                    ; preds = %4750
  %4754 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %4796

; <label>:4755                                    ; preds = %4750
  %4756 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4757 = bitcast %union.rec* %4756 to %struct.word_type*
  %4758 = getelementptr inbounds %struct.word_type, %struct.word_type* %4757, i32 0, i32 0
  %4759 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4758, i32 0, i64 1
  %4760 = getelementptr inbounds %struct.LIST, %struct.LIST* %4759, i32 0, i32 0
  %4761 = load %union.rec*, %union.rec** %4760, align 8
  store %union.rec* %4761, %union.rec** @zz_tmp, align 8
  %4762 = load %union.rec*, %union.rec** @zz_res, align 8
  %4763 = bitcast %union.rec* %4762 to %struct.word_type*
  %4764 = getelementptr inbounds %struct.word_type, %struct.word_type* %4763, i32 0, i32 0
  %4765 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4764, i32 0, i64 1
  %4766 = getelementptr inbounds %struct.LIST, %struct.LIST* %4765, i32 0, i32 0
  %4767 = load %union.rec*, %union.rec** %4766, align 8
  %4768 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4769 = bitcast %union.rec* %4768 to %struct.word_type*
  %4770 = getelementptr inbounds %struct.word_type, %struct.word_type* %4769, i32 0, i32 0
  %4771 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4770, i32 0, i64 1
  %4772 = getelementptr inbounds %struct.LIST, %struct.LIST* %4771, i32 0, i32 0
  store %union.rec* %4767, %union.rec** %4772, align 8
  %4773 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4774 = load %union.rec*, %union.rec** @zz_res, align 8
  %4775 = bitcast %union.rec* %4774 to %struct.word_type*
  %4776 = getelementptr inbounds %struct.word_type, %struct.word_type* %4775, i32 0, i32 0
  %4777 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4776, i32 0, i64 1
  %4778 = getelementptr inbounds %struct.LIST, %struct.LIST* %4777, i32 0, i32 0
  %4779 = load %union.rec*, %union.rec** %4778, align 8
  %4780 = bitcast %union.rec* %4779 to %struct.word_type*
  %4781 = getelementptr inbounds %struct.word_type, %struct.word_type* %4780, i32 0, i32 0
  %4782 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4781, i32 0, i64 1
  %4783 = getelementptr inbounds %struct.LIST, %struct.LIST* %4782, i32 0, i32 1
  store %union.rec* %4773, %union.rec** %4783, align 8
  %4784 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4785 = load %union.rec*, %union.rec** @zz_res, align 8
  %4786 = bitcast %union.rec* %4785 to %struct.word_type*
  %4787 = getelementptr inbounds %struct.word_type, %struct.word_type* %4786, i32 0, i32 0
  %4788 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4787, i32 0, i64 1
  %4789 = getelementptr inbounds %struct.LIST, %struct.LIST* %4788, i32 0, i32 0
  store %union.rec* %4784, %union.rec** %4789, align 8
  %4790 = load %union.rec*, %union.rec** @zz_res, align 8
  %4791 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4792 = bitcast %union.rec* %4791 to %struct.word_type*
  %4793 = getelementptr inbounds %struct.word_type, %struct.word_type* %4792, i32 0, i32 0
  %4794 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4793, i32 0, i64 1
  %4795 = getelementptr inbounds %struct.LIST, %struct.LIST* %4794, i32 0, i32 1
  store %union.rec* %4790, %union.rec** %4795, align 8
  br label %4796

; <label>:4796                                    ; preds = %4755, %4753
  %4797 = phi %union.rec* [ %4754, %4753 ], [ %4790, %4755 ]
  br label %4798

; <label>:4798                                    ; preds = %4796, %4748
  %4799 = phi %union.rec* [ %4749, %4748 ], [ %4797, %4796 ]
  br label %4800

; <label>:4800                                    ; preds = %4798, %4438
  br label %9699

; <label>:4801                                    ; preds = %4430
  %4802 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 19), align 1
  %4803 = zext i8 %4802 to i32
  store i32 %4803, i32* @zz_size, align 4
  %4804 = sext i32 %4803 to i64
  %4805 = icmp uge i64 %4804, 265
  br i1 %4805, label %4806, label %4809

; <label>:4806                                    ; preds = %4801
  %4807 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4808 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %4807)
  br label %4834

; <label>:4809                                    ; preds = %4801
  %4810 = load i32, i32* @zz_size, align 4
  %4811 = sext i32 %4810 to i64
  %4812 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4811
  %4813 = load %union.rec*, %union.rec** %4812, align 8
  %4814 = icmp eq %union.rec* %4813, null
  br i1 %4814, label %4815, label %4819

; <label>:4815                                    ; preds = %4809
  %4816 = load i32, i32* @zz_size, align 4
  %4817 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4818 = call %union.rec* @GetMemory(i32 %4816, %struct.FILE_POS* %4817)
  store %union.rec* %4818, %union.rec** @zz_hold, align 8
  br label %4833

; <label>:4819                                    ; preds = %4809
  %4820 = load i32, i32* @zz_size, align 4
  %4821 = sext i32 %4820 to i64
  %4822 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4821
  %4823 = load %union.rec*, %union.rec** %4822, align 8
  store %union.rec* %4823, %union.rec** @zz_hold, align 8
  store %union.rec* %4823, %union.rec** @zz_hold, align 8
  %4824 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4825 = bitcast %union.rec* %4824 to %struct.word_type*
  %4826 = getelementptr inbounds %struct.word_type, %struct.word_type* %4825, i32 0, i32 0
  %4827 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4826, i32 0, i64 0
  %4828 = getelementptr inbounds %struct.LIST, %struct.LIST* %4827, i32 0, i32 0
  %4829 = load %union.rec*, %union.rec** %4828, align 8
  %4830 = load i32, i32* @zz_size, align 4
  %4831 = sext i32 %4830 to i64
  %4832 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4831
  store %union.rec* %4829, %union.rec** %4832, align 8
  br label %4833

; <label>:4833                                    ; preds = %4819, %4815
  br label %4834

; <label>:4834                                    ; preds = %4833, %4806
  %4835 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4836 = bitcast %union.rec* %4835 to %struct.word_type*
  %4837 = getelementptr inbounds %struct.word_type, %struct.word_type* %4836, i32 0, i32 1
  %4838 = bitcast %union.FIRST_UNION* %4837 to %struct.anon*
  %4839 = getelementptr inbounds %struct.anon, %struct.anon* %4838, i32 0, i32 0
  store i8 19, i8* %4839, align 1
  %4840 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4841 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4842 = bitcast %union.rec* %4841 to %struct.word_type*
  %4843 = getelementptr inbounds %struct.word_type, %struct.word_type* %4842, i32 0, i32 0
  %4844 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4843, i32 0, i64 1
  %4845 = getelementptr inbounds %struct.LIST, %struct.LIST* %4844, i32 0, i32 1
  store %union.rec* %4840, %union.rec** %4845, align 8
  %4846 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4847 = bitcast %union.rec* %4846 to %struct.word_type*
  %4848 = getelementptr inbounds %struct.word_type, %struct.word_type* %4847, i32 0, i32 0
  %4849 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4848, i32 0, i64 1
  %4850 = getelementptr inbounds %struct.LIST, %struct.LIST* %4849, i32 0, i32 0
  store %union.rec* %4840, %union.rec** %4850, align 8
  %4851 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4852 = bitcast %union.rec* %4851 to %struct.word_type*
  %4853 = getelementptr inbounds %struct.word_type, %struct.word_type* %4852, i32 0, i32 0
  %4854 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4853, i32 0, i64 0
  %4855 = getelementptr inbounds %struct.LIST, %struct.LIST* %4854, i32 0, i32 1
  store %union.rec* %4840, %union.rec** %4855, align 8
  %4856 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4857 = bitcast %union.rec* %4856 to %struct.word_type*
  %4858 = getelementptr inbounds %struct.word_type, %struct.word_type* %4857, i32 0, i32 0
  %4859 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4858, i32 0, i64 0
  %4860 = getelementptr inbounds %struct.LIST, %struct.LIST* %4859, i32 0, i32 0
  store %union.rec* %4840, %union.rec** %4860, align 8
  store %union.rec* %4840, %union.rec** %res, align 8
  %4861 = load %union.rec*, %union.rec** %res, align 8
  %4862 = bitcast %union.rec* %4861 to %struct.word_type*
  %4863 = getelementptr inbounds %struct.word_type, %struct.word_type* %4862, i32 0, i32 2
  %4864 = bitcast %union.SECOND_UNION* %4863 to %struct.anon.2*
  %4865 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4864, i32 0, i32 2
  %4866 = load i16, i16* %4865, align 2
  %4867 = and i16 %4866, -2049
  store i16 %4867, i16* %4865, align 2
  %4868 = load %union.rec*, %union.rec** %res, align 8
  %4869 = bitcast %union.rec* %4868 to %struct.word_type*
  %4870 = getelementptr inbounds %struct.word_type, %struct.word_type* %4869, i32 0, i32 3
  %4871 = bitcast %union.THIRD_UNION* %4870 to %struct.anon.6*
  %4872 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4871, i32 0, i32 0
  %4873 = getelementptr inbounds [2 x i32], [2 x i32]* %4872, i32 0, i64 0
  store i32 0, i32* %4873, align 4
  %4874 = load i32, i32* %max_width, align 4
  %4875 = load %union.rec*, %union.rec** %res, align 8
  %4876 = bitcast %union.rec* %4875 to %struct.word_type*
  %4877 = getelementptr inbounds %struct.word_type, %struct.word_type* %4876, i32 0, i32 3
  %4878 = bitcast %union.THIRD_UNION* %4877 to %struct.anon.6*
  %4879 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4878, i32 0, i32 1
  %4880 = getelementptr inbounds [2 x i32], [2 x i32]* %4879, i32 0, i64 0
  store i32 %4874, i32* %4880, align 4
  %4881 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %4881, %union.rec** @zz_hold, align 8
  %4882 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4883 = bitcast %union.rec* %4882 to %struct.word_type*
  %4884 = getelementptr inbounds %struct.word_type, %struct.word_type* %4883, i32 0, i32 0
  %4885 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4884, i32 0, i64 1
  %4886 = getelementptr inbounds %struct.LIST, %struct.LIST* %4885, i32 0, i32 1
  %4887 = load %union.rec*, %union.rec** %4886, align 8
  %4888 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4889 = icmp eq %union.rec* %4887, %4888
  br i1 %4889, label %4890, label %4891

; <label>:4890                                    ; preds = %4834
  br label %4932

; <label>:4891                                    ; preds = %4834
  %4892 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4893 = bitcast %union.rec* %4892 to %struct.word_type*
  %4894 = getelementptr inbounds %struct.word_type, %struct.word_type* %4893, i32 0, i32 0
  %4895 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4894, i32 0, i64 1
  %4896 = getelementptr inbounds %struct.LIST, %struct.LIST* %4895, i32 0, i32 1
  %4897 = load %union.rec*, %union.rec** %4896, align 8
  store %union.rec* %4897, %union.rec** @zz_res, align 8
  %4898 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4899 = bitcast %union.rec* %4898 to %struct.word_type*
  %4900 = getelementptr inbounds %struct.word_type, %struct.word_type* %4899, i32 0, i32 0
  %4901 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4900, i32 0, i64 1
  %4902 = getelementptr inbounds %struct.LIST, %struct.LIST* %4901, i32 0, i32 0
  %4903 = load %union.rec*, %union.rec** %4902, align 8
  %4904 = load %union.rec*, %union.rec** @zz_res, align 8
  %4905 = bitcast %union.rec* %4904 to %struct.word_type*
  %4906 = getelementptr inbounds %struct.word_type, %struct.word_type* %4905, i32 0, i32 0
  %4907 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4906, i32 0, i64 1
  %4908 = getelementptr inbounds %struct.LIST, %struct.LIST* %4907, i32 0, i32 0
  store %union.rec* %4903, %union.rec** %4908, align 8
  %4909 = load %union.rec*, %union.rec** @zz_res, align 8
  %4910 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4911 = bitcast %union.rec* %4910 to %struct.word_type*
  %4912 = getelementptr inbounds %struct.word_type, %struct.word_type* %4911, i32 0, i32 0
  %4913 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4912, i32 0, i64 1
  %4914 = getelementptr inbounds %struct.LIST, %struct.LIST* %4913, i32 0, i32 0
  %4915 = load %union.rec*, %union.rec** %4914, align 8
  %4916 = bitcast %union.rec* %4915 to %struct.word_type*
  %4917 = getelementptr inbounds %struct.word_type, %struct.word_type* %4916, i32 0, i32 0
  %4918 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4917, i32 0, i64 1
  %4919 = getelementptr inbounds %struct.LIST, %struct.LIST* %4918, i32 0, i32 1
  store %union.rec* %4909, %union.rec** %4919, align 8
  %4920 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4921 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4922 = bitcast %union.rec* %4921 to %struct.word_type*
  %4923 = getelementptr inbounds %struct.word_type, %struct.word_type* %4922, i32 0, i32 0
  %4924 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4923, i32 0, i64 1
  %4925 = getelementptr inbounds %struct.LIST, %struct.LIST* %4924, i32 0, i32 1
  store %union.rec* %4920, %union.rec** %4925, align 8
  %4926 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4927 = bitcast %union.rec* %4926 to %struct.word_type*
  %4928 = getelementptr inbounds %struct.word_type, %struct.word_type* %4927, i32 0, i32 0
  %4929 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4928, i32 0, i64 1
  %4930 = getelementptr inbounds %struct.LIST, %struct.LIST* %4929, i32 0, i32 0
  store %union.rec* %4920, %union.rec** %4930, align 8
  %4931 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4932

; <label>:4932                                    ; preds = %4891, %4890
  %4933 = phi %union.rec* [ null, %4890 ], [ %4931, %4891 ]
  store %union.rec* %4933, %union.rec** @xx_tmp, align 8
  %4934 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %4934, %union.rec** @zz_res, align 8
  %4935 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %4935, %union.rec** @zz_hold, align 8
  %4936 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4937 = icmp eq %union.rec* %4936, null
  br i1 %4937, label %4938, label %4940

; <label>:4938                                    ; preds = %4932
  %4939 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4988

; <label>:4940                                    ; preds = %4932
  %4941 = load %union.rec*, %union.rec** @zz_res, align 8
  %4942 = icmp eq %union.rec* %4941, null
  br i1 %4942, label %4943, label %4945

; <label>:4943                                    ; preds = %4940
  %4944 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %4986

; <label>:4945                                    ; preds = %4940
  %4946 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4947 = bitcast %union.rec* %4946 to %struct.word_type*
  %4948 = getelementptr inbounds %struct.word_type, %struct.word_type* %4947, i32 0, i32 0
  %4949 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4948, i32 0, i64 1
  %4950 = getelementptr inbounds %struct.LIST, %struct.LIST* %4949, i32 0, i32 0
  %4951 = load %union.rec*, %union.rec** %4950, align 8
  store %union.rec* %4951, %union.rec** @zz_tmp, align 8
  %4952 = load %union.rec*, %union.rec** @zz_res, align 8
  %4953 = bitcast %union.rec* %4952 to %struct.word_type*
  %4954 = getelementptr inbounds %struct.word_type, %struct.word_type* %4953, i32 0, i32 0
  %4955 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4954, i32 0, i64 1
  %4956 = getelementptr inbounds %struct.LIST, %struct.LIST* %4955, i32 0, i32 0
  %4957 = load %union.rec*, %union.rec** %4956, align 8
  %4958 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4959 = bitcast %union.rec* %4958 to %struct.word_type*
  %4960 = getelementptr inbounds %struct.word_type, %struct.word_type* %4959, i32 0, i32 0
  %4961 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4960, i32 0, i64 1
  %4962 = getelementptr inbounds %struct.LIST, %struct.LIST* %4961, i32 0, i32 0
  store %union.rec* %4957, %union.rec** %4962, align 8
  %4963 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4964 = load %union.rec*, %union.rec** @zz_res, align 8
  %4965 = bitcast %union.rec* %4964 to %struct.word_type*
  %4966 = getelementptr inbounds %struct.word_type, %struct.word_type* %4965, i32 0, i32 0
  %4967 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4966, i32 0, i64 1
  %4968 = getelementptr inbounds %struct.LIST, %struct.LIST* %4967, i32 0, i32 0
  %4969 = load %union.rec*, %union.rec** %4968, align 8
  %4970 = bitcast %union.rec* %4969 to %struct.word_type*
  %4971 = getelementptr inbounds %struct.word_type, %struct.word_type* %4970, i32 0, i32 0
  %4972 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4971, i32 0, i64 1
  %4973 = getelementptr inbounds %struct.LIST, %struct.LIST* %4972, i32 0, i32 1
  store %union.rec* %4963, %union.rec** %4973, align 8
  %4974 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4975 = load %union.rec*, %union.rec** @zz_res, align 8
  %4976 = bitcast %union.rec* %4975 to %struct.word_type*
  %4977 = getelementptr inbounds %struct.word_type, %struct.word_type* %4976, i32 0, i32 0
  %4978 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4977, i32 0, i64 1
  %4979 = getelementptr inbounds %struct.LIST, %struct.LIST* %4978, i32 0, i32 0
  store %union.rec* %4974, %union.rec** %4979, align 8
  %4980 = load %union.rec*, %union.rec** @zz_res, align 8
  %4981 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4982 = bitcast %union.rec* %4981 to %struct.word_type*
  %4983 = getelementptr inbounds %struct.word_type, %struct.word_type* %4982, i32 0, i32 0
  %4984 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4983, i32 0, i64 1
  %4985 = getelementptr inbounds %struct.LIST, %struct.LIST* %4984, i32 0, i32 1
  store %union.rec* %4980, %union.rec** %4985, align 8
  br label %4986

; <label>:4986                                    ; preds = %4945, %4943
  %4987 = phi %union.rec* [ %4944, %4943 ], [ %4980, %4945 ]
  br label %4988

; <label>:4988                                    ; preds = %4986, %4938
  %4989 = phi %union.rec* [ %4939, %4938 ], [ %4987, %4986 ]
  %4990 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %4991 = load %union.rec*, %union.rec** %4990, align 8
  store %union.rec* %4991, %union.rec** %llink25, align 8
  br label %4992

; <label>:4992                                    ; preds = %7981, %4988
  %4993 = load %union.rec*, %union.rec** %llink25, align 8
  %4994 = load %union.rec*, %union.rec** %2, align 8
  %4995 = icmp ne %union.rec* %4993, %4994
  br i1 %4995, label %4996, label %7986

; <label>:4996                                    ; preds = %4992
  %4997 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %4998 = zext i8 %4997 to i32
  store i32 %4998, i32* @zz_size, align 4
  %4999 = sext i32 %4998 to i64
  %5000 = icmp uge i64 %4999, 265
  br i1 %5000, label %5001, label %5004

; <label>:5001                                    ; preds = %4996
  %5002 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5003 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %5002)
  br label %5029

; <label>:5004                                    ; preds = %4996
  %5005 = load i32, i32* @zz_size, align 4
  %5006 = sext i32 %5005 to i64
  %5007 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %5006
  %5008 = load %union.rec*, %union.rec** %5007, align 8
  %5009 = icmp eq %union.rec* %5008, null
  br i1 %5009, label %5010, label %5014

; <label>:5010                                    ; preds = %5004
  %5011 = load i32, i32* @zz_size, align 4
  %5012 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5013 = call %union.rec* @GetMemory(i32 %5011, %struct.FILE_POS* %5012)
  store %union.rec* %5013, %union.rec** @zz_hold, align 8
  br label %5028

; <label>:5014                                    ; preds = %5004
  %5015 = load i32, i32* @zz_size, align 4
  %5016 = sext i32 %5015 to i64
  %5017 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %5016
  %5018 = load %union.rec*, %union.rec** %5017, align 8
  store %union.rec* %5018, %union.rec** @zz_hold, align 8
  store %union.rec* %5018, %union.rec** @zz_hold, align 8
  %5019 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5020 = bitcast %union.rec* %5019 to %struct.word_type*
  %5021 = getelementptr inbounds %struct.word_type, %struct.word_type* %5020, i32 0, i32 0
  %5022 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5021, i32 0, i64 0
  %5023 = getelementptr inbounds %struct.LIST, %struct.LIST* %5022, i32 0, i32 0
  %5024 = load %union.rec*, %union.rec** %5023, align 8
  %5025 = load i32, i32* @zz_size, align 4
  %5026 = sext i32 %5025 to i64
  %5027 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %5026
  store %union.rec* %5024, %union.rec** %5027, align 8
  br label %5028

; <label>:5028                                    ; preds = %5014, %5010
  br label %5029

; <label>:5029                                    ; preds = %5028, %5001
  %5030 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5031 = bitcast %union.rec* %5030 to %struct.word_type*
  %5032 = getelementptr inbounds %struct.word_type, %struct.word_type* %5031, i32 0, i32 1
  %5033 = bitcast %union.FIRST_UNION* %5032 to %struct.anon*
  %5034 = getelementptr inbounds %struct.anon, %struct.anon* %5033, i32 0, i32 0
  store i8 17, i8* %5034, align 1
  %5035 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5036 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5037 = bitcast %union.rec* %5036 to %struct.word_type*
  %5038 = getelementptr inbounds %struct.word_type, %struct.word_type* %5037, i32 0, i32 0
  %5039 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5038, i32 0, i64 1
  %5040 = getelementptr inbounds %struct.LIST, %struct.LIST* %5039, i32 0, i32 1
  store %union.rec* %5035, %union.rec** %5040, align 8
  %5041 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5042 = bitcast %union.rec* %5041 to %struct.word_type*
  %5043 = getelementptr inbounds %struct.word_type, %struct.word_type* %5042, i32 0, i32 0
  %5044 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5043, i32 0, i64 1
  %5045 = getelementptr inbounds %struct.LIST, %struct.LIST* %5044, i32 0, i32 0
  store %union.rec* %5035, %union.rec** %5045, align 8
  %5046 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5047 = bitcast %union.rec* %5046 to %struct.word_type*
  %5048 = getelementptr inbounds %struct.word_type, %struct.word_type* %5047, i32 0, i32 0
  %5049 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5048, i32 0, i64 0
  %5050 = getelementptr inbounds %struct.LIST, %struct.LIST* %5049, i32 0, i32 1
  store %union.rec* %5035, %union.rec** %5050, align 8
  %5051 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5052 = bitcast %union.rec* %5051 to %struct.word_type*
  %5053 = getelementptr inbounds %struct.word_type, %struct.word_type* %5052, i32 0, i32 0
  %5054 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5053, i32 0, i64 0
  %5055 = getelementptr inbounds %struct.LIST, %struct.LIST* %5054, i32 0, i32 0
  store %union.rec* %5035, %union.rec** %5055, align 8
  store %union.rec* %5035, %union.rec** %y, align 8
  %5056 = load %union.rec*, %union.rec** %2, align 8
  %5057 = bitcast %union.rec* %5056 to %struct.word_type*
  %5058 = getelementptr inbounds %struct.word_type, %struct.word_type* %5057, i32 0, i32 2
  %5059 = bitcast %union.SECOND_UNION* %5058 to %struct.anon.2*
  %5060 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5059, i32 0, i32 2
  %5061 = load i16, i16* %5060, align 2
  %5062 = lshr i16 %5061, 11
  %5063 = and i16 %5062, 1
  %5064 = zext i16 %5063 to i32
  %5065 = load %union.rec*, %union.rec** %y, align 8
  %5066 = bitcast %union.rec* %5065 to %struct.word_type*
  %5067 = getelementptr inbounds %struct.word_type, %struct.word_type* %5066, i32 0, i32 2
  %5068 = bitcast %union.SECOND_UNION* %5067 to %struct.anon.2*
  %5069 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5068, i32 0, i32 2
  %5070 = trunc i32 %5064 to i16
  %5071 = load i16, i16* %5069, align 2
  %5072 = and i16 %5070, 1
  %5073 = shl i16 %5072, 11
  %5074 = and i16 %5071, -2049
  %5075 = or i16 %5074, %5073
  store i16 %5075, i16* %5069, align 2
  %5076 = zext i16 %5072 to i32
  %5077 = load %union.rec*, %union.rec** %2, align 8
  %5078 = bitcast %union.rec* %5077 to %struct.word_type*
  %5079 = getelementptr inbounds %struct.word_type, %struct.word_type* %5078, i32 0, i32 1
  %5080 = bitcast %union.FIRST_UNION* %5079 to %struct.FILE_POS*
  %5081 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %5080, i32 0, i32 2
  %5082 = load i16, i16* %5081, align 2
  %5083 = load %union.rec*, %union.rec** %y, align 8
  %5084 = bitcast %union.rec* %5083 to %struct.word_type*
  %5085 = getelementptr inbounds %struct.word_type, %struct.word_type* %5084, i32 0, i32 1
  %5086 = bitcast %union.FIRST_UNION* %5085 to %struct.FILE_POS*
  %5087 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %5086, i32 0, i32 2
  store i16 %5082, i16* %5087, align 2
  %5088 = load %union.rec*, %union.rec** %2, align 8
  %5089 = bitcast %union.rec* %5088 to %struct.word_type*
  %5090 = getelementptr inbounds %struct.word_type, %struct.word_type* %5089, i32 0, i32 1
  %5091 = bitcast %union.FIRST_UNION* %5090 to %struct.FILE_POS*
  %5092 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %5091, i32 0, i32 3
  %5093 = load i32, i32* %5092, align 4
  %5094 = and i32 %5093, 1048575
  %5095 = load %union.rec*, %union.rec** %y, align 8
  %5096 = bitcast %union.rec* %5095 to %struct.word_type*
  %5097 = getelementptr inbounds %struct.word_type, %struct.word_type* %5096, i32 0, i32 1
  %5098 = bitcast %union.FIRST_UNION* %5097 to %struct.FILE_POS*
  %5099 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %5098, i32 0, i32 3
  %5100 = load i32, i32* %5099, align 4
  %5101 = and i32 %5094, 1048575
  %5102 = and i32 %5100, -1048576
  %5103 = or i32 %5102, %5101
  store i32 %5103, i32* %5099, align 4
  %5104 = load %union.rec*, %union.rec** %2, align 8
  %5105 = bitcast %union.rec* %5104 to %struct.word_type*
  %5106 = getelementptr inbounds %struct.word_type, %struct.word_type* %5105, i32 0, i32 1
  %5107 = bitcast %union.FIRST_UNION* %5106 to %struct.FILE_POS*
  %5108 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %5107, i32 0, i32 3
  %5109 = load i32, i32* %5108, align 4
  %5110 = lshr i32 %5109, 20
  %5111 = load %union.rec*, %union.rec** %y, align 8
  %5112 = bitcast %union.rec* %5111 to %struct.word_type*
  %5113 = getelementptr inbounds %struct.word_type, %struct.word_type* %5112, i32 0, i32 1
  %5114 = bitcast %union.FIRST_UNION* %5113 to %struct.FILE_POS*
  %5115 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %5114, i32 0, i32 3
  %5116 = load i32, i32* %5115, align 4
  %5117 = and i32 %5110, 4095
  %5118 = shl i32 %5117, 20
  %5119 = and i32 %5116, 1048575
  %5120 = or i32 %5119, %5118
  store i32 %5120, i32* %5115, align 4
  %5121 = load %union.rec*, %union.rec** %2, align 8
  %5122 = bitcast %union.rec* %5121 to %struct.closure_type*
  %5123 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5122, i32 0, i32 4
  %5124 = bitcast %union.FOURTH_UNION* %5123 to %struct.STYLE*
  %5125 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5124, i32 0, i32 0
  %5126 = bitcast %union.anon* %5125 to %struct.GAP*
  %5127 = bitcast %struct.GAP* %5126 to i16*
  %5128 = load i16, i16* %5127, align 4
  %5129 = lshr i16 %5128, 7
  %5130 = and i16 %5129, 1
  %5131 = zext i16 %5130 to i32
  %5132 = load %union.rec*, %union.rec** %y, align 8
  %5133 = bitcast %union.rec* %5132 to %struct.closure_type*
  %5134 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5133, i32 0, i32 4
  %5135 = bitcast %union.FOURTH_UNION* %5134 to %struct.STYLE*
  %5136 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5135, i32 0, i32 0
  %5137 = bitcast %union.anon* %5136 to %struct.GAP*
  %5138 = bitcast %struct.GAP* %5137 to i16*
  %5139 = trunc i32 %5131 to i16
  %5140 = load i16, i16* %5138, align 4
  %5141 = and i16 %5139, 1
  %5142 = shl i16 %5141, 7
  %5143 = and i16 %5140, -129
  %5144 = or i16 %5143, %5142
  store i16 %5144, i16* %5138, align 4
  %5145 = zext i16 %5141 to i32
  %5146 = load %union.rec*, %union.rec** %2, align 8
  %5147 = bitcast %union.rec* %5146 to %struct.closure_type*
  %5148 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5147, i32 0, i32 4
  %5149 = bitcast %union.FOURTH_UNION* %5148 to %struct.STYLE*
  %5150 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5149, i32 0, i32 0
  %5151 = bitcast %union.anon* %5150 to %struct.GAP*
  %5152 = bitcast %struct.GAP* %5151 to i16*
  %5153 = load i16, i16* %5152, align 4
  %5154 = lshr i16 %5153, 8
  %5155 = and i16 %5154, 1
  %5156 = zext i16 %5155 to i32
  %5157 = load %union.rec*, %union.rec** %y, align 8
  %5158 = bitcast %union.rec* %5157 to %struct.closure_type*
  %5159 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5158, i32 0, i32 4
  %5160 = bitcast %union.FOURTH_UNION* %5159 to %struct.STYLE*
  %5161 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5160, i32 0, i32 0
  %5162 = bitcast %union.anon* %5161 to %struct.GAP*
  %5163 = bitcast %struct.GAP* %5162 to i16*
  %5164 = trunc i32 %5156 to i16
  %5165 = load i16, i16* %5163, align 4
  %5166 = and i16 %5164, 1
  %5167 = shl i16 %5166, 8
  %5168 = and i16 %5165, -257
  %5169 = or i16 %5168, %5167
  store i16 %5169, i16* %5163, align 4
  %5170 = zext i16 %5166 to i32
  %5171 = load %union.rec*, %union.rec** %2, align 8
  %5172 = bitcast %union.rec* %5171 to %struct.closure_type*
  %5173 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5172, i32 0, i32 4
  %5174 = bitcast %union.FOURTH_UNION* %5173 to %struct.STYLE*
  %5175 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5174, i32 0, i32 0
  %5176 = bitcast %union.anon* %5175 to %struct.GAP*
  %5177 = bitcast %struct.GAP* %5176 to i16*
  %5178 = load i16, i16* %5177, align 4
  %5179 = lshr i16 %5178, 9
  %5180 = and i16 %5179, 1
  %5181 = zext i16 %5180 to i32
  %5182 = load %union.rec*, %union.rec** %y, align 8
  %5183 = bitcast %union.rec* %5182 to %struct.closure_type*
  %5184 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5183, i32 0, i32 4
  %5185 = bitcast %union.FOURTH_UNION* %5184 to %struct.STYLE*
  %5186 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5185, i32 0, i32 0
  %5187 = bitcast %union.anon* %5186 to %struct.GAP*
  %5188 = bitcast %struct.GAP* %5187 to i16*
  %5189 = trunc i32 %5181 to i16
  %5190 = load i16, i16* %5188, align 4
  %5191 = and i16 %5189, 1
  %5192 = shl i16 %5191, 9
  %5193 = and i16 %5190, -513
  %5194 = or i16 %5193, %5192
  store i16 %5194, i16* %5188, align 4
  %5195 = zext i16 %5191 to i32
  %5196 = load %union.rec*, %union.rec** %2, align 8
  %5197 = bitcast %union.rec* %5196 to %struct.closure_type*
  %5198 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5197, i32 0, i32 4
  %5199 = bitcast %union.FOURTH_UNION* %5198 to %struct.STYLE*
  %5200 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5199, i32 0, i32 0
  %5201 = bitcast %union.anon* %5200 to %struct.GAP*
  %5202 = bitcast %struct.GAP* %5201 to i16*
  %5203 = load i16, i16* %5202, align 4
  %5204 = lshr i16 %5203, 10
  %5205 = and i16 %5204, 7
  %5206 = zext i16 %5205 to i32
  %5207 = load %union.rec*, %union.rec** %y, align 8
  %5208 = bitcast %union.rec* %5207 to %struct.closure_type*
  %5209 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5208, i32 0, i32 4
  %5210 = bitcast %union.FOURTH_UNION* %5209 to %struct.STYLE*
  %5211 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5210, i32 0, i32 0
  %5212 = bitcast %union.anon* %5211 to %struct.GAP*
  %5213 = bitcast %struct.GAP* %5212 to i16*
  %5214 = trunc i32 %5206 to i16
  %5215 = load i16, i16* %5213, align 4
  %5216 = and i16 %5214, 7
  %5217 = shl i16 %5216, 10
  %5218 = and i16 %5215, -7169
  %5219 = or i16 %5218, %5217
  store i16 %5219, i16* %5213, align 4
  %5220 = zext i16 %5216 to i32
  %5221 = load %union.rec*, %union.rec** %2, align 8
  %5222 = bitcast %union.rec* %5221 to %struct.closure_type*
  %5223 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5222, i32 0, i32 4
  %5224 = bitcast %union.FOURTH_UNION* %5223 to %struct.STYLE*
  %5225 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5224, i32 0, i32 0
  %5226 = bitcast %union.anon* %5225 to %struct.GAP*
  %5227 = bitcast %struct.GAP* %5226 to i16*
  %5228 = load i16, i16* %5227, align 4
  %5229 = lshr i16 %5228, 13
  %5230 = zext i16 %5229 to i32
  %5231 = load %union.rec*, %union.rec** %y, align 8
  %5232 = bitcast %union.rec* %5231 to %struct.closure_type*
  %5233 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5232, i32 0, i32 4
  %5234 = bitcast %union.FOURTH_UNION* %5233 to %struct.STYLE*
  %5235 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5234, i32 0, i32 0
  %5236 = bitcast %union.anon* %5235 to %struct.GAP*
  %5237 = bitcast %struct.GAP* %5236 to i16*
  %5238 = trunc i32 %5230 to i16
  %5239 = load i16, i16* %5237, align 4
  %5240 = and i16 %5238, 7
  %5241 = shl i16 %5240, 13
  %5242 = and i16 %5239, 8191
  %5243 = or i16 %5242, %5241
  store i16 %5243, i16* %5237, align 4
  %5244 = zext i16 %5240 to i32
  %5245 = load %union.rec*, %union.rec** %2, align 8
  %5246 = bitcast %union.rec* %5245 to %struct.closure_type*
  %5247 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5246, i32 0, i32 4
  %5248 = bitcast %union.FOURTH_UNION* %5247 to %struct.STYLE*
  %5249 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5248, i32 0, i32 0
  %5250 = bitcast %union.anon* %5249 to %struct.GAP*
  %5251 = getelementptr inbounds %struct.GAP, %struct.GAP* %5250, i32 0, i32 1
  %5252 = load i16, i16* %5251, align 2
  %5253 = load %union.rec*, %union.rec** %y, align 8
  %5254 = bitcast %union.rec* %5253 to %struct.closure_type*
  %5255 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5254, i32 0, i32 4
  %5256 = bitcast %union.FOURTH_UNION* %5255 to %struct.STYLE*
  %5257 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5256, i32 0, i32 0
  %5258 = bitcast %union.anon* %5257 to %struct.GAP*
  %5259 = getelementptr inbounds %struct.GAP, %struct.GAP* %5258, i32 0, i32 1
  store i16 %5252, i16* %5259, align 2
  %5260 = load %union.rec*, %union.rec** %2, align 8
  %5261 = bitcast %union.rec* %5260 to %struct.closure_type*
  %5262 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5261, i32 0, i32 4
  %5263 = bitcast %union.FOURTH_UNION* %5262 to %struct.STYLE*
  %5264 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5263, i32 0, i32 1
  %5265 = bitcast %union.anon.10* %5264 to %struct.anon.11*
  %5266 = bitcast %struct.anon.11* %5265 to i8*
  %5267 = load i8, i8* %5266, align 4
  %5268 = and i8 %5267, 3
  %5269 = zext i8 %5268 to i32
  %5270 = load %union.rec*, %union.rec** %y, align 8
  %5271 = bitcast %union.rec* %5270 to %struct.closure_type*
  %5272 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5271, i32 0, i32 4
  %5273 = bitcast %union.FOURTH_UNION* %5272 to %struct.STYLE*
  %5274 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5273, i32 0, i32 1
  %5275 = bitcast %union.anon.10* %5274 to %struct.anon.11*
  %5276 = bitcast %struct.anon.11* %5275 to i8*
  %5277 = trunc i32 %5269 to i8
  %5278 = load i8, i8* %5276, align 4
  %5279 = and i8 %5277, 3
  %5280 = and i8 %5278, -4
  %5281 = or i8 %5280, %5279
  store i8 %5281, i8* %5276, align 4
  %5282 = zext i8 %5279 to i32
  %5283 = load %union.rec*, %union.rec** %2, align 8
  %5284 = bitcast %union.rec* %5283 to %struct.closure_type*
  %5285 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5284, i32 0, i32 4
  %5286 = bitcast %union.FOURTH_UNION* %5285 to %struct.STYLE*
  %5287 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5286, i32 0, i32 1
  %5288 = bitcast %union.anon.10* %5287 to %struct.anon.11*
  %5289 = bitcast %struct.anon.11* %5288 to i8*
  %5290 = load i8, i8* %5289, align 4
  %5291 = lshr i8 %5290, 2
  %5292 = and i8 %5291, 3
  %5293 = zext i8 %5292 to i32
  %5294 = load %union.rec*, %union.rec** %y, align 8
  %5295 = bitcast %union.rec* %5294 to %struct.closure_type*
  %5296 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5295, i32 0, i32 4
  %5297 = bitcast %union.FOURTH_UNION* %5296 to %struct.STYLE*
  %5298 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5297, i32 0, i32 1
  %5299 = bitcast %union.anon.10* %5298 to %struct.anon.11*
  %5300 = bitcast %struct.anon.11* %5299 to i8*
  %5301 = trunc i32 %5293 to i8
  %5302 = load i8, i8* %5300, align 4
  %5303 = and i8 %5301, 3
  %5304 = shl i8 %5303, 2
  %5305 = and i8 %5302, -13
  %5306 = or i8 %5305, %5304
  store i8 %5306, i8* %5300, align 4
  %5307 = zext i8 %5303 to i32
  %5308 = load %union.rec*, %union.rec** %2, align 8
  %5309 = bitcast %union.rec* %5308 to %struct.closure_type*
  %5310 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5309, i32 0, i32 4
  %5311 = bitcast %union.FOURTH_UNION* %5310 to %struct.STYLE*
  %5312 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5311, i32 0, i32 1
  %5313 = bitcast %union.anon.10* %5312 to %struct.anon.11*
  %5314 = bitcast %struct.anon.11* %5313 to i8*
  %5315 = load i8, i8* %5314, align 4
  %5316 = lshr i8 %5315, 4
  %5317 = and i8 %5316, 7
  %5318 = zext i8 %5317 to i32
  %5319 = load %union.rec*, %union.rec** %y, align 8
  %5320 = bitcast %union.rec* %5319 to %struct.closure_type*
  %5321 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5320, i32 0, i32 4
  %5322 = bitcast %union.FOURTH_UNION* %5321 to %struct.STYLE*
  %5323 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5322, i32 0, i32 1
  %5324 = bitcast %union.anon.10* %5323 to %struct.anon.11*
  %5325 = bitcast %struct.anon.11* %5324 to i8*
  %5326 = trunc i32 %5318 to i8
  %5327 = load i8, i8* %5325, align 4
  %5328 = and i8 %5326, 7
  %5329 = shl i8 %5328, 4
  %5330 = and i8 %5327, -113
  %5331 = or i8 %5330, %5329
  store i8 %5331, i8* %5325, align 4
  %5332 = zext i8 %5328 to i32
  %5333 = load %union.rec*, %union.rec** %2, align 8
  %5334 = bitcast %union.rec* %5333 to %struct.closure_type*
  %5335 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5334, i32 0, i32 4
  %5336 = bitcast %union.FOURTH_UNION* %5335 to %struct.STYLE*
  %5337 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5336, i32 0, i32 0
  %5338 = bitcast %union.anon* %5337 to %struct.anon.9*
  %5339 = bitcast %struct.anon.9* %5338 to i8*
  %5340 = load i8, i8* %5339, align 4
  %5341 = lshr i8 %5340, 3
  %5342 = and i8 %5341, 1
  %5343 = zext i8 %5342 to i32
  %5344 = load %union.rec*, %union.rec** %y, align 8
  %5345 = bitcast %union.rec* %5344 to %struct.closure_type*
  %5346 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5345, i32 0, i32 4
  %5347 = bitcast %union.FOURTH_UNION* %5346 to %struct.STYLE*
  %5348 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5347, i32 0, i32 0
  %5349 = bitcast %union.anon* %5348 to %struct.anon.9*
  %5350 = bitcast %struct.anon.9* %5349 to i8*
  %5351 = trunc i32 %5343 to i8
  %5352 = load i8, i8* %5350, align 4
  %5353 = and i8 %5351, 1
  %5354 = shl i8 %5353, 3
  %5355 = and i8 %5352, -9
  %5356 = or i8 %5355, %5354
  store i8 %5356, i8* %5350, align 4
  %5357 = zext i8 %5353 to i32
  %5358 = load %union.rec*, %union.rec** %2, align 8
  %5359 = bitcast %union.rec* %5358 to %struct.closure_type*
  %5360 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5359, i32 0, i32 4
  %5361 = bitcast %union.FOURTH_UNION* %5360 to %struct.STYLE*
  %5362 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5361, i32 0, i32 1
  %5363 = bitcast %union.anon.10* %5362 to %struct.GAP*
  %5364 = bitcast %struct.GAP* %5363 to i16*
  %5365 = load i16, i16* %5364, align 4
  %5366 = lshr i16 %5365, 7
  %5367 = and i16 %5366, 1
  %5368 = zext i16 %5367 to i32
  %5369 = load %union.rec*, %union.rec** %y, align 8
  %5370 = bitcast %union.rec* %5369 to %struct.closure_type*
  %5371 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5370, i32 0, i32 4
  %5372 = bitcast %union.FOURTH_UNION* %5371 to %struct.STYLE*
  %5373 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5372, i32 0, i32 1
  %5374 = bitcast %union.anon.10* %5373 to %struct.GAP*
  %5375 = bitcast %struct.GAP* %5374 to i16*
  %5376 = trunc i32 %5368 to i16
  %5377 = load i16, i16* %5375, align 4
  %5378 = and i16 %5376, 1
  %5379 = shl i16 %5378, 7
  %5380 = and i16 %5377, -129
  %5381 = or i16 %5380, %5379
  store i16 %5381, i16* %5375, align 4
  %5382 = zext i16 %5378 to i32
  %5383 = load %union.rec*, %union.rec** %2, align 8
  %5384 = bitcast %union.rec* %5383 to %struct.closure_type*
  %5385 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5384, i32 0, i32 4
  %5386 = bitcast %union.FOURTH_UNION* %5385 to %struct.STYLE*
  %5387 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5386, i32 0, i32 1
  %5388 = bitcast %union.anon.10* %5387 to %struct.GAP*
  %5389 = bitcast %struct.GAP* %5388 to i16*
  %5390 = load i16, i16* %5389, align 4
  %5391 = lshr i16 %5390, 8
  %5392 = and i16 %5391, 1
  %5393 = zext i16 %5392 to i32
  %5394 = load %union.rec*, %union.rec** %y, align 8
  %5395 = bitcast %union.rec* %5394 to %struct.closure_type*
  %5396 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5395, i32 0, i32 4
  %5397 = bitcast %union.FOURTH_UNION* %5396 to %struct.STYLE*
  %5398 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5397, i32 0, i32 1
  %5399 = bitcast %union.anon.10* %5398 to %struct.GAP*
  %5400 = bitcast %struct.GAP* %5399 to i16*
  %5401 = trunc i32 %5393 to i16
  %5402 = load i16, i16* %5400, align 4
  %5403 = and i16 %5401, 1
  %5404 = shl i16 %5403, 8
  %5405 = and i16 %5402, -257
  %5406 = or i16 %5405, %5404
  store i16 %5406, i16* %5400, align 4
  %5407 = zext i16 %5403 to i32
  %5408 = load %union.rec*, %union.rec** %2, align 8
  %5409 = bitcast %union.rec* %5408 to %struct.closure_type*
  %5410 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5409, i32 0, i32 4
  %5411 = bitcast %union.FOURTH_UNION* %5410 to %struct.STYLE*
  %5412 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5411, i32 0, i32 1
  %5413 = bitcast %union.anon.10* %5412 to %struct.GAP*
  %5414 = bitcast %struct.GAP* %5413 to i16*
  %5415 = load i16, i16* %5414, align 4
  %5416 = lshr i16 %5415, 9
  %5417 = and i16 %5416, 1
  %5418 = zext i16 %5417 to i32
  %5419 = load %union.rec*, %union.rec** %y, align 8
  %5420 = bitcast %union.rec* %5419 to %struct.closure_type*
  %5421 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5420, i32 0, i32 4
  %5422 = bitcast %union.FOURTH_UNION* %5421 to %struct.STYLE*
  %5423 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5422, i32 0, i32 1
  %5424 = bitcast %union.anon.10* %5423 to %struct.GAP*
  %5425 = bitcast %struct.GAP* %5424 to i16*
  %5426 = trunc i32 %5418 to i16
  %5427 = load i16, i16* %5425, align 4
  %5428 = and i16 %5426, 1
  %5429 = shl i16 %5428, 9
  %5430 = and i16 %5427, -513
  %5431 = or i16 %5430, %5429
  store i16 %5431, i16* %5425, align 4
  %5432 = zext i16 %5428 to i32
  %5433 = load %union.rec*, %union.rec** %2, align 8
  %5434 = bitcast %union.rec* %5433 to %struct.closure_type*
  %5435 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5434, i32 0, i32 4
  %5436 = bitcast %union.FOURTH_UNION* %5435 to %struct.STYLE*
  %5437 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5436, i32 0, i32 1
  %5438 = bitcast %union.anon.10* %5437 to %struct.GAP*
  %5439 = bitcast %struct.GAP* %5438 to i16*
  %5440 = load i16, i16* %5439, align 4
  %5441 = lshr i16 %5440, 10
  %5442 = and i16 %5441, 7
  %5443 = zext i16 %5442 to i32
  %5444 = load %union.rec*, %union.rec** %y, align 8
  %5445 = bitcast %union.rec* %5444 to %struct.closure_type*
  %5446 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5445, i32 0, i32 4
  %5447 = bitcast %union.FOURTH_UNION* %5446 to %struct.STYLE*
  %5448 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5447, i32 0, i32 1
  %5449 = bitcast %union.anon.10* %5448 to %struct.GAP*
  %5450 = bitcast %struct.GAP* %5449 to i16*
  %5451 = trunc i32 %5443 to i16
  %5452 = load i16, i16* %5450, align 4
  %5453 = and i16 %5451, 7
  %5454 = shl i16 %5453, 10
  %5455 = and i16 %5452, -7169
  %5456 = or i16 %5455, %5454
  store i16 %5456, i16* %5450, align 4
  %5457 = zext i16 %5453 to i32
  %5458 = load %union.rec*, %union.rec** %2, align 8
  %5459 = bitcast %union.rec* %5458 to %struct.closure_type*
  %5460 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5459, i32 0, i32 4
  %5461 = bitcast %union.FOURTH_UNION* %5460 to %struct.STYLE*
  %5462 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5461, i32 0, i32 1
  %5463 = bitcast %union.anon.10* %5462 to %struct.GAP*
  %5464 = bitcast %struct.GAP* %5463 to i16*
  %5465 = load i16, i16* %5464, align 4
  %5466 = lshr i16 %5465, 13
  %5467 = zext i16 %5466 to i32
  %5468 = load %union.rec*, %union.rec** %y, align 8
  %5469 = bitcast %union.rec* %5468 to %struct.closure_type*
  %5470 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5469, i32 0, i32 4
  %5471 = bitcast %union.FOURTH_UNION* %5470 to %struct.STYLE*
  %5472 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5471, i32 0, i32 1
  %5473 = bitcast %union.anon.10* %5472 to %struct.GAP*
  %5474 = bitcast %struct.GAP* %5473 to i16*
  %5475 = trunc i32 %5467 to i16
  %5476 = load i16, i16* %5474, align 4
  %5477 = and i16 %5475, 7
  %5478 = shl i16 %5477, 13
  %5479 = and i16 %5476, 8191
  %5480 = or i16 %5479, %5478
  store i16 %5480, i16* %5474, align 4
  %5481 = zext i16 %5477 to i32
  %5482 = load %union.rec*, %union.rec** %2, align 8
  %5483 = bitcast %union.rec* %5482 to %struct.closure_type*
  %5484 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5483, i32 0, i32 4
  %5485 = bitcast %union.FOURTH_UNION* %5484 to %struct.STYLE*
  %5486 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5485, i32 0, i32 1
  %5487 = bitcast %union.anon.10* %5486 to %struct.GAP*
  %5488 = getelementptr inbounds %struct.GAP, %struct.GAP* %5487, i32 0, i32 1
  %5489 = load i16, i16* %5488, align 2
  %5490 = load %union.rec*, %union.rec** %y, align 8
  %5491 = bitcast %union.rec* %5490 to %struct.closure_type*
  %5492 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5491, i32 0, i32 4
  %5493 = bitcast %union.FOURTH_UNION* %5492 to %struct.STYLE*
  %5494 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5493, i32 0, i32 1
  %5495 = bitcast %union.anon.10* %5494 to %struct.GAP*
  %5496 = getelementptr inbounds %struct.GAP, %struct.GAP* %5495, i32 0, i32 1
  store i16 %5489, i16* %5496, align 2
  %5497 = load %union.rec*, %union.rec** %2, align 8
  %5498 = bitcast %union.rec* %5497 to %struct.closure_type*
  %5499 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5498, i32 0, i32 4
  %5500 = bitcast %union.FOURTH_UNION* %5499 to %struct.STYLE*
  %5501 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5500, i32 0, i32 4
  %5502 = load i32, i32* %5501, align 4
  %5503 = and i32 %5502, 4095
  %5504 = load %union.rec*, %union.rec** %y, align 8
  %5505 = bitcast %union.rec* %5504 to %struct.closure_type*
  %5506 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5505, i32 0, i32 4
  %5507 = bitcast %union.FOURTH_UNION* %5506 to %struct.STYLE*
  %5508 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5507, i32 0, i32 4
  %5509 = load i32, i32* %5508, align 4
  %5510 = and i32 %5503, 4095
  %5511 = and i32 %5509, -4096
  %5512 = or i32 %5511, %5510
  store i32 %5512, i32* %5508, align 4
  %5513 = load %union.rec*, %union.rec** %2, align 8
  %5514 = bitcast %union.rec* %5513 to %struct.closure_type*
  %5515 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5514, i32 0, i32 4
  %5516 = bitcast %union.FOURTH_UNION* %5515 to %struct.STYLE*
  %5517 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5516, i32 0, i32 4
  %5518 = load i32, i32* %5517, align 4
  %5519 = lshr i32 %5518, 12
  %5520 = and i32 %5519, 1023
  %5521 = load %union.rec*, %union.rec** %y, align 8
  %5522 = bitcast %union.rec* %5521 to %struct.closure_type*
  %5523 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5522, i32 0, i32 4
  %5524 = bitcast %union.FOURTH_UNION* %5523 to %struct.STYLE*
  %5525 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5524, i32 0, i32 4
  %5526 = load i32, i32* %5525, align 4
  %5527 = and i32 %5520, 1023
  %5528 = shl i32 %5527, 12
  %5529 = and i32 %5526, -4190209
  %5530 = or i32 %5529, %5528
  store i32 %5530, i32* %5525, align 4
  %5531 = load %union.rec*, %union.rec** %2, align 8
  %5532 = bitcast %union.rec* %5531 to %struct.closure_type*
  %5533 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5532, i32 0, i32 4
  %5534 = bitcast %union.FOURTH_UNION* %5533 to %struct.STYLE*
  %5535 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5534, i32 0, i32 4
  %5536 = load i32, i32* %5535, align 4
  %5537 = lshr i32 %5536, 22
  %5538 = and i32 %5537, 3
  %5539 = load %union.rec*, %union.rec** %y, align 8
  %5540 = bitcast %union.rec* %5539 to %struct.closure_type*
  %5541 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5540, i32 0, i32 4
  %5542 = bitcast %union.FOURTH_UNION* %5541 to %struct.STYLE*
  %5543 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5542, i32 0, i32 4
  %5544 = load i32, i32* %5543, align 4
  %5545 = and i32 %5538, 3
  %5546 = shl i32 %5545, 22
  %5547 = and i32 %5544, -12582913
  %5548 = or i32 %5547, %5546
  store i32 %5548, i32* %5543, align 4
  %5549 = load %union.rec*, %union.rec** %2, align 8
  %5550 = bitcast %union.rec* %5549 to %struct.closure_type*
  %5551 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5550, i32 0, i32 4
  %5552 = bitcast %union.FOURTH_UNION* %5551 to %struct.STYLE*
  %5553 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5552, i32 0, i32 4
  %5554 = load i32, i32* %5553, align 4
  %5555 = lshr i32 %5554, 24
  %5556 = and i32 %5555, 63
  %5557 = load %union.rec*, %union.rec** %y, align 8
  %5558 = bitcast %union.rec* %5557 to %struct.closure_type*
  %5559 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5558, i32 0, i32 4
  %5560 = bitcast %union.FOURTH_UNION* %5559 to %struct.STYLE*
  %5561 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5560, i32 0, i32 4
  %5562 = load i32, i32* %5561, align 4
  %5563 = and i32 %5556, 63
  %5564 = shl i32 %5563, 24
  %5565 = and i32 %5562, -1056964609
  %5566 = or i32 %5565, %5564
  store i32 %5566, i32* %5561, align 4
  %5567 = load %union.rec*, %union.rec** %2, align 8
  %5568 = bitcast %union.rec* %5567 to %struct.closure_type*
  %5569 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5568, i32 0, i32 4
  %5570 = bitcast %union.FOURTH_UNION* %5569 to %struct.STYLE*
  %5571 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5570, i32 0, i32 4
  %5572 = load i32, i32* %5571, align 4
  %5573 = lshr i32 %5572, 31
  %5574 = load %union.rec*, %union.rec** %y, align 8
  %5575 = bitcast %union.rec* %5574 to %struct.closure_type*
  %5576 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5575, i32 0, i32 4
  %5577 = bitcast %union.FOURTH_UNION* %5576 to %struct.STYLE*
  %5578 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5577, i32 0, i32 4
  %5579 = load i32, i32* %5578, align 4
  %5580 = and i32 %5573, 1
  %5581 = shl i32 %5580, 31
  %5582 = and i32 %5579, 2147483647
  %5583 = or i32 %5582, %5581
  store i32 %5583, i32* %5578, align 4
  %5584 = load %union.rec*, %union.rec** %2, align 8
  %5585 = bitcast %union.rec* %5584 to %struct.closure_type*
  %5586 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5585, i32 0, i32 4
  %5587 = bitcast %union.FOURTH_UNION* %5586 to %struct.STYLE*
  %5588 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5587, i32 0, i32 4
  %5589 = load i32, i32* %5588, align 4
  %5590 = lshr i32 %5589, 30
  %5591 = and i32 %5590, 1
  %5592 = load %union.rec*, %union.rec** %y, align 8
  %5593 = bitcast %union.rec* %5592 to %struct.closure_type*
  %5594 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5593, i32 0, i32 4
  %5595 = bitcast %union.FOURTH_UNION* %5594 to %struct.STYLE*
  %5596 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5595, i32 0, i32 4
  %5597 = load i32, i32* %5596, align 4
  %5598 = and i32 %5591, 1
  %5599 = shl i32 %5598, 30
  %5600 = and i32 %5597, -1073741825
  %5601 = or i32 %5600, %5599
  store i32 %5601, i32* %5596, align 4
  %5602 = load %union.rec*, %union.rec** %2, align 8
  %5603 = bitcast %union.rec* %5602 to %struct.closure_type*
  %5604 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5603, i32 0, i32 4
  %5605 = bitcast %union.FOURTH_UNION* %5604 to %struct.STYLE*
  %5606 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5605, i32 0, i32 0
  %5607 = bitcast %union.anon* %5606 to %struct.anon.9*
  %5608 = bitcast %struct.anon.9* %5607 to i8*
  %5609 = load i8, i8* %5608, align 4
  %5610 = and i8 %5609, 1
  %5611 = zext i8 %5610 to i32
  %5612 = load %union.rec*, %union.rec** %y, align 8
  %5613 = bitcast %union.rec* %5612 to %struct.closure_type*
  %5614 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5613, i32 0, i32 4
  %5615 = bitcast %union.FOURTH_UNION* %5614 to %struct.STYLE*
  %5616 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5615, i32 0, i32 0
  %5617 = bitcast %union.anon* %5616 to %struct.anon.9*
  %5618 = bitcast %struct.anon.9* %5617 to i8*
  %5619 = trunc i32 %5611 to i8
  %5620 = load i8, i8* %5618, align 4
  %5621 = and i8 %5619, 1
  %5622 = and i8 %5620, -2
  %5623 = or i8 %5622, %5621
  store i8 %5623, i8* %5618, align 4
  %5624 = zext i8 %5621 to i32
  %5625 = load %union.rec*, %union.rec** %2, align 8
  %5626 = bitcast %union.rec* %5625 to %struct.closure_type*
  %5627 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5626, i32 0, i32 4
  %5628 = bitcast %union.FOURTH_UNION* %5627 to %struct.STYLE*
  %5629 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5628, i32 0, i32 0
  %5630 = bitcast %union.anon* %5629 to %struct.anon.9*
  %5631 = bitcast %struct.anon.9* %5630 to i8*
  %5632 = load i8, i8* %5631, align 4
  %5633 = lshr i8 %5632, 1
  %5634 = and i8 %5633, 1
  %5635 = zext i8 %5634 to i32
  %5636 = load %union.rec*, %union.rec** %y, align 8
  %5637 = bitcast %union.rec* %5636 to %struct.closure_type*
  %5638 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5637, i32 0, i32 4
  %5639 = bitcast %union.FOURTH_UNION* %5638 to %struct.STYLE*
  %5640 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5639, i32 0, i32 0
  %5641 = bitcast %union.anon* %5640 to %struct.anon.9*
  %5642 = bitcast %struct.anon.9* %5641 to i8*
  %5643 = trunc i32 %5635 to i8
  %5644 = load i8, i8* %5642, align 4
  %5645 = and i8 %5643, 1
  %5646 = shl i8 %5645, 1
  %5647 = and i8 %5644, -3
  %5648 = or i8 %5647, %5646
  store i8 %5648, i8* %5642, align 4
  %5649 = zext i8 %5645 to i32
  %5650 = load %union.rec*, %union.rec** %2, align 8
  %5651 = bitcast %union.rec* %5650 to %struct.closure_type*
  %5652 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5651, i32 0, i32 4
  %5653 = bitcast %union.FOURTH_UNION* %5652 to %struct.STYLE*
  %5654 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5653, i32 0, i32 0
  %5655 = bitcast %union.anon* %5654 to %struct.anon.9*
  %5656 = bitcast %struct.anon.9* %5655 to i8*
  %5657 = load i8, i8* %5656, align 4
  %5658 = lshr i8 %5657, 2
  %5659 = and i8 %5658, 1
  %5660 = zext i8 %5659 to i32
  %5661 = load %union.rec*, %union.rec** %y, align 8
  %5662 = bitcast %union.rec* %5661 to %struct.closure_type*
  %5663 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5662, i32 0, i32 4
  %5664 = bitcast %union.FOURTH_UNION* %5663 to %struct.STYLE*
  %5665 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5664, i32 0, i32 0
  %5666 = bitcast %union.anon* %5665 to %struct.anon.9*
  %5667 = bitcast %struct.anon.9* %5666 to i8*
  %5668 = trunc i32 %5660 to i8
  %5669 = load i8, i8* %5667, align 4
  %5670 = and i8 %5668, 1
  %5671 = shl i8 %5670, 2
  %5672 = and i8 %5669, -5
  %5673 = or i8 %5672, %5671
  store i8 %5673, i8* %5667, align 4
  %5674 = zext i8 %5670 to i32
  %5675 = load %union.rec*, %union.rec** %2, align 8
  %5676 = bitcast %union.rec* %5675 to %struct.closure_type*
  %5677 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5676, i32 0, i32 4
  %5678 = bitcast %union.FOURTH_UNION* %5677 to %struct.STYLE*
  %5679 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5678, i32 0, i32 0
  %5680 = bitcast %union.anon* %5679 to %struct.anon.9*
  %5681 = bitcast %struct.anon.9* %5680 to i8*
  %5682 = load i8, i8* %5681, align 4
  %5683 = lshr i8 %5682, 4
  %5684 = and i8 %5683, 7
  %5685 = zext i8 %5684 to i32
  %5686 = load %union.rec*, %union.rec** %y, align 8
  %5687 = bitcast %union.rec* %5686 to %struct.closure_type*
  %5688 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5687, i32 0, i32 4
  %5689 = bitcast %union.FOURTH_UNION* %5688 to %struct.STYLE*
  %5690 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5689, i32 0, i32 0
  %5691 = bitcast %union.anon* %5690 to %struct.anon.9*
  %5692 = bitcast %struct.anon.9* %5691 to i8*
  %5693 = trunc i32 %5685 to i8
  %5694 = load i8, i8* %5692, align 4
  %5695 = and i8 %5693, 7
  %5696 = shl i8 %5695, 4
  %5697 = and i8 %5694, -113
  %5698 = or i8 %5697, %5696
  store i8 %5698, i8* %5692, align 4
  %5699 = zext i8 %5695 to i32
  %5700 = load %union.rec*, %union.rec** %2, align 8
  %5701 = bitcast %union.rec* %5700 to %struct.closure_type*
  %5702 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5701, i32 0, i32 4
  %5703 = bitcast %union.FOURTH_UNION* %5702 to %struct.STYLE*
  %5704 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5703, i32 0, i32 2
  %5705 = load i16, i16* %5704, align 2
  %5706 = load %union.rec*, %union.rec** %y, align 8
  %5707 = bitcast %union.rec* %5706 to %struct.closure_type*
  %5708 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5707, i32 0, i32 4
  %5709 = bitcast %union.FOURTH_UNION* %5708 to %struct.STYLE*
  %5710 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5709, i32 0, i32 2
  store i16 %5705, i16* %5710, align 2
  %5711 = load %union.rec*, %union.rec** %2, align 8
  %5712 = bitcast %union.rec* %5711 to %struct.closure_type*
  %5713 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5712, i32 0, i32 4
  %5714 = bitcast %union.FOURTH_UNION* %5713 to %struct.STYLE*
  %5715 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5714, i32 0, i32 3
  %5716 = load i16, i16* %5715, align 2
  %5717 = load %union.rec*, %union.rec** %y, align 8
  %5718 = bitcast %union.rec* %5717 to %struct.closure_type*
  %5719 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5718, i32 0, i32 4
  %5720 = bitcast %union.FOURTH_UNION* %5719 to %struct.STYLE*
  %5721 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5720, i32 0, i32 3
  store i16 %5716, i16* %5721, align 2
  %5722 = load %union.rec*, %union.rec** %res, align 8
  %5723 = bitcast %union.rec* %5722 to %struct.word_type*
  %5724 = getelementptr inbounds %struct.word_type, %struct.word_type* %5723, i32 0, i32 0
  %5725 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5724, i32 0, i64 0
  %5726 = getelementptr inbounds %struct.LIST, %struct.LIST* %5725, i32 0, i32 1
  %5727 = load %union.rec*, %union.rec** %5726, align 8
  %5728 = load %union.rec*, %union.rec** %res, align 8
  %5729 = icmp ne %union.rec* %5727, %5728
  br i1 %5729, label %5730, label %5767

; <label>:5730                                    ; preds = %5029
  %5731 = load %union.rec*, %union.rec** %y, align 8
  %5732 = bitcast %union.rec* %5731 to %struct.closure_type*
  %5733 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5732, i32 0, i32 4
  %5734 = bitcast %union.FOURTH_UNION* %5733 to %struct.STYLE*
  %5735 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5734, i32 0, i32 1
  %5736 = bitcast %union.anon.10* %5735 to %struct.anon.11*
  %5737 = bitcast %struct.anon.11* %5736 to i8*
  %5738 = load i8, i8* %5737, align 4
  %5739 = lshr i8 %5738, 4
  %5740 = and i8 %5739, 7
  %5741 = zext i8 %5740 to i32
  %5742 = icmp eq i32 %5741, 1
  br i1 %5742, label %5756, label %5743

; <label>:5743                                    ; preds = %5730
  %5744 = load %union.rec*, %union.rec** %y, align 8
  %5745 = bitcast %union.rec* %5744 to %struct.closure_type*
  %5746 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5745, i32 0, i32 4
  %5747 = bitcast %union.FOURTH_UNION* %5746 to %struct.STYLE*
  %5748 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5747, i32 0, i32 1
  %5749 = bitcast %union.anon.10* %5748 to %struct.anon.11*
  %5750 = bitcast %struct.anon.11* %5749 to i8*
  %5751 = load i8, i8* %5750, align 4
  %5752 = lshr i8 %5751, 4
  %5753 = and i8 %5752, 7
  %5754 = zext i8 %5753 to i32
  %5755 = icmp eq i32 %5754, 2
  br i1 %5755, label %5756, label %5767

; <label>:5756                                    ; preds = %5743, %5730
  %5757 = load %union.rec*, %union.rec** %y, align 8
  %5758 = bitcast %union.rec* %5757 to %struct.closure_type*
  %5759 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5758, i32 0, i32 4
  %5760 = bitcast %union.FOURTH_UNION* %5759 to %struct.STYLE*
  %5761 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5760, i32 0, i32 1
  %5762 = bitcast %union.anon.10* %5761 to %struct.anon.11*
  %5763 = bitcast %struct.anon.11* %5762 to i8*
  %5764 = load i8, i8* %5763, align 4
  %5765 = and i8 %5764, -113
  %5766 = or i8 %5765, 112
  store i8 %5766, i8* %5763, align 4
  br label %5767

; <label>:5767                                    ; preds = %5756, %5743, %5029
  %5768 = load %union.rec*, %union.rec** %y, align 8
  %5769 = bitcast %union.rec* %5768 to %struct.word_type*
  %5770 = getelementptr inbounds %struct.word_type, %struct.word_type* %5769, i32 0, i32 3
  %5771 = bitcast %union.THIRD_UNION* %5770 to %struct.anon.6*
  %5772 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5771, i32 0, i32 0
  %5773 = getelementptr inbounds [2 x i32], [2 x i32]* %5772, i32 0, i64 0
  store i32 0, i32* %5773, align 4
  %5774 = load i32, i32* %max_width, align 4
  %5775 = load %union.rec*, %union.rec** %y, align 8
  %5776 = bitcast %union.rec* %5775 to %struct.word_type*
  %5777 = getelementptr inbounds %struct.word_type, %struct.word_type* %5776, i32 0, i32 3
  %5778 = bitcast %union.THIRD_UNION* %5777 to %struct.anon.6*
  %5779 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5778, i32 0, i32 1
  %5780 = getelementptr inbounds [2 x i32], [2 x i32]* %5779, i32 0, i64 0
  store i32 %5774, i32* %5780, align 4
  %5781 = load %union.rec*, %union.rec** %2, align 8
  %5782 = bitcast %union.rec* %5781 to %struct.closure_type*
  %5783 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5782, i32 0, i32 4
  %5784 = bitcast %union.FOURTH_UNION* %5783 to %struct.STYLE*
  %5785 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5784, i32 0, i32 1
  %5786 = bitcast %union.anon.10* %5785 to %struct.anon.11*
  %5787 = bitcast %struct.anon.11* %5786 to i8*
  %5788 = load i8, i8* %5787, align 4
  %5789 = lshr i8 %5788, 4
  %5790 = and i8 %5789, 7
  %5791 = zext i8 %5790 to i32
  %5792 = icmp eq i32 %5791, 2
  br i1 %5792, label %5806, label %5793

; <label>:5793                                    ; preds = %5767
  %5794 = load %union.rec*, %union.rec** %2, align 8
  %5795 = bitcast %union.rec* %5794 to %struct.closure_type*
  %5796 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5795, i32 0, i32 4
  %5797 = bitcast %union.FOURTH_UNION* %5796 to %struct.STYLE*
  %5798 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5797, i32 0, i32 1
  %5799 = bitcast %union.anon.10* %5798 to %struct.anon.11*
  %5800 = bitcast %struct.anon.11* %5799 to i8*
  %5801 = load i8, i8* %5800, align 4
  %5802 = lshr i8 %5801, 4
  %5803 = and i8 %5802, 7
  %5804 = zext i8 %5803 to i32
  %5805 = icmp eq i32 %5804, 3
  br i1 %5805, label %5806, label %6595

; <label>:5806                                    ; preds = %5793, %5767
  %5807 = load %union.rec*, %union.rec** %2, align 8
  %5808 = bitcast %union.rec* %5807 to %struct.word_type*
  %5809 = getelementptr inbounds %struct.word_type, %struct.word_type* %5808, i32 0, i32 1
  %5810 = bitcast %union.FIRST_UNION* %5809 to %struct.FILE_POS*
  %5811 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %struct.FILE_POS* %5810)
  store %union.rec* %5811, %union.rec** %t1, align 8
  %5812 = load %union.rec*, %union.rec** %t1, align 8
  %5813 = bitcast %union.rec* %5812 to %struct.word_type*
  %5814 = getelementptr inbounds %struct.word_type, %struct.word_type* %5813, i32 0, i32 3
  %5815 = bitcast %union.THIRD_UNION* %5814 to %struct.anon.6*
  %5816 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5815, i32 0, i32 1
  %5817 = getelementptr inbounds [2 x i32], [2 x i32]* %5816, i32 0, i64 1
  store i32 0, i32* %5817, align 4
  %5818 = load %union.rec*, %union.rec** %t1, align 8
  %5819 = bitcast %union.rec* %5818 to %struct.word_type*
  %5820 = getelementptr inbounds %struct.word_type, %struct.word_type* %5819, i32 0, i32 3
  %5821 = bitcast %union.THIRD_UNION* %5820 to %struct.anon.6*
  %5822 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5821, i32 0, i32 0
  %5823 = getelementptr inbounds [2 x i32], [2 x i32]* %5822, i32 0, i64 1
  store i32 0, i32* %5823, align 4
  %5824 = load %union.rec*, %union.rec** %t1, align 8
  %5825 = bitcast %union.rec* %5824 to %struct.word_type*
  %5826 = getelementptr inbounds %struct.word_type, %struct.word_type* %5825, i32 0, i32 3
  %5827 = bitcast %union.THIRD_UNION* %5826 to %struct.anon.6*
  %5828 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5827, i32 0, i32 1
  %5829 = getelementptr inbounds [2 x i32], [2 x i32]* %5828, i32 0, i64 0
  store i32 0, i32* %5829, align 4
  %5830 = load %union.rec*, %union.rec** %t1, align 8
  %5831 = bitcast %union.rec* %5830 to %struct.word_type*
  %5832 = getelementptr inbounds %struct.word_type, %struct.word_type* %5831, i32 0, i32 3
  %5833 = bitcast %union.THIRD_UNION* %5832 to %struct.anon.6*
  %5834 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5833, i32 0, i32 0
  %5835 = getelementptr inbounds [2 x i32], [2 x i32]* %5834, i32 0, i64 0
  store i32 0, i32* %5835, align 4
  %5836 = load %union.rec*, %union.rec** %t1, align 8
  %5837 = bitcast %union.rec* %5836 to %struct.word_type*
  %5838 = getelementptr inbounds %struct.word_type, %struct.word_type* %5837, i32 0, i32 2
  %5839 = bitcast %union.SECOND_UNION* %5838 to %struct.anon.1*
  %5840 = bitcast %struct.anon.1* %5839 to i32*
  %5841 = load i32, i32* %5840, align 4
  %5842 = and i32 %5841, -4096
  store i32 %5842, i32* %5840, align 4
  %5843 = load %union.rec*, %union.rec** %t1, align 8
  %5844 = bitcast %union.rec* %5843 to %struct.word_type*
  %5845 = getelementptr inbounds %struct.word_type, %struct.word_type* %5844, i32 0, i32 2
  %5846 = bitcast %union.SECOND_UNION* %5845 to %struct.anon.1*
  %5847 = bitcast %struct.anon.1* %5846 to i32*
  %5848 = load i32, i32* %5847, align 4
  %5849 = and i32 %5848, -4190209
  store i32 %5849, i32* %5847, align 4
  %5850 = load %union.rec*, %union.rec** %t1, align 8
  %5851 = bitcast %union.rec* %5850 to %struct.word_type*
  %5852 = getelementptr inbounds %struct.word_type, %struct.word_type* %5851, i32 0, i32 2
  %5853 = bitcast %union.SECOND_UNION* %5852 to %struct.anon.1*
  %5854 = bitcast %struct.anon.1* %5853 to i32*
  %5855 = load i32, i32* %5854, align 4
  %5856 = and i32 %5855, -4194305
  store i32 %5856, i32* %5854, align 4
  %5857 = load %union.rec*, %union.rec** %t1, align 8
  %5858 = bitcast %union.rec* %5857 to %struct.word_type*
  %5859 = getelementptr inbounds %struct.word_type, %struct.word_type* %5858, i32 0, i32 2
  %5860 = bitcast %union.SECOND_UNION* %5859 to %struct.anon.1*
  %5861 = bitcast %struct.anon.1* %5860 to i32*
  %5862 = load i32, i32* %5861, align 4
  %5863 = and i32 %5862, -528482305
  store i32 %5863, i32* %5861, align 4
  %5864 = load %union.rec*, %union.rec** %t1, align 8
  %5865 = bitcast %union.rec* %5864 to %struct.word_type*
  %5866 = getelementptr inbounds %struct.word_type, %struct.word_type* %5865, i32 0, i32 2
  %5867 = bitcast %union.SECOND_UNION* %5866 to %struct.anon.1*
  %5868 = bitcast %struct.anon.1* %5867 to i32*
  %5869 = load i32, i32* %5868, align 4
  %5870 = and i32 %5869, 2147483647
  store i32 %5870, i32* %5868, align 4
  %5871 = load %union.rec*, %union.rec** %t1, align 8
  %5872 = bitcast %union.rec* %5871 to %struct.word_type*
  %5873 = getelementptr inbounds %struct.word_type, %struct.word_type* %5872, i32 0, i32 2
  %5874 = bitcast %union.SECOND_UNION* %5873 to %struct.anon.1*
  %5875 = bitcast %struct.anon.1* %5874 to i32*
  %5876 = load i32, i32* %5875, align 4
  %5877 = and i32 %5876, -1610612737
  %5878 = or i32 %5877, 536870912
  store i32 %5878, i32* %5875, align 4
  %5879 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 26), align 1
  %5880 = zext i8 %5879 to i32
  store i32 %5880, i32* @zz_size, align 4
  %5881 = sext i32 %5880 to i64
  %5882 = icmp uge i64 %5881, 265
  br i1 %5882, label %5883, label %5886

; <label>:5883                                    ; preds = %5806
  %5884 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5885 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %5884)
  br label %5911

; <label>:5886                                    ; preds = %5806
  %5887 = load i32, i32* @zz_size, align 4
  %5888 = sext i32 %5887 to i64
  %5889 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %5888
  %5890 = load %union.rec*, %union.rec** %5889, align 8
  %5891 = icmp eq %union.rec* %5890, null
  br i1 %5891, label %5892, label %5896

; <label>:5892                                    ; preds = %5886
  %5893 = load i32, i32* @zz_size, align 4
  %5894 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5895 = call %union.rec* @GetMemory(i32 %5893, %struct.FILE_POS* %5894)
  store %union.rec* %5895, %union.rec** @zz_hold, align 8
  br label %5910

; <label>:5896                                    ; preds = %5886
  %5897 = load i32, i32* @zz_size, align 4
  %5898 = sext i32 %5897 to i64
  %5899 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %5898
  %5900 = load %union.rec*, %union.rec** %5899, align 8
  store %union.rec* %5900, %union.rec** @zz_hold, align 8
  store %union.rec* %5900, %union.rec** @zz_hold, align 8
  %5901 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5902 = bitcast %union.rec* %5901 to %struct.word_type*
  %5903 = getelementptr inbounds %struct.word_type, %struct.word_type* %5902, i32 0, i32 0
  %5904 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5903, i32 0, i64 0
  %5905 = getelementptr inbounds %struct.LIST, %struct.LIST* %5904, i32 0, i32 0
  %5906 = load %union.rec*, %union.rec** %5905, align 8
  %5907 = load i32, i32* @zz_size, align 4
  %5908 = sext i32 %5907 to i64
  %5909 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %5908
  store %union.rec* %5906, %union.rec** %5909, align 8
  br label %5910

; <label>:5910                                    ; preds = %5896, %5892
  br label %5911

; <label>:5911                                    ; preds = %5910, %5883
  %5912 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5913 = bitcast %union.rec* %5912 to %struct.word_type*
  %5914 = getelementptr inbounds %struct.word_type, %struct.word_type* %5913, i32 0, i32 1
  %5915 = bitcast %union.FIRST_UNION* %5914 to %struct.anon*
  %5916 = getelementptr inbounds %struct.anon, %struct.anon* %5915, i32 0, i32 0
  store i8 26, i8* %5916, align 1
  %5917 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5918 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5919 = bitcast %union.rec* %5918 to %struct.word_type*
  %5920 = getelementptr inbounds %struct.word_type, %struct.word_type* %5919, i32 0, i32 0
  %5921 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5920, i32 0, i64 1
  %5922 = getelementptr inbounds %struct.LIST, %struct.LIST* %5921, i32 0, i32 1
  store %union.rec* %5917, %union.rec** %5922, align 8
  %5923 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5924 = bitcast %union.rec* %5923 to %struct.word_type*
  %5925 = getelementptr inbounds %struct.word_type, %struct.word_type* %5924, i32 0, i32 0
  %5926 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5925, i32 0, i64 1
  %5927 = getelementptr inbounds %struct.LIST, %struct.LIST* %5926, i32 0, i32 0
  store %union.rec* %5917, %union.rec** %5927, align 8
  %5928 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5929 = bitcast %union.rec* %5928 to %struct.word_type*
  %5930 = getelementptr inbounds %struct.word_type, %struct.word_type* %5929, i32 0, i32 0
  %5931 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5930, i32 0, i64 0
  %5932 = getelementptr inbounds %struct.LIST, %struct.LIST* %5931, i32 0, i32 1
  store %union.rec* %5917, %union.rec** %5932, align 8
  %5933 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5934 = bitcast %union.rec* %5933 to %struct.word_type*
  %5935 = getelementptr inbounds %struct.word_type, %struct.word_type* %5934, i32 0, i32 0
  %5936 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5935, i32 0, i64 0
  %5937 = getelementptr inbounds %struct.LIST, %struct.LIST* %5936, i32 0, i32 0
  store %union.rec* %5917, %union.rec** %5937, align 8
  store %union.rec* %5917, %union.rec** %t2, align 8
  %5938 = load %union.rec*, %union.rec** %t2, align 8
  %5939 = bitcast %union.rec* %5938 to %struct.closure_type*
  %5940 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5939, i32 0, i32 4
  %5941 = bitcast %union.FOURTH_UNION* %5940 to %struct.CONSTRAINT*
  %5942 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %5941, i32 0, i32 0
  store i32 8388607, i32* %5942, align 4
  %5943 = load i32, i32* %outdent_margin, align 4
  %5944 = load %union.rec*, %union.rec** %t2, align 8
  %5945 = bitcast %union.rec* %5944 to %struct.closure_type*
  %5946 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5945, i32 0, i32 4
  %5947 = bitcast %union.FOURTH_UNION* %5946 to %struct.CONSTRAINT*
  %5948 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %5947, i32 0, i32 1
  store i32 %5943, i32* %5948, align 4
  %5949 = load %union.rec*, %union.rec** %t2, align 8
  %5950 = bitcast %union.rec* %5949 to %struct.closure_type*
  %5951 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5950, i32 0, i32 4
  %5952 = bitcast %union.FOURTH_UNION* %5951 to %struct.CONSTRAINT*
  %5953 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %5952, i32 0, i32 2
  store i32 8388607, i32* %5953, align 4
  %5954 = load %union.rec*, %union.rec** %t2, align 8
  %5955 = bitcast %union.rec* %5954 to %struct.word_type*
  %5956 = getelementptr inbounds %struct.word_type, %struct.word_type* %5955, i32 0, i32 3
  %5957 = bitcast %union.THIRD_UNION* %5956 to %struct.anon.6*
  %5958 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5957, i32 0, i32 0
  %5959 = getelementptr inbounds [2 x i32], [2 x i32]* %5958, i32 0, i64 0
  store i32 0, i32* %5959, align 4
  %5960 = load i32, i32* %outdent_margin, align 4
  %5961 = load %union.rec*, %union.rec** %t2, align 8
  %5962 = bitcast %union.rec* %5961 to %struct.word_type*
  %5963 = getelementptr inbounds %struct.word_type, %struct.word_type* %5962, i32 0, i32 3
  %5964 = bitcast %union.THIRD_UNION* %5963 to %struct.anon.6*
  %5965 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %5964, i32 0, i32 1
  %5966 = getelementptr inbounds [2 x i32], [2 x i32]* %5965, i32 0, i64 0
  store i32 %5960, i32* %5966, align 4
  %5967 = load %union.rec*, %union.rec** %t2, align 8
  %5968 = bitcast %union.rec* %5967 to %struct.word_type*
  %5969 = getelementptr inbounds %struct.word_type, %struct.word_type* %5968, i32 0, i32 2
  %5970 = bitcast %union.SECOND_UNION* %5969 to %struct.anon.1*
  %5971 = bitcast %struct.anon.1* %5970 to i32*
  %5972 = load i32, i32* %5971, align 4
  %5973 = and i32 %5972, -1610612737
  %5974 = or i32 %5973, 536870912
  store i32 %5974, i32* %5971, align 4
  %5975 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %5976 = zext i8 %5975 to i32
  store i32 %5976, i32* @zz_size, align 4
  %5977 = sext i32 %5976 to i64
  %5978 = icmp uge i64 %5977, 265
  br i1 %5978, label %5979, label %5982

; <label>:5979                                    ; preds = %5911
  %5980 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5981 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %5980)
  br label %6007

; <label>:5982                                    ; preds = %5911
  %5983 = load i32, i32* @zz_size, align 4
  %5984 = sext i32 %5983 to i64
  %5985 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %5984
  %5986 = load %union.rec*, %union.rec** %5985, align 8
  %5987 = icmp eq %union.rec* %5986, null
  br i1 %5987, label %5988, label %5992

; <label>:5988                                    ; preds = %5982
  %5989 = load i32, i32* @zz_size, align 4
  %5990 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5991 = call %union.rec* @GetMemory(i32 %5989, %struct.FILE_POS* %5990)
  store %union.rec* %5991, %union.rec** @zz_hold, align 8
  br label %6006

; <label>:5992                                    ; preds = %5982
  %5993 = load i32, i32* @zz_size, align 4
  %5994 = sext i32 %5993 to i64
  %5995 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %5994
  %5996 = load %union.rec*, %union.rec** %5995, align 8
  store %union.rec* %5996, %union.rec** @zz_hold, align 8
  store %union.rec* %5996, %union.rec** @zz_hold, align 8
  %5997 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5998 = bitcast %union.rec* %5997 to %struct.word_type*
  %5999 = getelementptr inbounds %struct.word_type, %struct.word_type* %5998, i32 0, i32 0
  %6000 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5999, i32 0, i64 0
  %6001 = getelementptr inbounds %struct.LIST, %struct.LIST* %6000, i32 0, i32 0
  %6002 = load %union.rec*, %union.rec** %6001, align 8
  %6003 = load i32, i32* @zz_size, align 4
  %6004 = sext i32 %6003 to i64
  %6005 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6004
  store %union.rec* %6002, %union.rec** %6005, align 8
  br label %6006

; <label>:6006                                    ; preds = %5992, %5988
  br label %6007

; <label>:6007                                    ; preds = %6006, %5979
  %6008 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6009 = bitcast %union.rec* %6008 to %struct.word_type*
  %6010 = getelementptr inbounds %struct.word_type, %struct.word_type* %6009, i32 0, i32 1
  %6011 = bitcast %union.FIRST_UNION* %6010 to %struct.anon*
  %6012 = getelementptr inbounds %struct.anon, %struct.anon* %6011, i32 0, i32 0
  store i8 0, i8* %6012, align 1
  %6013 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6014 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6015 = bitcast %union.rec* %6014 to %struct.word_type*
  %6016 = getelementptr inbounds %struct.word_type, %struct.word_type* %6015, i32 0, i32 0
  %6017 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6016, i32 0, i64 1
  %6018 = getelementptr inbounds %struct.LIST, %struct.LIST* %6017, i32 0, i32 1
  store %union.rec* %6013, %union.rec** %6018, align 8
  %6019 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6020 = bitcast %union.rec* %6019 to %struct.word_type*
  %6021 = getelementptr inbounds %struct.word_type, %struct.word_type* %6020, i32 0, i32 0
  %6022 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6021, i32 0, i64 1
  %6023 = getelementptr inbounds %struct.LIST, %struct.LIST* %6022, i32 0, i32 0
  store %union.rec* %6013, %union.rec** %6023, align 8
  %6024 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6025 = bitcast %union.rec* %6024 to %struct.word_type*
  %6026 = getelementptr inbounds %struct.word_type, %struct.word_type* %6025, i32 0, i32 0
  %6027 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6026, i32 0, i64 0
  %6028 = getelementptr inbounds %struct.LIST, %struct.LIST* %6027, i32 0, i32 1
  store %union.rec* %6013, %union.rec** %6028, align 8
  %6029 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6030 = bitcast %union.rec* %6029 to %struct.word_type*
  %6031 = getelementptr inbounds %struct.word_type, %struct.word_type* %6030, i32 0, i32 0
  %6032 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6031, i32 0, i64 0
  %6033 = getelementptr inbounds %struct.LIST, %struct.LIST* %6032, i32 0, i32 0
  store %union.rec* %6013, %union.rec** %6033, align 8
  store %union.rec* %6013, %union.rec** @xx_link, align 8
  %6034 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6034, %union.rec** @zz_res, align 8
  %6035 = load %union.rec*, %union.rec** %t2, align 8
  store %union.rec* %6035, %union.rec** @zz_hold, align 8
  %6036 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6037 = icmp eq %union.rec* %6036, null
  br i1 %6037, label %6038, label %6040

; <label>:6038                                    ; preds = %6007
  %6039 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6088

; <label>:6040                                    ; preds = %6007
  %6041 = load %union.rec*, %union.rec** @zz_res, align 8
  %6042 = icmp eq %union.rec* %6041, null
  br i1 %6042, label %6043, label %6045

; <label>:6043                                    ; preds = %6040
  %6044 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %6086

; <label>:6045                                    ; preds = %6040
  %6046 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6047 = bitcast %union.rec* %6046 to %struct.word_type*
  %6048 = getelementptr inbounds %struct.word_type, %struct.word_type* %6047, i32 0, i32 0
  %6049 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6048, i32 0, i64 0
  %6050 = getelementptr inbounds %struct.LIST, %struct.LIST* %6049, i32 0, i32 0
  %6051 = load %union.rec*, %union.rec** %6050, align 8
  store %union.rec* %6051, %union.rec** @zz_tmp, align 8
  %6052 = load %union.rec*, %union.rec** @zz_res, align 8
  %6053 = bitcast %union.rec* %6052 to %struct.word_type*
  %6054 = getelementptr inbounds %struct.word_type, %struct.word_type* %6053, i32 0, i32 0
  %6055 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6054, i32 0, i64 0
  %6056 = getelementptr inbounds %struct.LIST, %struct.LIST* %6055, i32 0, i32 0
  %6057 = load %union.rec*, %union.rec** %6056, align 8
  %6058 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6059 = bitcast %union.rec* %6058 to %struct.word_type*
  %6060 = getelementptr inbounds %struct.word_type, %struct.word_type* %6059, i32 0, i32 0
  %6061 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6060, i32 0, i64 0
  %6062 = getelementptr inbounds %struct.LIST, %struct.LIST* %6061, i32 0, i32 0
  store %union.rec* %6057, %union.rec** %6062, align 8
  %6063 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6064 = load %union.rec*, %union.rec** @zz_res, align 8
  %6065 = bitcast %union.rec* %6064 to %struct.word_type*
  %6066 = getelementptr inbounds %struct.word_type, %struct.word_type* %6065, i32 0, i32 0
  %6067 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6066, i32 0, i64 0
  %6068 = getelementptr inbounds %struct.LIST, %struct.LIST* %6067, i32 0, i32 0
  %6069 = load %union.rec*, %union.rec** %6068, align 8
  %6070 = bitcast %union.rec* %6069 to %struct.word_type*
  %6071 = getelementptr inbounds %struct.word_type, %struct.word_type* %6070, i32 0, i32 0
  %6072 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6071, i32 0, i64 0
  %6073 = getelementptr inbounds %struct.LIST, %struct.LIST* %6072, i32 0, i32 1
  store %union.rec* %6063, %union.rec** %6073, align 8
  %6074 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6075 = load %union.rec*, %union.rec** @zz_res, align 8
  %6076 = bitcast %union.rec* %6075 to %struct.word_type*
  %6077 = getelementptr inbounds %struct.word_type, %struct.word_type* %6076, i32 0, i32 0
  %6078 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6077, i32 0, i64 0
  %6079 = getelementptr inbounds %struct.LIST, %struct.LIST* %6078, i32 0, i32 0
  store %union.rec* %6074, %union.rec** %6079, align 8
  %6080 = load %union.rec*, %union.rec** @zz_res, align 8
  %6081 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6082 = bitcast %union.rec* %6081 to %struct.word_type*
  %6083 = getelementptr inbounds %struct.word_type, %struct.word_type* %6082, i32 0, i32 0
  %6084 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6083, i32 0, i64 0
  %6085 = getelementptr inbounds %struct.LIST, %struct.LIST* %6084, i32 0, i32 1
  store %union.rec* %6080, %union.rec** %6085, align 8
  br label %6086

; <label>:6086                                    ; preds = %6045, %6043
  %6087 = phi %union.rec* [ %6044, %6043 ], [ %6080, %6045 ]
  br label %6088

; <label>:6088                                    ; preds = %6086, %6038
  %6089 = phi %union.rec* [ %6039, %6038 ], [ %6087, %6086 ]
  %6090 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6090, %union.rec** @zz_res, align 8
  %6091 = load %union.rec*, %union.rec** %t1, align 8
  store %union.rec* %6091, %union.rec** @zz_hold, align 8
  %6092 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6093 = icmp eq %union.rec* %6092, null
  br i1 %6093, label %6094, label %6096

; <label>:6094                                    ; preds = %6088
  %6095 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6144

; <label>:6096                                    ; preds = %6088
  %6097 = load %union.rec*, %union.rec** @zz_res, align 8
  %6098 = icmp eq %union.rec* %6097, null
  br i1 %6098, label %6099, label %6101

; <label>:6099                                    ; preds = %6096
  %6100 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %6142

; <label>:6101                                    ; preds = %6096
  %6102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6103 = bitcast %union.rec* %6102 to %struct.word_type*
  %6104 = getelementptr inbounds %struct.word_type, %struct.word_type* %6103, i32 0, i32 0
  %6105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6104, i32 0, i64 1
  %6106 = getelementptr inbounds %struct.LIST, %struct.LIST* %6105, i32 0, i32 0
  %6107 = load %union.rec*, %union.rec** %6106, align 8
  store %union.rec* %6107, %union.rec** @zz_tmp, align 8
  %6108 = load %union.rec*, %union.rec** @zz_res, align 8
  %6109 = bitcast %union.rec* %6108 to %struct.word_type*
  %6110 = getelementptr inbounds %struct.word_type, %struct.word_type* %6109, i32 0, i32 0
  %6111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6110, i32 0, i64 1
  %6112 = getelementptr inbounds %struct.LIST, %struct.LIST* %6111, i32 0, i32 0
  %6113 = load %union.rec*, %union.rec** %6112, align 8
  %6114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6115 = bitcast %union.rec* %6114 to %struct.word_type*
  %6116 = getelementptr inbounds %struct.word_type, %struct.word_type* %6115, i32 0, i32 0
  %6117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6116, i32 0, i64 1
  %6118 = getelementptr inbounds %struct.LIST, %struct.LIST* %6117, i32 0, i32 0
  store %union.rec* %6113, %union.rec** %6118, align 8
  %6119 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6120 = load %union.rec*, %union.rec** @zz_res, align 8
  %6121 = bitcast %union.rec* %6120 to %struct.word_type*
  %6122 = getelementptr inbounds %struct.word_type, %struct.word_type* %6121, i32 0, i32 0
  %6123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6122, i32 0, i64 1
  %6124 = getelementptr inbounds %struct.LIST, %struct.LIST* %6123, i32 0, i32 0
  %6125 = load %union.rec*, %union.rec** %6124, align 8
  %6126 = bitcast %union.rec* %6125 to %struct.word_type*
  %6127 = getelementptr inbounds %struct.word_type, %struct.word_type* %6126, i32 0, i32 0
  %6128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6127, i32 0, i64 1
  %6129 = getelementptr inbounds %struct.LIST, %struct.LIST* %6128, i32 0, i32 1
  store %union.rec* %6119, %union.rec** %6129, align 8
  %6130 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6131 = load %union.rec*, %union.rec** @zz_res, align 8
  %6132 = bitcast %union.rec* %6131 to %struct.word_type*
  %6133 = getelementptr inbounds %struct.word_type, %struct.word_type* %6132, i32 0, i32 0
  %6134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6133, i32 0, i64 1
  %6135 = getelementptr inbounds %struct.LIST, %struct.LIST* %6134, i32 0, i32 0
  store %union.rec* %6130, %union.rec** %6135, align 8
  %6136 = load %union.rec*, %union.rec** @zz_res, align 8
  %6137 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6138 = bitcast %union.rec* %6137 to %struct.word_type*
  %6139 = getelementptr inbounds %struct.word_type, %struct.word_type* %6138, i32 0, i32 0
  %6140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6139, i32 0, i64 1
  %6141 = getelementptr inbounds %struct.LIST, %struct.LIST* %6140, i32 0, i32 1
  store %union.rec* %6136, %union.rec** %6141, align 8
  br label %6142

; <label>:6142                                    ; preds = %6101, %6099
  %6143 = phi %union.rec* [ %6100, %6099 ], [ %6136, %6101 ]
  br label %6144

; <label>:6144                                    ; preds = %6142, %6094
  %6145 = phi %union.rec* [ %6095, %6094 ], [ %6143, %6142 ]
  %6146 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %6147 = zext i8 %6146 to i32
  store i32 %6147, i32* @zz_size, align 4
  %6148 = sext i32 %6147 to i64
  %6149 = icmp uge i64 %6148, 265
  br i1 %6149, label %6150, label %6153

; <label>:6150                                    ; preds = %6144
  %6151 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6152 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %6151)
  br label %6178

; <label>:6153                                    ; preds = %6144
  %6154 = load i32, i32* @zz_size, align 4
  %6155 = sext i32 %6154 to i64
  %6156 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6155
  %6157 = load %union.rec*, %union.rec** %6156, align 8
  %6158 = icmp eq %union.rec* %6157, null
  br i1 %6158, label %6159, label %6163

; <label>:6159                                    ; preds = %6153
  %6160 = load i32, i32* @zz_size, align 4
  %6161 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6162 = call %union.rec* @GetMemory(i32 %6160, %struct.FILE_POS* %6161)
  store %union.rec* %6162, %union.rec** @zz_hold, align 8
  br label %6177

; <label>:6163                                    ; preds = %6153
  %6164 = load i32, i32* @zz_size, align 4
  %6165 = sext i32 %6164 to i64
  %6166 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6165
  %6167 = load %union.rec*, %union.rec** %6166, align 8
  store %union.rec* %6167, %union.rec** @zz_hold, align 8
  store %union.rec* %6167, %union.rec** @zz_hold, align 8
  %6168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6169 = bitcast %union.rec* %6168 to %struct.word_type*
  %6170 = getelementptr inbounds %struct.word_type, %struct.word_type* %6169, i32 0, i32 0
  %6171 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6170, i32 0, i64 0
  %6172 = getelementptr inbounds %struct.LIST, %struct.LIST* %6171, i32 0, i32 0
  %6173 = load %union.rec*, %union.rec** %6172, align 8
  %6174 = load i32, i32* @zz_size, align 4
  %6175 = sext i32 %6174 to i64
  %6176 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6175
  store %union.rec* %6173, %union.rec** %6176, align 8
  br label %6177

; <label>:6177                                    ; preds = %6163, %6159
  br label %6178

; <label>:6178                                    ; preds = %6177, %6150
  %6179 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6180 = bitcast %union.rec* %6179 to %struct.word_type*
  %6181 = getelementptr inbounds %struct.word_type, %struct.word_type* %6180, i32 0, i32 1
  %6182 = bitcast %union.FIRST_UNION* %6181 to %struct.anon*
  %6183 = getelementptr inbounds %struct.anon, %struct.anon* %6182, i32 0, i32 0
  store i8 0, i8* %6183, align 1
  %6184 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6186 = bitcast %union.rec* %6185 to %struct.word_type*
  %6187 = getelementptr inbounds %struct.word_type, %struct.word_type* %6186, i32 0, i32 0
  %6188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6187, i32 0, i64 1
  %6189 = getelementptr inbounds %struct.LIST, %struct.LIST* %6188, i32 0, i32 1
  store %union.rec* %6184, %union.rec** %6189, align 8
  %6190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6191 = bitcast %union.rec* %6190 to %struct.word_type*
  %6192 = getelementptr inbounds %struct.word_type, %struct.word_type* %6191, i32 0, i32 0
  %6193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6192, i32 0, i64 1
  %6194 = getelementptr inbounds %struct.LIST, %struct.LIST* %6193, i32 0, i32 0
  store %union.rec* %6184, %union.rec** %6194, align 8
  %6195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6196 = bitcast %union.rec* %6195 to %struct.word_type*
  %6197 = getelementptr inbounds %struct.word_type, %struct.word_type* %6196, i32 0, i32 0
  %6198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6197, i32 0, i64 0
  %6199 = getelementptr inbounds %struct.LIST, %struct.LIST* %6198, i32 0, i32 1
  store %union.rec* %6184, %union.rec** %6199, align 8
  %6200 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6201 = bitcast %union.rec* %6200 to %struct.word_type*
  %6202 = getelementptr inbounds %struct.word_type, %struct.word_type* %6201, i32 0, i32 0
  %6203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6202, i32 0, i64 0
  %6204 = getelementptr inbounds %struct.LIST, %struct.LIST* %6203, i32 0, i32 0
  store %union.rec* %6184, %union.rec** %6204, align 8
  store %union.rec* %6184, %union.rec** @xx_link, align 8
  %6205 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6205, %union.rec** @zz_res, align 8
  %6206 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %6206, %union.rec** @zz_hold, align 8
  %6207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6208 = icmp eq %union.rec* %6207, null
  br i1 %6208, label %6209, label %6211

; <label>:6209                                    ; preds = %6178
  %6210 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6259

; <label>:6211                                    ; preds = %6178
  %6212 = load %union.rec*, %union.rec** @zz_res, align 8
  %6213 = icmp eq %union.rec* %6212, null
  br i1 %6213, label %6214, label %6216

; <label>:6214                                    ; preds = %6211
  %6215 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %6257

; <label>:6216                                    ; preds = %6211
  %6217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6218 = bitcast %union.rec* %6217 to %struct.word_type*
  %6219 = getelementptr inbounds %struct.word_type, %struct.word_type* %6218, i32 0, i32 0
  %6220 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6219, i32 0, i64 0
  %6221 = getelementptr inbounds %struct.LIST, %struct.LIST* %6220, i32 0, i32 0
  %6222 = load %union.rec*, %union.rec** %6221, align 8
  store %union.rec* %6222, %union.rec** @zz_tmp, align 8
  %6223 = load %union.rec*, %union.rec** @zz_res, align 8
  %6224 = bitcast %union.rec* %6223 to %struct.word_type*
  %6225 = getelementptr inbounds %struct.word_type, %struct.word_type* %6224, i32 0, i32 0
  %6226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6225, i32 0, i64 0
  %6227 = getelementptr inbounds %struct.LIST, %struct.LIST* %6226, i32 0, i32 0
  %6228 = load %union.rec*, %union.rec** %6227, align 8
  %6229 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6230 = bitcast %union.rec* %6229 to %struct.word_type*
  %6231 = getelementptr inbounds %struct.word_type, %struct.word_type* %6230, i32 0, i32 0
  %6232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6231, i32 0, i64 0
  %6233 = getelementptr inbounds %struct.LIST, %struct.LIST* %6232, i32 0, i32 0
  store %union.rec* %6228, %union.rec** %6233, align 8
  %6234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6235 = load %union.rec*, %union.rec** @zz_res, align 8
  %6236 = bitcast %union.rec* %6235 to %struct.word_type*
  %6237 = getelementptr inbounds %struct.word_type, %struct.word_type* %6236, i32 0, i32 0
  %6238 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6237, i32 0, i64 0
  %6239 = getelementptr inbounds %struct.LIST, %struct.LIST* %6238, i32 0, i32 0
  %6240 = load %union.rec*, %union.rec** %6239, align 8
  %6241 = bitcast %union.rec* %6240 to %struct.word_type*
  %6242 = getelementptr inbounds %struct.word_type, %struct.word_type* %6241, i32 0, i32 0
  %6243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6242, i32 0, i64 0
  %6244 = getelementptr inbounds %struct.LIST, %struct.LIST* %6243, i32 0, i32 1
  store %union.rec* %6234, %union.rec** %6244, align 8
  %6245 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6246 = load %union.rec*, %union.rec** @zz_res, align 8
  %6247 = bitcast %union.rec* %6246 to %struct.word_type*
  %6248 = getelementptr inbounds %struct.word_type, %struct.word_type* %6247, i32 0, i32 0
  %6249 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6248, i32 0, i64 0
  %6250 = getelementptr inbounds %struct.LIST, %struct.LIST* %6249, i32 0, i32 0
  store %union.rec* %6245, %union.rec** %6250, align 8
  %6251 = load %union.rec*, %union.rec** @zz_res, align 8
  %6252 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6253 = bitcast %union.rec* %6252 to %struct.word_type*
  %6254 = getelementptr inbounds %struct.word_type, %struct.word_type* %6253, i32 0, i32 0
  %6255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6254, i32 0, i64 0
  %6256 = getelementptr inbounds %struct.LIST, %struct.LIST* %6255, i32 0, i32 1
  store %union.rec* %6251, %union.rec** %6256, align 8
  br label %6257

; <label>:6257                                    ; preds = %6216, %6214
  %6258 = phi %union.rec* [ %6215, %6214 ], [ %6251, %6216 ]
  br label %6259

; <label>:6259                                    ; preds = %6257, %6209
  %6260 = phi %union.rec* [ %6210, %6209 ], [ %6258, %6257 ]
  %6261 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6261, %union.rec** @zz_res, align 8
  %6262 = load %union.rec*, %union.rec** %t2, align 8
  store %union.rec* %6262, %union.rec** @zz_hold, align 8
  %6263 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6264 = icmp eq %union.rec* %6263, null
  br i1 %6264, label %6265, label %6267

; <label>:6265                                    ; preds = %6259
  %6266 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6315

; <label>:6267                                    ; preds = %6259
  %6268 = load %union.rec*, %union.rec** @zz_res, align 8
  %6269 = icmp eq %union.rec* %6268, null
  br i1 %6269, label %6270, label %6272

; <label>:6270                                    ; preds = %6267
  %6271 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %6313

; <label>:6272                                    ; preds = %6267
  %6273 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6274 = bitcast %union.rec* %6273 to %struct.word_type*
  %6275 = getelementptr inbounds %struct.word_type, %struct.word_type* %6274, i32 0, i32 0
  %6276 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6275, i32 0, i64 1
  %6277 = getelementptr inbounds %struct.LIST, %struct.LIST* %6276, i32 0, i32 0
  %6278 = load %union.rec*, %union.rec** %6277, align 8
  store %union.rec* %6278, %union.rec** @zz_tmp, align 8
  %6279 = load %union.rec*, %union.rec** @zz_res, align 8
  %6280 = bitcast %union.rec* %6279 to %struct.word_type*
  %6281 = getelementptr inbounds %struct.word_type, %struct.word_type* %6280, i32 0, i32 0
  %6282 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6281, i32 0, i64 1
  %6283 = getelementptr inbounds %struct.LIST, %struct.LIST* %6282, i32 0, i32 0
  %6284 = load %union.rec*, %union.rec** %6283, align 8
  %6285 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6286 = bitcast %union.rec* %6285 to %struct.word_type*
  %6287 = getelementptr inbounds %struct.word_type, %struct.word_type* %6286, i32 0, i32 0
  %6288 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6287, i32 0, i64 1
  %6289 = getelementptr inbounds %struct.LIST, %struct.LIST* %6288, i32 0, i32 0
  store %union.rec* %6284, %union.rec** %6289, align 8
  %6290 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6291 = load %union.rec*, %union.rec** @zz_res, align 8
  %6292 = bitcast %union.rec* %6291 to %struct.word_type*
  %6293 = getelementptr inbounds %struct.word_type, %struct.word_type* %6292, i32 0, i32 0
  %6294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6293, i32 0, i64 1
  %6295 = getelementptr inbounds %struct.LIST, %struct.LIST* %6294, i32 0, i32 0
  %6296 = load %union.rec*, %union.rec** %6295, align 8
  %6297 = bitcast %union.rec* %6296 to %struct.word_type*
  %6298 = getelementptr inbounds %struct.word_type, %struct.word_type* %6297, i32 0, i32 0
  %6299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6298, i32 0, i64 1
  %6300 = getelementptr inbounds %struct.LIST, %struct.LIST* %6299, i32 0, i32 1
  store %union.rec* %6290, %union.rec** %6300, align 8
  %6301 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6302 = load %union.rec*, %union.rec** @zz_res, align 8
  %6303 = bitcast %union.rec* %6302 to %struct.word_type*
  %6304 = getelementptr inbounds %struct.word_type, %struct.word_type* %6303, i32 0, i32 0
  %6305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6304, i32 0, i64 1
  %6306 = getelementptr inbounds %struct.LIST, %struct.LIST* %6305, i32 0, i32 0
  store %union.rec* %6301, %union.rec** %6306, align 8
  %6307 = load %union.rec*, %union.rec** @zz_res, align 8
  %6308 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6309 = bitcast %union.rec* %6308 to %struct.word_type*
  %6310 = getelementptr inbounds %struct.word_type, %struct.word_type* %6309, i32 0, i32 0
  %6311 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6310, i32 0, i64 1
  %6312 = getelementptr inbounds %struct.LIST, %struct.LIST* %6311, i32 0, i32 1
  store %union.rec* %6307, %union.rec** %6312, align 8
  br label %6313

; <label>:6313                                    ; preds = %6272, %6270
  %6314 = phi %union.rec* [ %6271, %6270 ], [ %6307, %6272 ]
  br label %6315

; <label>:6315                                    ; preds = %6313, %6265
  %6316 = phi %union.rec* [ %6266, %6265 ], [ %6314, %6313 ]
  %6317 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %6318 = zext i8 %6317 to i32
  store i32 %6318, i32* @zz_size, align 4
  %6319 = sext i32 %6318 to i64
  %6320 = icmp uge i64 %6319, 265
  br i1 %6320, label %6321, label %6324

; <label>:6321                                    ; preds = %6315
  %6322 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6323 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %6322)
  br label %6349

; <label>:6324                                    ; preds = %6315
  %6325 = load i32, i32* @zz_size, align 4
  %6326 = sext i32 %6325 to i64
  %6327 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6326
  %6328 = load %union.rec*, %union.rec** %6327, align 8
  %6329 = icmp eq %union.rec* %6328, null
  br i1 %6329, label %6330, label %6334

; <label>:6330                                    ; preds = %6324
  %6331 = load i32, i32* @zz_size, align 4
  %6332 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6333 = call %union.rec* @GetMemory(i32 %6331, %struct.FILE_POS* %6332)
  store %union.rec* %6333, %union.rec** @zz_hold, align 8
  br label %6348

; <label>:6334                                    ; preds = %6324
  %6335 = load i32, i32* @zz_size, align 4
  %6336 = sext i32 %6335 to i64
  %6337 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6336
  %6338 = load %union.rec*, %union.rec** %6337, align 8
  store %union.rec* %6338, %union.rec** @zz_hold, align 8
  store %union.rec* %6338, %union.rec** @zz_hold, align 8
  %6339 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6340 = bitcast %union.rec* %6339 to %struct.word_type*
  %6341 = getelementptr inbounds %struct.word_type, %struct.word_type* %6340, i32 0, i32 0
  %6342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6341, i32 0, i64 0
  %6343 = getelementptr inbounds %struct.LIST, %struct.LIST* %6342, i32 0, i32 0
  %6344 = load %union.rec*, %union.rec** %6343, align 8
  %6345 = load i32, i32* @zz_size, align 4
  %6346 = sext i32 %6345 to i64
  %6347 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6346
  store %union.rec* %6344, %union.rec** %6347, align 8
  br label %6348

; <label>:6348                                    ; preds = %6334, %6330
  br label %6349

; <label>:6349                                    ; preds = %6348, %6321
  %6350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6351 = bitcast %union.rec* %6350 to %struct.word_type*
  %6352 = getelementptr inbounds %struct.word_type, %struct.word_type* %6351, i32 0, i32 1
  %6353 = bitcast %union.FIRST_UNION* %6352 to %struct.anon*
  %6354 = getelementptr inbounds %struct.anon, %struct.anon* %6353, i32 0, i32 0
  store i8 1, i8* %6354, align 1
  %6355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6356 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6357 = bitcast %union.rec* %6356 to %struct.word_type*
  %6358 = getelementptr inbounds %struct.word_type, %struct.word_type* %6357, i32 0, i32 0
  %6359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6358, i32 0, i64 1
  %6360 = getelementptr inbounds %struct.LIST, %struct.LIST* %6359, i32 0, i32 1
  store %union.rec* %6355, %union.rec** %6360, align 8
  %6361 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6362 = bitcast %union.rec* %6361 to %struct.word_type*
  %6363 = getelementptr inbounds %struct.word_type, %struct.word_type* %6362, i32 0, i32 0
  %6364 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6363, i32 0, i64 1
  %6365 = getelementptr inbounds %struct.LIST, %struct.LIST* %6364, i32 0, i32 0
  store %union.rec* %6355, %union.rec** %6365, align 8
  %6366 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6367 = bitcast %union.rec* %6366 to %struct.word_type*
  %6368 = getelementptr inbounds %struct.word_type, %struct.word_type* %6367, i32 0, i32 0
  %6369 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6368, i32 0, i64 0
  %6370 = getelementptr inbounds %struct.LIST, %struct.LIST* %6369, i32 0, i32 1
  store %union.rec* %6355, %union.rec** %6370, align 8
  %6371 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6372 = bitcast %union.rec* %6371 to %struct.word_type*
  %6373 = getelementptr inbounds %struct.word_type, %struct.word_type* %6372, i32 0, i32 0
  %6374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6373, i32 0, i64 0
  %6375 = getelementptr inbounds %struct.LIST, %struct.LIST* %6374, i32 0, i32 0
  store %union.rec* %6355, %union.rec** %6375, align 8
  store %union.rec* %6355, %union.rec** %z26, align 8
  %6376 = load %union.rec*, %union.rec** %z26, align 8
  %6377 = bitcast %union.rec* %6376 to %struct.word_type*
  %6378 = getelementptr inbounds %struct.word_type, %struct.word_type* %6377, i32 0, i32 2
  %6379 = bitcast %union.SECOND_UNION* %6378 to %struct.anon.0*
  %6380 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %6379, i32 0, i32 2
  store i8 0, i8* %6380, align 1
  %6381 = load %union.rec*, %union.rec** %z26, align 8
  %6382 = bitcast %union.rec* %6381 to %struct.word_type*
  %6383 = getelementptr inbounds %struct.word_type, %struct.word_type* %6382, i32 0, i32 2
  %6384 = bitcast %union.SECOND_UNION* %6383 to %struct.anon.0*
  %6385 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %6384, i32 0, i32 1
  store i8 0, i8* %6385, align 1
  %6386 = load %union.rec*, %union.rec** %z26, align 8
  %6387 = bitcast %union.rec* %6386 to %struct.gapobj_type*
  %6388 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %6387, i32 0, i32 3
  %6389 = bitcast %struct.GAP* %6388 to i16*
  %6390 = load i16, i16* %6389, align 4
  %6391 = and i16 %6390, -129
  %6392 = or i16 %6391, 128
  store i16 %6392, i16* %6389, align 4
  %6393 = load %union.rec*, %union.rec** %z26, align 8
  %6394 = bitcast %union.rec* %6393 to %struct.gapobj_type*
  %6395 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %6394, i32 0, i32 3
  %6396 = bitcast %struct.GAP* %6395 to i16*
  %6397 = load i16, i16* %6396, align 4
  %6398 = and i16 %6397, -257
  store i16 %6398, i16* %6396, align 4
  %6399 = load %union.rec*, %union.rec** %z26, align 8
  %6400 = bitcast %union.rec* %6399 to %struct.gapobj_type*
  %6401 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %6400, i32 0, i32 3
  %6402 = bitcast %struct.GAP* %6401 to i16*
  %6403 = load i16, i16* %6402, align 4
  %6404 = and i16 %6403, -513
  %6405 = or i16 %6404, 512
  store i16 %6405, i16* %6402, align 4
  %6406 = load %union.rec*, %union.rec** %z26, align 8
  %6407 = bitcast %union.rec* %6406 to %struct.gapobj_type*
  %6408 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %6407, i32 0, i32 3
  %6409 = bitcast %struct.GAP* %6408 to i16*
  %6410 = load i16, i16* %6409, align 4
  %6411 = and i16 %6410, -7169
  %6412 = or i16 %6411, 1024
  store i16 %6412, i16* %6409, align 4
  %6413 = load %union.rec*, %union.rec** %z26, align 8
  %6414 = bitcast %union.rec* %6413 to %struct.gapobj_type*
  %6415 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %6414, i32 0, i32 3
  %6416 = bitcast %struct.GAP* %6415 to i16*
  %6417 = load i16, i16* %6416, align 4
  %6418 = and i16 %6417, 8191
  %6419 = or i16 %6418, 8192
  store i16 %6419, i16* %6416, align 4
  %6420 = load %union.rec*, %union.rec** %z26, align 8
  %6421 = bitcast %union.rec* %6420 to %struct.gapobj_type*
  %6422 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %6421, i32 0, i32 3
  %6423 = getelementptr inbounds %struct.GAP, %struct.GAP* %6422, i32 0, i32 1
  store i16 0, i16* %6423, align 2
  %6424 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %6425 = zext i8 %6424 to i32
  store i32 %6425, i32* @zz_size, align 4
  %6426 = sext i32 %6425 to i64
  %6427 = icmp uge i64 %6426, 265
  br i1 %6427, label %6428, label %6431

; <label>:6428                                    ; preds = %6349
  %6429 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6430 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %6429)
  br label %6456

; <label>:6431                                    ; preds = %6349
  %6432 = load i32, i32* @zz_size, align 4
  %6433 = sext i32 %6432 to i64
  %6434 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6433
  %6435 = load %union.rec*, %union.rec** %6434, align 8
  %6436 = icmp eq %union.rec* %6435, null
  br i1 %6436, label %6437, label %6441

; <label>:6437                                    ; preds = %6431
  %6438 = load i32, i32* @zz_size, align 4
  %6439 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6440 = call %union.rec* @GetMemory(i32 %6438, %struct.FILE_POS* %6439)
  store %union.rec* %6440, %union.rec** @zz_hold, align 8
  br label %6455

; <label>:6441                                    ; preds = %6431
  %6442 = load i32, i32* @zz_size, align 4
  %6443 = sext i32 %6442 to i64
  %6444 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6443
  %6445 = load %union.rec*, %union.rec** %6444, align 8
  store %union.rec* %6445, %union.rec** @zz_hold, align 8
  store %union.rec* %6445, %union.rec** @zz_hold, align 8
  %6446 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6447 = bitcast %union.rec* %6446 to %struct.word_type*
  %6448 = getelementptr inbounds %struct.word_type, %struct.word_type* %6447, i32 0, i32 0
  %6449 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6448, i32 0, i64 0
  %6450 = getelementptr inbounds %struct.LIST, %struct.LIST* %6449, i32 0, i32 0
  %6451 = load %union.rec*, %union.rec** %6450, align 8
  %6452 = load i32, i32* @zz_size, align 4
  %6453 = sext i32 %6452 to i64
  %6454 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6453
  store %union.rec* %6451, %union.rec** %6454, align 8
  br label %6455

; <label>:6455                                    ; preds = %6441, %6437
  br label %6456

; <label>:6456                                    ; preds = %6455, %6428
  %6457 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6458 = bitcast %union.rec* %6457 to %struct.word_type*
  %6459 = getelementptr inbounds %struct.word_type, %struct.word_type* %6458, i32 0, i32 1
  %6460 = bitcast %union.FIRST_UNION* %6459 to %struct.anon*
  %6461 = getelementptr inbounds %struct.anon, %struct.anon* %6460, i32 0, i32 0
  store i8 0, i8* %6461, align 1
  %6462 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6463 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6464 = bitcast %union.rec* %6463 to %struct.word_type*
  %6465 = getelementptr inbounds %struct.word_type, %struct.word_type* %6464, i32 0, i32 0
  %6466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6465, i32 0, i64 1
  %6467 = getelementptr inbounds %struct.LIST, %struct.LIST* %6466, i32 0, i32 1
  store %union.rec* %6462, %union.rec** %6467, align 8
  %6468 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6469 = bitcast %union.rec* %6468 to %struct.word_type*
  %6470 = getelementptr inbounds %struct.word_type, %struct.word_type* %6469, i32 0, i32 0
  %6471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6470, i32 0, i64 1
  %6472 = getelementptr inbounds %struct.LIST, %struct.LIST* %6471, i32 0, i32 0
  store %union.rec* %6462, %union.rec** %6472, align 8
  %6473 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6474 = bitcast %union.rec* %6473 to %struct.word_type*
  %6475 = getelementptr inbounds %struct.word_type, %struct.word_type* %6474, i32 0, i32 0
  %6476 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6475, i32 0, i64 0
  %6477 = getelementptr inbounds %struct.LIST, %struct.LIST* %6476, i32 0, i32 1
  store %union.rec* %6462, %union.rec** %6477, align 8
  %6478 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6479 = bitcast %union.rec* %6478 to %struct.word_type*
  %6480 = getelementptr inbounds %struct.word_type, %struct.word_type* %6479, i32 0, i32 0
  %6481 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6480, i32 0, i64 0
  %6482 = getelementptr inbounds %struct.LIST, %struct.LIST* %6481, i32 0, i32 0
  store %union.rec* %6462, %union.rec** %6482, align 8
  store %union.rec* %6462, %union.rec** @xx_link, align 8
  %6483 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6483, %union.rec** @zz_res, align 8
  %6484 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %6484, %union.rec** @zz_hold, align 8
  %6485 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6486 = icmp eq %union.rec* %6485, null
  br i1 %6486, label %6487, label %6489

; <label>:6487                                    ; preds = %6456
  %6488 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6537

; <label>:6489                                    ; preds = %6456
  %6490 = load %union.rec*, %union.rec** @zz_res, align 8
  %6491 = icmp eq %union.rec* %6490, null
  br i1 %6491, label %6492, label %6494

; <label>:6492                                    ; preds = %6489
  %6493 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %6535

; <label>:6494                                    ; preds = %6489
  %6495 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6496 = bitcast %union.rec* %6495 to %struct.word_type*
  %6497 = getelementptr inbounds %struct.word_type, %struct.word_type* %6496, i32 0, i32 0
  %6498 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6497, i32 0, i64 0
  %6499 = getelementptr inbounds %struct.LIST, %struct.LIST* %6498, i32 0, i32 0
  %6500 = load %union.rec*, %union.rec** %6499, align 8
  store %union.rec* %6500, %union.rec** @zz_tmp, align 8
  %6501 = load %union.rec*, %union.rec** @zz_res, align 8
  %6502 = bitcast %union.rec* %6501 to %struct.word_type*
  %6503 = getelementptr inbounds %struct.word_type, %struct.word_type* %6502, i32 0, i32 0
  %6504 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6503, i32 0, i64 0
  %6505 = getelementptr inbounds %struct.LIST, %struct.LIST* %6504, i32 0, i32 0
  %6506 = load %union.rec*, %union.rec** %6505, align 8
  %6507 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6508 = bitcast %union.rec* %6507 to %struct.word_type*
  %6509 = getelementptr inbounds %struct.word_type, %struct.word_type* %6508, i32 0, i32 0
  %6510 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6509, i32 0, i64 0
  %6511 = getelementptr inbounds %struct.LIST, %struct.LIST* %6510, i32 0, i32 0
  store %union.rec* %6506, %union.rec** %6511, align 8
  %6512 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6513 = load %union.rec*, %union.rec** @zz_res, align 8
  %6514 = bitcast %union.rec* %6513 to %struct.word_type*
  %6515 = getelementptr inbounds %struct.word_type, %struct.word_type* %6514, i32 0, i32 0
  %6516 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6515, i32 0, i64 0
  %6517 = getelementptr inbounds %struct.LIST, %struct.LIST* %6516, i32 0, i32 0
  %6518 = load %union.rec*, %union.rec** %6517, align 8
  %6519 = bitcast %union.rec* %6518 to %struct.word_type*
  %6520 = getelementptr inbounds %struct.word_type, %struct.word_type* %6519, i32 0, i32 0
  %6521 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6520, i32 0, i64 0
  %6522 = getelementptr inbounds %struct.LIST, %struct.LIST* %6521, i32 0, i32 1
  store %union.rec* %6512, %union.rec** %6522, align 8
  %6523 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6524 = load %union.rec*, %union.rec** @zz_res, align 8
  %6525 = bitcast %union.rec* %6524 to %struct.word_type*
  %6526 = getelementptr inbounds %struct.word_type, %struct.word_type* %6525, i32 0, i32 0
  %6527 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6526, i32 0, i64 0
  %6528 = getelementptr inbounds %struct.LIST, %struct.LIST* %6527, i32 0, i32 0
  store %union.rec* %6523, %union.rec** %6528, align 8
  %6529 = load %union.rec*, %union.rec** @zz_res, align 8
  %6530 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6531 = bitcast %union.rec* %6530 to %struct.word_type*
  %6532 = getelementptr inbounds %struct.word_type, %struct.word_type* %6531, i32 0, i32 0
  %6533 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6532, i32 0, i64 0
  %6534 = getelementptr inbounds %struct.LIST, %struct.LIST* %6533, i32 0, i32 1
  store %union.rec* %6529, %union.rec** %6534, align 8
  br label %6535

; <label>:6535                                    ; preds = %6494, %6492
  %6536 = phi %union.rec* [ %6493, %6492 ], [ %6529, %6494 ]
  br label %6537

; <label>:6537                                    ; preds = %6535, %6487
  %6538 = phi %union.rec* [ %6488, %6487 ], [ %6536, %6535 ]
  %6539 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6539, %union.rec** @zz_res, align 8
  %6540 = load %union.rec*, %union.rec** %z26, align 8
  store %union.rec* %6540, %union.rec** @zz_hold, align 8
  %6541 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6542 = icmp eq %union.rec* %6541, null
  br i1 %6542, label %6543, label %6545

; <label>:6543                                    ; preds = %6537
  %6544 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6593

; <label>:6545                                    ; preds = %6537
  %6546 = load %union.rec*, %union.rec** @zz_res, align 8
  %6547 = icmp eq %union.rec* %6546, null
  br i1 %6547, label %6548, label %6550

; <label>:6548                                    ; preds = %6545
  %6549 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %6591

; <label>:6550                                    ; preds = %6545
  %6551 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6552 = bitcast %union.rec* %6551 to %struct.word_type*
  %6553 = getelementptr inbounds %struct.word_type, %struct.word_type* %6552, i32 0, i32 0
  %6554 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6553, i32 0, i64 1
  %6555 = getelementptr inbounds %struct.LIST, %struct.LIST* %6554, i32 0, i32 0
  %6556 = load %union.rec*, %union.rec** %6555, align 8
  store %union.rec* %6556, %union.rec** @zz_tmp, align 8
  %6557 = load %union.rec*, %union.rec** @zz_res, align 8
  %6558 = bitcast %union.rec* %6557 to %struct.word_type*
  %6559 = getelementptr inbounds %struct.word_type, %struct.word_type* %6558, i32 0, i32 0
  %6560 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6559, i32 0, i64 1
  %6561 = getelementptr inbounds %struct.LIST, %struct.LIST* %6560, i32 0, i32 0
  %6562 = load %union.rec*, %union.rec** %6561, align 8
  %6563 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6564 = bitcast %union.rec* %6563 to %struct.word_type*
  %6565 = getelementptr inbounds %struct.word_type, %struct.word_type* %6564, i32 0, i32 0
  %6566 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6565, i32 0, i64 1
  %6567 = getelementptr inbounds %struct.LIST, %struct.LIST* %6566, i32 0, i32 0
  store %union.rec* %6562, %union.rec** %6567, align 8
  %6568 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6569 = load %union.rec*, %union.rec** @zz_res, align 8
  %6570 = bitcast %union.rec* %6569 to %struct.word_type*
  %6571 = getelementptr inbounds %struct.word_type, %struct.word_type* %6570, i32 0, i32 0
  %6572 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6571, i32 0, i64 1
  %6573 = getelementptr inbounds %struct.LIST, %struct.LIST* %6572, i32 0, i32 0
  %6574 = load %union.rec*, %union.rec** %6573, align 8
  %6575 = bitcast %union.rec* %6574 to %struct.word_type*
  %6576 = getelementptr inbounds %struct.word_type, %struct.word_type* %6575, i32 0, i32 0
  %6577 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6576, i32 0, i64 1
  %6578 = getelementptr inbounds %struct.LIST, %struct.LIST* %6577, i32 0, i32 1
  store %union.rec* %6568, %union.rec** %6578, align 8
  %6579 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6580 = load %union.rec*, %union.rec** @zz_res, align 8
  %6581 = bitcast %union.rec* %6580 to %struct.word_type*
  %6582 = getelementptr inbounds %struct.word_type, %struct.word_type* %6581, i32 0, i32 0
  %6583 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6582, i32 0, i64 1
  %6584 = getelementptr inbounds %struct.LIST, %struct.LIST* %6583, i32 0, i32 0
  store %union.rec* %6579, %union.rec** %6584, align 8
  %6585 = load %union.rec*, %union.rec** @zz_res, align 8
  %6586 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6587 = bitcast %union.rec* %6586 to %struct.word_type*
  %6588 = getelementptr inbounds %struct.word_type, %struct.word_type* %6587, i32 0, i32 0
  %6589 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6588, i32 0, i64 1
  %6590 = getelementptr inbounds %struct.LIST, %struct.LIST* %6589, i32 0, i32 1
  store %union.rec* %6585, %union.rec** %6590, align 8
  br label %6591

; <label>:6591                                    ; preds = %6550, %6548
  %6592 = phi %union.rec* [ %6549, %6548 ], [ %6585, %6550 ]
  br label %6593

; <label>:6593                                    ; preds = %6591, %6543
  %6594 = phi %union.rec* [ %6544, %6543 ], [ %6592, %6591 ]
  br label %6595

; <label>:6595                                    ; preds = %6593, %5793
  %6596 = load %union.rec*, %union.rec** %llink25, align 8
  %6597 = bitcast %union.rec* %6596 to %struct.word_type*
  %6598 = getelementptr inbounds %struct.word_type, %struct.word_type* %6597, i32 0, i32 0
  %6599 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6598, i32 0, i64 0
  %6600 = getelementptr inbounds %struct.LIST, %struct.LIST* %6599, i32 0, i32 1
  %6601 = load %union.rec*, %union.rec** %6600, align 8
  store %union.rec* %6601, %union.rec** %xxstart, align 8
  %6602 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %6602, %union.rec** %xxstop, align 8
  %6603 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %6603, %union.rec** %xxdest, align 8
  %6604 = load %union.rec*, %union.rec** %xxstart, align 8
  %6605 = load %union.rec*, %union.rec** %xxstop, align 8
  %6606 = icmp ne %union.rec* %6604, %6605
  br i1 %6606, label %6607, label %6732

; <label>:6607                                    ; preds = %6595
  %6608 = load %union.rec*, %union.rec** %xxstart, align 8
  %6609 = bitcast %union.rec* %6608 to %struct.word_type*
  %6610 = getelementptr inbounds %struct.word_type, %struct.word_type* %6609, i32 0, i32 1
  %6611 = bitcast %union.FIRST_UNION* %6610 to %struct.anon*
  %6612 = getelementptr inbounds %struct.anon, %struct.anon* %6611, i32 0, i32 0
  %6613 = load i8, i8* %6612, align 1
  %6614 = zext i8 %6613 to i32
  %6615 = icmp eq i32 %6614, 0
  br i1 %6615, label %6619, label %6616

; <label>:6616                                    ; preds = %6607
  %6617 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6618 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %6617, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i32 0, i32 0))
  br label %6619

; <label>:6619                                    ; preds = %6616, %6607
  %6620 = load %union.rec*, %union.rec** %xxstart, align 8
  store %union.rec* %6620, %union.rec** @zz_res, align 8
  %6621 = load %union.rec*, %union.rec** %xxstop, align 8
  store %union.rec* %6621, %union.rec** @zz_hold, align 8
  %6622 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6623 = icmp eq %union.rec* %6622, null
  br i1 %6623, label %6624, label %6626

; <label>:6624                                    ; preds = %6619
  %6625 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6674

; <label>:6626                                    ; preds = %6619
  %6627 = load %union.rec*, %union.rec** @zz_res, align 8
  %6628 = icmp eq %union.rec* %6627, null
  br i1 %6628, label %6629, label %6631

; <label>:6629                                    ; preds = %6626
  %6630 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %6672

; <label>:6631                                    ; preds = %6626
  %6632 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6633 = bitcast %union.rec* %6632 to %struct.word_type*
  %6634 = getelementptr inbounds %struct.word_type, %struct.word_type* %6633, i32 0, i32 0
  %6635 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6634, i32 0, i64 0
  %6636 = getelementptr inbounds %struct.LIST, %struct.LIST* %6635, i32 0, i32 0
  %6637 = load %union.rec*, %union.rec** %6636, align 8
  store %union.rec* %6637, %union.rec** @zz_tmp, align 8
  %6638 = load %union.rec*, %union.rec** @zz_res, align 8
  %6639 = bitcast %union.rec* %6638 to %struct.word_type*
  %6640 = getelementptr inbounds %struct.word_type, %struct.word_type* %6639, i32 0, i32 0
  %6641 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6640, i32 0, i64 0
  %6642 = getelementptr inbounds %struct.LIST, %struct.LIST* %6641, i32 0, i32 0
  %6643 = load %union.rec*, %union.rec** %6642, align 8
  %6644 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6645 = bitcast %union.rec* %6644 to %struct.word_type*
  %6646 = getelementptr inbounds %struct.word_type, %struct.word_type* %6645, i32 0, i32 0
  %6647 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6646, i32 0, i64 0
  %6648 = getelementptr inbounds %struct.LIST, %struct.LIST* %6647, i32 0, i32 0
  store %union.rec* %6643, %union.rec** %6648, align 8
  %6649 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6650 = load %union.rec*, %union.rec** @zz_res, align 8
  %6651 = bitcast %union.rec* %6650 to %struct.word_type*
  %6652 = getelementptr inbounds %struct.word_type, %struct.word_type* %6651, i32 0, i32 0
  %6653 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6652, i32 0, i64 0
  %6654 = getelementptr inbounds %struct.LIST, %struct.LIST* %6653, i32 0, i32 0
  %6655 = load %union.rec*, %union.rec** %6654, align 8
  %6656 = bitcast %union.rec* %6655 to %struct.word_type*
  %6657 = getelementptr inbounds %struct.word_type, %struct.word_type* %6656, i32 0, i32 0
  %6658 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6657, i32 0, i64 0
  %6659 = getelementptr inbounds %struct.LIST, %struct.LIST* %6658, i32 0, i32 1
  store %union.rec* %6649, %union.rec** %6659, align 8
  %6660 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6661 = load %union.rec*, %union.rec** @zz_res, align 8
  %6662 = bitcast %union.rec* %6661 to %struct.word_type*
  %6663 = getelementptr inbounds %struct.word_type, %struct.word_type* %6662, i32 0, i32 0
  %6664 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6663, i32 0, i64 0
  %6665 = getelementptr inbounds %struct.LIST, %struct.LIST* %6664, i32 0, i32 0
  store %union.rec* %6660, %union.rec** %6665, align 8
  %6666 = load %union.rec*, %union.rec** @zz_res, align 8
  %6667 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6668 = bitcast %union.rec* %6667 to %struct.word_type*
  %6669 = getelementptr inbounds %struct.word_type, %struct.word_type* %6668, i32 0, i32 0
  %6670 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6669, i32 0, i64 0
  %6671 = getelementptr inbounds %struct.LIST, %struct.LIST* %6670, i32 0, i32 1
  store %union.rec* %6666, %union.rec** %6671, align 8
  br label %6672

; <label>:6672                                    ; preds = %6631, %6629
  %6673 = phi %union.rec* [ %6630, %6629 ], [ %6666, %6631 ]
  br label %6674

; <label>:6674                                    ; preds = %6672, %6624
  %6675 = phi %union.rec* [ %6625, %6624 ], [ %6673, %6672 ]
  %6676 = load %union.rec*, %union.rec** %xxstart, align 8
  store %union.rec* %6676, %union.rec** @zz_res, align 8
  %6677 = load %union.rec*, %union.rec** %xxdest, align 8
  store %union.rec* %6677, %union.rec** @zz_hold, align 8
  %6678 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6679 = icmp eq %union.rec* %6678, null
  br i1 %6679, label %6680, label %6682

; <label>:6680                                    ; preds = %6674
  %6681 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %6730

; <label>:6682                                    ; preds = %6674
  %6683 = load %union.rec*, %union.rec** @zz_res, align 8
  %6684 = icmp eq %union.rec* %6683, null
  br i1 %6684, label %6685, label %6687

; <label>:6685                                    ; preds = %6682
  %6686 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %6728

; <label>:6687                                    ; preds = %6682
  %6688 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6689 = bitcast %union.rec* %6688 to %struct.word_type*
  %6690 = getelementptr inbounds %struct.word_type, %struct.word_type* %6689, i32 0, i32 0
  %6691 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6690, i32 0, i64 0
  %6692 = getelementptr inbounds %struct.LIST, %struct.LIST* %6691, i32 0, i32 0
  %6693 = load %union.rec*, %union.rec** %6692, align 8
  store %union.rec* %6693, %union.rec** @zz_tmp, align 8
  %6694 = load %union.rec*, %union.rec** @zz_res, align 8
  %6695 = bitcast %union.rec* %6694 to %struct.word_type*
  %6696 = getelementptr inbounds %struct.word_type, %struct.word_type* %6695, i32 0, i32 0
  %6697 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6696, i32 0, i64 0
  %6698 = getelementptr inbounds %struct.LIST, %struct.LIST* %6697, i32 0, i32 0
  %6699 = load %union.rec*, %union.rec** %6698, align 8
  %6700 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6701 = bitcast %union.rec* %6700 to %struct.word_type*
  %6702 = getelementptr inbounds %struct.word_type, %struct.word_type* %6701, i32 0, i32 0
  %6703 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6702, i32 0, i64 0
  %6704 = getelementptr inbounds %struct.LIST, %struct.LIST* %6703, i32 0, i32 0
  store %union.rec* %6699, %union.rec** %6704, align 8
  %6705 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6706 = load %union.rec*, %union.rec** @zz_res, align 8
  %6707 = bitcast %union.rec* %6706 to %struct.word_type*
  %6708 = getelementptr inbounds %struct.word_type, %struct.word_type* %6707, i32 0, i32 0
  %6709 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6708, i32 0, i64 0
  %6710 = getelementptr inbounds %struct.LIST, %struct.LIST* %6709, i32 0, i32 0
  %6711 = load %union.rec*, %union.rec** %6710, align 8
  %6712 = bitcast %union.rec* %6711 to %struct.word_type*
  %6713 = getelementptr inbounds %struct.word_type, %struct.word_type* %6712, i32 0, i32 0
  %6714 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6713, i32 0, i64 0
  %6715 = getelementptr inbounds %struct.LIST, %struct.LIST* %6714, i32 0, i32 1
  store %union.rec* %6705, %union.rec** %6715, align 8
  %6716 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6717 = load %union.rec*, %union.rec** @zz_res, align 8
  %6718 = bitcast %union.rec* %6717 to %struct.word_type*
  %6719 = getelementptr inbounds %struct.word_type, %struct.word_type* %6718, i32 0, i32 0
  %6720 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6719, i32 0, i64 0
  %6721 = getelementptr inbounds %struct.LIST, %struct.LIST* %6720, i32 0, i32 0
  store %union.rec* %6716, %union.rec** %6721, align 8
  %6722 = load %union.rec*, %union.rec** @zz_res, align 8
  %6723 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %6724 = bitcast %union.rec* %6723 to %struct.word_type*
  %6725 = getelementptr inbounds %struct.word_type, %struct.word_type* %6724, i32 0, i32 0
  %6726 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6725, i32 0, i64 0
  %6727 = getelementptr inbounds %struct.LIST, %struct.LIST* %6726, i32 0, i32 1
  store %union.rec* %6722, %union.rec** %6727, align 8
  br label %6728

; <label>:6728                                    ; preds = %6687, %6685
  %6729 = phi %union.rec* [ %6686, %6685 ], [ %6722, %6687 ]
  br label %6730

; <label>:6730                                    ; preds = %6728, %6680
  %6731 = phi %union.rec* [ %6681, %6680 ], [ %6729, %6728 ]
  br label %6732

; <label>:6732                                    ; preds = %6730, %6595
  %6733 = load %union.rec*, %union.rec** %llink25, align 8
  %6734 = bitcast %union.rec* %6733 to %struct.word_type*
  %6735 = getelementptr inbounds %struct.word_type, %struct.word_type* %6734, i32 0, i32 0
  %6736 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6735, i32 0, i64 1
  %6737 = getelementptr inbounds %struct.LIST, %struct.LIST* %6736, i32 0, i32 0
  %6738 = load %union.rec*, %union.rec** %6737, align 8
  store %union.rec* %6738, %union.rec** %lgap24, align 8
  br label %6739

; <label>:6739                                    ; preds = %6749, %6732
  %6740 = load %union.rec*, %union.rec** %lgap24, align 8
  %6741 = bitcast %union.rec* %6740 to %struct.word_type*
  %6742 = getelementptr inbounds %struct.word_type, %struct.word_type* %6741, i32 0, i32 1
  %6743 = bitcast %union.FIRST_UNION* %6742 to %struct.anon*
  %6744 = getelementptr inbounds %struct.anon, %struct.anon* %6743, i32 0, i32 0
  %6745 = load i8, i8* %6744, align 1
  %6746 = zext i8 %6745 to i32
  %6747 = icmp eq i32 %6746, 0
  br i1 %6747, label %6748, label %6756

; <label>:6748                                    ; preds = %6739
  br label %6749

; <label>:6749                                    ; preds = %6748
  %6750 = load %union.rec*, %union.rec** %lgap24, align 8
  %6751 = bitcast %union.rec* %6750 to %struct.word_type*
  %6752 = getelementptr inbounds %struct.word_type, %struct.word_type* %6751, i32 0, i32 0
  %6753 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6752, i32 0, i64 1
  %6754 = getelementptr inbounds %struct.LIST, %struct.LIST* %6753, i32 0, i32 0
  %6755 = load %union.rec*, %union.rec** %6754, align 8
  store %union.rec* %6755, %union.rec** %lgap24, align 8
  br label %6739

; <label>:6756                                    ; preds = %6739
  %6757 = load %union.rec*, %union.rec** %lgap24, align 8
  %6758 = bitcast %union.rec* %6757 to %struct.gapobj_type*
  %6759 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %6758, i32 0, i32 3
  %6760 = bitcast %struct.GAP* %6759 to i16*
  %6761 = load i16, i16* %6760, align 4
  %6762 = lshr i16 %6761, 13
  %6763 = zext i16 %6762 to i32
  %6764 = icmp eq i32 %6763, 7
  br i1 %6764, label %6765, label %7372

; <label>:6765                                    ; preds = %6756
  %6766 = load %union.rec*, %union.rec** %2, align 8
  %6767 = bitcast %union.rec* %6766 to %struct.word_type*
  %6768 = getelementptr inbounds %struct.word_type, %struct.word_type* %6767, i32 0, i32 0
  %6769 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6768, i32 0, i64 0
  %6770 = getelementptr inbounds %struct.LIST, %struct.LIST* %6769, i32 0, i32 0
  %6771 = load %union.rec*, %union.rec** %6770, align 8
  %6772 = bitcast %union.rec* %6771 to %struct.word_type*
  %6773 = getelementptr inbounds %struct.word_type, %struct.word_type* %6772, i32 0, i32 0
  %6774 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6773, i32 0, i64 1
  %6775 = getelementptr inbounds %struct.LIST, %struct.LIST* %6774, i32 0, i32 0
  %6776 = load %union.rec*, %union.rec** %6775, align 8
  store %union.rec* %6776, %union.rec** %z27, align 8
  br label %6777

; <label>:6777                                    ; preds = %6787, %6765
  %6778 = load %union.rec*, %union.rec** %z27, align 8
  %6779 = bitcast %union.rec* %6778 to %struct.word_type*
  %6780 = getelementptr inbounds %struct.word_type, %struct.word_type* %6779, i32 0, i32 1
  %6781 = bitcast %union.FIRST_UNION* %6780 to %struct.anon*
  %6782 = getelementptr inbounds %struct.anon, %struct.anon* %6781, i32 0, i32 0
  %6783 = load i8, i8* %6782, align 1
  %6784 = zext i8 %6783 to i32
  %6785 = icmp eq i32 %6784, 0
  br i1 %6785, label %6786, label %6794

; <label>:6786                                    ; preds = %6777
  br label %6787

; <label>:6787                                    ; preds = %6786
  %6788 = load %union.rec*, %union.rec** %z27, align 8
  %6789 = bitcast %union.rec* %6788 to %struct.word_type*
  %6790 = getelementptr inbounds %struct.word_type, %struct.word_type* %6789, i32 0, i32 0
  %6791 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6790, i32 0, i64 1
  %6792 = getelementptr inbounds %struct.LIST, %struct.LIST* %6791, i32 0, i32 0
  %6793 = load %union.rec*, %union.rec** %6792, align 8
  store %union.rec* %6793, %union.rec** %z27, align 8
  br label %6777

; <label>:6794                                    ; preds = %6777
  %6795 = load %union.rec*, %union.rec** %z27, align 8
  %6796 = bitcast %union.rec* %6795 to %struct.word_type*
  %6797 = getelementptr inbounds %struct.word_type, %struct.word_type* %6796, i32 0, i32 2
  %6798 = bitcast %union.SECOND_UNION* %6797 to %struct.anon.1*
  %6799 = bitcast %struct.anon.1* %6798 to i32*
  %6800 = load i32, i32* %6799, align 4
  %6801 = lshr i32 %6800, 29
  %6802 = and i32 %6801, 3
  store i32 %6802, i32* %under, align 4
  %6803 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %6804 = zext i8 %6803 to i32
  store i32 %6804, i32* @zz_size, align 4
  %6805 = sext i32 %6804 to i64
  %6806 = icmp uge i64 %6805, 265
  br i1 %6806, label %6807, label %6810

; <label>:6807                                    ; preds = %6794
  %6808 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6809 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %6808)
  br label %6835

; <label>:6810                                    ; preds = %6794
  %6811 = load i32, i32* @zz_size, align 4
  %6812 = sext i32 %6811 to i64
  %6813 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6812
  %6814 = load %union.rec*, %union.rec** %6813, align 8
  %6815 = icmp eq %union.rec* %6814, null
  br i1 %6815, label %6816, label %6820

; <label>:6816                                    ; preds = %6810
  %6817 = load i32, i32* @zz_size, align 4
  %6818 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6819 = call %union.rec* @GetMemory(i32 %6817, %struct.FILE_POS* %6818)
  store %union.rec* %6819, %union.rec** @zz_hold, align 8
  br label %6834

; <label>:6820                                    ; preds = %6810
  %6821 = load i32, i32* @zz_size, align 4
  %6822 = sext i32 %6821 to i64
  %6823 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6822
  %6824 = load %union.rec*, %union.rec** %6823, align 8
  store %union.rec* %6824, %union.rec** @zz_hold, align 8
  store %union.rec* %6824, %union.rec** @zz_hold, align 8
  %6825 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6826 = bitcast %union.rec* %6825 to %struct.word_type*
  %6827 = getelementptr inbounds %struct.word_type, %struct.word_type* %6826, i32 0, i32 0
  %6828 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6827, i32 0, i64 0
  %6829 = getelementptr inbounds %struct.LIST, %struct.LIST* %6828, i32 0, i32 0
  %6830 = load %union.rec*, %union.rec** %6829, align 8
  %6831 = load i32, i32* @zz_size, align 4
  %6832 = sext i32 %6831 to i64
  %6833 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6832
  store %union.rec* %6830, %union.rec** %6833, align 8
  br label %6834

; <label>:6834                                    ; preds = %6820, %6816
  br label %6835

; <label>:6835                                    ; preds = %6834, %6807
  %6836 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6837 = bitcast %union.rec* %6836 to %struct.word_type*
  %6838 = getelementptr inbounds %struct.word_type, %struct.word_type* %6837, i32 0, i32 1
  %6839 = bitcast %union.FIRST_UNION* %6838 to %struct.anon*
  %6840 = getelementptr inbounds %struct.anon, %struct.anon* %6839, i32 0, i32 0
  store i8 1, i8* %6840, align 1
  %6841 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6842 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6843 = bitcast %union.rec* %6842 to %struct.word_type*
  %6844 = getelementptr inbounds %struct.word_type, %struct.word_type* %6843, i32 0, i32 0
  %6845 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6844, i32 0, i64 1
  %6846 = getelementptr inbounds %struct.LIST, %struct.LIST* %6845, i32 0, i32 1
  store %union.rec* %6841, %union.rec** %6846, align 8
  %6847 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6848 = bitcast %union.rec* %6847 to %struct.word_type*
  %6849 = getelementptr inbounds %struct.word_type, %struct.word_type* %6848, i32 0, i32 0
  %6850 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6849, i32 0, i64 1
  %6851 = getelementptr inbounds %struct.LIST, %struct.LIST* %6850, i32 0, i32 0
  store %union.rec* %6841, %union.rec** %6851, align 8
  %6852 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6853 = bitcast %union.rec* %6852 to %struct.word_type*
  %6854 = getelementptr inbounds %struct.word_type, %struct.word_type* %6853, i32 0, i32 0
  %6855 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6854, i32 0, i64 0
  %6856 = getelementptr inbounds %struct.LIST, %struct.LIST* %6855, i32 0, i32 1
  store %union.rec* %6841, %union.rec** %6856, align 8
  %6857 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6858 = bitcast %union.rec* %6857 to %struct.word_type*
  %6859 = getelementptr inbounds %struct.word_type, %struct.word_type* %6858, i32 0, i32 0
  %6860 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6859, i32 0, i64 0
  %6861 = getelementptr inbounds %struct.LIST, %struct.LIST* %6860, i32 0, i32 0
  store %union.rec* %6841, %union.rec** %6861, align 8
  store %union.rec* %6841, %union.rec** %z27, align 8
  %6862 = load %union.rec*, %union.rec** %z27, align 8
  %6863 = bitcast %union.rec* %6862 to %struct.word_type*
  %6864 = getelementptr inbounds %struct.word_type, %struct.word_type* %6863, i32 0, i32 2
  %6865 = bitcast %union.SECOND_UNION* %6864 to %struct.anon.0*
  %6866 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %6865, i32 0, i32 2
  store i8 0, i8* %6866, align 1
  %6867 = load %union.rec*, %union.rec** %z27, align 8
  %6868 = bitcast %union.rec* %6867 to %struct.word_type*
  %6869 = getelementptr inbounds %struct.word_type, %struct.word_type* %6868, i32 0, i32 2
  %6870 = bitcast %union.SECOND_UNION* %6869 to %struct.anon.0*
  %6871 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %6870, i32 0, i32 1
  store i8 0, i8* %6871, align 1
  %6872 = load i32, i32* %under, align 4
  %6873 = load %union.rec*, %union.rec** %z27, align 8
  %6874 = bitcast %union.rec* %6873 to %struct.word_type*
  %6875 = getelementptr inbounds %struct.word_type, %struct.word_type* %6874, i32 0, i32 2
  %6876 = bitcast %union.SECOND_UNION* %6875 to %struct.anon.1*
  %6877 = bitcast %struct.anon.1* %6876 to i32*
  %6878 = load i32, i32* %6877, align 4
  %6879 = and i32 %6872, 3
  %6880 = shl i32 %6879, 29
  %6881 = and i32 %6878, -1610612737
  %6882 = or i32 %6881, %6880
  store i32 %6882, i32* %6877, align 4
  %6883 = load %union.rec*, %union.rec** %z27, align 8
  %6884 = bitcast %union.rec* %6883 to %struct.gapobj_type*
  %6885 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %6884, i32 0, i32 3
  %6886 = bitcast %struct.GAP* %6885 to i16*
  %6887 = load i16, i16* %6886, align 4
  %6888 = and i16 %6887, -129
  %6889 = or i16 %6888, 128
  store i16 %6889, i16* %6886, align 4
  %6890 = load %union.rec*, %union.rec** %z27, align 8
  %6891 = bitcast %union.rec* %6890 to %struct.gapobj_type*
  %6892 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %6891, i32 0, i32 3
  %6893 = bitcast %struct.GAP* %6892 to i16*
  %6894 = load i16, i16* %6893, align 4
  %6895 = and i16 %6894, -257
  store i16 %6895, i16* %6893, align 4
  %6896 = load %union.rec*, %union.rec** %z27, align 8
  %6897 = bitcast %union.rec* %6896 to %struct.gapobj_type*
  %6898 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %6897, i32 0, i32 3
  %6899 = bitcast %struct.GAP* %6898 to i16*
  %6900 = load i16, i16* %6899, align 4
  %6901 = and i16 %6900, -513
  %6902 = or i16 %6901, 512
  store i16 %6902, i16* %6899, align 4
  %6903 = load %union.rec*, %union.rec** %z27, align 8
  %6904 = bitcast %union.rec* %6903 to %struct.gapobj_type*
  %6905 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %6904, i32 0, i32 3
  %6906 = bitcast %struct.GAP* %6905 to i16*
  %6907 = load i16, i16* %6906, align 4
  %6908 = and i16 %6907, -7169
  %6909 = or i16 %6908, 1024
  store i16 %6909, i16* %6906, align 4
  %6910 = load %union.rec*, %union.rec** %z27, align 8
  %6911 = bitcast %union.rec* %6910 to %struct.gapobj_type*
  %6912 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %6911, i32 0, i32 3
  %6913 = bitcast %struct.GAP* %6912 to i16*
  %6914 = load i16, i16* %6913, align 4
  %6915 = and i16 %6914, 8191
  %6916 = or i16 %6915, 8192
  store i16 %6916, i16* %6913, align 4
  %6917 = load %union.rec*, %union.rec** %z27, align 8
  %6918 = bitcast %union.rec* %6917 to %struct.gapobj_type*
  %6919 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %6918, i32 0, i32 3
  %6920 = getelementptr inbounds %struct.GAP, %struct.GAP* %6919, i32 0, i32 1
  store i16 0, i16* %6920, align 2
  %6921 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %6922 = zext i8 %6921 to i32
  store i32 %6922, i32* @zz_size, align 4
  %6923 = sext i32 %6922 to i64
  %6924 = icmp uge i64 %6923, 265
  br i1 %6924, label %6925, label %6928

; <label>:6925                                    ; preds = %6835
  %6926 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6927 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %6926)
  br label %6953

; <label>:6928                                    ; preds = %6835
  %6929 = load i32, i32* @zz_size, align 4
  %6930 = sext i32 %6929 to i64
  %6931 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6930
  %6932 = load %union.rec*, %union.rec** %6931, align 8
  %6933 = icmp eq %union.rec* %6932, null
  br i1 %6933, label %6934, label %6938

; <label>:6934                                    ; preds = %6928
  %6935 = load i32, i32* @zz_size, align 4
  %6936 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6937 = call %union.rec* @GetMemory(i32 %6935, %struct.FILE_POS* %6936)
  store %union.rec* %6937, %union.rec** @zz_hold, align 8
  br label %6952

; <label>:6938                                    ; preds = %6928
  %6939 = load i32, i32* @zz_size, align 4
  %6940 = sext i32 %6939 to i64
  %6941 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6940
  %6942 = load %union.rec*, %union.rec** %6941, align 8
  store %union.rec* %6942, %union.rec** @zz_hold, align 8
  store %union.rec* %6942, %union.rec** @zz_hold, align 8
  %6943 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6944 = bitcast %union.rec* %6943 to %struct.word_type*
  %6945 = getelementptr inbounds %struct.word_type, %struct.word_type* %6944, i32 0, i32 0
  %6946 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6945, i32 0, i64 0
  %6947 = getelementptr inbounds %struct.LIST, %struct.LIST* %6946, i32 0, i32 0
  %6948 = load %union.rec*, %union.rec** %6947, align 8
  %6949 = load i32, i32* @zz_size, align 4
  %6950 = sext i32 %6949 to i64
  %6951 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %6950
  store %union.rec* %6948, %union.rec** %6951, align 8
  br label %6952

; <label>:6952                                    ; preds = %6938, %6934
  br label %6953

; <label>:6953                                    ; preds = %6952, %6925
  %6954 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6955 = bitcast %union.rec* %6954 to %struct.word_type*
  %6956 = getelementptr inbounds %struct.word_type, %struct.word_type* %6955, i32 0, i32 1
  %6957 = bitcast %union.FIRST_UNION* %6956 to %struct.anon*
  %6958 = getelementptr inbounds %struct.anon, %struct.anon* %6957, i32 0, i32 0
  store i8 0, i8* %6958, align 1
  %6959 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6960 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6961 = bitcast %union.rec* %6960 to %struct.word_type*
  %6962 = getelementptr inbounds %struct.word_type, %struct.word_type* %6961, i32 0, i32 0
  %6963 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6962, i32 0, i64 1
  %6964 = getelementptr inbounds %struct.LIST, %struct.LIST* %6963, i32 0, i32 1
  store %union.rec* %6959, %union.rec** %6964, align 8
  %6965 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6966 = bitcast %union.rec* %6965 to %struct.word_type*
  %6967 = getelementptr inbounds %struct.word_type, %struct.word_type* %6966, i32 0, i32 0
  %6968 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6967, i32 0, i64 1
  %6969 = getelementptr inbounds %struct.LIST, %struct.LIST* %6968, i32 0, i32 0
  store %union.rec* %6959, %union.rec** %6969, align 8
  %6970 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6971 = bitcast %union.rec* %6970 to %struct.word_type*
  %6972 = getelementptr inbounds %struct.word_type, %struct.word_type* %6971, i32 0, i32 0
  %6973 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6972, i32 0, i64 0
  %6974 = getelementptr inbounds %struct.LIST, %struct.LIST* %6973, i32 0, i32 1
  store %union.rec* %6959, %union.rec** %6974, align 8
  %6975 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6976 = bitcast %union.rec* %6975 to %struct.word_type*
  %6977 = getelementptr inbounds %struct.word_type, %struct.word_type* %6976, i32 0, i32 0
  %6978 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6977, i32 0, i64 0
  %6979 = getelementptr inbounds %struct.LIST, %struct.LIST* %6978, i32 0, i32 0
  store %union.rec* %6959, %union.rec** %6979, align 8
  store %union.rec* %6959, %union.rec** @xx_link, align 8
  %6980 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %6980, %union.rec** @zz_res, align 8
  %6981 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %6981, %union.rec** @zz_hold, align 8
  %6982 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6983 = icmp eq %union.rec* %6982, null
  br i1 %6983, label %6984, label %6986

; <label>:6984                                    ; preds = %6953
  %6985 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7034

; <label>:6986                                    ; preds = %6953
  %6987 = load %union.rec*, %union.rec** @zz_res, align 8
  %6988 = icmp eq %union.rec* %6987, null
  br i1 %6988, label %6989, label %6991

; <label>:6989                                    ; preds = %6986
  %6990 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %7032

; <label>:6991                                    ; preds = %6986
  %6992 = load %union.rec*, %union.rec** @zz_hold, align 8
  %6993 = bitcast %union.rec* %6992 to %struct.word_type*
  %6994 = getelementptr inbounds %struct.word_type, %struct.word_type* %6993, i32 0, i32 0
  %6995 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6994, i32 0, i64 0
  %6996 = getelementptr inbounds %struct.LIST, %struct.LIST* %6995, i32 0, i32 0
  %6997 = load %union.rec*, %union.rec** %6996, align 8
  store %union.rec* %6997, %union.rec** @zz_tmp, align 8
  %6998 = load %union.rec*, %union.rec** @zz_res, align 8
  %6999 = bitcast %union.rec* %6998 to %struct.word_type*
  %7000 = getelementptr inbounds %struct.word_type, %struct.word_type* %6999, i32 0, i32 0
  %7001 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7000, i32 0, i64 0
  %7002 = getelementptr inbounds %struct.LIST, %struct.LIST* %7001, i32 0, i32 0
  %7003 = load %union.rec*, %union.rec** %7002, align 8
  %7004 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7005 = bitcast %union.rec* %7004 to %struct.word_type*
  %7006 = getelementptr inbounds %struct.word_type, %struct.word_type* %7005, i32 0, i32 0
  %7007 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7006, i32 0, i64 0
  %7008 = getelementptr inbounds %struct.LIST, %struct.LIST* %7007, i32 0, i32 0
  store %union.rec* %7003, %union.rec** %7008, align 8
  %7009 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7010 = load %union.rec*, %union.rec** @zz_res, align 8
  %7011 = bitcast %union.rec* %7010 to %struct.word_type*
  %7012 = getelementptr inbounds %struct.word_type, %struct.word_type* %7011, i32 0, i32 0
  %7013 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7012, i32 0, i64 0
  %7014 = getelementptr inbounds %struct.LIST, %struct.LIST* %7013, i32 0, i32 0
  %7015 = load %union.rec*, %union.rec** %7014, align 8
  %7016 = bitcast %union.rec* %7015 to %struct.word_type*
  %7017 = getelementptr inbounds %struct.word_type, %struct.word_type* %7016, i32 0, i32 0
  %7018 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7017, i32 0, i64 0
  %7019 = getelementptr inbounds %struct.LIST, %struct.LIST* %7018, i32 0, i32 1
  store %union.rec* %7009, %union.rec** %7019, align 8
  %7020 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7021 = load %union.rec*, %union.rec** @zz_res, align 8
  %7022 = bitcast %union.rec* %7021 to %struct.word_type*
  %7023 = getelementptr inbounds %struct.word_type, %struct.word_type* %7022, i32 0, i32 0
  %7024 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7023, i32 0, i64 0
  %7025 = getelementptr inbounds %struct.LIST, %struct.LIST* %7024, i32 0, i32 0
  store %union.rec* %7020, %union.rec** %7025, align 8
  %7026 = load %union.rec*, %union.rec** @zz_res, align 8
  %7027 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7028 = bitcast %union.rec* %7027 to %struct.word_type*
  %7029 = getelementptr inbounds %struct.word_type, %struct.word_type* %7028, i32 0, i32 0
  %7030 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7029, i32 0, i64 0
  %7031 = getelementptr inbounds %struct.LIST, %struct.LIST* %7030, i32 0, i32 1
  store %union.rec* %7026, %union.rec** %7031, align 8
  br label %7032

; <label>:7032                                    ; preds = %6991, %6989
  %7033 = phi %union.rec* [ %6990, %6989 ], [ %7026, %6991 ]
  br label %7034

; <label>:7034                                    ; preds = %7032, %6984
  %7035 = phi %union.rec* [ %6985, %6984 ], [ %7033, %7032 ]
  %7036 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7036, %union.rec** @zz_res, align 8
  %7037 = load %union.rec*, %union.rec** %z27, align 8
  store %union.rec* %7037, %union.rec** @zz_hold, align 8
  %7038 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7039 = icmp eq %union.rec* %7038, null
  br i1 %7039, label %7040, label %7042

; <label>:7040                                    ; preds = %7034
  %7041 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7090

; <label>:7042                                    ; preds = %7034
  %7043 = load %union.rec*, %union.rec** @zz_res, align 8
  %7044 = icmp eq %union.rec* %7043, null
  br i1 %7044, label %7045, label %7047

; <label>:7045                                    ; preds = %7042
  %7046 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %7088

; <label>:7047                                    ; preds = %7042
  %7048 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7049 = bitcast %union.rec* %7048 to %struct.word_type*
  %7050 = getelementptr inbounds %struct.word_type, %struct.word_type* %7049, i32 0, i32 0
  %7051 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7050, i32 0, i64 1
  %7052 = getelementptr inbounds %struct.LIST, %struct.LIST* %7051, i32 0, i32 0
  %7053 = load %union.rec*, %union.rec** %7052, align 8
  store %union.rec* %7053, %union.rec** @zz_tmp, align 8
  %7054 = load %union.rec*, %union.rec** @zz_res, align 8
  %7055 = bitcast %union.rec* %7054 to %struct.word_type*
  %7056 = getelementptr inbounds %struct.word_type, %struct.word_type* %7055, i32 0, i32 0
  %7057 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7056, i32 0, i64 1
  %7058 = getelementptr inbounds %struct.LIST, %struct.LIST* %7057, i32 0, i32 0
  %7059 = load %union.rec*, %union.rec** %7058, align 8
  %7060 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7061 = bitcast %union.rec* %7060 to %struct.word_type*
  %7062 = getelementptr inbounds %struct.word_type, %struct.word_type* %7061, i32 0, i32 0
  %7063 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7062, i32 0, i64 1
  %7064 = getelementptr inbounds %struct.LIST, %struct.LIST* %7063, i32 0, i32 0
  store %union.rec* %7059, %union.rec** %7064, align 8
  %7065 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7066 = load %union.rec*, %union.rec** @zz_res, align 8
  %7067 = bitcast %union.rec* %7066 to %struct.word_type*
  %7068 = getelementptr inbounds %struct.word_type, %struct.word_type* %7067, i32 0, i32 0
  %7069 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7068, i32 0, i64 1
  %7070 = getelementptr inbounds %struct.LIST, %struct.LIST* %7069, i32 0, i32 0
  %7071 = load %union.rec*, %union.rec** %7070, align 8
  %7072 = bitcast %union.rec* %7071 to %struct.word_type*
  %7073 = getelementptr inbounds %struct.word_type, %struct.word_type* %7072, i32 0, i32 0
  %7074 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7073, i32 0, i64 1
  %7075 = getelementptr inbounds %struct.LIST, %struct.LIST* %7074, i32 0, i32 1
  store %union.rec* %7065, %union.rec** %7075, align 8
  %7076 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7077 = load %union.rec*, %union.rec** @zz_res, align 8
  %7078 = bitcast %union.rec* %7077 to %struct.word_type*
  %7079 = getelementptr inbounds %struct.word_type, %struct.word_type* %7078, i32 0, i32 0
  %7080 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7079, i32 0, i64 1
  %7081 = getelementptr inbounds %struct.LIST, %struct.LIST* %7080, i32 0, i32 0
  store %union.rec* %7076, %union.rec** %7081, align 8
  %7082 = load %union.rec*, %union.rec** @zz_res, align 8
  %7083 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7084 = bitcast %union.rec* %7083 to %struct.word_type*
  %7085 = getelementptr inbounds %struct.word_type, %struct.word_type* %7084, i32 0, i32 0
  %7086 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7085, i32 0, i64 1
  %7087 = getelementptr inbounds %struct.LIST, %struct.LIST* %7086, i32 0, i32 1
  store %union.rec* %7082, %union.rec** %7087, align 8
  br label %7088

; <label>:7088                                    ; preds = %7047, %7045
  %7089 = phi %union.rec* [ %7046, %7045 ], [ %7082, %7047 ]
  br label %7090

; <label>:7090                                    ; preds = %7088, %7040
  %7091 = phi %union.rec* [ %7041, %7040 ], [ %7089, %7088 ]
  %7092 = load %union.rec*, %union.rec** %y, align 8
  %7093 = bitcast %union.rec* %7092 to %struct.word_type*
  %7094 = getelementptr inbounds %struct.word_type, %struct.word_type* %7093, i32 0, i32 1
  %7095 = bitcast %union.FIRST_UNION* %7094 to %struct.FILE_POS*
  %7096 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), %struct.FILE_POS* %7095)
  store %union.rec* %7096, %union.rec** %z27, align 8
  %7097 = load %union.rec*, %union.rec** %2, align 8
  %7098 = bitcast %union.rec* %7097 to %struct.closure_type*
  %7099 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7098, i32 0, i32 4
  %7100 = bitcast %union.FOURTH_UNION* %7099 to %struct.STYLE*
  %7101 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7100, i32 0, i32 4
  %7102 = load i32, i32* %7101, align 4
  %7103 = and i32 %7102, 4095
  %7104 = load %union.rec*, %union.rec** %z27, align 8
  %7105 = bitcast %union.rec* %7104 to %struct.word_type*
  %7106 = getelementptr inbounds %struct.word_type, %struct.word_type* %7105, i32 0, i32 2
  %7107 = bitcast %union.SECOND_UNION* %7106 to %struct.anon.1*
  %7108 = bitcast %struct.anon.1* %7107 to i32*
  %7109 = load i32, i32* %7108, align 4
  %7110 = and i32 %7103, 4095
  %7111 = and i32 %7109, -4096
  %7112 = or i32 %7111, %7110
  store i32 %7112, i32* %7108, align 4
  %7113 = load %union.rec*, %union.rec** %2, align 8
  %7114 = bitcast %union.rec* %7113 to %struct.closure_type*
  %7115 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7114, i32 0, i32 4
  %7116 = bitcast %union.FOURTH_UNION* %7115 to %struct.STYLE*
  %7117 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7116, i32 0, i32 4
  %7118 = load i32, i32* %7117, align 4
  %7119 = lshr i32 %7118, 12
  %7120 = and i32 %7119, 1023
  %7121 = load %union.rec*, %union.rec** %z27, align 8
  %7122 = bitcast %union.rec* %7121 to %struct.word_type*
  %7123 = getelementptr inbounds %struct.word_type, %struct.word_type* %7122, i32 0, i32 2
  %7124 = bitcast %union.SECOND_UNION* %7123 to %struct.anon.1*
  %7125 = bitcast %struct.anon.1* %7124 to i32*
  %7126 = load i32, i32* %7125, align 4
  %7127 = and i32 %7120, 1023
  %7128 = shl i32 %7127, 12
  %7129 = and i32 %7126, -4190209
  %7130 = or i32 %7129, %7128
  store i32 %7130, i32* %7125, align 4
  %7131 = load %union.rec*, %union.rec** %2, align 8
  %7132 = bitcast %union.rec* %7131 to %struct.closure_type*
  %7133 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7132, i32 0, i32 4
  %7134 = bitcast %union.FOURTH_UNION* %7133 to %struct.STYLE*
  %7135 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7134, i32 0, i32 4
  %7136 = load i32, i32* %7135, align 4
  %7137 = lshr i32 %7136, 22
  %7138 = and i32 %7137, 3
  %7139 = load %union.rec*, %union.rec** %z27, align 8
  %7140 = bitcast %union.rec* %7139 to %struct.word_type*
  %7141 = getelementptr inbounds %struct.word_type, %struct.word_type* %7140, i32 0, i32 2
  %7142 = bitcast %union.SECOND_UNION* %7141 to %struct.anon.1*
  %7143 = bitcast %struct.anon.1* %7142 to i32*
  %7144 = load i32, i32* %7143, align 4
  %7145 = and i32 %7138, 1
  %7146 = shl i32 %7145, 22
  %7147 = and i32 %7144, -4194305
  %7148 = or i32 %7147, %7146
  store i32 %7148, i32* %7143, align 4
  %7149 = load %union.rec*, %union.rec** %2, align 8
  %7150 = bitcast %union.rec* %7149 to %struct.closure_type*
  %7151 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7150, i32 0, i32 4
  %7152 = bitcast %union.FOURTH_UNION* %7151 to %struct.STYLE*
  %7153 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7152, i32 0, i32 4
  %7154 = load i32, i32* %7153, align 4
  %7155 = lshr i32 %7154, 24
  %7156 = and i32 %7155, 63
  %7157 = load %union.rec*, %union.rec** %z27, align 8
  %7158 = bitcast %union.rec* %7157 to %struct.word_type*
  %7159 = getelementptr inbounds %struct.word_type, %struct.word_type* %7158, i32 0, i32 2
  %7160 = bitcast %union.SECOND_UNION* %7159 to %struct.anon.1*
  %7161 = bitcast %struct.anon.1* %7160 to i32*
  %7162 = load i32, i32* %7161, align 4
  %7163 = and i32 %7156, 63
  %7164 = shl i32 %7163, 23
  %7165 = and i32 %7162, -528482305
  %7166 = or i32 %7165, %7164
  store i32 %7166, i32* %7161, align 4
  %7167 = load %union.rec*, %union.rec** %2, align 8
  %7168 = bitcast %union.rec* %7167 to %struct.closure_type*
  %7169 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7168, i32 0, i32 4
  %7170 = bitcast %union.FOURTH_UNION* %7169 to %struct.STYLE*
  %7171 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7170, i32 0, i32 1
  %7172 = bitcast %union.anon.10* %7171 to %struct.anon.11*
  %7173 = bitcast %struct.anon.11* %7172 to i8*
  %7174 = load i8, i8* %7173, align 4
  %7175 = and i8 %7174, 3
  %7176 = zext i8 %7175 to i32
  %7177 = icmp eq i32 %7176, 2
  %7178 = zext i1 %7177 to i32
  %7179 = load %union.rec*, %union.rec** %z27, align 8
  %7180 = bitcast %union.rec* %7179 to %struct.word_type*
  %7181 = getelementptr inbounds %struct.word_type, %struct.word_type* %7180, i32 0, i32 2
  %7182 = bitcast %union.SECOND_UNION* %7181 to %struct.anon.1*
  %7183 = bitcast %struct.anon.1* %7182 to i32*
  %7184 = load i32, i32* %7183, align 4
  %7185 = and i32 %7178, 1
  %7186 = shl i32 %7185, 31
  %7187 = and i32 %7184, 2147483647
  %7188 = or i32 %7187, %7186
  store i32 %7188, i32* %7183, align 4
  %7189 = load i32, i32* %under, align 4
  %7190 = load %union.rec*, %union.rec** %z27, align 8
  %7191 = bitcast %union.rec* %7190 to %struct.word_type*
  %7192 = getelementptr inbounds %struct.word_type, %struct.word_type* %7191, i32 0, i32 2
  %7193 = bitcast %union.SECOND_UNION* %7192 to %struct.anon.1*
  %7194 = bitcast %struct.anon.1* %7193 to i32*
  %7195 = load i32, i32* %7194, align 4
  %7196 = and i32 %7189, 3
  %7197 = shl i32 %7196, 29
  %7198 = and i32 %7195, -1610612737
  %7199 = or i32 %7198, %7197
  store i32 %7199, i32* %7194, align 4
  %7200 = load %union.rec*, %union.rec** %z27, align 8
  call void @FontWordSize(%union.rec* %7200)
  %7201 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %7202 = zext i8 %7201 to i32
  store i32 %7202, i32* @zz_size, align 4
  %7203 = sext i32 %7202 to i64
  %7204 = icmp uge i64 %7203, 265
  br i1 %7204, label %7205, label %7208

; <label>:7205                                    ; preds = %7090
  %7206 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7207 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %7206)
  br label %7233

; <label>:7208                                    ; preds = %7090
  %7209 = load i32, i32* @zz_size, align 4
  %7210 = sext i32 %7209 to i64
  %7211 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7210
  %7212 = load %union.rec*, %union.rec** %7211, align 8
  %7213 = icmp eq %union.rec* %7212, null
  br i1 %7213, label %7214, label %7218

; <label>:7214                                    ; preds = %7208
  %7215 = load i32, i32* @zz_size, align 4
  %7216 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7217 = call %union.rec* @GetMemory(i32 %7215, %struct.FILE_POS* %7216)
  store %union.rec* %7217, %union.rec** @zz_hold, align 8
  br label %7232

; <label>:7218                                    ; preds = %7208
  %7219 = load i32, i32* @zz_size, align 4
  %7220 = sext i32 %7219 to i64
  %7221 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7220
  %7222 = load %union.rec*, %union.rec** %7221, align 8
  store %union.rec* %7222, %union.rec** @zz_hold, align 8
  store %union.rec* %7222, %union.rec** @zz_hold, align 8
  %7223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7224 = bitcast %union.rec* %7223 to %struct.word_type*
  %7225 = getelementptr inbounds %struct.word_type, %struct.word_type* %7224, i32 0, i32 0
  %7226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7225, i32 0, i64 0
  %7227 = getelementptr inbounds %struct.LIST, %struct.LIST* %7226, i32 0, i32 0
  %7228 = load %union.rec*, %union.rec** %7227, align 8
  %7229 = load i32, i32* @zz_size, align 4
  %7230 = sext i32 %7229 to i64
  %7231 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7230
  store %union.rec* %7228, %union.rec** %7231, align 8
  br label %7232

; <label>:7232                                    ; preds = %7218, %7214
  br label %7233

; <label>:7233                                    ; preds = %7232, %7205
  %7234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7235 = bitcast %union.rec* %7234 to %struct.word_type*
  %7236 = getelementptr inbounds %struct.word_type, %struct.word_type* %7235, i32 0, i32 1
  %7237 = bitcast %union.FIRST_UNION* %7236 to %struct.anon*
  %7238 = getelementptr inbounds %struct.anon, %struct.anon* %7237, i32 0, i32 0
  store i8 0, i8* %7238, align 1
  %7239 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7240 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7241 = bitcast %union.rec* %7240 to %struct.word_type*
  %7242 = getelementptr inbounds %struct.word_type, %struct.word_type* %7241, i32 0, i32 0
  %7243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7242, i32 0, i64 1
  %7244 = getelementptr inbounds %struct.LIST, %struct.LIST* %7243, i32 0, i32 1
  store %union.rec* %7239, %union.rec** %7244, align 8
  %7245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7246 = bitcast %union.rec* %7245 to %struct.word_type*
  %7247 = getelementptr inbounds %struct.word_type, %struct.word_type* %7246, i32 0, i32 0
  %7248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7247, i32 0, i64 1
  %7249 = getelementptr inbounds %struct.LIST, %struct.LIST* %7248, i32 0, i32 0
  store %union.rec* %7239, %union.rec** %7249, align 8
  %7250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7251 = bitcast %union.rec* %7250 to %struct.word_type*
  %7252 = getelementptr inbounds %struct.word_type, %struct.word_type* %7251, i32 0, i32 0
  %7253 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7252, i32 0, i64 0
  %7254 = getelementptr inbounds %struct.LIST, %struct.LIST* %7253, i32 0, i32 1
  store %union.rec* %7239, %union.rec** %7254, align 8
  %7255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7256 = bitcast %union.rec* %7255 to %struct.word_type*
  %7257 = getelementptr inbounds %struct.word_type, %struct.word_type* %7256, i32 0, i32 0
  %7258 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7257, i32 0, i64 0
  %7259 = getelementptr inbounds %struct.LIST, %struct.LIST* %7258, i32 0, i32 0
  store %union.rec* %7239, %union.rec** %7259, align 8
  store %union.rec* %7239, %union.rec** @xx_link, align 8
  %7260 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7260, %union.rec** @zz_res, align 8
  %7261 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %7261, %union.rec** @zz_hold, align 8
  %7262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7263 = icmp eq %union.rec* %7262, null
  br i1 %7263, label %7264, label %7266

; <label>:7264                                    ; preds = %7233
  %7265 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7314

; <label>:7266                                    ; preds = %7233
  %7267 = load %union.rec*, %union.rec** @zz_res, align 8
  %7268 = icmp eq %union.rec* %7267, null
  br i1 %7268, label %7269, label %7271

; <label>:7269                                    ; preds = %7266
  %7270 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %7312

; <label>:7271                                    ; preds = %7266
  %7272 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7273 = bitcast %union.rec* %7272 to %struct.word_type*
  %7274 = getelementptr inbounds %struct.word_type, %struct.word_type* %7273, i32 0, i32 0
  %7275 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7274, i32 0, i64 0
  %7276 = getelementptr inbounds %struct.LIST, %struct.LIST* %7275, i32 0, i32 0
  %7277 = load %union.rec*, %union.rec** %7276, align 8
  store %union.rec* %7277, %union.rec** @zz_tmp, align 8
  %7278 = load %union.rec*, %union.rec** @zz_res, align 8
  %7279 = bitcast %union.rec* %7278 to %struct.word_type*
  %7280 = getelementptr inbounds %struct.word_type, %struct.word_type* %7279, i32 0, i32 0
  %7281 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7280, i32 0, i64 0
  %7282 = getelementptr inbounds %struct.LIST, %struct.LIST* %7281, i32 0, i32 0
  %7283 = load %union.rec*, %union.rec** %7282, align 8
  %7284 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7285 = bitcast %union.rec* %7284 to %struct.word_type*
  %7286 = getelementptr inbounds %struct.word_type, %struct.word_type* %7285, i32 0, i32 0
  %7287 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7286, i32 0, i64 0
  %7288 = getelementptr inbounds %struct.LIST, %struct.LIST* %7287, i32 0, i32 0
  store %union.rec* %7283, %union.rec** %7288, align 8
  %7289 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7290 = load %union.rec*, %union.rec** @zz_res, align 8
  %7291 = bitcast %union.rec* %7290 to %struct.word_type*
  %7292 = getelementptr inbounds %struct.word_type, %struct.word_type* %7291, i32 0, i32 0
  %7293 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7292, i32 0, i64 0
  %7294 = getelementptr inbounds %struct.LIST, %struct.LIST* %7293, i32 0, i32 0
  %7295 = load %union.rec*, %union.rec** %7294, align 8
  %7296 = bitcast %union.rec* %7295 to %struct.word_type*
  %7297 = getelementptr inbounds %struct.word_type, %struct.word_type* %7296, i32 0, i32 0
  %7298 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7297, i32 0, i64 0
  %7299 = getelementptr inbounds %struct.LIST, %struct.LIST* %7298, i32 0, i32 1
  store %union.rec* %7289, %union.rec** %7299, align 8
  %7300 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7301 = load %union.rec*, %union.rec** @zz_res, align 8
  %7302 = bitcast %union.rec* %7301 to %struct.word_type*
  %7303 = getelementptr inbounds %struct.word_type, %struct.word_type* %7302, i32 0, i32 0
  %7304 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7303, i32 0, i64 0
  %7305 = getelementptr inbounds %struct.LIST, %struct.LIST* %7304, i32 0, i32 0
  store %union.rec* %7300, %union.rec** %7305, align 8
  %7306 = load %union.rec*, %union.rec** @zz_res, align 8
  %7307 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7308 = bitcast %union.rec* %7307 to %struct.word_type*
  %7309 = getelementptr inbounds %struct.word_type, %struct.word_type* %7308, i32 0, i32 0
  %7310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7309, i32 0, i64 0
  %7311 = getelementptr inbounds %struct.LIST, %struct.LIST* %7310, i32 0, i32 1
  store %union.rec* %7306, %union.rec** %7311, align 8
  br label %7312

; <label>:7312                                    ; preds = %7271, %7269
  %7313 = phi %union.rec* [ %7270, %7269 ], [ %7306, %7271 ]
  br label %7314

; <label>:7314                                    ; preds = %7312, %7264
  %7315 = phi %union.rec* [ %7265, %7264 ], [ %7313, %7312 ]
  %7316 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7316, %union.rec** @zz_res, align 8
  %7317 = load %union.rec*, %union.rec** %z27, align 8
  store %union.rec* %7317, %union.rec** @zz_hold, align 8
  %7318 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7319 = icmp eq %union.rec* %7318, null
  br i1 %7319, label %7320, label %7322

; <label>:7320                                    ; preds = %7314
  %7321 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7370

; <label>:7322                                    ; preds = %7314
  %7323 = load %union.rec*, %union.rec** @zz_res, align 8
  %7324 = icmp eq %union.rec* %7323, null
  br i1 %7324, label %7325, label %7327

; <label>:7325                                    ; preds = %7322
  %7326 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %7368

; <label>:7327                                    ; preds = %7322
  %7328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7329 = bitcast %union.rec* %7328 to %struct.word_type*
  %7330 = getelementptr inbounds %struct.word_type, %struct.word_type* %7329, i32 0, i32 0
  %7331 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7330, i32 0, i64 1
  %7332 = getelementptr inbounds %struct.LIST, %struct.LIST* %7331, i32 0, i32 0
  %7333 = load %union.rec*, %union.rec** %7332, align 8
  store %union.rec* %7333, %union.rec** @zz_tmp, align 8
  %7334 = load %union.rec*, %union.rec** @zz_res, align 8
  %7335 = bitcast %union.rec* %7334 to %struct.word_type*
  %7336 = getelementptr inbounds %struct.word_type, %struct.word_type* %7335, i32 0, i32 0
  %7337 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7336, i32 0, i64 1
  %7338 = getelementptr inbounds %struct.LIST, %struct.LIST* %7337, i32 0, i32 0
  %7339 = load %union.rec*, %union.rec** %7338, align 8
  %7340 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7341 = bitcast %union.rec* %7340 to %struct.word_type*
  %7342 = getelementptr inbounds %struct.word_type, %struct.word_type* %7341, i32 0, i32 0
  %7343 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7342, i32 0, i64 1
  %7344 = getelementptr inbounds %struct.LIST, %struct.LIST* %7343, i32 0, i32 0
  store %union.rec* %7339, %union.rec** %7344, align 8
  %7345 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7346 = load %union.rec*, %union.rec** @zz_res, align 8
  %7347 = bitcast %union.rec* %7346 to %struct.word_type*
  %7348 = getelementptr inbounds %struct.word_type, %struct.word_type* %7347, i32 0, i32 0
  %7349 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7348, i32 0, i64 1
  %7350 = getelementptr inbounds %struct.LIST, %struct.LIST* %7349, i32 0, i32 0
  %7351 = load %union.rec*, %union.rec** %7350, align 8
  %7352 = bitcast %union.rec* %7351 to %struct.word_type*
  %7353 = getelementptr inbounds %struct.word_type, %struct.word_type* %7352, i32 0, i32 0
  %7354 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7353, i32 0, i64 1
  %7355 = getelementptr inbounds %struct.LIST, %struct.LIST* %7354, i32 0, i32 1
  store %union.rec* %7345, %union.rec** %7355, align 8
  %7356 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7357 = load %union.rec*, %union.rec** @zz_res, align 8
  %7358 = bitcast %union.rec* %7357 to %struct.word_type*
  %7359 = getelementptr inbounds %struct.word_type, %struct.word_type* %7358, i32 0, i32 0
  %7360 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7359, i32 0, i64 1
  %7361 = getelementptr inbounds %struct.LIST, %struct.LIST* %7360, i32 0, i32 0
  store %union.rec* %7356, %union.rec** %7361, align 8
  %7362 = load %union.rec*, %union.rec** @zz_res, align 8
  %7363 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7364 = bitcast %union.rec* %7363 to %struct.word_type*
  %7365 = getelementptr inbounds %struct.word_type, %struct.word_type* %7364, i32 0, i32 0
  %7366 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7365, i32 0, i64 1
  %7367 = getelementptr inbounds %struct.LIST, %struct.LIST* %7366, i32 0, i32 1
  store %union.rec* %7362, %union.rec** %7367, align 8
  br label %7368

; <label>:7368                                    ; preds = %7327, %7325
  %7369 = phi %union.rec* [ %7326, %7325 ], [ %7362, %7327 ]
  br label %7370

; <label>:7370                                    ; preds = %7368, %7320
  %7371 = phi %union.rec* [ %7321, %7320 ], [ %7369, %7368 ]
  br label %7372

; <label>:7372                                    ; preds = %7370, %6756
  %7373 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %7374 = zext i8 %7373 to i32
  store i32 %7374, i32* @zz_size, align 4
  %7375 = sext i32 %7374 to i64
  %7376 = icmp uge i64 %7375, 265
  br i1 %7376, label %7377, label %7380

; <label>:7377                                    ; preds = %7372
  %7378 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7379 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %7378)
  br label %7405

; <label>:7380                                    ; preds = %7372
  %7381 = load i32, i32* @zz_size, align 4
  %7382 = sext i32 %7381 to i64
  %7383 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7382
  %7384 = load %union.rec*, %union.rec** %7383, align 8
  %7385 = icmp eq %union.rec* %7384, null
  br i1 %7385, label %7386, label %7390

; <label>:7386                                    ; preds = %7380
  %7387 = load i32, i32* @zz_size, align 4
  %7388 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7389 = call %union.rec* @GetMemory(i32 %7387, %struct.FILE_POS* %7388)
  store %union.rec* %7389, %union.rec** @zz_hold, align 8
  br label %7404

; <label>:7390                                    ; preds = %7380
  %7391 = load i32, i32* @zz_size, align 4
  %7392 = sext i32 %7391 to i64
  %7393 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7392
  %7394 = load %union.rec*, %union.rec** %7393, align 8
  store %union.rec* %7394, %union.rec** @zz_hold, align 8
  store %union.rec* %7394, %union.rec** @zz_hold, align 8
  %7395 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7396 = bitcast %union.rec* %7395 to %struct.word_type*
  %7397 = getelementptr inbounds %struct.word_type, %struct.word_type* %7396, i32 0, i32 0
  %7398 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7397, i32 0, i64 0
  %7399 = getelementptr inbounds %struct.LIST, %struct.LIST* %7398, i32 0, i32 0
  %7400 = load %union.rec*, %union.rec** %7399, align 8
  %7401 = load i32, i32* @zz_size, align 4
  %7402 = sext i32 %7401 to i64
  %7403 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7402
  store %union.rec* %7400, %union.rec** %7403, align 8
  br label %7404

; <label>:7404                                    ; preds = %7390, %7386
  br label %7405

; <label>:7405                                    ; preds = %7404, %7377
  %7406 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7407 = bitcast %union.rec* %7406 to %struct.word_type*
  %7408 = getelementptr inbounds %struct.word_type, %struct.word_type* %7407, i32 0, i32 1
  %7409 = bitcast %union.FIRST_UNION* %7408 to %struct.anon*
  %7410 = getelementptr inbounds %struct.anon, %struct.anon* %7409, i32 0, i32 0
  store i8 0, i8* %7410, align 1
  %7411 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7412 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7413 = bitcast %union.rec* %7412 to %struct.word_type*
  %7414 = getelementptr inbounds %struct.word_type, %struct.word_type* %7413, i32 0, i32 0
  %7415 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7414, i32 0, i64 1
  %7416 = getelementptr inbounds %struct.LIST, %struct.LIST* %7415, i32 0, i32 1
  store %union.rec* %7411, %union.rec** %7416, align 8
  %7417 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7418 = bitcast %union.rec* %7417 to %struct.word_type*
  %7419 = getelementptr inbounds %struct.word_type, %struct.word_type* %7418, i32 0, i32 0
  %7420 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7419, i32 0, i64 1
  %7421 = getelementptr inbounds %struct.LIST, %struct.LIST* %7420, i32 0, i32 0
  store %union.rec* %7411, %union.rec** %7421, align 8
  %7422 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7423 = bitcast %union.rec* %7422 to %struct.word_type*
  %7424 = getelementptr inbounds %struct.word_type, %struct.word_type* %7423, i32 0, i32 0
  %7425 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7424, i32 0, i64 0
  %7426 = getelementptr inbounds %struct.LIST, %struct.LIST* %7425, i32 0, i32 1
  store %union.rec* %7411, %union.rec** %7426, align 8
  %7427 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7428 = bitcast %union.rec* %7427 to %struct.word_type*
  %7429 = getelementptr inbounds %struct.word_type, %struct.word_type* %7428, i32 0, i32 0
  %7430 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7429, i32 0, i64 0
  %7431 = getelementptr inbounds %struct.LIST, %struct.LIST* %7430, i32 0, i32 0
  store %union.rec* %7411, %union.rec** %7431, align 8
  store %union.rec* %7411, %union.rec** @xx_link, align 8
  %7432 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7432, %union.rec** @zz_res, align 8
  %7433 = load %union.rec*, %union.rec** %res, align 8
  %7434 = bitcast %union.rec* %7433 to %struct.word_type*
  %7435 = getelementptr inbounds %struct.word_type, %struct.word_type* %7434, i32 0, i32 0
  %7436 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7435, i32 0, i64 0
  %7437 = getelementptr inbounds %struct.LIST, %struct.LIST* %7436, i32 0, i32 1
  %7438 = load %union.rec*, %union.rec** %7437, align 8
  store %union.rec* %7438, %union.rec** @zz_hold, align 8
  %7439 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7440 = icmp eq %union.rec* %7439, null
  br i1 %7440, label %7441, label %7443

; <label>:7441                                    ; preds = %7405
  %7442 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7491

; <label>:7443                                    ; preds = %7405
  %7444 = load %union.rec*, %union.rec** @zz_res, align 8
  %7445 = icmp eq %union.rec* %7444, null
  br i1 %7445, label %7446, label %7448

; <label>:7446                                    ; preds = %7443
  %7447 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %7489

; <label>:7448                                    ; preds = %7443
  %7449 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7450 = bitcast %union.rec* %7449 to %struct.word_type*
  %7451 = getelementptr inbounds %struct.word_type, %struct.word_type* %7450, i32 0, i32 0
  %7452 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7451, i32 0, i64 0
  %7453 = getelementptr inbounds %struct.LIST, %struct.LIST* %7452, i32 0, i32 0
  %7454 = load %union.rec*, %union.rec** %7453, align 8
  store %union.rec* %7454, %union.rec** @zz_tmp, align 8
  %7455 = load %union.rec*, %union.rec** @zz_res, align 8
  %7456 = bitcast %union.rec* %7455 to %struct.word_type*
  %7457 = getelementptr inbounds %struct.word_type, %struct.word_type* %7456, i32 0, i32 0
  %7458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7457, i32 0, i64 0
  %7459 = getelementptr inbounds %struct.LIST, %struct.LIST* %7458, i32 0, i32 0
  %7460 = load %union.rec*, %union.rec** %7459, align 8
  %7461 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7462 = bitcast %union.rec* %7461 to %struct.word_type*
  %7463 = getelementptr inbounds %struct.word_type, %struct.word_type* %7462, i32 0, i32 0
  %7464 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7463, i32 0, i64 0
  %7465 = getelementptr inbounds %struct.LIST, %struct.LIST* %7464, i32 0, i32 0
  store %union.rec* %7460, %union.rec** %7465, align 8
  %7466 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7467 = load %union.rec*, %union.rec** @zz_res, align 8
  %7468 = bitcast %union.rec* %7467 to %struct.word_type*
  %7469 = getelementptr inbounds %struct.word_type, %struct.word_type* %7468, i32 0, i32 0
  %7470 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7469, i32 0, i64 0
  %7471 = getelementptr inbounds %struct.LIST, %struct.LIST* %7470, i32 0, i32 0
  %7472 = load %union.rec*, %union.rec** %7471, align 8
  %7473 = bitcast %union.rec* %7472 to %struct.word_type*
  %7474 = getelementptr inbounds %struct.word_type, %struct.word_type* %7473, i32 0, i32 0
  %7475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7474, i32 0, i64 0
  %7476 = getelementptr inbounds %struct.LIST, %struct.LIST* %7475, i32 0, i32 1
  store %union.rec* %7466, %union.rec** %7476, align 8
  %7477 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7478 = load %union.rec*, %union.rec** @zz_res, align 8
  %7479 = bitcast %union.rec* %7478 to %struct.word_type*
  %7480 = getelementptr inbounds %struct.word_type, %struct.word_type* %7479, i32 0, i32 0
  %7481 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7480, i32 0, i64 0
  %7482 = getelementptr inbounds %struct.LIST, %struct.LIST* %7481, i32 0, i32 0
  store %union.rec* %7477, %union.rec** %7482, align 8
  %7483 = load %union.rec*, %union.rec** @zz_res, align 8
  %7484 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7485 = bitcast %union.rec* %7484 to %struct.word_type*
  %7486 = getelementptr inbounds %struct.word_type, %struct.word_type* %7485, i32 0, i32 0
  %7487 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7486, i32 0, i64 0
  %7488 = getelementptr inbounds %struct.LIST, %struct.LIST* %7487, i32 0, i32 1
  store %union.rec* %7483, %union.rec** %7488, align 8
  br label %7489

; <label>:7489                                    ; preds = %7448, %7446
  %7490 = phi %union.rec* [ %7447, %7446 ], [ %7483, %7448 ]
  br label %7491

; <label>:7491                                    ; preds = %7489, %7441
  %7492 = phi %union.rec* [ %7442, %7441 ], [ %7490, %7489 ]
  %7493 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7493, %union.rec** @zz_res, align 8
  %7494 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %7494, %union.rec** @zz_hold, align 8
  %7495 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7496 = icmp eq %union.rec* %7495, null
  br i1 %7496, label %7497, label %7499

; <label>:7497                                    ; preds = %7491
  %7498 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7547

; <label>:7499                                    ; preds = %7491
  %7500 = load %union.rec*, %union.rec** @zz_res, align 8
  %7501 = icmp eq %union.rec* %7500, null
  br i1 %7501, label %7502, label %7504

; <label>:7502                                    ; preds = %7499
  %7503 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %7545

; <label>:7504                                    ; preds = %7499
  %7505 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7506 = bitcast %union.rec* %7505 to %struct.word_type*
  %7507 = getelementptr inbounds %struct.word_type, %struct.word_type* %7506, i32 0, i32 0
  %7508 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7507, i32 0, i64 1
  %7509 = getelementptr inbounds %struct.LIST, %struct.LIST* %7508, i32 0, i32 0
  %7510 = load %union.rec*, %union.rec** %7509, align 8
  store %union.rec* %7510, %union.rec** @zz_tmp, align 8
  %7511 = load %union.rec*, %union.rec** @zz_res, align 8
  %7512 = bitcast %union.rec* %7511 to %struct.word_type*
  %7513 = getelementptr inbounds %struct.word_type, %struct.word_type* %7512, i32 0, i32 0
  %7514 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7513, i32 0, i64 1
  %7515 = getelementptr inbounds %struct.LIST, %struct.LIST* %7514, i32 0, i32 0
  %7516 = load %union.rec*, %union.rec** %7515, align 8
  %7517 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7518 = bitcast %union.rec* %7517 to %struct.word_type*
  %7519 = getelementptr inbounds %struct.word_type, %struct.word_type* %7518, i32 0, i32 0
  %7520 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7519, i32 0, i64 1
  %7521 = getelementptr inbounds %struct.LIST, %struct.LIST* %7520, i32 0, i32 0
  store %union.rec* %7516, %union.rec** %7521, align 8
  %7522 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7523 = load %union.rec*, %union.rec** @zz_res, align 8
  %7524 = bitcast %union.rec* %7523 to %struct.word_type*
  %7525 = getelementptr inbounds %struct.word_type, %struct.word_type* %7524, i32 0, i32 0
  %7526 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7525, i32 0, i64 1
  %7527 = getelementptr inbounds %struct.LIST, %struct.LIST* %7526, i32 0, i32 0
  %7528 = load %union.rec*, %union.rec** %7527, align 8
  %7529 = bitcast %union.rec* %7528 to %struct.word_type*
  %7530 = getelementptr inbounds %struct.word_type, %struct.word_type* %7529, i32 0, i32 0
  %7531 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7530, i32 0, i64 1
  %7532 = getelementptr inbounds %struct.LIST, %struct.LIST* %7531, i32 0, i32 1
  store %union.rec* %7522, %union.rec** %7532, align 8
  %7533 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7534 = load %union.rec*, %union.rec** @zz_res, align 8
  %7535 = bitcast %union.rec* %7534 to %struct.word_type*
  %7536 = getelementptr inbounds %struct.word_type, %struct.word_type* %7535, i32 0, i32 0
  %7537 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7536, i32 0, i64 1
  %7538 = getelementptr inbounds %struct.LIST, %struct.LIST* %7537, i32 0, i32 0
  store %union.rec* %7533, %union.rec** %7538, align 8
  %7539 = load %union.rec*, %union.rec** @zz_res, align 8
  %7540 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7541 = bitcast %union.rec* %7540 to %struct.word_type*
  %7542 = getelementptr inbounds %struct.word_type, %struct.word_type* %7541, i32 0, i32 0
  %7543 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7542, i32 0, i64 1
  %7544 = getelementptr inbounds %struct.LIST, %struct.LIST* %7543, i32 0, i32 1
  store %union.rec* %7539, %union.rec** %7544, align 8
  br label %7545

; <label>:7545                                    ; preds = %7504, %7502
  %7546 = phi %union.rec* [ %7503, %7502 ], [ %7539, %7504 ]
  br label %7547

; <label>:7547                                    ; preds = %7545, %7497
  %7548 = phi %union.rec* [ %7498, %7497 ], [ %7546, %7545 ]
  %7549 = load %union.rec*, %union.rec** %llink25, align 8
  store %union.rec* %7549, %union.rec** @xx_link, align 8
  %7550 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7550, %union.rec** @zz_hold, align 8
  %7551 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7552 = bitcast %union.rec* %7551 to %struct.word_type*
  %7553 = getelementptr inbounds %struct.word_type, %struct.word_type* %7552, i32 0, i32 0
  %7554 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7553, i32 0, i64 0
  %7555 = getelementptr inbounds %struct.LIST, %struct.LIST* %7554, i32 0, i32 1
  %7556 = load %union.rec*, %union.rec** %7555, align 8
  %7557 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7558 = icmp eq %union.rec* %7556, %7557
  br i1 %7558, label %7559, label %7560

; <label>:7559                                    ; preds = %7547
  br label %7601

; <label>:7560                                    ; preds = %7547
  %7561 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7562 = bitcast %union.rec* %7561 to %struct.word_type*
  %7563 = getelementptr inbounds %struct.word_type, %struct.word_type* %7562, i32 0, i32 0
  %7564 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7563, i32 0, i64 0
  %7565 = getelementptr inbounds %struct.LIST, %struct.LIST* %7564, i32 0, i32 1
  %7566 = load %union.rec*, %union.rec** %7565, align 8
  store %union.rec* %7566, %union.rec** @zz_res, align 8
  %7567 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7568 = bitcast %union.rec* %7567 to %struct.word_type*
  %7569 = getelementptr inbounds %struct.word_type, %struct.word_type* %7568, i32 0, i32 0
  %7570 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7569, i32 0, i64 0
  %7571 = getelementptr inbounds %struct.LIST, %struct.LIST* %7570, i32 0, i32 0
  %7572 = load %union.rec*, %union.rec** %7571, align 8
  %7573 = load %union.rec*, %union.rec** @zz_res, align 8
  %7574 = bitcast %union.rec* %7573 to %struct.word_type*
  %7575 = getelementptr inbounds %struct.word_type, %struct.word_type* %7574, i32 0, i32 0
  %7576 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7575, i32 0, i64 0
  %7577 = getelementptr inbounds %struct.LIST, %struct.LIST* %7576, i32 0, i32 0
  store %union.rec* %7572, %union.rec** %7577, align 8
  %7578 = load %union.rec*, %union.rec** @zz_res, align 8
  %7579 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7580 = bitcast %union.rec* %7579 to %struct.word_type*
  %7581 = getelementptr inbounds %struct.word_type, %struct.word_type* %7580, i32 0, i32 0
  %7582 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7581, i32 0, i64 0
  %7583 = getelementptr inbounds %struct.LIST, %struct.LIST* %7582, i32 0, i32 0
  %7584 = load %union.rec*, %union.rec** %7583, align 8
  %7585 = bitcast %union.rec* %7584 to %struct.word_type*
  %7586 = getelementptr inbounds %struct.word_type, %struct.word_type* %7585, i32 0, i32 0
  %7587 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7586, i32 0, i64 0
  %7588 = getelementptr inbounds %struct.LIST, %struct.LIST* %7587, i32 0, i32 1
  store %union.rec* %7578, %union.rec** %7588, align 8
  %7589 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7590 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7591 = bitcast %union.rec* %7590 to %struct.word_type*
  %7592 = getelementptr inbounds %struct.word_type, %struct.word_type* %7591, i32 0, i32 0
  %7593 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7592, i32 0, i64 0
  %7594 = getelementptr inbounds %struct.LIST, %struct.LIST* %7593, i32 0, i32 1
  store %union.rec* %7589, %union.rec** %7594, align 8
  %7595 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7596 = bitcast %union.rec* %7595 to %struct.word_type*
  %7597 = getelementptr inbounds %struct.word_type, %struct.word_type* %7596, i32 0, i32 0
  %7598 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7597, i32 0, i64 0
  %7599 = getelementptr inbounds %struct.LIST, %struct.LIST* %7598, i32 0, i32 0
  store %union.rec* %7589, %union.rec** %7599, align 8
  %7600 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7601

; <label>:7601                                    ; preds = %7560, %7559
  %7602 = phi %union.rec* [ null, %7559 ], [ %7600, %7560 ]
  %7603 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7603, %union.rec** @zz_res, align 8
  %7604 = load %union.rec*, %union.rec** %res, align 8
  %7605 = bitcast %union.rec* %7604 to %struct.word_type*
  %7606 = getelementptr inbounds %struct.word_type, %struct.word_type* %7605, i32 0, i32 0
  %7607 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7606, i32 0, i64 0
  %7608 = getelementptr inbounds %struct.LIST, %struct.LIST* %7607, i32 0, i32 1
  %7609 = load %union.rec*, %union.rec** %7608, align 8
  store %union.rec* %7609, %union.rec** @zz_hold, align 8
  %7610 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7611 = icmp eq %union.rec* %7610, null
  br i1 %7611, label %7612, label %7614

; <label>:7612                                    ; preds = %7601
  %7613 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7662

; <label>:7614                                    ; preds = %7601
  %7615 = load %union.rec*, %union.rec** @zz_res, align 8
  %7616 = icmp eq %union.rec* %7615, null
  br i1 %7616, label %7617, label %7619

; <label>:7617                                    ; preds = %7614
  %7618 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %7660

; <label>:7619                                    ; preds = %7614
  %7620 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7621 = bitcast %union.rec* %7620 to %struct.word_type*
  %7622 = getelementptr inbounds %struct.word_type, %struct.word_type* %7621, i32 0, i32 0
  %7623 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7622, i32 0, i64 0
  %7624 = getelementptr inbounds %struct.LIST, %struct.LIST* %7623, i32 0, i32 0
  %7625 = load %union.rec*, %union.rec** %7624, align 8
  store %union.rec* %7625, %union.rec** @zz_tmp, align 8
  %7626 = load %union.rec*, %union.rec** @zz_res, align 8
  %7627 = bitcast %union.rec* %7626 to %struct.word_type*
  %7628 = getelementptr inbounds %struct.word_type, %struct.word_type* %7627, i32 0, i32 0
  %7629 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7628, i32 0, i64 0
  %7630 = getelementptr inbounds %struct.LIST, %struct.LIST* %7629, i32 0, i32 0
  %7631 = load %union.rec*, %union.rec** %7630, align 8
  %7632 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7633 = bitcast %union.rec* %7632 to %struct.word_type*
  %7634 = getelementptr inbounds %struct.word_type, %struct.word_type* %7633, i32 0, i32 0
  %7635 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7634, i32 0, i64 0
  %7636 = getelementptr inbounds %struct.LIST, %struct.LIST* %7635, i32 0, i32 0
  store %union.rec* %7631, %union.rec** %7636, align 8
  %7637 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7638 = load %union.rec*, %union.rec** @zz_res, align 8
  %7639 = bitcast %union.rec* %7638 to %struct.word_type*
  %7640 = getelementptr inbounds %struct.word_type, %struct.word_type* %7639, i32 0, i32 0
  %7641 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7640, i32 0, i64 0
  %7642 = getelementptr inbounds %struct.LIST, %struct.LIST* %7641, i32 0, i32 0
  %7643 = load %union.rec*, %union.rec** %7642, align 8
  %7644 = bitcast %union.rec* %7643 to %struct.word_type*
  %7645 = getelementptr inbounds %struct.word_type, %struct.word_type* %7644, i32 0, i32 0
  %7646 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7645, i32 0, i64 0
  %7647 = getelementptr inbounds %struct.LIST, %struct.LIST* %7646, i32 0, i32 1
  store %union.rec* %7637, %union.rec** %7647, align 8
  %7648 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7649 = load %union.rec*, %union.rec** @zz_res, align 8
  %7650 = bitcast %union.rec* %7649 to %struct.word_type*
  %7651 = getelementptr inbounds %struct.word_type, %struct.word_type* %7650, i32 0, i32 0
  %7652 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7651, i32 0, i64 0
  %7653 = getelementptr inbounds %struct.LIST, %struct.LIST* %7652, i32 0, i32 0
  store %union.rec* %7648, %union.rec** %7653, align 8
  %7654 = load %union.rec*, %union.rec** @zz_res, align 8
  %7655 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %7656 = bitcast %union.rec* %7655 to %struct.word_type*
  %7657 = getelementptr inbounds %struct.word_type, %struct.word_type* %7656, i32 0, i32 0
  %7658 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7657, i32 0, i64 0
  %7659 = getelementptr inbounds %struct.LIST, %struct.LIST* %7658, i32 0, i32 1
  store %union.rec* %7654, %union.rec** %7659, align 8
  br label %7660

; <label>:7660                                    ; preds = %7619, %7617
  %7661 = phi %union.rec* [ %7618, %7617 ], [ %7654, %7619 ]
  br label %7662

; <label>:7662                                    ; preds = %7660, %7612
  %7663 = phi %union.rec* [ %7613, %7612 ], [ %7661, %7660 ]
  %7664 = load %union.rec*, %union.rec** %lgap24, align 8
  %7665 = bitcast %union.rec* %7664 to %struct.word_type*
  %7666 = getelementptr inbounds %struct.word_type, %struct.word_type* %7665, i32 0, i32 2
  %7667 = bitcast %union.SECOND_UNION* %7666 to %struct.anon.0*
  %7668 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %7667, i32 0, i32 1
  store i8 0, i8* %7668, align 1
  %7669 = load %union.rec*, %union.rec** %lgap24, align 8
  %7670 = bitcast %union.rec* %7669 to %struct.word_type*
  %7671 = getelementptr inbounds %struct.word_type, %struct.word_type* %7670, i32 0, i32 2
  %7672 = bitcast %union.SECOND_UNION* %7671 to %struct.anon.0*
  %7673 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %7672, i32 0, i32 2
  store i8 1, i8* %7673, align 1
  %7674 = load %union.rec*, %union.rec** %2, align 8
  %7675 = bitcast %union.rec* %7674 to %struct.closure_type*
  %7676 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7675, i32 0, i32 4
  %7677 = bitcast %union.FOURTH_UNION* %7676 to %struct.STYLE*
  %7678 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7677, i32 0, i32 0
  %7679 = bitcast %union.anon* %7678 to %struct.GAP*
  %7680 = bitcast %struct.GAP* %7679 to i16*
  %7681 = load i16, i16* %7680, align 4
  %7682 = lshr i16 %7681, 7
  %7683 = and i16 %7682, 1
  %7684 = zext i16 %7683 to i32
  %7685 = load %union.rec*, %union.rec** %lgap24, align 8
  %7686 = bitcast %union.rec* %7685 to %struct.gapobj_type*
  %7687 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %7686, i32 0, i32 3
  %7688 = bitcast %struct.GAP* %7687 to i16*
  %7689 = trunc i32 %7684 to i16
  %7690 = load i16, i16* %7688, align 4
  %7691 = and i16 %7689, 1
  %7692 = shl i16 %7691, 7
  %7693 = and i16 %7690, -129
  %7694 = or i16 %7693, %7692
  store i16 %7694, i16* %7688, align 4
  %7695 = zext i16 %7691 to i32
  %7696 = load %union.rec*, %union.rec** %2, align 8
  %7697 = bitcast %union.rec* %7696 to %struct.closure_type*
  %7698 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7697, i32 0, i32 4
  %7699 = bitcast %union.FOURTH_UNION* %7698 to %struct.STYLE*
  %7700 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7699, i32 0, i32 0
  %7701 = bitcast %union.anon* %7700 to %struct.GAP*
  %7702 = bitcast %struct.GAP* %7701 to i16*
  %7703 = load i16, i16* %7702, align 4
  %7704 = lshr i16 %7703, 8
  %7705 = and i16 %7704, 1
  %7706 = zext i16 %7705 to i32
  %7707 = load %union.rec*, %union.rec** %lgap24, align 8
  %7708 = bitcast %union.rec* %7707 to %struct.gapobj_type*
  %7709 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %7708, i32 0, i32 3
  %7710 = bitcast %struct.GAP* %7709 to i16*
  %7711 = trunc i32 %7706 to i16
  %7712 = load i16, i16* %7710, align 4
  %7713 = and i16 %7711, 1
  %7714 = shl i16 %7713, 8
  %7715 = and i16 %7712, -257
  %7716 = or i16 %7715, %7714
  store i16 %7716, i16* %7710, align 4
  %7717 = zext i16 %7713 to i32
  %7718 = load %union.rec*, %union.rec** %2, align 8
  %7719 = bitcast %union.rec* %7718 to %struct.closure_type*
  %7720 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7719, i32 0, i32 4
  %7721 = bitcast %union.FOURTH_UNION* %7720 to %struct.STYLE*
  %7722 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7721, i32 0, i32 0
  %7723 = bitcast %union.anon* %7722 to %struct.GAP*
  %7724 = bitcast %struct.GAP* %7723 to i16*
  %7725 = load i16, i16* %7724, align 4
  %7726 = lshr i16 %7725, 9
  %7727 = and i16 %7726, 1
  %7728 = zext i16 %7727 to i32
  %7729 = load %union.rec*, %union.rec** %lgap24, align 8
  %7730 = bitcast %union.rec* %7729 to %struct.gapobj_type*
  %7731 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %7730, i32 0, i32 3
  %7732 = bitcast %struct.GAP* %7731 to i16*
  %7733 = trunc i32 %7728 to i16
  %7734 = load i16, i16* %7732, align 4
  %7735 = and i16 %7733, 1
  %7736 = shl i16 %7735, 9
  %7737 = and i16 %7734, -513
  %7738 = or i16 %7737, %7736
  store i16 %7738, i16* %7732, align 4
  %7739 = zext i16 %7735 to i32
  %7740 = load %union.rec*, %union.rec** %2, align 8
  %7741 = bitcast %union.rec* %7740 to %struct.closure_type*
  %7742 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7741, i32 0, i32 4
  %7743 = bitcast %union.FOURTH_UNION* %7742 to %struct.STYLE*
  %7744 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7743, i32 0, i32 0
  %7745 = bitcast %union.anon* %7744 to %struct.GAP*
  %7746 = bitcast %struct.GAP* %7745 to i16*
  %7747 = load i16, i16* %7746, align 4
  %7748 = lshr i16 %7747, 10
  %7749 = and i16 %7748, 7
  %7750 = zext i16 %7749 to i32
  %7751 = load %union.rec*, %union.rec** %lgap24, align 8
  %7752 = bitcast %union.rec* %7751 to %struct.gapobj_type*
  %7753 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %7752, i32 0, i32 3
  %7754 = bitcast %struct.GAP* %7753 to i16*
  %7755 = trunc i32 %7750 to i16
  %7756 = load i16, i16* %7754, align 4
  %7757 = and i16 %7755, 7
  %7758 = shl i16 %7757, 10
  %7759 = and i16 %7756, -7169
  %7760 = or i16 %7759, %7758
  store i16 %7760, i16* %7754, align 4
  %7761 = zext i16 %7757 to i32
  %7762 = load %union.rec*, %union.rec** %2, align 8
  %7763 = bitcast %union.rec* %7762 to %struct.closure_type*
  %7764 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7763, i32 0, i32 4
  %7765 = bitcast %union.FOURTH_UNION* %7764 to %struct.STYLE*
  %7766 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7765, i32 0, i32 0
  %7767 = bitcast %union.anon* %7766 to %struct.GAP*
  %7768 = bitcast %struct.GAP* %7767 to i16*
  %7769 = load i16, i16* %7768, align 4
  %7770 = lshr i16 %7769, 13
  %7771 = zext i16 %7770 to i32
  %7772 = load %union.rec*, %union.rec** %lgap24, align 8
  %7773 = bitcast %union.rec* %7772 to %struct.gapobj_type*
  %7774 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %7773, i32 0, i32 3
  %7775 = bitcast %struct.GAP* %7774 to i16*
  %7776 = trunc i32 %7771 to i16
  %7777 = load i16, i16* %7775, align 4
  %7778 = and i16 %7776, 7
  %7779 = shl i16 %7778, 13
  %7780 = and i16 %7777, 8191
  %7781 = or i16 %7780, %7779
  store i16 %7781, i16* %7775, align 4
  %7782 = zext i16 %7778 to i32
  %7783 = load %union.rec*, %union.rec** %2, align 8
  %7784 = bitcast %union.rec* %7783 to %struct.closure_type*
  %7785 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %7784, i32 0, i32 4
  %7786 = bitcast %union.FOURTH_UNION* %7785 to %struct.STYLE*
  %7787 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7786, i32 0, i32 0
  %7788 = bitcast %union.anon* %7787 to %struct.GAP*
  %7789 = getelementptr inbounds %struct.GAP, %struct.GAP* %7788, i32 0, i32 1
  %7790 = load i16, i16* %7789, align 2
  %7791 = load %union.rec*, %union.rec** %lgap24, align 8
  %7792 = bitcast %union.rec* %7791 to %struct.gapobj_type*
  %7793 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %7792, i32 0, i32 3
  %7794 = getelementptr inbounds %struct.GAP, %struct.GAP* %7793, i32 0, i32 1
  store i16 %7790, i16* %7794, align 2
  %7795 = load %union.rec*, %union.rec** %lgap24, align 8
  %7796 = bitcast %union.rec* %7795 to %struct.word_type*
  %7797 = getelementptr inbounds %struct.word_type, %struct.word_type* %7796, i32 0, i32 0
  %7798 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7797, i32 0, i64 0
  %7799 = getelementptr inbounds %struct.LIST, %struct.LIST* %7798, i32 0, i32 1
  %7800 = load %union.rec*, %union.rec** %7799, align 8
  %7801 = load %union.rec*, %union.rec** %lgap24, align 8
  %7802 = icmp ne %union.rec* %7800, %7801
  br i1 %7802, label %7803, label %7981

; <label>:7803                                    ; preds = %7662
  %7804 = load %union.rec*, %union.rec** %lgap24, align 8
  %7805 = bitcast %union.rec* %7804 to %struct.word_type*
  %7806 = getelementptr inbounds %struct.word_type, %struct.word_type* %7805, i32 0, i32 0
  %7807 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7806, i32 0, i64 0
  %7808 = getelementptr inbounds %struct.LIST, %struct.LIST* %7807, i32 0, i32 1
  %7809 = load %union.rec*, %union.rec** %7808, align 8
  store %union.rec* %7809, %union.rec** @xx_link, align 8
  %7810 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7810, %union.rec** @zz_hold, align 8
  %7811 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7812 = bitcast %union.rec* %7811 to %struct.word_type*
  %7813 = getelementptr inbounds %struct.word_type, %struct.word_type* %7812, i32 0, i32 0
  %7814 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7813, i32 0, i64 1
  %7815 = getelementptr inbounds %struct.LIST, %struct.LIST* %7814, i32 0, i32 1
  %7816 = load %union.rec*, %union.rec** %7815, align 8
  %7817 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7818 = icmp eq %union.rec* %7816, %7817
  br i1 %7818, label %7819, label %7820

; <label>:7819                                    ; preds = %7803
  br label %7861

; <label>:7820                                    ; preds = %7803
  %7821 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7822 = bitcast %union.rec* %7821 to %struct.word_type*
  %7823 = getelementptr inbounds %struct.word_type, %struct.word_type* %7822, i32 0, i32 0
  %7824 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7823, i32 0, i64 1
  %7825 = getelementptr inbounds %struct.LIST, %struct.LIST* %7824, i32 0, i32 1
  %7826 = load %union.rec*, %union.rec** %7825, align 8
  store %union.rec* %7826, %union.rec** @zz_res, align 8
  %7827 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7828 = bitcast %union.rec* %7827 to %struct.word_type*
  %7829 = getelementptr inbounds %struct.word_type, %struct.word_type* %7828, i32 0, i32 0
  %7830 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7829, i32 0, i64 1
  %7831 = getelementptr inbounds %struct.LIST, %struct.LIST* %7830, i32 0, i32 0
  %7832 = load %union.rec*, %union.rec** %7831, align 8
  %7833 = load %union.rec*, %union.rec** @zz_res, align 8
  %7834 = bitcast %union.rec* %7833 to %struct.word_type*
  %7835 = getelementptr inbounds %struct.word_type, %struct.word_type* %7834, i32 0, i32 0
  %7836 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7835, i32 0, i64 1
  %7837 = getelementptr inbounds %struct.LIST, %struct.LIST* %7836, i32 0, i32 0
  store %union.rec* %7832, %union.rec** %7837, align 8
  %7838 = load %union.rec*, %union.rec** @zz_res, align 8
  %7839 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7840 = bitcast %union.rec* %7839 to %struct.word_type*
  %7841 = getelementptr inbounds %struct.word_type, %struct.word_type* %7840, i32 0, i32 0
  %7842 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7841, i32 0, i64 1
  %7843 = getelementptr inbounds %struct.LIST, %struct.LIST* %7842, i32 0, i32 0
  %7844 = load %union.rec*, %union.rec** %7843, align 8
  %7845 = bitcast %union.rec* %7844 to %struct.word_type*
  %7846 = getelementptr inbounds %struct.word_type, %struct.word_type* %7845, i32 0, i32 0
  %7847 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7846, i32 0, i64 1
  %7848 = getelementptr inbounds %struct.LIST, %struct.LIST* %7847, i32 0, i32 1
  store %union.rec* %7838, %union.rec** %7848, align 8
  %7849 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7850 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7851 = bitcast %union.rec* %7850 to %struct.word_type*
  %7852 = getelementptr inbounds %struct.word_type, %struct.word_type* %7851, i32 0, i32 0
  %7853 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7852, i32 0, i64 1
  %7854 = getelementptr inbounds %struct.LIST, %struct.LIST* %7853, i32 0, i32 1
  store %union.rec* %7849, %union.rec** %7854, align 8
  %7855 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7856 = bitcast %union.rec* %7855 to %struct.word_type*
  %7857 = getelementptr inbounds %struct.word_type, %struct.word_type* %7856, i32 0, i32 0
  %7858 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7857, i32 0, i64 1
  %7859 = getelementptr inbounds %struct.LIST, %struct.LIST* %7858, i32 0, i32 0
  store %union.rec* %7849, %union.rec** %7859, align 8
  %7860 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7861

; <label>:7861                                    ; preds = %7820, %7819
  %7862 = phi %union.rec* [ null, %7819 ], [ %7860, %7820 ]
  store %union.rec* %7862, %union.rec** @xx_tmp, align 8
  %7863 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7863, %union.rec** @zz_hold, align 8
  %7864 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7865 = bitcast %union.rec* %7864 to %struct.word_type*
  %7866 = getelementptr inbounds %struct.word_type, %struct.word_type* %7865, i32 0, i32 0
  %7867 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7866, i32 0, i64 0
  %7868 = getelementptr inbounds %struct.LIST, %struct.LIST* %7867, i32 0, i32 1
  %7869 = load %union.rec*, %union.rec** %7868, align 8
  %7870 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7871 = icmp eq %union.rec* %7869, %7870
  br i1 %7871, label %7872, label %7873

; <label>:7872                                    ; preds = %7861
  br label %7914

; <label>:7873                                    ; preds = %7861
  %7874 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7875 = bitcast %union.rec* %7874 to %struct.word_type*
  %7876 = getelementptr inbounds %struct.word_type, %struct.word_type* %7875, i32 0, i32 0
  %7877 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7876, i32 0, i64 0
  %7878 = getelementptr inbounds %struct.LIST, %struct.LIST* %7877, i32 0, i32 1
  %7879 = load %union.rec*, %union.rec** %7878, align 8
  store %union.rec* %7879, %union.rec** @zz_res, align 8
  %7880 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7881 = bitcast %union.rec* %7880 to %struct.word_type*
  %7882 = getelementptr inbounds %struct.word_type, %struct.word_type* %7881, i32 0, i32 0
  %7883 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7882, i32 0, i64 0
  %7884 = getelementptr inbounds %struct.LIST, %struct.LIST* %7883, i32 0, i32 0
  %7885 = load %union.rec*, %union.rec** %7884, align 8
  %7886 = load %union.rec*, %union.rec** @zz_res, align 8
  %7887 = bitcast %union.rec* %7886 to %struct.word_type*
  %7888 = getelementptr inbounds %struct.word_type, %struct.word_type* %7887, i32 0, i32 0
  %7889 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7888, i32 0, i64 0
  %7890 = getelementptr inbounds %struct.LIST, %struct.LIST* %7889, i32 0, i32 0
  store %union.rec* %7885, %union.rec** %7890, align 8
  %7891 = load %union.rec*, %union.rec** @zz_res, align 8
  %7892 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7893 = bitcast %union.rec* %7892 to %struct.word_type*
  %7894 = getelementptr inbounds %struct.word_type, %struct.word_type* %7893, i32 0, i32 0
  %7895 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7894, i32 0, i64 0
  %7896 = getelementptr inbounds %struct.LIST, %struct.LIST* %7895, i32 0, i32 0
  %7897 = load %union.rec*, %union.rec** %7896, align 8
  %7898 = bitcast %union.rec* %7897 to %struct.word_type*
  %7899 = getelementptr inbounds %struct.word_type, %struct.word_type* %7898, i32 0, i32 0
  %7900 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7899, i32 0, i64 0
  %7901 = getelementptr inbounds %struct.LIST, %struct.LIST* %7900, i32 0, i32 1
  store %union.rec* %7891, %union.rec** %7901, align 8
  %7902 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7903 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7904 = bitcast %union.rec* %7903 to %struct.word_type*
  %7905 = getelementptr inbounds %struct.word_type, %struct.word_type* %7904, i32 0, i32 0
  %7906 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7905, i32 0, i64 0
  %7907 = getelementptr inbounds %struct.LIST, %struct.LIST* %7906, i32 0, i32 1
  store %union.rec* %7902, %union.rec** %7907, align 8
  %7908 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7909 = bitcast %union.rec* %7908 to %struct.word_type*
  %7910 = getelementptr inbounds %struct.word_type, %struct.word_type* %7909, i32 0, i32 0
  %7911 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7910, i32 0, i64 0
  %7912 = getelementptr inbounds %struct.LIST, %struct.LIST* %7911, i32 0, i32 0
  store %union.rec* %7902, %union.rec** %7912, align 8
  %7913 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %7914

; <label>:7914                                    ; preds = %7873, %7872
  %7915 = phi %union.rec* [ null, %7872 ], [ %7913, %7873 ]
  %7916 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %7916, %union.rec** @zz_hold, align 8
  %7917 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %7917, %union.rec** @zz_hold, align 8
  %7918 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7919 = bitcast %union.rec* %7918 to %struct.word_type*
  %7920 = getelementptr inbounds %struct.word_type, %struct.word_type* %7919, i32 0, i32 1
  %7921 = bitcast %union.FIRST_UNION* %7920 to %struct.anon*
  %7922 = getelementptr inbounds %struct.anon, %struct.anon* %7921, i32 0, i32 0
  %7923 = load i8, i8* %7922, align 1
  %7924 = zext i8 %7923 to i32
  %7925 = icmp eq i32 %7924, 11
  br i1 %7925, label %7935, label %7926

; <label>:7926                                    ; preds = %7914
  %7927 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7928 = bitcast %union.rec* %7927 to %struct.word_type*
  %7929 = getelementptr inbounds %struct.word_type, %struct.word_type* %7928, i32 0, i32 1
  %7930 = bitcast %union.FIRST_UNION* %7929 to %struct.anon*
  %7931 = getelementptr inbounds %struct.anon, %struct.anon* %7930, i32 0, i32 0
  %7932 = load i8, i8* %7931, align 1
  %7933 = zext i8 %7932 to i32
  %7934 = icmp eq i32 %7933, 12
  br i1 %7934, label %7935, label %7943

; <label>:7935                                    ; preds = %7926, %7914
  %7936 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7937 = bitcast %union.rec* %7936 to %struct.word_type*
  %7938 = getelementptr inbounds %struct.word_type, %struct.word_type* %7937, i32 0, i32 1
  %7939 = bitcast %union.FIRST_UNION* %7938 to %struct.anon*
  %7940 = getelementptr inbounds %struct.anon, %struct.anon* %7939, i32 0, i32 1
  %7941 = load i8, i8* %7940, align 1
  %7942 = zext i8 %7941 to i32
  br label %7954

; <label>:7943                                    ; preds = %7926
  %7944 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7945 = bitcast %union.rec* %7944 to %struct.word_type*
  %7946 = getelementptr inbounds %struct.word_type, %struct.word_type* %7945, i32 0, i32 1
  %7947 = bitcast %union.FIRST_UNION* %7946 to %struct.anon*
  %7948 = getelementptr inbounds %struct.anon, %struct.anon* %7947, i32 0, i32 0
  %7949 = load i8, i8* %7948, align 1
  %7950 = zext i8 %7949 to i64
  %7951 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %7950
  %7952 = load i8, i8* %7951, align 1
  %7953 = zext i8 %7952 to i32
  br label %7954

; <label>:7954                                    ; preds = %7943, %7935
  %7955 = phi i32 [ %7942, %7935 ], [ %7953, %7943 ]
  store i32 %7955, i32* @zz_size, align 4
  %7956 = load i32, i32* @zz_size, align 4
  %7957 = sext i32 %7956 to i64
  %7958 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7957
  %7959 = load %union.rec*, %union.rec** %7958, align 8
  %7960 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7961 = bitcast %union.rec* %7960 to %struct.word_type*
  %7962 = getelementptr inbounds %struct.word_type, %struct.word_type* %7961, i32 0, i32 0
  %7963 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7962, i32 0, i64 0
  %7964 = getelementptr inbounds %struct.LIST, %struct.LIST* %7963, i32 0, i32 0
  store %union.rec* %7959, %union.rec** %7964, align 8
  %7965 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7966 = load i32, i32* @zz_size, align 4
  %7967 = sext i32 %7966 to i64
  %7968 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7967
  store %union.rec* %7965, %union.rec** %7968, align 8
  %7969 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %7970 = bitcast %union.rec* %7969 to %struct.word_type*
  %7971 = getelementptr inbounds %struct.word_type, %struct.word_type* %7970, i32 0, i32 0
  %7972 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7971, i32 0, i64 1
  %7973 = getelementptr inbounds %struct.LIST, %struct.LIST* %7972, i32 0, i32 1
  %7974 = load %union.rec*, %union.rec** %7973, align 8
  %7975 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %7976 = icmp eq %union.rec* %7974, %7975
  br i1 %7976, label %7977, label %7980

; <label>:7977                                    ; preds = %7954
  %7978 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %7979 = call i32 @DisposeObject(%union.rec* %7978)
  br label %7980

; <label>:7980                                    ; preds = %7977, %7954
  br label %7981

; <label>:7981                                    ; preds = %7980, %7662
  %7982 = load %union.rec*, %union.rec** %lgap24, align 8
  %7983 = bitcast %union.rec* %7982 to %struct.gapobj_type*
  %7984 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %7983, i32 0, i32 7
  %7985 = load %union.rec*, %union.rec** %7984, align 8
  store %union.rec* %7985, %union.rec** %llink25, align 8
  br label %4992

; <label>:7986                                    ; preds = %4992
  %7987 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %7988 = zext i8 %7987 to i32
  store i32 %7988, i32* @zz_size, align 4
  %7989 = sext i32 %7988 to i64
  %7990 = icmp uge i64 %7989, 265
  br i1 %7990, label %7991, label %7994

; <label>:7991                                    ; preds = %7986
  %7992 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7993 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %7992)
  br label %8019

; <label>:7994                                    ; preds = %7986
  %7995 = load i32, i32* @zz_size, align 4
  %7996 = sext i32 %7995 to i64
  %7997 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %7996
  %7998 = load %union.rec*, %union.rec** %7997, align 8
  %7999 = icmp eq %union.rec* %7998, null
  br i1 %7999, label %8000, label %8004

; <label>:8000                                    ; preds = %7994
  %8001 = load i32, i32* @zz_size, align 4
  %8002 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %8003 = call %union.rec* @GetMemory(i32 %8001, %struct.FILE_POS* %8002)
  store %union.rec* %8003, %union.rec** @zz_hold, align 8
  br label %8018

; <label>:8004                                    ; preds = %7994
  %8005 = load i32, i32* @zz_size, align 4
  %8006 = sext i32 %8005 to i64
  %8007 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8006
  %8008 = load %union.rec*, %union.rec** %8007, align 8
  store %union.rec* %8008, %union.rec** @zz_hold, align 8
  store %union.rec* %8008, %union.rec** @zz_hold, align 8
  %8009 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8010 = bitcast %union.rec* %8009 to %struct.word_type*
  %8011 = getelementptr inbounds %struct.word_type, %struct.word_type* %8010, i32 0, i32 0
  %8012 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8011, i32 0, i64 0
  %8013 = getelementptr inbounds %struct.LIST, %struct.LIST* %8012, i32 0, i32 0
  %8014 = load %union.rec*, %union.rec** %8013, align 8
  %8015 = load i32, i32* @zz_size, align 4
  %8016 = sext i32 %8015 to i64
  %8017 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8016
  store %union.rec* %8014, %union.rec** %8017, align 8
  br label %8018

; <label>:8018                                    ; preds = %8004, %8000
  br label %8019

; <label>:8019                                    ; preds = %8018, %7991
  %8020 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8021 = bitcast %union.rec* %8020 to %struct.word_type*
  %8022 = getelementptr inbounds %struct.word_type, %struct.word_type* %8021, i32 0, i32 1
  %8023 = bitcast %union.FIRST_UNION* %8022 to %struct.anon*
  %8024 = getelementptr inbounds %struct.anon, %struct.anon* %8023, i32 0, i32 0
  store i8 0, i8* %8024, align 1
  %8025 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8026 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8027 = bitcast %union.rec* %8026 to %struct.word_type*
  %8028 = getelementptr inbounds %struct.word_type, %struct.word_type* %8027, i32 0, i32 0
  %8029 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8028, i32 0, i64 1
  %8030 = getelementptr inbounds %struct.LIST, %struct.LIST* %8029, i32 0, i32 1
  store %union.rec* %8025, %union.rec** %8030, align 8
  %8031 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8032 = bitcast %union.rec* %8031 to %struct.word_type*
  %8033 = getelementptr inbounds %struct.word_type, %struct.word_type* %8032, i32 0, i32 0
  %8034 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8033, i32 0, i64 1
  %8035 = getelementptr inbounds %struct.LIST, %struct.LIST* %8034, i32 0, i32 0
  store %union.rec* %8025, %union.rec** %8035, align 8
  %8036 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8037 = bitcast %union.rec* %8036 to %struct.word_type*
  %8038 = getelementptr inbounds %struct.word_type, %struct.word_type* %8037, i32 0, i32 0
  %8039 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8038, i32 0, i64 0
  %8040 = getelementptr inbounds %struct.LIST, %struct.LIST* %8039, i32 0, i32 1
  store %union.rec* %8025, %union.rec** %8040, align 8
  %8041 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8042 = bitcast %union.rec* %8041 to %struct.word_type*
  %8043 = getelementptr inbounds %struct.word_type, %struct.word_type* %8042, i32 0, i32 0
  %8044 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8043, i32 0, i64 0
  %8045 = getelementptr inbounds %struct.LIST, %struct.LIST* %8044, i32 0, i32 0
  store %union.rec* %8025, %union.rec** %8045, align 8
  store %union.rec* %8025, %union.rec** @xx_link, align 8
  %8046 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8046, %union.rec** @zz_res, align 8
  %8047 = load %union.rec*, %union.rec** %res, align 8
  %8048 = bitcast %union.rec* %8047 to %struct.word_type*
  %8049 = getelementptr inbounds %struct.word_type, %struct.word_type* %8048, i32 0, i32 0
  %8050 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8049, i32 0, i64 0
  %8051 = getelementptr inbounds %struct.LIST, %struct.LIST* %8050, i32 0, i32 1
  %8052 = load %union.rec*, %union.rec** %8051, align 8
  store %union.rec* %8052, %union.rec** @zz_hold, align 8
  %8053 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8054 = icmp eq %union.rec* %8053, null
  br i1 %8054, label %8055, label %8057

; <label>:8055                                    ; preds = %8019
  %8056 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %8105

; <label>:8057                                    ; preds = %8019
  %8058 = load %union.rec*, %union.rec** @zz_res, align 8
  %8059 = icmp eq %union.rec* %8058, null
  br i1 %8059, label %8060, label %8062

; <label>:8060                                    ; preds = %8057
  %8061 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %8103

; <label>:8062                                    ; preds = %8057
  %8063 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8064 = bitcast %union.rec* %8063 to %struct.word_type*
  %8065 = getelementptr inbounds %struct.word_type, %struct.word_type* %8064, i32 0, i32 0
  %8066 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8065, i32 0, i64 0
  %8067 = getelementptr inbounds %struct.LIST, %struct.LIST* %8066, i32 0, i32 0
  %8068 = load %union.rec*, %union.rec** %8067, align 8
  store %union.rec* %8068, %union.rec** @zz_tmp, align 8
  %8069 = load %union.rec*, %union.rec** @zz_res, align 8
  %8070 = bitcast %union.rec* %8069 to %struct.word_type*
  %8071 = getelementptr inbounds %struct.word_type, %struct.word_type* %8070, i32 0, i32 0
  %8072 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8071, i32 0, i64 0
  %8073 = getelementptr inbounds %struct.LIST, %struct.LIST* %8072, i32 0, i32 0
  %8074 = load %union.rec*, %union.rec** %8073, align 8
  %8075 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8076 = bitcast %union.rec* %8075 to %struct.word_type*
  %8077 = getelementptr inbounds %struct.word_type, %struct.word_type* %8076, i32 0, i32 0
  %8078 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8077, i32 0, i64 0
  %8079 = getelementptr inbounds %struct.LIST, %struct.LIST* %8078, i32 0, i32 0
  store %union.rec* %8074, %union.rec** %8079, align 8
  %8080 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8081 = load %union.rec*, %union.rec** @zz_res, align 8
  %8082 = bitcast %union.rec* %8081 to %struct.word_type*
  %8083 = getelementptr inbounds %struct.word_type, %struct.word_type* %8082, i32 0, i32 0
  %8084 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8083, i32 0, i64 0
  %8085 = getelementptr inbounds %struct.LIST, %struct.LIST* %8084, i32 0, i32 0
  %8086 = load %union.rec*, %union.rec** %8085, align 8
  %8087 = bitcast %union.rec* %8086 to %struct.word_type*
  %8088 = getelementptr inbounds %struct.word_type, %struct.word_type* %8087, i32 0, i32 0
  %8089 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8088, i32 0, i64 0
  %8090 = getelementptr inbounds %struct.LIST, %struct.LIST* %8089, i32 0, i32 1
  store %union.rec* %8080, %union.rec** %8090, align 8
  %8091 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %8092 = load %union.rec*, %union.rec** @zz_res, align 8
  %8093 = bitcast %union.rec* %8092 to %struct.word_type*
  %8094 = getelementptr inbounds %struct.word_type, %struct.word_type* %8093, i32 0, i32 0
  %8095 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8094, i32 0, i64 0
  %8096 = getelementptr inbounds %struct.LIST, %struct.LIST* %8095, i32 0, i32 0
  store %union.rec* %8091, %union.rec** %8096, align 8
  %8097 = load %union.rec*, %union.rec** @zz_res, align 8
  %8098 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %8099 = bitcast %union.rec* %8098 to %struct.word_type*
  %8100 = getelementptr inbounds %struct.word_type, %struct.word_type* %8099, i32 0, i32 0
  %8101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8100, i32 0, i64 0
  %8102 = getelementptr inbounds %struct.LIST, %struct.LIST* %8101, i32 0, i32 1
  store %union.rec* %8097, %union.rec** %8102, align 8
  br label %8103

; <label>:8103                                    ; preds = %8062, %8060
  %8104 = phi %union.rec* [ %8061, %8060 ], [ %8097, %8062 ]
  br label %8105

; <label>:8105                                    ; preds = %8103, %8055
  %8106 = phi %union.rec* [ %8056, %8055 ], [ %8104, %8103 ]
  %8107 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8107, %union.rec** @zz_res, align 8
  %8108 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %8108, %union.rec** @zz_hold, align 8
  %8109 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8110 = icmp eq %union.rec* %8109, null
  br i1 %8110, label %8111, label %8113

; <label>:8111                                    ; preds = %8105
  %8112 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %8161

; <label>:8113                                    ; preds = %8105
  %8114 = load %union.rec*, %union.rec** @zz_res, align 8
  %8115 = icmp eq %union.rec* %8114, null
  br i1 %8115, label %8116, label %8118

; <label>:8116                                    ; preds = %8113
  %8117 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %8159

; <label>:8118                                    ; preds = %8113
  %8119 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8120 = bitcast %union.rec* %8119 to %struct.word_type*
  %8121 = getelementptr inbounds %struct.word_type, %struct.word_type* %8120, i32 0, i32 0
  %8122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8121, i32 0, i64 1
  %8123 = getelementptr inbounds %struct.LIST, %struct.LIST* %8122, i32 0, i32 0
  %8124 = load %union.rec*, %union.rec** %8123, align 8
  store %union.rec* %8124, %union.rec** @zz_tmp, align 8
  %8125 = load %union.rec*, %union.rec** @zz_res, align 8
  %8126 = bitcast %union.rec* %8125 to %struct.word_type*
  %8127 = getelementptr inbounds %struct.word_type, %struct.word_type* %8126, i32 0, i32 0
  %8128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8127, i32 0, i64 1
  %8129 = getelementptr inbounds %struct.LIST, %struct.LIST* %8128, i32 0, i32 0
  %8130 = load %union.rec*, %union.rec** %8129, align 8
  %8131 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8132 = bitcast %union.rec* %8131 to %struct.word_type*
  %8133 = getelementptr inbounds %struct.word_type, %struct.word_type* %8132, i32 0, i32 0
  %8134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8133, i32 0, i64 1
  %8135 = getelementptr inbounds %struct.LIST, %struct.LIST* %8134, i32 0, i32 0
  store %union.rec* %8130, %union.rec** %8135, align 8
  %8136 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8137 = load %union.rec*, %union.rec** @zz_res, align 8
  %8138 = bitcast %union.rec* %8137 to %struct.word_type*
  %8139 = getelementptr inbounds %struct.word_type, %struct.word_type* %8138, i32 0, i32 0
  %8140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8139, i32 0, i64 1
  %8141 = getelementptr inbounds %struct.LIST, %struct.LIST* %8140, i32 0, i32 0
  %8142 = load %union.rec*, %union.rec** %8141, align 8
  %8143 = bitcast %union.rec* %8142 to %struct.word_type*
  %8144 = getelementptr inbounds %struct.word_type, %struct.word_type* %8143, i32 0, i32 0
  %8145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8144, i32 0, i64 1
  %8146 = getelementptr inbounds %struct.LIST, %struct.LIST* %8145, i32 0, i32 1
  store %union.rec* %8136, %union.rec** %8146, align 8
  %8147 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %8148 = load %union.rec*, %union.rec** @zz_res, align 8
  %8149 = bitcast %union.rec* %8148 to %struct.word_type*
  %8150 = getelementptr inbounds %struct.word_type, %struct.word_type* %8149, i32 0, i32 0
  %8151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8150, i32 0, i64 1
  %8152 = getelementptr inbounds %struct.LIST, %struct.LIST* %8151, i32 0, i32 0
  store %union.rec* %8147, %union.rec** %8152, align 8
  %8153 = load %union.rec*, %union.rec** @zz_res, align 8
  %8154 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %8155 = bitcast %union.rec* %8154 to %struct.word_type*
  %8156 = getelementptr inbounds %struct.word_type, %struct.word_type* %8155, i32 0, i32 0
  %8157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8156, i32 0, i64 1
  %8158 = getelementptr inbounds %struct.LIST, %struct.LIST* %8157, i32 0, i32 1
  store %union.rec* %8153, %union.rec** %8158, align 8
  br label %8159

; <label>:8159                                    ; preds = %8118, %8116
  %8160 = phi %union.rec* [ %8117, %8116 ], [ %8153, %8118 ]
  br label %8161

; <label>:8161                                    ; preds = %8159, %8111
  %8162 = phi %union.rec* [ %8112, %8111 ], [ %8160, %8159 ]
  %8163 = load %union.rec*, %union.rec** %2, align 8
  %8164 = bitcast %union.rec* %8163 to %struct.word_type*
  %8165 = getelementptr inbounds %struct.word_type, %struct.word_type* %8164, i32 0, i32 3
  %8166 = bitcast %union.THIRD_UNION* %8165 to %struct.anon.6*
  %8167 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %8166, i32 0, i32 0
  %8168 = getelementptr inbounds [2 x i32], [2 x i32]* %8167, i32 0, i64 0
  store i32 0, i32* %8168, align 4
  %8169 = load i32, i32* %max_width, align 4
  %8170 = load %union.rec*, %union.rec** %2, align 8
  %8171 = bitcast %union.rec* %8170 to %struct.word_type*
  %8172 = getelementptr inbounds %struct.word_type, %struct.word_type* %8171, i32 0, i32 3
  %8173 = bitcast %union.THIRD_UNION* %8172 to %struct.anon.6*
  %8174 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %8173, i32 0, i32 1
  %8175 = getelementptr inbounds [2 x i32], [2 x i32]* %8174, i32 0, i64 0
  store i32 %8169, i32* %8175, align 4
  %8176 = load %union.rec*, %union.rec** %2, align 8
  %8177 = bitcast %union.rec* %8176 to %struct.closure_type*
  %8178 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8177, i32 0, i32 4
  %8179 = bitcast %union.FOURTH_UNION* %8178 to %struct.STYLE*
  %8180 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8179, i32 0, i32 1
  %8181 = bitcast %union.anon.10* %8180 to %struct.anon.11*
  %8182 = bitcast %struct.anon.11* %8181 to i8*
  %8183 = load i8, i8* %8182, align 4
  %8184 = lshr i8 %8183, 4
  %8185 = and i8 %8184, 7
  %8186 = zext i8 %8185 to i32
  %8187 = icmp eq i32 %8186, 1
  br i1 %8187, label %8201, label %8188

; <label>:8188                                    ; preds = %8161
  %8189 = load %union.rec*, %union.rec** %2, align 8
  %8190 = bitcast %union.rec* %8189 to %struct.closure_type*
  %8191 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8190, i32 0, i32 4
  %8192 = bitcast %union.FOURTH_UNION* %8191 to %struct.STYLE*
  %8193 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8192, i32 0, i32 1
  %8194 = bitcast %union.anon.10* %8193 to %struct.anon.11*
  %8195 = bitcast %struct.anon.11* %8194 to i8*
  %8196 = load i8, i8* %8195, align 4
  %8197 = lshr i8 %8196, 4
  %8198 = and i8 %8197, 7
  %8199 = zext i8 %8198 to i32
  %8200 = icmp eq i32 %8199, 2
  br i1 %8200, label %8201, label %8212

; <label>:8201                                    ; preds = %8188, %8161
  %8202 = load %union.rec*, %union.rec** %2, align 8
  %8203 = bitcast %union.rec* %8202 to %struct.closure_type*
  %8204 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8203, i32 0, i32 4
  %8205 = bitcast %union.FOURTH_UNION* %8204 to %struct.STYLE*
  %8206 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8205, i32 0, i32 1
  %8207 = bitcast %union.anon.10* %8206 to %struct.anon.11*
  %8208 = bitcast %struct.anon.11* %8207 to i8*
  %8209 = load i8, i8* %8208, align 4
  %8210 = and i8 %8209, -113
  %8211 = or i8 %8210, 112
  store i8 %8211, i8* %8208, align 4
  br label %8212

; <label>:8212                                    ; preds = %8201, %8188
  %8213 = load %union.rec*, %union.rec** %res, align 8
  %8214 = bitcast %union.rec* %8213 to %struct.word_type*
  %8215 = getelementptr inbounds %struct.word_type, %struct.word_type* %8214, i32 0, i32 0
  %8216 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8215, i32 0, i64 0
  %8217 = getelementptr inbounds %struct.LIST, %struct.LIST* %8216, i32 0, i32 0
  %8218 = load %union.rec*, %union.rec** %8217, align 8
  %8219 = bitcast %union.rec* %8218 to %struct.word_type*
  %8220 = getelementptr inbounds %struct.word_type, %struct.word_type* %8219, i32 0, i32 0
  %8221 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8220, i32 0, i64 1
  %8222 = getelementptr inbounds %struct.LIST, %struct.LIST* %8221, i32 0, i32 0
  %8223 = load %union.rec*, %union.rec** %8222, align 8
  store %union.rec* %8223, %union.rec** %y, align 8
  br label %8224

; <label>:8224                                    ; preds = %8234, %8212
  %8225 = load %union.rec*, %union.rec** %y, align 8
  %8226 = bitcast %union.rec* %8225 to %struct.word_type*
  %8227 = getelementptr inbounds %struct.word_type, %struct.word_type* %8226, i32 0, i32 1
  %8228 = bitcast %union.FIRST_UNION* %8227 to %struct.anon*
  %8229 = getelementptr inbounds %struct.anon, %struct.anon* %8228, i32 0, i32 0
  %8230 = load i8, i8* %8229, align 1
  %8231 = zext i8 %8230 to i32
  %8232 = icmp eq i32 %8231, 0
  br i1 %8232, label %8233, label %8241

; <label>:8233                                    ; preds = %8224
  br label %8234

; <label>:8234                                    ; preds = %8233
  %8235 = load %union.rec*, %union.rec** %y, align 8
  %8236 = bitcast %union.rec* %8235 to %struct.word_type*
  %8237 = getelementptr inbounds %struct.word_type, %struct.word_type* %8236, i32 0, i32 0
  %8238 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8237, i32 0, i64 1
  %8239 = getelementptr inbounds %struct.LIST, %struct.LIST* %8238, i32 0, i32 0
  %8240 = load %union.rec*, %union.rec** %8239, align 8
  store %union.rec* %8240, %union.rec** %y, align 8
  br label %8224

; <label>:8241                                    ; preds = %8224
  %8242 = load %union.rec*, %union.rec** %y, align 8
  %8243 = bitcast %union.rec* %8242 to %struct.word_type*
  %8244 = getelementptr inbounds %struct.word_type, %struct.word_type* %8243, i32 0, i32 0
  %8245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8244, i32 0, i64 0
  %8246 = getelementptr inbounds %struct.LIST, %struct.LIST* %8245, i32 0, i32 1
  %8247 = load %union.rec*, %union.rec** %8246, align 8
  %8248 = load %union.rec*, %union.rec** %y, align 8
  %8249 = bitcast %union.rec* %8248 to %struct.word_type*
  %8250 = getelementptr inbounds %struct.word_type, %struct.word_type* %8249, i32 0, i32 0
  %8251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8250, i32 0, i64 0
  %8252 = getelementptr inbounds %struct.LIST, %struct.LIST* %8251, i32 0, i32 0
  %8253 = load %union.rec*, %union.rec** %8252, align 8
  %8254 = icmp eq %union.rec* %8247, %8253
  br i1 %8254, label %8255, label %8627

; <label>:8255                                    ; preds = %8241
  %8256 = load %union.rec*, %union.rec** %res, align 8
  %8257 = bitcast %union.rec* %8256 to %struct.word_type*
  %8258 = getelementptr inbounds %struct.word_type, %struct.word_type* %8257, i32 0, i32 0
  %8259 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8258, i32 0, i64 0
  %8260 = getelementptr inbounds %struct.LIST, %struct.LIST* %8259, i32 0, i32 0
  %8261 = load %union.rec*, %union.rec** %8260, align 8
  store %union.rec* %8261, %union.rec** @xx_link, align 8
  %8262 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8262, %union.rec** @zz_hold, align 8
  %8263 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8264 = bitcast %union.rec* %8263 to %struct.word_type*
  %8265 = getelementptr inbounds %struct.word_type, %struct.word_type* %8264, i32 0, i32 0
  %8266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8265, i32 0, i64 1
  %8267 = getelementptr inbounds %struct.LIST, %struct.LIST* %8266, i32 0, i32 1
  %8268 = load %union.rec*, %union.rec** %8267, align 8
  %8269 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8270 = icmp eq %union.rec* %8268, %8269
  br i1 %8270, label %8271, label %8272

; <label>:8271                                    ; preds = %8255
  br label %8313

; <label>:8272                                    ; preds = %8255
  %8273 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8274 = bitcast %union.rec* %8273 to %struct.word_type*
  %8275 = getelementptr inbounds %struct.word_type, %struct.word_type* %8274, i32 0, i32 0
  %8276 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8275, i32 0, i64 1
  %8277 = getelementptr inbounds %struct.LIST, %struct.LIST* %8276, i32 0, i32 1
  %8278 = load %union.rec*, %union.rec** %8277, align 8
  store %union.rec* %8278, %union.rec** @zz_res, align 8
  %8279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8280 = bitcast %union.rec* %8279 to %struct.word_type*
  %8281 = getelementptr inbounds %struct.word_type, %struct.word_type* %8280, i32 0, i32 0
  %8282 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8281, i32 0, i64 1
  %8283 = getelementptr inbounds %struct.LIST, %struct.LIST* %8282, i32 0, i32 0
  %8284 = load %union.rec*, %union.rec** %8283, align 8
  %8285 = load %union.rec*, %union.rec** @zz_res, align 8
  %8286 = bitcast %union.rec* %8285 to %struct.word_type*
  %8287 = getelementptr inbounds %struct.word_type, %struct.word_type* %8286, i32 0, i32 0
  %8288 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8287, i32 0, i64 1
  %8289 = getelementptr inbounds %struct.LIST, %struct.LIST* %8288, i32 0, i32 0
  store %union.rec* %8284, %union.rec** %8289, align 8
  %8290 = load %union.rec*, %union.rec** @zz_res, align 8
  %8291 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8292 = bitcast %union.rec* %8291 to %struct.word_type*
  %8293 = getelementptr inbounds %struct.word_type, %struct.word_type* %8292, i32 0, i32 0
  %8294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8293, i32 0, i64 1
  %8295 = getelementptr inbounds %struct.LIST, %struct.LIST* %8294, i32 0, i32 0
  %8296 = load %union.rec*, %union.rec** %8295, align 8
  %8297 = bitcast %union.rec* %8296 to %struct.word_type*
  %8298 = getelementptr inbounds %struct.word_type, %struct.word_type* %8297, i32 0, i32 0
  %8299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8298, i32 0, i64 1
  %8300 = getelementptr inbounds %struct.LIST, %struct.LIST* %8299, i32 0, i32 1
  store %union.rec* %8290, %union.rec** %8300, align 8
  %8301 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8302 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8303 = bitcast %union.rec* %8302 to %struct.word_type*
  %8304 = getelementptr inbounds %struct.word_type, %struct.word_type* %8303, i32 0, i32 0
  %8305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8304, i32 0, i64 1
  %8306 = getelementptr inbounds %struct.LIST, %struct.LIST* %8305, i32 0, i32 1
  store %union.rec* %8301, %union.rec** %8306, align 8
  %8307 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8308 = bitcast %union.rec* %8307 to %struct.word_type*
  %8309 = getelementptr inbounds %struct.word_type, %struct.word_type* %8308, i32 0, i32 0
  %8310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8309, i32 0, i64 1
  %8311 = getelementptr inbounds %struct.LIST, %struct.LIST* %8310, i32 0, i32 0
  store %union.rec* %8301, %union.rec** %8311, align 8
  %8312 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %8313

; <label>:8313                                    ; preds = %8272, %8271
  %8314 = phi %union.rec* [ null, %8271 ], [ %8312, %8272 ]
  store %union.rec* %8314, %union.rec** @xx_tmp, align 8
  %8315 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8315, %union.rec** @zz_hold, align 8
  %8316 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8317 = bitcast %union.rec* %8316 to %struct.word_type*
  %8318 = getelementptr inbounds %struct.word_type, %struct.word_type* %8317, i32 0, i32 0
  %8319 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8318, i32 0, i64 0
  %8320 = getelementptr inbounds %struct.LIST, %struct.LIST* %8319, i32 0, i32 1
  %8321 = load %union.rec*, %union.rec** %8320, align 8
  %8322 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8323 = icmp eq %union.rec* %8321, %8322
  br i1 %8323, label %8324, label %8325

; <label>:8324                                    ; preds = %8313
  br label %8366

; <label>:8325                                    ; preds = %8313
  %8326 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8327 = bitcast %union.rec* %8326 to %struct.word_type*
  %8328 = getelementptr inbounds %struct.word_type, %struct.word_type* %8327, i32 0, i32 0
  %8329 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8328, i32 0, i64 0
  %8330 = getelementptr inbounds %struct.LIST, %struct.LIST* %8329, i32 0, i32 1
  %8331 = load %union.rec*, %union.rec** %8330, align 8
  store %union.rec* %8331, %union.rec** @zz_res, align 8
  %8332 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8333 = bitcast %union.rec* %8332 to %struct.word_type*
  %8334 = getelementptr inbounds %struct.word_type, %struct.word_type* %8333, i32 0, i32 0
  %8335 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8334, i32 0, i64 0
  %8336 = getelementptr inbounds %struct.LIST, %struct.LIST* %8335, i32 0, i32 0
  %8337 = load %union.rec*, %union.rec** %8336, align 8
  %8338 = load %union.rec*, %union.rec** @zz_res, align 8
  %8339 = bitcast %union.rec* %8338 to %struct.word_type*
  %8340 = getelementptr inbounds %struct.word_type, %struct.word_type* %8339, i32 0, i32 0
  %8341 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8340, i32 0, i64 0
  %8342 = getelementptr inbounds %struct.LIST, %struct.LIST* %8341, i32 0, i32 0
  store %union.rec* %8337, %union.rec** %8342, align 8
  %8343 = load %union.rec*, %union.rec** @zz_res, align 8
  %8344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8345 = bitcast %union.rec* %8344 to %struct.word_type*
  %8346 = getelementptr inbounds %struct.word_type, %struct.word_type* %8345, i32 0, i32 0
  %8347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8346, i32 0, i64 0
  %8348 = getelementptr inbounds %struct.LIST, %struct.LIST* %8347, i32 0, i32 0
  %8349 = load %union.rec*, %union.rec** %8348, align 8
  %8350 = bitcast %union.rec* %8349 to %struct.word_type*
  %8351 = getelementptr inbounds %struct.word_type, %struct.word_type* %8350, i32 0, i32 0
  %8352 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8351, i32 0, i64 0
  %8353 = getelementptr inbounds %struct.LIST, %struct.LIST* %8352, i32 0, i32 1
  store %union.rec* %8343, %union.rec** %8353, align 8
  %8354 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8356 = bitcast %union.rec* %8355 to %struct.word_type*
  %8357 = getelementptr inbounds %struct.word_type, %struct.word_type* %8356, i32 0, i32 0
  %8358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8357, i32 0, i64 0
  %8359 = getelementptr inbounds %struct.LIST, %struct.LIST* %8358, i32 0, i32 1
  store %union.rec* %8354, %union.rec** %8359, align 8
  %8360 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8361 = bitcast %union.rec* %8360 to %struct.word_type*
  %8362 = getelementptr inbounds %struct.word_type, %struct.word_type* %8361, i32 0, i32 0
  %8363 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8362, i32 0, i64 0
  %8364 = getelementptr inbounds %struct.LIST, %struct.LIST* %8363, i32 0, i32 0
  store %union.rec* %8354, %union.rec** %8364, align 8
  %8365 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %8366

; <label>:8366                                    ; preds = %8325, %8324
  %8367 = phi %union.rec* [ null, %8324 ], [ %8365, %8325 ]
  %8368 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8368, %union.rec** @zz_hold, align 8
  %8369 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %8369, %union.rec** @zz_hold, align 8
  %8370 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8371 = bitcast %union.rec* %8370 to %struct.word_type*
  %8372 = getelementptr inbounds %struct.word_type, %struct.word_type* %8371, i32 0, i32 1
  %8373 = bitcast %union.FIRST_UNION* %8372 to %struct.anon*
  %8374 = getelementptr inbounds %struct.anon, %struct.anon* %8373, i32 0, i32 0
  %8375 = load i8, i8* %8374, align 1
  %8376 = zext i8 %8375 to i32
  %8377 = icmp eq i32 %8376, 11
  br i1 %8377, label %8387, label %8378

; <label>:8378                                    ; preds = %8366
  %8379 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8380 = bitcast %union.rec* %8379 to %struct.word_type*
  %8381 = getelementptr inbounds %struct.word_type, %struct.word_type* %8380, i32 0, i32 1
  %8382 = bitcast %union.FIRST_UNION* %8381 to %struct.anon*
  %8383 = getelementptr inbounds %struct.anon, %struct.anon* %8382, i32 0, i32 0
  %8384 = load i8, i8* %8383, align 1
  %8385 = zext i8 %8384 to i32
  %8386 = icmp eq i32 %8385, 12
  br i1 %8386, label %8387, label %8395

; <label>:8387                                    ; preds = %8378, %8366
  %8388 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8389 = bitcast %union.rec* %8388 to %struct.word_type*
  %8390 = getelementptr inbounds %struct.word_type, %struct.word_type* %8389, i32 0, i32 1
  %8391 = bitcast %union.FIRST_UNION* %8390 to %struct.anon*
  %8392 = getelementptr inbounds %struct.anon, %struct.anon* %8391, i32 0, i32 1
  %8393 = load i8, i8* %8392, align 1
  %8394 = zext i8 %8393 to i32
  br label %8406

; <label>:8395                                    ; preds = %8378
  %8396 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8397 = bitcast %union.rec* %8396 to %struct.word_type*
  %8398 = getelementptr inbounds %struct.word_type, %struct.word_type* %8397, i32 0, i32 1
  %8399 = bitcast %union.FIRST_UNION* %8398 to %struct.anon*
  %8400 = getelementptr inbounds %struct.anon, %struct.anon* %8399, i32 0, i32 0
  %8401 = load i8, i8* %8400, align 1
  %8402 = zext i8 %8401 to i64
  %8403 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %8402
  %8404 = load i8, i8* %8403, align 1
  %8405 = zext i8 %8404 to i32
  br label %8406

; <label>:8406                                    ; preds = %8395, %8387
  %8407 = phi i32 [ %8394, %8387 ], [ %8405, %8395 ]
  store i32 %8407, i32* @zz_size, align 4
  %8408 = load i32, i32* @zz_size, align 4
  %8409 = sext i32 %8408 to i64
  %8410 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8409
  %8411 = load %union.rec*, %union.rec** %8410, align 8
  %8412 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8413 = bitcast %union.rec* %8412 to %struct.word_type*
  %8414 = getelementptr inbounds %struct.word_type, %struct.word_type* %8413, i32 0, i32 0
  %8415 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8414, i32 0, i64 0
  %8416 = getelementptr inbounds %struct.LIST, %struct.LIST* %8415, i32 0, i32 0
  store %union.rec* %8411, %union.rec** %8416, align 8
  %8417 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8418 = load i32, i32* @zz_size, align 4
  %8419 = sext i32 %8418 to i64
  %8420 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8419
  store %union.rec* %8417, %union.rec** %8420, align 8
  %8421 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %8422 = bitcast %union.rec* %8421 to %struct.word_type*
  %8423 = getelementptr inbounds %struct.word_type, %struct.word_type* %8422, i32 0, i32 0
  %8424 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8423, i32 0, i64 1
  %8425 = getelementptr inbounds %struct.LIST, %struct.LIST* %8424, i32 0, i32 1
  %8426 = load %union.rec*, %union.rec** %8425, align 8
  %8427 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %8428 = icmp eq %union.rec* %8426, %8427
  br i1 %8428, label %8429, label %8432

; <label>:8429                                    ; preds = %8406
  %8430 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %8431 = call i32 @DisposeObject(%union.rec* %8430)
  br label %8432

; <label>:8432                                    ; preds = %8429, %8406
  %8433 = load %union.rec*, %union.rec** %res, align 8
  %8434 = bitcast %union.rec* %8433 to %struct.word_type*
  %8435 = getelementptr inbounds %struct.word_type, %struct.word_type* %8434, i32 0, i32 0
  %8436 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8435, i32 0, i64 0
  %8437 = getelementptr inbounds %struct.LIST, %struct.LIST* %8436, i32 0, i32 1
  %8438 = load %union.rec*, %union.rec** %8437, align 8
  %8439 = load %union.rec*, %union.rec** %res, align 8
  %8440 = bitcast %union.rec* %8439 to %struct.word_type*
  %8441 = getelementptr inbounds %struct.word_type, %struct.word_type* %8440, i32 0, i32 0
  %8442 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8441, i32 0, i64 0
  %8443 = getelementptr inbounds %struct.LIST, %struct.LIST* %8442, i32 0, i32 0
  %8444 = load %union.rec*, %union.rec** %8443, align 8
  %8445 = icmp ne %union.rec* %8438, %8444
  br i1 %8445, label %8449, label %8446

; <label>:8446                                    ; preds = %8432
  %8447 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %8448 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %8447, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0))
  br label %8449

; <label>:8449                                    ; preds = %8446, %8432
  %8450 = load %union.rec*, %union.rec** %res, align 8
  %8451 = bitcast %union.rec* %8450 to %struct.word_type*
  %8452 = getelementptr inbounds %struct.word_type, %struct.word_type* %8451, i32 0, i32 0
  %8453 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8452, i32 0, i64 0
  %8454 = getelementptr inbounds %struct.LIST, %struct.LIST* %8453, i32 0, i32 0
  %8455 = load %union.rec*, %union.rec** %8454, align 8
  store %union.rec* %8455, %union.rec** @xx_link, align 8
  %8456 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8456, %union.rec** @zz_hold, align 8
  %8457 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8458 = bitcast %union.rec* %8457 to %struct.word_type*
  %8459 = getelementptr inbounds %struct.word_type, %struct.word_type* %8458, i32 0, i32 0
  %8460 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8459, i32 0, i64 1
  %8461 = getelementptr inbounds %struct.LIST, %struct.LIST* %8460, i32 0, i32 1
  %8462 = load %union.rec*, %union.rec** %8461, align 8
  %8463 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8464 = icmp eq %union.rec* %8462, %8463
  br i1 %8464, label %8465, label %8466

; <label>:8465                                    ; preds = %8449
  br label %8507

; <label>:8466                                    ; preds = %8449
  %8467 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8468 = bitcast %union.rec* %8467 to %struct.word_type*
  %8469 = getelementptr inbounds %struct.word_type, %struct.word_type* %8468, i32 0, i32 0
  %8470 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8469, i32 0, i64 1
  %8471 = getelementptr inbounds %struct.LIST, %struct.LIST* %8470, i32 0, i32 1
  %8472 = load %union.rec*, %union.rec** %8471, align 8
  store %union.rec* %8472, %union.rec** @zz_res, align 8
  %8473 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8474 = bitcast %union.rec* %8473 to %struct.word_type*
  %8475 = getelementptr inbounds %struct.word_type, %struct.word_type* %8474, i32 0, i32 0
  %8476 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8475, i32 0, i64 1
  %8477 = getelementptr inbounds %struct.LIST, %struct.LIST* %8476, i32 0, i32 0
  %8478 = load %union.rec*, %union.rec** %8477, align 8
  %8479 = load %union.rec*, %union.rec** @zz_res, align 8
  %8480 = bitcast %union.rec* %8479 to %struct.word_type*
  %8481 = getelementptr inbounds %struct.word_type, %struct.word_type* %8480, i32 0, i32 0
  %8482 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8481, i32 0, i64 1
  %8483 = getelementptr inbounds %struct.LIST, %struct.LIST* %8482, i32 0, i32 0
  store %union.rec* %8478, %union.rec** %8483, align 8
  %8484 = load %union.rec*, %union.rec** @zz_res, align 8
  %8485 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8486 = bitcast %union.rec* %8485 to %struct.word_type*
  %8487 = getelementptr inbounds %struct.word_type, %struct.word_type* %8486, i32 0, i32 0
  %8488 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8487, i32 0, i64 1
  %8489 = getelementptr inbounds %struct.LIST, %struct.LIST* %8488, i32 0, i32 0
  %8490 = load %union.rec*, %union.rec** %8489, align 8
  %8491 = bitcast %union.rec* %8490 to %struct.word_type*
  %8492 = getelementptr inbounds %struct.word_type, %struct.word_type* %8491, i32 0, i32 0
  %8493 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8492, i32 0, i64 1
  %8494 = getelementptr inbounds %struct.LIST, %struct.LIST* %8493, i32 0, i32 1
  store %union.rec* %8484, %union.rec** %8494, align 8
  %8495 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8496 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8497 = bitcast %union.rec* %8496 to %struct.word_type*
  %8498 = getelementptr inbounds %struct.word_type, %struct.word_type* %8497, i32 0, i32 0
  %8499 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8498, i32 0, i64 1
  %8500 = getelementptr inbounds %struct.LIST, %struct.LIST* %8499, i32 0, i32 1
  store %union.rec* %8495, %union.rec** %8500, align 8
  %8501 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8502 = bitcast %union.rec* %8501 to %struct.word_type*
  %8503 = getelementptr inbounds %struct.word_type, %struct.word_type* %8502, i32 0, i32 0
  %8504 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8503, i32 0, i64 1
  %8505 = getelementptr inbounds %struct.LIST, %struct.LIST* %8504, i32 0, i32 0
  store %union.rec* %8495, %union.rec** %8505, align 8
  %8506 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %8507

; <label>:8507                                    ; preds = %8466, %8465
  %8508 = phi %union.rec* [ null, %8465 ], [ %8506, %8466 ]
  store %union.rec* %8508, %union.rec** @xx_tmp, align 8
  %8509 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8509, %union.rec** @zz_hold, align 8
  %8510 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8511 = bitcast %union.rec* %8510 to %struct.word_type*
  %8512 = getelementptr inbounds %struct.word_type, %struct.word_type* %8511, i32 0, i32 0
  %8513 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8512, i32 0, i64 0
  %8514 = getelementptr inbounds %struct.LIST, %struct.LIST* %8513, i32 0, i32 1
  %8515 = load %union.rec*, %union.rec** %8514, align 8
  %8516 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8517 = icmp eq %union.rec* %8515, %8516
  br i1 %8517, label %8518, label %8519

; <label>:8518                                    ; preds = %8507
  br label %8560

; <label>:8519                                    ; preds = %8507
  %8520 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8521 = bitcast %union.rec* %8520 to %struct.word_type*
  %8522 = getelementptr inbounds %struct.word_type, %struct.word_type* %8521, i32 0, i32 0
  %8523 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8522, i32 0, i64 0
  %8524 = getelementptr inbounds %struct.LIST, %struct.LIST* %8523, i32 0, i32 1
  %8525 = load %union.rec*, %union.rec** %8524, align 8
  store %union.rec* %8525, %union.rec** @zz_res, align 8
  %8526 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8527 = bitcast %union.rec* %8526 to %struct.word_type*
  %8528 = getelementptr inbounds %struct.word_type, %struct.word_type* %8527, i32 0, i32 0
  %8529 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8528, i32 0, i64 0
  %8530 = getelementptr inbounds %struct.LIST, %struct.LIST* %8529, i32 0, i32 0
  %8531 = load %union.rec*, %union.rec** %8530, align 8
  %8532 = load %union.rec*, %union.rec** @zz_res, align 8
  %8533 = bitcast %union.rec* %8532 to %struct.word_type*
  %8534 = getelementptr inbounds %struct.word_type, %struct.word_type* %8533, i32 0, i32 0
  %8535 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8534, i32 0, i64 0
  %8536 = getelementptr inbounds %struct.LIST, %struct.LIST* %8535, i32 0, i32 0
  store %union.rec* %8531, %union.rec** %8536, align 8
  %8537 = load %union.rec*, %union.rec** @zz_res, align 8
  %8538 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8539 = bitcast %union.rec* %8538 to %struct.word_type*
  %8540 = getelementptr inbounds %struct.word_type, %struct.word_type* %8539, i32 0, i32 0
  %8541 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8540, i32 0, i64 0
  %8542 = getelementptr inbounds %struct.LIST, %struct.LIST* %8541, i32 0, i32 0
  %8543 = load %union.rec*, %union.rec** %8542, align 8
  %8544 = bitcast %union.rec* %8543 to %struct.word_type*
  %8545 = getelementptr inbounds %struct.word_type, %struct.word_type* %8544, i32 0, i32 0
  %8546 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8545, i32 0, i64 0
  %8547 = getelementptr inbounds %struct.LIST, %struct.LIST* %8546, i32 0, i32 1
  store %union.rec* %8537, %union.rec** %8547, align 8
  %8548 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8549 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8550 = bitcast %union.rec* %8549 to %struct.word_type*
  %8551 = getelementptr inbounds %struct.word_type, %struct.word_type* %8550, i32 0, i32 0
  %8552 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8551, i32 0, i64 0
  %8553 = getelementptr inbounds %struct.LIST, %struct.LIST* %8552, i32 0, i32 1
  store %union.rec* %8548, %union.rec** %8553, align 8
  %8554 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8555 = bitcast %union.rec* %8554 to %struct.word_type*
  %8556 = getelementptr inbounds %struct.word_type, %struct.word_type* %8555, i32 0, i32 0
  %8557 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8556, i32 0, i64 0
  %8558 = getelementptr inbounds %struct.LIST, %struct.LIST* %8557, i32 0, i32 0
  store %union.rec* %8548, %union.rec** %8558, align 8
  %8559 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %8560

; <label>:8560                                    ; preds = %8519, %8518
  %8561 = phi %union.rec* [ null, %8518 ], [ %8559, %8519 ]
  %8562 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8562, %union.rec** @zz_hold, align 8
  %8563 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %8563, %union.rec** @zz_hold, align 8
  %8564 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8565 = bitcast %union.rec* %8564 to %struct.word_type*
  %8566 = getelementptr inbounds %struct.word_type, %struct.word_type* %8565, i32 0, i32 1
  %8567 = bitcast %union.FIRST_UNION* %8566 to %struct.anon*
  %8568 = getelementptr inbounds %struct.anon, %struct.anon* %8567, i32 0, i32 0
  %8569 = load i8, i8* %8568, align 1
  %8570 = zext i8 %8569 to i32
  %8571 = icmp eq i32 %8570, 11
  br i1 %8571, label %8581, label %8572

; <label>:8572                                    ; preds = %8560
  %8573 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8574 = bitcast %union.rec* %8573 to %struct.word_type*
  %8575 = getelementptr inbounds %struct.word_type, %struct.word_type* %8574, i32 0, i32 1
  %8576 = bitcast %union.FIRST_UNION* %8575 to %struct.anon*
  %8577 = getelementptr inbounds %struct.anon, %struct.anon* %8576, i32 0, i32 0
  %8578 = load i8, i8* %8577, align 1
  %8579 = zext i8 %8578 to i32
  %8580 = icmp eq i32 %8579, 12
  br i1 %8580, label %8581, label %8589

; <label>:8581                                    ; preds = %8572, %8560
  %8582 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8583 = bitcast %union.rec* %8582 to %struct.word_type*
  %8584 = getelementptr inbounds %struct.word_type, %struct.word_type* %8583, i32 0, i32 1
  %8585 = bitcast %union.FIRST_UNION* %8584 to %struct.anon*
  %8586 = getelementptr inbounds %struct.anon, %struct.anon* %8585, i32 0, i32 1
  %8587 = load i8, i8* %8586, align 1
  %8588 = zext i8 %8587 to i32
  br label %8600

; <label>:8589                                    ; preds = %8572
  %8590 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8591 = bitcast %union.rec* %8590 to %struct.word_type*
  %8592 = getelementptr inbounds %struct.word_type, %struct.word_type* %8591, i32 0, i32 1
  %8593 = bitcast %union.FIRST_UNION* %8592 to %struct.anon*
  %8594 = getelementptr inbounds %struct.anon, %struct.anon* %8593, i32 0, i32 0
  %8595 = load i8, i8* %8594, align 1
  %8596 = zext i8 %8595 to i64
  %8597 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %8596
  %8598 = load i8, i8* %8597, align 1
  %8599 = zext i8 %8598 to i32
  br label %8600

; <label>:8600                                    ; preds = %8589, %8581
  %8601 = phi i32 [ %8588, %8581 ], [ %8599, %8589 ]
  store i32 %8601, i32* @zz_size, align 4
  %8602 = load i32, i32* @zz_size, align 4
  %8603 = sext i32 %8602 to i64
  %8604 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8603
  %8605 = load %union.rec*, %union.rec** %8604, align 8
  %8606 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8607 = bitcast %union.rec* %8606 to %struct.word_type*
  %8608 = getelementptr inbounds %struct.word_type, %struct.word_type* %8607, i32 0, i32 0
  %8609 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8608, i32 0, i64 0
  %8610 = getelementptr inbounds %struct.LIST, %struct.LIST* %8609, i32 0, i32 0
  store %union.rec* %8605, %union.rec** %8610, align 8
  %8611 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8612 = load i32, i32* @zz_size, align 4
  %8613 = sext i32 %8612 to i64
  %8614 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8613
  store %union.rec* %8611, %union.rec** %8614, align 8
  %8615 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %8616 = bitcast %union.rec* %8615 to %struct.word_type*
  %8617 = getelementptr inbounds %struct.word_type, %struct.word_type* %8616, i32 0, i32 0
  %8618 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8617, i32 0, i64 1
  %8619 = getelementptr inbounds %struct.LIST, %struct.LIST* %8618, i32 0, i32 1
  %8620 = load %union.rec*, %union.rec** %8619, align 8
  %8621 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %8622 = icmp eq %union.rec* %8620, %8621
  br i1 %8622, label %8623, label %8626

; <label>:8623                                    ; preds = %8600
  %8624 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %8625 = call i32 @DisposeObject(%union.rec* %8624)
  br label %8626

; <label>:8626                                    ; preds = %8623, %8600
  br label %9072

; <label>:8627                                    ; preds = %8241
  %8628 = load %union.rec*, %union.rec** %y, align 8
  %8629 = bitcast %union.rec* %8628 to %struct.word_type*
  %8630 = getelementptr inbounds %struct.word_type, %struct.word_type* %8629, i32 0, i32 0
  %8631 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8630, i32 0, i64 0
  %8632 = getelementptr inbounds %struct.LIST, %struct.LIST* %8631, i32 0, i32 0
  %8633 = load %union.rec*, %union.rec** %8632, align 8
  %8634 = bitcast %union.rec* %8633 to %struct.word_type*
  %8635 = getelementptr inbounds %struct.word_type, %struct.word_type* %8634, i32 0, i32 0
  %8636 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8635, i32 0, i64 1
  %8637 = getelementptr inbounds %struct.LIST, %struct.LIST* %8636, i32 0, i32 0
  %8638 = load %union.rec*, %union.rec** %8637, align 8
  store %union.rec* %8638, %union.rec** %z, align 8
  br label %8639

; <label>:8639                                    ; preds = %8649, %8627
  %8640 = load %union.rec*, %union.rec** %z, align 8
  %8641 = bitcast %union.rec* %8640 to %struct.word_type*
  %8642 = getelementptr inbounds %struct.word_type, %struct.word_type* %8641, i32 0, i32 1
  %8643 = bitcast %union.FIRST_UNION* %8642 to %struct.anon*
  %8644 = getelementptr inbounds %struct.anon, %struct.anon* %8643, i32 0, i32 0
  %8645 = load i8, i8* %8644, align 1
  %8646 = zext i8 %8645 to i32
  %8647 = icmp eq i32 %8646, 0
  br i1 %8647, label %8648, label %8656

; <label>:8648                                    ; preds = %8639
  br label %8649

; <label>:8649                                    ; preds = %8648
  %8650 = load %union.rec*, %union.rec** %z, align 8
  %8651 = bitcast %union.rec* %8650 to %struct.word_type*
  %8652 = getelementptr inbounds %struct.word_type, %struct.word_type* %8651, i32 0, i32 0
  %8653 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8652, i32 0, i64 1
  %8654 = getelementptr inbounds %struct.LIST, %struct.LIST* %8653, i32 0, i32 0
  %8655 = load %union.rec*, %union.rec** %8654, align 8
  store %union.rec* %8655, %union.rec** %z, align 8
  br label %8639

; <label>:8656                                    ; preds = %8639
  %8657 = load %union.rec*, %union.rec** %z, align 8
  %8658 = bitcast %union.rec* %8657 to %struct.word_type*
  %8659 = getelementptr inbounds %struct.word_type, %struct.word_type* %8658, i32 0, i32 1
  %8660 = bitcast %union.FIRST_UNION* %8659 to %struct.anon*
  %8661 = getelementptr inbounds %struct.anon, %struct.anon* %8660, i32 0, i32 0
  %8662 = load i8, i8* %8661, align 1
  %8663 = zext i8 %8662 to i32
  %8664 = icmp eq i32 %8663, 11
  br i1 %8664, label %8665, label %8673

; <label>:8665                                    ; preds = %8656
  %8666 = load %union.rec*, %union.rec** %z, align 8
  %8667 = bitcast %union.rec* %8666 to %struct.word_type*
  %8668 = getelementptr inbounds %struct.word_type, %struct.word_type* %8667, i32 0, i32 4
  %8669 = getelementptr inbounds [4 x i8], [4 x i8]* %8668, i32 0, i64 0
  %8670 = load i8, i8* %8669, align 1
  %8671 = zext i8 %8670 to i32
  %8672 = icmp eq i32 %8671, 0
  br i1 %8672, label %8676, label %8673

; <label>:8673                                    ; preds = %8665, %8656
  %8674 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %8675 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %8674, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0))
  br label %8676

; <label>:8676                                    ; preds = %8673, %8665
  %8677 = load %union.rec*, %union.rec** %y, align 8
  %8678 = bitcast %union.rec* %8677 to %struct.word_type*
  %8679 = getelementptr inbounds %struct.word_type, %struct.word_type* %8678, i32 0, i32 0
  %8680 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8679, i32 0, i64 0
  %8681 = getelementptr inbounds %struct.LIST, %struct.LIST* %8680, i32 0, i32 0
  %8682 = load %union.rec*, %union.rec** %8681, align 8
  store %union.rec* %8682, %union.rec** @xx_link, align 8
  %8683 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8683, %union.rec** @zz_hold, align 8
  %8684 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8685 = bitcast %union.rec* %8684 to %struct.word_type*
  %8686 = getelementptr inbounds %struct.word_type, %struct.word_type* %8685, i32 0, i32 0
  %8687 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8686, i32 0, i64 1
  %8688 = getelementptr inbounds %struct.LIST, %struct.LIST* %8687, i32 0, i32 1
  %8689 = load %union.rec*, %union.rec** %8688, align 8
  %8690 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8691 = icmp eq %union.rec* %8689, %8690
  br i1 %8691, label %8692, label %8693

; <label>:8692                                    ; preds = %8676
  br label %8734

; <label>:8693                                    ; preds = %8676
  %8694 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8695 = bitcast %union.rec* %8694 to %struct.word_type*
  %8696 = getelementptr inbounds %struct.word_type, %struct.word_type* %8695, i32 0, i32 0
  %8697 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8696, i32 0, i64 1
  %8698 = getelementptr inbounds %struct.LIST, %struct.LIST* %8697, i32 0, i32 1
  %8699 = load %union.rec*, %union.rec** %8698, align 8
  store %union.rec* %8699, %union.rec** @zz_res, align 8
  %8700 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8701 = bitcast %union.rec* %8700 to %struct.word_type*
  %8702 = getelementptr inbounds %struct.word_type, %struct.word_type* %8701, i32 0, i32 0
  %8703 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8702, i32 0, i64 1
  %8704 = getelementptr inbounds %struct.LIST, %struct.LIST* %8703, i32 0, i32 0
  %8705 = load %union.rec*, %union.rec** %8704, align 8
  %8706 = load %union.rec*, %union.rec** @zz_res, align 8
  %8707 = bitcast %union.rec* %8706 to %struct.word_type*
  %8708 = getelementptr inbounds %struct.word_type, %struct.word_type* %8707, i32 0, i32 0
  %8709 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8708, i32 0, i64 1
  %8710 = getelementptr inbounds %struct.LIST, %struct.LIST* %8709, i32 0, i32 0
  store %union.rec* %8705, %union.rec** %8710, align 8
  %8711 = load %union.rec*, %union.rec** @zz_res, align 8
  %8712 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8713 = bitcast %union.rec* %8712 to %struct.word_type*
  %8714 = getelementptr inbounds %struct.word_type, %struct.word_type* %8713, i32 0, i32 0
  %8715 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8714, i32 0, i64 1
  %8716 = getelementptr inbounds %struct.LIST, %struct.LIST* %8715, i32 0, i32 0
  %8717 = load %union.rec*, %union.rec** %8716, align 8
  %8718 = bitcast %union.rec* %8717 to %struct.word_type*
  %8719 = getelementptr inbounds %struct.word_type, %struct.word_type* %8718, i32 0, i32 0
  %8720 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8719, i32 0, i64 1
  %8721 = getelementptr inbounds %struct.LIST, %struct.LIST* %8720, i32 0, i32 1
  store %union.rec* %8711, %union.rec** %8721, align 8
  %8722 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8723 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8724 = bitcast %union.rec* %8723 to %struct.word_type*
  %8725 = getelementptr inbounds %struct.word_type, %struct.word_type* %8724, i32 0, i32 0
  %8726 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8725, i32 0, i64 1
  %8727 = getelementptr inbounds %struct.LIST, %struct.LIST* %8726, i32 0, i32 1
  store %union.rec* %8722, %union.rec** %8727, align 8
  %8728 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8729 = bitcast %union.rec* %8728 to %struct.word_type*
  %8730 = getelementptr inbounds %struct.word_type, %struct.word_type* %8729, i32 0, i32 0
  %8731 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8730, i32 0, i64 1
  %8732 = getelementptr inbounds %struct.LIST, %struct.LIST* %8731, i32 0, i32 0
  store %union.rec* %8722, %union.rec** %8732, align 8
  %8733 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %8734

; <label>:8734                                    ; preds = %8693, %8692
  %8735 = phi %union.rec* [ null, %8692 ], [ %8733, %8693 ]
  store %union.rec* %8735, %union.rec** @xx_tmp, align 8
  %8736 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8736, %union.rec** @zz_hold, align 8
  %8737 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8738 = bitcast %union.rec* %8737 to %struct.word_type*
  %8739 = getelementptr inbounds %struct.word_type, %struct.word_type* %8738, i32 0, i32 0
  %8740 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8739, i32 0, i64 0
  %8741 = getelementptr inbounds %struct.LIST, %struct.LIST* %8740, i32 0, i32 1
  %8742 = load %union.rec*, %union.rec** %8741, align 8
  %8743 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8744 = icmp eq %union.rec* %8742, %8743
  br i1 %8744, label %8745, label %8746

; <label>:8745                                    ; preds = %8734
  br label %8787

; <label>:8746                                    ; preds = %8734
  %8747 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8748 = bitcast %union.rec* %8747 to %struct.word_type*
  %8749 = getelementptr inbounds %struct.word_type, %struct.word_type* %8748, i32 0, i32 0
  %8750 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8749, i32 0, i64 0
  %8751 = getelementptr inbounds %struct.LIST, %struct.LIST* %8750, i32 0, i32 1
  %8752 = load %union.rec*, %union.rec** %8751, align 8
  store %union.rec* %8752, %union.rec** @zz_res, align 8
  %8753 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8754 = bitcast %union.rec* %8753 to %struct.word_type*
  %8755 = getelementptr inbounds %struct.word_type, %struct.word_type* %8754, i32 0, i32 0
  %8756 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8755, i32 0, i64 0
  %8757 = getelementptr inbounds %struct.LIST, %struct.LIST* %8756, i32 0, i32 0
  %8758 = load %union.rec*, %union.rec** %8757, align 8
  %8759 = load %union.rec*, %union.rec** @zz_res, align 8
  %8760 = bitcast %union.rec* %8759 to %struct.word_type*
  %8761 = getelementptr inbounds %struct.word_type, %struct.word_type* %8760, i32 0, i32 0
  %8762 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8761, i32 0, i64 0
  %8763 = getelementptr inbounds %struct.LIST, %struct.LIST* %8762, i32 0, i32 0
  store %union.rec* %8758, %union.rec** %8763, align 8
  %8764 = load %union.rec*, %union.rec** @zz_res, align 8
  %8765 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8766 = bitcast %union.rec* %8765 to %struct.word_type*
  %8767 = getelementptr inbounds %struct.word_type, %struct.word_type* %8766, i32 0, i32 0
  %8768 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8767, i32 0, i64 0
  %8769 = getelementptr inbounds %struct.LIST, %struct.LIST* %8768, i32 0, i32 0
  %8770 = load %union.rec*, %union.rec** %8769, align 8
  %8771 = bitcast %union.rec* %8770 to %struct.word_type*
  %8772 = getelementptr inbounds %struct.word_type, %struct.word_type* %8771, i32 0, i32 0
  %8773 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8772, i32 0, i64 0
  %8774 = getelementptr inbounds %struct.LIST, %struct.LIST* %8773, i32 0, i32 1
  store %union.rec* %8764, %union.rec** %8774, align 8
  %8775 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8776 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8777 = bitcast %union.rec* %8776 to %struct.word_type*
  %8778 = getelementptr inbounds %struct.word_type, %struct.word_type* %8777, i32 0, i32 0
  %8779 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8778, i32 0, i64 0
  %8780 = getelementptr inbounds %struct.LIST, %struct.LIST* %8779, i32 0, i32 1
  store %union.rec* %8775, %union.rec** %8780, align 8
  %8781 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8782 = bitcast %union.rec* %8781 to %struct.word_type*
  %8783 = getelementptr inbounds %struct.word_type, %struct.word_type* %8782, i32 0, i32 0
  %8784 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8783, i32 0, i64 0
  %8785 = getelementptr inbounds %struct.LIST, %struct.LIST* %8784, i32 0, i32 0
  store %union.rec* %8775, %union.rec** %8785, align 8
  %8786 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %8787

; <label>:8787                                    ; preds = %8746, %8745
  %8788 = phi %union.rec* [ null, %8745 ], [ %8786, %8746 ]
  %8789 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8789, %union.rec** @zz_hold, align 8
  %8790 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %8790, %union.rec** @zz_hold, align 8
  %8791 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8792 = bitcast %union.rec* %8791 to %struct.word_type*
  %8793 = getelementptr inbounds %struct.word_type, %struct.word_type* %8792, i32 0, i32 1
  %8794 = bitcast %union.FIRST_UNION* %8793 to %struct.anon*
  %8795 = getelementptr inbounds %struct.anon, %struct.anon* %8794, i32 0, i32 0
  %8796 = load i8, i8* %8795, align 1
  %8797 = zext i8 %8796 to i32
  %8798 = icmp eq i32 %8797, 11
  br i1 %8798, label %8808, label %8799

; <label>:8799                                    ; preds = %8787
  %8800 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8801 = bitcast %union.rec* %8800 to %struct.word_type*
  %8802 = getelementptr inbounds %struct.word_type, %struct.word_type* %8801, i32 0, i32 1
  %8803 = bitcast %union.FIRST_UNION* %8802 to %struct.anon*
  %8804 = getelementptr inbounds %struct.anon, %struct.anon* %8803, i32 0, i32 0
  %8805 = load i8, i8* %8804, align 1
  %8806 = zext i8 %8805 to i32
  %8807 = icmp eq i32 %8806, 12
  br i1 %8807, label %8808, label %8816

; <label>:8808                                    ; preds = %8799, %8787
  %8809 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8810 = bitcast %union.rec* %8809 to %struct.word_type*
  %8811 = getelementptr inbounds %struct.word_type, %struct.word_type* %8810, i32 0, i32 1
  %8812 = bitcast %union.FIRST_UNION* %8811 to %struct.anon*
  %8813 = getelementptr inbounds %struct.anon, %struct.anon* %8812, i32 0, i32 1
  %8814 = load i8, i8* %8813, align 1
  %8815 = zext i8 %8814 to i32
  br label %8827

; <label>:8816                                    ; preds = %8799
  %8817 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8818 = bitcast %union.rec* %8817 to %struct.word_type*
  %8819 = getelementptr inbounds %struct.word_type, %struct.word_type* %8818, i32 0, i32 1
  %8820 = bitcast %union.FIRST_UNION* %8819 to %struct.anon*
  %8821 = getelementptr inbounds %struct.anon, %struct.anon* %8820, i32 0, i32 0
  %8822 = load i8, i8* %8821, align 1
  %8823 = zext i8 %8822 to i64
  %8824 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %8823
  %8825 = load i8, i8* %8824, align 1
  %8826 = zext i8 %8825 to i32
  br label %8827

; <label>:8827                                    ; preds = %8816, %8808
  %8828 = phi i32 [ %8815, %8808 ], [ %8826, %8816 ]
  store i32 %8828, i32* @zz_size, align 4
  %8829 = load i32, i32* @zz_size, align 4
  %8830 = sext i32 %8829 to i64
  %8831 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8830
  %8832 = load %union.rec*, %union.rec** %8831, align 8
  %8833 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8834 = bitcast %union.rec* %8833 to %struct.word_type*
  %8835 = getelementptr inbounds %struct.word_type, %struct.word_type* %8834, i32 0, i32 0
  %8836 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8835, i32 0, i64 0
  %8837 = getelementptr inbounds %struct.LIST, %struct.LIST* %8836, i32 0, i32 0
  store %union.rec* %8832, %union.rec** %8837, align 8
  %8838 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8839 = load i32, i32* @zz_size, align 4
  %8840 = sext i32 %8839 to i64
  %8841 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %8840
  store %union.rec* %8838, %union.rec** %8841, align 8
  %8842 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %8843 = bitcast %union.rec* %8842 to %struct.word_type*
  %8844 = getelementptr inbounds %struct.word_type, %struct.word_type* %8843, i32 0, i32 0
  %8845 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8844, i32 0, i64 1
  %8846 = getelementptr inbounds %struct.LIST, %struct.LIST* %8845, i32 0, i32 1
  %8847 = load %union.rec*, %union.rec** %8846, align 8
  %8848 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %8849 = icmp eq %union.rec* %8847, %8848
  br i1 %8849, label %8850, label %8853

; <label>:8850                                    ; preds = %8827
  %8851 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %8852 = call i32 @DisposeObject(%union.rec* %8851)
  br label %8853

; <label>:8853                                    ; preds = %8850, %8827
  %8854 = load %union.rec*, %union.rec** %y, align 8
  %8855 = bitcast %union.rec* %8854 to %struct.word_type*
  %8856 = getelementptr inbounds %struct.word_type, %struct.word_type* %8855, i32 0, i32 0
  %8857 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8856, i32 0, i64 0
  %8858 = getelementptr inbounds %struct.LIST, %struct.LIST* %8857, i32 0, i32 0
  %8859 = load %union.rec*, %union.rec** %8858, align 8
  %8860 = bitcast %union.rec* %8859 to %struct.word_type*
  %8861 = getelementptr inbounds %struct.word_type, %struct.word_type* %8860, i32 0, i32 0
  %8862 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8861, i32 0, i64 1
  %8863 = getelementptr inbounds %struct.LIST, %struct.LIST* %8862, i32 0, i32 0
  %8864 = load %union.rec*, %union.rec** %8863, align 8
  store %union.rec* %8864, %union.rec** %z, align 8
  br label %8865

; <label>:8865                                    ; preds = %8875, %8853
  %8866 = load %union.rec*, %union.rec** %z, align 8
  %8867 = bitcast %union.rec* %8866 to %struct.word_type*
  %8868 = getelementptr inbounds %struct.word_type, %struct.word_type* %8867, i32 0, i32 1
  %8869 = bitcast %union.FIRST_UNION* %8868 to %struct.anon*
  %8870 = getelementptr inbounds %struct.anon, %struct.anon* %8869, i32 0, i32 0
  %8871 = load i8, i8* %8870, align 1
  %8872 = zext i8 %8871 to i32
  %8873 = icmp eq i32 %8872, 0
  br i1 %8873, label %8874, label %8882

; <label>:8874                                    ; preds = %8865
  br label %8875

; <label>:8875                                    ; preds = %8874
  %8876 = load %union.rec*, %union.rec** %z, align 8
  %8877 = bitcast %union.rec* %8876 to %struct.word_type*
  %8878 = getelementptr inbounds %struct.word_type, %struct.word_type* %8877, i32 0, i32 0
  %8879 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8878, i32 0, i64 1
  %8880 = getelementptr inbounds %struct.LIST, %struct.LIST* %8879, i32 0, i32 0
  %8881 = load %union.rec*, %union.rec** %8880, align 8
  store %union.rec* %8881, %union.rec** %z, align 8
  br label %8865

; <label>:8882                                    ; preds = %8865
  %8883 = load %union.rec*, %union.rec** %z, align 8
  %8884 = bitcast %union.rec* %8883 to %struct.word_type*
  %8885 = getelementptr inbounds %struct.word_type, %struct.word_type* %8884, i32 0, i32 1
  %8886 = bitcast %union.FIRST_UNION* %8885 to %struct.anon*
  %8887 = getelementptr inbounds %struct.anon, %struct.anon* %8886, i32 0, i32 0
  %8888 = load i8, i8* %8887, align 1
  %8889 = zext i8 %8888 to i32
  %8890 = icmp eq i32 %8889, 1
  br i1 %8890, label %8894, label %8891

; <label>:8891                                    ; preds = %8882
  %8892 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %8893 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %8892, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0))
  br label %8894

; <label>:8894                                    ; preds = %8891, %8882
  %8895 = load %union.rec*, %union.rec** %y, align 8
  %8896 = bitcast %union.rec* %8895 to %struct.word_type*
  %8897 = getelementptr inbounds %struct.word_type, %struct.word_type* %8896, i32 0, i32 0
  %8898 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8897, i32 0, i64 0
  %8899 = getelementptr inbounds %struct.LIST, %struct.LIST* %8898, i32 0, i32 0
  %8900 = load %union.rec*, %union.rec** %8899, align 8
  store %union.rec* %8900, %union.rec** @xx_link, align 8
  %8901 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8901, %union.rec** @zz_hold, align 8
  %8902 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8903 = bitcast %union.rec* %8902 to %struct.word_type*
  %8904 = getelementptr inbounds %struct.word_type, %struct.word_type* %8903, i32 0, i32 0
  %8905 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8904, i32 0, i64 1
  %8906 = getelementptr inbounds %struct.LIST, %struct.LIST* %8905, i32 0, i32 1
  %8907 = load %union.rec*, %union.rec** %8906, align 8
  %8908 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8909 = icmp eq %union.rec* %8907, %8908
  br i1 %8909, label %8910, label %8911

; <label>:8910                                    ; preds = %8894
  br label %8952

; <label>:8911                                    ; preds = %8894
  %8912 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8913 = bitcast %union.rec* %8912 to %struct.word_type*
  %8914 = getelementptr inbounds %struct.word_type, %struct.word_type* %8913, i32 0, i32 0
  %8915 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8914, i32 0, i64 1
  %8916 = getelementptr inbounds %struct.LIST, %struct.LIST* %8915, i32 0, i32 1
  %8917 = load %union.rec*, %union.rec** %8916, align 8
  store %union.rec* %8917, %union.rec** @zz_res, align 8
  %8918 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8919 = bitcast %union.rec* %8918 to %struct.word_type*
  %8920 = getelementptr inbounds %struct.word_type, %struct.word_type* %8919, i32 0, i32 0
  %8921 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8920, i32 0, i64 1
  %8922 = getelementptr inbounds %struct.LIST, %struct.LIST* %8921, i32 0, i32 0
  %8923 = load %union.rec*, %union.rec** %8922, align 8
  %8924 = load %union.rec*, %union.rec** @zz_res, align 8
  %8925 = bitcast %union.rec* %8924 to %struct.word_type*
  %8926 = getelementptr inbounds %struct.word_type, %struct.word_type* %8925, i32 0, i32 0
  %8927 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8926, i32 0, i64 1
  %8928 = getelementptr inbounds %struct.LIST, %struct.LIST* %8927, i32 0, i32 0
  store %union.rec* %8923, %union.rec** %8928, align 8
  %8929 = load %union.rec*, %union.rec** @zz_res, align 8
  %8930 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8931 = bitcast %union.rec* %8930 to %struct.word_type*
  %8932 = getelementptr inbounds %struct.word_type, %struct.word_type* %8931, i32 0, i32 0
  %8933 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8932, i32 0, i64 1
  %8934 = getelementptr inbounds %struct.LIST, %struct.LIST* %8933, i32 0, i32 0
  %8935 = load %union.rec*, %union.rec** %8934, align 8
  %8936 = bitcast %union.rec* %8935 to %struct.word_type*
  %8937 = getelementptr inbounds %struct.word_type, %struct.word_type* %8936, i32 0, i32 0
  %8938 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8937, i32 0, i64 1
  %8939 = getelementptr inbounds %struct.LIST, %struct.LIST* %8938, i32 0, i32 1
  store %union.rec* %8929, %union.rec** %8939, align 8
  %8940 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8941 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8942 = bitcast %union.rec* %8941 to %struct.word_type*
  %8943 = getelementptr inbounds %struct.word_type, %struct.word_type* %8942, i32 0, i32 0
  %8944 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8943, i32 0, i64 1
  %8945 = getelementptr inbounds %struct.LIST, %struct.LIST* %8944, i32 0, i32 1
  store %union.rec* %8940, %union.rec** %8945, align 8
  %8946 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8947 = bitcast %union.rec* %8946 to %struct.word_type*
  %8948 = getelementptr inbounds %struct.word_type, %struct.word_type* %8947, i32 0, i32 0
  %8949 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8948, i32 0, i64 1
  %8950 = getelementptr inbounds %struct.LIST, %struct.LIST* %8949, i32 0, i32 0
  store %union.rec* %8940, %union.rec** %8950, align 8
  %8951 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %8952

; <label>:8952                                    ; preds = %8911, %8910
  %8953 = phi %union.rec* [ null, %8910 ], [ %8951, %8911 ]
  store %union.rec* %8953, %union.rec** @xx_tmp, align 8
  %8954 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %8954, %union.rec** @zz_hold, align 8
  %8955 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8956 = bitcast %union.rec* %8955 to %struct.word_type*
  %8957 = getelementptr inbounds %struct.word_type, %struct.word_type* %8956, i32 0, i32 0
  %8958 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8957, i32 0, i64 0
  %8959 = getelementptr inbounds %struct.LIST, %struct.LIST* %8958, i32 0, i32 1
  %8960 = load %union.rec*, %union.rec** %8959, align 8
  %8961 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8962 = icmp eq %union.rec* %8960, %8961
  br i1 %8962, label %8963, label %8964

; <label>:8963                                    ; preds = %8952
  br label %9005

; <label>:8964                                    ; preds = %8952
  %8965 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8966 = bitcast %union.rec* %8965 to %struct.word_type*
  %8967 = getelementptr inbounds %struct.word_type, %struct.word_type* %8966, i32 0, i32 0
  %8968 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8967, i32 0, i64 0
  %8969 = getelementptr inbounds %struct.LIST, %struct.LIST* %8968, i32 0, i32 1
  %8970 = load %union.rec*, %union.rec** %8969, align 8
  store %union.rec* %8970, %union.rec** @zz_res, align 8
  %8971 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8972 = bitcast %union.rec* %8971 to %struct.word_type*
  %8973 = getelementptr inbounds %struct.word_type, %struct.word_type* %8972, i32 0, i32 0
  %8974 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8973, i32 0, i64 0
  %8975 = getelementptr inbounds %struct.LIST, %struct.LIST* %8974, i32 0, i32 0
  %8976 = load %union.rec*, %union.rec** %8975, align 8
  %8977 = load %union.rec*, %union.rec** @zz_res, align 8
  %8978 = bitcast %union.rec* %8977 to %struct.word_type*
  %8979 = getelementptr inbounds %struct.word_type, %struct.word_type* %8978, i32 0, i32 0
  %8980 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8979, i32 0, i64 0
  %8981 = getelementptr inbounds %struct.LIST, %struct.LIST* %8980, i32 0, i32 0
  store %union.rec* %8976, %union.rec** %8981, align 8
  %8982 = load %union.rec*, %union.rec** @zz_res, align 8
  %8983 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8984 = bitcast %union.rec* %8983 to %struct.word_type*
  %8985 = getelementptr inbounds %struct.word_type, %struct.word_type* %8984, i32 0, i32 0
  %8986 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8985, i32 0, i64 0
  %8987 = getelementptr inbounds %struct.LIST, %struct.LIST* %8986, i32 0, i32 0
  %8988 = load %union.rec*, %union.rec** %8987, align 8
  %8989 = bitcast %union.rec* %8988 to %struct.word_type*
  %8990 = getelementptr inbounds %struct.word_type, %struct.word_type* %8989, i32 0, i32 0
  %8991 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8990, i32 0, i64 0
  %8992 = getelementptr inbounds %struct.LIST, %struct.LIST* %8991, i32 0, i32 1
  store %union.rec* %8982, %union.rec** %8992, align 8
  %8993 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8994 = load %union.rec*, %union.rec** @zz_hold, align 8
  %8995 = bitcast %union.rec* %8994 to %struct.word_type*
  %8996 = getelementptr inbounds %struct.word_type, %struct.word_type* %8995, i32 0, i32 0
  %8997 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8996, i32 0, i64 0
  %8998 = getelementptr inbounds %struct.LIST, %struct.LIST* %8997, i32 0, i32 1
  store %union.rec* %8993, %union.rec** %8998, align 8
  %8999 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9000 = bitcast %union.rec* %8999 to %struct.word_type*
  %9001 = getelementptr inbounds %struct.word_type, %struct.word_type* %9000, i32 0, i32 0
  %9002 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9001, i32 0, i64 0
  %9003 = getelementptr inbounds %struct.LIST, %struct.LIST* %9002, i32 0, i32 0
  store %union.rec* %8993, %union.rec** %9003, align 8
  %9004 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %9005

; <label>:9005                                    ; preds = %8964, %8963
  %9006 = phi %union.rec* [ null, %8963 ], [ %9004, %8964 ]
  %9007 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %9007, %union.rec** @zz_hold, align 8
  %9008 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %9008, %union.rec** @zz_hold, align 8
  %9009 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9010 = bitcast %union.rec* %9009 to %struct.word_type*
  %9011 = getelementptr inbounds %struct.word_type, %struct.word_type* %9010, i32 0, i32 1
  %9012 = bitcast %union.FIRST_UNION* %9011 to %struct.anon*
  %9013 = getelementptr inbounds %struct.anon, %struct.anon* %9012, i32 0, i32 0
  %9014 = load i8, i8* %9013, align 1
  %9015 = zext i8 %9014 to i32
  %9016 = icmp eq i32 %9015, 11
  br i1 %9016, label %9026, label %9017

; <label>:9017                                    ; preds = %9005
  %9018 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9019 = bitcast %union.rec* %9018 to %struct.word_type*
  %9020 = getelementptr inbounds %struct.word_type, %struct.word_type* %9019, i32 0, i32 1
  %9021 = bitcast %union.FIRST_UNION* %9020 to %struct.anon*
  %9022 = getelementptr inbounds %struct.anon, %struct.anon* %9021, i32 0, i32 0
  %9023 = load i8, i8* %9022, align 1
  %9024 = zext i8 %9023 to i32
  %9025 = icmp eq i32 %9024, 12
  br i1 %9025, label %9026, label %9034

; <label>:9026                                    ; preds = %9017, %9005
  %9027 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9028 = bitcast %union.rec* %9027 to %struct.word_type*
  %9029 = getelementptr inbounds %struct.word_type, %struct.word_type* %9028, i32 0, i32 1
  %9030 = bitcast %union.FIRST_UNION* %9029 to %struct.anon*
  %9031 = getelementptr inbounds %struct.anon, %struct.anon* %9030, i32 0, i32 1
  %9032 = load i8, i8* %9031, align 1
  %9033 = zext i8 %9032 to i32
  br label %9045

; <label>:9034                                    ; preds = %9017
  %9035 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9036 = bitcast %union.rec* %9035 to %struct.word_type*
  %9037 = getelementptr inbounds %struct.word_type, %struct.word_type* %9036, i32 0, i32 1
  %9038 = bitcast %union.FIRST_UNION* %9037 to %struct.anon*
  %9039 = getelementptr inbounds %struct.anon, %struct.anon* %9038, i32 0, i32 0
  %9040 = load i8, i8* %9039, align 1
  %9041 = zext i8 %9040 to i64
  %9042 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %9041
  %9043 = load i8, i8* %9042, align 1
  %9044 = zext i8 %9043 to i32
  br label %9045

; <label>:9045                                    ; preds = %9034, %9026
  %9046 = phi i32 [ %9033, %9026 ], [ %9044, %9034 ]
  store i32 %9046, i32* @zz_size, align 4
  %9047 = load i32, i32* @zz_size, align 4
  %9048 = sext i32 %9047 to i64
  %9049 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %9048
  %9050 = load %union.rec*, %union.rec** %9049, align 8
  %9051 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9052 = bitcast %union.rec* %9051 to %struct.word_type*
  %9053 = getelementptr inbounds %struct.word_type, %struct.word_type* %9052, i32 0, i32 0
  %9054 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9053, i32 0, i64 0
  %9055 = getelementptr inbounds %struct.LIST, %struct.LIST* %9054, i32 0, i32 0
  store %union.rec* %9050, %union.rec** %9055, align 8
  %9056 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9057 = load i32, i32* @zz_size, align 4
  %9058 = sext i32 %9057 to i64
  %9059 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %9058
  store %union.rec* %9056, %union.rec** %9059, align 8
  %9060 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %9061 = bitcast %union.rec* %9060 to %struct.word_type*
  %9062 = getelementptr inbounds %struct.word_type, %struct.word_type* %9061, i32 0, i32 0
  %9063 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9062, i32 0, i64 1
  %9064 = getelementptr inbounds %struct.LIST, %struct.LIST* %9063, i32 0, i32 1
  %9065 = load %union.rec*, %union.rec** %9064, align 8
  %9066 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %9067 = icmp eq %union.rec* %9065, %9066
  br i1 %9067, label %9068, label %9071

; <label>:9068                                    ; preds = %9045
  %9069 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %9070 = call i32 @DisposeObject(%union.rec* %9069)
  br label %9071

; <label>:9071                                    ; preds = %9068, %9045
  br label %9072

; <label>:9072                                    ; preds = %9071, %8626
  %9073 = load %union.rec*, %union.rec** %2, align 8
  %9074 = bitcast %union.rec* %9073 to %struct.closure_type*
  %9075 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %9074, i32 0, i32 4
  %9076 = bitcast %union.FOURTH_UNION* %9075 to %struct.STYLE*
  %9077 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %9076, i32 0, i32 4
  %9078 = load i32, i32* %9077, align 4
  %9079 = lshr i32 %9078, 31
  %9080 = icmp ne i32 %9079, 0
  br i1 %9080, label %9081, label %9149

; <label>:9081                                    ; preds = %9072
  %9082 = load %union.rec*, %union.rec** %res, align 8
  %9083 = bitcast %union.rec* %9082 to %struct.word_type*
  %9084 = getelementptr inbounds %struct.word_type, %struct.word_type* %9083, i32 0, i32 0
  %9085 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9084, i32 0, i64 0
  %9086 = getelementptr inbounds %struct.LIST, %struct.LIST* %9085, i32 0, i32 1
  %9087 = load %union.rec*, %union.rec** %9086, align 8
  %9088 = load %union.rec*, %union.rec** %res, align 8
  %9089 = bitcast %union.rec* %9088 to %struct.word_type*
  %9090 = getelementptr inbounds %struct.word_type, %struct.word_type* %9089, i32 0, i32 0
  %9091 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9090, i32 0, i64 0
  %9092 = getelementptr inbounds %struct.LIST, %struct.LIST* %9091, i32 0, i32 0
  %9093 = load %union.rec*, %union.rec** %9092, align 8
  %9094 = icmp ne %union.rec* %9087, %9093
  br i1 %9094, label %9095, label %9149

; <label>:9095                                    ; preds = %9081
  %9096 = load %union.rec*, %union.rec** %res, align 8
  %9097 = bitcast %union.rec* %9096 to %struct.word_type*
  %9098 = getelementptr inbounds %struct.word_type, %struct.word_type* %9097, i32 0, i32 0
  %9099 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9098, i32 0, i64 0
  %9100 = getelementptr inbounds %struct.LIST, %struct.LIST* %9099, i32 0, i32 1
  %9101 = load %union.rec*, %union.rec** %9100, align 8
  %9102 = bitcast %union.rec* %9101 to %struct.word_type*
  %9103 = getelementptr inbounds %struct.word_type, %struct.word_type* %9102, i32 0, i32 0
  %9104 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9103, i32 0, i64 0
  %9105 = getelementptr inbounds %struct.LIST, %struct.LIST* %9104, i32 0, i32 1
  %9106 = load %union.rec*, %union.rec** %9105, align 8
  %9107 = bitcast %union.rec* %9106 to %struct.word_type*
  %9108 = getelementptr inbounds %struct.word_type, %struct.word_type* %9107, i32 0, i32 0
  %9109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9108, i32 0, i64 1
  %9110 = getelementptr inbounds %struct.LIST, %struct.LIST* %9109, i32 0, i32 0
  %9111 = load %union.rec*, %union.rec** %9110, align 8
  store %union.rec* %9111, %union.rec** %gp, align 8
  br label %9112

; <label>:9112                                    ; preds = %9122, %9095
  %9113 = load %union.rec*, %union.rec** %gp, align 8
  %9114 = bitcast %union.rec* %9113 to %struct.word_type*
  %9115 = getelementptr inbounds %struct.word_type, %struct.word_type* %9114, i32 0, i32 1
  %9116 = bitcast %union.FIRST_UNION* %9115 to %struct.anon*
  %9117 = getelementptr inbounds %struct.anon, %struct.anon* %9116, i32 0, i32 0
  %9118 = load i8, i8* %9117, align 1
  %9119 = zext i8 %9118 to i32
  %9120 = icmp eq i32 %9119, 0
  br i1 %9120, label %9121, label %9129

; <label>:9121                                    ; preds = %9112
  br label %9122

; <label>:9122                                    ; preds = %9121
  %9123 = load %union.rec*, %union.rec** %gp, align 8
  %9124 = bitcast %union.rec* %9123 to %struct.word_type*
  %9125 = getelementptr inbounds %struct.word_type, %struct.word_type* %9124, i32 0, i32 0
  %9126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9125, i32 0, i64 1
  %9127 = getelementptr inbounds %struct.LIST, %struct.LIST* %9126, i32 0, i32 0
  %9128 = load %union.rec*, %union.rec** %9127, align 8
  store %union.rec* %9128, %union.rec** %gp, align 8
  br label %9112

; <label>:9129                                    ; preds = %9112
  %9130 = load %union.rec*, %union.rec** %gp, align 8
  %9131 = bitcast %union.rec* %9130 to %struct.word_type*
  %9132 = getelementptr inbounds %struct.word_type, %struct.word_type* %9131, i32 0, i32 1
  %9133 = bitcast %union.FIRST_UNION* %9132 to %struct.anon*
  %9134 = getelementptr inbounds %struct.anon, %struct.anon* %9133, i32 0, i32 0
  %9135 = load i8, i8* %9134, align 1
  %9136 = zext i8 %9135 to i32
  %9137 = icmp eq i32 %9136, 1
  br i1 %9137, label %9141, label %9138

; <label>:9138                                    ; preds = %9129
  %9139 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %9140 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %9139, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i32 0, i32 0))
  br label %9141

; <label>:9141                                    ; preds = %9138, %9129
  %9142 = load %union.rec*, %union.rec** %gp, align 8
  %9143 = bitcast %union.rec* %9142 to %struct.gapobj_type*
  %9144 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %9143, i32 0, i32 3
  %9145 = bitcast %struct.GAP* %9144 to i16*
  %9146 = load i16, i16* %9145, align 4
  %9147 = and i16 %9146, -129
  %9148 = or i16 %9147, 128
  store i16 %9148, i16* %9145, align 4
  br label %9149

; <label>:9149                                    ; preds = %9141, %9081, %9072
  %9150 = load %union.rec*, %union.rec** %2, align 8
  %9151 = bitcast %union.rec* %9150 to %struct.closure_type*
  %9152 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %9151, i32 0, i32 4
  %9153 = bitcast %union.FOURTH_UNION* %9152 to %struct.STYLE*
  %9154 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %9153, i32 0, i32 4
  %9155 = load i32, i32* %9154, align 4
  %9156 = lshr i32 %9155, 30
  %9157 = and i32 %9156, 1
  %9158 = icmp ne i32 %9157, 0
  br i1 %9158, label %9159, label %9227

; <label>:9159                                    ; preds = %9149
  %9160 = load %union.rec*, %union.rec** %res, align 8
  %9161 = bitcast %union.rec* %9160 to %struct.word_type*
  %9162 = getelementptr inbounds %struct.word_type, %struct.word_type* %9161, i32 0, i32 0
  %9163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9162, i32 0, i64 0
  %9164 = getelementptr inbounds %struct.LIST, %struct.LIST* %9163, i32 0, i32 1
  %9165 = load %union.rec*, %union.rec** %9164, align 8
  %9166 = load %union.rec*, %union.rec** %res, align 8
  %9167 = bitcast %union.rec* %9166 to %struct.word_type*
  %9168 = getelementptr inbounds %struct.word_type, %struct.word_type* %9167, i32 0, i32 0
  %9169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9168, i32 0, i64 0
  %9170 = getelementptr inbounds %struct.LIST, %struct.LIST* %9169, i32 0, i32 0
  %9171 = load %union.rec*, %union.rec** %9170, align 8
  %9172 = icmp ne %union.rec* %9165, %9171
  br i1 %9172, label %9173, label %9227

; <label>:9173                                    ; preds = %9159
  %9174 = load %union.rec*, %union.rec** %res, align 8
  %9175 = bitcast %union.rec* %9174 to %struct.word_type*
  %9176 = getelementptr inbounds %struct.word_type, %struct.word_type* %9175, i32 0, i32 0
  %9177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9176, i32 0, i64 0
  %9178 = getelementptr inbounds %struct.LIST, %struct.LIST* %9177, i32 0, i32 0
  %9179 = load %union.rec*, %union.rec** %9178, align 8
  %9180 = bitcast %union.rec* %9179 to %struct.word_type*
  %9181 = getelementptr inbounds %struct.word_type, %struct.word_type* %9180, i32 0, i32 0
  %9182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9181, i32 0, i64 0
  %9183 = getelementptr inbounds %struct.LIST, %struct.LIST* %9182, i32 0, i32 0
  %9184 = load %union.rec*, %union.rec** %9183, align 8
  %9185 = bitcast %union.rec* %9184 to %struct.word_type*
  %9186 = getelementptr inbounds %struct.word_type, %struct.word_type* %9185, i32 0, i32 0
  %9187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9186, i32 0, i64 1
  %9188 = getelementptr inbounds %struct.LIST, %struct.LIST* %9187, i32 0, i32 0
  %9189 = load %union.rec*, %union.rec** %9188, align 8
  store %union.rec* %9189, %union.rec** %gp, align 8
  br label %9190

; <label>:9190                                    ; preds = %9200, %9173
  %9191 = load %union.rec*, %union.rec** %gp, align 8
  %9192 = bitcast %union.rec* %9191 to %struct.word_type*
  %9193 = getelementptr inbounds %struct.word_type, %struct.word_type* %9192, i32 0, i32 1
  %9194 = bitcast %union.FIRST_UNION* %9193 to %struct.anon*
  %9195 = getelementptr inbounds %struct.anon, %struct.anon* %9194, i32 0, i32 0
  %9196 = load i8, i8* %9195, align 1
  %9197 = zext i8 %9196 to i32
  %9198 = icmp eq i32 %9197, 0
  br i1 %9198, label %9199, label %9207

; <label>:9199                                    ; preds = %9190
  br label %9200

; <label>:9200                                    ; preds = %9199
  %9201 = load %union.rec*, %union.rec** %gp, align 8
  %9202 = bitcast %union.rec* %9201 to %struct.word_type*
  %9203 = getelementptr inbounds %struct.word_type, %struct.word_type* %9202, i32 0, i32 0
  %9204 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9203, i32 0, i64 1
  %9205 = getelementptr inbounds %struct.LIST, %struct.LIST* %9204, i32 0, i32 0
  %9206 = load %union.rec*, %union.rec** %9205, align 8
  store %union.rec* %9206, %union.rec** %gp, align 8
  br label %9190

; <label>:9207                                    ; preds = %9190
  %9208 = load %union.rec*, %union.rec** %gp, align 8
  %9209 = bitcast %union.rec* %9208 to %struct.word_type*
  %9210 = getelementptr inbounds %struct.word_type, %struct.word_type* %9209, i32 0, i32 1
  %9211 = bitcast %union.FIRST_UNION* %9210 to %struct.anon*
  %9212 = getelementptr inbounds %struct.anon, %struct.anon* %9211, i32 0, i32 0
  %9213 = load i8, i8* %9212, align 1
  %9214 = zext i8 %9213 to i32
  %9215 = icmp eq i32 %9214, 1
  br i1 %9215, label %9219, label %9216

; <label>:9216                                    ; preds = %9207
  %9217 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %9218 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %9217, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i32 0, i32 0))
  br label %9219

; <label>:9219                                    ; preds = %9216, %9207
  %9220 = load %union.rec*, %union.rec** %gp, align 8
  %9221 = bitcast %union.rec* %9220 to %struct.gapobj_type*
  %9222 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %9221, i32 0, i32 3
  %9223 = bitcast %struct.GAP* %9222 to i16*
  %9224 = load i16, i16* %9223, align 4
  %9225 = and i16 %9224, -129
  %9226 = or i16 %9225, 128
  store i16 %9226, i16* %9223, align 4
  br label %9227

; <label>:9227                                    ; preds = %9219, %9159, %9149
  %9228 = load %union.rec*, %union.rec** %res, align 8
  %9229 = bitcast %union.rec* %9228 to %struct.word_type*
  %9230 = getelementptr inbounds %struct.word_type, %struct.word_type* %9229, i32 0, i32 0
  %9231 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9230, i32 0, i64 0
  %9232 = getelementptr inbounds %struct.LIST, %struct.LIST* %9231, i32 0, i32 0
  %9233 = load %union.rec*, %union.rec** %9232, align 8
  %9234 = load %union.rec*, %union.rec** %res, align 8
  %9235 = icmp ne %union.rec* %9233, %9234
  br i1 %9235, label %9239, label %9236

; <label>:9236                                    ; preds = %9227
  %9237 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %9238 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %9237, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i32 0, i32 0))
  br label %9239

; <label>:9239                                    ; preds = %9236, %9227
  %9240 = load %union.rec*, %union.rec** %res, align 8
  %9241 = bitcast %union.rec* %9240 to %struct.word_type*
  %9242 = getelementptr inbounds %struct.word_type, %struct.word_type* %9241, i32 0, i32 0
  %9243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9242, i32 0, i64 0
  %9244 = getelementptr inbounds %struct.LIST, %struct.LIST* %9243, i32 0, i32 0
  %9245 = load %union.rec*, %union.rec** %9244, align 8
  %9246 = bitcast %union.rec* %9245 to %struct.word_type*
  %9247 = getelementptr inbounds %struct.word_type, %struct.word_type* %9246, i32 0, i32 0
  %9248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9247, i32 0, i64 1
  %9249 = getelementptr inbounds %struct.LIST, %struct.LIST* %9248, i32 0, i32 0
  %9250 = load %union.rec*, %union.rec** %9249, align 8
  store %union.rec* %9250, %union.rec** %y, align 8
  br label %9251

; <label>:9251                                    ; preds = %9261, %9239
  %9252 = load %union.rec*, %union.rec** %y, align 8
  %9253 = bitcast %union.rec* %9252 to %struct.word_type*
  %9254 = getelementptr inbounds %struct.word_type, %struct.word_type* %9253, i32 0, i32 1
  %9255 = bitcast %union.FIRST_UNION* %9254 to %struct.anon*
  %9256 = getelementptr inbounds %struct.anon, %struct.anon* %9255, i32 0, i32 0
  %9257 = load i8, i8* %9256, align 1
  %9258 = zext i8 %9257 to i32
  %9259 = icmp eq i32 %9258, 0
  br i1 %9259, label %9260, label %9268

; <label>:9260                                    ; preds = %9251
  br label %9261

; <label>:9261                                    ; preds = %9260
  %9262 = load %union.rec*, %union.rec** %y, align 8
  %9263 = bitcast %union.rec* %9262 to %struct.word_type*
  %9264 = getelementptr inbounds %struct.word_type, %struct.word_type* %9263, i32 0, i32 0
  %9265 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9264, i32 0, i64 1
  %9266 = getelementptr inbounds %struct.LIST, %struct.LIST* %9265, i32 0, i32 0
  %9267 = load %union.rec*, %union.rec** %9266, align 8
  store %union.rec* %9267, %union.rec** %y, align 8
  br label %9251

; <label>:9268                                    ; preds = %9251
  store i32 1, i32* %jn, align 4
  %9269 = load %union.rec*, %union.rec** %y, align 8
  %9270 = bitcast %union.rec* %9269 to %struct.word_type*
  %9271 = getelementptr inbounds %struct.word_type, %struct.word_type* %9270, i32 0, i32 0
  %9272 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9271, i32 0, i64 0
  %9273 = getelementptr inbounds %struct.LIST, %struct.LIST* %9272, i32 0, i32 1
  %9274 = load %union.rec*, %union.rec** %9273, align 8
  store %union.rec* %9274, %union.rec** %link, align 8
  br label %9275

; <label>:9275                                    ; preds = %9364, %9268
  %9276 = load %union.rec*, %union.rec** %link, align 8
  %9277 = load %union.rec*, %union.rec** %y, align 8
  %9278 = icmp ne %union.rec* %9276, %9277
  br i1 %9278, label %9279, label %9371

; <label>:9279                                    ; preds = %9275
  %9280 = load %union.rec*, %union.rec** %link, align 8
  %9281 = bitcast %union.rec* %9280 to %struct.word_type*
  %9282 = getelementptr inbounds %struct.word_type, %struct.word_type* %9281, i32 0, i32 0
  %9283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9282, i32 0, i64 1
  %9284 = getelementptr inbounds %struct.LIST, %struct.LIST* %9283, i32 0, i32 0
  %9285 = load %union.rec*, %union.rec** %9284, align 8
  store %union.rec* %9285, %union.rec** %z, align 8
  br label %9286

; <label>:9286                                    ; preds = %9296, %9279
  %9287 = load %union.rec*, %union.rec** %z, align 8
  %9288 = bitcast %union.rec* %9287 to %struct.word_type*
  %9289 = getelementptr inbounds %struct.word_type, %struct.word_type* %9288, i32 0, i32 1
  %9290 = bitcast %union.FIRST_UNION* %9289 to %struct.anon*
  %9291 = getelementptr inbounds %struct.anon, %struct.anon* %9290, i32 0, i32 0
  %9292 = load i8, i8* %9291, align 1
  %9293 = zext i8 %9292 to i32
  %9294 = icmp eq i32 %9293, 0
  br i1 %9294, label %9295, label %9303

; <label>:9295                                    ; preds = %9286
  br label %9296

; <label>:9296                                    ; preds = %9295
  %9297 = load %union.rec*, %union.rec** %z, align 8
  %9298 = bitcast %union.rec* %9297 to %struct.word_type*
  %9299 = getelementptr inbounds %struct.word_type, %struct.word_type* %9298, i32 0, i32 0
  %9300 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9299, i32 0, i64 1
  %9301 = getelementptr inbounds %struct.LIST, %struct.LIST* %9300, i32 0, i32 0
  %9302 = load %union.rec*, %union.rec** %9301, align 8
  store %union.rec* %9302, %union.rec** %z, align 8
  br label %9286

; <label>:9303                                    ; preds = %9286
  %9304 = load %union.rec*, %union.rec** %z, align 8
  %9305 = bitcast %union.rec* %9304 to %struct.word_type*
  %9306 = getelementptr inbounds %struct.word_type, %struct.word_type* %9305, i32 0, i32 1
  %9307 = bitcast %union.FIRST_UNION* %9306 to %struct.anon*
  %9308 = getelementptr inbounds %struct.anon, %struct.anon* %9307, i32 0, i32 0
  %9309 = load i8, i8* %9308, align 1
  %9310 = zext i8 %9309 to i32
  %9311 = icmp eq i32 %9310, 1
  br i1 %9311, label %9312, label %9328

; <label>:9312                                    ; preds = %9303
  %9313 = load i32, i32* %jn, align 4
  %9314 = icmp ne i32 %9313, 0
  br i1 %9314, label %9315, label %9325

; <label>:9315                                    ; preds = %9312
  %9316 = load %union.rec*, %union.rec** %z, align 8
  %9317 = bitcast %union.rec* %9316 to %struct.gapobj_type*
  %9318 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %9317, i32 0, i32 3
  %9319 = bitcast %struct.GAP* %9318 to i16*
  %9320 = load i16, i16* %9319, align 4
  %9321 = lshr i16 %9320, 9
  %9322 = and i16 %9321, 1
  %9323 = zext i16 %9322 to i32
  %9324 = icmp ne i32 %9323, 0
  br label %9325

; <label>:9325                                    ; preds = %9315, %9312
  %9326 = phi i1 [ false, %9312 ], [ %9324, %9315 ]
  %9327 = zext i1 %9326 to i32
  store i32 %9327, i32* %jn, align 4
  br label %9363

; <label>:9328                                    ; preds = %9303
  %9329 = load %union.rec*, %union.rec** %z, align 8
  %9330 = bitcast %union.rec* %9329 to %struct.word_type*
  %9331 = getelementptr inbounds %struct.word_type, %struct.word_type* %9330, i32 0, i32 1
  %9332 = bitcast %union.FIRST_UNION* %9331 to %struct.anon*
  %9333 = getelementptr inbounds %struct.anon, %struct.anon* %9332, i32 0, i32 0
  %9334 = load i8, i8* %9333, align 1
  %9335 = zext i8 %9334 to i32
  %9336 = icmp eq i32 %9335, 9
  br i1 %9336, label %9337, label %9341

; <label>:9337                                    ; preds = %9328
  %9338 = load %union.rec*, %union.rec** %z, align 8
  %9339 = call i32 @SplitIsDefinite(%union.rec* %9338)
  %9340 = icmp ne i32 %9339, 0
  br i1 %9340, label %9361, label %9362

; <label>:9341                                    ; preds = %9328
  %9342 = load %union.rec*, %union.rec** %z, align 8
  %9343 = bitcast %union.rec* %9342 to %struct.word_type*
  %9344 = getelementptr inbounds %struct.word_type, %struct.word_type* %9343, i32 0, i32 1
  %9345 = bitcast %union.FIRST_UNION* %9344 to %struct.anon*
  %9346 = getelementptr inbounds %struct.anon, %struct.anon* %9345, i32 0, i32 0
  %9347 = load i8, i8* %9346, align 1
  %9348 = zext i8 %9347 to i32
  %9349 = icmp sge i32 %9348, 9
  br i1 %9349, label %9350, label %9359

; <label>:9350                                    ; preds = %9341
  %9351 = load %union.rec*, %union.rec** %z, align 8
  %9352 = bitcast %union.rec* %9351 to %struct.word_type*
  %9353 = getelementptr inbounds %struct.word_type, %struct.word_type* %9352, i32 0, i32 1
  %9354 = bitcast %union.FIRST_UNION* %9353 to %struct.anon*
  %9355 = getelementptr inbounds %struct.anon, %struct.anon* %9354, i32 0, i32 0
  %9356 = load i8, i8* %9355, align 1
  %9357 = zext i8 %9356 to i32
  %9358 = icmp sle i32 %9357, 99
  br label %9359

; <label>:9359                                    ; preds = %9350, %9341
  %9360 = phi i1 [ false, %9341 ], [ %9358, %9350 ]
  br i1 %9360, label %9361, label %9362

; <label>:9361                                    ; preds = %9359, %9337
  br label %9371

; <label>:9362                                    ; preds = %9359, %9337
  br label %9363

; <label>:9363                                    ; preds = %9362, %9325
  br label %9364

; <label>:9364                                    ; preds = %9363
  %9365 = load %union.rec*, %union.rec** %link, align 8
  %9366 = bitcast %union.rec* %9365 to %struct.word_type*
  %9367 = getelementptr inbounds %struct.word_type, %struct.word_type* %9366, i32 0, i32 0
  %9368 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9367, i32 0, i64 0
  %9369 = getelementptr inbounds %struct.LIST, %struct.LIST* %9368, i32 0, i32 1
  %9370 = load %union.rec*, %union.rec** %9369, align 8
  store %union.rec* %9370, %union.rec** %link, align 8
  br label %9275

; <label>:9371                                    ; preds = %9361, %9275
  %9372 = load %union.rec*, %union.rec** %link, align 8
  %9373 = load %union.rec*, %union.rec** %y, align 8
  %9374 = icmp ne %union.rec* %9372, %9373
  br i1 %9374, label %9378, label %9375

; <label>:9375                                    ; preds = %9371
  %9376 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %9377 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %9376, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.28, i32 0, i32 0))
  br label %9378

; <label>:9378                                    ; preds = %9375, %9371
  %9379 = load %union.rec*, %union.rec** %z, align 8
  %9380 = bitcast %union.rec* %9379 to %struct.word_type*
  %9381 = getelementptr inbounds %struct.word_type, %struct.word_type* %9380, i32 0, i32 3
  %9382 = bitcast %union.THIRD_UNION* %9381 to %struct.anon.6*
  %9383 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %9382, i32 0, i32 0
  %9384 = getelementptr inbounds [2 x i32], [2 x i32]* %9383, i32 0, i64 0
  %9385 = load i32, i32* %9384, align 4
  store i32 %9385, i32* %f, align 4
  %9386 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %9386, %union.rec** %prev, align 8
  store %union.rec* null, %union.rec** %gp, align 8
  store i32 1, i32* %jn, align 4
  %9387 = load %union.rec*, %union.rec** %link, align 8
  %9388 = bitcast %union.rec* %9387 to %struct.word_type*
  %9389 = getelementptr inbounds %struct.word_type, %struct.word_type* %9388, i32 0, i32 0
  %9390 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9389, i32 0, i64 0
  %9391 = getelementptr inbounds %struct.LIST, %struct.LIST* %9390, i32 0, i32 1
  %9392 = load %union.rec*, %union.rec** %9391, align 8
  store %union.rec* %9392, %union.rec** %link, align 8
  br label %9393

; <label>:9393                                    ; preds = %9489, %9378
  %9394 = load %union.rec*, %union.rec** %link, align 8
  %9395 = load %union.rec*, %union.rec** %y, align 8
  %9396 = icmp ne %union.rec* %9394, %9395
  br i1 %9396, label %9397, label %9496

; <label>:9397                                    ; preds = %9393
  %9398 = load %union.rec*, %union.rec** %link, align 8
  %9399 = bitcast %union.rec* %9398 to %struct.word_type*
  %9400 = getelementptr inbounds %struct.word_type, %struct.word_type* %9399, i32 0, i32 0
  %9401 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9400, i32 0, i64 1
  %9402 = getelementptr inbounds %struct.LIST, %struct.LIST* %9401, i32 0, i32 0
  %9403 = load %union.rec*, %union.rec** %9402, align 8
  store %union.rec* %9403, %union.rec** %z, align 8
  br label %9404

; <label>:9404                                    ; preds = %9414, %9397
  %9405 = load %union.rec*, %union.rec** %z, align 8
  %9406 = bitcast %union.rec* %9405 to %struct.word_type*
  %9407 = getelementptr inbounds %struct.word_type, %struct.word_type* %9406, i32 0, i32 1
  %9408 = bitcast %union.FIRST_UNION* %9407 to %struct.anon*
  %9409 = getelementptr inbounds %struct.anon, %struct.anon* %9408, i32 0, i32 0
  %9410 = load i8, i8* %9409, align 1
  %9411 = zext i8 %9410 to i32
  %9412 = icmp eq i32 %9411, 0
  br i1 %9412, label %9413, label %9421

; <label>:9413                                    ; preds = %9404
  br label %9414

; <label>:9414                                    ; preds = %9413
  %9415 = load %union.rec*, %union.rec** %z, align 8
  %9416 = bitcast %union.rec* %9415 to %struct.word_type*
  %9417 = getelementptr inbounds %struct.word_type, %struct.word_type* %9416, i32 0, i32 0
  %9418 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9417, i32 0, i64 1
  %9419 = getelementptr inbounds %struct.LIST, %struct.LIST* %9418, i32 0, i32 0
  %9420 = load %union.rec*, %union.rec** %9419, align 8
  store %union.rec* %9420, %union.rec** %z, align 8
  br label %9404

; <label>:9421                                    ; preds = %9404
  %9422 = load %union.rec*, %union.rec** %z, align 8
  %9423 = bitcast %union.rec* %9422 to %struct.word_type*
  %9424 = getelementptr inbounds %struct.word_type, %struct.word_type* %9423, i32 0, i32 1
  %9425 = bitcast %union.FIRST_UNION* %9424 to %struct.anon*
  %9426 = getelementptr inbounds %struct.anon, %struct.anon* %9425, i32 0, i32 0
  %9427 = load i8, i8* %9426, align 1
  %9428 = zext i8 %9427 to i32
  %9429 = icmp eq i32 %9428, 1
  br i1 %9429, label %9430, label %9447

; <label>:9430                                    ; preds = %9421
  %9431 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %9431, %union.rec** %gp, align 8
  %9432 = load i32, i32* %jn, align 4
  %9433 = icmp ne i32 %9432, 0
  br i1 %9433, label %9434, label %9444

; <label>:9434                                    ; preds = %9430
  %9435 = load %union.rec*, %union.rec** %z, align 8
  %9436 = bitcast %union.rec* %9435 to %struct.gapobj_type*
  %9437 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %9436, i32 0, i32 3
  %9438 = bitcast %struct.GAP* %9437 to i16*
  %9439 = load i16, i16* %9438, align 4
  %9440 = lshr i16 %9439, 9
  %9441 = and i16 %9440, 1
  %9442 = zext i16 %9441 to i32
  %9443 = icmp ne i32 %9442, 0
  br label %9444

; <label>:9444                                    ; preds = %9434, %9430
  %9445 = phi i1 [ false, %9430 ], [ %9443, %9434 ]
  %9446 = zext i1 %9445 to i32
  store i32 %9446, i32* %jn, align 4
  br label %9488

; <label>:9447                                    ; preds = %9421
  %9448 = load %union.rec*, %union.rec** %z, align 8
  %9449 = bitcast %union.rec* %9448 to %struct.word_type*
  %9450 = getelementptr inbounds %struct.word_type, %struct.word_type* %9449, i32 0, i32 1
  %9451 = bitcast %union.FIRST_UNION* %9450 to %struct.anon*
  %9452 = getelementptr inbounds %struct.anon, %struct.anon* %9451, i32 0, i32 0
  %9453 = load i8, i8* %9452, align 1
  %9454 = zext i8 %9453 to i32
  %9455 = icmp eq i32 %9454, 9
  br i1 %9455, label %9456, label %9460

; <label>:9456                                    ; preds = %9447
  %9457 = load %union.rec*, %union.rec** %z, align 8
  %9458 = call i32 @SplitIsDefinite(%union.rec* %9457)
  %9459 = icmp ne i32 %9458, 0
  br i1 %9459, label %9480, label %9487

; <label>:9460                                    ; preds = %9447
  %9461 = load %union.rec*, %union.rec** %z, align 8
  %9462 = bitcast %union.rec* %9461 to %struct.word_type*
  %9463 = getelementptr inbounds %struct.word_type, %struct.word_type* %9462, i32 0, i32 1
  %9464 = bitcast %union.FIRST_UNION* %9463 to %struct.anon*
  %9465 = getelementptr inbounds %struct.anon, %struct.anon* %9464, i32 0, i32 0
  %9466 = load i8, i8* %9465, align 1
  %9467 = zext i8 %9466 to i32
  %9468 = icmp sge i32 %9467, 9
  br i1 %9468, label %9469, label %9478

; <label>:9469                                    ; preds = %9460
  %9470 = load %union.rec*, %union.rec** %z, align 8
  %9471 = bitcast %union.rec* %9470 to %struct.word_type*
  %9472 = getelementptr inbounds %struct.word_type, %struct.word_type* %9471, i32 0, i32 1
  %9473 = bitcast %union.FIRST_UNION* %9472 to %struct.anon*
  %9474 = getelementptr inbounds %struct.anon, %struct.anon* %9473, i32 0, i32 0
  %9475 = load i8, i8* %9474, align 1
  %9476 = zext i8 %9475 to i32
  %9477 = icmp sle i32 %9476, 99
  br label %9478

; <label>:9478                                    ; preds = %9469, %9460
  %9479 = phi i1 [ false, %9460 ], [ %9477, %9469 ]
  br i1 %9479, label %9480, label %9487

; <label>:9480                                    ; preds = %9478, %9456
  %9481 = load %union.rec*, %union.rec** %gp, align 8
  %9482 = icmp ne %union.rec* %9481, null
  br i1 %9482, label %9486, label %9483

; <label>:9483                                    ; preds = %9480
  %9484 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %9485 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %9484, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0))
  br label %9486

; <label>:9486                                    ; preds = %9483, %9480
  br label %9496

; <label>:9487                                    ; preds = %9478, %9456
  br label %9488

; <label>:9488                                    ; preds = %9487, %9444
  br label %9489

; <label>:9489                                    ; preds = %9488
  %9490 = load %union.rec*, %union.rec** %link, align 8
  %9491 = bitcast %union.rec* %9490 to %struct.word_type*
  %9492 = getelementptr inbounds %struct.word_type, %struct.word_type* %9491, i32 0, i32 0
  %9493 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9492, i32 0, i64 0
  %9494 = getelementptr inbounds %struct.LIST, %struct.LIST* %9493, i32 0, i32 1
  %9495 = load %union.rec*, %union.rec** %9494, align 8
  store %union.rec* %9495, %union.rec** %link, align 8
  br label %9393

; <label>:9496                                    ; preds = %9486, %9393
  br label %9497

; <label>:9497                                    ; preds = %9639, %9496
  %9498 = load %union.rec*, %union.rec** %link, align 8
  %9499 = load %union.rec*, %union.rec** %y, align 8
  %9500 = icmp ne %union.rec* %9498, %9499
  br i1 %9500, label %9501, label %9640

; <label>:9501                                    ; preds = %9497
  %9502 = load %union.rec*, %union.rec** %prev, align 8
  %9503 = bitcast %union.rec* %9502 to %struct.word_type*
  %9504 = getelementptr inbounds %struct.word_type, %struct.word_type* %9503, i32 0, i32 3
  %9505 = bitcast %union.THIRD_UNION* %9504 to %struct.anon.6*
  %9506 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %9505, i32 0, i32 1
  %9507 = getelementptr inbounds [2 x i32], [2 x i32]* %9506, i32 0, i64 0
  %9508 = load i32, i32* %9507, align 4
  %9509 = load %union.rec*, %union.rec** %z, align 8
  %9510 = bitcast %union.rec* %9509 to %struct.word_type*
  %9511 = getelementptr inbounds %struct.word_type, %struct.word_type* %9510, i32 0, i32 3
  %9512 = bitcast %union.THIRD_UNION* %9511 to %struct.anon.6*
  %9513 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %9512, i32 0, i32 0
  %9514 = getelementptr inbounds [2 x i32], [2 x i32]* %9513, i32 0, i64 0
  %9515 = load i32, i32* %9514, align 4
  %9516 = load %union.rec*, %union.rec** %z, align 8
  %9517 = bitcast %union.rec* %9516 to %struct.word_type*
  %9518 = getelementptr inbounds %struct.word_type, %struct.word_type* %9517, i32 0, i32 3
  %9519 = bitcast %union.THIRD_UNION* %9518 to %struct.anon.6*
  %9520 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %9519, i32 0, i32 1
  %9521 = getelementptr inbounds [2 x i32], [2 x i32]* %9520, i32 0, i64 0
  %9522 = load i32, i32* %9521, align 4
  %9523 = load %union.rec*, %union.rec** %gp, align 8
  %9524 = bitcast %union.rec* %9523 to %struct.gapobj_type*
  %9525 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %9524, i32 0, i32 3
  %9526 = call i32 @MinGap(i32 %9508, i32 %9515, i32 %9522, %struct.GAP* %9525)
  %9527 = load i32, i32* %f, align 4
  %9528 = add nsw i32 %9527, %9526
  store i32 %9528, i32* %f, align 4
  %9529 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %9529, %union.rec** %prev, align 8
  store %union.rec* null, %union.rec** %gp, align 8
  store i32 1, i32* %jn, align 4
  %9530 = load %union.rec*, %union.rec** %link, align 8
  %9531 = bitcast %union.rec* %9530 to %struct.word_type*
  %9532 = getelementptr inbounds %struct.word_type, %struct.word_type* %9531, i32 0, i32 0
  %9533 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9532, i32 0, i64 0
  %9534 = getelementptr inbounds %struct.LIST, %struct.LIST* %9533, i32 0, i32 1
  %9535 = load %union.rec*, %union.rec** %9534, align 8
  store %union.rec* %9535, %union.rec** %link, align 8
  br label %9536

; <label>:9536                                    ; preds = %9632, %9501
  %9537 = load %union.rec*, %union.rec** %link, align 8
  %9538 = load %union.rec*, %union.rec** %y, align 8
  %9539 = icmp ne %union.rec* %9537, %9538
  br i1 %9539, label %9540, label %9639

; <label>:9540                                    ; preds = %9536
  %9541 = load %union.rec*, %union.rec** %link, align 8
  %9542 = bitcast %union.rec* %9541 to %struct.word_type*
  %9543 = getelementptr inbounds %struct.word_type, %struct.word_type* %9542, i32 0, i32 0
  %9544 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9543, i32 0, i64 1
  %9545 = getelementptr inbounds %struct.LIST, %struct.LIST* %9544, i32 0, i32 0
  %9546 = load %union.rec*, %union.rec** %9545, align 8
  store %union.rec* %9546, %union.rec** %z, align 8
  br label %9547

; <label>:9547                                    ; preds = %9557, %9540
  %9548 = load %union.rec*, %union.rec** %z, align 8
  %9549 = bitcast %union.rec* %9548 to %struct.word_type*
  %9550 = getelementptr inbounds %struct.word_type, %struct.word_type* %9549, i32 0, i32 1
  %9551 = bitcast %union.FIRST_UNION* %9550 to %struct.anon*
  %9552 = getelementptr inbounds %struct.anon, %struct.anon* %9551, i32 0, i32 0
  %9553 = load i8, i8* %9552, align 1
  %9554 = zext i8 %9553 to i32
  %9555 = icmp eq i32 %9554, 0
  br i1 %9555, label %9556, label %9564

; <label>:9556                                    ; preds = %9547
  br label %9557

; <label>:9557                                    ; preds = %9556
  %9558 = load %union.rec*, %union.rec** %z, align 8
  %9559 = bitcast %union.rec* %9558 to %struct.word_type*
  %9560 = getelementptr inbounds %struct.word_type, %struct.word_type* %9559, i32 0, i32 0
  %9561 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9560, i32 0, i64 1
  %9562 = getelementptr inbounds %struct.LIST, %struct.LIST* %9561, i32 0, i32 0
  %9563 = load %union.rec*, %union.rec** %9562, align 8
  store %union.rec* %9563, %union.rec** %z, align 8
  br label %9547

; <label>:9564                                    ; preds = %9547
  %9565 = load %union.rec*, %union.rec** %z, align 8
  %9566 = bitcast %union.rec* %9565 to %struct.word_type*
  %9567 = getelementptr inbounds %struct.word_type, %struct.word_type* %9566, i32 0, i32 1
  %9568 = bitcast %union.FIRST_UNION* %9567 to %struct.anon*
  %9569 = getelementptr inbounds %struct.anon, %struct.anon* %9568, i32 0, i32 0
  %9570 = load i8, i8* %9569, align 1
  %9571 = zext i8 %9570 to i32
  %9572 = icmp eq i32 %9571, 1
  br i1 %9572, label %9573, label %9590

; <label>:9573                                    ; preds = %9564
  %9574 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %9574, %union.rec** %gp, align 8
  %9575 = load i32, i32* %jn, align 4
  %9576 = icmp ne i32 %9575, 0
  br i1 %9576, label %9577, label %9587

; <label>:9577                                    ; preds = %9573
  %9578 = load %union.rec*, %union.rec** %z, align 8
  %9579 = bitcast %union.rec* %9578 to %struct.gapobj_type*
  %9580 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %9579, i32 0, i32 3
  %9581 = bitcast %struct.GAP* %9580 to i16*
  %9582 = load i16, i16* %9581, align 4
  %9583 = lshr i16 %9582, 9
  %9584 = and i16 %9583, 1
  %9585 = zext i16 %9584 to i32
  %9586 = icmp ne i32 %9585, 0
  br label %9587

; <label>:9587                                    ; preds = %9577, %9573
  %9588 = phi i1 [ false, %9573 ], [ %9586, %9577 ]
  %9589 = zext i1 %9588 to i32
  store i32 %9589, i32* %jn, align 4
  br label %9631

; <label>:9590                                    ; preds = %9564
  %9591 = load %union.rec*, %union.rec** %z, align 8
  %9592 = bitcast %union.rec* %9591 to %struct.word_type*
  %9593 = getelementptr inbounds %struct.word_type, %struct.word_type* %9592, i32 0, i32 1
  %9594 = bitcast %union.FIRST_UNION* %9593 to %struct.anon*
  %9595 = getelementptr inbounds %struct.anon, %struct.anon* %9594, i32 0, i32 0
  %9596 = load i8, i8* %9595, align 1
  %9597 = zext i8 %9596 to i32
  %9598 = icmp eq i32 %9597, 9
  br i1 %9598, label %9599, label %9603

; <label>:9599                                    ; preds = %9590
  %9600 = load %union.rec*, %union.rec** %z, align 8
  %9601 = call i32 @SplitIsDefinite(%union.rec* %9600)
  %9602 = icmp ne i32 %9601, 0
  br i1 %9602, label %9623, label %9630

; <label>:9603                                    ; preds = %9590
  %9604 = load %union.rec*, %union.rec** %z, align 8
  %9605 = bitcast %union.rec* %9604 to %struct.word_type*
  %9606 = getelementptr inbounds %struct.word_type, %struct.word_type* %9605, i32 0, i32 1
  %9607 = bitcast %union.FIRST_UNION* %9606 to %struct.anon*
  %9608 = getelementptr inbounds %struct.anon, %struct.anon* %9607, i32 0, i32 0
  %9609 = load i8, i8* %9608, align 1
  %9610 = zext i8 %9609 to i32
  %9611 = icmp sge i32 %9610, 9
  br i1 %9611, label %9612, label %9621

; <label>:9612                                    ; preds = %9603
  %9613 = load %union.rec*, %union.rec** %z, align 8
  %9614 = bitcast %union.rec* %9613 to %struct.word_type*
  %9615 = getelementptr inbounds %struct.word_type, %struct.word_type* %9614, i32 0, i32 1
  %9616 = bitcast %union.FIRST_UNION* %9615 to %struct.anon*
  %9617 = getelementptr inbounds %struct.anon, %struct.anon* %9616, i32 0, i32 0
  %9618 = load i8, i8* %9617, align 1
  %9619 = zext i8 %9618 to i32
  %9620 = icmp sle i32 %9619, 99
  br label %9621

; <label>:9621                                    ; preds = %9612, %9603
  %9622 = phi i1 [ false, %9603 ], [ %9620, %9612 ]
  br i1 %9622, label %9623, label %9630

; <label>:9623                                    ; preds = %9621, %9599
  %9624 = load %union.rec*, %union.rec** %gp, align 8
  %9625 = icmp ne %union.rec* %9624, null
  br i1 %9625, label %9629, label %9626

; <label>:9626                                    ; preds = %9623
  %9627 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %9628 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %9627, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0))
  br label %9629

; <label>:9629                                    ; preds = %9626, %9623
  br label %9639

; <label>:9630                                    ; preds = %9621, %9599
  br label %9631

; <label>:9631                                    ; preds = %9630, %9587
  br label %9632

; <label>:9632                                    ; preds = %9631
  %9633 = load %union.rec*, %union.rec** %link, align 8
  %9634 = bitcast %union.rec* %9633 to %struct.word_type*
  %9635 = getelementptr inbounds %struct.word_type, %struct.word_type* %9634, i32 0, i32 0
  %9636 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9635, i32 0, i64 0
  %9637 = getelementptr inbounds %struct.LIST, %struct.LIST* %9636, i32 0, i32 1
  %9638 = load %union.rec*, %union.rec** %9637, align 8
  store %union.rec* %9638, %union.rec** %link, align 8
  br label %9536

; <label>:9639                                    ; preds = %9629, %9536
  br label %9497

; <label>:9640                                    ; preds = %9497
  %9641 = load i32, i32* %f, align 4
  %9642 = load %union.rec*, %union.rec** %prev, align 8
  %9643 = bitcast %union.rec* %9642 to %struct.word_type*
  %9644 = getelementptr inbounds %struct.word_type, %struct.word_type* %9643, i32 0, i32 3
  %9645 = bitcast %union.THIRD_UNION* %9644 to %struct.anon.6*
  %9646 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %9645, i32 0, i32 1
  %9647 = getelementptr inbounds [2 x i32], [2 x i32]* %9646, i32 0, i64 0
  %9648 = load i32, i32* %9647, align 4
  %9649 = add nsw i32 %9641, %9648
  %9650 = icmp slt i32 8388607, %9649
  br i1 %9650, label %9651, label %9652

; <label>:9651                                    ; preds = %9640
  br label %9662

; <label>:9652                                    ; preds = %9640
  %9653 = load i32, i32* %f, align 4
  %9654 = load %union.rec*, %union.rec** %prev, align 8
  %9655 = bitcast %union.rec* %9654 to %struct.word_type*
  %9656 = getelementptr inbounds %struct.word_type, %struct.word_type* %9655, i32 0, i32 3
  %9657 = bitcast %union.THIRD_UNION* %9656 to %struct.anon.6*
  %9658 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %9657, i32 0, i32 1
  %9659 = getelementptr inbounds [2 x i32], [2 x i32]* %9658, i32 0, i64 0
  %9660 = load i32, i32* %9659, align 4
  %9661 = add nsw i32 %9653, %9660
  br label %9662

; <label>:9662                                    ; preds = %9652, %9651
  %9663 = phi i32 [ 8388607, %9651 ], [ %9661, %9652 ]
  %9664 = load %union.rec*, %union.rec** %y, align 8
  %9665 = bitcast %union.rec* %9664 to %struct.word_type*
  %9666 = getelementptr inbounds %struct.word_type, %struct.word_type* %9665, i32 0, i32 3
  %9667 = bitcast %union.THIRD_UNION* %9666 to %struct.anon.6*
  %9668 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %9667, i32 0, i32 1
  %9669 = getelementptr inbounds [2 x i32], [2 x i32]* %9668, i32 0, i64 0
  store i32 %9663, i32* %9669, align 4
  %9670 = load %union.rec*, %union.rec** %y, align 8
  %9671 = bitcast %union.rec* %9670 to %struct.word_type*
  %9672 = getelementptr inbounds %struct.word_type, %struct.word_type* %9671, i32 0, i32 3
  %9673 = bitcast %union.THIRD_UNION* %9672 to %struct.anon.6*
  %9674 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %9673, i32 0, i32 0
  %9675 = getelementptr inbounds [2 x i32], [2 x i32]* %9674, i32 0, i64 0
  %9676 = load i32, i32* %9675, align 4
  %9677 = load %union.rec*, %union.rec** %y, align 8
  %9678 = bitcast %union.rec* %9677 to %struct.word_type*
  %9679 = getelementptr inbounds %struct.word_type, %struct.word_type* %9678, i32 0, i32 3
  %9680 = bitcast %union.THIRD_UNION* %9679 to %struct.anon.6*
  %9681 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %9680, i32 0, i32 1
  %9682 = getelementptr inbounds [2 x i32], [2 x i32]* %9681, i32 0, i64 0
  %9683 = load i32, i32* %9682, align 4
  %9684 = add nsw i32 %9676, %9683
  %9685 = load i32, i32* %max_width, align 4
  %9686 = icmp sgt i32 %9684, %9685
  br i1 %9686, label %9687, label %9698

; <label>:9687                                    ; preds = %9662
  %9688 = load %union.rec*, %union.rec** %y, align 8
  %9689 = bitcast %union.rec* %9688 to %struct.closure_type*
  %9690 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %9689, i32 0, i32 4
  %9691 = bitcast %union.FOURTH_UNION* %9690 to %struct.STYLE*
  %9692 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %9691, i32 0, i32 1
  %9693 = bitcast %union.anon.10* %9692 to %struct.anon.11*
  %9694 = bitcast %struct.anon.11* %9693 to i8*
  %9695 = load i8, i8* %9694, align 4
  %9696 = and i8 %9695, -113
  %9697 = or i8 %9696, 112
  store i8 %9697, i8* %9694, align 4
  br label %9698

; <label>:9698                                    ; preds = %9687, %9662
  br label %9699

; <label>:9699                                    ; preds = %9698, %4800
  br label %9700

; <label>:9700                                    ; preds = %9699
  %9701 = load i32*, i32** %8, align 8
  %9702 = load i32, i32* %9701, align 4
  %9703 = icmp ne i32 %9702, 0
  br i1 %9703, label %9704, label %10624

; <label>:9704                                    ; preds = %9700
  %9705 = load %union.rec*, %union.rec** %res, align 8
  %9706 = bitcast %union.rec* %9705 to %struct.word_type*
  %9707 = getelementptr inbounds %struct.word_type, %struct.word_type* %9706, i32 0, i32 1
  %9708 = bitcast %union.FIRST_UNION* %9707 to %struct.anon*
  %9709 = getelementptr inbounds %struct.anon, %struct.anon* %9708, i32 0, i32 0
  %9710 = load i8, i8* %9709, align 1
  %9711 = zext i8 %9710 to i32
  %9712 = icmp eq i32 %9711, 19
  br i1 %9712, label %9713, label %10624

; <label>:9713                                    ; preds = %9704
  %9714 = load %union.rec*, %union.rec** %res, align 8
  %9715 = bitcast %union.rec* %9714 to %struct.word_type*
  %9716 = getelementptr inbounds %struct.word_type, %struct.word_type* %9715, i32 0, i32 0
  %9717 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9716, i32 0, i64 0
  %9718 = getelementptr inbounds %struct.LIST, %struct.LIST* %9717, i32 0, i32 1
  %9719 = load %union.rec*, %union.rec** %9718, align 8
  store %union.rec* %9719, %union.rec** %link, align 8
  br label %9720

; <label>:9720                                    ; preds = %10616, %9713
  %9721 = load %union.rec*, %union.rec** %link, align 8
  %9722 = load %union.rec*, %union.rec** %res, align 8
  %9723 = icmp ne %union.rec* %9721, %9722
  br i1 %9723, label %9724, label %10623

; <label>:9724                                    ; preds = %9720
  %9725 = load %union.rec*, %union.rec** %link, align 8
  %9726 = bitcast %union.rec* %9725 to %struct.word_type*
  %9727 = getelementptr inbounds %struct.word_type, %struct.word_type* %9726, i32 0, i32 0
  %9728 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9727, i32 0, i64 1
  %9729 = getelementptr inbounds %struct.LIST, %struct.LIST* %9728, i32 0, i32 0
  %9730 = load %union.rec*, %union.rec** %9729, align 8
  store %union.rec* %9730, %union.rec** %y, align 8
  br label %9731

; <label>:9731                                    ; preds = %9741, %9724
  %9732 = load %union.rec*, %union.rec** %y, align 8
  %9733 = bitcast %union.rec* %9732 to %struct.word_type*
  %9734 = getelementptr inbounds %struct.word_type, %struct.word_type* %9733, i32 0, i32 1
  %9735 = bitcast %union.FIRST_UNION* %9734 to %struct.anon*
  %9736 = getelementptr inbounds %struct.anon, %struct.anon* %9735, i32 0, i32 0
  %9737 = load i8, i8* %9736, align 1
  %9738 = zext i8 %9737 to i32
  %9739 = icmp eq i32 %9738, 0
  br i1 %9739, label %9740, label %9748

; <label>:9740                                    ; preds = %9731
  br label %9741

; <label>:9741                                    ; preds = %9740
  %9742 = load %union.rec*, %union.rec** %y, align 8
  %9743 = bitcast %union.rec* %9742 to %struct.word_type*
  %9744 = getelementptr inbounds %struct.word_type, %struct.word_type* %9743, i32 0, i32 0
  %9745 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9744, i32 0, i64 1
  %9746 = getelementptr inbounds %struct.LIST, %struct.LIST* %9745, i32 0, i32 0
  %9747 = load %union.rec*, %union.rec** %9746, align 8
  store %union.rec* %9747, %union.rec** %y, align 8
  br label %9731

; <label>:9748                                    ; preds = %9731
  %9749 = load %union.rec*, %union.rec** %y, align 8
  %9750 = bitcast %union.rec* %9749 to %struct.word_type*
  %9751 = getelementptr inbounds %struct.word_type, %struct.word_type* %9750, i32 0, i32 1
  %9752 = bitcast %union.FIRST_UNION* %9751 to %struct.anon*
  %9753 = getelementptr inbounds %struct.anon, %struct.anon* %9752, i32 0, i32 0
  %9754 = load i8, i8* %9753, align 1
  %9755 = zext i8 %9754 to i32
  %9756 = icmp eq i32 %9755, 17
  br i1 %9756, label %9757, label %10615

; <label>:9757                                    ; preds = %9748
  %9758 = load %union.rec*, %union.rec** %y, align 8
  %9759 = bitcast %union.rec* %9758 to %struct.word_type*
  %9760 = getelementptr inbounds %struct.word_type, %struct.word_type* %9759, i32 0, i32 0
  %9761 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9760, i32 0, i64 0
  %9762 = getelementptr inbounds %struct.LIST, %struct.LIST* %9761, i32 0, i32 1
  %9763 = load %union.rec*, %union.rec** %9762, align 8
  store %union.rec* %9763, %union.rec** %ylink, align 8
  br label %9764

; <label>:9764                                    ; preds = %10607, %9757
  %9765 = load %union.rec*, %union.rec** %ylink, align 8
  %9766 = load %union.rec*, %union.rec** %y, align 8
  %9767 = icmp ne %union.rec* %9765, %9766
  br i1 %9767, label %9768, label %10614

; <label>:9768                                    ; preds = %9764
  %9769 = load %union.rec*, %union.rec** %ylink, align 8
  %9770 = bitcast %union.rec* %9769 to %struct.word_type*
  %9771 = getelementptr inbounds %struct.word_type, %struct.word_type* %9770, i32 0, i32 0
  %9772 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9771, i32 0, i64 1
  %9773 = getelementptr inbounds %struct.LIST, %struct.LIST* %9772, i32 0, i32 0
  %9774 = load %union.rec*, %union.rec** %9773, align 8
  store %union.rec* %9774, %union.rec** %gp, align 8
  br label %9775

; <label>:9775                                    ; preds = %9785, %9768
  %9776 = load %union.rec*, %union.rec** %gp, align 8
  %9777 = bitcast %union.rec* %9776 to %struct.word_type*
  %9778 = getelementptr inbounds %struct.word_type, %struct.word_type* %9777, i32 0, i32 1
  %9779 = bitcast %union.FIRST_UNION* %9778 to %struct.anon*
  %9780 = getelementptr inbounds %struct.anon, %struct.anon* %9779, i32 0, i32 0
  %9781 = load i8, i8* %9780, align 1
  %9782 = zext i8 %9781 to i32
  %9783 = icmp eq i32 %9782, 0
  br i1 %9783, label %9784, label %9792

; <label>:9784                                    ; preds = %9775
  br label %9785

; <label>:9785                                    ; preds = %9784
  %9786 = load %union.rec*, %union.rec** %gp, align 8
  %9787 = bitcast %union.rec* %9786 to %struct.word_type*
  %9788 = getelementptr inbounds %struct.word_type, %struct.word_type* %9787, i32 0, i32 0
  %9789 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9788, i32 0, i64 1
  %9790 = getelementptr inbounds %struct.LIST, %struct.LIST* %9789, i32 0, i32 0
  %9791 = load %union.rec*, %union.rec** %9790, align 8
  store %union.rec* %9791, %union.rec** %gp, align 8
  br label %9775

; <label>:9792                                    ; preds = %9775
  %9793 = load %union.rec*, %union.rec** %gp, align 8
  %9794 = bitcast %union.rec* %9793 to %struct.word_type*
  %9795 = getelementptr inbounds %struct.word_type, %struct.word_type* %9794, i32 0, i32 1
  %9796 = bitcast %union.FIRST_UNION* %9795 to %struct.anon*
  %9797 = getelementptr inbounds %struct.anon, %struct.anon* %9796, i32 0, i32 0
  %9798 = load i8, i8* %9797, align 1
  %9799 = zext i8 %9798 to i32
  %9800 = icmp eq i32 %9799, 1
  br i1 %9800, label %9801, label %10606

; <label>:9801                                    ; preds = %9792
  %9802 = load %union.rec*, %union.rec** %gp, align 8
  %9803 = bitcast %union.rec* %9802 to %struct.gapobj_type*
  %9804 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %9803, i32 0, i32 3
  %9805 = getelementptr inbounds %struct.GAP, %struct.GAP* %9804, i32 0, i32 1
  %9806 = load i16, i16* %9805, align 2
  %9807 = sext i16 %9806 to i32
  %9808 = icmp eq i32 %9807, 0
  br i1 %9808, label %9809, label %10606

; <label>:9809                                    ; preds = %9801
  %9810 = load %union.rec*, %union.rec** %gp, align 8
  %9811 = bitcast %union.rec* %9810 to %struct.gapobj_type*
  %9812 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %9811, i32 0, i32 3
  %9813 = bitcast %struct.GAP* %9812 to i16*
  %9814 = load i16, i16* %9813, align 4
  %9815 = lshr i16 %9814, 13
  %9816 = zext i16 %9815 to i32
  %9817 = icmp eq i32 %9816, 7
  br i1 %9817, label %9818, label %10606

; <label>:9818                                    ; preds = %9809
  %9819 = load %union.rec*, %union.rec** %ylink, align 8
  %9820 = bitcast %union.rec* %9819 to %struct.word_type*
  %9821 = getelementptr inbounds %struct.word_type, %struct.word_type* %9820, i32 0, i32 0
  %9822 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9821, i32 0, i64 0
  %9823 = getelementptr inbounds %struct.LIST, %struct.LIST* %9822, i32 0, i32 0
  %9824 = load %union.rec*, %union.rec** %9823, align 8
  %9825 = bitcast %union.rec* %9824 to %struct.word_type*
  %9826 = getelementptr inbounds %struct.word_type, %struct.word_type* %9825, i32 0, i32 0
  %9827 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9826, i32 0, i64 1
  %9828 = getelementptr inbounds %struct.LIST, %struct.LIST* %9827, i32 0, i32 0
  %9829 = load %union.rec*, %union.rec** %9828, align 8
  store %union.rec* %9829, %union.rec** %prev, align 8
  br label %9830

; <label>:9830                                    ; preds = %9840, %9818
  %9831 = load %union.rec*, %union.rec** %prev, align 8
  %9832 = bitcast %union.rec* %9831 to %struct.word_type*
  %9833 = getelementptr inbounds %struct.word_type, %struct.word_type* %9832, i32 0, i32 1
  %9834 = bitcast %union.FIRST_UNION* %9833 to %struct.anon*
  %9835 = getelementptr inbounds %struct.anon, %struct.anon* %9834, i32 0, i32 0
  %9836 = load i8, i8* %9835, align 1
  %9837 = zext i8 %9836 to i32
  %9838 = icmp eq i32 %9837, 0
  br i1 %9838, label %9839, label %9847

; <label>:9839                                    ; preds = %9830
  br label %9840

; <label>:9840                                    ; preds = %9839
  %9841 = load %union.rec*, %union.rec** %prev, align 8
  %9842 = bitcast %union.rec* %9841 to %struct.word_type*
  %9843 = getelementptr inbounds %struct.word_type, %struct.word_type* %9842, i32 0, i32 0
  %9844 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9843, i32 0, i64 1
  %9845 = getelementptr inbounds %struct.LIST, %struct.LIST* %9844, i32 0, i32 0
  %9846 = load %union.rec*, %union.rec** %9845, align 8
  store %union.rec* %9846, %union.rec** %prev, align 8
  br label %9830

; <label>:9847                                    ; preds = %9830
  %9848 = load %union.rec*, %union.rec** %ylink, align 8
  %9849 = bitcast %union.rec* %9848 to %struct.word_type*
  %9850 = getelementptr inbounds %struct.word_type, %struct.word_type* %9849, i32 0, i32 0
  %9851 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9850, i32 0, i64 0
  %9852 = getelementptr inbounds %struct.LIST, %struct.LIST* %9851, i32 0, i32 1
  %9853 = load %union.rec*, %union.rec** %9852, align 8
  %9854 = bitcast %union.rec* %9853 to %struct.word_type*
  %9855 = getelementptr inbounds %struct.word_type, %struct.word_type* %9854, i32 0, i32 0
  %9856 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9855, i32 0, i64 1
  %9857 = getelementptr inbounds %struct.LIST, %struct.LIST* %9856, i32 0, i32 0
  %9858 = load %union.rec*, %union.rec** %9857, align 8
  store %union.rec* %9858, %union.rec** %next, align 8
  br label %9859

; <label>:9859                                    ; preds = %9869, %9847
  %9860 = load %union.rec*, %union.rec** %next, align 8
  %9861 = bitcast %union.rec* %9860 to %struct.word_type*
  %9862 = getelementptr inbounds %struct.word_type, %struct.word_type* %9861, i32 0, i32 1
  %9863 = bitcast %union.FIRST_UNION* %9862 to %struct.anon*
  %9864 = getelementptr inbounds %struct.anon, %struct.anon* %9863, i32 0, i32 0
  %9865 = load i8, i8* %9864, align 1
  %9866 = zext i8 %9865 to i32
  %9867 = icmp eq i32 %9866, 0
  br i1 %9867, label %9868, label %9876

; <label>:9868                                    ; preds = %9859
  br label %9869

; <label>:9869                                    ; preds = %9868
  %9870 = load %union.rec*, %union.rec** %next, align 8
  %9871 = bitcast %union.rec* %9870 to %struct.word_type*
  %9872 = getelementptr inbounds %struct.word_type, %struct.word_type* %9871, i32 0, i32 0
  %9873 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9872, i32 0, i64 1
  %9874 = getelementptr inbounds %struct.LIST, %struct.LIST* %9873, i32 0, i32 0
  %9875 = load %union.rec*, %union.rec** %9874, align 8
  store %union.rec* %9875, %union.rec** %next, align 8
  br label %9859

; <label>:9876                                    ; preds = %9859
  %9877 = load %union.rec*, %union.rec** %prev, align 8
  %9878 = bitcast %union.rec* %9877 to %struct.word_type*
  %9879 = getelementptr inbounds %struct.word_type, %struct.word_type* %9878, i32 0, i32 1
  %9880 = bitcast %union.FIRST_UNION* %9879 to %struct.anon*
  %9881 = getelementptr inbounds %struct.anon, %struct.anon* %9880, i32 0, i32 0
  %9882 = load i8, i8* %9881, align 1
  %9883 = zext i8 %9882 to i32
  %9884 = icmp eq i32 %9883, 11
  br i1 %9884, label %9894, label %9885

; <label>:9885                                    ; preds = %9876
  %9886 = load %union.rec*, %union.rec** %prev, align 8
  %9887 = bitcast %union.rec* %9886 to %struct.word_type*
  %9888 = getelementptr inbounds %struct.word_type, %struct.word_type* %9887, i32 0, i32 1
  %9889 = bitcast %union.FIRST_UNION* %9888 to %struct.anon*
  %9890 = getelementptr inbounds %struct.anon, %struct.anon* %9889, i32 0, i32 0
  %9891 = load i8, i8* %9890, align 1
  %9892 = zext i8 %9891 to i32
  %9893 = icmp eq i32 %9892, 12
  br i1 %9893, label %9894, label %10605

; <label>:9894                                    ; preds = %9885, %9876
  %9895 = load %union.rec*, %union.rec** %next, align 8
  %9896 = bitcast %union.rec* %9895 to %struct.word_type*
  %9897 = getelementptr inbounds %struct.word_type, %struct.word_type* %9896, i32 0, i32 1
  %9898 = bitcast %union.FIRST_UNION* %9897 to %struct.anon*
  %9899 = getelementptr inbounds %struct.anon, %struct.anon* %9898, i32 0, i32 0
  %9900 = load i8, i8* %9899, align 1
  %9901 = zext i8 %9900 to i32
  %9902 = icmp eq i32 %9901, 11
  br i1 %9902, label %9912, label %9903

; <label>:9903                                    ; preds = %9894
  %9904 = load %union.rec*, %union.rec** %next, align 8
  %9905 = bitcast %union.rec* %9904 to %struct.word_type*
  %9906 = getelementptr inbounds %struct.word_type, %struct.word_type* %9905, i32 0, i32 1
  %9907 = bitcast %union.FIRST_UNION* %9906 to %struct.anon*
  %9908 = getelementptr inbounds %struct.anon, %struct.anon* %9907, i32 0, i32 0
  %9909 = load i8, i8* %9908, align 1
  %9910 = zext i8 %9909 to i32
  %9911 = icmp eq i32 %9910, 12
  br i1 %9911, label %9912, label %10605

; <label>:9912                                    ; preds = %9903, %9894
  %9913 = load %union.rec*, %union.rec** %prev, align 8
  %9914 = bitcast %union.rec* %9913 to %struct.word_type*
  %9915 = getelementptr inbounds %struct.word_type, %struct.word_type* %9914, i32 0, i32 2
  %9916 = bitcast %union.SECOND_UNION* %9915 to %struct.anon.1*
  %9917 = bitcast %struct.anon.1* %9916 to i32*
  %9918 = load i32, i32* %9917, align 4
  %9919 = and i32 %9918, 4095
  %9920 = load %union.rec*, %union.rec** %next, align 8
  %9921 = bitcast %union.rec* %9920 to %struct.word_type*
  %9922 = getelementptr inbounds %struct.word_type, %struct.word_type* %9921, i32 0, i32 2
  %9923 = bitcast %union.SECOND_UNION* %9922 to %struct.anon.1*
  %9924 = bitcast %struct.anon.1* %9923 to i32*
  %9925 = load i32, i32* %9924, align 4
  %9926 = and i32 %9925, 4095
  %9927 = icmp eq i32 %9919, %9926
  br i1 %9927, label %9928, label %10605

; <label>:9928                                    ; preds = %9912
  %9929 = load %union.rec*, %union.rec** %prev, align 8
  %9930 = bitcast %union.rec* %9929 to %struct.word_type*
  %9931 = getelementptr inbounds %struct.word_type, %struct.word_type* %9930, i32 0, i32 2
  %9932 = bitcast %union.SECOND_UNION* %9931 to %struct.anon.1*
  %9933 = bitcast %struct.anon.1* %9932 to i32*
  %9934 = load i32, i32* %9933, align 4
  %9935 = lshr i32 %9934, 12
  %9936 = and i32 %9935, 1023
  %9937 = load %union.rec*, %union.rec** %next, align 8
  %9938 = bitcast %union.rec* %9937 to %struct.word_type*
  %9939 = getelementptr inbounds %struct.word_type, %struct.word_type* %9938, i32 0, i32 2
  %9940 = bitcast %union.SECOND_UNION* %9939 to %struct.anon.1*
  %9941 = bitcast %struct.anon.1* %9940 to i32*
  %9942 = load i32, i32* %9941, align 4
  %9943 = lshr i32 %9942, 12
  %9944 = and i32 %9943, 1023
  %9945 = icmp eq i32 %9936, %9944
  br i1 %9945, label %9946, label %10605

; <label>:9946                                    ; preds = %9928
  %9947 = load %union.rec*, %union.rec** %prev, align 8
  %9948 = bitcast %union.rec* %9947 to %struct.word_type*
  %9949 = getelementptr inbounds %struct.word_type, %struct.word_type* %9948, i32 0, i32 2
  %9950 = bitcast %union.SECOND_UNION* %9949 to %struct.anon.1*
  %9951 = bitcast %struct.anon.1* %9950 to i32*
  %9952 = load i32, i32* %9951, align 4
  %9953 = lshr i32 %9952, 22
  %9954 = and i32 %9953, 1
  %9955 = load %union.rec*, %union.rec** %next, align 8
  %9956 = bitcast %union.rec* %9955 to %struct.word_type*
  %9957 = getelementptr inbounds %struct.word_type, %struct.word_type* %9956, i32 0, i32 2
  %9958 = bitcast %union.SECOND_UNION* %9957 to %struct.anon.1*
  %9959 = bitcast %struct.anon.1* %9958 to i32*
  %9960 = load i32, i32* %9959, align 4
  %9961 = lshr i32 %9960, 22
  %9962 = and i32 %9961, 1
  %9963 = icmp eq i32 %9954, %9962
  br i1 %9963, label %9964, label %10605

; <label>:9964                                    ; preds = %9946
  %9965 = load %union.rec*, %union.rec** %prev, align 8
  %9966 = bitcast %union.rec* %9965 to %struct.word_type*
  %9967 = getelementptr inbounds %struct.word_type, %struct.word_type* %9966, i32 0, i32 2
  %9968 = bitcast %union.SECOND_UNION* %9967 to %struct.anon.1*
  %9969 = bitcast %struct.anon.1* %9968 to i32*
  %9970 = load i32, i32* %9969, align 4
  %9971 = lshr i32 %9970, 23
  %9972 = and i32 %9971, 63
  %9973 = load %union.rec*, %union.rec** %next, align 8
  %9974 = bitcast %union.rec* %9973 to %struct.word_type*
  %9975 = getelementptr inbounds %struct.word_type, %struct.word_type* %9974, i32 0, i32 2
  %9976 = bitcast %union.SECOND_UNION* %9975 to %struct.anon.1*
  %9977 = bitcast %struct.anon.1* %9976 to i32*
  %9978 = load i32, i32* %9977, align 4
  %9979 = lshr i32 %9978, 23
  %9980 = and i32 %9979, 63
  %9981 = icmp eq i32 %9972, %9980
  br i1 %9981, label %9982, label %10605

; <label>:9982                                    ; preds = %9964
  %9983 = load %union.rec*, %union.rec** %prev, align 8
  %9984 = bitcast %union.rec* %9983 to %struct.word_type*
  %9985 = getelementptr inbounds %struct.word_type, %struct.word_type* %9984, i32 0, i32 2
  %9986 = bitcast %union.SECOND_UNION* %9985 to %struct.anon.1*
  %9987 = bitcast %struct.anon.1* %9986 to i32*
  %9988 = load i32, i32* %9987, align 4
  %9989 = lshr i32 %9988, 29
  %9990 = and i32 %9989, 3
  %9991 = load %union.rec*, %union.rec** %next, align 8
  %9992 = bitcast %union.rec* %9991 to %struct.word_type*
  %9993 = getelementptr inbounds %struct.word_type, %struct.word_type* %9992, i32 0, i32 2
  %9994 = bitcast %union.SECOND_UNION* %9993 to %struct.anon.1*
  %9995 = bitcast %struct.anon.1* %9994 to i32*
  %9996 = load i32, i32* %9995, align 4
  %9997 = lshr i32 %9996, 29
  %9998 = and i32 %9997, 3
  %9999 = icmp eq i32 %9990, %9998
  br i1 %9999, label %10000, label %10605

; <label>:10000                                   ; preds = %9982
  %10001 = load %union.rec*, %union.rec** %prev, align 8
  %10002 = bitcast %union.rec* %10001 to %struct.word_type*
  %10003 = getelementptr inbounds %struct.word_type, %struct.word_type* %10002, i32 0, i32 1
  %10004 = bitcast %union.FIRST_UNION* %10003 to %struct.anon*
  %10005 = getelementptr inbounds %struct.anon, %struct.anon* %10004, i32 0, i32 0
  %10006 = load i8, i8* %10005, align 1
  %10007 = zext i8 %10006 to i32
  %10008 = icmp eq i32 %10007, 12
  br i1 %10008, label %10018, label %10009

; <label>:10009                                   ; preds = %10000
  %10010 = load %union.rec*, %union.rec** %next, align 8
  %10011 = bitcast %union.rec* %10010 to %struct.word_type*
  %10012 = getelementptr inbounds %struct.word_type, %struct.word_type* %10011, i32 0, i32 1
  %10013 = bitcast %union.FIRST_UNION* %10012 to %struct.anon*
  %10014 = getelementptr inbounds %struct.anon, %struct.anon* %10013, i32 0, i32 0
  %10015 = load i8, i8* %10014, align 1
  %10016 = zext i8 %10015 to i32
  %10017 = icmp eq i32 %10016, 12
  br label %10018

; <label>:10018                                   ; preds = %10009, %10000
  %10019 = phi i1 [ true, %10000 ], [ %10017, %10009 ]
  %10020 = select i1 %10019, i32 12, i32 11
  store i32 %10020, i32* %typ, align 4
  %10021 = load i32, i32* %typ, align 4
  %10022 = load %union.rec*, %union.rec** %prev, align 8
  %10023 = bitcast %union.rec* %10022 to %struct.word_type*
  %10024 = getelementptr inbounds %struct.word_type, %struct.word_type* %10023, i32 0, i32 4
  %10025 = getelementptr inbounds [4 x i8], [4 x i8]* %10024, i32 0, i32 0
  %10026 = load %union.rec*, %union.rec** %next, align 8
  %10027 = bitcast %union.rec* %10026 to %struct.word_type*
  %10028 = getelementptr inbounds %struct.word_type, %struct.word_type* %10027, i32 0, i32 4
  %10029 = getelementptr inbounds [4 x i8], [4 x i8]* %10028, i32 0, i32 0
  %10030 = load %union.rec*, %union.rec** %prev, align 8
  %10031 = bitcast %union.rec* %10030 to %struct.word_type*
  %10032 = getelementptr inbounds %struct.word_type, %struct.word_type* %10031, i32 0, i32 1
  %10033 = bitcast %union.FIRST_UNION* %10032 to %struct.FILE_POS*
  %10034 = call %union.rec* @MakeWordTwo(i32 %10021, i8* %10025, i8* %10029, %struct.FILE_POS* %10033)
  store %union.rec* %10034, %union.rec** %tmp, align 8
  %10035 = load %union.rec*, %union.rec** %prev, align 8
  %10036 = bitcast %union.rec* %10035 to %struct.word_type*
  %10037 = getelementptr inbounds %struct.word_type, %struct.word_type* %10036, i32 0, i32 2
  %10038 = bitcast %union.SECOND_UNION* %10037 to %struct.anon.1*
  %10039 = bitcast %struct.anon.1* %10038 to i32*
  %10040 = load i32, i32* %10039, align 4
  %10041 = and i32 %10040, 4095
  %10042 = load %union.rec*, %union.rec** %tmp, align 8
  %10043 = bitcast %union.rec* %10042 to %struct.word_type*
  %10044 = getelementptr inbounds %struct.word_type, %struct.word_type* %10043, i32 0, i32 2
  %10045 = bitcast %union.SECOND_UNION* %10044 to %struct.anon.1*
  %10046 = bitcast %struct.anon.1* %10045 to i32*
  %10047 = load i32, i32* %10046, align 4
  %10048 = and i32 %10041, 4095
  %10049 = and i32 %10047, -4096
  %10050 = or i32 %10049, %10048
  store i32 %10050, i32* %10046, align 4
  %10051 = load %union.rec*, %union.rec** %prev, align 8
  %10052 = bitcast %union.rec* %10051 to %struct.word_type*
  %10053 = getelementptr inbounds %struct.word_type, %struct.word_type* %10052, i32 0, i32 2
  %10054 = bitcast %union.SECOND_UNION* %10053 to %struct.anon.1*
  %10055 = bitcast %struct.anon.1* %10054 to i32*
  %10056 = load i32, i32* %10055, align 4
  %10057 = lshr i32 %10056, 12
  %10058 = and i32 %10057, 1023
  %10059 = load %union.rec*, %union.rec** %tmp, align 8
  %10060 = bitcast %union.rec* %10059 to %struct.word_type*
  %10061 = getelementptr inbounds %struct.word_type, %struct.word_type* %10060, i32 0, i32 2
  %10062 = bitcast %union.SECOND_UNION* %10061 to %struct.anon.1*
  %10063 = bitcast %struct.anon.1* %10062 to i32*
  %10064 = load i32, i32* %10063, align 4
  %10065 = and i32 %10058, 1023
  %10066 = shl i32 %10065, 12
  %10067 = and i32 %10064, -4190209
  %10068 = or i32 %10067, %10066
  store i32 %10068, i32* %10063, align 4
  %10069 = load %union.rec*, %union.rec** %prev, align 8
  %10070 = bitcast %union.rec* %10069 to %struct.word_type*
  %10071 = getelementptr inbounds %struct.word_type, %struct.word_type* %10070, i32 0, i32 2
  %10072 = bitcast %union.SECOND_UNION* %10071 to %struct.anon.1*
  %10073 = bitcast %struct.anon.1* %10072 to i32*
  %10074 = load i32, i32* %10073, align 4
  %10075 = lshr i32 %10074, 22
  %10076 = and i32 %10075, 1
  %10077 = load %union.rec*, %union.rec** %tmp, align 8
  %10078 = bitcast %union.rec* %10077 to %struct.word_type*
  %10079 = getelementptr inbounds %struct.word_type, %struct.word_type* %10078, i32 0, i32 2
  %10080 = bitcast %union.SECOND_UNION* %10079 to %struct.anon.1*
  %10081 = bitcast %struct.anon.1* %10080 to i32*
  %10082 = load i32, i32* %10081, align 4
  %10083 = and i32 %10076, 1
  %10084 = shl i32 %10083, 22
  %10085 = and i32 %10082, -4194305
  %10086 = or i32 %10085, %10084
  store i32 %10086, i32* %10081, align 4
  %10087 = load %union.rec*, %union.rec** %prev, align 8
  %10088 = bitcast %union.rec* %10087 to %struct.word_type*
  %10089 = getelementptr inbounds %struct.word_type, %struct.word_type* %10088, i32 0, i32 2
  %10090 = bitcast %union.SECOND_UNION* %10089 to %struct.anon.1*
  %10091 = bitcast %struct.anon.1* %10090 to i32*
  %10092 = load i32, i32* %10091, align 4
  %10093 = lshr i32 %10092, 23
  %10094 = and i32 %10093, 63
  %10095 = load %union.rec*, %union.rec** %tmp, align 8
  %10096 = bitcast %union.rec* %10095 to %struct.word_type*
  %10097 = getelementptr inbounds %struct.word_type, %struct.word_type* %10096, i32 0, i32 2
  %10098 = bitcast %union.SECOND_UNION* %10097 to %struct.anon.1*
  %10099 = bitcast %struct.anon.1* %10098 to i32*
  %10100 = load i32, i32* %10099, align 4
  %10101 = and i32 %10094, 63
  %10102 = shl i32 %10101, 23
  %10103 = and i32 %10100, -528482305
  %10104 = or i32 %10103, %10102
  store i32 %10104, i32* %10099, align 4
  %10105 = load %union.rec*, %union.rec** %prev, align 8
  %10106 = bitcast %union.rec* %10105 to %struct.word_type*
  %10107 = getelementptr inbounds %struct.word_type, %struct.word_type* %10106, i32 0, i32 2
  %10108 = bitcast %union.SECOND_UNION* %10107 to %struct.anon.1*
  %10109 = bitcast %struct.anon.1* %10108 to i32*
  %10110 = load i32, i32* %10109, align 4
  %10111 = lshr i32 %10110, 31
  %10112 = load %union.rec*, %union.rec** %tmp, align 8
  %10113 = bitcast %union.rec* %10112 to %struct.word_type*
  %10114 = getelementptr inbounds %struct.word_type, %struct.word_type* %10113, i32 0, i32 2
  %10115 = bitcast %union.SECOND_UNION* %10114 to %struct.anon.1*
  %10116 = bitcast %struct.anon.1* %10115 to i32*
  %10117 = load i32, i32* %10116, align 4
  %10118 = and i32 %10111, 1
  %10119 = shl i32 %10118, 31
  %10120 = and i32 %10117, 2147483647
  %10121 = or i32 %10120, %10119
  store i32 %10121, i32* %10116, align 4
  %10122 = load %union.rec*, %union.rec** %tmp, align 8
  call void @FontWordSize(%union.rec* %10122)
  %10123 = load %union.rec*, %union.rec** %prev, align 8
  %10124 = bitcast %union.rec* %10123 to %struct.word_type*
  %10125 = getelementptr inbounds %struct.word_type, %struct.word_type* %10124, i32 0, i32 2
  %10126 = bitcast %union.SECOND_UNION* %10125 to %struct.anon.1*
  %10127 = bitcast %struct.anon.1* %10126 to i32*
  %10128 = load i32, i32* %10127, align 4
  %10129 = lshr i32 %10128, 29
  %10130 = and i32 %10129, 3
  %10131 = load %union.rec*, %union.rec** %tmp, align 8
  %10132 = bitcast %union.rec* %10131 to %struct.word_type*
  %10133 = getelementptr inbounds %struct.word_type, %struct.word_type* %10132, i32 0, i32 2
  %10134 = bitcast %union.SECOND_UNION* %10133 to %struct.anon.1*
  %10135 = bitcast %struct.anon.1* %10134 to i32*
  %10136 = load i32, i32* %10135, align 4
  %10137 = and i32 %10130, 3
  %10138 = shl i32 %10137, 29
  %10139 = and i32 %10136, -1610612737
  %10140 = or i32 %10139, %10138
  store i32 %10140, i32* %10135, align 4
  %10141 = load %union.rec*, %union.rec** %ylink, align 8
  store %union.rec* %10141, %union.rec** @xx_link, align 8
  %10142 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %10142, %union.rec** @zz_hold, align 8
  %10143 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10144 = bitcast %union.rec* %10143 to %struct.word_type*
  %10145 = getelementptr inbounds %struct.word_type, %struct.word_type* %10144, i32 0, i32 0
  %10146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10145, i32 0, i64 1
  %10147 = getelementptr inbounds %struct.LIST, %struct.LIST* %10146, i32 0, i32 1
  %10148 = load %union.rec*, %union.rec** %10147, align 8
  %10149 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10150 = icmp eq %union.rec* %10148, %10149
  br i1 %10150, label %10151, label %10152

; <label>:10151                                   ; preds = %10018
  br label %10193

; <label>:10152                                   ; preds = %10018
  %10153 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10154 = bitcast %union.rec* %10153 to %struct.word_type*
  %10155 = getelementptr inbounds %struct.word_type, %struct.word_type* %10154, i32 0, i32 0
  %10156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10155, i32 0, i64 1
  %10157 = getelementptr inbounds %struct.LIST, %struct.LIST* %10156, i32 0, i32 1
  %10158 = load %union.rec*, %union.rec** %10157, align 8
  store %union.rec* %10158, %union.rec** @zz_res, align 8
  %10159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10160 = bitcast %union.rec* %10159 to %struct.word_type*
  %10161 = getelementptr inbounds %struct.word_type, %struct.word_type* %10160, i32 0, i32 0
  %10162 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10161, i32 0, i64 1
  %10163 = getelementptr inbounds %struct.LIST, %struct.LIST* %10162, i32 0, i32 0
  %10164 = load %union.rec*, %union.rec** %10163, align 8
  %10165 = load %union.rec*, %union.rec** @zz_res, align 8
  %10166 = bitcast %union.rec* %10165 to %struct.word_type*
  %10167 = getelementptr inbounds %struct.word_type, %struct.word_type* %10166, i32 0, i32 0
  %10168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10167, i32 0, i64 1
  %10169 = getelementptr inbounds %struct.LIST, %struct.LIST* %10168, i32 0, i32 0
  store %union.rec* %10164, %union.rec** %10169, align 8
  %10170 = load %union.rec*, %union.rec** @zz_res, align 8
  %10171 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10172 = bitcast %union.rec* %10171 to %struct.word_type*
  %10173 = getelementptr inbounds %struct.word_type, %struct.word_type* %10172, i32 0, i32 0
  %10174 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10173, i32 0, i64 1
  %10175 = getelementptr inbounds %struct.LIST, %struct.LIST* %10174, i32 0, i32 0
  %10176 = load %union.rec*, %union.rec** %10175, align 8
  %10177 = bitcast %union.rec* %10176 to %struct.word_type*
  %10178 = getelementptr inbounds %struct.word_type, %struct.word_type* %10177, i32 0, i32 0
  %10179 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10178, i32 0, i64 1
  %10180 = getelementptr inbounds %struct.LIST, %struct.LIST* %10179, i32 0, i32 1
  store %union.rec* %10170, %union.rec** %10180, align 8
  %10181 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10182 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10183 = bitcast %union.rec* %10182 to %struct.word_type*
  %10184 = getelementptr inbounds %struct.word_type, %struct.word_type* %10183, i32 0, i32 0
  %10185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10184, i32 0, i64 1
  %10186 = getelementptr inbounds %struct.LIST, %struct.LIST* %10185, i32 0, i32 1
  store %union.rec* %10181, %union.rec** %10186, align 8
  %10187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10188 = bitcast %union.rec* %10187 to %struct.word_type*
  %10189 = getelementptr inbounds %struct.word_type, %struct.word_type* %10188, i32 0, i32 0
  %10190 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10189, i32 0, i64 1
  %10191 = getelementptr inbounds %struct.LIST, %struct.LIST* %10190, i32 0, i32 0
  store %union.rec* %10181, %union.rec** %10191, align 8
  %10192 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %10193

; <label>:10193                                   ; preds = %10152, %10151
  %10194 = phi %union.rec* [ null, %10151 ], [ %10192, %10152 ]
  %10195 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %10195, %union.rec** @zz_res, align 8
  %10196 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %10196, %union.rec** @zz_hold, align 8
  %10197 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10198 = icmp eq %union.rec* %10197, null
  br i1 %10198, label %10199, label %10201

; <label>:10199                                   ; preds = %10193
  %10200 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %10249

; <label>:10201                                   ; preds = %10193
  %10202 = load %union.rec*, %union.rec** @zz_res, align 8
  %10203 = icmp eq %union.rec* %10202, null
  br i1 %10203, label %10204, label %10206

; <label>:10204                                   ; preds = %10201
  %10205 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %10247

; <label>:10206                                   ; preds = %10201
  %10207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10208 = bitcast %union.rec* %10207 to %struct.word_type*
  %10209 = getelementptr inbounds %struct.word_type, %struct.word_type* %10208, i32 0, i32 0
  %10210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10209, i32 0, i64 1
  %10211 = getelementptr inbounds %struct.LIST, %struct.LIST* %10210, i32 0, i32 0
  %10212 = load %union.rec*, %union.rec** %10211, align 8
  store %union.rec* %10212, %union.rec** @zz_tmp, align 8
  %10213 = load %union.rec*, %union.rec** @zz_res, align 8
  %10214 = bitcast %union.rec* %10213 to %struct.word_type*
  %10215 = getelementptr inbounds %struct.word_type, %struct.word_type* %10214, i32 0, i32 0
  %10216 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10215, i32 0, i64 1
  %10217 = getelementptr inbounds %struct.LIST, %struct.LIST* %10216, i32 0, i32 0
  %10218 = load %union.rec*, %union.rec** %10217, align 8
  %10219 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10220 = bitcast %union.rec* %10219 to %struct.word_type*
  %10221 = getelementptr inbounds %struct.word_type, %struct.word_type* %10220, i32 0, i32 0
  %10222 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10221, i32 0, i64 1
  %10223 = getelementptr inbounds %struct.LIST, %struct.LIST* %10222, i32 0, i32 0
  store %union.rec* %10218, %union.rec** %10223, align 8
  %10224 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10225 = load %union.rec*, %union.rec** @zz_res, align 8
  %10226 = bitcast %union.rec* %10225 to %struct.word_type*
  %10227 = getelementptr inbounds %struct.word_type, %struct.word_type* %10226, i32 0, i32 0
  %10228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10227, i32 0, i64 1
  %10229 = getelementptr inbounds %struct.LIST, %struct.LIST* %10228, i32 0, i32 0
  %10230 = load %union.rec*, %union.rec** %10229, align 8
  %10231 = bitcast %union.rec* %10230 to %struct.word_type*
  %10232 = getelementptr inbounds %struct.word_type, %struct.word_type* %10231, i32 0, i32 0
  %10233 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10232, i32 0, i64 1
  %10234 = getelementptr inbounds %struct.LIST, %struct.LIST* %10233, i32 0, i32 1
  store %union.rec* %10224, %union.rec** %10234, align 8
  %10235 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %10236 = load %union.rec*, %union.rec** @zz_res, align 8
  %10237 = bitcast %union.rec* %10236 to %struct.word_type*
  %10238 = getelementptr inbounds %struct.word_type, %struct.word_type* %10237, i32 0, i32 0
  %10239 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10238, i32 0, i64 1
  %10240 = getelementptr inbounds %struct.LIST, %struct.LIST* %10239, i32 0, i32 0
  store %union.rec* %10235, %union.rec** %10240, align 8
  %10241 = load %union.rec*, %union.rec** @zz_res, align 8
  %10242 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %10243 = bitcast %union.rec* %10242 to %struct.word_type*
  %10244 = getelementptr inbounds %struct.word_type, %struct.word_type* %10243, i32 0, i32 0
  %10245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10244, i32 0, i64 1
  %10246 = getelementptr inbounds %struct.LIST, %struct.LIST* %10245, i32 0, i32 1
  store %union.rec* %10241, %union.rec** %10246, align 8
  br label %10247

; <label>:10247                                   ; preds = %10206, %10204
  %10248 = phi %union.rec* [ %10205, %10204 ], [ %10241, %10206 ]
  br label %10249

; <label>:10249                                   ; preds = %10247, %10199
  %10250 = phi %union.rec* [ %10200, %10199 ], [ %10248, %10247 ]
  %10251 = load %union.rec*, %union.rec** %prev, align 8
  %10252 = bitcast %union.rec* %10251 to %struct.word_type*
  %10253 = getelementptr inbounds %struct.word_type, %struct.word_type* %10252, i32 0, i32 0
  %10254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10253, i32 0, i64 1
  %10255 = getelementptr inbounds %struct.LIST, %struct.LIST* %10254, i32 0, i32 1
  %10256 = load %union.rec*, %union.rec** %10255, align 8
  store %union.rec* %10256, %union.rec** @xx_link, align 8
  %10257 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %10257, %union.rec** @zz_hold, align 8
  %10258 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10259 = bitcast %union.rec* %10258 to %struct.word_type*
  %10260 = getelementptr inbounds %struct.word_type, %struct.word_type* %10259, i32 0, i32 0
  %10261 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10260, i32 0, i64 1
  %10262 = getelementptr inbounds %struct.LIST, %struct.LIST* %10261, i32 0, i32 1
  %10263 = load %union.rec*, %union.rec** %10262, align 8
  %10264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10265 = icmp eq %union.rec* %10263, %10264
  br i1 %10265, label %10266, label %10267

; <label>:10266                                   ; preds = %10249
  br label %10308

; <label>:10267                                   ; preds = %10249
  %10268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10269 = bitcast %union.rec* %10268 to %struct.word_type*
  %10270 = getelementptr inbounds %struct.word_type, %struct.word_type* %10269, i32 0, i32 0
  %10271 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10270, i32 0, i64 1
  %10272 = getelementptr inbounds %struct.LIST, %struct.LIST* %10271, i32 0, i32 1
  %10273 = load %union.rec*, %union.rec** %10272, align 8
  store %union.rec* %10273, %union.rec** @zz_res, align 8
  %10274 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10275 = bitcast %union.rec* %10274 to %struct.word_type*
  %10276 = getelementptr inbounds %struct.word_type, %struct.word_type* %10275, i32 0, i32 0
  %10277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10276, i32 0, i64 1
  %10278 = getelementptr inbounds %struct.LIST, %struct.LIST* %10277, i32 0, i32 0
  %10279 = load %union.rec*, %union.rec** %10278, align 8
  %10280 = load %union.rec*, %union.rec** @zz_res, align 8
  %10281 = bitcast %union.rec* %10280 to %struct.word_type*
  %10282 = getelementptr inbounds %struct.word_type, %struct.word_type* %10281, i32 0, i32 0
  %10283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10282, i32 0, i64 1
  %10284 = getelementptr inbounds %struct.LIST, %struct.LIST* %10283, i32 0, i32 0
  store %union.rec* %10279, %union.rec** %10284, align 8
  %10285 = load %union.rec*, %union.rec** @zz_res, align 8
  %10286 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10287 = bitcast %union.rec* %10286 to %struct.word_type*
  %10288 = getelementptr inbounds %struct.word_type, %struct.word_type* %10287, i32 0, i32 0
  %10289 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10288, i32 0, i64 1
  %10290 = getelementptr inbounds %struct.LIST, %struct.LIST* %10289, i32 0, i32 0
  %10291 = load %union.rec*, %union.rec** %10290, align 8
  %10292 = bitcast %union.rec* %10291 to %struct.word_type*
  %10293 = getelementptr inbounds %struct.word_type, %struct.word_type* %10292, i32 0, i32 0
  %10294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10293, i32 0, i64 1
  %10295 = getelementptr inbounds %struct.LIST, %struct.LIST* %10294, i32 0, i32 1
  store %union.rec* %10285, %union.rec** %10295, align 8
  %10296 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10297 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10298 = bitcast %union.rec* %10297 to %struct.word_type*
  %10299 = getelementptr inbounds %struct.word_type, %struct.word_type* %10298, i32 0, i32 0
  %10300 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10299, i32 0, i64 1
  %10301 = getelementptr inbounds %struct.LIST, %struct.LIST* %10300, i32 0, i32 1
  store %union.rec* %10296, %union.rec** %10301, align 8
  %10302 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10303 = bitcast %union.rec* %10302 to %struct.word_type*
  %10304 = getelementptr inbounds %struct.word_type, %struct.word_type* %10303, i32 0, i32 0
  %10305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10304, i32 0, i64 1
  %10306 = getelementptr inbounds %struct.LIST, %struct.LIST* %10305, i32 0, i32 0
  store %union.rec* %10296, %union.rec** %10306, align 8
  %10307 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %10308

; <label>:10308                                   ; preds = %10267, %10266
  %10309 = phi %union.rec* [ null, %10266 ], [ %10307, %10267 ]
  store %union.rec* %10309, %union.rec** @xx_tmp, align 8
  %10310 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %10310, %union.rec** @zz_hold, align 8
  %10311 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10312 = bitcast %union.rec* %10311 to %struct.word_type*
  %10313 = getelementptr inbounds %struct.word_type, %struct.word_type* %10312, i32 0, i32 0
  %10314 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10313, i32 0, i64 0
  %10315 = getelementptr inbounds %struct.LIST, %struct.LIST* %10314, i32 0, i32 1
  %10316 = load %union.rec*, %union.rec** %10315, align 8
  %10317 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10318 = icmp eq %union.rec* %10316, %10317
  br i1 %10318, label %10319, label %10320

; <label>:10319                                   ; preds = %10308
  br label %10361

; <label>:10320                                   ; preds = %10308
  %10321 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10322 = bitcast %union.rec* %10321 to %struct.word_type*
  %10323 = getelementptr inbounds %struct.word_type, %struct.word_type* %10322, i32 0, i32 0
  %10324 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10323, i32 0, i64 0
  %10325 = getelementptr inbounds %struct.LIST, %struct.LIST* %10324, i32 0, i32 1
  %10326 = load %union.rec*, %union.rec** %10325, align 8
  store %union.rec* %10326, %union.rec** @zz_res, align 8
  %10327 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10328 = bitcast %union.rec* %10327 to %struct.word_type*
  %10329 = getelementptr inbounds %struct.word_type, %struct.word_type* %10328, i32 0, i32 0
  %10330 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10329, i32 0, i64 0
  %10331 = getelementptr inbounds %struct.LIST, %struct.LIST* %10330, i32 0, i32 0
  %10332 = load %union.rec*, %union.rec** %10331, align 8
  %10333 = load %union.rec*, %union.rec** @zz_res, align 8
  %10334 = bitcast %union.rec* %10333 to %struct.word_type*
  %10335 = getelementptr inbounds %struct.word_type, %struct.word_type* %10334, i32 0, i32 0
  %10336 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10335, i32 0, i64 0
  %10337 = getelementptr inbounds %struct.LIST, %struct.LIST* %10336, i32 0, i32 0
  store %union.rec* %10332, %union.rec** %10337, align 8
  %10338 = load %union.rec*, %union.rec** @zz_res, align 8
  %10339 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10340 = bitcast %union.rec* %10339 to %struct.word_type*
  %10341 = getelementptr inbounds %struct.word_type, %struct.word_type* %10340, i32 0, i32 0
  %10342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10341, i32 0, i64 0
  %10343 = getelementptr inbounds %struct.LIST, %struct.LIST* %10342, i32 0, i32 0
  %10344 = load %union.rec*, %union.rec** %10343, align 8
  %10345 = bitcast %union.rec* %10344 to %struct.word_type*
  %10346 = getelementptr inbounds %struct.word_type, %struct.word_type* %10345, i32 0, i32 0
  %10347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10346, i32 0, i64 0
  %10348 = getelementptr inbounds %struct.LIST, %struct.LIST* %10347, i32 0, i32 1
  store %union.rec* %10338, %union.rec** %10348, align 8
  %10349 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10351 = bitcast %union.rec* %10350 to %struct.word_type*
  %10352 = getelementptr inbounds %struct.word_type, %struct.word_type* %10351, i32 0, i32 0
  %10353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10352, i32 0, i64 0
  %10354 = getelementptr inbounds %struct.LIST, %struct.LIST* %10353, i32 0, i32 1
  store %union.rec* %10349, %union.rec** %10354, align 8
  %10355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10356 = bitcast %union.rec* %10355 to %struct.word_type*
  %10357 = getelementptr inbounds %struct.word_type, %struct.word_type* %10356, i32 0, i32 0
  %10358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10357, i32 0, i64 0
  %10359 = getelementptr inbounds %struct.LIST, %struct.LIST* %10358, i32 0, i32 0
  store %union.rec* %10349, %union.rec** %10359, align 8
  %10360 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %10361

; <label>:10361                                   ; preds = %10320, %10319
  %10362 = phi %union.rec* [ null, %10319 ], [ %10360, %10320 ]
  %10363 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %10363, %union.rec** @zz_hold, align 8
  %10364 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %10364, %union.rec** @zz_hold, align 8
  %10365 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10366 = bitcast %union.rec* %10365 to %struct.word_type*
  %10367 = getelementptr inbounds %struct.word_type, %struct.word_type* %10366, i32 0, i32 1
  %10368 = bitcast %union.FIRST_UNION* %10367 to %struct.anon*
  %10369 = getelementptr inbounds %struct.anon, %struct.anon* %10368, i32 0, i32 0
  %10370 = load i8, i8* %10369, align 1
  %10371 = zext i8 %10370 to i32
  %10372 = icmp eq i32 %10371, 11
  br i1 %10372, label %10382, label %10373

; <label>:10373                                   ; preds = %10361
  %10374 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10375 = bitcast %union.rec* %10374 to %struct.word_type*
  %10376 = getelementptr inbounds %struct.word_type, %struct.word_type* %10375, i32 0, i32 1
  %10377 = bitcast %union.FIRST_UNION* %10376 to %struct.anon*
  %10378 = getelementptr inbounds %struct.anon, %struct.anon* %10377, i32 0, i32 0
  %10379 = load i8, i8* %10378, align 1
  %10380 = zext i8 %10379 to i32
  %10381 = icmp eq i32 %10380, 12
  br i1 %10381, label %10382, label %10390

; <label>:10382                                   ; preds = %10373, %10361
  %10383 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10384 = bitcast %union.rec* %10383 to %struct.word_type*
  %10385 = getelementptr inbounds %struct.word_type, %struct.word_type* %10384, i32 0, i32 1
  %10386 = bitcast %union.FIRST_UNION* %10385 to %struct.anon*
  %10387 = getelementptr inbounds %struct.anon, %struct.anon* %10386, i32 0, i32 1
  %10388 = load i8, i8* %10387, align 1
  %10389 = zext i8 %10388 to i32
  br label %10401

; <label>:10390                                   ; preds = %10373
  %10391 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10392 = bitcast %union.rec* %10391 to %struct.word_type*
  %10393 = getelementptr inbounds %struct.word_type, %struct.word_type* %10392, i32 0, i32 1
  %10394 = bitcast %union.FIRST_UNION* %10393 to %struct.anon*
  %10395 = getelementptr inbounds %struct.anon, %struct.anon* %10394, i32 0, i32 0
  %10396 = load i8, i8* %10395, align 1
  %10397 = zext i8 %10396 to i64
  %10398 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %10397
  %10399 = load i8, i8* %10398, align 1
  %10400 = zext i8 %10399 to i32
  br label %10401

; <label>:10401                                   ; preds = %10390, %10382
  %10402 = phi i32 [ %10389, %10382 ], [ %10400, %10390 ]
  store i32 %10402, i32* @zz_size, align 4
  %10403 = load i32, i32* @zz_size, align 4
  %10404 = sext i32 %10403 to i64
  %10405 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %10404
  %10406 = load %union.rec*, %union.rec** %10405, align 8
  %10407 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10408 = bitcast %union.rec* %10407 to %struct.word_type*
  %10409 = getelementptr inbounds %struct.word_type, %struct.word_type* %10408, i32 0, i32 0
  %10410 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10409, i32 0, i64 0
  %10411 = getelementptr inbounds %struct.LIST, %struct.LIST* %10410, i32 0, i32 0
  store %union.rec* %10406, %union.rec** %10411, align 8
  %10412 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10413 = load i32, i32* @zz_size, align 4
  %10414 = sext i32 %10413 to i64
  %10415 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %10414
  store %union.rec* %10412, %union.rec** %10415, align 8
  %10416 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %10417 = bitcast %union.rec* %10416 to %struct.word_type*
  %10418 = getelementptr inbounds %struct.word_type, %struct.word_type* %10417, i32 0, i32 0
  %10419 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10418, i32 0, i64 1
  %10420 = getelementptr inbounds %struct.LIST, %struct.LIST* %10419, i32 0, i32 1
  %10421 = load %union.rec*, %union.rec** %10420, align 8
  %10422 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %10423 = icmp eq %union.rec* %10421, %10422
  br i1 %10423, label %10424, label %10427

; <label>:10424                                   ; preds = %10401
  %10425 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %10426 = call i32 @DisposeObject(%union.rec* %10425)
  br label %10427

; <label>:10427                                   ; preds = %10424, %10401
  %10428 = load %union.rec*, %union.rec** %next, align 8
  %10429 = bitcast %union.rec* %10428 to %struct.word_type*
  %10430 = getelementptr inbounds %struct.word_type, %struct.word_type* %10429, i32 0, i32 0
  %10431 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10430, i32 0, i64 1
  %10432 = getelementptr inbounds %struct.LIST, %struct.LIST* %10431, i32 0, i32 1
  %10433 = load %union.rec*, %union.rec** %10432, align 8
  store %union.rec* %10433, %union.rec** @xx_link, align 8
  %10434 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %10434, %union.rec** @zz_hold, align 8
  %10435 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10436 = bitcast %union.rec* %10435 to %struct.word_type*
  %10437 = getelementptr inbounds %struct.word_type, %struct.word_type* %10436, i32 0, i32 0
  %10438 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10437, i32 0, i64 1
  %10439 = getelementptr inbounds %struct.LIST, %struct.LIST* %10438, i32 0, i32 1
  %10440 = load %union.rec*, %union.rec** %10439, align 8
  %10441 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10442 = icmp eq %union.rec* %10440, %10441
  br i1 %10442, label %10443, label %10444

; <label>:10443                                   ; preds = %10427
  br label %10485

; <label>:10444                                   ; preds = %10427
  %10445 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10446 = bitcast %union.rec* %10445 to %struct.word_type*
  %10447 = getelementptr inbounds %struct.word_type, %struct.word_type* %10446, i32 0, i32 0
  %10448 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10447, i32 0, i64 1
  %10449 = getelementptr inbounds %struct.LIST, %struct.LIST* %10448, i32 0, i32 1
  %10450 = load %union.rec*, %union.rec** %10449, align 8
  store %union.rec* %10450, %union.rec** @zz_res, align 8
  %10451 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10452 = bitcast %union.rec* %10451 to %struct.word_type*
  %10453 = getelementptr inbounds %struct.word_type, %struct.word_type* %10452, i32 0, i32 0
  %10454 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10453, i32 0, i64 1
  %10455 = getelementptr inbounds %struct.LIST, %struct.LIST* %10454, i32 0, i32 0
  %10456 = load %union.rec*, %union.rec** %10455, align 8
  %10457 = load %union.rec*, %union.rec** @zz_res, align 8
  %10458 = bitcast %union.rec* %10457 to %struct.word_type*
  %10459 = getelementptr inbounds %struct.word_type, %struct.word_type* %10458, i32 0, i32 0
  %10460 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10459, i32 0, i64 1
  %10461 = getelementptr inbounds %struct.LIST, %struct.LIST* %10460, i32 0, i32 0
  store %union.rec* %10456, %union.rec** %10461, align 8
  %10462 = load %union.rec*, %union.rec** @zz_res, align 8
  %10463 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10464 = bitcast %union.rec* %10463 to %struct.word_type*
  %10465 = getelementptr inbounds %struct.word_type, %struct.word_type* %10464, i32 0, i32 0
  %10466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10465, i32 0, i64 1
  %10467 = getelementptr inbounds %struct.LIST, %struct.LIST* %10466, i32 0, i32 0
  %10468 = load %union.rec*, %union.rec** %10467, align 8
  %10469 = bitcast %union.rec* %10468 to %struct.word_type*
  %10470 = getelementptr inbounds %struct.word_type, %struct.word_type* %10469, i32 0, i32 0
  %10471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10470, i32 0, i64 1
  %10472 = getelementptr inbounds %struct.LIST, %struct.LIST* %10471, i32 0, i32 1
  store %union.rec* %10462, %union.rec** %10472, align 8
  %10473 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10474 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10475 = bitcast %union.rec* %10474 to %struct.word_type*
  %10476 = getelementptr inbounds %struct.word_type, %struct.word_type* %10475, i32 0, i32 0
  %10477 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10476, i32 0, i64 1
  %10478 = getelementptr inbounds %struct.LIST, %struct.LIST* %10477, i32 0, i32 1
  store %union.rec* %10473, %union.rec** %10478, align 8
  %10479 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10480 = bitcast %union.rec* %10479 to %struct.word_type*
  %10481 = getelementptr inbounds %struct.word_type, %struct.word_type* %10480, i32 0, i32 0
  %10482 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10481, i32 0, i64 1
  %10483 = getelementptr inbounds %struct.LIST, %struct.LIST* %10482, i32 0, i32 0
  store %union.rec* %10473, %union.rec** %10483, align 8
  %10484 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %10485

; <label>:10485                                   ; preds = %10444, %10443
  %10486 = phi %union.rec* [ null, %10443 ], [ %10484, %10444 ]
  store %union.rec* %10486, %union.rec** @xx_tmp, align 8
  %10487 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %10487, %union.rec** @zz_hold, align 8
  %10488 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10489 = bitcast %union.rec* %10488 to %struct.word_type*
  %10490 = getelementptr inbounds %struct.word_type, %struct.word_type* %10489, i32 0, i32 0
  %10491 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10490, i32 0, i64 0
  %10492 = getelementptr inbounds %struct.LIST, %struct.LIST* %10491, i32 0, i32 1
  %10493 = load %union.rec*, %union.rec** %10492, align 8
  %10494 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10495 = icmp eq %union.rec* %10493, %10494
  br i1 %10495, label %10496, label %10497

; <label>:10496                                   ; preds = %10485
  br label %10538

; <label>:10497                                   ; preds = %10485
  %10498 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10499 = bitcast %union.rec* %10498 to %struct.word_type*
  %10500 = getelementptr inbounds %struct.word_type, %struct.word_type* %10499, i32 0, i32 0
  %10501 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10500, i32 0, i64 0
  %10502 = getelementptr inbounds %struct.LIST, %struct.LIST* %10501, i32 0, i32 1
  %10503 = load %union.rec*, %union.rec** %10502, align 8
  store %union.rec* %10503, %union.rec** @zz_res, align 8
  %10504 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10505 = bitcast %union.rec* %10504 to %struct.word_type*
  %10506 = getelementptr inbounds %struct.word_type, %struct.word_type* %10505, i32 0, i32 0
  %10507 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10506, i32 0, i64 0
  %10508 = getelementptr inbounds %struct.LIST, %struct.LIST* %10507, i32 0, i32 0
  %10509 = load %union.rec*, %union.rec** %10508, align 8
  %10510 = load %union.rec*, %union.rec** @zz_res, align 8
  %10511 = bitcast %union.rec* %10510 to %struct.word_type*
  %10512 = getelementptr inbounds %struct.word_type, %struct.word_type* %10511, i32 0, i32 0
  %10513 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10512, i32 0, i64 0
  %10514 = getelementptr inbounds %struct.LIST, %struct.LIST* %10513, i32 0, i32 0
  store %union.rec* %10509, %union.rec** %10514, align 8
  %10515 = load %union.rec*, %union.rec** @zz_res, align 8
  %10516 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10517 = bitcast %union.rec* %10516 to %struct.word_type*
  %10518 = getelementptr inbounds %struct.word_type, %struct.word_type* %10517, i32 0, i32 0
  %10519 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10518, i32 0, i64 0
  %10520 = getelementptr inbounds %struct.LIST, %struct.LIST* %10519, i32 0, i32 0
  %10521 = load %union.rec*, %union.rec** %10520, align 8
  %10522 = bitcast %union.rec* %10521 to %struct.word_type*
  %10523 = getelementptr inbounds %struct.word_type, %struct.word_type* %10522, i32 0, i32 0
  %10524 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10523, i32 0, i64 0
  %10525 = getelementptr inbounds %struct.LIST, %struct.LIST* %10524, i32 0, i32 1
  store %union.rec* %10515, %union.rec** %10525, align 8
  %10526 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10527 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10528 = bitcast %union.rec* %10527 to %struct.word_type*
  %10529 = getelementptr inbounds %struct.word_type, %struct.word_type* %10528, i32 0, i32 0
  %10530 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10529, i32 0, i64 0
  %10531 = getelementptr inbounds %struct.LIST, %struct.LIST* %10530, i32 0, i32 1
  store %union.rec* %10526, %union.rec** %10531, align 8
  %10532 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10533 = bitcast %union.rec* %10532 to %struct.word_type*
  %10534 = getelementptr inbounds %struct.word_type, %struct.word_type* %10533, i32 0, i32 0
  %10535 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10534, i32 0, i64 0
  %10536 = getelementptr inbounds %struct.LIST, %struct.LIST* %10535, i32 0, i32 0
  store %union.rec* %10526, %union.rec** %10536, align 8
  %10537 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %10538

; <label>:10538                                   ; preds = %10497, %10496
  %10539 = phi %union.rec* [ null, %10496 ], [ %10537, %10497 ]
  %10540 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %10540, %union.rec** @zz_hold, align 8
  %10541 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %10541, %union.rec** @zz_hold, align 8
  %10542 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10543 = bitcast %union.rec* %10542 to %struct.word_type*
  %10544 = getelementptr inbounds %struct.word_type, %struct.word_type* %10543, i32 0, i32 1
  %10545 = bitcast %union.FIRST_UNION* %10544 to %struct.anon*
  %10546 = getelementptr inbounds %struct.anon, %struct.anon* %10545, i32 0, i32 0
  %10547 = load i8, i8* %10546, align 1
  %10548 = zext i8 %10547 to i32
  %10549 = icmp eq i32 %10548, 11
  br i1 %10549, label %10559, label %10550

; <label>:10550                                   ; preds = %10538
  %10551 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10552 = bitcast %union.rec* %10551 to %struct.word_type*
  %10553 = getelementptr inbounds %struct.word_type, %struct.word_type* %10552, i32 0, i32 1
  %10554 = bitcast %union.FIRST_UNION* %10553 to %struct.anon*
  %10555 = getelementptr inbounds %struct.anon, %struct.anon* %10554, i32 0, i32 0
  %10556 = load i8, i8* %10555, align 1
  %10557 = zext i8 %10556 to i32
  %10558 = icmp eq i32 %10557, 12
  br i1 %10558, label %10559, label %10567

; <label>:10559                                   ; preds = %10550, %10538
  %10560 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10561 = bitcast %union.rec* %10560 to %struct.word_type*
  %10562 = getelementptr inbounds %struct.word_type, %struct.word_type* %10561, i32 0, i32 1
  %10563 = bitcast %union.FIRST_UNION* %10562 to %struct.anon*
  %10564 = getelementptr inbounds %struct.anon, %struct.anon* %10563, i32 0, i32 1
  %10565 = load i8, i8* %10564, align 1
  %10566 = zext i8 %10565 to i32
  br label %10578

; <label>:10567                                   ; preds = %10550
  %10568 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10569 = bitcast %union.rec* %10568 to %struct.word_type*
  %10570 = getelementptr inbounds %struct.word_type, %struct.word_type* %10569, i32 0, i32 1
  %10571 = bitcast %union.FIRST_UNION* %10570 to %struct.anon*
  %10572 = getelementptr inbounds %struct.anon, %struct.anon* %10571, i32 0, i32 0
  %10573 = load i8, i8* %10572, align 1
  %10574 = zext i8 %10573 to i64
  %10575 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %10574
  %10576 = load i8, i8* %10575, align 1
  %10577 = zext i8 %10576 to i32
  br label %10578

; <label>:10578                                   ; preds = %10567, %10559
  %10579 = phi i32 [ %10566, %10559 ], [ %10577, %10567 ]
  store i32 %10579, i32* @zz_size, align 4
  %10580 = load i32, i32* @zz_size, align 4
  %10581 = sext i32 %10580 to i64
  %10582 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %10581
  %10583 = load %union.rec*, %union.rec** %10582, align 8
  %10584 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10585 = bitcast %union.rec* %10584 to %struct.word_type*
  %10586 = getelementptr inbounds %struct.word_type, %struct.word_type* %10585, i32 0, i32 0
  %10587 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10586, i32 0, i64 0
  %10588 = getelementptr inbounds %struct.LIST, %struct.LIST* %10587, i32 0, i32 0
  store %union.rec* %10583, %union.rec** %10588, align 8
  %10589 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10590 = load i32, i32* @zz_size, align 4
  %10591 = sext i32 %10590 to i64
  %10592 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %10591
  store %union.rec* %10589, %union.rec** %10592, align 8
  %10593 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %10594 = bitcast %union.rec* %10593 to %struct.word_type*
  %10595 = getelementptr inbounds %struct.word_type, %struct.word_type* %10594, i32 0, i32 0
  %10596 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10595, i32 0, i64 1
  %10597 = getelementptr inbounds %struct.LIST, %struct.LIST* %10596, i32 0, i32 1
  %10598 = load %union.rec*, %union.rec** %10597, align 8
  %10599 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %10600 = icmp eq %union.rec* %10598, %10599
  br i1 %10600, label %10601, label %10604

; <label>:10601                                   ; preds = %10578
  %10602 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %10603 = call i32 @DisposeObject(%union.rec* %10602)
  br label %10604

; <label>:10604                                   ; preds = %10601, %10578
  br label %10605

; <label>:10605                                   ; preds = %10604, %9982, %9964, %9946, %9928, %9912, %9903, %9885
  br label %10606

; <label>:10606                                   ; preds = %10605, %9809, %9801, %9792
  br label %10607

; <label>:10607                                   ; preds = %10606
  %10608 = load %union.rec*, %union.rec** %ylink, align 8
  %10609 = bitcast %union.rec* %10608 to %struct.word_type*
  %10610 = getelementptr inbounds %struct.word_type, %struct.word_type* %10609, i32 0, i32 0
  %10611 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10610, i32 0, i64 0
  %10612 = getelementptr inbounds %struct.LIST, %struct.LIST* %10611, i32 0, i32 1
  %10613 = load %union.rec*, %union.rec** %10612, align 8
  store %union.rec* %10613, %union.rec** %ylink, align 8
  br label %9764

; <label>:10614                                   ; preds = %9764
  br label %10615

; <label>:10615                                   ; preds = %10614, %9748
  br label %10616

; <label>:10616                                   ; preds = %10615
  %10617 = load %union.rec*, %union.rec** %link, align 8
  %10618 = bitcast %union.rec* %10617 to %struct.word_type*
  %10619 = getelementptr inbounds %struct.word_type, %struct.word_type* %10618, i32 0, i32 0
  %10620 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10619, i32 0, i64 0
  %10621 = getelementptr inbounds %struct.LIST, %struct.LIST* %10620, i32 0, i32 1
  %10622 = load %union.rec*, %union.rec** %10621, align 8
  store %union.rec* %10622, %union.rec** %link, align 8
  br label %9720

; <label>:10623                                   ; preds = %9720
  br label %10624

; <label>:10624                                   ; preds = %10623, %9704, %9700
  %10625 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %10625, %union.rec** %1
  br label %10626

; <label>:10626                                   ; preds = %10624, %341
  %10627 = load %union.rec*, %union.rec** %1
  ret %union.rec* %10627
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare i32 @FontSize(i32, %union.rec*) #1

declare i8* @EchoLength(i32) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

declare i32 @DisposeObject(%union.rec*) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare i32 @SplitIsDefinite(%union.rec*) #1

declare i32 @MinGap(i32, i32, i32, %struct.GAP*) #1

declare i32 @ActualGap(i32, i32, i32, %struct.GAP*, i32, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @FontWordSize(%union.rec*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare %union.rec* @Hyphenate(%union.rec*) #1

declare %union.rec* @MakeWordTwo(i32, i8*, i8*, %struct.FILE_POS*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
