; ModuleID = 'z44.c'
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
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.anon.2 = type { i8, i8, i16 }
%struct.anon.0 = type { i8, i8, i8 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.anon.5 = type { i8, [3 x i8] }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"VerticalHyphenate: type(y) != HCAT!\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"TransferLinks: start_link!\00", align 1
@zz_res = external global %union.rec*, align 8
@zz_hold = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@zz_free = external global [0 x %union.rec*], align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"FirstDefiniteCompressed!\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"NextDefiniteWithGap: g == nilobj!\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"NDWGC!\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"FirstDefiniteWithGapCompressed: mode(gap(g))!\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"MoveIndexes: is_index!\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"ConvertGalleyList: x!\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"ConvertGalleyList: y!\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"BuildEnclose: no enclose!\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"%s may not have a left or named parameter\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"@Enclose\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"%s may not have a body parameter\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"%s must have a right parameter\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"BuildEnclose:  hd child!\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"EncloseInHCat: Up(nxt) == nxt!\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"EncloseInHCat: Up(nxt) != nxt!\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"EncloseInHcat: type(s2) != SPLIT!\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"FindTarget: unknown index\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"BuildMergeTree: has_m!\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"BuildMergeTree: y!\00", align 1

; Function Attrs: nounwind uwtable
define i32 @VerticalHyphenate(%union.rec* %y) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.rec*, align 8
  %large_comp = alloca %union.rec*, align 8
  %index = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %g = alloca %union.rec*, align 8
  %row_thread = alloca %union.rec*, align 8
  %s1 = alloca %union.rec*, align 8
  %s2 = alloca %union.rec*, align 8
  %sh = alloca %union.rec*, align 8
  %sv = alloca %union.rec*, align 8
  %shp = alloca %union.rec*, align 8
  %prev = alloca %union.rec*, align 8
  %nxt = alloca %union.rec*, align 8
  %large_comp_split = alloca %union.rec*, align 8
  %rump_fwd = alloca i32, align 4
  %jn = alloca i32, align 4
  %xxstart = alloca %union.rec*, align 8
  %xxstop = alloca %union.rec*, align 8
  %xxdest = alloca %union.rec*, align 8
  %start_link = alloca %union.rec*, align 8
  %ylink = alloca %union.rec*, align 8
  %yg = alloca %union.rec*, align 8
  %z1 = alloca %union.rec*, align 8
  %jn2 = alloca i32, align 4
  %xxstart3 = alloca %union.rec*, align 8
  %xxstop4 = alloca %union.rec*, align 8
  %xxdest5 = alloca %union.rec*, align 8
  %xxstart6 = alloca %union.rec*, align 8
  %xxstop7 = alloca %union.rec*, align 8
  %xxdest8 = alloca %union.rec*, align 8
  store %union.rec* %y, %union.rec** %2, align 8
  store %union.rec* null, %union.rec** %large_comp, align 8
  store %union.rec* null, %union.rec** %row_thread, align 8
  store i32 0, i32* %rump_fwd, align 4
  %3 = load %union.rec*, %union.rec** %2, align 8
  %4 = bitcast %union.rec* %3 to %struct.word_type*
  %5 = getelementptr inbounds %struct.word_type, %struct.word_type* %4, i32 0, i32 1
  %6 = bitcast %union.FIRST_UNION* %5 to %struct.anon*
  %7 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp eq i32 %9, 18
  br i1 %10, label %14, label %11

; <label>:11                                      ; preds = %0
  %12 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %13 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %11, %0
  %15 = load %union.rec*, %union.rec** %2, align 8
  %16 = bitcast %union.rec* %15 to %struct.word_type*
  %17 = getelementptr inbounds %struct.word_type, %struct.word_type* %16, i32 0, i32 0
  %18 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %17, i32 0, i64 0
  %19 = getelementptr inbounds %struct.LIST, %struct.LIST* %18, i32 0, i32 1
  %20 = load %union.rec*, %union.rec** %19, align 8
  store %union.rec* %20, %union.rec** %link, align 8
  br label %21

; <label>:21                                      ; preds = %282, %14
  %22 = load %union.rec*, %union.rec** %link, align 8
  %23 = load %union.rec*, %union.rec** %2, align 8
  %24 = icmp ne %union.rec* %22, %23
  br i1 %24, label %25, label %289

; <label>:25                                      ; preds = %21
  %26 = load %union.rec*, %union.rec** %link, align 8
  %27 = bitcast %union.rec* %26 to %struct.word_type*
  %28 = getelementptr inbounds %struct.word_type, %struct.word_type* %27, i32 0, i32 0
  %29 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %28, i32 0, i64 1
  %30 = getelementptr inbounds %struct.LIST, %struct.LIST* %29, i32 0, i32 0
  %31 = load %union.rec*, %union.rec** %30, align 8
  store %union.rec* %31, %union.rec** %s1, align 8
  br label %32

; <label>:32                                      ; preds = %42, %25
  %33 = load %union.rec*, %union.rec** %s1, align 8
  %34 = bitcast %union.rec* %33 to %struct.word_type*
  %35 = getelementptr inbounds %struct.word_type, %struct.word_type* %34, i32 0, i32 1
  %36 = bitcast %union.FIRST_UNION* %35 to %struct.anon*
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 0
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49

; <label>:41                                      ; preds = %32
  br label %42

; <label>:42                                      ; preds = %41
  %43 = load %union.rec*, %union.rec** %s1, align 8
  %44 = bitcast %union.rec* %43 to %struct.word_type*
  %45 = getelementptr inbounds %struct.word_type, %struct.word_type* %44, i32 0, i32 0
  %46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %45, i32 0, i64 1
  %47 = getelementptr inbounds %struct.LIST, %struct.LIST* %46, i32 0, i32 0
  %48 = load %union.rec*, %union.rec** %47, align 8
  store %union.rec* %48, %union.rec** %s1, align 8
  br label %32

; <label>:49                                      ; preds = %32
  %50 = load %union.rec*, %union.rec** %s1, align 8
  %51 = bitcast %union.rec* %50 to %struct.word_type*
  %52 = getelementptr inbounds %struct.word_type, %struct.word_type* %51, i32 0, i32 1
  %53 = bitcast %union.FIRST_UNION* %52 to %struct.anon*
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %53, i32 0, i32 0
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %70

; <label>:58                                      ; preds = %49
  %59 = load %union.rec*, %union.rec** %s1, align 8
  %60 = bitcast %union.rec* %59 to %struct.gapobj_type*
  %61 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %60, i32 0, i32 3
  %62 = bitcast %struct.GAP* %61 to i16*
  %63 = load i16, i16* %62, align 4
  %64 = lshr i16 %63, 9
  %65 = and i16 %64, 1
  %66 = zext i16 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

; <label>:68                                      ; preds = %58
  store i32 0, i32* %1
  br label %2549

; <label>:69                                      ; preds = %58
  br label %282

; <label>:70                                      ; preds = %49
  %71 = load %union.rec*, %union.rec** %s1, align 8
  %72 = bitcast %union.rec* %71 to %struct.word_type*
  %73 = getelementptr inbounds %struct.word_type, %struct.word_type* %72, i32 0, i32 1
  %74 = bitcast %union.FIRST_UNION* %73 to %struct.anon*
  %75 = getelementptr inbounds %struct.anon, %struct.anon* %74, i32 0, i32 0
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %77, 26
  br i1 %78, label %88, label %79

; <label>:79                                      ; preds = %70
  %80 = load %union.rec*, %union.rec** %s1, align 8
  %81 = bitcast %union.rec* %80 to %struct.word_type*
  %82 = getelementptr inbounds %struct.word_type, %struct.word_type* %81, i32 0, i32 1
  %83 = bitcast %union.FIRST_UNION* %82 to %struct.anon*
  %84 = getelementptr inbounds %struct.anon, %struct.anon* %83, i32 0, i32 0
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %86, 24
  br i1 %87, label %88, label %118

; <label>:88                                      ; preds = %79, %70
  %89 = load %union.rec*, %union.rec** %s1, align 8
  %90 = bitcast %union.rec* %89 to %struct.word_type*
  %91 = getelementptr inbounds %struct.word_type, %struct.word_type* %90, i32 0, i32 0
  %92 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %91, i32 0, i64 0
  %93 = getelementptr inbounds %struct.LIST, %struct.LIST* %92, i32 0, i32 1
  %94 = load %union.rec*, %union.rec** %93, align 8
  %95 = bitcast %union.rec* %94 to %struct.word_type*
  %96 = getelementptr inbounds %struct.word_type, %struct.word_type* %95, i32 0, i32 0
  %97 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %96, i32 0, i64 1
  %98 = getelementptr inbounds %struct.LIST, %struct.LIST* %97, i32 0, i32 0
  %99 = load %union.rec*, %union.rec** %98, align 8
  store %union.rec* %99, %union.rec** %s2, align 8
  br label %100

; <label>:100                                     ; preds = %110, %88
  %101 = load %union.rec*, %union.rec** %s2, align 8
  %102 = bitcast %union.rec* %101 to %struct.word_type*
  %103 = getelementptr inbounds %struct.word_type, %struct.word_type* %102, i32 0, i32 1
  %104 = bitcast %union.FIRST_UNION* %103 to %struct.anon*
  %105 = getelementptr inbounds %struct.anon, %struct.anon* %104, i32 0, i32 0
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %117

; <label>:109                                     ; preds = %100
  br label %110

; <label>:110                                     ; preds = %109
  %111 = load %union.rec*, %union.rec** %s2, align 8
  %112 = bitcast %union.rec* %111 to %struct.word_type*
  %113 = getelementptr inbounds %struct.word_type, %struct.word_type* %112, i32 0, i32 0
  %114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %113, i32 0, i64 1
  %115 = getelementptr inbounds %struct.LIST, %struct.LIST* %114, i32 0, i32 0
  %116 = load %union.rec*, %union.rec** %115, align 8
  store %union.rec* %116, %union.rec** %s2, align 8
  br label %100

; <label>:117                                     ; preds = %100
  br label %120

; <label>:118                                     ; preds = %79
  %119 = load %union.rec*, %union.rec** %s1, align 8
  store %union.rec* %119, %union.rec** %s2, align 8
  br label %120

; <label>:120                                     ; preds = %118, %117
  %121 = load %union.rec*, %union.rec** %s2, align 8
  %122 = bitcast %union.rec* %121 to %struct.word_type*
  %123 = getelementptr inbounds %struct.word_type, %struct.word_type* %122, i32 0, i32 1
  %124 = bitcast %union.FIRST_UNION* %123 to %struct.anon*
  %125 = getelementptr inbounds %struct.anon, %struct.anon* %124, i32 0, i32 0
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp ne i32 %127, 9
  br i1 %128, label %129, label %130

; <label>:129                                     ; preds = %120
  store i32 0, i32* %1
  br label %2549

; <label>:130                                     ; preds = %120
  %131 = load %union.rec*, %union.rec** %s2, align 8
  %132 = bitcast %union.rec* %131 to %struct.word_type*
  %133 = getelementptr inbounds %struct.word_type, %struct.word_type* %132, i32 0, i32 0
  %134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %133, i32 0, i64 0
  %135 = getelementptr inbounds %struct.LIST, %struct.LIST* %134, i32 0, i32 1
  %136 = load %union.rec*, %union.rec** %135, align 8
  %137 = bitcast %union.rec* %136 to %struct.word_type*
  %138 = getelementptr inbounds %struct.word_type, %struct.word_type* %137, i32 0, i32 0
  %139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %138, i32 0, i64 1
  %140 = getelementptr inbounds %struct.LIST, %struct.LIST* %139, i32 0, i32 0
  %141 = load %union.rec*, %union.rec** %140, align 8
  store %union.rec* %141, %union.rec** %sh, align 8
  br label %142

; <label>:142                                     ; preds = %152, %130
  %143 = load %union.rec*, %union.rec** %sh, align 8
  %144 = bitcast %union.rec* %143 to %struct.word_type*
  %145 = getelementptr inbounds %struct.word_type, %struct.word_type* %144, i32 0, i32 1
  %146 = bitcast %union.FIRST_UNION* %145 to %struct.anon*
  %147 = getelementptr inbounds %struct.anon, %struct.anon* %146, i32 0, i32 0
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %159

; <label>:151                                     ; preds = %142
  br label %152

; <label>:152                                     ; preds = %151
  %153 = load %union.rec*, %union.rec** %sh, align 8
  %154 = bitcast %union.rec* %153 to %struct.word_type*
  %155 = getelementptr inbounds %struct.word_type, %struct.word_type* %154, i32 0, i32 0
  %156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %155, i32 0, i64 1
  %157 = getelementptr inbounds %struct.LIST, %struct.LIST* %156, i32 0, i32 0
  %158 = load %union.rec*, %union.rec** %157, align 8
  store %union.rec* %158, %union.rec** %sh, align 8
  br label %142

; <label>:159                                     ; preds = %142
  %160 = load %union.rec*, %union.rec** %s2, align 8
  %161 = bitcast %union.rec* %160 to %struct.word_type*
  %162 = getelementptr inbounds %struct.word_type, %struct.word_type* %161, i32 0, i32 0
  %163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %162, i32 0, i64 0
  %164 = getelementptr inbounds %struct.LIST, %struct.LIST* %163, i32 0, i32 0
  %165 = load %union.rec*, %union.rec** %164, align 8
  %166 = bitcast %union.rec* %165 to %struct.word_type*
  %167 = getelementptr inbounds %struct.word_type, %struct.word_type* %166, i32 0, i32 0
  %168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %167, i32 0, i64 1
  %169 = getelementptr inbounds %struct.LIST, %struct.LIST* %168, i32 0, i32 0
  %170 = load %union.rec*, %union.rec** %169, align 8
  store %union.rec* %170, %union.rec** %sv, align 8
  br label %171

; <label>:171                                     ; preds = %181, %159
  %172 = load %union.rec*, %union.rec** %sv, align 8
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
  %182 = load %union.rec*, %union.rec** %sv, align 8
  %183 = bitcast %union.rec* %182 to %struct.word_type*
  %184 = getelementptr inbounds %struct.word_type, %struct.word_type* %183, i32 0, i32 0
  %185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %184, i32 0, i64 1
  %186 = getelementptr inbounds %struct.LIST, %struct.LIST* %185, i32 0, i32 0
  %187 = load %union.rec*, %union.rec** %186, align 8
  store %union.rec* %187, %union.rec** %sv, align 8
  br label %171

; <label>:188                                     ; preds = %171
  %189 = load %union.rec*, %union.rec** %sv, align 8
  %190 = bitcast %union.rec* %189 to %struct.word_type*
  %191 = getelementptr inbounds %struct.word_type, %struct.word_type* %190, i32 0, i32 1
  %192 = bitcast %union.FIRST_UNION* %191 to %struct.anon*
  %193 = getelementptr inbounds %struct.anon, %struct.anon* %192, i32 0, i32 0
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = icmp ne i32 %195, 15
  br i1 %196, label %197, label %198

; <label>:197                                     ; preds = %188
  store i32 0, i32* %1
  br label %2549

; <label>:198                                     ; preds = %188
  %199 = load %union.rec*, %union.rec** %row_thread, align 8
  %200 = icmp eq %union.rec* %199, null
  br i1 %200, label %201, label %203

; <label>:201                                     ; preds = %198
  %202 = load %union.rec*, %union.rec** %sv, align 8
  store %union.rec* %202, %union.rec** %row_thread, align 8
  br label %203

; <label>:203                                     ; preds = %201, %198
  %204 = load %union.rec*, %union.rec** %sv, align 8
  %205 = load %union.rec*, %union.rec** %row_thread, align 8
  %206 = icmp ne %union.rec* %204, %205
  br i1 %206, label %207, label %208

; <label>:207                                     ; preds = %203
  store i32 0, i32* %1
  br label %2549

; <label>:208                                     ; preds = %203
  %209 = load %union.rec*, %union.rec** %sh, align 8
  %210 = bitcast %union.rec* %209 to %struct.word_type*
  %211 = getelementptr inbounds %struct.word_type, %struct.word_type* %210, i32 0, i32 0
  %212 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %211, i32 0, i64 1
  %213 = getelementptr inbounds %struct.LIST, %struct.LIST* %212, i32 0, i32 0
  %214 = load %union.rec*, %union.rec** %213, align 8
  %215 = bitcast %union.rec* %214 to %struct.word_type*
  %216 = getelementptr inbounds %struct.word_type, %struct.word_type* %215, i32 0, i32 0
  %217 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %216, i32 0, i64 0
  %218 = getelementptr inbounds %struct.LIST, %struct.LIST* %217, i32 0, i32 0
  %219 = load %union.rec*, %union.rec** %218, align 8
  store %union.rec* %219, %union.rec** %shp, align 8
  br label %220

; <label>:220                                     ; preds = %230, %208
  %221 = load %union.rec*, %union.rec** %shp, align 8
  %222 = bitcast %union.rec* %221 to %struct.word_type*
  %223 = getelementptr inbounds %struct.word_type, %struct.word_type* %222, i32 0, i32 1
  %224 = bitcast %union.FIRST_UNION* %223 to %struct.anon*
  %225 = getelementptr inbounds %struct.anon, %struct.anon* %224, i32 0, i32 0
  %226 = load i8, i8* %225, align 1
  %227 = zext i8 %226 to i32
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %237

; <label>:229                                     ; preds = %220
  br label %230

; <label>:230                                     ; preds = %229
  %231 = load %union.rec*, %union.rec** %shp, align 8
  %232 = bitcast %union.rec* %231 to %struct.word_type*
  %233 = getelementptr inbounds %struct.word_type, %struct.word_type* %232, i32 0, i32 0
  %234 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %233, i32 0, i64 0
  %235 = getelementptr inbounds %struct.LIST, %struct.LIST* %234, i32 0, i32 0
  %236 = load %union.rec*, %union.rec** %235, align 8
  store %union.rec* %236, %union.rec** %shp, align 8
  br label %220

; <label>:237                                     ; preds = %220
  %238 = load %union.rec*, %union.rec** %shp, align 8
  %239 = load %union.rec*, %union.rec** %row_thread, align 8
  %240 = icmp ne %union.rec* %238, %239
  br i1 %240, label %241, label %242

; <label>:241                                     ; preds = %237
  store i32 0, i32* %1
  br label %2549

; <label>:242                                     ; preds = %237
  %243 = load %union.rec*, %union.rec** %sh, align 8
  %244 = bitcast %union.rec* %243 to %struct.word_type*
  %245 = getelementptr inbounds %struct.word_type, %struct.word_type* %244, i32 0, i32 1
  %246 = bitcast %union.FIRST_UNION* %245 to %struct.anon*
  %247 = getelementptr inbounds %struct.anon, %struct.anon* %246, i32 0, i32 0
  %248 = load i8, i8* %247, align 1
  %249 = zext i8 %248 to i32
  %250 = icmp ne i32 %249, 19
  br i1 %250, label %251, label %273

; <label>:251                                     ; preds = %242
  %252 = load i32, i32* %rump_fwd, align 4
  %253 = load %union.rec*, %union.rec** %sh, align 8
  %254 = bitcast %union.rec* %253 to %struct.word_type*
  %255 = getelementptr inbounds %struct.word_type, %struct.word_type* %254, i32 0, i32 3
  %256 = bitcast %union.THIRD_UNION* %255 to %struct.anon.6*
  %257 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %256, i32 0, i32 1
  %258 = getelementptr inbounds [2 x i32], [2 x i32]* %257, i32 0, i64 1
  %259 = load i32, i32* %258, align 4
  %260 = icmp slt i32 %252, %259
  br i1 %260, label %261, label %269

; <label>:261                                     ; preds = %251
  %262 = load %union.rec*, %union.rec** %sh, align 8
  %263 = bitcast %union.rec* %262 to %struct.word_type*
  %264 = getelementptr inbounds %struct.word_type, %struct.word_type* %263, i32 0, i32 3
  %265 = bitcast %union.THIRD_UNION* %264 to %struct.anon.6*
  %266 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %265, i32 0, i32 1
  %267 = getelementptr inbounds [2 x i32], [2 x i32]* %266, i32 0, i64 1
  %268 = load i32, i32* %267, align 4
  br label %271

; <label>:269                                     ; preds = %251
  %270 = load i32, i32* %rump_fwd, align 4
  br label %271

; <label>:271                                     ; preds = %269, %261
  %272 = phi i32 [ %268, %261 ], [ %270, %269 ]
  store i32 %272, i32* %rump_fwd, align 4
  br label %281

; <label>:273                                     ; preds = %242
  %274 = load %union.rec*, %union.rec** %large_comp, align 8
  %275 = icmp ne %union.rec* %274, null
  br i1 %275, label %276, label %277

; <label>:276                                     ; preds = %273
  store i32 0, i32* %1
  br label %2549

; <label>:277                                     ; preds = %273
  %278 = load %union.rec*, %union.rec** %sh, align 8
  store %union.rec* %278, %union.rec** %large_comp, align 8
  %279 = load %union.rec*, %union.rec** %s2, align 8
  store %union.rec* %279, %union.rec** %large_comp_split, align 8
  br label %280

; <label>:280                                     ; preds = %277
  br label %281

; <label>:281                                     ; preds = %280, %271
  br label %282

; <label>:282                                     ; preds = %281, %69
  %283 = load %union.rec*, %union.rec** %link, align 8
  %284 = bitcast %union.rec* %283 to %struct.word_type*
  %285 = getelementptr inbounds %struct.word_type, %struct.word_type* %284, i32 0, i32 0
  %286 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %285, i32 0, i64 0
  %287 = getelementptr inbounds %struct.LIST, %struct.LIST* %286, i32 0, i32 1
  %288 = load %union.rec*, %union.rec** %287, align 8
  store %union.rec* %288, %union.rec** %link, align 8
  br label %21

; <label>:289                                     ; preds = %21
  %290 = load %union.rec*, %union.rec** %large_comp, align 8
  %291 = icmp eq %union.rec* %290, null
  br i1 %291, label %292, label %293

; <label>:292                                     ; preds = %289
  store i32 0, i32* %1
  br label %2549

; <label>:293                                     ; preds = %289
  store i32 1, i32* %jn, align 4
  %294 = load %union.rec*, %union.rec** %large_comp, align 8
  %295 = bitcast %union.rec* %294 to %struct.word_type*
  %296 = getelementptr inbounds %struct.word_type, %struct.word_type* %295, i32 0, i32 0
  %297 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %296, i32 0, i64 0
  %298 = getelementptr inbounds %struct.LIST, %struct.LIST* %297, i32 0, i32 1
  %299 = load %union.rec*, %union.rec** %298, align 8
  store %union.rec* %299, %union.rec** %link, align 8
  br label %300

; <label>:300                                     ; preds = %389, %293
  %301 = load %union.rec*, %union.rec** %link, align 8
  %302 = load %union.rec*, %union.rec** %large_comp, align 8
  %303 = icmp ne %union.rec* %301, %302
  br i1 %303, label %304, label %396

; <label>:304                                     ; preds = %300
  %305 = load %union.rec*, %union.rec** %link, align 8
  %306 = bitcast %union.rec* %305 to %struct.word_type*
  %307 = getelementptr inbounds %struct.word_type, %struct.word_type* %306, i32 0, i32 0
  %308 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %307, i32 0, i64 1
  %309 = getelementptr inbounds %struct.LIST, %struct.LIST* %308, i32 0, i32 0
  %310 = load %union.rec*, %union.rec** %309, align 8
  store %union.rec* %310, %union.rec** %prev, align 8
  br label %311

; <label>:311                                     ; preds = %321, %304
  %312 = load %union.rec*, %union.rec** %prev, align 8
  %313 = bitcast %union.rec* %312 to %struct.word_type*
  %314 = getelementptr inbounds %struct.word_type, %struct.word_type* %313, i32 0, i32 1
  %315 = bitcast %union.FIRST_UNION* %314 to %struct.anon*
  %316 = getelementptr inbounds %struct.anon, %struct.anon* %315, i32 0, i32 0
  %317 = load i8, i8* %316, align 1
  %318 = zext i8 %317 to i32
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %328

; <label>:320                                     ; preds = %311
  br label %321

; <label>:321                                     ; preds = %320
  %322 = load %union.rec*, %union.rec** %prev, align 8
  %323 = bitcast %union.rec* %322 to %struct.word_type*
  %324 = getelementptr inbounds %struct.word_type, %struct.word_type* %323, i32 0, i32 0
  %325 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %324, i32 0, i64 1
  %326 = getelementptr inbounds %struct.LIST, %struct.LIST* %325, i32 0, i32 0
  %327 = load %union.rec*, %union.rec** %326, align 8
  store %union.rec* %327, %union.rec** %prev, align 8
  br label %311

; <label>:328                                     ; preds = %311
  %329 = load %union.rec*, %union.rec** %prev, align 8
  %330 = bitcast %union.rec* %329 to %struct.word_type*
  %331 = getelementptr inbounds %struct.word_type, %struct.word_type* %330, i32 0, i32 1
  %332 = bitcast %union.FIRST_UNION* %331 to %struct.anon*
  %333 = getelementptr inbounds %struct.anon, %struct.anon* %332, i32 0, i32 0
  %334 = load i8, i8* %333, align 1
  %335 = zext i8 %334 to i32
  %336 = icmp eq i32 %335, 1
  br i1 %336, label %337, label %353

; <label>:337                                     ; preds = %328
  %338 = load i32, i32* %jn, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %350

; <label>:340                                     ; preds = %337
  %341 = load %union.rec*, %union.rec** %prev, align 8
  %342 = bitcast %union.rec* %341 to %struct.gapobj_type*
  %343 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %342, i32 0, i32 3
  %344 = bitcast %struct.GAP* %343 to i16*
  %345 = load i16, i16* %344, align 4
  %346 = lshr i16 %345, 9
  %347 = and i16 %346, 1
  %348 = zext i16 %347 to i32
  %349 = icmp ne i32 %348, 0
  br label %350

; <label>:350                                     ; preds = %340, %337
  %351 = phi i1 [ false, %337 ], [ %349, %340 ]
  %352 = zext i1 %351 to i32
  store i32 %352, i32* %jn, align 4
  br label %388

; <label>:353                                     ; preds = %328
  %354 = load %union.rec*, %union.rec** %prev, align 8
  %355 = bitcast %union.rec* %354 to %struct.word_type*
  %356 = getelementptr inbounds %struct.word_type, %struct.word_type* %355, i32 0, i32 1
  %357 = bitcast %union.FIRST_UNION* %356 to %struct.anon*
  %358 = getelementptr inbounds %struct.anon, %struct.anon* %357, i32 0, i32 0
  %359 = load i8, i8* %358, align 1
  %360 = zext i8 %359 to i32
  %361 = icmp eq i32 %360, 9
  br i1 %361, label %362, label %366

; <label>:362                                     ; preds = %353
  %363 = load %union.rec*, %union.rec** %prev, align 8
  %364 = call i32 @SplitIsDefinite(%union.rec* %363)
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %386, label %387

; <label>:366                                     ; preds = %353
  %367 = load %union.rec*, %union.rec** %prev, align 8
  %368 = bitcast %union.rec* %367 to %struct.word_type*
  %369 = getelementptr inbounds %struct.word_type, %struct.word_type* %368, i32 0, i32 1
  %370 = bitcast %union.FIRST_UNION* %369 to %struct.anon*
  %371 = getelementptr inbounds %struct.anon, %struct.anon* %370, i32 0, i32 0
  %372 = load i8, i8* %371, align 1
  %373 = zext i8 %372 to i32
  %374 = icmp sge i32 %373, 9
  br i1 %374, label %375, label %384

; <label>:375                                     ; preds = %366
  %376 = load %union.rec*, %union.rec** %prev, align 8
  %377 = bitcast %union.rec* %376 to %struct.word_type*
  %378 = getelementptr inbounds %struct.word_type, %struct.word_type* %377, i32 0, i32 1
  %379 = bitcast %union.FIRST_UNION* %378 to %struct.anon*
  %380 = getelementptr inbounds %struct.anon, %struct.anon* %379, i32 0, i32 0
  %381 = load i8, i8* %380, align 1
  %382 = zext i8 %381 to i32
  %383 = icmp sle i32 %382, 99
  br label %384

; <label>:384                                     ; preds = %375, %366
  %385 = phi i1 [ false, %366 ], [ %383, %375 ]
  br i1 %385, label %386, label %387

; <label>:386                                     ; preds = %384, %362
  br label %396

; <label>:387                                     ; preds = %384, %362
  br label %388

; <label>:388                                     ; preds = %387, %350
  br label %389

; <label>:389                                     ; preds = %388
  %390 = load %union.rec*, %union.rec** %link, align 8
  %391 = bitcast %union.rec* %390 to %struct.word_type*
  %392 = getelementptr inbounds %struct.word_type, %struct.word_type* %391, i32 0, i32 0
  %393 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %392, i32 0, i64 0
  %394 = getelementptr inbounds %struct.LIST, %struct.LIST* %393, i32 0, i32 1
  %395 = load %union.rec*, %union.rec** %394, align 8
  store %union.rec* %395, %union.rec** %link, align 8
  br label %300

; <label>:396                                     ; preds = %386, %300
  br label %397

; <label>:397                                     ; preds = %824, %396
  %398 = load %union.rec*, %union.rec** %link, align 8
  %399 = load %union.rec*, %union.rec** %large_comp, align 8
  %400 = icmp ne %union.rec* %398, %399
  br i1 %400, label %401, label %410

; <label>:401                                     ; preds = %397
  %402 = load %union.rec*, %union.rec** %prev, align 8
  %403 = bitcast %union.rec* %402 to %struct.word_type*
  %404 = getelementptr inbounds %struct.word_type, %struct.word_type* %403, i32 0, i32 1
  %405 = bitcast %union.FIRST_UNION* %404 to %struct.anon*
  %406 = getelementptr inbounds %struct.anon, %struct.anon* %405, i32 0, i32 0
  %407 = load i8, i8* %406, align 1
  %408 = zext i8 %407 to i32
  %409 = icmp eq i32 %408, 19
  br label %410

; <label>:410                                     ; preds = %401, %397
  %411 = phi i1 [ false, %397 ], [ %409, %401 ]
  br i1 %411, label %412, label %825

; <label>:412                                     ; preds = %410
  %413 = load %union.rec*, %union.rec** %prev, align 8
  %414 = bitcast %union.rec* %413 to %struct.word_type*
  %415 = getelementptr inbounds %struct.word_type, %struct.word_type* %414, i32 0, i32 0
  %416 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %415, i32 0, i64 0
  %417 = getelementptr inbounds %struct.LIST, %struct.LIST* %416, i32 0, i32 1
  %418 = load %union.rec*, %union.rec** %417, align 8
  store %union.rec* %418, %union.rec** %xxstart, align 8
  %419 = load %union.rec*, %union.rec** %prev, align 8
  store %union.rec* %419, %union.rec** %xxstop, align 8
  %420 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %420, %union.rec** %xxdest, align 8
  %421 = load %union.rec*, %union.rec** %xxstart, align 8
  %422 = load %union.rec*, %union.rec** %xxstop, align 8
  %423 = icmp ne %union.rec* %421, %422
  br i1 %423, label %424, label %549

; <label>:424                                     ; preds = %412
  %425 = load %union.rec*, %union.rec** %xxstart, align 8
  %426 = bitcast %union.rec* %425 to %struct.word_type*
  %427 = getelementptr inbounds %struct.word_type, %struct.word_type* %426, i32 0, i32 1
  %428 = bitcast %union.FIRST_UNION* %427 to %struct.anon*
  %429 = getelementptr inbounds %struct.anon, %struct.anon* %428, i32 0, i32 0
  %430 = load i8, i8* %429, align 1
  %431 = zext i8 %430 to i32
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %436, label %433

; <label>:433                                     ; preds = %424
  %434 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %435 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %434, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %436

; <label>:436                                     ; preds = %433, %424
  %437 = load %union.rec*, %union.rec** %xxstart, align 8
  store %union.rec* %437, %union.rec** @zz_res, align 8
  %438 = load %union.rec*, %union.rec** %xxstop, align 8
  store %union.rec* %438, %union.rec** @zz_hold, align 8
  %439 = load %union.rec*, %union.rec** @zz_hold, align 8
  %440 = icmp eq %union.rec* %439, null
  br i1 %440, label %441, label %443

; <label>:441                                     ; preds = %436
  %442 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %491

; <label>:443                                     ; preds = %436
  %444 = load %union.rec*, %union.rec** @zz_res, align 8
  %445 = icmp eq %union.rec* %444, null
  br i1 %445, label %446, label %448

; <label>:446                                     ; preds = %443
  %447 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %489

; <label>:448                                     ; preds = %443
  %449 = load %union.rec*, %union.rec** @zz_hold, align 8
  %450 = bitcast %union.rec* %449 to %struct.word_type*
  %451 = getelementptr inbounds %struct.word_type, %struct.word_type* %450, i32 0, i32 0
  %452 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %451, i32 0, i64 0
  %453 = getelementptr inbounds %struct.LIST, %struct.LIST* %452, i32 0, i32 0
  %454 = load %union.rec*, %union.rec** %453, align 8
  store %union.rec* %454, %union.rec** @zz_tmp, align 8
  %455 = load %union.rec*, %union.rec** @zz_res, align 8
  %456 = bitcast %union.rec* %455 to %struct.word_type*
  %457 = getelementptr inbounds %struct.word_type, %struct.word_type* %456, i32 0, i32 0
  %458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %457, i32 0, i64 0
  %459 = getelementptr inbounds %struct.LIST, %struct.LIST* %458, i32 0, i32 0
  %460 = load %union.rec*, %union.rec** %459, align 8
  %461 = load %union.rec*, %union.rec** @zz_hold, align 8
  %462 = bitcast %union.rec* %461 to %struct.word_type*
  %463 = getelementptr inbounds %struct.word_type, %struct.word_type* %462, i32 0, i32 0
  %464 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %463, i32 0, i64 0
  %465 = getelementptr inbounds %struct.LIST, %struct.LIST* %464, i32 0, i32 0
  store %union.rec* %460, %union.rec** %465, align 8
  %466 = load %union.rec*, %union.rec** @zz_hold, align 8
  %467 = load %union.rec*, %union.rec** @zz_res, align 8
  %468 = bitcast %union.rec* %467 to %struct.word_type*
  %469 = getelementptr inbounds %struct.word_type, %struct.word_type* %468, i32 0, i32 0
  %470 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %469, i32 0, i64 0
  %471 = getelementptr inbounds %struct.LIST, %struct.LIST* %470, i32 0, i32 0
  %472 = load %union.rec*, %union.rec** %471, align 8
  %473 = bitcast %union.rec* %472 to %struct.word_type*
  %474 = getelementptr inbounds %struct.word_type, %struct.word_type* %473, i32 0, i32 0
  %475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %474, i32 0, i64 0
  %476 = getelementptr inbounds %struct.LIST, %struct.LIST* %475, i32 0, i32 1
  store %union.rec* %466, %union.rec** %476, align 8
  %477 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %478 = load %union.rec*, %union.rec** @zz_res, align 8
  %479 = bitcast %union.rec* %478 to %struct.word_type*
  %480 = getelementptr inbounds %struct.word_type, %struct.word_type* %479, i32 0, i32 0
  %481 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %480, i32 0, i64 0
  %482 = getelementptr inbounds %struct.LIST, %struct.LIST* %481, i32 0, i32 0
  store %union.rec* %477, %union.rec** %482, align 8
  %483 = load %union.rec*, %union.rec** @zz_res, align 8
  %484 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %485 = bitcast %union.rec* %484 to %struct.word_type*
  %486 = getelementptr inbounds %struct.word_type, %struct.word_type* %485, i32 0, i32 0
  %487 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %486, i32 0, i64 0
  %488 = getelementptr inbounds %struct.LIST, %struct.LIST* %487, i32 0, i32 1
  store %union.rec* %483, %union.rec** %488, align 8
  br label %489

; <label>:489                                     ; preds = %448, %446
  %490 = phi %union.rec* [ %447, %446 ], [ %483, %448 ]
  br label %491

; <label>:491                                     ; preds = %489, %441
  %492 = phi %union.rec* [ %442, %441 ], [ %490, %489 ]
  %493 = load %union.rec*, %union.rec** %xxstart, align 8
  store %union.rec* %493, %union.rec** @zz_res, align 8
  %494 = load %union.rec*, %union.rec** %xxdest, align 8
  store %union.rec* %494, %union.rec** @zz_hold, align 8
  %495 = load %union.rec*, %union.rec** @zz_hold, align 8
  %496 = icmp eq %union.rec* %495, null
  br i1 %496, label %497, label %499

; <label>:497                                     ; preds = %491
  %498 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %547

; <label>:499                                     ; preds = %491
  %500 = load %union.rec*, %union.rec** @zz_res, align 8
  %501 = icmp eq %union.rec* %500, null
  br i1 %501, label %502, label %504

; <label>:502                                     ; preds = %499
  %503 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %545

; <label>:504                                     ; preds = %499
  %505 = load %union.rec*, %union.rec** @zz_hold, align 8
  %506 = bitcast %union.rec* %505 to %struct.word_type*
  %507 = getelementptr inbounds %struct.word_type, %struct.word_type* %506, i32 0, i32 0
  %508 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %507, i32 0, i64 0
  %509 = getelementptr inbounds %struct.LIST, %struct.LIST* %508, i32 0, i32 0
  %510 = load %union.rec*, %union.rec** %509, align 8
  store %union.rec* %510, %union.rec** @zz_tmp, align 8
  %511 = load %union.rec*, %union.rec** @zz_res, align 8
  %512 = bitcast %union.rec* %511 to %struct.word_type*
  %513 = getelementptr inbounds %struct.word_type, %struct.word_type* %512, i32 0, i32 0
  %514 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %513, i32 0, i64 0
  %515 = getelementptr inbounds %struct.LIST, %struct.LIST* %514, i32 0, i32 0
  %516 = load %union.rec*, %union.rec** %515, align 8
  %517 = load %union.rec*, %union.rec** @zz_hold, align 8
  %518 = bitcast %union.rec* %517 to %struct.word_type*
  %519 = getelementptr inbounds %struct.word_type, %struct.word_type* %518, i32 0, i32 0
  %520 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %519, i32 0, i64 0
  %521 = getelementptr inbounds %struct.LIST, %struct.LIST* %520, i32 0, i32 0
  store %union.rec* %516, %union.rec** %521, align 8
  %522 = load %union.rec*, %union.rec** @zz_hold, align 8
  %523 = load %union.rec*, %union.rec** @zz_res, align 8
  %524 = bitcast %union.rec* %523 to %struct.word_type*
  %525 = getelementptr inbounds %struct.word_type, %struct.word_type* %524, i32 0, i32 0
  %526 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %525, i32 0, i64 0
  %527 = getelementptr inbounds %struct.LIST, %struct.LIST* %526, i32 0, i32 0
  %528 = load %union.rec*, %union.rec** %527, align 8
  %529 = bitcast %union.rec* %528 to %struct.word_type*
  %530 = getelementptr inbounds %struct.word_type, %struct.word_type* %529, i32 0, i32 0
  %531 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %530, i32 0, i64 0
  %532 = getelementptr inbounds %struct.LIST, %struct.LIST* %531, i32 0, i32 1
  store %union.rec* %522, %union.rec** %532, align 8
  %533 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %534 = load %union.rec*, %union.rec** @zz_res, align 8
  %535 = bitcast %union.rec* %534 to %struct.word_type*
  %536 = getelementptr inbounds %struct.word_type, %struct.word_type* %535, i32 0, i32 0
  %537 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %536, i32 0, i64 0
  %538 = getelementptr inbounds %struct.LIST, %struct.LIST* %537, i32 0, i32 0
  store %union.rec* %533, %union.rec** %538, align 8
  %539 = load %union.rec*, %union.rec** @zz_res, align 8
  %540 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %541 = bitcast %union.rec* %540 to %struct.word_type*
  %542 = getelementptr inbounds %struct.word_type, %struct.word_type* %541, i32 0, i32 0
  %543 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %542, i32 0, i64 0
  %544 = getelementptr inbounds %struct.LIST, %struct.LIST* %543, i32 0, i32 1
  store %union.rec* %539, %union.rec** %544, align 8
  br label %545

; <label>:545                                     ; preds = %504, %502
  %546 = phi %union.rec* [ %503, %502 ], [ %539, %504 ]
  br label %547

; <label>:547                                     ; preds = %545, %497
  %548 = phi %union.rec* [ %498, %497 ], [ %546, %545 ]
  br label %549

; <label>:549                                     ; preds = %547, %412
  %550 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %550, %union.rec** @xx_link, align 8
  %551 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %551, %union.rec** @zz_hold, align 8
  %552 = load %union.rec*, %union.rec** @zz_hold, align 8
  %553 = bitcast %union.rec* %552 to %struct.word_type*
  %554 = getelementptr inbounds %struct.word_type, %struct.word_type* %553, i32 0, i32 0
  %555 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %554, i32 0, i64 1
  %556 = getelementptr inbounds %struct.LIST, %struct.LIST* %555, i32 0, i32 1
  %557 = load %union.rec*, %union.rec** %556, align 8
  %558 = load %union.rec*, %union.rec** @zz_hold, align 8
  %559 = icmp eq %union.rec* %557, %558
  br i1 %559, label %560, label %561

; <label>:560                                     ; preds = %549
  br label %602

; <label>:561                                     ; preds = %549
  %562 = load %union.rec*, %union.rec** @zz_hold, align 8
  %563 = bitcast %union.rec* %562 to %struct.word_type*
  %564 = getelementptr inbounds %struct.word_type, %struct.word_type* %563, i32 0, i32 0
  %565 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %564, i32 0, i64 1
  %566 = getelementptr inbounds %struct.LIST, %struct.LIST* %565, i32 0, i32 1
  %567 = load %union.rec*, %union.rec** %566, align 8
  store %union.rec* %567, %union.rec** @zz_res, align 8
  %568 = load %union.rec*, %union.rec** @zz_hold, align 8
  %569 = bitcast %union.rec* %568 to %struct.word_type*
  %570 = getelementptr inbounds %struct.word_type, %struct.word_type* %569, i32 0, i32 0
  %571 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %570, i32 0, i64 1
  %572 = getelementptr inbounds %struct.LIST, %struct.LIST* %571, i32 0, i32 0
  %573 = load %union.rec*, %union.rec** %572, align 8
  %574 = load %union.rec*, %union.rec** @zz_res, align 8
  %575 = bitcast %union.rec* %574 to %struct.word_type*
  %576 = getelementptr inbounds %struct.word_type, %struct.word_type* %575, i32 0, i32 0
  %577 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %576, i32 0, i64 1
  %578 = getelementptr inbounds %struct.LIST, %struct.LIST* %577, i32 0, i32 0
  store %union.rec* %573, %union.rec** %578, align 8
  %579 = load %union.rec*, %union.rec** @zz_res, align 8
  %580 = load %union.rec*, %union.rec** @zz_hold, align 8
  %581 = bitcast %union.rec* %580 to %struct.word_type*
  %582 = getelementptr inbounds %struct.word_type, %struct.word_type* %581, i32 0, i32 0
  %583 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %582, i32 0, i64 1
  %584 = getelementptr inbounds %struct.LIST, %struct.LIST* %583, i32 0, i32 0
  %585 = load %union.rec*, %union.rec** %584, align 8
  %586 = bitcast %union.rec* %585 to %struct.word_type*
  %587 = getelementptr inbounds %struct.word_type, %struct.word_type* %586, i32 0, i32 0
  %588 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %587, i32 0, i64 1
  %589 = getelementptr inbounds %struct.LIST, %struct.LIST* %588, i32 0, i32 1
  store %union.rec* %579, %union.rec** %589, align 8
  %590 = load %union.rec*, %union.rec** @zz_hold, align 8
  %591 = load %union.rec*, %union.rec** @zz_hold, align 8
  %592 = bitcast %union.rec* %591 to %struct.word_type*
  %593 = getelementptr inbounds %struct.word_type, %struct.word_type* %592, i32 0, i32 0
  %594 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %593, i32 0, i64 1
  %595 = getelementptr inbounds %struct.LIST, %struct.LIST* %594, i32 0, i32 1
  store %union.rec* %590, %union.rec** %595, align 8
  %596 = load %union.rec*, %union.rec** @zz_hold, align 8
  %597 = bitcast %union.rec* %596 to %struct.word_type*
  %598 = getelementptr inbounds %struct.word_type, %struct.word_type* %597, i32 0, i32 0
  %599 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %598, i32 0, i64 1
  %600 = getelementptr inbounds %struct.LIST, %struct.LIST* %599, i32 0, i32 0
  store %union.rec* %590, %union.rec** %600, align 8
  %601 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %602

; <label>:602                                     ; preds = %561, %560
  %603 = phi %union.rec* [ null, %560 ], [ %601, %561 ]
  store %union.rec* %603, %union.rec** @xx_tmp, align 8
  %604 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %604, %union.rec** @zz_hold, align 8
  %605 = load %union.rec*, %union.rec** @zz_hold, align 8
  %606 = bitcast %union.rec* %605 to %struct.word_type*
  %607 = getelementptr inbounds %struct.word_type, %struct.word_type* %606, i32 0, i32 0
  %608 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %607, i32 0, i64 0
  %609 = getelementptr inbounds %struct.LIST, %struct.LIST* %608, i32 0, i32 1
  %610 = load %union.rec*, %union.rec** %609, align 8
  %611 = load %union.rec*, %union.rec** @zz_hold, align 8
  %612 = icmp eq %union.rec* %610, %611
  br i1 %612, label %613, label %614

; <label>:613                                     ; preds = %602
  br label %655

; <label>:614                                     ; preds = %602
  %615 = load %union.rec*, %union.rec** @zz_hold, align 8
  %616 = bitcast %union.rec* %615 to %struct.word_type*
  %617 = getelementptr inbounds %struct.word_type, %struct.word_type* %616, i32 0, i32 0
  %618 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %617, i32 0, i64 0
  %619 = getelementptr inbounds %struct.LIST, %struct.LIST* %618, i32 0, i32 1
  %620 = load %union.rec*, %union.rec** %619, align 8
  store %union.rec* %620, %union.rec** @zz_res, align 8
  %621 = load %union.rec*, %union.rec** @zz_hold, align 8
  %622 = bitcast %union.rec* %621 to %struct.word_type*
  %623 = getelementptr inbounds %struct.word_type, %struct.word_type* %622, i32 0, i32 0
  %624 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %623, i32 0, i64 0
  %625 = getelementptr inbounds %struct.LIST, %struct.LIST* %624, i32 0, i32 0
  %626 = load %union.rec*, %union.rec** %625, align 8
  %627 = load %union.rec*, %union.rec** @zz_res, align 8
  %628 = bitcast %union.rec* %627 to %struct.word_type*
  %629 = getelementptr inbounds %struct.word_type, %struct.word_type* %628, i32 0, i32 0
  %630 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %629, i32 0, i64 0
  %631 = getelementptr inbounds %struct.LIST, %struct.LIST* %630, i32 0, i32 0
  store %union.rec* %626, %union.rec** %631, align 8
  %632 = load %union.rec*, %union.rec** @zz_res, align 8
  %633 = load %union.rec*, %union.rec** @zz_hold, align 8
  %634 = bitcast %union.rec* %633 to %struct.word_type*
  %635 = getelementptr inbounds %struct.word_type, %struct.word_type* %634, i32 0, i32 0
  %636 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %635, i32 0, i64 0
  %637 = getelementptr inbounds %struct.LIST, %struct.LIST* %636, i32 0, i32 0
  %638 = load %union.rec*, %union.rec** %637, align 8
  %639 = bitcast %union.rec* %638 to %struct.word_type*
  %640 = getelementptr inbounds %struct.word_type, %struct.word_type* %639, i32 0, i32 0
  %641 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %640, i32 0, i64 0
  %642 = getelementptr inbounds %struct.LIST, %struct.LIST* %641, i32 0, i32 1
  store %union.rec* %632, %union.rec** %642, align 8
  %643 = load %union.rec*, %union.rec** @zz_hold, align 8
  %644 = load %union.rec*, %union.rec** @zz_hold, align 8
  %645 = bitcast %union.rec* %644 to %struct.word_type*
  %646 = getelementptr inbounds %struct.word_type, %struct.word_type* %645, i32 0, i32 0
  %647 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %646, i32 0, i64 0
  %648 = getelementptr inbounds %struct.LIST, %struct.LIST* %647, i32 0, i32 1
  store %union.rec* %643, %union.rec** %648, align 8
  %649 = load %union.rec*, %union.rec** @zz_hold, align 8
  %650 = bitcast %union.rec* %649 to %struct.word_type*
  %651 = getelementptr inbounds %struct.word_type, %struct.word_type* %650, i32 0, i32 0
  %652 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %651, i32 0, i64 0
  %653 = getelementptr inbounds %struct.LIST, %struct.LIST* %652, i32 0, i32 0
  store %union.rec* %643, %union.rec** %653, align 8
  %654 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %655

; <label>:655                                     ; preds = %614, %613
  %656 = phi %union.rec* [ null, %613 ], [ %654, %614 ]
  %657 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %657, %union.rec** @zz_hold, align 8
  %658 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %658, %union.rec** @zz_hold, align 8
  %659 = load %union.rec*, %union.rec** @zz_hold, align 8
  %660 = bitcast %union.rec* %659 to %struct.word_type*
  %661 = getelementptr inbounds %struct.word_type, %struct.word_type* %660, i32 0, i32 1
  %662 = bitcast %union.FIRST_UNION* %661 to %struct.anon*
  %663 = getelementptr inbounds %struct.anon, %struct.anon* %662, i32 0, i32 0
  %664 = load i8, i8* %663, align 1
  %665 = zext i8 %664 to i32
  %666 = icmp eq i32 %665, 11
  br i1 %666, label %676, label %667

; <label>:667                                     ; preds = %655
  %668 = load %union.rec*, %union.rec** @zz_hold, align 8
  %669 = bitcast %union.rec* %668 to %struct.word_type*
  %670 = getelementptr inbounds %struct.word_type, %struct.word_type* %669, i32 0, i32 1
  %671 = bitcast %union.FIRST_UNION* %670 to %struct.anon*
  %672 = getelementptr inbounds %struct.anon, %struct.anon* %671, i32 0, i32 0
  %673 = load i8, i8* %672, align 1
  %674 = zext i8 %673 to i32
  %675 = icmp eq i32 %674, 12
  br i1 %675, label %676, label %684

; <label>:676                                     ; preds = %667, %655
  %677 = load %union.rec*, %union.rec** @zz_hold, align 8
  %678 = bitcast %union.rec* %677 to %struct.word_type*
  %679 = getelementptr inbounds %struct.word_type, %struct.word_type* %678, i32 0, i32 1
  %680 = bitcast %union.FIRST_UNION* %679 to %struct.anon*
  %681 = getelementptr inbounds %struct.anon, %struct.anon* %680, i32 0, i32 1
  %682 = load i8, i8* %681, align 1
  %683 = zext i8 %682 to i32
  br label %695

; <label>:684                                     ; preds = %667
  %685 = load %union.rec*, %union.rec** @zz_hold, align 8
  %686 = bitcast %union.rec* %685 to %struct.word_type*
  %687 = getelementptr inbounds %struct.word_type, %struct.word_type* %686, i32 0, i32 1
  %688 = bitcast %union.FIRST_UNION* %687 to %struct.anon*
  %689 = getelementptr inbounds %struct.anon, %struct.anon* %688, i32 0, i32 0
  %690 = load i8, i8* %689, align 1
  %691 = zext i8 %690 to i64
  %692 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %691
  %693 = load i8, i8* %692, align 1
  %694 = zext i8 %693 to i32
  br label %695

; <label>:695                                     ; preds = %684, %676
  %696 = phi i32 [ %683, %676 ], [ %694, %684 ]
  store i32 %696, i32* @zz_size, align 4
  %697 = load i32, i32* @zz_size, align 4
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %698
  %700 = load %union.rec*, %union.rec** %699, align 8
  %701 = load %union.rec*, %union.rec** @zz_hold, align 8
  %702 = bitcast %union.rec* %701 to %struct.word_type*
  %703 = getelementptr inbounds %struct.word_type, %struct.word_type* %702, i32 0, i32 0
  %704 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %703, i32 0, i64 0
  %705 = getelementptr inbounds %struct.LIST, %struct.LIST* %704, i32 0, i32 0
  store %union.rec* %700, %union.rec** %705, align 8
  %706 = load %union.rec*, %union.rec** @zz_hold, align 8
  %707 = load i32, i32* @zz_size, align 4
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %708
  store %union.rec* %706, %union.rec** %709, align 8
  %710 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %711 = bitcast %union.rec* %710 to %struct.word_type*
  %712 = getelementptr inbounds %struct.word_type, %struct.word_type* %711, i32 0, i32 0
  %713 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %712, i32 0, i64 1
  %714 = getelementptr inbounds %struct.LIST, %struct.LIST* %713, i32 0, i32 1
  %715 = load %union.rec*, %union.rec** %714, align 8
  %716 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %717 = icmp eq %union.rec* %715, %716
  br i1 %717, label %718, label %721

; <label>:718                                     ; preds = %695
  %719 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %720 = call i32 @DisposeObject(%union.rec* %719)
  br label %721

; <label>:721                                     ; preds = %718, %695
  store i32 1, i32* %jn, align 4
  %722 = load %union.rec*, %union.rec** %large_comp, align 8
  %723 = bitcast %union.rec* %722 to %struct.word_type*
  %724 = getelementptr inbounds %struct.word_type, %struct.word_type* %723, i32 0, i32 0
  %725 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %724, i32 0, i64 0
  %726 = getelementptr inbounds %struct.LIST, %struct.LIST* %725, i32 0, i32 1
  %727 = load %union.rec*, %union.rec** %726, align 8
  store %union.rec* %727, %union.rec** %link, align 8
  br label %728

; <label>:728                                     ; preds = %817, %721
  %729 = load %union.rec*, %union.rec** %link, align 8
  %730 = load %union.rec*, %union.rec** %large_comp, align 8
  %731 = icmp ne %union.rec* %729, %730
  br i1 %731, label %732, label %824

; <label>:732                                     ; preds = %728
  %733 = load %union.rec*, %union.rec** %link, align 8
  %734 = bitcast %union.rec* %733 to %struct.word_type*
  %735 = getelementptr inbounds %struct.word_type, %struct.word_type* %734, i32 0, i32 0
  %736 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %735, i32 0, i64 1
  %737 = getelementptr inbounds %struct.LIST, %struct.LIST* %736, i32 0, i32 0
  %738 = load %union.rec*, %union.rec** %737, align 8
  store %union.rec* %738, %union.rec** %prev, align 8
  br label %739

; <label>:739                                     ; preds = %749, %732
  %740 = load %union.rec*, %union.rec** %prev, align 8
  %741 = bitcast %union.rec* %740 to %struct.word_type*
  %742 = getelementptr inbounds %struct.word_type, %struct.word_type* %741, i32 0, i32 1
  %743 = bitcast %union.FIRST_UNION* %742 to %struct.anon*
  %744 = getelementptr inbounds %struct.anon, %struct.anon* %743, i32 0, i32 0
  %745 = load i8, i8* %744, align 1
  %746 = zext i8 %745 to i32
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %748, label %756

; <label>:748                                     ; preds = %739
  br label %749

; <label>:749                                     ; preds = %748
  %750 = load %union.rec*, %union.rec** %prev, align 8
  %751 = bitcast %union.rec* %750 to %struct.word_type*
  %752 = getelementptr inbounds %struct.word_type, %struct.word_type* %751, i32 0, i32 0
  %753 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %752, i32 0, i64 1
  %754 = getelementptr inbounds %struct.LIST, %struct.LIST* %753, i32 0, i32 0
  %755 = load %union.rec*, %union.rec** %754, align 8
  store %union.rec* %755, %union.rec** %prev, align 8
  br label %739

; <label>:756                                     ; preds = %739
  %757 = load %union.rec*, %union.rec** %prev, align 8
  %758 = bitcast %union.rec* %757 to %struct.word_type*
  %759 = getelementptr inbounds %struct.word_type, %struct.word_type* %758, i32 0, i32 1
  %760 = bitcast %union.FIRST_UNION* %759 to %struct.anon*
  %761 = getelementptr inbounds %struct.anon, %struct.anon* %760, i32 0, i32 0
  %762 = load i8, i8* %761, align 1
  %763 = zext i8 %762 to i32
  %764 = icmp eq i32 %763, 1
  br i1 %764, label %765, label %781

; <label>:765                                     ; preds = %756
  %766 = load i32, i32* %jn, align 4
  %767 = icmp ne i32 %766, 0
  br i1 %767, label %768, label %778

; <label>:768                                     ; preds = %765
  %769 = load %union.rec*, %union.rec** %prev, align 8
  %770 = bitcast %union.rec* %769 to %struct.gapobj_type*
  %771 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %770, i32 0, i32 3
  %772 = bitcast %struct.GAP* %771 to i16*
  %773 = load i16, i16* %772, align 4
  %774 = lshr i16 %773, 9
  %775 = and i16 %774, 1
  %776 = zext i16 %775 to i32
  %777 = icmp ne i32 %776, 0
  br label %778

; <label>:778                                     ; preds = %768, %765
  %779 = phi i1 [ false, %765 ], [ %777, %768 ]
  %780 = zext i1 %779 to i32
  store i32 %780, i32* %jn, align 4
  br label %816

; <label>:781                                     ; preds = %756
  %782 = load %union.rec*, %union.rec** %prev, align 8
  %783 = bitcast %union.rec* %782 to %struct.word_type*
  %784 = getelementptr inbounds %struct.word_type, %struct.word_type* %783, i32 0, i32 1
  %785 = bitcast %union.FIRST_UNION* %784 to %struct.anon*
  %786 = getelementptr inbounds %struct.anon, %struct.anon* %785, i32 0, i32 0
  %787 = load i8, i8* %786, align 1
  %788 = zext i8 %787 to i32
  %789 = icmp eq i32 %788, 9
  br i1 %789, label %790, label %794

; <label>:790                                     ; preds = %781
  %791 = load %union.rec*, %union.rec** %prev, align 8
  %792 = call i32 @SplitIsDefinite(%union.rec* %791)
  %793 = icmp ne i32 %792, 0
  br i1 %793, label %814, label %815

; <label>:794                                     ; preds = %781
  %795 = load %union.rec*, %union.rec** %prev, align 8
  %796 = bitcast %union.rec* %795 to %struct.word_type*
  %797 = getelementptr inbounds %struct.word_type, %struct.word_type* %796, i32 0, i32 1
  %798 = bitcast %union.FIRST_UNION* %797 to %struct.anon*
  %799 = getelementptr inbounds %struct.anon, %struct.anon* %798, i32 0, i32 0
  %800 = load i8, i8* %799, align 1
  %801 = zext i8 %800 to i32
  %802 = icmp sge i32 %801, 9
  br i1 %802, label %803, label %812

; <label>:803                                     ; preds = %794
  %804 = load %union.rec*, %union.rec** %prev, align 8
  %805 = bitcast %union.rec* %804 to %struct.word_type*
  %806 = getelementptr inbounds %struct.word_type, %struct.word_type* %805, i32 0, i32 1
  %807 = bitcast %union.FIRST_UNION* %806 to %struct.anon*
  %808 = getelementptr inbounds %struct.anon, %struct.anon* %807, i32 0, i32 0
  %809 = load i8, i8* %808, align 1
  %810 = zext i8 %809 to i32
  %811 = icmp sle i32 %810, 99
  br label %812

; <label>:812                                     ; preds = %803, %794
  %813 = phi i1 [ false, %794 ], [ %811, %803 ]
  br i1 %813, label %814, label %815

; <label>:814                                     ; preds = %812, %790
  br label %824

; <label>:815                                     ; preds = %812, %790
  br label %816

; <label>:816                                     ; preds = %815, %778
  br label %817

; <label>:817                                     ; preds = %816
  %818 = load %union.rec*, %union.rec** %link, align 8
  %819 = bitcast %union.rec* %818 to %struct.word_type*
  %820 = getelementptr inbounds %struct.word_type, %struct.word_type* %819, i32 0, i32 0
  %821 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %820, i32 0, i64 0
  %822 = getelementptr inbounds %struct.LIST, %struct.LIST* %821, i32 0, i32 1
  %823 = load %union.rec*, %union.rec** %822, align 8
  store %union.rec* %823, %union.rec** %link, align 8
  br label %728

; <label>:824                                     ; preds = %814, %728
  br label %397

; <label>:825                                     ; preds = %410
  %826 = load %union.rec*, %union.rec** %link, align 8
  %827 = load %union.rec*, %union.rec** %large_comp, align 8
  %828 = icmp eq %union.rec* %826, %827
  br i1 %828, label %850, label %829

; <label>:829                                     ; preds = %825
  %830 = load %union.rec*, %union.rec** %prev, align 8
  %831 = bitcast %union.rec* %830 to %struct.word_type*
  %832 = getelementptr inbounds %struct.word_type, %struct.word_type* %831, i32 0, i32 1
  %833 = bitcast %union.FIRST_UNION* %832 to %struct.anon*
  %834 = getelementptr inbounds %struct.anon, %struct.anon* %833, i32 0, i32 0
  %835 = load i8, i8* %834, align 1
  %836 = zext i8 %835 to i32
  %837 = icmp sge i32 %836, 9
  br i1 %837, label %838, label %847

; <label>:838                                     ; preds = %829
  %839 = load %union.rec*, %union.rec** %prev, align 8
  %840 = bitcast %union.rec* %839 to %struct.word_type*
  %841 = getelementptr inbounds %struct.word_type, %struct.word_type* %840, i32 0, i32 1
  %842 = bitcast %union.FIRST_UNION* %841 to %struct.anon*
  %843 = getelementptr inbounds %struct.anon, %struct.anon* %842, i32 0, i32 0
  %844 = load i8, i8* %843, align 1
  %845 = zext i8 %844 to i32
  %846 = icmp sle i32 %845, 99
  br i1 %846, label %850, label %847

; <label>:847                                     ; preds = %838, %829
  %848 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %849 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %848, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  br label %850

; <label>:850                                     ; preds = %847, %838, %825
  %851 = load %union.rec*, %union.rec** %link, align 8
  %852 = load %union.rec*, %union.rec** %large_comp, align 8
  %853 = icmp eq %union.rec* %851, %852
  br i1 %853, label %854, label %855

; <label>:854                                     ; preds = %850
  store i32 0, i32* %1
  br label %2549

; <label>:855                                     ; preds = %850
  %856 = load %union.rec*, %union.rec** %link, align 8
  %857 = bitcast %union.rec* %856 to %struct.word_type*
  %858 = getelementptr inbounds %struct.word_type, %struct.word_type* %857, i32 0, i32 0
  %859 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %858, i32 0, i64 0
  %860 = getelementptr inbounds %struct.LIST, %struct.LIST* %859, i32 0, i32 0
  %861 = load %union.rec*, %union.rec** %860, align 8
  store %union.rec* %861, %union.rec** %start_link, align 8
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn2, align 4
  %862 = load %union.rec*, %union.rec** %link, align 8
  %863 = bitcast %union.rec* %862 to %struct.word_type*
  %864 = getelementptr inbounds %struct.word_type, %struct.word_type* %863, i32 0, i32 0
  %865 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %864, i32 0, i64 0
  %866 = getelementptr inbounds %struct.LIST, %struct.LIST* %865, i32 0, i32 1
  %867 = load %union.rec*, %union.rec** %866, align 8
  store %union.rec* %867, %union.rec** %link, align 8
  br label %868

; <label>:868                                     ; preds = %964, %855
  %869 = load %union.rec*, %union.rec** %link, align 8
  %870 = load %union.rec*, %union.rec** %large_comp, align 8
  %871 = icmp ne %union.rec* %869, %870
  br i1 %871, label %872, label %971

; <label>:872                                     ; preds = %868
  %873 = load %union.rec*, %union.rec** %link, align 8
  %874 = bitcast %union.rec* %873 to %struct.word_type*
  %875 = getelementptr inbounds %struct.word_type, %struct.word_type* %874, i32 0, i32 0
  %876 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %875, i32 0, i64 1
  %877 = getelementptr inbounds %struct.LIST, %struct.LIST* %876, i32 0, i32 0
  %878 = load %union.rec*, %union.rec** %877, align 8
  store %union.rec* %878, %union.rec** %nxt, align 8
  br label %879

; <label>:879                                     ; preds = %889, %872
  %880 = load %union.rec*, %union.rec** %nxt, align 8
  %881 = bitcast %union.rec* %880 to %struct.word_type*
  %882 = getelementptr inbounds %struct.word_type, %struct.word_type* %881, i32 0, i32 1
  %883 = bitcast %union.FIRST_UNION* %882 to %struct.anon*
  %884 = getelementptr inbounds %struct.anon, %struct.anon* %883, i32 0, i32 0
  %885 = load i8, i8* %884, align 1
  %886 = zext i8 %885 to i32
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %888, label %896

; <label>:888                                     ; preds = %879
  br label %889

; <label>:889                                     ; preds = %888
  %890 = load %union.rec*, %union.rec** %nxt, align 8
  %891 = bitcast %union.rec* %890 to %struct.word_type*
  %892 = getelementptr inbounds %struct.word_type, %struct.word_type* %891, i32 0, i32 0
  %893 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %892, i32 0, i64 1
  %894 = getelementptr inbounds %struct.LIST, %struct.LIST* %893, i32 0, i32 0
  %895 = load %union.rec*, %union.rec** %894, align 8
  store %union.rec* %895, %union.rec** %nxt, align 8
  br label %879

; <label>:896                                     ; preds = %879
  %897 = load %union.rec*, %union.rec** %nxt, align 8
  %898 = bitcast %union.rec* %897 to %struct.word_type*
  %899 = getelementptr inbounds %struct.word_type, %struct.word_type* %898, i32 0, i32 1
  %900 = bitcast %union.FIRST_UNION* %899 to %struct.anon*
  %901 = getelementptr inbounds %struct.anon, %struct.anon* %900, i32 0, i32 0
  %902 = load i8, i8* %901, align 1
  %903 = zext i8 %902 to i32
  %904 = icmp eq i32 %903, 1
  br i1 %904, label %905, label %922

; <label>:905                                     ; preds = %896
  %906 = load %union.rec*, %union.rec** %nxt, align 8
  store %union.rec* %906, %union.rec** %g, align 8
  %907 = load i32, i32* %jn2, align 4
  %908 = icmp ne i32 %907, 0
  br i1 %908, label %909, label %919

; <label>:909                                     ; preds = %905
  %910 = load %union.rec*, %union.rec** %nxt, align 8
  %911 = bitcast %union.rec* %910 to %struct.gapobj_type*
  %912 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %911, i32 0, i32 3
  %913 = bitcast %struct.GAP* %912 to i16*
  %914 = load i16, i16* %913, align 4
  %915 = lshr i16 %914, 9
  %916 = and i16 %915, 1
  %917 = zext i16 %916 to i32
  %918 = icmp ne i32 %917, 0
  br label %919

; <label>:919                                     ; preds = %909, %905
  %920 = phi i1 [ false, %905 ], [ %918, %909 ]
  %921 = zext i1 %920 to i32
  store i32 %921, i32* %jn2, align 4
  br label %963

; <label>:922                                     ; preds = %896
  %923 = load %union.rec*, %union.rec** %nxt, align 8
  %924 = bitcast %union.rec* %923 to %struct.word_type*
  %925 = getelementptr inbounds %struct.word_type, %struct.word_type* %924, i32 0, i32 1
  %926 = bitcast %union.FIRST_UNION* %925 to %struct.anon*
  %927 = getelementptr inbounds %struct.anon, %struct.anon* %926, i32 0, i32 0
  %928 = load i8, i8* %927, align 1
  %929 = zext i8 %928 to i32
  %930 = icmp eq i32 %929, 9
  br i1 %930, label %931, label %935

; <label>:931                                     ; preds = %922
  %932 = load %union.rec*, %union.rec** %nxt, align 8
  %933 = call i32 @SplitIsDefinite(%union.rec* %932)
  %934 = icmp ne i32 %933, 0
  br i1 %934, label %955, label %962

; <label>:935                                     ; preds = %922
  %936 = load %union.rec*, %union.rec** %nxt, align 8
  %937 = bitcast %union.rec* %936 to %struct.word_type*
  %938 = getelementptr inbounds %struct.word_type, %struct.word_type* %937, i32 0, i32 1
  %939 = bitcast %union.FIRST_UNION* %938 to %struct.anon*
  %940 = getelementptr inbounds %struct.anon, %struct.anon* %939, i32 0, i32 0
  %941 = load i8, i8* %940, align 1
  %942 = zext i8 %941 to i32
  %943 = icmp sge i32 %942, 9
  br i1 %943, label %944, label %953

; <label>:944                                     ; preds = %935
  %945 = load %union.rec*, %union.rec** %nxt, align 8
  %946 = bitcast %union.rec* %945 to %struct.word_type*
  %947 = getelementptr inbounds %struct.word_type, %struct.word_type* %946, i32 0, i32 1
  %948 = bitcast %union.FIRST_UNION* %947 to %struct.anon*
  %949 = getelementptr inbounds %struct.anon, %struct.anon* %948, i32 0, i32 0
  %950 = load i8, i8* %949, align 1
  %951 = zext i8 %950 to i32
  %952 = icmp sle i32 %951, 99
  br label %953

; <label>:953                                     ; preds = %944, %935
  %954 = phi i1 [ false, %935 ], [ %952, %944 ]
  br i1 %954, label %955, label %962

; <label>:955                                     ; preds = %953, %931
  %956 = load %union.rec*, %union.rec** %g, align 8
  %957 = icmp ne %union.rec* %956, null
  br i1 %957, label %961, label %958

; <label>:958                                     ; preds = %955
  %959 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %960 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %959, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0))
  br label %961

; <label>:961                                     ; preds = %958, %955
  br label %971

; <label>:962                                     ; preds = %953, %931
  br label %963

; <label>:963                                     ; preds = %962, %919
  br label %964

; <label>:964                                     ; preds = %963
  %965 = load %union.rec*, %union.rec** %link, align 8
  %966 = bitcast %union.rec* %965 to %struct.word_type*
  %967 = getelementptr inbounds %struct.word_type, %struct.word_type* %966, i32 0, i32 0
  %968 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %967, i32 0, i64 0
  %969 = getelementptr inbounds %struct.LIST, %struct.LIST* %968, i32 0, i32 1
  %970 = load %union.rec*, %union.rec** %969, align 8
  store %union.rec* %970, %union.rec** %link, align 8
  br label %868

; <label>:971                                     ; preds = %961, %868
  br label %972

; <label>:972                                     ; preds = %1814, %971
  %973 = load %union.rec*, %union.rec** %link, align 8
  %974 = load %union.rec*, %union.rec** %large_comp, align 8
  %975 = icmp ne %union.rec* %973, %974
  br i1 %975, label %976, label %985

; <label>:976                                     ; preds = %972
  %977 = load %union.rec*, %union.rec** %nxt, align 8
  %978 = bitcast %union.rec* %977 to %struct.word_type*
  %979 = getelementptr inbounds %struct.word_type, %struct.word_type* %978, i32 0, i32 1
  %980 = bitcast %union.FIRST_UNION* %979 to %struct.anon*
  %981 = getelementptr inbounds %struct.anon, %struct.anon* %980, i32 0, i32 0
  %982 = load i8, i8* %981, align 1
  %983 = zext i8 %982 to i32
  %984 = icmp eq i32 %983, 19
  br label %985

; <label>:985                                     ; preds = %976, %972
  %986 = phi i1 [ false, %972 ], [ %984, %976 ]
  br i1 %986, label %987, label %1815

; <label>:987                                     ; preds = %985
  store i32 1, i32* %jn2, align 4
  %988 = load %union.rec*, %union.rec** %nxt, align 8
  %989 = bitcast %union.rec* %988 to %struct.word_type*
  %990 = getelementptr inbounds %struct.word_type, %struct.word_type* %989, i32 0, i32 0
  %991 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %990, i32 0, i64 0
  %992 = getelementptr inbounds %struct.LIST, %struct.LIST* %991, i32 0, i32 1
  %993 = load %union.rec*, %union.rec** %992, align 8
  store %union.rec* %993, %union.rec** %ylink, align 8
  br label %994

; <label>:994                                     ; preds = %1083, %987
  %995 = load %union.rec*, %union.rec** %ylink, align 8
  %996 = load %union.rec*, %union.rec** %nxt, align 8
  %997 = icmp ne %union.rec* %995, %996
  br i1 %997, label %998, label %1090

; <label>:998                                     ; preds = %994
  %999 = load %union.rec*, %union.rec** %ylink, align 8
  %1000 = bitcast %union.rec* %999 to %struct.word_type*
  %1001 = getelementptr inbounds %struct.word_type, %struct.word_type* %1000, i32 0, i32 0
  %1002 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1001, i32 0, i64 1
  %1003 = getelementptr inbounds %struct.LIST, %struct.LIST* %1002, i32 0, i32 0
  %1004 = load %union.rec*, %union.rec** %1003, align 8
  store %union.rec* %1004, %union.rec** %z1, align 8
  br label %1005

; <label>:1005                                    ; preds = %1015, %998
  %1006 = load %union.rec*, %union.rec** %z1, align 8
  %1007 = bitcast %union.rec* %1006 to %struct.word_type*
  %1008 = getelementptr inbounds %struct.word_type, %struct.word_type* %1007, i32 0, i32 1
  %1009 = bitcast %union.FIRST_UNION* %1008 to %struct.anon*
  %1010 = getelementptr inbounds %struct.anon, %struct.anon* %1009, i32 0, i32 0
  %1011 = load i8, i8* %1010, align 1
  %1012 = zext i8 %1011 to i32
  %1013 = icmp eq i32 %1012, 0
  br i1 %1013, label %1014, label %1022

; <label>:1014                                    ; preds = %1005
  br label %1015

; <label>:1015                                    ; preds = %1014
  %1016 = load %union.rec*, %union.rec** %z1, align 8
  %1017 = bitcast %union.rec* %1016 to %struct.word_type*
  %1018 = getelementptr inbounds %struct.word_type, %struct.word_type* %1017, i32 0, i32 0
  %1019 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1018, i32 0, i64 1
  %1020 = getelementptr inbounds %struct.LIST, %struct.LIST* %1019, i32 0, i32 0
  %1021 = load %union.rec*, %union.rec** %1020, align 8
  store %union.rec* %1021, %union.rec** %z1, align 8
  br label %1005

; <label>:1022                                    ; preds = %1005
  %1023 = load %union.rec*, %union.rec** %z1, align 8
  %1024 = bitcast %union.rec* %1023 to %struct.word_type*
  %1025 = getelementptr inbounds %struct.word_type, %struct.word_type* %1024, i32 0, i32 1
  %1026 = bitcast %union.FIRST_UNION* %1025 to %struct.anon*
  %1027 = getelementptr inbounds %struct.anon, %struct.anon* %1026, i32 0, i32 0
  %1028 = load i8, i8* %1027, align 1
  %1029 = zext i8 %1028 to i32
  %1030 = icmp eq i32 %1029, 1
  br i1 %1030, label %1031, label %1047

; <label>:1031                                    ; preds = %1022
  %1032 = load i32, i32* %jn2, align 4
  %1033 = icmp ne i32 %1032, 0
  br i1 %1033, label %1034, label %1044

; <label>:1034                                    ; preds = %1031
  %1035 = load %union.rec*, %union.rec** %z1, align 8
  %1036 = bitcast %union.rec* %1035 to %struct.gapobj_type*
  %1037 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1036, i32 0, i32 3
  %1038 = bitcast %struct.GAP* %1037 to i16*
  %1039 = load i16, i16* %1038, align 4
  %1040 = lshr i16 %1039, 9
  %1041 = and i16 %1040, 1
  %1042 = zext i16 %1041 to i32
  %1043 = icmp ne i32 %1042, 0
  br label %1044

; <label>:1044                                    ; preds = %1034, %1031
  %1045 = phi i1 [ false, %1031 ], [ %1043, %1034 ]
  %1046 = zext i1 %1045 to i32
  store i32 %1046, i32* %jn2, align 4
  br label %1082

; <label>:1047                                    ; preds = %1022
  %1048 = load %union.rec*, %union.rec** %z1, align 8
  %1049 = bitcast %union.rec* %1048 to %struct.word_type*
  %1050 = getelementptr inbounds %struct.word_type, %struct.word_type* %1049, i32 0, i32 1
  %1051 = bitcast %union.FIRST_UNION* %1050 to %struct.anon*
  %1052 = getelementptr inbounds %struct.anon, %struct.anon* %1051, i32 0, i32 0
  %1053 = load i8, i8* %1052, align 1
  %1054 = zext i8 %1053 to i32
  %1055 = icmp eq i32 %1054, 9
  br i1 %1055, label %1056, label %1060

; <label>:1056                                    ; preds = %1047
  %1057 = load %union.rec*, %union.rec** %z1, align 8
  %1058 = call i32 @SplitIsDefinite(%union.rec* %1057)
  %1059 = icmp ne i32 %1058, 0
  br i1 %1059, label %1080, label %1081

; <label>:1060                                    ; preds = %1047
  %1061 = load %union.rec*, %union.rec** %z1, align 8
  %1062 = bitcast %union.rec* %1061 to %struct.word_type*
  %1063 = getelementptr inbounds %struct.word_type, %struct.word_type* %1062, i32 0, i32 1
  %1064 = bitcast %union.FIRST_UNION* %1063 to %struct.anon*
  %1065 = getelementptr inbounds %struct.anon, %struct.anon* %1064, i32 0, i32 0
  %1066 = load i8, i8* %1065, align 1
  %1067 = zext i8 %1066 to i32
  %1068 = icmp sge i32 %1067, 9
  br i1 %1068, label %1069, label %1078

; <label>:1069                                    ; preds = %1060
  %1070 = load %union.rec*, %union.rec** %z1, align 8
  %1071 = bitcast %union.rec* %1070 to %struct.word_type*
  %1072 = getelementptr inbounds %struct.word_type, %struct.word_type* %1071, i32 0, i32 1
  %1073 = bitcast %union.FIRST_UNION* %1072 to %struct.anon*
  %1074 = getelementptr inbounds %struct.anon, %struct.anon* %1073, i32 0, i32 0
  %1075 = load i8, i8* %1074, align 1
  %1076 = zext i8 %1075 to i32
  %1077 = icmp sle i32 %1076, 99
  br label %1078

; <label>:1078                                    ; preds = %1069, %1060
  %1079 = phi i1 [ false, %1060 ], [ %1077, %1069 ]
  br i1 %1079, label %1080, label %1081

; <label>:1080                                    ; preds = %1078, %1056
  br label %1090

; <label>:1081                                    ; preds = %1078, %1056
  br label %1082

; <label>:1082                                    ; preds = %1081, %1044
  br label %1083

; <label>:1083                                    ; preds = %1082
  %1084 = load %union.rec*, %union.rec** %ylink, align 8
  %1085 = bitcast %union.rec* %1084 to %struct.word_type*
  %1086 = getelementptr inbounds %struct.word_type, %struct.word_type* %1085, i32 0, i32 0
  %1087 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1086, i32 0, i64 0
  %1088 = getelementptr inbounds %struct.LIST, %struct.LIST* %1087, i32 0, i32 1
  %1089 = load %union.rec*, %union.rec** %1088, align 8
  store %union.rec* %1089, %union.rec** %ylink, align 8
  br label %994

; <label>:1090                                    ; preds = %1080, %994
  %1091 = load %union.rec*, %union.rec** %ylink, align 8
  %1092 = load %union.rec*, %union.rec** %nxt, align 8
  %1093 = icmp ne %union.rec* %1091, %1092
  br i1 %1093, label %1094, label %1389

; <label>:1094                                    ; preds = %1090
  %1095 = load %union.rec*, %union.rec** %ylink, align 8
  %1096 = bitcast %union.rec* %1095 to %struct.word_type*
  %1097 = getelementptr inbounds %struct.word_type, %struct.word_type* %1096, i32 0, i32 0
  %1098 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1097, i32 0, i64 0
  %1099 = getelementptr inbounds %struct.LIST, %struct.LIST* %1098, i32 0, i32 0
  %1100 = load %union.rec*, %union.rec** %1099, align 8
  %1101 = load %union.rec*, %union.rec** %nxt, align 8
  %1102 = icmp ne %union.rec* %1100, %1101
  br i1 %1102, label %1103, label %1389

; <label>:1103                                    ; preds = %1094
  %1104 = load %union.rec*, %union.rec** %ylink, align 8
  %1105 = bitcast %union.rec* %1104 to %struct.word_type*
  %1106 = getelementptr inbounds %struct.word_type, %struct.word_type* %1105, i32 0, i32 0
  %1107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1106, i32 0, i64 0
  %1108 = getelementptr inbounds %struct.LIST, %struct.LIST* %1107, i32 0, i32 0
  %1109 = load %union.rec*, %union.rec** %1108, align 8
  %1110 = bitcast %union.rec* %1109 to %struct.word_type*
  %1111 = getelementptr inbounds %struct.word_type, %struct.word_type* %1110, i32 0, i32 0
  %1112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1111, i32 0, i64 1
  %1113 = getelementptr inbounds %struct.LIST, %struct.LIST* %1112, i32 0, i32 0
  %1114 = load %union.rec*, %union.rec** %1113, align 8
  store %union.rec* %1114, %union.rec** %yg, align 8
  br label %1115

; <label>:1115                                    ; preds = %1125, %1103
  %1116 = load %union.rec*, %union.rec** %yg, align 8
  %1117 = bitcast %union.rec* %1116 to %struct.word_type*
  %1118 = getelementptr inbounds %struct.word_type, %struct.word_type* %1117, i32 0, i32 1
  %1119 = bitcast %union.FIRST_UNION* %1118 to %struct.anon*
  %1120 = getelementptr inbounds %struct.anon, %struct.anon* %1119, i32 0, i32 0
  %1121 = load i8, i8* %1120, align 1
  %1122 = zext i8 %1121 to i32
  %1123 = icmp eq i32 %1122, 0
  br i1 %1123, label %1124, label %1132

; <label>:1124                                    ; preds = %1115
  br label %1125

; <label>:1125                                    ; preds = %1124
  %1126 = load %union.rec*, %union.rec** %yg, align 8
  %1127 = bitcast %union.rec* %1126 to %struct.word_type*
  %1128 = getelementptr inbounds %struct.word_type, %struct.word_type* %1127, i32 0, i32 0
  %1129 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1128, i32 0, i64 1
  %1130 = getelementptr inbounds %struct.LIST, %struct.LIST* %1129, i32 0, i32 0
  %1131 = load %union.rec*, %union.rec** %1130, align 8
  store %union.rec* %1131, %union.rec** %yg, align 8
  br label %1115

; <label>:1132                                    ; preds = %1115
  %1133 = load %union.rec*, %union.rec** %yg, align 8
  %1134 = bitcast %union.rec* %1133 to %struct.word_type*
  %1135 = getelementptr inbounds %struct.word_type, %struct.word_type* %1134, i32 0, i32 1
  %1136 = bitcast %union.FIRST_UNION* %1135 to %struct.anon*
  %1137 = getelementptr inbounds %struct.anon, %struct.anon* %1136, i32 0, i32 0
  %1138 = load i8, i8* %1137, align 1
  %1139 = zext i8 %1138 to i32
  %1140 = icmp eq i32 %1139, 1
  br i1 %1140, label %1141, label %1150

; <label>:1141                                    ; preds = %1132
  %1142 = load %union.rec*, %union.rec** %yg, align 8
  %1143 = bitcast %union.rec* %1142 to %struct.gapobj_type*
  %1144 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1143, i32 0, i32 3
  %1145 = bitcast %struct.GAP* %1144 to i16*
  %1146 = load i16, i16* %1145, align 4
  %1147 = lshr i16 %1146, 13
  %1148 = zext i16 %1147 to i32
  %1149 = icmp ne i32 %1148, 0
  br i1 %1149, label %1153, label %1150

; <label>:1150                                    ; preds = %1141, %1132
  %1151 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1152 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1151, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0))
  br label %1153

; <label>:1153                                    ; preds = %1150, %1141
  %1154 = load %union.rec*, %union.rec** %ylink, align 8
  %1155 = bitcast %union.rec* %1154 to %struct.word_type*
  %1156 = getelementptr inbounds %struct.word_type, %struct.word_type* %1155, i32 0, i32 0
  %1157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1156, i32 0, i64 0
  %1158 = getelementptr inbounds %struct.LIST, %struct.LIST* %1157, i32 0, i32 0
  %1159 = load %union.rec*, %union.rec** %1158, align 8
  store %union.rec* %1159, %union.rec** @xx_link, align 8
  %1160 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1160, %union.rec** @zz_hold, align 8
  %1161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1162 = bitcast %union.rec* %1161 to %struct.word_type*
  %1163 = getelementptr inbounds %struct.word_type, %struct.word_type* %1162, i32 0, i32 0
  %1164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1163, i32 0, i64 0
  %1165 = getelementptr inbounds %struct.LIST, %struct.LIST* %1164, i32 0, i32 1
  %1166 = load %union.rec*, %union.rec** %1165, align 8
  %1167 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1168 = icmp eq %union.rec* %1166, %1167
  br i1 %1168, label %1169, label %1170

; <label>:1169                                    ; preds = %1153
  br label %1211

; <label>:1170                                    ; preds = %1153
  %1171 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1172 = bitcast %union.rec* %1171 to %struct.word_type*
  %1173 = getelementptr inbounds %struct.word_type, %struct.word_type* %1172, i32 0, i32 0
  %1174 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1173, i32 0, i64 0
  %1175 = getelementptr inbounds %struct.LIST, %struct.LIST* %1174, i32 0, i32 1
  %1176 = load %union.rec*, %union.rec** %1175, align 8
  store %union.rec* %1176, %union.rec** @zz_res, align 8
  %1177 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1178 = bitcast %union.rec* %1177 to %struct.word_type*
  %1179 = getelementptr inbounds %struct.word_type, %struct.word_type* %1178, i32 0, i32 0
  %1180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1179, i32 0, i64 0
  %1181 = getelementptr inbounds %struct.LIST, %struct.LIST* %1180, i32 0, i32 0
  %1182 = load %union.rec*, %union.rec** %1181, align 8
  %1183 = load %union.rec*, %union.rec** @zz_res, align 8
  %1184 = bitcast %union.rec* %1183 to %struct.word_type*
  %1185 = getelementptr inbounds %struct.word_type, %struct.word_type* %1184, i32 0, i32 0
  %1186 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1185, i32 0, i64 0
  %1187 = getelementptr inbounds %struct.LIST, %struct.LIST* %1186, i32 0, i32 0
  store %union.rec* %1182, %union.rec** %1187, align 8
  %1188 = load %union.rec*, %union.rec** @zz_res, align 8
  %1189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1190 = bitcast %union.rec* %1189 to %struct.word_type*
  %1191 = getelementptr inbounds %struct.word_type, %struct.word_type* %1190, i32 0, i32 0
  %1192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1191, i32 0, i64 0
  %1193 = getelementptr inbounds %struct.LIST, %struct.LIST* %1192, i32 0, i32 0
  %1194 = load %union.rec*, %union.rec** %1193, align 8
  %1195 = bitcast %union.rec* %1194 to %struct.word_type*
  %1196 = getelementptr inbounds %struct.word_type, %struct.word_type* %1195, i32 0, i32 0
  %1197 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1196, i32 0, i64 0
  %1198 = getelementptr inbounds %struct.LIST, %struct.LIST* %1197, i32 0, i32 1
  store %union.rec* %1188, %union.rec** %1198, align 8
  %1199 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1200 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1201 = bitcast %union.rec* %1200 to %struct.word_type*
  %1202 = getelementptr inbounds %struct.word_type, %struct.word_type* %1201, i32 0, i32 0
  %1203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1202, i32 0, i64 0
  %1204 = getelementptr inbounds %struct.LIST, %struct.LIST* %1203, i32 0, i32 1
  store %union.rec* %1199, %union.rec** %1204, align 8
  %1205 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1206 = bitcast %union.rec* %1205 to %struct.word_type*
  %1207 = getelementptr inbounds %struct.word_type, %struct.word_type* %1206, i32 0, i32 0
  %1208 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1207, i32 0, i64 0
  %1209 = getelementptr inbounds %struct.LIST, %struct.LIST* %1208, i32 0, i32 0
  store %union.rec* %1199, %union.rec** %1209, align 8
  %1210 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1211

; <label>:1211                                    ; preds = %1170, %1169
  %1212 = phi %union.rec* [ null, %1169 ], [ %1210, %1170 ]
  %1213 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1213, %union.rec** @zz_res, align 8
  %1214 = load %union.rec*, %union.rec** %g, align 8
  %1215 = bitcast %union.rec* %1214 to %struct.word_type*
  %1216 = getelementptr inbounds %struct.word_type, %struct.word_type* %1215, i32 0, i32 0
  %1217 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1216, i32 0, i64 1
  %1218 = getelementptr inbounds %struct.LIST, %struct.LIST* %1217, i32 0, i32 1
  %1219 = load %union.rec*, %union.rec** %1218, align 8
  store %union.rec* %1219, %union.rec** @zz_hold, align 8
  %1220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1221 = icmp eq %union.rec* %1220, null
  br i1 %1221, label %1222, label %1224

; <label>:1222                                    ; preds = %1211
  %1223 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1272

; <label>:1224                                    ; preds = %1211
  %1225 = load %union.rec*, %union.rec** @zz_res, align 8
  %1226 = icmp eq %union.rec* %1225, null
  br i1 %1226, label %1227, label %1229

; <label>:1227                                    ; preds = %1224
  %1228 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1270

; <label>:1229                                    ; preds = %1224
  %1230 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1231 = bitcast %union.rec* %1230 to %struct.word_type*
  %1232 = getelementptr inbounds %struct.word_type, %struct.word_type* %1231, i32 0, i32 0
  %1233 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1232, i32 0, i64 0
  %1234 = getelementptr inbounds %struct.LIST, %struct.LIST* %1233, i32 0, i32 0
  %1235 = load %union.rec*, %union.rec** %1234, align 8
  store %union.rec* %1235, %union.rec** @zz_tmp, align 8
  %1236 = load %union.rec*, %union.rec** @zz_res, align 8
  %1237 = bitcast %union.rec* %1236 to %struct.word_type*
  %1238 = getelementptr inbounds %struct.word_type, %struct.word_type* %1237, i32 0, i32 0
  %1239 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1238, i32 0, i64 0
  %1240 = getelementptr inbounds %struct.LIST, %struct.LIST* %1239, i32 0, i32 0
  %1241 = load %union.rec*, %union.rec** %1240, align 8
  %1242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1243 = bitcast %union.rec* %1242 to %struct.word_type*
  %1244 = getelementptr inbounds %struct.word_type, %struct.word_type* %1243, i32 0, i32 0
  %1245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1244, i32 0, i64 0
  %1246 = getelementptr inbounds %struct.LIST, %struct.LIST* %1245, i32 0, i32 0
  store %union.rec* %1241, %union.rec** %1246, align 8
  %1247 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1248 = load %union.rec*, %union.rec** @zz_res, align 8
  %1249 = bitcast %union.rec* %1248 to %struct.word_type*
  %1250 = getelementptr inbounds %struct.word_type, %struct.word_type* %1249, i32 0, i32 0
  %1251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1250, i32 0, i64 0
  %1252 = getelementptr inbounds %struct.LIST, %struct.LIST* %1251, i32 0, i32 0
  %1253 = load %union.rec*, %union.rec** %1252, align 8
  %1254 = bitcast %union.rec* %1253 to %struct.word_type*
  %1255 = getelementptr inbounds %struct.word_type, %struct.word_type* %1254, i32 0, i32 0
  %1256 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1255, i32 0, i64 0
  %1257 = getelementptr inbounds %struct.LIST, %struct.LIST* %1256, i32 0, i32 1
  store %union.rec* %1247, %union.rec** %1257, align 8
  %1258 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1259 = load %union.rec*, %union.rec** @zz_res, align 8
  %1260 = bitcast %union.rec* %1259 to %struct.word_type*
  %1261 = getelementptr inbounds %struct.word_type, %struct.word_type* %1260, i32 0, i32 0
  %1262 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1261, i32 0, i64 0
  %1263 = getelementptr inbounds %struct.LIST, %struct.LIST* %1262, i32 0, i32 0
  store %union.rec* %1258, %union.rec** %1263, align 8
  %1264 = load %union.rec*, %union.rec** @zz_res, align 8
  %1265 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1266 = bitcast %union.rec* %1265 to %struct.word_type*
  %1267 = getelementptr inbounds %struct.word_type, %struct.word_type* %1266, i32 0, i32 0
  %1268 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1267, i32 0, i64 0
  %1269 = getelementptr inbounds %struct.LIST, %struct.LIST* %1268, i32 0, i32 1
  store %union.rec* %1264, %union.rec** %1269, align 8
  br label %1270

; <label>:1270                                    ; preds = %1229, %1227
  %1271 = phi %union.rec* [ %1228, %1227 ], [ %1264, %1229 ]
  br label %1272

; <label>:1272                                    ; preds = %1270, %1222
  %1273 = phi %union.rec* [ %1223, %1222 ], [ %1271, %1270 ]
  %1274 = load %union.rec*, %union.rec** %g, align 8
  %1275 = bitcast %union.rec* %1274 to %struct.word_type*
  %1276 = getelementptr inbounds %struct.word_type, %struct.word_type* %1275, i32 0, i32 0
  %1277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1276, i32 0, i64 1
  %1278 = getelementptr inbounds %struct.LIST, %struct.LIST* %1277, i32 0, i32 1
  %1279 = load %union.rec*, %union.rec** %1278, align 8
  store %union.rec* %1279, %union.rec** @xx_link, align 8
  %1280 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1280, %union.rec** @zz_hold, align 8
  %1281 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1282 = bitcast %union.rec* %1281 to %struct.word_type*
  %1283 = getelementptr inbounds %struct.word_type, %struct.word_type* %1282, i32 0, i32 0
  %1284 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1283, i32 0, i64 0
  %1285 = getelementptr inbounds %struct.LIST, %struct.LIST* %1284, i32 0, i32 1
  %1286 = load %union.rec*, %union.rec** %1285, align 8
  %1287 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1288 = icmp eq %union.rec* %1286, %1287
  br i1 %1288, label %1289, label %1290

; <label>:1289                                    ; preds = %1272
  br label %1331

; <label>:1290                                    ; preds = %1272
  %1291 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1292 = bitcast %union.rec* %1291 to %struct.word_type*
  %1293 = getelementptr inbounds %struct.word_type, %struct.word_type* %1292, i32 0, i32 0
  %1294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1293, i32 0, i64 0
  %1295 = getelementptr inbounds %struct.LIST, %struct.LIST* %1294, i32 0, i32 1
  %1296 = load %union.rec*, %union.rec** %1295, align 8
  store %union.rec* %1296, %union.rec** @zz_res, align 8
  %1297 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1298 = bitcast %union.rec* %1297 to %struct.word_type*
  %1299 = getelementptr inbounds %struct.word_type, %struct.word_type* %1298, i32 0, i32 0
  %1300 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1299, i32 0, i64 0
  %1301 = getelementptr inbounds %struct.LIST, %struct.LIST* %1300, i32 0, i32 0
  %1302 = load %union.rec*, %union.rec** %1301, align 8
  %1303 = load %union.rec*, %union.rec** @zz_res, align 8
  %1304 = bitcast %union.rec* %1303 to %struct.word_type*
  %1305 = getelementptr inbounds %struct.word_type, %struct.word_type* %1304, i32 0, i32 0
  %1306 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1305, i32 0, i64 0
  %1307 = getelementptr inbounds %struct.LIST, %struct.LIST* %1306, i32 0, i32 0
  store %union.rec* %1302, %union.rec** %1307, align 8
  %1308 = load %union.rec*, %union.rec** @zz_res, align 8
  %1309 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1310 = bitcast %union.rec* %1309 to %struct.word_type*
  %1311 = getelementptr inbounds %struct.word_type, %struct.word_type* %1310, i32 0, i32 0
  %1312 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1311, i32 0, i64 0
  %1313 = getelementptr inbounds %struct.LIST, %struct.LIST* %1312, i32 0, i32 0
  %1314 = load %union.rec*, %union.rec** %1313, align 8
  %1315 = bitcast %union.rec* %1314 to %struct.word_type*
  %1316 = getelementptr inbounds %struct.word_type, %struct.word_type* %1315, i32 0, i32 0
  %1317 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1316, i32 0, i64 0
  %1318 = getelementptr inbounds %struct.LIST, %struct.LIST* %1317, i32 0, i32 1
  store %union.rec* %1308, %union.rec** %1318, align 8
  %1319 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1320 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1321 = bitcast %union.rec* %1320 to %struct.word_type*
  %1322 = getelementptr inbounds %struct.word_type, %struct.word_type* %1321, i32 0, i32 0
  %1323 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1322, i32 0, i64 0
  %1324 = getelementptr inbounds %struct.LIST, %struct.LIST* %1323, i32 0, i32 1
  store %union.rec* %1319, %union.rec** %1324, align 8
  %1325 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1326 = bitcast %union.rec* %1325 to %struct.word_type*
  %1327 = getelementptr inbounds %struct.word_type, %struct.word_type* %1326, i32 0, i32 0
  %1328 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1327, i32 0, i64 0
  %1329 = getelementptr inbounds %struct.LIST, %struct.LIST* %1328, i32 0, i32 0
  store %union.rec* %1319, %union.rec** %1329, align 8
  %1330 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1331

; <label>:1331                                    ; preds = %1290, %1289
  %1332 = phi %union.rec* [ null, %1289 ], [ %1330, %1290 ]
  %1333 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1333, %union.rec** @zz_res, align 8
  %1334 = load %union.rec*, %union.rec** %ylink, align 8
  store %union.rec* %1334, %union.rec** @zz_hold, align 8
  %1335 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1336 = icmp eq %union.rec* %1335, null
  br i1 %1336, label %1337, label %1339

; <label>:1337                                    ; preds = %1331
  %1338 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1387

; <label>:1339                                    ; preds = %1331
  %1340 = load %union.rec*, %union.rec** @zz_res, align 8
  %1341 = icmp eq %union.rec* %1340, null
  br i1 %1341, label %1342, label %1344

; <label>:1342                                    ; preds = %1339
  %1343 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1385

; <label>:1344                                    ; preds = %1339
  %1345 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1346 = bitcast %union.rec* %1345 to %struct.word_type*
  %1347 = getelementptr inbounds %struct.word_type, %struct.word_type* %1346, i32 0, i32 0
  %1348 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1347, i32 0, i64 0
  %1349 = getelementptr inbounds %struct.LIST, %struct.LIST* %1348, i32 0, i32 0
  %1350 = load %union.rec*, %union.rec** %1349, align 8
  store %union.rec* %1350, %union.rec** @zz_tmp, align 8
  %1351 = load %union.rec*, %union.rec** @zz_res, align 8
  %1352 = bitcast %union.rec* %1351 to %struct.word_type*
  %1353 = getelementptr inbounds %struct.word_type, %struct.word_type* %1352, i32 0, i32 0
  %1354 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1353, i32 0, i64 0
  %1355 = getelementptr inbounds %struct.LIST, %struct.LIST* %1354, i32 0, i32 0
  %1356 = load %union.rec*, %union.rec** %1355, align 8
  %1357 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1358 = bitcast %union.rec* %1357 to %struct.word_type*
  %1359 = getelementptr inbounds %struct.word_type, %struct.word_type* %1358, i32 0, i32 0
  %1360 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1359, i32 0, i64 0
  %1361 = getelementptr inbounds %struct.LIST, %struct.LIST* %1360, i32 0, i32 0
  store %union.rec* %1356, %union.rec** %1361, align 8
  %1362 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1363 = load %union.rec*, %union.rec** @zz_res, align 8
  %1364 = bitcast %union.rec* %1363 to %struct.word_type*
  %1365 = getelementptr inbounds %struct.word_type, %struct.word_type* %1364, i32 0, i32 0
  %1366 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1365, i32 0, i64 0
  %1367 = getelementptr inbounds %struct.LIST, %struct.LIST* %1366, i32 0, i32 0
  %1368 = load %union.rec*, %union.rec** %1367, align 8
  %1369 = bitcast %union.rec* %1368 to %struct.word_type*
  %1370 = getelementptr inbounds %struct.word_type, %struct.word_type* %1369, i32 0, i32 0
  %1371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1370, i32 0, i64 0
  %1372 = getelementptr inbounds %struct.LIST, %struct.LIST* %1371, i32 0, i32 1
  store %union.rec* %1362, %union.rec** %1372, align 8
  %1373 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1374 = load %union.rec*, %union.rec** @zz_res, align 8
  %1375 = bitcast %union.rec* %1374 to %struct.word_type*
  %1376 = getelementptr inbounds %struct.word_type, %struct.word_type* %1375, i32 0, i32 0
  %1377 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1376, i32 0, i64 0
  %1378 = getelementptr inbounds %struct.LIST, %struct.LIST* %1377, i32 0, i32 0
  store %union.rec* %1373, %union.rec** %1378, align 8
  %1379 = load %union.rec*, %union.rec** @zz_res, align 8
  %1380 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1381 = bitcast %union.rec* %1380 to %struct.word_type*
  %1382 = getelementptr inbounds %struct.word_type, %struct.word_type* %1381, i32 0, i32 0
  %1383 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1382, i32 0, i64 0
  %1384 = getelementptr inbounds %struct.LIST, %struct.LIST* %1383, i32 0, i32 1
  store %union.rec* %1379, %union.rec** %1384, align 8
  br label %1385

; <label>:1385                                    ; preds = %1344, %1342
  %1386 = phi %union.rec* [ %1343, %1342 ], [ %1379, %1344 ]
  br label %1387

; <label>:1387                                    ; preds = %1385, %1337
  %1388 = phi %union.rec* [ %1338, %1337 ], [ %1386, %1385 ]
  br label %1389

; <label>:1389                                    ; preds = %1387, %1094, %1090
  %1390 = load %union.rec*, %union.rec** %nxt, align 8
  %1391 = bitcast %union.rec* %1390 to %struct.word_type*
  %1392 = getelementptr inbounds %struct.word_type, %struct.word_type* %1391, i32 0, i32 0
  %1393 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1392, i32 0, i64 0
  %1394 = getelementptr inbounds %struct.LIST, %struct.LIST* %1393, i32 0, i32 1
  %1395 = load %union.rec*, %union.rec** %1394, align 8
  store %union.rec* %1395, %union.rec** %xxstart3, align 8
  %1396 = load %union.rec*, %union.rec** %nxt, align 8
  store %union.rec* %1396, %union.rec** %xxstop4, align 8
  %1397 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %1397, %union.rec** %xxdest5, align 8
  %1398 = load %union.rec*, %union.rec** %xxstart3, align 8
  %1399 = load %union.rec*, %union.rec** %xxstop4, align 8
  %1400 = icmp ne %union.rec* %1398, %1399
  br i1 %1400, label %1401, label %1526

; <label>:1401                                    ; preds = %1389
  %1402 = load %union.rec*, %union.rec** %xxstart3, align 8
  %1403 = bitcast %union.rec* %1402 to %struct.word_type*
  %1404 = getelementptr inbounds %struct.word_type, %struct.word_type* %1403, i32 0, i32 1
  %1405 = bitcast %union.FIRST_UNION* %1404 to %struct.anon*
  %1406 = getelementptr inbounds %struct.anon, %struct.anon* %1405, i32 0, i32 0
  %1407 = load i8, i8* %1406, align 1
  %1408 = zext i8 %1407 to i32
  %1409 = icmp eq i32 %1408, 0
  br i1 %1409, label %1413, label %1410

; <label>:1410                                    ; preds = %1401
  %1411 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1412 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1411, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %1413

; <label>:1413                                    ; preds = %1410, %1401
  %1414 = load %union.rec*, %union.rec** %xxstart3, align 8
  store %union.rec* %1414, %union.rec** @zz_res, align 8
  %1415 = load %union.rec*, %union.rec** %xxstop4, align 8
  store %union.rec* %1415, %union.rec** @zz_hold, align 8
  %1416 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1417 = icmp eq %union.rec* %1416, null
  br i1 %1417, label %1418, label %1420

; <label>:1418                                    ; preds = %1413
  %1419 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1468

; <label>:1420                                    ; preds = %1413
  %1421 = load %union.rec*, %union.rec** @zz_res, align 8
  %1422 = icmp eq %union.rec* %1421, null
  br i1 %1422, label %1423, label %1425

; <label>:1423                                    ; preds = %1420
  %1424 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1466

; <label>:1425                                    ; preds = %1420
  %1426 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1427 = bitcast %union.rec* %1426 to %struct.word_type*
  %1428 = getelementptr inbounds %struct.word_type, %struct.word_type* %1427, i32 0, i32 0
  %1429 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1428, i32 0, i64 0
  %1430 = getelementptr inbounds %struct.LIST, %struct.LIST* %1429, i32 0, i32 0
  %1431 = load %union.rec*, %union.rec** %1430, align 8
  store %union.rec* %1431, %union.rec** @zz_tmp, align 8
  %1432 = load %union.rec*, %union.rec** @zz_res, align 8
  %1433 = bitcast %union.rec* %1432 to %struct.word_type*
  %1434 = getelementptr inbounds %struct.word_type, %struct.word_type* %1433, i32 0, i32 0
  %1435 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1434, i32 0, i64 0
  %1436 = getelementptr inbounds %struct.LIST, %struct.LIST* %1435, i32 0, i32 0
  %1437 = load %union.rec*, %union.rec** %1436, align 8
  %1438 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1439 = bitcast %union.rec* %1438 to %struct.word_type*
  %1440 = getelementptr inbounds %struct.word_type, %struct.word_type* %1439, i32 0, i32 0
  %1441 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1440, i32 0, i64 0
  %1442 = getelementptr inbounds %struct.LIST, %struct.LIST* %1441, i32 0, i32 0
  store %union.rec* %1437, %union.rec** %1442, align 8
  %1443 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1444 = load %union.rec*, %union.rec** @zz_res, align 8
  %1445 = bitcast %union.rec* %1444 to %struct.word_type*
  %1446 = getelementptr inbounds %struct.word_type, %struct.word_type* %1445, i32 0, i32 0
  %1447 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1446, i32 0, i64 0
  %1448 = getelementptr inbounds %struct.LIST, %struct.LIST* %1447, i32 0, i32 0
  %1449 = load %union.rec*, %union.rec** %1448, align 8
  %1450 = bitcast %union.rec* %1449 to %struct.word_type*
  %1451 = getelementptr inbounds %struct.word_type, %struct.word_type* %1450, i32 0, i32 0
  %1452 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1451, i32 0, i64 0
  %1453 = getelementptr inbounds %struct.LIST, %struct.LIST* %1452, i32 0, i32 1
  store %union.rec* %1443, %union.rec** %1453, align 8
  %1454 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1455 = load %union.rec*, %union.rec** @zz_res, align 8
  %1456 = bitcast %union.rec* %1455 to %struct.word_type*
  %1457 = getelementptr inbounds %struct.word_type, %struct.word_type* %1456, i32 0, i32 0
  %1458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1457, i32 0, i64 0
  %1459 = getelementptr inbounds %struct.LIST, %struct.LIST* %1458, i32 0, i32 0
  store %union.rec* %1454, %union.rec** %1459, align 8
  %1460 = load %union.rec*, %union.rec** @zz_res, align 8
  %1461 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1462 = bitcast %union.rec* %1461 to %struct.word_type*
  %1463 = getelementptr inbounds %struct.word_type, %struct.word_type* %1462, i32 0, i32 0
  %1464 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1463, i32 0, i64 0
  %1465 = getelementptr inbounds %struct.LIST, %struct.LIST* %1464, i32 0, i32 1
  store %union.rec* %1460, %union.rec** %1465, align 8
  br label %1466

; <label>:1466                                    ; preds = %1425, %1423
  %1467 = phi %union.rec* [ %1424, %1423 ], [ %1460, %1425 ]
  br label %1468

; <label>:1468                                    ; preds = %1466, %1418
  %1469 = phi %union.rec* [ %1419, %1418 ], [ %1467, %1466 ]
  %1470 = load %union.rec*, %union.rec** %xxstart3, align 8
  store %union.rec* %1470, %union.rec** @zz_res, align 8
  %1471 = load %union.rec*, %union.rec** %xxdest5, align 8
  store %union.rec* %1471, %union.rec** @zz_hold, align 8
  %1472 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1473 = icmp eq %union.rec* %1472, null
  br i1 %1473, label %1474, label %1476

; <label>:1474                                    ; preds = %1468
  %1475 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1524

; <label>:1476                                    ; preds = %1468
  %1477 = load %union.rec*, %union.rec** @zz_res, align 8
  %1478 = icmp eq %union.rec* %1477, null
  br i1 %1478, label %1479, label %1481

; <label>:1479                                    ; preds = %1476
  %1480 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1522

; <label>:1481                                    ; preds = %1476
  %1482 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1483 = bitcast %union.rec* %1482 to %struct.word_type*
  %1484 = getelementptr inbounds %struct.word_type, %struct.word_type* %1483, i32 0, i32 0
  %1485 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1484, i32 0, i64 0
  %1486 = getelementptr inbounds %struct.LIST, %struct.LIST* %1485, i32 0, i32 0
  %1487 = load %union.rec*, %union.rec** %1486, align 8
  store %union.rec* %1487, %union.rec** @zz_tmp, align 8
  %1488 = load %union.rec*, %union.rec** @zz_res, align 8
  %1489 = bitcast %union.rec* %1488 to %struct.word_type*
  %1490 = getelementptr inbounds %struct.word_type, %struct.word_type* %1489, i32 0, i32 0
  %1491 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1490, i32 0, i64 0
  %1492 = getelementptr inbounds %struct.LIST, %struct.LIST* %1491, i32 0, i32 0
  %1493 = load %union.rec*, %union.rec** %1492, align 8
  %1494 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1495 = bitcast %union.rec* %1494 to %struct.word_type*
  %1496 = getelementptr inbounds %struct.word_type, %struct.word_type* %1495, i32 0, i32 0
  %1497 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1496, i32 0, i64 0
  %1498 = getelementptr inbounds %struct.LIST, %struct.LIST* %1497, i32 0, i32 0
  store %union.rec* %1493, %union.rec** %1498, align 8
  %1499 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1500 = load %union.rec*, %union.rec** @zz_res, align 8
  %1501 = bitcast %union.rec* %1500 to %struct.word_type*
  %1502 = getelementptr inbounds %struct.word_type, %struct.word_type* %1501, i32 0, i32 0
  %1503 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1502, i32 0, i64 0
  %1504 = getelementptr inbounds %struct.LIST, %struct.LIST* %1503, i32 0, i32 0
  %1505 = load %union.rec*, %union.rec** %1504, align 8
  %1506 = bitcast %union.rec* %1505 to %struct.word_type*
  %1507 = getelementptr inbounds %struct.word_type, %struct.word_type* %1506, i32 0, i32 0
  %1508 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1507, i32 0, i64 0
  %1509 = getelementptr inbounds %struct.LIST, %struct.LIST* %1508, i32 0, i32 1
  store %union.rec* %1499, %union.rec** %1509, align 8
  %1510 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1511 = load %union.rec*, %union.rec** @zz_res, align 8
  %1512 = bitcast %union.rec* %1511 to %struct.word_type*
  %1513 = getelementptr inbounds %struct.word_type, %struct.word_type* %1512, i32 0, i32 0
  %1514 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1513, i32 0, i64 0
  %1515 = getelementptr inbounds %struct.LIST, %struct.LIST* %1514, i32 0, i32 0
  store %union.rec* %1510, %union.rec** %1515, align 8
  %1516 = load %union.rec*, %union.rec** @zz_res, align 8
  %1517 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1518 = bitcast %union.rec* %1517 to %struct.word_type*
  %1519 = getelementptr inbounds %struct.word_type, %struct.word_type* %1518, i32 0, i32 0
  %1520 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1519, i32 0, i64 0
  %1521 = getelementptr inbounds %struct.LIST, %struct.LIST* %1520, i32 0, i32 1
  store %union.rec* %1516, %union.rec** %1521, align 8
  br label %1522

; <label>:1522                                    ; preds = %1481, %1479
  %1523 = phi %union.rec* [ %1480, %1479 ], [ %1516, %1481 ]
  br label %1524

; <label>:1524                                    ; preds = %1522, %1474
  %1525 = phi %union.rec* [ %1475, %1474 ], [ %1523, %1522 ]
  br label %1526

; <label>:1526                                    ; preds = %1524, %1389
  %1527 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %1527, %union.rec** @xx_link, align 8
  %1528 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1528, %union.rec** @zz_hold, align 8
  %1529 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1530 = bitcast %union.rec* %1529 to %struct.word_type*
  %1531 = getelementptr inbounds %struct.word_type, %struct.word_type* %1530, i32 0, i32 0
  %1532 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1531, i32 0, i64 1
  %1533 = getelementptr inbounds %struct.LIST, %struct.LIST* %1532, i32 0, i32 1
  %1534 = load %union.rec*, %union.rec** %1533, align 8
  %1535 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1536 = icmp eq %union.rec* %1534, %1535
  br i1 %1536, label %1537, label %1538

; <label>:1537                                    ; preds = %1526
  br label %1579

; <label>:1538                                    ; preds = %1526
  %1539 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1540 = bitcast %union.rec* %1539 to %struct.word_type*
  %1541 = getelementptr inbounds %struct.word_type, %struct.word_type* %1540, i32 0, i32 0
  %1542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1541, i32 0, i64 1
  %1543 = getelementptr inbounds %struct.LIST, %struct.LIST* %1542, i32 0, i32 1
  %1544 = load %union.rec*, %union.rec** %1543, align 8
  store %union.rec* %1544, %union.rec** @zz_res, align 8
  %1545 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1546 = bitcast %union.rec* %1545 to %struct.word_type*
  %1547 = getelementptr inbounds %struct.word_type, %struct.word_type* %1546, i32 0, i32 0
  %1548 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1547, i32 0, i64 1
  %1549 = getelementptr inbounds %struct.LIST, %struct.LIST* %1548, i32 0, i32 0
  %1550 = load %union.rec*, %union.rec** %1549, align 8
  %1551 = load %union.rec*, %union.rec** @zz_res, align 8
  %1552 = bitcast %union.rec* %1551 to %struct.word_type*
  %1553 = getelementptr inbounds %struct.word_type, %struct.word_type* %1552, i32 0, i32 0
  %1554 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1553, i32 0, i64 1
  %1555 = getelementptr inbounds %struct.LIST, %struct.LIST* %1554, i32 0, i32 0
  store %union.rec* %1550, %union.rec** %1555, align 8
  %1556 = load %union.rec*, %union.rec** @zz_res, align 8
  %1557 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1558 = bitcast %union.rec* %1557 to %struct.word_type*
  %1559 = getelementptr inbounds %struct.word_type, %struct.word_type* %1558, i32 0, i32 0
  %1560 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1559, i32 0, i64 1
  %1561 = getelementptr inbounds %struct.LIST, %struct.LIST* %1560, i32 0, i32 0
  %1562 = load %union.rec*, %union.rec** %1561, align 8
  %1563 = bitcast %union.rec* %1562 to %struct.word_type*
  %1564 = getelementptr inbounds %struct.word_type, %struct.word_type* %1563, i32 0, i32 0
  %1565 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1564, i32 0, i64 1
  %1566 = getelementptr inbounds %struct.LIST, %struct.LIST* %1565, i32 0, i32 1
  store %union.rec* %1556, %union.rec** %1566, align 8
  %1567 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1568 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1569 = bitcast %union.rec* %1568 to %struct.word_type*
  %1570 = getelementptr inbounds %struct.word_type, %struct.word_type* %1569, i32 0, i32 0
  %1571 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1570, i32 0, i64 1
  %1572 = getelementptr inbounds %struct.LIST, %struct.LIST* %1571, i32 0, i32 1
  store %union.rec* %1567, %union.rec** %1572, align 8
  %1573 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1574 = bitcast %union.rec* %1573 to %struct.word_type*
  %1575 = getelementptr inbounds %struct.word_type, %struct.word_type* %1574, i32 0, i32 0
  %1576 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1575, i32 0, i64 1
  %1577 = getelementptr inbounds %struct.LIST, %struct.LIST* %1576, i32 0, i32 0
  store %union.rec* %1567, %union.rec** %1577, align 8
  %1578 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1579

; <label>:1579                                    ; preds = %1538, %1537
  %1580 = phi %union.rec* [ null, %1537 ], [ %1578, %1538 ]
  store %union.rec* %1580, %union.rec** @xx_tmp, align 8
  %1581 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1581, %union.rec** @zz_hold, align 8
  %1582 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1583 = bitcast %union.rec* %1582 to %struct.word_type*
  %1584 = getelementptr inbounds %struct.word_type, %struct.word_type* %1583, i32 0, i32 0
  %1585 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1584, i32 0, i64 0
  %1586 = getelementptr inbounds %struct.LIST, %struct.LIST* %1585, i32 0, i32 1
  %1587 = load %union.rec*, %union.rec** %1586, align 8
  %1588 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1589 = icmp eq %union.rec* %1587, %1588
  br i1 %1589, label %1590, label %1591

; <label>:1590                                    ; preds = %1579
  br label %1632

; <label>:1591                                    ; preds = %1579
  %1592 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1593 = bitcast %union.rec* %1592 to %struct.word_type*
  %1594 = getelementptr inbounds %struct.word_type, %struct.word_type* %1593, i32 0, i32 0
  %1595 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1594, i32 0, i64 0
  %1596 = getelementptr inbounds %struct.LIST, %struct.LIST* %1595, i32 0, i32 1
  %1597 = load %union.rec*, %union.rec** %1596, align 8
  store %union.rec* %1597, %union.rec** @zz_res, align 8
  %1598 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1599 = bitcast %union.rec* %1598 to %struct.word_type*
  %1600 = getelementptr inbounds %struct.word_type, %struct.word_type* %1599, i32 0, i32 0
  %1601 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1600, i32 0, i64 0
  %1602 = getelementptr inbounds %struct.LIST, %struct.LIST* %1601, i32 0, i32 0
  %1603 = load %union.rec*, %union.rec** %1602, align 8
  %1604 = load %union.rec*, %union.rec** @zz_res, align 8
  %1605 = bitcast %union.rec* %1604 to %struct.word_type*
  %1606 = getelementptr inbounds %struct.word_type, %struct.word_type* %1605, i32 0, i32 0
  %1607 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1606, i32 0, i64 0
  %1608 = getelementptr inbounds %struct.LIST, %struct.LIST* %1607, i32 0, i32 0
  store %union.rec* %1603, %union.rec** %1608, align 8
  %1609 = load %union.rec*, %union.rec** @zz_res, align 8
  %1610 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1611 = bitcast %union.rec* %1610 to %struct.word_type*
  %1612 = getelementptr inbounds %struct.word_type, %struct.word_type* %1611, i32 0, i32 0
  %1613 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1612, i32 0, i64 0
  %1614 = getelementptr inbounds %struct.LIST, %struct.LIST* %1613, i32 0, i32 0
  %1615 = load %union.rec*, %union.rec** %1614, align 8
  %1616 = bitcast %union.rec* %1615 to %struct.word_type*
  %1617 = getelementptr inbounds %struct.word_type, %struct.word_type* %1616, i32 0, i32 0
  %1618 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1617, i32 0, i64 0
  %1619 = getelementptr inbounds %struct.LIST, %struct.LIST* %1618, i32 0, i32 1
  store %union.rec* %1609, %union.rec** %1619, align 8
  %1620 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1621 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1622 = bitcast %union.rec* %1621 to %struct.word_type*
  %1623 = getelementptr inbounds %struct.word_type, %struct.word_type* %1622, i32 0, i32 0
  %1624 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1623, i32 0, i64 0
  %1625 = getelementptr inbounds %struct.LIST, %struct.LIST* %1624, i32 0, i32 1
  store %union.rec* %1620, %union.rec** %1625, align 8
  %1626 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1627 = bitcast %union.rec* %1626 to %struct.word_type*
  %1628 = getelementptr inbounds %struct.word_type, %struct.word_type* %1627, i32 0, i32 0
  %1629 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1628, i32 0, i64 0
  %1630 = getelementptr inbounds %struct.LIST, %struct.LIST* %1629, i32 0, i32 0
  store %union.rec* %1620, %union.rec** %1630, align 8
  %1631 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1632

; <label>:1632                                    ; preds = %1591, %1590
  %1633 = phi %union.rec* [ null, %1590 ], [ %1631, %1591 ]
  %1634 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1634, %union.rec** @zz_hold, align 8
  %1635 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1635, %union.rec** @zz_hold, align 8
  %1636 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1637 = bitcast %union.rec* %1636 to %struct.word_type*
  %1638 = getelementptr inbounds %struct.word_type, %struct.word_type* %1637, i32 0, i32 1
  %1639 = bitcast %union.FIRST_UNION* %1638 to %struct.anon*
  %1640 = getelementptr inbounds %struct.anon, %struct.anon* %1639, i32 0, i32 0
  %1641 = load i8, i8* %1640, align 1
  %1642 = zext i8 %1641 to i32
  %1643 = icmp eq i32 %1642, 11
  br i1 %1643, label %1653, label %1644

; <label>:1644                                    ; preds = %1632
  %1645 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1646 = bitcast %union.rec* %1645 to %struct.word_type*
  %1647 = getelementptr inbounds %struct.word_type, %struct.word_type* %1646, i32 0, i32 1
  %1648 = bitcast %union.FIRST_UNION* %1647 to %struct.anon*
  %1649 = getelementptr inbounds %struct.anon, %struct.anon* %1648, i32 0, i32 0
  %1650 = load i8, i8* %1649, align 1
  %1651 = zext i8 %1650 to i32
  %1652 = icmp eq i32 %1651, 12
  br i1 %1652, label %1653, label %1661

; <label>:1653                                    ; preds = %1644, %1632
  %1654 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1655 = bitcast %union.rec* %1654 to %struct.word_type*
  %1656 = getelementptr inbounds %struct.word_type, %struct.word_type* %1655, i32 0, i32 1
  %1657 = bitcast %union.FIRST_UNION* %1656 to %struct.anon*
  %1658 = getelementptr inbounds %struct.anon, %struct.anon* %1657, i32 0, i32 1
  %1659 = load i8, i8* %1658, align 1
  %1660 = zext i8 %1659 to i32
  br label %1672

; <label>:1661                                    ; preds = %1644
  %1662 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1663 = bitcast %union.rec* %1662 to %struct.word_type*
  %1664 = getelementptr inbounds %struct.word_type, %struct.word_type* %1663, i32 0, i32 1
  %1665 = bitcast %union.FIRST_UNION* %1664 to %struct.anon*
  %1666 = getelementptr inbounds %struct.anon, %struct.anon* %1665, i32 0, i32 0
  %1667 = load i8, i8* %1666, align 1
  %1668 = zext i8 %1667 to i64
  %1669 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1668
  %1670 = load i8, i8* %1669, align 1
  %1671 = zext i8 %1670 to i32
  br label %1672

; <label>:1672                                    ; preds = %1661, %1653
  %1673 = phi i32 [ %1660, %1653 ], [ %1671, %1661 ]
  store i32 %1673, i32* @zz_size, align 4
  %1674 = load i32, i32* @zz_size, align 4
  %1675 = sext i32 %1674 to i64
  %1676 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1675
  %1677 = load %union.rec*, %union.rec** %1676, align 8
  %1678 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1679 = bitcast %union.rec* %1678 to %struct.word_type*
  %1680 = getelementptr inbounds %struct.word_type, %struct.word_type* %1679, i32 0, i32 0
  %1681 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1680, i32 0, i64 0
  %1682 = getelementptr inbounds %struct.LIST, %struct.LIST* %1681, i32 0, i32 0
  store %union.rec* %1677, %union.rec** %1682, align 8
  %1683 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1684 = load i32, i32* @zz_size, align 4
  %1685 = sext i32 %1684 to i64
  %1686 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1685
  store %union.rec* %1683, %union.rec** %1686, align 8
  %1687 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %1688 = bitcast %union.rec* %1687 to %struct.word_type*
  %1689 = getelementptr inbounds %struct.word_type, %struct.word_type* %1688, i32 0, i32 0
  %1690 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1689, i32 0, i64 1
  %1691 = getelementptr inbounds %struct.LIST, %struct.LIST* %1690, i32 0, i32 1
  %1692 = load %union.rec*, %union.rec** %1691, align 8
  %1693 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %1694 = icmp eq %union.rec* %1692, %1693
  br i1 %1694, label %1695, label %1698

; <label>:1695                                    ; preds = %1672
  %1696 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %1697 = call i32 @DisposeObject(%union.rec* %1696)
  br label %1698

; <label>:1698                                    ; preds = %1695, %1672
  %1699 = load %union.rec*, %union.rec** %start_link, align 8
  %1700 = bitcast %union.rec* %1699 to %struct.word_type*
  %1701 = getelementptr inbounds %struct.word_type, %struct.word_type* %1700, i32 0, i32 0
  %1702 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1701, i32 0, i64 0
  %1703 = getelementptr inbounds %struct.LIST, %struct.LIST* %1702, i32 0, i32 1
  %1704 = load %union.rec*, %union.rec** %1703, align 8
  store %union.rec* %1704, %union.rec** %link, align 8
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn2, align 4
  %1705 = load %union.rec*, %union.rec** %link, align 8
  %1706 = bitcast %union.rec* %1705 to %struct.word_type*
  %1707 = getelementptr inbounds %struct.word_type, %struct.word_type* %1706, i32 0, i32 0
  %1708 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1707, i32 0, i64 0
  %1709 = getelementptr inbounds %struct.LIST, %struct.LIST* %1708, i32 0, i32 1
  %1710 = load %union.rec*, %union.rec** %1709, align 8
  store %union.rec* %1710, %union.rec** %link, align 8
  br label %1711

; <label>:1711                                    ; preds = %1807, %1698
  %1712 = load %union.rec*, %union.rec** %link, align 8
  %1713 = load %union.rec*, %union.rec** %large_comp, align 8
  %1714 = icmp ne %union.rec* %1712, %1713
  br i1 %1714, label %1715, label %1814

; <label>:1715                                    ; preds = %1711
  %1716 = load %union.rec*, %union.rec** %link, align 8
  %1717 = bitcast %union.rec* %1716 to %struct.word_type*
  %1718 = getelementptr inbounds %struct.word_type, %struct.word_type* %1717, i32 0, i32 0
  %1719 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1718, i32 0, i64 1
  %1720 = getelementptr inbounds %struct.LIST, %struct.LIST* %1719, i32 0, i32 0
  %1721 = load %union.rec*, %union.rec** %1720, align 8
  store %union.rec* %1721, %union.rec** %nxt, align 8
  br label %1722

; <label>:1722                                    ; preds = %1732, %1715
  %1723 = load %union.rec*, %union.rec** %nxt, align 8
  %1724 = bitcast %union.rec* %1723 to %struct.word_type*
  %1725 = getelementptr inbounds %struct.word_type, %struct.word_type* %1724, i32 0, i32 1
  %1726 = bitcast %union.FIRST_UNION* %1725 to %struct.anon*
  %1727 = getelementptr inbounds %struct.anon, %struct.anon* %1726, i32 0, i32 0
  %1728 = load i8, i8* %1727, align 1
  %1729 = zext i8 %1728 to i32
  %1730 = icmp eq i32 %1729, 0
  br i1 %1730, label %1731, label %1739

; <label>:1731                                    ; preds = %1722
  br label %1732

; <label>:1732                                    ; preds = %1731
  %1733 = load %union.rec*, %union.rec** %nxt, align 8
  %1734 = bitcast %union.rec* %1733 to %struct.word_type*
  %1735 = getelementptr inbounds %struct.word_type, %struct.word_type* %1734, i32 0, i32 0
  %1736 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1735, i32 0, i64 1
  %1737 = getelementptr inbounds %struct.LIST, %struct.LIST* %1736, i32 0, i32 0
  %1738 = load %union.rec*, %union.rec** %1737, align 8
  store %union.rec* %1738, %union.rec** %nxt, align 8
  br label %1722

; <label>:1739                                    ; preds = %1722
  %1740 = load %union.rec*, %union.rec** %nxt, align 8
  %1741 = bitcast %union.rec* %1740 to %struct.word_type*
  %1742 = getelementptr inbounds %struct.word_type, %struct.word_type* %1741, i32 0, i32 1
  %1743 = bitcast %union.FIRST_UNION* %1742 to %struct.anon*
  %1744 = getelementptr inbounds %struct.anon, %struct.anon* %1743, i32 0, i32 0
  %1745 = load i8, i8* %1744, align 1
  %1746 = zext i8 %1745 to i32
  %1747 = icmp eq i32 %1746, 1
  br i1 %1747, label %1748, label %1765

; <label>:1748                                    ; preds = %1739
  %1749 = load %union.rec*, %union.rec** %nxt, align 8
  store %union.rec* %1749, %union.rec** %g, align 8
  %1750 = load i32, i32* %jn2, align 4
  %1751 = icmp ne i32 %1750, 0
  br i1 %1751, label %1752, label %1762

; <label>:1752                                    ; preds = %1748
  %1753 = load %union.rec*, %union.rec** %nxt, align 8
  %1754 = bitcast %union.rec* %1753 to %struct.gapobj_type*
  %1755 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1754, i32 0, i32 3
  %1756 = bitcast %struct.GAP* %1755 to i16*
  %1757 = load i16, i16* %1756, align 4
  %1758 = lshr i16 %1757, 9
  %1759 = and i16 %1758, 1
  %1760 = zext i16 %1759 to i32
  %1761 = icmp ne i32 %1760, 0
  br label %1762

; <label>:1762                                    ; preds = %1752, %1748
  %1763 = phi i1 [ false, %1748 ], [ %1761, %1752 ]
  %1764 = zext i1 %1763 to i32
  store i32 %1764, i32* %jn2, align 4
  br label %1806

; <label>:1765                                    ; preds = %1739
  %1766 = load %union.rec*, %union.rec** %nxt, align 8
  %1767 = bitcast %union.rec* %1766 to %struct.word_type*
  %1768 = getelementptr inbounds %struct.word_type, %struct.word_type* %1767, i32 0, i32 1
  %1769 = bitcast %union.FIRST_UNION* %1768 to %struct.anon*
  %1770 = getelementptr inbounds %struct.anon, %struct.anon* %1769, i32 0, i32 0
  %1771 = load i8, i8* %1770, align 1
  %1772 = zext i8 %1771 to i32
  %1773 = icmp eq i32 %1772, 9
  br i1 %1773, label %1774, label %1778

; <label>:1774                                    ; preds = %1765
  %1775 = load %union.rec*, %union.rec** %nxt, align 8
  %1776 = call i32 @SplitIsDefinite(%union.rec* %1775)
  %1777 = icmp ne i32 %1776, 0
  br i1 %1777, label %1798, label %1805

; <label>:1778                                    ; preds = %1765
  %1779 = load %union.rec*, %union.rec** %nxt, align 8
  %1780 = bitcast %union.rec* %1779 to %struct.word_type*
  %1781 = getelementptr inbounds %struct.word_type, %struct.word_type* %1780, i32 0, i32 1
  %1782 = bitcast %union.FIRST_UNION* %1781 to %struct.anon*
  %1783 = getelementptr inbounds %struct.anon, %struct.anon* %1782, i32 0, i32 0
  %1784 = load i8, i8* %1783, align 1
  %1785 = zext i8 %1784 to i32
  %1786 = icmp sge i32 %1785, 9
  br i1 %1786, label %1787, label %1796

; <label>:1787                                    ; preds = %1778
  %1788 = load %union.rec*, %union.rec** %nxt, align 8
  %1789 = bitcast %union.rec* %1788 to %struct.word_type*
  %1790 = getelementptr inbounds %struct.word_type, %struct.word_type* %1789, i32 0, i32 1
  %1791 = bitcast %union.FIRST_UNION* %1790 to %struct.anon*
  %1792 = getelementptr inbounds %struct.anon, %struct.anon* %1791, i32 0, i32 0
  %1793 = load i8, i8* %1792, align 1
  %1794 = zext i8 %1793 to i32
  %1795 = icmp sle i32 %1794, 99
  br label %1796

; <label>:1796                                    ; preds = %1787, %1778
  %1797 = phi i1 [ false, %1778 ], [ %1795, %1787 ]
  br i1 %1797, label %1798, label %1805

; <label>:1798                                    ; preds = %1796, %1774
  %1799 = load %union.rec*, %union.rec** %g, align 8
  %1800 = icmp ne %union.rec* %1799, null
  br i1 %1800, label %1804, label %1801

; <label>:1801                                    ; preds = %1798
  %1802 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1803 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1802, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0))
  br label %1804

; <label>:1804                                    ; preds = %1801, %1798
  br label %1814

; <label>:1805                                    ; preds = %1796, %1774
  br label %1806

; <label>:1806                                    ; preds = %1805, %1762
  br label %1807

; <label>:1807                                    ; preds = %1806
  %1808 = load %union.rec*, %union.rec** %link, align 8
  %1809 = bitcast %union.rec* %1808 to %struct.word_type*
  %1810 = getelementptr inbounds %struct.word_type, %struct.word_type* %1809, i32 0, i32 0
  %1811 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1810, i32 0, i64 0
  %1812 = getelementptr inbounds %struct.LIST, %struct.LIST* %1811, i32 0, i32 1
  %1813 = load %union.rec*, %union.rec** %1812, align 8
  store %union.rec* %1813, %union.rec** %link, align 8
  br label %1711

; <label>:1814                                    ; preds = %1804, %1711
  br label %972

; <label>:1815                                    ; preds = %985
  %1816 = load %union.rec*, %union.rec** %link, align 8
  %1817 = load %union.rec*, %union.rec** %large_comp, align 8
  %1818 = icmp eq %union.rec* %1816, %1817
  br i1 %1818, label %1840, label %1819

; <label>:1819                                    ; preds = %1815
  %1820 = load %union.rec*, %union.rec** %nxt, align 8
  %1821 = bitcast %union.rec* %1820 to %struct.word_type*
  %1822 = getelementptr inbounds %struct.word_type, %struct.word_type* %1821, i32 0, i32 1
  %1823 = bitcast %union.FIRST_UNION* %1822 to %struct.anon*
  %1824 = getelementptr inbounds %struct.anon, %struct.anon* %1823, i32 0, i32 0
  %1825 = load i8, i8* %1824, align 1
  %1826 = zext i8 %1825 to i32
  %1827 = icmp sge i32 %1826, 9
  br i1 %1827, label %1828, label %1837

; <label>:1828                                    ; preds = %1819
  %1829 = load %union.rec*, %union.rec** %nxt, align 8
  %1830 = bitcast %union.rec* %1829 to %struct.word_type*
  %1831 = getelementptr inbounds %struct.word_type, %struct.word_type* %1830, i32 0, i32 1
  %1832 = bitcast %union.FIRST_UNION* %1831 to %struct.anon*
  %1833 = getelementptr inbounds %struct.anon, %struct.anon* %1832, i32 0, i32 0
  %1834 = load i8, i8* %1833, align 1
  %1835 = zext i8 %1834 to i32
  %1836 = icmp sle i32 %1835, 99
  br i1 %1836, label %1840, label %1837

; <label>:1837                                    ; preds = %1828, %1819
  %1838 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1839 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1838, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  br label %1840

; <label>:1840                                    ; preds = %1837, %1828, %1815
  %1841 = load %union.rec*, %union.rec** %link, align 8
  %1842 = load %union.rec*, %union.rec** %large_comp, align 8
  %1843 = icmp eq %union.rec* %1841, %1842
  br i1 %1843, label %1856, label %1844

; <label>:1844                                    ; preds = %1840
  %1845 = load %union.rec*, %union.rec** %g, align 8
  %1846 = bitcast %union.rec* %1845 to %struct.gapobj_type*
  %1847 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1846, i32 0, i32 3
  %1848 = bitcast %struct.GAP* %1847 to i16*
  %1849 = load i16, i16* %1848, align 4
  %1850 = lshr i16 %1849, 13
  %1851 = zext i16 %1850 to i32
  %1852 = icmp ne i32 %1851, 0
  br i1 %1852, label %1856, label %1853

; <label>:1853                                    ; preds = %1844
  %1854 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1855 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1854, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i32 0, i32 0))
  br label %1856

; <label>:1856                                    ; preds = %1853, %1844, %1840
  %1857 = load %union.rec*, %union.rec** %link, align 8
  %1858 = load %union.rec*, %union.rec** %large_comp, align 8
  %1859 = icmp eq %union.rec* %1857, %1858
  br i1 %1859, label %1860, label %1861

; <label>:1860                                    ; preds = %1856
  store i32 0, i32* %1
  br label %2549

; <label>:1861                                    ; preds = %1856
  %1862 = load i32, i32* %rump_fwd, align 4
  %1863 = load %union.rec*, %union.rec** %prev, align 8
  %1864 = bitcast %union.rec* %1863 to %struct.word_type*
  %1865 = getelementptr inbounds %struct.word_type, %struct.word_type* %1864, i32 0, i32 3
  %1866 = bitcast %union.THIRD_UNION* %1865 to %struct.anon.6*
  %1867 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1866, i32 0, i32 1
  %1868 = getelementptr inbounds [2 x i32], [2 x i32]* %1867, i32 0, i64 1
  %1869 = load i32, i32* %1868, align 4
  %1870 = icmp slt i32 %1862, %1869
  br i1 %1870, label %1871, label %1879

; <label>:1871                                    ; preds = %1861
  %1872 = load %union.rec*, %union.rec** %prev, align 8
  %1873 = bitcast %union.rec* %1872 to %struct.word_type*
  %1874 = getelementptr inbounds %struct.word_type, %struct.word_type* %1873, i32 0, i32 3
  %1875 = bitcast %union.THIRD_UNION* %1874 to %struct.anon.6*
  %1876 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1875, i32 0, i32 1
  %1877 = getelementptr inbounds [2 x i32], [2 x i32]* %1876, i32 0, i64 1
  %1878 = load i32, i32* %1877, align 4
  br label %1881

; <label>:1879                                    ; preds = %1861
  %1880 = load i32, i32* %rump_fwd, align 4
  br label %1881

; <label>:1881                                    ; preds = %1879, %1871
  %1882 = phi i32 [ %1878, %1871 ], [ %1880, %1879 ]
  store i32 %1882, i32* %rump_fwd, align 4
  %1883 = load i32, i32* %rump_fwd, align 4
  %1884 = load %union.rec*, %union.rec** %nxt, align 8
  %1885 = bitcast %union.rec* %1884 to %struct.word_type*
  %1886 = getelementptr inbounds %struct.word_type, %struct.word_type* %1885, i32 0, i32 3
  %1887 = bitcast %union.THIRD_UNION* %1886 to %struct.anon.6*
  %1888 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1887, i32 0, i32 0
  %1889 = getelementptr inbounds [2 x i32], [2 x i32]* %1888, i32 0, i64 1
  %1890 = load i32, i32* %1889, align 4
  %1891 = load %union.rec*, %union.rec** %nxt, align 8
  %1892 = bitcast %union.rec* %1891 to %struct.word_type*
  %1893 = getelementptr inbounds %struct.word_type, %struct.word_type* %1892, i32 0, i32 3
  %1894 = bitcast %union.THIRD_UNION* %1893 to %struct.anon.6*
  %1895 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1894, i32 0, i32 1
  %1896 = getelementptr inbounds [2 x i32], [2 x i32]* %1895, i32 0, i64 1
  %1897 = load i32, i32* %1896, align 4
  %1898 = load %union.rec*, %union.rec** %g, align 8
  %1899 = bitcast %union.rec* %1898 to %struct.gapobj_type*
  %1900 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1899, i32 0, i32 3
  %1901 = call i32 @MinGap(i32 %1883, i32 %1890, i32 %1897, %struct.GAP* %1900)
  %1902 = load %union.rec*, %union.rec** %prev, align 8
  %1903 = bitcast %union.rec* %1902 to %struct.word_type*
  %1904 = getelementptr inbounds %struct.word_type, %struct.word_type* %1903, i32 0, i32 3
  %1905 = bitcast %union.THIRD_UNION* %1904 to %struct.anon.6*
  %1906 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1905, i32 0, i32 1
  %1907 = getelementptr inbounds [2 x i32], [2 x i32]* %1906, i32 0, i64 1
  %1908 = load i32, i32* %1907, align 4
  %1909 = load %union.rec*, %union.rec** %nxt, align 8
  %1910 = bitcast %union.rec* %1909 to %struct.word_type*
  %1911 = getelementptr inbounds %struct.word_type, %struct.word_type* %1910, i32 0, i32 3
  %1912 = bitcast %union.THIRD_UNION* %1911 to %struct.anon.6*
  %1913 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1912, i32 0, i32 0
  %1914 = getelementptr inbounds [2 x i32], [2 x i32]* %1913, i32 0, i64 1
  %1915 = load i32, i32* %1914, align 4
  %1916 = load %union.rec*, %union.rec** %nxt, align 8
  %1917 = bitcast %union.rec* %1916 to %struct.word_type*
  %1918 = getelementptr inbounds %struct.word_type, %struct.word_type* %1917, i32 0, i32 3
  %1919 = bitcast %union.THIRD_UNION* %1918 to %struct.anon.6*
  %1920 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1919, i32 0, i32 1
  %1921 = getelementptr inbounds [2 x i32], [2 x i32]* %1920, i32 0, i64 1
  %1922 = load i32, i32* %1921, align 4
  %1923 = load %union.rec*, %union.rec** %g, align 8
  %1924 = bitcast %union.rec* %1923 to %struct.gapobj_type*
  %1925 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1924, i32 0, i32 3
  %1926 = call i32 @MinGap(i32 %1908, i32 %1915, i32 %1922, %struct.GAP* %1925)
  %1927 = icmp ne i32 %1901, %1926
  br i1 %1927, label %1928, label %1929

; <label>:1928                                    ; preds = %1881
  store i32 0, i32* %1
  br label %2549

; <label>:1929                                    ; preds = %1881
  %1930 = load %union.rec*, %union.rec** %large_comp, align 8
  %1931 = bitcast %union.rec* %1930 to %struct.word_type*
  %1932 = getelementptr inbounds %struct.word_type, %struct.word_type* %1931, i32 0, i32 0
  %1933 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1932, i32 0, i64 0
  %1934 = getelementptr inbounds %struct.LIST, %struct.LIST* %1933, i32 0, i32 1
  %1935 = load %union.rec*, %union.rec** %1934, align 8
  store %union.rec* %1935, %union.rec** %link, align 8
  br label %1936

; <label>:1936                                    ; preds = %1994, %1929
  %1937 = load %union.rec*, %union.rec** %link, align 8
  %1938 = load %union.rec*, %union.rec** %large_comp, align 8
  %1939 = icmp ne %union.rec* %1937, %1938
  br i1 %1939, label %1940, label %2001

; <label>:1940                                    ; preds = %1936
  %1941 = load %union.rec*, %union.rec** %link, align 8
  %1942 = bitcast %union.rec* %1941 to %struct.word_type*
  %1943 = getelementptr inbounds %struct.word_type, %struct.word_type* %1942, i32 0, i32 0
  %1944 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1943, i32 0, i64 1
  %1945 = getelementptr inbounds %struct.LIST, %struct.LIST* %1944, i32 0, i32 0
  %1946 = load %union.rec*, %union.rec** %1945, align 8
  store %union.rec* %1946, %union.rec** %z, align 8
  br label %1947

; <label>:1947                                    ; preds = %1957, %1940
  %1948 = load %union.rec*, %union.rec** %z, align 8
  %1949 = bitcast %union.rec* %1948 to %struct.word_type*
  %1950 = getelementptr inbounds %struct.word_type, %struct.word_type* %1949, i32 0, i32 1
  %1951 = bitcast %union.FIRST_UNION* %1950 to %struct.anon*
  %1952 = getelementptr inbounds %struct.anon, %struct.anon* %1951, i32 0, i32 0
  %1953 = load i8, i8* %1952, align 1
  %1954 = zext i8 %1953 to i32
  %1955 = icmp eq i32 %1954, 0
  br i1 %1955, label %1956, label %1964

; <label>:1956                                    ; preds = %1947
  br label %1957

; <label>:1957                                    ; preds = %1956
  %1958 = load %union.rec*, %union.rec** %z, align 8
  %1959 = bitcast %union.rec* %1958 to %struct.word_type*
  %1960 = getelementptr inbounds %struct.word_type, %struct.word_type* %1959, i32 0, i32 0
  %1961 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1960, i32 0, i64 1
  %1962 = getelementptr inbounds %struct.LIST, %struct.LIST* %1961, i32 0, i32 0
  %1963 = load %union.rec*, %union.rec** %1962, align 8
  store %union.rec* %1963, %union.rec** %z, align 8
  br label %1947

; <label>:1964                                    ; preds = %1947
  %1965 = load %union.rec*, %union.rec** %z, align 8
  %1966 = bitcast %union.rec* %1965 to %struct.word_type*
  %1967 = getelementptr inbounds %struct.word_type, %struct.word_type* %1966, i32 0, i32 1
  %1968 = bitcast %union.FIRST_UNION* %1967 to %struct.anon*
  %1969 = getelementptr inbounds %struct.anon, %struct.anon* %1968, i32 0, i32 0
  %1970 = load i8, i8* %1969, align 1
  %1971 = zext i8 %1970 to i32
  %1972 = icmp eq i32 %1971, 1
  br i1 %1972, label %1973, label %1993

; <label>:1973                                    ; preds = %1964
  %1974 = load %union.rec*, %union.rec** %z, align 8
  %1975 = bitcast %union.rec* %1974 to %struct.gapobj_type*
  %1976 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1975, i32 0, i32 3
  %1977 = bitcast %struct.GAP* %1976 to i16*
  %1978 = load i16, i16* %1977, align 4
  %1979 = lshr i16 %1978, 13
  %1980 = zext i16 %1979 to i32
  %1981 = icmp ne i32 %1980, 0
  br i1 %1981, label %1982, label %1993

; <label>:1982                                    ; preds = %1973
  %1983 = load %union.rec*, %union.rec** %z, align 8
  %1984 = bitcast %union.rec* %1983 to %struct.gapobj_type*
  %1985 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1984, i32 0, i32 3
  %1986 = bitcast %struct.GAP* %1985 to i16*
  %1987 = load i16, i16* %1986, align 4
  %1988 = lshr i16 %1987, 9
  %1989 = and i16 %1988, 1
  %1990 = zext i16 %1989 to i32
  %1991 = icmp ne i32 %1990, 0
  br i1 %1991, label %1992, label %1993

; <label>:1992                                    ; preds = %1982
  store i32 0, i32* %1
  br label %2549

; <label>:1993                                    ; preds = %1982, %1973, %1964
  br label %1994

; <label>:1994                                    ; preds = %1993
  %1995 = load %union.rec*, %union.rec** %link, align 8
  %1996 = bitcast %union.rec* %1995 to %struct.word_type*
  %1997 = getelementptr inbounds %struct.word_type, %struct.word_type* %1996, i32 0, i32 0
  %1998 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1997, i32 0, i64 0
  %1999 = getelementptr inbounds %struct.LIST, %struct.LIST* %1998, i32 0, i32 1
  %2000 = load %union.rec*, %union.rec** %1999, align 8
  store %union.rec* %2000, %union.rec** %link, align 8
  br label %1936

; <label>:2001                                    ; preds = %1936
  %2002 = load %union.rec*, %union.rec** %prev, align 8
  %2003 = bitcast %union.rec* %2002 to %struct.word_type*
  %2004 = getelementptr inbounds %struct.word_type, %struct.word_type* %2003, i32 0, i32 0
  %2005 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2004, i32 0, i64 1
  %2006 = getelementptr inbounds %struct.LIST, %struct.LIST* %2005, i32 0, i32 1
  %2007 = load %union.rec*, %union.rec** %2006, align 8
  %2008 = bitcast %union.rec* %2007 to %struct.word_type*
  %2009 = getelementptr inbounds %struct.word_type, %struct.word_type* %2008, i32 0, i32 0
  %2010 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2009, i32 0, i64 0
  %2011 = getelementptr inbounds %struct.LIST, %struct.LIST* %2010, i32 0, i32 1
  %2012 = load %union.rec*, %union.rec** %2011, align 8
  store %union.rec* %2012, %union.rec** %link, align 8
  br label %2013

; <label>:2013                                    ; preds = %2075, %2001
  %2014 = load %union.rec*, %union.rec** %link, align 8
  %2015 = load %union.rec*, %union.rec** %large_comp, align 8
  %2016 = icmp ne %union.rec* %2014, %2015
  br i1 %2016, label %2017, label %2082

; <label>:2017                                    ; preds = %2013
  %2018 = load %union.rec*, %union.rec** %link, align 8
  %2019 = bitcast %union.rec* %2018 to %struct.word_type*
  %2020 = getelementptr inbounds %struct.word_type, %struct.word_type* %2019, i32 0, i32 0
  %2021 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2020, i32 0, i64 1
  %2022 = getelementptr inbounds %struct.LIST, %struct.LIST* %2021, i32 0, i32 0
  %2023 = load %union.rec*, %union.rec** %2022, align 8
  store %union.rec* %2023, %union.rec** %nxt, align 8
  br label %2024

; <label>:2024                                    ; preds = %2034, %2017
  %2025 = load %union.rec*, %union.rec** %nxt, align 8
  %2026 = bitcast %union.rec* %2025 to %struct.word_type*
  %2027 = getelementptr inbounds %struct.word_type, %struct.word_type* %2026, i32 0, i32 1
  %2028 = bitcast %union.FIRST_UNION* %2027 to %struct.anon*
  %2029 = getelementptr inbounds %struct.anon, %struct.anon* %2028, i32 0, i32 0
  %2030 = load i8, i8* %2029, align 1
  %2031 = zext i8 %2030 to i32
  %2032 = icmp eq i32 %2031, 0
  br i1 %2032, label %2033, label %2041

; <label>:2033                                    ; preds = %2024
  br label %2034

; <label>:2034                                    ; preds = %2033
  %2035 = load %union.rec*, %union.rec** %nxt, align 8
  %2036 = bitcast %union.rec* %2035 to %struct.word_type*
  %2037 = getelementptr inbounds %struct.word_type, %struct.word_type* %2036, i32 0, i32 0
  %2038 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2037, i32 0, i64 1
  %2039 = getelementptr inbounds %struct.LIST, %struct.LIST* %2038, i32 0, i32 0
  %2040 = load %union.rec*, %union.rec** %2039, align 8
  store %union.rec* %2040, %union.rec** %nxt, align 8
  br label %2024

; <label>:2041                                    ; preds = %2024
  %2042 = load %union.rec*, %union.rec** %nxt, align 8
  %2043 = bitcast %union.rec* %2042 to %struct.word_type*
  %2044 = getelementptr inbounds %struct.word_type, %struct.word_type* %2043, i32 0, i32 1
  %2045 = bitcast %union.FIRST_UNION* %2044 to %struct.anon*
  %2046 = getelementptr inbounds %struct.anon, %struct.anon* %2045, i32 0, i32 0
  %2047 = load i8, i8* %2046, align 1
  %2048 = zext i8 %2047 to i32
  %2049 = icmp eq i32 %2048, 1
  br i1 %2049, label %2050, label %2051

; <label>:2050                                    ; preds = %2041
  br label %2075

; <label>:2051                                    ; preds = %2041
  %2052 = load %union.rec*, %union.rec** %nxt, align 8
  %2053 = bitcast %union.rec* %2052 to %struct.word_type*
  %2054 = getelementptr inbounds %struct.word_type, %struct.word_type* %2053, i32 0, i32 1
  %2055 = bitcast %union.FIRST_UNION* %2054 to %struct.anon*
  %2056 = getelementptr inbounds %struct.anon, %struct.anon* %2055, i32 0, i32 0
  %2057 = load i8, i8* %2056, align 1
  %2058 = zext i8 %2057 to i32
  %2059 = icmp sge i32 %2058, 9
  br i1 %2059, label %2060, label %2074

; <label>:2060                                    ; preds = %2051
  %2061 = load %union.rec*, %union.rec** %nxt, align 8
  %2062 = bitcast %union.rec* %2061 to %struct.word_type*
  %2063 = getelementptr inbounds %struct.word_type, %struct.word_type* %2062, i32 0, i32 1
  %2064 = bitcast %union.FIRST_UNION* %2063 to %struct.anon*
  %2065 = getelementptr inbounds %struct.anon, %struct.anon* %2064, i32 0, i32 0
  %2066 = load i8, i8* %2065, align 1
  %2067 = zext i8 %2066 to i32
  %2068 = icmp sle i32 %2067, 99
  br i1 %2068, label %2069, label %2074

; <label>:2069                                    ; preds = %2060
  %2070 = load %union.rec*, %union.rec** %nxt, align 8
  %2071 = load %union.rec*, %union.rec** %2, align 8
  %2072 = load %union.rec*, %union.rec** %large_comp, align 8
  %2073 = call %union.rec* @EncloseInHcat(%union.rec* %2070, %union.rec* %2071, %union.rec* %2072)
  store %union.rec* %2073, %union.rec** %nxt, align 8
  br label %2074

; <label>:2074                                    ; preds = %2069, %2060, %2051
  br label %2075

; <label>:2075                                    ; preds = %2074, %2050
  %2076 = load %union.rec*, %union.rec** %link, align 8
  %2077 = bitcast %union.rec* %2076 to %struct.word_type*
  %2078 = getelementptr inbounds %struct.word_type, %struct.word_type* %2077, i32 0, i32 0
  %2079 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2078, i32 0, i64 0
  %2080 = getelementptr inbounds %struct.LIST, %struct.LIST* %2079, i32 0, i32 1
  %2081 = load %union.rec*, %union.rec** %2080, align 8
  store %union.rec* %2081, %union.rec** %link, align 8
  br label %2013

; <label>:2082                                    ; preds = %2013
  %2083 = load %union.rec*, %union.rec** %g, align 8
  %2084 = bitcast %union.rec* %2083 to %struct.word_type*
  %2085 = getelementptr inbounds %struct.word_type, %struct.word_type* %2084, i32 0, i32 0
  %2086 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2085, i32 0, i64 1
  %2087 = getelementptr inbounds %struct.LIST, %struct.LIST* %2086, i32 0, i32 1
  %2088 = load %union.rec*, %union.rec** %2087, align 8
  store %union.rec* %2088, %union.rec** %xxstart6, align 8
  %2089 = load %union.rec*, %union.rec** %large_comp, align 8
  store %union.rec* %2089, %union.rec** %xxstop7, align 8
  %2090 = load %union.rec*, %union.rec** %2, align 8
  %2091 = bitcast %union.rec* %2090 to %struct.word_type*
  %2092 = getelementptr inbounds %struct.word_type, %struct.word_type* %2091, i32 0, i32 0
  %2093 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2092, i32 0, i64 1
  %2094 = getelementptr inbounds %struct.LIST, %struct.LIST* %2093, i32 0, i32 1
  %2095 = load %union.rec*, %union.rec** %2094, align 8
  %2096 = bitcast %union.rec* %2095 to %struct.word_type*
  %2097 = getelementptr inbounds %struct.word_type, %struct.word_type* %2096, i32 0, i32 0
  %2098 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2097, i32 0, i64 0
  %2099 = getelementptr inbounds %struct.LIST, %struct.LIST* %2098, i32 0, i32 1
  %2100 = load %union.rec*, %union.rec** %2099, align 8
  store %union.rec* %2100, %union.rec** %xxdest8, align 8
  %2101 = load %union.rec*, %union.rec** %xxstart6, align 8
  %2102 = load %union.rec*, %union.rec** %xxstop7, align 8
  %2103 = icmp ne %union.rec* %2101, %2102
  br i1 %2103, label %2104, label %2229

; <label>:2104                                    ; preds = %2082
  %2105 = load %union.rec*, %union.rec** %xxstart6, align 8
  %2106 = bitcast %union.rec* %2105 to %struct.word_type*
  %2107 = getelementptr inbounds %struct.word_type, %struct.word_type* %2106, i32 0, i32 1
  %2108 = bitcast %union.FIRST_UNION* %2107 to %struct.anon*
  %2109 = getelementptr inbounds %struct.anon, %struct.anon* %2108, i32 0, i32 0
  %2110 = load i8, i8* %2109, align 1
  %2111 = zext i8 %2110 to i32
  %2112 = icmp eq i32 %2111, 0
  br i1 %2112, label %2116, label %2113

; <label>:2113                                    ; preds = %2104
  %2114 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2115 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2114, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %2116

; <label>:2116                                    ; preds = %2113, %2104
  %2117 = load %union.rec*, %union.rec** %xxstart6, align 8
  store %union.rec* %2117, %union.rec** @zz_res, align 8
  %2118 = load %union.rec*, %union.rec** %xxstop7, align 8
  store %union.rec* %2118, %union.rec** @zz_hold, align 8
  %2119 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2120 = icmp eq %union.rec* %2119, null
  br i1 %2120, label %2121, label %2123

; <label>:2121                                    ; preds = %2116
  %2122 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2171

; <label>:2123                                    ; preds = %2116
  %2124 = load %union.rec*, %union.rec** @zz_res, align 8
  %2125 = icmp eq %union.rec* %2124, null
  br i1 %2125, label %2126, label %2128

; <label>:2126                                    ; preds = %2123
  %2127 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2169

; <label>:2128                                    ; preds = %2123
  %2129 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2130 = bitcast %union.rec* %2129 to %struct.word_type*
  %2131 = getelementptr inbounds %struct.word_type, %struct.word_type* %2130, i32 0, i32 0
  %2132 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2131, i32 0, i64 0
  %2133 = getelementptr inbounds %struct.LIST, %struct.LIST* %2132, i32 0, i32 0
  %2134 = load %union.rec*, %union.rec** %2133, align 8
  store %union.rec* %2134, %union.rec** @zz_tmp, align 8
  %2135 = load %union.rec*, %union.rec** @zz_res, align 8
  %2136 = bitcast %union.rec* %2135 to %struct.word_type*
  %2137 = getelementptr inbounds %struct.word_type, %struct.word_type* %2136, i32 0, i32 0
  %2138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2137, i32 0, i64 0
  %2139 = getelementptr inbounds %struct.LIST, %struct.LIST* %2138, i32 0, i32 0
  %2140 = load %union.rec*, %union.rec** %2139, align 8
  %2141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2142 = bitcast %union.rec* %2141 to %struct.word_type*
  %2143 = getelementptr inbounds %struct.word_type, %struct.word_type* %2142, i32 0, i32 0
  %2144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2143, i32 0, i64 0
  %2145 = getelementptr inbounds %struct.LIST, %struct.LIST* %2144, i32 0, i32 0
  store %union.rec* %2140, %union.rec** %2145, align 8
  %2146 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2147 = load %union.rec*, %union.rec** @zz_res, align 8
  %2148 = bitcast %union.rec* %2147 to %struct.word_type*
  %2149 = getelementptr inbounds %struct.word_type, %struct.word_type* %2148, i32 0, i32 0
  %2150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2149, i32 0, i64 0
  %2151 = getelementptr inbounds %struct.LIST, %struct.LIST* %2150, i32 0, i32 0
  %2152 = load %union.rec*, %union.rec** %2151, align 8
  %2153 = bitcast %union.rec* %2152 to %struct.word_type*
  %2154 = getelementptr inbounds %struct.word_type, %struct.word_type* %2153, i32 0, i32 0
  %2155 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2154, i32 0, i64 0
  %2156 = getelementptr inbounds %struct.LIST, %struct.LIST* %2155, i32 0, i32 1
  store %union.rec* %2146, %union.rec** %2156, align 8
  %2157 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2158 = load %union.rec*, %union.rec** @zz_res, align 8
  %2159 = bitcast %union.rec* %2158 to %struct.word_type*
  %2160 = getelementptr inbounds %struct.word_type, %struct.word_type* %2159, i32 0, i32 0
  %2161 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2160, i32 0, i64 0
  %2162 = getelementptr inbounds %struct.LIST, %struct.LIST* %2161, i32 0, i32 0
  store %union.rec* %2157, %union.rec** %2162, align 8
  %2163 = load %union.rec*, %union.rec** @zz_res, align 8
  %2164 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2165 = bitcast %union.rec* %2164 to %struct.word_type*
  %2166 = getelementptr inbounds %struct.word_type, %struct.word_type* %2165, i32 0, i32 0
  %2167 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2166, i32 0, i64 0
  %2168 = getelementptr inbounds %struct.LIST, %struct.LIST* %2167, i32 0, i32 1
  store %union.rec* %2163, %union.rec** %2168, align 8
  br label %2169

; <label>:2169                                    ; preds = %2128, %2126
  %2170 = phi %union.rec* [ %2127, %2126 ], [ %2163, %2128 ]
  br label %2171

; <label>:2171                                    ; preds = %2169, %2121
  %2172 = phi %union.rec* [ %2122, %2121 ], [ %2170, %2169 ]
  %2173 = load %union.rec*, %union.rec** %xxstart6, align 8
  store %union.rec* %2173, %union.rec** @zz_res, align 8
  %2174 = load %union.rec*, %union.rec** %xxdest8, align 8
  store %union.rec* %2174, %union.rec** @zz_hold, align 8
  %2175 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2176 = icmp eq %union.rec* %2175, null
  br i1 %2176, label %2177, label %2179

; <label>:2177                                    ; preds = %2171
  %2178 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2227

; <label>:2179                                    ; preds = %2171
  %2180 = load %union.rec*, %union.rec** @zz_res, align 8
  %2181 = icmp eq %union.rec* %2180, null
  br i1 %2181, label %2182, label %2184

; <label>:2182                                    ; preds = %2179
  %2183 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2225

; <label>:2184                                    ; preds = %2179
  %2185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2186 = bitcast %union.rec* %2185 to %struct.word_type*
  %2187 = getelementptr inbounds %struct.word_type, %struct.word_type* %2186, i32 0, i32 0
  %2188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2187, i32 0, i64 0
  %2189 = getelementptr inbounds %struct.LIST, %struct.LIST* %2188, i32 0, i32 0
  %2190 = load %union.rec*, %union.rec** %2189, align 8
  store %union.rec* %2190, %union.rec** @zz_tmp, align 8
  %2191 = load %union.rec*, %union.rec** @zz_res, align 8
  %2192 = bitcast %union.rec* %2191 to %struct.word_type*
  %2193 = getelementptr inbounds %struct.word_type, %struct.word_type* %2192, i32 0, i32 0
  %2194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2193, i32 0, i64 0
  %2195 = getelementptr inbounds %struct.LIST, %struct.LIST* %2194, i32 0, i32 0
  %2196 = load %union.rec*, %union.rec** %2195, align 8
  %2197 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2198 = bitcast %union.rec* %2197 to %struct.word_type*
  %2199 = getelementptr inbounds %struct.word_type, %struct.word_type* %2198, i32 0, i32 0
  %2200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2199, i32 0, i64 0
  %2201 = getelementptr inbounds %struct.LIST, %struct.LIST* %2200, i32 0, i32 0
  store %union.rec* %2196, %union.rec** %2201, align 8
  %2202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2203 = load %union.rec*, %union.rec** @zz_res, align 8
  %2204 = bitcast %union.rec* %2203 to %struct.word_type*
  %2205 = getelementptr inbounds %struct.word_type, %struct.word_type* %2204, i32 0, i32 0
  %2206 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2205, i32 0, i64 0
  %2207 = getelementptr inbounds %struct.LIST, %struct.LIST* %2206, i32 0, i32 0
  %2208 = load %union.rec*, %union.rec** %2207, align 8
  %2209 = bitcast %union.rec* %2208 to %struct.word_type*
  %2210 = getelementptr inbounds %struct.word_type, %struct.word_type* %2209, i32 0, i32 0
  %2211 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2210, i32 0, i64 0
  %2212 = getelementptr inbounds %struct.LIST, %struct.LIST* %2211, i32 0, i32 1
  store %union.rec* %2202, %union.rec** %2212, align 8
  %2213 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2214 = load %union.rec*, %union.rec** @zz_res, align 8
  %2215 = bitcast %union.rec* %2214 to %struct.word_type*
  %2216 = getelementptr inbounds %struct.word_type, %struct.word_type* %2215, i32 0, i32 0
  %2217 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2216, i32 0, i64 0
  %2218 = getelementptr inbounds %struct.LIST, %struct.LIST* %2217, i32 0, i32 0
  store %union.rec* %2213, %union.rec** %2218, align 8
  %2219 = load %union.rec*, %union.rec** @zz_res, align 8
  %2220 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2221 = bitcast %union.rec* %2220 to %struct.word_type*
  %2222 = getelementptr inbounds %struct.word_type, %struct.word_type* %2221, i32 0, i32 0
  %2223 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2222, i32 0, i64 0
  %2224 = getelementptr inbounds %struct.LIST, %struct.LIST* %2223, i32 0, i32 1
  store %union.rec* %2219, %union.rec** %2224, align 8
  br label %2225

; <label>:2225                                    ; preds = %2184, %2182
  %2226 = phi %union.rec* [ %2183, %2182 ], [ %2219, %2184 ]
  br label %2227

; <label>:2227                                    ; preds = %2225, %2177
  %2228 = phi %union.rec* [ %2178, %2177 ], [ %2226, %2225 ]
  br label %2229

; <label>:2229                                    ; preds = %2227, %2082
  %2230 = load %union.rec*, %union.rec** %prev, align 8
  %2231 = bitcast %union.rec* %2230 to %struct.word_type*
  %2232 = getelementptr inbounds %struct.word_type, %struct.word_type* %2231, i32 0, i32 3
  %2233 = bitcast %union.THIRD_UNION* %2232 to %struct.anon.6*
  %2234 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2233, i32 0, i32 1
  %2235 = getelementptr inbounds [2 x i32], [2 x i32]* %2234, i32 0, i64 1
  %2236 = load i32, i32* %2235, align 4
  %2237 = load %union.rec*, %union.rec** %large_comp_split, align 8
  %2238 = bitcast %union.rec* %2237 to %struct.word_type*
  %2239 = getelementptr inbounds %struct.word_type, %struct.word_type* %2238, i32 0, i32 3
  %2240 = bitcast %union.THIRD_UNION* %2239 to %struct.anon.6*
  %2241 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2240, i32 0, i32 1
  %2242 = getelementptr inbounds [2 x i32], [2 x i32]* %2241, i32 0, i64 1
  store i32 %2236, i32* %2242, align 4
  %2243 = load %union.rec*, %union.rec** %large_comp, align 8
  %2244 = bitcast %union.rec* %2243 to %struct.word_type*
  %2245 = getelementptr inbounds %struct.word_type, %struct.word_type* %2244, i32 0, i32 3
  %2246 = bitcast %union.THIRD_UNION* %2245 to %struct.anon.6*
  %2247 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2246, i32 0, i32 1
  %2248 = getelementptr inbounds [2 x i32], [2 x i32]* %2247, i32 0, i64 1
  store i32 %2236, i32* %2248, align 4
  %2249 = load %union.rec*, %union.rec** %row_thread, align 8
  %2250 = bitcast %union.rec* %2249 to %struct.word_type*
  %2251 = getelementptr inbounds %struct.word_type, %struct.word_type* %2250, i32 0, i32 3
  %2252 = bitcast %union.THIRD_UNION* %2251 to %struct.anon.6*
  %2253 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2252, i32 0, i32 1
  %2254 = getelementptr inbounds [2 x i32], [2 x i32]* %2253, i32 0, i64 1
  store i32 %2236, i32* %2254, align 4
  %2255 = load %union.rec*, %union.rec** %2, align 8
  %2256 = bitcast %union.rec* %2255 to %struct.word_type*
  %2257 = getelementptr inbounds %struct.word_type, %struct.word_type* %2256, i32 0, i32 3
  %2258 = bitcast %union.THIRD_UNION* %2257 to %struct.anon.6*
  %2259 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2258, i32 0, i32 1
  %2260 = getelementptr inbounds [2 x i32], [2 x i32]* %2259, i32 0, i64 1
  store i32 %2236, i32* %2260, align 4
  %2261 = load %union.rec*, %union.rec** %2, align 8
  %2262 = bitcast %union.rec* %2261 to %struct.word_type*
  %2263 = getelementptr inbounds %struct.word_type, %struct.word_type* %2262, i32 0, i32 0
  %2264 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2263, i32 0, i64 1
  %2265 = getelementptr inbounds %struct.LIST, %struct.LIST* %2264, i32 0, i32 1
  %2266 = load %union.rec*, %union.rec** %2265, align 8
  %2267 = bitcast %union.rec* %2266 to %struct.word_type*
  %2268 = getelementptr inbounds %struct.word_type, %struct.word_type* %2267, i32 0, i32 0
  %2269 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2268, i32 0, i64 0
  %2270 = getelementptr inbounds %struct.LIST, %struct.LIST* %2269, i32 0, i32 0
  %2271 = load %union.rec*, %union.rec** %2270, align 8
  store %union.rec* %2271, %union.rec** %link, align 8
  br label %2272

; <label>:2272                                    ; preds = %2325, %2229
  %2273 = load %union.rec*, %union.rec** %link, align 8
  %2274 = bitcast %union.rec* %2273 to %struct.word_type*
  %2275 = getelementptr inbounds %struct.word_type, %struct.word_type* %2274, i32 0, i32 1
  %2276 = bitcast %union.FIRST_UNION* %2275 to %struct.anon*
  %2277 = getelementptr inbounds %struct.anon, %struct.anon* %2276, i32 0, i32 0
  %2278 = load i8, i8* %2277, align 1
  %2279 = zext i8 %2278 to i32
  %2280 = icmp eq i32 %2279, 0
  br i1 %2280, label %2281, label %2332

; <label>:2281                                    ; preds = %2272
  %2282 = load %union.rec*, %union.rec** %link, align 8
  %2283 = bitcast %union.rec* %2282 to %struct.word_type*
  %2284 = getelementptr inbounds %struct.word_type, %struct.word_type* %2283, i32 0, i32 0
  %2285 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2284, i32 0, i64 1
  %2286 = getelementptr inbounds %struct.LIST, %struct.LIST* %2285, i32 0, i32 0
  %2287 = load %union.rec*, %union.rec** %2286, align 8
  store %union.rec* %2287, %union.rec** %index, align 8
  br label %2288

; <label>:2288                                    ; preds = %2298, %2281
  %2289 = load %union.rec*, %union.rec** %index, align 8
  %2290 = bitcast %union.rec* %2289 to %struct.word_type*
  %2291 = getelementptr inbounds %struct.word_type, %struct.word_type* %2290, i32 0, i32 1
  %2292 = bitcast %union.FIRST_UNION* %2291 to %struct.anon*
  %2293 = getelementptr inbounds %struct.anon, %struct.anon* %2292, i32 0, i32 0
  %2294 = load i8, i8* %2293, align 1
  %2295 = zext i8 %2294 to i32
  %2296 = icmp eq i32 %2295, 0
  br i1 %2296, label %2297, label %2305

; <label>:2297                                    ; preds = %2288
  br label %2298

; <label>:2298                                    ; preds = %2297
  %2299 = load %union.rec*, %union.rec** %index, align 8
  %2300 = bitcast %union.rec* %2299 to %struct.word_type*
  %2301 = getelementptr inbounds %struct.word_type, %struct.word_type* %2300, i32 0, i32 0
  %2302 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2301, i32 0, i64 1
  %2303 = getelementptr inbounds %struct.LIST, %struct.LIST* %2302, i32 0, i32 0
  %2304 = load %union.rec*, %union.rec** %2303, align 8
  store %union.rec* %2304, %union.rec** %index, align 8
  br label %2288

; <label>:2305                                    ; preds = %2288
  %2306 = load %union.rec*, %union.rec** %index, align 8
  %2307 = bitcast %union.rec* %2306 to %struct.word_type*
  %2308 = getelementptr inbounds %struct.word_type, %struct.word_type* %2307, i32 0, i32 1
  %2309 = bitcast %union.FIRST_UNION* %2308 to %struct.anon*
  %2310 = getelementptr inbounds %struct.anon, %struct.anon* %2309, i32 0, i32 0
  %2311 = load i8, i8* %2310, align 1
  %2312 = zext i8 %2311 to i32
  %2313 = icmp sge i32 %2312, 119
  br i1 %2313, label %2314, label %2323

; <label>:2314                                    ; preds = %2305
  %2315 = load %union.rec*, %union.rec** %index, align 8
  %2316 = bitcast %union.rec* %2315 to %struct.word_type*
  %2317 = getelementptr inbounds %struct.word_type, %struct.word_type* %2316, i32 0, i32 1
  %2318 = bitcast %union.FIRST_UNION* %2317 to %struct.anon*
  %2319 = getelementptr inbounds %struct.anon, %struct.anon* %2318, i32 0, i32 0
  %2320 = load i8, i8* %2319, align 1
  %2321 = zext i8 %2320 to i32
  %2322 = icmp sle i32 %2321, 138
  br i1 %2322, label %2324, label %2323

; <label>:2323                                    ; preds = %2314, %2305
  br label %2332

; <label>:2324                                    ; preds = %2314
  br label %2325

; <label>:2325                                    ; preds = %2324
  %2326 = load %union.rec*, %union.rec** %link, align 8
  %2327 = bitcast %union.rec* %2326 to %struct.word_type*
  %2328 = getelementptr inbounds %struct.word_type, %struct.word_type* %2327, i32 0, i32 0
  %2329 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2328, i32 0, i64 0
  %2330 = getelementptr inbounds %struct.LIST, %struct.LIST* %2329, i32 0, i32 0
  %2331 = load %union.rec*, %union.rec** %2330, align 8
  store %union.rec* %2331, %union.rec** %link, align 8
  br label %2272

; <label>:2332                                    ; preds = %2323, %2272
  br label %2333

; <label>:2333                                    ; preds = %2547, %2332
  %2334 = load %union.rec*, %union.rec** %link, align 8
  %2335 = bitcast %union.rec* %2334 to %struct.word_type*
  %2336 = getelementptr inbounds %struct.word_type, %struct.word_type* %2335, i32 0, i32 0
  %2337 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2336, i32 0, i64 0
  %2338 = getelementptr inbounds %struct.LIST, %struct.LIST* %2337, i32 0, i32 1
  %2339 = load %union.rec*, %union.rec** %2338, align 8
  %2340 = load %union.rec*, %union.rec** %2, align 8
  %2341 = bitcast %union.rec* %2340 to %struct.word_type*
  %2342 = getelementptr inbounds %struct.word_type, %struct.word_type* %2341, i32 0, i32 0
  %2343 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2342, i32 0, i64 1
  %2344 = getelementptr inbounds %struct.LIST, %struct.LIST* %2343, i32 0, i32 1
  %2345 = load %union.rec*, %union.rec** %2344, align 8
  %2346 = icmp ne %union.rec* %2339, %2345
  br i1 %2346, label %2347, label %2548

; <label>:2347                                    ; preds = %2333
  %2348 = load %union.rec*, %union.rec** %link, align 8
  %2349 = bitcast %union.rec* %2348 to %struct.word_type*
  %2350 = getelementptr inbounds %struct.word_type, %struct.word_type* %2349, i32 0, i32 0
  %2351 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2350, i32 0, i64 0
  %2352 = getelementptr inbounds %struct.LIST, %struct.LIST* %2351, i32 0, i32 1
  %2353 = load %union.rec*, %union.rec** %2352, align 8
  %2354 = bitcast %union.rec* %2353 to %struct.word_type*
  %2355 = getelementptr inbounds %struct.word_type, %struct.word_type* %2354, i32 0, i32 0
  %2356 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2355, i32 0, i64 1
  %2357 = getelementptr inbounds %struct.LIST, %struct.LIST* %2356, i32 0, i32 0
  %2358 = load %union.rec*, %union.rec** %2357, align 8
  store %union.rec* %2358, %union.rec** %index, align 8
  br label %2359

; <label>:2359                                    ; preds = %2369, %2347
  %2360 = load %union.rec*, %union.rec** %index, align 8
  %2361 = bitcast %union.rec* %2360 to %struct.word_type*
  %2362 = getelementptr inbounds %struct.word_type, %struct.word_type* %2361, i32 0, i32 1
  %2363 = bitcast %union.FIRST_UNION* %2362 to %struct.anon*
  %2364 = getelementptr inbounds %struct.anon, %struct.anon* %2363, i32 0, i32 0
  %2365 = load i8, i8* %2364, align 1
  %2366 = zext i8 %2365 to i32
  %2367 = icmp eq i32 %2366, 0
  br i1 %2367, label %2368, label %2376

; <label>:2368                                    ; preds = %2359
  br label %2369

; <label>:2369                                    ; preds = %2368
  %2370 = load %union.rec*, %union.rec** %index, align 8
  %2371 = bitcast %union.rec* %2370 to %struct.word_type*
  %2372 = getelementptr inbounds %struct.word_type, %struct.word_type* %2371, i32 0, i32 0
  %2373 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2372, i32 0, i64 1
  %2374 = getelementptr inbounds %struct.LIST, %struct.LIST* %2373, i32 0, i32 0
  %2375 = load %union.rec*, %union.rec** %2374, align 8
  store %union.rec* %2375, %union.rec** %index, align 8
  br label %2359

; <label>:2376                                    ; preds = %2359
  %2377 = load %union.rec*, %union.rec** %index, align 8
  %2378 = bitcast %union.rec* %2377 to %struct.word_type*
  %2379 = getelementptr inbounds %struct.word_type, %struct.word_type* %2378, i32 0, i32 1
  %2380 = bitcast %union.FIRST_UNION* %2379 to %struct.anon*
  %2381 = getelementptr inbounds %struct.anon, %struct.anon* %2380, i32 0, i32 0
  %2382 = load i8, i8* %2381, align 1
  %2383 = zext i8 %2382 to i32
  %2384 = icmp sge i32 %2383, 119
  br i1 %2384, label %2385, label %2394

; <label>:2385                                    ; preds = %2376
  %2386 = load %union.rec*, %union.rec** %index, align 8
  %2387 = bitcast %union.rec* %2386 to %struct.word_type*
  %2388 = getelementptr inbounds %struct.word_type, %struct.word_type* %2387, i32 0, i32 1
  %2389 = bitcast %union.FIRST_UNION* %2388 to %struct.anon*
  %2390 = getelementptr inbounds %struct.anon, %struct.anon* %2389, i32 0, i32 0
  %2391 = load i8, i8* %2390, align 1
  %2392 = zext i8 %2391 to i32
  %2393 = icmp sle i32 %2392, 138
  br i1 %2393, label %2397, label %2394

; <label>:2394                                    ; preds = %2385, %2376
  %2395 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2396 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2395, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0))
  br label %2397

; <label>:2397                                    ; preds = %2394, %2385
  %2398 = load %union.rec*, %union.rec** %index, align 8
  %2399 = call %union.rec* @FindTarget(%union.rec* %2398)
  store %union.rec* %2399, %union.rec** %z, align 8
  %2400 = load %union.rec*, %union.rec** %z, align 8
  %2401 = icmp ne %union.rec* %2400, null
  br i1 %2401, label %2402, label %2540

; <label>:2402                                    ; preds = %2397
  %2403 = load %union.rec*, %union.rec** %z, align 8
  %2404 = call %union.rec* @WhichComponent(%union.rec* %2403)
  store %union.rec* %2404, %union.rec** %z, align 8
  %2405 = load %union.rec*, %union.rec** %z, align 8
  %2406 = icmp ne %union.rec* %2405, null
  br i1 %2406, label %2407, label %2532

; <label>:2407                                    ; preds = %2402
  %2408 = load %union.rec*, %union.rec** %z, align 8
  %2409 = load %union.rec*, %union.rec** %2, align 8
  %2410 = icmp ne %union.rec* %2408, %2409
  br i1 %2410, label %2411, label %2532

; <label>:2411                                    ; preds = %2407
  %2412 = load %union.rec*, %union.rec** %link, align 8
  %2413 = bitcast %union.rec* %2412 to %struct.word_type*
  %2414 = getelementptr inbounds %struct.word_type, %struct.word_type* %2413, i32 0, i32 0
  %2415 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2414, i32 0, i64 0
  %2416 = getelementptr inbounds %struct.LIST, %struct.LIST* %2415, i32 0, i32 1
  %2417 = load %union.rec*, %union.rec** %2416, align 8
  store %union.rec* %2417, %union.rec** @xx_link, align 8
  %2418 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2418, %union.rec** @zz_hold, align 8
  %2419 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2420 = bitcast %union.rec* %2419 to %struct.word_type*
  %2421 = getelementptr inbounds %struct.word_type, %struct.word_type* %2420, i32 0, i32 0
  %2422 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2421, i32 0, i64 0
  %2423 = getelementptr inbounds %struct.LIST, %struct.LIST* %2422, i32 0, i32 1
  %2424 = load %union.rec*, %union.rec** %2423, align 8
  %2425 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2426 = icmp eq %union.rec* %2424, %2425
  br i1 %2426, label %2427, label %2428

; <label>:2427                                    ; preds = %2411
  br label %2469

; <label>:2428                                    ; preds = %2411
  %2429 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2430 = bitcast %union.rec* %2429 to %struct.word_type*
  %2431 = getelementptr inbounds %struct.word_type, %struct.word_type* %2430, i32 0, i32 0
  %2432 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2431, i32 0, i64 0
  %2433 = getelementptr inbounds %struct.LIST, %struct.LIST* %2432, i32 0, i32 1
  %2434 = load %union.rec*, %union.rec** %2433, align 8
  store %union.rec* %2434, %union.rec** @zz_res, align 8
  %2435 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2436 = bitcast %union.rec* %2435 to %struct.word_type*
  %2437 = getelementptr inbounds %struct.word_type, %struct.word_type* %2436, i32 0, i32 0
  %2438 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2437, i32 0, i64 0
  %2439 = getelementptr inbounds %struct.LIST, %struct.LIST* %2438, i32 0, i32 0
  %2440 = load %union.rec*, %union.rec** %2439, align 8
  %2441 = load %union.rec*, %union.rec** @zz_res, align 8
  %2442 = bitcast %union.rec* %2441 to %struct.word_type*
  %2443 = getelementptr inbounds %struct.word_type, %struct.word_type* %2442, i32 0, i32 0
  %2444 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2443, i32 0, i64 0
  %2445 = getelementptr inbounds %struct.LIST, %struct.LIST* %2444, i32 0, i32 0
  store %union.rec* %2440, %union.rec** %2445, align 8
  %2446 = load %union.rec*, %union.rec** @zz_res, align 8
  %2447 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2448 = bitcast %union.rec* %2447 to %struct.word_type*
  %2449 = getelementptr inbounds %struct.word_type, %struct.word_type* %2448, i32 0, i32 0
  %2450 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2449, i32 0, i64 0
  %2451 = getelementptr inbounds %struct.LIST, %struct.LIST* %2450, i32 0, i32 0
  %2452 = load %union.rec*, %union.rec** %2451, align 8
  %2453 = bitcast %union.rec* %2452 to %struct.word_type*
  %2454 = getelementptr inbounds %struct.word_type, %struct.word_type* %2453, i32 0, i32 0
  %2455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2454, i32 0, i64 0
  %2456 = getelementptr inbounds %struct.LIST, %struct.LIST* %2455, i32 0, i32 1
  store %union.rec* %2446, %union.rec** %2456, align 8
  %2457 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2458 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2459 = bitcast %union.rec* %2458 to %struct.word_type*
  %2460 = getelementptr inbounds %struct.word_type, %struct.word_type* %2459, i32 0, i32 0
  %2461 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2460, i32 0, i64 0
  %2462 = getelementptr inbounds %struct.LIST, %struct.LIST* %2461, i32 0, i32 1
  store %union.rec* %2457, %union.rec** %2462, align 8
  %2463 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2464 = bitcast %union.rec* %2463 to %struct.word_type*
  %2465 = getelementptr inbounds %struct.word_type, %struct.word_type* %2464, i32 0, i32 0
  %2466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2465, i32 0, i64 0
  %2467 = getelementptr inbounds %struct.LIST, %struct.LIST* %2466, i32 0, i32 0
  store %union.rec* %2457, %union.rec** %2467, align 8
  %2468 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2469

; <label>:2469                                    ; preds = %2428, %2427
  %2470 = phi %union.rec* [ null, %2427 ], [ %2468, %2428 ]
  %2471 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2471, %union.rec** @zz_res, align 8
  %2472 = load %union.rec*, %union.rec** %z, align 8
  %2473 = bitcast %union.rec* %2472 to %struct.word_type*
  %2474 = getelementptr inbounds %struct.word_type, %struct.word_type* %2473, i32 0, i32 0
  %2475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2474, i32 0, i64 1
  %2476 = getelementptr inbounds %struct.LIST, %struct.LIST* %2475, i32 0, i32 1
  %2477 = load %union.rec*, %union.rec** %2476, align 8
  store %union.rec* %2477, %union.rec** @zz_hold, align 8
  %2478 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2479 = icmp eq %union.rec* %2478, null
  br i1 %2479, label %2480, label %2482

; <label>:2480                                    ; preds = %2469
  %2481 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2530

; <label>:2482                                    ; preds = %2469
  %2483 = load %union.rec*, %union.rec** @zz_res, align 8
  %2484 = icmp eq %union.rec* %2483, null
  br i1 %2484, label %2485, label %2487

; <label>:2485                                    ; preds = %2482
  %2486 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2528

; <label>:2487                                    ; preds = %2482
  %2488 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2489 = bitcast %union.rec* %2488 to %struct.word_type*
  %2490 = getelementptr inbounds %struct.word_type, %struct.word_type* %2489, i32 0, i32 0
  %2491 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2490, i32 0, i64 0
  %2492 = getelementptr inbounds %struct.LIST, %struct.LIST* %2491, i32 0, i32 0
  %2493 = load %union.rec*, %union.rec** %2492, align 8
  store %union.rec* %2493, %union.rec** @zz_tmp, align 8
  %2494 = load %union.rec*, %union.rec** @zz_res, align 8
  %2495 = bitcast %union.rec* %2494 to %struct.word_type*
  %2496 = getelementptr inbounds %struct.word_type, %struct.word_type* %2495, i32 0, i32 0
  %2497 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2496, i32 0, i64 0
  %2498 = getelementptr inbounds %struct.LIST, %struct.LIST* %2497, i32 0, i32 0
  %2499 = load %union.rec*, %union.rec** %2498, align 8
  %2500 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2501 = bitcast %union.rec* %2500 to %struct.word_type*
  %2502 = getelementptr inbounds %struct.word_type, %struct.word_type* %2501, i32 0, i32 0
  %2503 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2502, i32 0, i64 0
  %2504 = getelementptr inbounds %struct.LIST, %struct.LIST* %2503, i32 0, i32 0
  store %union.rec* %2499, %union.rec** %2504, align 8
  %2505 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2506 = load %union.rec*, %union.rec** @zz_res, align 8
  %2507 = bitcast %union.rec* %2506 to %struct.word_type*
  %2508 = getelementptr inbounds %struct.word_type, %struct.word_type* %2507, i32 0, i32 0
  %2509 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2508, i32 0, i64 0
  %2510 = getelementptr inbounds %struct.LIST, %struct.LIST* %2509, i32 0, i32 0
  %2511 = load %union.rec*, %union.rec** %2510, align 8
  %2512 = bitcast %union.rec* %2511 to %struct.word_type*
  %2513 = getelementptr inbounds %struct.word_type, %struct.word_type* %2512, i32 0, i32 0
  %2514 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2513, i32 0, i64 0
  %2515 = getelementptr inbounds %struct.LIST, %struct.LIST* %2514, i32 0, i32 1
  store %union.rec* %2505, %union.rec** %2515, align 8
  %2516 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2517 = load %union.rec*, %union.rec** @zz_res, align 8
  %2518 = bitcast %union.rec* %2517 to %struct.word_type*
  %2519 = getelementptr inbounds %struct.word_type, %struct.word_type* %2518, i32 0, i32 0
  %2520 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2519, i32 0, i64 0
  %2521 = getelementptr inbounds %struct.LIST, %struct.LIST* %2520, i32 0, i32 0
  store %union.rec* %2516, %union.rec** %2521, align 8
  %2522 = load %union.rec*, %union.rec** @zz_res, align 8
  %2523 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2524 = bitcast %union.rec* %2523 to %struct.word_type*
  %2525 = getelementptr inbounds %struct.word_type, %struct.word_type* %2524, i32 0, i32 0
  %2526 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2525, i32 0, i64 0
  %2527 = getelementptr inbounds %struct.LIST, %struct.LIST* %2526, i32 0, i32 1
  store %union.rec* %2522, %union.rec** %2527, align 8
  br label %2528

; <label>:2528                                    ; preds = %2487, %2485
  %2529 = phi %union.rec* [ %2486, %2485 ], [ %2522, %2487 ]
  br label %2530

; <label>:2530                                    ; preds = %2528, %2480
  %2531 = phi %union.rec* [ %2481, %2480 ], [ %2529, %2528 ]
  br label %2539

; <label>:2532                                    ; preds = %2407, %2402
  %2533 = load %union.rec*, %union.rec** %link, align 8
  %2534 = bitcast %union.rec* %2533 to %struct.word_type*
  %2535 = getelementptr inbounds %struct.word_type, %struct.word_type* %2534, i32 0, i32 0
  %2536 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2535, i32 0, i64 0
  %2537 = getelementptr inbounds %struct.LIST, %struct.LIST* %2536, i32 0, i32 1
  %2538 = load %union.rec*, %union.rec** %2537, align 8
  store %union.rec* %2538, %union.rec** %link, align 8
  br label %2539

; <label>:2539                                    ; preds = %2532, %2530
  br label %2547

; <label>:2540                                    ; preds = %2397
  %2541 = load %union.rec*, %union.rec** %link, align 8
  %2542 = bitcast %union.rec* %2541 to %struct.word_type*
  %2543 = getelementptr inbounds %struct.word_type, %struct.word_type* %2542, i32 0, i32 0
  %2544 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2543, i32 0, i64 0
  %2545 = getelementptr inbounds %struct.LIST, %struct.LIST* %2544, i32 0, i32 1
  %2546 = load %union.rec*, %union.rec** %2545, align 8
  store %union.rec* %2546, %union.rec** %link, align 8
  br label %2547

; <label>:2547                                    ; preds = %2540, %2539
  br label %2333

; <label>:2548                                    ; preds = %2333
  store i32 1, i32* %1
  br label %2549

; <label>:2549                                    ; preds = %2548, %1992, %1928, %1860, %854, %292, %276, %241, %207, %197, %129, %68
  %2550 = load i32, i32* %1
  ret i32 %2550
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare i32 @SplitIsDefinite(%union.rec*) #1

declare i32 @DisposeObject(%union.rec*) #1

declare i32 @MinGap(i32, i32, i32, %struct.GAP*) #1

; Function Attrs: nounwind uwtable
define internal %union.rec* @EncloseInHcat(%union.rec* %nxt, %union.rec* %y, %union.rec* %replace) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %3 = alloca %union.rec*, align 8
  %new_y = alloca %union.rec*, align 8
  %new_row_thread = alloca %union.rec*, align 8
  %s1 = alloca %union.rec*, align 8
  %new_s1 = alloca %union.rec*, align 8
  %s2 = alloca %union.rec*, align 8
  %new_s2 = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %sh = alloca %union.rec*, align 8
  %new_sh = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  store %union.rec* %nxt, %union.rec** %1, align 8
  store %union.rec* %y, %union.rec** %2, align 8
  store %union.rec* %replace, %union.rec** %3, align 8
  %4 = load %union.rec*, %union.rec** %1, align 8
  %5 = bitcast %union.rec* %4 to %struct.word_type*
  %6 = getelementptr inbounds %struct.word_type, %struct.word_type* %5, i32 0, i32 0
  %7 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6, i32 0, i64 1
  %8 = getelementptr inbounds %struct.LIST, %struct.LIST* %7, i32 0, i32 1
  %9 = load %union.rec*, %union.rec** %8, align 8
  %10 = load %union.rec*, %union.rec** %1, align 8
  %11 = icmp ne %union.rec* %9, %10
  br i1 %11, label %15, label %12

; <label>:12                                      ; preds = %0
  %13 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %14 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0))
  br label %15

; <label>:15                                      ; preds = %12, %0
  %16 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 18), align 1
  %17 = zext i8 %16 to i32
  store i32 %17, i32* @zz_size, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp uge i64 %18, 265
  br i1 %19, label %20, label %23

; <label>:20                                      ; preds = %15
  %21 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %22 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %21)
  br label %48

; <label>:23                                      ; preds = %15
  %24 = load i32, i32* @zz_size, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %25
  %27 = load %union.rec*, %union.rec** %26, align 8
  %28 = icmp eq %union.rec* %27, null
  br i1 %28, label %29, label %33

; <label>:29                                      ; preds = %23
  %30 = load i32, i32* @zz_size, align 4
  %31 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %32 = call %union.rec* @GetMemory(i32 %30, %struct.FILE_POS* %31)
  store %union.rec* %32, %union.rec** @zz_hold, align 8
  br label %47

; <label>:33                                      ; preds = %23
  %34 = load i32, i32* @zz_size, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %35
  %37 = load %union.rec*, %union.rec** %36, align 8
  store %union.rec* %37, %union.rec** @zz_hold, align 8
  store %union.rec* %37, %union.rec** @zz_hold, align 8
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %39 = bitcast %union.rec* %38 to %struct.word_type*
  %40 = getelementptr inbounds %struct.word_type, %struct.word_type* %39, i32 0, i32 0
  %41 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %40, i32 0, i64 0
  %42 = getelementptr inbounds %struct.LIST, %struct.LIST* %41, i32 0, i32 0
  %43 = load %union.rec*, %union.rec** %42, align 8
  %44 = load i32, i32* @zz_size, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %45
  store %union.rec* %43, %union.rec** %46, align 8
  br label %47

; <label>:47                                      ; preds = %33, %29
  br label %48

; <label>:48                                      ; preds = %47, %20
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %50 = bitcast %union.rec* %49 to %struct.word_type*
  %51 = getelementptr inbounds %struct.word_type, %struct.word_type* %50, i32 0, i32 1
  %52 = bitcast %union.FIRST_UNION* %51 to %struct.anon*
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %52, i32 0, i32 0
  store i8 18, i8* %53, align 1
  %54 = load %union.rec*, %union.rec** @zz_hold, align 8
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %56 = bitcast %union.rec* %55 to %struct.word_type*
  %57 = getelementptr inbounds %struct.word_type, %struct.word_type* %56, i32 0, i32 0
  %58 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %57, i32 0, i64 1
  %59 = getelementptr inbounds %struct.LIST, %struct.LIST* %58, i32 0, i32 1
  store %union.rec* %54, %union.rec** %59, align 8
  %60 = load %union.rec*, %union.rec** @zz_hold, align 8
  %61 = bitcast %union.rec* %60 to %struct.word_type*
  %62 = getelementptr inbounds %struct.word_type, %struct.word_type* %61, i32 0, i32 0
  %63 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %62, i32 0, i64 1
  %64 = getelementptr inbounds %struct.LIST, %struct.LIST* %63, i32 0, i32 0
  store %union.rec* %54, %union.rec** %64, align 8
  %65 = load %union.rec*, %union.rec** @zz_hold, align 8
  %66 = bitcast %union.rec* %65 to %struct.word_type*
  %67 = getelementptr inbounds %struct.word_type, %struct.word_type* %66, i32 0, i32 0
  %68 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %67, i32 0, i64 0
  %69 = getelementptr inbounds %struct.LIST, %struct.LIST* %68, i32 0, i32 1
  store %union.rec* %54, %union.rec** %69, align 8
  %70 = load %union.rec*, %union.rec** @zz_hold, align 8
  %71 = bitcast %union.rec* %70 to %struct.word_type*
  %72 = getelementptr inbounds %struct.word_type, %struct.word_type* %71, i32 0, i32 0
  %73 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %72, i32 0, i64 0
  %74 = getelementptr inbounds %struct.LIST, %struct.LIST* %73, i32 0, i32 0
  store %union.rec* %54, %union.rec** %74, align 8
  store %union.rec* %54, %union.rec** %new_y, align 8
  %75 = load %union.rec*, %union.rec** %new_y, align 8
  %76 = bitcast %union.rec* %75 to %struct.word_type*
  %77 = getelementptr inbounds %struct.word_type, %struct.word_type* %76, i32 0, i32 2
  %78 = bitcast %union.SECOND_UNION* %77 to %struct.anon.2*
  %79 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %78, i32 0, i32 2
  %80 = load i16, i16* %79, align 2
  %81 = and i16 %80, -2049
  store i16 %81, i16* %79, align 2
  %82 = load %union.rec*, %union.rec** %1, align 8
  %83 = bitcast %union.rec* %82 to %struct.word_type*
  %84 = getelementptr inbounds %struct.word_type, %struct.word_type* %83, i32 0, i32 0
  %85 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %84, i32 0, i64 1
  %86 = getelementptr inbounds %struct.LIST, %struct.LIST* %85, i32 0, i32 1
  %87 = load %union.rec*, %union.rec** %86, align 8
  store %union.rec* %87, %union.rec** @xx_link, align 8
  %88 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %88, %union.rec** @zz_hold, align 8
  %89 = load %union.rec*, %union.rec** @zz_hold, align 8
  %90 = bitcast %union.rec* %89 to %struct.word_type*
  %91 = getelementptr inbounds %struct.word_type, %struct.word_type* %90, i32 0, i32 0
  %92 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %91, i32 0, i64 1
  %93 = getelementptr inbounds %struct.LIST, %struct.LIST* %92, i32 0, i32 1
  %94 = load %union.rec*, %union.rec** %93, align 8
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  %96 = icmp eq %union.rec* %94, %95
  br i1 %96, label %97, label %98

; <label>:97                                      ; preds = %48
  br label %139

; <label>:98                                      ; preds = %48
  %99 = load %union.rec*, %union.rec** @zz_hold, align 8
  %100 = bitcast %union.rec* %99 to %struct.word_type*
  %101 = getelementptr inbounds %struct.word_type, %struct.word_type* %100, i32 0, i32 0
  %102 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %101, i32 0, i64 1
  %103 = getelementptr inbounds %struct.LIST, %struct.LIST* %102, i32 0, i32 1
  %104 = load %union.rec*, %union.rec** %103, align 8
  store %union.rec* %104, %union.rec** @zz_res, align 8
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %106 = bitcast %union.rec* %105 to %struct.word_type*
  %107 = getelementptr inbounds %struct.word_type, %struct.word_type* %106, i32 0, i32 0
  %108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %107, i32 0, i64 1
  %109 = getelementptr inbounds %struct.LIST, %struct.LIST* %108, i32 0, i32 0
  %110 = load %union.rec*, %union.rec** %109, align 8
  %111 = load %union.rec*, %union.rec** @zz_res, align 8
  %112 = bitcast %union.rec* %111 to %struct.word_type*
  %113 = getelementptr inbounds %struct.word_type, %struct.word_type* %112, i32 0, i32 0
  %114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %113, i32 0, i64 1
  %115 = getelementptr inbounds %struct.LIST, %struct.LIST* %114, i32 0, i32 0
  store %union.rec* %110, %union.rec** %115, align 8
  %116 = load %union.rec*, %union.rec** @zz_res, align 8
  %117 = load %union.rec*, %union.rec** @zz_hold, align 8
  %118 = bitcast %union.rec* %117 to %struct.word_type*
  %119 = getelementptr inbounds %struct.word_type, %struct.word_type* %118, i32 0, i32 0
  %120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %119, i32 0, i64 1
  %121 = getelementptr inbounds %struct.LIST, %struct.LIST* %120, i32 0, i32 0
  %122 = load %union.rec*, %union.rec** %121, align 8
  %123 = bitcast %union.rec* %122 to %struct.word_type*
  %124 = getelementptr inbounds %struct.word_type, %struct.word_type* %123, i32 0, i32 0
  %125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %124, i32 0, i64 1
  %126 = getelementptr inbounds %struct.LIST, %struct.LIST* %125, i32 0, i32 1
  store %union.rec* %116, %union.rec** %126, align 8
  %127 = load %union.rec*, %union.rec** @zz_hold, align 8
  %128 = load %union.rec*, %union.rec** @zz_hold, align 8
  %129 = bitcast %union.rec* %128 to %struct.word_type*
  %130 = getelementptr inbounds %struct.word_type, %struct.word_type* %129, i32 0, i32 0
  %131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %130, i32 0, i64 1
  %132 = getelementptr inbounds %struct.LIST, %struct.LIST* %131, i32 0, i32 1
  store %union.rec* %127, %union.rec** %132, align 8
  %133 = load %union.rec*, %union.rec** @zz_hold, align 8
  %134 = bitcast %union.rec* %133 to %struct.word_type*
  %135 = getelementptr inbounds %struct.word_type, %struct.word_type* %134, i32 0, i32 0
  %136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %135, i32 0, i64 1
  %137 = getelementptr inbounds %struct.LIST, %struct.LIST* %136, i32 0, i32 0
  store %union.rec* %127, %union.rec** %137, align 8
  %138 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %139

; <label>:139                                     ; preds = %98, %97
  %140 = phi %union.rec* [ null, %97 ], [ %138, %98 ]
  %141 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %141, %union.rec** @zz_res, align 8
  %142 = load %union.rec*, %union.rec** %new_y, align 8
  store %union.rec* %142, %union.rec** @zz_hold, align 8
  %143 = load %union.rec*, %union.rec** @zz_hold, align 8
  %144 = icmp eq %union.rec* %143, null
  br i1 %144, label %145, label %147

; <label>:145                                     ; preds = %139
  %146 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %195

; <label>:147                                     ; preds = %139
  %148 = load %union.rec*, %union.rec** @zz_res, align 8
  %149 = icmp eq %union.rec* %148, null
  br i1 %149, label %150, label %152

; <label>:150                                     ; preds = %147
  %151 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %193

; <label>:152                                     ; preds = %147
  %153 = load %union.rec*, %union.rec** @zz_hold, align 8
  %154 = bitcast %union.rec* %153 to %struct.word_type*
  %155 = getelementptr inbounds %struct.word_type, %struct.word_type* %154, i32 0, i32 0
  %156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %155, i32 0, i64 1
  %157 = getelementptr inbounds %struct.LIST, %struct.LIST* %156, i32 0, i32 0
  %158 = load %union.rec*, %union.rec** %157, align 8
  store %union.rec* %158, %union.rec** @zz_tmp, align 8
  %159 = load %union.rec*, %union.rec** @zz_res, align 8
  %160 = bitcast %union.rec* %159 to %struct.word_type*
  %161 = getelementptr inbounds %struct.word_type, %struct.word_type* %160, i32 0, i32 0
  %162 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %161, i32 0, i64 1
  %163 = getelementptr inbounds %struct.LIST, %struct.LIST* %162, i32 0, i32 0
  %164 = load %union.rec*, %union.rec** %163, align 8
  %165 = load %union.rec*, %union.rec** @zz_hold, align 8
  %166 = bitcast %union.rec* %165 to %struct.word_type*
  %167 = getelementptr inbounds %struct.word_type, %struct.word_type* %166, i32 0, i32 0
  %168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %167, i32 0, i64 1
  %169 = getelementptr inbounds %struct.LIST, %struct.LIST* %168, i32 0, i32 0
  store %union.rec* %164, %union.rec** %169, align 8
  %170 = load %union.rec*, %union.rec** @zz_hold, align 8
  %171 = load %union.rec*, %union.rec** @zz_res, align 8
  %172 = bitcast %union.rec* %171 to %struct.word_type*
  %173 = getelementptr inbounds %struct.word_type, %struct.word_type* %172, i32 0, i32 0
  %174 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %173, i32 0, i64 1
  %175 = getelementptr inbounds %struct.LIST, %struct.LIST* %174, i32 0, i32 0
  %176 = load %union.rec*, %union.rec** %175, align 8
  %177 = bitcast %union.rec* %176 to %struct.word_type*
  %178 = getelementptr inbounds %struct.word_type, %struct.word_type* %177, i32 0, i32 0
  %179 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %178, i32 0, i64 1
  %180 = getelementptr inbounds %struct.LIST, %struct.LIST* %179, i32 0, i32 1
  store %union.rec* %170, %union.rec** %180, align 8
  %181 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %182 = load %union.rec*, %union.rec** @zz_res, align 8
  %183 = bitcast %union.rec* %182 to %struct.word_type*
  %184 = getelementptr inbounds %struct.word_type, %struct.word_type* %183, i32 0, i32 0
  %185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %184, i32 0, i64 1
  %186 = getelementptr inbounds %struct.LIST, %struct.LIST* %185, i32 0, i32 0
  store %union.rec* %181, %union.rec** %186, align 8
  %187 = load %union.rec*, %union.rec** @zz_res, align 8
  %188 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %189 = bitcast %union.rec* %188 to %struct.word_type*
  %190 = getelementptr inbounds %struct.word_type, %struct.word_type* %189, i32 0, i32 0
  %191 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %190, i32 0, i64 1
  %192 = getelementptr inbounds %struct.LIST, %struct.LIST* %191, i32 0, i32 1
  store %union.rec* %187, %union.rec** %192, align 8
  br label %193

; <label>:193                                     ; preds = %152, %150
  %194 = phi %union.rec* [ %151, %150 ], [ %187, %152 ]
  br label %195

; <label>:195                                     ; preds = %193, %145
  %196 = phi %union.rec* [ %146, %145 ], [ %194, %193 ]
  %197 = load %union.rec*, %union.rec** %1, align 8
  %198 = bitcast %union.rec* %197 to %struct.word_type*
  %199 = getelementptr inbounds %struct.word_type, %struct.word_type* %198, i32 0, i32 0
  %200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %199, i32 0, i64 1
  %201 = getelementptr inbounds %struct.LIST, %struct.LIST* %200, i32 0, i32 1
  %202 = load %union.rec*, %union.rec** %201, align 8
  %203 = load %union.rec*, %union.rec** %1, align 8
  %204 = icmp eq %union.rec* %202, %203
  br i1 %204, label %208, label %205

; <label>:205                                     ; preds = %195
  %206 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %207 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %206, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0))
  br label %208

; <label>:208                                     ; preds = %205, %195
  %209 = load %union.rec*, %union.rec** %2, align 8
  %210 = bitcast %union.rec* %209 to %struct.word_type*
  %211 = getelementptr inbounds %struct.word_type, %struct.word_type* %210, i32 0, i32 1
  %212 = bitcast %union.FIRST_UNION* %211 to %struct.FILE_POS*
  %213 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %212, i32 0, i32 2
  %214 = load i16, i16* %213, align 2
  %215 = load %union.rec*, %union.rec** %new_y, align 8
  %216 = bitcast %union.rec* %215 to %struct.word_type*
  %217 = getelementptr inbounds %struct.word_type, %struct.word_type* %216, i32 0, i32 1
  %218 = bitcast %union.FIRST_UNION* %217 to %struct.FILE_POS*
  %219 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %218, i32 0, i32 2
  store i16 %214, i16* %219, align 2
  %220 = load %union.rec*, %union.rec** %2, align 8
  %221 = bitcast %union.rec* %220 to %struct.word_type*
  %222 = getelementptr inbounds %struct.word_type, %struct.word_type* %221, i32 0, i32 1
  %223 = bitcast %union.FIRST_UNION* %222 to %struct.FILE_POS*
  %224 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = and i32 %225, 1048575
  %227 = load %union.rec*, %union.rec** %new_y, align 8
  %228 = bitcast %union.rec* %227 to %struct.word_type*
  %229 = getelementptr inbounds %struct.word_type, %struct.word_type* %228, i32 0, i32 1
  %230 = bitcast %union.FIRST_UNION* %229 to %struct.FILE_POS*
  %231 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = and i32 %226, 1048575
  %234 = and i32 %232, -1048576
  %235 = or i32 %234, %233
  store i32 %235, i32* %231, align 4
  %236 = load %union.rec*, %union.rec** %2, align 8
  %237 = bitcast %union.rec* %236 to %struct.word_type*
  %238 = getelementptr inbounds %struct.word_type, %struct.word_type* %237, i32 0, i32 1
  %239 = bitcast %union.FIRST_UNION* %238 to %struct.FILE_POS*
  %240 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = lshr i32 %241, 20
  %243 = load %union.rec*, %union.rec** %new_y, align 8
  %244 = bitcast %union.rec* %243 to %struct.word_type*
  %245 = getelementptr inbounds %struct.word_type, %struct.word_type* %244, i32 0, i32 1
  %246 = bitcast %union.FIRST_UNION* %245 to %struct.FILE_POS*
  %247 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = and i32 %242, 4095
  %250 = shl i32 %249, 20
  %251 = and i32 %248, 1048575
  %252 = or i32 %251, %250
  store i32 %252, i32* %247, align 4
  %253 = load %union.rec*, %union.rec** %2, align 8
  %254 = bitcast %union.rec* %253 to %struct.word_type*
  %255 = getelementptr inbounds %struct.word_type, %struct.word_type* %254, i32 0, i32 3
  %256 = bitcast %union.THIRD_UNION* %255 to %struct.anon.6*
  %257 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %256, i32 0, i32 0
  %258 = getelementptr inbounds [2 x i32], [2 x i32]* %257, i32 0, i64 0
  %259 = load i32, i32* %258, align 4
  %260 = load %union.rec*, %union.rec** %new_y, align 8
  %261 = bitcast %union.rec* %260 to %struct.word_type*
  %262 = getelementptr inbounds %struct.word_type, %struct.word_type* %261, i32 0, i32 3
  %263 = bitcast %union.THIRD_UNION* %262 to %struct.anon.6*
  %264 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %263, i32 0, i32 0
  %265 = getelementptr inbounds [2 x i32], [2 x i32]* %264, i32 0, i64 0
  store i32 %259, i32* %265, align 4
  %266 = load %union.rec*, %union.rec** %2, align 8
  %267 = bitcast %union.rec* %266 to %struct.word_type*
  %268 = getelementptr inbounds %struct.word_type, %struct.word_type* %267, i32 0, i32 3
  %269 = bitcast %union.THIRD_UNION* %268 to %struct.anon.6*
  %270 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %269, i32 0, i32 1
  %271 = getelementptr inbounds [2 x i32], [2 x i32]* %270, i32 0, i64 0
  %272 = load i32, i32* %271, align 4
  %273 = load %union.rec*, %union.rec** %new_y, align 8
  %274 = bitcast %union.rec* %273 to %struct.word_type*
  %275 = getelementptr inbounds %struct.word_type, %struct.word_type* %274, i32 0, i32 3
  %276 = bitcast %union.THIRD_UNION* %275 to %struct.anon.6*
  %277 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %276, i32 0, i32 1
  %278 = getelementptr inbounds [2 x i32], [2 x i32]* %277, i32 0, i64 0
  store i32 %272, i32* %278, align 4
  %279 = load %union.rec*, %union.rec** %1, align 8
  %280 = bitcast %union.rec* %279 to %struct.word_type*
  %281 = getelementptr inbounds %struct.word_type, %struct.word_type* %280, i32 0, i32 3
  %282 = bitcast %union.THIRD_UNION* %281 to %struct.anon.6*
  %283 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %282, i32 0, i32 0
  %284 = getelementptr inbounds [2 x i32], [2 x i32]* %283, i32 0, i64 1
  %285 = load i32, i32* %284, align 4
  %286 = load %union.rec*, %union.rec** %new_y, align 8
  %287 = bitcast %union.rec* %286 to %struct.word_type*
  %288 = getelementptr inbounds %struct.word_type, %struct.word_type* %287, i32 0, i32 3
  %289 = bitcast %union.THIRD_UNION* %288 to %struct.anon.6*
  %290 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %289, i32 0, i32 0
  %291 = getelementptr inbounds [2 x i32], [2 x i32]* %290, i32 0, i64 1
  store i32 %285, i32* %291, align 4
  %292 = load %union.rec*, %union.rec** %1, align 8
  %293 = bitcast %union.rec* %292 to %struct.word_type*
  %294 = getelementptr inbounds %struct.word_type, %struct.word_type* %293, i32 0, i32 3
  %295 = bitcast %union.THIRD_UNION* %294 to %struct.anon.6*
  %296 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %295, i32 0, i32 1
  %297 = getelementptr inbounds [2 x i32], [2 x i32]* %296, i32 0, i64 1
  %298 = load i32, i32* %297, align 4
  %299 = load %union.rec*, %union.rec** %new_y, align 8
  %300 = bitcast %union.rec* %299 to %struct.word_type*
  %301 = getelementptr inbounds %struct.word_type, %struct.word_type* %300, i32 0, i32 3
  %302 = bitcast %union.THIRD_UNION* %301 to %struct.anon.6*
  %303 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %302, i32 0, i32 1
  %304 = getelementptr inbounds [2 x i32], [2 x i32]* %303, i32 0, i64 1
  store i32 %298, i32* %304, align 4
  %305 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 15), align 1
  %306 = zext i8 %305 to i32
  store i32 %306, i32* @zz_size, align 4
  %307 = sext i32 %306 to i64
  %308 = icmp uge i64 %307, 265
  br i1 %308, label %309, label %312

; <label>:309                                     ; preds = %208
  %310 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %311 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %310)
  br label %337

; <label>:312                                     ; preds = %208
  %313 = load i32, i32* @zz_size, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %314
  %316 = load %union.rec*, %union.rec** %315, align 8
  %317 = icmp eq %union.rec* %316, null
  br i1 %317, label %318, label %322

; <label>:318                                     ; preds = %312
  %319 = load i32, i32* @zz_size, align 4
  %320 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %321 = call %union.rec* @GetMemory(i32 %319, %struct.FILE_POS* %320)
  store %union.rec* %321, %union.rec** @zz_hold, align 8
  br label %336

; <label>:322                                     ; preds = %312
  %323 = load i32, i32* @zz_size, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %324
  %326 = load %union.rec*, %union.rec** %325, align 8
  store %union.rec* %326, %union.rec** @zz_hold, align 8
  store %union.rec* %326, %union.rec** @zz_hold, align 8
  %327 = load %union.rec*, %union.rec** @zz_hold, align 8
  %328 = bitcast %union.rec* %327 to %struct.word_type*
  %329 = getelementptr inbounds %struct.word_type, %struct.word_type* %328, i32 0, i32 0
  %330 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %329, i32 0, i64 0
  %331 = getelementptr inbounds %struct.LIST, %struct.LIST* %330, i32 0, i32 0
  %332 = load %union.rec*, %union.rec** %331, align 8
  %333 = load i32, i32* @zz_size, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %334
  store %union.rec* %332, %union.rec** %335, align 8
  br label %336

; <label>:336                                     ; preds = %322, %318
  br label %337

; <label>:337                                     ; preds = %336, %309
  %338 = load %union.rec*, %union.rec** @zz_hold, align 8
  %339 = bitcast %union.rec* %338 to %struct.word_type*
  %340 = getelementptr inbounds %struct.word_type, %struct.word_type* %339, i32 0, i32 1
  %341 = bitcast %union.FIRST_UNION* %340 to %struct.anon*
  %342 = getelementptr inbounds %struct.anon, %struct.anon* %341, i32 0, i32 0
  store i8 15, i8* %342, align 1
  %343 = load %union.rec*, %union.rec** @zz_hold, align 8
  %344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %345 = bitcast %union.rec* %344 to %struct.word_type*
  %346 = getelementptr inbounds %struct.word_type, %struct.word_type* %345, i32 0, i32 0
  %347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %346, i32 0, i64 1
  %348 = getelementptr inbounds %struct.LIST, %struct.LIST* %347, i32 0, i32 1
  store %union.rec* %343, %union.rec** %348, align 8
  %349 = load %union.rec*, %union.rec** @zz_hold, align 8
  %350 = bitcast %union.rec* %349 to %struct.word_type*
  %351 = getelementptr inbounds %struct.word_type, %struct.word_type* %350, i32 0, i32 0
  %352 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %351, i32 0, i64 1
  %353 = getelementptr inbounds %struct.LIST, %struct.LIST* %352, i32 0, i32 0
  store %union.rec* %343, %union.rec** %353, align 8
  %354 = load %union.rec*, %union.rec** @zz_hold, align 8
  %355 = bitcast %union.rec* %354 to %struct.word_type*
  %356 = getelementptr inbounds %struct.word_type, %struct.word_type* %355, i32 0, i32 0
  %357 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %356, i32 0, i64 0
  %358 = getelementptr inbounds %struct.LIST, %struct.LIST* %357, i32 0, i32 1
  store %union.rec* %343, %union.rec** %358, align 8
  %359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %360 = bitcast %union.rec* %359 to %struct.word_type*
  %361 = getelementptr inbounds %struct.word_type, %struct.word_type* %360, i32 0, i32 0
  %362 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %361, i32 0, i64 0
  %363 = getelementptr inbounds %struct.LIST, %struct.LIST* %362, i32 0, i32 0
  store %union.rec* %343, %union.rec** %363, align 8
  store %union.rec* %343, %union.rec** %new_row_thread, align 8
  %364 = load %union.rec*, %union.rec** %new_y, align 8
  %365 = bitcast %union.rec* %364 to %struct.word_type*
  %366 = getelementptr inbounds %struct.word_type, %struct.word_type* %365, i32 0, i32 3
  %367 = bitcast %union.THIRD_UNION* %366 to %struct.anon.6*
  %368 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %367, i32 0, i32 0
  %369 = getelementptr inbounds [2 x i32], [2 x i32]* %368, i32 0, i64 1
  %370 = load i32, i32* %369, align 4
  %371 = load %union.rec*, %union.rec** %new_row_thread, align 8
  %372 = bitcast %union.rec* %371 to %struct.word_type*
  %373 = getelementptr inbounds %struct.word_type, %struct.word_type* %372, i32 0, i32 3
  %374 = bitcast %union.THIRD_UNION* %373 to %struct.anon.6*
  %375 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %374, i32 0, i32 0
  %376 = getelementptr inbounds [2 x i32], [2 x i32]* %375, i32 0, i64 1
  store i32 %370, i32* %376, align 4
  %377 = load %union.rec*, %union.rec** %new_y, align 8
  %378 = bitcast %union.rec* %377 to %struct.word_type*
  %379 = getelementptr inbounds %struct.word_type, %struct.word_type* %378, i32 0, i32 3
  %380 = bitcast %union.THIRD_UNION* %379 to %struct.anon.6*
  %381 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %380, i32 0, i32 1
  %382 = getelementptr inbounds [2 x i32], [2 x i32]* %381, i32 0, i64 1
  %383 = load i32, i32* %382, align 4
  %384 = load %union.rec*, %union.rec** %new_row_thread, align 8
  %385 = bitcast %union.rec* %384 to %struct.word_type*
  %386 = getelementptr inbounds %struct.word_type, %struct.word_type* %385, i32 0, i32 3
  %387 = bitcast %union.THIRD_UNION* %386 to %struct.anon.6*
  %388 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %387, i32 0, i32 1
  %389 = getelementptr inbounds [2 x i32], [2 x i32]* %388, i32 0, i64 1
  store i32 %383, i32* %389, align 4
  %390 = load %union.rec*, %union.rec** %new_row_thread, align 8
  %391 = bitcast %union.rec* %390 to %struct.word_type*
  %392 = getelementptr inbounds %struct.word_type, %struct.word_type* %391, i32 0, i32 2
  %393 = bitcast %union.SECOND_UNION* %392 to %struct.anon.2*
  %394 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %393, i32 0, i32 1
  store i8 1, i8* %394, align 1
  %395 = load %union.rec*, %union.rec** %2, align 8
  %396 = bitcast %union.rec* %395 to %struct.word_type*
  %397 = getelementptr inbounds %struct.word_type, %struct.word_type* %396, i32 0, i32 0
  %398 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %397, i32 0, i64 0
  %399 = getelementptr inbounds %struct.LIST, %struct.LIST* %398, i32 0, i32 1
  %400 = load %union.rec*, %union.rec** %399, align 8
  store %union.rec* %400, %union.rec** %link, align 8
  br label %401

; <label>:401                                     ; preds = %2668, %337
  %402 = load %union.rec*, %union.rec** %link, align 8
  %403 = load %union.rec*, %union.rec** %2, align 8
  %404 = icmp ne %union.rec* %402, %403
  br i1 %404, label %405, label %2675

; <label>:405                                     ; preds = %401
  %406 = load %union.rec*, %union.rec** %link, align 8
  %407 = bitcast %union.rec* %406 to %struct.word_type*
  %408 = getelementptr inbounds %struct.word_type, %struct.word_type* %407, i32 0, i32 0
  %409 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %408, i32 0, i64 1
  %410 = getelementptr inbounds %struct.LIST, %struct.LIST* %409, i32 0, i32 0
  %411 = load %union.rec*, %union.rec** %410, align 8
  store %union.rec* %411, %union.rec** %s1, align 8
  br label %412

; <label>:412                                     ; preds = %422, %405
  %413 = load %union.rec*, %union.rec** %s1, align 8
  %414 = bitcast %union.rec* %413 to %struct.word_type*
  %415 = getelementptr inbounds %struct.word_type, %struct.word_type* %414, i32 0, i32 1
  %416 = bitcast %union.FIRST_UNION* %415 to %struct.anon*
  %417 = getelementptr inbounds %struct.anon, %struct.anon* %416, i32 0, i32 0
  %418 = load i8, i8* %417, align 1
  %419 = zext i8 %418 to i32
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %429

; <label>:421                                     ; preds = %412
  br label %422

; <label>:422                                     ; preds = %421
  %423 = load %union.rec*, %union.rec** %s1, align 8
  %424 = bitcast %union.rec* %423 to %struct.word_type*
  %425 = getelementptr inbounds %struct.word_type, %struct.word_type* %424, i32 0, i32 0
  %426 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %425, i32 0, i64 1
  %427 = getelementptr inbounds %struct.LIST, %struct.LIST* %426, i32 0, i32 0
  %428 = load %union.rec*, %union.rec** %427, align 8
  store %union.rec* %428, %union.rec** %s1, align 8
  br label %412

; <label>:429                                     ; preds = %412
  %430 = load %union.rec*, %union.rec** %s1, align 8
  %431 = bitcast %union.rec* %430 to %struct.word_type*
  %432 = getelementptr inbounds %struct.word_type, %struct.word_type* %431, i32 0, i32 1
  %433 = bitcast %union.FIRST_UNION* %432 to %struct.anon*
  %434 = getelementptr inbounds %struct.anon, %struct.anon* %433, i32 0, i32 0
  %435 = load i8, i8* %434, align 1
  %436 = zext i8 %435 to i32
  %437 = icmp eq i32 %436, 1
  br i1 %437, label %438, label %838

; <label>:438                                     ; preds = %429
  %439 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %440 = zext i8 %439 to i32
  store i32 %440, i32* @zz_size, align 4
  %441 = sext i32 %440 to i64
  %442 = icmp uge i64 %441, 265
  br i1 %442, label %443, label %446

; <label>:443                                     ; preds = %438
  %444 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %445 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %444)
  br label %471

; <label>:446                                     ; preds = %438
  %447 = load i32, i32* @zz_size, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %448
  %450 = load %union.rec*, %union.rec** %449, align 8
  %451 = icmp eq %union.rec* %450, null
  br i1 %451, label %452, label %456

; <label>:452                                     ; preds = %446
  %453 = load i32, i32* @zz_size, align 4
  %454 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %455 = call %union.rec* @GetMemory(i32 %453, %struct.FILE_POS* %454)
  store %union.rec* %455, %union.rec** @zz_hold, align 8
  br label %470

; <label>:456                                     ; preds = %446
  %457 = load i32, i32* @zz_size, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %458
  %460 = load %union.rec*, %union.rec** %459, align 8
  store %union.rec* %460, %union.rec** @zz_hold, align 8
  store %union.rec* %460, %union.rec** @zz_hold, align 8
  %461 = load %union.rec*, %union.rec** @zz_hold, align 8
  %462 = bitcast %union.rec* %461 to %struct.word_type*
  %463 = getelementptr inbounds %struct.word_type, %struct.word_type* %462, i32 0, i32 0
  %464 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %463, i32 0, i64 0
  %465 = getelementptr inbounds %struct.LIST, %struct.LIST* %464, i32 0, i32 0
  %466 = load %union.rec*, %union.rec** %465, align 8
  %467 = load i32, i32* @zz_size, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %468
  store %union.rec* %466, %union.rec** %469, align 8
  br label %470

; <label>:470                                     ; preds = %456, %452
  br label %471

; <label>:471                                     ; preds = %470, %443
  %472 = load %union.rec*, %union.rec** @zz_hold, align 8
  %473 = bitcast %union.rec* %472 to %struct.word_type*
  %474 = getelementptr inbounds %struct.word_type, %struct.word_type* %473, i32 0, i32 1
  %475 = bitcast %union.FIRST_UNION* %474 to %struct.anon*
  %476 = getelementptr inbounds %struct.anon, %struct.anon* %475, i32 0, i32 0
  store i8 1, i8* %476, align 1
  %477 = load %union.rec*, %union.rec** @zz_hold, align 8
  %478 = load %union.rec*, %union.rec** @zz_hold, align 8
  %479 = bitcast %union.rec* %478 to %struct.word_type*
  %480 = getelementptr inbounds %struct.word_type, %struct.word_type* %479, i32 0, i32 0
  %481 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %480, i32 0, i64 1
  %482 = getelementptr inbounds %struct.LIST, %struct.LIST* %481, i32 0, i32 1
  store %union.rec* %477, %union.rec** %482, align 8
  %483 = load %union.rec*, %union.rec** @zz_hold, align 8
  %484 = bitcast %union.rec* %483 to %struct.word_type*
  %485 = getelementptr inbounds %struct.word_type, %struct.word_type* %484, i32 0, i32 0
  %486 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %485, i32 0, i64 1
  %487 = getelementptr inbounds %struct.LIST, %struct.LIST* %486, i32 0, i32 0
  store %union.rec* %477, %union.rec** %487, align 8
  %488 = load %union.rec*, %union.rec** @zz_hold, align 8
  %489 = bitcast %union.rec* %488 to %struct.word_type*
  %490 = getelementptr inbounds %struct.word_type, %struct.word_type* %489, i32 0, i32 0
  %491 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %490, i32 0, i64 0
  %492 = getelementptr inbounds %struct.LIST, %struct.LIST* %491, i32 0, i32 1
  store %union.rec* %477, %union.rec** %492, align 8
  %493 = load %union.rec*, %union.rec** @zz_hold, align 8
  %494 = bitcast %union.rec* %493 to %struct.word_type*
  %495 = getelementptr inbounds %struct.word_type, %struct.word_type* %494, i32 0, i32 0
  %496 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %495, i32 0, i64 0
  %497 = getelementptr inbounds %struct.LIST, %struct.LIST* %496, i32 0, i32 0
  store %union.rec* %477, %union.rec** %497, align 8
  store %union.rec* %477, %union.rec** %new_s1, align 8
  %498 = load %union.rec*, %union.rec** %s1, align 8
  %499 = bitcast %union.rec* %498 to %struct.word_type*
  %500 = getelementptr inbounds %struct.word_type, %struct.word_type* %499, i32 0, i32 1
  %501 = bitcast %union.FIRST_UNION* %500 to %struct.FILE_POS*
  %502 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %501, i32 0, i32 2
  %503 = load i16, i16* %502, align 2
  %504 = load %union.rec*, %union.rec** %new_s1, align 8
  %505 = bitcast %union.rec* %504 to %struct.word_type*
  %506 = getelementptr inbounds %struct.word_type, %struct.word_type* %505, i32 0, i32 1
  %507 = bitcast %union.FIRST_UNION* %506 to %struct.FILE_POS*
  %508 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %507, i32 0, i32 2
  store i16 %503, i16* %508, align 2
  %509 = load %union.rec*, %union.rec** %s1, align 8
  %510 = bitcast %union.rec* %509 to %struct.word_type*
  %511 = getelementptr inbounds %struct.word_type, %struct.word_type* %510, i32 0, i32 1
  %512 = bitcast %union.FIRST_UNION* %511 to %struct.FILE_POS*
  %513 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %512, i32 0, i32 3
  %514 = load i32, i32* %513, align 4
  %515 = and i32 %514, 1048575
  %516 = load %union.rec*, %union.rec** %new_s1, align 8
  %517 = bitcast %union.rec* %516 to %struct.word_type*
  %518 = getelementptr inbounds %struct.word_type, %struct.word_type* %517, i32 0, i32 1
  %519 = bitcast %union.FIRST_UNION* %518 to %struct.FILE_POS*
  %520 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %519, i32 0, i32 3
  %521 = load i32, i32* %520, align 4
  %522 = and i32 %515, 1048575
  %523 = and i32 %521, -1048576
  %524 = or i32 %523, %522
  store i32 %524, i32* %520, align 4
  %525 = load %union.rec*, %union.rec** %s1, align 8
  %526 = bitcast %union.rec* %525 to %struct.word_type*
  %527 = getelementptr inbounds %struct.word_type, %struct.word_type* %526, i32 0, i32 1
  %528 = bitcast %union.FIRST_UNION* %527 to %struct.FILE_POS*
  %529 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %528, i32 0, i32 3
  %530 = load i32, i32* %529, align 4
  %531 = lshr i32 %530, 20
  %532 = load %union.rec*, %union.rec** %new_s1, align 8
  %533 = bitcast %union.rec* %532 to %struct.word_type*
  %534 = getelementptr inbounds %struct.word_type, %struct.word_type* %533, i32 0, i32 1
  %535 = bitcast %union.FIRST_UNION* %534 to %struct.FILE_POS*
  %536 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %535, i32 0, i32 3
  %537 = load i32, i32* %536, align 4
  %538 = and i32 %531, 4095
  %539 = shl i32 %538, 20
  %540 = and i32 %537, 1048575
  %541 = or i32 %540, %539
  store i32 %541, i32* %536, align 4
  %542 = load %union.rec*, %union.rec** %s1, align 8
  %543 = bitcast %union.rec* %542 to %struct.gapobj_type*
  %544 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %543, i32 0, i32 3
  %545 = bitcast %struct.GAP* %544 to i16*
  %546 = load i16, i16* %545, align 4
  %547 = lshr i16 %546, 7
  %548 = and i16 %547, 1
  %549 = zext i16 %548 to i32
  %550 = load %union.rec*, %union.rec** %new_s1, align 8
  %551 = bitcast %union.rec* %550 to %struct.gapobj_type*
  %552 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %551, i32 0, i32 3
  %553 = bitcast %struct.GAP* %552 to i16*
  %554 = trunc i32 %549 to i16
  %555 = load i16, i16* %553, align 4
  %556 = and i16 %554, 1
  %557 = shl i16 %556, 7
  %558 = and i16 %555, -129
  %559 = or i16 %558, %557
  store i16 %559, i16* %553, align 4
  %560 = zext i16 %556 to i32
  %561 = load %union.rec*, %union.rec** %s1, align 8
  %562 = bitcast %union.rec* %561 to %struct.gapobj_type*
  %563 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %562, i32 0, i32 3
  %564 = bitcast %struct.GAP* %563 to i16*
  %565 = load i16, i16* %564, align 4
  %566 = lshr i16 %565, 8
  %567 = and i16 %566, 1
  %568 = zext i16 %567 to i32
  %569 = load %union.rec*, %union.rec** %new_s1, align 8
  %570 = bitcast %union.rec* %569 to %struct.gapobj_type*
  %571 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %570, i32 0, i32 3
  %572 = bitcast %struct.GAP* %571 to i16*
  %573 = trunc i32 %568 to i16
  %574 = load i16, i16* %572, align 4
  %575 = and i16 %573, 1
  %576 = shl i16 %575, 8
  %577 = and i16 %574, -257
  %578 = or i16 %577, %576
  store i16 %578, i16* %572, align 4
  %579 = zext i16 %575 to i32
  %580 = load %union.rec*, %union.rec** %s1, align 8
  %581 = bitcast %union.rec* %580 to %struct.gapobj_type*
  %582 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %581, i32 0, i32 3
  %583 = bitcast %struct.GAP* %582 to i16*
  %584 = load i16, i16* %583, align 4
  %585 = lshr i16 %584, 9
  %586 = and i16 %585, 1
  %587 = zext i16 %586 to i32
  %588 = load %union.rec*, %union.rec** %new_s1, align 8
  %589 = bitcast %union.rec* %588 to %struct.gapobj_type*
  %590 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %589, i32 0, i32 3
  %591 = bitcast %struct.GAP* %590 to i16*
  %592 = trunc i32 %587 to i16
  %593 = load i16, i16* %591, align 4
  %594 = and i16 %592, 1
  %595 = shl i16 %594, 9
  %596 = and i16 %593, -513
  %597 = or i16 %596, %595
  store i16 %597, i16* %591, align 4
  %598 = zext i16 %594 to i32
  %599 = load %union.rec*, %union.rec** %s1, align 8
  %600 = bitcast %union.rec* %599 to %struct.gapobj_type*
  %601 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %600, i32 0, i32 3
  %602 = bitcast %struct.GAP* %601 to i16*
  %603 = load i16, i16* %602, align 4
  %604 = lshr i16 %603, 10
  %605 = and i16 %604, 7
  %606 = zext i16 %605 to i32
  %607 = load %union.rec*, %union.rec** %new_s1, align 8
  %608 = bitcast %union.rec* %607 to %struct.gapobj_type*
  %609 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %608, i32 0, i32 3
  %610 = bitcast %struct.GAP* %609 to i16*
  %611 = trunc i32 %606 to i16
  %612 = load i16, i16* %610, align 4
  %613 = and i16 %611, 7
  %614 = shl i16 %613, 10
  %615 = and i16 %612, -7169
  %616 = or i16 %615, %614
  store i16 %616, i16* %610, align 4
  %617 = zext i16 %613 to i32
  %618 = load %union.rec*, %union.rec** %s1, align 8
  %619 = bitcast %union.rec* %618 to %struct.gapobj_type*
  %620 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %619, i32 0, i32 3
  %621 = bitcast %struct.GAP* %620 to i16*
  %622 = load i16, i16* %621, align 4
  %623 = lshr i16 %622, 13
  %624 = zext i16 %623 to i32
  %625 = load %union.rec*, %union.rec** %new_s1, align 8
  %626 = bitcast %union.rec* %625 to %struct.gapobj_type*
  %627 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %626, i32 0, i32 3
  %628 = bitcast %struct.GAP* %627 to i16*
  %629 = trunc i32 %624 to i16
  %630 = load i16, i16* %628, align 4
  %631 = and i16 %629, 7
  %632 = shl i16 %631, 13
  %633 = and i16 %630, 8191
  %634 = or i16 %633, %632
  store i16 %634, i16* %628, align 4
  %635 = zext i16 %631 to i32
  %636 = load %union.rec*, %union.rec** %s1, align 8
  %637 = bitcast %union.rec* %636 to %struct.gapobj_type*
  %638 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %637, i32 0, i32 3
  %639 = getelementptr inbounds %struct.GAP, %struct.GAP* %638, i32 0, i32 1
  %640 = load i16, i16* %639, align 2
  %641 = load %union.rec*, %union.rec** %new_s1, align 8
  %642 = bitcast %union.rec* %641 to %struct.gapobj_type*
  %643 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %642, i32 0, i32 3
  %644 = getelementptr inbounds %struct.GAP, %struct.GAP* %643, i32 0, i32 1
  store i16 %640, i16* %644, align 2
  %645 = load %union.rec*, %union.rec** %s1, align 8
  %646 = bitcast %union.rec* %645 to %struct.word_type*
  %647 = getelementptr inbounds %struct.word_type, %struct.word_type* %646, i32 0, i32 2
  %648 = bitcast %union.SECOND_UNION* %647 to %struct.anon.0*
  %649 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %648, i32 0, i32 1
  %650 = load i8, i8* %649, align 1
  %651 = load %union.rec*, %union.rec** %new_s1, align 8
  %652 = bitcast %union.rec* %651 to %struct.word_type*
  %653 = getelementptr inbounds %struct.word_type, %struct.word_type* %652, i32 0, i32 2
  %654 = bitcast %union.SECOND_UNION* %653 to %struct.anon.0*
  %655 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %654, i32 0, i32 1
  store i8 %650, i8* %655, align 1
  %656 = load %union.rec*, %union.rec** %s1, align 8
  %657 = bitcast %union.rec* %656 to %struct.word_type*
  %658 = getelementptr inbounds %struct.word_type, %struct.word_type* %657, i32 0, i32 2
  %659 = bitcast %union.SECOND_UNION* %658 to %struct.anon.0*
  %660 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %659, i32 0, i32 2
  %661 = load i8, i8* %660, align 1
  %662 = load %union.rec*, %union.rec** %new_s1, align 8
  %663 = bitcast %union.rec* %662 to %struct.word_type*
  %664 = getelementptr inbounds %struct.word_type, %struct.word_type* %663, i32 0, i32 2
  %665 = bitcast %union.SECOND_UNION* %664 to %struct.anon.0*
  %666 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %665, i32 0, i32 2
  store i8 %661, i8* %666, align 1
  %667 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %668 = zext i8 %667 to i32
  store i32 %668, i32* @zz_size, align 4
  %669 = sext i32 %668 to i64
  %670 = icmp uge i64 %669, 265
  br i1 %670, label %671, label %674

; <label>:671                                     ; preds = %471
  %672 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %673 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %672)
  br label %699

; <label>:674                                     ; preds = %471
  %675 = load i32, i32* @zz_size, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %676
  %678 = load %union.rec*, %union.rec** %677, align 8
  %679 = icmp eq %union.rec* %678, null
  br i1 %679, label %680, label %684

; <label>:680                                     ; preds = %674
  %681 = load i32, i32* @zz_size, align 4
  %682 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %683 = call %union.rec* @GetMemory(i32 %681, %struct.FILE_POS* %682)
  store %union.rec* %683, %union.rec** @zz_hold, align 8
  br label %698

; <label>:684                                     ; preds = %674
  %685 = load i32, i32* @zz_size, align 4
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %686
  %688 = load %union.rec*, %union.rec** %687, align 8
  store %union.rec* %688, %union.rec** @zz_hold, align 8
  store %union.rec* %688, %union.rec** @zz_hold, align 8
  %689 = load %union.rec*, %union.rec** @zz_hold, align 8
  %690 = bitcast %union.rec* %689 to %struct.word_type*
  %691 = getelementptr inbounds %struct.word_type, %struct.word_type* %690, i32 0, i32 0
  %692 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %691, i32 0, i64 0
  %693 = getelementptr inbounds %struct.LIST, %struct.LIST* %692, i32 0, i32 0
  %694 = load %union.rec*, %union.rec** %693, align 8
  %695 = load i32, i32* @zz_size, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %696
  store %union.rec* %694, %union.rec** %697, align 8
  br label %698

; <label>:698                                     ; preds = %684, %680
  br label %699

; <label>:699                                     ; preds = %698, %671
  %700 = load %union.rec*, %union.rec** @zz_hold, align 8
  %701 = bitcast %union.rec* %700 to %struct.word_type*
  %702 = getelementptr inbounds %struct.word_type, %struct.word_type* %701, i32 0, i32 1
  %703 = bitcast %union.FIRST_UNION* %702 to %struct.anon*
  %704 = getelementptr inbounds %struct.anon, %struct.anon* %703, i32 0, i32 0
  store i8 0, i8* %704, align 1
  %705 = load %union.rec*, %union.rec** @zz_hold, align 8
  %706 = load %union.rec*, %union.rec** @zz_hold, align 8
  %707 = bitcast %union.rec* %706 to %struct.word_type*
  %708 = getelementptr inbounds %struct.word_type, %struct.word_type* %707, i32 0, i32 0
  %709 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %708, i32 0, i64 1
  %710 = getelementptr inbounds %struct.LIST, %struct.LIST* %709, i32 0, i32 1
  store %union.rec* %705, %union.rec** %710, align 8
  %711 = load %union.rec*, %union.rec** @zz_hold, align 8
  %712 = bitcast %union.rec* %711 to %struct.word_type*
  %713 = getelementptr inbounds %struct.word_type, %struct.word_type* %712, i32 0, i32 0
  %714 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %713, i32 0, i64 1
  %715 = getelementptr inbounds %struct.LIST, %struct.LIST* %714, i32 0, i32 0
  store %union.rec* %705, %union.rec** %715, align 8
  %716 = load %union.rec*, %union.rec** @zz_hold, align 8
  %717 = bitcast %union.rec* %716 to %struct.word_type*
  %718 = getelementptr inbounds %struct.word_type, %struct.word_type* %717, i32 0, i32 0
  %719 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %718, i32 0, i64 0
  %720 = getelementptr inbounds %struct.LIST, %struct.LIST* %719, i32 0, i32 1
  store %union.rec* %705, %union.rec** %720, align 8
  %721 = load %union.rec*, %union.rec** @zz_hold, align 8
  %722 = bitcast %union.rec* %721 to %struct.word_type*
  %723 = getelementptr inbounds %struct.word_type, %struct.word_type* %722, i32 0, i32 0
  %724 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %723, i32 0, i64 0
  %725 = getelementptr inbounds %struct.LIST, %struct.LIST* %724, i32 0, i32 0
  store %union.rec* %705, %union.rec** %725, align 8
  store %union.rec* %705, %union.rec** @xx_link, align 8
  %726 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %726, %union.rec** @zz_res, align 8
  %727 = load %union.rec*, %union.rec** %new_y, align 8
  store %union.rec* %727, %union.rec** @zz_hold, align 8
  %728 = load %union.rec*, %union.rec** @zz_hold, align 8
  %729 = icmp eq %union.rec* %728, null
  br i1 %729, label %730, label %732

; <label>:730                                     ; preds = %699
  %731 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %780

; <label>:732                                     ; preds = %699
  %733 = load %union.rec*, %union.rec** @zz_res, align 8
  %734 = icmp eq %union.rec* %733, null
  br i1 %734, label %735, label %737

; <label>:735                                     ; preds = %732
  %736 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %778

; <label>:737                                     ; preds = %732
  %738 = load %union.rec*, %union.rec** @zz_hold, align 8
  %739 = bitcast %union.rec* %738 to %struct.word_type*
  %740 = getelementptr inbounds %struct.word_type, %struct.word_type* %739, i32 0, i32 0
  %741 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %740, i32 0, i64 0
  %742 = getelementptr inbounds %struct.LIST, %struct.LIST* %741, i32 0, i32 0
  %743 = load %union.rec*, %union.rec** %742, align 8
  store %union.rec* %743, %union.rec** @zz_tmp, align 8
  %744 = load %union.rec*, %union.rec** @zz_res, align 8
  %745 = bitcast %union.rec* %744 to %struct.word_type*
  %746 = getelementptr inbounds %struct.word_type, %struct.word_type* %745, i32 0, i32 0
  %747 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %746, i32 0, i64 0
  %748 = getelementptr inbounds %struct.LIST, %struct.LIST* %747, i32 0, i32 0
  %749 = load %union.rec*, %union.rec** %748, align 8
  %750 = load %union.rec*, %union.rec** @zz_hold, align 8
  %751 = bitcast %union.rec* %750 to %struct.word_type*
  %752 = getelementptr inbounds %struct.word_type, %struct.word_type* %751, i32 0, i32 0
  %753 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %752, i32 0, i64 0
  %754 = getelementptr inbounds %struct.LIST, %struct.LIST* %753, i32 0, i32 0
  store %union.rec* %749, %union.rec** %754, align 8
  %755 = load %union.rec*, %union.rec** @zz_hold, align 8
  %756 = load %union.rec*, %union.rec** @zz_res, align 8
  %757 = bitcast %union.rec* %756 to %struct.word_type*
  %758 = getelementptr inbounds %struct.word_type, %struct.word_type* %757, i32 0, i32 0
  %759 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %758, i32 0, i64 0
  %760 = getelementptr inbounds %struct.LIST, %struct.LIST* %759, i32 0, i32 0
  %761 = load %union.rec*, %union.rec** %760, align 8
  %762 = bitcast %union.rec* %761 to %struct.word_type*
  %763 = getelementptr inbounds %struct.word_type, %struct.word_type* %762, i32 0, i32 0
  %764 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %763, i32 0, i64 0
  %765 = getelementptr inbounds %struct.LIST, %struct.LIST* %764, i32 0, i32 1
  store %union.rec* %755, %union.rec** %765, align 8
  %766 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %767 = load %union.rec*, %union.rec** @zz_res, align 8
  %768 = bitcast %union.rec* %767 to %struct.word_type*
  %769 = getelementptr inbounds %struct.word_type, %struct.word_type* %768, i32 0, i32 0
  %770 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %769, i32 0, i64 0
  %771 = getelementptr inbounds %struct.LIST, %struct.LIST* %770, i32 0, i32 0
  store %union.rec* %766, %union.rec** %771, align 8
  %772 = load %union.rec*, %union.rec** @zz_res, align 8
  %773 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %774 = bitcast %union.rec* %773 to %struct.word_type*
  %775 = getelementptr inbounds %struct.word_type, %struct.word_type* %774, i32 0, i32 0
  %776 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %775, i32 0, i64 0
  %777 = getelementptr inbounds %struct.LIST, %struct.LIST* %776, i32 0, i32 1
  store %union.rec* %772, %union.rec** %777, align 8
  br label %778

; <label>:778                                     ; preds = %737, %735
  %779 = phi %union.rec* [ %736, %735 ], [ %772, %737 ]
  br label %780

; <label>:780                                     ; preds = %778, %730
  %781 = phi %union.rec* [ %731, %730 ], [ %779, %778 ]
  %782 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %782, %union.rec** @zz_res, align 8
  %783 = load %union.rec*, %union.rec** %new_s1, align 8
  store %union.rec* %783, %union.rec** @zz_hold, align 8
  %784 = load %union.rec*, %union.rec** @zz_hold, align 8
  %785 = icmp eq %union.rec* %784, null
  br i1 %785, label %786, label %788

; <label>:786                                     ; preds = %780
  %787 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %836

; <label>:788                                     ; preds = %780
  %789 = load %union.rec*, %union.rec** @zz_res, align 8
  %790 = icmp eq %union.rec* %789, null
  br i1 %790, label %791, label %793

; <label>:791                                     ; preds = %788
  %792 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %834

; <label>:793                                     ; preds = %788
  %794 = load %union.rec*, %union.rec** @zz_hold, align 8
  %795 = bitcast %union.rec* %794 to %struct.word_type*
  %796 = getelementptr inbounds %struct.word_type, %struct.word_type* %795, i32 0, i32 0
  %797 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %796, i32 0, i64 1
  %798 = getelementptr inbounds %struct.LIST, %struct.LIST* %797, i32 0, i32 0
  %799 = load %union.rec*, %union.rec** %798, align 8
  store %union.rec* %799, %union.rec** @zz_tmp, align 8
  %800 = load %union.rec*, %union.rec** @zz_res, align 8
  %801 = bitcast %union.rec* %800 to %struct.word_type*
  %802 = getelementptr inbounds %struct.word_type, %struct.word_type* %801, i32 0, i32 0
  %803 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %802, i32 0, i64 1
  %804 = getelementptr inbounds %struct.LIST, %struct.LIST* %803, i32 0, i32 0
  %805 = load %union.rec*, %union.rec** %804, align 8
  %806 = load %union.rec*, %union.rec** @zz_hold, align 8
  %807 = bitcast %union.rec* %806 to %struct.word_type*
  %808 = getelementptr inbounds %struct.word_type, %struct.word_type* %807, i32 0, i32 0
  %809 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %808, i32 0, i64 1
  %810 = getelementptr inbounds %struct.LIST, %struct.LIST* %809, i32 0, i32 0
  store %union.rec* %805, %union.rec** %810, align 8
  %811 = load %union.rec*, %union.rec** @zz_hold, align 8
  %812 = load %union.rec*, %union.rec** @zz_res, align 8
  %813 = bitcast %union.rec* %812 to %struct.word_type*
  %814 = getelementptr inbounds %struct.word_type, %struct.word_type* %813, i32 0, i32 0
  %815 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %814, i32 0, i64 1
  %816 = getelementptr inbounds %struct.LIST, %struct.LIST* %815, i32 0, i32 0
  %817 = load %union.rec*, %union.rec** %816, align 8
  %818 = bitcast %union.rec* %817 to %struct.word_type*
  %819 = getelementptr inbounds %struct.word_type, %struct.word_type* %818, i32 0, i32 0
  %820 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %819, i32 0, i64 1
  %821 = getelementptr inbounds %struct.LIST, %struct.LIST* %820, i32 0, i32 1
  store %union.rec* %811, %union.rec** %821, align 8
  %822 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %823 = load %union.rec*, %union.rec** @zz_res, align 8
  %824 = bitcast %union.rec* %823 to %struct.word_type*
  %825 = getelementptr inbounds %struct.word_type, %struct.word_type* %824, i32 0, i32 0
  %826 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %825, i32 0, i64 1
  %827 = getelementptr inbounds %struct.LIST, %struct.LIST* %826, i32 0, i32 0
  store %union.rec* %822, %union.rec** %827, align 8
  %828 = load %union.rec*, %union.rec** @zz_res, align 8
  %829 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %830 = bitcast %union.rec* %829 to %struct.word_type*
  %831 = getelementptr inbounds %struct.word_type, %struct.word_type* %830, i32 0, i32 0
  %832 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %831, i32 0, i64 1
  %833 = getelementptr inbounds %struct.LIST, %struct.LIST* %832, i32 0, i32 1
  store %union.rec* %828, %union.rec** %833, align 8
  br label %834

; <label>:834                                     ; preds = %793, %791
  %835 = phi %union.rec* [ %792, %791 ], [ %828, %793 ]
  br label %836

; <label>:836                                     ; preds = %834, %786
  %837 = phi %union.rec* [ %787, %786 ], [ %835, %834 ]
  br label %2668

; <label>:838                                     ; preds = %429
  %839 = load %union.rec*, %union.rec** %s1, align 8
  %840 = bitcast %union.rec* %839 to %struct.word_type*
  %841 = getelementptr inbounds %struct.word_type, %struct.word_type* %840, i32 0, i32 1
  %842 = bitcast %union.FIRST_UNION* %841 to %struct.anon*
  %843 = getelementptr inbounds %struct.anon, %struct.anon* %842, i32 0, i32 0
  %844 = load i8, i8* %843, align 1
  %845 = zext i8 %844 to i32
  %846 = icmp eq i32 %845, 26
  br i1 %846, label %856, label %847

; <label>:847                                     ; preds = %838
  %848 = load %union.rec*, %union.rec** %s1, align 8
  %849 = bitcast %union.rec* %848 to %struct.word_type*
  %850 = getelementptr inbounds %struct.word_type, %struct.word_type* %849, i32 0, i32 1
  %851 = bitcast %union.FIRST_UNION* %850 to %struct.anon*
  %852 = getelementptr inbounds %struct.anon, %struct.anon* %851, i32 0, i32 0
  %853 = load i8, i8* %852, align 1
  %854 = zext i8 %853 to i32
  %855 = icmp eq i32 %854, 24
  br i1 %855, label %856, label %886

; <label>:856                                     ; preds = %847, %838
  %857 = load %union.rec*, %union.rec** %s1, align 8
  %858 = bitcast %union.rec* %857 to %struct.word_type*
  %859 = getelementptr inbounds %struct.word_type, %struct.word_type* %858, i32 0, i32 0
  %860 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %859, i32 0, i64 0
  %861 = getelementptr inbounds %struct.LIST, %struct.LIST* %860, i32 0, i32 1
  %862 = load %union.rec*, %union.rec** %861, align 8
  %863 = bitcast %union.rec* %862 to %struct.word_type*
  %864 = getelementptr inbounds %struct.word_type, %struct.word_type* %863, i32 0, i32 0
  %865 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %864, i32 0, i64 1
  %866 = getelementptr inbounds %struct.LIST, %struct.LIST* %865, i32 0, i32 0
  %867 = load %union.rec*, %union.rec** %866, align 8
  store %union.rec* %867, %union.rec** %s2, align 8
  br label %868

; <label>:868                                     ; preds = %878, %856
  %869 = load %union.rec*, %union.rec** %s2, align 8
  %870 = bitcast %union.rec* %869 to %struct.word_type*
  %871 = getelementptr inbounds %struct.word_type, %struct.word_type* %870, i32 0, i32 1
  %872 = bitcast %union.FIRST_UNION* %871 to %struct.anon*
  %873 = getelementptr inbounds %struct.anon, %struct.anon* %872, i32 0, i32 0
  %874 = load i8, i8* %873, align 1
  %875 = zext i8 %874 to i32
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %877, label %885

; <label>:877                                     ; preds = %868
  br label %878

; <label>:878                                     ; preds = %877
  %879 = load %union.rec*, %union.rec** %s2, align 8
  %880 = bitcast %union.rec* %879 to %struct.word_type*
  %881 = getelementptr inbounds %struct.word_type, %struct.word_type* %880, i32 0, i32 0
  %882 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %881, i32 0, i64 1
  %883 = getelementptr inbounds %struct.LIST, %struct.LIST* %882, i32 0, i32 0
  %884 = load %union.rec*, %union.rec** %883, align 8
  store %union.rec* %884, %union.rec** %s2, align 8
  br label %868

; <label>:885                                     ; preds = %868
  br label %888

; <label>:886                                     ; preds = %847
  %887 = load %union.rec*, %union.rec** %s1, align 8
  store %union.rec* %887, %union.rec** %s2, align 8
  br label %888

; <label>:888                                     ; preds = %886, %885
  %889 = load %union.rec*, %union.rec** %s2, align 8
  %890 = bitcast %union.rec* %889 to %struct.word_type*
  %891 = getelementptr inbounds %struct.word_type, %struct.word_type* %890, i32 0, i32 1
  %892 = bitcast %union.FIRST_UNION* %891 to %struct.anon*
  %893 = getelementptr inbounds %struct.anon, %struct.anon* %892, i32 0, i32 0
  %894 = load i8, i8* %893, align 1
  %895 = zext i8 %894 to i32
  %896 = icmp eq i32 %895, 9
  br i1 %896, label %900, label %897

; <label>:897                                     ; preds = %888
  %898 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %899 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %898, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i32 0, i32 0))
  br label %900

; <label>:900                                     ; preds = %897, %888
  %901 = load %union.rec*, %union.rec** %s2, align 8
  %902 = bitcast %union.rec* %901 to %struct.word_type*
  %903 = getelementptr inbounds %struct.word_type, %struct.word_type* %902, i32 0, i32 0
  %904 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %903, i32 0, i64 0
  %905 = getelementptr inbounds %struct.LIST, %struct.LIST* %904, i32 0, i32 1
  %906 = load %union.rec*, %union.rec** %905, align 8
  %907 = bitcast %union.rec* %906 to %struct.word_type*
  %908 = getelementptr inbounds %struct.word_type, %struct.word_type* %907, i32 0, i32 0
  %909 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %908, i32 0, i64 1
  %910 = getelementptr inbounds %struct.LIST, %struct.LIST* %909, i32 0, i32 0
  %911 = load %union.rec*, %union.rec** %910, align 8
  store %union.rec* %911, %union.rec** %sh, align 8
  br label %912

; <label>:912                                     ; preds = %922, %900
  %913 = load %union.rec*, %union.rec** %sh, align 8
  %914 = bitcast %union.rec* %913 to %struct.word_type*
  %915 = getelementptr inbounds %struct.word_type, %struct.word_type* %914, i32 0, i32 1
  %916 = bitcast %union.FIRST_UNION* %915 to %struct.anon*
  %917 = getelementptr inbounds %struct.anon, %struct.anon* %916, i32 0, i32 0
  %918 = load i8, i8* %917, align 1
  %919 = zext i8 %918 to i32
  %920 = icmp eq i32 %919, 0
  br i1 %920, label %921, label %929

; <label>:921                                     ; preds = %912
  br label %922

; <label>:922                                     ; preds = %921
  %923 = load %union.rec*, %union.rec** %sh, align 8
  %924 = bitcast %union.rec* %923 to %struct.word_type*
  %925 = getelementptr inbounds %struct.word_type, %struct.word_type* %924, i32 0, i32 0
  %926 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %925, i32 0, i64 1
  %927 = getelementptr inbounds %struct.LIST, %struct.LIST* %926, i32 0, i32 0
  %928 = load %union.rec*, %union.rec** %927, align 8
  store %union.rec* %928, %union.rec** %sh, align 8
  br label %912

; <label>:929                                     ; preds = %912
  %930 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 9), align 1
  %931 = zext i8 %930 to i32
  store i32 %931, i32* @zz_size, align 4
  %932 = sext i32 %931 to i64
  %933 = icmp uge i64 %932, 265
  br i1 %933, label %934, label %937

; <label>:934                                     ; preds = %929
  %935 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %936 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %935)
  br label %962

; <label>:937                                     ; preds = %929
  %938 = load i32, i32* @zz_size, align 4
  %939 = sext i32 %938 to i64
  %940 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %939
  %941 = load %union.rec*, %union.rec** %940, align 8
  %942 = icmp eq %union.rec* %941, null
  br i1 %942, label %943, label %947

; <label>:943                                     ; preds = %937
  %944 = load i32, i32* @zz_size, align 4
  %945 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %946 = call %union.rec* @GetMemory(i32 %944, %struct.FILE_POS* %945)
  store %union.rec* %946, %union.rec** @zz_hold, align 8
  br label %961

; <label>:947                                     ; preds = %937
  %948 = load i32, i32* @zz_size, align 4
  %949 = sext i32 %948 to i64
  %950 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %949
  %951 = load %union.rec*, %union.rec** %950, align 8
  store %union.rec* %951, %union.rec** @zz_hold, align 8
  store %union.rec* %951, %union.rec** @zz_hold, align 8
  %952 = load %union.rec*, %union.rec** @zz_hold, align 8
  %953 = bitcast %union.rec* %952 to %struct.word_type*
  %954 = getelementptr inbounds %struct.word_type, %struct.word_type* %953, i32 0, i32 0
  %955 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %954, i32 0, i64 0
  %956 = getelementptr inbounds %struct.LIST, %struct.LIST* %955, i32 0, i32 0
  %957 = load %union.rec*, %union.rec** %956, align 8
  %958 = load i32, i32* @zz_size, align 4
  %959 = sext i32 %958 to i64
  %960 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %959
  store %union.rec* %957, %union.rec** %960, align 8
  br label %961

; <label>:961                                     ; preds = %947, %943
  br label %962

; <label>:962                                     ; preds = %961, %934
  %963 = load %union.rec*, %union.rec** @zz_hold, align 8
  %964 = bitcast %union.rec* %963 to %struct.word_type*
  %965 = getelementptr inbounds %struct.word_type, %struct.word_type* %964, i32 0, i32 1
  %966 = bitcast %union.FIRST_UNION* %965 to %struct.anon*
  %967 = getelementptr inbounds %struct.anon, %struct.anon* %966, i32 0, i32 0
  store i8 9, i8* %967, align 1
  %968 = load %union.rec*, %union.rec** @zz_hold, align 8
  %969 = load %union.rec*, %union.rec** @zz_hold, align 8
  %970 = bitcast %union.rec* %969 to %struct.word_type*
  %971 = getelementptr inbounds %struct.word_type, %struct.word_type* %970, i32 0, i32 0
  %972 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %971, i32 0, i64 1
  %973 = getelementptr inbounds %struct.LIST, %struct.LIST* %972, i32 0, i32 1
  store %union.rec* %968, %union.rec** %973, align 8
  %974 = load %union.rec*, %union.rec** @zz_hold, align 8
  %975 = bitcast %union.rec* %974 to %struct.word_type*
  %976 = getelementptr inbounds %struct.word_type, %struct.word_type* %975, i32 0, i32 0
  %977 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %976, i32 0, i64 1
  %978 = getelementptr inbounds %struct.LIST, %struct.LIST* %977, i32 0, i32 0
  store %union.rec* %968, %union.rec** %978, align 8
  %979 = load %union.rec*, %union.rec** @zz_hold, align 8
  %980 = bitcast %union.rec* %979 to %struct.word_type*
  %981 = getelementptr inbounds %struct.word_type, %struct.word_type* %980, i32 0, i32 0
  %982 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %981, i32 0, i64 0
  %983 = getelementptr inbounds %struct.LIST, %struct.LIST* %982, i32 0, i32 1
  store %union.rec* %968, %union.rec** %983, align 8
  %984 = load %union.rec*, %union.rec** @zz_hold, align 8
  %985 = bitcast %union.rec* %984 to %struct.word_type*
  %986 = getelementptr inbounds %struct.word_type, %struct.word_type* %985, i32 0, i32 0
  %987 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %986, i32 0, i64 0
  %988 = getelementptr inbounds %struct.LIST, %struct.LIST* %987, i32 0, i32 0
  store %union.rec* %968, %union.rec** %988, align 8
  store %union.rec* %968, %union.rec** %new_s2, align 8
  %989 = load %union.rec*, %union.rec** %s2, align 8
  %990 = bitcast %union.rec* %989 to %struct.word_type*
  %991 = getelementptr inbounds %struct.word_type, %struct.word_type* %990, i32 0, i32 1
  %992 = bitcast %union.FIRST_UNION* %991 to %struct.FILE_POS*
  %993 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %992, i32 0, i32 2
  %994 = load i16, i16* %993, align 2
  %995 = load %union.rec*, %union.rec** %new_s2, align 8
  %996 = bitcast %union.rec* %995 to %struct.word_type*
  %997 = getelementptr inbounds %struct.word_type, %struct.word_type* %996, i32 0, i32 1
  %998 = bitcast %union.FIRST_UNION* %997 to %struct.FILE_POS*
  %999 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %998, i32 0, i32 2
  store i16 %994, i16* %999, align 2
  %1000 = load %union.rec*, %union.rec** %s2, align 8
  %1001 = bitcast %union.rec* %1000 to %struct.word_type*
  %1002 = getelementptr inbounds %struct.word_type, %struct.word_type* %1001, i32 0, i32 1
  %1003 = bitcast %union.FIRST_UNION* %1002 to %struct.FILE_POS*
  %1004 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1003, i32 0, i32 3
  %1005 = load i32, i32* %1004, align 4
  %1006 = and i32 %1005, 1048575
  %1007 = load %union.rec*, %union.rec** %new_s2, align 8
  %1008 = bitcast %union.rec* %1007 to %struct.word_type*
  %1009 = getelementptr inbounds %struct.word_type, %struct.word_type* %1008, i32 0, i32 1
  %1010 = bitcast %union.FIRST_UNION* %1009 to %struct.FILE_POS*
  %1011 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1010, i32 0, i32 3
  %1012 = load i32, i32* %1011, align 4
  %1013 = and i32 %1006, 1048575
  %1014 = and i32 %1012, -1048576
  %1015 = or i32 %1014, %1013
  store i32 %1015, i32* %1011, align 4
  %1016 = load %union.rec*, %union.rec** %s2, align 8
  %1017 = bitcast %union.rec* %1016 to %struct.word_type*
  %1018 = getelementptr inbounds %struct.word_type, %struct.word_type* %1017, i32 0, i32 1
  %1019 = bitcast %union.FIRST_UNION* %1018 to %struct.FILE_POS*
  %1020 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1019, i32 0, i32 3
  %1021 = load i32, i32* %1020, align 4
  %1022 = lshr i32 %1021, 20
  %1023 = load %union.rec*, %union.rec** %new_s2, align 8
  %1024 = bitcast %union.rec* %1023 to %struct.word_type*
  %1025 = getelementptr inbounds %struct.word_type, %struct.word_type* %1024, i32 0, i32 1
  %1026 = bitcast %union.FIRST_UNION* %1025 to %struct.FILE_POS*
  %1027 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1026, i32 0, i32 3
  %1028 = load i32, i32* %1027, align 4
  %1029 = and i32 %1022, 4095
  %1030 = shl i32 %1029, 20
  %1031 = and i32 %1028, 1048575
  %1032 = or i32 %1031, %1030
  store i32 %1032, i32* %1027, align 4
  %1033 = load %union.rec*, %union.rec** %s2, align 8
  %1034 = load %union.rec*, %union.rec** %s1, align 8
  %1035 = icmp ne %union.rec* %1033, %1034
  br i1 %1035, label %1036, label %1504

; <label>:1036                                    ; preds = %962
  %1037 = load %union.rec*, %union.rec** %s1, align 8
  %1038 = bitcast %union.rec* %1037 to %struct.word_type*
  %1039 = getelementptr inbounds %struct.word_type, %struct.word_type* %1038, i32 0, i32 1
  %1040 = bitcast %union.FIRST_UNION* %1039 to %struct.anon*
  %1041 = getelementptr inbounds %struct.anon, %struct.anon* %1040, i32 0, i32 0
  %1042 = load i8, i8* %1041, align 1
  %1043 = zext i8 %1042 to i64
  %1044 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1043
  %1045 = load i8, i8* %1044, align 1
  %1046 = zext i8 %1045 to i32
  store i32 %1046, i32* @zz_size, align 4
  %1047 = sext i32 %1046 to i64
  %1048 = icmp uge i64 %1047, 265
  br i1 %1048, label %1049, label %1052

; <label>:1049                                    ; preds = %1036
  %1050 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1051 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %1050)
  br label %1077

; <label>:1052                                    ; preds = %1036
  %1053 = load i32, i32* @zz_size, align 4
  %1054 = sext i32 %1053 to i64
  %1055 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1054
  %1056 = load %union.rec*, %union.rec** %1055, align 8
  %1057 = icmp eq %union.rec* %1056, null
  br i1 %1057, label %1058, label %1062

; <label>:1058                                    ; preds = %1052
  %1059 = load i32, i32* @zz_size, align 4
  %1060 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1061 = call %union.rec* @GetMemory(i32 %1059, %struct.FILE_POS* %1060)
  store %union.rec* %1061, %union.rec** @zz_hold, align 8
  br label %1076

; <label>:1062                                    ; preds = %1052
  %1063 = load i32, i32* @zz_size, align 4
  %1064 = sext i32 %1063 to i64
  %1065 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1064
  %1066 = load %union.rec*, %union.rec** %1065, align 8
  store %union.rec* %1066, %union.rec** @zz_hold, align 8
  store %union.rec* %1066, %union.rec** @zz_hold, align 8
  %1067 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1068 = bitcast %union.rec* %1067 to %struct.word_type*
  %1069 = getelementptr inbounds %struct.word_type, %struct.word_type* %1068, i32 0, i32 0
  %1070 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1069, i32 0, i64 0
  %1071 = getelementptr inbounds %struct.LIST, %struct.LIST* %1070, i32 0, i32 0
  %1072 = load %union.rec*, %union.rec** %1071, align 8
  %1073 = load i32, i32* @zz_size, align 4
  %1074 = sext i32 %1073 to i64
  %1075 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1074
  store %union.rec* %1072, %union.rec** %1075, align 8
  br label %1076

; <label>:1076                                    ; preds = %1062, %1058
  br label %1077

; <label>:1077                                    ; preds = %1076, %1049
  %1078 = load %union.rec*, %union.rec** %s1, align 8
  %1079 = bitcast %union.rec* %1078 to %struct.word_type*
  %1080 = getelementptr inbounds %struct.word_type, %struct.word_type* %1079, i32 0, i32 1
  %1081 = bitcast %union.FIRST_UNION* %1080 to %struct.anon*
  %1082 = getelementptr inbounds %struct.anon, %struct.anon* %1081, i32 0, i32 0
  %1083 = load i8, i8* %1082, align 1
  %1084 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1085 = bitcast %union.rec* %1084 to %struct.word_type*
  %1086 = getelementptr inbounds %struct.word_type, %struct.word_type* %1085, i32 0, i32 1
  %1087 = bitcast %union.FIRST_UNION* %1086 to %struct.anon*
  %1088 = getelementptr inbounds %struct.anon, %struct.anon* %1087, i32 0, i32 0
  store i8 %1083, i8* %1088, align 1
  %1089 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1090 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1091 = bitcast %union.rec* %1090 to %struct.word_type*
  %1092 = getelementptr inbounds %struct.word_type, %struct.word_type* %1091, i32 0, i32 0
  %1093 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1092, i32 0, i64 1
  %1094 = getelementptr inbounds %struct.LIST, %struct.LIST* %1093, i32 0, i32 1
  store %union.rec* %1089, %union.rec** %1094, align 8
  %1095 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1096 = bitcast %union.rec* %1095 to %struct.word_type*
  %1097 = getelementptr inbounds %struct.word_type, %struct.word_type* %1096, i32 0, i32 0
  %1098 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1097, i32 0, i64 1
  %1099 = getelementptr inbounds %struct.LIST, %struct.LIST* %1098, i32 0, i32 0
  store %union.rec* %1089, %union.rec** %1099, align 8
  %1100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1101 = bitcast %union.rec* %1100 to %struct.word_type*
  %1102 = getelementptr inbounds %struct.word_type, %struct.word_type* %1101, i32 0, i32 0
  %1103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1102, i32 0, i64 0
  %1104 = getelementptr inbounds %struct.LIST, %struct.LIST* %1103, i32 0, i32 1
  store %union.rec* %1089, %union.rec** %1104, align 8
  %1105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1106 = bitcast %union.rec* %1105 to %struct.word_type*
  %1107 = getelementptr inbounds %struct.word_type, %struct.word_type* %1106, i32 0, i32 0
  %1108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1107, i32 0, i64 0
  %1109 = getelementptr inbounds %struct.LIST, %struct.LIST* %1108, i32 0, i32 0
  store %union.rec* %1089, %union.rec** %1109, align 8
  store %union.rec* %1089, %union.rec** %new_s1, align 8
  %1110 = load %union.rec*, %union.rec** %s1, align 8
  %1111 = bitcast %union.rec* %1110 to %struct.word_type*
  %1112 = getelementptr inbounds %struct.word_type, %struct.word_type* %1111, i32 0, i32 3
  %1113 = bitcast %union.THIRD_UNION* %1112 to %struct.anon.6*
  %1114 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1113, i32 0, i32 0
  %1115 = getelementptr inbounds [2 x i32], [2 x i32]* %1114, i32 0, i64 0
  %1116 = load i32, i32* %1115, align 4
  %1117 = load %union.rec*, %union.rec** %new_s1, align 8
  %1118 = bitcast %union.rec* %1117 to %struct.word_type*
  %1119 = getelementptr inbounds %struct.word_type, %struct.word_type* %1118, i32 0, i32 3
  %1120 = bitcast %union.THIRD_UNION* %1119 to %struct.anon.6*
  %1121 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1120, i32 0, i32 0
  %1122 = getelementptr inbounds [2 x i32], [2 x i32]* %1121, i32 0, i64 0
  store i32 %1116, i32* %1122, align 4
  %1123 = load %union.rec*, %union.rec** %s1, align 8
  %1124 = bitcast %union.rec* %1123 to %struct.word_type*
  %1125 = getelementptr inbounds %struct.word_type, %struct.word_type* %1124, i32 0, i32 3
  %1126 = bitcast %union.THIRD_UNION* %1125 to %struct.anon.6*
  %1127 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1126, i32 0, i32 1
  %1128 = getelementptr inbounds [2 x i32], [2 x i32]* %1127, i32 0, i64 0
  %1129 = load i32, i32* %1128, align 4
  %1130 = load %union.rec*, %union.rec** %new_s1, align 8
  %1131 = bitcast %union.rec* %1130 to %struct.word_type*
  %1132 = getelementptr inbounds %struct.word_type, %struct.word_type* %1131, i32 0, i32 3
  %1133 = bitcast %union.THIRD_UNION* %1132 to %struct.anon.6*
  %1134 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1133, i32 0, i32 1
  %1135 = getelementptr inbounds [2 x i32], [2 x i32]* %1134, i32 0, i64 0
  store i32 %1129, i32* %1135, align 4
  %1136 = load %union.rec*, %union.rec** %new_row_thread, align 8
  %1137 = bitcast %union.rec* %1136 to %struct.word_type*
  %1138 = getelementptr inbounds %struct.word_type, %struct.word_type* %1137, i32 0, i32 3
  %1139 = bitcast %union.THIRD_UNION* %1138 to %struct.anon.6*
  %1140 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1139, i32 0, i32 0
  %1141 = getelementptr inbounds [2 x i32], [2 x i32]* %1140, i32 0, i64 0
  %1142 = load i32, i32* %1141, align 4
  %1143 = load %union.rec*, %union.rec** %new_s1, align 8
  %1144 = bitcast %union.rec* %1143 to %struct.word_type*
  %1145 = getelementptr inbounds %struct.word_type, %struct.word_type* %1144, i32 0, i32 3
  %1146 = bitcast %union.THIRD_UNION* %1145 to %struct.anon.6*
  %1147 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1146, i32 0, i32 0
  %1148 = getelementptr inbounds [2 x i32], [2 x i32]* %1147, i32 0, i64 1
  store i32 %1142, i32* %1148, align 4
  %1149 = load %union.rec*, %union.rec** %new_row_thread, align 8
  %1150 = bitcast %union.rec* %1149 to %struct.word_type*
  %1151 = getelementptr inbounds %struct.word_type, %struct.word_type* %1150, i32 0, i32 3
  %1152 = bitcast %union.THIRD_UNION* %1151 to %struct.anon.6*
  %1153 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1152, i32 0, i32 1
  %1154 = getelementptr inbounds [2 x i32], [2 x i32]* %1153, i32 0, i64 0
  %1155 = load i32, i32* %1154, align 4
  %1156 = load %union.rec*, %union.rec** %new_s1, align 8
  %1157 = bitcast %union.rec* %1156 to %struct.word_type*
  %1158 = getelementptr inbounds %struct.word_type, %struct.word_type* %1157, i32 0, i32 3
  %1159 = bitcast %union.THIRD_UNION* %1158 to %struct.anon.6*
  %1160 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1159, i32 0, i32 1
  %1161 = getelementptr inbounds [2 x i32], [2 x i32]* %1160, i32 0, i64 1
  store i32 %1155, i32* %1161, align 4
  %1162 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1163 = zext i8 %1162 to i32
  store i32 %1163, i32* @zz_size, align 4
  %1164 = sext i32 %1163 to i64
  %1165 = icmp uge i64 %1164, 265
  br i1 %1165, label %1166, label %1169

; <label>:1166                                    ; preds = %1077
  %1167 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1168 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %1167)
  br label %1194

; <label>:1169                                    ; preds = %1077
  %1170 = load i32, i32* @zz_size, align 4
  %1171 = sext i32 %1170 to i64
  %1172 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1171
  %1173 = load %union.rec*, %union.rec** %1172, align 8
  %1174 = icmp eq %union.rec* %1173, null
  br i1 %1174, label %1175, label %1179

; <label>:1175                                    ; preds = %1169
  %1176 = load i32, i32* @zz_size, align 4
  %1177 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1178 = call %union.rec* @GetMemory(i32 %1176, %struct.FILE_POS* %1177)
  store %union.rec* %1178, %union.rec** @zz_hold, align 8
  br label %1193

; <label>:1179                                    ; preds = %1169
  %1180 = load i32, i32* @zz_size, align 4
  %1181 = sext i32 %1180 to i64
  %1182 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1181
  %1183 = load %union.rec*, %union.rec** %1182, align 8
  store %union.rec* %1183, %union.rec** @zz_hold, align 8
  store %union.rec* %1183, %union.rec** @zz_hold, align 8
  %1184 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1185 = bitcast %union.rec* %1184 to %struct.word_type*
  %1186 = getelementptr inbounds %struct.word_type, %struct.word_type* %1185, i32 0, i32 0
  %1187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1186, i32 0, i64 0
  %1188 = getelementptr inbounds %struct.LIST, %struct.LIST* %1187, i32 0, i32 0
  %1189 = load %union.rec*, %union.rec** %1188, align 8
  %1190 = load i32, i32* @zz_size, align 4
  %1191 = sext i32 %1190 to i64
  %1192 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1191
  store %union.rec* %1189, %union.rec** %1192, align 8
  br label %1193

; <label>:1193                                    ; preds = %1179, %1175
  br label %1194

; <label>:1194                                    ; preds = %1193, %1166
  %1195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1196 = bitcast %union.rec* %1195 to %struct.word_type*
  %1197 = getelementptr inbounds %struct.word_type, %struct.word_type* %1196, i32 0, i32 1
  %1198 = bitcast %union.FIRST_UNION* %1197 to %struct.anon*
  %1199 = getelementptr inbounds %struct.anon, %struct.anon* %1198, i32 0, i32 0
  store i8 0, i8* %1199, align 1
  %1200 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1201 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1202 = bitcast %union.rec* %1201 to %struct.word_type*
  %1203 = getelementptr inbounds %struct.word_type, %struct.word_type* %1202, i32 0, i32 0
  %1204 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1203, i32 0, i64 1
  %1205 = getelementptr inbounds %struct.LIST, %struct.LIST* %1204, i32 0, i32 1
  store %union.rec* %1200, %union.rec** %1205, align 8
  %1206 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1207 = bitcast %union.rec* %1206 to %struct.word_type*
  %1208 = getelementptr inbounds %struct.word_type, %struct.word_type* %1207, i32 0, i32 0
  %1209 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1208, i32 0, i64 1
  %1210 = getelementptr inbounds %struct.LIST, %struct.LIST* %1209, i32 0, i32 0
  store %union.rec* %1200, %union.rec** %1210, align 8
  %1211 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1212 = bitcast %union.rec* %1211 to %struct.word_type*
  %1213 = getelementptr inbounds %struct.word_type, %struct.word_type* %1212, i32 0, i32 0
  %1214 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1213, i32 0, i64 0
  %1215 = getelementptr inbounds %struct.LIST, %struct.LIST* %1214, i32 0, i32 1
  store %union.rec* %1200, %union.rec** %1215, align 8
  %1216 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1217 = bitcast %union.rec* %1216 to %struct.word_type*
  %1218 = getelementptr inbounds %struct.word_type, %struct.word_type* %1217, i32 0, i32 0
  %1219 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1218, i32 0, i64 0
  %1220 = getelementptr inbounds %struct.LIST, %struct.LIST* %1219, i32 0, i32 0
  store %union.rec* %1200, %union.rec** %1220, align 8
  store %union.rec* %1200, %union.rec** @xx_link, align 8
  %1221 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1221, %union.rec** @zz_res, align 8
  %1222 = load %union.rec*, %union.rec** %new_y, align 8
  store %union.rec* %1222, %union.rec** @zz_hold, align 8
  %1223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1224 = icmp eq %union.rec* %1223, null
  br i1 %1224, label %1225, label %1227

; <label>:1225                                    ; preds = %1194
  %1226 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1275

; <label>:1227                                    ; preds = %1194
  %1228 = load %union.rec*, %union.rec** @zz_res, align 8
  %1229 = icmp eq %union.rec* %1228, null
  br i1 %1229, label %1230, label %1232

; <label>:1230                                    ; preds = %1227
  %1231 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1273

; <label>:1232                                    ; preds = %1227
  %1233 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1234 = bitcast %union.rec* %1233 to %struct.word_type*
  %1235 = getelementptr inbounds %struct.word_type, %struct.word_type* %1234, i32 0, i32 0
  %1236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1235, i32 0, i64 0
  %1237 = getelementptr inbounds %struct.LIST, %struct.LIST* %1236, i32 0, i32 0
  %1238 = load %union.rec*, %union.rec** %1237, align 8
  store %union.rec* %1238, %union.rec** @zz_tmp, align 8
  %1239 = load %union.rec*, %union.rec** @zz_res, align 8
  %1240 = bitcast %union.rec* %1239 to %struct.word_type*
  %1241 = getelementptr inbounds %struct.word_type, %struct.word_type* %1240, i32 0, i32 0
  %1242 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1241, i32 0, i64 0
  %1243 = getelementptr inbounds %struct.LIST, %struct.LIST* %1242, i32 0, i32 0
  %1244 = load %union.rec*, %union.rec** %1243, align 8
  %1245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1246 = bitcast %union.rec* %1245 to %struct.word_type*
  %1247 = getelementptr inbounds %struct.word_type, %struct.word_type* %1246, i32 0, i32 0
  %1248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1247, i32 0, i64 0
  %1249 = getelementptr inbounds %struct.LIST, %struct.LIST* %1248, i32 0, i32 0
  store %union.rec* %1244, %union.rec** %1249, align 8
  %1250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1251 = load %union.rec*, %union.rec** @zz_res, align 8
  %1252 = bitcast %union.rec* %1251 to %struct.word_type*
  %1253 = getelementptr inbounds %struct.word_type, %struct.word_type* %1252, i32 0, i32 0
  %1254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1253, i32 0, i64 0
  %1255 = getelementptr inbounds %struct.LIST, %struct.LIST* %1254, i32 0, i32 0
  %1256 = load %union.rec*, %union.rec** %1255, align 8
  %1257 = bitcast %union.rec* %1256 to %struct.word_type*
  %1258 = getelementptr inbounds %struct.word_type, %struct.word_type* %1257, i32 0, i32 0
  %1259 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1258, i32 0, i64 0
  %1260 = getelementptr inbounds %struct.LIST, %struct.LIST* %1259, i32 0, i32 1
  store %union.rec* %1250, %union.rec** %1260, align 8
  %1261 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1262 = load %union.rec*, %union.rec** @zz_res, align 8
  %1263 = bitcast %union.rec* %1262 to %struct.word_type*
  %1264 = getelementptr inbounds %struct.word_type, %struct.word_type* %1263, i32 0, i32 0
  %1265 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1264, i32 0, i64 0
  %1266 = getelementptr inbounds %struct.LIST, %struct.LIST* %1265, i32 0, i32 0
  store %union.rec* %1261, %union.rec** %1266, align 8
  %1267 = load %union.rec*, %union.rec** @zz_res, align 8
  %1268 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1269 = bitcast %union.rec* %1268 to %struct.word_type*
  %1270 = getelementptr inbounds %struct.word_type, %struct.word_type* %1269, i32 0, i32 0
  %1271 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1270, i32 0, i64 0
  %1272 = getelementptr inbounds %struct.LIST, %struct.LIST* %1271, i32 0, i32 1
  store %union.rec* %1267, %union.rec** %1272, align 8
  br label %1273

; <label>:1273                                    ; preds = %1232, %1230
  %1274 = phi %union.rec* [ %1231, %1230 ], [ %1267, %1232 ]
  br label %1275

; <label>:1275                                    ; preds = %1273, %1225
  %1276 = phi %union.rec* [ %1226, %1225 ], [ %1274, %1273 ]
  %1277 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1277, %union.rec** @zz_res, align 8
  %1278 = load %union.rec*, %union.rec** %new_s1, align 8
  store %union.rec* %1278, %union.rec** @zz_hold, align 8
  %1279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1280 = icmp eq %union.rec* %1279, null
  br i1 %1280, label %1281, label %1283

; <label>:1281                                    ; preds = %1275
  %1282 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1331

; <label>:1283                                    ; preds = %1275
  %1284 = load %union.rec*, %union.rec** @zz_res, align 8
  %1285 = icmp eq %union.rec* %1284, null
  br i1 %1285, label %1286, label %1288

; <label>:1286                                    ; preds = %1283
  %1287 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1329

; <label>:1288                                    ; preds = %1283
  %1289 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1290 = bitcast %union.rec* %1289 to %struct.word_type*
  %1291 = getelementptr inbounds %struct.word_type, %struct.word_type* %1290, i32 0, i32 0
  %1292 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1291, i32 0, i64 1
  %1293 = getelementptr inbounds %struct.LIST, %struct.LIST* %1292, i32 0, i32 0
  %1294 = load %union.rec*, %union.rec** %1293, align 8
  store %union.rec* %1294, %union.rec** @zz_tmp, align 8
  %1295 = load %union.rec*, %union.rec** @zz_res, align 8
  %1296 = bitcast %union.rec* %1295 to %struct.word_type*
  %1297 = getelementptr inbounds %struct.word_type, %struct.word_type* %1296, i32 0, i32 0
  %1298 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1297, i32 0, i64 1
  %1299 = getelementptr inbounds %struct.LIST, %struct.LIST* %1298, i32 0, i32 0
  %1300 = load %union.rec*, %union.rec** %1299, align 8
  %1301 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1302 = bitcast %union.rec* %1301 to %struct.word_type*
  %1303 = getelementptr inbounds %struct.word_type, %struct.word_type* %1302, i32 0, i32 0
  %1304 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1303, i32 0, i64 1
  %1305 = getelementptr inbounds %struct.LIST, %struct.LIST* %1304, i32 0, i32 0
  store %union.rec* %1300, %union.rec** %1305, align 8
  %1306 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1307 = load %union.rec*, %union.rec** @zz_res, align 8
  %1308 = bitcast %union.rec* %1307 to %struct.word_type*
  %1309 = getelementptr inbounds %struct.word_type, %struct.word_type* %1308, i32 0, i32 0
  %1310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1309, i32 0, i64 1
  %1311 = getelementptr inbounds %struct.LIST, %struct.LIST* %1310, i32 0, i32 0
  %1312 = load %union.rec*, %union.rec** %1311, align 8
  %1313 = bitcast %union.rec* %1312 to %struct.word_type*
  %1314 = getelementptr inbounds %struct.word_type, %struct.word_type* %1313, i32 0, i32 0
  %1315 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1314, i32 0, i64 1
  %1316 = getelementptr inbounds %struct.LIST, %struct.LIST* %1315, i32 0, i32 1
  store %union.rec* %1306, %union.rec** %1316, align 8
  %1317 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1318 = load %union.rec*, %union.rec** @zz_res, align 8
  %1319 = bitcast %union.rec* %1318 to %struct.word_type*
  %1320 = getelementptr inbounds %struct.word_type, %struct.word_type* %1319, i32 0, i32 0
  %1321 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1320, i32 0, i64 1
  %1322 = getelementptr inbounds %struct.LIST, %struct.LIST* %1321, i32 0, i32 0
  store %union.rec* %1317, %union.rec** %1322, align 8
  %1323 = load %union.rec*, %union.rec** @zz_res, align 8
  %1324 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1325 = bitcast %union.rec* %1324 to %struct.word_type*
  %1326 = getelementptr inbounds %struct.word_type, %struct.word_type* %1325, i32 0, i32 0
  %1327 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1326, i32 0, i64 1
  %1328 = getelementptr inbounds %struct.LIST, %struct.LIST* %1327, i32 0, i32 1
  store %union.rec* %1323, %union.rec** %1328, align 8
  br label %1329

; <label>:1329                                    ; preds = %1288, %1286
  %1330 = phi %union.rec* [ %1287, %1286 ], [ %1323, %1288 ]
  br label %1331

; <label>:1331                                    ; preds = %1329, %1281
  %1332 = phi %union.rec* [ %1282, %1281 ], [ %1330, %1329 ]
  %1333 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1334 = zext i8 %1333 to i32
  store i32 %1334, i32* @zz_size, align 4
  %1335 = sext i32 %1334 to i64
  %1336 = icmp uge i64 %1335, 265
  br i1 %1336, label %1337, label %1340

; <label>:1337                                    ; preds = %1331
  %1338 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1339 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %1338)
  br label %1365

; <label>:1340                                    ; preds = %1331
  %1341 = load i32, i32* @zz_size, align 4
  %1342 = sext i32 %1341 to i64
  %1343 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1342
  %1344 = load %union.rec*, %union.rec** %1343, align 8
  %1345 = icmp eq %union.rec* %1344, null
  br i1 %1345, label %1346, label %1350

; <label>:1346                                    ; preds = %1340
  %1347 = load i32, i32* @zz_size, align 4
  %1348 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1349 = call %union.rec* @GetMemory(i32 %1347, %struct.FILE_POS* %1348)
  store %union.rec* %1349, %union.rec** @zz_hold, align 8
  br label %1364

; <label>:1350                                    ; preds = %1340
  %1351 = load i32, i32* @zz_size, align 4
  %1352 = sext i32 %1351 to i64
  %1353 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1352
  %1354 = load %union.rec*, %union.rec** %1353, align 8
  store %union.rec* %1354, %union.rec** @zz_hold, align 8
  store %union.rec* %1354, %union.rec** @zz_hold, align 8
  %1355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1356 = bitcast %union.rec* %1355 to %struct.word_type*
  %1357 = getelementptr inbounds %struct.word_type, %struct.word_type* %1356, i32 0, i32 0
  %1358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1357, i32 0, i64 0
  %1359 = getelementptr inbounds %struct.LIST, %struct.LIST* %1358, i32 0, i32 0
  %1360 = load %union.rec*, %union.rec** %1359, align 8
  %1361 = load i32, i32* @zz_size, align 4
  %1362 = sext i32 %1361 to i64
  %1363 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1362
  store %union.rec* %1360, %union.rec** %1363, align 8
  br label %1364

; <label>:1364                                    ; preds = %1350, %1346
  br label %1365

; <label>:1365                                    ; preds = %1364, %1337
  %1366 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1367 = bitcast %union.rec* %1366 to %struct.word_type*
  %1368 = getelementptr inbounds %struct.word_type, %struct.word_type* %1367, i32 0, i32 1
  %1369 = bitcast %union.FIRST_UNION* %1368 to %struct.anon*
  %1370 = getelementptr inbounds %struct.anon, %struct.anon* %1369, i32 0, i32 0
  store i8 0, i8* %1370, align 1
  %1371 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1372 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1373 = bitcast %union.rec* %1372 to %struct.word_type*
  %1374 = getelementptr inbounds %struct.word_type, %struct.word_type* %1373, i32 0, i32 0
  %1375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1374, i32 0, i64 1
  %1376 = getelementptr inbounds %struct.LIST, %struct.LIST* %1375, i32 0, i32 1
  store %union.rec* %1371, %union.rec** %1376, align 8
  %1377 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1378 = bitcast %union.rec* %1377 to %struct.word_type*
  %1379 = getelementptr inbounds %struct.word_type, %struct.word_type* %1378, i32 0, i32 0
  %1380 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1379, i32 0, i64 1
  %1381 = getelementptr inbounds %struct.LIST, %struct.LIST* %1380, i32 0, i32 0
  store %union.rec* %1371, %union.rec** %1381, align 8
  %1382 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1383 = bitcast %union.rec* %1382 to %struct.word_type*
  %1384 = getelementptr inbounds %struct.word_type, %struct.word_type* %1383, i32 0, i32 0
  %1385 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1384, i32 0, i64 0
  %1386 = getelementptr inbounds %struct.LIST, %struct.LIST* %1385, i32 0, i32 1
  store %union.rec* %1371, %union.rec** %1386, align 8
  %1387 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1388 = bitcast %union.rec* %1387 to %struct.word_type*
  %1389 = getelementptr inbounds %struct.word_type, %struct.word_type* %1388, i32 0, i32 0
  %1390 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1389, i32 0, i64 0
  %1391 = getelementptr inbounds %struct.LIST, %struct.LIST* %1390, i32 0, i32 0
  store %union.rec* %1371, %union.rec** %1391, align 8
  store %union.rec* %1371, %union.rec** @xx_link, align 8
  %1392 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1392, %union.rec** @zz_res, align 8
  %1393 = load %union.rec*, %union.rec** %new_s1, align 8
  store %union.rec* %1393, %union.rec** @zz_hold, align 8
  %1394 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1395 = icmp eq %union.rec* %1394, null
  br i1 %1395, label %1396, label %1398

; <label>:1396                                    ; preds = %1365
  %1397 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1446

; <label>:1398                                    ; preds = %1365
  %1399 = load %union.rec*, %union.rec** @zz_res, align 8
  %1400 = icmp eq %union.rec* %1399, null
  br i1 %1400, label %1401, label %1403

; <label>:1401                                    ; preds = %1398
  %1402 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1444

; <label>:1403                                    ; preds = %1398
  %1404 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1405 = bitcast %union.rec* %1404 to %struct.word_type*
  %1406 = getelementptr inbounds %struct.word_type, %struct.word_type* %1405, i32 0, i32 0
  %1407 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1406, i32 0, i64 0
  %1408 = getelementptr inbounds %struct.LIST, %struct.LIST* %1407, i32 0, i32 0
  %1409 = load %union.rec*, %union.rec** %1408, align 8
  store %union.rec* %1409, %union.rec** @zz_tmp, align 8
  %1410 = load %union.rec*, %union.rec** @zz_res, align 8
  %1411 = bitcast %union.rec* %1410 to %struct.word_type*
  %1412 = getelementptr inbounds %struct.word_type, %struct.word_type* %1411, i32 0, i32 0
  %1413 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1412, i32 0, i64 0
  %1414 = getelementptr inbounds %struct.LIST, %struct.LIST* %1413, i32 0, i32 0
  %1415 = load %union.rec*, %union.rec** %1414, align 8
  %1416 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1417 = bitcast %union.rec* %1416 to %struct.word_type*
  %1418 = getelementptr inbounds %struct.word_type, %struct.word_type* %1417, i32 0, i32 0
  %1419 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1418, i32 0, i64 0
  %1420 = getelementptr inbounds %struct.LIST, %struct.LIST* %1419, i32 0, i32 0
  store %union.rec* %1415, %union.rec** %1420, align 8
  %1421 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1422 = load %union.rec*, %union.rec** @zz_res, align 8
  %1423 = bitcast %union.rec* %1422 to %struct.word_type*
  %1424 = getelementptr inbounds %struct.word_type, %struct.word_type* %1423, i32 0, i32 0
  %1425 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1424, i32 0, i64 0
  %1426 = getelementptr inbounds %struct.LIST, %struct.LIST* %1425, i32 0, i32 0
  %1427 = load %union.rec*, %union.rec** %1426, align 8
  %1428 = bitcast %union.rec* %1427 to %struct.word_type*
  %1429 = getelementptr inbounds %struct.word_type, %struct.word_type* %1428, i32 0, i32 0
  %1430 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1429, i32 0, i64 0
  %1431 = getelementptr inbounds %struct.LIST, %struct.LIST* %1430, i32 0, i32 1
  store %union.rec* %1421, %union.rec** %1431, align 8
  %1432 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1433 = load %union.rec*, %union.rec** @zz_res, align 8
  %1434 = bitcast %union.rec* %1433 to %struct.word_type*
  %1435 = getelementptr inbounds %struct.word_type, %struct.word_type* %1434, i32 0, i32 0
  %1436 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1435, i32 0, i64 0
  %1437 = getelementptr inbounds %struct.LIST, %struct.LIST* %1436, i32 0, i32 0
  store %union.rec* %1432, %union.rec** %1437, align 8
  %1438 = load %union.rec*, %union.rec** @zz_res, align 8
  %1439 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1440 = bitcast %union.rec* %1439 to %struct.word_type*
  %1441 = getelementptr inbounds %struct.word_type, %struct.word_type* %1440, i32 0, i32 0
  %1442 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1441, i32 0, i64 0
  %1443 = getelementptr inbounds %struct.LIST, %struct.LIST* %1442, i32 0, i32 1
  store %union.rec* %1438, %union.rec** %1443, align 8
  br label %1444

; <label>:1444                                    ; preds = %1403, %1401
  %1445 = phi %union.rec* [ %1402, %1401 ], [ %1438, %1403 ]
  br label %1446

; <label>:1446                                    ; preds = %1444, %1396
  %1447 = phi %union.rec* [ %1397, %1396 ], [ %1445, %1444 ]
  %1448 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1448, %union.rec** @zz_res, align 8
  %1449 = load %union.rec*, %union.rec** %new_s2, align 8
  store %union.rec* %1449, %union.rec** @zz_hold, align 8
  %1450 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1451 = icmp eq %union.rec* %1450, null
  br i1 %1451, label %1452, label %1454

; <label>:1452                                    ; preds = %1446
  %1453 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1502

; <label>:1454                                    ; preds = %1446
  %1455 = load %union.rec*, %union.rec** @zz_res, align 8
  %1456 = icmp eq %union.rec* %1455, null
  br i1 %1456, label %1457, label %1459

; <label>:1457                                    ; preds = %1454
  %1458 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1500

; <label>:1459                                    ; preds = %1454
  %1460 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1461 = bitcast %union.rec* %1460 to %struct.word_type*
  %1462 = getelementptr inbounds %struct.word_type, %struct.word_type* %1461, i32 0, i32 0
  %1463 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1462, i32 0, i64 1
  %1464 = getelementptr inbounds %struct.LIST, %struct.LIST* %1463, i32 0, i32 0
  %1465 = load %union.rec*, %union.rec** %1464, align 8
  store %union.rec* %1465, %union.rec** @zz_tmp, align 8
  %1466 = load %union.rec*, %union.rec** @zz_res, align 8
  %1467 = bitcast %union.rec* %1466 to %struct.word_type*
  %1468 = getelementptr inbounds %struct.word_type, %struct.word_type* %1467, i32 0, i32 0
  %1469 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1468, i32 0, i64 1
  %1470 = getelementptr inbounds %struct.LIST, %struct.LIST* %1469, i32 0, i32 0
  %1471 = load %union.rec*, %union.rec** %1470, align 8
  %1472 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1473 = bitcast %union.rec* %1472 to %struct.word_type*
  %1474 = getelementptr inbounds %struct.word_type, %struct.word_type* %1473, i32 0, i32 0
  %1475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1474, i32 0, i64 1
  %1476 = getelementptr inbounds %struct.LIST, %struct.LIST* %1475, i32 0, i32 0
  store %union.rec* %1471, %union.rec** %1476, align 8
  %1477 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1478 = load %union.rec*, %union.rec** @zz_res, align 8
  %1479 = bitcast %union.rec* %1478 to %struct.word_type*
  %1480 = getelementptr inbounds %struct.word_type, %struct.word_type* %1479, i32 0, i32 0
  %1481 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1480, i32 0, i64 1
  %1482 = getelementptr inbounds %struct.LIST, %struct.LIST* %1481, i32 0, i32 0
  %1483 = load %union.rec*, %union.rec** %1482, align 8
  %1484 = bitcast %union.rec* %1483 to %struct.word_type*
  %1485 = getelementptr inbounds %struct.word_type, %struct.word_type* %1484, i32 0, i32 0
  %1486 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1485, i32 0, i64 1
  %1487 = getelementptr inbounds %struct.LIST, %struct.LIST* %1486, i32 0, i32 1
  store %union.rec* %1477, %union.rec** %1487, align 8
  %1488 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1489 = load %union.rec*, %union.rec** @zz_res, align 8
  %1490 = bitcast %union.rec* %1489 to %struct.word_type*
  %1491 = getelementptr inbounds %struct.word_type, %struct.word_type* %1490, i32 0, i32 0
  %1492 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1491, i32 0, i64 1
  %1493 = getelementptr inbounds %struct.LIST, %struct.LIST* %1492, i32 0, i32 0
  store %union.rec* %1488, %union.rec** %1493, align 8
  %1494 = load %union.rec*, %union.rec** @zz_res, align 8
  %1495 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1496 = bitcast %union.rec* %1495 to %struct.word_type*
  %1497 = getelementptr inbounds %struct.word_type, %struct.word_type* %1496, i32 0, i32 0
  %1498 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1497, i32 0, i64 1
  %1499 = getelementptr inbounds %struct.LIST, %struct.LIST* %1498, i32 0, i32 1
  store %union.rec* %1494, %union.rec** %1499, align 8
  br label %1500

; <label>:1500                                    ; preds = %1459, %1457
  %1501 = phi %union.rec* [ %1458, %1457 ], [ %1494, %1459 ]
  br label %1502

; <label>:1502                                    ; preds = %1500, %1452
  %1503 = phi %union.rec* [ %1453, %1452 ], [ %1501, %1500 ]
  br label %1676

; <label>:1504                                    ; preds = %962
  %1505 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1506 = zext i8 %1505 to i32
  store i32 %1506, i32* @zz_size, align 4
  %1507 = sext i32 %1506 to i64
  %1508 = icmp uge i64 %1507, 265
  br i1 %1508, label %1509, label %1512

; <label>:1509                                    ; preds = %1504
  %1510 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1511 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %1510)
  br label %1537

; <label>:1512                                    ; preds = %1504
  %1513 = load i32, i32* @zz_size, align 4
  %1514 = sext i32 %1513 to i64
  %1515 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1514
  %1516 = load %union.rec*, %union.rec** %1515, align 8
  %1517 = icmp eq %union.rec* %1516, null
  br i1 %1517, label %1518, label %1522

; <label>:1518                                    ; preds = %1512
  %1519 = load i32, i32* @zz_size, align 4
  %1520 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1521 = call %union.rec* @GetMemory(i32 %1519, %struct.FILE_POS* %1520)
  store %union.rec* %1521, %union.rec** @zz_hold, align 8
  br label %1536

; <label>:1522                                    ; preds = %1512
  %1523 = load i32, i32* @zz_size, align 4
  %1524 = sext i32 %1523 to i64
  %1525 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1524
  %1526 = load %union.rec*, %union.rec** %1525, align 8
  store %union.rec* %1526, %union.rec** @zz_hold, align 8
  store %union.rec* %1526, %union.rec** @zz_hold, align 8
  %1527 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1528 = bitcast %union.rec* %1527 to %struct.word_type*
  %1529 = getelementptr inbounds %struct.word_type, %struct.word_type* %1528, i32 0, i32 0
  %1530 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1529, i32 0, i64 0
  %1531 = getelementptr inbounds %struct.LIST, %struct.LIST* %1530, i32 0, i32 0
  %1532 = load %union.rec*, %union.rec** %1531, align 8
  %1533 = load i32, i32* @zz_size, align 4
  %1534 = sext i32 %1533 to i64
  %1535 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1534
  store %union.rec* %1532, %union.rec** %1535, align 8
  br label %1536

; <label>:1536                                    ; preds = %1522, %1518
  br label %1537

; <label>:1537                                    ; preds = %1536, %1509
  %1538 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1539 = bitcast %union.rec* %1538 to %struct.word_type*
  %1540 = getelementptr inbounds %struct.word_type, %struct.word_type* %1539, i32 0, i32 1
  %1541 = bitcast %union.FIRST_UNION* %1540 to %struct.anon*
  %1542 = getelementptr inbounds %struct.anon, %struct.anon* %1541, i32 0, i32 0
  store i8 0, i8* %1542, align 1
  %1543 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1544 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1545 = bitcast %union.rec* %1544 to %struct.word_type*
  %1546 = getelementptr inbounds %struct.word_type, %struct.word_type* %1545, i32 0, i32 0
  %1547 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1546, i32 0, i64 1
  %1548 = getelementptr inbounds %struct.LIST, %struct.LIST* %1547, i32 0, i32 1
  store %union.rec* %1543, %union.rec** %1548, align 8
  %1549 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1550 = bitcast %union.rec* %1549 to %struct.word_type*
  %1551 = getelementptr inbounds %struct.word_type, %struct.word_type* %1550, i32 0, i32 0
  %1552 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1551, i32 0, i64 1
  %1553 = getelementptr inbounds %struct.LIST, %struct.LIST* %1552, i32 0, i32 0
  store %union.rec* %1543, %union.rec** %1553, align 8
  %1554 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1555 = bitcast %union.rec* %1554 to %struct.word_type*
  %1556 = getelementptr inbounds %struct.word_type, %struct.word_type* %1555, i32 0, i32 0
  %1557 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1556, i32 0, i64 0
  %1558 = getelementptr inbounds %struct.LIST, %struct.LIST* %1557, i32 0, i32 1
  store %union.rec* %1543, %union.rec** %1558, align 8
  %1559 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1560 = bitcast %union.rec* %1559 to %struct.word_type*
  %1561 = getelementptr inbounds %struct.word_type, %struct.word_type* %1560, i32 0, i32 0
  %1562 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1561, i32 0, i64 0
  %1563 = getelementptr inbounds %struct.LIST, %struct.LIST* %1562, i32 0, i32 0
  store %union.rec* %1543, %union.rec** %1563, align 8
  store %union.rec* %1543, %union.rec** @xx_link, align 8
  %1564 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1564, %union.rec** @zz_res, align 8
  %1565 = load %union.rec*, %union.rec** %new_y, align 8
  store %union.rec* %1565, %union.rec** @zz_hold, align 8
  %1566 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1567 = icmp eq %union.rec* %1566, null
  br i1 %1567, label %1568, label %1570

; <label>:1568                                    ; preds = %1537
  %1569 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1618

; <label>:1570                                    ; preds = %1537
  %1571 = load %union.rec*, %union.rec** @zz_res, align 8
  %1572 = icmp eq %union.rec* %1571, null
  br i1 %1572, label %1573, label %1575

; <label>:1573                                    ; preds = %1570
  %1574 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1616

; <label>:1575                                    ; preds = %1570
  %1576 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1577 = bitcast %union.rec* %1576 to %struct.word_type*
  %1578 = getelementptr inbounds %struct.word_type, %struct.word_type* %1577, i32 0, i32 0
  %1579 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1578, i32 0, i64 0
  %1580 = getelementptr inbounds %struct.LIST, %struct.LIST* %1579, i32 0, i32 0
  %1581 = load %union.rec*, %union.rec** %1580, align 8
  store %union.rec* %1581, %union.rec** @zz_tmp, align 8
  %1582 = load %union.rec*, %union.rec** @zz_res, align 8
  %1583 = bitcast %union.rec* %1582 to %struct.word_type*
  %1584 = getelementptr inbounds %struct.word_type, %struct.word_type* %1583, i32 0, i32 0
  %1585 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1584, i32 0, i64 0
  %1586 = getelementptr inbounds %struct.LIST, %struct.LIST* %1585, i32 0, i32 0
  %1587 = load %union.rec*, %union.rec** %1586, align 8
  %1588 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1589 = bitcast %union.rec* %1588 to %struct.word_type*
  %1590 = getelementptr inbounds %struct.word_type, %struct.word_type* %1589, i32 0, i32 0
  %1591 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1590, i32 0, i64 0
  %1592 = getelementptr inbounds %struct.LIST, %struct.LIST* %1591, i32 0, i32 0
  store %union.rec* %1587, %union.rec** %1592, align 8
  %1593 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1594 = load %union.rec*, %union.rec** @zz_res, align 8
  %1595 = bitcast %union.rec* %1594 to %struct.word_type*
  %1596 = getelementptr inbounds %struct.word_type, %struct.word_type* %1595, i32 0, i32 0
  %1597 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1596, i32 0, i64 0
  %1598 = getelementptr inbounds %struct.LIST, %struct.LIST* %1597, i32 0, i32 0
  %1599 = load %union.rec*, %union.rec** %1598, align 8
  %1600 = bitcast %union.rec* %1599 to %struct.word_type*
  %1601 = getelementptr inbounds %struct.word_type, %struct.word_type* %1600, i32 0, i32 0
  %1602 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1601, i32 0, i64 0
  %1603 = getelementptr inbounds %struct.LIST, %struct.LIST* %1602, i32 0, i32 1
  store %union.rec* %1593, %union.rec** %1603, align 8
  %1604 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1605 = load %union.rec*, %union.rec** @zz_res, align 8
  %1606 = bitcast %union.rec* %1605 to %struct.word_type*
  %1607 = getelementptr inbounds %struct.word_type, %struct.word_type* %1606, i32 0, i32 0
  %1608 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1607, i32 0, i64 0
  %1609 = getelementptr inbounds %struct.LIST, %struct.LIST* %1608, i32 0, i32 0
  store %union.rec* %1604, %union.rec** %1609, align 8
  %1610 = load %union.rec*, %union.rec** @zz_res, align 8
  %1611 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1612 = bitcast %union.rec* %1611 to %struct.word_type*
  %1613 = getelementptr inbounds %struct.word_type, %struct.word_type* %1612, i32 0, i32 0
  %1614 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1613, i32 0, i64 0
  %1615 = getelementptr inbounds %struct.LIST, %struct.LIST* %1614, i32 0, i32 1
  store %union.rec* %1610, %union.rec** %1615, align 8
  br label %1616

; <label>:1616                                    ; preds = %1575, %1573
  %1617 = phi %union.rec* [ %1574, %1573 ], [ %1610, %1575 ]
  br label %1618

; <label>:1618                                    ; preds = %1616, %1568
  %1619 = phi %union.rec* [ %1569, %1568 ], [ %1617, %1616 ]
  %1620 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1620, %union.rec** @zz_res, align 8
  %1621 = load %union.rec*, %union.rec** %new_s2, align 8
  store %union.rec* %1621, %union.rec** @zz_hold, align 8
  %1622 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1623 = icmp eq %union.rec* %1622, null
  br i1 %1623, label %1624, label %1626

; <label>:1624                                    ; preds = %1618
  %1625 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1674

; <label>:1626                                    ; preds = %1618
  %1627 = load %union.rec*, %union.rec** @zz_res, align 8
  %1628 = icmp eq %union.rec* %1627, null
  br i1 %1628, label %1629, label %1631

; <label>:1629                                    ; preds = %1626
  %1630 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1672

; <label>:1631                                    ; preds = %1626
  %1632 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1633 = bitcast %union.rec* %1632 to %struct.word_type*
  %1634 = getelementptr inbounds %struct.word_type, %struct.word_type* %1633, i32 0, i32 0
  %1635 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1634, i32 0, i64 1
  %1636 = getelementptr inbounds %struct.LIST, %struct.LIST* %1635, i32 0, i32 0
  %1637 = load %union.rec*, %union.rec** %1636, align 8
  store %union.rec* %1637, %union.rec** @zz_tmp, align 8
  %1638 = load %union.rec*, %union.rec** @zz_res, align 8
  %1639 = bitcast %union.rec* %1638 to %struct.word_type*
  %1640 = getelementptr inbounds %struct.word_type, %struct.word_type* %1639, i32 0, i32 0
  %1641 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1640, i32 0, i64 1
  %1642 = getelementptr inbounds %struct.LIST, %struct.LIST* %1641, i32 0, i32 0
  %1643 = load %union.rec*, %union.rec** %1642, align 8
  %1644 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1645 = bitcast %union.rec* %1644 to %struct.word_type*
  %1646 = getelementptr inbounds %struct.word_type, %struct.word_type* %1645, i32 0, i32 0
  %1647 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1646, i32 0, i64 1
  %1648 = getelementptr inbounds %struct.LIST, %struct.LIST* %1647, i32 0, i32 0
  store %union.rec* %1643, %union.rec** %1648, align 8
  %1649 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1650 = load %union.rec*, %union.rec** @zz_res, align 8
  %1651 = bitcast %union.rec* %1650 to %struct.word_type*
  %1652 = getelementptr inbounds %struct.word_type, %struct.word_type* %1651, i32 0, i32 0
  %1653 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1652, i32 0, i64 1
  %1654 = getelementptr inbounds %struct.LIST, %struct.LIST* %1653, i32 0, i32 0
  %1655 = load %union.rec*, %union.rec** %1654, align 8
  %1656 = bitcast %union.rec* %1655 to %struct.word_type*
  %1657 = getelementptr inbounds %struct.word_type, %struct.word_type* %1656, i32 0, i32 0
  %1658 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1657, i32 0, i64 1
  %1659 = getelementptr inbounds %struct.LIST, %struct.LIST* %1658, i32 0, i32 1
  store %union.rec* %1649, %union.rec** %1659, align 8
  %1660 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1661 = load %union.rec*, %union.rec** @zz_res, align 8
  %1662 = bitcast %union.rec* %1661 to %struct.word_type*
  %1663 = getelementptr inbounds %struct.word_type, %struct.word_type* %1662, i32 0, i32 0
  %1664 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1663, i32 0, i64 1
  %1665 = getelementptr inbounds %struct.LIST, %struct.LIST* %1664, i32 0, i32 0
  store %union.rec* %1660, %union.rec** %1665, align 8
  %1666 = load %union.rec*, %union.rec** @zz_res, align 8
  %1667 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1668 = bitcast %union.rec* %1667 to %struct.word_type*
  %1669 = getelementptr inbounds %struct.word_type, %struct.word_type* %1668, i32 0, i32 0
  %1670 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1669, i32 0, i64 1
  %1671 = getelementptr inbounds %struct.LIST, %struct.LIST* %1670, i32 0, i32 1
  store %union.rec* %1666, %union.rec** %1671, align 8
  br label %1672

; <label>:1672                                    ; preds = %1631, %1629
  %1673 = phi %union.rec* [ %1630, %1629 ], [ %1666, %1631 ]
  br label %1674

; <label>:1674                                    ; preds = %1672, %1624
  %1675 = phi %union.rec* [ %1625, %1624 ], [ %1673, %1672 ]
  br label %1676

; <label>:1676                                    ; preds = %1674, %1502
  %1677 = load %union.rec*, %union.rec** %sh, align 8
  %1678 = load %union.rec*, %union.rec** %3, align 8
  %1679 = icmp eq %union.rec* %1677, %1678
  br i1 %1679, label %1680, label %1708

; <label>:1680                                    ; preds = %1676
  %1681 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %1681, %union.rec** %new_sh, align 8
  %1682 = load %union.rec*, %union.rec** %s2, align 8
  %1683 = bitcast %union.rec* %1682 to %struct.word_type*
  %1684 = getelementptr inbounds %struct.word_type, %struct.word_type* %1683, i32 0, i32 3
  %1685 = bitcast %union.THIRD_UNION* %1684 to %struct.anon.6*
  %1686 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1685, i32 0, i32 0
  %1687 = getelementptr inbounds [2 x i32], [2 x i32]* %1686, i32 0, i64 0
  %1688 = load i32, i32* %1687, align 4
  %1689 = load %union.rec*, %union.rec** %new_sh, align 8
  %1690 = bitcast %union.rec* %1689 to %struct.word_type*
  %1691 = getelementptr inbounds %struct.word_type, %struct.word_type* %1690, i32 0, i32 3
  %1692 = bitcast %union.THIRD_UNION* %1691 to %struct.anon.6*
  %1693 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1692, i32 0, i32 0
  %1694 = getelementptr inbounds [2 x i32], [2 x i32]* %1693, i32 0, i64 0
  store i32 %1688, i32* %1694, align 4
  %1695 = load %union.rec*, %union.rec** %s2, align 8
  %1696 = bitcast %union.rec* %1695 to %struct.word_type*
  %1697 = getelementptr inbounds %struct.word_type, %struct.word_type* %1696, i32 0, i32 3
  %1698 = bitcast %union.THIRD_UNION* %1697 to %struct.anon.6*
  %1699 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1698, i32 0, i32 1
  %1700 = getelementptr inbounds [2 x i32], [2 x i32]* %1699, i32 0, i64 0
  %1701 = load i32, i32* %1700, align 4
  %1702 = load %union.rec*, %union.rec** %new_sh, align 8
  %1703 = bitcast %union.rec* %1702 to %struct.word_type*
  %1704 = getelementptr inbounds %struct.word_type, %struct.word_type* %1703, i32 0, i32 3
  %1705 = bitcast %union.THIRD_UNION* %1704 to %struct.anon.6*
  %1706 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1705, i32 0, i32 1
  %1707 = getelementptr inbounds [2 x i32], [2 x i32]* %1706, i32 0, i64 0
  store i32 %1701, i32* %1707, align 4
  br label %2102

; <label>:1708                                    ; preds = %1676
  %1709 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 26), align 1
  %1710 = zext i8 %1709 to i32
  store i32 %1710, i32* @zz_size, align 4
  %1711 = sext i32 %1710 to i64
  %1712 = icmp uge i64 %1711, 265
  br i1 %1712, label %1713, label %1716

; <label>:1713                                    ; preds = %1708
  %1714 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1715 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %1714)
  br label %1741

; <label>:1716                                    ; preds = %1708
  %1717 = load i32, i32* @zz_size, align 4
  %1718 = sext i32 %1717 to i64
  %1719 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1718
  %1720 = load %union.rec*, %union.rec** %1719, align 8
  %1721 = icmp eq %union.rec* %1720, null
  br i1 %1721, label %1722, label %1726

; <label>:1722                                    ; preds = %1716
  %1723 = load i32, i32* @zz_size, align 4
  %1724 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1725 = call %union.rec* @GetMemory(i32 %1723, %struct.FILE_POS* %1724)
  store %union.rec* %1725, %union.rec** @zz_hold, align 8
  br label %1740

; <label>:1726                                    ; preds = %1716
  %1727 = load i32, i32* @zz_size, align 4
  %1728 = sext i32 %1727 to i64
  %1729 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1728
  %1730 = load %union.rec*, %union.rec** %1729, align 8
  store %union.rec* %1730, %union.rec** @zz_hold, align 8
  store %union.rec* %1730, %union.rec** @zz_hold, align 8
  %1731 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1732 = bitcast %union.rec* %1731 to %struct.word_type*
  %1733 = getelementptr inbounds %struct.word_type, %struct.word_type* %1732, i32 0, i32 0
  %1734 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1733, i32 0, i64 0
  %1735 = getelementptr inbounds %struct.LIST, %struct.LIST* %1734, i32 0, i32 0
  %1736 = load %union.rec*, %union.rec** %1735, align 8
  %1737 = load i32, i32* @zz_size, align 4
  %1738 = sext i32 %1737 to i64
  %1739 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1738
  store %union.rec* %1736, %union.rec** %1739, align 8
  br label %1740

; <label>:1740                                    ; preds = %1726, %1722
  br label %1741

; <label>:1741                                    ; preds = %1740, %1713
  %1742 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1743 = bitcast %union.rec* %1742 to %struct.word_type*
  %1744 = getelementptr inbounds %struct.word_type, %struct.word_type* %1743, i32 0, i32 1
  %1745 = bitcast %union.FIRST_UNION* %1744 to %struct.anon*
  %1746 = getelementptr inbounds %struct.anon, %struct.anon* %1745, i32 0, i32 0
  store i8 26, i8* %1746, align 1
  %1747 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1748 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1749 = bitcast %union.rec* %1748 to %struct.word_type*
  %1750 = getelementptr inbounds %struct.word_type, %struct.word_type* %1749, i32 0, i32 0
  %1751 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1750, i32 0, i64 1
  %1752 = getelementptr inbounds %struct.LIST, %struct.LIST* %1751, i32 0, i32 1
  store %union.rec* %1747, %union.rec** %1752, align 8
  %1753 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1754 = bitcast %union.rec* %1753 to %struct.word_type*
  %1755 = getelementptr inbounds %struct.word_type, %struct.word_type* %1754, i32 0, i32 0
  %1756 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1755, i32 0, i64 1
  %1757 = getelementptr inbounds %struct.LIST, %struct.LIST* %1756, i32 0, i32 0
  store %union.rec* %1747, %union.rec** %1757, align 8
  %1758 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1759 = bitcast %union.rec* %1758 to %struct.word_type*
  %1760 = getelementptr inbounds %struct.word_type, %struct.word_type* %1759, i32 0, i32 0
  %1761 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1760, i32 0, i64 0
  %1762 = getelementptr inbounds %struct.LIST, %struct.LIST* %1761, i32 0, i32 1
  store %union.rec* %1747, %union.rec** %1762, align 8
  %1763 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1764 = bitcast %union.rec* %1763 to %struct.word_type*
  %1765 = getelementptr inbounds %struct.word_type, %struct.word_type* %1764, i32 0, i32 0
  %1766 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1765, i32 0, i64 0
  %1767 = getelementptr inbounds %struct.LIST, %struct.LIST* %1766, i32 0, i32 0
  store %union.rec* %1747, %union.rec** %1767, align 8
  store %union.rec* %1747, %union.rec** %new_sh, align 8
  %1768 = load %union.rec*, %union.rec** %sh, align 8
  %1769 = bitcast %union.rec* %1768 to %struct.word_type*
  %1770 = getelementptr inbounds %struct.word_type, %struct.word_type* %1769, i32 0, i32 1
  %1771 = bitcast %union.FIRST_UNION* %1770 to %struct.FILE_POS*
  %1772 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1771, i32 0, i32 2
  %1773 = load i16, i16* %1772, align 2
  %1774 = load %union.rec*, %union.rec** %new_sh, align 8
  %1775 = bitcast %union.rec* %1774 to %struct.word_type*
  %1776 = getelementptr inbounds %struct.word_type, %struct.word_type* %1775, i32 0, i32 1
  %1777 = bitcast %union.FIRST_UNION* %1776 to %struct.FILE_POS*
  %1778 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1777, i32 0, i32 2
  store i16 %1773, i16* %1778, align 2
  %1779 = load %union.rec*, %union.rec** %sh, align 8
  %1780 = bitcast %union.rec* %1779 to %struct.word_type*
  %1781 = getelementptr inbounds %struct.word_type, %struct.word_type* %1780, i32 0, i32 1
  %1782 = bitcast %union.FIRST_UNION* %1781 to %struct.FILE_POS*
  %1783 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1782, i32 0, i32 3
  %1784 = load i32, i32* %1783, align 4
  %1785 = and i32 %1784, 1048575
  %1786 = load %union.rec*, %union.rec** %new_sh, align 8
  %1787 = bitcast %union.rec* %1786 to %struct.word_type*
  %1788 = getelementptr inbounds %struct.word_type, %struct.word_type* %1787, i32 0, i32 1
  %1789 = bitcast %union.FIRST_UNION* %1788 to %struct.FILE_POS*
  %1790 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1789, i32 0, i32 3
  %1791 = load i32, i32* %1790, align 4
  %1792 = and i32 %1785, 1048575
  %1793 = and i32 %1791, -1048576
  %1794 = or i32 %1793, %1792
  store i32 %1794, i32* %1790, align 4
  %1795 = load %union.rec*, %union.rec** %sh, align 8
  %1796 = bitcast %union.rec* %1795 to %struct.word_type*
  %1797 = getelementptr inbounds %struct.word_type, %struct.word_type* %1796, i32 0, i32 1
  %1798 = bitcast %union.FIRST_UNION* %1797 to %struct.FILE_POS*
  %1799 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1798, i32 0, i32 3
  %1800 = load i32, i32* %1799, align 4
  %1801 = lshr i32 %1800, 20
  %1802 = load %union.rec*, %union.rec** %new_sh, align 8
  %1803 = bitcast %union.rec* %1802 to %struct.word_type*
  %1804 = getelementptr inbounds %struct.word_type, %struct.word_type* %1803, i32 0, i32 1
  %1805 = bitcast %union.FIRST_UNION* %1804 to %struct.FILE_POS*
  %1806 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1805, i32 0, i32 3
  %1807 = load i32, i32* %1806, align 4
  %1808 = and i32 %1801, 4095
  %1809 = shl i32 %1808, 20
  %1810 = and i32 %1807, 1048575
  %1811 = or i32 %1810, %1809
  store i32 %1811, i32* %1806, align 4
  %1812 = load %union.rec*, %union.rec** %sh, align 8
  %1813 = bitcast %union.rec* %1812 to %struct.word_type*
  %1814 = getelementptr inbounds %struct.word_type, %struct.word_type* %1813, i32 0, i32 3
  %1815 = bitcast %union.THIRD_UNION* %1814 to %struct.anon.6*
  %1816 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1815, i32 0, i32 0
  %1817 = getelementptr inbounds [2 x i32], [2 x i32]* %1816, i32 0, i64 0
  %1818 = load i32, i32* %1817, align 4
  %1819 = load %union.rec*, %union.rec** %new_sh, align 8
  %1820 = bitcast %union.rec* %1819 to %struct.closure_type*
  %1821 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1820, i32 0, i32 4
  %1822 = bitcast %union.FOURTH_UNION* %1821 to %struct.CONSTRAINT*
  %1823 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1822, i32 0, i32 0
  store i32 %1818, i32* %1823, align 4
  %1824 = load %union.rec*, %union.rec** %sh, align 8
  %1825 = bitcast %union.rec* %1824 to %struct.word_type*
  %1826 = getelementptr inbounds %struct.word_type, %struct.word_type* %1825, i32 0, i32 3
  %1827 = bitcast %union.THIRD_UNION* %1826 to %struct.anon.6*
  %1828 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1827, i32 0, i32 0
  %1829 = getelementptr inbounds [2 x i32], [2 x i32]* %1828, i32 0, i64 0
  %1830 = load i32, i32* %1829, align 4
  %1831 = load %union.rec*, %union.rec** %sh, align 8
  %1832 = bitcast %union.rec* %1831 to %struct.word_type*
  %1833 = getelementptr inbounds %struct.word_type, %struct.word_type* %1832, i32 0, i32 3
  %1834 = bitcast %union.THIRD_UNION* %1833 to %struct.anon.6*
  %1835 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1834, i32 0, i32 1
  %1836 = getelementptr inbounds [2 x i32], [2 x i32]* %1835, i32 0, i64 0
  %1837 = load i32, i32* %1836, align 4
  %1838 = add nsw i32 %1830, %1837
  %1839 = load %union.rec*, %union.rec** %new_sh, align 8
  %1840 = bitcast %union.rec* %1839 to %struct.closure_type*
  %1841 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1840, i32 0, i32 4
  %1842 = bitcast %union.FOURTH_UNION* %1841 to %struct.CONSTRAINT*
  %1843 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1842, i32 0, i32 1
  store i32 %1838, i32* %1843, align 4
  %1844 = load %union.rec*, %union.rec** %sh, align 8
  %1845 = bitcast %union.rec* %1844 to %struct.word_type*
  %1846 = getelementptr inbounds %struct.word_type, %struct.word_type* %1845, i32 0, i32 3
  %1847 = bitcast %union.THIRD_UNION* %1846 to %struct.anon.6*
  %1848 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1847, i32 0, i32 1
  %1849 = getelementptr inbounds [2 x i32], [2 x i32]* %1848, i32 0, i64 0
  %1850 = load i32, i32* %1849, align 4
  %1851 = load %union.rec*, %union.rec** %new_sh, align 8
  %1852 = bitcast %union.rec* %1851 to %struct.closure_type*
  %1853 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1852, i32 0, i32 4
  %1854 = bitcast %union.FOURTH_UNION* %1853 to %struct.CONSTRAINT*
  %1855 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1854, i32 0, i32 2
  store i32 %1850, i32* %1855, align 4
  %1856 = load %union.rec*, %union.rec** %sh, align 8
  %1857 = bitcast %union.rec* %1856 to %struct.word_type*
  %1858 = getelementptr inbounds %struct.word_type, %struct.word_type* %1857, i32 0, i32 3
  %1859 = bitcast %union.THIRD_UNION* %1858 to %struct.anon.6*
  %1860 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1859, i32 0, i32 0
  %1861 = getelementptr inbounds [2 x i32], [2 x i32]* %1860, i32 0, i64 0
  %1862 = load i32, i32* %1861, align 4
  %1863 = load %union.rec*, %union.rec** %new_sh, align 8
  %1864 = bitcast %union.rec* %1863 to %struct.word_type*
  %1865 = getelementptr inbounds %struct.word_type, %struct.word_type* %1864, i32 0, i32 3
  %1866 = bitcast %union.THIRD_UNION* %1865 to %struct.anon.6*
  %1867 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1866, i32 0, i32 0
  %1868 = getelementptr inbounds [2 x i32], [2 x i32]* %1867, i32 0, i64 0
  store i32 %1862, i32* %1868, align 4
  %1869 = load %union.rec*, %union.rec** %sh, align 8
  %1870 = bitcast %union.rec* %1869 to %struct.word_type*
  %1871 = getelementptr inbounds %struct.word_type, %struct.word_type* %1870, i32 0, i32 3
  %1872 = bitcast %union.THIRD_UNION* %1871 to %struct.anon.6*
  %1873 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1872, i32 0, i32 1
  %1874 = getelementptr inbounds [2 x i32], [2 x i32]* %1873, i32 0, i64 0
  %1875 = load i32, i32* %1874, align 4
  %1876 = load %union.rec*, %union.rec** %new_sh, align 8
  %1877 = bitcast %union.rec* %1876 to %struct.word_type*
  %1878 = getelementptr inbounds %struct.word_type, %struct.word_type* %1877, i32 0, i32 3
  %1879 = bitcast %union.THIRD_UNION* %1878 to %struct.anon.6*
  %1880 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1879, i32 0, i32 1
  %1881 = getelementptr inbounds [2 x i32], [2 x i32]* %1880, i32 0, i64 0
  store i32 %1875, i32* %1881, align 4
  %1882 = load %union.rec*, %union.rec** %new_sh, align 8
  %1883 = bitcast %union.rec* %1882 to %struct.word_type*
  %1884 = getelementptr inbounds %struct.word_type, %struct.word_type* %1883, i32 0, i32 3
  %1885 = bitcast %union.THIRD_UNION* %1884 to %struct.anon.6*
  %1886 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1885, i32 0, i32 1
  %1887 = getelementptr inbounds [2 x i32], [2 x i32]* %1886, i32 0, i64 1
  store i32 0, i32* %1887, align 4
  %1888 = load %union.rec*, %union.rec** %new_sh, align 8
  %1889 = bitcast %union.rec* %1888 to %struct.word_type*
  %1890 = getelementptr inbounds %struct.word_type, %struct.word_type* %1889, i32 0, i32 3
  %1891 = bitcast %union.THIRD_UNION* %1890 to %struct.anon.6*
  %1892 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1891, i32 0, i32 0
  %1893 = getelementptr inbounds [2 x i32], [2 x i32]* %1892, i32 0, i64 1
  store i32 0, i32* %1893, align 4
  %1894 = load %union.rec*, %union.rec** %sh, align 8
  %1895 = bitcast %union.rec* %1894 to %struct.word_type*
  %1896 = getelementptr inbounds %struct.word_type, %struct.word_type* %1895, i32 0, i32 1
  %1897 = bitcast %union.FIRST_UNION* %1896 to %struct.FILE_POS*
  %1898 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), %struct.FILE_POS* %1897)
  store %union.rec* %1898, %union.rec** %tmp, align 8
  %1899 = load %union.rec*, %union.rec** %tmp, align 8
  %1900 = bitcast %union.rec* %1899 to %struct.word_type*
  %1901 = getelementptr inbounds %struct.word_type, %struct.word_type* %1900, i32 0, i32 3
  %1902 = bitcast %union.THIRD_UNION* %1901 to %struct.anon.6*
  %1903 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1902, i32 0, i32 1
  %1904 = getelementptr inbounds [2 x i32], [2 x i32]* %1903, i32 0, i64 0
  store i32 0, i32* %1904, align 4
  %1905 = load %union.rec*, %union.rec** %tmp, align 8
  %1906 = bitcast %union.rec* %1905 to %struct.word_type*
  %1907 = getelementptr inbounds %struct.word_type, %struct.word_type* %1906, i32 0, i32 3
  %1908 = bitcast %union.THIRD_UNION* %1907 to %struct.anon.6*
  %1909 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1908, i32 0, i32 0
  %1910 = getelementptr inbounds [2 x i32], [2 x i32]* %1909, i32 0, i64 0
  store i32 0, i32* %1910, align 4
  %1911 = load %union.rec*, %union.rec** %tmp, align 8
  %1912 = bitcast %union.rec* %1911 to %struct.word_type*
  %1913 = getelementptr inbounds %struct.word_type, %struct.word_type* %1912, i32 0, i32 3
  %1914 = bitcast %union.THIRD_UNION* %1913 to %struct.anon.6*
  %1915 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1914, i32 0, i32 1
  %1916 = getelementptr inbounds [2 x i32], [2 x i32]* %1915, i32 0, i64 1
  store i32 0, i32* %1916, align 4
  %1917 = load %union.rec*, %union.rec** %tmp, align 8
  %1918 = bitcast %union.rec* %1917 to %struct.word_type*
  %1919 = getelementptr inbounds %struct.word_type, %struct.word_type* %1918, i32 0, i32 3
  %1920 = bitcast %union.THIRD_UNION* %1919 to %struct.anon.6*
  %1921 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1920, i32 0, i32 0
  %1922 = getelementptr inbounds [2 x i32], [2 x i32]* %1921, i32 0, i64 1
  store i32 0, i32* %1922, align 4
  %1923 = load %union.rec*, %union.rec** %tmp, align 8
  %1924 = bitcast %union.rec* %1923 to %struct.word_type*
  %1925 = getelementptr inbounds %struct.word_type, %struct.word_type* %1924, i32 0, i32 2
  %1926 = bitcast %union.SECOND_UNION* %1925 to %struct.anon.1*
  %1927 = bitcast %struct.anon.1* %1926 to i32*
  %1928 = load i32, i32* %1927, align 4
  %1929 = and i32 %1928, -1610612737
  %1930 = or i32 %1929, 536870912
  store i32 %1930, i32* %1927, align 4
  %1931 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1932 = zext i8 %1931 to i32
  store i32 %1932, i32* @zz_size, align 4
  %1933 = sext i32 %1932 to i64
  %1934 = icmp uge i64 %1933, 265
  br i1 %1934, label %1935, label %1938

; <label>:1935                                    ; preds = %1741
  %1936 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1937 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %1936)
  br label %1963

; <label>:1938                                    ; preds = %1741
  %1939 = load i32, i32* @zz_size, align 4
  %1940 = sext i32 %1939 to i64
  %1941 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1940
  %1942 = load %union.rec*, %union.rec** %1941, align 8
  %1943 = icmp eq %union.rec* %1942, null
  br i1 %1943, label %1944, label %1948

; <label>:1944                                    ; preds = %1938
  %1945 = load i32, i32* @zz_size, align 4
  %1946 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1947 = call %union.rec* @GetMemory(i32 %1945, %struct.FILE_POS* %1946)
  store %union.rec* %1947, %union.rec** @zz_hold, align 8
  br label %1962

; <label>:1948                                    ; preds = %1938
  %1949 = load i32, i32* @zz_size, align 4
  %1950 = sext i32 %1949 to i64
  %1951 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1950
  %1952 = load %union.rec*, %union.rec** %1951, align 8
  store %union.rec* %1952, %union.rec** @zz_hold, align 8
  store %union.rec* %1952, %union.rec** @zz_hold, align 8
  %1953 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1954 = bitcast %union.rec* %1953 to %struct.word_type*
  %1955 = getelementptr inbounds %struct.word_type, %struct.word_type* %1954, i32 0, i32 0
  %1956 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1955, i32 0, i64 0
  %1957 = getelementptr inbounds %struct.LIST, %struct.LIST* %1956, i32 0, i32 0
  %1958 = load %union.rec*, %union.rec** %1957, align 8
  %1959 = load i32, i32* @zz_size, align 4
  %1960 = sext i32 %1959 to i64
  %1961 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1960
  store %union.rec* %1958, %union.rec** %1961, align 8
  br label %1962

; <label>:1962                                    ; preds = %1948, %1944
  br label %1963

; <label>:1963                                    ; preds = %1962, %1935
  %1964 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1965 = bitcast %union.rec* %1964 to %struct.word_type*
  %1966 = getelementptr inbounds %struct.word_type, %struct.word_type* %1965, i32 0, i32 1
  %1967 = bitcast %union.FIRST_UNION* %1966 to %struct.anon*
  %1968 = getelementptr inbounds %struct.anon, %struct.anon* %1967, i32 0, i32 0
  store i8 0, i8* %1968, align 1
  %1969 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1970 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1971 = bitcast %union.rec* %1970 to %struct.word_type*
  %1972 = getelementptr inbounds %struct.word_type, %struct.word_type* %1971, i32 0, i32 0
  %1973 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1972, i32 0, i64 1
  %1974 = getelementptr inbounds %struct.LIST, %struct.LIST* %1973, i32 0, i32 1
  store %union.rec* %1969, %union.rec** %1974, align 8
  %1975 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1976 = bitcast %union.rec* %1975 to %struct.word_type*
  %1977 = getelementptr inbounds %struct.word_type, %struct.word_type* %1976, i32 0, i32 0
  %1978 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1977, i32 0, i64 1
  %1979 = getelementptr inbounds %struct.LIST, %struct.LIST* %1978, i32 0, i32 0
  store %union.rec* %1969, %union.rec** %1979, align 8
  %1980 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1981 = bitcast %union.rec* %1980 to %struct.word_type*
  %1982 = getelementptr inbounds %struct.word_type, %struct.word_type* %1981, i32 0, i32 0
  %1983 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1982, i32 0, i64 0
  %1984 = getelementptr inbounds %struct.LIST, %struct.LIST* %1983, i32 0, i32 1
  store %union.rec* %1969, %union.rec** %1984, align 8
  %1985 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1986 = bitcast %union.rec* %1985 to %struct.word_type*
  %1987 = getelementptr inbounds %struct.word_type, %struct.word_type* %1986, i32 0, i32 0
  %1988 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1987, i32 0, i64 0
  %1989 = getelementptr inbounds %struct.LIST, %struct.LIST* %1988, i32 0, i32 0
  store %union.rec* %1969, %union.rec** %1989, align 8
  store %union.rec* %1969, %union.rec** @xx_link, align 8
  %1990 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1990, %union.rec** @zz_res, align 8
  %1991 = load %union.rec*, %union.rec** %new_sh, align 8
  store %union.rec* %1991, %union.rec** @zz_hold, align 8
  %1992 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1993 = icmp eq %union.rec* %1992, null
  br i1 %1993, label %1994, label %1996

; <label>:1994                                    ; preds = %1963
  %1995 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2044

; <label>:1996                                    ; preds = %1963
  %1997 = load %union.rec*, %union.rec** @zz_res, align 8
  %1998 = icmp eq %union.rec* %1997, null
  br i1 %1998, label %1999, label %2001

; <label>:1999                                    ; preds = %1996
  %2000 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2042

; <label>:2001                                    ; preds = %1996
  %2002 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2003 = bitcast %union.rec* %2002 to %struct.word_type*
  %2004 = getelementptr inbounds %struct.word_type, %struct.word_type* %2003, i32 0, i32 0
  %2005 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2004, i32 0, i64 0
  %2006 = getelementptr inbounds %struct.LIST, %struct.LIST* %2005, i32 0, i32 0
  %2007 = load %union.rec*, %union.rec** %2006, align 8
  store %union.rec* %2007, %union.rec** @zz_tmp, align 8
  %2008 = load %union.rec*, %union.rec** @zz_res, align 8
  %2009 = bitcast %union.rec* %2008 to %struct.word_type*
  %2010 = getelementptr inbounds %struct.word_type, %struct.word_type* %2009, i32 0, i32 0
  %2011 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2010, i32 0, i64 0
  %2012 = getelementptr inbounds %struct.LIST, %struct.LIST* %2011, i32 0, i32 0
  %2013 = load %union.rec*, %union.rec** %2012, align 8
  %2014 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2015 = bitcast %union.rec* %2014 to %struct.word_type*
  %2016 = getelementptr inbounds %struct.word_type, %struct.word_type* %2015, i32 0, i32 0
  %2017 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2016, i32 0, i64 0
  %2018 = getelementptr inbounds %struct.LIST, %struct.LIST* %2017, i32 0, i32 0
  store %union.rec* %2013, %union.rec** %2018, align 8
  %2019 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2020 = load %union.rec*, %union.rec** @zz_res, align 8
  %2021 = bitcast %union.rec* %2020 to %struct.word_type*
  %2022 = getelementptr inbounds %struct.word_type, %struct.word_type* %2021, i32 0, i32 0
  %2023 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2022, i32 0, i64 0
  %2024 = getelementptr inbounds %struct.LIST, %struct.LIST* %2023, i32 0, i32 0
  %2025 = load %union.rec*, %union.rec** %2024, align 8
  %2026 = bitcast %union.rec* %2025 to %struct.word_type*
  %2027 = getelementptr inbounds %struct.word_type, %struct.word_type* %2026, i32 0, i32 0
  %2028 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2027, i32 0, i64 0
  %2029 = getelementptr inbounds %struct.LIST, %struct.LIST* %2028, i32 0, i32 1
  store %union.rec* %2019, %union.rec** %2029, align 8
  %2030 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2031 = load %union.rec*, %union.rec** @zz_res, align 8
  %2032 = bitcast %union.rec* %2031 to %struct.word_type*
  %2033 = getelementptr inbounds %struct.word_type, %struct.word_type* %2032, i32 0, i32 0
  %2034 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2033, i32 0, i64 0
  %2035 = getelementptr inbounds %struct.LIST, %struct.LIST* %2034, i32 0, i32 0
  store %union.rec* %2030, %union.rec** %2035, align 8
  %2036 = load %union.rec*, %union.rec** @zz_res, align 8
  %2037 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2038 = bitcast %union.rec* %2037 to %struct.word_type*
  %2039 = getelementptr inbounds %struct.word_type, %struct.word_type* %2038, i32 0, i32 0
  %2040 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2039, i32 0, i64 0
  %2041 = getelementptr inbounds %struct.LIST, %struct.LIST* %2040, i32 0, i32 1
  store %union.rec* %2036, %union.rec** %2041, align 8
  br label %2042

; <label>:2042                                    ; preds = %2001, %1999
  %2043 = phi %union.rec* [ %2000, %1999 ], [ %2036, %2001 ]
  br label %2044

; <label>:2044                                    ; preds = %2042, %1994
  %2045 = phi %union.rec* [ %1995, %1994 ], [ %2043, %2042 ]
  %2046 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2046, %union.rec** @zz_res, align 8
  %2047 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %2047, %union.rec** @zz_hold, align 8
  %2048 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2049 = icmp eq %union.rec* %2048, null
  br i1 %2049, label %2050, label %2052

; <label>:2050                                    ; preds = %2044
  %2051 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2100

; <label>:2052                                    ; preds = %2044
  %2053 = load %union.rec*, %union.rec** @zz_res, align 8
  %2054 = icmp eq %union.rec* %2053, null
  br i1 %2054, label %2055, label %2057

; <label>:2055                                    ; preds = %2052
  %2056 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2098

; <label>:2057                                    ; preds = %2052
  %2058 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2059 = bitcast %union.rec* %2058 to %struct.word_type*
  %2060 = getelementptr inbounds %struct.word_type, %struct.word_type* %2059, i32 0, i32 0
  %2061 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2060, i32 0, i64 1
  %2062 = getelementptr inbounds %struct.LIST, %struct.LIST* %2061, i32 0, i32 0
  %2063 = load %union.rec*, %union.rec** %2062, align 8
  store %union.rec* %2063, %union.rec** @zz_tmp, align 8
  %2064 = load %union.rec*, %union.rec** @zz_res, align 8
  %2065 = bitcast %union.rec* %2064 to %struct.word_type*
  %2066 = getelementptr inbounds %struct.word_type, %struct.word_type* %2065, i32 0, i32 0
  %2067 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2066, i32 0, i64 1
  %2068 = getelementptr inbounds %struct.LIST, %struct.LIST* %2067, i32 0, i32 0
  %2069 = load %union.rec*, %union.rec** %2068, align 8
  %2070 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2071 = bitcast %union.rec* %2070 to %struct.word_type*
  %2072 = getelementptr inbounds %struct.word_type, %struct.word_type* %2071, i32 0, i32 0
  %2073 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2072, i32 0, i64 1
  %2074 = getelementptr inbounds %struct.LIST, %struct.LIST* %2073, i32 0, i32 0
  store %union.rec* %2069, %union.rec** %2074, align 8
  %2075 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2076 = load %union.rec*, %union.rec** @zz_res, align 8
  %2077 = bitcast %union.rec* %2076 to %struct.word_type*
  %2078 = getelementptr inbounds %struct.word_type, %struct.word_type* %2077, i32 0, i32 0
  %2079 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2078, i32 0, i64 1
  %2080 = getelementptr inbounds %struct.LIST, %struct.LIST* %2079, i32 0, i32 0
  %2081 = load %union.rec*, %union.rec** %2080, align 8
  %2082 = bitcast %union.rec* %2081 to %struct.word_type*
  %2083 = getelementptr inbounds %struct.word_type, %struct.word_type* %2082, i32 0, i32 0
  %2084 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2083, i32 0, i64 1
  %2085 = getelementptr inbounds %struct.LIST, %struct.LIST* %2084, i32 0, i32 1
  store %union.rec* %2075, %union.rec** %2085, align 8
  %2086 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2087 = load %union.rec*, %union.rec** @zz_res, align 8
  %2088 = bitcast %union.rec* %2087 to %struct.word_type*
  %2089 = getelementptr inbounds %struct.word_type, %struct.word_type* %2088, i32 0, i32 0
  %2090 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2089, i32 0, i64 1
  %2091 = getelementptr inbounds %struct.LIST, %struct.LIST* %2090, i32 0, i32 0
  store %union.rec* %2086, %union.rec** %2091, align 8
  %2092 = load %union.rec*, %union.rec** @zz_res, align 8
  %2093 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2094 = bitcast %union.rec* %2093 to %struct.word_type*
  %2095 = getelementptr inbounds %struct.word_type, %struct.word_type* %2094, i32 0, i32 0
  %2096 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2095, i32 0, i64 1
  %2097 = getelementptr inbounds %struct.LIST, %struct.LIST* %2096, i32 0, i32 1
  store %union.rec* %2092, %union.rec** %2097, align 8
  br label %2098

; <label>:2098                                    ; preds = %2057, %2055
  %2099 = phi %union.rec* [ %2056, %2055 ], [ %2092, %2057 ]
  br label %2100

; <label>:2100                                    ; preds = %2098, %2050
  %2101 = phi %union.rec* [ %2051, %2050 ], [ %2099, %2098 ]
  br label %2102

; <label>:2102                                    ; preds = %2100, %1680
  %2103 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %2104 = zext i8 %2103 to i32
  store i32 %2104, i32* @zz_size, align 4
  %2105 = sext i32 %2104 to i64
  %2106 = icmp uge i64 %2105, 265
  br i1 %2106, label %2107, label %2110

; <label>:2107                                    ; preds = %2102
  %2108 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2109 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %2108)
  br label %2135

; <label>:2110                                    ; preds = %2102
  %2111 = load i32, i32* @zz_size, align 4
  %2112 = sext i32 %2111 to i64
  %2113 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2112
  %2114 = load %union.rec*, %union.rec** %2113, align 8
  %2115 = icmp eq %union.rec* %2114, null
  br i1 %2115, label %2116, label %2120

; <label>:2116                                    ; preds = %2110
  %2117 = load i32, i32* @zz_size, align 4
  %2118 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2119 = call %union.rec* @GetMemory(i32 %2117, %struct.FILE_POS* %2118)
  store %union.rec* %2119, %union.rec** @zz_hold, align 8
  br label %2134

; <label>:2120                                    ; preds = %2110
  %2121 = load i32, i32* @zz_size, align 4
  %2122 = sext i32 %2121 to i64
  %2123 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2122
  %2124 = load %union.rec*, %union.rec** %2123, align 8
  store %union.rec* %2124, %union.rec** @zz_hold, align 8
  store %union.rec* %2124, %union.rec** @zz_hold, align 8
  %2125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2126 = bitcast %union.rec* %2125 to %struct.word_type*
  %2127 = getelementptr inbounds %struct.word_type, %struct.word_type* %2126, i32 0, i32 0
  %2128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2127, i32 0, i64 0
  %2129 = getelementptr inbounds %struct.LIST, %struct.LIST* %2128, i32 0, i32 0
  %2130 = load %union.rec*, %union.rec** %2129, align 8
  %2131 = load i32, i32* @zz_size, align 4
  %2132 = sext i32 %2131 to i64
  %2133 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2132
  store %union.rec* %2130, %union.rec** %2133, align 8
  br label %2134

; <label>:2134                                    ; preds = %2120, %2116
  br label %2135

; <label>:2135                                    ; preds = %2134, %2107
  %2136 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2137 = bitcast %union.rec* %2136 to %struct.word_type*
  %2138 = getelementptr inbounds %struct.word_type, %struct.word_type* %2137, i32 0, i32 1
  %2139 = bitcast %union.FIRST_UNION* %2138 to %struct.anon*
  %2140 = getelementptr inbounds %struct.anon, %struct.anon* %2139, i32 0, i32 0
  store i8 0, i8* %2140, align 1
  %2141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2143 = bitcast %union.rec* %2142 to %struct.word_type*
  %2144 = getelementptr inbounds %struct.word_type, %struct.word_type* %2143, i32 0, i32 0
  %2145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2144, i32 0, i64 1
  %2146 = getelementptr inbounds %struct.LIST, %struct.LIST* %2145, i32 0, i32 1
  store %union.rec* %2141, %union.rec** %2146, align 8
  %2147 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2148 = bitcast %union.rec* %2147 to %struct.word_type*
  %2149 = getelementptr inbounds %struct.word_type, %struct.word_type* %2148, i32 0, i32 0
  %2150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2149, i32 0, i64 1
  %2151 = getelementptr inbounds %struct.LIST, %struct.LIST* %2150, i32 0, i32 0
  store %union.rec* %2141, %union.rec** %2151, align 8
  %2152 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2153 = bitcast %union.rec* %2152 to %struct.word_type*
  %2154 = getelementptr inbounds %struct.word_type, %struct.word_type* %2153, i32 0, i32 0
  %2155 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2154, i32 0, i64 0
  %2156 = getelementptr inbounds %struct.LIST, %struct.LIST* %2155, i32 0, i32 1
  store %union.rec* %2141, %union.rec** %2156, align 8
  %2157 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2158 = bitcast %union.rec* %2157 to %struct.word_type*
  %2159 = getelementptr inbounds %struct.word_type, %struct.word_type* %2158, i32 0, i32 0
  %2160 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2159, i32 0, i64 0
  %2161 = getelementptr inbounds %struct.LIST, %struct.LIST* %2160, i32 0, i32 0
  store %union.rec* %2141, %union.rec** %2161, align 8
  store %union.rec* %2141, %union.rec** @xx_link, align 8
  %2162 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2162, %union.rec** @zz_res, align 8
  %2163 = load %union.rec*, %union.rec** %new_s2, align 8
  store %union.rec* %2163, %union.rec** @zz_hold, align 8
  %2164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2165 = icmp eq %union.rec* %2164, null
  br i1 %2165, label %2166, label %2168

; <label>:2166                                    ; preds = %2135
  %2167 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2216

; <label>:2168                                    ; preds = %2135
  %2169 = load %union.rec*, %union.rec** @zz_res, align 8
  %2170 = icmp eq %union.rec* %2169, null
  br i1 %2170, label %2171, label %2173

; <label>:2171                                    ; preds = %2168
  %2172 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2214

; <label>:2173                                    ; preds = %2168
  %2174 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2175 = bitcast %union.rec* %2174 to %struct.word_type*
  %2176 = getelementptr inbounds %struct.word_type, %struct.word_type* %2175, i32 0, i32 0
  %2177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2176, i32 0, i64 0
  %2178 = getelementptr inbounds %struct.LIST, %struct.LIST* %2177, i32 0, i32 0
  %2179 = load %union.rec*, %union.rec** %2178, align 8
  store %union.rec* %2179, %union.rec** @zz_tmp, align 8
  %2180 = load %union.rec*, %union.rec** @zz_res, align 8
  %2181 = bitcast %union.rec* %2180 to %struct.word_type*
  %2182 = getelementptr inbounds %struct.word_type, %struct.word_type* %2181, i32 0, i32 0
  %2183 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2182, i32 0, i64 0
  %2184 = getelementptr inbounds %struct.LIST, %struct.LIST* %2183, i32 0, i32 0
  %2185 = load %union.rec*, %union.rec** %2184, align 8
  %2186 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2187 = bitcast %union.rec* %2186 to %struct.word_type*
  %2188 = getelementptr inbounds %struct.word_type, %struct.word_type* %2187, i32 0, i32 0
  %2189 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2188, i32 0, i64 0
  %2190 = getelementptr inbounds %struct.LIST, %struct.LIST* %2189, i32 0, i32 0
  store %union.rec* %2185, %union.rec** %2190, align 8
  %2191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2192 = load %union.rec*, %union.rec** @zz_res, align 8
  %2193 = bitcast %union.rec* %2192 to %struct.word_type*
  %2194 = getelementptr inbounds %struct.word_type, %struct.word_type* %2193, i32 0, i32 0
  %2195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2194, i32 0, i64 0
  %2196 = getelementptr inbounds %struct.LIST, %struct.LIST* %2195, i32 0, i32 0
  %2197 = load %union.rec*, %union.rec** %2196, align 8
  %2198 = bitcast %union.rec* %2197 to %struct.word_type*
  %2199 = getelementptr inbounds %struct.word_type, %struct.word_type* %2198, i32 0, i32 0
  %2200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2199, i32 0, i64 0
  %2201 = getelementptr inbounds %struct.LIST, %struct.LIST* %2200, i32 0, i32 1
  store %union.rec* %2191, %union.rec** %2201, align 8
  %2202 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2203 = load %union.rec*, %union.rec** @zz_res, align 8
  %2204 = bitcast %union.rec* %2203 to %struct.word_type*
  %2205 = getelementptr inbounds %struct.word_type, %struct.word_type* %2204, i32 0, i32 0
  %2206 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2205, i32 0, i64 0
  %2207 = getelementptr inbounds %struct.LIST, %struct.LIST* %2206, i32 0, i32 0
  store %union.rec* %2202, %union.rec** %2207, align 8
  %2208 = load %union.rec*, %union.rec** @zz_res, align 8
  %2209 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2210 = bitcast %union.rec* %2209 to %struct.word_type*
  %2211 = getelementptr inbounds %struct.word_type, %struct.word_type* %2210, i32 0, i32 0
  %2212 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2211, i32 0, i64 0
  %2213 = getelementptr inbounds %struct.LIST, %struct.LIST* %2212, i32 0, i32 1
  store %union.rec* %2208, %union.rec** %2213, align 8
  br label %2214

; <label>:2214                                    ; preds = %2173, %2171
  %2215 = phi %union.rec* [ %2172, %2171 ], [ %2208, %2173 ]
  br label %2216

; <label>:2216                                    ; preds = %2214, %2166
  %2217 = phi %union.rec* [ %2167, %2166 ], [ %2215, %2214 ]
  %2218 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2218, %union.rec** @zz_res, align 8
  %2219 = load %union.rec*, %union.rec** %new_sh, align 8
  store %union.rec* %2219, %union.rec** @zz_hold, align 8
  %2220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2221 = icmp eq %union.rec* %2220, null
  br i1 %2221, label %2222, label %2224

; <label>:2222                                    ; preds = %2216
  %2223 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2272

; <label>:2224                                    ; preds = %2216
  %2225 = load %union.rec*, %union.rec** @zz_res, align 8
  %2226 = icmp eq %union.rec* %2225, null
  br i1 %2226, label %2227, label %2229

; <label>:2227                                    ; preds = %2224
  %2228 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2270

; <label>:2229                                    ; preds = %2224
  %2230 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2231 = bitcast %union.rec* %2230 to %struct.word_type*
  %2232 = getelementptr inbounds %struct.word_type, %struct.word_type* %2231, i32 0, i32 0
  %2233 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2232, i32 0, i64 1
  %2234 = getelementptr inbounds %struct.LIST, %struct.LIST* %2233, i32 0, i32 0
  %2235 = load %union.rec*, %union.rec** %2234, align 8
  store %union.rec* %2235, %union.rec** @zz_tmp, align 8
  %2236 = load %union.rec*, %union.rec** @zz_res, align 8
  %2237 = bitcast %union.rec* %2236 to %struct.word_type*
  %2238 = getelementptr inbounds %struct.word_type, %struct.word_type* %2237, i32 0, i32 0
  %2239 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2238, i32 0, i64 1
  %2240 = getelementptr inbounds %struct.LIST, %struct.LIST* %2239, i32 0, i32 0
  %2241 = load %union.rec*, %union.rec** %2240, align 8
  %2242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2243 = bitcast %union.rec* %2242 to %struct.word_type*
  %2244 = getelementptr inbounds %struct.word_type, %struct.word_type* %2243, i32 0, i32 0
  %2245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2244, i32 0, i64 1
  %2246 = getelementptr inbounds %struct.LIST, %struct.LIST* %2245, i32 0, i32 0
  store %union.rec* %2241, %union.rec** %2246, align 8
  %2247 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2248 = load %union.rec*, %union.rec** @zz_res, align 8
  %2249 = bitcast %union.rec* %2248 to %struct.word_type*
  %2250 = getelementptr inbounds %struct.word_type, %struct.word_type* %2249, i32 0, i32 0
  %2251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2250, i32 0, i64 1
  %2252 = getelementptr inbounds %struct.LIST, %struct.LIST* %2251, i32 0, i32 0
  %2253 = load %union.rec*, %union.rec** %2252, align 8
  %2254 = bitcast %union.rec* %2253 to %struct.word_type*
  %2255 = getelementptr inbounds %struct.word_type, %struct.word_type* %2254, i32 0, i32 0
  %2256 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2255, i32 0, i64 1
  %2257 = getelementptr inbounds %struct.LIST, %struct.LIST* %2256, i32 0, i32 1
  store %union.rec* %2247, %union.rec** %2257, align 8
  %2258 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2259 = load %union.rec*, %union.rec** @zz_res, align 8
  %2260 = bitcast %union.rec* %2259 to %struct.word_type*
  %2261 = getelementptr inbounds %struct.word_type, %struct.word_type* %2260, i32 0, i32 0
  %2262 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2261, i32 0, i64 1
  %2263 = getelementptr inbounds %struct.LIST, %struct.LIST* %2262, i32 0, i32 0
  store %union.rec* %2258, %union.rec** %2263, align 8
  %2264 = load %union.rec*, %union.rec** @zz_res, align 8
  %2265 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2266 = bitcast %union.rec* %2265 to %struct.word_type*
  %2267 = getelementptr inbounds %struct.word_type, %struct.word_type* %2266, i32 0, i32 0
  %2268 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2267, i32 0, i64 1
  %2269 = getelementptr inbounds %struct.LIST, %struct.LIST* %2268, i32 0, i32 1
  store %union.rec* %2264, %union.rec** %2269, align 8
  br label %2270

; <label>:2270                                    ; preds = %2229, %2227
  %2271 = phi %union.rec* [ %2228, %2227 ], [ %2264, %2229 ]
  br label %2272

; <label>:2272                                    ; preds = %2270, %2222
  %2273 = phi %union.rec* [ %2223, %2222 ], [ %2271, %2270 ]
  %2274 = load %union.rec*, %union.rec** %new_sh, align 8
  %2275 = bitcast %union.rec* %2274 to %struct.word_type*
  %2276 = getelementptr inbounds %struct.word_type, %struct.word_type* %2275, i32 0, i32 3
  %2277 = bitcast %union.THIRD_UNION* %2276 to %struct.anon.6*
  %2278 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2277, i32 0, i32 0
  %2279 = getelementptr inbounds [2 x i32], [2 x i32]* %2278, i32 0, i64 0
  %2280 = load i32, i32* %2279, align 4
  %2281 = load %union.rec*, %union.rec** %new_s2, align 8
  %2282 = bitcast %union.rec* %2281 to %struct.word_type*
  %2283 = getelementptr inbounds %struct.word_type, %struct.word_type* %2282, i32 0, i32 3
  %2284 = bitcast %union.THIRD_UNION* %2283 to %struct.anon.6*
  %2285 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2284, i32 0, i32 0
  %2286 = getelementptr inbounds [2 x i32], [2 x i32]* %2285, i32 0, i64 0
  store i32 %2280, i32* %2286, align 4
  %2287 = load %union.rec*, %union.rec** %new_sh, align 8
  %2288 = bitcast %union.rec* %2287 to %struct.word_type*
  %2289 = getelementptr inbounds %struct.word_type, %struct.word_type* %2288, i32 0, i32 3
  %2290 = bitcast %union.THIRD_UNION* %2289 to %struct.anon.6*
  %2291 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2290, i32 0, i32 1
  %2292 = getelementptr inbounds [2 x i32], [2 x i32]* %2291, i32 0, i64 0
  %2293 = load i32, i32* %2292, align 4
  %2294 = load %union.rec*, %union.rec** %new_s2, align 8
  %2295 = bitcast %union.rec* %2294 to %struct.word_type*
  %2296 = getelementptr inbounds %struct.word_type, %struct.word_type* %2295, i32 0, i32 3
  %2297 = bitcast %union.THIRD_UNION* %2296 to %struct.anon.6*
  %2298 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2297, i32 0, i32 1
  %2299 = getelementptr inbounds [2 x i32], [2 x i32]* %2298, i32 0, i64 0
  store i32 %2293, i32* %2299, align 4
  %2300 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %2301 = zext i8 %2300 to i32
  store i32 %2301, i32* @zz_size, align 4
  %2302 = sext i32 %2301 to i64
  %2303 = icmp uge i64 %2302, 265
  br i1 %2303, label %2304, label %2307

; <label>:2304                                    ; preds = %2272
  %2305 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2306 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %2305)
  br label %2332

; <label>:2307                                    ; preds = %2272
  %2308 = load i32, i32* @zz_size, align 4
  %2309 = sext i32 %2308 to i64
  %2310 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2309
  %2311 = load %union.rec*, %union.rec** %2310, align 8
  %2312 = icmp eq %union.rec* %2311, null
  br i1 %2312, label %2313, label %2317

; <label>:2313                                    ; preds = %2307
  %2314 = load i32, i32* @zz_size, align 4
  %2315 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2316 = call %union.rec* @GetMemory(i32 %2314, %struct.FILE_POS* %2315)
  store %union.rec* %2316, %union.rec** @zz_hold, align 8
  br label %2331

; <label>:2317                                    ; preds = %2307
  %2318 = load i32, i32* @zz_size, align 4
  %2319 = sext i32 %2318 to i64
  %2320 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2319
  %2321 = load %union.rec*, %union.rec** %2320, align 8
  store %union.rec* %2321, %union.rec** @zz_hold, align 8
  store %union.rec* %2321, %union.rec** @zz_hold, align 8
  %2322 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2323 = bitcast %union.rec* %2322 to %struct.word_type*
  %2324 = getelementptr inbounds %struct.word_type, %struct.word_type* %2323, i32 0, i32 0
  %2325 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2324, i32 0, i64 0
  %2326 = getelementptr inbounds %struct.LIST, %struct.LIST* %2325, i32 0, i32 0
  %2327 = load %union.rec*, %union.rec** %2326, align 8
  %2328 = load i32, i32* @zz_size, align 4
  %2329 = sext i32 %2328 to i64
  %2330 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2329
  store %union.rec* %2327, %union.rec** %2330, align 8
  br label %2331

; <label>:2331                                    ; preds = %2317, %2313
  br label %2332

; <label>:2332                                    ; preds = %2331, %2304
  %2333 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2334 = bitcast %union.rec* %2333 to %struct.word_type*
  %2335 = getelementptr inbounds %struct.word_type, %struct.word_type* %2334, i32 0, i32 1
  %2336 = bitcast %union.FIRST_UNION* %2335 to %struct.anon*
  %2337 = getelementptr inbounds %struct.anon, %struct.anon* %2336, i32 0, i32 0
  store i8 0, i8* %2337, align 1
  %2338 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2339 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2340 = bitcast %union.rec* %2339 to %struct.word_type*
  %2341 = getelementptr inbounds %struct.word_type, %struct.word_type* %2340, i32 0, i32 0
  %2342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2341, i32 0, i64 1
  %2343 = getelementptr inbounds %struct.LIST, %struct.LIST* %2342, i32 0, i32 1
  store %union.rec* %2338, %union.rec** %2343, align 8
  %2344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2345 = bitcast %union.rec* %2344 to %struct.word_type*
  %2346 = getelementptr inbounds %struct.word_type, %struct.word_type* %2345, i32 0, i32 0
  %2347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2346, i32 0, i64 1
  %2348 = getelementptr inbounds %struct.LIST, %struct.LIST* %2347, i32 0, i32 0
  store %union.rec* %2338, %union.rec** %2348, align 8
  %2349 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2350 = bitcast %union.rec* %2349 to %struct.word_type*
  %2351 = getelementptr inbounds %struct.word_type, %struct.word_type* %2350, i32 0, i32 0
  %2352 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2351, i32 0, i64 0
  %2353 = getelementptr inbounds %struct.LIST, %struct.LIST* %2352, i32 0, i32 1
  store %union.rec* %2338, %union.rec** %2353, align 8
  %2354 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2355 = bitcast %union.rec* %2354 to %struct.word_type*
  %2356 = getelementptr inbounds %struct.word_type, %struct.word_type* %2355, i32 0, i32 0
  %2357 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2356, i32 0, i64 0
  %2358 = getelementptr inbounds %struct.LIST, %struct.LIST* %2357, i32 0, i32 0
  store %union.rec* %2338, %union.rec** %2358, align 8
  store %union.rec* %2338, %union.rec** @xx_link, align 8
  %2359 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2359, %union.rec** @zz_res, align 8
  %2360 = load %union.rec*, %union.rec** %new_s2, align 8
  store %union.rec* %2360, %union.rec** @zz_hold, align 8
  %2361 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2362 = icmp eq %union.rec* %2361, null
  br i1 %2362, label %2363, label %2365

; <label>:2363                                    ; preds = %2332
  %2364 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2413

; <label>:2365                                    ; preds = %2332
  %2366 = load %union.rec*, %union.rec** @zz_res, align 8
  %2367 = icmp eq %union.rec* %2366, null
  br i1 %2367, label %2368, label %2370

; <label>:2368                                    ; preds = %2365
  %2369 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2411

; <label>:2370                                    ; preds = %2365
  %2371 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2372 = bitcast %union.rec* %2371 to %struct.word_type*
  %2373 = getelementptr inbounds %struct.word_type, %struct.word_type* %2372, i32 0, i32 0
  %2374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2373, i32 0, i64 0
  %2375 = getelementptr inbounds %struct.LIST, %struct.LIST* %2374, i32 0, i32 0
  %2376 = load %union.rec*, %union.rec** %2375, align 8
  store %union.rec* %2376, %union.rec** @zz_tmp, align 8
  %2377 = load %union.rec*, %union.rec** @zz_res, align 8
  %2378 = bitcast %union.rec* %2377 to %struct.word_type*
  %2379 = getelementptr inbounds %struct.word_type, %struct.word_type* %2378, i32 0, i32 0
  %2380 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2379, i32 0, i64 0
  %2381 = getelementptr inbounds %struct.LIST, %struct.LIST* %2380, i32 0, i32 0
  %2382 = load %union.rec*, %union.rec** %2381, align 8
  %2383 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2384 = bitcast %union.rec* %2383 to %struct.word_type*
  %2385 = getelementptr inbounds %struct.word_type, %struct.word_type* %2384, i32 0, i32 0
  %2386 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2385, i32 0, i64 0
  %2387 = getelementptr inbounds %struct.LIST, %struct.LIST* %2386, i32 0, i32 0
  store %union.rec* %2382, %union.rec** %2387, align 8
  %2388 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2389 = load %union.rec*, %union.rec** @zz_res, align 8
  %2390 = bitcast %union.rec* %2389 to %struct.word_type*
  %2391 = getelementptr inbounds %struct.word_type, %struct.word_type* %2390, i32 0, i32 0
  %2392 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2391, i32 0, i64 0
  %2393 = getelementptr inbounds %struct.LIST, %struct.LIST* %2392, i32 0, i32 0
  %2394 = load %union.rec*, %union.rec** %2393, align 8
  %2395 = bitcast %union.rec* %2394 to %struct.word_type*
  %2396 = getelementptr inbounds %struct.word_type, %struct.word_type* %2395, i32 0, i32 0
  %2397 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2396, i32 0, i64 0
  %2398 = getelementptr inbounds %struct.LIST, %struct.LIST* %2397, i32 0, i32 1
  store %union.rec* %2388, %union.rec** %2398, align 8
  %2399 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2400 = load %union.rec*, %union.rec** @zz_res, align 8
  %2401 = bitcast %union.rec* %2400 to %struct.word_type*
  %2402 = getelementptr inbounds %struct.word_type, %struct.word_type* %2401, i32 0, i32 0
  %2403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2402, i32 0, i64 0
  %2404 = getelementptr inbounds %struct.LIST, %struct.LIST* %2403, i32 0, i32 0
  store %union.rec* %2399, %union.rec** %2404, align 8
  %2405 = load %union.rec*, %union.rec** @zz_res, align 8
  %2406 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2407 = bitcast %union.rec* %2406 to %struct.word_type*
  %2408 = getelementptr inbounds %struct.word_type, %struct.word_type* %2407, i32 0, i32 0
  %2409 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2408, i32 0, i64 0
  %2410 = getelementptr inbounds %struct.LIST, %struct.LIST* %2409, i32 0, i32 1
  store %union.rec* %2405, %union.rec** %2410, align 8
  br label %2411

; <label>:2411                                    ; preds = %2370, %2368
  %2412 = phi %union.rec* [ %2369, %2368 ], [ %2405, %2370 ]
  br label %2413

; <label>:2413                                    ; preds = %2411, %2363
  %2414 = phi %union.rec* [ %2364, %2363 ], [ %2412, %2411 ]
  %2415 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2415, %union.rec** @zz_res, align 8
  %2416 = load %union.rec*, %union.rec** %new_row_thread, align 8
  store %union.rec* %2416, %union.rec** @zz_hold, align 8
  %2417 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2418 = icmp eq %union.rec* %2417, null
  br i1 %2418, label %2419, label %2421

; <label>:2419                                    ; preds = %2413
  %2420 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2469

; <label>:2421                                    ; preds = %2413
  %2422 = load %union.rec*, %union.rec** @zz_res, align 8
  %2423 = icmp eq %union.rec* %2422, null
  br i1 %2423, label %2424, label %2426

; <label>:2424                                    ; preds = %2421
  %2425 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2467

; <label>:2426                                    ; preds = %2421
  %2427 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2428 = bitcast %union.rec* %2427 to %struct.word_type*
  %2429 = getelementptr inbounds %struct.word_type, %struct.word_type* %2428, i32 0, i32 0
  %2430 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2429, i32 0, i64 1
  %2431 = getelementptr inbounds %struct.LIST, %struct.LIST* %2430, i32 0, i32 0
  %2432 = load %union.rec*, %union.rec** %2431, align 8
  store %union.rec* %2432, %union.rec** @zz_tmp, align 8
  %2433 = load %union.rec*, %union.rec** @zz_res, align 8
  %2434 = bitcast %union.rec* %2433 to %struct.word_type*
  %2435 = getelementptr inbounds %struct.word_type, %struct.word_type* %2434, i32 0, i32 0
  %2436 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2435, i32 0, i64 1
  %2437 = getelementptr inbounds %struct.LIST, %struct.LIST* %2436, i32 0, i32 0
  %2438 = load %union.rec*, %union.rec** %2437, align 8
  %2439 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2440 = bitcast %union.rec* %2439 to %struct.word_type*
  %2441 = getelementptr inbounds %struct.word_type, %struct.word_type* %2440, i32 0, i32 0
  %2442 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2441, i32 0, i64 1
  %2443 = getelementptr inbounds %struct.LIST, %struct.LIST* %2442, i32 0, i32 0
  store %union.rec* %2438, %union.rec** %2443, align 8
  %2444 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2445 = load %union.rec*, %union.rec** @zz_res, align 8
  %2446 = bitcast %union.rec* %2445 to %struct.word_type*
  %2447 = getelementptr inbounds %struct.word_type, %struct.word_type* %2446, i32 0, i32 0
  %2448 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2447, i32 0, i64 1
  %2449 = getelementptr inbounds %struct.LIST, %struct.LIST* %2448, i32 0, i32 0
  %2450 = load %union.rec*, %union.rec** %2449, align 8
  %2451 = bitcast %union.rec* %2450 to %struct.word_type*
  %2452 = getelementptr inbounds %struct.word_type, %struct.word_type* %2451, i32 0, i32 0
  %2453 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2452, i32 0, i64 1
  %2454 = getelementptr inbounds %struct.LIST, %struct.LIST* %2453, i32 0, i32 1
  store %union.rec* %2444, %union.rec** %2454, align 8
  %2455 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2456 = load %union.rec*, %union.rec** @zz_res, align 8
  %2457 = bitcast %union.rec* %2456 to %struct.word_type*
  %2458 = getelementptr inbounds %struct.word_type, %struct.word_type* %2457, i32 0, i32 0
  %2459 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2458, i32 0, i64 1
  %2460 = getelementptr inbounds %struct.LIST, %struct.LIST* %2459, i32 0, i32 0
  store %union.rec* %2455, %union.rec** %2460, align 8
  %2461 = load %union.rec*, %union.rec** @zz_res, align 8
  %2462 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2463 = bitcast %union.rec* %2462 to %struct.word_type*
  %2464 = getelementptr inbounds %struct.word_type, %struct.word_type* %2463, i32 0, i32 0
  %2465 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2464, i32 0, i64 1
  %2466 = getelementptr inbounds %struct.LIST, %struct.LIST* %2465, i32 0, i32 1
  store %union.rec* %2461, %union.rec** %2466, align 8
  br label %2467

; <label>:2467                                    ; preds = %2426, %2424
  %2468 = phi %union.rec* [ %2425, %2424 ], [ %2461, %2426 ]
  br label %2469

; <label>:2469                                    ; preds = %2467, %2419
  %2470 = phi %union.rec* [ %2420, %2419 ], [ %2468, %2467 ]
  %2471 = load %union.rec*, %union.rec** %new_row_thread, align 8
  %2472 = bitcast %union.rec* %2471 to %struct.word_type*
  %2473 = getelementptr inbounds %struct.word_type, %struct.word_type* %2472, i32 0, i32 3
  %2474 = bitcast %union.THIRD_UNION* %2473 to %struct.anon.6*
  %2475 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2474, i32 0, i32 0
  %2476 = getelementptr inbounds [2 x i32], [2 x i32]* %2475, i32 0, i64 1
  %2477 = load i32, i32* %2476, align 4
  %2478 = load %union.rec*, %union.rec** %new_s2, align 8
  %2479 = bitcast %union.rec* %2478 to %struct.word_type*
  %2480 = getelementptr inbounds %struct.word_type, %struct.word_type* %2479, i32 0, i32 3
  %2481 = bitcast %union.THIRD_UNION* %2480 to %struct.anon.6*
  %2482 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2481, i32 0, i32 0
  %2483 = getelementptr inbounds [2 x i32], [2 x i32]* %2482, i32 0, i64 1
  store i32 %2477, i32* %2483, align 4
  %2484 = load %union.rec*, %union.rec** %new_row_thread, align 8
  %2485 = bitcast %union.rec* %2484 to %struct.word_type*
  %2486 = getelementptr inbounds %struct.word_type, %struct.word_type* %2485, i32 0, i32 3
  %2487 = bitcast %union.THIRD_UNION* %2486 to %struct.anon.6*
  %2488 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2487, i32 0, i32 1
  %2489 = getelementptr inbounds [2 x i32], [2 x i32]* %2488, i32 0, i64 1
  %2490 = load i32, i32* %2489, align 4
  %2491 = load %union.rec*, %union.rec** %new_s2, align 8
  %2492 = bitcast %union.rec* %2491 to %struct.word_type*
  %2493 = getelementptr inbounds %struct.word_type, %struct.word_type* %2492, i32 0, i32 3
  %2494 = bitcast %union.THIRD_UNION* %2493 to %struct.anon.6*
  %2495 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2494, i32 0, i32 1
  %2496 = getelementptr inbounds [2 x i32], [2 x i32]* %2495, i32 0, i64 1
  store i32 %2490, i32* %2496, align 4
  %2497 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %2498 = zext i8 %2497 to i32
  store i32 %2498, i32* @zz_size, align 4
  %2499 = sext i32 %2498 to i64
  %2500 = icmp uge i64 %2499, 265
  br i1 %2500, label %2501, label %2504

; <label>:2501                                    ; preds = %2469
  %2502 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2503 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %2502)
  br label %2529

; <label>:2504                                    ; preds = %2469
  %2505 = load i32, i32* @zz_size, align 4
  %2506 = sext i32 %2505 to i64
  %2507 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2506
  %2508 = load %union.rec*, %union.rec** %2507, align 8
  %2509 = icmp eq %union.rec* %2508, null
  br i1 %2509, label %2510, label %2514

; <label>:2510                                    ; preds = %2504
  %2511 = load i32, i32* @zz_size, align 4
  %2512 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2513 = call %union.rec* @GetMemory(i32 %2511, %struct.FILE_POS* %2512)
  store %union.rec* %2513, %union.rec** @zz_hold, align 8
  br label %2528

; <label>:2514                                    ; preds = %2504
  %2515 = load i32, i32* @zz_size, align 4
  %2516 = sext i32 %2515 to i64
  %2517 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2516
  %2518 = load %union.rec*, %union.rec** %2517, align 8
  store %union.rec* %2518, %union.rec** @zz_hold, align 8
  store %union.rec* %2518, %union.rec** @zz_hold, align 8
  %2519 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2520 = bitcast %union.rec* %2519 to %struct.word_type*
  %2521 = getelementptr inbounds %struct.word_type, %struct.word_type* %2520, i32 0, i32 0
  %2522 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2521, i32 0, i64 0
  %2523 = getelementptr inbounds %struct.LIST, %struct.LIST* %2522, i32 0, i32 0
  %2524 = load %union.rec*, %union.rec** %2523, align 8
  %2525 = load i32, i32* @zz_size, align 4
  %2526 = sext i32 %2525 to i64
  %2527 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2526
  store %union.rec* %2524, %union.rec** %2527, align 8
  br label %2528

; <label>:2528                                    ; preds = %2514, %2510
  br label %2529

; <label>:2529                                    ; preds = %2528, %2501
  %2530 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2531 = bitcast %union.rec* %2530 to %struct.word_type*
  %2532 = getelementptr inbounds %struct.word_type, %struct.word_type* %2531, i32 0, i32 1
  %2533 = bitcast %union.FIRST_UNION* %2532 to %struct.anon*
  %2534 = getelementptr inbounds %struct.anon, %struct.anon* %2533, i32 0, i32 0
  store i8 0, i8* %2534, align 1
  %2535 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2536 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2537 = bitcast %union.rec* %2536 to %struct.word_type*
  %2538 = getelementptr inbounds %struct.word_type, %struct.word_type* %2537, i32 0, i32 0
  %2539 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2538, i32 0, i64 1
  %2540 = getelementptr inbounds %struct.LIST, %struct.LIST* %2539, i32 0, i32 1
  store %union.rec* %2535, %union.rec** %2540, align 8
  %2541 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2542 = bitcast %union.rec* %2541 to %struct.word_type*
  %2543 = getelementptr inbounds %struct.word_type, %struct.word_type* %2542, i32 0, i32 0
  %2544 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2543, i32 0, i64 1
  %2545 = getelementptr inbounds %struct.LIST, %struct.LIST* %2544, i32 0, i32 0
  store %union.rec* %2535, %union.rec** %2545, align 8
  %2546 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2547 = bitcast %union.rec* %2546 to %struct.word_type*
  %2548 = getelementptr inbounds %struct.word_type, %struct.word_type* %2547, i32 0, i32 0
  %2549 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2548, i32 0, i64 0
  %2550 = getelementptr inbounds %struct.LIST, %struct.LIST* %2549, i32 0, i32 1
  store %union.rec* %2535, %union.rec** %2550, align 8
  %2551 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2552 = bitcast %union.rec* %2551 to %struct.word_type*
  %2553 = getelementptr inbounds %struct.word_type, %struct.word_type* %2552, i32 0, i32 0
  %2554 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2553, i32 0, i64 0
  %2555 = getelementptr inbounds %struct.LIST, %struct.LIST* %2554, i32 0, i32 0
  store %union.rec* %2535, %union.rec** %2555, align 8
  store %union.rec* %2535, %union.rec** @xx_link, align 8
  %2556 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2556, %union.rec** @zz_res, align 8
  %2557 = load %union.rec*, %union.rec** %new_row_thread, align 8
  store %union.rec* %2557, %union.rec** @zz_hold, align 8
  %2558 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2559 = icmp eq %union.rec* %2558, null
  br i1 %2559, label %2560, label %2562

; <label>:2560                                    ; preds = %2529
  %2561 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2610

; <label>:2562                                    ; preds = %2529
  %2563 = load %union.rec*, %union.rec** @zz_res, align 8
  %2564 = icmp eq %union.rec* %2563, null
  br i1 %2564, label %2565, label %2567

; <label>:2565                                    ; preds = %2562
  %2566 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2608

; <label>:2567                                    ; preds = %2562
  %2568 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2569 = bitcast %union.rec* %2568 to %struct.word_type*
  %2570 = getelementptr inbounds %struct.word_type, %struct.word_type* %2569, i32 0, i32 0
  %2571 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2570, i32 0, i64 0
  %2572 = getelementptr inbounds %struct.LIST, %struct.LIST* %2571, i32 0, i32 0
  %2573 = load %union.rec*, %union.rec** %2572, align 8
  store %union.rec* %2573, %union.rec** @zz_tmp, align 8
  %2574 = load %union.rec*, %union.rec** @zz_res, align 8
  %2575 = bitcast %union.rec* %2574 to %struct.word_type*
  %2576 = getelementptr inbounds %struct.word_type, %struct.word_type* %2575, i32 0, i32 0
  %2577 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2576, i32 0, i64 0
  %2578 = getelementptr inbounds %struct.LIST, %struct.LIST* %2577, i32 0, i32 0
  %2579 = load %union.rec*, %union.rec** %2578, align 8
  %2580 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2581 = bitcast %union.rec* %2580 to %struct.word_type*
  %2582 = getelementptr inbounds %struct.word_type, %struct.word_type* %2581, i32 0, i32 0
  %2583 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2582, i32 0, i64 0
  %2584 = getelementptr inbounds %struct.LIST, %struct.LIST* %2583, i32 0, i32 0
  store %union.rec* %2579, %union.rec** %2584, align 8
  %2585 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2586 = load %union.rec*, %union.rec** @zz_res, align 8
  %2587 = bitcast %union.rec* %2586 to %struct.word_type*
  %2588 = getelementptr inbounds %struct.word_type, %struct.word_type* %2587, i32 0, i32 0
  %2589 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2588, i32 0, i64 0
  %2590 = getelementptr inbounds %struct.LIST, %struct.LIST* %2589, i32 0, i32 0
  %2591 = load %union.rec*, %union.rec** %2590, align 8
  %2592 = bitcast %union.rec* %2591 to %struct.word_type*
  %2593 = getelementptr inbounds %struct.word_type, %struct.word_type* %2592, i32 0, i32 0
  %2594 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2593, i32 0, i64 0
  %2595 = getelementptr inbounds %struct.LIST, %struct.LIST* %2594, i32 0, i32 1
  store %union.rec* %2585, %union.rec** %2595, align 8
  %2596 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2597 = load %union.rec*, %union.rec** @zz_res, align 8
  %2598 = bitcast %union.rec* %2597 to %struct.word_type*
  %2599 = getelementptr inbounds %struct.word_type, %struct.word_type* %2598, i32 0, i32 0
  %2600 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2599, i32 0, i64 0
  %2601 = getelementptr inbounds %struct.LIST, %struct.LIST* %2600, i32 0, i32 0
  store %union.rec* %2596, %union.rec** %2601, align 8
  %2602 = load %union.rec*, %union.rec** @zz_res, align 8
  %2603 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2604 = bitcast %union.rec* %2603 to %struct.word_type*
  %2605 = getelementptr inbounds %struct.word_type, %struct.word_type* %2604, i32 0, i32 0
  %2606 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2605, i32 0, i64 0
  %2607 = getelementptr inbounds %struct.LIST, %struct.LIST* %2606, i32 0, i32 1
  store %union.rec* %2602, %union.rec** %2607, align 8
  br label %2608

; <label>:2608                                    ; preds = %2567, %2565
  %2609 = phi %union.rec* [ %2566, %2565 ], [ %2602, %2567 ]
  br label %2610

; <label>:2610                                    ; preds = %2608, %2560
  %2611 = phi %union.rec* [ %2561, %2560 ], [ %2609, %2608 ]
  %2612 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2612, %union.rec** @zz_res, align 8
  %2613 = load %union.rec*, %union.rec** %new_sh, align 8
  store %union.rec* %2613, %union.rec** @zz_hold, align 8
  %2614 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2615 = icmp eq %union.rec* %2614, null
  br i1 %2615, label %2616, label %2618

; <label>:2616                                    ; preds = %2610
  %2617 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2666

; <label>:2618                                    ; preds = %2610
  %2619 = load %union.rec*, %union.rec** @zz_res, align 8
  %2620 = icmp eq %union.rec* %2619, null
  br i1 %2620, label %2621, label %2623

; <label>:2621                                    ; preds = %2618
  %2622 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2664

; <label>:2623                                    ; preds = %2618
  %2624 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2625 = bitcast %union.rec* %2624 to %struct.word_type*
  %2626 = getelementptr inbounds %struct.word_type, %struct.word_type* %2625, i32 0, i32 0
  %2627 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2626, i32 0, i64 1
  %2628 = getelementptr inbounds %struct.LIST, %struct.LIST* %2627, i32 0, i32 0
  %2629 = load %union.rec*, %union.rec** %2628, align 8
  store %union.rec* %2629, %union.rec** @zz_tmp, align 8
  %2630 = load %union.rec*, %union.rec** @zz_res, align 8
  %2631 = bitcast %union.rec* %2630 to %struct.word_type*
  %2632 = getelementptr inbounds %struct.word_type, %struct.word_type* %2631, i32 0, i32 0
  %2633 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2632, i32 0, i64 1
  %2634 = getelementptr inbounds %struct.LIST, %struct.LIST* %2633, i32 0, i32 0
  %2635 = load %union.rec*, %union.rec** %2634, align 8
  %2636 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2637 = bitcast %union.rec* %2636 to %struct.word_type*
  %2638 = getelementptr inbounds %struct.word_type, %struct.word_type* %2637, i32 0, i32 0
  %2639 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2638, i32 0, i64 1
  %2640 = getelementptr inbounds %struct.LIST, %struct.LIST* %2639, i32 0, i32 0
  store %union.rec* %2635, %union.rec** %2640, align 8
  %2641 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2642 = load %union.rec*, %union.rec** @zz_res, align 8
  %2643 = bitcast %union.rec* %2642 to %struct.word_type*
  %2644 = getelementptr inbounds %struct.word_type, %struct.word_type* %2643, i32 0, i32 0
  %2645 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2644, i32 0, i64 1
  %2646 = getelementptr inbounds %struct.LIST, %struct.LIST* %2645, i32 0, i32 0
  %2647 = load %union.rec*, %union.rec** %2646, align 8
  %2648 = bitcast %union.rec* %2647 to %struct.word_type*
  %2649 = getelementptr inbounds %struct.word_type, %struct.word_type* %2648, i32 0, i32 0
  %2650 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2649, i32 0, i64 1
  %2651 = getelementptr inbounds %struct.LIST, %struct.LIST* %2650, i32 0, i32 1
  store %union.rec* %2641, %union.rec** %2651, align 8
  %2652 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2653 = load %union.rec*, %union.rec** @zz_res, align 8
  %2654 = bitcast %union.rec* %2653 to %struct.word_type*
  %2655 = getelementptr inbounds %struct.word_type, %struct.word_type* %2654, i32 0, i32 0
  %2656 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2655, i32 0, i64 1
  %2657 = getelementptr inbounds %struct.LIST, %struct.LIST* %2656, i32 0, i32 0
  store %union.rec* %2652, %union.rec** %2657, align 8
  %2658 = load %union.rec*, %union.rec** @zz_res, align 8
  %2659 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2660 = bitcast %union.rec* %2659 to %struct.word_type*
  %2661 = getelementptr inbounds %struct.word_type, %struct.word_type* %2660, i32 0, i32 0
  %2662 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2661, i32 0, i64 1
  %2663 = getelementptr inbounds %struct.LIST, %struct.LIST* %2662, i32 0, i32 1
  store %union.rec* %2658, %union.rec** %2663, align 8
  br label %2664

; <label>:2664                                    ; preds = %2623, %2621
  %2665 = phi %union.rec* [ %2622, %2621 ], [ %2658, %2623 ]
  br label %2666

; <label>:2666                                    ; preds = %2664, %2616
  %2667 = phi %union.rec* [ %2617, %2616 ], [ %2665, %2664 ]
  br label %2668

; <label>:2668                                    ; preds = %2666, %836
  %2669 = load %union.rec*, %union.rec** %link, align 8
  %2670 = bitcast %union.rec* %2669 to %struct.word_type*
  %2671 = getelementptr inbounds %struct.word_type, %struct.word_type* %2670, i32 0, i32 0
  %2672 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2671, i32 0, i64 0
  %2673 = getelementptr inbounds %struct.LIST, %struct.LIST* %2672, i32 0, i32 1
  %2674 = load %union.rec*, %union.rec** %2673, align 8
  store %union.rec* %2674, %union.rec** %link, align 8
  br label %401

; <label>:2675                                    ; preds = %401
  %2676 = load %union.rec*, %union.rec** %new_y, align 8
  ret %union.rec* %2676
}

; Function Attrs: nounwind uwtable
define internal %union.rec* @FindTarget(%union.rec* %index) #0 {
  %1 = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  store %union.rec* %index, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = bitcast %union.rec* %2 to %struct.word_type*
  %4 = getelementptr inbounds %struct.word_type, %struct.word_type* %3, i32 0, i32 1
  %5 = bitcast %union.FIRST_UNION* %4 to %struct.anon*
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  switch i32 %8, label %23 [
    i32 119, label %9
    i32 120, label %10
    i32 133, label %10
    i32 129, label %10
    i32 130, label %10
    i32 121, label %16
    i32 122, label %16
    i32 123, label %16
    i32 136, label %16
    i32 137, label %16
    i32 138, label %16
    i32 124, label %21
    i32 125, label %21
    i32 131, label %21
    i32 134, label %21
    i32 127, label %21
    i32 128, label %21
    i32 135, label %21
    i32 132, label %22
  ]

; <label>:9                                       ; preds = %0
  store %union.rec* null, %union.rec** %res, align 8
  br label %34

; <label>:10                                      ; preds = %0, %0, %0, %0
  %11 = load %union.rec*, %union.rec** %1, align 8
  %12 = bitcast %union.rec* %11 to %struct.closure_type*
  %13 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %12, i32 0, i32 6
  %14 = bitcast %union.anon.12* %13 to %union.rec**
  %15 = load %union.rec*, %union.rec** %14, align 8
  store %union.rec* %15, %union.rec** %res, align 8
  br label %34

; <label>:16                                      ; preds = %0, %0, %0, %0, %0, %0
  %17 = load %union.rec*, %union.rec** %1, align 8
  %18 = bitcast %union.rec* %17 to %struct.closure_type*
  %19 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %18, i32 0, i32 5
  %20 = load %union.rec*, %union.rec** %19, align 8
  store %union.rec* %20, %union.rec** %res, align 8
  br label %34

; <label>:21                                      ; preds = %0, %0, %0, %0, %0, %0, %0
  store %union.rec* null, %union.rec** %res, align 8
  br label %34

; <label>:22                                      ; preds = %0
  store %union.rec* null, %union.rec** %res, align 8
  br label %34

; <label>:23                                      ; preds = %0
  %24 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %25 = load %union.rec*, %union.rec** %1, align 8
  %26 = bitcast %union.rec* %25 to %struct.word_type*
  %27 = getelementptr inbounds %struct.word_type, %struct.word_type* %26, i32 0, i32 1
  %28 = bitcast %union.FIRST_UNION* %27 to %struct.anon*
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = call i8* @Image(i32 %31)
  %33 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0), i32 0, %struct.FILE_POS* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i32 0, i32 0), i8* %32)
  br label %34

; <label>:34                                      ; preds = %23, %22, %21, %16, %10, %9
  %35 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %35
}

; Function Attrs: nounwind uwtable
define internal %union.rec* @WhichComponent(%union.rec* %target) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %prnt = alloca %union.rec*, align 8
  store %union.rec* %target, %union.rec** %2, align 8
  br label %3

; <label>:3                                       ; preds = %52, %0
  %4 = load %union.rec*, %union.rec** %2, align 8
  %5 = bitcast %union.rec* %4 to %struct.word_type*
  %6 = getelementptr inbounds %struct.word_type, %struct.word_type* %5, i32 0, i32 0
  %7 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6, i32 0, i64 1
  %8 = getelementptr inbounds %struct.LIST, %struct.LIST* %7, i32 0, i32 1
  %9 = load %union.rec*, %union.rec** %8, align 8
  %10 = load %union.rec*, %union.rec** %2, align 8
  %11 = icmp ne %union.rec* %9, %10
  br i1 %11, label %12, label %54

; <label>:12                                      ; preds = %3
  %13 = load %union.rec*, %union.rec** %2, align 8
  %14 = bitcast %union.rec* %13 to %struct.word_type*
  %15 = getelementptr inbounds %struct.word_type, %struct.word_type* %14, i32 0, i32 0
  %16 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %15, i32 0, i64 1
  %17 = getelementptr inbounds %struct.LIST, %struct.LIST* %16, i32 0, i32 1
  %18 = load %union.rec*, %union.rec** %17, align 8
  %19 = bitcast %union.rec* %18 to %struct.word_type*
  %20 = getelementptr inbounds %struct.word_type, %struct.word_type* %19, i32 0, i32 0
  %21 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %20, i32 0, i64 0
  %22 = getelementptr inbounds %struct.LIST, %struct.LIST* %21, i32 0, i32 0
  %23 = load %union.rec*, %union.rec** %22, align 8
  store %union.rec* %23, %union.rec** %prnt, align 8
  br label %24

; <label>:24                                      ; preds = %34, %12
  %25 = load %union.rec*, %union.rec** %prnt, align 8
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
  %35 = load %union.rec*, %union.rec** %prnt, align 8
  %36 = bitcast %union.rec* %35 to %struct.word_type*
  %37 = getelementptr inbounds %struct.word_type, %struct.word_type* %36, i32 0, i32 0
  %38 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %37, i32 0, i64 0
  %39 = getelementptr inbounds %struct.LIST, %struct.LIST* %38, i32 0, i32 0
  %40 = load %union.rec*, %union.rec** %39, align 8
  store %union.rec* %40, %union.rec** %prnt, align 8
  br label %24

; <label>:41                                      ; preds = %24
  %42 = load %union.rec*, %union.rec** %prnt, align 8
  %43 = bitcast %union.rec* %42 to %struct.word_type*
  %44 = getelementptr inbounds %struct.word_type, %struct.word_type* %43, i32 0, i32 1
  %45 = bitcast %union.FIRST_UNION* %44 to %struct.anon*
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 0
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 8
  br i1 %49, label %50, label %52

; <label>:50                                      ; preds = %41
  %51 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %51, %union.rec** %1
  br label %55

; <label>:52                                      ; preds = %41
  %53 = load %union.rec*, %union.rec** %prnt, align 8
  store %union.rec* %53, %union.rec** %2, align 8
  br label %3

; <label>:54                                      ; preds = %3
  store %union.rec* null, %union.rec** %1
  br label %55

; <label>:55                                      ; preds = %54, %50
  %56 = load %union.rec*, %union.rec** %1
  ret %union.rec* %56
}

; Function Attrs: nounwind uwtable
define %union.rec* @ConvertGalleyList(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %junk1 = alloca %union.rec*, align 8
  %junk2 = alloca %union.rec*, align 8
  %obj = alloca %union.rec*, align 8
  %n = alloca i32, align 4
  store %union.rec* %x, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = bitcast %union.rec* %2 to %struct.word_type*
  %4 = getelementptr inbounds %struct.word_type, %struct.word_type* %3, i32 0, i32 0
  %5 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4, i32 0, i64 0
  %6 = getelementptr inbounds %struct.LIST, %struct.LIST* %5, i32 0, i32 1
  %7 = load %union.rec*, %union.rec** %6, align 8
  %8 = bitcast %union.rec* %7 to %struct.word_type*
  %9 = getelementptr inbounds %struct.word_type, %struct.word_type* %8, i32 0, i32 0
  %10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9, i32 0, i64 1
  %11 = getelementptr inbounds %struct.LIST, %struct.LIST* %10, i32 0, i32 0
  %12 = load %union.rec*, %union.rec** %11, align 8
  store %union.rec* %12, %union.rec** %res, align 8
  br label %13

; <label>:13                                      ; preds = %23, %0
  %14 = load %union.rec*, %union.rec** %res, align 8
  %15 = bitcast %union.rec* %14 to %struct.word_type*
  %16 = getelementptr inbounds %struct.word_type, %struct.word_type* %15, i32 0, i32 1
  %17 = bitcast %union.FIRST_UNION* %16 to %struct.anon*
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 0
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30

; <label>:22                                      ; preds = %13
  br label %23

; <label>:23                                      ; preds = %22
  %24 = load %union.rec*, %union.rec** %res, align 8
  %25 = bitcast %union.rec* %24 to %struct.word_type*
  %26 = getelementptr inbounds %struct.word_type, %struct.word_type* %25, i32 0, i32 0
  %27 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %26, i32 0, i64 1
  %28 = getelementptr inbounds %struct.LIST, %struct.LIST* %27, i32 0, i32 0
  %29 = load %union.rec*, %union.rec** %28, align 8
  store %union.rec* %29, %union.rec** %res, align 8
  br label %13

; <label>:30                                      ; preds = %13
  %31 = load %union.rec*, %union.rec** %res, align 8
  %32 = bitcast %union.rec* %31 to %struct.word_type*
  %33 = getelementptr inbounds %struct.word_type, %struct.word_type* %32, i32 0, i32 0
  %34 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %33, i32 0, i64 0
  %35 = getelementptr inbounds %struct.LIST, %struct.LIST* %34, i32 0, i32 1
  %36 = load %union.rec*, %union.rec** %35, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 0
  %39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %38, i32 0, i64 1
  %40 = getelementptr inbounds %struct.LIST, %struct.LIST* %39, i32 0, i32 0
  %41 = load %union.rec*, %union.rec** %40, align 8
  store %union.rec* %41, %union.rec** %y, align 8
  br label %42

; <label>:42                                      ; preds = %52, %30
  %43 = load %union.rec*, %union.rec** %y, align 8
  %44 = bitcast %union.rec* %43 to %struct.word_type*
  %45 = getelementptr inbounds %struct.word_type, %struct.word_type* %44, i32 0, i32 1
  %46 = bitcast %union.FIRST_UNION* %45 to %struct.anon*
  %47 = getelementptr inbounds %struct.anon, %struct.anon* %46, i32 0, i32 0
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

; <label>:51                                      ; preds = %42
  br label %52

; <label>:52                                      ; preds = %51
  %53 = load %union.rec*, %union.rec** %y, align 8
  %54 = bitcast %union.rec* %53 to %struct.word_type*
  %55 = getelementptr inbounds %struct.word_type, %struct.word_type* %54, i32 0, i32 0
  %56 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %55, i32 0, i64 1
  %57 = getelementptr inbounds %struct.LIST, %struct.LIST* %56, i32 0, i32 0
  %58 = load %union.rec*, %union.rec** %57, align 8
  store %union.rec* %58, %union.rec** %y, align 8
  br label %42

; <label>:59                                      ; preds = %42
  %60 = load %union.rec*, %union.rec** %1, align 8
  %61 = bitcast %union.rec* %60 to %struct.word_type*
  %62 = getelementptr inbounds %struct.word_type, %struct.word_type* %61, i32 0, i32 0
  %63 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %62, i32 0, i64 0
  %64 = getelementptr inbounds %struct.LIST, %struct.LIST* %63, i32 0, i32 1
  %65 = load %union.rec*, %union.rec** %64, align 8
  store %union.rec* %65, %union.rec** @xx_link, align 8
  %66 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %66, %union.rec** @zz_hold, align 8
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  %68 = bitcast %union.rec* %67 to %struct.word_type*
  %69 = getelementptr inbounds %struct.word_type, %struct.word_type* %68, i32 0, i32 0
  %70 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %69, i32 0, i64 1
  %71 = getelementptr inbounds %struct.LIST, %struct.LIST* %70, i32 0, i32 1
  %72 = load %union.rec*, %union.rec** %71, align 8
  %73 = load %union.rec*, %union.rec** @zz_hold, align 8
  %74 = icmp eq %union.rec* %72, %73
  br i1 %74, label %75, label %76

; <label>:75                                      ; preds = %59
  br label %117

; <label>:76                                      ; preds = %59
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  %78 = bitcast %union.rec* %77 to %struct.word_type*
  %79 = getelementptr inbounds %struct.word_type, %struct.word_type* %78, i32 0, i32 0
  %80 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %79, i32 0, i64 1
  %81 = getelementptr inbounds %struct.LIST, %struct.LIST* %80, i32 0, i32 1
  %82 = load %union.rec*, %union.rec** %81, align 8
  store %union.rec* %82, %union.rec** @zz_res, align 8
  %83 = load %union.rec*, %union.rec** @zz_hold, align 8
  %84 = bitcast %union.rec* %83 to %struct.word_type*
  %85 = getelementptr inbounds %struct.word_type, %struct.word_type* %84, i32 0, i32 0
  %86 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %85, i32 0, i64 1
  %87 = getelementptr inbounds %struct.LIST, %struct.LIST* %86, i32 0, i32 0
  %88 = load %union.rec*, %union.rec** %87, align 8
  %89 = load %union.rec*, %union.rec** @zz_res, align 8
  %90 = bitcast %union.rec* %89 to %struct.word_type*
  %91 = getelementptr inbounds %struct.word_type, %struct.word_type* %90, i32 0, i32 0
  %92 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %91, i32 0, i64 1
  %93 = getelementptr inbounds %struct.LIST, %struct.LIST* %92, i32 0, i32 0
  store %union.rec* %88, %union.rec** %93, align 8
  %94 = load %union.rec*, %union.rec** @zz_res, align 8
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  %96 = bitcast %union.rec* %95 to %struct.word_type*
  %97 = getelementptr inbounds %struct.word_type, %struct.word_type* %96, i32 0, i32 0
  %98 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %97, i32 0, i64 1
  %99 = getelementptr inbounds %struct.LIST, %struct.LIST* %98, i32 0, i32 0
  %100 = load %union.rec*, %union.rec** %99, align 8
  %101 = bitcast %union.rec* %100 to %struct.word_type*
  %102 = getelementptr inbounds %struct.word_type, %struct.word_type* %101, i32 0, i32 0
  %103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %102, i32 0, i64 1
  %104 = getelementptr inbounds %struct.LIST, %struct.LIST* %103, i32 0, i32 1
  store %union.rec* %94, %union.rec** %104, align 8
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %107 = bitcast %union.rec* %106 to %struct.word_type*
  %108 = getelementptr inbounds %struct.word_type, %struct.word_type* %107, i32 0, i32 0
  %109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %108, i32 0, i64 1
  %110 = getelementptr inbounds %struct.LIST, %struct.LIST* %109, i32 0, i32 1
  store %union.rec* %105, %union.rec** %110, align 8
  %111 = load %union.rec*, %union.rec** @zz_hold, align 8
  %112 = bitcast %union.rec* %111 to %struct.word_type*
  %113 = getelementptr inbounds %struct.word_type, %struct.word_type* %112, i32 0, i32 0
  %114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %113, i32 0, i64 1
  %115 = getelementptr inbounds %struct.LIST, %struct.LIST* %114, i32 0, i32 0
  store %union.rec* %105, %union.rec** %115, align 8
  %116 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %117

; <label>:117                                     ; preds = %76, %75
  %118 = phi %union.rec* [ null, %75 ], [ %116, %76 ]
  %119 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %119, %union.rec** @zz_res, align 8
  %120 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %120, %union.rec** @zz_hold, align 8
  %121 = load %union.rec*, %union.rec** @zz_hold, align 8
  %122 = icmp eq %union.rec* %121, null
  br i1 %122, label %123, label %125

; <label>:123                                     ; preds = %117
  %124 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %173

; <label>:125                                     ; preds = %117
  %126 = load %union.rec*, %union.rec** @zz_res, align 8
  %127 = icmp eq %union.rec* %126, null
  br i1 %127, label %128, label %130

; <label>:128                                     ; preds = %125
  %129 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %171

; <label>:130                                     ; preds = %125
  %131 = load %union.rec*, %union.rec** @zz_hold, align 8
  %132 = bitcast %union.rec* %131 to %struct.word_type*
  %133 = getelementptr inbounds %struct.word_type, %struct.word_type* %132, i32 0, i32 0
  %134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %133, i32 0, i64 1
  %135 = getelementptr inbounds %struct.LIST, %struct.LIST* %134, i32 0, i32 0
  %136 = load %union.rec*, %union.rec** %135, align 8
  store %union.rec* %136, %union.rec** @zz_tmp, align 8
  %137 = load %union.rec*, %union.rec** @zz_res, align 8
  %138 = bitcast %union.rec* %137 to %struct.word_type*
  %139 = getelementptr inbounds %struct.word_type, %struct.word_type* %138, i32 0, i32 0
  %140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %139, i32 0, i64 1
  %141 = getelementptr inbounds %struct.LIST, %struct.LIST* %140, i32 0, i32 0
  %142 = load %union.rec*, %union.rec** %141, align 8
  %143 = load %union.rec*, %union.rec** @zz_hold, align 8
  %144 = bitcast %union.rec* %143 to %struct.word_type*
  %145 = getelementptr inbounds %struct.word_type, %struct.word_type* %144, i32 0, i32 0
  %146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %145, i32 0, i64 1
  %147 = getelementptr inbounds %struct.LIST, %struct.LIST* %146, i32 0, i32 0
  store %union.rec* %142, %union.rec** %147, align 8
  %148 = load %union.rec*, %union.rec** @zz_hold, align 8
  %149 = load %union.rec*, %union.rec** @zz_res, align 8
  %150 = bitcast %union.rec* %149 to %struct.word_type*
  %151 = getelementptr inbounds %struct.word_type, %struct.word_type* %150, i32 0, i32 0
  %152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %151, i32 0, i64 1
  %153 = getelementptr inbounds %struct.LIST, %struct.LIST* %152, i32 0, i32 0
  %154 = load %union.rec*, %union.rec** %153, align 8
  %155 = bitcast %union.rec* %154 to %struct.word_type*
  %156 = getelementptr inbounds %struct.word_type, %struct.word_type* %155, i32 0, i32 0
  %157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %156, i32 0, i64 1
  %158 = getelementptr inbounds %struct.LIST, %struct.LIST* %157, i32 0, i32 1
  store %union.rec* %148, %union.rec** %158, align 8
  %159 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %160 = load %union.rec*, %union.rec** @zz_res, align 8
  %161 = bitcast %union.rec* %160 to %struct.word_type*
  %162 = getelementptr inbounds %struct.word_type, %struct.word_type* %161, i32 0, i32 0
  %163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %162, i32 0, i64 1
  %164 = getelementptr inbounds %struct.LIST, %struct.LIST* %163, i32 0, i32 0
  store %union.rec* %159, %union.rec** %164, align 8
  %165 = load %union.rec*, %union.rec** @zz_res, align 8
  %166 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %167 = bitcast %union.rec* %166 to %struct.word_type*
  %168 = getelementptr inbounds %struct.word_type, %struct.word_type* %167, i32 0, i32 0
  %169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %168, i32 0, i64 1
  %170 = getelementptr inbounds %struct.LIST, %struct.LIST* %169, i32 0, i32 1
  store %union.rec* %165, %union.rec** %170, align 8
  br label %171

; <label>:171                                     ; preds = %130, %128
  %172 = phi %union.rec* [ %129, %128 ], [ %165, %130 ]
  br label %173

; <label>:173                                     ; preds = %171, %123
  %174 = phi %union.rec* [ %124, %123 ], [ %172, %171 ]
  %175 = load %union.rec*, %union.rec** %res, align 8
  %176 = bitcast %union.rec* %175 to %struct.word_type*
  %177 = getelementptr inbounds %struct.word_type, %struct.word_type* %176, i32 0, i32 0
  %178 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %177, i32 0, i64 0
  %179 = getelementptr inbounds %struct.LIST, %struct.LIST* %178, i32 0, i32 1
  %180 = load %union.rec*, %union.rec** %179, align 8
  store %union.rec* %180, %union.rec** @xx_link, align 8
  %181 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %181, %union.rec** @zz_hold, align 8
  %182 = load %union.rec*, %union.rec** @zz_hold, align 8
  %183 = bitcast %union.rec* %182 to %struct.word_type*
  %184 = getelementptr inbounds %struct.word_type, %struct.word_type* %183, i32 0, i32 0
  %185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %184, i32 0, i64 1
  %186 = getelementptr inbounds %struct.LIST, %struct.LIST* %185, i32 0, i32 1
  %187 = load %union.rec*, %union.rec** %186, align 8
  %188 = load %union.rec*, %union.rec** @zz_hold, align 8
  %189 = icmp eq %union.rec* %187, %188
  br i1 %189, label %190, label %191

; <label>:190                                     ; preds = %173
  br label %232

; <label>:191                                     ; preds = %173
  %192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %193 = bitcast %union.rec* %192 to %struct.word_type*
  %194 = getelementptr inbounds %struct.word_type, %struct.word_type* %193, i32 0, i32 0
  %195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %194, i32 0, i64 1
  %196 = getelementptr inbounds %struct.LIST, %struct.LIST* %195, i32 0, i32 1
  %197 = load %union.rec*, %union.rec** %196, align 8
  store %union.rec* %197, %union.rec** @zz_res, align 8
  %198 = load %union.rec*, %union.rec** @zz_hold, align 8
  %199 = bitcast %union.rec* %198 to %struct.word_type*
  %200 = getelementptr inbounds %struct.word_type, %struct.word_type* %199, i32 0, i32 0
  %201 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %200, i32 0, i64 1
  %202 = getelementptr inbounds %struct.LIST, %struct.LIST* %201, i32 0, i32 0
  %203 = load %union.rec*, %union.rec** %202, align 8
  %204 = load %union.rec*, %union.rec** @zz_res, align 8
  %205 = bitcast %union.rec* %204 to %struct.word_type*
  %206 = getelementptr inbounds %struct.word_type, %struct.word_type* %205, i32 0, i32 0
  %207 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %206, i32 0, i64 1
  %208 = getelementptr inbounds %struct.LIST, %struct.LIST* %207, i32 0, i32 0
  store %union.rec* %203, %union.rec** %208, align 8
  %209 = load %union.rec*, %union.rec** @zz_res, align 8
  %210 = load %union.rec*, %union.rec** @zz_hold, align 8
  %211 = bitcast %union.rec* %210 to %struct.word_type*
  %212 = getelementptr inbounds %struct.word_type, %struct.word_type* %211, i32 0, i32 0
  %213 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %212, i32 0, i64 1
  %214 = getelementptr inbounds %struct.LIST, %struct.LIST* %213, i32 0, i32 0
  %215 = load %union.rec*, %union.rec** %214, align 8
  %216 = bitcast %union.rec* %215 to %struct.word_type*
  %217 = getelementptr inbounds %struct.word_type, %struct.word_type* %216, i32 0, i32 0
  %218 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %217, i32 0, i64 1
  %219 = getelementptr inbounds %struct.LIST, %struct.LIST* %218, i32 0, i32 1
  store %union.rec* %209, %union.rec** %219, align 8
  %220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %221 = load %union.rec*, %union.rec** @zz_hold, align 8
  %222 = bitcast %union.rec* %221 to %struct.word_type*
  %223 = getelementptr inbounds %struct.word_type, %struct.word_type* %222, i32 0, i32 0
  %224 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %223, i32 0, i64 1
  %225 = getelementptr inbounds %struct.LIST, %struct.LIST* %224, i32 0, i32 1
  store %union.rec* %220, %union.rec** %225, align 8
  %226 = load %union.rec*, %union.rec** @zz_hold, align 8
  %227 = bitcast %union.rec* %226 to %struct.word_type*
  %228 = getelementptr inbounds %struct.word_type, %struct.word_type* %227, i32 0, i32 0
  %229 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %228, i32 0, i64 1
  %230 = getelementptr inbounds %struct.LIST, %struct.LIST* %229, i32 0, i32 0
  store %union.rec* %220, %union.rec** %230, align 8
  %231 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %232

; <label>:232                                     ; preds = %191, %190
  %233 = phi %union.rec* [ null, %190 ], [ %231, %191 ]
  %234 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %234, %union.rec** @zz_hold, align 8
  %235 = load %union.rec*, %union.rec** @zz_hold, align 8
  %236 = bitcast %union.rec* %235 to %struct.word_type*
  %237 = getelementptr inbounds %struct.word_type, %struct.word_type* %236, i32 0, i32 0
  %238 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %237, i32 0, i64 0
  %239 = getelementptr inbounds %struct.LIST, %struct.LIST* %238, i32 0, i32 1
  %240 = load %union.rec*, %union.rec** %239, align 8
  %241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %242 = icmp eq %union.rec* %240, %241
  br i1 %242, label %243, label %244

; <label>:243                                     ; preds = %232
  br label %285

; <label>:244                                     ; preds = %232
  %245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %246 = bitcast %union.rec* %245 to %struct.word_type*
  %247 = getelementptr inbounds %struct.word_type, %struct.word_type* %246, i32 0, i32 0
  %248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %247, i32 0, i64 0
  %249 = getelementptr inbounds %struct.LIST, %struct.LIST* %248, i32 0, i32 1
  %250 = load %union.rec*, %union.rec** %249, align 8
  store %union.rec* %250, %union.rec** @zz_res, align 8
  %251 = load %union.rec*, %union.rec** @zz_hold, align 8
  %252 = bitcast %union.rec* %251 to %struct.word_type*
  %253 = getelementptr inbounds %struct.word_type, %struct.word_type* %252, i32 0, i32 0
  %254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %253, i32 0, i64 0
  %255 = getelementptr inbounds %struct.LIST, %struct.LIST* %254, i32 0, i32 0
  %256 = load %union.rec*, %union.rec** %255, align 8
  %257 = load %union.rec*, %union.rec** @zz_res, align 8
  %258 = bitcast %union.rec* %257 to %struct.word_type*
  %259 = getelementptr inbounds %struct.word_type, %struct.word_type* %258, i32 0, i32 0
  %260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %259, i32 0, i64 0
  %261 = getelementptr inbounds %struct.LIST, %struct.LIST* %260, i32 0, i32 0
  store %union.rec* %256, %union.rec** %261, align 8
  %262 = load %union.rec*, %union.rec** @zz_res, align 8
  %263 = load %union.rec*, %union.rec** @zz_hold, align 8
  %264 = bitcast %union.rec* %263 to %struct.word_type*
  %265 = getelementptr inbounds %struct.word_type, %struct.word_type* %264, i32 0, i32 0
  %266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %265, i32 0, i64 0
  %267 = getelementptr inbounds %struct.LIST, %struct.LIST* %266, i32 0, i32 0
  %268 = load %union.rec*, %union.rec** %267, align 8
  %269 = bitcast %union.rec* %268 to %struct.word_type*
  %270 = getelementptr inbounds %struct.word_type, %struct.word_type* %269, i32 0, i32 0
  %271 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %270, i32 0, i64 0
  %272 = getelementptr inbounds %struct.LIST, %struct.LIST* %271, i32 0, i32 1
  store %union.rec* %262, %union.rec** %272, align 8
  %273 = load %union.rec*, %union.rec** @zz_hold, align 8
  %274 = load %union.rec*, %union.rec** @zz_hold, align 8
  %275 = bitcast %union.rec* %274 to %struct.word_type*
  %276 = getelementptr inbounds %struct.word_type, %struct.word_type* %275, i32 0, i32 0
  %277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %276, i32 0, i64 0
  %278 = getelementptr inbounds %struct.LIST, %struct.LIST* %277, i32 0, i32 1
  store %union.rec* %273, %union.rec** %278, align 8
  %279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %280 = bitcast %union.rec* %279 to %struct.word_type*
  %281 = getelementptr inbounds %struct.word_type, %struct.word_type* %280, i32 0, i32 0
  %282 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %281, i32 0, i64 0
  %283 = getelementptr inbounds %struct.LIST, %struct.LIST* %282, i32 0, i32 0
  store %union.rec* %273, %union.rec** %283, align 8
  %284 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %285

; <label>:285                                     ; preds = %244, %243
  %286 = phi %union.rec* [ null, %243 ], [ %284, %244 ]
  %287 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %287, %union.rec** @zz_hold, align 8
  %288 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %288, %union.rec** @zz_hold, align 8
  %289 = load %union.rec*, %union.rec** @zz_hold, align 8
  %290 = bitcast %union.rec* %289 to %struct.word_type*
  %291 = getelementptr inbounds %struct.word_type, %struct.word_type* %290, i32 0, i32 1
  %292 = bitcast %union.FIRST_UNION* %291 to %struct.anon*
  %293 = getelementptr inbounds %struct.anon, %struct.anon* %292, i32 0, i32 0
  %294 = load i8, i8* %293, align 1
  %295 = zext i8 %294 to i32
  %296 = icmp eq i32 %295, 11
  br i1 %296, label %306, label %297

; <label>:297                                     ; preds = %285
  %298 = load %union.rec*, %union.rec** @zz_hold, align 8
  %299 = bitcast %union.rec* %298 to %struct.word_type*
  %300 = getelementptr inbounds %struct.word_type, %struct.word_type* %299, i32 0, i32 1
  %301 = bitcast %union.FIRST_UNION* %300 to %struct.anon*
  %302 = getelementptr inbounds %struct.anon, %struct.anon* %301, i32 0, i32 0
  %303 = load i8, i8* %302, align 1
  %304 = zext i8 %303 to i32
  %305 = icmp eq i32 %304, 12
  br i1 %305, label %306, label %314

; <label>:306                                     ; preds = %297, %285
  %307 = load %union.rec*, %union.rec** @zz_hold, align 8
  %308 = bitcast %union.rec* %307 to %struct.word_type*
  %309 = getelementptr inbounds %struct.word_type, %struct.word_type* %308, i32 0, i32 1
  %310 = bitcast %union.FIRST_UNION* %309 to %struct.anon*
  %311 = getelementptr inbounds %struct.anon, %struct.anon* %310, i32 0, i32 1
  %312 = load i8, i8* %311, align 1
  %313 = zext i8 %312 to i32
  br label %325

; <label>:314                                     ; preds = %297
  %315 = load %union.rec*, %union.rec** @zz_hold, align 8
  %316 = bitcast %union.rec* %315 to %struct.word_type*
  %317 = getelementptr inbounds %struct.word_type, %struct.word_type* %316, i32 0, i32 1
  %318 = bitcast %union.FIRST_UNION* %317 to %struct.anon*
  %319 = getelementptr inbounds %struct.anon, %struct.anon* %318, i32 0, i32 0
  %320 = load i8, i8* %319, align 1
  %321 = zext i8 %320 to i64
  %322 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %321
  %323 = load i8, i8* %322, align 1
  %324 = zext i8 %323 to i32
  br label %325

; <label>:325                                     ; preds = %314, %306
  %326 = phi i32 [ %313, %306 ], [ %324, %314 ]
  store i32 %326, i32* @zz_size, align 4
  %327 = load i32, i32* @zz_size, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %328
  %330 = load %union.rec*, %union.rec** %329, align 8
  %331 = load %union.rec*, %union.rec** @zz_hold, align 8
  %332 = bitcast %union.rec* %331 to %struct.word_type*
  %333 = getelementptr inbounds %struct.word_type, %struct.word_type* %332, i32 0, i32 0
  %334 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %333, i32 0, i64 0
  %335 = getelementptr inbounds %struct.LIST, %struct.LIST* %334, i32 0, i32 0
  store %union.rec* %330, %union.rec** %335, align 8
  %336 = load %union.rec*, %union.rec** @zz_hold, align 8
  %337 = load i32, i32* @zz_size, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %338
  store %union.rec* %336, %union.rec** %339, align 8
  %340 = load %union.rec*, %union.rec** %1, align 8
  %341 = bitcast %union.rec* %340 to %struct.word_type*
  %342 = getelementptr inbounds %struct.word_type, %struct.word_type* %341, i32 0, i32 0
  %343 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %342, i32 0, i64 1
  %344 = getelementptr inbounds %struct.LIST, %struct.LIST* %343, i32 0, i32 1
  %345 = load %union.rec*, %union.rec** %344, align 8
  store %union.rec* %345, %union.rec** @xx_link, align 8
  %346 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %346, %union.rec** @zz_hold, align 8
  %347 = load %union.rec*, %union.rec** @zz_hold, align 8
  %348 = bitcast %union.rec* %347 to %struct.word_type*
  %349 = getelementptr inbounds %struct.word_type, %struct.word_type* %348, i32 0, i32 0
  %350 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %349, i32 0, i64 1
  %351 = getelementptr inbounds %struct.LIST, %struct.LIST* %350, i32 0, i32 1
  %352 = load %union.rec*, %union.rec** %351, align 8
  %353 = load %union.rec*, %union.rec** @zz_hold, align 8
  %354 = icmp eq %union.rec* %352, %353
  br i1 %354, label %355, label %356

; <label>:355                                     ; preds = %325
  br label %397

; <label>:356                                     ; preds = %325
  %357 = load %union.rec*, %union.rec** @zz_hold, align 8
  %358 = bitcast %union.rec* %357 to %struct.word_type*
  %359 = getelementptr inbounds %struct.word_type, %struct.word_type* %358, i32 0, i32 0
  %360 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %359, i32 0, i64 1
  %361 = getelementptr inbounds %struct.LIST, %struct.LIST* %360, i32 0, i32 1
  %362 = load %union.rec*, %union.rec** %361, align 8
  store %union.rec* %362, %union.rec** @zz_res, align 8
  %363 = load %union.rec*, %union.rec** @zz_hold, align 8
  %364 = bitcast %union.rec* %363 to %struct.word_type*
  %365 = getelementptr inbounds %struct.word_type, %struct.word_type* %364, i32 0, i32 0
  %366 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %365, i32 0, i64 1
  %367 = getelementptr inbounds %struct.LIST, %struct.LIST* %366, i32 0, i32 0
  %368 = load %union.rec*, %union.rec** %367, align 8
  %369 = load %union.rec*, %union.rec** @zz_res, align 8
  %370 = bitcast %union.rec* %369 to %struct.word_type*
  %371 = getelementptr inbounds %struct.word_type, %struct.word_type* %370, i32 0, i32 0
  %372 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %371, i32 0, i64 1
  %373 = getelementptr inbounds %struct.LIST, %struct.LIST* %372, i32 0, i32 0
  store %union.rec* %368, %union.rec** %373, align 8
  %374 = load %union.rec*, %union.rec** @zz_res, align 8
  %375 = load %union.rec*, %union.rec** @zz_hold, align 8
  %376 = bitcast %union.rec* %375 to %struct.word_type*
  %377 = getelementptr inbounds %struct.word_type, %struct.word_type* %376, i32 0, i32 0
  %378 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %377, i32 0, i64 1
  %379 = getelementptr inbounds %struct.LIST, %struct.LIST* %378, i32 0, i32 0
  %380 = load %union.rec*, %union.rec** %379, align 8
  %381 = bitcast %union.rec* %380 to %struct.word_type*
  %382 = getelementptr inbounds %struct.word_type, %struct.word_type* %381, i32 0, i32 0
  %383 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %382, i32 0, i64 1
  %384 = getelementptr inbounds %struct.LIST, %struct.LIST* %383, i32 0, i32 1
  store %union.rec* %374, %union.rec** %384, align 8
  %385 = load %union.rec*, %union.rec** @zz_hold, align 8
  %386 = load %union.rec*, %union.rec** @zz_hold, align 8
  %387 = bitcast %union.rec* %386 to %struct.word_type*
  %388 = getelementptr inbounds %struct.word_type, %struct.word_type* %387, i32 0, i32 0
  %389 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %388, i32 0, i64 1
  %390 = getelementptr inbounds %struct.LIST, %struct.LIST* %389, i32 0, i32 1
  store %union.rec* %385, %union.rec** %390, align 8
  %391 = load %union.rec*, %union.rec** @zz_hold, align 8
  %392 = bitcast %union.rec* %391 to %struct.word_type*
  %393 = getelementptr inbounds %struct.word_type, %struct.word_type* %392, i32 0, i32 0
  %394 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %393, i32 0, i64 1
  %395 = getelementptr inbounds %struct.LIST, %struct.LIST* %394, i32 0, i32 0
  store %union.rec* %385, %union.rec** %395, align 8
  %396 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %397

; <label>:397                                     ; preds = %356, %355
  %398 = phi %union.rec* [ null, %355 ], [ %396, %356 ]
  %399 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %399, %union.rec** @zz_res, align 8
  %400 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %400, %union.rec** @zz_hold, align 8
  %401 = load %union.rec*, %union.rec** @zz_hold, align 8
  %402 = icmp eq %union.rec* %401, null
  br i1 %402, label %403, label %405

; <label>:403                                     ; preds = %397
  %404 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %453

; <label>:405                                     ; preds = %397
  %406 = load %union.rec*, %union.rec** @zz_res, align 8
  %407 = icmp eq %union.rec* %406, null
  br i1 %407, label %408, label %410

; <label>:408                                     ; preds = %405
  %409 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %451

; <label>:410                                     ; preds = %405
  %411 = load %union.rec*, %union.rec** @zz_hold, align 8
  %412 = bitcast %union.rec* %411 to %struct.word_type*
  %413 = getelementptr inbounds %struct.word_type, %struct.word_type* %412, i32 0, i32 0
  %414 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %413, i32 0, i64 1
  %415 = getelementptr inbounds %struct.LIST, %struct.LIST* %414, i32 0, i32 0
  %416 = load %union.rec*, %union.rec** %415, align 8
  store %union.rec* %416, %union.rec** @zz_tmp, align 8
  %417 = load %union.rec*, %union.rec** @zz_res, align 8
  %418 = bitcast %union.rec* %417 to %struct.word_type*
  %419 = getelementptr inbounds %struct.word_type, %struct.word_type* %418, i32 0, i32 0
  %420 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %419, i32 0, i64 1
  %421 = getelementptr inbounds %struct.LIST, %struct.LIST* %420, i32 0, i32 0
  %422 = load %union.rec*, %union.rec** %421, align 8
  %423 = load %union.rec*, %union.rec** @zz_hold, align 8
  %424 = bitcast %union.rec* %423 to %struct.word_type*
  %425 = getelementptr inbounds %struct.word_type, %struct.word_type* %424, i32 0, i32 0
  %426 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %425, i32 0, i64 1
  %427 = getelementptr inbounds %struct.LIST, %struct.LIST* %426, i32 0, i32 0
  store %union.rec* %422, %union.rec** %427, align 8
  %428 = load %union.rec*, %union.rec** @zz_hold, align 8
  %429 = load %union.rec*, %union.rec** @zz_res, align 8
  %430 = bitcast %union.rec* %429 to %struct.word_type*
  %431 = getelementptr inbounds %struct.word_type, %struct.word_type* %430, i32 0, i32 0
  %432 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %431, i32 0, i64 1
  %433 = getelementptr inbounds %struct.LIST, %struct.LIST* %432, i32 0, i32 0
  %434 = load %union.rec*, %union.rec** %433, align 8
  %435 = bitcast %union.rec* %434 to %struct.word_type*
  %436 = getelementptr inbounds %struct.word_type, %struct.word_type* %435, i32 0, i32 0
  %437 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %436, i32 0, i64 1
  %438 = getelementptr inbounds %struct.LIST, %struct.LIST* %437, i32 0, i32 1
  store %union.rec* %428, %union.rec** %438, align 8
  %439 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %440 = load %union.rec*, %union.rec** @zz_res, align 8
  %441 = bitcast %union.rec* %440 to %struct.word_type*
  %442 = getelementptr inbounds %struct.word_type, %struct.word_type* %441, i32 0, i32 0
  %443 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %442, i32 0, i64 1
  %444 = getelementptr inbounds %struct.LIST, %struct.LIST* %443, i32 0, i32 0
  store %union.rec* %439, %union.rec** %444, align 8
  %445 = load %union.rec*, %union.rec** @zz_res, align 8
  %446 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %447 = bitcast %union.rec* %446 to %struct.word_type*
  %448 = getelementptr inbounds %struct.word_type, %struct.word_type* %447, i32 0, i32 0
  %449 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %448, i32 0, i64 1
  %450 = getelementptr inbounds %struct.LIST, %struct.LIST* %449, i32 0, i32 1
  store %union.rec* %445, %union.rec** %450, align 8
  br label %451

; <label>:451                                     ; preds = %410, %408
  %452 = phi %union.rec* [ %409, %408 ], [ %445, %410 ]
  br label %453

; <label>:453                                     ; preds = %451, %403
  %454 = phi %union.rec* [ %404, %403 ], [ %452, %451 ]
  %455 = load %union.rec*, %union.rec** %1, align 8
  %456 = bitcast %union.rec* %455 to %struct.word_type*
  %457 = getelementptr inbounds %struct.word_type, %struct.word_type* %456, i32 0, i32 0
  %458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %457, i32 0, i64 0
  %459 = getelementptr inbounds %struct.LIST, %struct.LIST* %458, i32 0, i32 1
  %460 = load %union.rec*, %union.rec** %459, align 8
  store %union.rec* %460, %union.rec** %link, align 8
  store i32 0, i32* %n, align 4
  br label %461

; <label>:461                                     ; preds = %466, %453
  %462 = load %union.rec*, %union.rec** %link, align 8
  %463 = load %union.rec*, %union.rec** %1, align 8
  %464 = icmp ne %union.rec* %462, %463
  br i1 %464, label %465, label %475

; <label>:465                                     ; preds = %461
  br label %466

; <label>:466                                     ; preds = %465
  %467 = load %union.rec*, %union.rec** %link, align 8
  %468 = bitcast %union.rec* %467 to %struct.word_type*
  %469 = getelementptr inbounds %struct.word_type, %struct.word_type* %468, i32 0, i32 0
  %470 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %469, i32 0, i64 0
  %471 = getelementptr inbounds %struct.LIST, %struct.LIST* %470, i32 0, i32 1
  %472 = load %union.rec*, %union.rec** %471, align 8
  store %union.rec* %472, %union.rec** %link, align 8
  %473 = load i32, i32* %n, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %n, align 4
  br label %461

; <label>:475                                     ; preds = %461
  %476 = load i32, i32* %n, align 4
  %477 = load %union.rec*, %union.rec** %1, align 8
  %478 = call %union.rec* @BuildMergeTree(i32 %476, %union.rec* %477, %union.rec** %junk1, %union.rec** %junk2)
  store %union.rec* %478, %union.rec** %y, align 8
  %479 = load %union.rec*, %union.rec** %1, align 8
  %480 = bitcast %union.rec* %479 to %struct.word_type*
  %481 = getelementptr inbounds %struct.word_type, %struct.word_type* %480, i32 0, i32 0
  %482 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %481, i32 0, i64 0
  %483 = getelementptr inbounds %struct.LIST, %struct.LIST* %482, i32 0, i32 1
  %484 = load %union.rec*, %union.rec** %483, align 8
  %485 = load %union.rec*, %union.rec** %1, align 8
  %486 = icmp eq %union.rec* %484, %485
  br i1 %486, label %487, label %496

; <label>:487                                     ; preds = %475
  %488 = load %union.rec*, %union.rec** %1, align 8
  %489 = bitcast %union.rec* %488 to %struct.word_type*
  %490 = getelementptr inbounds %struct.word_type, %struct.word_type* %489, i32 0, i32 0
  %491 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %490, i32 0, i64 1
  %492 = getelementptr inbounds %struct.LIST, %struct.LIST* %491, i32 0, i32 1
  %493 = load %union.rec*, %union.rec** %492, align 8
  %494 = load %union.rec*, %union.rec** %1, align 8
  %495 = icmp eq %union.rec* %493, %494
  br i1 %495, label %499, label %496

; <label>:496                                     ; preds = %487, %475
  %497 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %498 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %497, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0))
  br label %499

; <label>:499                                     ; preds = %496, %487
  %500 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %500, %union.rec** @zz_hold, align 8
  %501 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %501, %union.rec** @zz_hold, align 8
  %502 = load %union.rec*, %union.rec** @zz_hold, align 8
  %503 = bitcast %union.rec* %502 to %struct.word_type*
  %504 = getelementptr inbounds %struct.word_type, %struct.word_type* %503, i32 0, i32 1
  %505 = bitcast %union.FIRST_UNION* %504 to %struct.anon*
  %506 = getelementptr inbounds %struct.anon, %struct.anon* %505, i32 0, i32 0
  %507 = load i8, i8* %506, align 1
  %508 = zext i8 %507 to i32
  %509 = icmp eq i32 %508, 11
  br i1 %509, label %519, label %510

; <label>:510                                     ; preds = %499
  %511 = load %union.rec*, %union.rec** @zz_hold, align 8
  %512 = bitcast %union.rec* %511 to %struct.word_type*
  %513 = getelementptr inbounds %struct.word_type, %struct.word_type* %512, i32 0, i32 1
  %514 = bitcast %union.FIRST_UNION* %513 to %struct.anon*
  %515 = getelementptr inbounds %struct.anon, %struct.anon* %514, i32 0, i32 0
  %516 = load i8, i8* %515, align 1
  %517 = zext i8 %516 to i32
  %518 = icmp eq i32 %517, 12
  br i1 %518, label %519, label %527

; <label>:519                                     ; preds = %510, %499
  %520 = load %union.rec*, %union.rec** @zz_hold, align 8
  %521 = bitcast %union.rec* %520 to %struct.word_type*
  %522 = getelementptr inbounds %struct.word_type, %struct.word_type* %521, i32 0, i32 1
  %523 = bitcast %union.FIRST_UNION* %522 to %struct.anon*
  %524 = getelementptr inbounds %struct.anon, %struct.anon* %523, i32 0, i32 1
  %525 = load i8, i8* %524, align 1
  %526 = zext i8 %525 to i32
  br label %538

; <label>:527                                     ; preds = %510
  %528 = load %union.rec*, %union.rec** @zz_hold, align 8
  %529 = bitcast %union.rec* %528 to %struct.word_type*
  %530 = getelementptr inbounds %struct.word_type, %struct.word_type* %529, i32 0, i32 1
  %531 = bitcast %union.FIRST_UNION* %530 to %struct.anon*
  %532 = getelementptr inbounds %struct.anon, %struct.anon* %531, i32 0, i32 0
  %533 = load i8, i8* %532, align 1
  %534 = zext i8 %533 to i64
  %535 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %534
  %536 = load i8, i8* %535, align 1
  %537 = zext i8 %536 to i32
  br label %538

; <label>:538                                     ; preds = %527, %519
  %539 = phi i32 [ %526, %519 ], [ %537, %527 ]
  store i32 %539, i32* @zz_size, align 4
  %540 = load i32, i32* @zz_size, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %541
  %543 = load %union.rec*, %union.rec** %542, align 8
  %544 = load %union.rec*, %union.rec** @zz_hold, align 8
  %545 = bitcast %union.rec* %544 to %struct.word_type*
  %546 = getelementptr inbounds %struct.word_type, %struct.word_type* %545, i32 0, i32 0
  %547 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %546, i32 0, i64 0
  %548 = getelementptr inbounds %struct.LIST, %struct.LIST* %547, i32 0, i32 0
  store %union.rec* %543, %union.rec** %548, align 8
  %549 = load %union.rec*, %union.rec** @zz_hold, align 8
  %550 = load i32, i32* @zz_size, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %551
  store %union.rec* %549, %union.rec** %552, align 8
  %553 = load %union.rec*, %union.rec** %y, align 8
  %554 = bitcast %union.rec* %553 to %struct.word_type*
  %555 = getelementptr inbounds %struct.word_type, %struct.word_type* %554, i32 0, i32 0
  %556 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %555, i32 0, i64 0
  %557 = getelementptr inbounds %struct.LIST, %struct.LIST* %556, i32 0, i32 1
  %558 = load %union.rec*, %union.rec** %557, align 8
  %559 = bitcast %union.rec* %558 to %struct.word_type*
  %560 = getelementptr inbounds %struct.word_type, %struct.word_type* %559, i32 0, i32 0
  %561 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %560, i32 0, i64 1
  %562 = getelementptr inbounds %struct.LIST, %struct.LIST* %561, i32 0, i32 0
  %563 = load %union.rec*, %union.rec** %562, align 8
  store %union.rec* %563, %union.rec** %obj, align 8
  br label %564

; <label>:564                                     ; preds = %574, %538
  %565 = load %union.rec*, %union.rec** %obj, align 8
  %566 = bitcast %union.rec* %565 to %struct.word_type*
  %567 = getelementptr inbounds %struct.word_type, %struct.word_type* %566, i32 0, i32 1
  %568 = bitcast %union.FIRST_UNION* %567 to %struct.anon*
  %569 = getelementptr inbounds %struct.anon, %struct.anon* %568, i32 0, i32 0
  %570 = load i8, i8* %569, align 1
  %571 = zext i8 %570 to i32
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %573, label %581

; <label>:573                                     ; preds = %564
  br label %574

; <label>:574                                     ; preds = %573
  %575 = load %union.rec*, %union.rec** %obj, align 8
  %576 = bitcast %union.rec* %575 to %struct.word_type*
  %577 = getelementptr inbounds %struct.word_type, %struct.word_type* %576, i32 0, i32 0
  %578 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %577, i32 0, i64 1
  %579 = getelementptr inbounds %struct.LIST, %struct.LIST* %578, i32 0, i32 0
  %580 = load %union.rec*, %union.rec** %579, align 8
  store %union.rec* %580, %union.rec** %obj, align 8
  br label %564

; <label>:581                                     ; preds = %564
  %582 = load %union.rec*, %union.rec** %y, align 8
  %583 = bitcast %union.rec* %582 to %struct.word_type*
  %584 = getelementptr inbounds %struct.word_type, %struct.word_type* %583, i32 0, i32 0
  %585 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %584, i32 0, i64 0
  %586 = getelementptr inbounds %struct.LIST, %struct.LIST* %585, i32 0, i32 1
  %587 = load %union.rec*, %union.rec** %586, align 8
  store %union.rec* %587, %union.rec** @xx_link, align 8
  %588 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %588, %union.rec** @zz_hold, align 8
  %589 = load %union.rec*, %union.rec** @zz_hold, align 8
  %590 = bitcast %union.rec* %589 to %struct.word_type*
  %591 = getelementptr inbounds %struct.word_type, %struct.word_type* %590, i32 0, i32 0
  %592 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %591, i32 0, i64 0
  %593 = getelementptr inbounds %struct.LIST, %struct.LIST* %592, i32 0, i32 1
  %594 = load %union.rec*, %union.rec** %593, align 8
  %595 = load %union.rec*, %union.rec** @zz_hold, align 8
  %596 = icmp eq %union.rec* %594, %595
  br i1 %596, label %597, label %598

; <label>:597                                     ; preds = %581
  br label %639

; <label>:598                                     ; preds = %581
  %599 = load %union.rec*, %union.rec** @zz_hold, align 8
  %600 = bitcast %union.rec* %599 to %struct.word_type*
  %601 = getelementptr inbounds %struct.word_type, %struct.word_type* %600, i32 0, i32 0
  %602 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %601, i32 0, i64 0
  %603 = getelementptr inbounds %struct.LIST, %struct.LIST* %602, i32 0, i32 1
  %604 = load %union.rec*, %union.rec** %603, align 8
  store %union.rec* %604, %union.rec** @zz_res, align 8
  %605 = load %union.rec*, %union.rec** @zz_hold, align 8
  %606 = bitcast %union.rec* %605 to %struct.word_type*
  %607 = getelementptr inbounds %struct.word_type, %struct.word_type* %606, i32 0, i32 0
  %608 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %607, i32 0, i64 0
  %609 = getelementptr inbounds %struct.LIST, %struct.LIST* %608, i32 0, i32 0
  %610 = load %union.rec*, %union.rec** %609, align 8
  %611 = load %union.rec*, %union.rec** @zz_res, align 8
  %612 = bitcast %union.rec* %611 to %struct.word_type*
  %613 = getelementptr inbounds %struct.word_type, %struct.word_type* %612, i32 0, i32 0
  %614 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %613, i32 0, i64 0
  %615 = getelementptr inbounds %struct.LIST, %struct.LIST* %614, i32 0, i32 0
  store %union.rec* %610, %union.rec** %615, align 8
  %616 = load %union.rec*, %union.rec** @zz_res, align 8
  %617 = load %union.rec*, %union.rec** @zz_hold, align 8
  %618 = bitcast %union.rec* %617 to %struct.word_type*
  %619 = getelementptr inbounds %struct.word_type, %struct.word_type* %618, i32 0, i32 0
  %620 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %619, i32 0, i64 0
  %621 = getelementptr inbounds %struct.LIST, %struct.LIST* %620, i32 0, i32 0
  %622 = load %union.rec*, %union.rec** %621, align 8
  %623 = bitcast %union.rec* %622 to %struct.word_type*
  %624 = getelementptr inbounds %struct.word_type, %struct.word_type* %623, i32 0, i32 0
  %625 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %624, i32 0, i64 0
  %626 = getelementptr inbounds %struct.LIST, %struct.LIST* %625, i32 0, i32 1
  store %union.rec* %616, %union.rec** %626, align 8
  %627 = load %union.rec*, %union.rec** @zz_hold, align 8
  %628 = load %union.rec*, %union.rec** @zz_hold, align 8
  %629 = bitcast %union.rec* %628 to %struct.word_type*
  %630 = getelementptr inbounds %struct.word_type, %struct.word_type* %629, i32 0, i32 0
  %631 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %630, i32 0, i64 0
  %632 = getelementptr inbounds %struct.LIST, %struct.LIST* %631, i32 0, i32 1
  store %union.rec* %627, %union.rec** %632, align 8
  %633 = load %union.rec*, %union.rec** @zz_hold, align 8
  %634 = bitcast %union.rec* %633 to %struct.word_type*
  %635 = getelementptr inbounds %struct.word_type, %struct.word_type* %634, i32 0, i32 0
  %636 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %635, i32 0, i64 0
  %637 = getelementptr inbounds %struct.LIST, %struct.LIST* %636, i32 0, i32 0
  store %union.rec* %627, %union.rec** %637, align 8
  %638 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %639

; <label>:639                                     ; preds = %598, %597
  %640 = phi %union.rec* [ null, %597 ], [ %638, %598 ]
  %641 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %641, %union.rec** @zz_res, align 8
  %642 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %642, %union.rec** @zz_hold, align 8
  %643 = load %union.rec*, %union.rec** @zz_hold, align 8
  %644 = icmp eq %union.rec* %643, null
  br i1 %644, label %645, label %647

; <label>:645                                     ; preds = %639
  %646 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %695

; <label>:647                                     ; preds = %639
  %648 = load %union.rec*, %union.rec** @zz_res, align 8
  %649 = icmp eq %union.rec* %648, null
  br i1 %649, label %650, label %652

; <label>:650                                     ; preds = %647
  %651 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %693

; <label>:652                                     ; preds = %647
  %653 = load %union.rec*, %union.rec** @zz_hold, align 8
  %654 = bitcast %union.rec* %653 to %struct.word_type*
  %655 = getelementptr inbounds %struct.word_type, %struct.word_type* %654, i32 0, i32 0
  %656 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %655, i32 0, i64 0
  %657 = getelementptr inbounds %struct.LIST, %struct.LIST* %656, i32 0, i32 0
  %658 = load %union.rec*, %union.rec** %657, align 8
  store %union.rec* %658, %union.rec** @zz_tmp, align 8
  %659 = load %union.rec*, %union.rec** @zz_res, align 8
  %660 = bitcast %union.rec* %659 to %struct.word_type*
  %661 = getelementptr inbounds %struct.word_type, %struct.word_type* %660, i32 0, i32 0
  %662 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %661, i32 0, i64 0
  %663 = getelementptr inbounds %struct.LIST, %struct.LIST* %662, i32 0, i32 0
  %664 = load %union.rec*, %union.rec** %663, align 8
  %665 = load %union.rec*, %union.rec** @zz_hold, align 8
  %666 = bitcast %union.rec* %665 to %struct.word_type*
  %667 = getelementptr inbounds %struct.word_type, %struct.word_type* %666, i32 0, i32 0
  %668 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %667, i32 0, i64 0
  %669 = getelementptr inbounds %struct.LIST, %struct.LIST* %668, i32 0, i32 0
  store %union.rec* %664, %union.rec** %669, align 8
  %670 = load %union.rec*, %union.rec** @zz_hold, align 8
  %671 = load %union.rec*, %union.rec** @zz_res, align 8
  %672 = bitcast %union.rec* %671 to %struct.word_type*
  %673 = getelementptr inbounds %struct.word_type, %struct.word_type* %672, i32 0, i32 0
  %674 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %673, i32 0, i64 0
  %675 = getelementptr inbounds %struct.LIST, %struct.LIST* %674, i32 0, i32 0
  %676 = load %union.rec*, %union.rec** %675, align 8
  %677 = bitcast %union.rec* %676 to %struct.word_type*
  %678 = getelementptr inbounds %struct.word_type, %struct.word_type* %677, i32 0, i32 0
  %679 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %678, i32 0, i64 0
  %680 = getelementptr inbounds %struct.LIST, %struct.LIST* %679, i32 0, i32 1
  store %union.rec* %670, %union.rec** %680, align 8
  %681 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %682 = load %union.rec*, %union.rec** @zz_res, align 8
  %683 = bitcast %union.rec* %682 to %struct.word_type*
  %684 = getelementptr inbounds %struct.word_type, %struct.word_type* %683, i32 0, i32 0
  %685 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %684, i32 0, i64 0
  %686 = getelementptr inbounds %struct.LIST, %struct.LIST* %685, i32 0, i32 0
  store %union.rec* %681, %union.rec** %686, align 8
  %687 = load %union.rec*, %union.rec** @zz_res, align 8
  %688 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %689 = bitcast %union.rec* %688 to %struct.word_type*
  %690 = getelementptr inbounds %struct.word_type, %struct.word_type* %689, i32 0, i32 0
  %691 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %690, i32 0, i64 0
  %692 = getelementptr inbounds %struct.LIST, %struct.LIST* %691, i32 0, i32 1
  store %union.rec* %687, %union.rec** %692, align 8
  br label %693

; <label>:693                                     ; preds = %652, %650
  %694 = phi %union.rec* [ %651, %650 ], [ %687, %652 ]
  br label %695

; <label>:695                                     ; preds = %693, %645
  %696 = phi %union.rec* [ %646, %645 ], [ %694, %693 ]
  %697 = load %union.rec*, %union.rec** %y, align 8
  %698 = bitcast %union.rec* %697 to %struct.word_type*
  %699 = getelementptr inbounds %struct.word_type, %struct.word_type* %698, i32 0, i32 0
  %700 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %699, i32 0, i64 0
  %701 = getelementptr inbounds %struct.LIST, %struct.LIST* %700, i32 0, i32 0
  %702 = load %union.rec*, %union.rec** %701, align 8
  store %union.rec* %702, %union.rec** @xx_link, align 8
  %703 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %703, %union.rec** @zz_hold, align 8
  %704 = load %union.rec*, %union.rec** @zz_hold, align 8
  %705 = bitcast %union.rec* %704 to %struct.word_type*
  %706 = getelementptr inbounds %struct.word_type, %struct.word_type* %705, i32 0, i32 0
  %707 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %706, i32 0, i64 0
  %708 = getelementptr inbounds %struct.LIST, %struct.LIST* %707, i32 0, i32 1
  %709 = load %union.rec*, %union.rec** %708, align 8
  %710 = load %union.rec*, %union.rec** @zz_hold, align 8
  %711 = icmp eq %union.rec* %709, %710
  br i1 %711, label %712, label %713

; <label>:712                                     ; preds = %695
  br label %754

; <label>:713                                     ; preds = %695
  %714 = load %union.rec*, %union.rec** @zz_hold, align 8
  %715 = bitcast %union.rec* %714 to %struct.word_type*
  %716 = getelementptr inbounds %struct.word_type, %struct.word_type* %715, i32 0, i32 0
  %717 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %716, i32 0, i64 0
  %718 = getelementptr inbounds %struct.LIST, %struct.LIST* %717, i32 0, i32 1
  %719 = load %union.rec*, %union.rec** %718, align 8
  store %union.rec* %719, %union.rec** @zz_res, align 8
  %720 = load %union.rec*, %union.rec** @zz_hold, align 8
  %721 = bitcast %union.rec* %720 to %struct.word_type*
  %722 = getelementptr inbounds %struct.word_type, %struct.word_type* %721, i32 0, i32 0
  %723 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %722, i32 0, i64 0
  %724 = getelementptr inbounds %struct.LIST, %struct.LIST* %723, i32 0, i32 0
  %725 = load %union.rec*, %union.rec** %724, align 8
  %726 = load %union.rec*, %union.rec** @zz_res, align 8
  %727 = bitcast %union.rec* %726 to %struct.word_type*
  %728 = getelementptr inbounds %struct.word_type, %struct.word_type* %727, i32 0, i32 0
  %729 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %728, i32 0, i64 0
  %730 = getelementptr inbounds %struct.LIST, %struct.LIST* %729, i32 0, i32 0
  store %union.rec* %725, %union.rec** %730, align 8
  %731 = load %union.rec*, %union.rec** @zz_res, align 8
  %732 = load %union.rec*, %union.rec** @zz_hold, align 8
  %733 = bitcast %union.rec* %732 to %struct.word_type*
  %734 = getelementptr inbounds %struct.word_type, %struct.word_type* %733, i32 0, i32 0
  %735 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %734, i32 0, i64 0
  %736 = getelementptr inbounds %struct.LIST, %struct.LIST* %735, i32 0, i32 0
  %737 = load %union.rec*, %union.rec** %736, align 8
  %738 = bitcast %union.rec* %737 to %struct.word_type*
  %739 = getelementptr inbounds %struct.word_type, %struct.word_type* %738, i32 0, i32 0
  %740 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %739, i32 0, i64 0
  %741 = getelementptr inbounds %struct.LIST, %struct.LIST* %740, i32 0, i32 1
  store %union.rec* %731, %union.rec** %741, align 8
  %742 = load %union.rec*, %union.rec** @zz_hold, align 8
  %743 = load %union.rec*, %union.rec** @zz_hold, align 8
  %744 = bitcast %union.rec* %743 to %struct.word_type*
  %745 = getelementptr inbounds %struct.word_type, %struct.word_type* %744, i32 0, i32 0
  %746 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %745, i32 0, i64 0
  %747 = getelementptr inbounds %struct.LIST, %struct.LIST* %746, i32 0, i32 1
  store %union.rec* %742, %union.rec** %747, align 8
  %748 = load %union.rec*, %union.rec** @zz_hold, align 8
  %749 = bitcast %union.rec* %748 to %struct.word_type*
  %750 = getelementptr inbounds %struct.word_type, %struct.word_type* %749, i32 0, i32 0
  %751 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %750, i32 0, i64 0
  %752 = getelementptr inbounds %struct.LIST, %struct.LIST* %751, i32 0, i32 0
  store %union.rec* %742, %union.rec** %752, align 8
  %753 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %754

; <label>:754                                     ; preds = %713, %712
  %755 = phi %union.rec* [ null, %712 ], [ %753, %713 ]
  %756 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %756, %union.rec** @zz_res, align 8
  %757 = load %union.rec*, %union.rec** %obj, align 8
  store %union.rec* %757, %union.rec** @zz_hold, align 8
  %758 = load %union.rec*, %union.rec** @zz_hold, align 8
  %759 = icmp eq %union.rec* %758, null
  br i1 %759, label %760, label %762

; <label>:760                                     ; preds = %754
  %761 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %810

; <label>:762                                     ; preds = %754
  %763 = load %union.rec*, %union.rec** @zz_res, align 8
  %764 = icmp eq %union.rec* %763, null
  br i1 %764, label %765, label %767

; <label>:765                                     ; preds = %762
  %766 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %808

; <label>:767                                     ; preds = %762
  %768 = load %union.rec*, %union.rec** @zz_hold, align 8
  %769 = bitcast %union.rec* %768 to %struct.word_type*
  %770 = getelementptr inbounds %struct.word_type, %struct.word_type* %769, i32 0, i32 0
  %771 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %770, i32 0, i64 0
  %772 = getelementptr inbounds %struct.LIST, %struct.LIST* %771, i32 0, i32 0
  %773 = load %union.rec*, %union.rec** %772, align 8
  store %union.rec* %773, %union.rec** @zz_tmp, align 8
  %774 = load %union.rec*, %union.rec** @zz_res, align 8
  %775 = bitcast %union.rec* %774 to %struct.word_type*
  %776 = getelementptr inbounds %struct.word_type, %struct.word_type* %775, i32 0, i32 0
  %777 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %776, i32 0, i64 0
  %778 = getelementptr inbounds %struct.LIST, %struct.LIST* %777, i32 0, i32 0
  %779 = load %union.rec*, %union.rec** %778, align 8
  %780 = load %union.rec*, %union.rec** @zz_hold, align 8
  %781 = bitcast %union.rec* %780 to %struct.word_type*
  %782 = getelementptr inbounds %struct.word_type, %struct.word_type* %781, i32 0, i32 0
  %783 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %782, i32 0, i64 0
  %784 = getelementptr inbounds %struct.LIST, %struct.LIST* %783, i32 0, i32 0
  store %union.rec* %779, %union.rec** %784, align 8
  %785 = load %union.rec*, %union.rec** @zz_hold, align 8
  %786 = load %union.rec*, %union.rec** @zz_res, align 8
  %787 = bitcast %union.rec* %786 to %struct.word_type*
  %788 = getelementptr inbounds %struct.word_type, %struct.word_type* %787, i32 0, i32 0
  %789 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %788, i32 0, i64 0
  %790 = getelementptr inbounds %struct.LIST, %struct.LIST* %789, i32 0, i32 0
  %791 = load %union.rec*, %union.rec** %790, align 8
  %792 = bitcast %union.rec* %791 to %struct.word_type*
  %793 = getelementptr inbounds %struct.word_type, %struct.word_type* %792, i32 0, i32 0
  %794 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %793, i32 0, i64 0
  %795 = getelementptr inbounds %struct.LIST, %struct.LIST* %794, i32 0, i32 1
  store %union.rec* %785, %union.rec** %795, align 8
  %796 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %797 = load %union.rec*, %union.rec** @zz_res, align 8
  %798 = bitcast %union.rec* %797 to %struct.word_type*
  %799 = getelementptr inbounds %struct.word_type, %struct.word_type* %798, i32 0, i32 0
  %800 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %799, i32 0, i64 0
  %801 = getelementptr inbounds %struct.LIST, %struct.LIST* %800, i32 0, i32 0
  store %union.rec* %796, %union.rec** %801, align 8
  %802 = load %union.rec*, %union.rec** @zz_res, align 8
  %803 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %804 = bitcast %union.rec* %803 to %struct.word_type*
  %805 = getelementptr inbounds %struct.word_type, %struct.word_type* %804, i32 0, i32 0
  %806 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %805, i32 0, i64 0
  %807 = getelementptr inbounds %struct.LIST, %struct.LIST* %806, i32 0, i32 1
  store %union.rec* %802, %union.rec** %807, align 8
  br label %808

; <label>:808                                     ; preds = %767, %765
  %809 = phi %union.rec* [ %766, %765 ], [ %802, %767 ]
  br label %810

; <label>:810                                     ; preds = %808, %760
  %811 = phi %union.rec* [ %761, %760 ], [ %809, %808 ]
  %812 = load %union.rec*, %union.rec** %y, align 8
  %813 = bitcast %union.rec* %812 to %struct.word_type*
  %814 = getelementptr inbounds %struct.word_type, %struct.word_type* %813, i32 0, i32 0
  %815 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %814, i32 0, i64 0
  %816 = getelementptr inbounds %struct.LIST, %struct.LIST* %815, i32 0, i32 1
  %817 = load %union.rec*, %union.rec** %816, align 8
  %818 = load %union.rec*, %union.rec** %y, align 8
  %819 = icmp eq %union.rec* %817, %818
  br i1 %819, label %820, label %829

; <label>:820                                     ; preds = %810
  %821 = load %union.rec*, %union.rec** %y, align 8
  %822 = bitcast %union.rec* %821 to %struct.word_type*
  %823 = getelementptr inbounds %struct.word_type, %struct.word_type* %822, i32 0, i32 0
  %824 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %823, i32 0, i64 1
  %825 = getelementptr inbounds %struct.LIST, %struct.LIST* %824, i32 0, i32 1
  %826 = load %union.rec*, %union.rec** %825, align 8
  %827 = load %union.rec*, %union.rec** %y, align 8
  %828 = icmp eq %union.rec* %826, %827
  br i1 %828, label %832, label %829

; <label>:829                                     ; preds = %820, %810
  %830 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %831 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %830, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  br label %832

; <label>:832                                     ; preds = %829, %820
  %833 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %833, %union.rec** @zz_hold, align 8
  %834 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %834, %union.rec** @zz_hold, align 8
  %835 = load %union.rec*, %union.rec** @zz_hold, align 8
  %836 = bitcast %union.rec* %835 to %struct.word_type*
  %837 = getelementptr inbounds %struct.word_type, %struct.word_type* %836, i32 0, i32 1
  %838 = bitcast %union.FIRST_UNION* %837 to %struct.anon*
  %839 = getelementptr inbounds %struct.anon, %struct.anon* %838, i32 0, i32 0
  %840 = load i8, i8* %839, align 1
  %841 = zext i8 %840 to i32
  %842 = icmp eq i32 %841, 11
  br i1 %842, label %852, label %843

; <label>:843                                     ; preds = %832
  %844 = load %union.rec*, %union.rec** @zz_hold, align 8
  %845 = bitcast %union.rec* %844 to %struct.word_type*
  %846 = getelementptr inbounds %struct.word_type, %struct.word_type* %845, i32 0, i32 1
  %847 = bitcast %union.FIRST_UNION* %846 to %struct.anon*
  %848 = getelementptr inbounds %struct.anon, %struct.anon* %847, i32 0, i32 0
  %849 = load i8, i8* %848, align 1
  %850 = zext i8 %849 to i32
  %851 = icmp eq i32 %850, 12
  br i1 %851, label %852, label %860

; <label>:852                                     ; preds = %843, %832
  %853 = load %union.rec*, %union.rec** @zz_hold, align 8
  %854 = bitcast %union.rec* %853 to %struct.word_type*
  %855 = getelementptr inbounds %struct.word_type, %struct.word_type* %854, i32 0, i32 1
  %856 = bitcast %union.FIRST_UNION* %855 to %struct.anon*
  %857 = getelementptr inbounds %struct.anon, %struct.anon* %856, i32 0, i32 1
  %858 = load i8, i8* %857, align 1
  %859 = zext i8 %858 to i32
  br label %871

; <label>:860                                     ; preds = %843
  %861 = load %union.rec*, %union.rec** @zz_hold, align 8
  %862 = bitcast %union.rec* %861 to %struct.word_type*
  %863 = getelementptr inbounds %struct.word_type, %struct.word_type* %862, i32 0, i32 1
  %864 = bitcast %union.FIRST_UNION* %863 to %struct.anon*
  %865 = getelementptr inbounds %struct.anon, %struct.anon* %864, i32 0, i32 0
  %866 = load i8, i8* %865, align 1
  %867 = zext i8 %866 to i64
  %868 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %867
  %869 = load i8, i8* %868, align 1
  %870 = zext i8 %869 to i32
  br label %871

; <label>:871                                     ; preds = %860, %852
  %872 = phi i32 [ %859, %852 ], [ %870, %860 ]
  store i32 %872, i32* @zz_size, align 4
  %873 = load i32, i32* @zz_size, align 4
  %874 = sext i32 %873 to i64
  %875 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %874
  %876 = load %union.rec*, %union.rec** %875, align 8
  %877 = load %union.rec*, %union.rec** @zz_hold, align 8
  %878 = bitcast %union.rec* %877 to %struct.word_type*
  %879 = getelementptr inbounds %struct.word_type, %struct.word_type* %878, i32 0, i32 0
  %880 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %879, i32 0, i64 0
  %881 = getelementptr inbounds %struct.LIST, %struct.LIST* %880, i32 0, i32 0
  store %union.rec* %876, %union.rec** %881, align 8
  %882 = load %union.rec*, %union.rec** @zz_hold, align 8
  %883 = load i32, i32* @zz_size, align 4
  %884 = sext i32 %883 to i64
  %885 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %884
  store %union.rec* %882, %union.rec** %885, align 8
  %886 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %886
}

; Function Attrs: nounwind uwtable
define internal %union.rec* @BuildMergeTree(i32 %n, %union.rec* %x, %union.rec** %lenv, %union.rec** %lact) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.rec*, align 8
  %3 = alloca %union.rec**, align 8
  %4 = alloca %union.rec**, align 8
  %res = alloca %union.rec*, align 8
  %merge = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %l = alloca %union.rec*, align 8
  %r = alloca %union.rec*, align 8
  %env = alloca %union.rec*, align 8
  %act = alloca %union.rec*, align 8
  %left_par = alloca %union.rec*, align 8
  %right_par = alloca %union.rec*, align 8
  store i32 %n, i32* %1, align 4
  store %union.rec* %x, %union.rec** %2, align 8
  store %union.rec** %lenv, %union.rec*** %3, align 8
  store %union.rec** %lact, %union.rec*** %4, align 8
  %5 = load i32, i32* %1, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %246

; <label>:7                                       ; preds = %0
  %8 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 81), align 1
  %9 = zext i8 %8 to i32
  store i32 %9, i32* @zz_size, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp uge i64 %10, 265
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %7
  %13 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %14 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %13)
  br label %40

; <label>:15                                      ; preds = %7
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
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %42 = bitcast %union.rec* %41 to %struct.word_type*
  %43 = getelementptr inbounds %struct.word_type, %struct.word_type* %42, i32 0, i32 1
  %44 = bitcast %union.FIRST_UNION* %43 to %struct.anon*
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %44, i32 0, i32 0
  store i8 81, i8* %45, align 1
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %48 = bitcast %union.rec* %47 to %struct.word_type*
  %49 = getelementptr inbounds %struct.word_type, %struct.word_type* %48, i32 0, i32 0
  %50 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %49, i32 0, i64 1
  %51 = getelementptr inbounds %struct.LIST, %struct.LIST* %50, i32 0, i32 1
  store %union.rec* %46, %union.rec** %51, align 8
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  %53 = bitcast %union.rec* %52 to %struct.word_type*
  %54 = getelementptr inbounds %struct.word_type, %struct.word_type* %53, i32 0, i32 0
  %55 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %54, i32 0, i64 1
  %56 = getelementptr inbounds %struct.LIST, %struct.LIST* %55, i32 0, i32 0
  store %union.rec* %46, %union.rec** %56, align 8
  %57 = load %union.rec*, %union.rec** @zz_hold, align 8
  %58 = bitcast %union.rec* %57 to %struct.word_type*
  %59 = getelementptr inbounds %struct.word_type, %struct.word_type* %58, i32 0, i32 0
  %60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %59, i32 0, i64 0
  %61 = getelementptr inbounds %struct.LIST, %struct.LIST* %60, i32 0, i32 1
  store %union.rec* %46, %union.rec** %61, align 8
  %62 = load %union.rec*, %union.rec** @zz_hold, align 8
  %63 = bitcast %union.rec* %62 to %struct.word_type*
  %64 = getelementptr inbounds %struct.word_type, %struct.word_type* %63, i32 0, i32 0
  %65 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %64, i32 0, i64 0
  %66 = getelementptr inbounds %struct.LIST, %struct.LIST* %65, i32 0, i32 0
  store %union.rec* %46, %union.rec** %66, align 8
  store %union.rec* %46, %union.rec** %res, align 8
  %67 = load %union.rec*, %union.rec** %2, align 8
  %68 = bitcast %union.rec* %67 to %struct.word_type*
  %69 = getelementptr inbounds %struct.word_type, %struct.word_type* %68, i32 0, i32 0
  %70 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %69, i32 0, i64 0
  %71 = getelementptr inbounds %struct.LIST, %struct.LIST* %70, i32 0, i32 1
  %72 = load %union.rec*, %union.rec** %71, align 8
  %73 = bitcast %union.rec* %72 to %struct.word_type*
  %74 = getelementptr inbounds %struct.word_type, %struct.word_type* %73, i32 0, i32 0
  %75 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %74, i32 0, i64 1
  %76 = getelementptr inbounds %struct.LIST, %struct.LIST* %75, i32 0, i32 0
  %77 = load %union.rec*, %union.rec** %76, align 8
  store %union.rec* %77, %union.rec** %y, align 8
  br label %78

; <label>:78                                      ; preds = %88, %40
  %79 = load %union.rec*, %union.rec** %y, align 8
  %80 = bitcast %union.rec* %79 to %struct.word_type*
  %81 = getelementptr inbounds %struct.word_type, %struct.word_type* %80, i32 0, i32 1
  %82 = bitcast %union.FIRST_UNION* %81 to %struct.anon*
  %83 = getelementptr inbounds %struct.anon, %struct.anon* %82, i32 0, i32 0
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %95

; <label>:87                                      ; preds = %78
  br label %88

; <label>:88                                      ; preds = %87
  %89 = load %union.rec*, %union.rec** %y, align 8
  %90 = bitcast %union.rec* %89 to %struct.word_type*
  %91 = getelementptr inbounds %struct.word_type, %struct.word_type* %90, i32 0, i32 0
  %92 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %91, i32 0, i64 1
  %93 = getelementptr inbounds %struct.LIST, %struct.LIST* %92, i32 0, i32 0
  %94 = load %union.rec*, %union.rec** %93, align 8
  store %union.rec* %94, %union.rec** %y, align 8
  br label %78

; <label>:95                                      ; preds = %78
  %96 = load %union.rec*, %union.rec** %2, align 8
  %97 = bitcast %union.rec* %96 to %struct.word_type*
  %98 = getelementptr inbounds %struct.word_type, %struct.word_type* %97, i32 0, i32 0
  %99 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %98, i32 0, i64 0
  %100 = getelementptr inbounds %struct.LIST, %struct.LIST* %99, i32 0, i32 1
  %101 = load %union.rec*, %union.rec** %100, align 8
  store %union.rec* %101, %union.rec** @xx_link, align 8
  %102 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %102, %union.rec** @zz_hold, align 8
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %104 = bitcast %union.rec* %103 to %struct.word_type*
  %105 = getelementptr inbounds %struct.word_type, %struct.word_type* %104, i32 0, i32 0
  %106 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %105, i32 0, i64 0
  %107 = getelementptr inbounds %struct.LIST, %struct.LIST* %106, i32 0, i32 1
  %108 = load %union.rec*, %union.rec** %107, align 8
  %109 = load %union.rec*, %union.rec** @zz_hold, align 8
  %110 = icmp eq %union.rec* %108, %109
  br i1 %110, label %111, label %112

; <label>:111                                     ; preds = %95
  br label %153

; <label>:112                                     ; preds = %95
  %113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %114 = bitcast %union.rec* %113 to %struct.word_type*
  %115 = getelementptr inbounds %struct.word_type, %struct.word_type* %114, i32 0, i32 0
  %116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %115, i32 0, i64 0
  %117 = getelementptr inbounds %struct.LIST, %struct.LIST* %116, i32 0, i32 1
  %118 = load %union.rec*, %union.rec** %117, align 8
  store %union.rec* %118, %union.rec** @zz_res, align 8
  %119 = load %union.rec*, %union.rec** @zz_hold, align 8
  %120 = bitcast %union.rec* %119 to %struct.word_type*
  %121 = getelementptr inbounds %struct.word_type, %struct.word_type* %120, i32 0, i32 0
  %122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %121, i32 0, i64 0
  %123 = getelementptr inbounds %struct.LIST, %struct.LIST* %122, i32 0, i32 0
  %124 = load %union.rec*, %union.rec** %123, align 8
  %125 = load %union.rec*, %union.rec** @zz_res, align 8
  %126 = bitcast %union.rec* %125 to %struct.word_type*
  %127 = getelementptr inbounds %struct.word_type, %struct.word_type* %126, i32 0, i32 0
  %128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %127, i32 0, i64 0
  %129 = getelementptr inbounds %struct.LIST, %struct.LIST* %128, i32 0, i32 0
  store %union.rec* %124, %union.rec** %129, align 8
  %130 = load %union.rec*, %union.rec** @zz_res, align 8
  %131 = load %union.rec*, %union.rec** @zz_hold, align 8
  %132 = bitcast %union.rec* %131 to %struct.word_type*
  %133 = getelementptr inbounds %struct.word_type, %struct.word_type* %132, i32 0, i32 0
  %134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %133, i32 0, i64 0
  %135 = getelementptr inbounds %struct.LIST, %struct.LIST* %134, i32 0, i32 0
  %136 = load %union.rec*, %union.rec** %135, align 8
  %137 = bitcast %union.rec* %136 to %struct.word_type*
  %138 = getelementptr inbounds %struct.word_type, %struct.word_type* %137, i32 0, i32 0
  %139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %138, i32 0, i64 0
  %140 = getelementptr inbounds %struct.LIST, %struct.LIST* %139, i32 0, i32 1
  store %union.rec* %130, %union.rec** %140, align 8
  %141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %143 = bitcast %union.rec* %142 to %struct.word_type*
  %144 = getelementptr inbounds %struct.word_type, %struct.word_type* %143, i32 0, i32 0
  %145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %144, i32 0, i64 0
  %146 = getelementptr inbounds %struct.LIST, %struct.LIST* %145, i32 0, i32 1
  store %union.rec* %141, %union.rec** %146, align 8
  %147 = load %union.rec*, %union.rec** @zz_hold, align 8
  %148 = bitcast %union.rec* %147 to %struct.word_type*
  %149 = getelementptr inbounds %struct.word_type, %struct.word_type* %148, i32 0, i32 0
  %150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %149, i32 0, i64 0
  %151 = getelementptr inbounds %struct.LIST, %struct.LIST* %150, i32 0, i32 0
  store %union.rec* %141, %union.rec** %151, align 8
  %152 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %153

; <label>:153                                     ; preds = %112, %111
  %154 = phi %union.rec* [ null, %111 ], [ %152, %112 ]
  %155 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %155, %union.rec** @zz_res, align 8
  %156 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %156, %union.rec** @zz_hold, align 8
  %157 = load %union.rec*, %union.rec** @zz_hold, align 8
  %158 = icmp eq %union.rec* %157, null
  br i1 %158, label %159, label %161

; <label>:159                                     ; preds = %153
  %160 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %209

; <label>:161                                     ; preds = %153
  %162 = load %union.rec*, %union.rec** @zz_res, align 8
  %163 = icmp eq %union.rec* %162, null
  br i1 %163, label %164, label %166

; <label>:164                                     ; preds = %161
  %165 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %207

; <label>:166                                     ; preds = %161
  %167 = load %union.rec*, %union.rec** @zz_hold, align 8
  %168 = bitcast %union.rec* %167 to %struct.word_type*
  %169 = getelementptr inbounds %struct.word_type, %struct.word_type* %168, i32 0, i32 0
  %170 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %169, i32 0, i64 0
  %171 = getelementptr inbounds %struct.LIST, %struct.LIST* %170, i32 0, i32 0
  %172 = load %union.rec*, %union.rec** %171, align 8
  store %union.rec* %172, %union.rec** @zz_tmp, align 8
  %173 = load %union.rec*, %union.rec** @zz_res, align 8
  %174 = bitcast %union.rec* %173 to %struct.word_type*
  %175 = getelementptr inbounds %struct.word_type, %struct.word_type* %174, i32 0, i32 0
  %176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %175, i32 0, i64 0
  %177 = getelementptr inbounds %struct.LIST, %struct.LIST* %176, i32 0, i32 0
  %178 = load %union.rec*, %union.rec** %177, align 8
  %179 = load %union.rec*, %union.rec** @zz_hold, align 8
  %180 = bitcast %union.rec* %179 to %struct.word_type*
  %181 = getelementptr inbounds %struct.word_type, %struct.word_type* %180, i32 0, i32 0
  %182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %181, i32 0, i64 0
  %183 = getelementptr inbounds %struct.LIST, %struct.LIST* %182, i32 0, i32 0
  store %union.rec* %178, %union.rec** %183, align 8
  %184 = load %union.rec*, %union.rec** @zz_hold, align 8
  %185 = load %union.rec*, %union.rec** @zz_res, align 8
  %186 = bitcast %union.rec* %185 to %struct.word_type*
  %187 = getelementptr inbounds %struct.word_type, %struct.word_type* %186, i32 0, i32 0
  %188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %187, i32 0, i64 0
  %189 = getelementptr inbounds %struct.LIST, %struct.LIST* %188, i32 0, i32 0
  %190 = load %union.rec*, %union.rec** %189, align 8
  %191 = bitcast %union.rec* %190 to %struct.word_type*
  %192 = getelementptr inbounds %struct.word_type, %struct.word_type* %191, i32 0, i32 0
  %193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %192, i32 0, i64 0
  %194 = getelementptr inbounds %struct.LIST, %struct.LIST* %193, i32 0, i32 1
  store %union.rec* %184, %union.rec** %194, align 8
  %195 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %196 = load %union.rec*, %union.rec** @zz_res, align 8
  %197 = bitcast %union.rec* %196 to %struct.word_type*
  %198 = getelementptr inbounds %struct.word_type, %struct.word_type* %197, i32 0, i32 0
  %199 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %198, i32 0, i64 0
  %200 = getelementptr inbounds %struct.LIST, %struct.LIST* %199, i32 0, i32 0
  store %union.rec* %195, %union.rec** %200, align 8
  %201 = load %union.rec*, %union.rec** @zz_res, align 8
  %202 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %203 = bitcast %union.rec* %202 to %struct.word_type*
  %204 = getelementptr inbounds %struct.word_type, %struct.word_type* %203, i32 0, i32 0
  %205 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %204, i32 0, i64 0
  %206 = getelementptr inbounds %struct.LIST, %struct.LIST* %205, i32 0, i32 1
  store %union.rec* %201, %union.rec** %206, align 8
  br label %207

; <label>:207                                     ; preds = %166, %164
  %208 = phi %union.rec* [ %165, %164 ], [ %201, %166 ]
  br label %209

; <label>:209                                     ; preds = %207, %159
  %210 = phi %union.rec* [ %160, %159 ], [ %208, %207 ]
  %211 = load %union.rec*, %union.rec** %y, align 8
  %212 = bitcast %union.rec* %211 to %struct.word_type*
  %213 = getelementptr inbounds %struct.word_type, %struct.word_type* %212, i32 0, i32 1
  %214 = bitcast %union.FIRST_UNION* %213 to %struct.anon*
  %215 = getelementptr inbounds %struct.anon, %struct.anon* %214, i32 0, i32 0
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = icmp eq i32 %217, 2
  br i1 %218, label %219, label %231

; <label>:219                                     ; preds = %209
  %220 = load %union.rec*, %union.rec** %y, align 8
  %221 = bitcast %union.rec* %220 to %struct.closure_type*
  %222 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %221, i32 0, i32 5
  %223 = load %union.rec*, %union.rec** %222, align 8
  %224 = bitcast %union.rec* %223 to %struct.symbol_type*
  %225 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %224, i32 0, i32 16
  %226 = load i8, i8* %225, align 2
  %227 = lshr i8 %226, 3
  %228 = and i8 %227, 1
  %229 = zext i8 %228 to i32
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %234, label %231

; <label>:231                                     ; preds = %219, %209
  %232 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %233 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %232, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0))
  br label %234

; <label>:234                                     ; preds = %231, %219
  %235 = load %union.rec*, %union.rec** %y, align 8
  %236 = bitcast %union.rec* %235 to %struct.closure_type*
  %237 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %236, i32 0, i32 5
  %238 = load %union.rec*, %union.rec** %237, align 8
  %239 = load %union.rec**, %union.rec*** %4, align 8
  store %union.rec* %238, %union.rec** %239, align 8
  %240 = load %union.rec*, %union.rec** %y, align 8
  %241 = call %union.rec* @DetachEnv(%union.rec* %240)
  %242 = load %union.rec**, %union.rec*** %3, align 8
  store %union.rec* %241, %union.rec** %242, align 8
  %243 = load %union.rec**, %union.rec*** %3, align 8
  %244 = load %union.rec*, %union.rec** %243, align 8
  %245 = load %union.rec*, %union.rec** %res, align 8
  call void @AttachEnv(%union.rec* %244, %union.rec* %245)
  br label %1595

; <label>:246                                     ; preds = %0
  %247 = load i32, i32* %1, align 4
  %248 = sdiv i32 %247, 2
  %249 = load %union.rec*, %union.rec** %2, align 8
  %250 = load %union.rec**, %union.rec*** %3, align 8
  %251 = load %union.rec**, %union.rec*** %4, align 8
  %252 = call %union.rec* @BuildMergeTree(i32 %248, %union.rec* %249, %union.rec** %250, %union.rec** %251)
  store %union.rec* %252, %union.rec** %l, align 8
  %253 = load i32, i32* %1, align 4
  %254 = load i32, i32* %1, align 4
  %255 = sdiv i32 %254, 2
  %256 = sub nsw i32 %253, %255
  %257 = load %union.rec*, %union.rec** %2, align 8
  %258 = call %union.rec* @BuildMergeTree(i32 %256, %union.rec* %257, %union.rec** %env, %union.rec** %act)
  store %union.rec* %258, %union.rec** %r, align 8
  %259 = load %union.rec*, %union.rec** %act, align 8
  %260 = bitcast %union.rec* %259 to %struct.word_type*
  %261 = getelementptr inbounds %struct.word_type, %struct.word_type* %260, i32 0, i32 0
  %262 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %261, i32 0, i64 0
  %263 = getelementptr inbounds %struct.LIST, %struct.LIST* %262, i32 0, i32 1
  %264 = load %union.rec*, %union.rec** %263, align 8
  store %union.rec* %264, %union.rec** %link, align 8
  br label %265

; <label>:265                                     ; preds = %304, %246
  %266 = load %union.rec*, %union.rec** %link, align 8
  %267 = load %union.rec*, %union.rec** %act, align 8
  %268 = icmp ne %union.rec* %266, %267
  br i1 %268, label %269, label %311

; <label>:269                                     ; preds = %265
  %270 = load %union.rec*, %union.rec** %link, align 8
  %271 = bitcast %union.rec* %270 to %struct.word_type*
  %272 = getelementptr inbounds %struct.word_type, %struct.word_type* %271, i32 0, i32 0
  %273 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %272, i32 0, i64 1
  %274 = getelementptr inbounds %struct.LIST, %struct.LIST* %273, i32 0, i32 0
  %275 = load %union.rec*, %union.rec** %274, align 8
  store %union.rec* %275, %union.rec** %y, align 8
  br label %276

; <label>:276                                     ; preds = %286, %269
  %277 = load %union.rec*, %union.rec** %y, align 8
  %278 = bitcast %union.rec* %277 to %struct.word_type*
  %279 = getelementptr inbounds %struct.word_type, %struct.word_type* %278, i32 0, i32 1
  %280 = bitcast %union.FIRST_UNION* %279 to %struct.anon*
  %281 = getelementptr inbounds %struct.anon, %struct.anon* %280, i32 0, i32 0
  %282 = load i8, i8* %281, align 1
  %283 = zext i8 %282 to i32
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %293

; <label>:285                                     ; preds = %276
  br label %286

; <label>:286                                     ; preds = %285
  %287 = load %union.rec*, %union.rec** %y, align 8
  %288 = bitcast %union.rec* %287 to %struct.word_type*
  %289 = getelementptr inbounds %struct.word_type, %struct.word_type* %288, i32 0, i32 0
  %290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %289, i32 0, i64 1
  %291 = getelementptr inbounds %struct.LIST, %struct.LIST* %290, i32 0, i32 0
  %292 = load %union.rec*, %union.rec** %291, align 8
  store %union.rec* %292, %union.rec** %y, align 8
  br label %276

; <label>:293                                     ; preds = %276
  %294 = load %union.rec*, %union.rec** %y, align 8
  %295 = bitcast %union.rec* %294 to %struct.symbol_type*
  %296 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %295, i32 0, i32 16
  %297 = load i8, i8* %296, align 2
  %298 = lshr i8 %297, 2
  %299 = and i8 %298, 1
  %300 = zext i8 %299 to i32
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %303

; <label>:302                                     ; preds = %293
  br label %311

; <label>:303                                     ; preds = %293
  br label %304

; <label>:304                                     ; preds = %303
  %305 = load %union.rec*, %union.rec** %link, align 8
  %306 = bitcast %union.rec* %305 to %struct.word_type*
  %307 = getelementptr inbounds %struct.word_type, %struct.word_type* %306, i32 0, i32 0
  %308 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %307, i32 0, i64 0
  %309 = getelementptr inbounds %struct.LIST, %struct.LIST* %308, i32 0, i32 1
  %310 = load %union.rec*, %union.rec** %309, align 8
  store %union.rec* %310, %union.rec** %link, align 8
  br label %265

; <label>:311                                     ; preds = %302, %265
  %312 = load %union.rec*, %union.rec** %y, align 8
  %313 = load %union.rec*, %union.rec** %act, align 8
  %314 = icmp ne %union.rec* %312, %313
  br i1 %314, label %318, label %315

; <label>:315                                     ; preds = %311
  %316 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %317 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %316, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0))
  br label %318

; <label>:318                                     ; preds = %315, %311
  %319 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 2), align 1
  %320 = zext i8 %319 to i32
  store i32 %320, i32* @zz_size, align 4
  %321 = sext i32 %320 to i64
  %322 = icmp uge i64 %321, 265
  br i1 %322, label %323, label %326

; <label>:323                                     ; preds = %318
  %324 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %325 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %324)
  br label %351

; <label>:326                                     ; preds = %318
  %327 = load i32, i32* @zz_size, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %328
  %330 = load %union.rec*, %union.rec** %329, align 8
  %331 = icmp eq %union.rec* %330, null
  br i1 %331, label %332, label %336

; <label>:332                                     ; preds = %326
  %333 = load i32, i32* @zz_size, align 4
  %334 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %335 = call %union.rec* @GetMemory(i32 %333, %struct.FILE_POS* %334)
  store %union.rec* %335, %union.rec** @zz_hold, align 8
  br label %350

; <label>:336                                     ; preds = %326
  %337 = load i32, i32* @zz_size, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %338
  %340 = load %union.rec*, %union.rec** %339, align 8
  store %union.rec* %340, %union.rec** @zz_hold, align 8
  store %union.rec* %340, %union.rec** @zz_hold, align 8
  %341 = load %union.rec*, %union.rec** @zz_hold, align 8
  %342 = bitcast %union.rec* %341 to %struct.word_type*
  %343 = getelementptr inbounds %struct.word_type, %struct.word_type* %342, i32 0, i32 0
  %344 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %343, i32 0, i64 0
  %345 = getelementptr inbounds %struct.LIST, %struct.LIST* %344, i32 0, i32 0
  %346 = load %union.rec*, %union.rec** %345, align 8
  %347 = load i32, i32* @zz_size, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %348
  store %union.rec* %346, %union.rec** %349, align 8
  br label %350

; <label>:350                                     ; preds = %336, %332
  br label %351

; <label>:351                                     ; preds = %350, %323
  %352 = load %union.rec*, %union.rec** @zz_hold, align 8
  %353 = bitcast %union.rec* %352 to %struct.word_type*
  %354 = getelementptr inbounds %struct.word_type, %struct.word_type* %353, i32 0, i32 1
  %355 = bitcast %union.FIRST_UNION* %354 to %struct.anon*
  %356 = getelementptr inbounds %struct.anon, %struct.anon* %355, i32 0, i32 0
  store i8 2, i8* %356, align 1
  %357 = load %union.rec*, %union.rec** @zz_hold, align 8
  %358 = load %union.rec*, %union.rec** @zz_hold, align 8
  %359 = bitcast %union.rec* %358 to %struct.word_type*
  %360 = getelementptr inbounds %struct.word_type, %struct.word_type* %359, i32 0, i32 0
  %361 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %360, i32 0, i64 1
  %362 = getelementptr inbounds %struct.LIST, %struct.LIST* %361, i32 0, i32 1
  store %union.rec* %357, %union.rec** %362, align 8
  %363 = load %union.rec*, %union.rec** @zz_hold, align 8
  %364 = bitcast %union.rec* %363 to %struct.word_type*
  %365 = getelementptr inbounds %struct.word_type, %struct.word_type* %364, i32 0, i32 0
  %366 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %365, i32 0, i64 1
  %367 = getelementptr inbounds %struct.LIST, %struct.LIST* %366, i32 0, i32 0
  store %union.rec* %357, %union.rec** %367, align 8
  %368 = load %union.rec*, %union.rec** @zz_hold, align 8
  %369 = bitcast %union.rec* %368 to %struct.word_type*
  %370 = getelementptr inbounds %struct.word_type, %struct.word_type* %369, i32 0, i32 0
  %371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %370, i32 0, i64 0
  %372 = getelementptr inbounds %struct.LIST, %struct.LIST* %371, i32 0, i32 1
  store %union.rec* %357, %union.rec** %372, align 8
  %373 = load %union.rec*, %union.rec** @zz_hold, align 8
  %374 = bitcast %union.rec* %373 to %struct.word_type*
  %375 = getelementptr inbounds %struct.word_type, %struct.word_type* %374, i32 0, i32 0
  %376 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %375, i32 0, i64 0
  %377 = getelementptr inbounds %struct.LIST, %struct.LIST* %376, i32 0, i32 0
  store %union.rec* %357, %union.rec** %377, align 8
  store %union.rec* %357, %union.rec** %merge, align 8
  %378 = load %union.rec*, %union.rec** %y, align 8
  %379 = load %union.rec*, %union.rec** %merge, align 8
  %380 = bitcast %union.rec* %379 to %struct.closure_type*
  %381 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %380, i32 0, i32 5
  store %union.rec* %378, %union.rec** %381, align 8
  %382 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %383 = zext i8 %382 to i32
  store i32 %383, i32* @zz_size, align 4
  %384 = sext i32 %383 to i64
  %385 = icmp uge i64 %384, 265
  br i1 %385, label %386, label %389

; <label>:386                                     ; preds = %351
  %387 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %388 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %387)
  br label %414

; <label>:389                                     ; preds = %351
  %390 = load i32, i32* @zz_size, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %391
  %393 = load %union.rec*, %union.rec** %392, align 8
  %394 = icmp eq %union.rec* %393, null
  br i1 %394, label %395, label %399

; <label>:395                                     ; preds = %389
  %396 = load i32, i32* @zz_size, align 4
  %397 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %398 = call %union.rec* @GetMemory(i32 %396, %struct.FILE_POS* %397)
  store %union.rec* %398, %union.rec** @zz_hold, align 8
  br label %413

; <label>:399                                     ; preds = %389
  %400 = load i32, i32* @zz_size, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %401
  %403 = load %union.rec*, %union.rec** %402, align 8
  store %union.rec* %403, %union.rec** @zz_hold, align 8
  store %union.rec* %403, %union.rec** @zz_hold, align 8
  %404 = load %union.rec*, %union.rec** @zz_hold, align 8
  %405 = bitcast %union.rec* %404 to %struct.word_type*
  %406 = getelementptr inbounds %struct.word_type, %struct.word_type* %405, i32 0, i32 0
  %407 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %406, i32 0, i64 0
  %408 = getelementptr inbounds %struct.LIST, %struct.LIST* %407, i32 0, i32 0
  %409 = load %union.rec*, %union.rec** %408, align 8
  %410 = load i32, i32* @zz_size, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %411
  store %union.rec* %409, %union.rec** %412, align 8
  br label %413

; <label>:413                                     ; preds = %399, %395
  br label %414

; <label>:414                                     ; preds = %413, %386
  %415 = load %union.rec*, %union.rec** @zz_hold, align 8
  %416 = bitcast %union.rec* %415 to %struct.word_type*
  %417 = getelementptr inbounds %struct.word_type, %struct.word_type* %416, i32 0, i32 1
  %418 = bitcast %union.FIRST_UNION* %417 to %struct.anon*
  %419 = getelementptr inbounds %struct.anon, %struct.anon* %418, i32 0, i32 0
  store i8 10, i8* %419, align 1
  %420 = load %union.rec*, %union.rec** @zz_hold, align 8
  %421 = load %union.rec*, %union.rec** @zz_hold, align 8
  %422 = bitcast %union.rec* %421 to %struct.word_type*
  %423 = getelementptr inbounds %struct.word_type, %struct.word_type* %422, i32 0, i32 0
  %424 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %423, i32 0, i64 1
  %425 = getelementptr inbounds %struct.LIST, %struct.LIST* %424, i32 0, i32 1
  store %union.rec* %420, %union.rec** %425, align 8
  %426 = load %union.rec*, %union.rec** @zz_hold, align 8
  %427 = bitcast %union.rec* %426 to %struct.word_type*
  %428 = getelementptr inbounds %struct.word_type, %struct.word_type* %427, i32 0, i32 0
  %429 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %428, i32 0, i64 1
  %430 = getelementptr inbounds %struct.LIST, %struct.LIST* %429, i32 0, i32 0
  store %union.rec* %420, %union.rec** %430, align 8
  %431 = load %union.rec*, %union.rec** @zz_hold, align 8
  %432 = bitcast %union.rec* %431 to %struct.word_type*
  %433 = getelementptr inbounds %struct.word_type, %struct.word_type* %432, i32 0, i32 0
  %434 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %433, i32 0, i64 0
  %435 = getelementptr inbounds %struct.LIST, %struct.LIST* %434, i32 0, i32 1
  store %union.rec* %420, %union.rec** %435, align 8
  %436 = load %union.rec*, %union.rec** @zz_hold, align 8
  %437 = bitcast %union.rec* %436 to %struct.word_type*
  %438 = getelementptr inbounds %struct.word_type, %struct.word_type* %437, i32 0, i32 0
  %439 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %438, i32 0, i64 0
  %440 = getelementptr inbounds %struct.LIST, %struct.LIST* %439, i32 0, i32 0
  store %union.rec* %420, %union.rec** %440, align 8
  store %union.rec* %420, %union.rec** %left_par, align 8
  %441 = load %union.rec*, %union.rec** %y, align 8
  %442 = call %union.rec* @ChildSym(%union.rec* %441, i32 144)
  %443 = load %union.rec*, %union.rec** %left_par, align 8
  %444 = bitcast %union.rec* %443 to %struct.closure_type*
  %445 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %444, i32 0, i32 5
  store %union.rec* %442, %union.rec** %445, align 8
  %446 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %447 = zext i8 %446 to i32
  store i32 %447, i32* @zz_size, align 4
  %448 = sext i32 %447 to i64
  %449 = icmp uge i64 %448, 265
  br i1 %449, label %450, label %453

; <label>:450                                     ; preds = %414
  %451 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %452 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %451)
  br label %478

; <label>:453                                     ; preds = %414
  %454 = load i32, i32* @zz_size, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %455
  %457 = load %union.rec*, %union.rec** %456, align 8
  %458 = icmp eq %union.rec* %457, null
  br i1 %458, label %459, label %463

; <label>:459                                     ; preds = %453
  %460 = load i32, i32* @zz_size, align 4
  %461 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %462 = call %union.rec* @GetMemory(i32 %460, %struct.FILE_POS* %461)
  store %union.rec* %462, %union.rec** @zz_hold, align 8
  br label %477

; <label>:463                                     ; preds = %453
  %464 = load i32, i32* @zz_size, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %465
  %467 = load %union.rec*, %union.rec** %466, align 8
  store %union.rec* %467, %union.rec** @zz_hold, align 8
  store %union.rec* %467, %union.rec** @zz_hold, align 8
  %468 = load %union.rec*, %union.rec** @zz_hold, align 8
  %469 = bitcast %union.rec* %468 to %struct.word_type*
  %470 = getelementptr inbounds %struct.word_type, %struct.word_type* %469, i32 0, i32 0
  %471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %470, i32 0, i64 0
  %472 = getelementptr inbounds %struct.LIST, %struct.LIST* %471, i32 0, i32 0
  %473 = load %union.rec*, %union.rec** %472, align 8
  %474 = load i32, i32* @zz_size, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %475
  store %union.rec* %473, %union.rec** %476, align 8
  br label %477

; <label>:477                                     ; preds = %463, %459
  br label %478

; <label>:478                                     ; preds = %477, %450
  %479 = load %union.rec*, %union.rec** @zz_hold, align 8
  %480 = bitcast %union.rec* %479 to %struct.word_type*
  %481 = getelementptr inbounds %struct.word_type, %struct.word_type* %480, i32 0, i32 1
  %482 = bitcast %union.FIRST_UNION* %481 to %struct.anon*
  %483 = getelementptr inbounds %struct.anon, %struct.anon* %482, i32 0, i32 0
  store i8 0, i8* %483, align 1
  %484 = load %union.rec*, %union.rec** @zz_hold, align 8
  %485 = load %union.rec*, %union.rec** @zz_hold, align 8
  %486 = bitcast %union.rec* %485 to %struct.word_type*
  %487 = getelementptr inbounds %struct.word_type, %struct.word_type* %486, i32 0, i32 0
  %488 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %487, i32 0, i64 1
  %489 = getelementptr inbounds %struct.LIST, %struct.LIST* %488, i32 0, i32 1
  store %union.rec* %484, %union.rec** %489, align 8
  %490 = load %union.rec*, %union.rec** @zz_hold, align 8
  %491 = bitcast %union.rec* %490 to %struct.word_type*
  %492 = getelementptr inbounds %struct.word_type, %struct.word_type* %491, i32 0, i32 0
  %493 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %492, i32 0, i64 1
  %494 = getelementptr inbounds %struct.LIST, %struct.LIST* %493, i32 0, i32 0
  store %union.rec* %484, %union.rec** %494, align 8
  %495 = load %union.rec*, %union.rec** @zz_hold, align 8
  %496 = bitcast %union.rec* %495 to %struct.word_type*
  %497 = getelementptr inbounds %struct.word_type, %struct.word_type* %496, i32 0, i32 0
  %498 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %497, i32 0, i64 0
  %499 = getelementptr inbounds %struct.LIST, %struct.LIST* %498, i32 0, i32 1
  store %union.rec* %484, %union.rec** %499, align 8
  %500 = load %union.rec*, %union.rec** @zz_hold, align 8
  %501 = bitcast %union.rec* %500 to %struct.word_type*
  %502 = getelementptr inbounds %struct.word_type, %struct.word_type* %501, i32 0, i32 0
  %503 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %502, i32 0, i64 0
  %504 = getelementptr inbounds %struct.LIST, %struct.LIST* %503, i32 0, i32 0
  store %union.rec* %484, %union.rec** %504, align 8
  store %union.rec* %484, %union.rec** @xx_link, align 8
  %505 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %505, %union.rec** @zz_res, align 8
  %506 = load %union.rec*, %union.rec** %merge, align 8
  store %union.rec* %506, %union.rec** @zz_hold, align 8
  %507 = load %union.rec*, %union.rec** @zz_hold, align 8
  %508 = icmp eq %union.rec* %507, null
  br i1 %508, label %509, label %511

; <label>:509                                     ; preds = %478
  %510 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %559

; <label>:511                                     ; preds = %478
  %512 = load %union.rec*, %union.rec** @zz_res, align 8
  %513 = icmp eq %union.rec* %512, null
  br i1 %513, label %514, label %516

; <label>:514                                     ; preds = %511
  %515 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %557

; <label>:516                                     ; preds = %511
  %517 = load %union.rec*, %union.rec** @zz_hold, align 8
  %518 = bitcast %union.rec* %517 to %struct.word_type*
  %519 = getelementptr inbounds %struct.word_type, %struct.word_type* %518, i32 0, i32 0
  %520 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %519, i32 0, i64 0
  %521 = getelementptr inbounds %struct.LIST, %struct.LIST* %520, i32 0, i32 0
  %522 = load %union.rec*, %union.rec** %521, align 8
  store %union.rec* %522, %union.rec** @zz_tmp, align 8
  %523 = load %union.rec*, %union.rec** @zz_res, align 8
  %524 = bitcast %union.rec* %523 to %struct.word_type*
  %525 = getelementptr inbounds %struct.word_type, %struct.word_type* %524, i32 0, i32 0
  %526 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %525, i32 0, i64 0
  %527 = getelementptr inbounds %struct.LIST, %struct.LIST* %526, i32 0, i32 0
  %528 = load %union.rec*, %union.rec** %527, align 8
  %529 = load %union.rec*, %union.rec** @zz_hold, align 8
  %530 = bitcast %union.rec* %529 to %struct.word_type*
  %531 = getelementptr inbounds %struct.word_type, %struct.word_type* %530, i32 0, i32 0
  %532 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %531, i32 0, i64 0
  %533 = getelementptr inbounds %struct.LIST, %struct.LIST* %532, i32 0, i32 0
  store %union.rec* %528, %union.rec** %533, align 8
  %534 = load %union.rec*, %union.rec** @zz_hold, align 8
  %535 = load %union.rec*, %union.rec** @zz_res, align 8
  %536 = bitcast %union.rec* %535 to %struct.word_type*
  %537 = getelementptr inbounds %struct.word_type, %struct.word_type* %536, i32 0, i32 0
  %538 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %537, i32 0, i64 0
  %539 = getelementptr inbounds %struct.LIST, %struct.LIST* %538, i32 0, i32 0
  %540 = load %union.rec*, %union.rec** %539, align 8
  %541 = bitcast %union.rec* %540 to %struct.word_type*
  %542 = getelementptr inbounds %struct.word_type, %struct.word_type* %541, i32 0, i32 0
  %543 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %542, i32 0, i64 0
  %544 = getelementptr inbounds %struct.LIST, %struct.LIST* %543, i32 0, i32 1
  store %union.rec* %534, %union.rec** %544, align 8
  %545 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %546 = load %union.rec*, %union.rec** @zz_res, align 8
  %547 = bitcast %union.rec* %546 to %struct.word_type*
  %548 = getelementptr inbounds %struct.word_type, %struct.word_type* %547, i32 0, i32 0
  %549 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %548, i32 0, i64 0
  %550 = getelementptr inbounds %struct.LIST, %struct.LIST* %549, i32 0, i32 0
  store %union.rec* %545, %union.rec** %550, align 8
  %551 = load %union.rec*, %union.rec** @zz_res, align 8
  %552 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %553 = bitcast %union.rec* %552 to %struct.word_type*
  %554 = getelementptr inbounds %struct.word_type, %struct.word_type* %553, i32 0, i32 0
  %555 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %554, i32 0, i64 0
  %556 = getelementptr inbounds %struct.LIST, %struct.LIST* %555, i32 0, i32 1
  store %union.rec* %551, %union.rec** %556, align 8
  br label %557

; <label>:557                                     ; preds = %516, %514
  %558 = phi %union.rec* [ %515, %514 ], [ %551, %516 ]
  br label %559

; <label>:559                                     ; preds = %557, %509
  %560 = phi %union.rec* [ %510, %509 ], [ %558, %557 ]
  %561 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %561, %union.rec** @zz_res, align 8
  %562 = load %union.rec*, %union.rec** %left_par, align 8
  store %union.rec* %562, %union.rec** @zz_hold, align 8
  %563 = load %union.rec*, %union.rec** @zz_hold, align 8
  %564 = icmp eq %union.rec* %563, null
  br i1 %564, label %565, label %567

; <label>:565                                     ; preds = %559
  %566 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %615

; <label>:567                                     ; preds = %559
  %568 = load %union.rec*, %union.rec** @zz_res, align 8
  %569 = icmp eq %union.rec* %568, null
  br i1 %569, label %570, label %572

; <label>:570                                     ; preds = %567
  %571 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %613

; <label>:572                                     ; preds = %567
  %573 = load %union.rec*, %union.rec** @zz_hold, align 8
  %574 = bitcast %union.rec* %573 to %struct.word_type*
  %575 = getelementptr inbounds %struct.word_type, %struct.word_type* %574, i32 0, i32 0
  %576 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %575, i32 0, i64 1
  %577 = getelementptr inbounds %struct.LIST, %struct.LIST* %576, i32 0, i32 0
  %578 = load %union.rec*, %union.rec** %577, align 8
  store %union.rec* %578, %union.rec** @zz_tmp, align 8
  %579 = load %union.rec*, %union.rec** @zz_res, align 8
  %580 = bitcast %union.rec* %579 to %struct.word_type*
  %581 = getelementptr inbounds %struct.word_type, %struct.word_type* %580, i32 0, i32 0
  %582 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %581, i32 0, i64 1
  %583 = getelementptr inbounds %struct.LIST, %struct.LIST* %582, i32 0, i32 0
  %584 = load %union.rec*, %union.rec** %583, align 8
  %585 = load %union.rec*, %union.rec** @zz_hold, align 8
  %586 = bitcast %union.rec* %585 to %struct.word_type*
  %587 = getelementptr inbounds %struct.word_type, %struct.word_type* %586, i32 0, i32 0
  %588 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %587, i32 0, i64 1
  %589 = getelementptr inbounds %struct.LIST, %struct.LIST* %588, i32 0, i32 0
  store %union.rec* %584, %union.rec** %589, align 8
  %590 = load %union.rec*, %union.rec** @zz_hold, align 8
  %591 = load %union.rec*, %union.rec** @zz_res, align 8
  %592 = bitcast %union.rec* %591 to %struct.word_type*
  %593 = getelementptr inbounds %struct.word_type, %struct.word_type* %592, i32 0, i32 0
  %594 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %593, i32 0, i64 1
  %595 = getelementptr inbounds %struct.LIST, %struct.LIST* %594, i32 0, i32 0
  %596 = load %union.rec*, %union.rec** %595, align 8
  %597 = bitcast %union.rec* %596 to %struct.word_type*
  %598 = getelementptr inbounds %struct.word_type, %struct.word_type* %597, i32 0, i32 0
  %599 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %598, i32 0, i64 1
  %600 = getelementptr inbounds %struct.LIST, %struct.LIST* %599, i32 0, i32 1
  store %union.rec* %590, %union.rec** %600, align 8
  %601 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %602 = load %union.rec*, %union.rec** @zz_res, align 8
  %603 = bitcast %union.rec* %602 to %struct.word_type*
  %604 = getelementptr inbounds %struct.word_type, %struct.word_type* %603, i32 0, i32 0
  %605 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %604, i32 0, i64 1
  %606 = getelementptr inbounds %struct.LIST, %struct.LIST* %605, i32 0, i32 0
  store %union.rec* %601, %union.rec** %606, align 8
  %607 = load %union.rec*, %union.rec** @zz_res, align 8
  %608 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %609 = bitcast %union.rec* %608 to %struct.word_type*
  %610 = getelementptr inbounds %struct.word_type, %struct.word_type* %609, i32 0, i32 0
  %611 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %610, i32 0, i64 1
  %612 = getelementptr inbounds %struct.LIST, %struct.LIST* %611, i32 0, i32 1
  store %union.rec* %607, %union.rec** %612, align 8
  br label %613

; <label>:613                                     ; preds = %572, %570
  %614 = phi %union.rec* [ %571, %570 ], [ %607, %572 ]
  br label %615

; <label>:615                                     ; preds = %613, %565
  %616 = phi %union.rec* [ %566, %565 ], [ %614, %613 ]
  %617 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %618 = zext i8 %617 to i32
  store i32 %618, i32* @zz_size, align 4
  %619 = sext i32 %618 to i64
  %620 = icmp uge i64 %619, 265
  br i1 %620, label %621, label %624

; <label>:621                                     ; preds = %615
  %622 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %623 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %622)
  br label %649

; <label>:624                                     ; preds = %615
  %625 = load i32, i32* @zz_size, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %626
  %628 = load %union.rec*, %union.rec** %627, align 8
  %629 = icmp eq %union.rec* %628, null
  br i1 %629, label %630, label %634

; <label>:630                                     ; preds = %624
  %631 = load i32, i32* @zz_size, align 4
  %632 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %633 = call %union.rec* @GetMemory(i32 %631, %struct.FILE_POS* %632)
  store %union.rec* %633, %union.rec** @zz_hold, align 8
  br label %648

; <label>:634                                     ; preds = %624
  %635 = load i32, i32* @zz_size, align 4
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %636
  %638 = load %union.rec*, %union.rec** %637, align 8
  store %union.rec* %638, %union.rec** @zz_hold, align 8
  store %union.rec* %638, %union.rec** @zz_hold, align 8
  %639 = load %union.rec*, %union.rec** @zz_hold, align 8
  %640 = bitcast %union.rec* %639 to %struct.word_type*
  %641 = getelementptr inbounds %struct.word_type, %struct.word_type* %640, i32 0, i32 0
  %642 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %641, i32 0, i64 0
  %643 = getelementptr inbounds %struct.LIST, %struct.LIST* %642, i32 0, i32 0
  %644 = load %union.rec*, %union.rec** %643, align 8
  %645 = load i32, i32* @zz_size, align 4
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %646
  store %union.rec* %644, %union.rec** %647, align 8
  br label %648

; <label>:648                                     ; preds = %634, %630
  br label %649

; <label>:649                                     ; preds = %648, %621
  %650 = load %union.rec*, %union.rec** @zz_hold, align 8
  %651 = bitcast %union.rec* %650 to %struct.word_type*
  %652 = getelementptr inbounds %struct.word_type, %struct.word_type* %651, i32 0, i32 1
  %653 = bitcast %union.FIRST_UNION* %652 to %struct.anon*
  %654 = getelementptr inbounds %struct.anon, %struct.anon* %653, i32 0, i32 0
  store i8 0, i8* %654, align 1
  %655 = load %union.rec*, %union.rec** @zz_hold, align 8
  %656 = load %union.rec*, %union.rec** @zz_hold, align 8
  %657 = bitcast %union.rec* %656 to %struct.word_type*
  %658 = getelementptr inbounds %struct.word_type, %struct.word_type* %657, i32 0, i32 0
  %659 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %658, i32 0, i64 1
  %660 = getelementptr inbounds %struct.LIST, %struct.LIST* %659, i32 0, i32 1
  store %union.rec* %655, %union.rec** %660, align 8
  %661 = load %union.rec*, %union.rec** @zz_hold, align 8
  %662 = bitcast %union.rec* %661 to %struct.word_type*
  %663 = getelementptr inbounds %struct.word_type, %struct.word_type* %662, i32 0, i32 0
  %664 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %663, i32 0, i64 1
  %665 = getelementptr inbounds %struct.LIST, %struct.LIST* %664, i32 0, i32 0
  store %union.rec* %655, %union.rec** %665, align 8
  %666 = load %union.rec*, %union.rec** @zz_hold, align 8
  %667 = bitcast %union.rec* %666 to %struct.word_type*
  %668 = getelementptr inbounds %struct.word_type, %struct.word_type* %667, i32 0, i32 0
  %669 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %668, i32 0, i64 0
  %670 = getelementptr inbounds %struct.LIST, %struct.LIST* %669, i32 0, i32 1
  store %union.rec* %655, %union.rec** %670, align 8
  %671 = load %union.rec*, %union.rec** @zz_hold, align 8
  %672 = bitcast %union.rec* %671 to %struct.word_type*
  %673 = getelementptr inbounds %struct.word_type, %struct.word_type* %672, i32 0, i32 0
  %674 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %673, i32 0, i64 0
  %675 = getelementptr inbounds %struct.LIST, %struct.LIST* %674, i32 0, i32 0
  store %union.rec* %655, %union.rec** %675, align 8
  store %union.rec* %655, %union.rec** @xx_link, align 8
  %676 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %676, %union.rec** @zz_res, align 8
  %677 = load %union.rec*, %union.rec** %left_par, align 8
  store %union.rec* %677, %union.rec** @zz_hold, align 8
  %678 = load %union.rec*, %union.rec** @zz_hold, align 8
  %679 = icmp eq %union.rec* %678, null
  br i1 %679, label %680, label %682

; <label>:680                                     ; preds = %649
  %681 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %730

; <label>:682                                     ; preds = %649
  %683 = load %union.rec*, %union.rec** @zz_res, align 8
  %684 = icmp eq %union.rec* %683, null
  br i1 %684, label %685, label %687

; <label>:685                                     ; preds = %682
  %686 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %728

; <label>:687                                     ; preds = %682
  %688 = load %union.rec*, %union.rec** @zz_hold, align 8
  %689 = bitcast %union.rec* %688 to %struct.word_type*
  %690 = getelementptr inbounds %struct.word_type, %struct.word_type* %689, i32 0, i32 0
  %691 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %690, i32 0, i64 0
  %692 = getelementptr inbounds %struct.LIST, %struct.LIST* %691, i32 0, i32 0
  %693 = load %union.rec*, %union.rec** %692, align 8
  store %union.rec* %693, %union.rec** @zz_tmp, align 8
  %694 = load %union.rec*, %union.rec** @zz_res, align 8
  %695 = bitcast %union.rec* %694 to %struct.word_type*
  %696 = getelementptr inbounds %struct.word_type, %struct.word_type* %695, i32 0, i32 0
  %697 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %696, i32 0, i64 0
  %698 = getelementptr inbounds %struct.LIST, %struct.LIST* %697, i32 0, i32 0
  %699 = load %union.rec*, %union.rec** %698, align 8
  %700 = load %union.rec*, %union.rec** @zz_hold, align 8
  %701 = bitcast %union.rec* %700 to %struct.word_type*
  %702 = getelementptr inbounds %struct.word_type, %struct.word_type* %701, i32 0, i32 0
  %703 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %702, i32 0, i64 0
  %704 = getelementptr inbounds %struct.LIST, %struct.LIST* %703, i32 0, i32 0
  store %union.rec* %699, %union.rec** %704, align 8
  %705 = load %union.rec*, %union.rec** @zz_hold, align 8
  %706 = load %union.rec*, %union.rec** @zz_res, align 8
  %707 = bitcast %union.rec* %706 to %struct.word_type*
  %708 = getelementptr inbounds %struct.word_type, %struct.word_type* %707, i32 0, i32 0
  %709 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %708, i32 0, i64 0
  %710 = getelementptr inbounds %struct.LIST, %struct.LIST* %709, i32 0, i32 0
  %711 = load %union.rec*, %union.rec** %710, align 8
  %712 = bitcast %union.rec* %711 to %struct.word_type*
  %713 = getelementptr inbounds %struct.word_type, %struct.word_type* %712, i32 0, i32 0
  %714 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %713, i32 0, i64 0
  %715 = getelementptr inbounds %struct.LIST, %struct.LIST* %714, i32 0, i32 1
  store %union.rec* %705, %union.rec** %715, align 8
  %716 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %717 = load %union.rec*, %union.rec** @zz_res, align 8
  %718 = bitcast %union.rec* %717 to %struct.word_type*
  %719 = getelementptr inbounds %struct.word_type, %struct.word_type* %718, i32 0, i32 0
  %720 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %719, i32 0, i64 0
  %721 = getelementptr inbounds %struct.LIST, %struct.LIST* %720, i32 0, i32 0
  store %union.rec* %716, %union.rec** %721, align 8
  %722 = load %union.rec*, %union.rec** @zz_res, align 8
  %723 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %724 = bitcast %union.rec* %723 to %struct.word_type*
  %725 = getelementptr inbounds %struct.word_type, %struct.word_type* %724, i32 0, i32 0
  %726 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %725, i32 0, i64 0
  %727 = getelementptr inbounds %struct.LIST, %struct.LIST* %726, i32 0, i32 1
  store %union.rec* %722, %union.rec** %727, align 8
  br label %728

; <label>:728                                     ; preds = %687, %685
  %729 = phi %union.rec* [ %686, %685 ], [ %722, %687 ]
  br label %730

; <label>:730                                     ; preds = %728, %680
  %731 = phi %union.rec* [ %681, %680 ], [ %729, %728 ]
  %732 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %732, %union.rec** @zz_res, align 8
  %733 = load %union.rec*, %union.rec** %l, align 8
  store %union.rec* %733, %union.rec** @zz_hold, align 8
  %734 = load %union.rec*, %union.rec** @zz_hold, align 8
  %735 = icmp eq %union.rec* %734, null
  br i1 %735, label %736, label %738

; <label>:736                                     ; preds = %730
  %737 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %786

; <label>:738                                     ; preds = %730
  %739 = load %union.rec*, %union.rec** @zz_res, align 8
  %740 = icmp eq %union.rec* %739, null
  br i1 %740, label %741, label %743

; <label>:741                                     ; preds = %738
  %742 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %784

; <label>:743                                     ; preds = %738
  %744 = load %union.rec*, %union.rec** @zz_hold, align 8
  %745 = bitcast %union.rec* %744 to %struct.word_type*
  %746 = getelementptr inbounds %struct.word_type, %struct.word_type* %745, i32 0, i32 0
  %747 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %746, i32 0, i64 1
  %748 = getelementptr inbounds %struct.LIST, %struct.LIST* %747, i32 0, i32 0
  %749 = load %union.rec*, %union.rec** %748, align 8
  store %union.rec* %749, %union.rec** @zz_tmp, align 8
  %750 = load %union.rec*, %union.rec** @zz_res, align 8
  %751 = bitcast %union.rec* %750 to %struct.word_type*
  %752 = getelementptr inbounds %struct.word_type, %struct.word_type* %751, i32 0, i32 0
  %753 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %752, i32 0, i64 1
  %754 = getelementptr inbounds %struct.LIST, %struct.LIST* %753, i32 0, i32 0
  %755 = load %union.rec*, %union.rec** %754, align 8
  %756 = load %union.rec*, %union.rec** @zz_hold, align 8
  %757 = bitcast %union.rec* %756 to %struct.word_type*
  %758 = getelementptr inbounds %struct.word_type, %struct.word_type* %757, i32 0, i32 0
  %759 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %758, i32 0, i64 1
  %760 = getelementptr inbounds %struct.LIST, %struct.LIST* %759, i32 0, i32 0
  store %union.rec* %755, %union.rec** %760, align 8
  %761 = load %union.rec*, %union.rec** @zz_hold, align 8
  %762 = load %union.rec*, %union.rec** @zz_res, align 8
  %763 = bitcast %union.rec* %762 to %struct.word_type*
  %764 = getelementptr inbounds %struct.word_type, %struct.word_type* %763, i32 0, i32 0
  %765 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %764, i32 0, i64 1
  %766 = getelementptr inbounds %struct.LIST, %struct.LIST* %765, i32 0, i32 0
  %767 = load %union.rec*, %union.rec** %766, align 8
  %768 = bitcast %union.rec* %767 to %struct.word_type*
  %769 = getelementptr inbounds %struct.word_type, %struct.word_type* %768, i32 0, i32 0
  %770 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %769, i32 0, i64 1
  %771 = getelementptr inbounds %struct.LIST, %struct.LIST* %770, i32 0, i32 1
  store %union.rec* %761, %union.rec** %771, align 8
  %772 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %773 = load %union.rec*, %union.rec** @zz_res, align 8
  %774 = bitcast %union.rec* %773 to %struct.word_type*
  %775 = getelementptr inbounds %struct.word_type, %struct.word_type* %774, i32 0, i32 0
  %776 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %775, i32 0, i64 1
  %777 = getelementptr inbounds %struct.LIST, %struct.LIST* %776, i32 0, i32 0
  store %union.rec* %772, %union.rec** %777, align 8
  %778 = load %union.rec*, %union.rec** @zz_res, align 8
  %779 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %780 = bitcast %union.rec* %779 to %struct.word_type*
  %781 = getelementptr inbounds %struct.word_type, %struct.word_type* %780, i32 0, i32 0
  %782 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %781, i32 0, i64 1
  %783 = getelementptr inbounds %struct.LIST, %struct.LIST* %782, i32 0, i32 1
  store %union.rec* %778, %union.rec** %783, align 8
  br label %784

; <label>:784                                     ; preds = %743, %741
  %785 = phi %union.rec* [ %742, %741 ], [ %778, %743 ]
  br label %786

; <label>:786                                     ; preds = %784, %736
  %787 = phi %union.rec* [ %737, %736 ], [ %785, %784 ]
  %788 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %789 = zext i8 %788 to i32
  store i32 %789, i32* @zz_size, align 4
  %790 = sext i32 %789 to i64
  %791 = icmp uge i64 %790, 265
  br i1 %791, label %792, label %795

; <label>:792                                     ; preds = %786
  %793 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %794 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %793)
  br label %820

; <label>:795                                     ; preds = %786
  %796 = load i32, i32* @zz_size, align 4
  %797 = sext i32 %796 to i64
  %798 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %797
  %799 = load %union.rec*, %union.rec** %798, align 8
  %800 = icmp eq %union.rec* %799, null
  br i1 %800, label %801, label %805

; <label>:801                                     ; preds = %795
  %802 = load i32, i32* @zz_size, align 4
  %803 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %804 = call %union.rec* @GetMemory(i32 %802, %struct.FILE_POS* %803)
  store %union.rec* %804, %union.rec** @zz_hold, align 8
  br label %819

; <label>:805                                     ; preds = %795
  %806 = load i32, i32* @zz_size, align 4
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %807
  %809 = load %union.rec*, %union.rec** %808, align 8
  store %union.rec* %809, %union.rec** @zz_hold, align 8
  store %union.rec* %809, %union.rec** @zz_hold, align 8
  %810 = load %union.rec*, %union.rec** @zz_hold, align 8
  %811 = bitcast %union.rec* %810 to %struct.word_type*
  %812 = getelementptr inbounds %struct.word_type, %struct.word_type* %811, i32 0, i32 0
  %813 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %812, i32 0, i64 0
  %814 = getelementptr inbounds %struct.LIST, %struct.LIST* %813, i32 0, i32 0
  %815 = load %union.rec*, %union.rec** %814, align 8
  %816 = load i32, i32* @zz_size, align 4
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %817
  store %union.rec* %815, %union.rec** %818, align 8
  br label %819

; <label>:819                                     ; preds = %805, %801
  br label %820

; <label>:820                                     ; preds = %819, %792
  %821 = load %union.rec*, %union.rec** @zz_hold, align 8
  %822 = bitcast %union.rec* %821 to %struct.word_type*
  %823 = getelementptr inbounds %struct.word_type, %struct.word_type* %822, i32 0, i32 1
  %824 = bitcast %union.FIRST_UNION* %823 to %struct.anon*
  %825 = getelementptr inbounds %struct.anon, %struct.anon* %824, i32 0, i32 0
  store i8 10, i8* %825, align 1
  %826 = load %union.rec*, %union.rec** @zz_hold, align 8
  %827 = load %union.rec*, %union.rec** @zz_hold, align 8
  %828 = bitcast %union.rec* %827 to %struct.word_type*
  %829 = getelementptr inbounds %struct.word_type, %struct.word_type* %828, i32 0, i32 0
  %830 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %829, i32 0, i64 1
  %831 = getelementptr inbounds %struct.LIST, %struct.LIST* %830, i32 0, i32 1
  store %union.rec* %826, %union.rec** %831, align 8
  %832 = load %union.rec*, %union.rec** @zz_hold, align 8
  %833 = bitcast %union.rec* %832 to %struct.word_type*
  %834 = getelementptr inbounds %struct.word_type, %struct.word_type* %833, i32 0, i32 0
  %835 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %834, i32 0, i64 1
  %836 = getelementptr inbounds %struct.LIST, %struct.LIST* %835, i32 0, i32 0
  store %union.rec* %826, %union.rec** %836, align 8
  %837 = load %union.rec*, %union.rec** @zz_hold, align 8
  %838 = bitcast %union.rec* %837 to %struct.word_type*
  %839 = getelementptr inbounds %struct.word_type, %struct.word_type* %838, i32 0, i32 0
  %840 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %839, i32 0, i64 0
  %841 = getelementptr inbounds %struct.LIST, %struct.LIST* %840, i32 0, i32 1
  store %union.rec* %826, %union.rec** %841, align 8
  %842 = load %union.rec*, %union.rec** @zz_hold, align 8
  %843 = bitcast %union.rec* %842 to %struct.word_type*
  %844 = getelementptr inbounds %struct.word_type, %struct.word_type* %843, i32 0, i32 0
  %845 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %844, i32 0, i64 0
  %846 = getelementptr inbounds %struct.LIST, %struct.LIST* %845, i32 0, i32 0
  store %union.rec* %826, %union.rec** %846, align 8
  store %union.rec* %826, %union.rec** %right_par, align 8
  %847 = load %union.rec*, %union.rec** %y, align 8
  %848 = call %union.rec* @ChildSym(%union.rec* %847, i32 146)
  %849 = load %union.rec*, %union.rec** %right_par, align 8
  %850 = bitcast %union.rec* %849 to %struct.closure_type*
  %851 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %850, i32 0, i32 5
  store %union.rec* %848, %union.rec** %851, align 8
  %852 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %853 = zext i8 %852 to i32
  store i32 %853, i32* @zz_size, align 4
  %854 = sext i32 %853 to i64
  %855 = icmp uge i64 %854, 265
  br i1 %855, label %856, label %859

; <label>:856                                     ; preds = %820
  %857 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %858 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %857)
  br label %884

; <label>:859                                     ; preds = %820
  %860 = load i32, i32* @zz_size, align 4
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %861
  %863 = load %union.rec*, %union.rec** %862, align 8
  %864 = icmp eq %union.rec* %863, null
  br i1 %864, label %865, label %869

; <label>:865                                     ; preds = %859
  %866 = load i32, i32* @zz_size, align 4
  %867 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %868 = call %union.rec* @GetMemory(i32 %866, %struct.FILE_POS* %867)
  store %union.rec* %868, %union.rec** @zz_hold, align 8
  br label %883

; <label>:869                                     ; preds = %859
  %870 = load i32, i32* @zz_size, align 4
  %871 = sext i32 %870 to i64
  %872 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %871
  %873 = load %union.rec*, %union.rec** %872, align 8
  store %union.rec* %873, %union.rec** @zz_hold, align 8
  store %union.rec* %873, %union.rec** @zz_hold, align 8
  %874 = load %union.rec*, %union.rec** @zz_hold, align 8
  %875 = bitcast %union.rec* %874 to %struct.word_type*
  %876 = getelementptr inbounds %struct.word_type, %struct.word_type* %875, i32 0, i32 0
  %877 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %876, i32 0, i64 0
  %878 = getelementptr inbounds %struct.LIST, %struct.LIST* %877, i32 0, i32 0
  %879 = load %union.rec*, %union.rec** %878, align 8
  %880 = load i32, i32* @zz_size, align 4
  %881 = sext i32 %880 to i64
  %882 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %881
  store %union.rec* %879, %union.rec** %882, align 8
  br label %883

; <label>:883                                     ; preds = %869, %865
  br label %884

; <label>:884                                     ; preds = %883, %856
  %885 = load %union.rec*, %union.rec** @zz_hold, align 8
  %886 = bitcast %union.rec* %885 to %struct.word_type*
  %887 = getelementptr inbounds %struct.word_type, %struct.word_type* %886, i32 0, i32 1
  %888 = bitcast %union.FIRST_UNION* %887 to %struct.anon*
  %889 = getelementptr inbounds %struct.anon, %struct.anon* %888, i32 0, i32 0
  store i8 0, i8* %889, align 1
  %890 = load %union.rec*, %union.rec** @zz_hold, align 8
  %891 = load %union.rec*, %union.rec** @zz_hold, align 8
  %892 = bitcast %union.rec* %891 to %struct.word_type*
  %893 = getelementptr inbounds %struct.word_type, %struct.word_type* %892, i32 0, i32 0
  %894 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %893, i32 0, i64 1
  %895 = getelementptr inbounds %struct.LIST, %struct.LIST* %894, i32 0, i32 1
  store %union.rec* %890, %union.rec** %895, align 8
  %896 = load %union.rec*, %union.rec** @zz_hold, align 8
  %897 = bitcast %union.rec* %896 to %struct.word_type*
  %898 = getelementptr inbounds %struct.word_type, %struct.word_type* %897, i32 0, i32 0
  %899 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %898, i32 0, i64 1
  %900 = getelementptr inbounds %struct.LIST, %struct.LIST* %899, i32 0, i32 0
  store %union.rec* %890, %union.rec** %900, align 8
  %901 = load %union.rec*, %union.rec** @zz_hold, align 8
  %902 = bitcast %union.rec* %901 to %struct.word_type*
  %903 = getelementptr inbounds %struct.word_type, %struct.word_type* %902, i32 0, i32 0
  %904 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %903, i32 0, i64 0
  %905 = getelementptr inbounds %struct.LIST, %struct.LIST* %904, i32 0, i32 1
  store %union.rec* %890, %union.rec** %905, align 8
  %906 = load %union.rec*, %union.rec** @zz_hold, align 8
  %907 = bitcast %union.rec* %906 to %struct.word_type*
  %908 = getelementptr inbounds %struct.word_type, %struct.word_type* %907, i32 0, i32 0
  %909 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %908, i32 0, i64 0
  %910 = getelementptr inbounds %struct.LIST, %struct.LIST* %909, i32 0, i32 0
  store %union.rec* %890, %union.rec** %910, align 8
  store %union.rec* %890, %union.rec** @xx_link, align 8
  %911 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %911, %union.rec** @zz_res, align 8
  %912 = load %union.rec*, %union.rec** %merge, align 8
  store %union.rec* %912, %union.rec** @zz_hold, align 8
  %913 = load %union.rec*, %union.rec** @zz_hold, align 8
  %914 = icmp eq %union.rec* %913, null
  br i1 %914, label %915, label %917

; <label>:915                                     ; preds = %884
  %916 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %965

; <label>:917                                     ; preds = %884
  %918 = load %union.rec*, %union.rec** @zz_res, align 8
  %919 = icmp eq %union.rec* %918, null
  br i1 %919, label %920, label %922

; <label>:920                                     ; preds = %917
  %921 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %963

; <label>:922                                     ; preds = %917
  %923 = load %union.rec*, %union.rec** @zz_hold, align 8
  %924 = bitcast %union.rec* %923 to %struct.word_type*
  %925 = getelementptr inbounds %struct.word_type, %struct.word_type* %924, i32 0, i32 0
  %926 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %925, i32 0, i64 0
  %927 = getelementptr inbounds %struct.LIST, %struct.LIST* %926, i32 0, i32 0
  %928 = load %union.rec*, %union.rec** %927, align 8
  store %union.rec* %928, %union.rec** @zz_tmp, align 8
  %929 = load %union.rec*, %union.rec** @zz_res, align 8
  %930 = bitcast %union.rec* %929 to %struct.word_type*
  %931 = getelementptr inbounds %struct.word_type, %struct.word_type* %930, i32 0, i32 0
  %932 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %931, i32 0, i64 0
  %933 = getelementptr inbounds %struct.LIST, %struct.LIST* %932, i32 0, i32 0
  %934 = load %union.rec*, %union.rec** %933, align 8
  %935 = load %union.rec*, %union.rec** @zz_hold, align 8
  %936 = bitcast %union.rec* %935 to %struct.word_type*
  %937 = getelementptr inbounds %struct.word_type, %struct.word_type* %936, i32 0, i32 0
  %938 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %937, i32 0, i64 0
  %939 = getelementptr inbounds %struct.LIST, %struct.LIST* %938, i32 0, i32 0
  store %union.rec* %934, %union.rec** %939, align 8
  %940 = load %union.rec*, %union.rec** @zz_hold, align 8
  %941 = load %union.rec*, %union.rec** @zz_res, align 8
  %942 = bitcast %union.rec* %941 to %struct.word_type*
  %943 = getelementptr inbounds %struct.word_type, %struct.word_type* %942, i32 0, i32 0
  %944 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %943, i32 0, i64 0
  %945 = getelementptr inbounds %struct.LIST, %struct.LIST* %944, i32 0, i32 0
  %946 = load %union.rec*, %union.rec** %945, align 8
  %947 = bitcast %union.rec* %946 to %struct.word_type*
  %948 = getelementptr inbounds %struct.word_type, %struct.word_type* %947, i32 0, i32 0
  %949 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %948, i32 0, i64 0
  %950 = getelementptr inbounds %struct.LIST, %struct.LIST* %949, i32 0, i32 1
  store %union.rec* %940, %union.rec** %950, align 8
  %951 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %952 = load %union.rec*, %union.rec** @zz_res, align 8
  %953 = bitcast %union.rec* %952 to %struct.word_type*
  %954 = getelementptr inbounds %struct.word_type, %struct.word_type* %953, i32 0, i32 0
  %955 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %954, i32 0, i64 0
  %956 = getelementptr inbounds %struct.LIST, %struct.LIST* %955, i32 0, i32 0
  store %union.rec* %951, %union.rec** %956, align 8
  %957 = load %union.rec*, %union.rec** @zz_res, align 8
  %958 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %959 = bitcast %union.rec* %958 to %struct.word_type*
  %960 = getelementptr inbounds %struct.word_type, %struct.word_type* %959, i32 0, i32 0
  %961 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %960, i32 0, i64 0
  %962 = getelementptr inbounds %struct.LIST, %struct.LIST* %961, i32 0, i32 1
  store %union.rec* %957, %union.rec** %962, align 8
  br label %963

; <label>:963                                     ; preds = %922, %920
  %964 = phi %union.rec* [ %921, %920 ], [ %957, %922 ]
  br label %965

; <label>:965                                     ; preds = %963, %915
  %966 = phi %union.rec* [ %916, %915 ], [ %964, %963 ]
  %967 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %967, %union.rec** @zz_res, align 8
  %968 = load %union.rec*, %union.rec** %right_par, align 8
  store %union.rec* %968, %union.rec** @zz_hold, align 8
  %969 = load %union.rec*, %union.rec** @zz_hold, align 8
  %970 = icmp eq %union.rec* %969, null
  br i1 %970, label %971, label %973

; <label>:971                                     ; preds = %965
  %972 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1021

; <label>:973                                     ; preds = %965
  %974 = load %union.rec*, %union.rec** @zz_res, align 8
  %975 = icmp eq %union.rec* %974, null
  br i1 %975, label %976, label %978

; <label>:976                                     ; preds = %973
  %977 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1019

; <label>:978                                     ; preds = %973
  %979 = load %union.rec*, %union.rec** @zz_hold, align 8
  %980 = bitcast %union.rec* %979 to %struct.word_type*
  %981 = getelementptr inbounds %struct.word_type, %struct.word_type* %980, i32 0, i32 0
  %982 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %981, i32 0, i64 1
  %983 = getelementptr inbounds %struct.LIST, %struct.LIST* %982, i32 0, i32 0
  %984 = load %union.rec*, %union.rec** %983, align 8
  store %union.rec* %984, %union.rec** @zz_tmp, align 8
  %985 = load %union.rec*, %union.rec** @zz_res, align 8
  %986 = bitcast %union.rec* %985 to %struct.word_type*
  %987 = getelementptr inbounds %struct.word_type, %struct.word_type* %986, i32 0, i32 0
  %988 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %987, i32 0, i64 1
  %989 = getelementptr inbounds %struct.LIST, %struct.LIST* %988, i32 0, i32 0
  %990 = load %union.rec*, %union.rec** %989, align 8
  %991 = load %union.rec*, %union.rec** @zz_hold, align 8
  %992 = bitcast %union.rec* %991 to %struct.word_type*
  %993 = getelementptr inbounds %struct.word_type, %struct.word_type* %992, i32 0, i32 0
  %994 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %993, i32 0, i64 1
  %995 = getelementptr inbounds %struct.LIST, %struct.LIST* %994, i32 0, i32 0
  store %union.rec* %990, %union.rec** %995, align 8
  %996 = load %union.rec*, %union.rec** @zz_hold, align 8
  %997 = load %union.rec*, %union.rec** @zz_res, align 8
  %998 = bitcast %union.rec* %997 to %struct.word_type*
  %999 = getelementptr inbounds %struct.word_type, %struct.word_type* %998, i32 0, i32 0
  %1000 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %999, i32 0, i64 1
  %1001 = getelementptr inbounds %struct.LIST, %struct.LIST* %1000, i32 0, i32 0
  %1002 = load %union.rec*, %union.rec** %1001, align 8
  %1003 = bitcast %union.rec* %1002 to %struct.word_type*
  %1004 = getelementptr inbounds %struct.word_type, %struct.word_type* %1003, i32 0, i32 0
  %1005 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1004, i32 0, i64 1
  %1006 = getelementptr inbounds %struct.LIST, %struct.LIST* %1005, i32 0, i32 1
  store %union.rec* %996, %union.rec** %1006, align 8
  %1007 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1008 = load %union.rec*, %union.rec** @zz_res, align 8
  %1009 = bitcast %union.rec* %1008 to %struct.word_type*
  %1010 = getelementptr inbounds %struct.word_type, %struct.word_type* %1009, i32 0, i32 0
  %1011 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1010, i32 0, i64 1
  %1012 = getelementptr inbounds %struct.LIST, %struct.LIST* %1011, i32 0, i32 0
  store %union.rec* %1007, %union.rec** %1012, align 8
  %1013 = load %union.rec*, %union.rec** @zz_res, align 8
  %1014 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1015 = bitcast %union.rec* %1014 to %struct.word_type*
  %1016 = getelementptr inbounds %struct.word_type, %struct.word_type* %1015, i32 0, i32 0
  %1017 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1016, i32 0, i64 1
  %1018 = getelementptr inbounds %struct.LIST, %struct.LIST* %1017, i32 0, i32 1
  store %union.rec* %1013, %union.rec** %1018, align 8
  br label %1019

; <label>:1019                                    ; preds = %978, %976
  %1020 = phi %union.rec* [ %977, %976 ], [ %1013, %978 ]
  br label %1021

; <label>:1021                                    ; preds = %1019, %971
  %1022 = phi %union.rec* [ %972, %971 ], [ %1020, %1019 ]
  %1023 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1024 = zext i8 %1023 to i32
  store i32 %1024, i32* @zz_size, align 4
  %1025 = sext i32 %1024 to i64
  %1026 = icmp uge i64 %1025, 265
  br i1 %1026, label %1027, label %1030

; <label>:1027                                    ; preds = %1021
  %1028 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1029 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %1028)
  br label %1055

; <label>:1030                                    ; preds = %1021
  %1031 = load i32, i32* @zz_size, align 4
  %1032 = sext i32 %1031 to i64
  %1033 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1032
  %1034 = load %union.rec*, %union.rec** %1033, align 8
  %1035 = icmp eq %union.rec* %1034, null
  br i1 %1035, label %1036, label %1040

; <label>:1036                                    ; preds = %1030
  %1037 = load i32, i32* @zz_size, align 4
  %1038 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1039 = call %union.rec* @GetMemory(i32 %1037, %struct.FILE_POS* %1038)
  store %union.rec* %1039, %union.rec** @zz_hold, align 8
  br label %1054

; <label>:1040                                    ; preds = %1030
  %1041 = load i32, i32* @zz_size, align 4
  %1042 = sext i32 %1041 to i64
  %1043 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1042
  %1044 = load %union.rec*, %union.rec** %1043, align 8
  store %union.rec* %1044, %union.rec** @zz_hold, align 8
  store %union.rec* %1044, %union.rec** @zz_hold, align 8
  %1045 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1046 = bitcast %union.rec* %1045 to %struct.word_type*
  %1047 = getelementptr inbounds %struct.word_type, %struct.word_type* %1046, i32 0, i32 0
  %1048 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1047, i32 0, i64 0
  %1049 = getelementptr inbounds %struct.LIST, %struct.LIST* %1048, i32 0, i32 0
  %1050 = load %union.rec*, %union.rec** %1049, align 8
  %1051 = load i32, i32* @zz_size, align 4
  %1052 = sext i32 %1051 to i64
  %1053 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1052
  store %union.rec* %1050, %union.rec** %1053, align 8
  br label %1054

; <label>:1054                                    ; preds = %1040, %1036
  br label %1055

; <label>:1055                                    ; preds = %1054, %1027
  %1056 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1057 = bitcast %union.rec* %1056 to %struct.word_type*
  %1058 = getelementptr inbounds %struct.word_type, %struct.word_type* %1057, i32 0, i32 1
  %1059 = bitcast %union.FIRST_UNION* %1058 to %struct.anon*
  %1060 = getelementptr inbounds %struct.anon, %struct.anon* %1059, i32 0, i32 0
  store i8 0, i8* %1060, align 1
  %1061 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1062 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1063 = bitcast %union.rec* %1062 to %struct.word_type*
  %1064 = getelementptr inbounds %struct.word_type, %struct.word_type* %1063, i32 0, i32 0
  %1065 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1064, i32 0, i64 1
  %1066 = getelementptr inbounds %struct.LIST, %struct.LIST* %1065, i32 0, i32 1
  store %union.rec* %1061, %union.rec** %1066, align 8
  %1067 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1068 = bitcast %union.rec* %1067 to %struct.word_type*
  %1069 = getelementptr inbounds %struct.word_type, %struct.word_type* %1068, i32 0, i32 0
  %1070 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1069, i32 0, i64 1
  %1071 = getelementptr inbounds %struct.LIST, %struct.LIST* %1070, i32 0, i32 0
  store %union.rec* %1061, %union.rec** %1071, align 8
  %1072 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1073 = bitcast %union.rec* %1072 to %struct.word_type*
  %1074 = getelementptr inbounds %struct.word_type, %struct.word_type* %1073, i32 0, i32 0
  %1075 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1074, i32 0, i64 0
  %1076 = getelementptr inbounds %struct.LIST, %struct.LIST* %1075, i32 0, i32 1
  store %union.rec* %1061, %union.rec** %1076, align 8
  %1077 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1078 = bitcast %union.rec* %1077 to %struct.word_type*
  %1079 = getelementptr inbounds %struct.word_type, %struct.word_type* %1078, i32 0, i32 0
  %1080 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1079, i32 0, i64 0
  %1081 = getelementptr inbounds %struct.LIST, %struct.LIST* %1080, i32 0, i32 0
  store %union.rec* %1061, %union.rec** %1081, align 8
  store %union.rec* %1061, %union.rec** @xx_link, align 8
  %1082 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1082, %union.rec** @zz_res, align 8
  %1083 = load %union.rec*, %union.rec** %right_par, align 8
  store %union.rec* %1083, %union.rec** @zz_hold, align 8
  %1084 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1085 = icmp eq %union.rec* %1084, null
  br i1 %1085, label %1086, label %1088

; <label>:1086                                    ; preds = %1055
  %1087 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1136

; <label>:1088                                    ; preds = %1055
  %1089 = load %union.rec*, %union.rec** @zz_res, align 8
  %1090 = icmp eq %union.rec* %1089, null
  br i1 %1090, label %1091, label %1093

; <label>:1091                                    ; preds = %1088
  %1092 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1134

; <label>:1093                                    ; preds = %1088
  %1094 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1095 = bitcast %union.rec* %1094 to %struct.word_type*
  %1096 = getelementptr inbounds %struct.word_type, %struct.word_type* %1095, i32 0, i32 0
  %1097 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1096, i32 0, i64 0
  %1098 = getelementptr inbounds %struct.LIST, %struct.LIST* %1097, i32 0, i32 0
  %1099 = load %union.rec*, %union.rec** %1098, align 8
  store %union.rec* %1099, %union.rec** @zz_tmp, align 8
  %1100 = load %union.rec*, %union.rec** @zz_res, align 8
  %1101 = bitcast %union.rec* %1100 to %struct.word_type*
  %1102 = getelementptr inbounds %struct.word_type, %struct.word_type* %1101, i32 0, i32 0
  %1103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1102, i32 0, i64 0
  %1104 = getelementptr inbounds %struct.LIST, %struct.LIST* %1103, i32 0, i32 0
  %1105 = load %union.rec*, %union.rec** %1104, align 8
  %1106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1107 = bitcast %union.rec* %1106 to %struct.word_type*
  %1108 = getelementptr inbounds %struct.word_type, %struct.word_type* %1107, i32 0, i32 0
  %1109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1108, i32 0, i64 0
  %1110 = getelementptr inbounds %struct.LIST, %struct.LIST* %1109, i32 0, i32 0
  store %union.rec* %1105, %union.rec** %1110, align 8
  %1111 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1112 = load %union.rec*, %union.rec** @zz_res, align 8
  %1113 = bitcast %union.rec* %1112 to %struct.word_type*
  %1114 = getelementptr inbounds %struct.word_type, %struct.word_type* %1113, i32 0, i32 0
  %1115 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1114, i32 0, i64 0
  %1116 = getelementptr inbounds %struct.LIST, %struct.LIST* %1115, i32 0, i32 0
  %1117 = load %union.rec*, %union.rec** %1116, align 8
  %1118 = bitcast %union.rec* %1117 to %struct.word_type*
  %1119 = getelementptr inbounds %struct.word_type, %struct.word_type* %1118, i32 0, i32 0
  %1120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1119, i32 0, i64 0
  %1121 = getelementptr inbounds %struct.LIST, %struct.LIST* %1120, i32 0, i32 1
  store %union.rec* %1111, %union.rec** %1121, align 8
  %1122 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1123 = load %union.rec*, %union.rec** @zz_res, align 8
  %1124 = bitcast %union.rec* %1123 to %struct.word_type*
  %1125 = getelementptr inbounds %struct.word_type, %struct.word_type* %1124, i32 0, i32 0
  %1126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1125, i32 0, i64 0
  %1127 = getelementptr inbounds %struct.LIST, %struct.LIST* %1126, i32 0, i32 0
  store %union.rec* %1122, %union.rec** %1127, align 8
  %1128 = load %union.rec*, %union.rec** @zz_res, align 8
  %1129 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1130 = bitcast %union.rec* %1129 to %struct.word_type*
  %1131 = getelementptr inbounds %struct.word_type, %struct.word_type* %1130, i32 0, i32 0
  %1132 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1131, i32 0, i64 0
  %1133 = getelementptr inbounds %struct.LIST, %struct.LIST* %1132, i32 0, i32 1
  store %union.rec* %1128, %union.rec** %1133, align 8
  br label %1134

; <label>:1134                                    ; preds = %1093, %1091
  %1135 = phi %union.rec* [ %1092, %1091 ], [ %1128, %1093 ]
  br label %1136

; <label>:1136                                    ; preds = %1134, %1086
  %1137 = phi %union.rec* [ %1087, %1086 ], [ %1135, %1134 ]
  %1138 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1138, %union.rec** @zz_res, align 8
  %1139 = load %union.rec*, %union.rec** %r, align 8
  store %union.rec* %1139, %union.rec** @zz_hold, align 8
  %1140 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1141 = icmp eq %union.rec* %1140, null
  br i1 %1141, label %1142, label %1144

; <label>:1142                                    ; preds = %1136
  %1143 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1192

; <label>:1144                                    ; preds = %1136
  %1145 = load %union.rec*, %union.rec** @zz_res, align 8
  %1146 = icmp eq %union.rec* %1145, null
  br i1 %1146, label %1147, label %1149

; <label>:1147                                    ; preds = %1144
  %1148 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1190

; <label>:1149                                    ; preds = %1144
  %1150 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1151 = bitcast %union.rec* %1150 to %struct.word_type*
  %1152 = getelementptr inbounds %struct.word_type, %struct.word_type* %1151, i32 0, i32 0
  %1153 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1152, i32 0, i64 1
  %1154 = getelementptr inbounds %struct.LIST, %struct.LIST* %1153, i32 0, i32 0
  %1155 = load %union.rec*, %union.rec** %1154, align 8
  store %union.rec* %1155, %union.rec** @zz_tmp, align 8
  %1156 = load %union.rec*, %union.rec** @zz_res, align 8
  %1157 = bitcast %union.rec* %1156 to %struct.word_type*
  %1158 = getelementptr inbounds %struct.word_type, %struct.word_type* %1157, i32 0, i32 0
  %1159 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1158, i32 0, i64 1
  %1160 = getelementptr inbounds %struct.LIST, %struct.LIST* %1159, i32 0, i32 0
  %1161 = load %union.rec*, %union.rec** %1160, align 8
  %1162 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1163 = bitcast %union.rec* %1162 to %struct.word_type*
  %1164 = getelementptr inbounds %struct.word_type, %struct.word_type* %1163, i32 0, i32 0
  %1165 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1164, i32 0, i64 1
  %1166 = getelementptr inbounds %struct.LIST, %struct.LIST* %1165, i32 0, i32 0
  store %union.rec* %1161, %union.rec** %1166, align 8
  %1167 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1168 = load %union.rec*, %union.rec** @zz_res, align 8
  %1169 = bitcast %union.rec* %1168 to %struct.word_type*
  %1170 = getelementptr inbounds %struct.word_type, %struct.word_type* %1169, i32 0, i32 0
  %1171 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1170, i32 0, i64 1
  %1172 = getelementptr inbounds %struct.LIST, %struct.LIST* %1171, i32 0, i32 0
  %1173 = load %union.rec*, %union.rec** %1172, align 8
  %1174 = bitcast %union.rec* %1173 to %struct.word_type*
  %1175 = getelementptr inbounds %struct.word_type, %struct.word_type* %1174, i32 0, i32 0
  %1176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1175, i32 0, i64 1
  %1177 = getelementptr inbounds %struct.LIST, %struct.LIST* %1176, i32 0, i32 1
  store %union.rec* %1167, %union.rec** %1177, align 8
  %1178 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1179 = load %union.rec*, %union.rec** @zz_res, align 8
  %1180 = bitcast %union.rec* %1179 to %struct.word_type*
  %1181 = getelementptr inbounds %struct.word_type, %struct.word_type* %1180, i32 0, i32 0
  %1182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1181, i32 0, i64 1
  %1183 = getelementptr inbounds %struct.LIST, %struct.LIST* %1182, i32 0, i32 0
  store %union.rec* %1178, %union.rec** %1183, align 8
  %1184 = load %union.rec*, %union.rec** @zz_res, align 8
  %1185 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1186 = bitcast %union.rec* %1185 to %struct.word_type*
  %1187 = getelementptr inbounds %struct.word_type, %struct.word_type* %1186, i32 0, i32 0
  %1188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1187, i32 0, i64 1
  %1189 = getelementptr inbounds %struct.LIST, %struct.LIST* %1188, i32 0, i32 1
  store %union.rec* %1184, %union.rec** %1189, align 8
  br label %1190

; <label>:1190                                    ; preds = %1149, %1147
  %1191 = phi %union.rec* [ %1148, %1147 ], [ %1184, %1149 ]
  br label %1192

; <label>:1192                                    ; preds = %1190, %1142
  %1193 = phi %union.rec* [ %1143, %1142 ], [ %1191, %1190 ]
  %1194 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 81), align 1
  %1195 = zext i8 %1194 to i32
  store i32 %1195, i32* @zz_size, align 4
  %1196 = sext i32 %1195 to i64
  %1197 = icmp uge i64 %1196, 265
  br i1 %1197, label %1198, label %1201

; <label>:1198                                    ; preds = %1192
  %1199 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1200 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %1199)
  br label %1226

; <label>:1201                                    ; preds = %1192
  %1202 = load i32, i32* @zz_size, align 4
  %1203 = sext i32 %1202 to i64
  %1204 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1203
  %1205 = load %union.rec*, %union.rec** %1204, align 8
  %1206 = icmp eq %union.rec* %1205, null
  br i1 %1206, label %1207, label %1211

; <label>:1207                                    ; preds = %1201
  %1208 = load i32, i32* @zz_size, align 4
  %1209 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1210 = call %union.rec* @GetMemory(i32 %1208, %struct.FILE_POS* %1209)
  store %union.rec* %1210, %union.rec** @zz_hold, align 8
  br label %1225

; <label>:1211                                    ; preds = %1201
  %1212 = load i32, i32* @zz_size, align 4
  %1213 = sext i32 %1212 to i64
  %1214 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1213
  %1215 = load %union.rec*, %union.rec** %1214, align 8
  store %union.rec* %1215, %union.rec** @zz_hold, align 8
  store %union.rec* %1215, %union.rec** @zz_hold, align 8
  %1216 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1217 = bitcast %union.rec* %1216 to %struct.word_type*
  %1218 = getelementptr inbounds %struct.word_type, %struct.word_type* %1217, i32 0, i32 0
  %1219 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1218, i32 0, i64 0
  %1220 = getelementptr inbounds %struct.LIST, %struct.LIST* %1219, i32 0, i32 0
  %1221 = load %union.rec*, %union.rec** %1220, align 8
  %1222 = load i32, i32* @zz_size, align 4
  %1223 = sext i32 %1222 to i64
  %1224 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1223
  store %union.rec* %1221, %union.rec** %1224, align 8
  br label %1225

; <label>:1225                                    ; preds = %1211, %1207
  br label %1226

; <label>:1226                                    ; preds = %1225, %1198
  %1227 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1228 = bitcast %union.rec* %1227 to %struct.word_type*
  %1229 = getelementptr inbounds %struct.word_type, %struct.word_type* %1228, i32 0, i32 1
  %1230 = bitcast %union.FIRST_UNION* %1229 to %struct.anon*
  %1231 = getelementptr inbounds %struct.anon, %struct.anon* %1230, i32 0, i32 0
  store i8 81, i8* %1231, align 1
  %1232 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1233 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1234 = bitcast %union.rec* %1233 to %struct.word_type*
  %1235 = getelementptr inbounds %struct.word_type, %struct.word_type* %1234, i32 0, i32 0
  %1236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1235, i32 0, i64 1
  %1237 = getelementptr inbounds %struct.LIST, %struct.LIST* %1236, i32 0, i32 1
  store %union.rec* %1232, %union.rec** %1237, align 8
  %1238 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1239 = bitcast %union.rec* %1238 to %struct.word_type*
  %1240 = getelementptr inbounds %struct.word_type, %struct.word_type* %1239, i32 0, i32 0
  %1241 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1240, i32 0, i64 1
  %1242 = getelementptr inbounds %struct.LIST, %struct.LIST* %1241, i32 0, i32 0
  store %union.rec* %1232, %union.rec** %1242, align 8
  %1243 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1244 = bitcast %union.rec* %1243 to %struct.word_type*
  %1245 = getelementptr inbounds %struct.word_type, %struct.word_type* %1244, i32 0, i32 0
  %1246 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1245, i32 0, i64 0
  %1247 = getelementptr inbounds %struct.LIST, %struct.LIST* %1246, i32 0, i32 1
  store %union.rec* %1232, %union.rec** %1247, align 8
  %1248 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1249 = bitcast %union.rec* %1248 to %struct.word_type*
  %1250 = getelementptr inbounds %struct.word_type, %struct.word_type* %1249, i32 0, i32 0
  %1251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1250, i32 0, i64 0
  %1252 = getelementptr inbounds %struct.LIST, %struct.LIST* %1251, i32 0, i32 0
  store %union.rec* %1232, %union.rec** %1252, align 8
  store %union.rec* %1232, %union.rec** %res, align 8
  %1253 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1254 = zext i8 %1253 to i32
  store i32 %1254, i32* @zz_size, align 4
  %1255 = sext i32 %1254 to i64
  %1256 = icmp uge i64 %1255, 265
  br i1 %1256, label %1257, label %1260

; <label>:1257                                    ; preds = %1226
  %1258 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1259 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %1258)
  br label %1285

; <label>:1260                                    ; preds = %1226
  %1261 = load i32, i32* @zz_size, align 4
  %1262 = sext i32 %1261 to i64
  %1263 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1262
  %1264 = load %union.rec*, %union.rec** %1263, align 8
  %1265 = icmp eq %union.rec* %1264, null
  br i1 %1265, label %1266, label %1270

; <label>:1266                                    ; preds = %1260
  %1267 = load i32, i32* @zz_size, align 4
  %1268 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1269 = call %union.rec* @GetMemory(i32 %1267, %struct.FILE_POS* %1268)
  store %union.rec* %1269, %union.rec** @zz_hold, align 8
  br label %1284

; <label>:1270                                    ; preds = %1260
  %1271 = load i32, i32* @zz_size, align 4
  %1272 = sext i32 %1271 to i64
  %1273 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1272
  %1274 = load %union.rec*, %union.rec** %1273, align 8
  store %union.rec* %1274, %union.rec** @zz_hold, align 8
  store %union.rec* %1274, %union.rec** @zz_hold, align 8
  %1275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1276 = bitcast %union.rec* %1275 to %struct.word_type*
  %1277 = getelementptr inbounds %struct.word_type, %struct.word_type* %1276, i32 0, i32 0
  %1278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1277, i32 0, i64 0
  %1279 = getelementptr inbounds %struct.LIST, %struct.LIST* %1278, i32 0, i32 0
  %1280 = load %union.rec*, %union.rec** %1279, align 8
  %1281 = load i32, i32* @zz_size, align 4
  %1282 = sext i32 %1281 to i64
  %1283 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1282
  store %union.rec* %1280, %union.rec** %1283, align 8
  br label %1284

; <label>:1284                                    ; preds = %1270, %1266
  br label %1285

; <label>:1285                                    ; preds = %1284, %1257
  %1286 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1287 = bitcast %union.rec* %1286 to %struct.word_type*
  %1288 = getelementptr inbounds %struct.word_type, %struct.word_type* %1287, i32 0, i32 1
  %1289 = bitcast %union.FIRST_UNION* %1288 to %struct.anon*
  %1290 = getelementptr inbounds %struct.anon, %struct.anon* %1289, i32 0, i32 0
  store i8 0, i8* %1290, align 1
  %1291 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1292 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1293 = bitcast %union.rec* %1292 to %struct.word_type*
  %1294 = getelementptr inbounds %struct.word_type, %struct.word_type* %1293, i32 0, i32 0
  %1295 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1294, i32 0, i64 1
  %1296 = getelementptr inbounds %struct.LIST, %struct.LIST* %1295, i32 0, i32 1
  store %union.rec* %1291, %union.rec** %1296, align 8
  %1297 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1298 = bitcast %union.rec* %1297 to %struct.word_type*
  %1299 = getelementptr inbounds %struct.word_type, %struct.word_type* %1298, i32 0, i32 0
  %1300 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1299, i32 0, i64 1
  %1301 = getelementptr inbounds %struct.LIST, %struct.LIST* %1300, i32 0, i32 0
  store %union.rec* %1291, %union.rec** %1301, align 8
  %1302 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1303 = bitcast %union.rec* %1302 to %struct.word_type*
  %1304 = getelementptr inbounds %struct.word_type, %struct.word_type* %1303, i32 0, i32 0
  %1305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1304, i32 0, i64 0
  %1306 = getelementptr inbounds %struct.LIST, %struct.LIST* %1305, i32 0, i32 1
  store %union.rec* %1291, %union.rec** %1306, align 8
  %1307 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1308 = bitcast %union.rec* %1307 to %struct.word_type*
  %1309 = getelementptr inbounds %struct.word_type, %struct.word_type* %1308, i32 0, i32 0
  %1310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1309, i32 0, i64 0
  %1311 = getelementptr inbounds %struct.LIST, %struct.LIST* %1310, i32 0, i32 0
  store %union.rec* %1291, %union.rec** %1311, align 8
  store %union.rec* %1291, %union.rec** @xx_link, align 8
  %1312 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1312, %union.rec** @zz_res, align 8
  %1313 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %1313, %union.rec** @zz_hold, align 8
  %1314 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1315 = icmp eq %union.rec* %1314, null
  br i1 %1315, label %1316, label %1318

; <label>:1316                                    ; preds = %1285
  %1317 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1366

; <label>:1318                                    ; preds = %1285
  %1319 = load %union.rec*, %union.rec** @zz_res, align 8
  %1320 = icmp eq %union.rec* %1319, null
  br i1 %1320, label %1321, label %1323

; <label>:1321                                    ; preds = %1318
  %1322 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1364

; <label>:1323                                    ; preds = %1318
  %1324 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1325 = bitcast %union.rec* %1324 to %struct.word_type*
  %1326 = getelementptr inbounds %struct.word_type, %struct.word_type* %1325, i32 0, i32 0
  %1327 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1326, i32 0, i64 0
  %1328 = getelementptr inbounds %struct.LIST, %struct.LIST* %1327, i32 0, i32 0
  %1329 = load %union.rec*, %union.rec** %1328, align 8
  store %union.rec* %1329, %union.rec** @zz_tmp, align 8
  %1330 = load %union.rec*, %union.rec** @zz_res, align 8
  %1331 = bitcast %union.rec* %1330 to %struct.word_type*
  %1332 = getelementptr inbounds %struct.word_type, %struct.word_type* %1331, i32 0, i32 0
  %1333 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1332, i32 0, i64 0
  %1334 = getelementptr inbounds %struct.LIST, %struct.LIST* %1333, i32 0, i32 0
  %1335 = load %union.rec*, %union.rec** %1334, align 8
  %1336 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1337 = bitcast %union.rec* %1336 to %struct.word_type*
  %1338 = getelementptr inbounds %struct.word_type, %struct.word_type* %1337, i32 0, i32 0
  %1339 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1338, i32 0, i64 0
  %1340 = getelementptr inbounds %struct.LIST, %struct.LIST* %1339, i32 0, i32 0
  store %union.rec* %1335, %union.rec** %1340, align 8
  %1341 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1342 = load %union.rec*, %union.rec** @zz_res, align 8
  %1343 = bitcast %union.rec* %1342 to %struct.word_type*
  %1344 = getelementptr inbounds %struct.word_type, %struct.word_type* %1343, i32 0, i32 0
  %1345 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1344, i32 0, i64 0
  %1346 = getelementptr inbounds %struct.LIST, %struct.LIST* %1345, i32 0, i32 0
  %1347 = load %union.rec*, %union.rec** %1346, align 8
  %1348 = bitcast %union.rec* %1347 to %struct.word_type*
  %1349 = getelementptr inbounds %struct.word_type, %struct.word_type* %1348, i32 0, i32 0
  %1350 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1349, i32 0, i64 0
  %1351 = getelementptr inbounds %struct.LIST, %struct.LIST* %1350, i32 0, i32 1
  store %union.rec* %1341, %union.rec** %1351, align 8
  %1352 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1353 = load %union.rec*, %union.rec** @zz_res, align 8
  %1354 = bitcast %union.rec* %1353 to %struct.word_type*
  %1355 = getelementptr inbounds %struct.word_type, %struct.word_type* %1354, i32 0, i32 0
  %1356 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1355, i32 0, i64 0
  %1357 = getelementptr inbounds %struct.LIST, %struct.LIST* %1356, i32 0, i32 0
  store %union.rec* %1352, %union.rec** %1357, align 8
  %1358 = load %union.rec*, %union.rec** @zz_res, align 8
  %1359 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1360 = bitcast %union.rec* %1359 to %struct.word_type*
  %1361 = getelementptr inbounds %struct.word_type, %struct.word_type* %1360, i32 0, i32 0
  %1362 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1361, i32 0, i64 0
  %1363 = getelementptr inbounds %struct.LIST, %struct.LIST* %1362, i32 0, i32 1
  store %union.rec* %1358, %union.rec** %1363, align 8
  br label %1364

; <label>:1364                                    ; preds = %1323, %1321
  %1365 = phi %union.rec* [ %1322, %1321 ], [ %1358, %1323 ]
  br label %1366

; <label>:1366                                    ; preds = %1364, %1316
  %1367 = phi %union.rec* [ %1317, %1316 ], [ %1365, %1364 ]
  %1368 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1368, %union.rec** @zz_res, align 8
  %1369 = load %union.rec*, %union.rec** %merge, align 8
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
  %1424 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1425 = zext i8 %1424 to i32
  store i32 %1425, i32* @zz_size, align 4
  %1426 = sext i32 %1425 to i64
  %1427 = icmp uge i64 %1426, 265
  br i1 %1427, label %1428, label %1431

; <label>:1428                                    ; preds = %1422
  %1429 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1430 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %1429)
  br label %1456

; <label>:1431                                    ; preds = %1422
  %1432 = load i32, i32* @zz_size, align 4
  %1433 = sext i32 %1432 to i64
  %1434 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1433
  %1435 = load %union.rec*, %union.rec** %1434, align 8
  %1436 = icmp eq %union.rec* %1435, null
  br i1 %1436, label %1437, label %1441

; <label>:1437                                    ; preds = %1431
  %1438 = load i32, i32* @zz_size, align 4
  %1439 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1440 = call %union.rec* @GetMemory(i32 %1438, %struct.FILE_POS* %1439)
  store %union.rec* %1440, %union.rec** @zz_hold, align 8
  br label %1455

; <label>:1441                                    ; preds = %1431
  %1442 = load i32, i32* @zz_size, align 4
  %1443 = sext i32 %1442 to i64
  %1444 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1443
  %1445 = load %union.rec*, %union.rec** %1444, align 8
  store %union.rec* %1445, %union.rec** @zz_hold, align 8
  store %union.rec* %1445, %union.rec** @zz_hold, align 8
  %1446 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1447 = bitcast %union.rec* %1446 to %struct.word_type*
  %1448 = getelementptr inbounds %struct.word_type, %struct.word_type* %1447, i32 0, i32 0
  %1449 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1448, i32 0, i64 0
  %1450 = getelementptr inbounds %struct.LIST, %struct.LIST* %1449, i32 0, i32 0
  %1451 = load %union.rec*, %union.rec** %1450, align 8
  %1452 = load i32, i32* @zz_size, align 4
  %1453 = sext i32 %1452 to i64
  %1454 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1453
  store %union.rec* %1451, %union.rec** %1454, align 8
  br label %1455

; <label>:1455                                    ; preds = %1441, %1437
  br label %1456

; <label>:1456                                    ; preds = %1455, %1428
  %1457 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1458 = bitcast %union.rec* %1457 to %struct.word_type*
  %1459 = getelementptr inbounds %struct.word_type, %struct.word_type* %1458, i32 0, i32 1
  %1460 = bitcast %union.FIRST_UNION* %1459 to %struct.anon*
  %1461 = getelementptr inbounds %struct.anon, %struct.anon* %1460, i32 0, i32 0
  store i8 0, i8* %1461, align 1
  %1462 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1463 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1464 = bitcast %union.rec* %1463 to %struct.word_type*
  %1465 = getelementptr inbounds %struct.word_type, %struct.word_type* %1464, i32 0, i32 0
  %1466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1465, i32 0, i64 1
  %1467 = getelementptr inbounds %struct.LIST, %struct.LIST* %1466, i32 0, i32 1
  store %union.rec* %1462, %union.rec** %1467, align 8
  %1468 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1469 = bitcast %union.rec* %1468 to %struct.word_type*
  %1470 = getelementptr inbounds %struct.word_type, %struct.word_type* %1469, i32 0, i32 0
  %1471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1470, i32 0, i64 1
  %1472 = getelementptr inbounds %struct.LIST, %struct.LIST* %1471, i32 0, i32 0
  store %union.rec* %1462, %union.rec** %1472, align 8
  %1473 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1474 = bitcast %union.rec* %1473 to %struct.word_type*
  %1475 = getelementptr inbounds %struct.word_type, %struct.word_type* %1474, i32 0, i32 0
  %1476 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1475, i32 0, i64 0
  %1477 = getelementptr inbounds %struct.LIST, %struct.LIST* %1476, i32 0, i32 1
  store %union.rec* %1462, %union.rec** %1477, align 8
  %1478 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1479 = bitcast %union.rec* %1478 to %struct.word_type*
  %1480 = getelementptr inbounds %struct.word_type, %struct.word_type* %1479, i32 0, i32 0
  %1481 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1480, i32 0, i64 0
  %1482 = getelementptr inbounds %struct.LIST, %struct.LIST* %1481, i32 0, i32 0
  store %union.rec* %1462, %union.rec** %1482, align 8
  store %union.rec* %1462, %union.rec** @xx_link, align 8
  %1483 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1483, %union.rec** @zz_res, align 8
  %1484 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %1484, %union.rec** @zz_hold, align 8
  %1485 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1486 = icmp eq %union.rec* %1485, null
  br i1 %1486, label %1487, label %1489

; <label>:1487                                    ; preds = %1456
  %1488 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1537

; <label>:1489                                    ; preds = %1456
  %1490 = load %union.rec*, %union.rec** @zz_res, align 8
  %1491 = icmp eq %union.rec* %1490, null
  br i1 %1491, label %1492, label %1494

; <label>:1492                                    ; preds = %1489
  %1493 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1535

; <label>:1494                                    ; preds = %1489
  %1495 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1496 = bitcast %union.rec* %1495 to %struct.word_type*
  %1497 = getelementptr inbounds %struct.word_type, %struct.word_type* %1496, i32 0, i32 0
  %1498 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1497, i32 0, i64 0
  %1499 = getelementptr inbounds %struct.LIST, %struct.LIST* %1498, i32 0, i32 0
  %1500 = load %union.rec*, %union.rec** %1499, align 8
  store %union.rec* %1500, %union.rec** @zz_tmp, align 8
  %1501 = load %union.rec*, %union.rec** @zz_res, align 8
  %1502 = bitcast %union.rec* %1501 to %struct.word_type*
  %1503 = getelementptr inbounds %struct.word_type, %struct.word_type* %1502, i32 0, i32 0
  %1504 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1503, i32 0, i64 0
  %1505 = getelementptr inbounds %struct.LIST, %struct.LIST* %1504, i32 0, i32 0
  %1506 = load %union.rec*, %union.rec** %1505, align 8
  %1507 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1508 = bitcast %union.rec* %1507 to %struct.word_type*
  %1509 = getelementptr inbounds %struct.word_type, %struct.word_type* %1508, i32 0, i32 0
  %1510 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1509, i32 0, i64 0
  %1511 = getelementptr inbounds %struct.LIST, %struct.LIST* %1510, i32 0, i32 0
  store %union.rec* %1506, %union.rec** %1511, align 8
  %1512 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1513 = load %union.rec*, %union.rec** @zz_res, align 8
  %1514 = bitcast %union.rec* %1513 to %struct.word_type*
  %1515 = getelementptr inbounds %struct.word_type, %struct.word_type* %1514, i32 0, i32 0
  %1516 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1515, i32 0, i64 0
  %1517 = getelementptr inbounds %struct.LIST, %struct.LIST* %1516, i32 0, i32 0
  %1518 = load %union.rec*, %union.rec** %1517, align 8
  %1519 = bitcast %union.rec* %1518 to %struct.word_type*
  %1520 = getelementptr inbounds %struct.word_type, %struct.word_type* %1519, i32 0, i32 0
  %1521 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1520, i32 0, i64 0
  %1522 = getelementptr inbounds %struct.LIST, %struct.LIST* %1521, i32 0, i32 1
  store %union.rec* %1512, %union.rec** %1522, align 8
  %1523 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1524 = load %union.rec*, %union.rec** @zz_res, align 8
  %1525 = bitcast %union.rec* %1524 to %struct.word_type*
  %1526 = getelementptr inbounds %struct.word_type, %struct.word_type* %1525, i32 0, i32 0
  %1527 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1526, i32 0, i64 0
  %1528 = getelementptr inbounds %struct.LIST, %struct.LIST* %1527, i32 0, i32 0
  store %union.rec* %1523, %union.rec** %1528, align 8
  %1529 = load %union.rec*, %union.rec** @zz_res, align 8
  %1530 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1531 = bitcast %union.rec* %1530 to %struct.word_type*
  %1532 = getelementptr inbounds %struct.word_type, %struct.word_type* %1531, i32 0, i32 0
  %1533 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1532, i32 0, i64 0
  %1534 = getelementptr inbounds %struct.LIST, %struct.LIST* %1533, i32 0, i32 1
  store %union.rec* %1529, %union.rec** %1534, align 8
  br label %1535

; <label>:1535                                    ; preds = %1494, %1492
  %1536 = phi %union.rec* [ %1493, %1492 ], [ %1529, %1494 ]
  br label %1537

; <label>:1537                                    ; preds = %1535, %1487
  %1538 = phi %union.rec* [ %1488, %1487 ], [ %1536, %1535 ]
  %1539 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1539, %union.rec** @zz_res, align 8
  %1540 = load %union.rec*, %union.rec** %env, align 8
  store %union.rec* %1540, %union.rec** @zz_hold, align 8
  %1541 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1542 = icmp eq %union.rec* %1541, null
  br i1 %1542, label %1543, label %1545

; <label>:1543                                    ; preds = %1537
  %1544 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1593

; <label>:1545                                    ; preds = %1537
  %1546 = load %union.rec*, %union.rec** @zz_res, align 8
  %1547 = icmp eq %union.rec* %1546, null
  br i1 %1547, label %1548, label %1550

; <label>:1548                                    ; preds = %1545
  %1549 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1591

; <label>:1550                                    ; preds = %1545
  %1551 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1552 = bitcast %union.rec* %1551 to %struct.word_type*
  %1553 = getelementptr inbounds %struct.word_type, %struct.word_type* %1552, i32 0, i32 0
  %1554 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1553, i32 0, i64 1
  %1555 = getelementptr inbounds %struct.LIST, %struct.LIST* %1554, i32 0, i32 0
  %1556 = load %union.rec*, %union.rec** %1555, align 8
  store %union.rec* %1556, %union.rec** @zz_tmp, align 8
  %1557 = load %union.rec*, %union.rec** @zz_res, align 8
  %1558 = bitcast %union.rec* %1557 to %struct.word_type*
  %1559 = getelementptr inbounds %struct.word_type, %struct.word_type* %1558, i32 0, i32 0
  %1560 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1559, i32 0, i64 1
  %1561 = getelementptr inbounds %struct.LIST, %struct.LIST* %1560, i32 0, i32 0
  %1562 = load %union.rec*, %union.rec** %1561, align 8
  %1563 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1564 = bitcast %union.rec* %1563 to %struct.word_type*
  %1565 = getelementptr inbounds %struct.word_type, %struct.word_type* %1564, i32 0, i32 0
  %1566 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1565, i32 0, i64 1
  %1567 = getelementptr inbounds %struct.LIST, %struct.LIST* %1566, i32 0, i32 0
  store %union.rec* %1562, %union.rec** %1567, align 8
  %1568 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1569 = load %union.rec*, %union.rec** @zz_res, align 8
  %1570 = bitcast %union.rec* %1569 to %struct.word_type*
  %1571 = getelementptr inbounds %struct.word_type, %struct.word_type* %1570, i32 0, i32 0
  %1572 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1571, i32 0, i64 1
  %1573 = getelementptr inbounds %struct.LIST, %struct.LIST* %1572, i32 0, i32 0
  %1574 = load %union.rec*, %union.rec** %1573, align 8
  %1575 = bitcast %union.rec* %1574 to %struct.word_type*
  %1576 = getelementptr inbounds %struct.word_type, %struct.word_type* %1575, i32 0, i32 0
  %1577 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1576, i32 0, i64 1
  %1578 = getelementptr inbounds %struct.LIST, %struct.LIST* %1577, i32 0, i32 1
  store %union.rec* %1568, %union.rec** %1578, align 8
  %1579 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1580 = load %union.rec*, %union.rec** @zz_res, align 8
  %1581 = bitcast %union.rec* %1580 to %struct.word_type*
  %1582 = getelementptr inbounds %struct.word_type, %struct.word_type* %1581, i32 0, i32 0
  %1583 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1582, i32 0, i64 1
  %1584 = getelementptr inbounds %struct.LIST, %struct.LIST* %1583, i32 0, i32 0
  store %union.rec* %1579, %union.rec** %1584, align 8
  %1585 = load %union.rec*, %union.rec** @zz_res, align 8
  %1586 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1587 = bitcast %union.rec* %1586 to %struct.word_type*
  %1588 = getelementptr inbounds %struct.word_type, %struct.word_type* %1587, i32 0, i32 0
  %1589 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1588, i32 0, i64 1
  %1590 = getelementptr inbounds %struct.LIST, %struct.LIST* %1589, i32 0, i32 1
  store %union.rec* %1585, %union.rec** %1590, align 8
  br label %1591

; <label>:1591                                    ; preds = %1550, %1548
  %1592 = phi %union.rec* [ %1549, %1548 ], [ %1585, %1550 ]
  br label %1593

; <label>:1593                                    ; preds = %1591, %1543
  %1594 = phi %union.rec* [ %1544, %1543 ], [ %1592, %1591 ]
  br label %1595

; <label>:1595                                    ; preds = %1593, %234
  %1596 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %1596
}

; Function Attrs: nounwind uwtable
define %union.rec* @BuildEnclose(%union.rec* %hd) #0 {
  %1 = alloca %union.rec*, align 8
  %sym = alloca %union.rec*, align 8
  %parsym = alloca %union.rec*, align 8
  %x = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %par = alloca %union.rec*, align 8
  %val = alloca %union.rec*, align 8
  %env = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  store %union.rec* %hd, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = bitcast %union.rec* %2 to %struct.closure_type*
  %4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3, i32 0, i32 5
  %5 = load %union.rec*, %union.rec** %4, align 8
  %6 = bitcast %union.rec* %5 to %struct.word_type*
  %7 = getelementptr inbounds %struct.word_type, %struct.word_type* %6, i32 0, i32 0
  %8 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7, i32 0, i64 0
  %9 = getelementptr inbounds %struct.LIST, %struct.LIST* %8, i32 0, i32 1
  %10 = load %union.rec*, %union.rec** %9, align 8
  store %union.rec* %10, %union.rec** %link, align 8
  br label %11

; <label>:11                                      ; preds = %53, %0
  %12 = load %union.rec*, %union.rec** %link, align 8
  %13 = load %union.rec*, %union.rec** %1, align 8
  %14 = bitcast %union.rec* %13 to %struct.closure_type*
  %15 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %14, i32 0, i32 5
  %16 = load %union.rec*, %union.rec** %15, align 8
  %17 = icmp ne %union.rec* %12, %16
  br i1 %17, label %18, label %60

; <label>:18                                      ; preds = %11
  %19 = load %union.rec*, %union.rec** %link, align 8
  %20 = bitcast %union.rec* %19 to %struct.word_type*
  %21 = getelementptr inbounds %struct.word_type, %struct.word_type* %20, i32 0, i32 0
  %22 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %21, i32 0, i64 1
  %23 = getelementptr inbounds %struct.LIST, %struct.LIST* %22, i32 0, i32 0
  %24 = load %union.rec*, %union.rec** %23, align 8
  store %union.rec* %24, %union.rec** %sym, align 8
  br label %25

; <label>:25                                      ; preds = %35, %18
  %26 = load %union.rec*, %union.rec** %sym, align 8
  %27 = bitcast %union.rec* %26 to %struct.word_type*
  %28 = getelementptr inbounds %struct.word_type, %struct.word_type* %27, i32 0, i32 1
  %29 = bitcast %union.FIRST_UNION* %28 to %struct.anon*
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

; <label>:34                                      ; preds = %25
  br label %35

; <label>:35                                      ; preds = %34
  %36 = load %union.rec*, %union.rec** %sym, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 0
  %39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %38, i32 0, i64 1
  %40 = getelementptr inbounds %struct.LIST, %struct.LIST* %39, i32 0, i32 0
  %41 = load %union.rec*, %union.rec** %40, align 8
  store %union.rec* %41, %union.rec** %sym, align 8
  br label %25

; <label>:42                                      ; preds = %25
  %43 = load %union.rec*, %union.rec** %sym, align 8
  %44 = bitcast %union.rec* %43 to %struct.symbol_type*
  %45 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %44, i32 0, i32 16
  %46 = load i8, i8* %45, align 2
  %47 = lshr i8 %46, 4
  %48 = and i8 %47, 1
  %49 = zext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

; <label>:51                                      ; preds = %42
  br label %60

; <label>:52                                      ; preds = %42
  br label %53

; <label>:53                                      ; preds = %52
  %54 = load %union.rec*, %union.rec** %link, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 0
  %57 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %56, i32 0, i64 0
  %58 = getelementptr inbounds %struct.LIST, %struct.LIST* %57, i32 0, i32 1
  %59 = load %union.rec*, %union.rec** %58, align 8
  store %union.rec* %59, %union.rec** %link, align 8
  br label %11

; <label>:60                                      ; preds = %51, %11
  %61 = load %union.rec*, %union.rec** %link, align 8
  %62 = load %union.rec*, %union.rec** %1, align 8
  %63 = bitcast %union.rec* %62 to %struct.closure_type*
  %64 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %63, i32 0, i32 5
  %65 = load %union.rec*, %union.rec** %64, align 8
  %66 = icmp ne %union.rec* %61, %65
  br i1 %66, label %70, label %67

; <label>:67                                      ; preds = %60
  %68 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %69 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0))
  br label %70

; <label>:70                                      ; preds = %67, %60
  store %union.rec* null, %union.rec** %parsym, align 8
  %71 = load %union.rec*, %union.rec** %sym, align 8
  %72 = bitcast %union.rec* %71 to %struct.word_type*
  %73 = getelementptr inbounds %struct.word_type, %struct.word_type* %72, i32 0, i32 0
  %74 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %73, i32 0, i64 0
  %75 = getelementptr inbounds %struct.LIST, %struct.LIST* %74, i32 0, i32 1
  %76 = load %union.rec*, %union.rec** %75, align 8
  store %union.rec* %76, %union.rec** %link, align 8
  br label %77

; <label>:77                                      ; preds = %141, %70
  %78 = load %union.rec*, %union.rec** %link, align 8
  %79 = load %union.rec*, %union.rec** %sym, align 8
  %80 = icmp ne %union.rec* %78, %79
  br i1 %80, label %81, label %148

; <label>:81                                      ; preds = %77
  %82 = load %union.rec*, %union.rec** %link, align 8
  %83 = bitcast %union.rec* %82 to %struct.word_type*
  %84 = getelementptr inbounds %struct.word_type, %struct.word_type* %83, i32 0, i32 0
  %85 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %84, i32 0, i64 1
  %86 = getelementptr inbounds %struct.LIST, %struct.LIST* %85, i32 0, i32 0
  %87 = load %union.rec*, %union.rec** %86, align 8
  store %union.rec* %87, %union.rec** %y, align 8
  br label %88

; <label>:88                                      ; preds = %98, %81
  %89 = load %union.rec*, %union.rec** %y, align 8
  %90 = bitcast %union.rec* %89 to %struct.word_type*
  %91 = getelementptr inbounds %struct.word_type, %struct.word_type* %90, i32 0, i32 1
  %92 = bitcast %union.FIRST_UNION* %91 to %struct.anon*
  %93 = getelementptr inbounds %struct.anon, %struct.anon* %92, i32 0, i32 0
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %105

; <label>:97                                      ; preds = %88
  br label %98

; <label>:98                                      ; preds = %97
  %99 = load %union.rec*, %union.rec** %y, align 8
  %100 = bitcast %union.rec* %99 to %struct.word_type*
  %101 = getelementptr inbounds %struct.word_type, %struct.word_type* %100, i32 0, i32 0
  %102 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %101, i32 0, i64 1
  %103 = getelementptr inbounds %struct.LIST, %struct.LIST* %102, i32 0, i32 0
  %104 = load %union.rec*, %union.rec** %103, align 8
  store %union.rec* %104, %union.rec** %y, align 8
  br label %88

; <label>:105                                     ; preds = %88
  %106 = load %union.rec*, %union.rec** %y, align 8
  %107 = bitcast %union.rec* %106 to %struct.word_type*
  %108 = getelementptr inbounds %struct.word_type, %struct.word_type* %107, i32 0, i32 1
  %109 = bitcast %union.FIRST_UNION* %108 to %struct.anon*
  %110 = getelementptr inbounds %struct.anon, %struct.anon* %109, i32 0, i32 0
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  switch i32 %112, label %139 [
    i32 144, label %113
    i32 145, label %113
    i32 146, label %119
  ]

; <label>:113                                     ; preds = %105, %105
  %114 = load %union.rec*, %union.rec** %y, align 8
  %115 = bitcast %union.rec* %114 to %struct.word_type*
  %116 = getelementptr inbounds %struct.word_type, %struct.word_type* %115, i32 0, i32 1
  %117 = bitcast %union.FIRST_UNION* %116 to %struct.FILE_POS*
  %118 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 44, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i32 0, i32 0), i32 1, %struct.FILE_POS* %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0))
  br label %140

; <label>:119                                     ; preds = %105
  %120 = load %union.rec*, %union.rec** %sym, align 8
  %121 = bitcast %union.rec* %120 to %struct.word_type*
  %122 = getelementptr inbounds %struct.word_type, %struct.word_type* %121, i32 0, i32 2
  %123 = bitcast %union.SECOND_UNION* %122 to %struct.anon.5*
  %124 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %123, i32 0, i32 1
  %125 = bitcast [3 x i8]* %124 to i24*
  %126 = load i24, i24* %125, align 1
  %127 = lshr i24 %126, 8
  %128 = and i24 %127, 1
  %129 = zext i24 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

; <label>:131                                     ; preds = %119
  %132 = load %union.rec*, %union.rec** %y, align 8
  %133 = bitcast %union.rec* %132 to %struct.word_type*
  %134 = getelementptr inbounds %struct.word_type, %struct.word_type* %133, i32 0, i32 1
  %135 = bitcast %union.FIRST_UNION* %134 to %struct.FILE_POS*
  %136 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 44, i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0), i32 1, %struct.FILE_POS* %135, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0))
  br label %137

; <label>:137                                     ; preds = %131, %119
  %138 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %138, %union.rec** %parsym, align 8
  br label %140

; <label>:139                                     ; preds = %105
  br label %140

; <label>:140                                     ; preds = %139, %137, %113
  br label %141

; <label>:141                                     ; preds = %140
  %142 = load %union.rec*, %union.rec** %link, align 8
  %143 = bitcast %union.rec* %142 to %struct.word_type*
  %144 = getelementptr inbounds %struct.word_type, %struct.word_type* %143, i32 0, i32 0
  %145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %144, i32 0, i64 0
  %146 = getelementptr inbounds %struct.LIST, %struct.LIST* %145, i32 0, i32 1
  %147 = load %union.rec*, %union.rec** %146, align 8
  store %union.rec* %147, %union.rec** %link, align 8
  br label %77

; <label>:148                                     ; preds = %77
  %149 = load %union.rec*, %union.rec** %parsym, align 8
  %150 = icmp eq %union.rec* %149, null
  br i1 %150, label %151, label %157

; <label>:151                                     ; preds = %148
  %152 = load %union.rec*, %union.rec** %sym, align 8
  %153 = bitcast %union.rec* %152 to %struct.word_type*
  %154 = getelementptr inbounds %struct.word_type, %struct.word_type* %153, i32 0, i32 1
  %155 = bitcast %union.FIRST_UNION* %154 to %struct.FILE_POS*
  %156 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 44, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %155, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0))
  br label %157

; <label>:157                                     ; preds = %151, %148
  %158 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 2), align 1
  %159 = zext i8 %158 to i32
  store i32 %159, i32* @zz_size, align 4
  %160 = sext i32 %159 to i64
  %161 = icmp uge i64 %160, 265
  br i1 %161, label %162, label %165

; <label>:162                                     ; preds = %157
  %163 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %164 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %163)
  br label %190

; <label>:165                                     ; preds = %157
  %166 = load i32, i32* @zz_size, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %167
  %169 = load %union.rec*, %union.rec** %168, align 8
  %170 = icmp eq %union.rec* %169, null
  br i1 %170, label %171, label %175

; <label>:171                                     ; preds = %165
  %172 = load i32, i32* @zz_size, align 4
  %173 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %174 = call %union.rec* @GetMemory(i32 %172, %struct.FILE_POS* %173)
  store %union.rec* %174, %union.rec** @zz_hold, align 8
  br label %189

; <label>:175                                     ; preds = %165
  %176 = load i32, i32* @zz_size, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %177
  %179 = load %union.rec*, %union.rec** %178, align 8
  store %union.rec* %179, %union.rec** @zz_hold, align 8
  store %union.rec* %179, %union.rec** @zz_hold, align 8
  %180 = load %union.rec*, %union.rec** @zz_hold, align 8
  %181 = bitcast %union.rec* %180 to %struct.word_type*
  %182 = getelementptr inbounds %struct.word_type, %struct.word_type* %181, i32 0, i32 0
  %183 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %182, i32 0, i64 0
  %184 = getelementptr inbounds %struct.LIST, %struct.LIST* %183, i32 0, i32 0
  %185 = load %union.rec*, %union.rec** %184, align 8
  %186 = load i32, i32* @zz_size, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %187
  store %union.rec* %185, %union.rec** %188, align 8
  br label %189

; <label>:189                                     ; preds = %175, %171
  br label %190

; <label>:190                                     ; preds = %189, %162
  %191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %192 = bitcast %union.rec* %191 to %struct.word_type*
  %193 = getelementptr inbounds %struct.word_type, %struct.word_type* %192, i32 0, i32 1
  %194 = bitcast %union.FIRST_UNION* %193 to %struct.anon*
  %195 = getelementptr inbounds %struct.anon, %struct.anon* %194, i32 0, i32 0
  store i8 2, i8* %195, align 1
  %196 = load %union.rec*, %union.rec** @zz_hold, align 8
  %197 = load %union.rec*, %union.rec** @zz_hold, align 8
  %198 = bitcast %union.rec* %197 to %struct.word_type*
  %199 = getelementptr inbounds %struct.word_type, %struct.word_type* %198, i32 0, i32 0
  %200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %199, i32 0, i64 1
  %201 = getelementptr inbounds %struct.LIST, %struct.LIST* %200, i32 0, i32 1
  store %union.rec* %196, %union.rec** %201, align 8
  %202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %203 = bitcast %union.rec* %202 to %struct.word_type*
  %204 = getelementptr inbounds %struct.word_type, %struct.word_type* %203, i32 0, i32 0
  %205 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %204, i32 0, i64 1
  %206 = getelementptr inbounds %struct.LIST, %struct.LIST* %205, i32 0, i32 0
  store %union.rec* %196, %union.rec** %206, align 8
  %207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %208 = bitcast %union.rec* %207 to %struct.word_type*
  %209 = getelementptr inbounds %struct.word_type, %struct.word_type* %208, i32 0, i32 0
  %210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %209, i32 0, i64 0
  %211 = getelementptr inbounds %struct.LIST, %struct.LIST* %210, i32 0, i32 1
  store %union.rec* %196, %union.rec** %211, align 8
  %212 = load %union.rec*, %union.rec** @zz_hold, align 8
  %213 = bitcast %union.rec* %212 to %struct.word_type*
  %214 = getelementptr inbounds %struct.word_type, %struct.word_type* %213, i32 0, i32 0
  %215 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %214, i32 0, i64 0
  %216 = getelementptr inbounds %struct.LIST, %struct.LIST* %215, i32 0, i32 0
  store %union.rec* %196, %union.rec** %216, align 8
  store %union.rec* %196, %union.rec** %x, align 8
  %217 = load %union.rec*, %union.rec** %1, align 8
  %218 = bitcast %union.rec* %217 to %struct.word_type*
  %219 = getelementptr inbounds %struct.word_type, %struct.word_type* %218, i32 0, i32 1
  %220 = bitcast %union.FIRST_UNION* %219 to %struct.FILE_POS*
  %221 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %220, i32 0, i32 2
  %222 = load i16, i16* %221, align 2
  %223 = load %union.rec*, %union.rec** %x, align 8
  %224 = bitcast %union.rec* %223 to %struct.word_type*
  %225 = getelementptr inbounds %struct.word_type, %struct.word_type* %224, i32 0, i32 1
  %226 = bitcast %union.FIRST_UNION* %225 to %struct.FILE_POS*
  %227 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %226, i32 0, i32 2
  store i16 %222, i16* %227, align 2
  %228 = load %union.rec*, %union.rec** %1, align 8
  %229 = bitcast %union.rec* %228 to %struct.word_type*
  %230 = getelementptr inbounds %struct.word_type, %struct.word_type* %229, i32 0, i32 1
  %231 = bitcast %union.FIRST_UNION* %230 to %struct.FILE_POS*
  %232 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = and i32 %233, 1048575
  %235 = load %union.rec*, %union.rec** %x, align 8
  %236 = bitcast %union.rec* %235 to %struct.word_type*
  %237 = getelementptr inbounds %struct.word_type, %struct.word_type* %236, i32 0, i32 1
  %238 = bitcast %union.FIRST_UNION* %237 to %struct.FILE_POS*
  %239 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = and i32 %234, 1048575
  %242 = and i32 %240, -1048576
  %243 = or i32 %242, %241
  store i32 %243, i32* %239, align 4
  %244 = load %union.rec*, %union.rec** %1, align 8
  %245 = bitcast %union.rec* %244 to %struct.word_type*
  %246 = getelementptr inbounds %struct.word_type, %struct.word_type* %245, i32 0, i32 1
  %247 = bitcast %union.FIRST_UNION* %246 to %struct.FILE_POS*
  %248 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = lshr i32 %249, 20
  %251 = load %union.rec*, %union.rec** %x, align 8
  %252 = bitcast %union.rec* %251 to %struct.word_type*
  %253 = getelementptr inbounds %struct.word_type, %struct.word_type* %252, i32 0, i32 1
  %254 = bitcast %union.FIRST_UNION* %253 to %struct.FILE_POS*
  %255 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = and i32 %250, 4095
  %258 = shl i32 %257, 20
  %259 = and i32 %256, 1048575
  %260 = or i32 %259, %258
  store i32 %260, i32* %255, align 4
  %261 = load %union.rec*, %union.rec** %sym, align 8
  %262 = load %union.rec*, %union.rec** %x, align 8
  %263 = bitcast %union.rec* %262 to %struct.closure_type*
  %264 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %263, i32 0, i32 5
  store %union.rec* %261, %union.rec** %264, align 8
  %265 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %266 = zext i8 %265 to i32
  store i32 %266, i32* @zz_size, align 4
  %267 = sext i32 %266 to i64
  %268 = icmp uge i64 %267, 265
  br i1 %268, label %269, label %272

; <label>:269                                     ; preds = %190
  %270 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %271 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %270)
  br label %297

; <label>:272                                     ; preds = %190
  %273 = load i32, i32* @zz_size, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %274
  %276 = load %union.rec*, %union.rec** %275, align 8
  %277 = icmp eq %union.rec* %276, null
  br i1 %277, label %278, label %282

; <label>:278                                     ; preds = %272
  %279 = load i32, i32* @zz_size, align 4
  %280 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %281 = call %union.rec* @GetMemory(i32 %279, %struct.FILE_POS* %280)
  store %union.rec* %281, %union.rec** @zz_hold, align 8
  br label %296

; <label>:282                                     ; preds = %272
  %283 = load i32, i32* @zz_size, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %284
  %286 = load %union.rec*, %union.rec** %285, align 8
  store %union.rec* %286, %union.rec** @zz_hold, align 8
  store %union.rec* %286, %union.rec** @zz_hold, align 8
  %287 = load %union.rec*, %union.rec** @zz_hold, align 8
  %288 = bitcast %union.rec* %287 to %struct.word_type*
  %289 = getelementptr inbounds %struct.word_type, %struct.word_type* %288, i32 0, i32 0
  %290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %289, i32 0, i64 0
  %291 = getelementptr inbounds %struct.LIST, %struct.LIST* %290, i32 0, i32 0
  %292 = load %union.rec*, %union.rec** %291, align 8
  %293 = load i32, i32* @zz_size, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %294
  store %union.rec* %292, %union.rec** %295, align 8
  br label %296

; <label>:296                                     ; preds = %282, %278
  br label %297

; <label>:297                                     ; preds = %296, %269
  %298 = load %union.rec*, %union.rec** @zz_hold, align 8
  %299 = bitcast %union.rec* %298 to %struct.word_type*
  %300 = getelementptr inbounds %struct.word_type, %struct.word_type* %299, i32 0, i32 1
  %301 = bitcast %union.FIRST_UNION* %300 to %struct.anon*
  %302 = getelementptr inbounds %struct.anon, %struct.anon* %301, i32 0, i32 0
  store i8 10, i8* %302, align 1
  %303 = load %union.rec*, %union.rec** @zz_hold, align 8
  %304 = load %union.rec*, %union.rec** @zz_hold, align 8
  %305 = bitcast %union.rec* %304 to %struct.word_type*
  %306 = getelementptr inbounds %struct.word_type, %struct.word_type* %305, i32 0, i32 0
  %307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %306, i32 0, i64 1
  %308 = getelementptr inbounds %struct.LIST, %struct.LIST* %307, i32 0, i32 1
  store %union.rec* %303, %union.rec** %308, align 8
  %309 = load %union.rec*, %union.rec** @zz_hold, align 8
  %310 = bitcast %union.rec* %309 to %struct.word_type*
  %311 = getelementptr inbounds %struct.word_type, %struct.word_type* %310, i32 0, i32 0
  %312 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %311, i32 0, i64 1
  %313 = getelementptr inbounds %struct.LIST, %struct.LIST* %312, i32 0, i32 0
  store %union.rec* %303, %union.rec** %313, align 8
  %314 = load %union.rec*, %union.rec** @zz_hold, align 8
  %315 = bitcast %union.rec* %314 to %struct.word_type*
  %316 = getelementptr inbounds %struct.word_type, %struct.word_type* %315, i32 0, i32 0
  %317 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %316, i32 0, i64 0
  %318 = getelementptr inbounds %struct.LIST, %struct.LIST* %317, i32 0, i32 1
  store %union.rec* %303, %union.rec** %318, align 8
  %319 = load %union.rec*, %union.rec** @zz_hold, align 8
  %320 = bitcast %union.rec* %319 to %struct.word_type*
  %321 = getelementptr inbounds %struct.word_type, %struct.word_type* %320, i32 0, i32 0
  %322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %321, i32 0, i64 0
  %323 = getelementptr inbounds %struct.LIST, %struct.LIST* %322, i32 0, i32 0
  store %union.rec* %303, %union.rec** %323, align 8
  store %union.rec* %303, %union.rec** %par, align 8
  %324 = load %union.rec*, %union.rec** %1, align 8
  %325 = bitcast %union.rec* %324 to %struct.word_type*
  %326 = getelementptr inbounds %struct.word_type, %struct.word_type* %325, i32 0, i32 1
  %327 = bitcast %union.FIRST_UNION* %326 to %struct.FILE_POS*
  %328 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %327, i32 0, i32 2
  %329 = load i16, i16* %328, align 2
  %330 = load %union.rec*, %union.rec** %par, align 8
  %331 = bitcast %union.rec* %330 to %struct.word_type*
  %332 = getelementptr inbounds %struct.word_type, %struct.word_type* %331, i32 0, i32 1
  %333 = bitcast %union.FIRST_UNION* %332 to %struct.FILE_POS*
  %334 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %333, i32 0, i32 2
  store i16 %329, i16* %334, align 2
  %335 = load %union.rec*, %union.rec** %1, align 8
  %336 = bitcast %union.rec* %335 to %struct.word_type*
  %337 = getelementptr inbounds %struct.word_type, %struct.word_type* %336, i32 0, i32 1
  %338 = bitcast %union.FIRST_UNION* %337 to %struct.FILE_POS*
  %339 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 4
  %341 = and i32 %340, 1048575
  %342 = load %union.rec*, %union.rec** %par, align 8
  %343 = bitcast %union.rec* %342 to %struct.word_type*
  %344 = getelementptr inbounds %struct.word_type, %struct.word_type* %343, i32 0, i32 1
  %345 = bitcast %union.FIRST_UNION* %344 to %struct.FILE_POS*
  %346 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 4
  %348 = and i32 %341, 1048575
  %349 = and i32 %347, -1048576
  %350 = or i32 %349, %348
  store i32 %350, i32* %346, align 4
  %351 = load %union.rec*, %union.rec** %1, align 8
  %352 = bitcast %union.rec* %351 to %struct.word_type*
  %353 = getelementptr inbounds %struct.word_type, %struct.word_type* %352, i32 0, i32 1
  %354 = bitcast %union.FIRST_UNION* %353 to %struct.FILE_POS*
  %355 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = lshr i32 %356, 20
  %358 = load %union.rec*, %union.rec** %par, align 8
  %359 = bitcast %union.rec* %358 to %struct.word_type*
  %360 = getelementptr inbounds %struct.word_type, %struct.word_type* %359, i32 0, i32 1
  %361 = bitcast %union.FIRST_UNION* %360 to %struct.FILE_POS*
  %362 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 4
  %364 = and i32 %357, 4095
  %365 = shl i32 %364, 20
  %366 = and i32 %363, 1048575
  %367 = or i32 %366, %365
  store i32 %367, i32* %362, align 4
  %368 = load %union.rec*, %union.rec** %parsym, align 8
  %369 = load %union.rec*, %union.rec** %par, align 8
  %370 = bitcast %union.rec* %369 to %struct.closure_type*
  %371 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %370, i32 0, i32 5
  store %union.rec* %368, %union.rec** %371, align 8
  %372 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %373 = zext i8 %372 to i32
  store i32 %373, i32* @zz_size, align 4
  %374 = sext i32 %373 to i64
  %375 = icmp uge i64 %374, 265
  br i1 %375, label %376, label %379

; <label>:376                                     ; preds = %297
  %377 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %378 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %377)
  br label %404

; <label>:379                                     ; preds = %297
  %380 = load i32, i32* @zz_size, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %381
  %383 = load %union.rec*, %union.rec** %382, align 8
  %384 = icmp eq %union.rec* %383, null
  br i1 %384, label %385, label %389

; <label>:385                                     ; preds = %379
  %386 = load i32, i32* @zz_size, align 4
  %387 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %388 = call %union.rec* @GetMemory(i32 %386, %struct.FILE_POS* %387)
  store %union.rec* %388, %union.rec** @zz_hold, align 8
  br label %403

; <label>:389                                     ; preds = %379
  %390 = load i32, i32* @zz_size, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %391
  %393 = load %union.rec*, %union.rec** %392, align 8
  store %union.rec* %393, %union.rec** @zz_hold, align 8
  store %union.rec* %393, %union.rec** @zz_hold, align 8
  %394 = load %union.rec*, %union.rec** @zz_hold, align 8
  %395 = bitcast %union.rec* %394 to %struct.word_type*
  %396 = getelementptr inbounds %struct.word_type, %struct.word_type* %395, i32 0, i32 0
  %397 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %396, i32 0, i64 0
  %398 = getelementptr inbounds %struct.LIST, %struct.LIST* %397, i32 0, i32 0
  %399 = load %union.rec*, %union.rec** %398, align 8
  %400 = load i32, i32* @zz_size, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %401
  store %union.rec* %399, %union.rec** %402, align 8
  br label %403

; <label>:403                                     ; preds = %389, %385
  br label %404

; <label>:404                                     ; preds = %403, %376
  %405 = load %union.rec*, %union.rec** @zz_hold, align 8
  %406 = bitcast %union.rec* %405 to %struct.word_type*
  %407 = getelementptr inbounds %struct.word_type, %struct.word_type* %406, i32 0, i32 1
  %408 = bitcast %union.FIRST_UNION* %407 to %struct.anon*
  %409 = getelementptr inbounds %struct.anon, %struct.anon* %408, i32 0, i32 0
  store i8 0, i8* %409, align 1
  %410 = load %union.rec*, %union.rec** @zz_hold, align 8
  %411 = load %union.rec*, %union.rec** @zz_hold, align 8
  %412 = bitcast %union.rec* %411 to %struct.word_type*
  %413 = getelementptr inbounds %struct.word_type, %struct.word_type* %412, i32 0, i32 0
  %414 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %413, i32 0, i64 1
  %415 = getelementptr inbounds %struct.LIST, %struct.LIST* %414, i32 0, i32 1
  store %union.rec* %410, %union.rec** %415, align 8
  %416 = load %union.rec*, %union.rec** @zz_hold, align 8
  %417 = bitcast %union.rec* %416 to %struct.word_type*
  %418 = getelementptr inbounds %struct.word_type, %struct.word_type* %417, i32 0, i32 0
  %419 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %418, i32 0, i64 1
  %420 = getelementptr inbounds %struct.LIST, %struct.LIST* %419, i32 0, i32 0
  store %union.rec* %410, %union.rec** %420, align 8
  %421 = load %union.rec*, %union.rec** @zz_hold, align 8
  %422 = bitcast %union.rec* %421 to %struct.word_type*
  %423 = getelementptr inbounds %struct.word_type, %struct.word_type* %422, i32 0, i32 0
  %424 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %423, i32 0, i64 0
  %425 = getelementptr inbounds %struct.LIST, %struct.LIST* %424, i32 0, i32 1
  store %union.rec* %410, %union.rec** %425, align 8
  %426 = load %union.rec*, %union.rec** @zz_hold, align 8
  %427 = bitcast %union.rec* %426 to %struct.word_type*
  %428 = getelementptr inbounds %struct.word_type, %struct.word_type* %427, i32 0, i32 0
  %429 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %428, i32 0, i64 0
  %430 = getelementptr inbounds %struct.LIST, %struct.LIST* %429, i32 0, i32 0
  store %union.rec* %410, %union.rec** %430, align 8
  store %union.rec* %410, %union.rec** @xx_link, align 8
  %431 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %431, %union.rec** @zz_res, align 8
  %432 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %432, %union.rec** @zz_hold, align 8
  %433 = load %union.rec*, %union.rec** @zz_hold, align 8
  %434 = icmp eq %union.rec* %433, null
  br i1 %434, label %435, label %437

; <label>:435                                     ; preds = %404
  %436 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %485

; <label>:437                                     ; preds = %404
  %438 = load %union.rec*, %union.rec** @zz_res, align 8
  %439 = icmp eq %union.rec* %438, null
  br i1 %439, label %440, label %442

; <label>:440                                     ; preds = %437
  %441 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %483

; <label>:442                                     ; preds = %437
  %443 = load %union.rec*, %union.rec** @zz_hold, align 8
  %444 = bitcast %union.rec* %443 to %struct.word_type*
  %445 = getelementptr inbounds %struct.word_type, %struct.word_type* %444, i32 0, i32 0
  %446 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %445, i32 0, i64 0
  %447 = getelementptr inbounds %struct.LIST, %struct.LIST* %446, i32 0, i32 0
  %448 = load %union.rec*, %union.rec** %447, align 8
  store %union.rec* %448, %union.rec** @zz_tmp, align 8
  %449 = load %union.rec*, %union.rec** @zz_res, align 8
  %450 = bitcast %union.rec* %449 to %struct.word_type*
  %451 = getelementptr inbounds %struct.word_type, %struct.word_type* %450, i32 0, i32 0
  %452 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %451, i32 0, i64 0
  %453 = getelementptr inbounds %struct.LIST, %struct.LIST* %452, i32 0, i32 0
  %454 = load %union.rec*, %union.rec** %453, align 8
  %455 = load %union.rec*, %union.rec** @zz_hold, align 8
  %456 = bitcast %union.rec* %455 to %struct.word_type*
  %457 = getelementptr inbounds %struct.word_type, %struct.word_type* %456, i32 0, i32 0
  %458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %457, i32 0, i64 0
  %459 = getelementptr inbounds %struct.LIST, %struct.LIST* %458, i32 0, i32 0
  store %union.rec* %454, %union.rec** %459, align 8
  %460 = load %union.rec*, %union.rec** @zz_hold, align 8
  %461 = load %union.rec*, %union.rec** @zz_res, align 8
  %462 = bitcast %union.rec* %461 to %struct.word_type*
  %463 = getelementptr inbounds %struct.word_type, %struct.word_type* %462, i32 0, i32 0
  %464 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %463, i32 0, i64 0
  %465 = getelementptr inbounds %struct.LIST, %struct.LIST* %464, i32 0, i32 0
  %466 = load %union.rec*, %union.rec** %465, align 8
  %467 = bitcast %union.rec* %466 to %struct.word_type*
  %468 = getelementptr inbounds %struct.word_type, %struct.word_type* %467, i32 0, i32 0
  %469 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %468, i32 0, i64 0
  %470 = getelementptr inbounds %struct.LIST, %struct.LIST* %469, i32 0, i32 1
  store %union.rec* %460, %union.rec** %470, align 8
  %471 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %472 = load %union.rec*, %union.rec** @zz_res, align 8
  %473 = bitcast %union.rec* %472 to %struct.word_type*
  %474 = getelementptr inbounds %struct.word_type, %struct.word_type* %473, i32 0, i32 0
  %475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %474, i32 0, i64 0
  %476 = getelementptr inbounds %struct.LIST, %struct.LIST* %475, i32 0, i32 0
  store %union.rec* %471, %union.rec** %476, align 8
  %477 = load %union.rec*, %union.rec** @zz_res, align 8
  %478 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %479 = bitcast %union.rec* %478 to %struct.word_type*
  %480 = getelementptr inbounds %struct.word_type, %struct.word_type* %479, i32 0, i32 0
  %481 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %480, i32 0, i64 0
  %482 = getelementptr inbounds %struct.LIST, %struct.LIST* %481, i32 0, i32 1
  store %union.rec* %477, %union.rec** %482, align 8
  br label %483

; <label>:483                                     ; preds = %442, %440
  %484 = phi %union.rec* [ %441, %440 ], [ %477, %442 ]
  br label %485

; <label>:485                                     ; preds = %483, %435
  %486 = phi %union.rec* [ %436, %435 ], [ %484, %483 ]
  %487 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %487, %union.rec** @zz_res, align 8
  %488 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %488, %union.rec** @zz_hold, align 8
  %489 = load %union.rec*, %union.rec** @zz_hold, align 8
  %490 = icmp eq %union.rec* %489, null
  br i1 %490, label %491, label %493

; <label>:491                                     ; preds = %485
  %492 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %541

; <label>:493                                     ; preds = %485
  %494 = load %union.rec*, %union.rec** @zz_res, align 8
  %495 = icmp eq %union.rec* %494, null
  br i1 %495, label %496, label %498

; <label>:496                                     ; preds = %493
  %497 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %539

; <label>:498                                     ; preds = %493
  %499 = load %union.rec*, %union.rec** @zz_hold, align 8
  %500 = bitcast %union.rec* %499 to %struct.word_type*
  %501 = getelementptr inbounds %struct.word_type, %struct.word_type* %500, i32 0, i32 0
  %502 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %501, i32 0, i64 1
  %503 = getelementptr inbounds %struct.LIST, %struct.LIST* %502, i32 0, i32 0
  %504 = load %union.rec*, %union.rec** %503, align 8
  store %union.rec* %504, %union.rec** @zz_tmp, align 8
  %505 = load %union.rec*, %union.rec** @zz_res, align 8
  %506 = bitcast %union.rec* %505 to %struct.word_type*
  %507 = getelementptr inbounds %struct.word_type, %struct.word_type* %506, i32 0, i32 0
  %508 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %507, i32 0, i64 1
  %509 = getelementptr inbounds %struct.LIST, %struct.LIST* %508, i32 0, i32 0
  %510 = load %union.rec*, %union.rec** %509, align 8
  %511 = load %union.rec*, %union.rec** @zz_hold, align 8
  %512 = bitcast %union.rec* %511 to %struct.word_type*
  %513 = getelementptr inbounds %struct.word_type, %struct.word_type* %512, i32 0, i32 0
  %514 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %513, i32 0, i64 1
  %515 = getelementptr inbounds %struct.LIST, %struct.LIST* %514, i32 0, i32 0
  store %union.rec* %510, %union.rec** %515, align 8
  %516 = load %union.rec*, %union.rec** @zz_hold, align 8
  %517 = load %union.rec*, %union.rec** @zz_res, align 8
  %518 = bitcast %union.rec* %517 to %struct.word_type*
  %519 = getelementptr inbounds %struct.word_type, %struct.word_type* %518, i32 0, i32 0
  %520 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %519, i32 0, i64 1
  %521 = getelementptr inbounds %struct.LIST, %struct.LIST* %520, i32 0, i32 0
  %522 = load %union.rec*, %union.rec** %521, align 8
  %523 = bitcast %union.rec* %522 to %struct.word_type*
  %524 = getelementptr inbounds %struct.word_type, %struct.word_type* %523, i32 0, i32 0
  %525 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %524, i32 0, i64 1
  %526 = getelementptr inbounds %struct.LIST, %struct.LIST* %525, i32 0, i32 1
  store %union.rec* %516, %union.rec** %526, align 8
  %527 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %528 = load %union.rec*, %union.rec** @zz_res, align 8
  %529 = bitcast %union.rec* %528 to %struct.word_type*
  %530 = getelementptr inbounds %struct.word_type, %struct.word_type* %529, i32 0, i32 0
  %531 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %530, i32 0, i64 1
  %532 = getelementptr inbounds %struct.LIST, %struct.LIST* %531, i32 0, i32 0
  store %union.rec* %527, %union.rec** %532, align 8
  %533 = load %union.rec*, %union.rec** @zz_res, align 8
  %534 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %535 = bitcast %union.rec* %534 to %struct.word_type*
  %536 = getelementptr inbounds %struct.word_type, %struct.word_type* %535, i32 0, i32 0
  %537 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %536, i32 0, i64 1
  %538 = getelementptr inbounds %struct.LIST, %struct.LIST* %537, i32 0, i32 1
  store %union.rec* %533, %union.rec** %538, align 8
  br label %539

; <label>:539                                     ; preds = %498, %496
  %540 = phi %union.rec* [ %497, %496 ], [ %533, %498 ]
  br label %541

; <label>:541                                     ; preds = %539, %491
  %542 = phi %union.rec* [ %492, %491 ], [ %540, %539 ]
  %543 = load %union.rec*, %union.rec** %1, align 8
  %544 = bitcast %union.rec* %543 to %struct.word_type*
  %545 = getelementptr inbounds %struct.word_type, %struct.word_type* %544, i32 0, i32 1
  %546 = bitcast %union.FIRST_UNION* %545 to %struct.FILE_POS*
  %547 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), %struct.FILE_POS* %546)
  store %union.rec* %547, %union.rec** %val, align 8
  %548 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %549 = zext i8 %548 to i32
  store i32 %549, i32* @zz_size, align 4
  %550 = sext i32 %549 to i64
  %551 = icmp uge i64 %550, 265
  br i1 %551, label %552, label %555

; <label>:552                                     ; preds = %541
  %553 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %554 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %553)
  br label %580

; <label>:555                                     ; preds = %541
  %556 = load i32, i32* @zz_size, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %557
  %559 = load %union.rec*, %union.rec** %558, align 8
  %560 = icmp eq %union.rec* %559, null
  br i1 %560, label %561, label %565

; <label>:561                                     ; preds = %555
  %562 = load i32, i32* @zz_size, align 4
  %563 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %564 = call %union.rec* @GetMemory(i32 %562, %struct.FILE_POS* %563)
  store %union.rec* %564, %union.rec** @zz_hold, align 8
  br label %579

; <label>:565                                     ; preds = %555
  %566 = load i32, i32* @zz_size, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %567
  %569 = load %union.rec*, %union.rec** %568, align 8
  store %union.rec* %569, %union.rec** @zz_hold, align 8
  store %union.rec* %569, %union.rec** @zz_hold, align 8
  %570 = load %union.rec*, %union.rec** @zz_hold, align 8
  %571 = bitcast %union.rec* %570 to %struct.word_type*
  %572 = getelementptr inbounds %struct.word_type, %struct.word_type* %571, i32 0, i32 0
  %573 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %572, i32 0, i64 0
  %574 = getelementptr inbounds %struct.LIST, %struct.LIST* %573, i32 0, i32 0
  %575 = load %union.rec*, %union.rec** %574, align 8
  %576 = load i32, i32* @zz_size, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %577
  store %union.rec* %575, %union.rec** %578, align 8
  br label %579

; <label>:579                                     ; preds = %565, %561
  br label %580

; <label>:580                                     ; preds = %579, %552
  %581 = load %union.rec*, %union.rec** @zz_hold, align 8
  %582 = bitcast %union.rec* %581 to %struct.word_type*
  %583 = getelementptr inbounds %struct.word_type, %struct.word_type* %582, i32 0, i32 1
  %584 = bitcast %union.FIRST_UNION* %583 to %struct.anon*
  %585 = getelementptr inbounds %struct.anon, %struct.anon* %584, i32 0, i32 0
  store i8 0, i8* %585, align 1
  %586 = load %union.rec*, %union.rec** @zz_hold, align 8
  %587 = load %union.rec*, %union.rec** @zz_hold, align 8
  %588 = bitcast %union.rec* %587 to %struct.word_type*
  %589 = getelementptr inbounds %struct.word_type, %struct.word_type* %588, i32 0, i32 0
  %590 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %589, i32 0, i64 1
  %591 = getelementptr inbounds %struct.LIST, %struct.LIST* %590, i32 0, i32 1
  store %union.rec* %586, %union.rec** %591, align 8
  %592 = load %union.rec*, %union.rec** @zz_hold, align 8
  %593 = bitcast %union.rec* %592 to %struct.word_type*
  %594 = getelementptr inbounds %struct.word_type, %struct.word_type* %593, i32 0, i32 0
  %595 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %594, i32 0, i64 1
  %596 = getelementptr inbounds %struct.LIST, %struct.LIST* %595, i32 0, i32 0
  store %union.rec* %586, %union.rec** %596, align 8
  %597 = load %union.rec*, %union.rec** @zz_hold, align 8
  %598 = bitcast %union.rec* %597 to %struct.word_type*
  %599 = getelementptr inbounds %struct.word_type, %struct.word_type* %598, i32 0, i32 0
  %600 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %599, i32 0, i64 0
  %601 = getelementptr inbounds %struct.LIST, %struct.LIST* %600, i32 0, i32 1
  store %union.rec* %586, %union.rec** %601, align 8
  %602 = load %union.rec*, %union.rec** @zz_hold, align 8
  %603 = bitcast %union.rec* %602 to %struct.word_type*
  %604 = getelementptr inbounds %struct.word_type, %struct.word_type* %603, i32 0, i32 0
  %605 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %604, i32 0, i64 0
  %606 = getelementptr inbounds %struct.LIST, %struct.LIST* %605, i32 0, i32 0
  store %union.rec* %586, %union.rec** %606, align 8
  store %union.rec* %586, %union.rec** @xx_link, align 8
  %607 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %607, %union.rec** @zz_res, align 8
  %608 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %608, %union.rec** @zz_hold, align 8
  %609 = load %union.rec*, %union.rec** @zz_hold, align 8
  %610 = icmp eq %union.rec* %609, null
  br i1 %610, label %611, label %613

; <label>:611                                     ; preds = %580
  %612 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %661

; <label>:613                                     ; preds = %580
  %614 = load %union.rec*, %union.rec** @zz_res, align 8
  %615 = icmp eq %union.rec* %614, null
  br i1 %615, label %616, label %618

; <label>:616                                     ; preds = %613
  %617 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %659

; <label>:618                                     ; preds = %613
  %619 = load %union.rec*, %union.rec** @zz_hold, align 8
  %620 = bitcast %union.rec* %619 to %struct.word_type*
  %621 = getelementptr inbounds %struct.word_type, %struct.word_type* %620, i32 0, i32 0
  %622 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %621, i32 0, i64 0
  %623 = getelementptr inbounds %struct.LIST, %struct.LIST* %622, i32 0, i32 0
  %624 = load %union.rec*, %union.rec** %623, align 8
  store %union.rec* %624, %union.rec** @zz_tmp, align 8
  %625 = load %union.rec*, %union.rec** @zz_res, align 8
  %626 = bitcast %union.rec* %625 to %struct.word_type*
  %627 = getelementptr inbounds %struct.word_type, %struct.word_type* %626, i32 0, i32 0
  %628 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %627, i32 0, i64 0
  %629 = getelementptr inbounds %struct.LIST, %struct.LIST* %628, i32 0, i32 0
  %630 = load %union.rec*, %union.rec** %629, align 8
  %631 = load %union.rec*, %union.rec** @zz_hold, align 8
  %632 = bitcast %union.rec* %631 to %struct.word_type*
  %633 = getelementptr inbounds %struct.word_type, %struct.word_type* %632, i32 0, i32 0
  %634 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %633, i32 0, i64 0
  %635 = getelementptr inbounds %struct.LIST, %struct.LIST* %634, i32 0, i32 0
  store %union.rec* %630, %union.rec** %635, align 8
  %636 = load %union.rec*, %union.rec** @zz_hold, align 8
  %637 = load %union.rec*, %union.rec** @zz_res, align 8
  %638 = bitcast %union.rec* %637 to %struct.word_type*
  %639 = getelementptr inbounds %struct.word_type, %struct.word_type* %638, i32 0, i32 0
  %640 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %639, i32 0, i64 0
  %641 = getelementptr inbounds %struct.LIST, %struct.LIST* %640, i32 0, i32 0
  %642 = load %union.rec*, %union.rec** %641, align 8
  %643 = bitcast %union.rec* %642 to %struct.word_type*
  %644 = getelementptr inbounds %struct.word_type, %struct.word_type* %643, i32 0, i32 0
  %645 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %644, i32 0, i64 0
  %646 = getelementptr inbounds %struct.LIST, %struct.LIST* %645, i32 0, i32 1
  store %union.rec* %636, %union.rec** %646, align 8
  %647 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %648 = load %union.rec*, %union.rec** @zz_res, align 8
  %649 = bitcast %union.rec* %648 to %struct.word_type*
  %650 = getelementptr inbounds %struct.word_type, %struct.word_type* %649, i32 0, i32 0
  %651 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %650, i32 0, i64 0
  %652 = getelementptr inbounds %struct.LIST, %struct.LIST* %651, i32 0, i32 0
  store %union.rec* %647, %union.rec** %652, align 8
  %653 = load %union.rec*, %union.rec** @zz_res, align 8
  %654 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %655 = bitcast %union.rec* %654 to %struct.word_type*
  %656 = getelementptr inbounds %struct.word_type, %struct.word_type* %655, i32 0, i32 0
  %657 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %656, i32 0, i64 0
  %658 = getelementptr inbounds %struct.LIST, %struct.LIST* %657, i32 0, i32 1
  store %union.rec* %653, %union.rec** %658, align 8
  br label %659

; <label>:659                                     ; preds = %618, %616
  %660 = phi %union.rec* [ %617, %616 ], [ %653, %618 ]
  br label %661

; <label>:661                                     ; preds = %659, %611
  %662 = phi %union.rec* [ %612, %611 ], [ %660, %659 ]
  %663 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %663, %union.rec** @zz_res, align 8
  %664 = load %union.rec*, %union.rec** %val, align 8
  store %union.rec* %664, %union.rec** @zz_hold, align 8
  %665 = load %union.rec*, %union.rec** @zz_hold, align 8
  %666 = icmp eq %union.rec* %665, null
  br i1 %666, label %667, label %669

; <label>:667                                     ; preds = %661
  %668 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %717

; <label>:669                                     ; preds = %661
  %670 = load %union.rec*, %union.rec** @zz_res, align 8
  %671 = icmp eq %union.rec* %670, null
  br i1 %671, label %672, label %674

; <label>:672                                     ; preds = %669
  %673 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %715

; <label>:674                                     ; preds = %669
  %675 = load %union.rec*, %union.rec** @zz_hold, align 8
  %676 = bitcast %union.rec* %675 to %struct.word_type*
  %677 = getelementptr inbounds %struct.word_type, %struct.word_type* %676, i32 0, i32 0
  %678 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %677, i32 0, i64 1
  %679 = getelementptr inbounds %struct.LIST, %struct.LIST* %678, i32 0, i32 0
  %680 = load %union.rec*, %union.rec** %679, align 8
  store %union.rec* %680, %union.rec** @zz_tmp, align 8
  %681 = load %union.rec*, %union.rec** @zz_res, align 8
  %682 = bitcast %union.rec* %681 to %struct.word_type*
  %683 = getelementptr inbounds %struct.word_type, %struct.word_type* %682, i32 0, i32 0
  %684 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %683, i32 0, i64 1
  %685 = getelementptr inbounds %struct.LIST, %struct.LIST* %684, i32 0, i32 0
  %686 = load %union.rec*, %union.rec** %685, align 8
  %687 = load %union.rec*, %union.rec** @zz_hold, align 8
  %688 = bitcast %union.rec* %687 to %struct.word_type*
  %689 = getelementptr inbounds %struct.word_type, %struct.word_type* %688, i32 0, i32 0
  %690 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %689, i32 0, i64 1
  %691 = getelementptr inbounds %struct.LIST, %struct.LIST* %690, i32 0, i32 0
  store %union.rec* %686, %union.rec** %691, align 8
  %692 = load %union.rec*, %union.rec** @zz_hold, align 8
  %693 = load %union.rec*, %union.rec** @zz_res, align 8
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
  %703 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %704 = load %union.rec*, %union.rec** @zz_res, align 8
  %705 = bitcast %union.rec* %704 to %struct.word_type*
  %706 = getelementptr inbounds %struct.word_type, %struct.word_type* %705, i32 0, i32 0
  %707 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %706, i32 0, i64 1
  %708 = getelementptr inbounds %struct.LIST, %struct.LIST* %707, i32 0, i32 0
  store %union.rec* %703, %union.rec** %708, align 8
  %709 = load %union.rec*, %union.rec** @zz_res, align 8
  %710 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %711 = bitcast %union.rec* %710 to %struct.word_type*
  %712 = getelementptr inbounds %struct.word_type, %struct.word_type* %711, i32 0, i32 0
  %713 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %712, i32 0, i64 1
  %714 = getelementptr inbounds %struct.LIST, %struct.LIST* %713, i32 0, i32 1
  store %union.rec* %709, %union.rec** %714, align 8
  br label %715

; <label>:715                                     ; preds = %674, %672
  %716 = phi %union.rec* [ %673, %672 ], [ %709, %674 ]
  br label %717

; <label>:717                                     ; preds = %715, %667
  %718 = phi %union.rec* [ %668, %667 ], [ %716, %715 ]
  %719 = load %union.rec*, %union.rec** %1, align 8
  %720 = bitcast %union.rec* %719 to %struct.word_type*
  %721 = getelementptr inbounds %struct.word_type, %struct.word_type* %720, i32 0, i32 0
  %722 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %721, i32 0, i64 0
  %723 = getelementptr inbounds %struct.LIST, %struct.LIST* %722, i32 0, i32 1
  %724 = load %union.rec*, %union.rec** %723, align 8
  %725 = bitcast %union.rec* %724 to %struct.word_type*
  %726 = getelementptr inbounds %struct.word_type, %struct.word_type* %725, i32 0, i32 0
  %727 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %726, i32 0, i64 1
  %728 = getelementptr inbounds %struct.LIST, %struct.LIST* %727, i32 0, i32 0
  %729 = load %union.rec*, %union.rec** %728, align 8
  store %union.rec* %729, %union.rec** %y, align 8
  br label %730

; <label>:730                                     ; preds = %740, %717
  %731 = load %union.rec*, %union.rec** %y, align 8
  %732 = bitcast %union.rec* %731 to %struct.word_type*
  %733 = getelementptr inbounds %struct.word_type, %struct.word_type* %732, i32 0, i32 1
  %734 = bitcast %union.FIRST_UNION* %733 to %struct.anon*
  %735 = getelementptr inbounds %struct.anon, %struct.anon* %734, i32 0, i32 0
  %736 = load i8, i8* %735, align 1
  %737 = zext i8 %736 to i32
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %739, label %747

; <label>:739                                     ; preds = %730
  br label %740

; <label>:740                                     ; preds = %739
  %741 = load %union.rec*, %union.rec** %y, align 8
  %742 = bitcast %union.rec* %741 to %struct.word_type*
  %743 = getelementptr inbounds %struct.word_type, %struct.word_type* %742, i32 0, i32 0
  %744 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %743, i32 0, i64 1
  %745 = getelementptr inbounds %struct.LIST, %struct.LIST* %744, i32 0, i32 0
  %746 = load %union.rec*, %union.rec** %745, align 8
  store %union.rec* %746, %union.rec** %y, align 8
  br label %730

; <label>:747                                     ; preds = %730
  %748 = load %union.rec*, %union.rec** %y, align 8
  %749 = bitcast %union.rec* %748 to %struct.word_type*
  %750 = getelementptr inbounds %struct.word_type, %struct.word_type* %749, i32 0, i32 1
  %751 = bitcast %union.FIRST_UNION* %750 to %struct.anon*
  %752 = getelementptr inbounds %struct.anon, %struct.anon* %751, i32 0, i32 0
  %753 = load i8, i8* %752, align 1
  %754 = zext i8 %753 to i32
  %755 = icmp eq i32 %754, 2
  br i1 %755, label %759, label %756

; <label>:756                                     ; preds = %747
  %757 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %758 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %757, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0))
  br label %759

; <label>:759                                     ; preds = %756, %747
  %760 = load %union.rec*, %union.rec** %y, align 8
  %761 = load %union.rec*, %union.rec** %1, align 8
  %762 = bitcast %union.rec* %761 to %struct.word_type*
  %763 = getelementptr inbounds %struct.word_type, %struct.word_type* %762, i32 0, i32 1
  %764 = bitcast %union.FIRST_UNION* %763 to %struct.FILE_POS*
  %765 = call %union.rec* @CopyObject(%union.rec* %760, %struct.FILE_POS* %764)
  store %union.rec* %765, %union.rec** %y, align 8
  %766 = load %union.rec*, %union.rec** %y, align 8
  %767 = call %union.rec* @SetEnv(%union.rec* %766, %union.rec* null)
  store %union.rec* %767, %union.rec** %env, align 8
  %768 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 81), align 1
  %769 = zext i8 %768 to i32
  store i32 %769, i32* @zz_size, align 4
  %770 = sext i32 %769 to i64
  %771 = icmp uge i64 %770, 265
  br i1 %771, label %772, label %775

; <label>:772                                     ; preds = %759
  %773 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %774 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %773)
  br label %800

; <label>:775                                     ; preds = %759
  %776 = load i32, i32* @zz_size, align 4
  %777 = sext i32 %776 to i64
  %778 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %777
  %779 = load %union.rec*, %union.rec** %778, align 8
  %780 = icmp eq %union.rec* %779, null
  br i1 %780, label %781, label %785

; <label>:781                                     ; preds = %775
  %782 = load i32, i32* @zz_size, align 4
  %783 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %784 = call %union.rec* @GetMemory(i32 %782, %struct.FILE_POS* %783)
  store %union.rec* %784, %union.rec** @zz_hold, align 8
  br label %799

; <label>:785                                     ; preds = %775
  %786 = load i32, i32* @zz_size, align 4
  %787 = sext i32 %786 to i64
  %788 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %787
  %789 = load %union.rec*, %union.rec** %788, align 8
  store %union.rec* %789, %union.rec** @zz_hold, align 8
  store %union.rec* %789, %union.rec** @zz_hold, align 8
  %790 = load %union.rec*, %union.rec** @zz_hold, align 8
  %791 = bitcast %union.rec* %790 to %struct.word_type*
  %792 = getelementptr inbounds %struct.word_type, %struct.word_type* %791, i32 0, i32 0
  %793 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %792, i32 0, i64 0
  %794 = getelementptr inbounds %struct.LIST, %struct.LIST* %793, i32 0, i32 0
  %795 = load %union.rec*, %union.rec** %794, align 8
  %796 = load i32, i32* @zz_size, align 4
  %797 = sext i32 %796 to i64
  %798 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %797
  store %union.rec* %795, %union.rec** %798, align 8
  br label %799

; <label>:799                                     ; preds = %785, %781
  br label %800

; <label>:800                                     ; preds = %799, %772
  %801 = load %union.rec*, %union.rec** @zz_hold, align 8
  %802 = bitcast %union.rec* %801 to %struct.word_type*
  %803 = getelementptr inbounds %struct.word_type, %struct.word_type* %802, i32 0, i32 1
  %804 = bitcast %union.FIRST_UNION* %803 to %struct.anon*
  %805 = getelementptr inbounds %struct.anon, %struct.anon* %804, i32 0, i32 0
  store i8 81, i8* %805, align 1
  %806 = load %union.rec*, %union.rec** @zz_hold, align 8
  %807 = load %union.rec*, %union.rec** @zz_hold, align 8
  %808 = bitcast %union.rec* %807 to %struct.word_type*
  %809 = getelementptr inbounds %struct.word_type, %struct.word_type* %808, i32 0, i32 0
  %810 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %809, i32 0, i64 1
  %811 = getelementptr inbounds %struct.LIST, %struct.LIST* %810, i32 0, i32 1
  store %union.rec* %806, %union.rec** %811, align 8
  %812 = load %union.rec*, %union.rec** @zz_hold, align 8
  %813 = bitcast %union.rec* %812 to %struct.word_type*
  %814 = getelementptr inbounds %struct.word_type, %struct.word_type* %813, i32 0, i32 0
  %815 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %814, i32 0, i64 1
  %816 = getelementptr inbounds %struct.LIST, %struct.LIST* %815, i32 0, i32 0
  store %union.rec* %806, %union.rec** %816, align 8
  %817 = load %union.rec*, %union.rec** @zz_hold, align 8
  %818 = bitcast %union.rec* %817 to %struct.word_type*
  %819 = getelementptr inbounds %struct.word_type, %struct.word_type* %818, i32 0, i32 0
  %820 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %819, i32 0, i64 0
  %821 = getelementptr inbounds %struct.LIST, %struct.LIST* %820, i32 0, i32 1
  store %union.rec* %806, %union.rec** %821, align 8
  %822 = load %union.rec*, %union.rec** @zz_hold, align 8
  %823 = bitcast %union.rec* %822 to %struct.word_type*
  %824 = getelementptr inbounds %struct.word_type, %struct.word_type* %823, i32 0, i32 0
  %825 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %824, i32 0, i64 0
  %826 = getelementptr inbounds %struct.LIST, %struct.LIST* %825, i32 0, i32 0
  store %union.rec* %806, %union.rec** %826, align 8
  store %union.rec* %806, %union.rec** %res, align 8
  %827 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %828 = zext i8 %827 to i32
  store i32 %828, i32* @zz_size, align 4
  %829 = sext i32 %828 to i64
  %830 = icmp uge i64 %829, 265
  br i1 %830, label %831, label %834

; <label>:831                                     ; preds = %800
  %832 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %833 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %832)
  br label %859

; <label>:834                                     ; preds = %800
  %835 = load i32, i32* @zz_size, align 4
  %836 = sext i32 %835 to i64
  %837 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %836
  %838 = load %union.rec*, %union.rec** %837, align 8
  %839 = icmp eq %union.rec* %838, null
  br i1 %839, label %840, label %844

; <label>:840                                     ; preds = %834
  %841 = load i32, i32* @zz_size, align 4
  %842 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %843 = call %union.rec* @GetMemory(i32 %841, %struct.FILE_POS* %842)
  store %union.rec* %843, %union.rec** @zz_hold, align 8
  br label %858

; <label>:844                                     ; preds = %834
  %845 = load i32, i32* @zz_size, align 4
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %846
  %848 = load %union.rec*, %union.rec** %847, align 8
  store %union.rec* %848, %union.rec** @zz_hold, align 8
  store %union.rec* %848, %union.rec** @zz_hold, align 8
  %849 = load %union.rec*, %union.rec** @zz_hold, align 8
  %850 = bitcast %union.rec* %849 to %struct.word_type*
  %851 = getelementptr inbounds %struct.word_type, %struct.word_type* %850, i32 0, i32 0
  %852 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %851, i32 0, i64 0
  %853 = getelementptr inbounds %struct.LIST, %struct.LIST* %852, i32 0, i32 0
  %854 = load %union.rec*, %union.rec** %853, align 8
  %855 = load i32, i32* @zz_size, align 4
  %856 = sext i32 %855 to i64
  %857 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %856
  store %union.rec* %854, %union.rec** %857, align 8
  br label %858

; <label>:858                                     ; preds = %844, %840
  br label %859

; <label>:859                                     ; preds = %858, %831
  %860 = load %union.rec*, %union.rec** @zz_hold, align 8
  %861 = bitcast %union.rec* %860 to %struct.word_type*
  %862 = getelementptr inbounds %struct.word_type, %struct.word_type* %861, i32 0, i32 1
  %863 = bitcast %union.FIRST_UNION* %862 to %struct.anon*
  %864 = getelementptr inbounds %struct.anon, %struct.anon* %863, i32 0, i32 0
  store i8 0, i8* %864, align 1
  %865 = load %union.rec*, %union.rec** @zz_hold, align 8
  %866 = load %union.rec*, %union.rec** @zz_hold, align 8
  %867 = bitcast %union.rec* %866 to %struct.word_type*
  %868 = getelementptr inbounds %struct.word_type, %struct.word_type* %867, i32 0, i32 0
  %869 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %868, i32 0, i64 1
  %870 = getelementptr inbounds %struct.LIST, %struct.LIST* %869, i32 0, i32 1
  store %union.rec* %865, %union.rec** %870, align 8
  %871 = load %union.rec*, %union.rec** @zz_hold, align 8
  %872 = bitcast %union.rec* %871 to %struct.word_type*
  %873 = getelementptr inbounds %struct.word_type, %struct.word_type* %872, i32 0, i32 0
  %874 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %873, i32 0, i64 1
  %875 = getelementptr inbounds %struct.LIST, %struct.LIST* %874, i32 0, i32 0
  store %union.rec* %865, %union.rec** %875, align 8
  %876 = load %union.rec*, %union.rec** @zz_hold, align 8
  %877 = bitcast %union.rec* %876 to %struct.word_type*
  %878 = getelementptr inbounds %struct.word_type, %struct.word_type* %877, i32 0, i32 0
  %879 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %878, i32 0, i64 0
  %880 = getelementptr inbounds %struct.LIST, %struct.LIST* %879, i32 0, i32 1
  store %union.rec* %865, %union.rec** %880, align 8
  %881 = load %union.rec*, %union.rec** @zz_hold, align 8
  %882 = bitcast %union.rec* %881 to %struct.word_type*
  %883 = getelementptr inbounds %struct.word_type, %struct.word_type* %882, i32 0, i32 0
  %884 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %883, i32 0, i64 0
  %885 = getelementptr inbounds %struct.LIST, %struct.LIST* %884, i32 0, i32 0
  store %union.rec* %865, %union.rec** %885, align 8
  store %union.rec* %865, %union.rec** @xx_link, align 8
  %886 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %886, %union.rec** @zz_res, align 8
  %887 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %887, %union.rec** @zz_hold, align 8
  %888 = load %union.rec*, %union.rec** @zz_hold, align 8
  %889 = icmp eq %union.rec* %888, null
  br i1 %889, label %890, label %892

; <label>:890                                     ; preds = %859
  %891 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %940

; <label>:892                                     ; preds = %859
  %893 = load %union.rec*, %union.rec** @zz_res, align 8
  %894 = icmp eq %union.rec* %893, null
  br i1 %894, label %895, label %897

; <label>:895                                     ; preds = %892
  %896 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %938

; <label>:897                                     ; preds = %892
  %898 = load %union.rec*, %union.rec** @zz_hold, align 8
  %899 = bitcast %union.rec* %898 to %struct.word_type*
  %900 = getelementptr inbounds %struct.word_type, %struct.word_type* %899, i32 0, i32 0
  %901 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %900, i32 0, i64 0
  %902 = getelementptr inbounds %struct.LIST, %struct.LIST* %901, i32 0, i32 0
  %903 = load %union.rec*, %union.rec** %902, align 8
  store %union.rec* %903, %union.rec** @zz_tmp, align 8
  %904 = load %union.rec*, %union.rec** @zz_res, align 8
  %905 = bitcast %union.rec* %904 to %struct.word_type*
  %906 = getelementptr inbounds %struct.word_type, %struct.word_type* %905, i32 0, i32 0
  %907 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %906, i32 0, i64 0
  %908 = getelementptr inbounds %struct.LIST, %struct.LIST* %907, i32 0, i32 0
  %909 = load %union.rec*, %union.rec** %908, align 8
  %910 = load %union.rec*, %union.rec** @zz_hold, align 8
  %911 = bitcast %union.rec* %910 to %struct.word_type*
  %912 = getelementptr inbounds %struct.word_type, %struct.word_type* %911, i32 0, i32 0
  %913 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %912, i32 0, i64 0
  %914 = getelementptr inbounds %struct.LIST, %struct.LIST* %913, i32 0, i32 0
  store %union.rec* %909, %union.rec** %914, align 8
  %915 = load %union.rec*, %union.rec** @zz_hold, align 8
  %916 = load %union.rec*, %union.rec** @zz_res, align 8
  %917 = bitcast %union.rec* %916 to %struct.word_type*
  %918 = getelementptr inbounds %struct.word_type, %struct.word_type* %917, i32 0, i32 0
  %919 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %918, i32 0, i64 0
  %920 = getelementptr inbounds %struct.LIST, %struct.LIST* %919, i32 0, i32 0
  %921 = load %union.rec*, %union.rec** %920, align 8
  %922 = bitcast %union.rec* %921 to %struct.word_type*
  %923 = getelementptr inbounds %struct.word_type, %struct.word_type* %922, i32 0, i32 0
  %924 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %923, i32 0, i64 0
  %925 = getelementptr inbounds %struct.LIST, %struct.LIST* %924, i32 0, i32 1
  store %union.rec* %915, %union.rec** %925, align 8
  %926 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %927 = load %union.rec*, %union.rec** @zz_res, align 8
  %928 = bitcast %union.rec* %927 to %struct.word_type*
  %929 = getelementptr inbounds %struct.word_type, %struct.word_type* %928, i32 0, i32 0
  %930 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %929, i32 0, i64 0
  %931 = getelementptr inbounds %struct.LIST, %struct.LIST* %930, i32 0, i32 0
  store %union.rec* %926, %union.rec** %931, align 8
  %932 = load %union.rec*, %union.rec** @zz_res, align 8
  %933 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %934 = bitcast %union.rec* %933 to %struct.word_type*
  %935 = getelementptr inbounds %struct.word_type, %struct.word_type* %934, i32 0, i32 0
  %936 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %935, i32 0, i64 0
  %937 = getelementptr inbounds %struct.LIST, %struct.LIST* %936, i32 0, i32 1
  store %union.rec* %932, %union.rec** %937, align 8
  br label %938

; <label>:938                                     ; preds = %897, %895
  %939 = phi %union.rec* [ %896, %895 ], [ %932, %897 ]
  br label %940

; <label>:940                                     ; preds = %938, %890
  %941 = phi %union.rec* [ %891, %890 ], [ %939, %938 ]
  %942 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %942, %union.rec** @zz_res, align 8
  %943 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %943, %union.rec** @zz_hold, align 8
  %944 = load %union.rec*, %union.rec** @zz_hold, align 8
  %945 = icmp eq %union.rec* %944, null
  br i1 %945, label %946, label %948

; <label>:946                                     ; preds = %940
  %947 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %996

; <label>:948                                     ; preds = %940
  %949 = load %union.rec*, %union.rec** @zz_res, align 8
  %950 = icmp eq %union.rec* %949, null
  br i1 %950, label %951, label %953

; <label>:951                                     ; preds = %948
  %952 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %994

; <label>:953                                     ; preds = %948
  %954 = load %union.rec*, %union.rec** @zz_hold, align 8
  %955 = bitcast %union.rec* %954 to %struct.word_type*
  %956 = getelementptr inbounds %struct.word_type, %struct.word_type* %955, i32 0, i32 0
  %957 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %956, i32 0, i64 1
  %958 = getelementptr inbounds %struct.LIST, %struct.LIST* %957, i32 0, i32 0
  %959 = load %union.rec*, %union.rec** %958, align 8
  store %union.rec* %959, %union.rec** @zz_tmp, align 8
  %960 = load %union.rec*, %union.rec** @zz_res, align 8
  %961 = bitcast %union.rec* %960 to %struct.word_type*
  %962 = getelementptr inbounds %struct.word_type, %struct.word_type* %961, i32 0, i32 0
  %963 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %962, i32 0, i64 1
  %964 = getelementptr inbounds %struct.LIST, %struct.LIST* %963, i32 0, i32 0
  %965 = load %union.rec*, %union.rec** %964, align 8
  %966 = load %union.rec*, %union.rec** @zz_hold, align 8
  %967 = bitcast %union.rec* %966 to %struct.word_type*
  %968 = getelementptr inbounds %struct.word_type, %struct.word_type* %967, i32 0, i32 0
  %969 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %968, i32 0, i64 1
  %970 = getelementptr inbounds %struct.LIST, %struct.LIST* %969, i32 0, i32 0
  store %union.rec* %965, %union.rec** %970, align 8
  %971 = load %union.rec*, %union.rec** @zz_hold, align 8
  %972 = load %union.rec*, %union.rec** @zz_res, align 8
  %973 = bitcast %union.rec* %972 to %struct.word_type*
  %974 = getelementptr inbounds %struct.word_type, %struct.word_type* %973, i32 0, i32 0
  %975 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %974, i32 0, i64 1
  %976 = getelementptr inbounds %struct.LIST, %struct.LIST* %975, i32 0, i32 0
  %977 = load %union.rec*, %union.rec** %976, align 8
  %978 = bitcast %union.rec* %977 to %struct.word_type*
  %979 = getelementptr inbounds %struct.word_type, %struct.word_type* %978, i32 0, i32 0
  %980 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %979, i32 0, i64 1
  %981 = getelementptr inbounds %struct.LIST, %struct.LIST* %980, i32 0, i32 1
  store %union.rec* %971, %union.rec** %981, align 8
  %982 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %983 = load %union.rec*, %union.rec** @zz_res, align 8
  %984 = bitcast %union.rec* %983 to %struct.word_type*
  %985 = getelementptr inbounds %struct.word_type, %struct.word_type* %984, i32 0, i32 0
  %986 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %985, i32 0, i64 1
  %987 = getelementptr inbounds %struct.LIST, %struct.LIST* %986, i32 0, i32 0
  store %union.rec* %982, %union.rec** %987, align 8
  %988 = load %union.rec*, %union.rec** @zz_res, align 8
  %989 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %990 = bitcast %union.rec* %989 to %struct.word_type*
  %991 = getelementptr inbounds %struct.word_type, %struct.word_type* %990, i32 0, i32 0
  %992 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %991, i32 0, i64 1
  %993 = getelementptr inbounds %struct.LIST, %struct.LIST* %992, i32 0, i32 1
  store %union.rec* %988, %union.rec** %993, align 8
  br label %994

; <label>:994                                     ; preds = %953, %951
  %995 = phi %union.rec* [ %952, %951 ], [ %988, %953 ]
  br label %996

; <label>:996                                     ; preds = %994, %946
  %997 = phi %union.rec* [ %947, %946 ], [ %995, %994 ]
  %998 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %999 = zext i8 %998 to i32
  store i32 %999, i32* @zz_size, align 4
  %1000 = sext i32 %999 to i64
  %1001 = icmp uge i64 %1000, 265
  br i1 %1001, label %1002, label %1005

; <label>:1002                                    ; preds = %996
  %1003 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1004 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %1003)
  br label %1030

; <label>:1005                                    ; preds = %996
  %1006 = load i32, i32* @zz_size, align 4
  %1007 = sext i32 %1006 to i64
  %1008 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1007
  %1009 = load %union.rec*, %union.rec** %1008, align 8
  %1010 = icmp eq %union.rec* %1009, null
  br i1 %1010, label %1011, label %1015

; <label>:1011                                    ; preds = %1005
  %1012 = load i32, i32* @zz_size, align 4
  %1013 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1014 = call %union.rec* @GetMemory(i32 %1012, %struct.FILE_POS* %1013)
  store %union.rec* %1014, %union.rec** @zz_hold, align 8
  br label %1029

; <label>:1015                                    ; preds = %1005
  %1016 = load i32, i32* @zz_size, align 4
  %1017 = sext i32 %1016 to i64
  %1018 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1017
  %1019 = load %union.rec*, %union.rec** %1018, align 8
  store %union.rec* %1019, %union.rec** @zz_hold, align 8
  store %union.rec* %1019, %union.rec** @zz_hold, align 8
  %1020 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1021 = bitcast %union.rec* %1020 to %struct.word_type*
  %1022 = getelementptr inbounds %struct.word_type, %struct.word_type* %1021, i32 0, i32 0
  %1023 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1022, i32 0, i64 0
  %1024 = getelementptr inbounds %struct.LIST, %struct.LIST* %1023, i32 0, i32 0
  %1025 = load %union.rec*, %union.rec** %1024, align 8
  %1026 = load i32, i32* @zz_size, align 4
  %1027 = sext i32 %1026 to i64
  %1028 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1027
  store %union.rec* %1025, %union.rec** %1028, align 8
  br label %1029

; <label>:1029                                    ; preds = %1015, %1011
  br label %1030

; <label>:1030                                    ; preds = %1029, %1002
  %1031 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1032 = bitcast %union.rec* %1031 to %struct.word_type*
  %1033 = getelementptr inbounds %struct.word_type, %struct.word_type* %1032, i32 0, i32 1
  %1034 = bitcast %union.FIRST_UNION* %1033 to %struct.anon*
  %1035 = getelementptr inbounds %struct.anon, %struct.anon* %1034, i32 0, i32 0
  store i8 0, i8* %1035, align 1
  %1036 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1037 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1038 = bitcast %union.rec* %1037 to %struct.word_type*
  %1039 = getelementptr inbounds %struct.word_type, %struct.word_type* %1038, i32 0, i32 0
  %1040 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1039, i32 0, i64 1
  %1041 = getelementptr inbounds %struct.LIST, %struct.LIST* %1040, i32 0, i32 1
  store %union.rec* %1036, %union.rec** %1041, align 8
  %1042 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1043 = bitcast %union.rec* %1042 to %struct.word_type*
  %1044 = getelementptr inbounds %struct.word_type, %struct.word_type* %1043, i32 0, i32 0
  %1045 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1044, i32 0, i64 1
  %1046 = getelementptr inbounds %struct.LIST, %struct.LIST* %1045, i32 0, i32 0
  store %union.rec* %1036, %union.rec** %1046, align 8
  %1047 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1048 = bitcast %union.rec* %1047 to %struct.word_type*
  %1049 = getelementptr inbounds %struct.word_type, %struct.word_type* %1048, i32 0, i32 0
  %1050 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1049, i32 0, i64 0
  %1051 = getelementptr inbounds %struct.LIST, %struct.LIST* %1050, i32 0, i32 1
  store %union.rec* %1036, %union.rec** %1051, align 8
  %1052 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1053 = bitcast %union.rec* %1052 to %struct.word_type*
  %1054 = getelementptr inbounds %struct.word_type, %struct.word_type* %1053, i32 0, i32 0
  %1055 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1054, i32 0, i64 0
  %1056 = getelementptr inbounds %struct.LIST, %struct.LIST* %1055, i32 0, i32 0
  store %union.rec* %1036, %union.rec** %1056, align 8
  store %union.rec* %1036, %union.rec** @xx_link, align 8
  %1057 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1057, %union.rec** @zz_res, align 8
  %1058 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %1058, %union.rec** @zz_hold, align 8
  %1059 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1060 = icmp eq %union.rec* %1059, null
  br i1 %1060, label %1061, label %1063

; <label>:1061                                    ; preds = %1030
  %1062 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1111

; <label>:1063                                    ; preds = %1030
  %1064 = load %union.rec*, %union.rec** @zz_res, align 8
  %1065 = icmp eq %union.rec* %1064, null
  br i1 %1065, label %1066, label %1068

; <label>:1066                                    ; preds = %1063
  %1067 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1109

; <label>:1068                                    ; preds = %1063
  %1069 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1070 = bitcast %union.rec* %1069 to %struct.word_type*
  %1071 = getelementptr inbounds %struct.word_type, %struct.word_type* %1070, i32 0, i32 0
  %1072 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1071, i32 0, i64 0
  %1073 = getelementptr inbounds %struct.LIST, %struct.LIST* %1072, i32 0, i32 0
  %1074 = load %union.rec*, %union.rec** %1073, align 8
  store %union.rec* %1074, %union.rec** @zz_tmp, align 8
  %1075 = load %union.rec*, %union.rec** @zz_res, align 8
  %1076 = bitcast %union.rec* %1075 to %struct.word_type*
  %1077 = getelementptr inbounds %struct.word_type, %struct.word_type* %1076, i32 0, i32 0
  %1078 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1077, i32 0, i64 0
  %1079 = getelementptr inbounds %struct.LIST, %struct.LIST* %1078, i32 0, i32 0
  %1080 = load %union.rec*, %union.rec** %1079, align 8
  %1081 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1082 = bitcast %union.rec* %1081 to %struct.word_type*
  %1083 = getelementptr inbounds %struct.word_type, %struct.word_type* %1082, i32 0, i32 0
  %1084 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1083, i32 0, i64 0
  %1085 = getelementptr inbounds %struct.LIST, %struct.LIST* %1084, i32 0, i32 0
  store %union.rec* %1080, %union.rec** %1085, align 8
  %1086 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1087 = load %union.rec*, %union.rec** @zz_res, align 8
  %1088 = bitcast %union.rec* %1087 to %struct.word_type*
  %1089 = getelementptr inbounds %struct.word_type, %struct.word_type* %1088, i32 0, i32 0
  %1090 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1089, i32 0, i64 0
  %1091 = getelementptr inbounds %struct.LIST, %struct.LIST* %1090, i32 0, i32 0
  %1092 = load %union.rec*, %union.rec** %1091, align 8
  %1093 = bitcast %union.rec* %1092 to %struct.word_type*
  %1094 = getelementptr inbounds %struct.word_type, %struct.word_type* %1093, i32 0, i32 0
  %1095 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1094, i32 0, i64 0
  %1096 = getelementptr inbounds %struct.LIST, %struct.LIST* %1095, i32 0, i32 1
  store %union.rec* %1086, %union.rec** %1096, align 8
  %1097 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1098 = load %union.rec*, %union.rec** @zz_res, align 8
  %1099 = bitcast %union.rec* %1098 to %struct.word_type*
  %1100 = getelementptr inbounds %struct.word_type, %struct.word_type* %1099, i32 0, i32 0
  %1101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1100, i32 0, i64 0
  %1102 = getelementptr inbounds %struct.LIST, %struct.LIST* %1101, i32 0, i32 0
  store %union.rec* %1097, %union.rec** %1102, align 8
  %1103 = load %union.rec*, %union.rec** @zz_res, align 8
  %1104 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1105 = bitcast %union.rec* %1104 to %struct.word_type*
  %1106 = getelementptr inbounds %struct.word_type, %struct.word_type* %1105, i32 0, i32 0
  %1107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1106, i32 0, i64 0
  %1108 = getelementptr inbounds %struct.LIST, %struct.LIST* %1107, i32 0, i32 1
  store %union.rec* %1103, %union.rec** %1108, align 8
  br label %1109

; <label>:1109                                    ; preds = %1068, %1066
  %1110 = phi %union.rec* [ %1067, %1066 ], [ %1103, %1068 ]
  br label %1111

; <label>:1111                                    ; preds = %1109, %1061
  %1112 = phi %union.rec* [ %1062, %1061 ], [ %1110, %1109 ]
  %1113 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1113, %union.rec** @zz_res, align 8
  %1114 = load %union.rec*, %union.rec** %env, align 8
  store %union.rec* %1114, %union.rec** @zz_hold, align 8
  %1115 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1116 = icmp eq %union.rec* %1115, null
  br i1 %1116, label %1117, label %1119

; <label>:1117                                    ; preds = %1111
  %1118 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1167

; <label>:1119                                    ; preds = %1111
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
  %1128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1127, i32 0, i64 1
  %1129 = getelementptr inbounds %struct.LIST, %struct.LIST* %1128, i32 0, i32 0
  %1130 = load %union.rec*, %union.rec** %1129, align 8
  store %union.rec* %1130, %union.rec** @zz_tmp, align 8
  %1131 = load %union.rec*, %union.rec** @zz_res, align 8
  %1132 = bitcast %union.rec* %1131 to %struct.word_type*
  %1133 = getelementptr inbounds %struct.word_type, %struct.word_type* %1132, i32 0, i32 0
  %1134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1133, i32 0, i64 1
  %1135 = getelementptr inbounds %struct.LIST, %struct.LIST* %1134, i32 0, i32 0
  %1136 = load %union.rec*, %union.rec** %1135, align 8
  %1137 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1138 = bitcast %union.rec* %1137 to %struct.word_type*
  %1139 = getelementptr inbounds %struct.word_type, %struct.word_type* %1138, i32 0, i32 0
  %1140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1139, i32 0, i64 1
  %1141 = getelementptr inbounds %struct.LIST, %struct.LIST* %1140, i32 0, i32 0
  store %union.rec* %1136, %union.rec** %1141, align 8
  %1142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1143 = load %union.rec*, %union.rec** @zz_res, align 8
  %1144 = bitcast %union.rec* %1143 to %struct.word_type*
  %1145 = getelementptr inbounds %struct.word_type, %struct.word_type* %1144, i32 0, i32 0
  %1146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1145, i32 0, i64 1
  %1147 = getelementptr inbounds %struct.LIST, %struct.LIST* %1146, i32 0, i32 0
  %1148 = load %union.rec*, %union.rec** %1147, align 8
  %1149 = bitcast %union.rec* %1148 to %struct.word_type*
  %1150 = getelementptr inbounds %struct.word_type, %struct.word_type* %1149, i32 0, i32 0
  %1151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1150, i32 0, i64 1
  %1152 = getelementptr inbounds %struct.LIST, %struct.LIST* %1151, i32 0, i32 1
  store %union.rec* %1142, %union.rec** %1152, align 8
  %1153 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1154 = load %union.rec*, %union.rec** @zz_res, align 8
  %1155 = bitcast %union.rec* %1154 to %struct.word_type*
  %1156 = getelementptr inbounds %struct.word_type, %struct.word_type* %1155, i32 0, i32 0
  %1157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1156, i32 0, i64 1
  %1158 = getelementptr inbounds %struct.LIST, %struct.LIST* %1157, i32 0, i32 0
  store %union.rec* %1153, %union.rec** %1158, align 8
  %1159 = load %union.rec*, %union.rec** @zz_res, align 8
  %1160 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1161 = bitcast %union.rec* %1160 to %struct.word_type*
  %1162 = getelementptr inbounds %struct.word_type, %struct.word_type* %1161, i32 0, i32 0
  %1163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1162, i32 0, i64 1
  %1164 = getelementptr inbounds %struct.LIST, %struct.LIST* %1163, i32 0, i32 1
  store %union.rec* %1159, %union.rec** %1164, align 8
  br label %1165

; <label>:1165                                    ; preds = %1124, %1122
  %1166 = phi %union.rec* [ %1123, %1122 ], [ %1159, %1124 ]
  br label %1167

; <label>:1167                                    ; preds = %1165, %1117
  %1168 = phi %union.rec* [ %1118, %1117 ], [ %1166, %1165 ]
  %1169 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %1169
}

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

declare %union.rec* @CopyObject(%union.rec*, %struct.FILE_POS*) #1

declare %union.rec* @SetEnv(%union.rec*, %union.rec*) #1

declare i8* @Image(i32) #1

declare %union.rec* @DetachEnv(%union.rec*) #1

declare void @AttachEnv(%union.rec*, %union.rec*) #1

declare %union.rec* @ChildSym(%union.rec*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
