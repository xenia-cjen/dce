; ModuleID = 'z29.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { %union.rec*, %union.rec* }
%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.14, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.2 }
%struct.anon.2 = type { i32 }
%union.THIRD_UNION = type { %struct._IO_FILE*, [8 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.11, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.11 = type { %struct.GAP }
%union.anon.14 = type { %union.rec* }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.anon.0 = type { i8, i8, i32 }
%struct.anon.6 = type { i8, [3 x i8] }
%struct.anon.1 = type { i8, i8, i8 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.13 }
%union.anon.13 = type { %union.rec* }

@scope_top = internal global i32 0, align 4
@suppress_scope = internal global i32 0, align 4
@suppress_visible = internal global i32 0, align 4
@symtab = internal global [1783 x %struct.anon] zeroinitializer, align 16
@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"PushScope: suppress_scope!\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"scope depth limit exceeded\00", align 1
@scope = internal global [300 x %union.rec*] zeroinitializer, align 16
@npars_only = internal global [300 x i32] zeroinitializer, align 16
@vis_only = internal global [300 x i32] zeroinitializer, align 16
@body_ok = internal global [300 x i32] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [41 x i8] c"PopScope: tried to pop empty scope stack\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"PopScope: suppress_scope!\00", align 1
@StartSym = external global %union.rec*, align 8
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"LoadScopeSnapshot: type(ss)!\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"LoadScopeSnapshot: type(x)!\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"invalid symbol name %s\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"@Target\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"@Tag\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"@Optimize\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"@Key\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"@Merge\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"@Enclose\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"@Filter\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"%s must be a local definition\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"%s must lie within a symbol with a right parameter\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"a body parameter may not be named %s\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"the right parameter of a galley may not be called %s\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"symbol %s previously defined at%s\00", align 1
@AltErrorFormat = external global i32, align 4
@.str.21 = private unnamed_addr constant [34 x i8] c"symbol %s previously defined here\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"symbol name %s previously defined at%s\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"@Include\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"@SysInclude\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"<nilobj>\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"SymName: !is_word(type(p))!\00", align 1
@FullSymName.buff = internal global [512 x i8] zeroinitializer, align 16
@FullSymName.sname = internal global i8* null, align 8
@.str.27 = private unnamed_addr constant [37 x i8] c"FullSymName: enclosing(x) == nilobj!\00", align 1
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"full name of symbol is too long\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"symbol %s has missing %s\00", align 1
@.str.31 = private unnamed_addr constant [56 x i8] c"symbol %s has erroneous code %c (database out of date?)\00", align 1

; Function Attrs: nounwind uwtable
define void @InitSym() #0 {
  %i = alloca i32, align 4
  store i32 0, i32* @scope_top, align 4
  store i32 0, i32* @suppress_scope, align 4
  store i32 0, i32* @suppress_visible, align 4
  store i32 0, i32* %i, align 4
  br label %1

; <label>:1                                       ; preds = %17, %0
  %2 = load i32, i32* %i, align 4
  %3 = icmp slt i32 %2, 1783
  br i1 %3, label %4, label %20

; <label>:4                                       ; preds = %1
  %5 = load i32, i32* %i, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [1783 x %struct.anon], [1783 x %struct.anon]* @symtab, i32 0, i64 %6
  %8 = bitcast %struct.anon* %7 to %union.rec*
  %9 = load i32, i32* %i, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [1783 x %struct.anon], [1783 x %struct.anon]* @symtab, i32 0, i64 %10
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  store %union.rec* %8, %union.rec** %12, align 8
  %13 = load i32, i32* %i, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [1783 x %struct.anon], [1783 x %struct.anon]* @symtab, i32 0, i64 %14
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 0
  store %union.rec* %8, %union.rec** %16, align 8
  br label %17

; <label>:17                                      ; preds = %4
  %18 = load i32, i32* %i, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %i, align 4
  br label %1

; <label>:20                                      ; preds = %1
  ret void
}

; Function Attrs: nounwind uwtable
define void @PushScope(%union.rec* %x, i32 %npars, i32 %vis) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %union.rec* %x, %union.rec** %1, align 8
  store i32 %npars, i32* %2, align 4
  store i32 %vis, i32* %3, align 4
  %4 = load i32, i32* @suppress_scope, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %8 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %6, %0
  %10 = load i32, i32* @scope_top, align 4
  %11 = icmp sge i32 %10, 300
  br i1 %11, label %12, label %18

; <label>:12                                      ; preds = %9
  %13 = load %union.rec*, %union.rec** %1, align 8
  %14 = bitcast %union.rec* %13 to %struct.word_type*
  %15 = getelementptr inbounds %struct.word_type, %struct.word_type* %14, i32 0, i32 1
  %16 = bitcast %union.FIRST_UNION* %15 to %struct.FILE_POS*
  %17 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i32 0, %struct.FILE_POS* %16)
  br label %18

; <label>:18                                      ; preds = %12, %9
  %19 = load %union.rec*, %union.rec** %1, align 8
  %20 = load i32, i32* @scope_top, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [300 x %union.rec*], [300 x %union.rec*]* @scope, i32 0, i64 %21
  store %union.rec* %19, %union.rec** %22, align 8
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @scope_top, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [300 x i32], [300 x i32]* @npars_only, i32 0, i64 %25
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @scope_top, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [300 x i32], [300 x i32]* @vis_only, i32 0, i64 %29
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @scope_top, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [300 x i32], [300 x i32]* @body_ok, i32 0, i64 %32
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* @scope_top, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @scope_top, align 4
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind uwtable
define void @PopScope() #0 {
  %1 = load i32, i32* @scope_top, align 4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %6, label %3

; <label>:3                                       ; preds = %0
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0))
  br label %6

; <label>:6                                       ; preds = %3, %0
  %7 = load i32, i32* @suppress_scope, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

; <label>:9                                       ; preds = %6
  %10 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %11 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %12

; <label>:12                                      ; preds = %9, %6
  %13 = load i32, i32* @scope_top, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* @scope_top, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @SuppressVisible() #0 {
  store i32 1, i32* @suppress_visible, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @UnSuppressVisible() #0 {
  store i32 0, i32* @suppress_visible, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @SuppressScope() #0 {
  store i32 1, i32* @suppress_scope, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @UnSuppressScope() #0 {
  store i32 0, i32* @suppress_scope, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @SwitchScope(%union.rec* %sym) #0 {
  %1 = alloca %union.rec*, align 8
  %i = alloca i32, align 4
  %new_scopes = alloca [300 x %union.rec*], align 16
  store %union.rec* %sym, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = icmp eq %union.rec* %2, null
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = load %union.rec*, %union.rec** @StartSym, align 8
  call void @PushScope(%union.rec* %5, i32 0, i32 0)
  br label %35

; <label>:6                                       ; preds = %0
  store i32 0, i32* %i, align 4
  br label %7

; <label>:7                                       ; preds = %11, %6
  %8 = load %union.rec*, %union.rec** %1, align 8
  %9 = load %union.rec*, %union.rec** @StartSym, align 8
  %10 = icmp ne %union.rec* %8, %9
  br i1 %10, label %11, label %24

; <label>:11                                      ; preds = %7
  %12 = load %union.rec*, %union.rec** %1, align 8
  %13 = bitcast %union.rec* %12 to %struct.symbol_type*
  %14 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %13, i32 0, i32 3
  %15 = load %union.rec*, %union.rec** %14, align 8
  %16 = load i32, i32* %i, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %i, align 4
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds [300 x %union.rec*], [300 x %union.rec*]* %new_scopes, i32 0, i64 %18
  store %union.rec* %15, %union.rec** %19, align 8
  %20 = load %union.rec*, %union.rec** %1, align 8
  %21 = bitcast %union.rec* %20 to %struct.symbol_type*
  %22 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %21, i32 0, i32 3
  %23 = load %union.rec*, %union.rec** %22, align 8
  store %union.rec* %23, %union.rec** %1, align 8
  br label %7

; <label>:24                                      ; preds = %7
  br label %25

; <label>:25                                      ; preds = %28, %24
  %26 = load i32, i32* %i, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %34

; <label>:28                                      ; preds = %25
  %29 = load i32, i32* %i, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %i, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [300 x %union.rec*], [300 x %union.rec*]* %new_scopes, i32 0, i64 %31
  %33 = load %union.rec*, %union.rec** %32, align 8
  call void @PushScope(%union.rec* %33, i32 0, i32 0)
  br label %25

; <label>:34                                      ; preds = %25
  br label %35

; <label>:35                                      ; preds = %34, %4
  ret void
}

; Function Attrs: nounwind uwtable
define void @UnSwitchScope(%union.rec* %sym) #0 {
  %1 = alloca %union.rec*, align 8
  store %union.rec* %sym, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = icmp eq %union.rec* %2, null
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  call void @PopScope()
  br label %16

; <label>:5                                       ; preds = %0
  br label %6

; <label>:6                                       ; preds = %10, %5
  %7 = load %union.rec*, %union.rec** %1, align 8
  %8 = load %union.rec*, %union.rec** @StartSym, align 8
  %9 = icmp ne %union.rec* %7, %8
  br i1 %9, label %10, label %15

; <label>:10                                      ; preds = %6
  call void @PopScope()
  %11 = load %union.rec*, %union.rec** %1, align 8
  %12 = bitcast %union.rec* %11 to %struct.symbol_type*
  %13 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %12, i32 0, i32 3
  %14 = load %union.rec*, %union.rec** %13, align 8
  store %union.rec* %14, %union.rec** %1, align 8
  br label %6

; <label>:15                                      ; preds = %6
  br label %16

; <label>:16                                      ; preds = %15, %4
  ret void
}

; Function Attrs: nounwind uwtable
define void @BodyParAllowed() #0 {
  %1 = load i32, i32* @scope_top, align 4
  %2 = sub nsw i32 %1, 1
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [300 x i32], [300 x i32]* @body_ok, i32 0, i64 %3
  store i32 1, i32* %4, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @BodyParNotAllowed() #0 {
  %1 = load i32, i32* @scope_top, align 4
  %2 = sub nsw i32 %1, 1
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [300 x i32], [300 x i32]* @body_ok, i32 0, i64 %3
  store i32 0, i32* %4, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @DebugScope() #0 {
  %i = alloca i32, align 4
  %1 = load i32, i32* @suppress_scope, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  br label %14

; <label>:4                                       ; preds = %0
  store i32 0, i32* %i, align 4
  br label %5

; <label>:5                                       ; preds = %10, %4
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* @scope_top, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %13

; <label>:9                                       ; preds = %5
  br label %10

; <label>:10                                      ; preds = %9
  %11 = load i32, i32* %i, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %i, align 4
  br label %5

; <label>:13                                      ; preds = %5
  br label %14

; <label>:14                                      ; preds = %13, %3
  ret void
}

; Function Attrs: nounwind uwtable
define %union.rec* @GetScopeSnapshot() #0 {
  %ss = alloca %union.rec*, align 8
  %x = alloca %union.rec*, align 8
  %i = alloca i32, align 4
  %1 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %2 = zext i8 %1 to i32
  store i32 %2, i32* @zz_size, align 4
  %3 = sext i32 %2 to i64
  %4 = icmp uge i64 %3, 265
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %6)
  br label %33

; <label>:8                                       ; preds = %0
  %9 = load i32, i32* @zz_size, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %10
  %12 = load %union.rec*, %union.rec** %11, align 8
  %13 = icmp eq %union.rec* %12, null
  br i1 %13, label %14, label %18

; <label>:14                                      ; preds = %8
  %15 = load i32, i32* @zz_size, align 4
  %16 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %17 = call %union.rec* @GetMemory(i32 %15, %struct.FILE_POS* %16)
  store %union.rec* %17, %union.rec** @zz_hold, align 8
  br label %32

; <label>:18                                      ; preds = %8
  %19 = load i32, i32* @zz_size, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %20
  %22 = load %union.rec*, %union.rec** %21, align 8
  store %union.rec* %22, %union.rec** @zz_hold, align 8
  store %union.rec* %22, %union.rec** @zz_hold, align 8
  %23 = load %union.rec*, %union.rec** @zz_hold, align 8
  %24 = bitcast %union.rec* %23 to %struct.word_type*
  %25 = getelementptr inbounds %struct.word_type, %struct.word_type* %24, i32 0, i32 0
  %26 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %25, i32 0, i64 0
  %27 = getelementptr inbounds %struct.LIST, %struct.LIST* %26, i32 0, i32 0
  %28 = load %union.rec*, %union.rec** %27, align 8
  %29 = load i32, i32* @zz_size, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %30
  store %union.rec* %28, %union.rec** %31, align 8
  br label %32

; <label>:32                                      ; preds = %18, %14
  br label %33

; <label>:33                                      ; preds = %32, %5
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  %35 = bitcast %union.rec* %34 to %struct.word_type*
  %36 = getelementptr inbounds %struct.word_type, %struct.word_type* %35, i32 0, i32 1
  %37 = bitcast %union.FIRST_UNION* %36 to %struct.anon.0*
  %38 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %37, i32 0, i32 0
  store i8 17, i8* %38, align 1
  %39 = load %union.rec*, %union.rec** @zz_hold, align 8
  %40 = load %union.rec*, %union.rec** @zz_hold, align 8
  %41 = bitcast %union.rec* %40 to %struct.word_type*
  %42 = getelementptr inbounds %struct.word_type, %struct.word_type* %41, i32 0, i32 0
  %43 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %42, i32 0, i64 1
  %44 = getelementptr inbounds %struct.LIST, %struct.LIST* %43, i32 0, i32 1
  store %union.rec* %39, %union.rec** %44, align 8
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  %46 = bitcast %union.rec* %45 to %struct.word_type*
  %47 = getelementptr inbounds %struct.word_type, %struct.word_type* %46, i32 0, i32 0
  %48 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %47, i32 0, i64 1
  %49 = getelementptr inbounds %struct.LIST, %struct.LIST* %48, i32 0, i32 0
  store %union.rec* %39, %union.rec** %49, align 8
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %51 = bitcast %union.rec* %50 to %struct.word_type*
  %52 = getelementptr inbounds %struct.word_type, %struct.word_type* %51, i32 0, i32 0
  %53 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %52, i32 0, i64 0
  %54 = getelementptr inbounds %struct.LIST, %struct.LIST* %53, i32 0, i32 1
  store %union.rec* %39, %union.rec** %54, align 8
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %56 = bitcast %union.rec* %55 to %struct.word_type*
  %57 = getelementptr inbounds %struct.word_type, %struct.word_type* %56, i32 0, i32 0
  %58 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %57, i32 0, i64 0
  %59 = getelementptr inbounds %struct.LIST, %struct.LIST* %58, i32 0, i32 0
  store %union.rec* %39, %union.rec** %59, align 8
  store %union.rec* %39, %union.rec** %ss, align 8
  %60 = load i32, i32* @scope_top, align 4
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %i, align 4
  br label %62

; <label>:62                                      ; preds = %515, %33
  %63 = load i32, i32* %i, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [300 x %union.rec*], [300 x %union.rec*]* @scope, i32 0, i64 %64
  %66 = load %union.rec*, %union.rec** %65, align 8
  %67 = load %union.rec*, %union.rec** @StartSym, align 8
  %68 = icmp ne %union.rec* %66, %67
  br i1 %68, label %69, label %518

; <label>:69                                      ; preds = %62
  %70 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 149), align 1
  %71 = zext i8 %70 to i32
  store i32 %71, i32* @zz_size, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp uge i64 %72, 265
  br i1 %73, label %74, label %77

; <label>:74                                      ; preds = %69
  %75 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %76 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %75)
  br label %102

; <label>:77                                      ; preds = %69
  %78 = load i32, i32* @zz_size, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %79
  %81 = load %union.rec*, %union.rec** %80, align 8
  %82 = icmp eq %union.rec* %81, null
  br i1 %82, label %83, label %87

; <label>:83                                      ; preds = %77
  %84 = load i32, i32* @zz_size, align 4
  %85 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %86 = call %union.rec* @GetMemory(i32 %84, %struct.FILE_POS* %85)
  store %union.rec* %86, %union.rec** @zz_hold, align 8
  br label %101

; <label>:87                                      ; preds = %77
  %88 = load i32, i32* @zz_size, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %89
  %91 = load %union.rec*, %union.rec** %90, align 8
  store %union.rec* %91, %union.rec** @zz_hold, align 8
  store %union.rec* %91, %union.rec** @zz_hold, align 8
  %92 = load %union.rec*, %union.rec** @zz_hold, align 8
  %93 = bitcast %union.rec* %92 to %struct.word_type*
  %94 = getelementptr inbounds %struct.word_type, %struct.word_type* %93, i32 0, i32 0
  %95 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %94, i32 0, i64 0
  %96 = getelementptr inbounds %struct.LIST, %struct.LIST* %95, i32 0, i32 0
  %97 = load %union.rec*, %union.rec** %96, align 8
  %98 = load i32, i32* @zz_size, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %99
  store %union.rec* %97, %union.rec** %100, align 8
  br label %101

; <label>:101                                     ; preds = %87, %83
  br label %102

; <label>:102                                     ; preds = %101, %74
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %104 = bitcast %union.rec* %103 to %struct.word_type*
  %105 = getelementptr inbounds %struct.word_type, %struct.word_type* %104, i32 0, i32 1
  %106 = bitcast %union.FIRST_UNION* %105 to %struct.anon.0*
  %107 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %106, i32 0, i32 0
  store i8 -107, i8* %107, align 1
  %108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %109 = load %union.rec*, %union.rec** @zz_hold, align 8
  %110 = bitcast %union.rec* %109 to %struct.word_type*
  %111 = getelementptr inbounds %struct.word_type, %struct.word_type* %110, i32 0, i32 0
  %112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %111, i32 0, i64 1
  %113 = getelementptr inbounds %struct.LIST, %struct.LIST* %112, i32 0, i32 1
  store %union.rec* %108, %union.rec** %113, align 8
  %114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %115 = bitcast %union.rec* %114 to %struct.word_type*
  %116 = getelementptr inbounds %struct.word_type, %struct.word_type* %115, i32 0, i32 0
  %117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %116, i32 0, i64 1
  %118 = getelementptr inbounds %struct.LIST, %struct.LIST* %117, i32 0, i32 0
  store %union.rec* %108, %union.rec** %118, align 8
  %119 = load %union.rec*, %union.rec** @zz_hold, align 8
  %120 = bitcast %union.rec* %119 to %struct.word_type*
  %121 = getelementptr inbounds %struct.word_type, %struct.word_type* %120, i32 0, i32 0
  %122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %121, i32 0, i64 0
  %123 = getelementptr inbounds %struct.LIST, %struct.LIST* %122, i32 0, i32 1
  store %union.rec* %108, %union.rec** %123, align 8
  %124 = load %union.rec*, %union.rec** @zz_hold, align 8
  %125 = bitcast %union.rec* %124 to %struct.word_type*
  %126 = getelementptr inbounds %struct.word_type, %struct.word_type* %125, i32 0, i32 0
  %127 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %126, i32 0, i64 0
  %128 = getelementptr inbounds %struct.LIST, %struct.LIST* %127, i32 0, i32 0
  store %union.rec* %108, %union.rec** %128, align 8
  store %union.rec* %108, %union.rec** %x, align 8
  %129 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %130 = zext i8 %129 to i32
  store i32 %130, i32* @zz_size, align 4
  %131 = sext i32 %130 to i64
  %132 = icmp uge i64 %131, 265
  br i1 %132, label %133, label %136

; <label>:133                                     ; preds = %102
  %134 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %135 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %134)
  br label %161

; <label>:136                                     ; preds = %102
  %137 = load i32, i32* @zz_size, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %138
  %140 = load %union.rec*, %union.rec** %139, align 8
  %141 = icmp eq %union.rec* %140, null
  br i1 %141, label %142, label %146

; <label>:142                                     ; preds = %136
  %143 = load i32, i32* @zz_size, align 4
  %144 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %145 = call %union.rec* @GetMemory(i32 %143, %struct.FILE_POS* %144)
  store %union.rec* %145, %union.rec** @zz_hold, align 8
  br label %160

; <label>:146                                     ; preds = %136
  %147 = load i32, i32* @zz_size, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %148
  %150 = load %union.rec*, %union.rec** %149, align 8
  store %union.rec* %150, %union.rec** @zz_hold, align 8
  store %union.rec* %150, %union.rec** @zz_hold, align 8
  %151 = load %union.rec*, %union.rec** @zz_hold, align 8
  %152 = bitcast %union.rec* %151 to %struct.word_type*
  %153 = getelementptr inbounds %struct.word_type, %struct.word_type* %152, i32 0, i32 0
  %154 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %153, i32 0, i64 0
  %155 = getelementptr inbounds %struct.LIST, %struct.LIST* %154, i32 0, i32 0
  %156 = load %union.rec*, %union.rec** %155, align 8
  %157 = load i32, i32* @zz_size, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %158
  store %union.rec* %156, %union.rec** %159, align 8
  br label %160

; <label>:160                                     ; preds = %146, %142
  br label %161

; <label>:161                                     ; preds = %160, %133
  %162 = load %union.rec*, %union.rec** @zz_hold, align 8
  %163 = bitcast %union.rec* %162 to %struct.word_type*
  %164 = getelementptr inbounds %struct.word_type, %struct.word_type* %163, i32 0, i32 1
  %165 = bitcast %union.FIRST_UNION* %164 to %struct.anon.0*
  %166 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %165, i32 0, i32 0
  store i8 0, i8* %166, align 1
  %167 = load %union.rec*, %union.rec** @zz_hold, align 8
  %168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %169 = bitcast %union.rec* %168 to %struct.word_type*
  %170 = getelementptr inbounds %struct.word_type, %struct.word_type* %169, i32 0, i32 0
  %171 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %170, i32 0, i64 1
  %172 = getelementptr inbounds %struct.LIST, %struct.LIST* %171, i32 0, i32 1
  store %union.rec* %167, %union.rec** %172, align 8
  %173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %174 = bitcast %union.rec* %173 to %struct.word_type*
  %175 = getelementptr inbounds %struct.word_type, %struct.word_type* %174, i32 0, i32 0
  %176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %175, i32 0, i64 1
  %177 = getelementptr inbounds %struct.LIST, %struct.LIST* %176, i32 0, i32 0
  store %union.rec* %167, %union.rec** %177, align 8
  %178 = load %union.rec*, %union.rec** @zz_hold, align 8
  %179 = bitcast %union.rec* %178 to %struct.word_type*
  %180 = getelementptr inbounds %struct.word_type, %struct.word_type* %179, i32 0, i32 0
  %181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %180, i32 0, i64 0
  %182 = getelementptr inbounds %struct.LIST, %struct.LIST* %181, i32 0, i32 1
  store %union.rec* %167, %union.rec** %182, align 8
  %183 = load %union.rec*, %union.rec** @zz_hold, align 8
  %184 = bitcast %union.rec* %183 to %struct.word_type*
  %185 = getelementptr inbounds %struct.word_type, %struct.word_type* %184, i32 0, i32 0
  %186 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %185, i32 0, i64 0
  %187 = getelementptr inbounds %struct.LIST, %struct.LIST* %186, i32 0, i32 0
  store %union.rec* %167, %union.rec** %187, align 8
  store %union.rec* %167, %union.rec** @xx_link, align 8
  %188 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %188, %union.rec** @zz_res, align 8
  %189 = load %union.rec*, %union.rec** %ss, align 8
  store %union.rec* %189, %union.rec** @zz_hold, align 8
  %190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %191 = icmp eq %union.rec* %190, null
  br i1 %191, label %192, label %194

; <label>:192                                     ; preds = %161
  %193 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %242

; <label>:194                                     ; preds = %161
  %195 = load %union.rec*, %union.rec** @zz_res, align 8
  %196 = icmp eq %union.rec* %195, null
  br i1 %196, label %197, label %199

; <label>:197                                     ; preds = %194
  %198 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %240

; <label>:199                                     ; preds = %194
  %200 = load %union.rec*, %union.rec** @zz_hold, align 8
  %201 = bitcast %union.rec* %200 to %struct.word_type*
  %202 = getelementptr inbounds %struct.word_type, %struct.word_type* %201, i32 0, i32 0
  %203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %202, i32 0, i64 0
  %204 = getelementptr inbounds %struct.LIST, %struct.LIST* %203, i32 0, i32 0
  %205 = load %union.rec*, %union.rec** %204, align 8
  store %union.rec* %205, %union.rec** @zz_tmp, align 8
  %206 = load %union.rec*, %union.rec** @zz_res, align 8
  %207 = bitcast %union.rec* %206 to %struct.word_type*
  %208 = getelementptr inbounds %struct.word_type, %struct.word_type* %207, i32 0, i32 0
  %209 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %208, i32 0, i64 0
  %210 = getelementptr inbounds %struct.LIST, %struct.LIST* %209, i32 0, i32 0
  %211 = load %union.rec*, %union.rec** %210, align 8
  %212 = load %union.rec*, %union.rec** @zz_hold, align 8
  %213 = bitcast %union.rec* %212 to %struct.word_type*
  %214 = getelementptr inbounds %struct.word_type, %struct.word_type* %213, i32 0, i32 0
  %215 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %214, i32 0, i64 0
  %216 = getelementptr inbounds %struct.LIST, %struct.LIST* %215, i32 0, i32 0
  store %union.rec* %211, %union.rec** %216, align 8
  %217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %218 = load %union.rec*, %union.rec** @zz_res, align 8
  %219 = bitcast %union.rec* %218 to %struct.word_type*
  %220 = getelementptr inbounds %struct.word_type, %struct.word_type* %219, i32 0, i32 0
  %221 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %220, i32 0, i64 0
  %222 = getelementptr inbounds %struct.LIST, %struct.LIST* %221, i32 0, i32 0
  %223 = load %union.rec*, %union.rec** %222, align 8
  %224 = bitcast %union.rec* %223 to %struct.word_type*
  %225 = getelementptr inbounds %struct.word_type, %struct.word_type* %224, i32 0, i32 0
  %226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %225, i32 0, i64 0
  %227 = getelementptr inbounds %struct.LIST, %struct.LIST* %226, i32 0, i32 1
  store %union.rec* %217, %union.rec** %227, align 8
  %228 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %229 = load %union.rec*, %union.rec** @zz_res, align 8
  %230 = bitcast %union.rec* %229 to %struct.word_type*
  %231 = getelementptr inbounds %struct.word_type, %struct.word_type* %230, i32 0, i32 0
  %232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %231, i32 0, i64 0
  %233 = getelementptr inbounds %struct.LIST, %struct.LIST* %232, i32 0, i32 0
  store %union.rec* %228, %union.rec** %233, align 8
  %234 = load %union.rec*, %union.rec** @zz_res, align 8
  %235 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %236 = bitcast %union.rec* %235 to %struct.word_type*
  %237 = getelementptr inbounds %struct.word_type, %struct.word_type* %236, i32 0, i32 0
  %238 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %237, i32 0, i64 0
  %239 = getelementptr inbounds %struct.LIST, %struct.LIST* %238, i32 0, i32 1
  store %union.rec* %234, %union.rec** %239, align 8
  br label %240

; <label>:240                                     ; preds = %199, %197
  %241 = phi %union.rec* [ %198, %197 ], [ %234, %199 ]
  br label %242

; <label>:242                                     ; preds = %240, %192
  %243 = phi %union.rec* [ %193, %192 ], [ %241, %240 ]
  %244 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %244, %union.rec** @zz_res, align 8
  %245 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %245, %union.rec** @zz_hold, align 8
  %246 = load %union.rec*, %union.rec** @zz_hold, align 8
  %247 = icmp eq %union.rec* %246, null
  br i1 %247, label %248, label %250

; <label>:248                                     ; preds = %242
  %249 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %298

; <label>:250                                     ; preds = %242
  %251 = load %union.rec*, %union.rec** @zz_res, align 8
  %252 = icmp eq %union.rec* %251, null
  br i1 %252, label %253, label %255

; <label>:253                                     ; preds = %250
  %254 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %296

; <label>:255                                     ; preds = %250
  %256 = load %union.rec*, %union.rec** @zz_hold, align 8
  %257 = bitcast %union.rec* %256 to %struct.word_type*
  %258 = getelementptr inbounds %struct.word_type, %struct.word_type* %257, i32 0, i32 0
  %259 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %258, i32 0, i64 1
  %260 = getelementptr inbounds %struct.LIST, %struct.LIST* %259, i32 0, i32 0
  %261 = load %union.rec*, %union.rec** %260, align 8
  store %union.rec* %261, %union.rec** @zz_tmp, align 8
  %262 = load %union.rec*, %union.rec** @zz_res, align 8
  %263 = bitcast %union.rec* %262 to %struct.word_type*
  %264 = getelementptr inbounds %struct.word_type, %struct.word_type* %263, i32 0, i32 0
  %265 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %264, i32 0, i64 1
  %266 = getelementptr inbounds %struct.LIST, %struct.LIST* %265, i32 0, i32 0
  %267 = load %union.rec*, %union.rec** %266, align 8
  %268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %269 = bitcast %union.rec* %268 to %struct.word_type*
  %270 = getelementptr inbounds %struct.word_type, %struct.word_type* %269, i32 0, i32 0
  %271 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %270, i32 0, i64 1
  %272 = getelementptr inbounds %struct.LIST, %struct.LIST* %271, i32 0, i32 0
  store %union.rec* %267, %union.rec** %272, align 8
  %273 = load %union.rec*, %union.rec** @zz_hold, align 8
  %274 = load %union.rec*, %union.rec** @zz_res, align 8
  %275 = bitcast %union.rec* %274 to %struct.word_type*
  %276 = getelementptr inbounds %struct.word_type, %struct.word_type* %275, i32 0, i32 0
  %277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %276, i32 0, i64 1
  %278 = getelementptr inbounds %struct.LIST, %struct.LIST* %277, i32 0, i32 0
  %279 = load %union.rec*, %union.rec** %278, align 8
  %280 = bitcast %union.rec* %279 to %struct.word_type*
  %281 = getelementptr inbounds %struct.word_type, %struct.word_type* %280, i32 0, i32 0
  %282 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %281, i32 0, i64 1
  %283 = getelementptr inbounds %struct.LIST, %struct.LIST* %282, i32 0, i32 1
  store %union.rec* %273, %union.rec** %283, align 8
  %284 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %285 = load %union.rec*, %union.rec** @zz_res, align 8
  %286 = bitcast %union.rec* %285 to %struct.word_type*
  %287 = getelementptr inbounds %struct.word_type, %struct.word_type* %286, i32 0, i32 0
  %288 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %287, i32 0, i64 1
  %289 = getelementptr inbounds %struct.LIST, %struct.LIST* %288, i32 0, i32 0
  store %union.rec* %284, %union.rec** %289, align 8
  %290 = load %union.rec*, %union.rec** @zz_res, align 8
  %291 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %292 = bitcast %union.rec* %291 to %struct.word_type*
  %293 = getelementptr inbounds %struct.word_type, %struct.word_type* %292, i32 0, i32 0
  %294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %293, i32 0, i64 1
  %295 = getelementptr inbounds %struct.LIST, %struct.LIST* %294, i32 0, i32 1
  store %union.rec* %290, %union.rec** %295, align 8
  br label %296

; <label>:296                                     ; preds = %255, %253
  %297 = phi %union.rec* [ %254, %253 ], [ %290, %255 ]
  br label %298

; <label>:298                                     ; preds = %296, %248
  %299 = phi %union.rec* [ %249, %248 ], [ %297, %296 ]
  %300 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %301 = zext i8 %300 to i32
  store i32 %301, i32* @zz_size, align 4
  %302 = sext i32 %301 to i64
  %303 = icmp uge i64 %302, 265
  br i1 %303, label %304, label %307

; <label>:304                                     ; preds = %298
  %305 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %306 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %305)
  br label %332

; <label>:307                                     ; preds = %298
  %308 = load i32, i32* @zz_size, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %309
  %311 = load %union.rec*, %union.rec** %310, align 8
  %312 = icmp eq %union.rec* %311, null
  br i1 %312, label %313, label %317

; <label>:313                                     ; preds = %307
  %314 = load i32, i32* @zz_size, align 4
  %315 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %316 = call %union.rec* @GetMemory(i32 %314, %struct.FILE_POS* %315)
  store %union.rec* %316, %union.rec** @zz_hold, align 8
  br label %331

; <label>:317                                     ; preds = %307
  %318 = load i32, i32* @zz_size, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %319
  %321 = load %union.rec*, %union.rec** %320, align 8
  store %union.rec* %321, %union.rec** @zz_hold, align 8
  store %union.rec* %321, %union.rec** @zz_hold, align 8
  %322 = load %union.rec*, %union.rec** @zz_hold, align 8
  %323 = bitcast %union.rec* %322 to %struct.word_type*
  %324 = getelementptr inbounds %struct.word_type, %struct.word_type* %323, i32 0, i32 0
  %325 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %324, i32 0, i64 0
  %326 = getelementptr inbounds %struct.LIST, %struct.LIST* %325, i32 0, i32 0
  %327 = load %union.rec*, %union.rec** %326, align 8
  %328 = load i32, i32* @zz_size, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %329
  store %union.rec* %327, %union.rec** %330, align 8
  br label %331

; <label>:331                                     ; preds = %317, %313
  br label %332

