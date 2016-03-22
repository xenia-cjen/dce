; ModuleID = 'z28.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@fp = internal global %struct._IO_FILE* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"-e argument appears twice in command line\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"cannot open error file %s\00", align 1
@error_seen = internal global i32 0, align 4
@block_top = internal global i32 0, align 4
@print_block = internal global [20 x i32] zeroinitializer, align 16
@mess_top = internal global i32 0, align 4
@start_block = internal global [20 x i32] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [34 x i8] c"too many levels of error messages\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"LeaveErrorBlock: no matching EnterErrorBlock!\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"LeaveErrorBlock: commit!\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@AltErrorFormat = external global i32, align 4
@message = internal global [20 x [512 x i8]] zeroinitializer, align 16
@message_fnum = internal global [20 x i32] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [34 x i8] c"CheckErrorBlocks: block_top != 0!\00", align 1
@MsgCat = external global i8*, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"%s internal error: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"  %6s internal error: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"%s: fatal error: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"  %6s: fatal error: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"  %6s: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"too many error messages\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Error: invalid error type\00", align 1
@PrintFileBanner.CurrentFileNum = internal global i32 -1, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"lout%s:\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @ErrorInit(i8* %str) #0 {
  %1 = alloca i8*, align 8
  store i8* %str, i8** %1, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %3 = icmp ne %struct._IO_FILE* %2, null
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 28, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %5)
  br label %7

; <label>:7                                       ; preds = %4, %0
  %8 = load i8*, i8** %1, align 8
  %9 = call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %9, %struct._IO_FILE** @fp, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %11 = icmp eq %struct._IO_FILE* %10, null
  br i1 %11, label %12, label %16

; <label>:12                                      ; preds = %7
  %13 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %14 = load i8*, i8** %1, align 8
  %15 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 28, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 1, %struct.FILE_POS* %13, i8* %14)
  br label %16

; <label>:16                                      ; preds = %12, %7
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @Error(i32 %set_num, i32 %msg_num, i8* %str, i32 %etype, %struct.FILE_POS* %pos, ...) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.FILE_POS*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %val = alloca [512 x i8], align 16
  store i32 %set_num, i32* %1, align 4
  store i32 %msg_num, i32* %2, align 4
  store i8* %str, i8** %3, align 8
  store i32 %etype, i32* %4, align 4
  store %struct.FILE_POS* %pos, %struct.FILE_POS** %5, align 8
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = getelementptr inbounds [512 x i8], [512 x i8]* %val, i32 0, i32 0
  %9 = load i8*, i8** @MsgCat, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %17

; <label>:11                                      ; preds = %0
  %12 = load i8*, i8** @MsgCat, align 8
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @catgets(i8* %12, i32 %13, i32 %14, i8* %15) #2
  br label %19

; <label>:17                                      ; preds = %0
  %18 = load i8*, i8** %3, align 8
  br label %19

; <label>:19                                      ; preds = %17, %11
  %20 = phi i8* [ %16, %11 ], [ %18, %17 ]
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %22 = call i32 @vsprintf(i8* %8, i8* %20, %struct.__va_list_tag* %21) #2
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %24 = icmp eq %struct._IO_FILE* %23, null
  br i1 %24, label %25, label %27

; <label>:25                                      ; preds = %19
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %26, %struct._IO_FILE** @fp, align 8
  br label %27

; <label>:27                                      ; preds = %25, %19
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %180 [
    i32 0, label %29
    i32 1, label %70
    i32 2, label %111
  ]

; <label>:29                                      ; preds = %27
  br label %30

; <label>:30                                      ; preds = %33, %29
  %31 = load i32, i32* @block_top, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %30
  call void @LeaveErrorBlock(i32 1)
  br label %30

; <label>:34                                      ; preds = %30
  %35 = load i32, i32* @AltErrorFormat, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

; <label>:37                                      ; preds = %34
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %39 = load i8*, i8** @MsgCat, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

; <label>:41                                      ; preds = %37
  %42 = load i8*, i8** @MsgCat, align 8
  %43 = call i8* @catgets(i8* %42, i32 28, i32 7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0)) #2
  br label %45

; <label>:44                                      ; preds = %37
  br label %45

; <label>:45                                      ; preds = %44, %41
  %46 = phi i8* [ %43, %41 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), %44 ]
  %47 = load %struct.FILE_POS*, %struct.FILE_POS** %5, align 8
  %48 = call i8* @EchoAltFilePos(%struct.FILE_POS* %47)
  %49 = getelementptr inbounds [512 x i8], [512 x i8]* %val, i32 0, i32 0
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* %46, i8* %48, i8* %49)
  br label %69

