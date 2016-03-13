; ModuleID = 'z32.c'
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
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"word %s is too long\00", align 1
@xx_res = external global %union.rec*, align 8
@xx_hold = external global %union.rec*, align 8
@zz_hold = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@zz_free = external global [0 x %union.rec*], align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"Next:\00", align 1

; Function Attrs: nounwind uwtable
define %union.rec* @Next(%union.rec* %x, i32 %inc, i32* %done) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %n = alloca i32, align 4
  %len = alloca i32, align 4
  %buff = alloca [512 x i8], align 16
  store %union.rec* %x, %union.rec** %1, align 8
  store i32 %inc, i32* %2, align 4
  store i32* %done, i32** %3, align 8
  %4 = load %union.rec*, %union.rec** %1, align 8
  %5 = bitcast %union.rec* %4 to %struct.word_type*
  %6 = getelementptr inbounds %struct.word_type, %struct.word_type* %5, i32 0, i32 1
  %7 = bitcast %union.FIRST_UNION* %6 to %struct.anon*
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  switch i32 %10, label %644 [
    i32 11, label %11
    i32 12, label %11
    i32 94, label %531
    i32 95, label %531
    i32 1, label %531
    i32 2, label %531
    i32 5, label %531
    i32 4, label %531
    i32 6, label %531
    i32 7, label %531
    i32 44, label %531
    i32 42, label %531
    i32 43, label %531
    i32 45, label %531
    i32 46, label %531
    i32 21, label %531
    i32 23, label %531
    i32 20, label %532
    i32 22, label %532
    i32 24, label %532
    i32 25, label %532
    i32 26, label %532
    i32 27, label %532
    i32 28, label %532
    i32 29, label %532
    i32 36, label %532
    i32 37, label %532
    i32 38, label %532
    i32 39, label %532
    i32 40, label %532
    i32 41, label %532
    i32 47, label %532
    i32 48, label %532
    i32 49, label %532
    i32 30, label %532
    i32 31, label %532
    i32 32, label %532
    i32 33, label %532
    i32 50, label %532
    i32 51, label %532
    i32 34, label %532
    i32 35, label %532
    i32 9, label %532
    i32 96, label %532
    i32 97, label %532
    i32 98, label %532
    i32 99, label %532
    i32 17, label %566
    i32 16, label %566
    i32 15, label %566
    i32 18, label %566
    i32 19, label %566
  ]

; <label>:11                                      ; preds = %0, %0
  %12 = load %union.rec*, %union.rec** %1, align 8
  %13 = bitcast %union.rec* %12 to %struct.word_type*
  %14 = getelementptr inbounds %struct.word_type, %struct.word_type* %13, i32 0, i32 4
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i32 0, i32 0
  %16 = call i64 @strlen(i8* %15) #4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %len, align 4
  %18 = load i32, i32* %len, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %r, align 4
  br label %20

; <label>:20                                      ; preds = %49, %11
  %21 = load i32, i32* %r, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %46

; <label>:23                                      ; preds = %20
  %24 = load i32, i32* %r, align 4
  %25 = sext i32 %24 to i64
  %26 = load %union.rec*, %union.rec** %1, align 8
  %27 = bitcast %union.rec* %26 to %struct.word_type*
  %28 = getelementptr inbounds %struct.word_type, %struct.word_type* %27, i32 0, i32 4
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %28, i32 0, i64 %25
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp sge i32 %31, 48
  br i1 %32, label %33, label %43

; <label>:33                                      ; preds = %23
  %34 = load i32, i32* %r, align 4
  %35 = sext i32 %34 to i64
  %36 = load %union.rec*, %union.rec** %1, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 4
  %39 = getelementptr inbounds [4 x i8], [4 x i8]* %38, i32 0, i64 %35
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp sle i32 %41, 57
  br label %43

; <label>:43                                      ; preds = %33, %23
  %44 = phi i1 [ false, %23 ], [ %42, %33 ]
  %45 = xor i1 %44, true
  br label %46

; <label>:46                                      ; preds = %43, %20
  %47 = phi i1 [ false, %20 ], [ %45, %43 ]
  br i1 %47, label %48, label %52

; <label>:48                                      ; preds = %46
  br label %49

; <label>:49                                      ; preds = %48
  %50 = load i32, i32* %r, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %r, align 4
  br label %20

; <label>:52                                      ; preds = %46
  %53 = load i32, i32* %r, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

; <label>:55                                      ; preds = %52
  br label %655

; <label>:56                                      ; preds = %52
  %57 = load i32, i32* %r, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %l, align 4
  br label %59

; <label>:59                                      ; preds = %87, %56
  %60 = load i32, i32* %l, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %84

; <label>:62                                      ; preds = %59
  %63 = load i32, i32* %l, align 4
  %64 = sext i32 %63 to i64
  %65 = load %union.rec*, %union.rec** %1, align 8
  %66 = bitcast %union.rec* %65 to %struct.word_type*
  %67 = getelementptr inbounds %struct.word_type, %struct.word_type* %66, i32 0, i32 4
  %68 = getelementptr inbounds [4 x i8], [4 x i8]* %67, i32 0, i64 %64
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp sge i32 %70, 48
  br i1 %71, label %72, label %82

; <label>:72                                      ; preds = %62
  %73 = load i32, i32* %l, align 4
  %74 = sext i32 %73 to i64
  %75 = load %union.rec*, %union.rec** %1, align 8
  %76 = bitcast %union.rec* %75 to %struct.word_type*
  %77 = getelementptr inbounds %struct.word_type, %struct.word_type* %76, i32 0, i32 4
  %78 = getelementptr inbounds [4 x i8], [4 x i8]* %77, i32 0, i64 %74
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp sle i32 %80, 57
  br label %82

; <label>:82                                      ; preds = %72, %62
  %83 = phi i1 [ false, %62 ], [ %81, %72 ]
  br label %84