; <label>:332                                     ; preds = %331, %304
  %333 = load %union.rec*, %union.rec** @zz_hold, align 8
  %334 = bitcast %union.rec* %333 to %struct.word_type*
  %335 = getelementptr inbounds %struct.word_type, %struct.word_type* %334, i32 0, i32 1
  %336 = bitcast %union.FIRST_UNION* %335 to %struct.anon.0*
  %337 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %336, i32 0, i32 0
  store i8 0, i8* %337, align 1
  %338 = load %union.rec*, %union.rec** @zz_hold, align 8
  %339 = load %union.rec*, %union.rec** @zz_hold, align 8
  %340 = bitcast %union.rec* %339 to %struct.word_type*
  %341 = getelementptr inbounds %struct.word_type, %struct.word_type* %340, i32 0, i32 0
  %342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %341, i32 0, i64 1
  %343 = getelementptr inbounds %struct.LIST, %struct.LIST* %342, i32 0, i32 1
  store %union.rec* %338, %union.rec** %343, align 8
  %344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %345 = bitcast %union.rec* %344 to %struct.word_type*
  %346 = getelementptr inbounds %struct.word_type, %struct.word_type* %345, i32 0, i32 0
  %347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %346, i32 0, i64 1
  %348 = getelementptr inbounds %struct.LIST, %struct.LIST* %347, i32 0, i32 0
  store %union.rec* %338, %union.rec** %348, align 8
  %349 = load %union.rec*, %union.rec** @zz_hold, align 8
  %350 = bitcast %union.rec* %349 to %struct.word_type*
  %351 = getelementptr inbounds %struct.word_type, %struct.word_type* %350, i32 0, i32 0
  %352 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %351, i32 0, i64 0
  %353 = getelementptr inbounds %struct.LIST, %struct.LIST* %352, i32 0, i32 1
  store %union.rec* %338, %union.rec** %353, align 8
  %354 = load %union.rec*, %union.rec** @zz_hold, align 8
  %355 = bitcast %union.rec* %354 to %struct.word_type*
  %356 = getelementptr inbounds %struct.word_type, %struct.word_type* %355, i32 0, i32 0
  %357 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %356, i32 0, i64 0
  %358 = getelementptr inbounds %struct.LIST, %struct.LIST* %357, i32 0, i32 0
  store %union.rec* %338, %union.rec** %358, align 8
  store %union.rec* %338, %union.rec** @xx_link, align 8
  %359 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %359, %union.rec** @zz_res, align 8
  %360 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %360, %union.rec** @zz_hold, align 8
  %361 = load %union.rec*, %union.rec** @zz_hold, align 8
  %362 = icmp eq %union.rec* %361, null
  br i1 %362, label %363, label %365

; <label>:363                                     ; preds = %332
  %364 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %413

; <label>:365                                     ; preds = %332
  %366 = load %union.rec*, %union.rec** @zz_res, align 8
  %367 = icmp eq %union.rec* %366, null
  br i1 %367, label %368, label %370

; <label>:368                                     ; preds = %365
  %369 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %411

; <label>:370                                     ; preds = %365
  %371 = load %union.rec*, %union.rec** @zz_hold, align 8
  %372 = bitcast %union.rec* %371 to %struct.word_type*
  %373 = getelementptr inbounds %struct.word_type, %struct.word_type* %372, i32 0, i32 0
  %374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %373, i32 0, i64 0
  %375 = getelementptr inbounds %struct.LIST, %struct.LIST* %374, i32 0, i32 0
  %376 = load %union.rec*, %union.rec** %375, align 8
  store %union.rec* %376, %union.rec** @zz_tmp, align 8
  %377 = load %union.rec*, %union.rec** @zz_res, align 8
  %378 = bitcast %union.rec* %377 to %struct.word_type*
  %379 = getelementptr inbounds %struct.word_type, %struct.word_type* %378, i32 0, i32 0
  %380 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %379, i32 0, i64 0
  %381 = getelementptr inbounds %struct.LIST, %struct.LIST* %380, i32 0, i32 0
  %382 = load %union.rec*, %union.rec** %381, align 8
  %383 = load %union.rec*, %union.rec** @zz_hold, align 8
  %384 = bitcast %union.rec* %383 to %struct.word_type*
  %385 = getelementptr inbounds %struct.word_type, %struct.word_type* %384, i32 0, i32 0
  %386 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %385, i32 0, i64 0
  %387 = getelementptr inbounds %struct.LIST, %struct.LIST* %386, i32 0, i32 0
  store %union.rec* %382, %union.rec** %387, align 8
  %388 = load %union.rec*, %union.rec** @zz_hold, align 8
  %389 = load %union.rec*, %union.rec** @zz_res, align 8
  %390 = bitcast %union.rec* %389 to %struct.word_type*
  %391 = getelementptr inbounds %struct.word_type, %struct.word_type* %390, i32 0, i32 0
  %392 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %391, i32 0, i64 0
  %393 = getelementptr inbounds %struct.LIST, %struct.LIST* %392, i32 0, i32 0
  %394 = load %union.rec*, %union.rec** %393, align 8
  %395 = bitcast %union.rec* %394 to %struct.word_type*
  %396 = getelementptr inbounds %struct.word_type, %struct.word_type* %395, i32 0, i32 0
  %397 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %396, i32 0, i64 0
  %398 = getelementptr inbounds %struct.LIST, %struct.LIST* %397, i32 0, i32 1
  store %union.rec* %388, %union.rec** %398, align 8
  %399 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %400 = load %union.rec*, %union.rec** @zz_res, align 8
  %401 = bitcast %union.rec* %400 to %struct.word_type*
  %402 = getelementptr inbounds %struct.word_type, %struct.word_type* %401, i32 0, i32 0
  %403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %402, i32 0, i64 0
  %404 = getelementptr inbounds %struct.LIST, %struct.LIST* %403, i32 0, i32 0
  store %union.rec* %399, %union.rec** %404, align 8
  %405 = load %union.rec*, %union.rec** @zz_res, align 8
  %406 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %407 = bitcast %union.rec* %406 to %struct.word_type*
  %408 = getelementptr inbounds %struct.word_type, %struct.word_type* %407, i32 0, i32 0
  %409 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %408, i32 0, i64 0
  %410 = getelementptr inbounds %struct.LIST, %struct.LIST* %409, i32 0, i32 1
  store %union.rec* %405, %union.rec** %410, align 8
  br label %411

; <label>:411                                     ; preds = %370, %368
  %412 = phi %union.rec* [ %369, %368 ], [ %405, %370 ]
  br label %413

; <label>:413                                     ; preds = %411, %363
  %414 = phi %union.rec* [ %364, %363 ], [ %412, %411 ]
  %415 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %415, %union.rec** @zz_res, align 8
  %416 = load i32, i32* %i, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds [300 x %union.rec*], [300 x %union.rec*]* @scope, i32 0, i64 %417
  %419 = load %union.rec*, %union.rec** %418, align 8
  store %union.rec* %419, %union.rec** @zz_hold, align 8
  %420 = load %union.rec*, %union.rec** @zz_hold, align 8
  %421 = icmp eq %union.rec* %420, null
  br i1 %421, label %422, label %424

; <label>:422                                     ; preds = %413
  %423 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %472

; <label>:424                                     ; preds = %413
  %425 = load %union.rec*, %union.rec** @zz_res, align 8
  %426 = icmp eq %union.rec* %425, null
  br i1 %426, label %427, label %429

; <label>:427                                     ; preds = %424
  %428 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %470

; <label>:429                                     ; preds = %424
  %430 = load %union.rec*, %union.rec** @zz_hold, align 8
  %431 = bitcast %union.rec* %430 to %struct.word_type*
  %432 = getelementptr inbounds %struct.word_type, %struct.word_type* %431, i32 0, i32 0
  %433 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %432, i32 0, i64 1
  %434 = getelementptr inbounds %struct.LIST, %struct.LIST* %433, i32 0, i32 0
  %435 = load %union.rec*, %union.rec** %434, align 8
  store %union.rec* %435, %union.rec** @zz_tmp, align 8
  %436 = load %union.rec*, %union.rec** @zz_res, align 8
  %437 = bitcast %union.rec* %436 to %struct.word_type*
  %438 = getelementptr inbounds %struct.word_type, %struct.word_type* %437, i32 0, i32 0
  %439 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %438, i32 0, i64 1
  %440 = getelementptr inbounds %struct.LIST, %struct.LIST* %439, i32 0, i32 0
  %441 = load %union.rec*, %union.rec** %440, align 8
  %442 = load %union.rec*, %union.rec** @zz_hold, align 8
  %443 = bitcast %union.rec* %442 to %struct.word_type*
  %444 = getelementptr inbounds %struct.word_type, %struct.word_type* %443, i32 0, i32 0
  %445 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %444, i32 0, i64 1
  %446 = getelementptr inbounds %struct.LIST, %struct.LIST* %445, i32 0, i32 0
  store %union.rec* %441, %union.rec** %446, align 8
  %447 = load %union.rec*, %union.rec** @zz_hold, align 8
  %448 = load %union.rec*, %union.rec** @zz_res, align 8
  %449 = bitcast %union.rec* %448 to %struct.word_type*
  %450 = getelementptr inbounds %struct.word_type, %struct.word_type* %449, i32 0, i32 0
  %451 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %450, i32 0, i64 1
  %452 = getelementptr inbounds %struct.LIST, %struct.LIST* %451, i32 0, i32 0
  %453 = load %union.rec*, %union.rec** %452, align 8
  %454 = bitcast %union.rec* %453 to %struct.word_type*
  %455 = getelementptr inbounds %struct.word_type, %struct.word_type* %454, i32 0, i32 0
  %456 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %455, i32 0, i64 1
  %457 = getelementptr inbounds %struct.LIST, %struct.LIST* %456, i32 0, i32 1
  store %union.rec* %447, %union.rec** %457, align 8
  %458 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %459 = load %union.rec*, %union.rec** @zz_res, align 8
  %460 = bitcast %union.rec* %459 to %struct.word_type*
  %461 = getelementptr inbounds %struct.word_type, %struct.word_type* %460, i32 0, i32 0
  %462 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %461, i32 0, i64 1
  %463 = getelementptr inbounds %struct.LIST, %struct.LIST* %462, i32 0, i32 0
  store %union.rec* %458, %union.rec** %463, align 8
  %464 = load %union.rec*, %union.rec** @zz_res, align 8
  %465 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %466 = bitcast %union.rec* %465 to %struct.word_type*
  %467 = getelementptr inbounds %struct.word_type, %struct.word_type* %466, i32 0, i32 0
  %468 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %467, i32 0, i64 1
  %469 = getelementptr inbounds %struct.LIST, %struct.LIST* %468, i32 0, i32 1
  store %union.rec* %464, %union.rec** %469, align 8
  br label %470

; <label>:470                                     ; preds = %429, %427
  %471 = phi %union.rec* [ %428, %427 ], [ %464, %429 ]
  br label %472

; <label>:472                                     ; preds = %470, %422
  %473 = phi %union.rec* [ %423, %422 ], [ %471, %470 ]
  %474 = load i32, i32* %i, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds [300 x i32], [300 x i32]* @npars_only, i32 0, i64 %475
  %477 = load i32, i32* %476, align 4
  %478 = load %union.rec*, %union.rec** %x, align 8
  %479 = bitcast %union.rec* %478 to %struct.word_type*
  %480 = getelementptr inbounds %struct.word_type, %struct.word_type* %479, i32 0, i32 2
  %481 = bitcast %union.SECOND_UNION* %480 to %struct.anon.2*
  %482 = bitcast %struct.anon.2* %481 to i32*
  %483 = load i32, i32* %482, align 4
  %484 = and i32 %477, 4095
  %485 = and i32 %483, -4096
  %486 = or i32 %485, %484
  store i32 %486, i32* %482, align 4
  %487 = load i32, i32* %i, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds [300 x i32], [300 x i32]* @vis_only, i32 0, i64 %488
  %490 = load i32, i32* %489, align 4
  %491 = load %union.rec*, %union.rec** %x, align 8
  %492 = bitcast %union.rec* %491 to %struct.word_type*
  %493 = getelementptr inbounds %struct.word_type, %struct.word_type* %492, i32 0, i32 2
  %494 = bitcast %union.SECOND_UNION* %493 to %struct.anon.2*
  %495 = bitcast %struct.anon.2* %494 to i32*
  %496 = load i32, i32* %495, align 4
  %497 = and i32 %490, 1023
  %498 = shl i32 %497, 12
  %499 = and i32 %496, -4190209
  %500 = or i32 %499, %498
  store i32 %500, i32* %495, align 4
  %501 = load i32, i32* %i, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds [300 x i32], [300 x i32]* @body_ok, i32 0, i64 %502
  %504 = load i32, i32* %503, align 4
  %505 = load %union.rec*, %union.rec** %x, align 8
  %506 = bitcast %union.rec* %505 to %struct.word_type*
  %507 = getelementptr inbounds %struct.word_type, %struct.word_type* %506, i32 0, i32 2
  %508 = bitcast %union.SECOND_UNION* %507 to %struct.anon.2*
  %509 = bitcast %struct.anon.2* %508 to i32*
  %510 = load i32, i32* %509, align 4
  %511 = and i32 %504, 1
  %512 = shl i32 %511, 22
  %513 = and i32 %510, -4194305
  %514 = or i32 %513, %512
  store i32 %514, i32* %509, align 4
  br label %515

; <label>:515                                     ; preds = %472
  %516 = load i32, i32* %i, align 4
  %517 = add nsw i32 %516, -1
  store i32 %517, i32* %i, align 4
  br label %62

; <label>:518                                     ; preds = %62
  %519 = load i32, i32* @suppress_visible, align 4
  %520 = load %union.rec*, %union.rec** %ss, align 8
  %521 = bitcast %union.rec* %520 to %struct.word_type*
  %522 = getelementptr inbounds %struct.word_type, %struct.word_type* %521, i32 0, i32 2
  %523 = bitcast %union.SECOND_UNION* %522 to %struct.anon.2*
  %524 = bitcast %struct.anon.2* %523 to i32*
  %525 = load i32, i32* %524, align 4
  %526 = and i32 %519, 63
  %527 = shl i32 %526, 23
  %528 = and i32 %525, -528482305
  %529 = or i32 %528, %527
  store i32 %529, i32* %524, align 4
  %530 = load %union.rec*, %union.rec** %ss, align 8
  ret %union.rec* %530
}

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define void @LoadScopeSnapshot(%union.rec* %ss) #0 {
  %1 = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %x = alloca %union.rec*, align 8
  %sym = alloca %union.rec*, align 8
  %tmp = alloca i32, align 4
  store %union.rec* %ss, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = bitcast %union.rec* %2 to %struct.word_type*
  %4 = getelementptr inbounds %struct.word_type, %struct.word_type* %3, i32 0, i32 1
  %5 = bitcast %union.FIRST_UNION* %4 to %struct.anon.0*
  %6 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i32 0, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 %8, 17
  br i1 %9, label %13, label %10

; <label>:10                                      ; preds = %0
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %12 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %10, %0
  %14 = load %union.rec*, %union.rec** @StartSym, align 8
  call void @PushScope(%union.rec* %14, i32 0, i32 0)
  %15 = load %union.rec*, %union.rec** %1, align 8
  %16 = bitcast %union.rec* %15 to %struct.word_type*
  %17 = getelementptr inbounds %struct.word_type, %struct.word_type* %16, i32 0, i32 0
  %18 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %17, i32 0, i64 0
  %19 = getelementptr inbounds %struct.LIST, %struct.LIST* %18, i32 0, i32 0
  %20 = load %union.rec*, %union.rec** %19, align 8
  store %union.rec* %20, %union.rec** %link, align 8
  br label %21

; <label>:21                                      ; preds = %119, %13
  %22 = load %union.rec*, %union.rec** %link, align 8
  %23 = load %union.rec*, %union.rec** %1, align 8
  %24 = icmp ne %union.rec* %22, %23
  br i1 %24, label %25, label %126

; <label>:25                                      ; preds = %21
  %26 = load %union.rec*, %union.rec** %link, align 8
  %27 = bitcast %union.rec* %26 to %struct.word_type*
  %28 = getelementptr inbounds %struct.word_type, %struct.word_type* %27, i32 0, i32 0
  %29 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %28, i32 0, i64 1
  %30 = getelementptr inbounds %struct.LIST, %struct.LIST* %29, i32 0, i32 0
  %31 = load %union.rec*, %union.rec** %30, align 8
  store %union.rec* %31, %union.rec** %x, align 8
  br label %32

; <label>:32                                      ; preds = %42, %25
  %33 = load %union.rec*, %union.rec** %x, align 8
  %34 = bitcast %union.rec* %33 to %struct.word_type*
  %35 = getelementptr inbounds %struct.word_type, %struct.word_type* %34, i32 0, i32 1
  %36 = bitcast %union.FIRST_UNION* %35 to %struct.anon.0*
  %37 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %36, i32 0, i32 0
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49

; <label>:41                                      ; preds = %32
  br label %42

; <label>:42                                      ; preds = %41
  %43 = load %union.rec*, %union.rec** %x, align 8
  %44 = bitcast %union.rec* %43 to %struct.word_type*
  %45 = getelementptr inbounds %struct.word_type, %struct.word_type* %44, i32 0, i32 0
  %46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %45, i32 0, i64 1
  %47 = getelementptr inbounds %struct.LIST, %struct.LIST* %46, i32 0, i32 0
  %48 = load %union.rec*, %union.rec** %47, align 8
  store %union.rec* %48, %union.rec** %x, align 8
  br label %32

; <label>:49                                      ; preds = %32
  %50 = load %union.rec*, %union.rec** %x, align 8
  %51 = bitcast %union.rec* %50 to %struct.word_type*
  %52 = getelementptr inbounds %struct.word_type, %struct.word_type* %51, i32 0, i32 1
  %53 = bitcast %union.FIRST_UNION* %52 to %struct.anon.0*
  %54 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %53, i32 0, i32 0
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 149
  br i1 %57, label %61, label %58

; <label>:58                                      ; preds = %49
  %59 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %60 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  br label %61

; <label>:61                                      ; preds = %58, %49
  %62 = load %union.rec*, %union.rec** %x, align 8
  %63 = bitcast %union.rec* %62 to %struct.word_type*
  %64 = getelementptr inbounds %struct.word_type, %struct.word_type* %63, i32 0, i32 0
  %65 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %64, i32 0, i64 0
  %66 = getelementptr inbounds %struct.LIST, %struct.LIST* %65, i32 0, i32 1
  %67 = load %union.rec*, %union.rec** %66, align 8
  %68 = bitcast %union.rec* %67 to %struct.word_type*
  %69 = getelementptr inbounds %struct.word_type, %struct.word_type* %68, i32 0, i32 0
  %70 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %69, i32 0, i64 1
  %71 = getelementptr inbounds %struct.LIST, %struct.LIST* %70, i32 0, i32 0
  %72 = load %union.rec*, %union.rec** %71, align 8
  store %union.rec* %72, %union.rec** %sym, align 8
  br label %73

; <label>:73                                      ; preds = %83, %61
  %74 = load %union.rec*, %union.rec** %sym, align 8
  %75 = bitcast %union.rec* %74 to %struct.word_type*
  %76 = getelementptr inbounds %struct.word_type, %struct.word_type* %75, i32 0, i32 1
  %77 = bitcast %union.FIRST_UNION* %76 to %struct.anon.0*
  %78 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %77, i32 0, i32 0
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %90

; <label>:82                                      ; preds = %73
  br label %83

; <label>:83                                      ; preds = %82
  %84 = load %union.rec*, %union.rec** %sym, align 8
  %85 = bitcast %union.rec* %84 to %struct.word_type*
  %86 = getelementptr inbounds %struct.word_type, %struct.word_type* %85, i32 0, i32 0
  %87 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %86, i32 0, i64 1
  %88 = getelementptr inbounds %struct.LIST, %struct.LIST* %87, i32 0, i32 0
  %89 = load %union.rec*, %union.rec** %88, align 8
  store %union.rec* %89, %union.rec** %sym, align 8
  br label %73

; <label>:90                                      ; preds = %73
  %91 = load %union.rec*, %union.rec** %sym, align 8
  %92 = load %union.rec*, %union.rec** %x, align 8
  %93 = bitcast %union.rec* %92 to %struct.word_type*
  %94 = getelementptr inbounds %struct.word_type, %struct.word_type* %93, i32 0, i32 2
  %95 = bitcast %union.SECOND_UNION* %94 to %struct.anon.2*
  %96 = bitcast %struct.anon.2* %95 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 4095
  %99 = load %union.rec*, %union.rec** %x, align 8
  %100 = bitcast %union.rec* %99 to %struct.word_type*
  %101 = getelementptr inbounds %struct.word_type, %struct.word_type* %100, i32 0, i32 2
  %102 = bitcast %union.SECOND_UNION* %101 to %struct.anon.2*
  %103 = bitcast %struct.anon.2* %102 to i32*
  %104 = load i32, i32* %103, align 4
  %105 = lshr i32 %104, 12
  %106 = and i32 %105, 1023
  call void @PushScope(%union.rec* %91, i32 %98, i32 %106)
  %107 = load %union.rec*, %union.rec** %x, align 8
  %108 = bitcast %union.rec* %107 to %struct.word_type*
  %109 = getelementptr inbounds %struct.word_type, %struct.word_type* %108, i32 0, i32 2
  %110 = bitcast %union.SECOND_UNION* %109 to %struct.anon.2*
  %111 = bitcast %struct.anon.2* %110 to i32*
  %112 = load i32, i32* %111, align 4
  %113 = lshr i32 %112, 22
  %114 = and i32 %113, 1
  %115 = load i32, i32* @scope_top, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [300 x i32], [300 x i32]* @body_ok, i32 0, i64 %117
  store i32 %114, i32* %118, align 4
  br label %119

; <label>:119                                     ; preds = %90
  %120 = load %union.rec*, %union.rec** %link, align 8
  %121 = bitcast %union.rec* %120 to %struct.word_type*
  %122 = getelementptr inbounds %struct.word_type, %struct.word_type* %121, i32 0, i32 0
  %123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %122, i32 0, i64 0
  %124 = getelementptr inbounds %struct.LIST, %struct.LIST* %123, i32 0, i32 0
  %125 = load %union.rec*, %union.rec** %124, align 8
  store %union.rec* %125, %union.rec** %link, align 8
  br label %21

; <label>:126                                     ; preds = %21
  %127 = load i32, i32* @suppress_visible, align 4
  store i32 %127, i32* %tmp, align 4
  %128 = load %union.rec*, %union.rec** %1, align 8
  %129 = bitcast %union.rec* %128 to %struct.word_type*
  %130 = getelementptr inbounds %struct.word_type, %struct.word_type* %129, i32 0, i32 2
  %131 = bitcast %union.SECOND_UNION* %130 to %struct.anon.2*
  %132 = bitcast %struct.anon.2* %131 to i32*
  %133 = load i32, i32* %132, align 4
  %134 = lshr i32 %133, 23
  %135 = and i32 %134, 63
  store i32 %135, i32* @suppress_visible, align 4
  %136 = load i32, i32* %tmp, align 4
  %137 = load %union.rec*, %union.rec** %1, align 8
  %138 = bitcast %union.rec* %137 to %struct.word_type*
  %139 = getelementptr inbounds %struct.word_type, %struct.word_type* %138, i32 0, i32 2
  %140 = bitcast %union.SECOND_UNION* %139 to %struct.anon.2*
  %141 = bitcast %struct.anon.2* %140 to i32*
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %136, 63
  %144 = shl i32 %143, 23
  %145 = and i32 %142, -528482305
  %146 = or i32 %145, %144
  store i32 %146, i32* %141, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @ClearScopeSnapshot(%union.rec* %ss) #0 {
  %1 = alloca %union.rec*, align 8
  store %union.rec* %ss, %union.rec** %1, align 8
  br label %2

; <label>:2                                       ; preds = %10, %0
  %3 = load i32, i32* @scope_top, align 4
  %4 = sub nsw i32 %3, 1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [300 x %union.rec*], [300 x %union.rec*]* @scope, i32 0, i64 %5
  %7 = load %union.rec*, %union.rec** %6, align 8
  %8 = load %union.rec*, %union.rec** @StartSym, align 8
  %9 = icmp ne %union.rec* %7, %8
  br i1 %9, label %10, label %13

; <label>:10                                      ; preds = %2
  %11 = load i32, i32* @scope_top, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* @scope_top, align 4
  br label %2

; <label>:13                                      ; preds = %2
  %14 = load i32, i32* @scope_top, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* @scope_top, align 4
  %16 = load %union.rec*, %union.rec** %1, align 8
  %17 = bitcast %union.rec* %16 to %struct.word_type*
  %18 = getelementptr inbounds %struct.word_type, %struct.word_type* %17, i32 0, i32 2
  %19 = bitcast %union.SECOND_UNION* %18 to %struct.anon.2*
  %20 = bitcast %struct.anon.2* %19 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = lshr i32 %21, 23
  %23 = and i32 %22, 63
  store i32 %23, i32* @suppress_visible, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %union.rec* @InsertSym(i8* %str, i8 zeroext %xtype, %struct.FILE_POS* %xfpos, i8 zeroext %xprecedence, i32 %xindefinite, i32 %xrecursive, i32 %xpredefined, %union.rec* %xenclosing, %union.rec* %xbody) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8, align 1
  %3 = alloca %struct.FILE_POS*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.rec*, align 8
  %9 = alloca %union.rec*, align 8
  %sum = alloca i32, align 4
  %rlen = alloca i32, align 4
  %x = alloca i8*, align 8
  %p = alloca %union.rec*, align 8
  %q = alloca %union.rec*, align 8
  %s = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %entry = alloca %union.rec*, align 8
  %plink = alloca %union.rec*, align 8
  %len = alloca i32, align 4
  %sym = alloca %union.rec*, align 8
  %sym1 = alloca %union.rec*, align 8
  store i8* %str, i8** %1, align 8
  store i8 %xtype, i8* %2, align 1
  store %struct.FILE_POS* %xfpos, %struct.FILE_POS** %3, align 8
  store i8 %xprecedence, i8* %4, align 1
  store i32 %xindefinite, i32* %5, align 4
  store i32 %xrecursive, i32* %6, align 4
  store i32 %xpredefined, i32* %7, align 4
  store %union.rec* %xenclosing, %union.rec** %8, align 8
  store %union.rec* %xbody, %union.rec** %9, align 8
  %10 = load i8*, i8** %1, align 8
  %11 = call i32 @LexLegalName(i8* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

; <label>:13                                      ; preds = %0
  %14 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %15 = load i8*, i8** %1, align 8
  %16 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i32 2, %struct.FILE_POS* %14, i8* %15)
  br label %17

; <label>:17                                      ; preds = %13, %0
  %18 = load i8, i8* %2, align 1
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  store i32 %22, i32* @zz_size, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp uge i64 %23, 265
  br i1 %24, label %25, label %28

; <label>:25                                      ; preds = %17
  %26 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %27 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %26)
  br label %53

; <label>:28                                      ; preds = %17
  %29 = load i32, i32* @zz_size, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %30
  %32 = load %union.rec*, %union.rec** %31, align 8
  %33 = icmp eq %union.rec* %32, null
  br i1 %33, label %34, label %38

; <label>:34                                      ; preds = %28
  %35 = load i32, i32* @zz_size, align 4
  %36 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %37 = call %union.rec* @GetMemory(i32 %35, %struct.FILE_POS* %36)
  store %union.rec* %37, %union.rec** @zz_hold, align 8
  br label %52

; <label>:38                                      ; preds = %28
  %39 = load i32, i32* @zz_size, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %40
  %42 = load %union.rec*, %union.rec** %41, align 8
  store %union.rec* %42, %union.rec** @zz_hold, align 8
  store %union.rec* %42, %union.rec** @zz_hold, align 8
  %43 = load %union.rec*, %union.rec** @zz_hold, align 8
  %44 = bitcast %union.rec* %43 to %struct.word_type*
  %45 = getelementptr inbounds %struct.word_type, %struct.word_type* %44, i32 0, i32 0
  %46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %45, i32 0, i64 0
  %47 = getelementptr inbounds %struct.LIST, %struct.LIST* %46, i32 0, i32 0
  %48 = load %union.rec*, %union.rec** %47, align 8
  %49 = load i32, i32* @zz_size, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %50
  store %union.rec* %48, %union.rec** %51, align 8
  br label %52

; <label>:52                                      ; preds = %38, %34
  br label %53

; <label>:53                                      ; preds = %52, %25
  %54 = load i8, i8* %2, align 1
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %56 = bitcast %union.rec* %55 to %struct.word_type*
  %57 = getelementptr inbounds %struct.word_type, %struct.word_type* %56, i32 0, i32 1
  %58 = bitcast %union.FIRST_UNION* %57 to %struct.anon.0*
  %59 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %58, i32 0, i32 0
  store i8 %54, i8* %59, align 1
  %60 = load %union.rec*, %union.rec** @zz_hold, align 8
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  %62 = bitcast %union.rec* %61 to %struct.word_type*
  %63 = getelementptr inbounds %struct.word_type, %struct.word_type* %62, i32 0, i32 0
  %64 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %63, i32 0, i64 1
  %65 = getelementptr inbounds %struct.LIST, %struct.LIST* %64, i32 0, i32 1
  store %union.rec* %60, %union.rec** %65, align 8
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %67 = bitcast %union.rec* %66 to %struct.word_type*
  %68 = getelementptr inbounds %struct.word_type, %struct.word_type* %67, i32 0, i32 0
  %69 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %68, i32 0, i64 1
  %70 = getelementptr inbounds %struct.LIST, %struct.LIST* %69, i32 0, i32 0
  store %union.rec* %60, %union.rec** %70, align 8
  %71 = load %union.rec*, %union.rec** @zz_hold, align 8
  %72 = bitcast %union.rec* %71 to %struct.word_type*
  %73 = getelementptr inbounds %struct.word_type, %struct.word_type* %72, i32 0, i32 0
  %74 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %73, i32 0, i64 0
  %75 = getelementptr inbounds %struct.LIST, %struct.LIST* %74, i32 0, i32 1
  store %union.rec* %60, %union.rec** %75, align 8
  %76 = load %union.rec*, %union.rec** @zz_hold, align 8
  %77 = bitcast %union.rec* %76 to %struct.word_type*
  %78 = getelementptr inbounds %struct.word_type, %struct.word_type* %77, i32 0, i32 0
  %79 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %78, i32 0, i64 0
  %80 = getelementptr inbounds %struct.LIST, %struct.LIST* %79, i32 0, i32 0
  store %union.rec* %60, %union.rec** %80, align 8
  store %union.rec* %60, %union.rec** %s, align 8
  %81 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %82 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %81, i32 0, i32 2
  %83 = load i16, i16* %82, align 2
  %84 = load %union.rec*, %union.rec** %s, align 8
  %85 = bitcast %union.rec* %84 to %struct.word_type*
  %86 = getelementptr inbounds %struct.word_type, %struct.word_type* %85, i32 0, i32 1
  %87 = bitcast %union.FIRST_UNION* %86 to %struct.FILE_POS*
  %88 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %87, i32 0, i32 2
  store i16 %83, i16* %88, align 2
  %89 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %90 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 1048575
  %93 = load %union.rec*, %union.rec** %s, align 8
  %94 = bitcast %union.rec* %93 to %struct.word_type*
  %95 = getelementptr inbounds %struct.word_type, %struct.word_type* %94, i32 0, i32 1
  %96 = bitcast %union.FIRST_UNION* %95 to %struct.FILE_POS*
  %97 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %92, 1048575
  %100 = and i32 %98, -1048576
  %101 = or i32 %100, %99
  store i32 %101, i32* %97, align 4
  %102 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %103 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = lshr i32 %104, 20
  %106 = load %union.rec*, %union.rec** %s, align 8
  %107 = bitcast %union.rec* %106 to %struct.word_type*
  %108 = getelementptr inbounds %struct.word_type, %struct.word_type* %107, i32 0, i32 1
  %109 = bitcast %union.FIRST_UNION* %108 to %struct.FILE_POS*
  %110 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %105, 4095
  %113 = shl i32 %112, 20
  %114 = and i32 %111, 1048575
  %115 = or i32 %114, %113
  store i32 %115, i32* %110, align 4
  %116 = load %union.rec*, %union.rec** %s, align 8
  %117 = bitcast %union.rec* %116 to %struct.word_type*
  %118 = getelementptr inbounds %struct.word_type, %struct.word_type* %117, i32 0, i32 2
  %119 = bitcast %union.SECOND_UNION* %118 to %struct.anon.6*
  %120 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %119, i32 0, i32 1
  %121 = bitcast [3 x i8]* %120 to i24*
  %122 = load i24, i24* %121, align 1
  %123 = and i24 %122, -257
  store i24 %123, i24* %121, align 1
  %124 = load %union.rec*, %union.rec** %s, align 8
  %125 = bitcast %union.rec* %124 to %struct.symbol_type*
  %126 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %125, i32 0, i32 10
  store %union.rec* null, %union.rec** %126, align 8
  %127 = load %union.rec*, %union.rec** %s, align 8
  %128 = bitcast %union.rec* %127 to %struct.symbol_type*
  %129 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %128, i32 0, i32 11
  store %union.rec* null, %union.rec** %129, align 8
  %130 = load %union.rec*, %union.rec** %s, align 8
  %131 = bitcast %union.rec* %130 to %struct.symbol_type*
  %132 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %131, i32 0, i32 9
  store %union.rec* null, %union.rec** %132, align 8
  %133 = load %union.rec*, %union.rec** %s, align 8
  %134 = bitcast %union.rec* %133 to %struct.word_type*
  %135 = getelementptr inbounds %struct.word_type, %struct.word_type* %134, i32 0, i32 2
  %136 = bitcast %union.SECOND_UNION* %135 to %struct.anon.6*
  %137 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %136, i32 0, i32 1
  %138 = bitcast [3 x i8]* %137 to i24*
  %139 = load i24, i24* %138, align 1
  %140 = and i24 %139, -4194305
  store i24 %140, i24* %138, align 1
  %141 = load %union.rec*, %union.rec** %s, align 8
  %142 = bitcast %union.rec* %141 to %struct.word_type*
  %143 = getelementptr inbounds %struct.word_type, %struct.word_type* %142, i32 0, i32 2
  %144 = bitcast %union.SECOND_UNION* %143 to %struct.anon.6*
  %145 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %144, i32 0, i32 1
  %146 = bitcast [3 x i8]* %145 to i24*
  %147 = load i24, i24* %146, align 1
  %148 = and i24 %147, -17
  %149 = or i24 %148, 16
  store i24 %149, i24* %146, align 1
  %150 = load i8, i8* %4, align 1
  %151 = load %union.rec*, %union.rec** %s, align 8
  %152 = bitcast %union.rec* %151 to %struct.word_type*
  %153 = getelementptr inbounds %struct.word_type, %struct.word_type* %152, i32 0, i32 2
  %154 = bitcast %union.SECOND_UNION* %153 to %struct.anon.1*
  %155 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %154, i32 0, i32 0
  store i8 %150, i8* %155, align 1
  %156 = load i32, i32* %5, align 4
  %157 = load %union.rec*, %union.rec** %s, align 8
  %158 = bitcast %union.rec* %157 to %struct.word_type*
  %159 = getelementptr inbounds %struct.word_type, %struct.word_type* %158, i32 0, i32 2
  %160 = bitcast %union.SECOND_UNION* %159 to %struct.anon.6*
  %161 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %160, i32 0, i32 1
  %162 = bitcast [3 x i8]* %161 to i24*
  %163 = trunc i32 %156 to i24
  %164 = load i24, i24* %162, align 1
  %165 = and i24 %163, 1
  %166 = shl i24 %165, 9
  %167 = and i24 %164, -513
  %168 = or i24 %167, %166
  store i24 %168, i24* %162, align 1
  %169 = zext i24 %165 to i32
  %170 = load i32, i32* %6, align 4
  %171 = load %union.rec*, %union.rec** %s, align 8
  %172 = bitcast %union.rec* %171 to %struct.word_type*
  %173 = getelementptr inbounds %struct.word_type, %struct.word_type* %172, i32 0, i32 2
  %174 = bitcast %union.SECOND_UNION* %173 to %struct.anon.6*
  %175 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %174, i32 0, i32 1
  %176 = bitcast [3 x i8]* %175 to i24*
  %177 = trunc i32 %170 to i24
  %178 = load i24, i24* %176, align 1
  %179 = and i24 %177, 1
  %180 = shl i24 %179, 10
  %181 = and i24 %178, -1025
  %182 = or i24 %181, %180
  store i24 %182, i24* %176, align 1
  %183 = zext i24 %179 to i32
  %184 = load i32, i32* %7, align 4
  %185 = trunc i32 %184 to i16
  %186 = load %union.rec*, %union.rec** %s, align 8
  %187 = bitcast %union.rec* %186 to %struct.symbol_type*
  %188 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %187, i32 0, i32 12
  store i16 %185, i16* %188, align 2
  %189 = load %union.rec*, %union.rec** %8, align 8
  %190 = load %union.rec*, %union.rec** %s, align 8
  %191 = bitcast %union.rec* %190 to %struct.symbol_type*
  %192 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %191, i32 0, i32 3
  store %union.rec* %189, %union.rec** %192, align 8
  %193 = load %union.rec*, %union.rec** %9, align 8
  %194 = load %union.rec*, %union.rec** %s, align 8
  %195 = bitcast %union.rec* %194 to %struct.symbol_type*
  %196 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %195, i32 0, i32 4
  store %union.rec* %193, %union.rec** %196, align 8
  %197 = load %union.rec*, %union.rec** %s, align 8
  %198 = bitcast %union.rec* %197 to %struct.symbol_type*
  %199 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %198, i32 0, i32 5
  store %union.rec* null, %union.rec** %199, align 8
  %200 = load %union.rec*, %union.rec** %s, align 8
  %201 = bitcast %union.rec* %200 to %struct.symbol_type*
  %202 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %201, i32 0, i32 6
  store %union.rec* null, %union.rec** %202, align 8
  %203 = load %union.rec*, %union.rec** %s, align 8
  %204 = bitcast %union.rec* %203 to %struct.symbol_type*
  %205 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %204, i32 0, i32 7
  store %union.rec* null, %union.rec** %205, align 8
  %206 = load %union.rec*, %union.rec** %s, align 8
  %207 = bitcast %union.rec* %206 to %struct.symbol_type*
  %208 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %207, i32 0, i32 8
  store %union.rec* null, %union.rec** %208, align 8
  %209 = load %union.rec*, %union.rec** %s, align 8
  %210 = bitcast %union.rec* %209 to %struct.word_type*
  %211 = getelementptr inbounds %struct.word_type, %struct.word_type* %210, i32 0, i32 2
  %212 = bitcast %union.SECOND_UNION* %211 to %struct.anon.6*
  %213 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %212, i32 0, i32 1
  %214 = bitcast [3 x i8]* %213 to i24*
  %215 = load i24, i24* %214, align 1
  %216 = and i24 %215, -4097
  store i24 %216, i24* %214, align 1
  %217 = load %union.rec*, %union.rec** %s, align 8
  %218 = bitcast %union.rec* %217 to %struct.word_type*
  %219 = getelementptr inbounds %struct.word_type, %struct.word_type* %218, i32 0, i32 2
  %220 = bitcast %union.SECOND_UNION* %219 to %struct.anon.6*
  %221 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %220, i32 0, i32 1
  %222 = bitcast [3 x i8]* %221 to i24*
  %223 = load i24, i24* %222, align 1
  %224 = and i24 %223, -2049
  store i24 %224, i24* %222, align 1
  %225 = load %union.rec*, %union.rec** %s, align 8
  %226 = bitcast %union.rec* %225 to %struct.word_type*
  %227 = getelementptr inbounds %struct.word_type, %struct.word_type* %226, i32 0, i32 2
  %228 = bitcast %union.SECOND_UNION* %227 to %struct.anon.6*
  %229 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %228, i32 0, i32 1
  %230 = bitcast [3 x i8]* %229 to i24*
  %231 = load i24, i24* %230, align 1
  %232 = and i24 %231, -65537
  store i24 %232, i24* %230, align 1
  %233 = load %union.rec*, %union.rec** %s, align 8
  %234 = bitcast %union.rec* %233 to %struct.word_type*
  %235 = getelementptr inbounds %struct.word_type, %struct.word_type* %234, i32 0, i32 2
  %236 = bitcast %union.SECOND_UNION* %235 to %struct.anon.6*
  %237 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %236, i32 0, i32 1
  %238 = bitcast [3 x i8]* %237 to i24*
  %239 = load i24, i24* %238, align 1
  %240 = and i24 %239, -1048577
  store i24 %240, i24* %238, align 1
  %241 = load %union.rec*, %union.rec** %s, align 8
  %242 = bitcast %union.rec* %241 to %struct.word_type*
  %243 = getelementptr inbounds %struct.word_type, %struct.word_type* %242, i32 0, i32 2
  %244 = bitcast %union.SECOND_UNION* %243 to %struct.anon.6*
  %245 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %244, i32 0, i32 1
  %246 = bitcast [3 x i8]* %245 to i24*
  %247 = load i24, i24* %246, align 1
  %248 = and i24 %247, -2097153
  %249 = or i24 %248, 2097152
  store i24 %249, i24* %246, align 1
  %250 = load %union.rec*, %union.rec** %s, align 8
  %251 = bitcast %union.rec* %250 to %struct.symbol_type*
  %252 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %251, i32 0, i32 13
  store i16 0, i16* %252, align 2
  %253 = load %union.rec*, %union.rec** %s, align 8
  %254 = bitcast %union.rec* %253 to %struct.symbol_type*
  %255 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %254, i32 0, i32 16
  %256 = load i8, i8* %255, align 2
  %257 = and i8 %256, -65
  store i8 %257, i8* %255, align 2
  %258 = load %union.rec*, %union.rec** %s, align 8
  %259 = bitcast %union.rec* %258 to %struct.symbol_type*
  %260 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %259, i32 0, i32 14
  store i8 0, i8* %260, align 1
  %261 = load %union.rec*, %union.rec** %s, align 8
  %262 = bitcast %union.rec* %261 to %struct.word_type*
  %263 = getelementptr inbounds %struct.word_type, %struct.word_type* %262, i32 0, i32 2
  %264 = bitcast %union.SECOND_UNION* %263 to %struct.anon.6*
  %265 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %264, i32 0, i32 1
  %266 = bitcast [3 x i8]* %265 to i24*
  %267 = load i24, i24* %266, align 1
  %268 = and i24 %267, -32769
  store i24 %268, i24* %266, align 1
  %269 = load %union.rec*, %union.rec** %s, align 8
  %270 = bitcast %union.rec* %269 to %struct.symbol_type*
  %271 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %270, i32 0, i32 3
  %272 = load %union.rec*, %union.rec** %271, align 8
  %273 = icmp ne %union.rec* %272, null
  br i1 %273, label %274, label %308