; <label>:51                                      ; preds = %34
  %52 = load %struct.FILE_POS*, %struct.FILE_POS** %5, align 8
  %53 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %52, i32 0, i32 2
  %54 = load i16, i16* %53, align 2
  %55 = zext i16 %54 to i32
  call void @PrintFileBanner(i32 %55)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %57 = load i8*, i8** @MsgCat, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %62

; <label>:59                                      ; preds = %51
  %60 = load i8*, i8** @MsgCat, align 8
  %61 = call i8* @catgets(i8* %60, i32 28, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0)) #2
  br label %63

; <label>:62                                      ; preds = %51
  br label %63

; <label>:63                                      ; preds = %62, %59
  %64 = phi i8* [ %61, %59 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), %62 ]
  %65 = load %struct.FILE_POS*, %struct.FILE_POS** %5, align 8
  %66 = call i8* @EchoFileLine(%struct.FILE_POS* %65)
  %67 = getelementptr inbounds [512 x i8], [512 x i8]* %val, i32 0, i32 0
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* %64, i8* %66, i8* %67)
  br label %69

; <label>:69                                      ; preds = %63, %45
  call void @exit(i32 1) #5
  unreachable

; <label>:70                                      ; preds = %27
  br label %71

; <label>:71                                      ; preds = %74, %70
  %72 = load i32, i32* @block_top, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %75

; <label>:74                                      ; preds = %71
  call void @LeaveErrorBlock(i32 1)
  br label %71

; <label>:75                                      ; preds = %71
  %76 = load i32, i32* @AltErrorFormat, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %92

; <label>:78                                      ; preds = %75
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %80 = load i8*, i8** @MsgCat, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %85

; <label>:82                                      ; preds = %78
  %83 = load i8*, i8** @MsgCat, align 8
  %84 = call i8* @catgets(i8* %83, i32 28, i32 8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0)) #2
  br label %86

; <label>:85                                      ; preds = %78
  br label %86

; <label>:86                                      ; preds = %85, %82
  %87 = phi i8* [ %84, %82 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), %85 ]
  %88 = load %struct.FILE_POS*, %struct.FILE_POS** %5, align 8
  %89 = call i8* @EchoAltFilePos(%struct.FILE_POS* %88)
  %90 = getelementptr inbounds [512 x i8], [512 x i8]* %val, i32 0, i32 0
  %91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* %87, i8* %89, i8* %90)
  br label %110

; <label>:92                                      ; preds = %75
  %93 = load %struct.FILE_POS*, %struct.FILE_POS** %5, align 8
  %94 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %93, i32 0, i32 2
  %95 = load i16, i16* %94, align 2
  %96 = zext i16 %95 to i32
  call void @PrintFileBanner(i32 %96)
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %98 = load i8*, i8** @MsgCat, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %103

; <label>:100                                     ; preds = %92
  %101 = load i8*, i8** @MsgCat, align 8
  %102 = call i8* @catgets(i8* %101, i32 28, i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0)) #2
  br label %104

; <label>:103                                     ; preds = %92
  br label %104

; <label>:104                                     ; preds = %103, %100
  %105 = phi i8* [ %102, %100 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), %103 ]
  %106 = load %struct.FILE_POS*, %struct.FILE_POS** %5, align 8
  %107 = call i8* @EchoFileLine(%struct.FILE_POS* %106)
  %108 = getelementptr inbounds [512 x i8], [512 x i8]* %val, i32 0, i32 0
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* %105, i8* %107, i8* %108)
  br label %110

; <label>:110                                     ; preds = %104, %86
  call void @exit(i32 1) #5
  unreachable

; <label>:111                                     ; preds = %27
  %112 = load i32, i32* @block_top, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %121, label %114

; <label>:114                                     ; preds = %111
  %115 = load i32, i32* @block_top, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [20 x i32], [20 x i32]* @print_block, i32 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %141

; <label>:121                                     ; preds = %114, %111
  %122 = load i32, i32* @AltErrorFormat, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

; <label>:124                                     ; preds = %121
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %126 = load %struct.FILE_POS*, %struct.FILE_POS** %5, align 8
  %127 = call i8* @EchoAltFilePos(%struct.FILE_POS* %126)
  %128 = getelementptr inbounds [512 x i8], [512 x i8]* %val, i32 0, i32 0
  %129 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* %127, i8* %128)
  br label %140

