; ModuleID = 'z31.c'
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

@zz_lengths = common global [150 x i8] zeroinitializer, align 16
@GetMemory.next_free = internal global i8** null, align 8
@GetMemory.top_free = internal global i8** null, align 8
@.str = private unnamed_addr constant [32 x i8] c"exiting now (run out of memory)\00", align 1
@zz_free = common global [265 x %union.rec*] zeroinitializer, align 16
@zz_hold = common global %union.rec* null, align 8
@zz_tmp = common global %union.rec* null, align 8
@zz_res = common global %union.rec* null, align 8
@zz_size = common global i32 0, align 4
@xx_link = common global %union.rec* null, align 8
@xx_tmp = common global %union.rec* null, align 8
@xx_res = common global %union.rec* null, align 8
@xx_hold = common global %union.rec* null, align 8

; Function Attrs: nounwind uwtable
define void @MemInit() #0 {
  store i8 0, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 11), align 1
  store i8 0, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 12), align 1
  store i8 5, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 0), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 99), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 98), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 97), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 96), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 95), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 94), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 93), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 92), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 91), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 90), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 89), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 88), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 87), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 86), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 85), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 84), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 83), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 82), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 81), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 80), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 79), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 78), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 77), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 76), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 75), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 74), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 73), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 72), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 71), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 70), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 69), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 68), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 67), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 66), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 65), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 64), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 63), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 62), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 61), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 60), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 59), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 58), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 57), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 56), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 55), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 52), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 54), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 53), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 51), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 50), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 49), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 48), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 47), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 46), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 45), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 43), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 42), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 44), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 41), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 40), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 39), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 38), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 37), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 36), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 35), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 34), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 33), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 32), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 31), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 30), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 29), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 28), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 27), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 26), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 25), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 24), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 23), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 22), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 21), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 20), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 19), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 18), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 17), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 14), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 13), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 16), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 15), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 10), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 9), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 7), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 6), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 3), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 4), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 5), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 2), align 1
  store i8 21, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 8), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 149), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 148), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 139), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 138), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 137), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 136), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 135), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 134), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 133), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 132), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 131), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 130), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 129), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 128), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 127), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 125), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 124), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 123), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 122), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 121), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 120), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 119), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 117), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 116), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 115), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 114), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 111), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 110), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 109), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 108), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 107), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 106), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 105), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 104), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 103), align 1
  store i8 12, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 102), align 1
  store i8 16, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 145), align 1
  store i8 16, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 146), align 1
  store i8 16, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 144), align 1
  store i8 16, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 143), align 1
  store i8 16, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 142), align 1
  store i8 9, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 1), align 1
  store i8 9, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 101), align 1
  store i8 9, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 100), align 1
  store i8 11, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 141), align 1
  store i8 11, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 140), align 1
  store i8 8, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i64 147), align 1
  ret void
}

; Function Attrs: nounwind uwtable
define %union.rec* @GetMemory(i32 %siz, %struct.FILE_POS* %pos) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.FILE_POS*, align 8
  %res = alloca %union.rec*, align 8
  store i32 %siz, i32* %1, align 4
  store %struct.FILE_POS* %pos, %struct.FILE_POS** %2, align 8
  %3 = load i32, i32* %1, align 4
  %4 = sext i32 %3 to i64
  %5 = load i8**, i8*** @GetMemory.next_free, align 8
  %6 = getelementptr inbounds i8*, i8** %5, i64 %4
  %7 = load i8**, i8*** @GetMemory.top_free, align 8
  %8 = icmp ugt i8** %6, %7
  br i1 %8, label %9, label %20

; <label>:9                                       ; preds = %0
  %10 = call noalias i8* @calloc(i64 1020, i64 8) #3
  %11 = bitcast i8* %10 to i8**
  store i8** %11, i8*** @GetMemory.next_free, align 8
  %12 = load i8**, i8*** @GetMemory.next_free, align 8
  %13 = icmp eq i8** %12, null
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %9
  %15 = load %struct.FILE_POS*, %struct.FILE_POS** %2, align 8
  %16 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 31, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %15)
  br label %17

; <label>:17                                      ; preds = %14, %9
  %18 = load i8**, i8*** @GetMemory.next_free, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1020
  store i8** %19, i8*** @GetMemory.top_free, align 8
  br label %20

; <label>:20                                      ; preds = %17, %0
  %21 = load i8**, i8*** @GetMemory.next_free, align 8
  %22 = bitcast i8** %21 to %union.rec*
  store %union.rec* %22, %union.rec** %res, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = load i8**, i8*** @GetMemory.next_free, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 %24
  store i8** %26, i8*** @GetMemory.next_free, align 8
  %27 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %27
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}