; <label>:274                                     ; preds = %53
  %275 = load %union.rec*, %union.rec** %s, align 8
  %276 = bitcast %union.rec* %275 to %struct.symbol_type*
  %277 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %276, i32 0, i32 3
  %278 = load %union.rec*, %union.rec** %277, align 8
  %279 = bitcast %union.rec* %278 to %struct.word_type*
  %280 = getelementptr inbounds %struct.word_type, %struct.word_type* %279, i32 0, i32 1
  %281 = bitcast %union.FIRST_UNION* %280 to %struct.anon.0*
  %282 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %281, i32 0, i32 0
  %283 = load i8, i8* %282, align 1
  %284 = zext i8 %283 to i32
  %285 = icmp eq i32 %284, 145
  br i1 %285, label %286, label %308

; <label>:286                                     ; preds = %274
  %287 = load %union.rec*, %union.rec** %s, align 8
  %288 = bitcast %union.rec* %287 to %struct.symbol_type*
  %289 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %288, i32 0, i32 3
  %290 = load %union.rec*, %union.rec** %289, align 8
  %291 = bitcast %union.rec* %290 to %struct.word_type*
  %292 = getelementptr inbounds %struct.word_type, %struct.word_type* %291, i32 0, i32 2
  %293 = bitcast %union.SECOND_UNION* %292 to %struct.anon.6*
  %294 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %293, i32 0, i32 1
  %295 = bitcast [3 x i8]* %294 to i24*
  %296 = load i24, i24* %295, align 1
  %297 = and i24 %296, -32769
  %298 = or i24 %297, 32768
  store i24 %298, i24* %295, align 1
  %299 = load %union.rec*, %union.rec** %s, align 8
  %300 = bitcast %union.rec* %299 to %struct.word_type*
  %301 = getelementptr inbounds %struct.word_type, %struct.word_type* %300, i32 0, i32 2
  %302 = bitcast %union.SECOND_UNION* %301 to %struct.anon.6*
  %303 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %302, i32 0, i32 1
  %304 = bitcast [3 x i8]* %303 to i24*
  %305 = load i24, i24* %304, align 1
  %306 = and i24 %305, -32769
  %307 = or i24 %306, 32768
  store i24 %307, i24* %304, align 1
  br label %308

; <label>:308                                     ; preds = %286, %274, %53
  %309 = load %union.rec*, %union.rec** %s, align 8
  %310 = bitcast %union.rec* %309 to %struct.word_type*
  %311 = getelementptr inbounds %struct.word_type, %struct.word_type* %310, i32 0, i32 2
  %312 = bitcast %union.SECOND_UNION* %311 to %struct.anon.6*
  %313 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %312, i32 0, i32 1
  %314 = bitcast [3 x i8]* %313 to i24*
  %315 = load i24, i24* %314, align 1
  %316 = and i24 %315, -524289
  store i24 %316, i24* %314, align 1
  %317 = load %union.rec*, %union.rec** %s, align 8
  %318 = bitcast %union.rec* %317 to %struct.word_type*
  %319 = getelementptr inbounds %struct.word_type, %struct.word_type* %318, i32 0, i32 2
  %320 = bitcast %union.SECOND_UNION* %319 to %struct.anon.6*
  %321 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %320, i32 0, i32 1
  %322 = bitcast [3 x i8]* %321 to i24*
  %323 = load i24, i24* %322, align 1
  %324 = and i24 %323, -5
  store i24 %324, i24* %322, align 1
  %325 = load %union.rec*, %union.rec** %s, align 8
  %326 = bitcast %union.rec* %325 to %struct.word_type*
  %327 = getelementptr inbounds %struct.word_type, %struct.word_type* %326, i32 0, i32 2
  %328 = bitcast %union.SECOND_UNION* %327 to %struct.anon.6*
  %329 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %328, i32 0, i32 1
  %330 = bitcast [3 x i8]* %329 to i24*
  %331 = load i24, i24* %330, align 1
  %332 = and i24 %331, -9
  store i24 %332, i24* %330, align 1
  %333 = load %union.rec*, %union.rec** %s, align 8
  %334 = bitcast %union.rec* %333 to %struct.word_type*
  %335 = getelementptr inbounds %struct.word_type, %struct.word_type* %334, i32 0, i32 1
  %336 = bitcast %union.FIRST_UNION* %335 to %struct.anon.0*
  %337 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %336, i32 0, i32 0
  %338 = load i8, i8* %337, align 1
  %339 = zext i8 %338 to i32
  %340 = icmp sge i32 %339, 144
  br i1 %340, label %341, label %363

; <label>:341                                     ; preds = %308
  %342 = load %union.rec*, %union.rec** %s, align 8
  %343 = bitcast %union.rec* %342 to %struct.word_type*
  %344 = getelementptr inbounds %struct.word_type, %struct.word_type* %343, i32 0, i32 1
  %345 = bitcast %union.FIRST_UNION* %344 to %struct.anon.0*
  %346 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %345, i32 0, i32 0
  %347 = load i8, i8* %346, align 1
  %348 = zext i8 %347 to i32
  %349 = icmp sle i32 %348, 146
  br i1 %349, label %350, label %363

; <label>:350                                     ; preds = %341
  %351 = load %union.rec*, %union.rec** %s, align 8
  %352 = bitcast %union.rec* %351 to %struct.symbol_type*
  %353 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %352, i32 0, i32 3
  %354 = load %union.rec*, %union.rec** %353, align 8
  %355 = bitcast %union.rec* %354 to %struct.word_type*
  %356 = getelementptr inbounds %struct.word_type, %struct.word_type* %355, i32 0, i32 2
  %357 = bitcast %union.SECOND_UNION* %356 to %struct.anon.6*
  %358 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %357, i32 0, i32 1
  %359 = bitcast [3 x i8]* %358 to i24*
  %360 = load i24, i24* %359, align 1
  %361 = and i24 %360, -524289
  %362 = or i24 %361, 524288
  store i24 %362, i24* %359, align 1
  br label %363

; <label>:363                                     ; preds = %350, %341, %308
  %364 = load %union.rec*, %union.rec** %s, align 8
  %365 = bitcast %union.rec* %364 to %struct.word_type*
  %366 = getelementptr inbounds %struct.word_type, %struct.word_type* %365, i32 0, i32 1
  %367 = bitcast %union.FIRST_UNION* %366 to %struct.anon.0*
  %368 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %367, i32 0, i32 0
  %369 = load i8, i8* %368, align 1
  %370 = zext i8 %369 to i32
  %371 = icmp eq i32 %370, 144
  br i1 %371, label %372, label %385

; <label>:372                                     ; preds = %363
  %373 = load %union.rec*, %union.rec** %s, align 8
  %374 = bitcast %union.rec* %373 to %struct.symbol_type*
  %375 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %374, i32 0, i32 3
  %376 = load %union.rec*, %union.rec** %375, align 8
  %377 = bitcast %union.rec* %376 to %struct.word_type*
  %378 = getelementptr inbounds %struct.word_type, %struct.word_type* %377, i32 0, i32 2
  %379 = bitcast %union.SECOND_UNION* %378 to %struct.anon.6*
  %380 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %379, i32 0, i32 1
  %381 = bitcast [3 x i8]* %380 to i24*
  %382 = load i24, i24* %381, align 1
  %383 = and i24 %382, -5
  %384 = or i24 %383, 4
  store i24 %384, i24* %381, align 1
  br label %385

; <label>:385                                     ; preds = %372, %363
  %386 = load %union.rec*, %union.rec** %s, align 8
  %387 = bitcast %union.rec* %386 to %struct.word_type*
  %388 = getelementptr inbounds %struct.word_type, %struct.word_type* %387, i32 0, i32 1
  %389 = bitcast %union.FIRST_UNION* %388 to %struct.anon.0*
  %390 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %389, i32 0, i32 0
  %391 = load i8, i8* %390, align 1
  %392 = zext i8 %391 to i32
  %393 = icmp eq i32 %392, 146
  br i1 %393, label %394, label %407

; <label>:394                                     ; preds = %385
  %395 = load %union.rec*, %union.rec** %s, align 8
  %396 = bitcast %union.rec* %395 to %struct.symbol_type*
  %397 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %396, i32 0, i32 3
  %398 = load %union.rec*, %union.rec** %397, align 8
  %399 = bitcast %union.rec* %398 to %struct.word_type*
  %400 = getelementptr inbounds %struct.word_type, %struct.word_type* %399, i32 0, i32 2
  %401 = bitcast %union.SECOND_UNION* %400 to %struct.anon.6*
  %402 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %401, i32 0, i32 1
  %403 = bitcast [3 x i8]* %402 to i24*
  %404 = load i24, i24* %403, align 1
  %405 = and i24 %404, -9
  %406 = or i24 %405, 8
  store i24 %406, i24* %403, align 1
  br label %407

; <label>:407                                     ; preds = %394, %385
  %408 = load %union.rec*, %union.rec** %s, align 8
  %409 = bitcast %union.rec* %408 to %struct.word_type*
  %410 = getelementptr inbounds %struct.word_type, %struct.word_type* %409, i32 0, i32 1
  %411 = bitcast %union.FIRST_UNION* %410 to %struct.anon.0*
  %412 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %411, i32 0, i32 0
  %413 = load i8, i8* %412, align 1
  %414 = zext i8 %413 to i32
  %415 = icmp eq i32 %414, 145
  br i1 %415, label %416, label %512

; <label>:416                                     ; preds = %407
  %417 = load %union.rec*, %union.rec** %s, align 8
  %418 = bitcast %union.rec* %417 to %struct.symbol_type*
  %419 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %418, i32 0, i32 3
  %420 = load %union.rec*, %union.rec** %419, align 8
  %421 = bitcast %union.rec* %420 to %struct.word_type*
  %422 = getelementptr inbounds %struct.word_type, %struct.word_type* %421, i32 0, i32 0
  %423 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %422, i32 0, i64 0
  %424 = getelementptr inbounds %struct.LIST, %struct.LIST* %423, i32 0, i32 0
  %425 = load %union.rec*, %union.rec** %424, align 8
  %426 = load %union.rec*, %union.rec** %s, align 8
  %427 = bitcast %union.rec* %426 to %struct.symbol_type*
  %428 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %427, i32 0, i32 3
  %429 = load %union.rec*, %union.rec** %428, align 8
  %430 = icmp ne %union.rec* %425, %429
  br i1 %430, label %431, label %507

; <label>:431                                     ; preds = %416
  %432 = load %union.rec*, %union.rec** %s, align 8
  %433 = bitcast %union.rec* %432 to %struct.symbol_type*
  %434 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %433, i32 0, i32 3
  %435 = load %union.rec*, %union.rec** %434, align 8
  %436 = bitcast %union.rec* %435 to %struct.word_type*
  %437 = getelementptr inbounds %struct.word_type, %struct.word_type* %436, i32 0, i32 0
  %438 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %437, i32 0, i64 0
  %439 = getelementptr inbounds %struct.LIST, %struct.LIST* %438, i32 0, i32 0
  %440 = load %union.rec*, %union.rec** %439, align 8
  %441 = bitcast %union.rec* %440 to %struct.word_type*
  %442 = getelementptr inbounds %struct.word_type, %struct.word_type* %441, i32 0, i32 0
  %443 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %442, i32 0, i64 1
  %444 = getelementptr inbounds %struct.LIST, %struct.LIST* %443, i32 0, i32 0
  %445 = load %union.rec*, %union.rec** %444, align 8
  store %union.rec* %445, %union.rec** %tmp, align 8
  br label %446

; <label>:446                                     ; preds = %456, %431
  %447 = load %union.rec*, %union.rec** %tmp, align 8
  %448 = bitcast %union.rec* %447 to %struct.word_type*
  %449 = getelementptr inbounds %struct.word_type, %struct.word_type* %448, i32 0, i32 1
  %450 = bitcast %union.FIRST_UNION* %449 to %struct.anon.0*
  %451 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %450, i32 0, i32 0
  %452 = load i8, i8* %451, align 1
  %453 = zext i8 %452 to i32
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %463

; <label>:455                                     ; preds = %446
  br label %456

; <label>:456                                     ; preds = %455
  %457 = load %union.rec*, %union.rec** %tmp, align 8
  %458 = bitcast %union.rec* %457 to %struct.word_type*
  %459 = getelementptr inbounds %struct.word_type, %struct.word_type* %458, i32 0, i32 0
  %460 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %459, i32 0, i64 1
  %461 = getelementptr inbounds %struct.LIST, %struct.LIST* %460, i32 0, i32 0
  %462 = load %union.rec*, %union.rec** %461, align 8
  store %union.rec* %462, %union.rec** %tmp, align 8
  br label %446

; <label>:463                                     ; preds = %446
  %464 = load %union.rec*, %union.rec** %tmp, align 8
  %465 = bitcast %union.rec* %464 to %struct.word_type*
  %466 = getelementptr inbounds %struct.word_type, %struct.word_type* %465, i32 0, i32 1
  %467 = bitcast %union.FIRST_UNION* %466 to %struct.anon.0*
  %468 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %467, i32 0, i32 0
  %469 = load i8, i8* %468, align 1
  %470 = zext i8 %469 to i32
  %471 = icmp eq i32 %470, 145
  br i1 %471, label %472, label %502

; <label>:472                                     ; preds = %463
  %473 = load %union.rec*, %union.rec** %tmp, align 8
  %474 = bitcast %union.rec* %473 to %struct.symbol_type*
  %475 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %474, i32 0, i32 15
  %476 = load i8, i8* %475, align 1
  %477 = zext i8 %476 to i32
  %478 = icmp eq i32 %477, 122
  br i1 %478, label %486, label %479

; <label>:479                                     ; preds = %472
  %480 = load %union.rec*, %union.rec** %tmp, align 8
  %481 = bitcast %union.rec* %480 to %struct.symbol_type*
  %482 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %481, i32 0, i32 15
  %483 = load i8, i8* %482, align 1
  %484 = zext i8 %483 to i32
  %485 = icmp eq i32 %484, 32
  br i1 %485, label %486, label %490

; <label>:486                                     ; preds = %479, %472
  %487 = load %union.rec*, %union.rec** %s, align 8
  %488 = bitcast %union.rec* %487 to %struct.symbol_type*
  %489 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %488, i32 0, i32 15
  store i8 32, i8* %489, align 1
  br label %501

; <label>:490                                     ; preds = %479
  %491 = load %union.rec*, %union.rec** %tmp, align 8
  %492 = bitcast %union.rec* %491 to %struct.symbol_type*
  %493 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %492, i32 0, i32 15
  %494 = load i8, i8* %493, align 1
  %495 = zext i8 %494 to i32
  %496 = add nsw i32 %495, 1
  %497 = trunc i32 %496 to i8
  %498 = load %union.rec*, %union.rec** %s, align 8
  %499 = bitcast %union.rec* %498 to %struct.symbol_type*
  %500 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %499, i32 0, i32 15
  store i8 %497, i8* %500, align 1
  br label %501

; <label>:501                                     ; preds = %490, %486
  br label %506

; <label>:502                                     ; preds = %463
  %503 = load %union.rec*, %union.rec** %s, align 8
  %504 = bitcast %union.rec* %503 to %struct.symbol_type*
  %505 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %504, i32 0, i32 15
  store i8 97, i8* %505, align 1
  br label %506

; <label>:506                                     ; preds = %502, %501
  br label %511

; <label>:507                                     ; preds = %416
  %508 = load %union.rec*, %union.rec** %s, align 8
  %509 = bitcast %union.rec* %508 to %struct.symbol_type*
  %510 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %509, i32 0, i32 15
  store i8 97, i8* %510, align 1
  br label %511

; <label>:511                                     ; preds = %507, %506
  br label %512

; <label>:512                                     ; preds = %511, %407
  %513 = load %union.rec*, %union.rec** %s, align 8
  %514 = bitcast %union.rec* %513 to %struct.word_type*
  %515 = getelementptr inbounds %struct.word_type, %struct.word_type* %514, i32 0, i32 2
  %516 = bitcast %union.SECOND_UNION* %515 to %struct.anon.6*
  %517 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %516, i32 0, i32 1
  %518 = bitcast [3 x i8]* %517 to i24*
  %519 = load i24, i24* %518, align 1
  %520 = and i24 %519, -65
  store i24 %520, i24* %518, align 1
  %521 = load %union.rec*, %union.rec** %s, align 8
  %522 = bitcast %union.rec* %521 to %struct.word_type*
  %523 = getelementptr inbounds %struct.word_type, %struct.word_type* %522, i32 0, i32 2
  %524 = bitcast %union.SECOND_UNION* %523 to %struct.anon.6*
  %525 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %524, i32 0, i32 1
  %526 = bitcast [3 x i8]* %525 to i24*
  %527 = load i24, i24* %526, align 1
  %528 = and i24 %527, -129
  store i24 %528, i24* %526, align 1
  %529 = load i8*, i8** %1, align 8
  %530 = call i32 @strcmp(i8* %529, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #4
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %541, label %532

; <label>:532                                     ; preds = %512
  %533 = load %union.rec*, %union.rec** %s, align 8
  %534 = bitcast %union.rec* %533 to %struct.word_type*
  %535 = getelementptr inbounds %struct.word_type, %struct.word_type* %534, i32 0, i32 2
  %536 = bitcast %union.SECOND_UNION* %535 to %struct.anon.6*
  %537 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %536, i32 0, i32 1
  %538 = bitcast [3 x i8]* %537 to i24*
  %539 = load i24, i24* %538, align 1
  %540 = and i24 %539, -33
  store i24 %540, i24* %538, align 1
  br label %678

; <label>:541                                     ; preds = %512
  %542 = load %union.rec*, %union.rec** %s, align 8
  %543 = bitcast %union.rec* %542 to %struct.symbol_type*
  %544 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %543, i32 0, i32 3
  %545 = load %union.rec*, %union.rec** %544, align 8
  %546 = bitcast %union.rec* %545 to %struct.word_type*
  %547 = getelementptr inbounds %struct.word_type, %struct.word_type* %546, i32 0, i32 2
  %548 = bitcast %union.SECOND_UNION* %547 to %struct.anon.6*
  %549 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %548, i32 0, i32 1
  %550 = bitcast [3 x i8]* %549 to i24*
  %551 = load i24, i24* %550, align 1
  %552 = and i24 %551, -65
  %553 = or i24 %552, 64
  store i24 %553, i24* %550, align 1
  %554 = load %union.rec*, %union.rec** %s, align 8
  %555 = bitcast %union.rec* %554 to %struct.word_type*
  %556 = getelementptr inbounds %struct.word_type, %struct.word_type* %555, i32 0, i32 2
  %557 = bitcast %union.SECOND_UNION* %556 to %struct.anon.6*
  %558 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %557, i32 0, i32 1
  %559 = bitcast [3 x i8]* %558 to i24*
  %560 = load i24, i24* %559, align 1
  %561 = and i24 %560, -33
  %562 = or i24 %561, 32
  store i24 %562, i24* %559, align 1
  %563 = load %union.rec*, %union.rec** %s, align 8
  %564 = bitcast %union.rec* %563 to %struct.symbol_type*
  %565 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %564, i32 0, i32 3
  %566 = load %union.rec*, %union.rec** %565, align 8
  %567 = bitcast %union.rec* %566 to %struct.word_type*
  %568 = getelementptr inbounds %struct.word_type, %struct.word_type* %567, i32 0, i32 2
  %569 = bitcast %union.SECOND_UNION* %568 to %struct.anon.6*
  %570 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %569, i32 0, i32 1
  %571 = bitcast [3 x i8]* %570 to i24*
  %572 = load i24, i24* %571, align 1
  %573 = lshr i24 %572, 14
  %574 = and i24 %573, 1
  %575 = zext i24 %574 to i32
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %577, label %677

; <label>:577                                     ; preds = %541
  %578 = load %union.rec*, %union.rec** %9, align 8
  %579 = icmp ne %union.rec* %578, null
  br i1 %579, label %580, label %677

; <label>:580                                     ; preds = %577
  %581 = load %union.rec*, %union.rec** %9, align 8
  %582 = bitcast %union.rec* %581 to %struct.word_type*
  %583 = getelementptr inbounds %struct.word_type, %struct.word_type* %582, i32 0, i32 1
  %584 = bitcast %union.FIRST_UNION* %583 to %struct.anon.0*
  %585 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %584, i32 0, i32 0
  %586 = load i8, i8* %585, align 1
  %587 = zext i8 %586 to i32
  %588 = icmp eq i32 %587, 6
  br i1 %588, label %598, label %589

; <label>:589                                     ; preds = %580
  %590 = load %union.rec*, %union.rec** %9, align 8
  %591 = bitcast %union.rec* %590 to %struct.word_type*
  %592 = getelementptr inbounds %struct.word_type, %struct.word_type* %591, i32 0, i32 1
  %593 = bitcast %union.FIRST_UNION* %592 to %struct.anon.0*
  %594 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %593, i32 0, i32 0
  %595 = load i8, i8* %594, align 1
  %596 = zext i8 %595 to i32
  %597 = icmp eq i32 %596, 7
  br i1 %597, label %598, label %677

; <label>:598                                     ; preds = %589, %580
  %599 = load %union.rec*, %union.rec** %9, align 8
  %600 = bitcast %union.rec* %599 to %struct.word_type*
  %601 = getelementptr inbounds %struct.word_type, %struct.word_type* %600, i32 0, i32 0
  %602 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %601, i32 0, i64 0
  %603 = getelementptr inbounds %struct.LIST, %struct.LIST* %602, i32 0, i32 0
  %604 = load %union.rec*, %union.rec** %603, align 8
  %605 = load %union.rec*, %union.rec** %9, align 8
  %606 = bitcast %union.rec* %605 to %struct.word_type*
  %607 = getelementptr inbounds %struct.word_type, %struct.word_type* %606, i32 0, i32 0
  %608 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %607, i32 0, i64 0
  %609 = getelementptr inbounds %struct.LIST, %struct.LIST* %608, i32 0, i32 1
  %610 = load %union.rec*, %union.rec** %609, align 8
  %611 = icmp ne %union.rec* %604, %610
  br i1 %611, label %612, label %676

; <label>:612                                     ; preds = %598
  %613 = load %union.rec*, %union.rec** %9, align 8
  %614 = bitcast %union.rec* %613 to %struct.word_type*
  %615 = getelementptr inbounds %struct.word_type, %struct.word_type* %614, i32 0, i32 0
  %616 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %615, i32 0, i64 0
  %617 = getelementptr inbounds %struct.LIST, %struct.LIST* %616, i32 0, i32 1
  %618 = load %union.rec*, %union.rec** %617, align 8
  %619 = bitcast %union.rec* %618 to %struct.word_type*
  %620 = getelementptr inbounds %struct.word_type, %struct.word_type* %619, i32 0, i32 0
  %621 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %620, i32 0, i64 1
  %622 = getelementptr inbounds %struct.LIST, %struct.LIST* %621, i32 0, i32 0
  %623 = load %union.rec*, %union.rec** %622, align 8
  store %union.rec* %623, %union.rec** %sym, align 8
  br label %624

; <label>:624                                     ; preds = %634, %612
  %625 = load %union.rec*, %union.rec** %sym, align 8
  %626 = bitcast %union.rec* %625 to %struct.word_type*
  %627 = getelementptr inbounds %struct.word_type, %struct.word_type* %626, i32 0, i32 1
  %628 = bitcast %union.FIRST_UNION* %627 to %struct.anon.0*
  %629 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %628, i32 0, i32 0
  %630 = load i8, i8* %629, align 1
  %631 = zext i8 %630 to i32
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %633, label %641

; <label>:633                                     ; preds = %624
  br label %634

; <label>:634                                     ; preds = %633
  %635 = load %union.rec*, %union.rec** %sym, align 8
  %636 = bitcast %union.rec* %635 to %struct.word_type*
  %637 = getelementptr inbounds %struct.word_type, %struct.word_type* %636, i32 0, i32 0
  %638 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %637, i32 0, i64 1
  %639 = getelementptr inbounds %struct.LIST, %struct.LIST* %638, i32 0, i32 0
  %640 = load %union.rec*, %union.rec** %639, align 8
  store %union.rec* %640, %union.rec** %sym, align 8
  br label %624

; <label>:641                                     ; preds = %624
  %642 = load %union.rec*, %union.rec** %sym, align 8
  %643 = bitcast %union.rec* %642 to %struct.word_type*
  %644 = getelementptr inbounds %struct.word_type, %struct.word_type* %643, i32 0, i32 1
  %645 = bitcast %union.FIRST_UNION* %644 to %struct.anon.0*
  %646 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %645, i32 0, i32 0
  %647 = load i8, i8* %646, align 1
  %648 = zext i8 %647 to i32
  %649 = icmp eq i32 %648, 2
  br i1 %649, label %650, label %675

; <label>:650                                     ; preds = %641
  %651 = load %union.rec*, %union.rec** %sym, align 8
  %652 = bitcast %union.rec* %651 to %struct.closure_type*
  %653 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %652, i32 0, i32 5
  %654 = load %union.rec*, %union.rec** %653, align 8
  %655 = bitcast %union.rec* %654 to %struct.word_type*
  %656 = getelementptr inbounds %struct.word_type, %struct.word_type* %655, i32 0, i32 2
  %657 = bitcast %union.SECOND_UNION* %656 to %struct.anon.6*
  %658 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %657, i32 0, i32 1
  %659 = bitcast [3 x i8]* %658 to i24*
  %660 = load i24, i24* %659, align 1
  %661 = and i24 %660, -4097
  %662 = or i24 %661, 4096
  store i24 %662, i24* %659, align 1
  %663 = load %union.rec*, %union.rec** %sym, align 8
  %664 = bitcast %union.rec* %663 to %struct.closure_type*
  %665 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %664, i32 0, i32 5
  %666 = load %union.rec*, %union.rec** %665, align 8
  %667 = bitcast %union.rec* %666 to %struct.word_type*
  %668 = getelementptr inbounds %struct.word_type, %struct.word_type* %667, i32 0, i32 2
  %669 = bitcast %union.SECOND_UNION* %668 to %struct.anon.6*
  %670 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %669, i32 0, i32 1
  %671 = bitcast [3 x i8]* %670 to i24*
  %672 = load i24, i24* %671, align 1
  %673 = and i24 %672, -2049
  %674 = or i24 %673, 2048
  store i24 %674, i24* %671, align 1
  br label %675

; <label>:675                                     ; preds = %650, %641
  br label %676

; <label>:676                                     ; preds = %675, %598
  br label %677

; <label>:677                                     ; preds = %676, %589, %577, %541
  br label %678

; <label>:678                                     ; preds = %677, %532
  %679 = load %union.rec*, %union.rec** %s, align 8
  %680 = bitcast %union.rec* %679 to %struct.word_type*
  %681 = getelementptr inbounds %struct.word_type, %struct.word_type* %680, i32 0, i32 2
  %682 = bitcast %union.SECOND_UNION* %681 to %struct.anon.6*
  %683 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %682, i32 0, i32 1
  %684 = bitcast [3 x i8]* %683 to i24*
  %685 = load i24, i24* %684, align 1
  %686 = and i24 %685, -2
  store i24 %686, i24* %684, align 1
  %687 = load %union.rec*, %union.rec** %s, align 8
  %688 = bitcast %union.rec* %687 to %struct.word_type*
  %689 = getelementptr inbounds %struct.word_type, %struct.word_type* %688, i32 0, i32 2
  %690 = bitcast %union.SECOND_UNION* %689 to %struct.anon.6*
  %691 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %690, i32 0, i32 1
  %692 = bitcast [3 x i8]* %691 to i24*
  %693 = load i24, i24* %692, align 1
  %694 = and i24 %693, -3
  store i24 %694, i24* %692, align 1
  %695 = load %union.rec*, %union.rec** %s, align 8
  %696 = bitcast %union.rec* %695 to %struct.word_type*
  %697 = getelementptr inbounds %struct.word_type, %struct.word_type* %696, i32 0, i32 2
  %698 = bitcast %union.SECOND_UNION* %697 to %struct.anon.6*
  %699 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %698, i32 0, i32 1
  %700 = bitcast [3 x i8]* %699 to i24*
  %701 = load i24, i24* %700, align 1
  %702 = and i24 %701, -8193
  store i24 %702, i24* %700, align 1
  %703 = load %union.rec*, %union.rec** %s, align 8
  %704 = bitcast %union.rec* %703 to %struct.word_type*
  %705 = getelementptr inbounds %struct.word_type, %struct.word_type* %704, i32 0, i32 2
  %706 = bitcast %union.SECOND_UNION* %705 to %struct.anon.6*
  %707 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %706, i32 0, i32 1
  %708 = bitcast [3 x i8]* %707 to i24*
  %709 = load i24, i24* %708, align 1
  %710 = and i24 %709, -16385
  store i24 %710, i24* %708, align 1
  %711 = load %union.rec*, %union.rec** %s, align 8
  %712 = bitcast %union.rec* %711 to %struct.symbol_type*
  %713 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %712, i32 0, i32 16
  %714 = load i8, i8* %713, align 2
  %715 = and i8 %714, -2
  store i8 %715, i8* %713, align 2
  %716 = load %union.rec*, %union.rec** %s, align 8
  %717 = bitcast %union.rec* %716 to %struct.symbol_type*
  %718 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %717, i32 0, i32 16
  %719 = load i8, i8* %718, align 2
  %720 = and i8 %719, -3
  store i8 %720, i8* %718, align 2
  %721 = load %union.rec*, %union.rec** %s, align 8
  %722 = bitcast %union.rec* %721 to %struct.symbol_type*
  %723 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %722, i32 0, i32 16
  %724 = load i8, i8* %723, align 2
  %725 = and i8 %724, -5
  store i8 %725, i8* %723, align 2
  %726 = load %union.rec*, %union.rec** %s, align 8
  %727 = bitcast %union.rec* %726 to %struct.symbol_type*
  %728 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %727, i32 0, i32 16
  %729 = load i8, i8* %728, align 2
  %730 = and i8 %729, -9
  store i8 %730, i8* %728, align 2
  %731 = load %union.rec*, %union.rec** %s, align 8
  %732 = bitcast %union.rec* %731 to %struct.symbol_type*
  %733 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %732, i32 0, i32 16
  %734 = load i8, i8* %733, align 2
  %735 = and i8 %734, -17
  store i8 %735, i8* %733, align 2
  %736 = load %union.rec*, %union.rec** %s, align 8
  %737 = bitcast %union.rec* %736 to %struct.symbol_type*
  %738 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %737, i32 0, i32 16
  %739 = load i8, i8* %738, align 2
  %740 = and i8 %739, -33
  store i8 %740, i8* %738, align 2
  %741 = load %union.rec*, %union.rec** %s, align 8
  %742 = bitcast %union.rec* %741 to %struct.symbol_type*
  %743 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %742, i32 0, i32 3
  %744 = load %union.rec*, %union.rec** %743, align 8
  %745 = icmp ne %union.rec* %744, null
  br i1 %745, label %746, label %1053

; <label>:746                                     ; preds = %678
  %747 = load %union.rec*, %union.rec** %s, align 8
  %748 = bitcast %union.rec* %747 to %struct.symbol_type*
  %749 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %748, i32 0, i32 3
  %750 = load %union.rec*, %union.rec** %749, align 8
  %751 = bitcast %union.rec* %750 to %struct.word_type*
  %752 = getelementptr inbounds %struct.word_type, %struct.word_type* %751, i32 0, i32 1
  %753 = bitcast %union.FIRST_UNION* %752 to %struct.anon.0*
  %754 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %753, i32 0, i32 0
  %755 = load i8, i8* %754, align 1
  %756 = zext i8 %755 to i32
  %757 = icmp eq i32 %756, 143
  br i1 %757, label %758, label %1053

; <label>:758                                     ; preds = %746
  %759 = load i8*, i8** %1, align 8
  %760 = call i32 @strcmp(i8* %759, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)) #4
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %762, label %796