; <label>:84                                      ; preds = %82, %59
  %85 = phi i1 [ false, %59 ], [ %83, %82 ]
  br i1 %85, label %86, label %90

; <label>:86                                      ; preds = %84
  br label %87

; <label>:87                                      ; preds = %86
  %88 = load i32, i32* %l, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %l, align 4
  br label %59

; <label>:90                                      ; preds = %84
  %91 = load i32, i32* %l, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = load %union.rec*, %union.rec** %1, align 8
  %95 = bitcast %union.rec* %94 to %struct.word_type*
  %96 = getelementptr inbounds %struct.word_type, %struct.word_type* %95, i32 0, i32 4
  %97 = getelementptr inbounds [4 x i8], [4 x i8]* %96, i32 0, i64 %93
  %98 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %n) #5
  %99 = load i32, i32* %l, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = load %union.rec*, %union.rec** %1, align 8
  %103 = bitcast %union.rec* %102 to %struct.word_type*
  %104 = getelementptr inbounds %struct.word_type, %struct.word_type* %103, i32 0, i32 4
  %105 = getelementptr inbounds [4 x i8], [4 x i8]* %104, i32 0, i64 %101
  store i8 0, i8* %105, align 1
  %106 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %107 = load %union.rec*, %union.rec** %1, align 8
  %108 = bitcast %union.rec* %107 to %struct.word_type*
  %109 = getelementptr inbounds %struct.word_type, %struct.word_type* %108, i32 0, i32 4
  %110 = getelementptr inbounds [4 x i8], [4 x i8]* %109, i32 0, i32 0
  %111 = call i8* @strcpy(i8* %106, i8* %110) #5
  %112 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %113 = load i32, i32* %n, align 4
  %114 = load i32, i32* %2, align 4
  %115 = add nsw i32 %113, %114
  %116 = call i8* @StringInt(i32 %115)
  %117 = call i8* @strcat(i8* %112, i8* %116) #5
  %118 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %119 = load i32, i32* %r, align 4
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = load %union.rec*, %union.rec** %1, align 8
  %123 = bitcast %union.rec* %122 to %struct.word_type*
  %124 = getelementptr inbounds %struct.word_type, %struct.word_type* %123, i32 0, i32 4
  %125 = getelementptr inbounds [4 x i8], [4 x i8]* %124, i32 0, i64 %121
  %126 = call i8* @strcat(i8* %118, i8* %125) #5
  %127 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %128 = call i64 @strlen(i8* %127) #4
  %129 = icmp uge i64 %128, 512
  br i1 %129, label %130, label %137

; <label>:130                                     ; preds = %90
  %131 = load %union.rec*, %union.rec** %1, align 8
  %132 = bitcast %union.rec* %131 to %struct.word_type*
  %133 = getelementptr inbounds %struct.word_type, %struct.word_type* %132, i32 0, i32 1
  %134 = bitcast %union.FIRST_UNION* %133 to %struct.FILE_POS*
  %135 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %136 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 32, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 1, %struct.FILE_POS* %134, i8* %135)
  br label %137

