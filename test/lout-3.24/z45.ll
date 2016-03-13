; ModuleID = 'z45.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FILE_POS = type { i8, i8, i16, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [45 x i8] c"run out of memory when reading index file %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"ReadLines: lines and buff overlap!\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"line too long when reading index file %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@UseCollate = external global i32, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"cannot open index file %s for reading\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"cannot open index file %s for writing\00", align 1

; Function Attrs: nounwind uwtable
define i8** @ReadLines(%struct._IO_FILE* %fp, i8* %fname, i8* %first_line, i32* %len) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %buff = alloca i8*, align 8
  %buff_top = alloca i8*, align 8
  %bp = alloca i8*, align 8
  %lines = alloca i8**, align 8
  %lines_length = alloca i32, align 4
  %lines_top = alloca i8**, align 8
  %lp = alloca i8**, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %ch = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %1, align 8
  store i8* %fname, i8** %2, align 8
  store i8* %first_line, i8** %3, align 8
  store i32* %len, i32** %4, align 8
  %5 = call noalias i8* @malloc(i64 4096) #4
  store i8* %5, i8** %buff, align 8
  %6 = load i8*, i8** %buff, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %12

; <label>:8                                       ; preds = %0
  %9 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 45, i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %9, i8* %10)
  br label %12

; <label>:12                                      ; preds = %8, %0
  %13 = load i8*, i8** %buff, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 4096
  store i8* %14, i8** %buff_top, align 8
  %15 = load i8*, i8** %buff, align 8
  store i8* %15, i8** %bp, align 8
  store i32 2000, i32* %lines_length, align 4
  %16 = load i32, i32* %lines_length, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = call noalias i8* @malloc(i64 %18) #4
  %20 = bitcast i8* %19 to i8**
  store i8** %20, i8*** %lines, align 8
  %21 = load i32, i32* %lines_length, align 4
  %22 = sext i32 %21 to i64
  %23 = load i8**, i8*** %lines, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 %22
  store i8** %24, i8*** %lines_top, align 8
  %25 = load i8**, i8*** %lines, align 8
  store i8** %25, i8*** %lp, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %41

; <label>:28                                      ; preds = %12
  %29 = load i8*, i8** %3, align 8
  %30 = call i64 @strlen(i8* %29) #5
  %31 = add i64 %30, 1
  %32 = mul i64 %31, 1
  %33 = call noalias i8* @malloc(i64 %32) #4
  %34 = load i8**, i8*** %lp, align 8
  store i8* %33, i8** %34, align 8
  %35 = load i8**, i8*** %lp, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = call i8* @strcpy(i8* %36, i8* %37) #4
  %39 = load i8**, i8*** %lp, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i32 1
  store i8** %40, i8*** %lp, align 8
  br label %41

; <label>:41                                      ; preds = %28, %12
  %42 = load i8*, i8** %bp, align 8
  %43 = load i8**, i8*** %lp, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i32 1
  store i8** %44, i8*** %lp, align 8
  store i8* %42, i8** %43, align 8
  br label %45

; <label>:45                                      ; preds = %152, %41
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %47 = call i32 @_IO_getc(%struct._IO_FILE* %46)
  store i32 %47, i32* %ch, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %153

; <label>:49                                      ; preds = %45
  %50 = load i8*, i8** %buff, align 8
  %51 = ptrtoint i8* %50 to i32
  %52 = load i8**, i8*** %lines_top, align 8
  %53 = ptrtoint i8** %52 to i32
  %54 = icmp sge i32 %51, %53
  br i1 %54, label %64, label %55

; <label>:55                                      ; preds = %49
  %56 = load i8*, i8** %buff_top, align 8
  %57 = ptrtoint i8* %56 to i32
  %58 = load i8**, i8*** %lines, align 8
  %59 = ptrtoint i8** %58 to i32
  %60 = icmp sle i32 %57, %59
  br i1 %60, label %64, label %61

; <label>:61                                      ; preds = %55
  %62 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %63 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 0, %struct.FILE_POS* %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0))
  br label %64

; <label>:64                                      ; preds = %61, %55, %49
  %65 = load i8*, i8** %bp, align 8
  %66 = load i8*, i8** %buff_top, align 8
  %67 = icmp eq i8* %65, %66
  br i1 %67, label %68, label %108

; <label>:68                                      ; preds = %64
  %69 = call noalias i8* @malloc(i64 4096) #4
  store i8* %69, i8** %buff, align 8
  %70 = load i8*, i8** %buff, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %76