; <label>:762                                     ; preds = %758
  %763 = load %union.rec*, %union.rec** %s, align 8
  %764 = bitcast %union.rec* %763 to %struct.symbol_type*
  %765 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %764, i32 0, i32 3
  %766 = load %union.rec*, %union.rec** %765, align 8
  %767 = bitcast %union.rec* %766 to %struct.word_type*
  %768 = getelementptr inbounds %struct.word_type, %struct.word_type* %767, i32 0, i32 2
  %769 = bitcast %union.SECOND_UNION* %768 to %struct.anon.6*
  %770 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %769, i32 0, i32 1
  %771 = bitcast [3 x i8]* %770 to i24*
  %772 = load i24, i24* %771, align 1
  %773 = and i24 %772, -32769
  %774 = or i24 %773, 32768
  store i24 %774, i24* %771, align 1
  %775 = load %union.rec*, %union.rec** %s, align 8
  %776 = bitcast %union.rec* %775 to %struct.symbol_type*
  %777 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %776, i32 0, i32 3
  %778 = load %union.rec*, %union.rec** %777, align 8
  %779 = bitcast %union.rec* %778 to %struct.word_type*
  %780 = getelementptr inbounds %struct.word_type, %struct.word_type* %779, i32 0, i32 2
  %781 = bitcast %union.SECOND_UNION* %780 to %struct.anon.6*
  %782 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %781, i32 0, i32 1
  %783 = bitcast [3 x i8]* %782 to i24*
  %784 = load i24, i24* %783, align 1
  %785 = and i24 %784, -3
  %786 = or i24 %785, 2
  store i24 %786, i24* %783, align 1
  %787 = load %union.rec*, %union.rec** %s, align 8
  %788 = bitcast %union.rec* %787 to %struct.word_type*
  %789 = getelementptr inbounds %struct.word_type, %struct.word_type* %788, i32 0, i32 2
  %790 = bitcast %union.SECOND_UNION* %789 to %struct.anon.6*
  %791 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %790, i32 0, i32 1
  %792 = bitcast [3 x i8]* %791 to i24*
  %793 = load i24, i24* %792, align 1
  %794 = and i24 %793, -2
  %795 = or i24 %794, 1
  store i24 %795, i24* %792, align 1
  br label %796

; <label>:796                                     ; preds = %762, %758
  %797 = load i8*, i8** %1, align 8
  %798 = call i32 @strcmp(i8* %797, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0)) #4
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %800, label %816

; <label>:800                                     ; preds = %796
  %801 = load %union.rec*, %union.rec** %s, align 8
  %802 = bitcast %union.rec* %801 to %struct.symbol_type*
  %803 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %802, i32 0, i32 3
  %804 = load %union.rec*, %union.rec** %803, align 8
  %805 = bitcast %union.rec* %804 to %struct.symbol_type*
  %806 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %805, i32 0, i32 16
  %807 = load i8, i8* %806, align 2
  %808 = and i8 %807, -3
  %809 = or i8 %808, 2
  store i8 %809, i8* %806, align 2
  %810 = load %union.rec*, %union.rec** %s, align 8
  %811 = bitcast %union.rec* %810 to %struct.symbol_type*
  %812 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %811, i32 0, i32 16
  %813 = load i8, i8* %812, align 2
  %814 = and i8 %813, -2
  %815 = or i8 %814, 1
  store i8 %815, i8* %812, align 2
  br label %816

; <label>:816                                     ; preds = %800, %796
  %817 = load i8*, i8** %1, align 8
  %818 = call i32 @strcmp(i8* %817, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0)) #4
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %820, label %1012

; <label>:820                                     ; preds = %816
  %821 = load %union.rec*, %union.rec** %s, align 8
  %822 = bitcast %union.rec* %821 to %struct.symbol_type*
  %823 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %822, i32 0, i32 3
  %824 = load %union.rec*, %union.rec** %823, align 8
  %825 = bitcast %union.rec* %824 to %struct.word_type*
  %826 = getelementptr inbounds %struct.word_type, %struct.word_type* %825, i32 0, i32 2
  %827 = bitcast %union.SECOND_UNION* %826 to %struct.anon.6*
  %828 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %827, i32 0, i32 1
  %829 = bitcast [3 x i8]* %828 to i24*
  %830 = load i24, i24* %829, align 1
  %831 = and i24 %830, -32769
  %832 = or i24 %831, 32768
  store i24 %832, i24* %829, align 1
  %833 = load %union.rec*, %union.rec** %s, align 8
  %834 = bitcast %union.rec* %833 to %struct.symbol_type*
  %835 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %834, i32 0, i32 3
  %836 = load %union.rec*, %union.rec** %835, align 8
  %837 = bitcast %union.rec* %836 to %struct.word_type*
  %838 = getelementptr inbounds %struct.word_type, %struct.word_type* %837, i32 0, i32 2
  %839 = bitcast %union.SECOND_UNION* %838 to %struct.anon.6*
  %840 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %839, i32 0, i32 1
  %841 = bitcast [3 x i8]* %840 to i24*
  %842 = load i24, i24* %841, align 1
  %843 = and i24 %842, -16385
  %844 = or i24 %843, 16384
  store i24 %844, i24* %841, align 1
  %845 = load %union.rec*, %union.rec** %s, align 8
  %846 = bitcast %union.rec* %845 to %struct.word_type*
  %847 = getelementptr inbounds %struct.word_type, %struct.word_type* %846, i32 0, i32 2
  %848 = bitcast %union.SECOND_UNION* %847 to %struct.anon.6*
  %849 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %848, i32 0, i32 1
  %850 = bitcast [3 x i8]* %849 to i24*
  %851 = load i24, i24* %850, align 1
  %852 = and i24 %851, -8193
  %853 = or i24 %852, 8192
  store i24 %853, i24* %850, align 1
  %854 = load %union.rec*, %union.rec** %s, align 8
  %855 = bitcast %union.rec* %854 to %struct.symbol_type*
  %856 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %855, i32 0, i32 3
  %857 = load %union.rec*, %union.rec** %856, align 8
  %858 = bitcast %union.rec* %857 to %struct.word_type*
  %859 = getelementptr inbounds %struct.word_type, %struct.word_type* %858, i32 0, i32 0
  %860 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %859, i32 0, i64 0
  %861 = getelementptr inbounds %struct.LIST, %struct.LIST* %860, i32 0, i32 1
  %862 = load %union.rec*, %union.rec** %861, align 8
  store %union.rec* %862, %union.rec** %link, align 8
  br label %863

; <label>:863                                     ; preds = %1004, %820
  %864 = load %union.rec*, %union.rec** %link, align 8
  %865 = load %union.rec*, %union.rec** %s, align 8
  %866 = bitcast %union.rec* %865 to %struct.symbol_type*
  %867 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %866, i32 0, i32 3
  %868 = load %union.rec*, %union.rec** %867, align 8
  %869 = icmp ne %union.rec* %864, %868
  br i1 %869, label %870, label %1011

; <label>:870                                     ; preds = %863
  %871 = load %union.rec*, %union.rec** %link, align 8
  %872 = bitcast %union.rec* %871 to %struct.word_type*
  %873 = getelementptr inbounds %struct.word_type, %struct.word_type* %872, i32 0, i32 0
  %874 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %873, i32 0, i64 1
  %875 = getelementptr inbounds %struct.LIST, %struct.LIST* %874, i32 0, i32 0
  %876 = load %union.rec*, %union.rec** %875, align 8
  store %union.rec* %876, %union.rec** %p, align 8
  br label %877

; <label>:877                                     ; preds = %887, %870
  %878 = load %union.rec*, %union.rec** %p, align 8
  %879 = bitcast %union.rec* %878 to %struct.word_type*
  %880 = getelementptr inbounds %struct.word_type, %struct.word_type* %879, i32 0, i32 1
  %881 = bitcast %union.FIRST_UNION* %880 to %struct.anon.0*
  %882 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %881, i32 0, i32 0
  %883 = load i8, i8* %882, align 1
  %884 = zext i8 %883 to i32
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %886, label %894

; <label>:886                                     ; preds = %877
  br label %887

; <label>:887                                     ; preds = %886
  %888 = load %union.rec*, %union.rec** %p, align 8
  %889 = bitcast %union.rec* %888 to %struct.word_type*
  %890 = getelementptr inbounds %struct.word_type, %struct.word_type* %889, i32 0, i32 0
  %891 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %890, i32 0, i64 1
  %892 = getelementptr inbounds %struct.LIST, %struct.LIST* %891, i32 0, i32 0
  %893 = load %union.rec*, %union.rec** %892, align 8
  store %union.rec* %893, %union.rec** %p, align 8
  br label %877

; <label>:894                                     ; preds = %877
  %895 = load %union.rec*, %union.rec** %p, align 8
  %896 = bitcast %union.rec* %895 to %struct.word_type*
  %897 = getelementptr inbounds %struct.word_type, %struct.word_type* %896, i32 0, i32 2
  %898 = bitcast %union.SECOND_UNION* %897 to %struct.anon.6*
  %899 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %898, i32 0, i32 1
  %900 = bitcast [3 x i8]* %899 to i24*
  %901 = load i24, i24* %900, align 1
  %902 = lshr i24 %901, 5
  %903 = and i24 %902, 1
  %904 = zext i24 %903 to i32
  %905 = icmp ne i32 %904, 0
  br i1 %905, label %906, label %1003

; <label>:906                                     ; preds = %894
  %907 = load %union.rec*, %union.rec** %p, align 8
  %908 = bitcast %union.rec* %907 to %struct.symbol_type*
  %909 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %908, i32 0, i32 4
  %910 = load %union.rec*, %union.rec** %909, align 8
  %911 = icmp ne %union.rec* %910, null
  br i1 %911, label %912, label %1003

; <label>:912                                     ; preds = %906
  %913 = load %union.rec*, %union.rec** %p, align 8
  %914 = bitcast %union.rec* %913 to %struct.symbol_type*
  %915 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %914, i32 0, i32 4
  %916 = load %union.rec*, %union.rec** %915, align 8
  %917 = bitcast %union.rec* %916 to %struct.word_type*
  %918 = getelementptr inbounds %struct.word_type, %struct.word_type* %917, i32 0, i32 1
  %919 = bitcast %union.FIRST_UNION* %918 to %struct.anon.0*
  %920 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %919, i32 0, i32 0
  %921 = load i8, i8* %920, align 1
  %922 = zext i8 %921 to i32
  %923 = icmp eq i32 %922, 6
  br i1 %923, label %936, label %924

; <label>:924                                     ; preds = %912
  %925 = load %union.rec*, %union.rec** %p, align 8
  %926 = bitcast %union.rec* %925 to %struct.symbol_type*
  %927 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %926, i32 0, i32 4
  %928 = load %union.rec*, %union.rec** %927, align 8
  %929 = bitcast %union.rec* %928 to %struct.word_type*
  %930 = getelementptr inbounds %struct.word_type, %struct.word_type* %929, i32 0, i32 1
  %931 = bitcast %union.FIRST_UNION* %930 to %struct.anon.0*
  %932 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %931, i32 0, i32 0
  %933 = load i8, i8* %932, align 1
  %934 = zext i8 %933 to i32
  %935 = icmp eq i32 %934, 7
  br i1 %935, label %936, label %1003

; <label>:936                                     ; preds = %924, %912
  %937 = load %union.rec*, %union.rec** %p, align 8
  %938 = bitcast %union.rec* %937 to %struct.symbol_type*
  %939 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %938, i32 0, i32 4
  %940 = load %union.rec*, %union.rec** %939, align 8
  %941 = bitcast %union.rec* %940 to %struct.word_type*
  %942 = getelementptr inbounds %struct.word_type, %struct.word_type* %941, i32 0, i32 0
  %943 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %942, i32 0, i64 0
  %944 = getelementptr inbounds %struct.LIST, %struct.LIST* %943, i32 0, i32 1
  %945 = load %union.rec*, %union.rec** %944, align 8
  %946 = bitcast %union.rec* %945 to %struct.word_type*
  %947 = getelementptr inbounds %struct.word_type, %struct.word_type* %946, i32 0, i32 0
  %948 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %947, i32 0, i64 1
  %949 = getelementptr inbounds %struct.LIST, %struct.LIST* %948, i32 0, i32 0
  %950 = load %union.rec*, %union.rec** %949, align 8
  store %union.rec* %950, %union.rec** %sym1, align 8
  br label %951

; <label>:951                                     ; preds = %961, %936
  %952 = load %union.rec*, %union.rec** %sym1, align 8
  %953 = bitcast %union.rec* %952 to %struct.word_type*
  %954 = getelementptr inbounds %struct.word_type, %struct.word_type* %953, i32 0, i32 1
  %955 = bitcast %union.FIRST_UNION* %954 to %struct.anon.0*
  %956 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %955, i32 0, i32 0
  %957 = load i8, i8* %956, align 1
  %958 = zext i8 %957 to i32
  %959 = icmp eq i32 %958, 0
  br i1 %959, label %960, label %968

; <label>:960                                     ; preds = %951
  br label %961

; <label>:961                                     ; preds = %960
  %962 = load %union.rec*, %union.rec** %sym1, align 8
  %963 = bitcast %union.rec* %962 to %struct.word_type*
  %964 = getelementptr inbounds %struct.word_type, %struct.word_type* %963, i32 0, i32 0
  %965 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %964, i32 0, i64 1
  %966 = getelementptr inbounds %struct.LIST, %struct.LIST* %965, i32 0, i32 0
  %967 = load %union.rec*, %union.rec** %966, align 8
  store %union.rec* %967, %union.rec** %sym1, align 8
  br label %951

; <label>:968                                     ; preds = %951
  %969 = load %union.rec*, %union.rec** %sym1, align 8
  %970 = bitcast %union.rec* %969 to %struct.word_type*
  %971 = getelementptr inbounds %struct.word_type, %struct.word_type* %970, i32 0, i32 1
  %972 = bitcast %union.FIRST_UNION* %971 to %struct.anon.0*
  %973 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %972, i32 0, i32 0
  %974 = load i8, i8* %973, align 1
  %975 = zext i8 %974 to i32
  %976 = icmp eq i32 %975, 2
  br i1 %976, label %977, label %1002

; <label>:977                                     ; preds = %968
  %978 = load %union.rec*, %union.rec** %sym1, align 8
  %979 = bitcast %union.rec* %978 to %struct.closure_type*
  %980 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %979, i32 0, i32 5
  %981 = load %union.rec*, %union.rec** %980, align 8
  %982 = bitcast %union.rec* %981 to %struct.word_type*
  %983 = getelementptr inbounds %struct.word_type, %struct.word_type* %982, i32 0, i32 2
  %984 = bitcast %union.SECOND_UNION* %983 to %struct.anon.6*
  %985 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %984, i32 0, i32 1
  %986 = bitcast [3 x i8]* %985 to i24*
  %987 = load i24, i24* %986, align 1
  %988 = and i24 %987, -4097
  %989 = or i24 %988, 4096
  store i24 %989, i24* %986, align 1
  %990 = load %union.rec*, %union.rec** %sym1, align 8
  %991 = bitcast %union.rec* %990 to %struct.closure_type*
  %992 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %991, i32 0, i32 5
  %993 = load %union.rec*, %union.rec** %992, align 8
  %994 = bitcast %union.rec* %993 to %struct.word_type*
  %995 = getelementptr inbounds %struct.word_type, %struct.word_type* %994, i32 0, i32 2
  %996 = bitcast %union.SECOND_UNION* %995 to %struct.anon.6*
  %997 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %996, i32 0, i32 1
  %998 = bitcast [3 x i8]* %997 to i24*
  %999 = load i24, i24* %998, align 1
  %1000 = and i24 %999, -2049
  %1001 = or i24 %1000, 2048
  store i24 %1001, i24* %998, align 1
  br label %1002

; <label>:1002                                    ; preds = %977, %968
  br label %1003

; <label>:1003                                    ; preds = %1002, %924, %906, %894
  br label %1004

; <label>:1004                                    ; preds = %1003
  %1005 = load %union.rec*, %union.rec** %link, align 8
  %1006 = bitcast %union.rec* %1005 to %struct.word_type*
  %1007 = getelementptr inbounds %struct.word_type, %struct.word_type* %1006, i32 0, i32 0
  %1008 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1007, i32 0, i64 0
  %1009 = getelementptr inbounds %struct.LIST, %struct.LIST* %1008, i32 0, i32 1
  %1010 = load %union.rec*, %union.rec** %1009, align 8
  store %union.rec* %1010, %union.rec** %link, align 8
  br label %863

; <label>:1011                                    ; preds = %863
  br label %1012

; <label>:1012                                    ; preds = %1011, %816
  %1013 = load i8*, i8** %1, align 8
  %1014 = call i32 @strcmp(i8* %1013, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)) #4
  %1015 = icmp eq i32 %1014, 0
  br i1 %1015, label %1016, label %1032

; <label>:1016                                    ; preds = %1012
  %1017 = load %union.rec*, %union.rec** %s, align 8
  %1018 = bitcast %union.rec* %1017 to %struct.symbol_type*
  %1019 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1018, i32 0, i32 3
  %1020 = load %union.rec*, %union.rec** %1019, align 8
  %1021 = bitcast %union.rec* %1020 to %struct.symbol_type*
  %1022 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1021, i32 0, i32 16
  %1023 = load i8, i8* %1022, align 2
  %1024 = and i8 %1023, -9
  %1025 = or i8 %1024, 8
  store i8 %1025, i8* %1022, align 2
  %1026 = load %union.rec*, %union.rec** %s, align 8
  %1027 = bitcast %union.rec* %1026 to %struct.symbol_type*
  %1028 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1027, i32 0, i32 16
  %1029 = load i8, i8* %1028, align 2
  %1030 = and i8 %1029, -5
  %1031 = or i8 %1030, 4
  store i8 %1031, i8* %1028, align 2
  br label %1032

; <label>:1032                                    ; preds = %1016, %1012
  %1033 = load i8*, i8** %1, align 8
  %1034 = call i32 @strcmp(i8* %1033, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0)) #4
  %1035 = icmp eq i32 %1034, 0
  br i1 %1035, label %1036, label %1052

; <label>:1036                                    ; preds = %1032
  %1037 = load %union.rec*, %union.rec** %s, align 8
  %1038 = bitcast %union.rec* %1037 to %struct.symbol_type*
  %1039 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1038, i32 0, i32 3
  %1040 = load %union.rec*, %union.rec** %1039, align 8
  %1041 = bitcast %union.rec* %1040 to %struct.symbol_type*
  %1042 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1041, i32 0, i32 16
  %1043 = load i8, i8* %1042, align 2
  %1044 = and i8 %1043, -33
  %1045 = or i8 %1044, 32
  store i8 %1045, i8* %1042, align 2
  %1046 = load %union.rec*, %union.rec** %s, align 8
  %1047 = bitcast %union.rec* %1046 to %struct.symbol_type*
  %1048 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1047, i32 0, i32 16
  %1049 = load i8, i8* %1048, align 2
  %1050 = and i8 %1049, -17
  %1051 = or i8 %1050, 16
  store i8 %1051, i8* %1048, align 2
  br label %1052

; <label>:1052                                    ; preds = %1036, %1032
  br label %1053

; <label>:1053                                    ; preds = %1052, %746, %678
  %1054 = load i8*, i8** %1, align 8
  %1055 = call i32 @strcmp(i8* %1054, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0)) #4
  %1056 = icmp eq i32 %1055, 0
  br i1 %1056, label %1057, label %1119

; <label>:1057                                    ; preds = %1053
  %1058 = load %union.rec*, %union.rec** %s, align 8
  %1059 = bitcast %union.rec* %1058 to %struct.word_type*
  %1060 = getelementptr inbounds %struct.word_type, %struct.word_type* %1059, i32 0, i32 1
  %1061 = bitcast %union.FIRST_UNION* %1060 to %struct.anon.0*
  %1062 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1061, i32 0, i32 0
  %1063 = load i8, i8* %1062, align 1
  %1064 = zext i8 %1063 to i32
  %1065 = icmp ne i32 %1064, 143
  br i1 %1065, label %1073, label %1066

; <label>:1066                                    ; preds = %1057
  %1067 = load %union.rec*, %union.rec** %s, align 8
  %1068 = bitcast %union.rec* %1067 to %struct.symbol_type*
  %1069 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1068, i32 0, i32 3
  %1070 = load %union.rec*, %union.rec** %1069, align 8
  %1071 = load %union.rec*, %union.rec** @StartSym, align 8
  %1072 = icmp eq %union.rec* %1070, %1071
  br i1 %1072, label %1073, label %1080

; <label>:1073                                    ; preds = %1066, %1057
  %1074 = load %union.rec*, %union.rec** %s, align 8
  %1075 = bitcast %union.rec* %1074 to %struct.word_type*
  %1076 = getelementptr inbounds %struct.word_type, %struct.word_type* %1075, i32 0, i32 1
  %1077 = bitcast %union.FIRST_UNION* %1076 to %struct.FILE_POS*
  %1078 = load i8*, i8** %1, align 8
  %1079 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0), i32 2, %struct.FILE_POS* %1077, i8* %1078)
  br label %1118

; <label>:1080                                    ; preds = %1066
  %1081 = load %union.rec*, %union.rec** %s, align 8
  %1082 = bitcast %union.rec* %1081 to %struct.symbol_type*
  %1083 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1082, i32 0, i32 3
  %1084 = load %union.rec*, %union.rec** %1083, align 8
  %1085 = bitcast %union.rec* %1084 to %struct.word_type*
  %1086 = getelementptr inbounds %struct.word_type, %struct.word_type* %1085, i32 0, i32 2
  %1087 = bitcast %union.SECOND_UNION* %1086 to %struct.anon.6*
  %1088 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1087, i32 0, i32 1
  %1089 = bitcast [3 x i8]* %1088 to i24*
  %1090 = load i24, i24* %1089, align 1
  %1091 = lshr i24 %1090, 3
  %1092 = and i24 %1091, 1
  %1093 = zext i24 %1092 to i32
  %1094 = icmp ne i32 %1093, 0
  br i1 %1094, label %1101, label %1095

; <label>:1095                                    ; preds = %1080
  %1096 = load %union.rec*, %union.rec** %s, align 8
  %1097 = bitcast %union.rec* %1096 to %struct.word_type*
  %1098 = getelementptr inbounds %struct.word_type, %struct.word_type* %1097, i32 0, i32 1
  %1099 = bitcast %union.FIRST_UNION* %1098 to %struct.FILE_POS*
  %1100 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 14, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.17, i32 0, i32 0), i32 2, %struct.FILE_POS* %1099, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0))
  br label %1117

; <label>:1101                                    ; preds = %1080
  %1102 = load %union.rec*, %union.rec** %s, align 8
  %1103 = load %union.rec*, %union.rec** %s, align 8
  %1104 = bitcast %union.rec* %1103 to %struct.symbol_type*
  %1105 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1104, i32 0, i32 3
  %1106 = load %union.rec*, %union.rec** %1105, align 8
  %1107 = bitcast %union.rec* %1106 to %struct.symbol_type*
  %1108 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1107, i32 0, i32 10
  store %union.rec* %1102, %union.rec** %1108, align 8
  %1109 = load %union.rec*, %union.rec** %s, align 8
  %1110 = bitcast %union.rec* %1109 to %struct.symbol_type*
  %1111 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1110, i32 0, i32 3
  %1112 = load %union.rec*, %union.rec** %1111, align 8
  %1113 = bitcast %union.rec* %1112 to %struct.word_type*
  %1114 = getelementptr inbounds %struct.word_type, %struct.word_type* %1113, i32 0, i32 2
  %1115 = bitcast %union.SECOND_UNION* %1114 to %struct.anon.1*
  %1116 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %1115, i32 0, i32 0
  store i8 104, i8* %1116, align 1
  br label %1117

; <label>:1117                                    ; preds = %1101, %1095
  br label %1118

; <label>:1118                                    ; preds = %1117, %1073
  br label %1119

; <label>:1119                                    ; preds = %1118, %1053
  %1120 = load %union.rec*, %union.rec** %s, align 8
  %1121 = bitcast %union.rec* %1120 to %struct.word_type*
  %1122 = getelementptr inbounds %struct.word_type, %struct.word_type* %1121, i32 0, i32 1
  %1123 = bitcast %union.FIRST_UNION* %1122 to %struct.anon.0*
  %1124 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1123, i32 0, i32 0
  %1125 = load i8, i8* %1124, align 1
  %1126 = zext i8 %1125 to i32
  %1127 = icmp eq i32 %1126, 146
  br i1 %1127, label %1128, label %1181

; <label>:1128                                    ; preds = %1119
  %1129 = load %union.rec*, %union.rec** %s, align 8
  %1130 = bitcast %union.rec* %1129 to %struct.symbol_type*
  %1131 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1130, i32 0, i32 3
  %1132 = load %union.rec*, %union.rec** %1131, align 8
  %1133 = bitcast %union.rec* %1132 to %struct.word_type*
  %1134 = getelementptr inbounds %struct.word_type, %struct.word_type* %1133, i32 0, i32 2
  %1135 = bitcast %union.SECOND_UNION* %1134 to %struct.anon.6*
  %1136 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1135, i32 0, i32 1
  %1137 = bitcast [3 x i8]* %1136 to i24*
  %1138 = load i24, i24* %1137, align 1
  %1139 = lshr i24 %1138, 8
  %1140 = and i24 %1139, 1
  %1141 = zext i24 %1140 to i32
  %1142 = icmp ne i32 %1141, 0
  br i1 %1142, label %1143, label %1181

; <label>:1143                                    ; preds = %1128
  %1144 = load %union.rec*, %union.rec** %s, align 8
  %1145 = bitcast %union.rec* %1144 to %struct.word_type*
  %1146 = getelementptr inbounds %struct.word_type, %struct.word_type* %1145, i32 0, i32 2
  %1147 = bitcast %union.SECOND_UNION* %1146 to %struct.anon.6*
  %1148 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1147, i32 0, i32 1
  %1149 = bitcast [3 x i8]* %1148 to i24*
  %1150 = load i24, i24* %1149, align 1
  %1151 = and i24 %1150, 1
  %1152 = zext i24 %1151 to i32
  %1153 = icmp ne i32 %1152, 0
  br i1 %1153, label %1174, label %1154

; <label>:1154                                    ; preds = %1143
  %1155 = load %union.rec*, %union.rec** %s, align 8
  %1156 = bitcast %union.rec* %1155 to %struct.word_type*
  %1157 = getelementptr inbounds %struct.word_type, %struct.word_type* %1156, i32 0, i32 2
  %1158 = bitcast %union.SECOND_UNION* %1157 to %struct.anon.6*
  %1159 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1158, i32 0, i32 1
  %1160 = bitcast [3 x i8]* %1159 to i24*
  %1161 = load i24, i24* %1160, align 1
  %1162 = lshr i24 %1161, 13
  %1163 = and i24 %1162, 1
  %1164 = zext i24 %1163 to i32
  %1165 = icmp ne i32 %1164, 0
  br i1 %1165, label %1174, label %1166

; <label>:1166                                    ; preds = %1154
  %1167 = load %union.rec*, %union.rec** %s, align 8
  %1168 = bitcast %union.rec* %1167 to %struct.symbol_type*
  %1169 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1168, i32 0, i32 16
  %1170 = load i8, i8* %1169, align 2
  %1171 = and i8 %1170, 1
  %1172 = zext i8 %1171 to i32
  %1173 = icmp ne i32 %1172, 0
  br i1 %1173, label %1174, label %1181

; <label>:1174                                    ; preds = %1166, %1154, %1143
  %1175 = load %union.rec*, %union.rec** %s, align 8
  %1176 = bitcast %union.rec* %1175 to %struct.word_type*
  %1177 = getelementptr inbounds %struct.word_type, %struct.word_type* %1176, i32 0, i32 1
  %1178 = bitcast %union.FIRST_UNION* %1177 to %struct.FILE_POS*
  %1179 = load i8*, i8** %1, align 8
  %1180 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i32 0, i32 0), i32 2, %struct.FILE_POS* %1178, i8* %1179)
  br label %1181

; <label>:1181                                    ; preds = %1174, %1166, %1128, %1119
  %1182 = load %union.rec*, %union.rec** %s, align 8
  %1183 = bitcast %union.rec* %1182 to %struct.word_type*
  %1184 = getelementptr inbounds %struct.word_type, %struct.word_type* %1183, i32 0, i32 1
  %1185 = bitcast %union.FIRST_UNION* %1184 to %struct.anon.0*
  %1186 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1185, i32 0, i32 0
  %1187 = load i8, i8* %1186, align 1
  %1188 = zext i8 %1187 to i32
  %1189 = icmp eq i32 %1188, 146
  br i1 %1189, label %1190, label %1243

; <label>:1190                                    ; preds = %1181
  %1191 = load %union.rec*, %union.rec** %s, align 8
  %1192 = bitcast %union.rec* %1191 to %struct.symbol_type*
  %1193 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1192, i32 0, i32 3
  %1194 = load %union.rec*, %union.rec** %1193, align 8
  %1195 = bitcast %union.rec* %1194 to %struct.word_type*
  %1196 = getelementptr inbounds %struct.word_type, %struct.word_type* %1195, i32 0, i32 2
  %1197 = bitcast %union.SECOND_UNION* %1196 to %struct.anon.6*
  %1198 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1197, i32 0, i32 1
  %1199 = bitcast [3 x i8]* %1198 to i24*
  %1200 = load i24, i24* %1199, align 1
  %1201 = lshr i24 %1200, 6
  %1202 = and i24 %1201, 1
  %1203 = zext i24 %1202 to i32
  %1204 = icmp ne i32 %1203, 0
  br i1 %1204, label %1205, label %1243

; <label>:1205                                    ; preds = %1190
  %1206 = load %union.rec*, %union.rec** %s, align 8
  %1207 = bitcast %union.rec* %1206 to %struct.word_type*
  %1208 = getelementptr inbounds %struct.word_type, %struct.word_type* %1207, i32 0, i32 2
  %1209 = bitcast %union.SECOND_UNION* %1208 to %struct.anon.6*
  %1210 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1209, i32 0, i32 1
  %1211 = bitcast [3 x i8]* %1210 to i24*
  %1212 = load i24, i24* %1211, align 1
  %1213 = and i24 %1212, 1
  %1214 = zext i24 %1213 to i32
  %1215 = icmp ne i32 %1214, 0
  br i1 %1215, label %1236, label %1216