; <label>:137                                     ; preds = %130, %90
  %138 = load %union.rec*, %union.rec** %1, align 8
  %139 = bitcast %union.rec* %138 to %struct.word_type*
  %140 = getelementptr inbounds %struct.word_type, %struct.word_type* %139, i32 0, i32 1
  %141 = bitcast %union.FIRST_UNION* %140 to %struct.anon*
  %142 = getelementptr inbounds %struct.anon, %struct.anon* %141, i32 0, i32 0
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %146 = load %union.rec*, %union.rec** %1, align 8
  %147 = bitcast %union.rec* %146 to %struct.word_type*
  %148 = getelementptr inbounds %struct.word_type, %struct.word_type* %147, i32 0, i32 1
  %149 = bitcast %union.FIRST_UNION* %148 to %struct.FILE_POS*
  %150 = call %union.rec* @MakeWord(i32 %144, i8* %145, %struct.FILE_POS* %149)
  store %union.rec* %150, %union.rec** %y, align 8
  %151 = load %union.rec*, %union.rec** %1, align 8
  %152 = bitcast %union.rec* %151 to %struct.word_type*
  %153 = getelementptr inbounds %struct.word_type, %struct.word_type* %152, i32 0, i32 2
  %154 = bitcast %union.SECOND_UNION* %153 to %struct.anon.1*
  %155 = bitcast %struct.anon.1* %154 to i32*
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, 4095
  %158 = load %union.rec*, %union.rec** %y, align 8
  %159 = bitcast %union.rec* %158 to %struct.word_type*
  %160 = getelementptr inbounds %struct.word_type, %struct.word_type* %159, i32 0, i32 2
  %161 = bitcast %union.SECOND_UNION* %160 to %struct.anon.1*
  %162 = bitcast %struct.anon.1* %161 to i32*
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %157, 4095
  %165 = and i32 %163, -4096
  %166 = or i32 %165, %164
  store i32 %166, i32* %162, align 4
  %167 = load %union.rec*, %union.rec** %1, align 8
  %168 = bitcast %union.rec* %167 to %struct.word_type*
  %169 = getelementptr inbounds %struct.word_type, %struct.word_type* %168, i32 0, i32 2
  %170 = bitcast %union.SECOND_UNION* %169 to %struct.anon.1*
  %171 = bitcast %struct.anon.1* %170 to i32*
  %172 = load i32, i32* %171, align 4
  %173 = lshr i32 %172, 12
  %174 = and i32 %173, 1023
  %175 = load %union.rec*, %union.rec** %y, align 8
  %176 = bitcast %union.rec* %175 to %struct.word_type*
  %177 = getelementptr inbounds %struct.word_type, %struct.word_type* %176, i32 0, i32 2
  %178 = bitcast %union.SECOND_UNION* %177 to %struct.anon.1*
  %179 = bitcast %struct.anon.1* %178 to i32*
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %174, 1023
  %182 = shl i32 %181, 12
  %183 = and i32 %180, -4190209
  %184 = or i32 %183, %182
  store i32 %184, i32* %179, align 4
  %185 = load %union.rec*, %union.rec** %1, align 8
  %186 = bitcast %union.rec* %185 to %struct.word_type*
  %187 = getelementptr inbounds %struct.word_type, %struct.word_type* %186, i32 0, i32 2
  %188 = bitcast %union.SECOND_UNION* %187 to %struct.anon.1*
  %189 = bitcast %struct.anon.1* %188 to i32*
  %190 = load i32, i32* %189, align 4
  %191 = lshr i32 %190, 22
  %192 = and i32 %191, 1
  %193 = load %union.rec*, %union.rec** %y, align 8
  %194 = bitcast %union.rec* %193 to %struct.word_type*
  %195 = getelementptr inbounds %struct.word_type, %struct.word_type* %194, i32 0, i32 2
  %196 = bitcast %union.SECOND_UNION* %195 to %struct.anon.1*
  %197 = bitcast %struct.anon.1* %196 to i32*
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %192, 1
  %200 = shl i32 %199, 22
  %201 = and i32 %198, -4194305
  %202 = or i32 %201, %200
  store i32 %202, i32* %197, align 4
  %203 = load %union.rec*, %union.rec** %1, align 8
  %204 = bitcast %union.rec* %203 to %struct.word_type*
  %205 = getelementptr inbounds %struct.word_type, %struct.word_type* %204, i32 0, i32 2
  %206 = bitcast %union.SECOND_UNION* %205 to %struct.anon.1*
  %207 = bitcast %struct.anon.1* %206 to i32*
  %208 = load i32, i32* %207, align 4
  %209 = lshr i32 %208, 23
  %210 = and i32 %209, 63
  %211 = load %union.rec*, %union.rec** %y, align 8
  %212 = bitcast %union.rec* %211 to %struct.word_type*
  %213 = getelementptr inbounds %struct.word_type, %struct.word_type* %212, i32 0, i32 2
  %214 = bitcast %union.SECOND_UNION* %213 to %struct.anon.1*
  %215 = bitcast %struct.anon.1* %214 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = and i32 %210, 63
  %218 = shl i32 %217, 23
  %219 = and i32 %216, -528482305
  %220 = or i32 %219, %218
  store i32 %220, i32* %215, align 4
  %221 = load %union.rec*, %union.rec** %1, align 8
  %222 = bitcast %union.rec* %221 to %struct.word_type*
  %223 = getelementptr inbounds %struct.word_type, %struct.word_type* %222, i32 0, i32 2
  %224 = bitcast %union.SECOND_UNION* %223 to %struct.anon.1*
  %225 = bitcast %struct.anon.1* %224 to i32*
  %226 = load i32, i32* %225, align 4
  %227 = lshr i32 %226, 31
  %228 = load %union.rec*, %union.rec** %y, align 8
  %229 = bitcast %union.rec* %228 to %struct.word_type*
  %230 = getelementptr inbounds %struct.word_type, %struct.word_type* %229, i32 0, i32 2
  %231 = bitcast %union.SECOND_UNION* %230 to %struct.anon.1*
  %232 = bitcast %struct.anon.1* %231 to i32*
  %233 = load i32, i32* %232, align 4
  %234 = and i32 %227, 1
  %235 = shl i32 %234, 31
  %236 = and i32 %233, 2147483647
  %237 = or i32 %236, %235
  store i32 %237, i32* %232, align 4
  %238 = load %union.rec*, %union.rec** %1, align 8
  %239 = bitcast %union.rec* %238 to %struct.word_type*
  %240 = getelementptr inbounds %struct.word_type, %struct.word_type* %239, i32 0, i32 2
  %241 = bitcast %union.SECOND_UNION* %240 to %struct.anon.1*
  %242 = bitcast %struct.anon.1* %241 to i32*
  %243 = load i32, i32* %242, align 4
  %244 = lshr i32 %243, 29
  %245 = and i32 %244, 3
  %246 = load %union.rec*, %union.rec** %y, align 8
  %247 = bitcast %union.rec* %246 to %struct.word_type*
  %248 = getelementptr inbounds %struct.word_type, %struct.word_type* %247, i32 0, i32 2
  %249 = bitcast %union.SECOND_UNION* %248 to %struct.anon.1*
  %250 = bitcast %struct.anon.1* %249 to i32*
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %245, 3
  %253 = shl i32 %252, 29
  %254 = and i32 %251, -1610612737
  %255 = or i32 %254, %253
  store i32 %255, i32* %250, align 4
  %256 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %256, %union.rec** @xx_res, align 8
  %257 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %257, %union.rec** @xx_hold, align 8
  %258 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %258, %union.rec** @zz_hold, align 8
  %259 = load %union.rec*, %union.rec** @zz_hold, align 8
  %260 = bitcast %union.rec* %259 to %struct.word_type*
  %261 = getelementptr inbounds %struct.word_type, %struct.word_type* %260, i32 0, i32 0
  %262 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %261, i32 0, i64 1
  %263 = getelementptr inbounds %struct.LIST, %struct.LIST* %262, i32 0, i32 1
  %264 = load %union.rec*, %union.rec** %263, align 8
  %265 = load %union.rec*, %union.rec** @zz_hold, align 8
  %266 = icmp eq %union.rec* %264, %265
  br i1 %266, label %267, label %268

; <label>:267                                     ; preds = %137
  br label %309