; <label>:72                                      ; preds = %68
  %73 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %74 = load i8*, i8** %2, align 8
  %75 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 45, i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %73, i8* %74)
  br label %76

; <label>:76                                      ; preds = %72, %68
  %77 = load i8*, i8** %buff, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 4096
  store i8* %78, i8** %buff_top, align 8
  %79 = load i8*, i8** %buff, align 8
  store i8* %79, i8** %p, align 8
  %80 = load i8**, i8*** %lp, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 -1
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %q, align 8
  br label %83

; <label>:83                                      ; preds = %88, %76
  %84 = load i8*, i8** %q, align 8
  %85 = load i8*, i8** %bp, align 8
  %86 = icmp ne i8* %84, %85
  br i1 %86, label %87, label %94

; <label>:87                                      ; preds = %83
  br label %88

; <label>:88                                      ; preds = %87
  %89 = load i8*, i8** %q, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %q, align 8
  %91 = load i8, i8* %89, align 1
  %92 = load i8*, i8** %p, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %p, align 8
  store i8 %91, i8* %92, align 1
  br label %83

; <label>:94                                      ; preds = %83
  %95 = load i8*, i8** %p, align 8
  store i8* %95, i8** %bp, align 8
  %96 = load i8*, i8** %bp, align 8
  store i8 0, i8* %96, align 1
  %97 = load i8*, i8** %buff, align 8
  %98 = load i8**, i8*** %lp, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 -1
  store i8* %97, i8** %99, align 8
  %100 = load i8*, i8** %bp, align 8
  %101 = load i8*, i8** %buff_top, align 8
  %102 = icmp eq i8* %100, %101
  br i1 %102, label %103, label %107

; <label>:103                                     ; preds = %94
  %104 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %105 = load i8*, i8** %2, align 8
  %106 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 45, i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %104, i8* %105)
  br label %107

; <label>:107                                     ; preds = %103, %94
  br label %108

; <label>:108                                     ; preds = %107, %64
  %109 = load i32, i32* %ch, align 4
  %110 = icmp eq i32 %109, 10
  br i1 %110, label %111, label %147

; <label>:111                                     ; preds = %108
  %112 = load i8*, i8** %bp, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %bp, align 8
  store i8 0, i8* %112, align 1
  %114 = load i8**, i8*** %lp, align 8
  %115 = load i8**, i8*** %lines_top, align 8
  %116 = icmp eq i8** %114, %115
  br i1 %116, label %117, label %143

; <label>:117                                     ; preds = %111
  %118 = load i8**, i8*** %lines, align 8
  %119 = bitcast i8** %118 to i8*
  %120 = load i32, i32* %lines_length, align 4
  %121 = mul nsw i32 2, %120
  %122 = sext i32 %121 to i64
  %123 = mul i64 %122, 8
  %124 = call i8* @realloc(i8* %119, i64 %123) #4
  %125 = bitcast i8* %124 to i8**
  store i8** %125, i8*** %lines, align 8
  %126 = load i8**, i8*** %lines, align 8
  %127 = icmp eq i8** %126, null
  br i1 %127, label %128, label %132

; <label>:128                                     ; preds = %117
  %129 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %130 = load i8*, i8** %2, align 8
  %131 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 45, i32 4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %129, i8* %130)
  br label %132

; <label>:132                                     ; preds = %128, %117
  %133 = load i32, i32* %lines_length, align 4
  %134 = sext i32 %133 to i64
  %135 = load i8**, i8*** %lines, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 %134
  store i8** %136, i8*** %lp, align 8
  %137 = load i32, i32* %lines_length, align 4
  %138 = mul nsw i32 2, %137
  store i32 %138, i32* %lines_length, align 4
  %139 = load i32, i32* %lines_length, align 4
  %140 = sext i32 %139 to i64
  %141 = load i8**, i8*** %lines, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 %140
  store i8** %142, i8*** %lines_top, align 8
  br label %143

; <label>:143                                     ; preds = %132, %111
  %144 = load i8*, i8** %bp, align 8
  %145 = load i8**, i8*** %lp, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i32 1
  store i8** %146, i8*** %lp, align 8
  store i8* %144, i8** %145, align 8
  br label %152

; <label>:147                                     ; preds = %108
  %148 = load i32, i32* %ch, align 4
  %149 = trunc i32 %148 to i8
  %150 = load i8*, i8** %bp, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %bp, align 8
  store i8 %149, i8* %150, align 1
  br label %152

; <label>:152                                     ; preds = %147, %143
  br label %45