; <label>:1216                                    ; preds = %1205
  %1217 = load %union.rec*, %union.rec** %s, align 8
  %1218 = bitcast %union.rec* %1217 to %struct.word_type*
  %1219 = getelementptr inbounds %struct.word_type, %struct.word_type* %1218, i32 0, i32 2
  %1220 = bitcast %union.SECOND_UNION* %1219 to %struct.anon.6*
  %1221 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1220, i32 0, i32 1
  %1222 = bitcast [3 x i8]* %1221 to i24*
  %1223 = load i24, i24* %1222, align 1
  %1224 = lshr i24 %1223, 13
  %1225 = and i24 %1224, 1
  %1226 = zext i24 %1225 to i32
  %1227 = icmp ne i32 %1226, 0
  br i1 %1227, label %1236, label %1228

; <label>:1228                                    ; preds = %1216
  %1229 = load %union.rec*, %union.rec** %s, align 8
  %1230 = bitcast %union.rec* %1229 to %struct.symbol_type*
  %1231 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1230, i32 0, i32 16
  %1232 = load i8, i8* %1231, align 2
  %1233 = and i8 %1232, 1
  %1234 = zext i8 %1233 to i32
  %1235 = icmp ne i32 %1234, 0
  br i1 %1235, label %1236, label %1243

; <label>:1236                                    ; preds = %1228, %1216, %1205
  %1237 = load %union.rec*, %union.rec** %s, align 8
  %1238 = bitcast %union.rec* %1237 to %struct.word_type*
  %1239 = getelementptr inbounds %struct.word_type, %struct.word_type* %1238, i32 0, i32 1
  %1240 = bitcast %union.FIRST_UNION* %1239 to %struct.FILE_POS*
  %1241 = load i8*, i8** %1, align 8
  %1242 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 6, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.19, i32 0, i32 0), i32 2, %struct.FILE_POS* %1240, i8* %1241)
  br label %1243

; <label>:1243                                    ; preds = %1236, %1228, %1190, %1181
  %1244 = load i8*, i8** %1, align 8
  %1245 = call i64 @strlen(i8* %1244) #4
  %1246 = trunc i64 %1245 to i32
  store i32 %1246, i32* %len, align 4
  %1247 = load i32, i32* %len, align 4
  store i32 %1247, i32* %rlen, align 4
  %1248 = load i8*, i8** %1, align 8
  store i8* %1248, i8** %x, align 8
  %1249 = load i8*, i8** %x, align 8
  %1250 = getelementptr inbounds i8, i8* %1249, i32 1
  store i8* %1250, i8** %x, align 8
  %1251 = load i8, i8* %1249, align 1
  %1252 = zext i8 %1251 to i32
  store i32 %1252, i32* %sum, align 4
  br label %1253

; <label>:1253                                    ; preds = %1257, %1243
  %1254 = load i32, i32* %rlen, align 4
  %1255 = add nsw i32 %1254, -1
  store i32 %1255, i32* %rlen, align 4
  %1256 = icmp ne i32 %1255, 0
  br i1 %1256, label %1257, label %1264

; <label>:1257                                    ; preds = %1253
  %1258 = load i8*, i8** %x, align 8
  %1259 = getelementptr inbounds i8, i8* %1258, i32 1
  store i8* %1259, i8** %x, align 8
  %1260 = load i8, i8* %1258, align 1
  %1261 = zext i8 %1260 to i32
  %1262 = load i32, i32* %sum, align 4
  %1263 = add nsw i32 %1262, %1261
  store i32 %1263, i32* %sum, align 4
  br label %1253

; <label>:1264                                    ; preds = %1253
  %1265 = load i32, i32* %sum, align 4
  %1266 = srem i32 %1265, 1783
  store i32 %1266, i32* %sum, align 4
  %1267 = load i32, i32* %sum, align 4
  %1268 = sext i32 %1267 to i64
  %1269 = getelementptr inbounds [1783 x %struct.anon], [1783 x %struct.anon]* @symtab, i32 0, i64 %1268
  %1270 = bitcast %struct.anon* %1269 to %union.rec*
  store %union.rec* %1270, %union.rec** %entry, align 8
  %1271 = load %union.rec*, %union.rec** %entry, align 8
  %1272 = bitcast %union.rec* %1271 to %struct.word_type*
  %1273 = getelementptr inbounds %struct.word_type, %struct.word_type* %1272, i32 0, i32 0
  %1274 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1273, i32 0, i64 0
  %1275 = getelementptr inbounds %struct.LIST, %struct.LIST* %1274, i32 0, i32 1
  %1276 = load %union.rec*, %union.rec** %1275, align 8
  store %union.rec* %1276, %union.rec** %plink, align 8
  br label %1277

; <label>:1277                                    ; preds = %1400, %1264
  %1278 = load %union.rec*, %union.rec** %plink, align 8
  %1279 = load %union.rec*, %union.rec** %entry, align 8
  %1280 = icmp ne %union.rec* %1278, %1279
  br i1 %1280, label %1281, label %1407

; <label>:1281                                    ; preds = %1277
  %1282 = load %union.rec*, %union.rec** %plink, align 8
  %1283 = bitcast %union.rec* %1282 to %struct.word_type*
  %1284 = getelementptr inbounds %struct.word_type, %struct.word_type* %1283, i32 0, i32 0
  %1285 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1284, i32 0, i64 1
  %1286 = getelementptr inbounds %struct.LIST, %struct.LIST* %1285, i32 0, i32 0
  %1287 = load %union.rec*, %union.rec** %1286, align 8
  store %union.rec* %1287, %union.rec** %p, align 8
  br label %1288

; <label>:1288                                    ; preds = %1298, %1281
  %1289 = load %union.rec*, %union.rec** %p, align 8
  %1290 = bitcast %union.rec* %1289 to %struct.word_type*
  %1291 = getelementptr inbounds %struct.word_type, %struct.word_type* %1290, i32 0, i32 1
  %1292 = bitcast %union.FIRST_UNION* %1291 to %struct.anon.0*
  %1293 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1292, i32 0, i32 0
  %1294 = load i8, i8* %1293, align 1
  %1295 = zext i8 %1294 to i32
  %1296 = icmp eq i32 %1295, 0
  br i1 %1296, label %1297, label %1305

; <label>:1297                                    ; preds = %1288
  br label %1298

; <label>:1298                                    ; preds = %1297
  %1299 = load %union.rec*, %union.rec** %p, align 8
  %1300 = bitcast %union.rec* %1299 to %struct.word_type*
  %1301 = getelementptr inbounds %struct.word_type, %struct.word_type* %1300, i32 0, i32 0
  %1302 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1301, i32 0, i64 1
  %1303 = getelementptr inbounds %struct.LIST, %struct.LIST* %1302, i32 0, i32 0
  %1304 = load %union.rec*, %union.rec** %1303, align 8
  store %union.rec* %1304, %union.rec** %p, align 8
  br label %1288

; <label>:1305                                    ; preds = %1288
  %1306 = load %union.rec*, %union.rec** %p, align 8
  %1307 = bitcast %union.rec* %1306 to %struct.word_type*
  %1308 = getelementptr inbounds %struct.word_type, %struct.word_type* %1307, i32 0, i32 2
  %1309 = bitcast %union.SECOND_UNION* %1308 to %struct.anon.2*
  %1310 = bitcast %struct.anon.2* %1309 to i32*
  %1311 = load i32, i32* %1310, align 4
  %1312 = and i32 %1311, 4095
  %1313 = load i32, i32* %len, align 4
  %1314 = icmp eq i32 %1312, %1313
  br i1 %1314, label %1315, label %1399

; <label>:1315                                    ; preds = %1305
  %1316 = load i8*, i8** %1, align 8
  %1317 = load %union.rec*, %union.rec** %p, align 8
  %1318 = bitcast %union.rec* %1317 to %struct.word_type*
  %1319 = getelementptr inbounds %struct.word_type, %struct.word_type* %1318, i32 0, i32 4
  %1320 = getelementptr inbounds [4 x i8], [4 x i8]* %1319, i32 0, i32 0
  %1321 = call i32 @strcmp(i8* %1316, i8* %1320) #4
  %1322 = icmp eq i32 %1321, 0
  br i1 %1322, label %1323, label %1399

; <label>:1323                                    ; preds = %1315
  %1324 = load %union.rec*, %union.rec** %p, align 8
  %1325 = bitcast %union.rec* %1324 to %struct.word_type*
  %1326 = getelementptr inbounds %struct.word_type, %struct.word_type* %1325, i32 0, i32 0
  %1327 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1326, i32 0, i64 0
  %1328 = getelementptr inbounds %struct.LIST, %struct.LIST* %1327, i32 0, i32 1
  %1329 = load %union.rec*, %union.rec** %1328, align 8
  store %union.rec* %1329, %union.rec** %link, align 8
  br label %1330

; <label>:1330                                    ; preds = %1391, %1323
  %1331 = load %union.rec*, %union.rec** %link, align 8
  %1332 = load %union.rec*, %union.rec** %p, align 8
  %1333 = icmp ne %union.rec* %1331, %1332
  br i1 %1333, label %1334, label %1398

; <label>:1334                                    ; preds = %1330
  %1335 = load %union.rec*, %union.rec** %link, align 8
  %1336 = bitcast %union.rec* %1335 to %struct.word_type*
  %1337 = getelementptr inbounds %struct.word_type, %struct.word_type* %1336, i32 0, i32 0
  %1338 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1337, i32 0, i64 1
  %1339 = getelementptr inbounds %struct.LIST, %struct.LIST* %1338, i32 0, i32 0
  %1340 = load %union.rec*, %union.rec** %1339, align 8
  store %union.rec* %1340, %union.rec** %q, align 8
  br label %1341

; <label>:1341                                    ; preds = %1351, %1334
  %1342 = load %union.rec*, %union.rec** %q, align 8
  %1343 = bitcast %union.rec* %1342 to %struct.word_type*
  %1344 = getelementptr inbounds %struct.word_type, %struct.word_type* %1343, i32 0, i32 1
  %1345 = bitcast %union.FIRST_UNION* %1344 to %struct.anon.0*
  %1346 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1345, i32 0, i32 0
  %1347 = load i8, i8* %1346, align 1
  %1348 = zext i8 %1347 to i32
  %1349 = icmp eq i32 %1348, 0
  br i1 %1349, label %1350, label %1358

; <label>:1350                                    ; preds = %1341
  br label %1351

; <label>:1351                                    ; preds = %1350
  %1352 = load %union.rec*, %union.rec** %q, align 8
  %1353 = bitcast %union.rec* %1352 to %struct.word_type*
  %1354 = getelementptr inbounds %struct.word_type, %struct.word_type* %1353, i32 0, i32 0
  %1355 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1354, i32 0, i64 1
  %1356 = getelementptr inbounds %struct.LIST, %struct.LIST* %1355, i32 0, i32 0
  %1357 = load %union.rec*, %union.rec** %1356, align 8
  store %union.rec* %1357, %union.rec** %q, align 8
  br label %1341

; <label>:1358                                    ; preds = %1341
  %1359 = load %union.rec*, %union.rec** %s, align 8
  %1360 = bitcast %union.rec* %1359 to %struct.symbol_type*
  %1361 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1360, i32 0, i32 3
  %1362 = load %union.rec*, %union.rec** %1361, align 8
  %1363 = load %union.rec*, %union.rec** %q, align 8
  %1364 = bitcast %union.rec* %1363 to %struct.symbol_type*
  %1365 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1364, i32 0, i32 3
  %1366 = load %union.rec*, %union.rec** %1365, align 8
  %1367 = icmp eq %union.rec* %1362, %1366
  br i1 %1367, label %1368, label %1390

; <label>:1368                                    ; preds = %1358
  %1369 = load %union.rec*, %union.rec** %s, align 8
  %1370 = bitcast %union.rec* %1369 to %struct.word_type*
  %1371 = getelementptr inbounds %struct.word_type, %struct.word_type* %1370, i32 0, i32 1
  %1372 = bitcast %union.FIRST_UNION* %1371 to %struct.FILE_POS*
  %1373 = load i8*, i8** %1, align 8
  %1374 = load %union.rec*, %union.rec** %q, align 8
  %1375 = bitcast %union.rec* %1374 to %struct.word_type*
  %1376 = getelementptr inbounds %struct.word_type, %struct.word_type* %1375, i32 0, i32 1
  %1377 = bitcast %union.FIRST_UNION* %1376 to %struct.FILE_POS*
  %1378 = call i8* @EchoFilePos(%struct.FILE_POS* %1377)
  %1379 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct.FILE_POS* %1372, i8* %1373, i8* %1378)
  %1380 = load i32, i32* @AltErrorFormat, align 4
  %1381 = icmp ne i32 %1380, 0
  br i1 %1381, label %1382, label %1389

; <label>:1382                                    ; preds = %1368
  %1383 = load %union.rec*, %union.rec** %q, align 8
  %1384 = bitcast %union.rec* %1383 to %struct.word_type*
  %1385 = getelementptr inbounds %struct.word_type, %struct.word_type* %1384, i32 0, i32 1
  %1386 = bitcast %union.FIRST_UNION* %1385 to %struct.FILE_POS*
  %1387 = load i8*, i8** %1, align 8
  %1388 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i32 0, i32 0), i32 2, %struct.FILE_POS* %1386, i8* %1387)
  br label %1389

; <label>:1389                                    ; preds = %1382, %1368
  br label %1398

; <label>:1390                                    ; preds = %1358
  br label %1391

; <label>:1391                                    ; preds = %1390
  %1392 = load %union.rec*, %union.rec** %link, align 8
  %1393 = bitcast %union.rec* %1392 to %struct.word_type*
  %1394 = getelementptr inbounds %struct.word_type, %struct.word_type* %1393, i32 0, i32 0
  %1395 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1394, i32 0, i64 0
  %1396 = getelementptr inbounds %struct.LIST, %struct.LIST* %1395, i32 0, i32 1
  %1397 = load %union.rec*, %union.rec** %1396, align 8
  store %union.rec* %1397, %union.rec** %link, align 8
  br label %1330

; <label>:1398                                    ; preds = %1389, %1330
  br label %1671

; <label>:1399                                    ; preds = %1315, %1305
  br label %1400

; <label>:1400                                    ; preds = %1399
  %1401 = load %union.rec*, %union.rec** %plink, align 8
  %1402 = bitcast %union.rec* %1401 to %struct.word_type*
  %1403 = getelementptr inbounds %struct.word_type, %struct.word_type* %1402, i32 0, i32 0
  %1404 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1403, i32 0, i64 0
  %1405 = getelementptr inbounds %struct.LIST, %struct.LIST* %1404, i32 0, i32 1
  %1406 = load %union.rec*, %union.rec** %1405, align 8
  store %union.rec* %1406, %union.rec** %plink, align 8
  br label %1277

; <label>:1407                                    ; preds = %1277
  %1408 = load i32, i32* %len, align 4
  %1409 = add nsw i32 %1408, 1
  %1410 = sext i32 %1409 to i64
  %1411 = mul i64 %1410, 1
  %1412 = add i64 68, %1411
  %1413 = trunc i64 %1412 to i32
  store i32 %1413, i32* @zz_size, align 4
  %1414 = load i32, i32* @zz_size, align 4
  %1415 = sub nsw i32 %1414, 1
  %1416 = sext i32 %1415 to i64
  %1417 = udiv i64 %1416, 8
  %1418 = add i64 %1417, 1
  %1419 = trunc i64 %1418 to i32
  store i32 %1419, i32* @zz_size, align 4
  %1420 = sext i32 %1419 to i64
  %1421 = icmp uge i64 %1420, 265
  br i1 %1421, label %1422, label %1425

; <label>:1422                                    ; preds = %1407
  %1423 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %1424 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %1423)
  br label %1450

; <label>:1425                                    ; preds = %1407
  %1426 = load i32, i32* @zz_size, align 4
  %1427 = sext i32 %1426 to i64
  %1428 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1427
  %1429 = load %union.rec*, %union.rec** %1428, align 8
  %1430 = icmp eq %union.rec* %1429, null
  br i1 %1430, label %1431, label %1435

; <label>:1431                                    ; preds = %1425
  %1432 = load i32, i32* @zz_size, align 4
  %1433 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %1434 = call %union.rec* @GetMemory(i32 %1432, %struct.FILE_POS* %1433)
  store %union.rec* %1434, %union.rec** @zz_hold, align 8
  br label %1449

; <label>:1435                                    ; preds = %1425
  %1436 = load i32, i32* @zz_size, align 4
  %1437 = sext i32 %1436 to i64
  %1438 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1437
  %1439 = load %union.rec*, %union.rec** %1438, align 8
  store %union.rec* %1439, %union.rec** @zz_hold, align 8
  store %union.rec* %1439, %union.rec** @zz_hold, align 8
  %1440 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1441 = bitcast %union.rec* %1440 to %struct.word_type*
  %1442 = getelementptr inbounds %struct.word_type, %struct.word_type* %1441, i32 0, i32 0
  %1443 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1442, i32 0, i64 0
  %1444 = getelementptr inbounds %struct.LIST, %struct.LIST* %1443, i32 0, i32 0
  %1445 = load %union.rec*, %union.rec** %1444, align 8
  %1446 = load i32, i32* @zz_size, align 4
  %1447 = sext i32 %1446 to i64
  %1448 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1447
  store %union.rec* %1445, %union.rec** %1448, align 8
  br label %1449

; <label>:1449                                    ; preds = %1435, %1431
  br label %1450

; <label>:1450                                    ; preds = %1449, %1422
  %1451 = load i32, i32* @zz_size, align 4
  %1452 = trunc i32 %1451 to i8
  %1453 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1454 = bitcast %union.rec* %1453 to %struct.word_type*
  %1455 = getelementptr inbounds %struct.word_type, %struct.word_type* %1454, i32 0, i32 1
  %1456 = bitcast %union.FIRST_UNION* %1455 to %struct.anon.0*
  %1457 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1456, i32 0, i32 1
  store i8 %1452, i8* %1457, align 1
  %1458 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1459 = bitcast %union.rec* %1458 to %struct.word_type*
  %1460 = getelementptr inbounds %struct.word_type, %struct.word_type* %1459, i32 0, i32 1
  %1461 = bitcast %union.FIRST_UNION* %1460 to %struct.anon.0*
  %1462 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1461, i32 0, i32 0
  store i8 11, i8* %1462, align 1
  %1463 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1464 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1465 = bitcast %union.rec* %1464 to %struct.word_type*
  %1466 = getelementptr inbounds %struct.word_type, %struct.word_type* %1465, i32 0, i32 0
  %1467 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1466, i32 0, i64 1
  %1468 = getelementptr inbounds %struct.LIST, %struct.LIST* %1467, i32 0, i32 1
  store %union.rec* %1463, %union.rec** %1468, align 8
  %1469 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1470 = bitcast %union.rec* %1469 to %struct.word_type*
  %1471 = getelementptr inbounds %struct.word_type, %struct.word_type* %1470, i32 0, i32 0
  %1472 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1471, i32 0, i64 1
  %1473 = getelementptr inbounds %struct.LIST, %struct.LIST* %1472, i32 0, i32 0
  store %union.rec* %1463, %union.rec** %1473, align 8
  %1474 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1475 = bitcast %union.rec* %1474 to %struct.word_type*
  %1476 = getelementptr inbounds %struct.word_type, %struct.word_type* %1475, i32 0, i32 0
  %1477 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1476, i32 0, i64 0
  %1478 = getelementptr inbounds %struct.LIST, %struct.LIST* %1477, i32 0, i32 1
  store %union.rec* %1463, %union.rec** %1478, align 8
  %1479 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1480 = bitcast %union.rec* %1479 to %struct.word_type*
  %1481 = getelementptr inbounds %struct.word_type, %struct.word_type* %1480, i32 0, i32 0
  %1482 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1481, i32 0, i64 0
  %1483 = getelementptr inbounds %struct.LIST, %struct.LIST* %1482, i32 0, i32 0
  store %union.rec* %1463, %union.rec** %1483, align 8
  store %union.rec* %1463, %union.rec** %p, align 8
  %1484 = load i32, i32* %len, align 4
  %1485 = load %union.rec*, %union.rec** %p, align 8
  %1486 = bitcast %union.rec* %1485 to %struct.word_type*
  %1487 = getelementptr inbounds %struct.word_type, %struct.word_type* %1486, i32 0, i32 2
  %1488 = bitcast %union.SECOND_UNION* %1487 to %struct.anon.2*
  %1489 = bitcast %struct.anon.2* %1488 to i32*
  %1490 = load i32, i32* %1489, align 4
  %1491 = and i32 %1484, 4095
  %1492 = and i32 %1490, -4096
  %1493 = or i32 %1492, %1491
  store i32 %1493, i32* %1489, align 4
  %1494 = load %union.rec*, %union.rec** %p, align 8
  %1495 = bitcast %union.rec* %1494 to %struct.word_type*
  %1496 = getelementptr inbounds %struct.word_type, %struct.word_type* %1495, i32 0, i32 4
  %1497 = getelementptr inbounds [4 x i8], [4 x i8]* %1496, i32 0, i32 0
  %1498 = load i8*, i8** %1, align 8
  %1499 = call i8* @strcpy(i8* %1497, i8* %1498) #5
  %1500 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1501 = zext i8 %1500 to i32
  store i32 %1501, i32* @zz_size, align 4
  %1502 = sext i32 %1501 to i64
  %1503 = icmp uge i64 %1502, 265
  br i1 %1503, label %1504, label %1507

; <label>:1504                                    ; preds = %1450
  %1505 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1506 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %1505)
  br label %1532

; <label>:1507                                    ; preds = %1450
  %1508 = load i32, i32* @zz_size, align 4
  %1509 = sext i32 %1508 to i64
  %1510 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1509
  %1511 = load %union.rec*, %union.rec** %1510, align 8
  %1512 = icmp eq %union.rec* %1511, null
  br i1 %1512, label %1513, label %1517

; <label>:1513                                    ; preds = %1507
  %1514 = load i32, i32* @zz_size, align 4
  %1515 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1516 = call %union.rec* @GetMemory(i32 %1514, %struct.FILE_POS* %1515)
  store %union.rec* %1516, %union.rec** @zz_hold, align 8
  br label %1531

; <label>:1517                                    ; preds = %1507
  %1518 = load i32, i32* @zz_size, align 4
  %1519 = sext i32 %1518 to i64
  %1520 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1519
  %1521 = load %union.rec*, %union.rec** %1520, align 8
  store %union.rec* %1521, %union.rec** @zz_hold, align 8
  store %union.rec* %1521, %union.rec** @zz_hold, align 8
  %1522 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1523 = bitcast %union.rec* %1522 to %struct.word_type*
  %1524 = getelementptr inbounds %struct.word_type, %struct.word_type* %1523, i32 0, i32 0
  %1525 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1524, i32 0, i64 0
  %1526 = getelementptr inbounds %struct.LIST, %struct.LIST* %1525, i32 0, i32 0
  %1527 = load %union.rec*, %union.rec** %1526, align 8
  %1528 = load i32, i32* @zz_size, align 4
  %1529 = sext i32 %1528 to i64
  %1530 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1529
  store %union.rec* %1527, %union.rec** %1530, align 8
  br label %1531

; <label>:1531                                    ; preds = %1517, %1513
  br label %1532

; <label>:1532                                    ; preds = %1531, %1504
  %1533 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1534 = bitcast %union.rec* %1533 to %struct.word_type*
  %1535 = getelementptr inbounds %struct.word_type, %struct.word_type* %1534, i32 0, i32 1
  %1536 = bitcast %union.FIRST_UNION* %1535 to %struct.anon.0*
  %1537 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1536, i32 0, i32 0
  store i8 0, i8* %1537, align 1
  %1538 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1539 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1540 = bitcast %union.rec* %1539 to %struct.word_type*
  %1541 = getelementptr inbounds %struct.word_type, %struct.word_type* %1540, i32 0, i32 0
  %1542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1541, i32 0, i64 1
  %1543 = getelementptr inbounds %struct.LIST, %struct.LIST* %1542, i32 0, i32 1
  store %union.rec* %1538, %union.rec** %1543, align 8
  %1544 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1545 = bitcast %union.rec* %1544 to %struct.word_type*
  %1546 = getelementptr inbounds %struct.word_type, %struct.word_type* %1545, i32 0, i32 0
  %1547 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1546, i32 0, i64 1
  %1548 = getelementptr inbounds %struct.LIST, %struct.LIST* %1547, i32 0, i32 0
  store %union.rec* %1538, %union.rec** %1548, align 8
  %1549 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1550 = bitcast %union.rec* %1549 to %struct.word_type*
  %1551 = getelementptr inbounds %struct.word_type, %struct.word_type* %1550, i32 0, i32 0
  %1552 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1551, i32 0, i64 0
  %1553 = getelementptr inbounds %struct.LIST, %struct.LIST* %1552, i32 0, i32 1
  store %union.rec* %1538, %union.rec** %1553, align 8
  %1554 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1555 = bitcast %union.rec* %1554 to %struct.word_type*
  %1556 = getelementptr inbounds %struct.word_type, %struct.word_type* %1555, i32 0, i32 0
  %1557 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1556, i32 0, i64 0
  %1558 = getelementptr inbounds %struct.LIST, %struct.LIST* %1557, i32 0, i32 0
  store %union.rec* %1538, %union.rec** %1558, align 8
  store %union.rec* %1538, %union.rec** @xx_link, align 8
  %1559 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1559, %union.rec** @zz_res, align 8
  %1560 = load %union.rec*, %union.rec** %entry, align 8
  store %union.rec* %1560, %union.rec** @zz_hold, align 8
  %1561 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1562 = icmp eq %union.rec* %1561, null
  br i1 %1562, label %1563, label %1565

; <label>:1563                                    ; preds = %1532
  %1564 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1613

; <label>:1565                                    ; preds = %1532
  %1566 = load %union.rec*, %union.rec** @zz_res, align 8
  %1567 = icmp eq %union.rec* %1566, null
  br i1 %1567, label %1568, label %1570

; <label>:1568                                    ; preds = %1565
  %1569 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1611

; <label>:1570                                    ; preds = %1565
  %1571 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1572 = bitcast %union.rec* %1571 to %struct.word_type*
  %1573 = getelementptr inbounds %struct.word_type, %struct.word_type* %1572, i32 0, i32 0
  %1574 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1573, i32 0, i64 0
  %1575 = getelementptr inbounds %struct.LIST, %struct.LIST* %1574, i32 0, i32 0
  %1576 = load %union.rec*, %union.rec** %1575, align 8
  store %union.rec* %1576, %union.rec** @zz_tmp, align 8
  %1577 = load %union.rec*, %union.rec** @zz_res, align 8
  %1578 = bitcast %union.rec* %1577 to %struct.word_type*
  %1579 = getelementptr inbounds %struct.word_type, %struct.word_type* %1578, i32 0, i32 0
  %1580 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1579, i32 0, i64 0
  %1581 = getelementptr inbounds %struct.LIST, %struct.LIST* %1580, i32 0, i32 0
  %1582 = load %union.rec*, %union.rec** %1581, align 8
  %1583 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1584 = bitcast %union.rec* %1583 to %struct.word_type*
  %1585 = getelementptr inbounds %struct.word_type, %struct.word_type* %1584, i32 0, i32 0
  %1586 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1585, i32 0, i64 0
  %1587 = getelementptr inbounds %struct.LIST, %struct.LIST* %1586, i32 0, i32 0
  store %union.rec* %1582, %union.rec** %1587, align 8
  %1588 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1589 = load %union.rec*, %union.rec** @zz_res, align 8
  %1590 = bitcast %union.rec* %1589 to %struct.word_type*
  %1591 = getelementptr inbounds %struct.word_type, %struct.word_type* %1590, i32 0, i32 0
  %1592 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1591, i32 0, i64 0
  %1593 = getelementptr inbounds %struct.LIST, %struct.LIST* %1592, i32 0, i32 0
  %1594 = load %union.rec*, %union.rec** %1593, align 8
  %1595 = bitcast %union.rec* %1594 to %struct.word_type*
  %1596 = getelementptr inbounds %struct.word_type, %struct.word_type* %1595, i32 0, i32 0
  %1597 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1596, i32 0, i64 0
  %1598 = getelementptr inbounds %struct.LIST, %struct.LIST* %1597, i32 0, i32 1
  store %union.rec* %1588, %union.rec** %1598, align 8
  %1599 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1600 = load %union.rec*, %union.rec** @zz_res, align 8
  %1601 = bitcast %union.rec* %1600 to %struct.word_type*
  %1602 = getelementptr inbounds %struct.word_type, %struct.word_type* %1601, i32 0, i32 0
  %1603 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1602, i32 0, i64 0
  %1604 = getelementptr inbounds %struct.LIST, %struct.LIST* %1603, i32 0, i32 0
  store %union.rec* %1599, %union.rec** %1604, align 8
  %1605 = load %union.rec*, %union.rec** @zz_res, align 8
  %1606 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1607 = bitcast %union.rec* %1606 to %struct.word_type*
  %1608 = getelementptr inbounds %struct.word_type, %struct.word_type* %1607, i32 0, i32 0
  %1609 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1608, i32 0, i64 0
  %1610 = getelementptr inbounds %struct.LIST, %struct.LIST* %1609, i32 0, i32 1
  store %union.rec* %1605, %union.rec** %1610, align 8
  br label %1611

; <label>:1611                                    ; preds = %1570, %1568
  %1612 = phi %union.rec* [ %1569, %1568 ], [ %1605, %1570 ]
  br label %1613

; <label>:1613                                    ; preds = %1611, %1563
  %1614 = phi %union.rec* [ %1564, %1563 ], [ %1612, %1611 ]
  %1615 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1615, %union.rec** @zz_res, align 8
  %1616 = load %union.rec*, %union.rec** %p, align 8
  store %union.rec* %1616, %union.rec** @zz_hold, align 8
  %1617 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1618 = icmp eq %union.rec* %1617, null
  br i1 %1618, label %1619, label %1621

; <label>:1619                                    ; preds = %1613
  %1620 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1669

; <label>:1621                                    ; preds = %1613
  %1622 = load %union.rec*, %union.rec** @zz_res, align 8
  %1623 = icmp eq %union.rec* %1622, null
  br i1 %1623, label %1624, label %1626

; <label>:1624                                    ; preds = %1621
  %1625 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1667

; <label>:1626                                    ; preds = %1621
  %1627 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1628 = bitcast %union.rec* %1627 to %struct.word_type*
  %1629 = getelementptr inbounds %struct.word_type, %struct.word_type* %1628, i32 0, i32 0
  %1630 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1629, i32 0, i64 1
  %1631 = getelementptr inbounds %struct.LIST, %struct.LIST* %1630, i32 0, i32 0
  %1632 = load %union.rec*, %union.rec** %1631, align 8
  store %union.rec* %1632, %union.rec** @zz_tmp, align 8
  %1633 = load %union.rec*, %union.rec** @zz_res, align 8
  %1634 = bitcast %union.rec* %1633 to %struct.word_type*
  %1635 = getelementptr inbounds %struct.word_type, %struct.word_type* %1634, i32 0, i32 0
  %1636 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1635, i32 0, i64 1
  %1637 = getelementptr inbounds %struct.LIST, %struct.LIST* %1636, i32 0, i32 0
  %1638 = load %union.rec*, %union.rec** %1637, align 8
  %1639 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1640 = bitcast %union.rec* %1639 to %struct.word_type*
  %1641 = getelementptr inbounds %struct.word_type, %struct.word_type* %1640, i32 0, i32 0
  %1642 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1641, i32 0, i64 1
  %1643 = getelementptr inbounds %struct.LIST, %struct.LIST* %1642, i32 0, i32 0
  store %union.rec* %1638, %union.rec** %1643, align 8
  %1644 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1645 = load %union.rec*, %union.rec** @zz_res, align 8
  %1646 = bitcast %union.rec* %1645 to %struct.word_type*
  %1647 = getelementptr inbounds %struct.word_type, %struct.word_type* %1646, i32 0, i32 0
  %1648 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1647, i32 0, i64 1
  %1649 = getelementptr inbounds %struct.LIST, %struct.LIST* %1648, i32 0, i32 0
  %1650 = load %union.rec*, %union.rec** %1649, align 8
  %1651 = bitcast %union.rec* %1650 to %struct.word_type*
  %1652 = getelementptr inbounds %struct.word_type, %struct.word_type* %1651, i32 0, i32 0
  %1653 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1652, i32 0, i64 1
  %1654 = getelementptr inbounds %struct.LIST, %struct.LIST* %1653, i32 0, i32 1
  store %union.rec* %1644, %union.rec** %1654, align 8
  %1655 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1656 = load %union.rec*, %union.rec** @zz_res, align 8
  %1657 = bitcast %union.rec* %1656 to %struct.word_type*
  %1658 = getelementptr inbounds %struct.word_type, %struct.word_type* %1657, i32 0, i32 0
  %1659 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1658, i32 0, i64 1
  %1660 = getelementptr inbounds %struct.LIST, %struct.LIST* %1659, i32 0, i32 0
  store %union.rec* %1655, %union.rec** %1660, align 8
  %1661 = load %union.rec*, %union.rec** @zz_res, align 8
  %1662 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1663 = bitcast %union.rec* %1662 to %struct.word_type*
  %1664 = getelementptr inbounds %struct.word_type, %struct.word_type* %1663, i32 0, i32 0
  %1665 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1664, i32 0, i64 1
  %1666 = getelementptr inbounds %struct.LIST, %struct.LIST* %1665, i32 0, i32 1
  store %union.rec* %1661, %union.rec** %1666, align 8
  br label %1667

; <label>:1667                                    ; preds = %1626, %1624
  %1668 = phi %union.rec* [ %1625, %1624 ], [ %1661, %1626 ]
  br label %1669

; <label>:1669                                    ; preds = %1667, %1619
  %1670 = phi %union.rec* [ %1620, %1619 ], [ %1668, %1667 ]
  br label %1671

; <label>:1671                                    ; preds = %1669, %1398
  %1672 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1673 = zext i8 %1672 to i32
  store i32 %1673, i32* @zz_size, align 4
  %1674 = sext i32 %1673 to i64
  %1675 = icmp uge i64 %1674, 265
  br i1 %1675, label %1676, label %1679