; <label>:268                                     ; preds = %137
  %269 = load %union.rec*, %union.rec** @zz_hold, align 8
  %270 = bitcast %union.rec* %269 to %struct.word_type*
  %271 = getelementptr inbounds %struct.word_type, %struct.word_type* %270, i32 0, i32 0
  %272 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %271, i32 0, i64 1
  %273 = getelementptr inbounds %struct.LIST, %struct.LIST* %272, i32 0, i32 1
  %274 = load %union.rec*, %union.rec** %273, align 8
  store %union.rec* %274, %union.rec** @zz_res, align 8
  %275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %276 = bitcast %union.rec* %275 to %struct.word_type*
  %277 = getelementptr inbounds %struct.word_type, %struct.word_type* %276, i32 0, i32 0
  %278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %277, i32 0, i64 1
  %279 = getelementptr inbounds %struct.LIST, %struct.LIST* %278, i32 0, i32 0
  %280 = load %union.rec*, %union.rec** %279, align 8
  %281 = load %union.rec*, %union.rec** @zz_res, align 8
  %282 = bitcast %union.rec* %281 to %struct.word_type*
  %283 = getelementptr inbounds %struct.word_type, %struct.word_type* %282, i32 0, i32 0
  %284 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %283, i32 0, i64 1
  %285 = getelementptr inbounds %struct.LIST, %struct.LIST* %284, i32 0, i32 0
  store %union.rec* %280, %union.rec** %285, align 8
  %286 = load %union.rec*, %union.rec** @zz_res, align 8
  %287 = load %union.rec*, %union.rec** @zz_hold, align 8
  %288 = bitcast %union.rec* %287 to %struct.word_type*
  %289 = getelementptr inbounds %struct.word_type, %struct.word_type* %288, i32 0, i32 0
  %290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %289, i32 0, i64 1
  %291 = getelementptr inbounds %struct.LIST, %struct.LIST* %290, i32 0, i32 0
  %292 = load %union.rec*, %union.rec** %291, align 8
  %293 = bitcast %union.rec* %292 to %struct.word_type*
  %294 = getelementptr inbounds %struct.word_type, %struct.word_type* %293, i32 0, i32 0
  %295 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %294, i32 0, i64 1
  %296 = getelementptr inbounds %struct.LIST, %struct.LIST* %295, i32 0, i32 1
  store %union.rec* %286, %union.rec** %296, align 8
  %297 = load %union.rec*, %union.rec** @zz_hold, align 8
  %298 = load %union.rec*, %union.rec** @zz_hold, align 8
  %299 = bitcast %union.rec* %298 to %struct.word_type*
  %300 = getelementptr inbounds %struct.word_type, %struct.word_type* %299, i32 0, i32 0
  %301 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %300, i32 0, i64 1
  %302 = getelementptr inbounds %struct.LIST, %struct.LIST* %301, i32 0, i32 1
  store %union.rec* %297, %union.rec** %302, align 8
  %303 = load %union.rec*, %union.rec** @zz_hold, align 8
  %304 = bitcast %union.rec* %303 to %struct.word_type*
  %305 = getelementptr inbounds %struct.word_type, %struct.word_type* %304, i32 0, i32 0
  %306 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %305, i32 0, i64 1
  %307 = getelementptr inbounds %struct.LIST, %struct.LIST* %306, i32 0, i32 0
  store %union.rec* %297, %union.rec** %307, align 8
  %308 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %309

; <label>:309                                     ; preds = %268, %267
  %310 = phi %union.rec* [ null, %267 ], [ %308, %268 ]
  store %union.rec* %310, %union.rec** @xx_tmp, align 8
  %311 = load %union.rec*, %union.rec** @xx_res, align 8
  store %union.rec* %311, %union.rec** @zz_res, align 8
  %312 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %312, %union.rec** @zz_hold, align 8
  %313 = load %union.rec*, %union.rec** @zz_hold, align 8
  %314 = icmp eq %union.rec* %313, null
  br i1 %314, label %315, label %317

; <label>:315                                     ; preds = %309
  %316 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %365

; <label>:317                                     ; preds = %309
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
  %326 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %325, i32 0, i64 1
  %327 = getelementptr inbounds %struct.LIST, %struct.LIST* %326, i32 0, i32 0
  %328 = load %union.rec*, %union.rec** %327, align 8
  store %union.rec* %328, %union.rec** @zz_tmp, align 8
  %329 = load %union.rec*, %union.rec** @zz_res, align 8
  %330 = bitcast %union.rec* %329 to %struct.word_type*
  %331 = getelementptr inbounds %struct.word_type, %struct.word_type* %330, i32 0, i32 0
  %332 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %331, i32 0, i64 1
  %333 = getelementptr inbounds %struct.LIST, %struct.LIST* %332, i32 0, i32 0
  %334 = load %union.rec*, %union.rec** %333, align 8
  %335 = load %union.rec*, %union.rec** @zz_hold, align 8
  %336 = bitcast %union.rec* %335 to %struct.word_type*
  %337 = getelementptr inbounds %struct.word_type, %struct.word_type* %336, i32 0, i32 0
  %338 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %337, i32 0, i64 1
  %339 = getelementptr inbounds %struct.LIST, %struct.LIST* %338, i32 0, i32 0
  store %union.rec* %334, %union.rec** %339, align 8
  %340 = load %union.rec*, %union.rec** @zz_hold, align 8
  %341 = load %union.rec*, %union.rec** @zz_res, align 8
  %342 = bitcast %union.rec* %341 to %struct.word_type*
  %343 = getelementptr inbounds %struct.word_type, %struct.word_type* %342, i32 0, i32 0
  %344 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %343, i32 0, i64 1
  %345 = getelementptr inbounds %struct.LIST, %struct.LIST* %344, i32 0, i32 0
  %346 = load %union.rec*, %union.rec** %345, align 8
  %347 = bitcast %union.rec* %346 to %struct.word_type*
  %348 = getelementptr inbounds %struct.word_type, %struct.word_type* %347, i32 0, i32 0
  %349 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %348, i32 0, i64 1
  %350 = getelementptr inbounds %struct.LIST, %struct.LIST* %349, i32 0, i32 1
  store %union.rec* %340, %union.rec** %350, align 8
  %351 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %352 = load %union.rec*, %union.rec** @zz_res, align 8
  %353 = bitcast %union.rec* %352 to %struct.word_type*
  %354 = getelementptr inbounds %struct.word_type, %struct.word_type* %353, i32 0, i32 0
  %355 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %354, i32 0, i64 1
  %356 = getelementptr inbounds %struct.LIST, %struct.LIST* %355, i32 0, i32 0
  store %union.rec* %351, %union.rec** %356, align 8
  %357 = load %union.rec*, %union.rec** @zz_res, align 8
  %358 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %359 = bitcast %union.rec* %358 to %struct.word_type*
  %360 = getelementptr inbounds %struct.word_type, %struct.word_type* %359, i32 0, i32 0
  %361 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %360, i32 0, i64 1
  %362 = getelementptr inbounds %struct.LIST, %struct.LIST* %361, i32 0, i32 1
  store %union.rec* %357, %union.rec** %362, align 8
  br label %363