; <label>:130                                     ; preds = %121
  %131 = load %struct.FILE_POS*, %struct.FILE_POS** %5, align 8
  %132 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %131, i32 0, i32 2
  %133 = load i16, i16* %132, align 2
  %134 = zext i16 %133 to i32
  call void @PrintFileBanner(i32 %134)
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %136 = load %struct.FILE_POS*, %struct.FILE_POS** %5, align 8
  %137 = call i8* @EchoFileLine(%struct.FILE_POS* %136)
  %138 = getelementptr inbounds [512 x i8], [512 x i8]* %val, i32 0, i32 0
  %139 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %135, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* %137, i8* %138)
  br label %140

; <label>:140                                     ; preds = %130, %124
  br label %179

; <label>:141                                     ; preds = %114
  %142 = load i32, i32* @mess_top, align 4
  %143 = icmp slt i32 %142, 20
  br i1 %143, label %144, label %175

; <label>:144                                     ; preds = %141
  %145 = load i32, i32* @AltErrorFormat, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %157

; <label>:147                                     ; preds = %144
  %148 = load i32, i32* @mess_top, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* @mess_top, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds [20 x [512 x i8]], [20 x [512 x i8]]* @message, i32 0, i64 %150
  %152 = getelementptr inbounds [512 x i8], [512 x i8]* %151, i32 0, i32 0
  %153 = load %struct.FILE_POS*, %struct.FILE_POS** %5, align 8
  %154 = call i8* @EchoAltFilePos(%struct.FILE_POS* %153)
  %155 = getelementptr inbounds [512 x i8], [512 x i8]* %val, i32 0, i32 0
  %156 = call i32 (i8*, i8*, ...) @sprintf(i8* %152, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* %154, i8* %155) #2
  br label %174

; <label>:157                                     ; preds = %144
  %158 = load %struct.FILE_POS*, %struct.FILE_POS** %5, align 8
  %159 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %158, i32 0, i32 2
  %160 = load i16, i16* %159, align 2
  %161 = zext i16 %160 to i32
  %162 = load i32, i32* @mess_top, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [20 x i32], [20 x i32]* @message_fnum, i32 0, i64 %163
  store i32 %161, i32* %164, align 4
  %165 = load i32, i32* @mess_top, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* @mess_top, align 4
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds [20 x [512 x i8]], [20 x [512 x i8]]* @message, i32 0, i64 %167
  %169 = getelementptr inbounds [512 x i8], [512 x i8]* %168, i32 0, i32 0
  %170 = load %struct.FILE_POS*, %struct.FILE_POS** %5, align 8
  %171 = call i8* @EchoFileLine(%struct.FILE_POS* %170)
  %172 = getelementptr inbounds [512 x i8], [512 x i8]* %val, i32 0, i32 0
  %173 = call i32 (i8*, i8*, ...) @sprintf(i8* %169, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* %171, i8* %172) #2
  br label %174

; <label>:174                                     ; preds = %157, %147
  br label %178

; <label>:175                                     ; preds = %141
  %176 = load %struct.FILE_POS*, %struct.FILE_POS** %5, align 8
  %177 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 28, i32 6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %176)
  br label %178

; <label>:178                                     ; preds = %175, %174
  br label %179

; <label>:179                                     ; preds = %178, %140
  store i32 1, i32* @error_seen, align 4
  br label %183

; <label>:180                                     ; preds = %27
  %181 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %182 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %181, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0))
  br label %183

; <label>:183                                     ; preds = %180, %179
  %184 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %185 = bitcast %struct.__va_list_tag* %184 to i8*
  call void @llvm.va_end(i8* %185)
  ret i8* null
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @ErrorSeen() #0 {
  %1 = load i32, i32* @error_seen, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @EnterErrorBlock(i32 %ok_to_print) #0 {
  %1 = alloca i32, align 4
  store i32 %ok_to_print, i32* %1, align 4
  %2 = load i32, i32* @block_top, align 4
  %3 = icmp slt i32 %2, 20
  br i1 %3, label %4, label %15

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @block_top, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [20 x i32], [20 x i32]* @print_block, i32 0, i64 %7
  store i32 %5, i32* %8, align 4
  %9 = load i32, i32* @mess_top, align 4
  %10 = load i32, i32* @block_top, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [20 x i32], [20 x i32]* @start_block, i32 0, i64 %11
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @block_top, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @block_top, align 4
  br label %18