; <label>:1676                                    ; preds = %1671
  %1677 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1678 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %1677)
  br label %1704

; <label>:1679                                    ; preds = %1671
  %1680 = load i32, i32* @zz_size, align 4
  %1681 = sext i32 %1680 to i64
  %1682 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1681
  %1683 = load %union.rec*, %union.rec** %1682, align 8
  %1684 = icmp eq %union.rec* %1683, null
  br i1 %1684, label %1685, label %1689

; <label>:1685                                    ; preds = %1679
  %1686 = load i32, i32* @zz_size, align 4
  %1687 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1688 = call %union.rec* @GetMemory(i32 %1686, %struct.FILE_POS* %1687)
  store %union.rec* %1688, %union.rec** @zz_hold, align 8
  br label %1703

; <label>:1689                                    ; preds = %1679
  %1690 = load i32, i32* @zz_size, align 4
  %1691 = sext i32 %1690 to i64
  %1692 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1691
  %1693 = load %union.rec*, %union.rec** %1692, align 8
  store %union.rec* %1693, %union.rec** @zz_hold, align 8
  store %union.rec* %1693, %union.rec** @zz_hold, align 8
  %1694 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1695 = bitcast %union.rec* %1694 to %struct.word_type*
  %1696 = getelementptr inbounds %struct.word_type, %struct.word_type* %1695, i32 0, i32 0
  %1697 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1696, i32 0, i64 0
  %1698 = getelementptr inbounds %struct.LIST, %struct.LIST* %1697, i32 0, i32 0
  %1699 = load %union.rec*, %union.rec** %1698, align 8
  %1700 = load i32, i32* @zz_size, align 4
  %1701 = sext i32 %1700 to i64
  %1702 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1701
  store %union.rec* %1699, %union.rec** %1702, align 8
  br label %1703

; <label>:1703                                    ; preds = %1689, %1685
  br label %1704

; <label>:1704                                    ; preds = %1703, %1676
  %1705 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1706 = bitcast %union.rec* %1705 to %struct.word_type*
  %1707 = getelementptr inbounds %struct.word_type, %struct.word_type* %1706, i32 0, i32 1
  %1708 = bitcast %union.FIRST_UNION* %1707 to %struct.anon.0*
  %1709 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1708, i32 0, i32 0
  store i8 0, i8* %1709, align 1
  %1710 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1711 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1712 = bitcast %union.rec* %1711 to %struct.word_type*
  %1713 = getelementptr inbounds %struct.word_type, %struct.word_type* %1712, i32 0, i32 0
  %1714 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1713, i32 0, i64 1
  %1715 = getelementptr inbounds %struct.LIST, %struct.LIST* %1714, i32 0, i32 1
  store %union.rec* %1710, %union.rec** %1715, align 8
  %1716 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1717 = bitcast %union.rec* %1716 to %struct.word_type*
  %1718 = getelementptr inbounds %struct.word_type, %struct.word_type* %1717, i32 0, i32 0
  %1719 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1718, i32 0, i64 1
  %1720 = getelementptr inbounds %struct.LIST, %struct.LIST* %1719, i32 0, i32 0
  store %union.rec* %1710, %union.rec** %1720, align 8
  %1721 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1722 = bitcast %union.rec* %1721 to %struct.word_type*
  %1723 = getelementptr inbounds %struct.word_type, %struct.word_type* %1722, i32 0, i32 0
  %1724 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1723, i32 0, i64 0
  %1725 = getelementptr inbounds %struct.LIST, %struct.LIST* %1724, i32 0, i32 1
  store %union.rec* %1710, %union.rec** %1725, align 8
  %1726 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1727 = bitcast %union.rec* %1726 to %struct.word_type*
  %1728 = getelementptr inbounds %struct.word_type, %struct.word_type* %1727, i32 0, i32 0
  %1729 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1728, i32 0, i64 0
  %1730 = getelementptr inbounds %struct.LIST, %struct.LIST* %1729, i32 0, i32 0
  store %union.rec* %1710, %union.rec** %1730, align 8
  store %union.rec* %1710, %union.rec** @xx_link, align 8
  %1731 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1731, %union.rec** @zz_res, align 8
  %1732 = load %union.rec*, %union.rec** %p, align 8
  store %union.rec* %1732, %union.rec** @zz_hold, align 8
  %1733 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1734 = icmp eq %union.rec* %1733, null
  br i1 %1734, label %1735, label %1737

; <label>:1735                                    ; preds = %1704
  %1736 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1785

; <label>:1737                                    ; preds = %1704
  %1738 = load %union.rec*, %union.rec** @zz_res, align 8
  %1739 = icmp eq %union.rec* %1738, null
  br i1 %1739, label %1740, label %1742

; <label>:1740                                    ; preds = %1737
  %1741 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1783

; <label>:1742                                    ; preds = %1737
  %1743 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1744 = bitcast %union.rec* %1743 to %struct.word_type*
  %1745 = getelementptr inbounds %struct.word_type, %struct.word_type* %1744, i32 0, i32 0
  %1746 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1745, i32 0, i64 0
  %1747 = getelementptr inbounds %struct.LIST, %struct.LIST* %1746, i32 0, i32 0
  %1748 = load %union.rec*, %union.rec** %1747, align 8
  store %union.rec* %1748, %union.rec** @zz_tmp, align 8
  %1749 = load %union.rec*, %union.rec** @zz_res, align 8
  %1750 = bitcast %union.rec* %1749 to %struct.word_type*
  %1751 = getelementptr inbounds %struct.word_type, %struct.word_type* %1750, i32 0, i32 0
  %1752 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1751, i32 0, i64 0
  %1753 = getelementptr inbounds %struct.LIST, %struct.LIST* %1752, i32 0, i32 0
  %1754 = load %union.rec*, %union.rec** %1753, align 8
  %1755 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1756 = bitcast %union.rec* %1755 to %struct.word_type*
  %1757 = getelementptr inbounds %struct.word_type, %struct.word_type* %1756, i32 0, i32 0
  %1758 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1757, i32 0, i64 0
  %1759 = getelementptr inbounds %struct.LIST, %struct.LIST* %1758, i32 0, i32 0
  store %union.rec* %1754, %union.rec** %1759, align 8
  %1760 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1761 = load %union.rec*, %union.rec** @zz_res, align 8
  %1762 = bitcast %union.rec* %1761 to %struct.word_type*
  %1763 = getelementptr inbounds %struct.word_type, %struct.word_type* %1762, i32 0, i32 0
  %1764 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1763, i32 0, i64 0
  %1765 = getelementptr inbounds %struct.LIST, %struct.LIST* %1764, i32 0, i32 0
  %1766 = load %union.rec*, %union.rec** %1765, align 8
  %1767 = bitcast %union.rec* %1766 to %struct.word_type*
  %1768 = getelementptr inbounds %struct.word_type, %struct.word_type* %1767, i32 0, i32 0
  %1769 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1768, i32 0, i64 0
  %1770 = getelementptr inbounds %struct.LIST, %struct.LIST* %1769, i32 0, i32 1
  store %union.rec* %1760, %union.rec** %1770, align 8
  %1771 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1772 = load %union.rec*, %union.rec** @zz_res, align 8
  %1773 = bitcast %union.rec* %1772 to %struct.word_type*
  %1774 = getelementptr inbounds %struct.word_type, %struct.word_type* %1773, i32 0, i32 0
  %1775 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1774, i32 0, i64 0
  %1776 = getelementptr inbounds %struct.LIST, %struct.LIST* %1775, i32 0, i32 0
  store %union.rec* %1771, %union.rec** %1776, align 8
  %1777 = load %union.rec*, %union.rec** @zz_res, align 8
  %1778 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1779 = bitcast %union.rec* %1778 to %struct.word_type*
  %1780 = getelementptr inbounds %struct.word_type, %struct.word_type* %1779, i32 0, i32 0
  %1781 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1780, i32 0, i64 0
  %1782 = getelementptr inbounds %struct.LIST, %struct.LIST* %1781, i32 0, i32 1
  store %union.rec* %1777, %union.rec** %1782, align 8
  br label %1783

; <label>:1783                                    ; preds = %1742, %1740
  %1784 = phi %union.rec* [ %1741, %1740 ], [ %1777, %1742 ]
  br label %1785

; <label>:1785                                    ; preds = %1783, %1735
  %1786 = phi %union.rec* [ %1736, %1735 ], [ %1784, %1783 ]
  %1787 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1787, %union.rec** @zz_res, align 8
  %1788 = load %union.rec*, %union.rec** %s, align 8
  store %union.rec* %1788, %union.rec** @zz_hold, align 8
  %1789 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1790 = icmp eq %union.rec* %1789, null
  br i1 %1790, label %1791, label %1793

; <label>:1791                                    ; preds = %1785
  %1792 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1841

; <label>:1793                                    ; preds = %1785
  %1794 = load %union.rec*, %union.rec** @zz_res, align 8
  %1795 = icmp eq %union.rec* %1794, null
  br i1 %1795, label %1796, label %1798

; <label>:1796                                    ; preds = %1793
  %1797 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1839

; <label>:1798                                    ; preds = %1793
  %1799 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1800 = bitcast %union.rec* %1799 to %struct.word_type*
  %1801 = getelementptr inbounds %struct.word_type, %struct.word_type* %1800, i32 0, i32 0
  %1802 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1801, i32 0, i64 1
  %1803 = getelementptr inbounds %struct.LIST, %struct.LIST* %1802, i32 0, i32 0
  %1804 = load %union.rec*, %union.rec** %1803, align 8
  store %union.rec* %1804, %union.rec** @zz_tmp, align 8
  %1805 = load %union.rec*, %union.rec** @zz_res, align 8
  %1806 = bitcast %union.rec* %1805 to %struct.word_type*
  %1807 = getelementptr inbounds %struct.word_type, %struct.word_type* %1806, i32 0, i32 0
  %1808 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1807, i32 0, i64 1
  %1809 = getelementptr inbounds %struct.LIST, %struct.LIST* %1808, i32 0, i32 0
  %1810 = load %union.rec*, %union.rec** %1809, align 8
  %1811 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1812 = bitcast %union.rec* %1811 to %struct.word_type*
  %1813 = getelementptr inbounds %struct.word_type, %struct.word_type* %1812, i32 0, i32 0
  %1814 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1813, i32 0, i64 1
  %1815 = getelementptr inbounds %struct.LIST, %struct.LIST* %1814, i32 0, i32 0
  store %union.rec* %1810, %union.rec** %1815, align 8
  %1816 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1817 = load %union.rec*, %union.rec** @zz_res, align 8
  %1818 = bitcast %union.rec* %1817 to %struct.word_type*
  %1819 = getelementptr inbounds %struct.word_type, %struct.word_type* %1818, i32 0, i32 0
  %1820 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1819, i32 0, i64 1
  %1821 = getelementptr inbounds %struct.LIST, %struct.LIST* %1820, i32 0, i32 0
  %1822 = load %union.rec*, %union.rec** %1821, align 8
  %1823 = bitcast %union.rec* %1822 to %struct.word_type*
  %1824 = getelementptr inbounds %struct.word_type, %struct.word_type* %1823, i32 0, i32 0
  %1825 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1824, i32 0, i64 1
  %1826 = getelementptr inbounds %struct.LIST, %struct.LIST* %1825, i32 0, i32 1
  store %union.rec* %1816, %union.rec** %1826, align 8
  %1827 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1828 = load %union.rec*, %union.rec** @zz_res, align 8
  %1829 = bitcast %union.rec* %1828 to %struct.word_type*
  %1830 = getelementptr inbounds %struct.word_type, %struct.word_type* %1829, i32 0, i32 0
  %1831 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1830, i32 0, i64 1
  %1832 = getelementptr inbounds %struct.LIST, %struct.LIST* %1831, i32 0, i32 0
  store %union.rec* %1827, %union.rec** %1832, align 8
  %1833 = load %union.rec*, %union.rec** @zz_res, align 8
  %1834 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1835 = bitcast %union.rec* %1834 to %struct.word_type*
  %1836 = getelementptr inbounds %struct.word_type, %struct.word_type* %1835, i32 0, i32 0
  %1837 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1836, i32 0, i64 1
  %1838 = getelementptr inbounds %struct.LIST, %struct.LIST* %1837, i32 0, i32 1
  store %union.rec* %1833, %union.rec** %1838, align 8
  br label %1839

; <label>:1839                                    ; preds = %1798, %1796
  %1840 = phi %union.rec* [ %1797, %1796 ], [ %1833, %1798 ]
  br label %1841

; <label>:1841                                    ; preds = %1839, %1791
  %1842 = phi %union.rec* [ %1792, %1791 ], [ %1840, %1839 ]
  %1843 = load %union.rec*, %union.rec** %s, align 8
  %1844 = bitcast %union.rec* %1843 to %struct.symbol_type*
  %1845 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1844, i32 0, i32 3
  %1846 = load %union.rec*, %union.rec** %1845, align 8
  %1847 = icmp ne %union.rec* %1846, null
  br i1 %1847, label %1848, label %2023

; <label>:1848                                    ; preds = %1841
  %1849 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1850 = zext i8 %1849 to i32
  store i32 %1850, i32* @zz_size, align 4
  %1851 = sext i32 %1850 to i64
  %1852 = icmp uge i64 %1851, 265
  br i1 %1852, label %1853, label %1856

; <label>:1853                                    ; preds = %1848
  %1854 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1855 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %1854)
  br label %1881

; <label>:1856                                    ; preds = %1848
  %1857 = load i32, i32* @zz_size, align 4
  %1858 = sext i32 %1857 to i64
  %1859 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1858
  %1860 = load %union.rec*, %union.rec** %1859, align 8
  %1861 = icmp eq %union.rec* %1860, null
  br i1 %1861, label %1862, label %1866

; <label>:1862                                    ; preds = %1856
  %1863 = load i32, i32* @zz_size, align 4
  %1864 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1865 = call %union.rec* @GetMemory(i32 %1863, %struct.FILE_POS* %1864)
  store %union.rec* %1865, %union.rec** @zz_hold, align 8
  br label %1880

; <label>:1866                                    ; preds = %1856
  %1867 = load i32, i32* @zz_size, align 4
  %1868 = sext i32 %1867 to i64
  %1869 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1868
  %1870 = load %union.rec*, %union.rec** %1869, align 8
  store %union.rec* %1870, %union.rec** @zz_hold, align 8
  store %union.rec* %1870, %union.rec** @zz_hold, align 8
  %1871 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1872 = bitcast %union.rec* %1871 to %struct.word_type*
  %1873 = getelementptr inbounds %struct.word_type, %struct.word_type* %1872, i32 0, i32 0
  %1874 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1873, i32 0, i64 0
  %1875 = getelementptr inbounds %struct.LIST, %struct.LIST* %1874, i32 0, i32 0
  %1876 = load %union.rec*, %union.rec** %1875, align 8
  %1877 = load i32, i32* @zz_size, align 4
  %1878 = sext i32 %1877 to i64
  %1879 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1878
  store %union.rec* %1876, %union.rec** %1879, align 8
  br label %1880

; <label>:1880                                    ; preds = %1866, %1862
  br label %1881

; <label>:1881                                    ; preds = %1880, %1853
  %1882 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1883 = bitcast %union.rec* %1882 to %struct.word_type*
  %1884 = getelementptr inbounds %struct.word_type, %struct.word_type* %1883, i32 0, i32 1
  %1885 = bitcast %union.FIRST_UNION* %1884 to %struct.anon.0*
  %1886 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1885, i32 0, i32 0
  store i8 0, i8* %1886, align 1
  %1887 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1888 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1889 = bitcast %union.rec* %1888 to %struct.word_type*
  %1890 = getelementptr inbounds %struct.word_type, %struct.word_type* %1889, i32 0, i32 0
  %1891 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1890, i32 0, i64 1
  %1892 = getelementptr inbounds %struct.LIST, %struct.LIST* %1891, i32 0, i32 1
  store %union.rec* %1887, %union.rec** %1892, align 8
  %1893 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1894 = bitcast %union.rec* %1893 to %struct.word_type*
  %1895 = getelementptr inbounds %struct.word_type, %struct.word_type* %1894, i32 0, i32 0
  %1896 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1895, i32 0, i64 1
  %1897 = getelementptr inbounds %struct.LIST, %struct.LIST* %1896, i32 0, i32 0
  store %union.rec* %1887, %union.rec** %1897, align 8
  %1898 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1899 = bitcast %union.rec* %1898 to %struct.word_type*
  %1900 = getelementptr inbounds %struct.word_type, %struct.word_type* %1899, i32 0, i32 0
  %1901 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1900, i32 0, i64 0
  %1902 = getelementptr inbounds %struct.LIST, %struct.LIST* %1901, i32 0, i32 1
  store %union.rec* %1887, %union.rec** %1902, align 8
  %1903 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1904 = bitcast %union.rec* %1903 to %struct.word_type*
  %1905 = getelementptr inbounds %struct.word_type, %struct.word_type* %1904, i32 0, i32 0
  %1906 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1905, i32 0, i64 0
  %1907 = getelementptr inbounds %struct.LIST, %struct.LIST* %1906, i32 0, i32 0
  store %union.rec* %1887, %union.rec** %1907, align 8
  store %union.rec* %1887, %union.rec** @xx_link, align 8
  %1908 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1908, %union.rec** @zz_res, align 8
  %1909 = load %union.rec*, %union.rec** %s, align 8
  %1910 = bitcast %union.rec* %1909 to %struct.symbol_type*
  %1911 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1910, i32 0, i32 3
  %1912 = load %union.rec*, %union.rec** %1911, align 8
  store %union.rec* %1912, %union.rec** @zz_hold, align 8
  %1913 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1914 = icmp eq %union.rec* %1913, null
  br i1 %1914, label %1915, label %1917

; <label>:1915                                    ; preds = %1881
  %1916 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1965

; <label>:1917                                    ; preds = %1881
  %1918 = load %union.rec*, %union.rec** @zz_res, align 8
  %1919 = icmp eq %union.rec* %1918, null
  br i1 %1919, label %1920, label %1922

; <label>:1920                                    ; preds = %1917
  %1921 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1963

; <label>:1922                                    ; preds = %1917
  %1923 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1924 = bitcast %union.rec* %1923 to %struct.word_type*
  %1925 = getelementptr inbounds %struct.word_type, %struct.word_type* %1924, i32 0, i32 0
  %1926 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1925, i32 0, i64 0
  %1927 = getelementptr inbounds %struct.LIST, %struct.LIST* %1926, i32 0, i32 0
  %1928 = load %union.rec*, %union.rec** %1927, align 8
  store %union.rec* %1928, %union.rec** @zz_tmp, align 8
  %1929 = load %union.rec*, %union.rec** @zz_res, align 8
  %1930 = bitcast %union.rec* %1929 to %struct.word_type*
  %1931 = getelementptr inbounds %struct.word_type, %struct.word_type* %1930, i32 0, i32 0
  %1932 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1931, i32 0, i64 0
  %1933 = getelementptr inbounds %struct.LIST, %struct.LIST* %1932, i32 0, i32 0
  %1934 = load %union.rec*, %union.rec** %1933, align 8
  %1935 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1936 = bitcast %union.rec* %1935 to %struct.word_type*
  %1937 = getelementptr inbounds %struct.word_type, %struct.word_type* %1936, i32 0, i32 0
  %1938 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1937, i32 0, i64 0
  %1939 = getelementptr inbounds %struct.LIST, %struct.LIST* %1938, i32 0, i32 0
  store %union.rec* %1934, %union.rec** %1939, align 8
  %1940 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1941 = load %union.rec*, %union.rec** @zz_res, align 8
  %1942 = bitcast %union.rec* %1941 to %struct.word_type*
  %1943 = getelementptr inbounds %struct.word_type, %struct.word_type* %1942, i32 0, i32 0
  %1944 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1943, i32 0, i64 0
  %1945 = getelementptr inbounds %struct.LIST, %struct.LIST* %1944, i32 0, i32 0
  %1946 = load %union.rec*, %union.rec** %1945, align 8
  %1947 = bitcast %union.rec* %1946 to %struct.word_type*
  %1948 = getelementptr inbounds %struct.word_type, %struct.word_type* %1947, i32 0, i32 0
  %1949 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1948, i32 0, i64 0
  %1950 = getelementptr inbounds %struct.LIST, %struct.LIST* %1949, i32 0, i32 1
  store %union.rec* %1940, %union.rec** %1950, align 8
  %1951 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1952 = load %union.rec*, %union.rec** @zz_res, align 8
  %1953 = bitcast %union.rec* %1952 to %struct.word_type*
  %1954 = getelementptr inbounds %struct.word_type, %struct.word_type* %1953, i32 0, i32 0
  %1955 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1954, i32 0, i64 0
  %1956 = getelementptr inbounds %struct.LIST, %struct.LIST* %1955, i32 0, i32 0
  store %union.rec* %1951, %union.rec** %1956, align 8
  %1957 = load %union.rec*, %union.rec** @zz_res, align 8
  %1958 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1959 = bitcast %union.rec* %1958 to %struct.word_type*
  %1960 = getelementptr inbounds %struct.word_type, %struct.word_type* %1959, i32 0, i32 0
  %1961 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1960, i32 0, i64 0
  %1962 = getelementptr inbounds %struct.LIST, %struct.LIST* %1961, i32 0, i32 1
  store %union.rec* %1957, %union.rec** %1962, align 8
  br label %1963

; <label>:1963                                    ; preds = %1922, %1920
  %1964 = phi %union.rec* [ %1921, %1920 ], [ %1957, %1922 ]
  br label %1965

; <label>:1965                                    ; preds = %1963, %1915
  %1966 = phi %union.rec* [ %1916, %1915 ], [ %1964, %1963 ]
  %1967 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1967, %union.rec** @zz_res, align 8
  %1968 = load %union.rec*, %union.rec** %s, align 8
  store %union.rec* %1968, %union.rec** @zz_hold, align 8
  %1969 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1970 = icmp eq %union.rec* %1969, null
  br i1 %1970, label %1971, label %1973

; <label>:1971                                    ; preds = %1965
  %1972 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2021

; <label>:1973                                    ; preds = %1965
  %1974 = load %union.rec*, %union.rec** @zz_res, align 8
  %1975 = icmp eq %union.rec* %1974, null
  br i1 %1975, label %1976, label %1978

; <label>:1976                                    ; preds = %1973
  %1977 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2019

; <label>:1978                                    ; preds = %1973
  %1979 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1980 = bitcast %union.rec* %1979 to %struct.word_type*
  %1981 = getelementptr inbounds %struct.word_type, %struct.word_type* %1980, i32 0, i32 0
  %1982 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1981, i32 0, i64 1
  %1983 = getelementptr inbounds %struct.LIST, %struct.LIST* %1982, i32 0, i32 0
  %1984 = load %union.rec*, %union.rec** %1983, align 8
  store %union.rec* %1984, %union.rec** @zz_tmp, align 8
  %1985 = load %union.rec*, %union.rec** @zz_res, align 8
  %1986 = bitcast %union.rec* %1985 to %struct.word_type*
  %1987 = getelementptr inbounds %struct.word_type, %struct.word_type* %1986, i32 0, i32 0
  %1988 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1987, i32 0, i64 1
  %1989 = getelementptr inbounds %struct.LIST, %struct.LIST* %1988, i32 0, i32 0
  %1990 = load %union.rec*, %union.rec** %1989, align 8
  %1991 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1992 = bitcast %union.rec* %1991 to %struct.word_type*
  %1993 = getelementptr inbounds %struct.word_type, %struct.word_type* %1992, i32 0, i32 0
  %1994 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1993, i32 0, i64 1
  %1995 = getelementptr inbounds %struct.LIST, %struct.LIST* %1994, i32 0, i32 0
  store %union.rec* %1990, %union.rec** %1995, align 8
  %1996 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1997 = load %union.rec*, %union.rec** @zz_res, align 8
  %1998 = bitcast %union.rec* %1997 to %struct.word_type*
  %1999 = getelementptr inbounds %struct.word_type, %struct.word_type* %1998, i32 0, i32 0
  %2000 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1999, i32 0, i64 1
  %2001 = getelementptr inbounds %struct.LIST, %struct.LIST* %2000, i32 0, i32 0
  %2002 = load %union.rec*, %union.rec** %2001, align 8
  %2003 = bitcast %union.rec* %2002 to %struct.word_type*
  %2004 = getelementptr inbounds %struct.word_type, %struct.word_type* %2003, i32 0, i32 0
  %2005 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2004, i32 0, i64 1
  %2006 = getelementptr inbounds %struct.LIST, %struct.LIST* %2005, i32 0, i32 1
  store %union.rec* %1996, %union.rec** %2006, align 8
  %2007 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2008 = load %union.rec*, %union.rec** @zz_res, align 8
  %2009 = bitcast %union.rec* %2008 to %struct.word_type*
  %2010 = getelementptr inbounds %struct.word_type, %struct.word_type* %2009, i32 0, i32 0
  %2011 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2010, i32 0, i64 1
  %2012 = getelementptr inbounds %struct.LIST, %struct.LIST* %2011, i32 0, i32 0
  store %union.rec* %2007, %union.rec** %2012, align 8
  %2013 = load %union.rec*, %union.rec** @zz_res, align 8
  %2014 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2015 = bitcast %union.rec* %2014 to %struct.word_type*
  %2016 = getelementptr inbounds %struct.word_type, %struct.word_type* %2015, i32 0, i32 0
  %2017 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2016, i32 0, i64 1
  %2018 = getelementptr inbounds %struct.LIST, %struct.LIST* %2017, i32 0, i32 1
  store %union.rec* %2013, %union.rec** %2018, align 8
  br label %2019

; <label>:2019                                    ; preds = %1978, %1976
  %2020 = phi %union.rec* [ %1977, %1976 ], [ %2013, %1978 ]
  br label %2021

; <label>:2021                                    ; preds = %2019, %1971
  %2022 = phi %union.rec* [ %1972, %1971 ], [ %2020, %2019 ]
  br label %2023

; <label>:2023                                    ; preds = %2021, %1841
  %2024 = load %union.rec*, %union.rec** %s, align 8
  ret %union.rec* %2024
}

declare i32 @LexLegalName(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i8* @EchoFilePos(%struct.FILE_POS*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @InsertAlternativeName(i8* %str, %union.rec* %s, %struct.FILE_POS* %xfpos) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %union.rec*, align 8
  %3 = alloca %struct.FILE_POS*, align 8
  %sum = alloca i32, align 4
  %rlen = alloca i32, align 4
  %x = alloca i8*, align 8
  %len = alloca i32, align 4
  %entry = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %plink = alloca %union.rec*, align 8
  %p = alloca %union.rec*, align 8
  %q = alloca %union.rec*, align 8
  store i8* %str, i8** %1, align 8
  store %union.rec* %s, %union.rec** %2, align 8
  store %struct.FILE_POS* %xfpos, %struct.FILE_POS** %3, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = call i64 @strlen(i8* %4) #4
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %len, align 4
  %7 = load i32, i32* %len, align 4
  store i32 %7, i32* %rlen, align 4
  %8 = load i8*, i8** %1, align 8
  store i8* %8, i8** %x, align 8
  %9 = load i8*, i8** %x, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %x, align 8
  %11 = load i8, i8* %9, align 1
  %12 = zext i8 %11 to i32
  store i32 %12, i32* %sum, align 4
  br label %13

; <label>:13                                      ; preds = %17, %0
  %14 = load i32, i32* %rlen, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %rlen, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

; <label>:17                                      ; preds = %13
  %18 = load i8*, i8** %x, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %x, align 8
  %20 = load i8, i8* %18, align 1
  %21 = zext i8 %20 to i32
  %22 = load i32, i32* %sum, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %sum, align 4
  br label %13

; <label>:24                                      ; preds = %13
  %25 = load i32, i32* %sum, align 4
  %26 = srem i32 %25, 1783
  store i32 %26, i32* %sum, align 4
  %27 = load i32, i32* %sum, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [1783 x %struct.anon], [1783 x %struct.anon]* @symtab, i32 0, i64 %28
  %30 = bitcast %struct.anon* %29 to %union.rec*
  store %union.rec* %30, %union.rec** %entry, align 8
  %31 = load %union.rec*, %union.rec** %entry, align 8
  %32 = bitcast %union.rec* %31 to %struct.word_type*
  %33 = getelementptr inbounds %struct.word_type, %struct.word_type* %32, i32 0, i32 0
  %34 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %33, i32 0, i64 0
  %35 = getelementptr inbounds %struct.LIST, %struct.LIST* %34, i32 0, i32 1
  %36 = load %union.rec*, %union.rec** %35, align 8
  store %union.rec* %36, %union.rec** %plink, align 8
  br label %37

; <label>:37                                      ; preds = %150, %24
  %38 = load %union.rec*, %union.rec** %plink, align 8
  %39 = load %union.rec*, %union.rec** %entry, align 8
  %40 = icmp ne %union.rec* %38, %39
  br i1 %40, label %41, label %157

; <label>:41                                      ; preds = %37
  %42 = load %union.rec*, %union.rec** %plink, align 8
  %43 = bitcast %union.rec* %42 to %struct.word_type*
  %44 = getelementptr inbounds %struct.word_type, %struct.word_type* %43, i32 0, i32 0
  %45 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %44, i32 0, i64 1
  %46 = getelementptr inbounds %struct.LIST, %struct.LIST* %45, i32 0, i32 0
  %47 = load %union.rec*, %union.rec** %46, align 8
  store %union.rec* %47, %union.rec** %p, align 8
  br label %48

; <label>:48                                      ; preds = %58, %41
  %49 = load %union.rec*, %union.rec** %p, align 8
  %50 = bitcast %union.rec* %49 to %struct.word_type*
  %51 = getelementptr inbounds %struct.word_type, %struct.word_type* %50, i32 0, i32 1
  %52 = bitcast %union.FIRST_UNION* %51 to %struct.anon.0*
  %53 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %52, i32 0, i32 0
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %65

; <label>:57                                      ; preds = %48
  br label %58

; <label>:58                                      ; preds = %57
  %59 = load %union.rec*, %union.rec** %p, align 8
  %60 = bitcast %union.rec* %59 to %struct.word_type*
  %61 = getelementptr inbounds %struct.word_type, %struct.word_type* %60, i32 0, i32 0
  %62 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %61, i32 0, i64 1
  %63 = getelementptr inbounds %struct.LIST, %struct.LIST* %62, i32 0, i32 0
  %64 = load %union.rec*, %union.rec** %63, align 8
  store %union.rec* %64, %union.rec** %p, align 8
  br label %48

; <label>:65                                      ; preds = %48
  %66 = load %union.rec*, %union.rec** %p, align 8
  %67 = bitcast %union.rec* %66 to %struct.word_type*
  %68 = getelementptr inbounds %struct.word_type, %struct.word_type* %67, i32 0, i32 2
  %69 = bitcast %union.SECOND_UNION* %68 to %struct.anon.2*
  %70 = bitcast %struct.anon.2* %69 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 4095
  %73 = load i32, i32* %len, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %149

; <label>:75                                      ; preds = %65
  %76 = load i8*, i8** %1, align 8
  %77 = load %union.rec*, %union.rec** %p, align 8
  %78 = bitcast %union.rec* %77 to %struct.word_type*
  %79 = getelementptr inbounds %struct.word_type, %struct.word_type* %78, i32 0, i32 4
  %80 = getelementptr inbounds [4 x i8], [4 x i8]* %79, i32 0, i32 0
  %81 = call i32 @strcmp(i8* %76, i8* %80) #4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %149

; <label>:83                                      ; preds = %75
  %84 = load %union.rec*, %union.rec** %p, align 8
  %85 = bitcast %union.rec* %84 to %struct.word_type*
  %86 = getelementptr inbounds %struct.word_type, %struct.word_type* %85, i32 0, i32 0
  %87 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %86, i32 0, i64 0
  %88 = getelementptr inbounds %struct.LIST, %struct.LIST* %87, i32 0, i32 1
  %89 = load %union.rec*, %union.rec** %88, align 8
  store %union.rec* %89, %union.rec** %link, align 8
  br label %90

; <label>:90                                      ; preds = %141, %83
  %91 = load %union.rec*, %union.rec** %link, align 8
  %92 = load %union.rec*, %union.rec** %p, align 8
  %93 = icmp ne %union.rec* %91, %92
  br i1 %93, label %94, label %148

; <label>:94                                      ; preds = %90
  %95 = load %union.rec*, %union.rec** %link, align 8
  %96 = bitcast %union.rec* %95 to %struct.word_type*
  %97 = getelementptr inbounds %struct.word_type, %struct.word_type* %96, i32 0, i32 0
  %98 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %97, i32 0, i64 1
  %99 = getelementptr inbounds %struct.LIST, %struct.LIST* %98, i32 0, i32 0
  %100 = load %union.rec*, %union.rec** %99, align 8
  store %union.rec* %100, %union.rec** %q, align 8
  br label %101

; <label>:101                                     ; preds = %111, %94
  %102 = load %union.rec*, %union.rec** %q, align 8
  %103 = bitcast %union.rec* %102 to %struct.word_type*
  %104 = getelementptr inbounds %struct.word_type, %struct.word_type* %103, i32 0, i32 1
  %105 = bitcast %union.FIRST_UNION* %104 to %struct.anon.0*
  %106 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %105, i32 0, i32 0
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %118

; <label>:110                                     ; preds = %101
  br label %111

; <label>:111                                     ; preds = %110
  %112 = load %union.rec*, %union.rec** %q, align 8
  %113 = bitcast %union.rec* %112 to %struct.word_type*
  %114 = getelementptr inbounds %struct.word_type, %struct.word_type* %113, i32 0, i32 0
  %115 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %114, i32 0, i64 1
  %116 = getelementptr inbounds %struct.LIST, %struct.LIST* %115, i32 0, i32 0
  %117 = load %union.rec*, %union.rec** %116, align 8
  store %union.rec* %117, %union.rec** %q, align 8
  br label %101

; <label>:118                                     ; preds = %101
  %119 = load %union.rec*, %union.rec** %2, align 8
  %120 = bitcast %union.rec* %119 to %struct.symbol_type*
  %121 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %120, i32 0, i32 3
  %122 = load %union.rec*, %union.rec** %121, align 8
  %123 = load %union.rec*, %union.rec** %q, align 8
  %124 = bitcast %union.rec* %123 to %struct.symbol_type*
  %125 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %124, i32 0, i32 3
  %126 = load %union.rec*, %union.rec** %125, align 8
  %127 = icmp eq %union.rec* %122, %126
  br i1 %127, label %128, label %140

; <label>:128                                     ; preds = %118
  %129 = load %union.rec*, %union.rec** %2, align 8
  %130 = bitcast %union.rec* %129 to %struct.word_type*
  %131 = getelementptr inbounds %struct.word_type, %struct.word_type* %130, i32 0, i32 1
  %132 = bitcast %union.FIRST_UNION* %131 to %struct.FILE_POS*
  %133 = load i8*, i8** %1, align 8
  %134 = load %union.rec*, %union.rec** %q, align 8
  %135 = bitcast %union.rec* %134 to %struct.word_type*
  %136 = getelementptr inbounds %struct.word_type, %struct.word_type* %135, i32 0, i32 1
  %137 = bitcast %union.FIRST_UNION* %136 to %struct.FILE_POS*
  %138 = call i8* @EchoFilePos(%struct.FILE_POS* %137)
  %139 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i32 0, i32 0), i32 2, %struct.FILE_POS* %132, i8* %133, i8* %138)
  br label %148