; <label>:363                                     ; preds = %322, %320
  %364 = phi %union.rec* [ %321, %320 ], [ %357, %322 ]
  br label %365

; <label>:365                                     ; preds = %363, %315
  %366 = phi %union.rec* [ %316, %315 ], [ %364, %363 ]
  %367 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %367, %union.rec** @zz_hold, align 8
  %368 = load %union.rec*, %union.rec** @zz_hold, align 8
  %369 = bitcast %union.rec* %368 to %struct.word_type*
  %370 = getelementptr inbounds %struct.word_type, %struct.word_type* %369, i32 0, i32 0
  %371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %370, i32 0, i64 0
  %372 = getelementptr inbounds %struct.LIST, %struct.LIST* %371, i32 0, i32 1
  %373 = load %union.rec*, %union.rec** %372, align 8
  %374 = load %union.rec*, %union.rec** @zz_hold, align 8
  %375 = icmp eq %union.rec* %373, %374
  br i1 %375, label %376, label %377

; <label>:376                                     ; preds = %365
  br label %418

; <label>:377                                     ; preds = %365
  %378 = load %union.rec*, %union.rec** @zz_hold, align 8
  %379 = bitcast %union.rec* %378 to %struct.word_type*
  %380 = getelementptr inbounds %struct.word_type, %struct.word_type* %379, i32 0, i32 0
  %381 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %380, i32 0, i64 0
  %382 = getelementptr inbounds %struct.LIST, %struct.LIST* %381, i32 0, i32 1
  %383 = load %union.rec*, %union.rec** %382, align 8
  store %union.rec* %383, %union.rec** @zz_res, align 8
  %384 = load %union.rec*, %union.rec** @zz_hold, align 8
  %385 = bitcast %union.rec* %384 to %struct.word_type*
  %386 = getelementptr inbounds %struct.word_type, %struct.word_type* %385, i32 0, i32 0
  %387 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %386, i32 0, i64 0
  %388 = getelementptr inbounds %struct.LIST, %struct.LIST* %387, i32 0, i32 0
  %389 = load %union.rec*, %union.rec** %388, align 8
  %390 = load %union.rec*, %union.rec** @zz_res, align 8
  %391 = bitcast %union.rec* %390 to %struct.word_type*
  %392 = getelementptr inbounds %struct.word_type, %struct.word_type* %391, i32 0, i32 0
  %393 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %392, i32 0, i64 0
  %394 = getelementptr inbounds %struct.LIST, %struct.LIST* %393, i32 0, i32 0
  store %union.rec* %389, %union.rec** %394, align 8
  %395 = load %union.rec*, %union.rec** @zz_res, align 8
  %396 = load %union.rec*, %union.rec** @zz_hold, align 8
  %397 = bitcast %union.rec* %396 to %struct.word_type*
  %398 = getelementptr inbounds %struct.word_type, %struct.word_type* %397, i32 0, i32 0
  %399 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %398, i32 0, i64 0
  %400 = getelementptr inbounds %struct.LIST, %struct.LIST* %399, i32 0, i32 0
  %401 = load %union.rec*, %union.rec** %400, align 8
  %402 = bitcast %union.rec* %401 to %struct.word_type*
  %403 = getelementptr inbounds %struct.word_type, %struct.word_type* %402, i32 0, i32 0
  %404 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %403, i32 0, i64 0
  %405 = getelementptr inbounds %struct.LIST, %struct.LIST* %404, i32 0, i32 1
  store %union.rec* %395, %union.rec** %405, align 8
  %406 = load %union.rec*, %union.rec** @zz_hold, align 8
  %407 = load %union.rec*, %union.rec** @zz_hold, align 8
  %408 = bitcast %union.rec* %407 to %struct.word_type*
  %409 = getelementptr inbounds %struct.word_type, %struct.word_type* %408, i32 0, i32 0
  %410 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %409, i32 0, i64 0
  %411 = getelementptr inbounds %struct.LIST, %struct.LIST* %410, i32 0, i32 1
  store %union.rec* %406, %union.rec** %411, align 8
  %412 = load %union.rec*, %union.rec** @zz_hold, align 8
  %413 = bitcast %union.rec* %412 to %struct.word_type*
  %414 = getelementptr inbounds %struct.word_type, %struct.word_type* %413, i32 0, i32 0
  %415 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %414, i32 0, i64 0
  %416 = getelementptr inbounds %struct.LIST, %struct.LIST* %415, i32 0, i32 0
  store %union.rec* %406, %union.rec** %416, align 8
  %417 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %418