; <label>:15                                      ; preds = %0
  %16 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %17 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 28, i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %16)
  br label %18

; <label>:18                                      ; preds = %15, %4
  ret void
}

; Function Attrs: nounwind uwtable
define void @LeaveErrorBlock(i32 %commit) #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %commit, i32* %1, align 4
  %2 = load i32, i32* @block_top, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %7, label %4

; <label>:4                                       ; preds = %0
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %5, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %4, %0
  %8 = load i32, i32* %1, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %20, label %10

; <label>:10                                      ; preds = %7
  %11 = load i32, i32* @block_top, align 4
  %12 = sub nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [20 x i32], [20 x i32]* @print_block, i32 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

; <label>:17                                      ; preds = %10
  %18 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %19 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0))
  br label %20

; <label>:20                                      ; preds = %17, %10, %7
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %22 = icmp eq %struct._IO_FILE* %21, null
  br i1 %22, label %23, label %25

; <label>:23                                      ; preds = %20
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %24, %struct._IO_FILE** @fp, align 8
  br label %25

; <label>:25                                      ; preds = %23, %20
  %26 = load i32, i32* %1, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %64

; <label>:28                                      ; preds = %25
  %29 = load i32, i32* @block_top, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [20 x i32], [20 x i32]* @start_block, i32 0, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %i, align 4
  br label %34

; <label>:34                                      ; preds = %60, %28
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* @mess_top, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %63

; <label>:38                                      ; preds = %34
  %39 = load i32, i32* @AltErrorFormat, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

; <label>:41                                      ; preds = %38
  %42 = load i32, i32* %i, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [20 x [512 x i8]], [20 x [512 x i8]]* @message, i32 0, i64 %43
  %45 = getelementptr inbounds [512 x i8], [512 x i8]* %44, i32 0, i32 0
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %47 = call i32 @fputs(i8* %45, %struct._IO_FILE* %46)
  br label %59

; <label>:48                                      ; preds = %38
  %49 = load i32, i32* %i, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [20 x i32], [20 x i32]* @message_fnum, i32 0, i64 %50
  %52 = load i32, i32* %51, align 4
  call void @PrintFileBanner(i32 %52)
  %53 = load i32, i32* %i, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [20 x [512 x i8]], [20 x [512 x i8]]* @message, i32 0, i64 %54
  %56 = getelementptr inbounds [512 x i8], [512 x i8]* %55, i32 0, i32 0
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %58 = call i32 @fputs(i8* %56, %struct._IO_FILE* %57)
  br label %59

; <label>:59                                      ; preds = %48, %41
  br label %60

; <label>:60                                      ; preds = %59
  %61 = load i32, i32* %i, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %i, align 4
  br label %34

; <label>:63                                      ; preds = %34
  br label %64

; <label>:64                                      ; preds = %63, %25
  %65 = load i32, i32* @block_top, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* @block_top, align 4
  %67 = load i32, i32* @block_top, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [20 x i32], [20 x i32]* @start_block, i32 0, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* @mess_top, align 4
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @PrintFileBanner(i32 %fnum) #0 {
  %1 = alloca i32, align 4
  store i32 %fnum, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = load i32, i32* @PrintFileBanner.CurrentFileNum, align 4
  %4 = icmp ne i32 %2, %3
  br i1 %4, label %5, label %12

; <label>:5                                       ; preds = %0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %7 = load i32, i32* %1, align 4
  %8 = trunc i32 %7 to i16
  %9 = call i8* @EchoFileSource(i16 zeroext %8)
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* %9)
  %11 = load i32, i32* %1, align 4
  store i32 %11, i32* @PrintFileBanner.CurrentFileNum, align 4
  br label %12

; <label>:12                                      ; preds = %5, %0
  ret void
}

; Function Attrs: nounwind uwtable
define void @CheckErrorBlocks() #0 {
  %1 = load i32, i32* @block_top, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %6, label %3

; <label>:3                                       ; preds = %0
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0))
  br label %6

; <label>:6                                       ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare i32 @vsprintf(i8*, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare i8* @catgets(i8*, i32, i32, i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @EchoAltFilePos(%struct.FILE_POS*) #1

declare i8* @EchoFileLine(%struct.FILE_POS*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

declare i8* @EchoFileSource(i16 zeroext) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