; <label>:140                                     ; preds = %118
  br label %141

; <label>:141                                     ; preds = %140
  %142 = load %union.rec*, %union.rec** %link, align 8
  %143 = bitcast %union.rec* %142 to %struct.word_type*
  %144 = getelementptr inbounds %struct.word_type, %struct.word_type* %143, i32 0, i32 0
  %145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %144, i32 0, i64 0
  %146 = getelementptr inbounds %struct.LIST, %struct.LIST* %145, i32 0, i32 1
  %147 = load %union.rec*, %union.rec** %146, align 8
  store %union.rec* %147, %union.rec** %link, align 8
  br label %90

; <label>:148                                     ; preds = %128, %90
  br label %421

; <label>:149                                     ; preds = %75, %65
  br label %150

; <label>:150                                     ; preds = %149
  %151 = load %union.rec*, %union.rec** %plink, align 8
  %152 = bitcast %union.rec* %151 to %struct.word_type*
  %153 = getelementptr inbounds %struct.word_type, %struct.word_type* %152, i32 0, i32 0
  %154 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %153, i32 0, i64 0
  %155 = getelementptr inbounds %struct.LIST, %struct.LIST* %154, i32 0, i32 1
  %156 = load %union.rec*, %union.rec** %155, align 8
  store %union.rec* %156, %union.rec** %plink, align 8
  br label %37

; <label>:157                                     ; preds = %37
  %158 = load i32, i32* %len, align 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = mul i64 %160, 1
  %162 = add i64 68, %161
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* @zz_size, align 4
  %164 = load i32, i32* @zz_size, align 4
  %165 = sub nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = udiv i64 %166, 8
  %168 = add i64 %167, 1
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* @zz_size, align 4
  %170 = sext i32 %169 to i64
  %171 = icmp uge i64 %170, 265
  br i1 %171, label %172, label %175

; <label>:172                                     ; preds = %157
  %173 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %174 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %173)
  br label %200

; <label>:175                                     ; preds = %157
  %176 = load i32, i32* @zz_size, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %177
  %179 = load %union.rec*, %union.rec** %178, align 8
  %180 = icmp eq %union.rec* %179, null
  br i1 %180, label %181, label %185

; <label>:181                                     ; preds = %175
  %182 = load i32, i32* @zz_size, align 4
  %183 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %184 = call %union.rec* @GetMemory(i32 %182, %struct.FILE_POS* %183)
  store %union.rec* %184, %union.rec** @zz_hold, align 8
  br label %199

; <label>:185                                     ; preds = %175
  %186 = load i32, i32* @zz_size, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %187
  %189 = load %union.rec*, %union.rec** %188, align 8
  store %union.rec* %189, %union.rec** @zz_hold, align 8
  store %union.rec* %189, %union.rec** @zz_hold, align 8
  %190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %191 = bitcast %union.rec* %190 to %struct.word_type*
  %192 = getelementptr inbounds %struct.word_type, %struct.word_type* %191, i32 0, i32 0
  %193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %192, i32 0, i64 0
  %194 = getelementptr inbounds %struct.LIST, %struct.LIST* %193, i32 0, i32 0
  %195 = load %union.rec*, %union.rec** %194, align 8
  %196 = load i32, i32* @zz_size, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %197
  store %union.rec* %195, %union.rec** %198, align 8
  br label %199

; <label>:199                                     ; preds = %185, %181
  br label %200

; <label>:200                                     ; preds = %199, %172
  %201 = load i32, i32* @zz_size, align 4
  %202 = trunc i32 %201 to i8
  %203 = load %union.rec*, %union.rec** @zz_hold, align 8
  %204 = bitcast %union.rec* %203 to %struct.word_type*
  %205 = getelementptr inbounds %struct.word_type, %struct.word_type* %204, i32 0, i32 1
  %206 = bitcast %union.FIRST_UNION* %205 to %struct.anon.0*
  %207 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %206, i32 0, i32 1
  store i8 %202, i8* %207, align 1
  %208 = load %union.rec*, %union.rec** @zz_hold, align 8
  %209 = bitcast %union.rec* %208 to %struct.word_type*
  %210 = getelementptr inbounds %struct.word_type, %struct.word_type* %209, i32 0, i32 1
  %211 = bitcast %union.FIRST_UNION* %210 to %struct.anon.0*
  %212 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %211, i32 0, i32 0
  store i8 11, i8* %212, align 1
  %213 = load %union.rec*, %union.rec** @zz_hold, align 8
  %214 = load %union.rec*, %union.rec** @zz_hold, align 8
  %215 = bitcast %union.rec* %214 to %struct.word_type*
  %216 = getelementptr inbounds %struct.word_type, %struct.word_type* %215, i32 0, i32 0
  %217 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %216, i32 0, i64 1
  %218 = getelementptr inbounds %struct.LIST, %struct.LIST* %217, i32 0, i32 1
  store %union.rec* %213, %union.rec** %218, align 8
  %219 = load %union.rec*, %union.rec** @zz_hold, align 8
  %220 = bitcast %union.rec* %219 to %struct.word_type*
  %221 = getelementptr inbounds %struct.word_type, %struct.word_type* %220, i32 0, i32 0
  %222 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %221, i32 0, i64 1
  %223 = getelementptr inbounds %struct.LIST, %struct.LIST* %222, i32 0, i32 0
  store %union.rec* %213, %union.rec** %223, align 8
  %224 = load %union.rec*, %union.rec** @zz_hold, align 8
  %225 = bitcast %union.rec* %224 to %struct.word_type*
  %226 = getelementptr inbounds %struct.word_type, %struct.word_type* %225, i32 0, i32 0
  %227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %226, i32 0, i64 0
  %228 = getelementptr inbounds %struct.LIST, %struct.LIST* %227, i32 0, i32 1
  store %union.rec* %213, %union.rec** %228, align 8
  %229 = load %union.rec*, %union.rec** @zz_hold, align 8
  %230 = bitcast %union.rec* %229 to %struct.word_type*
  %231 = getelementptr inbounds %struct.word_type, %struct.word_type* %230, i32 0, i32 0
  %232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %231, i32 0, i64 0
  %233 = getelementptr inbounds %struct.LIST, %struct.LIST* %232, i32 0, i32 0
  store %union.rec* %213, %union.rec** %233, align 8
  store %union.rec* %213, %union.rec** %p, align 8
  %234 = load i32, i32* %len, align 4
  %235 = load %union.rec*, %union.rec** %p, align 8
  %236 = bitcast %union.rec* %235 to %struct.word_type*
  %237 = getelementptr inbounds %struct.word_type, %struct.word_type* %236, i32 0, i32 2
  %238 = bitcast %union.SECOND_UNION* %237 to %struct.anon.2*
  %239 = bitcast %struct.anon.2* %238 to i32*
  %240 = load i32, i32* %239, align 4
  %241 = and i32 %234, 4095
  %242 = and i32 %240, -4096
  %243 = or i32 %242, %241
  store i32 %243, i32* %239, align 4
  %244 = load %union.rec*, %union.rec** %p, align 8
  %245 = bitcast %union.rec* %244 to %struct.word_type*
  %246 = getelementptr inbounds %struct.word_type, %struct.word_type* %245, i32 0, i32 4
  %247 = getelementptr inbounds [4 x i8], [4 x i8]* %246, i32 0, i32 0
  %248 = load i8*, i8** %1, align 8
  %249 = call i8* @strcpy(i8* %247, i8* %248) #5
  %250 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %251 = zext i8 %250 to i32
  store i32 %251, i32* @zz_size, align 4
  %252 = sext i32 %251 to i64
  %253 = icmp uge i64 %252, 265
  br i1 %253, label %254, label %257

; <label>:254                                     ; preds = %200
  %255 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %256 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %255)
  br label %282

; <label>:257                                     ; preds = %200
  %258 = load i32, i32* @zz_size, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %259
  %261 = load %union.rec*, %union.rec** %260, align 8
  %262 = icmp eq %union.rec* %261, null
  br i1 %262, label %263, label %267

; <label>:263                                     ; preds = %257
  %264 = load i32, i32* @zz_size, align 4
  %265 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %266 = call %union.rec* @GetMemory(i32 %264, %struct.FILE_POS* %265)
  store %union.rec* %266, %union.rec** @zz_hold, align 8
  br label %281

; <label>:267                                     ; preds = %257
  %268 = load i32, i32* @zz_size, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %269
  %271 = load %union.rec*, %union.rec** %270, align 8
  store %union.rec* %271, %union.rec** @zz_hold, align 8
  store %union.rec* %271, %union.rec** @zz_hold, align 8
  %272 = load %union.rec*, %union.rec** @zz_hold, align 8
  %273 = bitcast %union.rec* %272 to %struct.word_type*
  %274 = getelementptr inbounds %struct.word_type, %struct.word_type* %273, i32 0, i32 0
  %275 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %274, i32 0, i64 0
  %276 = getelementptr inbounds %struct.LIST, %struct.LIST* %275, i32 0, i32 0
  %277 = load %union.rec*, %union.rec** %276, align 8
  %278 = load i32, i32* @zz_size, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %279
  store %union.rec* %277, %union.rec** %280, align 8
  br label %281

; <label>:281                                     ; preds = %267, %263
  br label %282

; <label>:282                                     ; preds = %281, %254
  %283 = load %union.rec*, %union.rec** @zz_hold, align 8
  %284 = bitcast %union.rec* %283 to %struct.word_type*
  %285 = getelementptr inbounds %struct.word_type, %struct.word_type* %284, i32 0, i32 1
  %286 = bitcast %union.FIRST_UNION* %285 to %struct.anon.0*
  %287 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %286, i32 0, i32 0
  store i8 0, i8* %287, align 1
  %288 = load %union.rec*, %union.rec** @zz_hold, align 8
  %289 = load %union.rec*, %union.rec** @zz_hold, align 8
  %290 = bitcast %union.rec* %289 to %struct.word_type*
  %291 = getelementptr inbounds %struct.word_type, %struct.word_type* %290, i32 0, i32 0
  %292 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %291, i32 0, i64 1
  %293 = getelementptr inbounds %struct.LIST, %struct.LIST* %292, i32 0, i32 1
  store %union.rec* %288, %union.rec** %293, align 8
  %294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %295 = bitcast %union.rec* %294 to %struct.word_type*
  %296 = getelementptr inbounds %struct.word_type, %struct.word_type* %295, i32 0, i32 0
  %297 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %296, i32 0, i64 1
  %298 = getelementptr inbounds %struct.LIST, %struct.LIST* %297, i32 0, i32 0
  store %union.rec* %288, %union.rec** %298, align 8
  %299 = load %union.rec*, %union.rec** @zz_hold, align 8
  %300 = bitcast %union.rec* %299 to %struct.word_type*
  %301 = getelementptr inbounds %struct.word_type, %struct.word_type* %300, i32 0, i32 0
  %302 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %301, i32 0, i64 0
  %303 = getelementptr inbounds %struct.LIST, %struct.LIST* %302, i32 0, i32 1
  store %union.rec* %288, %union.rec** %303, align 8
  %304 = load %union.rec*, %union.rec** @zz_hold, align 8
  %305 = bitcast %union.rec* %304 to %struct.word_type*
  %306 = getelementptr inbounds %struct.word_type, %struct.word_type* %305, i32 0, i32 0
  %307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %306, i32 0, i64 0
  %308 = getelementptr inbounds %struct.LIST, %struct.LIST* %307, i32 0, i32 0
  store %union.rec* %288, %union.rec** %308, align 8
  store %union.rec* %288, %union.rec** @xx_link, align 8
  %309 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %309, %union.rec** @zz_res, align 8
  %310 = load %union.rec*, %union.rec** %entry, align 8
  store %union.rec* %310, %union.rec** @zz_hold, align 8
  %311 = load %union.rec*, %union.rec** @zz_hold, align 8
  %312 = icmp eq %union.rec* %311, null
  br i1 %312, label %313, label %315

; <label>:313                                     ; preds = %282
  %314 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %363

; <label>:315                                     ; preds = %282
  %316 = load %union.rec*, %union.rec** @zz_res, align 8
  %317 = icmp eq %union.rec* %316, null
  br i1 %317, label %318, label %320

; <label>:318                                     ; preds = %315
  %319 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %361

; <label>:320                                     ; preds = %315
  %321 = load %union.rec*, %union.rec** @zz_hold, align 8
  %322 = bitcast %union.rec* %321 to %struct.word_type*
  %323 = getelementptr inbounds %struct.word_type, %struct.word_type* %322, i32 0, i32 0
  %324 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %323, i32 0, i64 0
  %325 = getelementptr inbounds %struct.LIST, %struct.LIST* %324, i32 0, i32 0
  %326 = load %union.rec*, %union.rec** %325, align 8
  store %union.rec* %326, %union.rec** @zz_tmp, align 8
  %327 = load %union.rec*, %union.rec** @zz_res, align 8
  %328 = bitcast %union.rec* %327 to %struct.word_type*
  %329 = getelementptr inbounds %struct.word_type, %struct.word_type* %328, i32 0, i32 0
  %330 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %329, i32 0, i64 0
  %331 = getelementptr inbounds %struct.LIST, %struct.LIST* %330, i32 0, i32 0
  %332 = load %union.rec*, %union.rec** %331, align 8
  %333 = load %union.rec*, %union.rec** @zz_hold, align 8
  %334 = bitcast %union.rec* %333 to %struct.word_type*
  %335 = getelementptr inbounds %struct.word_type, %struct.word_type* %334, i32 0, i32 0
  %336 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %335, i32 0, i64 0
  %337 = getelementptr inbounds %struct.LIST, %struct.LIST* %336, i32 0, i32 0
  store %union.rec* %332, %union.rec** %337, align 8
  %338 = load %union.rec*, %union.rec** @zz_hold, align 8
  %339 = load %union.rec*, %union.rec** @zz_res, align 8
  %340 = bitcast %union.rec* %339 to %struct.word_type*
  %341 = getelementptr inbounds %struct.word_type, %struct.word_type* %340, i32 0, i32 0
  %342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %341, i32 0, i64 0
  %343 = getelementptr inbounds %struct.LIST, %struct.LIST* %342, i32 0, i32 0
  %344 = load %union.rec*, %union.rec** %343, align 8
  %345 = bitcast %union.rec* %344 to %struct.word_type*
  %346 = getelementptr inbounds %struct.word_type, %struct.word_type* %345, i32 0, i32 0
  %347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %346, i32 0, i64 0
  %348 = getelementptr inbounds %struct.LIST, %struct.LIST* %347, i32 0, i32 1
  store %union.rec* %338, %union.rec** %348, align 8
  %349 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %350 = load %union.rec*, %union.rec** @zz_res, align 8
  %351 = bitcast %union.rec* %350 to %struct.word_type*
  %352 = getelementptr inbounds %struct.word_type, %struct.word_type* %351, i32 0, i32 0
  %353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %352, i32 0, i64 0
  %354 = getelementptr inbounds %struct.LIST, %struct.LIST* %353, i32 0, i32 0
  store %union.rec* %349, %union.rec** %354, align 8
  %355 = load %union.rec*, %union.rec** @zz_res, align 8
  %356 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %357 = bitcast %union.rec* %356 to %struct.word_type*
  %358 = getelementptr inbounds %struct.word_type, %struct.word_type* %357, i32 0, i32 0
  %359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %358, i32 0, i64 0
  %360 = getelementptr inbounds %struct.LIST, %struct.LIST* %359, i32 0, i32 1
  store %union.rec* %355, %union.rec** %360, align 8
  br label %361

; <label>:361                                     ; preds = %320, %318
  %362 = phi %union.rec* [ %319, %318 ], [ %355, %320 ]
  br label %363

; <label>:363                                     ; preds = %361, %313
  %364 = phi %union.rec* [ %314, %313 ], [ %362, %361 ]
  %365 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %365, %union.rec** @zz_res, align 8
  %366 = load %union.rec*, %union.rec** %p, align 8
  store %union.rec* %366, %union.rec** @zz_hold, align 8
  %367 = load %union.rec*, %union.rec** @zz_hold, align 8
  %368 = icmp eq %union.rec* %367, null
  br i1 %368, label %369, label %371

; <label>:369                                     ; preds = %363
  %370 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %419

; <label>:371                                     ; preds = %363
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
  %380 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %379, i32 0, i64 1
  %381 = getelementptr inbounds %struct.LIST, %struct.LIST* %380, i32 0, i32 0
  %382 = load %union.rec*, %union.rec** %381, align 8
  store %union.rec* %382, %union.rec** @zz_tmp, align 8
  %383 = load %union.rec*, %union.rec** @zz_res, align 8
  %384 = bitcast %union.rec* %383 to %struct.word_type*
  %385 = getelementptr inbounds %struct.word_type, %struct.word_type* %384, i32 0, i32 0
  %386 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %385, i32 0, i64 1
  %387 = getelementptr inbounds %struct.LIST, %struct.LIST* %386, i32 0, i32 0
  %388 = load %union.rec*, %union.rec** %387, align 8
  %389 = load %union.rec*, %union.rec** @zz_hold, align 8
  %390 = bitcast %union.rec* %389 to %struct.word_type*
  %391 = getelementptr inbounds %struct.word_type, %struct.word_type* %390, i32 0, i32 0
  %392 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %391, i32 0, i64 1
  %393 = getelementptr inbounds %struct.LIST, %struct.LIST* %392, i32 0, i32 0
  store %union.rec* %388, %union.rec** %393, align 8
  %394 = load %union.rec*, %union.rec** @zz_hold, align 8
  %395 = load %union.rec*, %union.rec** @zz_res, align 8
  %396 = bitcast %union.rec* %395 to %struct.word_type*
  %397 = getelementptr inbounds %struct.word_type, %struct.word_type* %396, i32 0, i32 0
  %398 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %397, i32 0, i64 1
  %399 = getelementptr inbounds %struct.LIST, %struct.LIST* %398, i32 0, i32 0
  %400 = load %union.rec*, %union.rec** %399, align 8
  %401 = bitcast %union.rec* %400 to %struct.word_type*
  %402 = getelementptr inbounds %struct.word_type, %struct.word_type* %401, i32 0, i32 0
  %403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %402, i32 0, i64 1
  %404 = getelementptr inbounds %struct.LIST, %struct.LIST* %403, i32 0, i32 1
  store %union.rec* %394, %union.rec** %404, align 8
  %405 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %406 = load %union.rec*, %union.rec** @zz_res, align 8
  %407 = bitcast %union.rec* %406 to %struct.word_type*
  %408 = getelementptr inbounds %struct.word_type, %struct.word_type* %407, i32 0, i32 0
  %409 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %408, i32 0, i64 1
  %410 = getelementptr inbounds %struct.LIST, %struct.LIST* %409, i32 0, i32 0
  store %union.rec* %405, %union.rec** %410, align 8
  %411 = load %union.rec*, %union.rec** @zz_res, align 8
  %412 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %413 = bitcast %union.rec* %412 to %struct.word_type*
  %414 = getelementptr inbounds %struct.word_type, %struct.word_type* %413, i32 0, i32 0
  %415 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %414, i32 0, i64 1
  %416 = getelementptr inbounds %struct.LIST, %struct.LIST* %415, i32 0, i32 1
  store %union.rec* %411, %union.rec** %416, align 8
  br label %417

; <label>:417                                     ; preds = %376, %374
  %418 = phi %union.rec* [ %375, %374 ], [ %411, %376 ]
  br label %419

; <label>:419                                     ; preds = %417, %369
  %420 = phi %union.rec* [ %370, %369 ], [ %418, %417 ]
  br label %421

; <label>:421                                     ; preds = %419, %148
  %422 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %423 = zext i8 %422 to i32
  store i32 %423, i32* @zz_size, align 4
  %424 = sext i32 %423 to i64
  %425 = icmp uge i64 %424, 265
  br i1 %425, label %426, label %429

; <label>:426                                     ; preds = %421
  %427 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %428 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %427)
  br label %454

; <label>:429                                     ; preds = %421
  %430 = load i32, i32* @zz_size, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %431
  %433 = load %union.rec*, %union.rec** %432, align 8
  %434 = icmp eq %union.rec* %433, null
  br i1 %434, label %435, label %439

; <label>:435                                     ; preds = %429
  %436 = load i32, i32* @zz_size, align 4
  %437 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %438 = call %union.rec* @GetMemory(i32 %436, %struct.FILE_POS* %437)
  store %union.rec* %438, %union.rec** @zz_hold, align 8
  br label %453

; <label>:439                                     ; preds = %429
  %440 = load i32, i32* @zz_size, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %441
  %443 = load %union.rec*, %union.rec** %442, align 8
  store %union.rec* %443, %union.rec** @zz_hold, align 8
  store %union.rec* %443, %union.rec** @zz_hold, align 8
  %444 = load %union.rec*, %union.rec** @zz_hold, align 8
  %445 = bitcast %union.rec* %444 to %struct.word_type*
  %446 = getelementptr inbounds %struct.word_type, %struct.word_type* %445, i32 0, i32 0
  %447 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %446, i32 0, i64 0
  %448 = getelementptr inbounds %struct.LIST, %struct.LIST* %447, i32 0, i32 0
  %449 = load %union.rec*, %union.rec** %448, align 8
  %450 = load i32, i32* @zz_size, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %451
  store %union.rec* %449, %union.rec** %452, align 8
  br label %453

; <label>:453                                     ; preds = %439, %435
  br label %454

; <label>:454                                     ; preds = %453, %426
  %455 = load %union.rec*, %union.rec** @zz_hold, align 8
  %456 = bitcast %union.rec* %455 to %struct.word_type*
  %457 = getelementptr inbounds %struct.word_type, %struct.word_type* %456, i32 0, i32 1
  %458 = bitcast %union.FIRST_UNION* %457 to %struct.anon.0*
  %459 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %458, i32 0, i32 0
  store i8 0, i8* %459, align 1
  %460 = load %union.rec*, %union.rec** @zz_hold, align 8
  %461 = load %union.rec*, %union.rec** @zz_hold, align 8
  %462 = bitcast %union.rec* %461 to %struct.word_type*
  %463 = getelementptr inbounds %struct.word_type, %struct.word_type* %462, i32 0, i32 0
  %464 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %463, i32 0, i64 1
  %465 = getelementptr inbounds %struct.LIST, %struct.LIST* %464, i32 0, i32 1
  store %union.rec* %460, %union.rec** %465, align 8
  %466 = load %union.rec*, %union.rec** @zz_hold, align 8
  %467 = bitcast %union.rec* %466 to %struct.word_type*
  %468 = getelementptr inbounds %struct.word_type, %struct.word_type* %467, i32 0, i32 0
  %469 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %468, i32 0, i64 1
  %470 = getelementptr inbounds %struct.LIST, %struct.LIST* %469, i32 0, i32 0
  store %union.rec* %460, %union.rec** %470, align 8
  %471 = load %union.rec*, %union.rec** @zz_hold, align 8
  %472 = bitcast %union.rec* %471 to %struct.word_type*
  %473 = getelementptr inbounds %struct.word_type, %struct.word_type* %472, i32 0, i32 0
  %474 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %473, i32 0, i64 0
  %475 = getelementptr inbounds %struct.LIST, %struct.LIST* %474, i32 0, i32 1
  store %union.rec* %460, %union.rec** %475, align 8
  %476 = load %union.rec*, %union.rec** @zz_hold, align 8
  %477 = bitcast %union.rec* %476 to %struct.word_type*
  %478 = getelementptr inbounds %struct.word_type, %struct.word_type* %477, i32 0, i32 0
  %479 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %478, i32 0, i64 0
  %480 = getelementptr inbounds %struct.LIST, %struct.LIST* %479, i32 0, i32 0
  store %union.rec* %460, %union.rec** %480, align 8
  store %union.rec* %460, %union.rec** @xx_link, align 8
  %481 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %481, %union.rec** @zz_res, align 8
  %482 = load %union.rec*, %union.rec** %p, align 8
  store %union.rec* %482, %union.rec** @zz_hold, align 8
  %483 = load %union.rec*, %union.rec** @zz_hold, align 8
  %484 = icmp eq %union.rec* %483, null
  br i1 %484, label %485, label %487

; <label>:485                                     ; preds = %454
  %486 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %535

; <label>:487                                     ; preds = %454
  %488 = load %union.rec*, %union.rec** @zz_res, align 8
  %489 = icmp eq %union.rec* %488, null
  br i1 %489, label %490, label %492

; <label>:490                                     ; preds = %487
  %491 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %533

; <label>:492                                     ; preds = %487
  %493 = load %union.rec*, %union.rec** @zz_hold, align 8
  %494 = bitcast %union.rec* %493 to %struct.word_type*
  %495 = getelementptr inbounds %struct.word_type, %struct.word_type* %494, i32 0, i32 0
  %496 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %495, i32 0, i64 0
  %497 = getelementptr inbounds %struct.LIST, %struct.LIST* %496, i32 0, i32 0
  %498 = load %union.rec*, %union.rec** %497, align 8
  store %union.rec* %498, %union.rec** @zz_tmp, align 8
  %499 = load %union.rec*, %union.rec** @zz_res, align 8
  %500 = bitcast %union.rec* %499 to %struct.word_type*
  %501 = getelementptr inbounds %struct.word_type, %struct.word_type* %500, i32 0, i32 0
  %502 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %501, i32 0, i64 0
  %503 = getelementptr inbounds %struct.LIST, %struct.LIST* %502, i32 0, i32 0
  %504 = load %union.rec*, %union.rec** %503, align 8
  %505 = load %union.rec*, %union.rec** @zz_hold, align 8
  %506 = bitcast %union.rec* %505 to %struct.word_type*
  %507 = getelementptr inbounds %struct.word_type, %struct.word_type* %506, i32 0, i32 0
  %508 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %507, i32 0, i64 0
  %509 = getelementptr inbounds %struct.LIST, %struct.LIST* %508, i32 0, i32 0
  store %union.rec* %504, %union.rec** %509, align 8
  %510 = load %union.rec*, %union.rec** @zz_hold, align 8
  %511 = load %union.rec*, %union.rec** @zz_res, align 8
  %512 = bitcast %union.rec* %511 to %struct.word_type*
  %513 = getelementptr inbounds %struct.word_type, %struct.word_type* %512, i32 0, i32 0
  %514 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %513, i32 0, i64 0
  %515 = getelementptr inbounds %struct.LIST, %struct.LIST* %514, i32 0, i32 0
  %516 = load %union.rec*, %union.rec** %515, align 8
  %517 = bitcast %union.rec* %516 to %struct.word_type*
  %518 = getelementptr inbounds %struct.word_type, %struct.word_type* %517, i32 0, i32 0
  %519 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %518, i32 0, i64 0
  %520 = getelementptr inbounds %struct.LIST, %struct.LIST* %519, i32 0, i32 1
  store %union.rec* %510, %union.rec** %520, align 8
  %521 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %522 = load %union.rec*, %union.rec** @zz_res, align 8
  %523 = bitcast %union.rec* %522 to %struct.word_type*
  %524 = getelementptr inbounds %struct.word_type, %struct.word_type* %523, i32 0, i32 0
  %525 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %524, i32 0, i64 0
  %526 = getelementptr inbounds %struct.LIST, %struct.LIST* %525, i32 0, i32 0
  store %union.rec* %521, %union.rec** %526, align 8
  %527 = load %union.rec*, %union.rec** @zz_res, align 8
  %528 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %529 = bitcast %union.rec* %528 to %struct.word_type*
  %530 = getelementptr inbounds %struct.word_type, %struct.word_type* %529, i32 0, i32 0
  %531 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %530, i32 0, i64 0
  %532 = getelementptr inbounds %struct.LIST, %struct.LIST* %531, i32 0, i32 1
  store %union.rec* %527, %union.rec** %532, align 8
  br label %533

; <label>:533                                     ; preds = %492, %490
  %534 = phi %union.rec* [ %491, %490 ], [ %527, %492 ]
  br label %535

; <label>:535                                     ; preds = %533, %485
  %536 = phi %union.rec* [ %486, %485 ], [ %534, %533 ]
  %537 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %537, %union.rec** @zz_res, align 8
  %538 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %538, %union.rec** @zz_hold, align 8
  %539 = load %union.rec*, %union.rec** @zz_hold, align 8
  %540 = icmp eq %union.rec* %539, null
  br i1 %540, label %541, label %543

; <label>:541                                     ; preds = %535
  %542 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %591

; <label>:543                                     ; preds = %535
  %544 = load %union.rec*, %union.rec** @zz_res, align 8
  %545 = icmp eq %union.rec* %544, null
  br i1 %545, label %546, label %548

; <label>:546                                     ; preds = %543
  %547 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %589

; <label>:548                                     ; preds = %543
  %549 = load %union.rec*, %union.rec** @zz_hold, align 8
  %550 = bitcast %union.rec* %549 to %struct.word_type*
  %551 = getelementptr inbounds %struct.word_type, %struct.word_type* %550, i32 0, i32 0
  %552 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %551, i32 0, i64 1
  %553 = getelementptr inbounds %struct.LIST, %struct.LIST* %552, i32 0, i32 0
  %554 = load %union.rec*, %union.rec** %553, align 8
  store %union.rec* %554, %union.rec** @zz_tmp, align 8
  %555 = load %union.rec*, %union.rec** @zz_res, align 8
  %556 = bitcast %union.rec* %555 to %struct.word_type*
  %557 = getelementptr inbounds %struct.word_type, %struct.word_type* %556, i32 0, i32 0
  %558 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %557, i32 0, i64 1
  %559 = getelementptr inbounds %struct.LIST, %struct.LIST* %558, i32 0, i32 0
  %560 = load %union.rec*, %union.rec** %559, align 8
  %561 = load %union.rec*, %union.rec** @zz_hold, align 8
  %562 = bitcast %union.rec* %561 to %struct.word_type*
  %563 = getelementptr inbounds %struct.word_type, %struct.word_type* %562, i32 0, i32 0
  %564 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %563, i32 0, i64 1
  %565 = getelementptr inbounds %struct.LIST, %struct.LIST* %564, i32 0, i32 0
  store %union.rec* %560, %union.rec** %565, align 8
  %566 = load %union.rec*, %union.rec** @zz_hold, align 8
  %567 = load %union.rec*, %union.rec** @zz_res, align 8
  %568 = bitcast %union.rec* %567 to %struct.word_type*
  %569 = getelementptr inbounds %struct.word_type, %struct.word_type* %568, i32 0, i32 0
  %570 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %569, i32 0, i64 1
  %571 = getelementptr inbounds %struct.LIST, %struct.LIST* %570, i32 0, i32 0
  %572 = load %union.rec*, %union.rec** %571, align 8
  %573 = bitcast %union.rec* %572 to %struct.word_type*
  %574 = getelementptr inbounds %struct.word_type, %struct.word_type* %573, i32 0, i32 0
  %575 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %574, i32 0, i64 1
  %576 = getelementptr inbounds %struct.LIST, %struct.LIST* %575, i32 0, i32 1
  store %union.rec* %566, %union.rec** %576, align 8
  %577 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %578 = load %union.rec*, %union.rec** @zz_res, align 8
  %579 = bitcast %union.rec* %578 to %struct.word_type*
  %580 = getelementptr inbounds %struct.word_type, %struct.word_type* %579, i32 0, i32 0
  %581 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %580, i32 0, i64 1
  %582 = getelementptr inbounds %struct.LIST, %struct.LIST* %581, i32 0, i32 0
  store %union.rec* %577, %union.rec** %582, align 8
  %583 = load %union.rec*, %union.rec** @zz_res, align 8
  %584 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %585 = bitcast %union.rec* %584 to %struct.word_type*
  %586 = getelementptr inbounds %struct.word_type, %struct.word_type* %585, i32 0, i32 0
  %587 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %586, i32 0, i64 1
  %588 = getelementptr inbounds %struct.LIST, %struct.LIST* %587, i32 0, i32 1
  store %union.rec* %583, %union.rec** %588, align 8
  br label %589

; <label>:589                                     ; preds = %548, %546
  %590 = phi %union.rec* [ %547, %546 ], [ %583, %548 ]
  br label %591

; <label>:591                                     ; preds = %589, %541
  %592 = phi %union.rec* [ %542, %541 ], [ %590, %589 ]
  ret void
}

; Function Attrs: nounwind uwtable
define %union.rec* @SearchSym(i8* %str, i32 %len) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %rlen = alloca i32, align 4
  %sum = alloca i32, align 4
  %x = alloca i8*, align 8
  %y = alloca i8*, align 8
  %p = alloca %union.rec*, align 8
  %q = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %plink = alloca %union.rec*, align 8
  %entry = alloca %union.rec*, align 8
  %s = alloca i32, align 4
  store i8* %str, i8** %2, align 8
  store i32 %len, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %rlen, align 4
  %5 = load i8*, i8** %2, align 8
  store i8* %5, i8** %x, align 8
  %6 = load i8*, i8** %x, align 8
  %7 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %7, i8** %x, align 8
  %8 = load i8, i8* %6, align 1
  %9 = zext i8 %8 to i32
  store i32 %9, i32* %sum, align 4
  br label %10

; <label>:10                                      ; preds = %14, %0
  %11 = load i32, i32* %rlen, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %rlen, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

; <label>:14                                      ; preds = %10
  %15 = load i8*, i8** %x, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %x, align 8
  %17 = load i8, i8* %15, align 1
  %18 = zext i8 %17 to i32
  %19 = load i32, i32* %sum, align 4
  %20 = add nsw i32 %19, %18
  store i32 %20, i32* %sum, align 4
  br label %10