; <label>:418                                     ; preds = %377, %376
  %419 = phi %union.rec* [ null, %376 ], [ %417, %377 ]
  store %union.rec* %419, %union.rec** @xx_tmp, align 8
  %420 = load %union.rec*, %union.rec** @xx_res, align 8
  store %union.rec* %420, %union.rec** @zz_res, align 8
  %421 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %421, %union.rec** @zz_hold, align 8
  %422 = load %union.rec*, %union.rec** @zz_hold, align 8
  %423 = icmp eq %union.rec* %422, null
  br i1 %423, label %424, label %426

; <label>:424                                     ; preds = %418
  %425 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %474

; <label>:426                                     ; preds = %418
  %427 = load %union.rec*, %union.rec** @zz_res, align 8
  %428 = icmp eq %union.rec* %427, null
  br i1 %428, label %429, label %431

; <label>:429                                     ; preds = %426
  %430 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %472

; <label>:431                                     ; preds = %426
  %432 = load %union.rec*, %union.rec** @zz_hold, align 8
  %433 = bitcast %union.rec* %432 to %struct.word_type*
  %434 = getelementptr inbounds %struct.word_type, %struct.word_type* %433, i32 0, i32 0
  %435 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %434, i32 0, i64 0
  %436 = getelementptr inbounds %struct.LIST, %struct.LIST* %435, i32 0, i32 0
  %437 = load %union.rec*, %union.rec** %436, align 8
  store %union.rec* %437, %union.rec** @zz_tmp, align 8
  %438 = load %union.rec*, %union.rec** @zz_res, align 8
  %439 = bitcast %union.rec* %438 to %struct.word_type*
  %440 = getelementptr inbounds %struct.word_type, %struct.word_type* %439, i32 0, i32 0
  %441 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %440, i32 0, i64 0
  %442 = getelementptr inbounds %struct.LIST, %struct.LIST* %441, i32 0, i32 0
  %443 = load %union.rec*, %union.rec** %442, align 8
  %444 = load %union.rec*, %union.rec** @zz_hold, align 8
  %445 = bitcast %union.rec* %444 to %struct.word_type*
  %446 = getelementptr inbounds %struct.word_type, %struct.word_type* %445, i32 0, i32 0
  %447 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %446, i32 0, i64 0
  %448 = getelementptr inbounds %struct.LIST, %struct.LIST* %447, i32 0, i32 0
  store %union.rec* %443, %union.rec** %448, align 8
  %449 = load %union.rec*, %union.rec** @zz_hold, align 8
  %450 = load %union.rec*, %union.rec** @zz_res, align 8
  %451 = bitcast %union.rec* %450 to %struct.word_type*
  %452 = getelementptr inbounds %struct.word_type, %struct.word_type* %451, i32 0, i32 0
  %453 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %452, i32 0, i64 0
  %454 = getelementptr inbounds %struct.LIST, %struct.LIST* %453, i32 0, i32 0
  %455 = load %union.rec*, %union.rec** %454, align 8
  %456 = bitcast %union.rec* %455 to %struct.word_type*
  %457 = getelementptr inbounds %struct.word_type, %struct.word_type* %456, i32 0, i32 0
  %458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %457, i32 0, i64 0
  %459 = getelementptr inbounds %struct.LIST, %struct.LIST* %458, i32 0, i32 1
  store %union.rec* %449, %union.rec** %459, align 8
  %460 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %461 = load %union.rec*, %union.rec** @zz_res, align 8
  %462 = bitcast %union.rec* %461 to %struct.word_type*
  %463 = getelementptr inbounds %struct.word_type, %struct.word_type* %462, i32 0, i32 0
  %464 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %463, i32 0, i64 0
  %465 = getelementptr inbounds %struct.LIST, %struct.LIST* %464, i32 0, i32 0
  store %union.rec* %460, %union.rec** %465, align 8
  %466 = load %union.rec*, %union.rec** @zz_res, align 8
  %467 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %468 = bitcast %union.rec* %467 to %struct.word_type*
  %469 = getelementptr inbounds %struct.word_type, %struct.word_type* %468, i32 0, i32 0
  %470 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %469, i32 0, i64 0
  %471 = getelementptr inbounds %struct.LIST, %struct.LIST* %470, i32 0, i32 1
  store %union.rec* %466, %union.rec** %471, align 8
  br label %472

; <label>:472                                     ; preds = %431, %429
  %473 = phi %union.rec* [ %430, %429 ], [ %466, %431 ]
  br label %474

; <label>:474                                     ; preds = %472, %424
  %475 = phi %union.rec* [ %425, %424 ], [ %473, %472 ]
  %476 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %476, %union.rec** @zz_hold, align 8
  %477 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %477, %union.rec** @zz_hold, align 8
  %478 = load %union.rec*, %union.rec** @zz_hold, align 8
  %479 = bitcast %union.rec* %478 to %struct.word_type*
  %480 = getelementptr inbounds %struct.word_type, %struct.word_type* %479, i32 0, i32 1
  %481 = bitcast %union.FIRST_UNION* %480 to %struct.anon*
  %482 = getelementptr inbounds %struct.anon, %struct.anon* %481, i32 0, i32 0
  %483 = load i8, i8* %482, align 1
  %484 = zext i8 %483 to i32
  %485 = icmp eq i32 %484, 11
  br i1 %485, label %495, label %486

; <label>:486                                     ; preds = %474
  %487 = load %union.rec*, %union.rec** @zz_hold, align 8
  %488 = bitcast %union.rec* %487 to %struct.word_type*
  %489 = getelementptr inbounds %struct.word_type, %struct.word_type* %488, i32 0, i32 1
  %490 = bitcast %union.FIRST_UNION* %489 to %struct.anon*
  %491 = getelementptr inbounds %struct.anon, %struct.anon* %490, i32 0, i32 0
  %492 = load i8, i8* %491, align 1
  %493 = zext i8 %492 to i32
  %494 = icmp eq i32 %493, 12
  br i1 %494, label %495, label %503

