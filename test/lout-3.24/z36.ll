; ModuleID = 'z36.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FILE_POS = type { i8, i8, i16, i32 }
%struct.trie_rec = type { i32, i32, [256 x i8], i16*, i32, i32, i8*, i32, i32 }
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
%struct.font_rec = type { %struct.metrics*, i8*, i16*, %struct.composite_rec*, i32, %union.rec*, %union.rec*, i16, i16, i16*, i8*, i8*, i16* }
%struct.metrics = type { i16, i16, i16, i16, i16 }
%struct.composite_rec = type { i8, i16, i16 }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }
%struct.anon.0 = type { i8, i8, i8 }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"ReadHyphTable: lnum <= 0!\00", align 1
@HyphTables = internal global [64 x %struct.trie_rec*] zeroinitializer, align 16
@TriedFile = internal global [64 x i32] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [15 x i8] c"ReadHyphTable!\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Hyphenate: type(x) != ACAT!\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"no current language for word %s\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"0ch\00", align 1
@finfo = external global %struct.font_rec*, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"TrieRead: fname!\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c".lp\00", align 1
@InitializeAll = external global i32, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c".lh\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"cannot open hyphenation file %s\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Lout hyphenation information\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Lout hyphenation placeholder\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"header line of hyphenation file %s missing\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%s%n\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Classes:\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"Classes heading of hyphenation file %s missing\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Exceptions:\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"Patterns:\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"LengthLimit:\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"hyphenation file %s%s is too large (at line %d)\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"bad LengthLimit in hyphenation file %s%s (line %d)\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"TrieRead: state\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"format error in hyphenation file %s\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"cannot write to hyphenation file %s\00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c"run out of memory while reading hyphenation table\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"error on read from packed hyphenation file %s\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"bad magic number in hyphenation file %s\00", align 1
@.str.30 = private unnamed_addr constant [55 x i8] c"run out of memory while constructing hyphenation table\00", align 1
@tex_codes = internal global [138 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.167, i32 0, i32 0)], align 16
@.str.31 = private unnamed_addr constant [58 x i8] c"in hyphenation file %s, unknown escape sequence (line %d)\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"Agrave\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"`A\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"Aacute\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"'A\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"\C1\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"Acircumflex\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"^A\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"\C2\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"Atilde\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"~A\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"\C3\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"Adieresis\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"\22A\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"\C4\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"agrave\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"`a\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"\E0\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"aacute\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"'a\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"\E1\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"acircumflex\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"^a\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"\E2\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"atilde\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"~a\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"\E3\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"adieresis\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"\22a\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"\E4\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"ccedilla\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"\E7\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"Egrave\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"`E\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"\C8\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"Eacute\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"'E\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"\C9\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"Ecircumflex\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"^E\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c"\CA\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"Edieresis\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"\22E\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"\CB\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"egrave\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"`e\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"\E8\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"eacute\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"'e\00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c"\E9\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"ecircumflex\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"^e\00", align 1
@.str.85 = private unnamed_addr constant [2 x i8] c"\EA\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"edieresis\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"\22e\00", align 1
@.str.88 = private unnamed_addr constant [2 x i8] c"\EB\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"Igrave\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"`I\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"\CC\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"Iacute\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"'I\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"\CD\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"Icircumflex\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"^I\00", align 1
@.str.97 = private unnamed_addr constant [2 x i8] c"\CE\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"Idieresis\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"\22I\00", align 1
@.str.100 = private unnamed_addr constant [2 x i8] c"\CF\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"igrave\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"`\5Ci\00", align 1
@.str.103 = private unnamed_addr constant [2 x i8] c"\EC\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"iacute\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"'\5Ci\00", align 1
@.str.106 = private unnamed_addr constant [2 x i8] c"\ED\00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c"icircumflex\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"^\5Ci\00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c"\EE\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"idieresis\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"\22\5Ci\00", align 1
@.str.112 = private unnamed_addr constant [2 x i8] c"\EF\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"Ograve\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"`O\00", align 1
@.str.115 = private unnamed_addr constant [2 x i8] c"\D2\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"Oacute\00", align 1
@.str.117 = private unnamed_addr constant [3 x i8] c"'O\00", align 1
@.str.118 = private unnamed_addr constant [2 x i8] c"\D3\00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c"Ocircumflex\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"^O\00", align 1
@.str.121 = private unnamed_addr constant [2 x i8] c"\D4\00", align 1
@.str.122 = private unnamed_addr constant [7 x i8] c"Otilde\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"~O\00", align 1
@.str.124 = private unnamed_addr constant [2 x i8] c"\D5\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"Odieresis\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"\22O\00", align 1
@.str.127 = private unnamed_addr constant [2 x i8] c"\D6\00", align 1
@.str.128 = private unnamed_addr constant [7 x i8] c"ograve\00", align 1
@.str.129 = private unnamed_addr constant [3 x i8] c"`o\00", align 1
@.str.130 = private unnamed_addr constant [2 x i8] c"\F2\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"oacute\00", align 1
@.str.132 = private unnamed_addr constant [3 x i8] c"'o\00", align 1
@.str.133 = private unnamed_addr constant [2 x i8] c"\F3\00", align 1
@.str.134 = private unnamed_addr constant [12 x i8] c"ocircumflex\00", align 1
@.str.135 = private unnamed_addr constant [3 x i8] c"^o\00", align 1
@.str.136 = private unnamed_addr constant [2 x i8] c"\F4\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"otilde\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"~o\00", align 1
@.str.139 = private unnamed_addr constant [2 x i8] c"\F5\00", align 1
@.str.140 = private unnamed_addr constant [10 x i8] c"odieresis\00", align 1
@.str.141 = private unnamed_addr constant [3 x i8] c"\22o\00", align 1
@.str.142 = private unnamed_addr constant [2 x i8] c"\F6\00", align 1
@.str.143 = private unnamed_addr constant [7 x i8] c"Ugrave\00", align 1
@.str.144 = private unnamed_addr constant [3 x i8] c"`U\00", align 1
@.str.145 = private unnamed_addr constant [2 x i8] c"\D9\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"Uacute\00", align 1
@.str.147 = private unnamed_addr constant [3 x i8] c"'U\00", align 1
@.str.148 = private unnamed_addr constant [2 x i8] c"\DA\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"Ucircumflex\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c"^U\00", align 1
@.str.151 = private unnamed_addr constant [2 x i8] c"\DB\00", align 1
@.str.152 = private unnamed_addr constant [10 x i8] c"Udieresis\00", align 1
@.str.153 = private unnamed_addr constant [3 x i8] c"\22U\00", align 1
@.str.154 = private unnamed_addr constant [2 x i8] c"\DC\00", align 1
@.str.155 = private unnamed_addr constant [7 x i8] c"ugrave\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c"`u\00", align 1
@.str.157 = private unnamed_addr constant [2 x i8] c"\F9\00", align 1
@.str.158 = private unnamed_addr constant [7 x i8] c"uacute\00", align 1
@.str.159 = private unnamed_addr constant [3 x i8] c"'u\00", align 1
@.str.160 = private unnamed_addr constant [2 x i8] c"\FA\00", align 1
@.str.161 = private unnamed_addr constant [12 x i8] c"ucircumflex\00", align 1
@.str.162 = private unnamed_addr constant [3 x i8] c"^u\00", align 1
@.str.163 = private unnamed_addr constant [2 x i8] c"\FB\00", align 1
@.str.164 = private unnamed_addr constant [10 x i8] c"udieresis\00", align 1
@.str.165 = private unnamed_addr constant [3 x i8] c"\22u\00", align 1
@.str.166 = private unnamed_addr constant [2 x i8] c"\FC\00", align 1
@.str.167 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.168 = private unnamed_addr constant [32 x i8] c"AddClassToTrie: after insertion\00", align 1
@.str.169 = private unnamed_addr constant [43 x i8] c"hyphenation class of %c may not be changed\00", align 1
@.str.170 = private unnamed_addr constant [74 x i8] c"in hyphenation file %s, line %d: character (octal %o) is not in any class\00", align 1
@.str.171 = private unnamed_addr constant [39 x i8] c"hyphenation string %s already inserted\00", align 1
@.str.172 = private unnamed_addr constant [37 x i8] c"hyphenation trie node limit exceeded\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ReadHyphTable(i32 %lnum) #0 {
  %1 = alloca i32, align 4
  %res = alloca i32, align 4
  store i32 %lnum, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = icmp ugt i32 %2, 0
  br i1 %3, label %7, label %4

; <label>:4                                       ; preds = %0
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %4, %0
  %8 = load i32, i32* %1, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [64 x %struct.trie_rec*], [64 x %struct.trie_rec*]* @HyphTables, i32 0, i64 %9
  %11 = load %struct.trie_rec*, %struct.trie_rec** %10, align 8
  %12 = icmp eq %struct.trie_rec* %11, null
  br i1 %12, label %13, label %19

; <label>:13                                      ; preds = %7
  %14 = load i32, i32* %1, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [64 x i32], [64 x i32]* @TriedFile, i32 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

; <label>:19                                      ; preds = %13, %7
  %20 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %21 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  br label %22

; <label>:22                                      ; preds = %19, %13
  %23 = load i32, i32* %1, align 4
  %24 = call %struct.trie_rec* @TrieRead(i32 %23, i32* %res)
  %25 = load i32, i32* %1, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [64 x %struct.trie_rec*], [64 x %struct.trie_rec*]* @HyphTables, i32 0, i64 %26
  store %struct.trie_rec* %24, %struct.trie_rec** %27, align 8
  %28 = load i32, i32* %1, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [64 x i32], [64 x i32]* @TriedFile, i32 0, i64 %29
  store i32 1, i32* %30, align 4
  %31 = load i32, i32* %res, align 4
  ret i32 %31
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct.trie_rec* @TrieRead(i32 %lnum, i32* %success) #0 {
  %1 = alloca %struct.trie_rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %T = alloca %struct.trie_rec*, align 8
  %unpacked_fnum = alloca i16, align 2
  %packed_fnum = alloca i16, align 2
  %fname = alloca %union.rec*, align 8
  %unpacked_fp = alloca %struct._IO_FILE*, align 8
  %packed_fp = alloca %struct._IO_FILE*, align 8
  %len = alloca i32, align 4
  %prev = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i32, align 4
  %state = alloca i32, align 4
  %hline_num = alloca i32, align 4
  %length_limit = alloca i32, align 4
  %str = alloca [512 x i8], align 16
  %key = alloca [512 x i8], align 16
  %value = alloca [512 x i8], align 16
  %buff = alloca [522 x i8], align 16
  %bpos = alloca i32, align 4
  %bcount = alloca i32, align 4
  store i32 %lnum, i32* %2, align 4
  store i32* %success, i32** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = call %union.rec* @LanguageHyph(i32 %4)
  store %union.rec* %5, %union.rec** %fname, align 8
  %6 = load %union.rec*, %union.rec** %fname, align 8
  %7 = icmp eq %union.rec* %6, null
  br i1 %7, label %29, label %8

; <label>:8                                       ; preds = %0
  %9 = load %union.rec*, %union.rec** %fname, align 8
  %10 = bitcast %union.rec* %9 to %struct.word_type*
  %11 = getelementptr inbounds %struct.word_type, %struct.word_type* %10, i32 0, i32 1
  %12 = bitcast %union.FIRST_UNION* %11 to %struct.anon*
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, 11
  br i1 %16, label %29, label %17

; <label>:17                                      ; preds = %8
  %18 = load %union.rec*, %union.rec** %fname, align 8
  %19 = bitcast %union.rec* %18 to %struct.word_type*
  %20 = getelementptr inbounds %struct.word_type, %struct.word_type* %19, i32 0, i32 1
  %21 = bitcast %union.FIRST_UNION* %20 to %struct.anon*
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 12
  br i1 %25, label %29, label %26

; <label>:26                                      ; preds = %17
  %27 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %28 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0))
  br label %29

; <label>:29                                      ; preds = %26, %17, %8, %0
  %30 = load %union.rec*, %union.rec** %fname, align 8
  %31 = icmp eq %union.rec* %30, null
  br i1 %31, label %32, label %34

; <label>:32                                      ; preds = %29
  %33 = load i32*, i32** %3, align 8
  store i32 0, i32* %33, align 4
  store %struct.trie_rec* null, %struct.trie_rec** %1
  br label %710

; <label>:34                                      ; preds = %29
  %35 = load %union.rec*, %union.rec** %fname, align 8
  %36 = bitcast %union.rec* %35 to %struct.word_type*
  %37 = getelementptr inbounds %struct.word_type, %struct.word_type* %36, i32 0, i32 4
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %37, i32 0, i32 0
  %39 = load %union.rec*, %union.rec** %fname, align 8
  %40 = bitcast %union.rec* %39 to %struct.word_type*
  %41 = getelementptr inbounds %struct.word_type, %struct.word_type* %40, i32 0, i32 1
  %42 = bitcast %union.FIRST_UNION* %41 to %struct.FILE_POS*
  %43 = call zeroext i16 @DefineFile(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), %struct.FILE_POS* %42, i32 8, i32 6)
  store i16 %43, i16* %packed_fnum, align 2
  %44 = load i32, i32* @InitializeAll, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

; <label>:46                                      ; preds = %34
  store %struct._IO_FILE* null, %struct._IO_FILE** %packed_fp, align 8
  br label %50

; <label>:47                                      ; preds = %34
  %48 = load i16, i16* %packed_fnum, align 2
  %49 = call %struct._IO_FILE* @OpenFile(i16 zeroext %48, i32 0, i32 0)
  store %struct._IO_FILE* %49, %struct._IO_FILE** %packed_fp, align 8
  br label %50

; <label>:50                                      ; preds = %47, %46
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %52 = icmp eq %struct._IO_FILE* %51, null
  br i1 %52, label %53, label %533

; <label>:53                                      ; preds = %50
  %54 = load %union.rec*, %union.rec** %fname, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 4
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %56, i32 0, i32 0
  %58 = load %union.rec*, %union.rec** %fname, align 8
  %59 = bitcast %union.rec* %58 to %struct.word_type*
  %60 = getelementptr inbounds %struct.word_type, %struct.word_type* %59, i32 0, i32 1
  %61 = bitcast %union.FIRST_UNION* %60 to %struct.FILE_POS*
  %62 = call zeroext i16 @DefineFile(i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), %struct.FILE_POS* %61, i32 7, i32 6)
  store i16 %62, i16* %unpacked_fnum, align 2
  %63 = load i16, i16* %unpacked_fnum, align 2
  %64 = call %struct._IO_FILE* @OpenFile(i16 zeroext %63, i32 0, i32 0)
  store %struct._IO_FILE* %64, %struct._IO_FILE** %unpacked_fp, align 8
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %unpacked_fp, align 8
  %66 = icmp eq %struct._IO_FILE* %65, null
  br i1 %66, label %67, label %73

; <label>:67                                      ; preds = %53
  %68 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %69 = load i16, i16* %unpacked_fnum, align 2
  %70 = call i8* @FileName(i16 zeroext %69)
  %71 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), i32 2, %struct.FILE_POS* %68, i8* %70)
  %72 = load i32*, i32** %3, align 8
  store i32 0, i32* %72, align 4
  store %struct.trie_rec* null, %struct.trie_rec** %1
  br label %710

; <label>:73                                      ; preds = %53
  %74 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %unpacked_fp, align 8
  %76 = call i8* @fgets(i8* %74, i32 512, %struct._IO_FILE* %75)
  %77 = icmp eq i8* %76, null
  br i1 %77, label %86, label %78

; <label>:78                                      ; preds = %73
  %79 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0)) #4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %91, label %82

; <label>:82                                      ; preds = %78
  %83 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0)) #4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %91, label %86

; <label>:86                                      ; preds = %82, %73
  %87 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %88 = load i16, i16* %unpacked_fnum, align 2
  %89 = call i8* @FileName(i16 zeroext %88)
  %90 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 9, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i32 0, i32 0), i32 1, %struct.FILE_POS* %87, i8* %89)
  br label %91

; <label>:91                                      ; preds = %86, %82, %78
  %92 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0)) #4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

; <label>:95                                      ; preds = %91
  %96 = load i32*, i32** %3, align 8
  store i32 1, i32* %96, align 4
  store %struct.trie_rec* null, %struct.trie_rec** %1
  br label %710

; <label>:97                                      ; preds = %91
  %98 = call %struct.trie_rec* @NewTrie(i32 120000, i32 32767)
  store %struct.trie_rec* %98, %struct.trie_rec** %T, align 8
  store i32 0, i32* %state, align 4
  store i32 1, i32* %hline_num, align 4
  store i32 0, i32* %length_limit, align 4
  br label %99

; <label>:99                                      ; preds = %380, %97
  %100 = getelementptr inbounds [522 x i8], [522 x i8]* %buff, i32 0, i32 0
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %unpacked_fp, align 8
  %102 = call i8* @fgets(i8* %100, i32 512, %struct._IO_FILE* %101)
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %381

; <label>:104                                     ; preds = %99
  %105 = load i32, i32* %hline_num, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %hline_num, align 4
  store i32 0, i32* %bpos, align 4
  br label %107

; <label>:107                                     ; preds = %379, %104
  %108 = load i32, i32* %bpos, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [522 x i8], [522 x i8]* %buff, i32 0, i64 %109
  %111 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %112 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %111, i32* %bcount) #5
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %119

; <label>:114                                     ; preds = %107
  %115 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp ne i32 %117, 37
  br label %119

; <label>:119                                     ; preds = %114, %107
  %120 = phi i1 [ false, %107 ], [ %118, %114 ]
  br i1 %120, label %121, label %380

; <label>:121                                     ; preds = %119
  %122 = load i32, i32* %bcount, align 4
  %123 = load i32, i32* %bpos, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %bpos, align 4
  %125 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %126 = load %union.rec*, %union.rec** %fname, align 8
  %127 = bitcast %union.rec* %126 to %struct.word_type*
  %128 = getelementptr inbounds %struct.word_type, %struct.word_type* %127, i32 0, i32 4
  %129 = getelementptr inbounds [4 x i8], [4 x i8]* %128, i32 0, i32 0
  %130 = load i32, i32* %hline_num, align 4
  call void @DecodeEscapes(i8* %125, i8* %129, i32 %130)
  %131 = load i32, i32* %state, align 4
  switch i32 %131, label %376 [
    i32 0, label %132
    i32 1, label %142
    i32 2, label %163
    i32 3, label %263
    i32 4, label %286
  ]

; <label>:132                                     ; preds = %121
  %133 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %134 = call i32 @strcmp(i8* %133, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0)) #4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %141, label %136

; <label>:136                                     ; preds = %132
  %137 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %138 = load i16, i16* %unpacked_fnum, align 2
  %139 = call i8* @FileName(i16 zeroext %138)
  %140 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 10, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i32 0, i32 0), i32 1, %struct.FILE_POS* %137, i8* %139)
  br label %141

; <label>:141                                     ; preds = %136, %132
  store i32 1, i32* %state, align 4
  br label %379

; <label>:142                                     ; preds = %121
  %143 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %144 = call i32 @strcmp(i8* %143, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0)) #4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

; <label>:146                                     ; preds = %142
  store i32 2, i32* %state, align 4
  br label %162

; <label>:147                                     ; preds = %142
  %148 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %149 = call i32 @strcmp(i8* %148, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)) #4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

; <label>:151                                     ; preds = %147
  store i32 4, i32* %state, align 4
  br label %161

; <label>:152                                     ; preds = %147
  %153 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %154 = call i32 @strcmp(i8* %153, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0)) #4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

; <label>:156                                     ; preds = %152
  store i32 3, i32* %state, align 4
  br label %160

; <label>:157                                     ; preds = %152
  %158 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %159 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  call void @AddClassToTrie(i8* %158, %struct.trie_rec* %159)
  br label %160

; <label>:160                                     ; preds = %157, %156
  br label %161

; <label>:161                                     ; preds = %160, %151
  br label %162

; <label>:162                                     ; preds = %161, %146
  br label %379

; <label>:163                                     ; preds = %121
  %164 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %165 = call i32 @strcmp(i8* %164, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)) #4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %168

; <label>:167                                     ; preds = %163
  store i32 4, i32* %state, align 4
  br label %262

; <label>:168                                     ; preds = %163
  %169 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %170 = call i32 @strcmp(i8* %169, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0)) #4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

; <label>:172                                     ; preds = %168
  store i32 3, i32* %state, align 4
  br label %261

; <label>:173                                     ; preds = %168
  store i32 56, i32* %prev, align 4
  store i32 0, i32* %j, align 4
  %174 = load i32, i32* %j, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [512 x i8], [512 x i8]* %key, i32 0, i64 %175
  store i8 46, i8* %176, align 1
  %177 = load i32, i32* %prev, align 4
  %178 = trunc i32 %177 to i8
  %179 = load i32, i32* %j, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %j, align 4
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds [512 x i8], [512 x i8]* %value, i32 0, i64 %181
  store i8 %178, i8* %182, align 1
  store i32 56, i32* %prev, align 4
  store i32 0, i32* %i, align 4
  br label %183

; <label>:183                                     ; preds = %213, %173
  %184 = load i32, i32* %i, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %216

; <label>:190                                     ; preds = %183
  %191 = load i32, i32* %i, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = icmp eq i32 %195, 45
  br i1 %196, label %197, label %198

; <label>:197                                     ; preds = %190
  store i32 57, i32* %prev, align 4
  br label %212

; <label>:198                                     ; preds = %190
  %199 = load i32, i32* %i, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %200
  %202 = load i8, i8* %201, align 1
  %203 = load i32, i32* %j, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [512 x i8], [512 x i8]* %key, i32 0, i64 %204
  store i8 %202, i8* %205, align 1
  %206 = load i32, i32* %prev, align 4
  %207 = trunc i32 %206 to i8
  %208 = load i32, i32* %j, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %j, align 4
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds [512 x i8], [512 x i8]* %value, i32 0, i64 %210
  store i8 %207, i8* %211, align 1
  store i32 56, i32* %prev, align 4
  br label %212

; <label>:212                                     ; preds = %198, %197
  br label %213

; <label>:213                                     ; preds = %212
  %214 = load i32, i32* %i, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %i, align 4
  br label %183

; <label>:216                                     ; preds = %183
  %217 = load i32, i32* %j, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [512 x i8], [512 x i8]* %key, i32 0, i64 %218
  store i8 46, i8* %219, align 1
  %220 = load i32, i32* %prev, align 4
  %221 = trunc i32 %220 to i8
  %222 = load i32, i32* %j, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %j, align 4
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds [512 x i8], [512 x i8]* %value, i32 0, i64 %224
  store i8 %221, i8* %225, align 1
  store i32 56, i32* %prev, align 4
  %226 = load i32, i32* %j, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [512 x i8], [512 x i8]* %key, i32 0, i64 %227
  store i8 0, i8* %228, align 1
  %229 = load i32, i32* %prev, align 4
  %230 = trunc i32 %229 to i8
  %231 = load i32, i32* %j, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [512 x i8], [512 x i8]* %value, i32 0, i64 %232
  store i8 %230, i8* %233, align 1
  %234 = load i32, i32* %j, align 4
  %235 = add nsw i32 %234, 1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [512 x i8], [512 x i8]* %value, i32 0, i64 %236
  store i8 0, i8* %237, align 1
  %238 = getelementptr inbounds [512 x i8], [512 x i8]* %key, i32 0, i32 0
  %239 = getelementptr inbounds [512 x i8], [512 x i8]* %value, i32 0, i32 0
  %240 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %241 = load %union.rec*, %union.rec** %fname, align 8
  %242 = bitcast %union.rec* %241 to %struct.word_type*
  %243 = getelementptr inbounds %struct.word_type, %struct.word_type* %242, i32 0, i32 4
  %244 = getelementptr inbounds [4 x i8], [4 x i8]* %243, i32 0, i32 0
  %245 = load i32, i32* %hline_num, align 4
  %246 = call i32 @TrieInsert(i8* %238, i8* %239, %struct.trie_rec* %240, i8* %244, i32 %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %260, label %248

; <label>:248                                     ; preds = %216
  %249 = load %union.rec*, %union.rec** %fname, align 8
  %250 = bitcast %union.rec* %249 to %struct.word_type*
  %251 = getelementptr inbounds %struct.word_type, %struct.word_type* %250, i32 0, i32 1
  %252 = bitcast %union.FIRST_UNION* %251 to %struct.FILE_POS*
  %253 = load %union.rec*, %union.rec** %fname, align 8
  %254 = bitcast %union.rec* %253 to %struct.word_type*
  %255 = getelementptr inbounds %struct.word_type, %struct.word_type* %254, i32 0, i32 4
  %256 = getelementptr inbounds [4 x i8], [4 x i8]* %255, i32 0, i32 0
  %257 = load i32, i32* %hline_num, align 4
  %258 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 11, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct.FILE_POS* %252, i8* %256, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 %257)
  %259 = load i32*, i32** %3, align 8
  store i32 0, i32* %259, align 4
  store %struct.trie_rec* null, %struct.trie_rec** %1
  br label %710

; <label>:260                                     ; preds = %216
  br label %261

; <label>:261                                     ; preds = %260, %172
  br label %262

; <label>:262                                     ; preds = %261, %167
  br label %379

; <label>:263                                     ; preds = %121
  %264 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %265 = call i32 @strcmp(i8* %264, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)) #4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %268

; <label>:267                                     ; preds = %263
  store i32 4, i32* %state, align 4
  br label %285

; <label>:268                                     ; preds = %263
  %269 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %270 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %269, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i32* %length_limit) #5
  %271 = icmp ne i32 %270, 1
  br i1 %271, label %272, label %284

; <label>:272                                     ; preds = %268
  %273 = load %union.rec*, %union.rec** %fname, align 8
  %274 = bitcast %union.rec* %273 to %struct.word_type*
  %275 = getelementptr inbounds %struct.word_type, %struct.word_type* %274, i32 0, i32 1
  %276 = bitcast %union.FIRST_UNION* %275 to %struct.FILE_POS*
  %277 = load %union.rec*, %union.rec** %fname, align 8
  %278 = bitcast %union.rec* %277 to %struct.word_type*
  %279 = getelementptr inbounds %struct.word_type, %struct.word_type* %278, i32 0, i32 4
  %280 = getelementptr inbounds [4 x i8], [4 x i8]* %279, i32 0, i32 0
  %281 = load i32, i32* %hline_num, align 4
  %282 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 20, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.22, i32 0, i32 0), i32 2, %struct.FILE_POS* %276, i8* %280, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 %281)
  %283 = load i32*, i32** %3, align 8
  store i32 0, i32* %283, align 4
  store %struct.trie_rec* null, %struct.trie_rec** %1
  br label %710

; <label>:284                                     ; preds = %268
  br label %285

; <label>:285                                     ; preds = %284, %267
  br label %379

; <label>:286                                     ; preds = %121
  store i32 48, i32* %prev, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %287

; <label>:287                                     ; preds = %329, %286
  %288 = load i32, i32* %i, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %289
  %291 = load i8, i8* %290, align 1
  %292 = zext i8 %291 to i32
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %332

; <label>:294                                     ; preds = %287
  %295 = load i32, i32* %i, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %296
  %298 = load i8, i8* %297, align 1
  %299 = zext i8 %298 to i32
  %300 = icmp sge i32 %299, 48
  br i1 %300, label %301, label %314

; <label>:301                                     ; preds = %294
  %302 = load i32, i32* %i, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %303
  %305 = load i8, i8* %304, align 1
  %306 = zext i8 %305 to i32
  %307 = icmp sle i32 %306, 57
  br i1 %307, label %308, label %314

; <label>:308                                     ; preds = %301
  %309 = load i32, i32* %i, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %310
  %312 = load i8, i8* %311, align 1
  %313 = zext i8 %312 to i32
  store i32 %313, i32* %prev, align 4
  br label %328

; <label>:314                                     ; preds = %301, %294
  %315 = load i32, i32* %i, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %316
  %318 = load i8, i8* %317, align 1
  %319 = load i32, i32* %j, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [512 x i8], [512 x i8]* %key, i32 0, i64 %320
  store i8 %318, i8* %321, align 1
  %322 = load i32, i32* %prev, align 4
  %323 = trunc i32 %322 to i8
  %324 = load i32, i32* %j, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %j, align 4
  %326 = sext i32 %324 to i64
  %327 = getelementptr inbounds [512 x i8], [512 x i8]* %value, i32 0, i64 %326
  store i8 %323, i8* %327, align 1
  store i32 48, i32* %prev, align 4
  br label %328

; <label>:328                                     ; preds = %314, %308
  br label %329

; <label>:329                                     ; preds = %328
  %330 = load i32, i32* %i, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %i, align 4
  br label %287

; <label>:332                                     ; preds = %287
  %333 = load i32, i32* %j, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [512 x i8], [512 x i8]* %key, i32 0, i64 %334
  store i8 0, i8* %335, align 1
  %336 = load i32, i32* %prev, align 4
  %337 = trunc i32 %336 to i8
  %338 = load i32, i32* %j, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [512 x i8], [512 x i8]* %value, i32 0, i64 %339
  store i8 %337, i8* %340, align 1
  %341 = load i32, i32* %j, align 4
  %342 = add nsw i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [512 x i8], [512 x i8]* %value, i32 0, i64 %343
  store i8 0, i8* %344, align 1
  %345 = load i32, i32* %length_limit, align 4
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %351, label %347

; <label>:347                                     ; preds = %332
  %348 = load i32, i32* %j, align 4
  %349 = load i32, i32* %length_limit, align 4
  %350 = icmp sle i32 %348, %349
  br i1 %350, label %351, label %375

; <label>:351                                     ; preds = %347, %332
  %352 = getelementptr inbounds [512 x i8], [512 x i8]* %key, i32 0, i32 0
  %353 = getelementptr inbounds [512 x i8], [512 x i8]* %value, i32 0, i32 0
  %354 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %355 = load %union.rec*, %union.rec** %fname, align 8
  %356 = bitcast %union.rec* %355 to %struct.word_type*
  %357 = getelementptr inbounds %struct.word_type, %struct.word_type* %356, i32 0, i32 4
  %358 = getelementptr inbounds [4 x i8], [4 x i8]* %357, i32 0, i32 0
  %359 = load i32, i32* %hline_num, align 4
  %360 = call i32 @TrieInsert(i8* %352, i8* %353, %struct.trie_rec* %354, i8* %358, i32 %359)
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %374, label %362

; <label>:362                                     ; preds = %351
  %363 = load %union.rec*, %union.rec** %fname, align 8
  %364 = bitcast %union.rec* %363 to %struct.word_type*
  %365 = getelementptr inbounds %struct.word_type, %struct.word_type* %364, i32 0, i32 1
  %366 = bitcast %union.FIRST_UNION* %365 to %struct.FILE_POS*
  %367 = load %union.rec*, %union.rec** %fname, align 8
  %368 = bitcast %union.rec* %367 to %struct.word_type*
  %369 = getelementptr inbounds %struct.word_type, %struct.word_type* %368, i32 0, i32 4
  %370 = getelementptr inbounds [4 x i8], [4 x i8]* %369, i32 0, i32 0
  %371 = load i32, i32* %hline_num, align 4
  %372 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 12, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct.FILE_POS* %366, i8* %370, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 %371)
  %373 = load i32*, i32** %3, align 8
  store i32 0, i32* %373, align 4
  store %struct.trie_rec* null, %struct.trie_rec** %1
  br label %710

; <label>:374                                     ; preds = %351
  br label %375

; <label>:375                                     ; preds = %374, %347
  br label %379

; <label>:376                                     ; preds = %121
  %377 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %378 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %377, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0))
  br label %379

; <label>:379                                     ; preds = %376, %375, %285, %262, %162, %141
  br label %107

; <label>:380                                     ; preds = %119
  br label %99

; <label>:381                                     ; preds = %99
  %382 = load i32, i32* %state, align 4
  %383 = icmp ne i32 %382, 4
  br i1 %383, label %384, label %389

; <label>:384                                     ; preds = %381
  %385 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %386 = load i16, i16* %unpacked_fnum, align 2
  %387 = call i8* @FileName(i16 zeroext %386)
  %388 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i32 0, i32 0), i32 1, %struct.FILE_POS* %385, i8* %387)
  br label %389

; <label>:389                                     ; preds = %384, %381
  %390 = load %struct._IO_FILE*, %struct._IO_FILE** %unpacked_fp, align 8
  %391 = call i32 @fclose(%struct._IO_FILE* %390)
  %392 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  call void @CompressTrie(%struct.trie_rec* %392)
  %393 = getelementptr inbounds [522 x i8], [522 x i8]* %buff, i32 0, i32 0
  %394 = load i16, i16* %unpacked_fnum, align 2
  %395 = call i8* @FileName(i16 zeroext %394)
  %396 = call i8* @strcpy(i8* %393, i8* %395) #5
  %397 = getelementptr inbounds [522 x i8], [522 x i8]* %buff, i32 0, i32 0
  %398 = call i64 @strlen(i8* %397) #4
  %399 = sub i64 %398, 3
  %400 = getelementptr inbounds [522 x i8], [522 x i8]* %buff, i32 0, i64 %399
  %401 = call i8* @strcpy(i8* %400, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #5
  %402 = getelementptr inbounds [522 x i8], [522 x i8]* %buff, i32 0, i32 0
  %403 = call %struct._IO_FILE* @fopen(i8* %402, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0))
  store %struct._IO_FILE* %403, %struct._IO_FILE** %packed_fp, align 8
  %404 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %405 = icmp eq %struct._IO_FILE* %404, null
  br i1 %405, label %406, label %410

; <label>:406                                     ; preds = %389
  %407 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %408 = getelementptr inbounds [522 x i8], [522 x i8]* %buff, i32 0, i32 0
  %409 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i32 0, i32 0), i32 1, %struct.FILE_POS* %407, i8* %408)
  br label %410

; <label>:410                                     ; preds = %406, %389
  %411 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %412 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %413 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = call i32 @BePutInt(%struct._IO_FILE* %411, i32 %414)
  %416 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %417 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %418 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 4
  %420 = call i32 @BePutInt(%struct._IO_FILE* %416, i32 %419)
  store i32 0, i32* %i, align 4
  br label %421

; <label>:421                                     ; preds = %437, %410
  %422 = load i32, i32* %i, align 4
  %423 = icmp slt i32 %422, 256
  br i1 %423, label %424, label %440

; <label>:424                                     ; preds = %421
  %425 = load i32, i32* %i, align 4
  %426 = sext i32 %425 to i64
  %427 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %428 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %427, i32 0, i32 2
  %429 = getelementptr inbounds [256 x i8], [256 x i8]* %428, i32 0, i64 %426
  %430 = load i8, i8* %429, align 1
  %431 = zext i8 %430 to i32
  %432 = and i32 %431, 255
  %433 = trunc i32 %432 to i8
  %434 = sext i8 %433 to i32
  %435 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %436 = call i32 @_IO_putc(i32 %434, %struct._IO_FILE* %435)
  br label %437

; <label>:437                                     ; preds = %424
  %438 = load i32, i32* %i, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %i, align 4
  br label %421

; <label>:440                                     ; preds = %421
  %441 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %442 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %443 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %442, i32 0, i32 4
  %444 = load i32, i32* %443, align 4
  %445 = call i32 @BePutInt(%struct._IO_FILE* %441, i32 %444)
  %446 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %447 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %448 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %447, i32 0, i32 5
  %449 = load i32, i32* %448, align 4
  %450 = call i32 @BePutInt(%struct._IO_FILE* %446, i32 %449)
  %451 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %452 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %453 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %452, i32 0, i32 7
  %454 = load i32, i32* %453, align 4
  %455 = call i32 @BePutInt(%struct._IO_FILE* %451, i32 %454)
  %456 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %457 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %458 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %457, i32 0, i32 8
  %459 = load i32, i32* %458, align 4
  %460 = call i32 @BePutInt(%struct._IO_FILE* %456, i32 %459)
  store i32 0, i32* %i, align 4
  br label %461

; <label>:461                                     ; preds = %491, %440
  %462 = load i32, i32* %i, align 4
  %463 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %464 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %463, i32 0, i32 5
  %465 = load i32, i32* %464, align 4
  %466 = icmp slt i32 %462, %465
  br i1 %466, label %467, label %494

; <label>:467                                     ; preds = %461
  %468 = load i32, i32* %i, align 4
  %469 = sext i32 %468 to i64
  %470 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %471 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %470, i32 0, i32 3
  %472 = load i16*, i16** %471, align 8
  %473 = getelementptr inbounds i16, i16* %472, i64 %469
  %474 = load i16, i16* %473, align 2
  %475 = sext i16 %474 to i32
  %476 = ashr i32 %475, 8
  %477 = and i32 %476, 255
  %478 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %479 = call i32 @_IO_putc(i32 %477, %struct._IO_FILE* %478)
  %480 = load i32, i32* %i, align 4
  %481 = sext i32 %480 to i64
  %482 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %483 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %482, i32 0, i32 3
  %484 = load i16*, i16** %483, align 8
  %485 = getelementptr inbounds i16, i16* %484, i64 %481
  %486 = load i16, i16* %485, align 2
  %487 = sext i16 %486 to i32
  %488 = and i32 %487, 255
  %489 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %490 = call i32 @_IO_putc(i32 %488, %struct._IO_FILE* %489)
  br label %491

; <label>:491                                     ; preds = %467
  %492 = load i32, i32* %i, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %i, align 4
  br label %461

; <label>:494                                     ; preds = %461
  store i32 0, i32* %i, align 4
  br label %495

; <label>:495                                     ; preds = %515, %494
  %496 = load i32, i32* %i, align 4
  %497 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %498 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %497, i32 0, i32 7
  %499 = load i32, i32* %498, align 4
  %500 = icmp slt i32 %496, %499
  br i1 %500, label %501, label %518

; <label>:501                                     ; preds = %495
  %502 = load i32, i32* %i, align 4
  %503 = sext i32 %502 to i64
  %504 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %505 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %504, i32 0, i32 6
  %506 = load i8*, i8** %505, align 8
  %507 = getelementptr inbounds i8, i8* %506, i64 %503
  %508 = load i8, i8* %507, align 1
  %509 = zext i8 %508 to i32
  %510 = and i32 %509, 255
  %511 = trunc i32 %510 to i8
  %512 = sext i8 %511 to i32
  %513 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %514 = call i32 @_IO_putc(i32 %512, %struct._IO_FILE* %513)
  br label %515

; <label>:515                                     ; preds = %501
  %516 = load i32, i32* %i, align 4
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* %i, align 4
  br label %495

; <label>:518                                     ; preds = %495
  %519 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %520 = call i32 @fclose(%struct._IO_FILE* %519)
  %521 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %522 = bitcast %struct.trie_rec* %521 to i8*
  call void @free(i8* %522) #5
  %523 = load i16, i16* %packed_fnum, align 2
  %524 = call %struct._IO_FILE* @OpenFile(i16 zeroext %523, i32 0, i32 0)
  store %struct._IO_FILE* %524, %struct._IO_FILE** %packed_fp, align 8
  %525 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %526 = icmp eq %struct._IO_FILE* %525, null
  br i1 %526, label %527, label %532

; <label>:527                                     ; preds = %518
  %528 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %529 = load i16, i16* %packed_fnum, align 2
  %530 = call i8* @FileName(i16 zeroext %529)
  %531 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), i32 1, %struct.FILE_POS* %528, i8* %530)
  br label %532

; <label>:532                                     ; preds = %527, %518
  br label %533

; <label>:533                                     ; preds = %532, %50
  %534 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %535 = call i32 @fseek(%struct._IO_FILE* %534, i64 0, i32 2)
  %536 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %537 = call i64 @ftell(%struct._IO_FILE* %536)
  %538 = trunc i64 %537 to i32
  store i32 %538, i32* %len, align 4
  %539 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  call void @rewind(%struct._IO_FILE* %539)
  %540 = load i32, i32* %len, align 4
  %541 = zext i32 %540 to i64
  %542 = add i64 %541, 16
  %543 = call noalias i8* @malloc(i64 %542) #5
  %544 = bitcast i8* %543 to %struct.trie_rec*
  store %struct.trie_rec* %544, %struct.trie_rec** %T, align 8
  %545 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %546 = icmp eq %struct.trie_rec* %545, null
  br i1 %546, label %547, label %550

; <label>:547                                     ; preds = %533
  %548 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %549 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.27, i32 0, i32 0), i32 1, %struct.FILE_POS* %548)
  br label %550

; <label>:550                                     ; preds = %547, %533
  %551 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %552 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %553 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %552, i32 0, i32 0
  %554 = call i32 @BeGetInt(%struct._IO_FILE* %551, i32* %553)
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %561

; <label>:556                                     ; preds = %550
  %557 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %558 = load i16, i16* %packed_fnum, align 2
  %559 = call i8* @FileName(i16 zeroext %558)
  %560 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i32 0, i32 0), i32 1, %struct.FILE_POS* %557, i8* %559)
  br label %561

; <label>:561                                     ; preds = %556, %550
  %562 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %563 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %562, i32 0, i32 0
  %564 = load i32, i32* %563, align 4
  %565 = icmp ne i32 %564, 5361534
  br i1 %565, label %566, label %571

; <label>:566                                     ; preds = %561
  %567 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %568 = load i16, i16* %packed_fnum, align 2
  %569 = call i8* @FileName(i16 zeroext %568)
  %570 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0), i32 1, %struct.FILE_POS* %567, i8* %569)
  br label %571

; <label>:571                                     ; preds = %566, %561
  %572 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %573 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %574 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %573, i32 0, i32 1
  %575 = call i32 @BeGetInt(%struct._IO_FILE* %572, i32* %574)
  store i32 0, i32* %i, align 4
  br label %576

; <label>:576                                     ; preds = %595, %571
  %577 = load i32, i32* %i, align 4
  %578 = icmp slt i32 %577, 256
  br i1 %578, label %579, label %598

; <label>:579                                     ; preds = %576
  %580 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %581 = call i32 @_IO_getc(%struct._IO_FILE* %580)
  store i32 %581, i32* %c, align 4
  %582 = icmp eq i32 %581, -1
  br i1 %582, label %583, label %584

; <label>:583                                     ; preds = %579
  br label %593

; <label>:584                                     ; preds = %579
  %585 = load i32, i32* %c, align 4
  %586 = and i32 %585, 255
  %587 = trunc i32 %586 to i8
  %588 = load i32, i32* %i, align 4
  %589 = sext i32 %588 to i64
  %590 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %591 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %590, i32 0, i32 2
  %592 = getelementptr inbounds [256 x i8], [256 x i8]* %591, i32 0, i64 %589
  store i8 %587, i8* %592, align 1
  br label %593

; <label>:593                                     ; preds = %584, %583
  %594 = phi i32 [ -1, %583 ], [ 0, %584 ]
  br label %595

; <label>:595                                     ; preds = %593
  %596 = load i32, i32* %i, align 4
  %597 = add nsw i32 %596, 1
  store i32 %597, i32* %i, align 4
  br label %576

; <label>:598                                     ; preds = %576
  %599 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %600 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %601 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %600, i32 0, i32 4
  %602 = call i32 @BeGetInt(%struct._IO_FILE* %599, i32* %601)
  %603 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %604 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %605 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %604, i32 0, i32 5
  %606 = call i32 @BeGetInt(%struct._IO_FILE* %603, i32* %605)
  %607 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %608 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %609 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %608, i32 0, i32 7
  %610 = call i32 @BeGetInt(%struct._IO_FILE* %607, i32* %609)
  %611 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %612 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %613 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %612, i32 0, i32 8
  %614 = call i32 @BeGetInt(%struct._IO_FILE* %611, i32* %613)
  %615 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %616 = bitcast %struct.trie_rec* %615 to i8*
  %617 = getelementptr inbounds i8, i8* %616, i64 296
  %618 = bitcast i8* %617 to i16*
  %619 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %620 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %619, i32 0, i32 3
  store i16* %618, i16** %620, align 8
  %621 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %622 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %621, i32 0, i32 4
  %623 = load i32, i32* %622, align 4
  %624 = sext i32 %623 to i64
  %625 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %626 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %625, i32 0, i32 3
  %627 = load i16*, i16** %626, align 8
  %628 = getelementptr inbounds i16, i16* %627, i64 %624
  %629 = bitcast i16* %628 to i8*
  %630 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %631 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %630, i32 0, i32 6
  store i8* %629, i8** %631, align 8
  store i32 0, i32* %i, align 4
  br label %632

; <label>:632                                     ; preds = %675, %598
  %633 = load i32, i32* %i, align 4
  %634 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %635 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %634, i32 0, i32 5
  %636 = load i32, i32* %635, align 4
  %637 = icmp slt i32 %633, %636
  br i1 %637, label %638, label %678

; <label>:638                                     ; preds = %632
  %639 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %640 = call i32 @_IO_getc(%struct._IO_FILE* %639)
  store i32 %640, i32* %c, align 4
  %641 = icmp eq i32 %640, -1
  br i1 %641, label %642, label %643

; <label>:642                                     ; preds = %638
  br label %673

; <label>:643                                     ; preds = %638
  %644 = load i32, i32* %c, align 4
  %645 = and i32 %644, 255
  %646 = shl i32 %645, 8
  %647 = trunc i32 %646 to i16
  %648 = load i32, i32* %i, align 4
  %649 = sext i32 %648 to i64
  %650 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %651 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %650, i32 0, i32 3
  %652 = load i16*, i16** %651, align 8
  %653 = getelementptr inbounds i16, i16* %652, i64 %649
  store i16 %647, i16* %653, align 2
  %654 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %655 = call i32 @_IO_getc(%struct._IO_FILE* %654)
  store i32 %655, i32* %c, align 4
  %656 = icmp eq i32 %655, -1
  br i1 %656, label %657, label %658

; <label>:657                                     ; preds = %643
  br label %671

; <label>:658                                     ; preds = %643
  %659 = load i32, i32* %c, align 4
  %660 = and i32 %659, 255
  %661 = load i32, i32* %i, align 4
  %662 = sext i32 %661 to i64
  %663 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %664 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %663, i32 0, i32 3
  %665 = load i16*, i16** %664, align 8
  %666 = getelementptr inbounds i16, i16* %665, i64 %662
  %667 = load i16, i16* %666, align 2
  %668 = sext i16 %667 to i32
  %669 = or i32 %668, %660
  %670 = trunc i32 %669 to i16
  store i16 %670, i16* %666, align 2
  br label %671

; <label>:671                                     ; preds = %658, %657
  %672 = phi i32 [ -1, %657 ], [ 0, %658 ]
  br label %673

; <label>:673                                     ; preds = %671, %642
  %674 = phi i32 [ -1, %642 ], [ %672, %671 ]
  br label %675

; <label>:675                                     ; preds = %673
  %676 = load i32, i32* %i, align 4
  %677 = add nsw i32 %676, 1
  store i32 %677, i32* %i, align 4
  br label %632

; <label>:678                                     ; preds = %632
  store i32 0, i32* %i, align 4
  br label %679

; <label>:679                                     ; preds = %702, %678
  %680 = load i32, i32* %i, align 4
  %681 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %682 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %681, i32 0, i32 7
  %683 = load i32, i32* %682, align 4
  %684 = icmp slt i32 %680, %683
  br i1 %684, label %685, label %705

; <label>:685                                     ; preds = %679
  %686 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %687 = call i32 @_IO_getc(%struct._IO_FILE* %686)
  store i32 %687, i32* %c, align 4
  %688 = icmp eq i32 %687, -1
  br i1 %688, label %689, label %690

; <label>:689                                     ; preds = %685
  br label %700

; <label>:690                                     ; preds = %685
  %691 = load i32, i32* %c, align 4
  %692 = and i32 %691, 255
  %693 = trunc i32 %692 to i8
  %694 = load i32, i32* %i, align 4
  %695 = sext i32 %694 to i64
  %696 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %697 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %696, i32 0, i32 6
  %698 = load i8*, i8** %697, align 8
  %699 = getelementptr inbounds i8, i8* %698, i64 %695
  store i8 %693, i8* %699, align 1
  br label %700

; <label>:700                                     ; preds = %690, %689
  %701 = phi i32 [ -1, %689 ], [ 0, %690 ]
  br label %702

; <label>:702                                     ; preds = %700
  %703 = load i32, i32* %i, align 4
  %704 = add nsw i32 %703, 1
  store i32 %704, i32* %i, align 4
  br label %679

; <label>:705                                     ; preds = %679
  %706 = load %struct._IO_FILE*, %struct._IO_FILE** %packed_fp, align 8
  %707 = call i32 @fclose(%struct._IO_FILE* %706)
  %708 = load i32*, i32** %3, align 8
  store i32 1, i32* %708, align 4
  %709 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  store %struct.trie_rec* %709, %struct.trie_rec** %1
  br label %710

; <label>:710                                     ; preds = %705, %362, %272, %248, %95, %67, %32
  %711 = load %struct.trie_rec*, %struct.trie_rec** %1
  ret %struct.trie_rec* %711
}

; Function Attrs: nounwind uwtable
define %union.rec* @Hyphenate(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %next_link = alloca %union.rec*, align 8
  %T = alloca %struct.trie_rec*, align 8
  %lnum = alloca i32, align 4
  %str = alloca [2050 x i8], align 16
  %rate = alloca [2051 x i8], align 16
  %val = alloca [2051 x i8], align 16
  %class = alloca i8*, align 8
  %key = alloca i8*, align 8
  %ss = alloca i8*, align 8
  %s = alloca i8*, align 8
  %p = alloca i8*, align 8
  %rem = alloca i8*, align 8
  %lig = alloca i8*, align 8
  %a = alloca i8*, align 8
  %b = alloca i8*, align 8
  %start = alloca i32, align 4
  %stop = alloca i32, align 4
  %i = alloca i32, align 4
  %curr_node = alloca i32, align 4
  %next_node = alloca i32, align 4
  %pos = alloca i32, align 4
  %hyphenated = alloca i32, align 4
  %success = alloca i32, align 4
  %p1 = alloca i8*, align 8
  %q = alloca i8*, align 8
  %xval = alloca i8, align 1
  %i2 = alloca i32, align 4
  %skip = alloca i32, align 4
  %p3 = alloca i8*, align 8
  %q4 = alloca i8*, align 8
  %p5 = alloca i8*, align 8
  %q6 = alloca i8*, align 8
  %xval7 = alloca i8, align 1
  %i8 = alloca i32, align 4
  %skip9 = alloca i32, align 4
  %p10 = alloca i8*, align 8
  %q11 = alloca i8*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = bitcast %union.rec* %2 to %struct.word_type*
  %4 = getelementptr inbounds %struct.word_type, %struct.word_type* %3, i32 0, i32 1
  %5 = bitcast %union.FIRST_UNION* %4 to %struct.anon*
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 %8, 17
  br i1 %9, label %13, label %10

; <label>:10                                      ; preds = %0
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %12 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %10, %0
  %14 = load %union.rec*, %union.rec** %1, align 8
  %15 = bitcast %union.rec* %14 to %struct.word_type*
  %16 = getelementptr inbounds %struct.word_type, %struct.word_type* %15, i32 0, i32 0
  %17 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %16, i32 0, i64 0
  %18 = getelementptr inbounds %struct.LIST, %struct.LIST* %17, i32 0, i32 1
  %19 = load %union.rec*, %union.rec** %18, align 8
  store %union.rec* %19, %union.rec** %link, align 8
  br label %20

; <label>:20                                      ; preds = %2232, %13
  %21 = load %union.rec*, %union.rec** %link, align 8
  %22 = load %union.rec*, %union.rec** %1, align 8
  %23 = icmp ne %union.rec* %21, %22
  br i1 %23, label %24, label %2239

; <label>:24                                      ; preds = %20
  %25 = load %union.rec*, %union.rec** %link, align 8
  %26 = bitcast %union.rec* %25 to %struct.word_type*
  %27 = getelementptr inbounds %struct.word_type, %struct.word_type* %26, i32 0, i32 0
  %28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %27, i32 0, i64 1
  %29 = getelementptr inbounds %struct.LIST, %struct.LIST* %28, i32 0, i32 0
  %30 = load %union.rec*, %union.rec** %29, align 8
  store %union.rec* %30, %union.rec** %y, align 8
  br label %31

; <label>:31                                      ; preds = %41, %24
  %32 = load %union.rec*, %union.rec** %y, align 8
  %33 = bitcast %union.rec* %32 to %struct.word_type*
  %34 = getelementptr inbounds %struct.word_type, %struct.word_type* %33, i32 0, i32 1
  %35 = bitcast %union.FIRST_UNION* %34 to %struct.anon*
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 0
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

; <label>:40                                      ; preds = %31
  br label %41

; <label>:41                                      ; preds = %40
  %42 = load %union.rec*, %union.rec** %y, align 8
  %43 = bitcast %union.rec* %42 to %struct.word_type*
  %44 = getelementptr inbounds %struct.word_type, %struct.word_type* %43, i32 0, i32 0
  %45 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %44, i32 0, i64 1
  %46 = getelementptr inbounds %struct.LIST, %struct.LIST* %45, i32 0, i32 0
  %47 = load %union.rec*, %union.rec** %46, align 8
  store %union.rec* %47, %union.rec** %y, align 8
  br label %31

; <label>:48                                      ; preds = %31
  %49 = load %union.rec*, %union.rec** %y, align 8
  %50 = bitcast %union.rec* %49 to %struct.word_type*
  %51 = getelementptr inbounds %struct.word_type, %struct.word_type* %50, i32 0, i32 1
  %52 = bitcast %union.FIRST_UNION* %51 to %struct.anon*
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %52, i32 0, i32 0
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %55, 11
  br i1 %56, label %66, label %57

; <label>:57                                      ; preds = %48
  %58 = load %union.rec*, %union.rec** %y, align 8
  %59 = bitcast %union.rec* %58 to %struct.word_type*
  %60 = getelementptr inbounds %struct.word_type, %struct.word_type* %59, i32 0, i32 1
  %61 = bitcast %union.FIRST_UNION* %60 to %struct.anon*
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %61, i32 0, i32 0
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 12
  br i1 %65, label %66, label %83

; <label>:66                                      ; preds = %57, %48
  %67 = load %union.rec*, %union.rec** %y, align 8
  %68 = bitcast %union.rec* %67 to %struct.word_type*
  %69 = getelementptr inbounds %struct.word_type, %struct.word_type* %68, i32 0, i32 4
  %70 = getelementptr inbounds [4 x i8], [4 x i8]* %69, i32 0, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %83, label %74

; <label>:74                                      ; preds = %66
  %75 = load %union.rec*, %union.rec** %y, align 8
  %76 = bitcast %union.rec* %75 to %struct.word_type*
  %77 = getelementptr inbounds %struct.word_type, %struct.word_type* %76, i32 0, i32 2
  %78 = bitcast %union.SECOND_UNION* %77 to %struct.anon.1*
  %79 = bitcast %struct.anon.1* %78 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = lshr i32 %80, 31
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %109, label %83

; <label>:83                                      ; preds = %74, %66, %57
  %84 = load %union.rec*, %union.rec** %y, align 8
  %85 = bitcast %union.rec* %84 to %struct.word_type*
  %86 = getelementptr inbounds %struct.word_type, %struct.word_type* %85, i32 0, i32 1
  %87 = bitcast %union.FIRST_UNION* %86 to %struct.anon*
  %88 = getelementptr inbounds %struct.anon, %struct.anon* %87, i32 0, i32 0
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %108

; <label>:92                                      ; preds = %83
  %93 = load %union.rec*, %union.rec** %y, align 8
  %94 = bitcast %union.rec* %93 to %struct.gapobj_type*
  %95 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %94, i32 0, i32 3
  %96 = bitcast %struct.GAP* %95 to i16*
  %97 = load i16, i16* %96, align 4
  %98 = lshr i16 %97, 13
  %99 = zext i16 %98 to i32
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %108

; <label>:101                                     ; preds = %92
  %102 = load %union.rec*, %union.rec** %y, align 8
  %103 = bitcast %union.rec* %102 to %struct.gapobj_type*
  %104 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %103, i32 0, i32 3
  %105 = bitcast %struct.GAP* %104 to i16*
  %106 = load i16, i16* %105, align 4
  %107 = and i16 %106, -129
  store i16 %107, i16* %105, align 4
  br label %108

; <label>:108                                     ; preds = %101, %92, %83
  br label %2232

; <label>:109                                     ; preds = %74
  %110 = load %union.rec*, %union.rec** %y, align 8
  %111 = bitcast %union.rec* %110 to %struct.word_type*
  %112 = getelementptr inbounds %struct.word_type, %struct.word_type* %111, i32 0, i32 2
  %113 = bitcast %union.SECOND_UNION* %112 to %struct.anon.1*
  %114 = bitcast %struct.anon.1* %113 to i32*
  %115 = load i32, i32* %114, align 4
  %116 = lshr i32 %115, 23
  %117 = and i32 %116, 63
  store i32 %117, i32* %lnum, align 4
  %118 = load i32, i32* %lnum, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %130

; <label>:120                                     ; preds = %109
  %121 = load %union.rec*, %union.rec** %y, align 8
  %122 = bitcast %union.rec* %121 to %struct.word_type*
  %123 = getelementptr inbounds %struct.word_type, %struct.word_type* %122, i32 0, i32 1
  %124 = bitcast %union.FIRST_UNION* %123 to %struct.FILE_POS*
  %125 = load %union.rec*, %union.rec** %y, align 8
  %126 = bitcast %union.rec* %125 to %struct.word_type*
  %127 = getelementptr inbounds %struct.word_type, %struct.word_type* %126, i32 0, i32 4
  %128 = getelementptr inbounds [4 x i8], [4 x i8]* %127, i32 0, i32 0
  %129 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %124, i8* %128)
  br label %130

; <label>:130                                     ; preds = %120, %109
  %131 = load i32, i32* %lnum, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds [64 x %struct.trie_rec*], [64 x %struct.trie_rec*]* @HyphTables, i32 0, i64 %132
  %134 = load %struct.trie_rec*, %struct.trie_rec** %133, align 8
  store %struct.trie_rec* %134, %struct.trie_rec** %T, align 8
  %135 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %136 = icmp eq %struct.trie_rec* %135, null
  br i1 %136, label %137, label %157

; <label>:137                                     ; preds = %130
  %138 = load i32, i32* %lnum, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [64 x i32], [64 x i32]* @TriedFile, i32 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %152, label %143

; <label>:143                                     ; preds = %137
  %144 = load i32, i32* %lnum, align 4
  %145 = call %struct.trie_rec* @TrieRead(i32 %144, i32* %success)
  %146 = load i32, i32* %lnum, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds [64 x %struct.trie_rec*], [64 x %struct.trie_rec*]* @HyphTables, i32 0, i64 %147
  store %struct.trie_rec* %145, %struct.trie_rec** %148, align 8
  store %struct.trie_rec* %145, %struct.trie_rec** %T, align 8
  %149 = load i32, i32* %lnum, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds [64 x i32], [64 x i32]* @TriedFile, i32 0, i64 %150
  store i32 1, i32* %151, align 4
  br label %152

; <label>:152                                     ; preds = %143, %137
  %153 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %154 = icmp eq %struct.trie_rec* %153, null
  br i1 %154, label %155, label %156

; <label>:155                                     ; preds = %152
  br label %2232

; <label>:156                                     ; preds = %152
  br label %157

; <label>:157                                     ; preds = %156, %130
  %158 = load %union.rec*, %union.rec** %y, align 8
  %159 = bitcast %union.rec* %158 to %struct.word_type*
  %160 = getelementptr inbounds %struct.word_type, %struct.word_type* %159, i32 0, i32 4
  %161 = getelementptr inbounds [4 x i8], [4 x i8]* %160, i32 0, i32 0
  store i8* %161, i8** %key, align 8
  %162 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %163 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %162, i32 0, i32 2
  %164 = getelementptr inbounds [256 x i8], [256 x i8]* %163, i32 0, i32 0
  store i8* %164, i8** %class, align 8
  store i32 0, i32* %start, align 4
  br label %165

; <label>:165                                     ; preds = %178, %157
  %166 = load i32, i32* %start, align 4
  %167 = sext i32 %166 to i64
  %168 = load i8*, i8** %key, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 %167
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i64
  %172 = load i8*, i8** %class, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 %171
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %181

; <label>:177                                     ; preds = %165
  br label %178

; <label>:178                                     ; preds = %177
  %179 = load i32, i32* %start, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %start, align 4
  br label %165

; <label>:181                                     ; preds = %165
  %182 = load i32, i32* %start, align 4
  store i32 %182, i32* %stop, align 4
  br label %183

; <label>:183                                     ; preds = %196, %181
  %184 = load i32, i32* %stop, align 4
  %185 = sext i32 %184 to i64
  %186 = load i8*, i8** %key, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 %185
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i64
  %190 = load i8*, i8** %class, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 %189
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = icmp sgt i32 %193, 1
  br i1 %194, label %195, label %199

; <label>:195                                     ; preds = %183
  br label %196

; <label>:196                                     ; preds = %195
  %197 = load i32, i32* %stop, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %stop, align 4
  br label %183

; <label>:199                                     ; preds = %183
  %200 = load i32, i32* %stop, align 4
  %201 = sext i32 %200 to i64
  %202 = load i8*, i8** %key, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 %201
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = icmp eq i32 %205, 45
  br i1 %206, label %207, label %1003

; <label>:207                                     ; preds = %199
  %208 = load i32, i32* %stop, align 4
  %209 = add nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = load i8*, i8** %key, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 %210
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %217

; <label>:216                                     ; preds = %207
  br label %2232

; <label>:217                                     ; preds = %207
  %218 = load %union.rec*, %union.rec** %link, align 8
  %219 = bitcast %union.rec* %218 to %struct.word_type*
  %220 = getelementptr inbounds %struct.word_type, %struct.word_type* %219, i32 0, i32 0
  %221 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %220, i32 0, i64 0
  %222 = getelementptr inbounds %struct.LIST, %struct.LIST* %221, i32 0, i32 1
  %223 = load %union.rec*, %union.rec** %222, align 8
  store %union.rec* %223, %union.rec** %next_link, align 8
  %224 = load i32, i32* %stop, align 4
  %225 = add nsw i32 %224, 1
  %226 = sext i32 %225 to i64
  %227 = load i8*, i8** %key, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 %226
  %229 = load %union.rec*, %union.rec** %y, align 8
  %230 = bitcast %union.rec* %229 to %struct.word_type*
  %231 = getelementptr inbounds %struct.word_type, %struct.word_type* %230, i32 0, i32 1
  %232 = bitcast %union.FIRST_UNION* %231 to %struct.FILE_POS*
  %233 = call %union.rec* @MakeWord(i32 11, i8* %228, %struct.FILE_POS* %232)
  store %union.rec* %233, %union.rec** %z, align 8
  %234 = load %union.rec*, %union.rec** %y, align 8
  %235 = bitcast %union.rec* %234 to %struct.word_type*
  %236 = getelementptr inbounds %struct.word_type, %struct.word_type* %235, i32 0, i32 2
  %237 = bitcast %union.SECOND_UNION* %236 to %struct.anon.1*
  %238 = bitcast %struct.anon.1* %237 to i32*
  %239 = load i32, i32* %238, align 4
  %240 = and i32 %239, 4095
  %241 = load %union.rec*, %union.rec** %z, align 8
  %242 = bitcast %union.rec* %241 to %struct.word_type*
  %243 = getelementptr inbounds %struct.word_type, %struct.word_type* %242, i32 0, i32 2
  %244 = bitcast %union.SECOND_UNION* %243 to %struct.anon.1*
  %245 = bitcast %struct.anon.1* %244 to i32*
  %246 = load i32, i32* %245, align 4
  %247 = and i32 %240, 4095
  %248 = and i32 %246, -4096
  %249 = or i32 %248, %247
  store i32 %249, i32* %245, align 4
  %250 = load %union.rec*, %union.rec** %y, align 8
  %251 = bitcast %union.rec* %250 to %struct.word_type*
  %252 = getelementptr inbounds %struct.word_type, %struct.word_type* %251, i32 0, i32 2
  %253 = bitcast %union.SECOND_UNION* %252 to %struct.anon.1*
  %254 = bitcast %struct.anon.1* %253 to i32*
  %255 = load i32, i32* %254, align 4
  %256 = lshr i32 %255, 12
  %257 = and i32 %256, 1023
  %258 = load %union.rec*, %union.rec** %z, align 8
  %259 = bitcast %union.rec* %258 to %struct.word_type*
  %260 = getelementptr inbounds %struct.word_type, %struct.word_type* %259, i32 0, i32 2
  %261 = bitcast %union.SECOND_UNION* %260 to %struct.anon.1*
  %262 = bitcast %struct.anon.1* %261 to i32*
  %263 = load i32, i32* %262, align 4
  %264 = and i32 %257, 1023
  %265 = shl i32 %264, 12
  %266 = and i32 %263, -4190209
  %267 = or i32 %266, %265
  store i32 %267, i32* %262, align 4
  %268 = load %union.rec*, %union.rec** %y, align 8
  %269 = bitcast %union.rec* %268 to %struct.word_type*
  %270 = getelementptr inbounds %struct.word_type, %struct.word_type* %269, i32 0, i32 2
  %271 = bitcast %union.SECOND_UNION* %270 to %struct.anon.1*
  %272 = bitcast %struct.anon.1* %271 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = lshr i32 %273, 22
  %275 = and i32 %274, 1
  %276 = load %union.rec*, %union.rec** %z, align 8
  %277 = bitcast %union.rec* %276 to %struct.word_type*
  %278 = getelementptr inbounds %struct.word_type, %struct.word_type* %277, i32 0, i32 2
  %279 = bitcast %union.SECOND_UNION* %278 to %struct.anon.1*
  %280 = bitcast %struct.anon.1* %279 to i32*
  %281 = load i32, i32* %280, align 4
  %282 = and i32 %275, 1
  %283 = shl i32 %282, 22
  %284 = and i32 %281, -4194305
  %285 = or i32 %284, %283
  store i32 %285, i32* %280, align 4
  %286 = load %union.rec*, %union.rec** %y, align 8
  %287 = bitcast %union.rec* %286 to %struct.word_type*
  %288 = getelementptr inbounds %struct.word_type, %struct.word_type* %287, i32 0, i32 2
  %289 = bitcast %union.SECOND_UNION* %288 to %struct.anon.1*
  %290 = bitcast %struct.anon.1* %289 to i32*
  %291 = load i32, i32* %290, align 4
  %292 = lshr i32 %291, 23
  %293 = and i32 %292, 63
  %294 = load %union.rec*, %union.rec** %z, align 8
  %295 = bitcast %union.rec* %294 to %struct.word_type*
  %296 = getelementptr inbounds %struct.word_type, %struct.word_type* %295, i32 0, i32 2
  %297 = bitcast %union.SECOND_UNION* %296 to %struct.anon.1*
  %298 = bitcast %struct.anon.1* %297 to i32*
  %299 = load i32, i32* %298, align 4
  %300 = and i32 %293, 63
  %301 = shl i32 %300, 23
  %302 = and i32 %299, -528482305
  %303 = or i32 %302, %301
  store i32 %303, i32* %298, align 4
  %304 = load %union.rec*, %union.rec** %y, align 8
  %305 = bitcast %union.rec* %304 to %struct.word_type*
  %306 = getelementptr inbounds %struct.word_type, %struct.word_type* %305, i32 0, i32 2
  %307 = bitcast %union.SECOND_UNION* %306 to %struct.anon.1*
  %308 = bitcast %struct.anon.1* %307 to i32*
  %309 = load i32, i32* %308, align 4
  %310 = lshr i32 %309, 31
  %311 = load %union.rec*, %union.rec** %z, align 8
  %312 = bitcast %union.rec* %311 to %struct.word_type*
  %313 = getelementptr inbounds %struct.word_type, %struct.word_type* %312, i32 0, i32 2
  %314 = bitcast %union.SECOND_UNION* %313 to %struct.anon.1*
  %315 = bitcast %struct.anon.1* %314 to i32*
  %316 = load i32, i32* %315, align 4
  %317 = and i32 %310, 1
  %318 = shl i32 %317, 31
  %319 = and i32 %316, 2147483647
  %320 = or i32 %319, %318
  store i32 %320, i32* %315, align 4
  %321 = load %union.rec*, %union.rec** %y, align 8
  %322 = bitcast %union.rec* %321 to %struct.word_type*
  %323 = getelementptr inbounds %struct.word_type, %struct.word_type* %322, i32 0, i32 2
  %324 = bitcast %union.SECOND_UNION* %323 to %struct.anon.1*
  %325 = bitcast %struct.anon.1* %324 to i32*
  %326 = load i32, i32* %325, align 4
  %327 = lshr i32 %326, 29
  %328 = and i32 %327, 3
  %329 = load %union.rec*, %union.rec** %z, align 8
  %330 = bitcast %union.rec* %329 to %struct.word_type*
  %331 = getelementptr inbounds %struct.word_type, %struct.word_type* %330, i32 0, i32 2
  %332 = bitcast %union.SECOND_UNION* %331 to %struct.anon.1*
  %333 = bitcast %struct.anon.1* %332 to i32*
  %334 = load i32, i32* %333, align 4
  %335 = and i32 %328, 3
  %336 = shl i32 %335, 29
  %337 = and i32 %334, -1610612737
  %338 = or i32 %337, %336
  store i32 %338, i32* %333, align 4
  %339 = load %union.rec*, %union.rec** %z, align 8
  call void @FontWordSize(%union.rec* %339)
  %340 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %341 = zext i8 %340 to i32
  store i32 %341, i32* @zz_size, align 4
  %342 = sext i32 %341 to i64
  %343 = icmp uge i64 %342, 265
  br i1 %343, label %344, label %347

; <label>:344                                     ; preds = %217
  %345 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %346 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %345)
  br label %372

; <label>:347                                     ; preds = %217
  %348 = load i32, i32* @zz_size, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %349
  %351 = load %union.rec*, %union.rec** %350, align 8
  %352 = icmp eq %union.rec* %351, null
  br i1 %352, label %353, label %357

; <label>:353                                     ; preds = %347
  %354 = load i32, i32* @zz_size, align 4
  %355 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %356 = call %union.rec* @GetMemory(i32 %354, %struct.FILE_POS* %355)
  store %union.rec* %356, %union.rec** @zz_hold, align 8
  br label %371

; <label>:357                                     ; preds = %347
  %358 = load i32, i32* @zz_size, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %359
  %361 = load %union.rec*, %union.rec** %360, align 8
  store %union.rec* %361, %union.rec** @zz_hold, align 8
  store %union.rec* %361, %union.rec** @zz_hold, align 8
  %362 = load %union.rec*, %union.rec** @zz_hold, align 8
  %363 = bitcast %union.rec* %362 to %struct.word_type*
  %364 = getelementptr inbounds %struct.word_type, %struct.word_type* %363, i32 0, i32 0
  %365 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %364, i32 0, i64 0
  %366 = getelementptr inbounds %struct.LIST, %struct.LIST* %365, i32 0, i32 0
  %367 = load %union.rec*, %union.rec** %366, align 8
  %368 = load i32, i32* @zz_size, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %369
  store %union.rec* %367, %union.rec** %370, align 8
  br label %371

; <label>:371                                     ; preds = %357, %353
  br label %372

; <label>:372                                     ; preds = %371, %344
  %373 = load %union.rec*, %union.rec** @zz_hold, align 8
  %374 = bitcast %union.rec* %373 to %struct.word_type*
  %375 = getelementptr inbounds %struct.word_type, %struct.word_type* %374, i32 0, i32 1
  %376 = bitcast %union.FIRST_UNION* %375 to %struct.anon*
  %377 = getelementptr inbounds %struct.anon, %struct.anon* %376, i32 0, i32 0
  store i8 0, i8* %377, align 1
  %378 = load %union.rec*, %union.rec** @zz_hold, align 8
  %379 = load %union.rec*, %union.rec** @zz_hold, align 8
  %380 = bitcast %union.rec* %379 to %struct.word_type*
  %381 = getelementptr inbounds %struct.word_type, %struct.word_type* %380, i32 0, i32 0
  %382 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %381, i32 0, i64 1
  %383 = getelementptr inbounds %struct.LIST, %struct.LIST* %382, i32 0, i32 1
  store %union.rec* %378, %union.rec** %383, align 8
  %384 = load %union.rec*, %union.rec** @zz_hold, align 8
  %385 = bitcast %union.rec* %384 to %struct.word_type*
  %386 = getelementptr inbounds %struct.word_type, %struct.word_type* %385, i32 0, i32 0
  %387 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %386, i32 0, i64 1
  %388 = getelementptr inbounds %struct.LIST, %struct.LIST* %387, i32 0, i32 0
  store %union.rec* %378, %union.rec** %388, align 8
  %389 = load %union.rec*, %union.rec** @zz_hold, align 8
  %390 = bitcast %union.rec* %389 to %struct.word_type*
  %391 = getelementptr inbounds %struct.word_type, %struct.word_type* %390, i32 0, i32 0
  %392 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %391, i32 0, i64 0
  %393 = getelementptr inbounds %struct.LIST, %struct.LIST* %392, i32 0, i32 1
  store %union.rec* %378, %union.rec** %393, align 8
  %394 = load %union.rec*, %union.rec** @zz_hold, align 8
  %395 = bitcast %union.rec* %394 to %struct.word_type*
  %396 = getelementptr inbounds %struct.word_type, %struct.word_type* %395, i32 0, i32 0
  %397 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %396, i32 0, i64 0
  %398 = getelementptr inbounds %struct.LIST, %struct.LIST* %397, i32 0, i32 0
  store %union.rec* %378, %union.rec** %398, align 8
  store %union.rec* %378, %union.rec** @xx_link, align 8
  %399 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %399, %union.rec** @zz_res, align 8
  %400 = load %union.rec*, %union.rec** %link, align 8
  %401 = bitcast %union.rec* %400 to %struct.word_type*
  %402 = getelementptr inbounds %struct.word_type, %struct.word_type* %401, i32 0, i32 0
  %403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %402, i32 0, i64 0
  %404 = getelementptr inbounds %struct.LIST, %struct.LIST* %403, i32 0, i32 1
  %405 = load %union.rec*, %union.rec** %404, align 8
  store %union.rec* %405, %union.rec** @zz_hold, align 8
  %406 = load %union.rec*, %union.rec** @zz_hold, align 8
  %407 = icmp eq %union.rec* %406, null
  br i1 %407, label %408, label %410

; <label>:408                                     ; preds = %372
  %409 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %458

; <label>:410                                     ; preds = %372
  %411 = load %union.rec*, %union.rec** @zz_res, align 8
  %412 = icmp eq %union.rec* %411, null
  br i1 %412, label %413, label %415

; <label>:413                                     ; preds = %410
  %414 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %456

; <label>:415                                     ; preds = %410
  %416 = load %union.rec*, %union.rec** @zz_hold, align 8
  %417 = bitcast %union.rec* %416 to %struct.word_type*
  %418 = getelementptr inbounds %struct.word_type, %struct.word_type* %417, i32 0, i32 0
  %419 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %418, i32 0, i64 0
  %420 = getelementptr inbounds %struct.LIST, %struct.LIST* %419, i32 0, i32 0
  %421 = load %union.rec*, %union.rec** %420, align 8
  store %union.rec* %421, %union.rec** @zz_tmp, align 8
  %422 = load %union.rec*, %union.rec** @zz_res, align 8
  %423 = bitcast %union.rec* %422 to %struct.word_type*
  %424 = getelementptr inbounds %struct.word_type, %struct.word_type* %423, i32 0, i32 0
  %425 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %424, i32 0, i64 0
  %426 = getelementptr inbounds %struct.LIST, %struct.LIST* %425, i32 0, i32 0
  %427 = load %union.rec*, %union.rec** %426, align 8
  %428 = load %union.rec*, %union.rec** @zz_hold, align 8
  %429 = bitcast %union.rec* %428 to %struct.word_type*
  %430 = getelementptr inbounds %struct.word_type, %struct.word_type* %429, i32 0, i32 0
  %431 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %430, i32 0, i64 0
  %432 = getelementptr inbounds %struct.LIST, %struct.LIST* %431, i32 0, i32 0
  store %union.rec* %427, %union.rec** %432, align 8
  %433 = load %union.rec*, %union.rec** @zz_hold, align 8
  %434 = load %union.rec*, %union.rec** @zz_res, align 8
  %435 = bitcast %union.rec* %434 to %struct.word_type*
  %436 = getelementptr inbounds %struct.word_type, %struct.word_type* %435, i32 0, i32 0
  %437 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %436, i32 0, i64 0
  %438 = getelementptr inbounds %struct.LIST, %struct.LIST* %437, i32 0, i32 0
  %439 = load %union.rec*, %union.rec** %438, align 8
  %440 = bitcast %union.rec* %439 to %struct.word_type*
  %441 = getelementptr inbounds %struct.word_type, %struct.word_type* %440, i32 0, i32 0
  %442 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %441, i32 0, i64 0
  %443 = getelementptr inbounds %struct.LIST, %struct.LIST* %442, i32 0, i32 1
  store %union.rec* %433, %union.rec** %443, align 8
  %444 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %445 = load %union.rec*, %union.rec** @zz_res, align 8
  %446 = bitcast %union.rec* %445 to %struct.word_type*
  %447 = getelementptr inbounds %struct.word_type, %struct.word_type* %446, i32 0, i32 0
  %448 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %447, i32 0, i64 0
  %449 = getelementptr inbounds %struct.LIST, %struct.LIST* %448, i32 0, i32 0
  store %union.rec* %444, %union.rec** %449, align 8
  %450 = load %union.rec*, %union.rec** @zz_res, align 8
  %451 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %452 = bitcast %union.rec* %451 to %struct.word_type*
  %453 = getelementptr inbounds %struct.word_type, %struct.word_type* %452, i32 0, i32 0
  %454 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %453, i32 0, i64 0
  %455 = getelementptr inbounds %struct.LIST, %struct.LIST* %454, i32 0, i32 1
  store %union.rec* %450, %union.rec** %455, align 8
  br label %456

; <label>:456                                     ; preds = %415, %413
  %457 = phi %union.rec* [ %414, %413 ], [ %450, %415 ]
  br label %458

; <label>:458                                     ; preds = %456, %408
  %459 = phi %union.rec* [ %409, %408 ], [ %457, %456 ]
  %460 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %460, %union.rec** @zz_res, align 8
  %461 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %461, %union.rec** @zz_hold, align 8
  %462 = load %union.rec*, %union.rec** @zz_hold, align 8
  %463 = icmp eq %union.rec* %462, null
  br i1 %463, label %464, label %466

; <label>:464                                     ; preds = %458
  %465 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %514

; <label>:466                                     ; preds = %458
  %467 = load %union.rec*, %union.rec** @zz_res, align 8
  %468 = icmp eq %union.rec* %467, null
  br i1 %468, label %469, label %471

; <label>:469                                     ; preds = %466
  %470 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %512

; <label>:471                                     ; preds = %466
  %472 = load %union.rec*, %union.rec** @zz_hold, align 8
  %473 = bitcast %union.rec* %472 to %struct.word_type*
  %474 = getelementptr inbounds %struct.word_type, %struct.word_type* %473, i32 0, i32 0
  %475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %474, i32 0, i64 1
  %476 = getelementptr inbounds %struct.LIST, %struct.LIST* %475, i32 0, i32 0
  %477 = load %union.rec*, %union.rec** %476, align 8
  store %union.rec* %477, %union.rec** @zz_tmp, align 8
  %478 = load %union.rec*, %union.rec** @zz_res, align 8
  %479 = bitcast %union.rec* %478 to %struct.word_type*
  %480 = getelementptr inbounds %struct.word_type, %struct.word_type* %479, i32 0, i32 0
  %481 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %480, i32 0, i64 1
  %482 = getelementptr inbounds %struct.LIST, %struct.LIST* %481, i32 0, i32 0
  %483 = load %union.rec*, %union.rec** %482, align 8
  %484 = load %union.rec*, %union.rec** @zz_hold, align 8
  %485 = bitcast %union.rec* %484 to %struct.word_type*
  %486 = getelementptr inbounds %struct.word_type, %struct.word_type* %485, i32 0, i32 0
  %487 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %486, i32 0, i64 1
  %488 = getelementptr inbounds %struct.LIST, %struct.LIST* %487, i32 0, i32 0
  store %union.rec* %483, %union.rec** %488, align 8
  %489 = load %union.rec*, %union.rec** @zz_hold, align 8
  %490 = load %union.rec*, %union.rec** @zz_res, align 8
  %491 = bitcast %union.rec* %490 to %struct.word_type*
  %492 = getelementptr inbounds %struct.word_type, %struct.word_type* %491, i32 0, i32 0
  %493 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %492, i32 0, i64 1
  %494 = getelementptr inbounds %struct.LIST, %struct.LIST* %493, i32 0, i32 0
  %495 = load %union.rec*, %union.rec** %494, align 8
  %496 = bitcast %union.rec* %495 to %struct.word_type*
  %497 = getelementptr inbounds %struct.word_type, %struct.word_type* %496, i32 0, i32 0
  %498 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %497, i32 0, i64 1
  %499 = getelementptr inbounds %struct.LIST, %struct.LIST* %498, i32 0, i32 1
  store %union.rec* %489, %union.rec** %499, align 8
  %500 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %501 = load %union.rec*, %union.rec** @zz_res, align 8
  %502 = bitcast %union.rec* %501 to %struct.word_type*
  %503 = getelementptr inbounds %struct.word_type, %struct.word_type* %502, i32 0, i32 0
  %504 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %503, i32 0, i64 1
  %505 = getelementptr inbounds %struct.LIST, %struct.LIST* %504, i32 0, i32 0
  store %union.rec* %500, %union.rec** %505, align 8
  %506 = load %union.rec*, %union.rec** @zz_res, align 8
  %507 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %508 = bitcast %union.rec* %507 to %struct.word_type*
  %509 = getelementptr inbounds %struct.word_type, %struct.word_type* %508, i32 0, i32 0
  %510 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %509, i32 0, i64 1
  %511 = getelementptr inbounds %struct.LIST, %struct.LIST* %510, i32 0, i32 1
  store %union.rec* %506, %union.rec** %511, align 8
  br label %512

; <label>:512                                     ; preds = %471, %469
  %513 = phi %union.rec* [ %470, %469 ], [ %506, %471 ]
  br label %514

; <label>:514                                     ; preds = %512, %464
  %515 = phi %union.rec* [ %465, %464 ], [ %513, %512 ]
  %516 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %517 = zext i8 %516 to i32
  store i32 %517, i32* @zz_size, align 4
  %518 = sext i32 %517 to i64
  %519 = icmp uge i64 %518, 265
  br i1 %519, label %520, label %523

; <label>:520                                     ; preds = %514
  %521 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %522 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %521)
  br label %548

; <label>:523                                     ; preds = %514
  %524 = load i32, i32* @zz_size, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %525
  %527 = load %union.rec*, %union.rec** %526, align 8
  %528 = icmp eq %union.rec* %527, null
  br i1 %528, label %529, label %533

; <label>:529                                     ; preds = %523
  %530 = load i32, i32* @zz_size, align 4
  %531 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %532 = call %union.rec* @GetMemory(i32 %530, %struct.FILE_POS* %531)
  store %union.rec* %532, %union.rec** @zz_hold, align 8
  br label %547

; <label>:533                                     ; preds = %523
  %534 = load i32, i32* @zz_size, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %535
  %537 = load %union.rec*, %union.rec** %536, align 8
  store %union.rec* %537, %union.rec** @zz_hold, align 8
  store %union.rec* %537, %union.rec** @zz_hold, align 8
  %538 = load %union.rec*, %union.rec** @zz_hold, align 8
  %539 = bitcast %union.rec* %538 to %struct.word_type*
  %540 = getelementptr inbounds %struct.word_type, %struct.word_type* %539, i32 0, i32 0
  %541 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %540, i32 0, i64 0
  %542 = getelementptr inbounds %struct.LIST, %struct.LIST* %541, i32 0, i32 0
  %543 = load %union.rec*, %union.rec** %542, align 8
  %544 = load i32, i32* @zz_size, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %545
  store %union.rec* %543, %union.rec** %546, align 8
  br label %547

; <label>:547                                     ; preds = %533, %529
  br label %548

; <label>:548                                     ; preds = %547, %520
  %549 = load %union.rec*, %union.rec** @zz_hold, align 8
  %550 = bitcast %union.rec* %549 to %struct.word_type*
  %551 = getelementptr inbounds %struct.word_type, %struct.word_type* %550, i32 0, i32 1
  %552 = bitcast %union.FIRST_UNION* %551 to %struct.anon*
  %553 = getelementptr inbounds %struct.anon, %struct.anon* %552, i32 0, i32 0
  store i8 1, i8* %553, align 1
  %554 = load %union.rec*, %union.rec** @zz_hold, align 8
  %555 = load %union.rec*, %union.rec** @zz_hold, align 8
  %556 = bitcast %union.rec* %555 to %struct.word_type*
  %557 = getelementptr inbounds %struct.word_type, %struct.word_type* %556, i32 0, i32 0
  %558 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %557, i32 0, i64 1
  %559 = getelementptr inbounds %struct.LIST, %struct.LIST* %558, i32 0, i32 1
  store %union.rec* %554, %union.rec** %559, align 8
  %560 = load %union.rec*, %union.rec** @zz_hold, align 8
  %561 = bitcast %union.rec* %560 to %struct.word_type*
  %562 = getelementptr inbounds %struct.word_type, %struct.word_type* %561, i32 0, i32 0
  %563 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %562, i32 0, i64 1
  %564 = getelementptr inbounds %struct.LIST, %struct.LIST* %563, i32 0, i32 0
  store %union.rec* %554, %union.rec** %564, align 8
  %565 = load %union.rec*, %union.rec** @zz_hold, align 8
  %566 = bitcast %union.rec* %565 to %struct.word_type*
  %567 = getelementptr inbounds %struct.word_type, %struct.word_type* %566, i32 0, i32 0
  %568 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %567, i32 0, i64 0
  %569 = getelementptr inbounds %struct.LIST, %struct.LIST* %568, i32 0, i32 1
  store %union.rec* %554, %union.rec** %569, align 8
  %570 = load %union.rec*, %union.rec** @zz_hold, align 8
  %571 = bitcast %union.rec* %570 to %struct.word_type*
  %572 = getelementptr inbounds %struct.word_type, %struct.word_type* %571, i32 0, i32 0
  %573 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %572, i32 0, i64 0
  %574 = getelementptr inbounds %struct.LIST, %struct.LIST* %573, i32 0, i32 0
  store %union.rec* %554, %union.rec** %574, align 8
  store %union.rec* %554, %union.rec** %z, align 8
  %575 = load %union.rec*, %union.rec** %z, align 8
  %576 = bitcast %union.rec* %575 to %struct.word_type*
  %577 = getelementptr inbounds %struct.word_type, %struct.word_type* %576, i32 0, i32 2
  %578 = bitcast %union.SECOND_UNION* %577 to %struct.anon.0*
  %579 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %578, i32 0, i32 2
  store i8 0, i8* %579, align 1
  %580 = load %union.rec*, %union.rec** %z, align 8
  %581 = bitcast %union.rec* %580 to %struct.word_type*
  %582 = getelementptr inbounds %struct.word_type, %struct.word_type* %581, i32 0, i32 2
  %583 = bitcast %union.SECOND_UNION* %582 to %struct.anon.0*
  %584 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %583, i32 0, i32 1
  store i8 0, i8* %584, align 1
  %585 = load %union.rec*, %union.rec** %z, align 8
  %586 = bitcast %union.rec* %585 to %struct.gapobj_type*
  %587 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %586, i32 0, i32 3
  %588 = bitcast %struct.GAP* %587 to i16*
  %589 = load i16, i16* %588, align 4
  %590 = and i16 %589, -129
  store i16 %590, i16* %588, align 4
  %591 = load %union.rec*, %union.rec** %z, align 8
  %592 = bitcast %union.rec* %591 to %struct.gapobj_type*
  %593 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %592, i32 0, i32 3
  %594 = bitcast %struct.GAP* %593 to i16*
  %595 = load i16, i16* %594, align 4
  %596 = and i16 %595, -257
  store i16 %596, i16* %594, align 4
  %597 = load %union.rec*, %union.rec** %z, align 8
  %598 = bitcast %union.rec* %597 to %struct.gapobj_type*
  %599 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %598, i32 0, i32 3
  %600 = bitcast %struct.GAP* %599 to i16*
  %601 = load i16, i16* %600, align 4
  %602 = and i16 %601, -513
  %603 = or i16 %602, 512
  store i16 %603, i16* %600, align 4
  %604 = load %union.rec*, %union.rec** %z, align 8
  %605 = bitcast %union.rec* %604 to %struct.gapobj_type*
  %606 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %605, i32 0, i32 3
  %607 = bitcast %struct.GAP* %606 to i16*
  %608 = load i16, i16* %607, align 4
  %609 = and i16 %608, -7169
  %610 = or i16 %609, 1024
  store i16 %610, i16* %607, align 4
  %611 = load %union.rec*, %union.rec** %z, align 8
  %612 = bitcast %union.rec* %611 to %struct.gapobj_type*
  %613 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %612, i32 0, i32 3
  %614 = bitcast %struct.GAP* %613 to i16*
  %615 = load i16, i16* %614, align 4
  %616 = and i16 %615, 8191
  %617 = or i16 %616, 16384
  store i16 %617, i16* %614, align 4
  %618 = load %union.rec*, %union.rec** %z, align 8
  %619 = bitcast %union.rec* %618 to %struct.gapobj_type*
  %620 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %619, i32 0, i32 3
  %621 = getelementptr inbounds %struct.GAP, %struct.GAP* %620, i32 0, i32 1
  store i16 0, i16* %621, align 2
  %622 = load %union.rec*, %union.rec** %y, align 8
  %623 = bitcast %union.rec* %622 to %struct.word_type*
  %624 = getelementptr inbounds %struct.word_type, %struct.word_type* %623, i32 0, i32 2
  %625 = bitcast %union.SECOND_UNION* %624 to %struct.anon.1*
  %626 = bitcast %struct.anon.1* %625 to i32*
  %627 = load i32, i32* %626, align 4
  %628 = lshr i32 %627, 29
  %629 = and i32 %628, 3
  %630 = load %union.rec*, %union.rec** %z, align 8
  %631 = bitcast %union.rec* %630 to %struct.word_type*
  %632 = getelementptr inbounds %struct.word_type, %struct.word_type* %631, i32 0, i32 2
  %633 = bitcast %union.SECOND_UNION* %632 to %struct.anon.1*
  %634 = bitcast %struct.anon.1* %633 to i32*
  %635 = load i32, i32* %634, align 4
  %636 = and i32 %629, 3
  %637 = shl i32 %636, 29
  %638 = and i32 %635, -1610612737
  %639 = or i32 %638, %637
  store i32 %639, i32* %634, align 4
  %640 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %641 = zext i8 %640 to i32
  store i32 %641, i32* @zz_size, align 4
  %642 = sext i32 %641 to i64
  %643 = icmp uge i64 %642, 265
  br i1 %643, label %644, label %647

; <label>:644                                     ; preds = %548
  %645 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %646 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %645)
  br label %672

; <label>:647                                     ; preds = %548
  %648 = load i32, i32* @zz_size, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %649
  %651 = load %union.rec*, %union.rec** %650, align 8
  %652 = icmp eq %union.rec* %651, null
  br i1 %652, label %653, label %657

; <label>:653                                     ; preds = %647
  %654 = load i32, i32* @zz_size, align 4
  %655 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %656 = call %union.rec* @GetMemory(i32 %654, %struct.FILE_POS* %655)
  store %union.rec* %656, %union.rec** @zz_hold, align 8
  br label %671

; <label>:657                                     ; preds = %647
  %658 = load i32, i32* @zz_size, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %659
  %661 = load %union.rec*, %union.rec** %660, align 8
  store %union.rec* %661, %union.rec** @zz_hold, align 8
  store %union.rec* %661, %union.rec** @zz_hold, align 8
  %662 = load %union.rec*, %union.rec** @zz_hold, align 8
  %663 = bitcast %union.rec* %662 to %struct.word_type*
  %664 = getelementptr inbounds %struct.word_type, %struct.word_type* %663, i32 0, i32 0
  %665 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %664, i32 0, i64 0
  %666 = getelementptr inbounds %struct.LIST, %struct.LIST* %665, i32 0, i32 0
  %667 = load %union.rec*, %union.rec** %666, align 8
  %668 = load i32, i32* @zz_size, align 4
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %669
  store %union.rec* %667, %union.rec** %670, align 8
  br label %671

; <label>:671                                     ; preds = %657, %653
  br label %672

; <label>:672                                     ; preds = %671, %644
  %673 = load %union.rec*, %union.rec** @zz_hold, align 8
  %674 = bitcast %union.rec* %673 to %struct.word_type*
  %675 = getelementptr inbounds %struct.word_type, %struct.word_type* %674, i32 0, i32 1
  %676 = bitcast %union.FIRST_UNION* %675 to %struct.anon*
  %677 = getelementptr inbounds %struct.anon, %struct.anon* %676, i32 0, i32 0
  store i8 0, i8* %677, align 1
  %678 = load %union.rec*, %union.rec** @zz_hold, align 8
  %679 = load %union.rec*, %union.rec** @zz_hold, align 8
  %680 = bitcast %union.rec* %679 to %struct.word_type*
  %681 = getelementptr inbounds %struct.word_type, %struct.word_type* %680, i32 0, i32 0
  %682 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %681, i32 0, i64 1
  %683 = getelementptr inbounds %struct.LIST, %struct.LIST* %682, i32 0, i32 1
  store %union.rec* %678, %union.rec** %683, align 8
  %684 = load %union.rec*, %union.rec** @zz_hold, align 8
  %685 = bitcast %union.rec* %684 to %struct.word_type*
  %686 = getelementptr inbounds %struct.word_type, %struct.word_type* %685, i32 0, i32 0
  %687 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %686, i32 0, i64 1
  %688 = getelementptr inbounds %struct.LIST, %struct.LIST* %687, i32 0, i32 0
  store %union.rec* %678, %union.rec** %688, align 8
  %689 = load %union.rec*, %union.rec** @zz_hold, align 8
  %690 = bitcast %union.rec* %689 to %struct.word_type*
  %691 = getelementptr inbounds %struct.word_type, %struct.word_type* %690, i32 0, i32 0
  %692 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %691, i32 0, i64 0
  %693 = getelementptr inbounds %struct.LIST, %struct.LIST* %692, i32 0, i32 1
  store %union.rec* %678, %union.rec** %693, align 8
  %694 = load %union.rec*, %union.rec** @zz_hold, align 8
  %695 = bitcast %union.rec* %694 to %struct.word_type*
  %696 = getelementptr inbounds %struct.word_type, %struct.word_type* %695, i32 0, i32 0
  %697 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %696, i32 0, i64 0
  %698 = getelementptr inbounds %struct.LIST, %struct.LIST* %697, i32 0, i32 0
  store %union.rec* %678, %union.rec** %698, align 8
  store %union.rec* %678, %union.rec** @xx_link, align 8
  %699 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %699, %union.rec** @zz_res, align 8
  %700 = load %union.rec*, %union.rec** %link, align 8
  %701 = bitcast %union.rec* %700 to %struct.word_type*
  %702 = getelementptr inbounds %struct.word_type, %struct.word_type* %701, i32 0, i32 0
  %703 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %702, i32 0, i64 0
  %704 = getelementptr inbounds %struct.LIST, %struct.LIST* %703, i32 0, i32 1
  %705 = load %union.rec*, %union.rec** %704, align 8
  store %union.rec* %705, %union.rec** @zz_hold, align 8
  %706 = load %union.rec*, %union.rec** @zz_hold, align 8
  %707 = icmp eq %union.rec* %706, null
  br i1 %707, label %708, label %710

; <label>:708                                     ; preds = %672
  %709 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %758

; <label>:710                                     ; preds = %672
  %711 = load %union.rec*, %union.rec** @zz_res, align 8
  %712 = icmp eq %union.rec* %711, null
  br i1 %712, label %713, label %715

; <label>:713                                     ; preds = %710
  %714 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %756

; <label>:715                                     ; preds = %710
  %716 = load %union.rec*, %union.rec** @zz_hold, align 8
  %717 = bitcast %union.rec* %716 to %struct.word_type*
  %718 = getelementptr inbounds %struct.word_type, %struct.word_type* %717, i32 0, i32 0
  %719 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %718, i32 0, i64 0
  %720 = getelementptr inbounds %struct.LIST, %struct.LIST* %719, i32 0, i32 0
  %721 = load %union.rec*, %union.rec** %720, align 8
  store %union.rec* %721, %union.rec** @zz_tmp, align 8
  %722 = load %union.rec*, %union.rec** @zz_res, align 8
  %723 = bitcast %union.rec* %722 to %struct.word_type*
  %724 = getelementptr inbounds %struct.word_type, %struct.word_type* %723, i32 0, i32 0
  %725 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %724, i32 0, i64 0
  %726 = getelementptr inbounds %struct.LIST, %struct.LIST* %725, i32 0, i32 0
  %727 = load %union.rec*, %union.rec** %726, align 8
  %728 = load %union.rec*, %union.rec** @zz_hold, align 8
  %729 = bitcast %union.rec* %728 to %struct.word_type*
  %730 = getelementptr inbounds %struct.word_type, %struct.word_type* %729, i32 0, i32 0
  %731 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %730, i32 0, i64 0
  %732 = getelementptr inbounds %struct.LIST, %struct.LIST* %731, i32 0, i32 0
  store %union.rec* %727, %union.rec** %732, align 8
  %733 = load %union.rec*, %union.rec** @zz_hold, align 8
  %734 = load %union.rec*, %union.rec** @zz_res, align 8
  %735 = bitcast %union.rec* %734 to %struct.word_type*
  %736 = getelementptr inbounds %struct.word_type, %struct.word_type* %735, i32 0, i32 0
  %737 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %736, i32 0, i64 0
  %738 = getelementptr inbounds %struct.LIST, %struct.LIST* %737, i32 0, i32 0
  %739 = load %union.rec*, %union.rec** %738, align 8
  %740 = bitcast %union.rec* %739 to %struct.word_type*
  %741 = getelementptr inbounds %struct.word_type, %struct.word_type* %740, i32 0, i32 0
  %742 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %741, i32 0, i64 0
  %743 = getelementptr inbounds %struct.LIST, %struct.LIST* %742, i32 0, i32 1
  store %union.rec* %733, %union.rec** %743, align 8
  %744 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %745 = load %union.rec*, %union.rec** @zz_res, align 8
  %746 = bitcast %union.rec* %745 to %struct.word_type*
  %747 = getelementptr inbounds %struct.word_type, %struct.word_type* %746, i32 0, i32 0
  %748 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %747, i32 0, i64 0
  %749 = getelementptr inbounds %struct.LIST, %struct.LIST* %748, i32 0, i32 0
  store %union.rec* %744, %union.rec** %749, align 8
  %750 = load %union.rec*, %union.rec** @zz_res, align 8
  %751 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %752 = bitcast %union.rec* %751 to %struct.word_type*
  %753 = getelementptr inbounds %struct.word_type, %struct.word_type* %752, i32 0, i32 0
  %754 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %753, i32 0, i64 0
  %755 = getelementptr inbounds %struct.LIST, %struct.LIST* %754, i32 0, i32 1
  store %union.rec* %750, %union.rec** %755, align 8
  br label %756

; <label>:756                                     ; preds = %715, %713
  %757 = phi %union.rec* [ %714, %713 ], [ %750, %715 ]
  br label %758

; <label>:758                                     ; preds = %756, %708
  %759 = phi %union.rec* [ %709, %708 ], [ %757, %756 ]
  %760 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %760, %union.rec** @zz_res, align 8
  %761 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %761, %union.rec** @zz_hold, align 8
  %762 = load %union.rec*, %union.rec** @zz_hold, align 8
  %763 = icmp eq %union.rec* %762, null
  br i1 %763, label %764, label %766

; <label>:764                                     ; preds = %758
  %765 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %814

; <label>:766                                     ; preds = %758
  %767 = load %union.rec*, %union.rec** @zz_res, align 8
  %768 = icmp eq %union.rec* %767, null
  br i1 %768, label %769, label %771

; <label>:769                                     ; preds = %766
  %770 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %812

; <label>:771                                     ; preds = %766
  %772 = load %union.rec*, %union.rec** @zz_hold, align 8
  %773 = bitcast %union.rec* %772 to %struct.word_type*
  %774 = getelementptr inbounds %struct.word_type, %struct.word_type* %773, i32 0, i32 0
  %775 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %774, i32 0, i64 1
  %776 = getelementptr inbounds %struct.LIST, %struct.LIST* %775, i32 0, i32 0
  %777 = load %union.rec*, %union.rec** %776, align 8
  store %union.rec* %777, %union.rec** @zz_tmp, align 8
  %778 = load %union.rec*, %union.rec** @zz_res, align 8
  %779 = bitcast %union.rec* %778 to %struct.word_type*
  %780 = getelementptr inbounds %struct.word_type, %struct.word_type* %779, i32 0, i32 0
  %781 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %780, i32 0, i64 1
  %782 = getelementptr inbounds %struct.LIST, %struct.LIST* %781, i32 0, i32 0
  %783 = load %union.rec*, %union.rec** %782, align 8
  %784 = load %union.rec*, %union.rec** @zz_hold, align 8
  %785 = bitcast %union.rec* %784 to %struct.word_type*
  %786 = getelementptr inbounds %struct.word_type, %struct.word_type* %785, i32 0, i32 0
  %787 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %786, i32 0, i64 1
  %788 = getelementptr inbounds %struct.LIST, %struct.LIST* %787, i32 0, i32 0
  store %union.rec* %783, %union.rec** %788, align 8
  %789 = load %union.rec*, %union.rec** @zz_hold, align 8
  %790 = load %union.rec*, %union.rec** @zz_res, align 8
  %791 = bitcast %union.rec* %790 to %struct.word_type*
  %792 = getelementptr inbounds %struct.word_type, %struct.word_type* %791, i32 0, i32 0
  %793 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %792, i32 0, i64 1
  %794 = getelementptr inbounds %struct.LIST, %struct.LIST* %793, i32 0, i32 0
  %795 = load %union.rec*, %union.rec** %794, align 8
  %796 = bitcast %union.rec* %795 to %struct.word_type*
  %797 = getelementptr inbounds %struct.word_type, %struct.word_type* %796, i32 0, i32 0
  %798 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %797, i32 0, i64 1
  %799 = getelementptr inbounds %struct.LIST, %struct.LIST* %798, i32 0, i32 1
  store %union.rec* %789, %union.rec** %799, align 8
  %800 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %801 = load %union.rec*, %union.rec** @zz_res, align 8
  %802 = bitcast %union.rec* %801 to %struct.word_type*
  %803 = getelementptr inbounds %struct.word_type, %struct.word_type* %802, i32 0, i32 0
  %804 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %803, i32 0, i64 1
  %805 = getelementptr inbounds %struct.LIST, %struct.LIST* %804, i32 0, i32 0
  store %union.rec* %800, %union.rec** %805, align 8
  %806 = load %union.rec*, %union.rec** @zz_res, align 8
  %807 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %808 = bitcast %union.rec* %807 to %struct.word_type*
  %809 = getelementptr inbounds %struct.word_type, %struct.word_type* %808, i32 0, i32 0
  %810 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %809, i32 0, i64 1
  %811 = getelementptr inbounds %struct.LIST, %struct.LIST* %810, i32 0, i32 1
  store %union.rec* %806, %union.rec** %811, align 8
  br label %812

; <label>:812                                     ; preds = %771, %769
  %813 = phi %union.rec* [ %770, %769 ], [ %806, %771 ]
  br label %814

; <label>:814                                     ; preds = %812, %764
  %815 = phi %union.rec* [ %765, %764 ], [ %813, %812 ]
  %816 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %817 = zext i8 %816 to i32
  store i32 %817, i32* @zz_size, align 4
  %818 = sext i32 %817 to i64
  %819 = icmp uge i64 %818, 265
  br i1 %819, label %820, label %823

; <label>:820                                     ; preds = %814
  %821 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %822 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %821)
  br label %848

; <label>:823                                     ; preds = %814
  %824 = load i32, i32* @zz_size, align 4
  %825 = sext i32 %824 to i64
  %826 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %825
  %827 = load %union.rec*, %union.rec** %826, align 8
  %828 = icmp eq %union.rec* %827, null
  br i1 %828, label %829, label %833

; <label>:829                                     ; preds = %823
  %830 = load i32, i32* @zz_size, align 4
  %831 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %832 = call %union.rec* @GetMemory(i32 %830, %struct.FILE_POS* %831)
  store %union.rec* %832, %union.rec** @zz_hold, align 8
  br label %847

; <label>:833                                     ; preds = %823
  %834 = load i32, i32* @zz_size, align 4
  %835 = sext i32 %834 to i64
  %836 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %835
  %837 = load %union.rec*, %union.rec** %836, align 8
  store %union.rec* %837, %union.rec** @zz_hold, align 8
  store %union.rec* %837, %union.rec** @zz_hold, align 8
  %838 = load %union.rec*, %union.rec** @zz_hold, align 8
  %839 = bitcast %union.rec* %838 to %struct.word_type*
  %840 = getelementptr inbounds %struct.word_type, %struct.word_type* %839, i32 0, i32 0
  %841 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %840, i32 0, i64 0
  %842 = getelementptr inbounds %struct.LIST, %struct.LIST* %841, i32 0, i32 0
  %843 = load %union.rec*, %union.rec** %842, align 8
  %844 = load i32, i32* @zz_size, align 4
  %845 = sext i32 %844 to i64
  %846 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %845
  store %union.rec* %843, %union.rec** %846, align 8
  br label %847

; <label>:847                                     ; preds = %833, %829
  br label %848

; <label>:848                                     ; preds = %847, %820
  %849 = load %union.rec*, %union.rec** @zz_hold, align 8
  %850 = bitcast %union.rec* %849 to %struct.word_type*
  %851 = getelementptr inbounds %struct.word_type, %struct.word_type* %850, i32 0, i32 1
  %852 = bitcast %union.FIRST_UNION* %851 to %struct.anon*
  %853 = getelementptr inbounds %struct.anon, %struct.anon* %852, i32 0, i32 0
  store i8 0, i8* %853, align 1
  %854 = load %union.rec*, %union.rec** @zz_hold, align 8
  %855 = load %union.rec*, %union.rec** @zz_hold, align 8
  %856 = bitcast %union.rec* %855 to %struct.word_type*
  %857 = getelementptr inbounds %struct.word_type, %struct.word_type* %856, i32 0, i32 0
  %858 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %857, i32 0, i64 1
  %859 = getelementptr inbounds %struct.LIST, %struct.LIST* %858, i32 0, i32 1
  store %union.rec* %854, %union.rec** %859, align 8
  %860 = load %union.rec*, %union.rec** @zz_hold, align 8
  %861 = bitcast %union.rec* %860 to %struct.word_type*
  %862 = getelementptr inbounds %struct.word_type, %struct.word_type* %861, i32 0, i32 0
  %863 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %862, i32 0, i64 1
  %864 = getelementptr inbounds %struct.LIST, %struct.LIST* %863, i32 0, i32 0
  store %union.rec* %854, %union.rec** %864, align 8
  %865 = load %union.rec*, %union.rec** @zz_hold, align 8
  %866 = bitcast %union.rec* %865 to %struct.word_type*
  %867 = getelementptr inbounds %struct.word_type, %struct.word_type* %866, i32 0, i32 0
  %868 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %867, i32 0, i64 0
  %869 = getelementptr inbounds %struct.LIST, %struct.LIST* %868, i32 0, i32 1
  store %union.rec* %854, %union.rec** %869, align 8
  %870 = load %union.rec*, %union.rec** @zz_hold, align 8
  %871 = bitcast %union.rec* %870 to %struct.word_type*
  %872 = getelementptr inbounds %struct.word_type, %struct.word_type* %871, i32 0, i32 0
  %873 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %872, i32 0, i64 0
  %874 = getelementptr inbounds %struct.LIST, %struct.LIST* %873, i32 0, i32 0
  store %union.rec* %854, %union.rec** %874, align 8
  store %union.rec* %854, %union.rec** @xx_link, align 8
  %875 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %875, %union.rec** @zz_res, align 8
  %876 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %876, %union.rec** @zz_hold, align 8
  %877 = load %union.rec*, %union.rec** @zz_hold, align 8
  %878 = icmp eq %union.rec* %877, null
  br i1 %878, label %879, label %881

; <label>:879                                     ; preds = %848
  %880 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %929

; <label>:881                                     ; preds = %848
  %882 = load %union.rec*, %union.rec** @zz_res, align 8
  %883 = icmp eq %union.rec* %882, null
  br i1 %883, label %884, label %886

; <label>:884                                     ; preds = %881
  %885 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %927

; <label>:886                                     ; preds = %881
  %887 = load %union.rec*, %union.rec** @zz_hold, align 8
  %888 = bitcast %union.rec* %887 to %struct.word_type*
  %889 = getelementptr inbounds %struct.word_type, %struct.word_type* %888, i32 0, i32 0
  %890 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %889, i32 0, i64 0
  %891 = getelementptr inbounds %struct.LIST, %struct.LIST* %890, i32 0, i32 0
  %892 = load %union.rec*, %union.rec** %891, align 8
  store %union.rec* %892, %union.rec** @zz_tmp, align 8
  %893 = load %union.rec*, %union.rec** @zz_res, align 8
  %894 = bitcast %union.rec* %893 to %struct.word_type*
  %895 = getelementptr inbounds %struct.word_type, %struct.word_type* %894, i32 0, i32 0
  %896 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %895, i32 0, i64 0
  %897 = getelementptr inbounds %struct.LIST, %struct.LIST* %896, i32 0, i32 0
  %898 = load %union.rec*, %union.rec** %897, align 8
  %899 = load %union.rec*, %union.rec** @zz_hold, align 8
  %900 = bitcast %union.rec* %899 to %struct.word_type*
  %901 = getelementptr inbounds %struct.word_type, %struct.word_type* %900, i32 0, i32 0
  %902 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %901, i32 0, i64 0
  %903 = getelementptr inbounds %struct.LIST, %struct.LIST* %902, i32 0, i32 0
  store %union.rec* %898, %union.rec** %903, align 8
  %904 = load %union.rec*, %union.rec** @zz_hold, align 8
  %905 = load %union.rec*, %union.rec** @zz_res, align 8
  %906 = bitcast %union.rec* %905 to %struct.word_type*
  %907 = getelementptr inbounds %struct.word_type, %struct.word_type* %906, i32 0, i32 0
  %908 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %907, i32 0, i64 0
  %909 = getelementptr inbounds %struct.LIST, %struct.LIST* %908, i32 0, i32 0
  %910 = load %union.rec*, %union.rec** %909, align 8
  %911 = bitcast %union.rec* %910 to %struct.word_type*
  %912 = getelementptr inbounds %struct.word_type, %struct.word_type* %911, i32 0, i32 0
  %913 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %912, i32 0, i64 0
  %914 = getelementptr inbounds %struct.LIST, %struct.LIST* %913, i32 0, i32 1
  store %union.rec* %904, %union.rec** %914, align 8
  %915 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %916 = load %union.rec*, %union.rec** @zz_res, align 8
  %917 = bitcast %union.rec* %916 to %struct.word_type*
  %918 = getelementptr inbounds %struct.word_type, %struct.word_type* %917, i32 0, i32 0
  %919 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %918, i32 0, i64 0
  %920 = getelementptr inbounds %struct.LIST, %struct.LIST* %919, i32 0, i32 0
  store %union.rec* %915, %union.rec** %920, align 8
  %921 = load %union.rec*, %union.rec** @zz_res, align 8
  %922 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %923 = bitcast %union.rec* %922 to %struct.word_type*
  %924 = getelementptr inbounds %struct.word_type, %struct.word_type* %923, i32 0, i32 0
  %925 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %924, i32 0, i64 0
  %926 = getelementptr inbounds %struct.LIST, %struct.LIST* %925, i32 0, i32 1
  store %union.rec* %921, %union.rec** %926, align 8
  br label %927

; <label>:927                                     ; preds = %886, %884
  %928 = phi %union.rec* [ %885, %884 ], [ %921, %886 ]
  br label %929

; <label>:929                                     ; preds = %927, %879
  %930 = phi %union.rec* [ %880, %879 ], [ %928, %927 ]
  %931 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %931, %union.rec** @zz_res, align 8
  %932 = load %union.rec*, %union.rec** %y, align 8
  %933 = bitcast %union.rec* %932 to %struct.word_type*
  %934 = getelementptr inbounds %struct.word_type, %struct.word_type* %933, i32 0, i32 1
  %935 = bitcast %union.FIRST_UNION* %934 to %struct.FILE_POS*
  %936 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), %struct.FILE_POS* %935)
  store %union.rec* %936, %union.rec** @zz_hold, align 8
  %937 = load %union.rec*, %union.rec** @zz_hold, align 8
  %938 = icmp eq %union.rec* %937, null
  br i1 %938, label %939, label %941

; <label>:939                                     ; preds = %929
  %940 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %989

; <label>:941                                     ; preds = %929
  %942 = load %union.rec*, %union.rec** @zz_res, align 8
  %943 = icmp eq %union.rec* %942, null
  br i1 %943, label %944, label %946

; <label>:944                                     ; preds = %941
  %945 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %987

; <label>:946                                     ; preds = %941
  %947 = load %union.rec*, %union.rec** @zz_hold, align 8
  %948 = bitcast %union.rec* %947 to %struct.word_type*
  %949 = getelementptr inbounds %struct.word_type, %struct.word_type* %948, i32 0, i32 0
  %950 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %949, i32 0, i64 1
  %951 = getelementptr inbounds %struct.LIST, %struct.LIST* %950, i32 0, i32 0
  %952 = load %union.rec*, %union.rec** %951, align 8
  store %union.rec* %952, %union.rec** @zz_tmp, align 8
  %953 = load %union.rec*, %union.rec** @zz_res, align 8
  %954 = bitcast %union.rec* %953 to %struct.word_type*
  %955 = getelementptr inbounds %struct.word_type, %struct.word_type* %954, i32 0, i32 0
  %956 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %955, i32 0, i64 1
  %957 = getelementptr inbounds %struct.LIST, %struct.LIST* %956, i32 0, i32 0
  %958 = load %union.rec*, %union.rec** %957, align 8
  %959 = load %union.rec*, %union.rec** @zz_hold, align 8
  %960 = bitcast %union.rec* %959 to %struct.word_type*
  %961 = getelementptr inbounds %struct.word_type, %struct.word_type* %960, i32 0, i32 0
  %962 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %961, i32 0, i64 1
  %963 = getelementptr inbounds %struct.LIST, %struct.LIST* %962, i32 0, i32 0
  store %union.rec* %958, %union.rec** %963, align 8
  %964 = load %union.rec*, %union.rec** @zz_hold, align 8
  %965 = load %union.rec*, %union.rec** @zz_res, align 8
  %966 = bitcast %union.rec* %965 to %struct.word_type*
  %967 = getelementptr inbounds %struct.word_type, %struct.word_type* %966, i32 0, i32 0
  %968 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %967, i32 0, i64 1
  %969 = getelementptr inbounds %struct.LIST, %struct.LIST* %968, i32 0, i32 0
  %970 = load %union.rec*, %union.rec** %969, align 8
  %971 = bitcast %union.rec* %970 to %struct.word_type*
  %972 = getelementptr inbounds %struct.word_type, %struct.word_type* %971, i32 0, i32 0
  %973 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %972, i32 0, i64 1
  %974 = getelementptr inbounds %struct.LIST, %struct.LIST* %973, i32 0, i32 1
  store %union.rec* %964, %union.rec** %974, align 8
  %975 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %976 = load %union.rec*, %union.rec** @zz_res, align 8
  %977 = bitcast %union.rec* %976 to %struct.word_type*
  %978 = getelementptr inbounds %struct.word_type, %struct.word_type* %977, i32 0, i32 0
  %979 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %978, i32 0, i64 1
  %980 = getelementptr inbounds %struct.LIST, %struct.LIST* %979, i32 0, i32 0
  store %union.rec* %975, %union.rec** %980, align 8
  %981 = load %union.rec*, %union.rec** @zz_res, align 8
  %982 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %983 = bitcast %union.rec* %982 to %struct.word_type*
  %984 = getelementptr inbounds %struct.word_type, %struct.word_type* %983, i32 0, i32 0
  %985 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %984, i32 0, i64 1
  %986 = getelementptr inbounds %struct.LIST, %struct.LIST* %985, i32 0, i32 1
  store %union.rec* %981, %union.rec** %986, align 8
  br label %987

; <label>:987                                     ; preds = %946, %944
  %988 = phi %union.rec* [ %945, %944 ], [ %981, %946 ]
  br label %989

; <label>:989                                     ; preds = %987, %939
  %990 = phi %union.rec* [ %940, %939 ], [ %988, %987 ]
  %991 = load i32, i32* %stop, align 4
  %992 = add nsw i32 %991, 1
  %993 = sext i32 %992 to i64
  %994 = load i8*, i8** %key, align 8
  %995 = getelementptr inbounds i8, i8* %994, i64 %993
  store i8 0, i8* %995, align 1
  %996 = load %union.rec*, %union.rec** %y, align 8
  call void @FontWordSize(%union.rec* %996)
  %997 = load %union.rec*, %union.rec** %link, align 8
  %998 = bitcast %union.rec* %997 to %struct.word_type*
  %999 = getelementptr inbounds %struct.word_type, %struct.word_type* %998, i32 0, i32 0
  %1000 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %999, i32 0, i64 0
  %1001 = getelementptr inbounds %struct.LIST, %struct.LIST* %1000, i32 0, i32 1
  %1002 = load %union.rec*, %union.rec** %1001, align 8
  store %union.rec* %1002, %union.rec** %link, align 8
  br label %2232

; <label>:1003                                    ; preds = %199
  %1004 = load i32, i32* %stop, align 4
  %1005 = load i32, i32* %start, align 4
  %1006 = sub nsw i32 %1004, %1005
  %1007 = icmp slt i32 %1006, 5
  br i1 %1007, label %1008, label %1009

; <label>:1008                                    ; preds = %1003
  br label %2232

; <label>:1009                                    ; preds = %1003
  %1010 = load i32, i32* %stop, align 4
  %1011 = sext i32 %1010 to i64
  %1012 = load i8*, i8** %key, align 8
  %1013 = getelementptr inbounds i8, i8* %1012, i64 %1011
  %1014 = load i8, i8* %1013, align 1
  %1015 = zext i8 %1014 to i32
  %1016 = icmp ne i32 %1015, 0
  br i1 %1016, label %1017, label %1030

; <label>:1017                                    ; preds = %1009
  %1018 = load i32, i32* %stop, align 4
  %1019 = sext i32 %1018 to i64
  %1020 = load i8*, i8** %key, align 8
  %1021 = getelementptr inbounds i8, i8* %1020, i64 %1019
  %1022 = load i8, i8* %1021, align 1
  %1023 = zext i8 %1022 to i64
  %1024 = load i8*, i8** %class, align 8
  %1025 = getelementptr inbounds i8, i8* %1024, i64 %1023
  %1026 = load i8, i8* %1025, align 1
  %1027 = zext i8 %1026 to i32
  %1028 = icmp eq i32 %1027, 0
  br i1 %1028, label %1029, label %1030

; <label>:1029                                    ; preds = %1017
  br label %2232

; <label>:1030                                    ; preds = %1017, %1009
  %1031 = getelementptr inbounds [2050 x i8], [2050 x i8]* %str, i32 0, i64 0
  store i8 1, i8* %1031, align 1
  %1032 = getelementptr inbounds [2051 x i8], [2051 x i8]* %rate, i32 0, i64 0
  store i8 48, i8* %1032, align 1
  store i32 0, i32* %i, align 4
  br label %1033

; <label>:1033                                    ; preds = %1059, %1030
  %1034 = load i32, i32* %i, align 4
  %1035 = load i32, i32* %stop, align 4
  %1036 = load i32, i32* %start, align 4
  %1037 = sub nsw i32 %1035, %1036
  %1038 = icmp slt i32 %1034, %1037
  br i1 %1038, label %1039, label %1062

; <label>:1039                                    ; preds = %1033
  %1040 = load i32, i32* %start, align 4
  %1041 = load i32, i32* %i, align 4
  %1042 = add nsw i32 %1040, %1041
  %1043 = sext i32 %1042 to i64
  %1044 = load i8*, i8** %key, align 8
  %1045 = getelementptr inbounds i8, i8* %1044, i64 %1043
  %1046 = load i8, i8* %1045, align 1
  %1047 = zext i8 %1046 to i64
  %1048 = load i8*, i8** %class, align 8
  %1049 = getelementptr inbounds i8, i8* %1048, i64 %1047
  %1050 = load i8, i8* %1049, align 1
  %1051 = load i32, i32* %i, align 4
  %1052 = add nsw i32 %1051, 1
  %1053 = sext i32 %1052 to i64
  %1054 = getelementptr inbounds [2050 x i8], [2050 x i8]* %str, i32 0, i64 %1053
  store i8 %1050, i8* %1054, align 1
  %1055 = load i32, i32* %i, align 4
  %1056 = add nsw i32 %1055, 1
  %1057 = sext i32 %1056 to i64
  %1058 = getelementptr inbounds [2051 x i8], [2051 x i8]* %rate, i32 0, i64 %1057
  store i8 48, i8* %1058, align 1
  br label %1059

; <label>:1059                                    ; preds = %1039
  %1060 = load i32, i32* %i, align 4
  %1061 = add nsw i32 %1060, 1
  store i32 %1061, i32* %i, align 4
  br label %1033

; <label>:1062                                    ; preds = %1033
  %1063 = load i32, i32* %i, align 4
  %1064 = add nsw i32 %1063, 1
  %1065 = sext i32 %1064 to i64
  %1066 = getelementptr inbounds [2050 x i8], [2050 x i8]* %str, i32 0, i64 %1065
  store i8 1, i8* %1066, align 1
  %1067 = load i32, i32* %i, align 4
  %1068 = add nsw i32 %1067, 1
  %1069 = sext i32 %1068 to i64
  %1070 = getelementptr inbounds [2051 x i8], [2051 x i8]* %rate, i32 0, i64 %1069
  store i8 48, i8* %1070, align 1
  %1071 = load i32, i32* %i, align 4
  %1072 = add nsw i32 %1071, 2
  %1073 = sext i32 %1072 to i64
  %1074 = getelementptr inbounds [2050 x i8], [2050 x i8]* %str, i32 0, i64 %1073
  store i8 0, i8* %1074, align 1
  %1075 = load i32, i32* %i, align 4
  %1076 = add nsw i32 %1075, 2
  %1077 = sext i32 %1076 to i64
  %1078 = getelementptr inbounds [2051 x i8], [2051 x i8]* %rate, i32 0, i64 %1077
  store i8 48, i8* %1078, align 1
  %1079 = load i32, i32* %i, align 4
  %1080 = add nsw i32 %1079, 3
  %1081 = sext i32 %1080 to i64
  %1082 = getelementptr inbounds [2051 x i8], [2051 x i8]* %rate, i32 0, i64 %1081
  store i8 0, i8* %1082, align 1
  %1083 = getelementptr inbounds [2050 x i8], [2050 x i8]* %str, i32 0, i32 0
  store i8* %1083, i8** %ss, align 8
  br label %1084

; <label>:1084                                    ; preds = %1304, %1062
  store i32 0, i32* %curr_node, align 4
  %1085 = load i8*, i8** %ss, align 8
  store i8* %1085, i8** %s, align 8
  br label %1086

; <label>:1086                                    ; preds = %1298, %1084
  %1087 = load i32, i32* %curr_node, align 4
  %1088 = sext i32 %1087 to i64
  %1089 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %1090 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %1089, i32 0, i32 3
  %1091 = load i16*, i16** %1090, align 8
  %1092 = getelementptr inbounds i16, i16* %1091, i64 %1088
  %1093 = load i16, i16* %1092, align 2
  %1094 = sext i16 %1093 to i32
  store i32 %1094, i32* %pos, align 4
  %1095 = load i32, i32* %pos, align 4
  %1096 = icmp slt i32 %1095, 0
  br i1 %1096, label %1097, label %1175

; <label>:1097                                    ; preds = %1086
  %1098 = getelementptr inbounds [2051 x i8], [2051 x i8]* %val, i32 0, i32 0
  store i8* %1098, i8** %q, align 8
  %1099 = load i32, i32* %pos, align 4
  %1100 = sub nsw i32 0, %1099
  %1101 = sext i32 %1100 to i64
  %1102 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %1103 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %1102, i32 0, i32 6
  %1104 = load i8*, i8** %1103, align 8
  %1105 = getelementptr inbounds i8, i8* %1104, i64 %1101
  store i8* %1105, i8** %p1, align 8
  br label %1106

; <label>:1106                                    ; preds = %1139, %1097
  %1107 = load i8*, i8** %p1, align 8
  %1108 = load i8, i8* %1107, align 1
  %1109 = zext i8 %1108 to i32
  %1110 = icmp ne i32 %1109, 0
  br i1 %1110, label %1111, label %1142

; <label>:1111                                    ; preds = %1106
  %1112 = load i8*, i8** %p1, align 8
  %1113 = load i8, i8* %1112, align 1
  %1114 = zext i8 %1113 to i32
  %1115 = ashr i32 %1114, 4
  store i32 %1115, i32* %skip, align 4
  %1116 = load i8*, i8** %p1, align 8
  %1117 = load i8, i8* %1116, align 1
  %1118 = zext i8 %1117 to i32
  %1119 = and i32 %1118, 15
  %1120 = trunc i32 %1119 to i8
  store i8 %1120, i8* %xval, align 1
  store i32 0, i32* %i2, align 4
  br label %1121

; <label>:1121                                    ; preds = %1128, %1111
  %1122 = load i32, i32* %i2, align 4
  %1123 = load i32, i32* %skip, align 4
  %1124 = icmp slt i32 %1122, %1123
  br i1 %1124, label %1125, label %1131

; <label>:1125                                    ; preds = %1121
  %1126 = load i8*, i8** %q, align 8
  %1127 = getelementptr inbounds i8, i8* %1126, i32 1
  store i8* %1127, i8** %q, align 8
  store i8 48, i8* %1126, align 1
  br label %1128

; <label>:1128                                    ; preds = %1125
  %1129 = load i32, i32* %i2, align 4
  %1130 = add nsw i32 %1129, 1
  store i32 %1130, i32* %i2, align 4
  br label %1121

; <label>:1131                                    ; preds = %1121
  %1132 = load i8, i8* %xval, align 1
  %1133 = zext i8 %1132 to i32
  %1134 = add nsw i32 %1133, 48
  %1135 = sub nsw i32 %1134, 2
  %1136 = trunc i32 %1135 to i8
  %1137 = load i8*, i8** %q, align 8
  %1138 = getelementptr inbounds i8, i8* %1137, i32 1
  store i8* %1138, i8** %q, align 8
  store i8 %1136, i8* %1137, align 1
  br label %1139

; <label>:1139                                    ; preds = %1131
  %1140 = load i8*, i8** %p1, align 8
  %1141 = getelementptr inbounds i8, i8* %1140, i32 1
  store i8* %1141, i8** %p1, align 8
  br label %1106

; <label>:1142                                    ; preds = %1106
  %1143 = load i8*, i8** %q, align 8
  %1144 = getelementptr inbounds i8, i8* %1143, i32 1
  store i8* %1144, i8** %q, align 8
  store i8 0, i8* %1143, align 1
  %1145 = getelementptr inbounds [2051 x i8], [2051 x i8]* %val, i32 0, i32 0
  store i8* %1145, i8** %p3, align 8
  %1146 = getelementptr inbounds [2051 x i8], [2051 x i8]* %rate, i32 0, i32 0
  %1147 = load i8*, i8** %ss, align 8
  %1148 = getelementptr inbounds [2050 x i8], [2050 x i8]* %str, i32 0, i32 0
  %1149 = ptrtoint i8* %1147 to i64
  %1150 = ptrtoint i8* %1148 to i64
  %1151 = sub i64 %1149, %1150
  %1152 = getelementptr inbounds i8, i8* %1146, i64 %1151
  store i8* %1152, i8** %q4, align 8
  br label %1153

; <label>:1153                                    ; preds = %1169, %1142
  %1154 = load i8*, i8** %p3, align 8
  %1155 = load i8, i8* %1154, align 1
  %1156 = icmp ne i8 %1155, 0
  br i1 %1156, label %1157, label %1174

; <label>:1157                                    ; preds = %1153
  %1158 = load i8*, i8** %p3, align 8
  %1159 = load i8, i8* %1158, align 1
  %1160 = zext i8 %1159 to i32
  %1161 = load i8*, i8** %q4, align 8
  %1162 = load i8, i8* %1161, align 1
  %1163 = zext i8 %1162 to i32
  %1164 = icmp sgt i32 %1160, %1163
  br i1 %1164, label %1165, label %1169

; <label>:1165                                    ; preds = %1157
  %1166 = load i8*, i8** %p3, align 8
  %1167 = load i8, i8* %1166, align 1
  %1168 = load i8*, i8** %q4, align 8
  store i8 %1167, i8* %1168, align 1
  br label %1169

; <label>:1169                                    ; preds = %1165, %1157
  %1170 = load i8*, i8** %p3, align 8
  %1171 = getelementptr inbounds i8, i8* %1170, i32 1
  store i8* %1171, i8** %p3, align 8
  %1172 = load i8*, i8** %q4, align 8
  %1173 = getelementptr inbounds i8, i8* %1172, i32 1
  store i8* %1173, i8** %q4, align 8
  br label %1153

; <label>:1174                                    ; preds = %1153
  br label %1175

; <label>:1175                                    ; preds = %1174, %1086
  %1176 = load i8*, i8** %s, align 8
  %1177 = load i8, i8* %1176, align 1
  %1178 = zext i8 %1177 to i32
  %1179 = icmp eq i32 %1178, 0
  br i1 %1179, label %1180, label %1181

; <label>:1180                                    ; preds = %1175
  br label %1303

; <label>:1181                                    ; preds = %1175
  %1182 = load i32, i32* %curr_node, align 4
  %1183 = load i8*, i8** %s, align 8
  %1184 = load i8, i8* %1183, align 1
  %1185 = zext i8 %1184 to i32
  %1186 = add nsw i32 %1182, %1185
  %1187 = sext i32 %1186 to i64
  %1188 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %1189 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %1188, i32 0, i32 3
  %1190 = load i16*, i16** %1189, align 8
  %1191 = getelementptr inbounds i16, i16* %1190, i64 %1187
  %1192 = load i16, i16* %1191, align 2
  %1193 = sext i16 %1192 to i32
  store i32 %1193, i32* %next_node, align 4
  %1194 = load i32, i32* %next_node, align 4
  %1195 = icmp eq i32 %1194, 0
  br i1 %1195, label %1196, label %1197

; <label>:1196                                    ; preds = %1181
  br label %1303

; <label>:1197                                    ; preds = %1181
  %1198 = load i32, i32* %next_node, align 4
  %1199 = icmp slt i32 %1198, 0
  br i1 %1199, label %1200, label %1298

; <label>:1200                                    ; preds = %1197
  %1201 = load i32, i32* %next_node, align 4
  %1202 = sub nsw i32 0, %1201
  %1203 = sext i32 %1202 to i64
  %1204 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %1205 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %1204, i32 0, i32 6
  %1206 = load i8*, i8** %1205, align 8
  %1207 = getelementptr inbounds i8, i8* %1206, i64 %1203
  store i8* %1207, i8** %rem, align 8
  br label %1208

; <label>:1208                                    ; preds = %1287, %1200
  %1209 = load i8*, i8** %rem, align 8
  %1210 = load i8, i8* %1209, align 1
  %1211 = zext i8 %1210 to i32
  %1212 = icmp eq i32 %1211, 0
  br i1 %1212, label %1213, label %1286

; <label>:1213                                    ; preds = %1208
  %1214 = getelementptr inbounds [2051 x i8], [2051 x i8]* %val, i32 0, i32 0
  store i8* %1214, i8** %q6, align 8
  %1215 = load i8*, i8** %rem, align 8
  %1216 = getelementptr inbounds i8, i8* %1215, i64 1
  store i8* %1216, i8** %p5, align 8
  br label %1217

; <label>:1217                                    ; preds = %1250, %1213
  %1218 = load i8*, i8** %p5, align 8
  %1219 = load i8, i8* %1218, align 1
  %1220 = zext i8 %1219 to i32
  %1221 = icmp ne i32 %1220, 0
  br i1 %1221, label %1222, label %1253

; <label>:1222                                    ; preds = %1217
  %1223 = load i8*, i8** %p5, align 8
  %1224 = load i8, i8* %1223, align 1
  %1225 = zext i8 %1224 to i32
  %1226 = ashr i32 %1225, 4
  store i32 %1226, i32* %skip9, align 4
  %1227 = load i8*, i8** %p5, align 8
  %1228 = load i8, i8* %1227, align 1
  %1229 = zext i8 %1228 to i32
  %1230 = and i32 %1229, 15
  %1231 = trunc i32 %1230 to i8
  store i8 %1231, i8* %xval7, align 1
  store i32 0, i32* %i8, align 4
  br label %1232

; <label>:1232                                    ; preds = %1239, %1222
  %1233 = load i32, i32* %i8, align 4
  %1234 = load i32, i32* %skip9, align 4
  %1235 = icmp slt i32 %1233, %1234
  br i1 %1235, label %1236, label %1242

; <label>:1236                                    ; preds = %1232
  %1237 = load i8*, i8** %q6, align 8
  %1238 = getelementptr inbounds i8, i8* %1237, i32 1
  store i8* %1238, i8** %q6, align 8
  store i8 48, i8* %1237, align 1
  br label %1239

; <label>:1239                                    ; preds = %1236
  %1240 = load i32, i32* %i8, align 4
  %1241 = add nsw i32 %1240, 1
  store i32 %1241, i32* %i8, align 4
  br label %1232

; <label>:1242                                    ; preds = %1232
  %1243 = load i8, i8* %xval7, align 1
  %1244 = zext i8 %1243 to i32
  %1245 = add nsw i32 %1244, 48
  %1246 = sub nsw i32 %1245, 2
  %1247 = trunc i32 %1246 to i8
  %1248 = load i8*, i8** %q6, align 8
  %1249 = getelementptr inbounds i8, i8* %1248, i32 1
  store i8* %1249, i8** %q6, align 8
  store i8 %1247, i8* %1248, align 1
  br label %1250

; <label>:1250                                    ; preds = %1242
  %1251 = load i8*, i8** %p5, align 8
  %1252 = getelementptr inbounds i8, i8* %1251, i32 1
  store i8* %1252, i8** %p5, align 8
  br label %1217

; <label>:1253                                    ; preds = %1217
  %1254 = load i8*, i8** %q6, align 8
  %1255 = getelementptr inbounds i8, i8* %1254, i32 1
  store i8* %1255, i8** %q6, align 8
  store i8 0, i8* %1254, align 1
  %1256 = getelementptr inbounds [2051 x i8], [2051 x i8]* %val, i32 0, i32 0
  store i8* %1256, i8** %p10, align 8
  %1257 = getelementptr inbounds [2051 x i8], [2051 x i8]* %rate, i32 0, i32 0
  %1258 = load i8*, i8** %ss, align 8
  %1259 = getelementptr inbounds [2050 x i8], [2050 x i8]* %str, i32 0, i32 0
  %1260 = ptrtoint i8* %1258 to i64
  %1261 = ptrtoint i8* %1259 to i64
  %1262 = sub i64 %1260, %1261
  %1263 = getelementptr inbounds i8, i8* %1257, i64 %1262
  store i8* %1263, i8** %q11, align 8
  br label %1264

; <label>:1264                                    ; preds = %1280, %1253
  %1265 = load i8*, i8** %p10, align 8
  %1266 = load i8, i8* %1265, align 1
  %1267 = icmp ne i8 %1266, 0
  br i1 %1267, label %1268, label %1285

; <label>:1268                                    ; preds = %1264
  %1269 = load i8*, i8** %p10, align 8
  %1270 = load i8, i8* %1269, align 1
  %1271 = zext i8 %1270 to i32
  %1272 = load i8*, i8** %q11, align 8
  %1273 = load i8, i8* %1272, align 1
  %1274 = zext i8 %1273 to i32
  %1275 = icmp sgt i32 %1271, %1274
  br i1 %1275, label %1276, label %1280

; <label>:1276                                    ; preds = %1268
  %1277 = load i8*, i8** %p10, align 8
  %1278 = load i8, i8* %1277, align 1
  %1279 = load i8*, i8** %q11, align 8
  store i8 %1278, i8* %1279, align 1
  br label %1280

; <label>:1280                                    ; preds = %1276, %1268
  %1281 = load i8*, i8** %p10, align 8
  %1282 = getelementptr inbounds i8, i8* %1281, i32 1
  store i8* %1282, i8** %p10, align 8
  %1283 = load i8*, i8** %q11, align 8
  %1284 = getelementptr inbounds i8, i8* %1283, i32 1
  store i8* %1284, i8** %q11, align 8
  br label %1264

; <label>:1285                                    ; preds = %1264
  br label %1297

; <label>:1286                                    ; preds = %1208
  br label %1287

; <label>:1287                                    ; preds = %1286
  %1288 = load i8*, i8** %s, align 8
  %1289 = getelementptr inbounds i8, i8* %1288, i32 1
  store i8* %1289, i8** %s, align 8
  %1290 = load i8, i8* %1289, align 1
  %1291 = zext i8 %1290 to i32
  %1292 = load i8*, i8** %rem, align 8
  %1293 = getelementptr inbounds i8, i8* %1292, i32 1
  store i8* %1293, i8** %rem, align 8
  %1294 = load i8, i8* %1292, align 1
  %1295 = zext i8 %1294 to i32
  %1296 = icmp eq i32 %1291, %1295
  br i1 %1296, label %1208, label %1297

; <label>:1297                                    ; preds = %1287, %1285
  br label %1303

; <label>:1298                                    ; preds = %1197
  %1299 = load i32, i32* %next_node, align 4
  %1300 = mul nsw i32 4, %1299
  store i32 %1300, i32* %curr_node, align 4
  %1301 = load i8*, i8** %s, align 8
  %1302 = getelementptr inbounds i8, i8* %1301, i32 1
  store i8* %1302, i8** %s, align 8
  br label %1086

; <label>:1303                                    ; preds = %1297, %1196, %1180
  br label %1304

; <label>:1304                                    ; preds = %1303
  %1305 = load i8*, i8** %ss, align 8
  %1306 = getelementptr inbounds i8, i8* %1305, i32 1
  store i8* %1306, i8** %ss, align 8
  %1307 = getelementptr inbounds i8, i8* %1306, i64 1
  %1308 = load i8, i8* %1307, align 1
  %1309 = zext i8 %1308 to i32
  %1310 = icmp ne i32 %1309, 1
  br i1 %1310, label %1084, label %1311

; <label>:1311                                    ; preds = %1304
  %1312 = load %union.rec*, %union.rec** %y, align 8
  %1313 = bitcast %union.rec* %1312 to %struct.word_type*
  %1314 = getelementptr inbounds %struct.word_type, %struct.word_type* %1313, i32 0, i32 2
  %1315 = bitcast %union.SECOND_UNION* %1314 to %struct.anon.1*
  %1316 = bitcast %struct.anon.1* %1315 to i32*
  %1317 = load i32, i32* %1316, align 4
  %1318 = and i32 %1317, 4095
  %1319 = zext i32 %1318 to i64
  %1320 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %1321 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1320, i64 %1319
  %1322 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1321, i32 0, i32 1
  %1323 = load i8*, i8** %1322, align 8
  store i8* %1323, i8** %lig, align 8
  %1324 = load i8*, i8** %key, align 8
  store i8* %1324, i8** %p, align 8
  store i32 2, i32* %i, align 4
  br label %1325

; <label>:1325                                    ; preds = %1412, %1311
  %1326 = load i8*, i8** %p, align 8
  %1327 = load i8, i8* %1326, align 1
  %1328 = zext i8 %1327 to i32
  %1329 = icmp ne i32 %1328, 0
  br i1 %1329, label %1330, label %1417

; <label>:1330                                    ; preds = %1325
  %1331 = load i8*, i8** %p, align 8
  %1332 = load i8, i8* %1331, align 1
  %1333 = zext i8 %1332 to i64
  %1334 = load i8*, i8** %lig, align 8
  %1335 = getelementptr inbounds i8, i8* %1334, i64 %1333
  %1336 = load i8, i8* %1335, align 1
  %1337 = zext i8 %1336 to i32
  %1338 = icmp sgt i32 %1337, 1
  br i1 %1338, label %1339, label %1411

; <label>:1339                                    ; preds = %1330
  %1340 = load i8*, i8** %p, align 8
  %1341 = load i8, i8* %1340, align 1
  %1342 = zext i8 %1341 to i64
  %1343 = load i8*, i8** %lig, align 8
  %1344 = getelementptr inbounds i8, i8* %1343, i64 %1342
  %1345 = load i8, i8* %1344, align 1
  %1346 = zext i8 %1345 to i32
  %1347 = add nsw i32 %1346, 256
  %1348 = sext i32 %1347 to i64
  %1349 = load i8*, i8** %lig, align 8
  %1350 = getelementptr inbounds i8, i8* %1349, i64 %1348
  store i8* %1350, i8** %a, align 8
  br label %1351

; <label>:1351                                    ; preds = %1409, %1339
  %1352 = load i8*, i8** %a, align 8
  %1353 = getelementptr inbounds i8, i8* %1352, i32 1
  store i8* %1353, i8** %a, align 8
  %1354 = load i8, i8* %1352, align 1
  %1355 = zext i8 %1354 to i32
  %1356 = load i8*, i8** %p, align 8
  %1357 = load i8, i8* %1356, align 1
  %1358 = zext i8 %1357 to i32
  %1359 = icmp eq i32 %1355, %1358
  br i1 %1359, label %1360, label %1410

; <label>:1360                                    ; preds = %1351
  %1361 = load i8*, i8** %p, align 8
  %1362 = getelementptr inbounds i8, i8* %1361, i64 1
  store i8* %1362, i8** %b, align 8
  br label %1363

; <label>:1363                                    ; preds = %1384, %1360
  %1364 = load i8*, i8** %a, align 8
  %1365 = load i8, i8* %1364, align 1
  %1366 = zext i8 %1365 to i32
  %1367 = load i8*, i8** %b, align 8
  %1368 = load i8, i8* %1367, align 1
  %1369 = zext i8 %1368 to i32
  %1370 = icmp eq i32 %1366, %1369
  br i1 %1370, label %1371, label %1382

; <label>:1371                                    ; preds = %1363
  %1372 = load i8*, i8** %a, align 8
  %1373 = getelementptr inbounds i8, i8* %1372, i64 1
  %1374 = load i8, i8* %1373, align 1
  %1375 = zext i8 %1374 to i32
  %1376 = icmp ne i32 %1375, 0
  br i1 %1376, label %1377, label %1382

; <label>:1377                                    ; preds = %1371
  %1378 = load i8*, i8** %b, align 8
  %1379 = load i8, i8* %1378, align 1
  %1380 = zext i8 %1379 to i32
  %1381 = icmp ne i32 %1380, 0
  br label %1382

; <label>:1382                                    ; preds = %1377, %1371, %1363
  %1383 = phi i1 [ false, %1371 ], [ false, %1363 ], [ %1381, %1377 ]
  br i1 %1383, label %1384, label %1389

; <label>:1384                                    ; preds = %1382
  %1385 = load i8*, i8** %a, align 8
  %1386 = getelementptr inbounds i8, i8* %1385, i32 1
  store i8* %1386, i8** %a, align 8
  %1387 = load i8*, i8** %b, align 8
  %1388 = getelementptr inbounds i8, i8* %1387, i32 1
  store i8* %1388, i8** %b, align 8
  br label %1363

; <label>:1389                                    ; preds = %1382
  %1390 = load i8*, i8** %a, align 8
  %1391 = getelementptr inbounds i8, i8* %1390, i64 1
  %1392 = load i8, i8* %1391, align 1
  %1393 = zext i8 %1392 to i32
  %1394 = icmp eq i32 %1393, 0
  br i1 %1394, label %1395, label %1399

; <label>:1395                                    ; preds = %1389
  %1396 = load i32, i32* %i, align 4
  %1397 = sext i32 %1396 to i64
  %1398 = getelementptr inbounds [2051 x i8], [2051 x i8]* %rate, i32 0, i64 %1397
  store i8 48, i8* %1398, align 1
  br label %1410

; <label>:1399                                    ; preds = %1389
  br label %1400

; <label>:1400                                    ; preds = %1405, %1399
  %1401 = load i8*, i8** %a, align 8
  %1402 = getelementptr inbounds i8, i8* %1401, i32 1
  store i8* %1402, i8** %a, align 8
  %1403 = load i8, i8* %1402, align 1
  %1404 = icmp ne i8 %1403, 0
  br i1 %1404, label %1405, label %1406

; <label>:1405                                    ; preds = %1400
  br label %1400

; <label>:1406                                    ; preds = %1400
  %1407 = load i8*, i8** %a, align 8
  %1408 = getelementptr inbounds i8, i8* %1407, i32 1
  store i8* %1408, i8** %a, align 8
  br label %1409

; <label>:1409                                    ; preds = %1406
  br label %1351

; <label>:1410                                    ; preds = %1395, %1351
  br label %1411

; <label>:1411                                    ; preds = %1410, %1330
  br label %1412

; <label>:1412                                    ; preds = %1411
  %1413 = load i8*, i8** %p, align 8
  %1414 = getelementptr inbounds i8, i8* %1413, i32 1
  store i8* %1414, i8** %p, align 8
  %1415 = load i32, i32* %i, align 4
  %1416 = add nsw i32 %1415, 1
  store i32 %1416, i32* %i, align 4
  br label %1325

; <label>:1417                                    ; preds = %1325
  store i32 0, i32* %hyphenated, align 4
  %1418 = load %union.rec*, %union.rec** %link, align 8
  %1419 = bitcast %union.rec* %1418 to %struct.word_type*
  %1420 = getelementptr inbounds %struct.word_type, %struct.word_type* %1419, i32 0, i32 0
  %1421 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1420, i32 0, i64 0
  %1422 = getelementptr inbounds %struct.LIST, %struct.LIST* %1421, i32 0, i32 1
  %1423 = load %union.rec*, %union.rec** %1422, align 8
  store %union.rec* %1423, %union.rec** %next_link, align 8
  %1424 = load i32, i32* %stop, align 4
  %1425 = load i32, i32* %start, align 4
  %1426 = sub nsw i32 %1424, %1425
  %1427 = sub nsw i32 %1426, 1
  store i32 %1427, i32* %i, align 4
  br label %1428

; <label>:1428                                    ; preds = %2217, %1417
  %1429 = load i32, i32* %i, align 4
  %1430 = icmp sge i32 %1429, 3
  br i1 %1430, label %1431, label %2220

; <label>:1431                                    ; preds = %1428
  %1432 = load i32, i32* %i, align 4
  %1433 = sext i32 %1432 to i64
  %1434 = getelementptr inbounds [2051 x i8], [2051 x i8]* %rate, i32 0, i64 %1433
  %1435 = load i8, i8* %1434, align 1
  %1436 = zext i8 %1435 to i32
  %1437 = and i32 %1436, 1
  %1438 = icmp ne i32 %1437, 0
  br i1 %1438, label %1439, label %2216

; <label>:1439                                    ; preds = %1431
  %1440 = load i32, i32* %start, align 4
  %1441 = load i32, i32* %i, align 4
  %1442 = add nsw i32 %1440, %1441
  %1443 = sub nsw i32 %1442, 1
  %1444 = sext i32 %1443 to i64
  %1445 = load i8*, i8** %key, align 8
  %1446 = getelementptr inbounds i8, i8* %1445, i64 %1444
  %1447 = load %union.rec*, %union.rec** %y, align 8
  %1448 = bitcast %union.rec* %1447 to %struct.word_type*
  %1449 = getelementptr inbounds %struct.word_type, %struct.word_type* %1448, i32 0, i32 1
  %1450 = bitcast %union.FIRST_UNION* %1449 to %struct.FILE_POS*
  %1451 = call %union.rec* @MakeWord(i32 11, i8* %1446, %struct.FILE_POS* %1450)
  store %union.rec* %1451, %union.rec** %z, align 8
  %1452 = load %union.rec*, %union.rec** %y, align 8
  %1453 = bitcast %union.rec* %1452 to %struct.word_type*
  %1454 = getelementptr inbounds %struct.word_type, %struct.word_type* %1453, i32 0, i32 2
  %1455 = bitcast %union.SECOND_UNION* %1454 to %struct.anon.1*
  %1456 = bitcast %struct.anon.1* %1455 to i32*
  %1457 = load i32, i32* %1456, align 4
  %1458 = and i32 %1457, 4095
  %1459 = load %union.rec*, %union.rec** %z, align 8
  %1460 = bitcast %union.rec* %1459 to %struct.word_type*
  %1461 = getelementptr inbounds %struct.word_type, %struct.word_type* %1460, i32 0, i32 2
  %1462 = bitcast %union.SECOND_UNION* %1461 to %struct.anon.1*
  %1463 = bitcast %struct.anon.1* %1462 to i32*
  %1464 = load i32, i32* %1463, align 4
  %1465 = and i32 %1458, 4095
  %1466 = and i32 %1464, -4096
  %1467 = or i32 %1466, %1465
  store i32 %1467, i32* %1463, align 4
  %1468 = load %union.rec*, %union.rec** %y, align 8
  %1469 = bitcast %union.rec* %1468 to %struct.word_type*
  %1470 = getelementptr inbounds %struct.word_type, %struct.word_type* %1469, i32 0, i32 2
  %1471 = bitcast %union.SECOND_UNION* %1470 to %struct.anon.1*
  %1472 = bitcast %struct.anon.1* %1471 to i32*
  %1473 = load i32, i32* %1472, align 4
  %1474 = lshr i32 %1473, 12
  %1475 = and i32 %1474, 1023
  %1476 = load %union.rec*, %union.rec** %z, align 8
  %1477 = bitcast %union.rec* %1476 to %struct.word_type*
  %1478 = getelementptr inbounds %struct.word_type, %struct.word_type* %1477, i32 0, i32 2
  %1479 = bitcast %union.SECOND_UNION* %1478 to %struct.anon.1*
  %1480 = bitcast %struct.anon.1* %1479 to i32*
  %1481 = load i32, i32* %1480, align 4
  %1482 = and i32 %1475, 1023
  %1483 = shl i32 %1482, 12
  %1484 = and i32 %1481, -4190209
  %1485 = or i32 %1484, %1483
  store i32 %1485, i32* %1480, align 4
  %1486 = load %union.rec*, %union.rec** %y, align 8
  %1487 = bitcast %union.rec* %1486 to %struct.word_type*
  %1488 = getelementptr inbounds %struct.word_type, %struct.word_type* %1487, i32 0, i32 2
  %1489 = bitcast %union.SECOND_UNION* %1488 to %struct.anon.1*
  %1490 = bitcast %struct.anon.1* %1489 to i32*
  %1491 = load i32, i32* %1490, align 4
  %1492 = lshr i32 %1491, 22
  %1493 = and i32 %1492, 1
  %1494 = load %union.rec*, %union.rec** %z, align 8
  %1495 = bitcast %union.rec* %1494 to %struct.word_type*
  %1496 = getelementptr inbounds %struct.word_type, %struct.word_type* %1495, i32 0, i32 2
  %1497 = bitcast %union.SECOND_UNION* %1496 to %struct.anon.1*
  %1498 = bitcast %struct.anon.1* %1497 to i32*
  %1499 = load i32, i32* %1498, align 4
  %1500 = and i32 %1493, 1
  %1501 = shl i32 %1500, 22
  %1502 = and i32 %1499, -4194305
  %1503 = or i32 %1502, %1501
  store i32 %1503, i32* %1498, align 4
  %1504 = load %union.rec*, %union.rec** %y, align 8
  %1505 = bitcast %union.rec* %1504 to %struct.word_type*
  %1506 = getelementptr inbounds %struct.word_type, %struct.word_type* %1505, i32 0, i32 2
  %1507 = bitcast %union.SECOND_UNION* %1506 to %struct.anon.1*
  %1508 = bitcast %struct.anon.1* %1507 to i32*
  %1509 = load i32, i32* %1508, align 4
  %1510 = lshr i32 %1509, 23
  %1511 = and i32 %1510, 63
  %1512 = load %union.rec*, %union.rec** %z, align 8
  %1513 = bitcast %union.rec* %1512 to %struct.word_type*
  %1514 = getelementptr inbounds %struct.word_type, %struct.word_type* %1513, i32 0, i32 2
  %1515 = bitcast %union.SECOND_UNION* %1514 to %struct.anon.1*
  %1516 = bitcast %struct.anon.1* %1515 to i32*
  %1517 = load i32, i32* %1516, align 4
  %1518 = and i32 %1511, 63
  %1519 = shl i32 %1518, 23
  %1520 = and i32 %1517, -528482305
  %1521 = or i32 %1520, %1519
  store i32 %1521, i32* %1516, align 4
  %1522 = load %union.rec*, %union.rec** %y, align 8
  %1523 = bitcast %union.rec* %1522 to %struct.word_type*
  %1524 = getelementptr inbounds %struct.word_type, %struct.word_type* %1523, i32 0, i32 2
  %1525 = bitcast %union.SECOND_UNION* %1524 to %struct.anon.1*
  %1526 = bitcast %struct.anon.1* %1525 to i32*
  %1527 = load i32, i32* %1526, align 4
  %1528 = lshr i32 %1527, 31
  %1529 = load %union.rec*, %union.rec** %z, align 8
  %1530 = bitcast %union.rec* %1529 to %struct.word_type*
  %1531 = getelementptr inbounds %struct.word_type, %struct.word_type* %1530, i32 0, i32 2
  %1532 = bitcast %union.SECOND_UNION* %1531 to %struct.anon.1*
  %1533 = bitcast %struct.anon.1* %1532 to i32*
  %1534 = load i32, i32* %1533, align 4
  %1535 = and i32 %1528, 1
  %1536 = shl i32 %1535, 31
  %1537 = and i32 %1534, 2147483647
  %1538 = or i32 %1537, %1536
  store i32 %1538, i32* %1533, align 4
  %1539 = load %union.rec*, %union.rec** %y, align 8
  %1540 = bitcast %union.rec* %1539 to %struct.word_type*
  %1541 = getelementptr inbounds %struct.word_type, %struct.word_type* %1540, i32 0, i32 2
  %1542 = bitcast %union.SECOND_UNION* %1541 to %struct.anon.1*
  %1543 = bitcast %struct.anon.1* %1542 to i32*
  %1544 = load i32, i32* %1543, align 4
  %1545 = lshr i32 %1544, 29
  %1546 = and i32 %1545, 3
  %1547 = load %union.rec*, %union.rec** %z, align 8
  %1548 = bitcast %union.rec* %1547 to %struct.word_type*
  %1549 = getelementptr inbounds %struct.word_type, %struct.word_type* %1548, i32 0, i32 2
  %1550 = bitcast %union.SECOND_UNION* %1549 to %struct.anon.1*
  %1551 = bitcast %struct.anon.1* %1550 to i32*
  %1552 = load i32, i32* %1551, align 4
  %1553 = and i32 %1546, 3
  %1554 = shl i32 %1553, 29
  %1555 = and i32 %1552, -1610612737
  %1556 = or i32 %1555, %1554
  store i32 %1556, i32* %1551, align 4
  %1557 = load %union.rec*, %union.rec** %z, align 8
  call void @FontWordSize(%union.rec* %1557)
  %1558 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1559 = zext i8 %1558 to i32
  store i32 %1559, i32* @zz_size, align 4
  %1560 = sext i32 %1559 to i64
  %1561 = icmp uge i64 %1560, 265
  br i1 %1561, label %1562, label %1565

; <label>:1562                                    ; preds = %1439
  %1563 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1564 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %1563)
  br label %1590

; <label>:1565                                    ; preds = %1439
  %1566 = load i32, i32* @zz_size, align 4
  %1567 = sext i32 %1566 to i64
  %1568 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1567
  %1569 = load %union.rec*, %union.rec** %1568, align 8
  %1570 = icmp eq %union.rec* %1569, null
  br i1 %1570, label %1571, label %1575

; <label>:1571                                    ; preds = %1565
  %1572 = load i32, i32* @zz_size, align 4
  %1573 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1574 = call %union.rec* @GetMemory(i32 %1572, %struct.FILE_POS* %1573)
  store %union.rec* %1574, %union.rec** @zz_hold, align 8
  br label %1589

; <label>:1575                                    ; preds = %1565
  %1576 = load i32, i32* @zz_size, align 4
  %1577 = sext i32 %1576 to i64
  %1578 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1577
  %1579 = load %union.rec*, %union.rec** %1578, align 8
  store %union.rec* %1579, %union.rec** @zz_hold, align 8
  store %union.rec* %1579, %union.rec** @zz_hold, align 8
  %1580 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1581 = bitcast %union.rec* %1580 to %struct.word_type*
  %1582 = getelementptr inbounds %struct.word_type, %struct.word_type* %1581, i32 0, i32 0
  %1583 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1582, i32 0, i64 0
  %1584 = getelementptr inbounds %struct.LIST, %struct.LIST* %1583, i32 0, i32 0
  %1585 = load %union.rec*, %union.rec** %1584, align 8
  %1586 = load i32, i32* @zz_size, align 4
  %1587 = sext i32 %1586 to i64
  %1588 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1587
  store %union.rec* %1585, %union.rec** %1588, align 8
  br label %1589

; <label>:1589                                    ; preds = %1575, %1571
  br label %1590

; <label>:1590                                    ; preds = %1589, %1562
  %1591 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1592 = bitcast %union.rec* %1591 to %struct.word_type*
  %1593 = getelementptr inbounds %struct.word_type, %struct.word_type* %1592, i32 0, i32 1
  %1594 = bitcast %union.FIRST_UNION* %1593 to %struct.anon*
  %1595 = getelementptr inbounds %struct.anon, %struct.anon* %1594, i32 0, i32 0
  store i8 0, i8* %1595, align 1
  %1596 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1597 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1598 = bitcast %union.rec* %1597 to %struct.word_type*
  %1599 = getelementptr inbounds %struct.word_type, %struct.word_type* %1598, i32 0, i32 0
  %1600 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1599, i32 0, i64 1
  %1601 = getelementptr inbounds %struct.LIST, %struct.LIST* %1600, i32 0, i32 1
  store %union.rec* %1596, %union.rec** %1601, align 8
  %1602 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1603 = bitcast %union.rec* %1602 to %struct.word_type*
  %1604 = getelementptr inbounds %struct.word_type, %struct.word_type* %1603, i32 0, i32 0
  %1605 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1604, i32 0, i64 1
  %1606 = getelementptr inbounds %struct.LIST, %struct.LIST* %1605, i32 0, i32 0
  store %union.rec* %1596, %union.rec** %1606, align 8
  %1607 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1608 = bitcast %union.rec* %1607 to %struct.word_type*
  %1609 = getelementptr inbounds %struct.word_type, %struct.word_type* %1608, i32 0, i32 0
  %1610 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1609, i32 0, i64 0
  %1611 = getelementptr inbounds %struct.LIST, %struct.LIST* %1610, i32 0, i32 1
  store %union.rec* %1596, %union.rec** %1611, align 8
  %1612 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1613 = bitcast %union.rec* %1612 to %struct.word_type*
  %1614 = getelementptr inbounds %struct.word_type, %struct.word_type* %1613, i32 0, i32 0
  %1615 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1614, i32 0, i64 0
  %1616 = getelementptr inbounds %struct.LIST, %struct.LIST* %1615, i32 0, i32 0
  store %union.rec* %1596, %union.rec** %1616, align 8
  store %union.rec* %1596, %union.rec** @xx_link, align 8
  %1617 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1617, %union.rec** @zz_res, align 8
  %1618 = load %union.rec*, %union.rec** %link, align 8
  %1619 = bitcast %union.rec* %1618 to %struct.word_type*
  %1620 = getelementptr inbounds %struct.word_type, %struct.word_type* %1619, i32 0, i32 0
  %1621 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1620, i32 0, i64 0
  %1622 = getelementptr inbounds %struct.LIST, %struct.LIST* %1621, i32 0, i32 1
  %1623 = load %union.rec*, %union.rec** %1622, align 8
  store %union.rec* %1623, %union.rec** @zz_hold, align 8
  %1624 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1625 = icmp eq %union.rec* %1624, null
  br i1 %1625, label %1626, label %1628

; <label>:1626                                    ; preds = %1590
  %1627 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1676

; <label>:1628                                    ; preds = %1590
  %1629 = load %union.rec*, %union.rec** @zz_res, align 8
  %1630 = icmp eq %union.rec* %1629, null
  br i1 %1630, label %1631, label %1633

; <label>:1631                                    ; preds = %1628
  %1632 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1674

; <label>:1633                                    ; preds = %1628
  %1634 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1635 = bitcast %union.rec* %1634 to %struct.word_type*
  %1636 = getelementptr inbounds %struct.word_type, %struct.word_type* %1635, i32 0, i32 0
  %1637 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1636, i32 0, i64 0
  %1638 = getelementptr inbounds %struct.LIST, %struct.LIST* %1637, i32 0, i32 0
  %1639 = load %union.rec*, %union.rec** %1638, align 8
  store %union.rec* %1639, %union.rec** @zz_tmp, align 8
  %1640 = load %union.rec*, %union.rec** @zz_res, align 8
  %1641 = bitcast %union.rec* %1640 to %struct.word_type*
  %1642 = getelementptr inbounds %struct.word_type, %struct.word_type* %1641, i32 0, i32 0
  %1643 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1642, i32 0, i64 0
  %1644 = getelementptr inbounds %struct.LIST, %struct.LIST* %1643, i32 0, i32 0
  %1645 = load %union.rec*, %union.rec** %1644, align 8
  %1646 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1647 = bitcast %union.rec* %1646 to %struct.word_type*
  %1648 = getelementptr inbounds %struct.word_type, %struct.word_type* %1647, i32 0, i32 0
  %1649 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1648, i32 0, i64 0
  %1650 = getelementptr inbounds %struct.LIST, %struct.LIST* %1649, i32 0, i32 0
  store %union.rec* %1645, %union.rec** %1650, align 8
  %1651 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1652 = load %union.rec*, %union.rec** @zz_res, align 8
  %1653 = bitcast %union.rec* %1652 to %struct.word_type*
  %1654 = getelementptr inbounds %struct.word_type, %struct.word_type* %1653, i32 0, i32 0
  %1655 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1654, i32 0, i64 0
  %1656 = getelementptr inbounds %struct.LIST, %struct.LIST* %1655, i32 0, i32 0
  %1657 = load %union.rec*, %union.rec** %1656, align 8
  %1658 = bitcast %union.rec* %1657 to %struct.word_type*
  %1659 = getelementptr inbounds %struct.word_type, %struct.word_type* %1658, i32 0, i32 0
  %1660 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1659, i32 0, i64 0
  %1661 = getelementptr inbounds %struct.LIST, %struct.LIST* %1660, i32 0, i32 1
  store %union.rec* %1651, %union.rec** %1661, align 8
  %1662 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1663 = load %union.rec*, %union.rec** @zz_res, align 8
  %1664 = bitcast %union.rec* %1663 to %struct.word_type*
  %1665 = getelementptr inbounds %struct.word_type, %struct.word_type* %1664, i32 0, i32 0
  %1666 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1665, i32 0, i64 0
  %1667 = getelementptr inbounds %struct.LIST, %struct.LIST* %1666, i32 0, i32 0
  store %union.rec* %1662, %union.rec** %1667, align 8
  %1668 = load %union.rec*, %union.rec** @zz_res, align 8
  %1669 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1670 = bitcast %union.rec* %1669 to %struct.word_type*
  %1671 = getelementptr inbounds %struct.word_type, %struct.word_type* %1670, i32 0, i32 0
  %1672 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1671, i32 0, i64 0
  %1673 = getelementptr inbounds %struct.LIST, %struct.LIST* %1672, i32 0, i32 1
  store %union.rec* %1668, %union.rec** %1673, align 8
  br label %1674

; <label>:1674                                    ; preds = %1633, %1631
  %1675 = phi %union.rec* [ %1632, %1631 ], [ %1668, %1633 ]
  br label %1676

; <label>:1676                                    ; preds = %1674, %1626
  %1677 = phi %union.rec* [ %1627, %1626 ], [ %1675, %1674 ]
  %1678 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1678, %union.rec** @zz_res, align 8
  %1679 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %1679, %union.rec** @zz_hold, align 8
  %1680 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1681 = icmp eq %union.rec* %1680, null
  br i1 %1681, label %1682, label %1684

; <label>:1682                                    ; preds = %1676
  %1683 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1732

; <label>:1684                                    ; preds = %1676
  %1685 = load %union.rec*, %union.rec** @zz_res, align 8
  %1686 = icmp eq %union.rec* %1685, null
  br i1 %1686, label %1687, label %1689

; <label>:1687                                    ; preds = %1684
  %1688 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1730

; <label>:1689                                    ; preds = %1684
  %1690 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1691 = bitcast %union.rec* %1690 to %struct.word_type*
  %1692 = getelementptr inbounds %struct.word_type, %struct.word_type* %1691, i32 0, i32 0
  %1693 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1692, i32 0, i64 1
  %1694 = getelementptr inbounds %struct.LIST, %struct.LIST* %1693, i32 0, i32 0
  %1695 = load %union.rec*, %union.rec** %1694, align 8
  store %union.rec* %1695, %union.rec** @zz_tmp, align 8
  %1696 = load %union.rec*, %union.rec** @zz_res, align 8
  %1697 = bitcast %union.rec* %1696 to %struct.word_type*
  %1698 = getelementptr inbounds %struct.word_type, %struct.word_type* %1697, i32 0, i32 0
  %1699 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1698, i32 0, i64 1
  %1700 = getelementptr inbounds %struct.LIST, %struct.LIST* %1699, i32 0, i32 0
  %1701 = load %union.rec*, %union.rec** %1700, align 8
  %1702 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1703 = bitcast %union.rec* %1702 to %struct.word_type*
  %1704 = getelementptr inbounds %struct.word_type, %struct.word_type* %1703, i32 0, i32 0
  %1705 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1704, i32 0, i64 1
  %1706 = getelementptr inbounds %struct.LIST, %struct.LIST* %1705, i32 0, i32 0
  store %union.rec* %1701, %union.rec** %1706, align 8
  %1707 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1708 = load %union.rec*, %union.rec** @zz_res, align 8
  %1709 = bitcast %union.rec* %1708 to %struct.word_type*
  %1710 = getelementptr inbounds %struct.word_type, %struct.word_type* %1709, i32 0, i32 0
  %1711 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1710, i32 0, i64 1
  %1712 = getelementptr inbounds %struct.LIST, %struct.LIST* %1711, i32 0, i32 0
  %1713 = load %union.rec*, %union.rec** %1712, align 8
  %1714 = bitcast %union.rec* %1713 to %struct.word_type*
  %1715 = getelementptr inbounds %struct.word_type, %struct.word_type* %1714, i32 0, i32 0
  %1716 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1715, i32 0, i64 1
  %1717 = getelementptr inbounds %struct.LIST, %struct.LIST* %1716, i32 0, i32 1
  store %union.rec* %1707, %union.rec** %1717, align 8
  %1718 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1719 = load %union.rec*, %union.rec** @zz_res, align 8
  %1720 = bitcast %union.rec* %1719 to %struct.word_type*
  %1721 = getelementptr inbounds %struct.word_type, %struct.word_type* %1720, i32 0, i32 0
  %1722 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1721, i32 0, i64 1
  %1723 = getelementptr inbounds %struct.LIST, %struct.LIST* %1722, i32 0, i32 0
  store %union.rec* %1718, %union.rec** %1723, align 8
  %1724 = load %union.rec*, %union.rec** @zz_res, align 8
  %1725 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1726 = bitcast %union.rec* %1725 to %struct.word_type*
  %1727 = getelementptr inbounds %struct.word_type, %struct.word_type* %1726, i32 0, i32 0
  %1728 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1727, i32 0, i64 1
  %1729 = getelementptr inbounds %struct.LIST, %struct.LIST* %1728, i32 0, i32 1
  store %union.rec* %1724, %union.rec** %1729, align 8
  br label %1730

; <label>:1730                                    ; preds = %1689, %1687
  %1731 = phi %union.rec* [ %1688, %1687 ], [ %1724, %1689 ]
  br label %1732

; <label>:1732                                    ; preds = %1730, %1682
  %1733 = phi %union.rec* [ %1683, %1682 ], [ %1731, %1730 ]
  %1734 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %1735 = zext i8 %1734 to i32
  store i32 %1735, i32* @zz_size, align 4
  %1736 = sext i32 %1735 to i64
  %1737 = icmp uge i64 %1736, 265
  br i1 %1737, label %1738, label %1741

; <label>:1738                                    ; preds = %1732
  %1739 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1740 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %1739)
  br label %1766

; <label>:1741                                    ; preds = %1732
  %1742 = load i32, i32* @zz_size, align 4
  %1743 = sext i32 %1742 to i64
  %1744 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1743
  %1745 = load %union.rec*, %union.rec** %1744, align 8
  %1746 = icmp eq %union.rec* %1745, null
  br i1 %1746, label %1747, label %1751

; <label>:1747                                    ; preds = %1741
  %1748 = load i32, i32* @zz_size, align 4
  %1749 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1750 = call %union.rec* @GetMemory(i32 %1748, %struct.FILE_POS* %1749)
  store %union.rec* %1750, %union.rec** @zz_hold, align 8
  br label %1765

; <label>:1751                                    ; preds = %1741
  %1752 = load i32, i32* @zz_size, align 4
  %1753 = sext i32 %1752 to i64
  %1754 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1753
  %1755 = load %union.rec*, %union.rec** %1754, align 8
  store %union.rec* %1755, %union.rec** @zz_hold, align 8
  store %union.rec* %1755, %union.rec** @zz_hold, align 8
  %1756 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1757 = bitcast %union.rec* %1756 to %struct.word_type*
  %1758 = getelementptr inbounds %struct.word_type, %struct.word_type* %1757, i32 0, i32 0
  %1759 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1758, i32 0, i64 0
  %1760 = getelementptr inbounds %struct.LIST, %struct.LIST* %1759, i32 0, i32 0
  %1761 = load %union.rec*, %union.rec** %1760, align 8
  %1762 = load i32, i32* @zz_size, align 4
  %1763 = sext i32 %1762 to i64
  %1764 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1763
  store %union.rec* %1761, %union.rec** %1764, align 8
  br label %1765

; <label>:1765                                    ; preds = %1751, %1747
  br label %1766

; <label>:1766                                    ; preds = %1765, %1738
  %1767 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1768 = bitcast %union.rec* %1767 to %struct.word_type*
  %1769 = getelementptr inbounds %struct.word_type, %struct.word_type* %1768, i32 0, i32 1
  %1770 = bitcast %union.FIRST_UNION* %1769 to %struct.anon*
  %1771 = getelementptr inbounds %struct.anon, %struct.anon* %1770, i32 0, i32 0
  store i8 1, i8* %1771, align 1
  %1772 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1773 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1774 = bitcast %union.rec* %1773 to %struct.word_type*
  %1775 = getelementptr inbounds %struct.word_type, %struct.word_type* %1774, i32 0, i32 0
  %1776 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1775, i32 0, i64 1
  %1777 = getelementptr inbounds %struct.LIST, %struct.LIST* %1776, i32 0, i32 1
  store %union.rec* %1772, %union.rec** %1777, align 8
  %1778 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1779 = bitcast %union.rec* %1778 to %struct.word_type*
  %1780 = getelementptr inbounds %struct.word_type, %struct.word_type* %1779, i32 0, i32 0
  %1781 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1780, i32 0, i64 1
  %1782 = getelementptr inbounds %struct.LIST, %struct.LIST* %1781, i32 0, i32 0
  store %union.rec* %1772, %union.rec** %1782, align 8
  %1783 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1784 = bitcast %union.rec* %1783 to %struct.word_type*
  %1785 = getelementptr inbounds %struct.word_type, %struct.word_type* %1784, i32 0, i32 0
  %1786 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1785, i32 0, i64 0
  %1787 = getelementptr inbounds %struct.LIST, %struct.LIST* %1786, i32 0, i32 1
  store %union.rec* %1772, %union.rec** %1787, align 8
  %1788 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1789 = bitcast %union.rec* %1788 to %struct.word_type*
  %1790 = getelementptr inbounds %struct.word_type, %struct.word_type* %1789, i32 0, i32 0
  %1791 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1790, i32 0, i64 0
  %1792 = getelementptr inbounds %struct.LIST, %struct.LIST* %1791, i32 0, i32 0
  store %union.rec* %1772, %union.rec** %1792, align 8
  store %union.rec* %1772, %union.rec** %z, align 8
  %1793 = load %union.rec*, %union.rec** %z, align 8
  %1794 = bitcast %union.rec* %1793 to %struct.word_type*
  %1795 = getelementptr inbounds %struct.word_type, %struct.word_type* %1794, i32 0, i32 2
  %1796 = bitcast %union.SECOND_UNION* %1795 to %struct.anon.0*
  %1797 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1796, i32 0, i32 2
  store i8 0, i8* %1797, align 1
  %1798 = load %union.rec*, %union.rec** %z, align 8
  %1799 = bitcast %union.rec* %1798 to %struct.word_type*
  %1800 = getelementptr inbounds %struct.word_type, %struct.word_type* %1799, i32 0, i32 2
  %1801 = bitcast %union.SECOND_UNION* %1800 to %struct.anon.0*
  %1802 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1801, i32 0, i32 1
  store i8 0, i8* %1802, align 1
  %1803 = load %union.rec*, %union.rec** %z, align 8
  %1804 = bitcast %union.rec* %1803 to %struct.gapobj_type*
  %1805 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1804, i32 0, i32 3
  %1806 = bitcast %struct.GAP* %1805 to i16*
  %1807 = load i16, i16* %1806, align 4
  %1808 = and i16 %1807, -129
  store i16 %1808, i16* %1806, align 4
  %1809 = load %union.rec*, %union.rec** %z, align 8
  %1810 = bitcast %union.rec* %1809 to %struct.gapobj_type*
  %1811 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1810, i32 0, i32 3
  %1812 = bitcast %struct.GAP* %1811 to i16*
  %1813 = load i16, i16* %1812, align 4
  %1814 = and i16 %1813, -257
  store i16 %1814, i16* %1812, align 4
  %1815 = load %union.rec*, %union.rec** %z, align 8
  %1816 = bitcast %union.rec* %1815 to %struct.gapobj_type*
  %1817 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1816, i32 0, i32 3
  %1818 = bitcast %struct.GAP* %1817 to i16*
  %1819 = load i16, i16* %1818, align 4
  %1820 = and i16 %1819, -513
  %1821 = or i16 %1820, 512
  store i16 %1821, i16* %1818, align 4
  %1822 = load %union.rec*, %union.rec** %z, align 8
  %1823 = bitcast %union.rec* %1822 to %struct.gapobj_type*
  %1824 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1823, i32 0, i32 3
  %1825 = bitcast %struct.GAP* %1824 to i16*
  %1826 = load i16, i16* %1825, align 4
  %1827 = and i16 %1826, -7169
  %1828 = or i16 %1827, 1024
  store i16 %1828, i16* %1825, align 4
  %1829 = load %union.rec*, %union.rec** %z, align 8
  %1830 = bitcast %union.rec* %1829 to %struct.gapobj_type*
  %1831 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1830, i32 0, i32 3
  %1832 = bitcast %struct.GAP* %1831 to i16*
  %1833 = load i16, i16* %1832, align 4
  %1834 = and i16 %1833, 8191
  %1835 = or i16 %1834, 16384
  store i16 %1835, i16* %1832, align 4
  %1836 = load %union.rec*, %union.rec** %z, align 8
  %1837 = bitcast %union.rec* %1836 to %struct.gapobj_type*
  %1838 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1837, i32 0, i32 3
  %1839 = getelementptr inbounds %struct.GAP, %struct.GAP* %1838, i32 0, i32 1
  store i16 0, i16* %1839, align 2
  %1840 = load %union.rec*, %union.rec** %y, align 8
  %1841 = bitcast %union.rec* %1840 to %struct.word_type*
  %1842 = getelementptr inbounds %struct.word_type, %struct.word_type* %1841, i32 0, i32 2
  %1843 = bitcast %union.SECOND_UNION* %1842 to %struct.anon.1*
  %1844 = bitcast %struct.anon.1* %1843 to i32*
  %1845 = load i32, i32* %1844, align 4
  %1846 = lshr i32 %1845, 29
  %1847 = and i32 %1846, 3
  %1848 = load %union.rec*, %union.rec** %z, align 8
  %1849 = bitcast %union.rec* %1848 to %struct.word_type*
  %1850 = getelementptr inbounds %struct.word_type, %struct.word_type* %1849, i32 0, i32 2
  %1851 = bitcast %union.SECOND_UNION* %1850 to %struct.anon.1*
  %1852 = bitcast %struct.anon.1* %1851 to i32*
  %1853 = load i32, i32* %1852, align 4
  %1854 = and i32 %1847, 3
  %1855 = shl i32 %1854, 29
  %1856 = and i32 %1853, -1610612737
  %1857 = or i32 %1856, %1855
  store i32 %1857, i32* %1852, align 4
  %1858 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1859 = zext i8 %1858 to i32
  store i32 %1859, i32* @zz_size, align 4
  %1860 = sext i32 %1859 to i64
  %1861 = icmp uge i64 %1860, 265
  br i1 %1861, label %1862, label %1865

; <label>:1862                                    ; preds = %1766
  %1863 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1864 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %1863)
  br label %1890

; <label>:1865                                    ; preds = %1766
  %1866 = load i32, i32* @zz_size, align 4
  %1867 = sext i32 %1866 to i64
  %1868 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1867
  %1869 = load %union.rec*, %union.rec** %1868, align 8
  %1870 = icmp eq %union.rec* %1869, null
  br i1 %1870, label %1871, label %1875

; <label>:1871                                    ; preds = %1865
  %1872 = load i32, i32* @zz_size, align 4
  %1873 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1874 = call %union.rec* @GetMemory(i32 %1872, %struct.FILE_POS* %1873)
  store %union.rec* %1874, %union.rec** @zz_hold, align 8
  br label %1889

; <label>:1875                                    ; preds = %1865
  %1876 = load i32, i32* @zz_size, align 4
  %1877 = sext i32 %1876 to i64
  %1878 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1877
  %1879 = load %union.rec*, %union.rec** %1878, align 8
  store %union.rec* %1879, %union.rec** @zz_hold, align 8
  store %union.rec* %1879, %union.rec** @zz_hold, align 8
  %1880 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1881 = bitcast %union.rec* %1880 to %struct.word_type*
  %1882 = getelementptr inbounds %struct.word_type, %struct.word_type* %1881, i32 0, i32 0
  %1883 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1882, i32 0, i64 0
  %1884 = getelementptr inbounds %struct.LIST, %struct.LIST* %1883, i32 0, i32 0
  %1885 = load %union.rec*, %union.rec** %1884, align 8
  %1886 = load i32, i32* @zz_size, align 4
  %1887 = sext i32 %1886 to i64
  %1888 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1887
  store %union.rec* %1885, %union.rec** %1888, align 8
  br label %1889

; <label>:1889                                    ; preds = %1875, %1871
  br label %1890

; <label>:1890                                    ; preds = %1889, %1862
  %1891 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1892 = bitcast %union.rec* %1891 to %struct.word_type*
  %1893 = getelementptr inbounds %struct.word_type, %struct.word_type* %1892, i32 0, i32 1
  %1894 = bitcast %union.FIRST_UNION* %1893 to %struct.anon*
  %1895 = getelementptr inbounds %struct.anon, %struct.anon* %1894, i32 0, i32 0
  store i8 0, i8* %1895, align 1
  %1896 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1897 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1898 = bitcast %union.rec* %1897 to %struct.word_type*
  %1899 = getelementptr inbounds %struct.word_type, %struct.word_type* %1898, i32 0, i32 0
  %1900 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1899, i32 0, i64 1
  %1901 = getelementptr inbounds %struct.LIST, %struct.LIST* %1900, i32 0, i32 1
  store %union.rec* %1896, %union.rec** %1901, align 8
  %1902 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1903 = bitcast %union.rec* %1902 to %struct.word_type*
  %1904 = getelementptr inbounds %struct.word_type, %struct.word_type* %1903, i32 0, i32 0
  %1905 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1904, i32 0, i64 1
  %1906 = getelementptr inbounds %struct.LIST, %struct.LIST* %1905, i32 0, i32 0
  store %union.rec* %1896, %union.rec** %1906, align 8
  %1907 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1908 = bitcast %union.rec* %1907 to %struct.word_type*
  %1909 = getelementptr inbounds %struct.word_type, %struct.word_type* %1908, i32 0, i32 0
  %1910 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1909, i32 0, i64 0
  %1911 = getelementptr inbounds %struct.LIST, %struct.LIST* %1910, i32 0, i32 1
  store %union.rec* %1896, %union.rec** %1911, align 8
  %1912 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1913 = bitcast %union.rec* %1912 to %struct.word_type*
  %1914 = getelementptr inbounds %struct.word_type, %struct.word_type* %1913, i32 0, i32 0
  %1915 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1914, i32 0, i64 0
  %1916 = getelementptr inbounds %struct.LIST, %struct.LIST* %1915, i32 0, i32 0
  store %union.rec* %1896, %union.rec** %1916, align 8
  store %union.rec* %1896, %union.rec** @xx_link, align 8
  %1917 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1917, %union.rec** @zz_res, align 8
  %1918 = load %union.rec*, %union.rec** %link, align 8
  %1919 = bitcast %union.rec* %1918 to %struct.word_type*
  %1920 = getelementptr inbounds %struct.word_type, %struct.word_type* %1919, i32 0, i32 0
  %1921 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1920, i32 0, i64 0
  %1922 = getelementptr inbounds %struct.LIST, %struct.LIST* %1921, i32 0, i32 1
  %1923 = load %union.rec*, %union.rec** %1922, align 8
  store %union.rec* %1923, %union.rec** @zz_hold, align 8
  %1924 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1925 = icmp eq %union.rec* %1924, null
  br i1 %1925, label %1926, label %1928

; <label>:1926                                    ; preds = %1890
  %1927 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1976

; <label>:1928                                    ; preds = %1890
  %1929 = load %union.rec*, %union.rec** @zz_res, align 8
  %1930 = icmp eq %union.rec* %1929, null
  br i1 %1930, label %1931, label %1933

; <label>:1931                                    ; preds = %1928
  %1932 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1974

; <label>:1933                                    ; preds = %1928
  %1934 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1935 = bitcast %union.rec* %1934 to %struct.word_type*
  %1936 = getelementptr inbounds %struct.word_type, %struct.word_type* %1935, i32 0, i32 0
  %1937 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1936, i32 0, i64 0
  %1938 = getelementptr inbounds %struct.LIST, %struct.LIST* %1937, i32 0, i32 0
  %1939 = load %union.rec*, %union.rec** %1938, align 8
  store %union.rec* %1939, %union.rec** @zz_tmp, align 8
  %1940 = load %union.rec*, %union.rec** @zz_res, align 8
  %1941 = bitcast %union.rec* %1940 to %struct.word_type*
  %1942 = getelementptr inbounds %struct.word_type, %struct.word_type* %1941, i32 0, i32 0
  %1943 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1942, i32 0, i64 0
  %1944 = getelementptr inbounds %struct.LIST, %struct.LIST* %1943, i32 0, i32 0
  %1945 = load %union.rec*, %union.rec** %1944, align 8
  %1946 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1947 = bitcast %union.rec* %1946 to %struct.word_type*
  %1948 = getelementptr inbounds %struct.word_type, %struct.word_type* %1947, i32 0, i32 0
  %1949 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1948, i32 0, i64 0
  %1950 = getelementptr inbounds %struct.LIST, %struct.LIST* %1949, i32 0, i32 0
  store %union.rec* %1945, %union.rec** %1950, align 8
  %1951 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1952 = load %union.rec*, %union.rec** @zz_res, align 8
  %1953 = bitcast %union.rec* %1952 to %struct.word_type*
  %1954 = getelementptr inbounds %struct.word_type, %struct.word_type* %1953, i32 0, i32 0
  %1955 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1954, i32 0, i64 0
  %1956 = getelementptr inbounds %struct.LIST, %struct.LIST* %1955, i32 0, i32 0
  %1957 = load %union.rec*, %union.rec** %1956, align 8
  %1958 = bitcast %union.rec* %1957 to %struct.word_type*
  %1959 = getelementptr inbounds %struct.word_type, %struct.word_type* %1958, i32 0, i32 0
  %1960 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1959, i32 0, i64 0
  %1961 = getelementptr inbounds %struct.LIST, %struct.LIST* %1960, i32 0, i32 1
  store %union.rec* %1951, %union.rec** %1961, align 8
  %1962 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1963 = load %union.rec*, %union.rec** @zz_res, align 8
  %1964 = bitcast %union.rec* %1963 to %struct.word_type*
  %1965 = getelementptr inbounds %struct.word_type, %struct.word_type* %1964, i32 0, i32 0
  %1966 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1965, i32 0, i64 0
  %1967 = getelementptr inbounds %struct.LIST, %struct.LIST* %1966, i32 0, i32 0
  store %union.rec* %1962, %union.rec** %1967, align 8
  %1968 = load %union.rec*, %union.rec** @zz_res, align 8
  %1969 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1970 = bitcast %union.rec* %1969 to %struct.word_type*
  %1971 = getelementptr inbounds %struct.word_type, %struct.word_type* %1970, i32 0, i32 0
  %1972 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1971, i32 0, i64 0
  %1973 = getelementptr inbounds %struct.LIST, %struct.LIST* %1972, i32 0, i32 1
  store %union.rec* %1968, %union.rec** %1973, align 8
  br label %1974

; <label>:1974                                    ; preds = %1933, %1931
  %1975 = phi %union.rec* [ %1932, %1931 ], [ %1968, %1933 ]
  br label %1976

; <label>:1976                                    ; preds = %1974, %1926
  %1977 = phi %union.rec* [ %1927, %1926 ], [ %1975, %1974 ]
  %1978 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1978, %union.rec** @zz_res, align 8
  %1979 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %1979, %union.rec** @zz_hold, align 8
  %1980 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1981 = icmp eq %union.rec* %1980, null
  br i1 %1981, label %1982, label %1984

; <label>:1982                                    ; preds = %1976
  %1983 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2032

; <label>:1984                                    ; preds = %1976
  %1985 = load %union.rec*, %union.rec** @zz_res, align 8
  %1986 = icmp eq %union.rec* %1985, null
  br i1 %1986, label %1987, label %1989

; <label>:1987                                    ; preds = %1984
  %1988 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2030

; <label>:1989                                    ; preds = %1984
  %1990 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1991 = bitcast %union.rec* %1990 to %struct.word_type*
  %1992 = getelementptr inbounds %struct.word_type, %struct.word_type* %1991, i32 0, i32 0
  %1993 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1992, i32 0, i64 1
  %1994 = getelementptr inbounds %struct.LIST, %struct.LIST* %1993, i32 0, i32 0
  %1995 = load %union.rec*, %union.rec** %1994, align 8
  store %union.rec* %1995, %union.rec** @zz_tmp, align 8
  %1996 = load %union.rec*, %union.rec** @zz_res, align 8
  %1997 = bitcast %union.rec* %1996 to %struct.word_type*
  %1998 = getelementptr inbounds %struct.word_type, %struct.word_type* %1997, i32 0, i32 0
  %1999 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1998, i32 0, i64 1
  %2000 = getelementptr inbounds %struct.LIST, %struct.LIST* %1999, i32 0, i32 0
  %2001 = load %union.rec*, %union.rec** %2000, align 8
  %2002 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2003 = bitcast %union.rec* %2002 to %struct.word_type*
  %2004 = getelementptr inbounds %struct.word_type, %struct.word_type* %2003, i32 0, i32 0
  %2005 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2004, i32 0, i64 1
  %2006 = getelementptr inbounds %struct.LIST, %struct.LIST* %2005, i32 0, i32 0
  store %union.rec* %2001, %union.rec** %2006, align 8
  %2007 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2008 = load %union.rec*, %union.rec** @zz_res, align 8
  %2009 = bitcast %union.rec* %2008 to %struct.word_type*
  %2010 = getelementptr inbounds %struct.word_type, %struct.word_type* %2009, i32 0, i32 0
  %2011 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2010, i32 0, i64 1
  %2012 = getelementptr inbounds %struct.LIST, %struct.LIST* %2011, i32 0, i32 0
  %2013 = load %union.rec*, %union.rec** %2012, align 8
  %2014 = bitcast %union.rec* %2013 to %struct.word_type*
  %2015 = getelementptr inbounds %struct.word_type, %struct.word_type* %2014, i32 0, i32 0
  %2016 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2015, i32 0, i64 1
  %2017 = getelementptr inbounds %struct.LIST, %struct.LIST* %2016, i32 0, i32 1
  store %union.rec* %2007, %union.rec** %2017, align 8
  %2018 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2019 = load %union.rec*, %union.rec** @zz_res, align 8
  %2020 = bitcast %union.rec* %2019 to %struct.word_type*
  %2021 = getelementptr inbounds %struct.word_type, %struct.word_type* %2020, i32 0, i32 0
  %2022 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2021, i32 0, i64 1
  %2023 = getelementptr inbounds %struct.LIST, %struct.LIST* %2022, i32 0, i32 0
  store %union.rec* %2018, %union.rec** %2023, align 8
  %2024 = load %union.rec*, %union.rec** @zz_res, align 8
  %2025 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2026 = bitcast %union.rec* %2025 to %struct.word_type*
  %2027 = getelementptr inbounds %struct.word_type, %struct.word_type* %2026, i32 0, i32 0
  %2028 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2027, i32 0, i64 1
  %2029 = getelementptr inbounds %struct.LIST, %struct.LIST* %2028, i32 0, i32 1
  store %union.rec* %2024, %union.rec** %2029, align 8
  br label %2030

; <label>:2030                                    ; preds = %1989, %1987
  %2031 = phi %union.rec* [ %1988, %1987 ], [ %2024, %1989 ]
  br label %2032

; <label>:2032                                    ; preds = %2030, %1982
  %2033 = phi %union.rec* [ %1983, %1982 ], [ %2031, %2030 ]
  %2034 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %2035 = zext i8 %2034 to i32
  store i32 %2035, i32* @zz_size, align 4
  %2036 = sext i32 %2035 to i64
  %2037 = icmp uge i64 %2036, 265
  br i1 %2037, label %2038, label %2041

; <label>:2038                                    ; preds = %2032
  %2039 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2040 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %2039)
  br label %2066

; <label>:2041                                    ; preds = %2032
  %2042 = load i32, i32* @zz_size, align 4
  %2043 = sext i32 %2042 to i64
  %2044 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2043
  %2045 = load %union.rec*, %union.rec** %2044, align 8
  %2046 = icmp eq %union.rec* %2045, null
  br i1 %2046, label %2047, label %2051

; <label>:2047                                    ; preds = %2041
  %2048 = load i32, i32* @zz_size, align 4
  %2049 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2050 = call %union.rec* @GetMemory(i32 %2048, %struct.FILE_POS* %2049)
  store %union.rec* %2050, %union.rec** @zz_hold, align 8
  br label %2065

; <label>:2051                                    ; preds = %2041
  %2052 = load i32, i32* @zz_size, align 4
  %2053 = sext i32 %2052 to i64
  %2054 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2053
  %2055 = load %union.rec*, %union.rec** %2054, align 8
  store %union.rec* %2055, %union.rec** @zz_hold, align 8
  store %union.rec* %2055, %union.rec** @zz_hold, align 8
  %2056 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2057 = bitcast %union.rec* %2056 to %struct.word_type*
  %2058 = getelementptr inbounds %struct.word_type, %struct.word_type* %2057, i32 0, i32 0
  %2059 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2058, i32 0, i64 0
  %2060 = getelementptr inbounds %struct.LIST, %struct.LIST* %2059, i32 0, i32 0
  %2061 = load %union.rec*, %union.rec** %2060, align 8
  %2062 = load i32, i32* @zz_size, align 4
  %2063 = sext i32 %2062 to i64
  %2064 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2063
  store %union.rec* %2061, %union.rec** %2064, align 8
  br label %2065

; <label>:2065                                    ; preds = %2051, %2047
  br label %2066

; <label>:2066                                    ; preds = %2065, %2038
  %2067 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2068 = bitcast %union.rec* %2067 to %struct.word_type*
  %2069 = getelementptr inbounds %struct.word_type, %struct.word_type* %2068, i32 0, i32 1
  %2070 = bitcast %union.FIRST_UNION* %2069 to %struct.anon*
  %2071 = getelementptr inbounds %struct.anon, %struct.anon* %2070, i32 0, i32 0
  store i8 0, i8* %2071, align 1
  %2072 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2073 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2074 = bitcast %union.rec* %2073 to %struct.word_type*
  %2075 = getelementptr inbounds %struct.word_type, %struct.word_type* %2074, i32 0, i32 0
  %2076 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2075, i32 0, i64 1
  %2077 = getelementptr inbounds %struct.LIST, %struct.LIST* %2076, i32 0, i32 1
  store %union.rec* %2072, %union.rec** %2077, align 8
  %2078 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2079 = bitcast %union.rec* %2078 to %struct.word_type*
  %2080 = getelementptr inbounds %struct.word_type, %struct.word_type* %2079, i32 0, i32 0
  %2081 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2080, i32 0, i64 1
  %2082 = getelementptr inbounds %struct.LIST, %struct.LIST* %2081, i32 0, i32 0
  store %union.rec* %2072, %union.rec** %2082, align 8
  %2083 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2084 = bitcast %union.rec* %2083 to %struct.word_type*
  %2085 = getelementptr inbounds %struct.word_type, %struct.word_type* %2084, i32 0, i32 0
  %2086 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2085, i32 0, i64 0
  %2087 = getelementptr inbounds %struct.LIST, %struct.LIST* %2086, i32 0, i32 1
  store %union.rec* %2072, %union.rec** %2087, align 8
  %2088 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2089 = bitcast %union.rec* %2088 to %struct.word_type*
  %2090 = getelementptr inbounds %struct.word_type, %struct.word_type* %2089, i32 0, i32 0
  %2091 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2090, i32 0, i64 0
  %2092 = getelementptr inbounds %struct.LIST, %struct.LIST* %2091, i32 0, i32 0
  store %union.rec* %2072, %union.rec** %2092, align 8
  store %union.rec* %2072, %union.rec** @xx_link, align 8
  %2093 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2093, %union.rec** @zz_res, align 8
  %2094 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %2094, %union.rec** @zz_hold, align 8
  %2095 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2096 = icmp eq %union.rec* %2095, null
  br i1 %2096, label %2097, label %2099

; <label>:2097                                    ; preds = %2066
  %2098 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2147

; <label>:2099                                    ; preds = %2066
  %2100 = load %union.rec*, %union.rec** @zz_res, align 8
  %2101 = icmp eq %union.rec* %2100, null
  br i1 %2101, label %2102, label %2104

; <label>:2102                                    ; preds = %2099
  %2103 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2145

; <label>:2104                                    ; preds = %2099
  %2105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2106 = bitcast %union.rec* %2105 to %struct.word_type*
  %2107 = getelementptr inbounds %struct.word_type, %struct.word_type* %2106, i32 0, i32 0
  %2108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2107, i32 0, i64 0
  %2109 = getelementptr inbounds %struct.LIST, %struct.LIST* %2108, i32 0, i32 0
  %2110 = load %union.rec*, %union.rec** %2109, align 8
  store %union.rec* %2110, %union.rec** @zz_tmp, align 8
  %2111 = load %union.rec*, %union.rec** @zz_res, align 8
  %2112 = bitcast %union.rec* %2111 to %struct.word_type*
  %2113 = getelementptr inbounds %struct.word_type, %struct.word_type* %2112, i32 0, i32 0
  %2114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2113, i32 0, i64 0
  %2115 = getelementptr inbounds %struct.LIST, %struct.LIST* %2114, i32 0, i32 0
  %2116 = load %union.rec*, %union.rec** %2115, align 8
  %2117 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2118 = bitcast %union.rec* %2117 to %struct.word_type*
  %2119 = getelementptr inbounds %struct.word_type, %struct.word_type* %2118, i32 0, i32 0
  %2120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2119, i32 0, i64 0
  %2121 = getelementptr inbounds %struct.LIST, %struct.LIST* %2120, i32 0, i32 0
  store %union.rec* %2116, %union.rec** %2121, align 8
  %2122 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2123 = load %union.rec*, %union.rec** @zz_res, align 8
  %2124 = bitcast %union.rec* %2123 to %struct.word_type*
  %2125 = getelementptr inbounds %struct.word_type, %struct.word_type* %2124, i32 0, i32 0
  %2126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2125, i32 0, i64 0
  %2127 = getelementptr inbounds %struct.LIST, %struct.LIST* %2126, i32 0, i32 0
  %2128 = load %union.rec*, %union.rec** %2127, align 8
  %2129 = bitcast %union.rec* %2128 to %struct.word_type*
  %2130 = getelementptr inbounds %struct.word_type, %struct.word_type* %2129, i32 0, i32 0
  %2131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2130, i32 0, i64 0
  %2132 = getelementptr inbounds %struct.LIST, %struct.LIST* %2131, i32 0, i32 1
  store %union.rec* %2122, %union.rec** %2132, align 8
  %2133 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2134 = load %union.rec*, %union.rec** @zz_res, align 8
  %2135 = bitcast %union.rec* %2134 to %struct.word_type*
  %2136 = getelementptr inbounds %struct.word_type, %struct.word_type* %2135, i32 0, i32 0
  %2137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2136, i32 0, i64 0
  %2138 = getelementptr inbounds %struct.LIST, %struct.LIST* %2137, i32 0, i32 0
  store %union.rec* %2133, %union.rec** %2138, align 8
  %2139 = load %union.rec*, %union.rec** @zz_res, align 8
  %2140 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2141 = bitcast %union.rec* %2140 to %struct.word_type*
  %2142 = getelementptr inbounds %struct.word_type, %struct.word_type* %2141, i32 0, i32 0
  %2143 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2142, i32 0, i64 0
  %2144 = getelementptr inbounds %struct.LIST, %struct.LIST* %2143, i32 0, i32 1
  store %union.rec* %2139, %union.rec** %2144, align 8
  br label %2145

; <label>:2145                                    ; preds = %2104, %2102
  %2146 = phi %union.rec* [ %2103, %2102 ], [ %2139, %2104 ]
  br label %2147

; <label>:2147                                    ; preds = %2145, %2097
  %2148 = phi %union.rec* [ %2098, %2097 ], [ %2146, %2145 ]
  %2149 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2149, %union.rec** @zz_res, align 8
  %2150 = load %union.rec*, %union.rec** %y, align 8
  %2151 = bitcast %union.rec* %2150 to %struct.word_type*
  %2152 = getelementptr inbounds %struct.word_type, %struct.word_type* %2151, i32 0, i32 1
  %2153 = bitcast %union.FIRST_UNION* %2152 to %struct.FILE_POS*
  %2154 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), %struct.FILE_POS* %2153)
  store %union.rec* %2154, %union.rec** @zz_hold, align 8
  %2155 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2156 = icmp eq %union.rec* %2155, null
  br i1 %2156, label %2157, label %2159

; <label>:2157                                    ; preds = %2147
  %2158 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2207

; <label>:2159                                    ; preds = %2147
  %2160 = load %union.rec*, %union.rec** @zz_res, align 8
  %2161 = icmp eq %union.rec* %2160, null
  br i1 %2161, label %2162, label %2164

; <label>:2162                                    ; preds = %2159
  %2163 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2205

; <label>:2164                                    ; preds = %2159
  %2165 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2166 = bitcast %union.rec* %2165 to %struct.word_type*
  %2167 = getelementptr inbounds %struct.word_type, %struct.word_type* %2166, i32 0, i32 0
  %2168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2167, i32 0, i64 1
  %2169 = getelementptr inbounds %struct.LIST, %struct.LIST* %2168, i32 0, i32 0
  %2170 = load %union.rec*, %union.rec** %2169, align 8
  store %union.rec* %2170, %union.rec** @zz_tmp, align 8
  %2171 = load %union.rec*, %union.rec** @zz_res, align 8
  %2172 = bitcast %union.rec* %2171 to %struct.word_type*
  %2173 = getelementptr inbounds %struct.word_type, %struct.word_type* %2172, i32 0, i32 0
  %2174 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2173, i32 0, i64 1
  %2175 = getelementptr inbounds %struct.LIST, %struct.LIST* %2174, i32 0, i32 0
  %2176 = load %union.rec*, %union.rec** %2175, align 8
  %2177 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2178 = bitcast %union.rec* %2177 to %struct.word_type*
  %2179 = getelementptr inbounds %struct.word_type, %struct.word_type* %2178, i32 0, i32 0
  %2180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2179, i32 0, i64 1
  %2181 = getelementptr inbounds %struct.LIST, %struct.LIST* %2180, i32 0, i32 0
  store %union.rec* %2176, %union.rec** %2181, align 8
  %2182 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2183 = load %union.rec*, %union.rec** @zz_res, align 8
  %2184 = bitcast %union.rec* %2183 to %struct.word_type*
  %2185 = getelementptr inbounds %struct.word_type, %struct.word_type* %2184, i32 0, i32 0
  %2186 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2185, i32 0, i64 1
  %2187 = getelementptr inbounds %struct.LIST, %struct.LIST* %2186, i32 0, i32 0
  %2188 = load %union.rec*, %union.rec** %2187, align 8
  %2189 = bitcast %union.rec* %2188 to %struct.word_type*
  %2190 = getelementptr inbounds %struct.word_type, %struct.word_type* %2189, i32 0, i32 0
  %2191 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2190, i32 0, i64 1
  %2192 = getelementptr inbounds %struct.LIST, %struct.LIST* %2191, i32 0, i32 1
  store %union.rec* %2182, %union.rec** %2192, align 8
  %2193 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2194 = load %union.rec*, %union.rec** @zz_res, align 8
  %2195 = bitcast %union.rec* %2194 to %struct.word_type*
  %2196 = getelementptr inbounds %struct.word_type, %struct.word_type* %2195, i32 0, i32 0
  %2197 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2196, i32 0, i64 1
  %2198 = getelementptr inbounds %struct.LIST, %struct.LIST* %2197, i32 0, i32 0
  store %union.rec* %2193, %union.rec** %2198, align 8
  %2199 = load %union.rec*, %union.rec** @zz_res, align 8
  %2200 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2201 = bitcast %union.rec* %2200 to %struct.word_type*
  %2202 = getelementptr inbounds %struct.word_type, %struct.word_type* %2201, i32 0, i32 0
  %2203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2202, i32 0, i64 1
  %2204 = getelementptr inbounds %struct.LIST, %struct.LIST* %2203, i32 0, i32 1
  store %union.rec* %2199, %union.rec** %2204, align 8
  br label %2205

; <label>:2205                                    ; preds = %2164, %2162
  %2206 = phi %union.rec* [ %2163, %2162 ], [ %2199, %2164 ]
  br label %2207

; <label>:2207                                    ; preds = %2205, %2157
  %2208 = phi %union.rec* [ %2158, %2157 ], [ %2206, %2205 ]
  %2209 = load i32, i32* %start, align 4
  %2210 = load i32, i32* %i, align 4
  %2211 = add nsw i32 %2209, %2210
  %2212 = sub nsw i32 %2211, 1
  %2213 = sext i32 %2212 to i64
  %2214 = load i8*, i8** %key, align 8
  %2215 = getelementptr inbounds i8, i8* %2214, i64 %2213
  store i8 0, i8* %2215, align 1
  store i32 1, i32* %hyphenated, align 4
  br label %2216

; <label>:2216                                    ; preds = %2207, %1431
  br label %2217

; <label>:2217                                    ; preds = %2216
  %2218 = load i32, i32* %i, align 4
  %2219 = add nsw i32 %2218, -1
  store i32 %2219, i32* %i, align 4
  br label %1428

; <label>:2220                                    ; preds = %1428
  %2221 = load i32, i32* %hyphenated, align 4
  %2222 = icmp ne i32 %2221, 0
  br i1 %2222, label %2223, label %2231

; <label>:2223                                    ; preds = %2220
  %2224 = load %union.rec*, %union.rec** %y, align 8
  call void @FontWordSize(%union.rec* %2224)
  %2225 = load %union.rec*, %union.rec** %next_link, align 8
  %2226 = bitcast %union.rec* %2225 to %struct.word_type*
  %2227 = getelementptr inbounds %struct.word_type, %struct.word_type* %2226, i32 0, i32 0
  %2228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2227, i32 0, i64 0
  %2229 = getelementptr inbounds %struct.LIST, %struct.LIST* %2228, i32 0, i32 0
  %2230 = load %union.rec*, %union.rec** %2229, align 8
  store %union.rec* %2230, %union.rec** %link, align 8
  br label %2231

; <label>:2231                                    ; preds = %2223, %2220
  br label %2232

; <label>:2232                                    ; preds = %2231, %1029, %1008, %989, %216, %155, %108
  %2233 = load %union.rec*, %union.rec** %link, align 8
  %2234 = bitcast %union.rec* %2233 to %struct.word_type*
  %2235 = getelementptr inbounds %struct.word_type, %struct.word_type* %2234, i32 0, i32 0
  %2236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2235, i32 0, i64 0
  %2237 = getelementptr inbounds %struct.LIST, %struct.LIST* %2236, i32 0, i32 1
  %2238 = load %union.rec*, %union.rec** %2237, align 8
  store %union.rec* %2238, %union.rec** %link, align 8
  br label %20

; <label>:2239                                    ; preds = %20
  %2240 = load %union.rec*, %union.rec** %1, align 8
  ret %union.rec* %2240
}

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

declare void @FontWordSize(%union.rec*) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare %union.rec* @LanguageHyph(i32) #1

declare zeroext i16 @DefineFile(i8*, i8*, %struct.FILE_POS*, i32, i32) #1

declare %struct._IO_FILE* @OpenFile(i16 zeroext, i32, i32) #1

declare i8* @FileName(i16 zeroext) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.trie_rec* @NewTrie(i32 %node_lim, i32 %string_lim) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %T = alloca %struct.trie_rec*, align 8
  %i = alloca i32, align 4
  store i32 %node_lim, i32* %1, align 4
  store i32 %string_lim, i32* %2, align 4
  %3 = load i32, i32* %1, align 4
  %4 = zext i32 %3 to i64
  %5 = mul i64 %4, 2
  %6 = add i64 296, %5
  %7 = load i32, i32* %2, align 4
  %8 = zext i32 %7 to i64
  %9 = mul i64 %8, 1
  %10 = add i64 %6, %9
  %11 = call noalias i8* @malloc(i64 %10) #5
  %12 = bitcast i8* %11 to %struct.trie_rec*
  store %struct.trie_rec* %12, %struct.trie_rec** %T, align 8
  %13 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %14 = icmp eq %struct.trie_rec* %13, null
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %0
  %16 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %17 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %16)
  br label %18

; <label>:18                                      ; preds = %15, %0
  %19 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %20 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %19, i32 0, i32 0
  store i32 5361534, i32* %20, align 4
  %21 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %22 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  store i32 0, i32* %i, align 4
  br label %23

; <label>:23                                      ; preds = %32, %18
  %24 = load i32, i32* %i, align 4
  %25 = icmp slt i32 %24, 256
  br i1 %25, label %26, label %35

; <label>:26                                      ; preds = %23
  %27 = load i32, i32* %i, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %30 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %29, i32 0, i32 2
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %30, i32 0, i64 %28
  store i8 0, i8* %31, align 1
  br label %32

; <label>:32                                      ; preds = %26
  %33 = load i32, i32* %i, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %i, align 4
  br label %23

; <label>:35                                      ; preds = %23
  %36 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %37 = bitcast %struct.trie_rec* %36 to i8*
  %38 = getelementptr inbounds i8, i8* %37, i64 296
  %39 = bitcast i8* %38 to i16*
  %40 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %41 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %40, i32 0, i32 3
  store i16* %39, i16** %41, align 8
  %42 = load i32, i32* %1, align 4
  %43 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %44 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %46 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %45, i32 0, i32 5
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* %1, align 4
  %48 = zext i32 %47 to i64
  %49 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %50 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %49, i32 0, i32 3
  %51 = load i16*, i16** %50, align 8
  %52 = getelementptr inbounds i16, i16* %51, i64 %48
  %53 = bitcast i16* %52 to i8*
  %54 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %55 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %54, i32 0, i32 6
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %2, align 4
  %57 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %58 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 4
  %59 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  %60 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %59, i32 0, i32 7
  store i32 %56, i32* %60, align 4
  %61 = load %struct.trie_rec*, %struct.trie_rec** %T, align 8
  ret %struct.trie_rec* %61
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @DecodeEscapes(i8* %str, i8* %fname, i32 %hline_num) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %str, i8** %1, align 8
  store i8* %fname, i8** %2, align 8
  store i32 %hline_num, i32* %3, align 4
  %4 = load i8*, i8** %1, align 8
  store i8* %4, i8** %q, align 8
  store i8* %4, i8** %p, align 8
  br label %5

; <label>:5                                       ; preds = %86, %0
  %6 = load i8*, i8** %q, align 8
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %87

; <label>:10                                      ; preds = %5
  %11 = load i8*, i8** %q, align 8
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %13, 92
  br i1 %14, label %15, label %80

; <label>:15                                      ; preds = %10
  store i32 0, i32* %i, align 4
  br label %16

; <label>:16                                      ; preds = %37, %15
  %17 = load i32, i32* %i, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [138 x i8*], [138 x i8*]* @tex_codes, i32 0, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

; <label>:25                                      ; preds = %16
  %26 = load i8*, i8** %q, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i32, i32* %i, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [138 x i8*], [138 x i8*]* @tex_codes, i32 0, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @StringBeginsWith(i8* %27, i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %25
  br label %40

; <label>:36                                      ; preds = %25
  br label %37

; <label>:37                                      ; preds = %36
  %38 = load i32, i32* %i, align 4
  %39 = add nsw i32 %38, 3
  store i32 %39, i32* %i, align 4
  br label %16

; <label>:40                                      ; preds = %35, %16
  %41 = load i32, i32* %i, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [138 x i8*], [138 x i8*]* @tex_codes, i32 0, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %74

; <label>:49                                      ; preds = %40
  %50 = load i8*, i8** %p, align 8
  %51 = load i32, i32* %i, align 4
  %52 = add nsw i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [138 x i8*], [138 x i8*]* @tex_codes, i32 0, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i8* @strcpy(i8* %50, i8* %55) #5
  %57 = load i32, i32* %i, align 4
  %58 = add nsw i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [138 x i8*], [138 x i8*]* @tex_codes, i32 0, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strlen(i8* %61) #4
  %63 = load i8*, i8** %p, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 %62
  store i8* %64, i8** %p, align 8
  %65 = load i32, i32* %i, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [138 x i8*], [138 x i8*]* @tex_codes, i32 0, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @strlen(i8* %69) #4
  %71 = add i64 %70, 1
  %72 = load i8*, i8** %q, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 %71
  store i8* %73, i8** %q, align 8
  br label %79

; <label>:74                                      ; preds = %40
  %75 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %76 = load i8*, i8** %2, align 8
  %77 = load i32, i32* %3, align 4
  %78 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.31, i32 0, i32 0), i32 1, %struct.FILE_POS* %75, i8* %76, i32 %77)
  br label %79

; <label>:79                                      ; preds = %74, %49
  br label %86

; <label>:80                                      ; preds = %10
  %81 = load i8*, i8** %q, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %q, align 8
  %83 = load i8, i8* %81, align 1
  %84 = load i8*, i8** %p, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %p, align 8
  store i8 %83, i8* %84, align 1
  br label %86

; <label>:86                                      ; preds = %80, %79
  br label %5

; <label>:87                                      ; preds = %5
  %88 = load i8*, i8** %p, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %p, align 8
  store i8 0, i8* %88, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @AddClassToTrie(i8* %str, %struct.trie_rec* %T) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.trie_rec*, align 8
  %i = alloca i32, align 4
  store i8* %str, i8** %1, align 8
  store %struct.trie_rec* %T, %struct.trie_rec** %2, align 8
  %3 = load %struct.trie_rec*, %struct.trie_rec** %2, align 8
  %4 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %3, i32 0, i32 8
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.trie_rec*, %struct.trie_rec** %2, align 8
  %7 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %13, label %10

; <label>:10                                      ; preds = %0
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %12 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.168, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %10, %0
  store i32 0, i32* %i, align 4
  br label %14

; <label>:14                                      ; preds = %59, %13
  %15 = load i32, i32* %i, align 4
  %16 = sext i32 %15 to i64
  %17 = load i8*, i8** %1, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 %16
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %62

; <label>:22                                      ; preds = %14
  %23 = load i32, i32* %i, align 4
  %24 = sext i32 %23 to i64
  %25 = load i8*, i8** %1, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 %24
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i64
  %29 = load %struct.trie_rec*, %struct.trie_rec** %2, align 8
  %30 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %29, i32 0, i32 2
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %30, i32 0, i64 %28
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %49

; <label>:35                                      ; preds = %22
  %36 = load %struct.trie_rec*, %struct.trie_rec** %2, align 8
  %37 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = trunc i32 %38 to i8
  %40 = load i32, i32* %i, align 4
  %41 = sext i32 %40 to i64
  %42 = load i8*, i8** %1, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 %41
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i64
  %46 = load %struct.trie_rec*, %struct.trie_rec** %2, align 8
  %47 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %46, i32 0, i32 2
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %47, i32 0, i64 %45
  store i8 %39, i8* %48, align 1
  br label %58

; <label>:49                                      ; preds = %22
  %50 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %51 = load i32, i32* %i, align 4
  %52 = sext i32 %51 to i64
  %53 = load i8*, i8** %1, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 %52
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 6, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.169, i32 0, i32 0), i32 0, %struct.FILE_POS* %50, i32 %56)
  br label %58

; <label>:58                                      ; preds = %49, %35
  br label %59

; <label>:59                                      ; preds = %58
  %60 = load i32, i32* %i, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %i, align 4
  br label %14

; <label>:62                                      ; preds = %14
  %63 = load %struct.trie_rec*, %struct.trie_rec** %2, align 8
  %64 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @TrieInsert(i8* %key, i8* %value, %struct.trie_rec* %T, i8* %fname, i32 %hline_num) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.trie_rec*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %str = alloca [512 x i8], align 16
  %compressed_value = alloca [512 x i8], align 16
  %i = alloca i32, align 4
  %curr_node = alloca i32, align 4
  %next_node = alloca i32, align 4
  %pos = alloca i32, align 4
  %ch = alloca i32, align 4
  %strpos = alloca i16, align 2
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %prev = alloca i8*, align 8
  %i1 = alloca i32, align 4
  store i8* %key, i8** %2, align 8
  store i8* %value, i8** %3, align 8
  store %struct.trie_rec* %T, %struct.trie_rec** %4, align 8
  store i8* %fname, i8** %5, align 8
  store i32 %hline_num, i32* %6, align 4
  %7 = load %struct.trie_rec*, %struct.trie_rec** %4, align 8
  %8 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %23

; <label>:11                                      ; preds = %0
  %12 = load %struct.trie_rec*, %struct.trie_rec** %4, align 8
  %13 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sdiv i32 %15, 4
  %17 = add nsw i32 %16, 1
  %18 = mul nsw i32 4, %17
  %19 = load %struct.trie_rec*, %struct.trie_rec** %4, align 8
  %20 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.trie_rec*, %struct.trie_rec** %4, align 8
  %22 = call i32 @NewTrieNode(%struct.trie_rec* %21)
  store i32 %22, i32* %ch, align 4
  br label %23

; <label>:23                                      ; preds = %11, %0
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 -1
  store i8* %25, i8** %prev, align 8
  %26 = getelementptr inbounds [512 x i8], [512 x i8]* %compressed_value, i32 0, i32 0
  store i8* %26, i8** %p, align 8
  %27 = load i8*, i8** %3, align 8
  store i8* %27, i8** %q, align 8
  br label %28

; <label>:28                                      ; preds = %66, %23
  %29 = load i8*, i8** %q, align 8
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %69

; <label>:33                                      ; preds = %28
  %34 = load i8*, i8** %q, align 8
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp ne i32 %36, 48
  br i1 %37, label %46, label %38

; <label>:38                                      ; preds = %33
  %39 = load i8*, i8** %q, align 8
  %40 = load i8*, i8** %prev, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = sub nsw i64 %43, 1
  %45 = icmp sge i64 %44, 15
  br i1 %45, label %46, label %65

; <label>:46                                      ; preds = %38, %33
  %47 = load i8*, i8** %q, align 8
  %48 = load i8*, i8** %prev, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = sub nsw i64 %51, 1
  %53 = shl i64 %52, 4
  %54 = load i8*, i8** %q, align 8
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = sub nsw i32 %56, 48
  %58 = add nsw i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = or i64 %53, %59
  %61 = trunc i64 %60 to i8
  %62 = load i8*, i8** %p, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %p, align 8
  store i8 %61, i8* %62, align 1
  %64 = load i8*, i8** %q, align 8
  store i8* %64, i8** %prev, align 8
  br label %65

; <label>:65                                      ; preds = %46, %38
  br label %66

; <label>:66                                      ; preds = %65
  %67 = load i8*, i8** %q, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %q, align 8
  br label %28

; <label>:69                                      ; preds = %28
  %70 = load i8*, i8** %p, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %p, align 8
  store i8 0, i8* %70, align 1
  store i32 0, i32* %i1, align 4
  br label %72

; <label>:72                                      ; preds = %119, %69
  %73 = load i32, i32* %i1, align 4
  %74 = sext i32 %73 to i64
  %75 = load i8*, i8** %2, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 %74
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %122

; <label>:80                                      ; preds = %72
  %81 = load i32, i32* %i1, align 4
  %82 = sext i32 %81 to i64
  %83 = load i8*, i8** %2, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 %82
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i64
  %87 = load %struct.trie_rec*, %struct.trie_rec** %4, align 8
  %88 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %87, i32 0, i32 2
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %88, i32 0, i64 %86
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %107

; <label>:93                                      ; preds = %80
  %94 = load i32, i32* %i1, align 4
  %95 = sext i32 %94 to i64
  %96 = load i8*, i8** %2, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 %95
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i64
  %100 = load %struct.trie_rec*, %struct.trie_rec** %4, align 8
  %101 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %100, i32 0, i32 2
  %102 = getelementptr inbounds [256 x i8], [256 x i8]* %101, i32 0, i64 %99
  %103 = load i8, i8* %102, align 1
  %104 = load i32, i32* %i1, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %105
  store i8 %103, i8* %106, align 1
  br label %118

; <label>:107                                     ; preds = %80
  %108 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %109 = load i8*, i8** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %i1, align 4
  %112 = sext i32 %111 to i64
  %113 = load i8*, i8** %2, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 %112
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 2, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.170, i32 0, i32 0), i32 1, %struct.FILE_POS* %108, i8* %109, i32 %110, i32 %116)
  br label %118

; <label>:118                                     ; preds = %107, %93
  br label %119

; <label>:119                                     ; preds = %118
  %120 = load i32, i32* %i1, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %i1, align 4
  br label %72

; <label>:122                                     ; preds = %72
  %123 = load i32, i32* %i1, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %124
  store i8 0, i8* %125, align 1
  store i32 0, i32* %i, align 4
  store i32 0, i32* %curr_node, align 4
  br label %126

; <label>:126                                     ; preds = %274, %122
  %127 = load i32, i32* %i, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %167

; <label>:133                                     ; preds = %126
  %134 = load i32, i32* %curr_node, align 4
  %135 = sext i32 %134 to i64
  %136 = load %struct.trie_rec*, %struct.trie_rec** %4, align 8
  %137 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %136, i32 0, i32 3
  %138 = load i16*, i16** %137, align 8
  %139 = getelementptr inbounds i16, i16* %138, i64 %135
  %140 = load i16, i16* %139, align 2
  %141 = sext i16 %140 to i32
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

; <label>:143                                     ; preds = %133
  %144 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %145 = load i8*, i8** %2, align 8
  %146 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.171, i32 0, i32 0), i32 0, %struct.FILE_POS* %144, i8* %145)
  br label %166

; <label>:147                                     ; preds = %133
  %148 = getelementptr inbounds [512 x i8], [512 x i8]* %compressed_value, i32 0, i32 0
  %149 = load %struct.trie_rec*, %struct.trie_rec** %4, align 8
  %150 = call signext i16 @NewTrieString(i8* %148, %struct.trie_rec* %149)
  store i16 %150, i16* %strpos, align 2
  %151 = load i16, i16* %strpos, align 2
  %152 = sext i16 %151 to i32
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %155

; <label>:154                                     ; preds = %147
  store i32 0, i32* %1
  br label %279

; <label>:155                                     ; preds = %147
  %156 = load i16, i16* %strpos, align 2
  %157 = sext i16 %156 to i32
  %158 = sub nsw i32 0, %157
  %159 = trunc i32 %158 to i16
  %160 = load i32, i32* %curr_node, align 4
  %161 = sext i32 %160 to i64
  %162 = load %struct.trie_rec*, %struct.trie_rec** %4, align 8
  %163 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %162, i32 0, i32 3
  %164 = load i16*, i16** %163, align 8
  %165 = getelementptr inbounds i16, i16* %164, i64 %161
  store i16 %159, i16* %165, align 2
  br label %166

; <label>:166                                     ; preds = %155, %143
  store i32 1, i32* %1
  br label %279

; <label>:167                                     ; preds = %126
  %168 = load i32, i32* %curr_node, align 4
  %169 = load i32, i32* %i, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = add nsw i32 %168, %173
  %175 = sext i32 %174 to i64
  %176 = load %struct.trie_rec*, %struct.trie_rec** %4, align 8
  %177 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %176, i32 0, i32 3
  %178 = load i16*, i16** %177, align 8
  %179 = getelementptr inbounds i16, i16* %178, i64 %175
  %180 = load i16, i16* %179, align 2
  %181 = sext i16 %180 to i32
  store i32 %181, i32* %next_node, align 4
  %182 = load i32, i32* %next_node, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %220

; <label>:184                                     ; preds = %167
  %185 = getelementptr inbounds [512 x i8], [512 x i8]* %compressed_value, i32 0, i32 0
  %186 = load %struct.trie_rec*, %struct.trie_rec** %4, align 8
  %187 = call signext i16 @NewTrieString(i8* %185, %struct.trie_rec* %186)
  %188 = sext i16 %187 to i32
  store i32 %188, i32* %ch, align 4
  %189 = load i32, i32* %ch, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %192

; <label>:191                                     ; preds = %184
  store i32 0, i32* %1
  br label %279

; <label>:192                                     ; preds = %184
  %193 = load i32, i32* %i, align 4
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %195
  %197 = load %struct.trie_rec*, %struct.trie_rec** %4, align 8
  %198 = call signext i16 @NewTrieString(i8* %196, %struct.trie_rec* %197)
  store i16 %198, i16* %strpos, align 2
  %199 = load i16, i16* %strpos, align 2
  %200 = sext i16 %199 to i32
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %203

; <label>:202                                     ; preds = %192
  store i32 0, i32* %1
  br label %279

; <label>:203                                     ; preds = %192
  %204 = load i16, i16* %strpos, align 2
  %205 = sext i16 %204 to i32
  %206 = sub nsw i32 0, %205
  %207 = trunc i32 %206 to i16
  %208 = load i32, i32* %curr_node, align 4
  %209 = load i32, i32* %i, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i32
  %214 = add nsw i32 %208, %213
  %215 = sext i32 %214 to i64
  %216 = load %struct.trie_rec*, %struct.trie_rec** %4, align 8
  %217 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %216, i32 0, i32 3
  %218 = load i16*, i16** %217, align 8
  %219 = getelementptr inbounds i16, i16* %218, i64 %215
  store i16 %207, i16* %219, align 2
  store i32 1, i32* %1
  br label %279

; <label>:220                                     ; preds = %167
  %221 = load i32, i32* %next_node, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %274

; <label>:223                                     ; preds = %220
  %224 = load i32, i32* %next_node, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %pos, align 4
  %226 = load i32, i32* %pos, align 4
  %227 = sext i32 %226 to i64
  %228 = load %struct.trie_rec*, %struct.trie_rec** %4, align 8
  %229 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %228, i32 0, i32 6
  %230 = load i8*, i8** %229, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 %227
  %232 = load i8, i8* %231, align 1
  %233 = zext i8 %232 to i32
  store i32 %233, i32* %ch, align 4
  %234 = load %struct.trie_rec*, %struct.trie_rec** %4, align 8
  %235 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %234, i32 0, i32 8
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %pos, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %244

; <label>:239                                     ; preds = %223
  %240 = load %struct.trie_rec*, %struct.trie_rec** %4, align 8
  %241 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %240, i32 0, i32 8
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %241, align 4
  br label %244

; <label>:244                                     ; preds = %239, %223
  %245 = load %struct.trie_rec*, %struct.trie_rec** %4, align 8
  %246 = call i32 @NewTrieNode(%struct.trie_rec* %245)
  %247 = sdiv i32 %246, 4
  store i32 %247, i32* %next_node, align 4
  %248 = trunc i32 %247 to i16
  %249 = load i32, i32* %curr_node, align 4
  %250 = load i32, i32* %i, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i64 %251
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i32
  %255 = add nsw i32 %249, %254
  %256 = sext i32 %255 to i64
  %257 = load %struct.trie_rec*, %struct.trie_rec** %4, align 8
  %258 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %257, i32 0, i32 3
  %259 = load i16*, i16** %258, align 8
  %260 = getelementptr inbounds i16, i16* %259, i64 %256
  store i16 %248, i16* %260, align 2
  %261 = load i32, i32* %pos, align 4
  %262 = add nsw i32 %261, 1
  %263 = sub nsw i32 0, %262
  %264 = trunc i32 %263 to i16
  %265 = load i32, i32* %next_node, align 4
  %266 = mul nsw i32 4, %265
  %267 = load i32, i32* %ch, align 4
  %268 = add nsw i32 %266, %267
  %269 = sext i32 %268 to i64
  %270 = load %struct.trie_rec*, %struct.trie_rec** %4, align 8
  %271 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %270, i32 0, i32 3
  %272 = load i16*, i16** %271, align 8
  %273 = getelementptr inbounds i16, i16* %272, i64 %269
  store i16 %264, i16* %273, align 2
  br label %274

; <label>:274                                     ; preds = %244, %220
  %275 = load i32, i32* %next_node, align 4
  %276 = mul nsw i32 4, %275
  store i32 %276, i32* %curr_node, align 4
  %277 = load i32, i32* %i, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %i, align 4
  br label %126

; <label>:279                                     ; preds = %203, %202, %191, %166, %154
  %280 = load i32, i32* %1
  ret i32 %280
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @CompressTrie(%struct.trie_rec* %T) #0 {
  %1 = alloca %struct.trie_rec*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.trie_rec* %T, %struct.trie_rec** %1, align 8
  %2 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %3 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %2, i32 0, i32 5
  %4 = load i32, i32* %3, align 4
  %5 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %6 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %5, i32 0, i32 4
  store i32 %4, i32* %6, align 4
  store i32 0, i32* %i, align 4
  br label %7

; <label>:7                                       ; preds = %46, %0
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %10 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %49

; <label>:13                                      ; preds = %7
  %14 = load i32, i32* %i, align 4
  %15 = sext i32 %14 to i64
  %16 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %17 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %16, i32 0, i32 3
  %18 = load i16*, i16** %17, align 8
  %19 = getelementptr inbounds i16, i16* %18, i64 %15
  %20 = load i16, i16* %19, align 2
  %21 = sext i16 %20 to i32
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %45

; <label>:23                                      ; preds = %13
  %24 = load i32, i32* %i, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %27 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %26, i32 0, i32 3
  %28 = load i16*, i16** %27, align 8
  %29 = getelementptr inbounds i16, i16* %28, i64 %25
  %30 = load i16, i16* %29, align 2
  %31 = sext i16 %30 to i32
  %32 = sub nsw i32 0, %31
  %33 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %34 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  %37 = sub nsw i32 0, %36
  %38 = trunc i32 %37 to i16
  %39 = load i32, i32* %i, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %42 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %41, i32 0, i32 3
  %43 = load i16*, i16** %42, align 8
  %44 = getelementptr inbounds i16, i16* %43, i64 %40
  store i16 %38, i16* %44, align 2
  br label %45

; <label>:45                                      ; preds = %23, %13
  br label %46

; <label>:46                                      ; preds = %45
  %47 = load i32, i32* %i, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %i, align 4
  br label %7

; <label>:49                                      ; preds = %7
  %50 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %51 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %55 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %54, i32 0, i32 3
  %56 = load i16*, i16** %55, align 8
  %57 = getelementptr inbounds i16, i16* %56, i64 %53
  %58 = bitcast i16* %57 to i8*
  store i8* %58, i8** %p, align 8
  %59 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %60 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %64 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %63, i32 0, i32 6
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 %62
  store i8* %66, i8** %q, align 8
  %67 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %68 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %71 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %69, %72
  store i32 %73, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %74

; <label>:74                                      ; preds = %84, %49
  %75 = load i32, i32* %i, align 4
  %76 = load i32, i32* %len, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %87

; <label>:78                                      ; preds = %74
  %79 = load i8*, i8** %q, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %q, align 8
  %81 = load i8, i8* %79, align 1
  %82 = load i8*, i8** %p, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %p, align 8
  store i8 %81, i8* %82, align 1
  br label %84

; <label>:84                                      ; preds = %78
  %85 = load i32, i32* %i, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %i, align 4
  br label %74

; <label>:87                                      ; preds = %74
  %88 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %89 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %93 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %92, i32 0, i32 3
  %94 = load i16*, i16** %93, align 8
  %95 = getelementptr inbounds i16, i16* %94, i64 %91
  %96 = bitcast i16* %95 to i8*
  %97 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %98 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %97, i32 0, i32 6
  store i8* %96, i8** %98, align 8
  %99 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %100 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %99, i32 0, i32 8
  store i32 0, i32* %100, align 4
  %101 = load i32, i32* %len, align 4
  %102 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %103 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %102, i32 0, i32 7
  store i32 %101, i32* %103, align 4
  %104 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %105 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 2
  %109 = add i64 296, %108
  %110 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %111 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 1
  %115 = add i64 %109, %114
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %len, align 4
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @BePutInt(%struct._IO_FILE* %fp, i32 %v) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %1, align 8
  store i32 %v, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = ashr i32 %3, 24
  %5 = and i32 %4, 255
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %7 = call i32 @_IO_putc(i32 %5, %struct._IO_FILE* %6)
  %8 = load i32, i32* %2, align 4
  %9 = ashr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %12 = call i32 @_IO_putc(i32 %10, %struct._IO_FILE* %11)
  %13 = load i32, i32* %2, align 4
  %14 = ashr i32 %13, 8
  %15 = and i32 %14, 255
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %17 = call i32 @_IO_putc(i32 %15, %struct._IO_FILE* %16)
  %18 = load i32, i32* %2, align 4
  %19 = and i32 %18, 255
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %21 = call i32 @_IO_putc(i32 %19, %struct._IO_FILE* %20)
  ret i32 0
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare i64 @ftell(%struct._IO_FILE*) #1

declare void @rewind(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @BeGetInt(%struct._IO_FILE* %fp, i32* %pv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32*, align 8
  %c = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %2, align 8
  store i32* %pv, i32** %3, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %5 = call i32 @_IO_getc(%struct._IO_FILE* %4)
  store i32 %5, i32* %c, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store i32 -1, i32* %1
  br label %45

; <label>:8                                       ; preds = %0
  %9 = load i32, i32* %c, align 4
  %10 = and i32 %9, 255
  %11 = shl i32 %10, 24
  %12 = load i32*, i32** %3, align 8
  store i32 %11, i32* %12, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %14 = call i32 @_IO_getc(%struct._IO_FILE* %13)
  store i32 %14, i32* %c, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %8
  store i32 -1, i32* %1
  br label %45

; <label>:17                                      ; preds = %8
  %18 = load i32, i32* %c, align 4
  %19 = and i32 %18, 255
  %20 = shl i32 %19, 16
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %25 = call i32 @_IO_getc(%struct._IO_FILE* %24)
  store i32 %25, i32* %c, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %17
  store i32 -1, i32* %1
  br label %45

; <label>:28                                      ; preds = %17
  %29 = load i32, i32* %c, align 4
  %30 = and i32 %29, 255
  %31 = shl i32 %30, 8
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %36 = call i32 @_IO_getc(%struct._IO_FILE* %35)
  store i32 %36, i32* %c, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %28
  store i32 -1, i32* %1
  br label %45

; <label>:39                                      ; preds = %28
  %40 = load i32, i32* %c, align 4
  %41 = and i32 %40, 255
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  store i32 0, i32* %1
  br label %45

; <label>:45                                      ; preds = %39, %38, %27, %16, %7
  %46 = load i32, i32* %1
  ret i32 %46
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare i32 @StringBeginsWith(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @NewTrieNode(%struct.trie_rec* %T) #0 {
  %1 = alloca %struct.trie_rec*, align 8
  %i = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct.trie_rec* %T, %struct.trie_rec** %1, align 8
  %2 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %3 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %2, i32 0, i32 5
  %4 = load i32, i32* %3, align 4
  %5 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %6 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %4, %7
  %9 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %10 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %8, %11
  br i1 %12, label %13, label %16

; <label>:13                                      ; preds = %0
  %14 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %15 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 36, i32 5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.172, i32 0, i32 0), i32 0, %struct.FILE_POS* %14)
  br label %16

; <label>:16                                      ; preds = %13, %0
  %17 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %18 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %res, align 4
  %20 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %21 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %24 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %res, align 4
  store i32 %27, i32* %i, align 4
  br label %28

; <label>:28                                      ; preds = %41, %16
  %29 = load i32, i32* %i, align 4
  %30 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %31 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %44

; <label>:34                                      ; preds = %28
  %35 = load i32, i32* %i, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.trie_rec*, %struct.trie_rec** %1, align 8
  %38 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %37, i32 0, i32 3
  %39 = load i16*, i16** %38, align 8
  %40 = getelementptr inbounds i16, i16* %39, i64 %36
  store i16 0, i16* %40, align 2
  br label %41

; <label>:41                                      ; preds = %34
  %42 = load i32, i32* %i, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %i, align 4
  br label %28

; <label>:44                                      ; preds = %28
  %45 = load i32, i32* %res, align 4
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal signext i16 @NewTrieString(i8* %str, %struct.trie_rec* %T) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.trie_rec*, align 8
  %res = alloca i16, align 2
  store i8* %str, i8** %1, align 8
  store %struct.trie_rec* %T, %struct.trie_rec** %2, align 8
  %3 = load %struct.trie_rec*, %struct.trie_rec** %2, align 8
  %4 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %3, i32 0, i32 8
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = load i8*, i8** %1, align 8
  %8 = call i64 @strlen(i8* %7) #4
  %9 = sub i64 %6, %8
  %10 = sub i64 %9, 1
  %11 = trunc i64 %10 to i16
  store i16 %11, i16* %res, align 2
  %12 = load i16, i16* %res, align 2
  %13 = sext i16 %12 to i32
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %28

; <label>:15                                      ; preds = %0
  %16 = load i16, i16* %res, align 2
  %17 = sext i16 %16 to i32
  %18 = load %struct.trie_rec*, %struct.trie_rec** %2, align 8
  %19 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 4
  %20 = load i16, i16* %res, align 2
  %21 = sext i16 %20 to i64
  %22 = load %struct.trie_rec*, %struct.trie_rec** %2, align 8
  %23 = getelementptr inbounds %struct.trie_rec, %struct.trie_rec* %22, i32 0, i32 6
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 %21
  %26 = load i8*, i8** %1, align 8
  %27 = call i8* @strcpy(i8* %25, i8* %26) #5
  br label %28

; <label>:28                                      ; preds = %15, %0
  %29 = load i16, i16* %res, align 2
  ret i16 %29
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