; <label>:21                                      ; preds = %10
  %22 = load i32, i32* %sum, align 4
  %23 = srem i32 %22, 1783
  store i32 %23, i32* %sum, align 4
  %24 = load i32, i32* %3, align 4
  store i32 %24, i32* %rlen, align 4
  %25 = load i32, i32* %sum, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [1783 x %struct.anon], [1783 x %struct.anon]* @symtab, i32 0, i64 %26
  %28 = bitcast %struct.anon* %27 to %union.rec*
  store %union.rec* %28, %union.rec** %entry, align 8
  %29 = load %union.rec*, %union.rec** %entry, align 8
  %30 = bitcast %union.rec* %29 to %struct.word_type*
  %31 = getelementptr inbounds %struct.word_type, %struct.word_type* %30, i32 0, i32 0
  %32 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %31, i32 0, i64 0
  %33 = getelementptr inbounds %struct.LIST, %struct.LIST* %32, i32 0, i32 1
  %34 = load %union.rec*, %union.rec** %33, align 8
  store %union.rec* %34, %union.rec** %plink, align 8
  br label %35

; <label>:35                                      ; preds = %256, %21
  %36 = load %union.rec*, %union.rec** %plink, align 8
  %37 = load %union.rec*, %union.rec** %entry, align 8
  %38 = icmp ne %union.rec* %36, %37
  br i1 %38, label %39, label %263

; <label>:39                                      ; preds = %35
  %40 = load %union.rec*, %union.rec** %plink, align 8
  %41 = bitcast %union.rec* %40 to %struct.word_type*
  %42 = getelementptr inbounds %struct.word_type, %struct.word_type* %41, i32 0, i32 0
  %43 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %42, i32 0, i64 1
  %44 = getelementptr inbounds %struct.LIST, %struct.LIST* %43, i32 0, i32 0
  %45 = load %union.rec*, %union.rec** %44, align 8
  store %union.rec* %45, %union.rec** %p, align 8
  br label %46

; <label>:46                                      ; preds = %56, %39
  %47 = load %union.rec*, %union.rec** %p, align 8
  %48 = bitcast %union.rec* %47 to %struct.word_type*
  %49 = getelementptr inbounds %struct.word_type, %struct.word_type* %48, i32 0, i32 1
  %50 = bitcast %union.FIRST_UNION* %49 to %struct.anon.0*
  %51 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %50, i32 0, i32 0
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %63

; <label>:55                                      ; preds = %46
  br label %56

; <label>:56                                      ; preds = %55
  %57 = load %union.rec*, %union.rec** %p, align 8
  %58 = bitcast %union.rec* %57 to %struct.word_type*
  %59 = getelementptr inbounds %struct.word_type, %struct.word_type* %58, i32 0, i32 0
  %60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %59, i32 0, i64 1
  %61 = getelementptr inbounds %struct.LIST, %struct.LIST* %60, i32 0, i32 0
  %62 = load %union.rec*, %union.rec** %61, align 8
  store %union.rec* %62, %union.rec** %p, align 8
  br label %46

; <label>:63                                      ; preds = %46
  %64 = load i32, i32* %rlen, align 4
  %65 = load %union.rec*, %union.rec** %p, align 8
  %66 = bitcast %union.rec* %65 to %struct.word_type*
  %67 = getelementptr inbounds %struct.word_type, %struct.word_type* %66, i32 0, i32 2
  %68 = bitcast %union.SECOND_UNION* %67 to %struct.anon.2*
  %69 = bitcast %struct.anon.2* %68 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 4095
  %72 = icmp eq i32 %64, %71
  br i1 %72, label %73, label %254

; <label>:73                                      ; preds = %63
  %74 = load i8*, i8** %2, align 8
  store i8* %74, i8** %x, align 8
  %75 = load %union.rec*, %union.rec** %p, align 8
  %76 = bitcast %union.rec* %75 to %struct.word_type*
  %77 = getelementptr inbounds %struct.word_type, %struct.word_type* %76, i32 0, i32 4
  %78 = getelementptr inbounds [4 x i8], [4 x i8]* %77, i32 0, i32 0
  store i8* %78, i8** %y, align 8
  br label %79

; <label>:79                                      ; preds = %94, %73
  br label %80

; <label>:80                                      ; preds = %79
  %81 = load i8*, i8** %x, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %x, align 8
  %83 = load i8, i8* %81, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8*, i8** %y, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %y, align 8
  %87 = load i8, i8* %85, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %84, %88
  br i1 %89, label %90, label %94

; <label>:90                                      ; preds = %80
  %91 = load i32, i32* %rlen, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %rlen, align 4
  %93 = icmp ne i32 %92, 0
  br label %94

; <label>:94                                      ; preds = %90, %80
  %95 = phi i1 [ false, %80 ], [ %93, %90 ]
  br i1 %95, label %79, label %96

; <label>:96                                      ; preds = %94
  %97 = load i32, i32* %rlen, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %253

; <label>:99                                      ; preds = %96
  %100 = load i32, i32* @scope_top, align 4
  store i32 %100, i32* %s, align 4
  br label %101

; <label>:101                                     ; preds = %245, %99
  %102 = load i32, i32* %s, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %s, align 4
  %104 = load %union.rec*, %union.rec** %p, align 8
  %105 = bitcast %union.rec* %104 to %struct.word_type*
  %106 = getelementptr inbounds %struct.word_type, %struct.word_type* %105, i32 0, i32 0
  %107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %106, i32 0, i64 0
  %108 = getelementptr inbounds %struct.LIST, %struct.LIST* %107, i32 0, i32 1
  %109 = load %union.rec*, %union.rec** %108, align 8
  store %union.rec* %109, %union.rec** %link, align 8
  br label %110

; <label>:110                                     ; preds = %237, %101
  %111 = load %union.rec*, %union.rec** %link, align 8
  %112 = load %union.rec*, %union.rec** %p, align 8
  %113 = icmp ne %union.rec* %111, %112
  br i1 %113, label %114, label %244

; <label>:114                                     ; preds = %110
  %115 = load %union.rec*, %union.rec** %link, align 8
  %116 = bitcast %union.rec* %115 to %struct.word_type*
  %117 = getelementptr inbounds %struct.word_type, %struct.word_type* %116, i32 0, i32 0
  %118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %117, i32 0, i64 1
  %119 = getelementptr inbounds %struct.LIST, %struct.LIST* %118, i32 0, i32 0
  %120 = load %union.rec*, %union.rec** %119, align 8
  store %union.rec* %120, %union.rec** %q, align 8
  br label %121

; <label>:121                                     ; preds = %131, %114
  %122 = load %union.rec*, %union.rec** %q, align 8
  %123 = bitcast %union.rec* %122 to %struct.word_type*
  %124 = getelementptr inbounds %struct.word_type, %struct.word_type* %123, i32 0, i32 1
  %125 = bitcast %union.FIRST_UNION* %124 to %struct.anon.0*
  %126 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %125, i32 0, i32 0
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %138

; <label>:130                                     ; preds = %121
  br label %131

; <label>:131                                     ; preds = %130
  %132 = load %union.rec*, %union.rec** %q, align 8
  %133 = bitcast %union.rec* %132 to %struct.word_type*
  %134 = getelementptr inbounds %struct.word_type, %struct.word_type* %133, i32 0, i32 0
  %135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %134, i32 0, i64 1
  %136 = getelementptr inbounds %struct.LIST, %struct.LIST* %135, i32 0, i32 0
  %137 = load %union.rec*, %union.rec** %136, align 8
  store %union.rec* %137, %union.rec** %q, align 8
  br label %121

; <label>:138                                     ; preds = %121
  %139 = load %union.rec*, %union.rec** %q, align 8
  %140 = bitcast %union.rec* %139 to %struct.symbol_type*
  %141 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %140, i32 0, i32 3
  %142 = load %union.rec*, %union.rec** %141, align 8
  %143 = load i32, i32* %s, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [300 x %union.rec*], [300 x %union.rec*]* @scope, i32 0, i64 %144
  %146 = load %union.rec*, %union.rec** %145, align 8
  %147 = icmp eq %union.rec* %142, %146
  br i1 %147, label %148, label %236

; <label>:148                                     ; preds = %138
  %149 = load i32, i32* %s, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [300 x i32], [300 x i32]* @npars_only, i32 0, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

; <label>:154                                     ; preds = %148
  %155 = load %union.rec*, %union.rec** %q, align 8
  %156 = bitcast %union.rec* %155 to %struct.word_type*
  %157 = getelementptr inbounds %struct.word_type, %struct.word_type* %156, i32 0, i32 1
  %158 = bitcast %union.FIRST_UNION* %157 to %struct.anon.0*
  %159 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %158, i32 0, i32 0
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp eq i32 %161, 145
  br i1 %162, label %163, label %236

; <label>:163                                     ; preds = %154, %148
  %164 = load i32, i32* %s, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [300 x i32], [300 x i32]* @vis_only, i32 0, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %184

; <label>:169                                     ; preds = %163
  %170 = load %union.rec*, %union.rec** %q, align 8
  %171 = bitcast %union.rec* %170 to %struct.word_type*
  %172 = getelementptr inbounds %struct.word_type, %struct.word_type* %171, i32 0, i32 2
  %173 = bitcast %union.SECOND_UNION* %172 to %struct.anon.6*
  %174 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %173, i32 0, i32 1
  %175 = bitcast [3 x i8]* %174 to i24*
  %176 = load i24, i24* %175, align 1
  %177 = lshr i24 %176, 16
  %178 = and i24 %177, 1
  %179 = zext i24 %178 to i32
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %184, label %181

; <label>:181                                     ; preds = %169
  %182 = load i32, i32* @suppress_visible, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %236

; <label>:184                                     ; preds = %181, %169, %163
  %185 = load i32, i32* %s, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [300 x i32], [300 x i32]* @body_ok, i32 0, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %217, label %190

; <label>:190                                     ; preds = %184
  %191 = load %union.rec*, %union.rec** %q, align 8
  %192 = bitcast %union.rec* %191 to %struct.word_type*
  %193 = getelementptr inbounds %struct.word_type, %struct.word_type* %192, i32 0, i32 1
  %194 = bitcast %union.FIRST_UNION* %193 to %struct.anon.0*
  %195 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %194, i32 0, i32 0
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = icmp ne i32 %197, 146
  br i1 %198, label %217, label %199

; <label>:199                                     ; preds = %190
  %200 = load %union.rec*, %union.rec** %q, align 8
  %201 = bitcast %union.rec* %200 to %struct.symbol_type*
  %202 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %201, i32 0, i32 3
  %203 = load %union.rec*, %union.rec** %202, align 8
  %204 = bitcast %union.rec* %203 to %struct.word_type*
  %205 = getelementptr inbounds %struct.word_type, %struct.word_type* %204, i32 0, i32 2
  %206 = bitcast %union.SECOND_UNION* %205 to %struct.anon.6*
  %207 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %206, i32 0, i32 1
  %208 = bitcast [3 x i8]* %207 to i24*
  %209 = load i24, i24* %208, align 1
  %210 = lshr i24 %209, 8
  %211 = and i24 %210, 1
  %212 = zext i24 %211 to i32
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

; <label>:214                                     ; preds = %199
  %215 = load i32, i32* @suppress_visible, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %236

; <label>:217                                     ; preds = %214, %199, %190, %184
  %218 = load i32, i32* @suppress_scope, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %234

; <label>:220                                     ; preds = %217
  %221 = load %union.rec*, %union.rec** %p, align 8
  %222 = bitcast %union.rec* %221 to %struct.word_type*
  %223 = getelementptr inbounds %struct.word_type, %struct.word_type* %222, i32 0, i32 4
  %224 = getelementptr inbounds [4 x i8], [4 x i8]* %223, i32 0, i32 0
  %225 = call i32 @strcmp(i8* %224, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0)) #4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %234, label %227

; <label>:227                                     ; preds = %220
  %228 = load %union.rec*, %union.rec** %p, align 8
  %229 = bitcast %union.rec* %228 to %struct.word_type*
  %230 = getelementptr inbounds %struct.word_type, %struct.word_type* %229, i32 0, i32 4
  %231 = getelementptr inbounds [4 x i8], [4 x i8]* %230, i32 0, i32 0
  %232 = call i32 @strcmp(i8* %231, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0)) #4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %236

; <label>:234                                     ; preds = %227, %220, %217
  %235 = load %union.rec*, %union.rec** %q, align 8
  store %union.rec* %235, %union.rec** %1
  br label %264

; <label>:236                                     ; preds = %227, %214, %181, %154, %138
  br label %237

; <label>:237                                     ; preds = %236
  %238 = load %union.rec*, %union.rec** %link, align 8
  %239 = bitcast %union.rec* %238 to %struct.word_type*
  %240 = getelementptr inbounds %struct.word_type, %struct.word_type* %239, i32 0, i32 0
  %241 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %240, i32 0, i64 0
  %242 = getelementptr inbounds %struct.LIST, %struct.LIST* %241, i32 0, i32 1
  %243 = load %union.rec*, %union.rec** %242, align 8
  store %union.rec* %243, %union.rec** %link, align 8
  br label %110

; <label>:244                                     ; preds = %110
  br label %245

; <label>:245                                     ; preds = %244
  %246 = load i32, i32* %s, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [300 x %union.rec*], [300 x %union.rec*]* @scope, i32 0, i64 %247
  %249 = load %union.rec*, %union.rec** %248, align 8
  %250 = load %union.rec*, %union.rec** @StartSym, align 8
  %251 = icmp ne %union.rec* %249, %250
  br i1 %251, label %101, label %252

; <label>:252                                     ; preds = %245
  br label %253

; <label>:253                                     ; preds = %252, %96
  br label %254

; <label>:254                                     ; preds = %253, %63
  %255 = load i32, i32* %3, align 4
  store i32 %255, i32* %rlen, align 4
  br label %256

; <label>:256                                     ; preds = %254
  %257 = load %union.rec*, %union.rec** %plink, align 8
  %258 = bitcast %union.rec* %257 to %struct.word_type*
  %259 = getelementptr inbounds %struct.word_type, %struct.word_type* %258, i32 0, i32 0
  %260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %259, i32 0, i64 0
  %261 = getelementptr inbounds %struct.LIST, %struct.LIST* %260, i32 0, i32 1
  %262 = load %union.rec*, %union.rec** %261, align 8
  store %union.rec* %262, %union.rec** %plink, align 8
  br label %35

; <label>:263                                     ; preds = %35
  store %union.rec* null, %union.rec** %1
  br label %264

; <label>:264                                     ; preds = %263, %234
  %265 = load %union.rec*, %union.rec** %1
  ret %union.rec* %265
}

; Function Attrs: nounwind uwtable
define i8* @SymName(%union.rec* %s) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %union.rec*, align 8
  %p = alloca %union.rec*, align 8
  store %union.rec* %s, %union.rec** %2, align 8
  %3 = load %union.rec*, %union.rec** %2, align 8
  %4 = icmp eq %union.rec* %3, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8** %1
  br label %61

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
  store %union.rec* %17, %union.rec** %p, align 8
  br label %18

; <label>:18                                      ; preds = %28, %6
  %19 = load %union.rec*, %union.rec** %p, align 8
  %20 = bitcast %union.rec* %19 to %struct.word_type*
  %21 = getelementptr inbounds %struct.word_type, %struct.word_type* %20, i32 0, i32 1
  %22 = bitcast %union.FIRST_UNION* %21 to %struct.anon.0*
  %23 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

; <label>:27                                      ; preds = %18
  br label %28

; <label>:28                                      ; preds = %27
  %29 = load %union.rec*, %union.rec** %p, align 8
  %30 = bitcast %union.rec* %29 to %struct.word_type*
  %31 = getelementptr inbounds %struct.word_type, %struct.word_type* %30, i32 0, i32 0
  %32 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %31, i32 0, i64 0
  %33 = getelementptr inbounds %struct.LIST, %struct.LIST* %32, i32 0, i32 0
  %34 = load %union.rec*, %union.rec** %33, align 8
  store %union.rec* %34, %union.rec** %p, align 8
  br label %18

; <label>:35                                      ; preds = %18
  %36 = load %union.rec*, %union.rec** %p, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 1
  %39 = bitcast %union.FIRST_UNION* %38 to %struct.anon.0*
  %40 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %39, i32 0, i32 0
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, 11
  br i1 %43, label %56, label %44

; <label>:44                                      ; preds = %35
  %45 = load %union.rec*, %union.rec** %p, align 8
  %46 = bitcast %union.rec* %45 to %struct.word_type*
  %47 = getelementptr inbounds %struct.word_type, %struct.word_type* %46, i32 0, i32 1
  %48 = bitcast %union.FIRST_UNION* %47 to %struct.anon.0*
  %49 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %48, i32 0, i32 0
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 12
  br i1 %52, label %56, label %53

; <label>:53                                      ; preds = %44
  %54 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %55 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i32 0, i32 0))
  br label %56

; <label>:56                                      ; preds = %53, %44, %35
  %57 = load %union.rec*, %union.rec** %p, align 8
  %58 = bitcast %union.rec* %57 to %struct.word_type*
  %59 = getelementptr inbounds %struct.word_type, %struct.word_type* %58, i32 0, i32 4
  %60 = getelementptr inbounds [4 x i8], [4 x i8]* %59, i32 0, i32 0
  store i8* %60, i8** %1
  br label %61

; <label>:61                                      ; preds = %56, %5
  %62 = load i8*, i8** %1
  ret i8* %62
}

; Function Attrs: nounwind uwtable
define i8* @FullSymName(%union.rec* %x, i8* %str) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %union.rec*, align 8
  %3 = alloca i8*, align 8
  %stack = alloca [20 x %union.rec*], align 16
  %i = alloca i32, align 4
  store %union.rec* %x, %union.rec** %2, align 8
  store i8* %str, i8** %3, align 8
  %4 = load %union.rec*, %union.rec** %2, align 8
  %5 = icmp eq %union.rec* %4, null
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8** %1
  br label %93

; <label>:7                                       ; preds = %0
  %8 = load %union.rec*, %union.rec** %2, align 8
  %9 = bitcast %union.rec* %8 to %struct.symbol_type*
  %10 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %9, i32 0, i32 3
  %11 = load %union.rec*, %union.rec** %10, align 8
  %12 = icmp ne %union.rec* %11, null
  br i1 %12, label %16, label %13

; <label>:13                                      ; preds = %7
  %14 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %15 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i32 0, i32 0))
  br label %16

; <label>:16                                      ; preds = %13, %7
  store i32 0, i32* %i, align 4
  br label %17

; <label>:17                                      ; preds = %37, %16
  %18 = load %union.rec*, %union.rec** %2, align 8
  %19 = bitcast %union.rec* %18 to %struct.symbol_type*
  %20 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %19, i32 0, i32 3
  %21 = load %union.rec*, %union.rec** %20, align 8
  %22 = icmp ne %union.rec* %21, null
  br i1 %22, label %23, label %26

; <label>:23                                      ; preds = %17
  %24 = load i32, i32* %i, align 4
  %25 = icmp slt i32 %24, 20
  br label %26

; <label>:26                                      ; preds = %23, %17
  %27 = phi i1 [ false, %17 ], [ %25, %23 ]
  br i1 %27, label %28, label %40

; <label>:28                                      ; preds = %26
  %29 = load %union.rec*, %union.rec** %2, align 8
  %30 = load i32, i32* %i, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [20 x %union.rec*], [20 x %union.rec*]* %stack, i32 0, i64 %31
  store %union.rec* %29, %union.rec** %32, align 8
  %33 = load %union.rec*, %union.rec** %2, align 8
  %34 = bitcast %union.rec* %33 to %struct.symbol_type*
  %35 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %34, i32 0, i32 3
  %36 = load %union.rec*, %union.rec** %35, align 8
  store %union.rec* %36, %union.rec** %2, align 8
  br label %37

; <label>:37                                      ; preds = %28
  %38 = load i32, i32* %i, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %i, align 4
  br label %17

; <label>:40                                      ; preds = %26
  %41 = call i8* @strcpy(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @FullSymName.buff, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i32 0, i32 0)) #5
  %42 = load i32, i32* %i, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %i, align 4
  br label %44

; <label>:44                                      ; preds = %72, %40
  %45 = load i32, i32* %i, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %75

; <label>:47                                      ; preds = %44
  %48 = load i32, i32* %i, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [20 x %union.rec*], [20 x %union.rec*]* %stack, i32 0, i64 %49
  %51 = load %union.rec*, %union.rec** %50, align 8
  %52 = call i8* @SymName(%union.rec* %51)
  store i8* %52, i8** @FullSymName.sname, align 8
  %53 = load i8*, i8** @FullSymName.sname, align 8
  %54 = call i64 @strlen(i8* %53) #4
  %55 = load i8*, i8** %3, align 8
  %56 = call i64 @strlen(i8* %55) #4
  %57 = add i64 %54, %56
  %58 = call i64 @strlen(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @FullSymName.buff, i32 0, i32 0)) #4
  %59 = add i64 %57, %58
  %60 = icmp uge i64 %59, 512
  br i1 %60, label %61, label %67

; <label>:61                                      ; preds = %47
  %62 = load %union.rec*, %union.rec** %2, align 8
  %63 = bitcast %union.rec* %62 to %struct.word_type*
  %64 = getelementptr inbounds %struct.word_type, %struct.word_type* %63, i32 0, i32 1
  %65 = bitcast %union.FIRST_UNION* %64 to %struct.FILE_POS*
  %66 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i32 0, i32 0), i32 1, %struct.FILE_POS* %65)
  br label %67

; <label>:67                                      ; preds = %61, %47
  %68 = load i8*, i8** @FullSymName.sname, align 8
  %69 = call i8* @strcat(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @FullSymName.buff, i32 0, i32 0), i8* %68) #5
  %70 = load i8*, i8** %3, align 8
  %71 = call i8* @strcat(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @FullSymName.buff, i32 0, i32 0), i8* %70) #5
  br label %72

; <label>:72                                      ; preds = %67
  %73 = load i32, i32* %i, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %i, align 4
  br label %44

; <label>:75                                      ; preds = %44
  %76 = getelementptr inbounds [20 x %union.rec*], [20 x %union.rec*]* %stack, i32 0, i64 0
  %77 = load %union.rec*, %union.rec** %76, align 8
  %78 = call i8* @SymName(%union.rec* %77)
  store i8* %78, i8** @FullSymName.sname, align 8
  %79 = load i8*, i8** @FullSymName.sname, align 8
  %80 = call i64 @strlen(i8* %79) #4
  %81 = call i64 @strlen(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @FullSymName.buff, i32 0, i32 0)) #4
  %82 = add i64 %80, %81
  %83 = icmp uge i64 %82, 512
  br i1 %83, label %84, label %90

; <label>:84                                      ; preds = %75
  %85 = load %union.rec*, %union.rec** %2, align 8
  %86 = bitcast %union.rec* %85 to %struct.word_type*
  %87 = getelementptr inbounds %struct.word_type, %struct.word_type* %86, i32 0, i32 1
  %88 = bitcast %union.FIRST_UNION* %87 to %struct.FILE_POS*
  %89 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i32 0, i32 0), i32 1, %struct.FILE_POS* %88)
  br label %90

; <label>:90                                      ; preds = %84, %75
  %91 = load i8*, i8** @FullSymName.sname, align 8
  %92 = call i8* @strcat(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @FullSymName.buff, i32 0, i32 0), i8* %91) #5
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @FullSymName.buff, i32 0, i32 0), i8** %1
  br label %93

; <label>:93                                      ; preds = %90, %6
  %94 = load i8*, i8** %1
  ret i8* %94
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define %union.rec* @ChildSym(%union.rec* %s, i32 %typ) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %3 = alloca i32, align 4
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  store %union.rec* %s, %union.rec** %2, align 8
  store i32 %typ, i32* %3, align 4
  %4 = load %union.rec*, %union.rec** %2, align 8
  %5 = bitcast %union.rec* %4 to %struct.word_type*
  %6 = getelementptr inbounds %struct.word_type, %struct.word_type* %5, i32 0, i32 0
  %7 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6, i32 0, i64 0
  %8 = getelementptr inbounds %struct.LIST, %struct.LIST* %7, i32 0, i32 1
  %9 = load %union.rec*, %union.rec** %8, align 8
  store %union.rec* %9, %union.rec** %link, align 8
  br label %10

; <label>:10                                      ; preds = %58, %0
  %11 = load %union.rec*, %union.rec** %link, align 8
  %12 = load %union.rec*, %union.rec** %2, align 8
  %13 = icmp ne %union.rec* %11, %12
  br i1 %13, label %14, label %65

; <label>:14                                      ; preds = %10
  %15 = load %union.rec*, %union.rec** %link, align 8
  %16 = bitcast %union.rec* %15 to %struct.word_type*
  %17 = getelementptr inbounds %struct.word_type, %struct.word_type* %16, i32 0, i32 0
  %18 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %17, i32 0, i64 1
  %19 = getelementptr inbounds %struct.LIST, %struct.LIST* %18, i32 0, i32 0
  %20 = load %union.rec*, %union.rec** %19, align 8
  store %union.rec* %20, %union.rec** %y, align 8
  br label %21

; <label>:21                                      ; preds = %31, %14
  %22 = load %union.rec*, %union.rec** %y, align 8
  %23 = bitcast %union.rec* %22 to %struct.word_type*
  %24 = getelementptr inbounds %struct.word_type, %struct.word_type* %23, i32 0, i32 1
  %25 = bitcast %union.FIRST_UNION* %24 to %struct.anon.0*
  %26 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %25, i32 0, i32 0
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

; <label>:30                                      ; preds = %21
  br label %31

; <label>:31                                      ; preds = %30
  %32 = load %union.rec*, %union.rec** %y, align 8
  %33 = bitcast %union.rec* %32 to %struct.word_type*
  %34 = getelementptr inbounds %struct.word_type, %struct.word_type* %33, i32 0, i32 0
  %35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %34, i32 0, i64 1
  %36 = getelementptr inbounds %struct.LIST, %struct.LIST* %35, i32 0, i32 0
  %37 = load %union.rec*, %union.rec** %36, align 8
  store %union.rec* %37, %union.rec** %y, align 8
  br label %21

; <label>:38                                      ; preds = %21
  %39 = load %union.rec*, %union.rec** %y, align 8
  %40 = bitcast %union.rec* %39 to %struct.word_type*
  %41 = getelementptr inbounds %struct.word_type, %struct.word_type* %40, i32 0, i32 1
  %42 = bitcast %union.FIRST_UNION* %41 to %struct.anon.0*
  %43 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %42, i32 0, i32 0
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = load i32, i32* %3, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %57

; <label>:48                                      ; preds = %38
  %49 = load %union.rec*, %union.rec** %y, align 8
  %50 = bitcast %union.rec* %49 to %struct.symbol_type*
  %51 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %50, i32 0, i32 3
  %52 = load %union.rec*, %union.rec** %51, align 8
  %53 = load %union.rec*, %union.rec** %2, align 8
  %54 = icmp eq %union.rec* %52, %53
  br i1 %54, label %55, label %57

; <label>:55                                      ; preds = %48
  %56 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %56, %union.rec** %1
  br label %75

; <label>:57                                      ; preds = %48, %38
  br label %58

; <label>:58                                      ; preds = %57
  %59 = load %union.rec*, %union.rec** %link, align 8
  %60 = bitcast %union.rec* %59 to %struct.word_type*
  %61 = getelementptr inbounds %struct.word_type, %struct.word_type* %60, i32 0, i32 0
  %62 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %61, i32 0, i64 0
  %63 = getelementptr inbounds %struct.LIST, %struct.LIST* %62, i32 0, i32 1
  %64 = load %union.rec*, %union.rec** %63, align 8
  store %union.rec* %64, %union.rec** %link, align 8
  br label %10

; <label>:65                                      ; preds = %10
  %66 = load %union.rec*, %union.rec** %2, align 8
  %67 = bitcast %union.rec* %66 to %struct.word_type*
  %68 = getelementptr inbounds %struct.word_type, %struct.word_type* %67, i32 0, i32 1
  %69 = bitcast %union.FIRST_UNION* %68 to %struct.FILE_POS*
  %70 = load %union.rec*, %union.rec** %2, align 8
  %71 = call i8* @SymName(%union.rec* %70)
  %72 = load i32, i32* %3, align 4
  %73 = call i8* @Image(i32 %72)
  %74 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %69, i8* %71, i8* %73)
  store %union.rec* null, %union.rec** %1
  br label %75

; <label>:75                                      ; preds = %65, %55
  %76 = load %union.rec*, %union.rec** %1
  ret %union.rec* %76
}

declare i8* @Image(i32) #1

; Function Attrs: nounwind uwtable
define %union.rec* @ChildSymWithCode(%union.rec* %s, i8 zeroext %code) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %3 = alloca i8, align 1
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  store %union.rec* %s, %union.rec** %2, align 8
  store i8 %code, i8* %3, align 1
  %4 = load %union.rec*, %union.rec** %2, align 8
  %5 = bitcast %union.rec* %4 to %struct.closure_type*
  %6 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5, i32 0, i32 5
  %7 = load %union.rec*, %union.rec** %6, align 8
  %8 = bitcast %union.rec* %7 to %struct.word_type*
  %9 = getelementptr inbounds %struct.word_type, %struct.word_type* %8, i32 0, i32 0
  %10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9, i32 0, i64 0
  %11 = getelementptr inbounds %struct.LIST, %struct.LIST* %10, i32 0, i32 1
  %12 = load %union.rec*, %union.rec** %11, align 8
  store %union.rec* %12, %union.rec** %link, align 8
  br label %13

; <label>:13                                      ; preds = %75, %0
  %14 = load %union.rec*, %union.rec** %link, align 8
  %15 = load %union.rec*, %union.rec** %2, align 8
  %16 = bitcast %union.rec* %15 to %struct.closure_type*
  %17 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %16, i32 0, i32 5
  %18 = load %union.rec*, %union.rec** %17, align 8
  %19 = icmp ne %union.rec* %14, %18
  br i1 %19, label %20, label %82

; <label>:20                                      ; preds = %13
  %21 = load %union.rec*, %union.rec** %link, align 8
  %22 = bitcast %union.rec* %21 to %struct.word_type*
  %23 = getelementptr inbounds %struct.word_type, %struct.word_type* %22, i32 0, i32 0
  %24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %23, i32 0, i64 1
  %25 = getelementptr inbounds %struct.LIST, %struct.LIST* %24, i32 0, i32 0
  %26 = load %union.rec*, %union.rec** %25, align 8
  store %union.rec* %26, %union.rec** %y, align 8
  br label %27

; <label>:27                                      ; preds = %37, %20
  %28 = load %union.rec*, %union.rec** %y, align 8
  %29 = bitcast %union.rec* %28 to %struct.word_type*
  %30 = getelementptr inbounds %struct.word_type, %struct.word_type* %29, i32 0, i32 1
  %31 = bitcast %union.FIRST_UNION* %30 to %struct.anon.0*
  %32 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

; <label>:36                                      ; preds = %27
  br label %37

; <label>:37                                      ; preds = %36
  %38 = load %union.rec*, %union.rec** %y, align 8
  %39 = bitcast %union.rec* %38 to %struct.word_type*
  %40 = getelementptr inbounds %struct.word_type, %struct.word_type* %39, i32 0, i32 0
  %41 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %40, i32 0, i64 1
  %42 = getelementptr inbounds %struct.LIST, %struct.LIST* %41, i32 0, i32 0
  %43 = load %union.rec*, %union.rec** %42, align 8
  store %union.rec* %43, %union.rec** %y, align 8
  br label %27

; <label>:44                                      ; preds = %27
  %45 = load %union.rec*, %union.rec** %y, align 8
  %46 = bitcast %union.rec* %45 to %struct.word_type*
  %47 = getelementptr inbounds %struct.word_type, %struct.word_type* %46, i32 0, i32 1
  %48 = bitcast %union.FIRST_UNION* %47 to %struct.anon.0*
  %49 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %48, i32 0, i32 0
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 145
  br i1 %52, label %53, label %74

; <label>:53                                      ; preds = %44
  %54 = load %union.rec*, %union.rec** %y, align 8
  %55 = bitcast %union.rec* %54 to %struct.symbol_type*
  %56 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %55, i32 0, i32 3
  %57 = load %union.rec*, %union.rec** %56, align 8
  %58 = load %union.rec*, %union.rec** %2, align 8
  %59 = bitcast %union.rec* %58 to %struct.closure_type*
  %60 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %59, i32 0, i32 5
  %61 = load %union.rec*, %union.rec** %60, align 8
  %62 = icmp eq %union.rec* %57, %61
  br i1 %62, label %63, label %74

; <label>:63                                      ; preds = %53
  %64 = load %union.rec*, %union.rec** %y, align 8
  %65 = bitcast %union.rec* %64 to %struct.symbol_type*
  %66 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %65, i32 0, i32 15
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* %3, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %74

; <label>:72                                      ; preds = %63
  %73 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %73, %union.rec** %1
  br label %95

; <label>:74                                      ; preds = %63, %53, %44
  br label %75

; <label>:75                                      ; preds = %74
  %76 = load %union.rec*, %union.rec** %link, align 8
  %77 = bitcast %union.rec* %76 to %struct.word_type*
  %78 = getelementptr inbounds %struct.word_type, %struct.word_type* %77, i32 0, i32 0
  %79 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %78, i32 0, i64 0
  %80 = getelementptr inbounds %struct.LIST, %struct.LIST* %79, i32 0, i32 1
  %81 = load %union.rec*, %union.rec** %80, align 8
  store %union.rec* %81, %union.rec** %link, align 8
  br label %13

; <label>:82                                      ; preds = %13
  %83 = load %union.rec*, %union.rec** %2, align 8
  %84 = bitcast %union.rec* %83 to %struct.word_type*
  %85 = getelementptr inbounds %struct.word_type, %struct.word_type* %84, i32 0, i32 1
  %86 = bitcast %union.FIRST_UNION* %85 to %struct.FILE_POS*
  %87 = load %union.rec*, %union.rec** %2, align 8
  %88 = bitcast %union.rec* %87 to %struct.closure_type*
  %89 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %88, i32 0, i32 5
  %90 = load %union.rec*, %union.rec** %89, align 8
  %91 = call i8* @SymName(%union.rec* %90)
  %92 = load i8, i8* %3, align 1
  %93 = sext i8 %92 to i32
  %94 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 11, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.31, i32 0, i32 0), i32 1, %struct.FILE_POS* %86, i8* %91, i32 %93)
  store %union.rec* null, %union.rec** %1
  br label %95

; <label>:95                                      ; preds = %82, %72
  %96 = load %union.rec*, %union.rec** %1
  ret %union.rec* %96
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}