; <label>:495                                     ; preds = %486, %474
  %496 = load %union.rec*, %union.rec** @zz_hold, align 8
  %497 = bitcast %union.rec* %496 to %struct.word_type*
  %498 = getelementptr inbounds %struct.word_type, %struct.word_type* %497, i32 0, i32 1
  %499 = bitcast %union.FIRST_UNION* %498 to %struct.anon*
  %500 = getelementptr inbounds %struct.anon, %struct.anon* %499, i32 0, i32 1
  %501 = load i8, i8* %500, align 1
  %502 = zext i8 %501 to i32
  br label %514

; <label>:503                                     ; preds = %486
  %504 = load %union.rec*, %union.rec** @zz_hold, align 8
  %505 = bitcast %union.rec* %504 to %struct.word_type*
  %506 = getelementptr inbounds %struct.word_type, %struct.word_type* %505, i32 0, i32 1
  %507 = bitcast %union.FIRST_UNION* %506 to %struct.anon*
  %508 = getelementptr inbounds %struct.anon, %struct.anon* %507, i32 0, i32 0
  %509 = load i8, i8* %508, align 1
  %510 = zext i8 %509 to i64
  %511 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %510
  %512 = load i8, i8* %511, align 1
  %513 = zext i8 %512 to i32
  br label %514

; <label>:514                                     ; preds = %503, %495
  %515 = phi i32 [ %502, %495 ], [ %513, %503 ]
  store i32 %515, i32* @zz_size, align 4
  %516 = load i32, i32* @zz_size, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %517
  %519 = load %union.rec*, %union.rec** %518, align 8
  %520 = load %union.rec*, %union.rec** @zz_hold, align 8
  %521 = bitcast %union.rec* %520 to %struct.word_type*
  %522 = getelementptr inbounds %struct.word_type, %struct.word_type* %521, i32 0, i32 0
  %523 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %522, i32 0, i64 0
  %524 = getelementptr inbounds %struct.LIST, %struct.LIST* %523, i32 0, i32 0
  store %union.rec* %519, %union.rec** %524, align 8
  %525 = load %union.rec*, %union.rec** @zz_hold, align 8
  %526 = load i32, i32* @zz_size, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %527
  store %union.rec* %525, %union.rec** %528, align 8
  %529 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %529, %union.rec** %1, align 8
  %530 = load i32*, i32** %3, align 8
  store i32 1, i32* %530, align 4
  br label %655

; <label>:531                                     ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  br label %655

; <label>:532                                     ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  %533 = load %union.rec*, %union.rec** %1, align 8
  %534 = bitcast %union.rec* %533 to %struct.word_type*
  %535 = getelementptr inbounds %struct.word_type, %struct.word_type* %534, i32 0, i32 0
  %536 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %535, i32 0, i64 0
  %537 = getelementptr inbounds %struct.LIST, %struct.LIST* %536, i32 0, i32 0
  %538 = load %union.rec*, %union.rec** %537, align 8
  %539 = bitcast %union.rec* %538 to %struct.word_type*
  %540 = getelementptr inbounds %struct.word_type, %struct.word_type* %539, i32 0, i32 0
  %541 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %540, i32 0, i64 1
  %542 = getelementptr inbounds %struct.LIST, %struct.LIST* %541, i32 0, i32 0
  %543 = load %union.rec*, %union.rec** %542, align 8
  store %union.rec* %543, %union.rec** %y, align 8
  br label %544

; <label>:544                                     ; preds = %554, %532
  %545 = load %union.rec*, %union.rec** %y, align 8
  %546 = bitcast %union.rec* %545 to %struct.word_type*
  %547 = getelementptr inbounds %struct.word_type, %struct.word_type* %546, i32 0, i32 1
  %548 = bitcast %union.FIRST_UNION* %547 to %struct.anon*
  %549 = getelementptr inbounds %struct.anon, %struct.anon* %548, i32 0, i32 0
  %550 = load i8, i8* %549, align 1
  %551 = zext i8 %550 to i32
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %553, label %561

; <label>:553                                     ; preds = %544
  br label %554

; <label>:554                                     ; preds = %553
  %555 = load %union.rec*, %union.rec** %y, align 8
  %556 = bitcast %union.rec* %555 to %struct.word_type*
  %557 = getelementptr inbounds %struct.word_type, %struct.word_type* %556, i32 0, i32 0
  %558 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %557, i32 0, i64 1
  %559 = getelementptr inbounds %struct.LIST, %struct.LIST* %558, i32 0, i32 0
  %560 = load %union.rec*, %union.rec** %559, align 8
  store %union.rec* %560, %union.rec** %y, align 8
  br label %544

; <label>:561                                     ; preds = %544
  %562 = load %union.rec*, %union.rec** %y, align 8
  %563 = load i32, i32* %2, align 4
  %564 = load i32*, i32** %3, align 8
  %565 = call %union.rec* @Next(%union.rec* %562, i32 %563, i32* %564)
  store %union.rec* %565, %union.rec** %y, align 8
  br label %655

; <label>:566                                     ; preds = %0, %0, %0, %0, %0
  %567 = load %union.rec*, %union.rec** %1, align 8
  %568 = bitcast %union.rec* %567 to %struct.word_type*
  %569 = getelementptr inbounds %struct.word_type, %struct.word_type* %568, i32 0, i32 0
  %570 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %569, i32 0, i64 0
  %571 = getelementptr inbounds %struct.LIST, %struct.LIST* %570, i32 0, i32 0
  %572 = load %union.rec*, %union.rec** %571, align 8
  store %union.rec* %572, %union.rec** %link, align 8
  br label %573

; <label>:573                                     ; preds = %642, %626, %566
  %574 = load %union.rec*, %union.rec** %link, align 8
  %575 = load %union.rec*, %union.rec** %1, align 8
  %576 = icmp ne %union.rec* %574, %575
  br i1 %576, label %577, label %582