; <label>:153                                     ; preds = %45
  %154 = load i8**, i8*** %lp, align 8
  %155 = load i8**, i8*** %lines, align 8
  %156 = ptrtoint i8** %154 to i64
  %157 = ptrtoint i8** %155 to i64
  %158 = sub i64 %156, %157
  %159 = sdiv exact i64 %158, 8
  %160 = sub nsw i64 %159, 1
  %161 = trunc i64 %160 to i32
  %162 = load i32*, i32** %4, align 8
  store i32 %161, i32* %162, align 4
  %163 = load i8**, i8*** %lines, align 8
  ret i8** %163
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @WriteLines(%struct._IO_FILE* %fp, i8** %lines, i32 %len) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %1, align 8
  store i8** %lines, i8*** %2, align 8
  store i32 %len, i32* %3, align 4
  store i32 0, i32* %i, align 4
  br label %4

; <label>:4                                       ; preds = %18, %0
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %21

; <label>:8                                       ; preds = %4
  %9 = load i32, i32* %i, align 4
  %10 = sext i32 %9 to i64
  %11 = load i8**, i8*** %2, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 %10
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %15 = call i32 @fputs(i8* %13, %struct._IO_FILE* %14)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %17 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %16)
  br label %18

; <label>:18                                      ; preds = %8
  %19 = load i32, i32* %i, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %i, align 4
  br label %4

; <label>:21                                      ; preds = %4
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @SortLines(i8** %lines, i32 %lines_len) #0 {
  %1 = alloca i8**, align 8
  %2 = alloca i32, align 4
  store i8** %lines, i8*** %1, align 8
  store i32 %lines_len, i32* %2, align 4
  %3 = load i8**, i8*** %1, align 8
  %4 = bitcast i8** %3 to i8*
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = load i32, i32* @UseCollate, align 4
  %8 = icmp ne i32 %7, 0
  %9 = select i1 %8, i32 (i8*, i8*)* @pstrcollcmp, i32 (i8*, i8*)* @pstrcmp
  call void @qsort(i8* %4, i64 %6, i64 8, i32 (i8*, i8*)* %9)
  ret void
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pstrcollcmp(i8* %a, i8* %b) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  store i8* %a, i8** %1, align 8
  store i8* %b, i8** %2, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = bitcast i8* %3 to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to i8**
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @strcollcmp(i8* %5, i8* %8)
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @pstrcmp(i8* %a, i8* %b) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  store i8* %a, i8** %1, align 8
  store i8* %b, i8** %2, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = bitcast i8* %3 to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to i8**
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @strcmp(i8* %5, i8* %8) #5
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define void @SortFile(i8* %infile, i8* %outfile) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %lines = alloca i8**, align 8
  %lines_len = alloca i32, align 4
  %in_fp = alloca %struct._IO_FILE*, align 8
  %out_fp = alloca %struct._IO_FILE*, align 8
  store i8* %infile, i8** %1, align 8
  store i8* %outfile, i8** %2, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %4, %struct._IO_FILE** %in_fp, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp, align 8
  %6 = icmp eq %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %11

; <label>:7                                       ; preds = %0
  %8 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 45, i32 5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %8, i8* %9)
  br label %11

; <label>:11                                      ; preds = %7, %0
  %12 = load i8*, i8** %2, align 8
  %13 = call %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  store %struct._IO_FILE* %13, %struct._IO_FILE** %out_fp, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %out_fp, align 8
  %15 = icmp eq %struct._IO_FILE* %14, null
  br i1 %15, label %16, label %20

; <label>:16                                      ; preds = %11
  %17 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 45, i32 6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0), i32 1, %struct.FILE_POS* %17, i8* %18)
  br label %20

; <label>:20                                      ; preds = %16, %11
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp, align 8
  %22 = load i8*, i8** %1, align 8
  %23 = call i8** @ReadLines(%struct._IO_FILE* %21, i8* %22, i8* null, i32* %lines_len)
  store i8** %23, i8*** %lines, align 8
  %24 = load i8**, i8*** %lines, align 8
  %25 = load i32, i32* %lines_len, align 4
  call void @SortLines(i8** %24, i32 %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp, align 8
  %27 = call i32 @fclose(%struct._IO_FILE* %26)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %out_fp, align 8
  %29 = load i8**, i8*** %lines, align 8
  %30 = load i32, i32* %lines_len, align 4
  call void @WriteLines(%struct._IO_FILE* %28, i8** %29, i32 %30)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %out_fp, align 8
  %32 = call i32 @fclose(%struct._IO_FILE* %31)
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare i32 @strcollcmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