; <label>:577                                     ; preds = %573
  %578 = load i32*, i32** %3, align 8
  %579 = load i32, i32* %578, align 4
  %580 = icmp ne i32 %579, 0
  %581 = xor i1 %580, true
  br label %582

; <label>:582                                     ; preds = %577, %573
  %583 = phi i1 [ false, %573 ], [ %581, %577 ]
  br i1 %583, label %584, label %643

; <label>:584                                     ; preds = %582
  %585 = load %union.rec*, %union.rec** %link, align 8
  %586 = bitcast %union.rec* %585 to %struct.word_type*
  %587 = getelementptr inbounds %struct.word_type, %struct.word_type* %586, i32 0, i32 0
  %588 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %587, i32 0, i64 1
  %589 = getelementptr inbounds %struct.LIST, %struct.LIST* %588, i32 0, i32 0
  %590 = load %union.rec*, %union.rec** %589, align 8
  store %union.rec* %590, %union.rec** %y, align 8
  br label %591

; <label>:591                                     ; preds = %601, %584
  %592 = load %union.rec*, %union.rec** %y, align 8
  %593 = bitcast %union.rec* %592 to %struct.word_type*
  %594 = getelementptr inbounds %struct.word_type, %struct.word_type* %593, i32 0, i32 1
  %595 = bitcast %union.FIRST_UNION* %594 to %struct.anon*
  %596 = getelementptr inbounds %struct.anon, %struct.anon* %595, i32 0, i32 0
  %597 = load i8, i8* %596, align 1
  %598 = zext i8 %597 to i32
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %600, label %608

; <label>:600                                     ; preds = %591
  br label %601

; <label>:601                                     ; preds = %600
  %602 = load %union.rec*, %union.rec** %y, align 8
  %603 = bitcast %union.rec* %602 to %struct.word_type*
  %604 = getelementptr inbounds %struct.word_type, %struct.word_type* %603, i32 0, i32 0
  %605 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %604, i32 0, i64 1
  %606 = getelementptr inbounds %struct.LIST, %struct.LIST* %605, i32 0, i32 0
  %607 = load %union.rec*, %union.rec** %606, align 8
  store %union.rec* %607, %union.rec** %y, align 8
  br label %591

; <label>:608                                     ; preds = %591
  %609 = load %union.rec*, %union.rec** %y, align 8
  %610 = bitcast %union.rec* %609 to %struct.word_type*
  %611 = getelementptr inbounds %struct.word_type, %struct.word_type* %610, i32 0, i32 1
  %612 = bitcast %union.FIRST_UNION* %611 to %struct.anon*
  %613 = getelementptr inbounds %struct.anon, %struct.anon* %612, i32 0, i32 0
  %614 = load i8, i8* %613, align 1
  %615 = zext i8 %614 to i32
  %616 = icmp sge i32 %615, 119
  br i1 %616, label %617, label %627

; <label>:617                                     ; preds = %608
  %618 = load %union.rec*, %union.rec** %y, align 8
  %619 = bitcast %union.rec* %618 to %struct.word_type*
  %620 = getelementptr inbounds %struct.word_type, %struct.word_type* %619, i32 0, i32 1
  %621 = bitcast %union.FIRST_UNION* %620 to %struct.anon*
  %622 = getelementptr inbounds %struct.anon, %struct.anon* %621, i32 0, i32 0
  %623 = load i8, i8* %622, align 1
  %624 = zext i8 %623 to i32
  %625 = icmp sle i32 %624, 138
  br i1 %625, label %626, label %627

; <label>:626                                     ; preds = %617
  br label %573

; <label>:627                                     ; preds = %617, %608
  %628 = load %union.rec*, %union.rec** %y, align 8
  %629 = load i32, i32* %2, align 4
  %630 = load i32*, i32** %3, align 8
  %631 = call %union.rec* @Next(%union.rec* %628, i32 %629, i32* %630)
  store %union.rec* %631, %union.rec** %y, align 8
  %632 = load i32*, i32** %3, align 8
  %633 = load i32, i32* %632, align 4
  %634 = icmp ne i32 %633, 0
  br i1 %634, label %642, label %635

; <label>:635                                     ; preds = %627
  %636 = load %union.rec*, %union.rec** %link, align 8
  %637 = bitcast %union.rec* %636 to %struct.word_type*
  %638 = getelementptr inbounds %struct.word_type, %struct.word_type* %637, i32 0, i32 0
  %639 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %638, i32 0, i64 0
  %640 = getelementptr inbounds %struct.LIST, %struct.LIST* %639, i32 0, i32 0
  %641 = load %union.rec*, %union.rec** %640, align 8
  store %union.rec* %641, %union.rec** %link, align 8
  br label %642

; <label>:642                                     ; preds = %635, %627
  br label %573

; <label>:643                                     ; preds = %582
  br label %655

; <label>:644                                     ; preds = %0
  %645 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %646 = load %union.rec*, %union.rec** %1, align 8
  %647 = bitcast %union.rec* %646 to %struct.word_type*
  %648 = getelementptr inbounds %struct.word_type, %struct.word_type* %647, i32 0, i32 1
  %649 = bitcast %union.FIRST_UNION* %648 to %struct.anon*
  %650 = getelementptr inbounds %struct.anon, %struct.anon* %649, i32 0, i32 0
  %651 = load i8, i8* %650, align 1
  %652 = zext i8 %651 to i32
  %653 = call i8* @Image(i32 %652)
  %654 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 0, %struct.FILE_POS* %645, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* %653)
  br label %655

; <label>:655                                     ; preds = %644, %643, %561, %531, %514, %55
  %656 = load %union.rec*, %union.rec** %1, align 8
  ret %union.rec* %656
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

declare i8* @StringInt(i32) #3

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #3

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #3

declare i8* @Image(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
