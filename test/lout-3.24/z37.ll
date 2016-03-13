; ModuleID = 'z37.c'
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
%struct.font_rec = type { %struct.metrics*, i8*, i16*, %struct.composite_rec*, i32, %union.rec*, %union.rec*, i16, i16, i16*, i8*, i8*, i16* }
%struct.metrics = type { i16, i16, i16, i16, i16 }
%struct.composite_rec = type { i8, i16, i16 }
%struct.back_end_rec = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, void (%struct._IO_FILE*)*, void (i8*, i32, i32)*, void (%union.rec*, i32, i8*, i8*)*, void (i8*, i32)*, void (i32)*, void (i32, i32, i8*)*, void (i32, i32, i8*)*, void ()*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, %union.rec*)*, void (i32, i32, i32, i32, i32)*, void (i32, i32)*, void (i32)*, void (float, float)*, void (%union.rec*)*, void ()*, void (%union.rec*)*, void (%union.rec*)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (...)* }
%struct.mapvec = type { %union.rec*, i16, i32, i32, %union.rec*, [256 x %union.rec*], [353 x i8], [4 x [256 x i8]] }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.anon.5 = type { i8, [3 x i8] }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.anon.9 = type { i8, [3 x i8] }
%struct.anon.7 = type { i32, i32, i32, i8 }
%struct.anon.4 = type { i16, i16 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.anon.6 = type { [2 x i32], [2 x i32] }

@font_curr_page = common global i32 0, align 4
@font_count = internal global i32 0, align 4
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@font_root = internal global %union.rec* null, align 8
@font_used = internal global %union.rec* null, align 8
@font_seqnum = internal global i32 0, align 4
@finfo = common global %struct.font_rec* null, align 8
@finfo_size = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"@FontDef\00", align 1
@StartSym = external global %union.rec*, align 8
@FontDefSym = internal global %union.rec* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"@Tag\00", align 1
@fd_tag = internal global %union.rec* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"@Family\00", align 1
@fd_family = internal global %union.rec* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"@Face\00", align 1
@fd_face = internal global %union.rec* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"@Name\00", align 1
@fd_name = internal global %union.rec* null, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"@Metrics\00", align 1
@fd_metrics = internal global %union.rec* null, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"@ExtraMetrics\00", align 1
@fd_extra_metrics = internal global %union.rec* null, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"@Mapping\00", align 1
@fd_mapping = internal global %union.rec* null, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"@Recode\00", align 1
@fd_recode = internal global %union.rec* null, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"FontChange: font_count!\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"smallcaps\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"nosmallcaps\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"error in left parameter of %s\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"@Font\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"FontChange: num!\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"initial font must have family, face and size\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"FontChange: Up(finfo[font(*style)].font_table) !\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"FontChange: type(tmpf)!\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"FontChange: Up(tmpf)!\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"FontChange: type(family)!\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"FontChange: type(face)!\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"FontChange: Up(face)!\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"FontChange fr!\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"FontChange requested_face!\00", align 1
@.str.27 = private unnamed_addr constant [52 x i8] c"font family name %s must be followed by a face name\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"there is no font with family name %s and face name %s\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"FontChange: no children!\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"FontChange: 1 child!\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"FontChange: 2 children!\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"syntax error in font size %s; ignoring it\00", align 1
@.str.33 = private unnamed_addr constant [48 x i8] c"no current font on which to base size change %s\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"FontChange: %d\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"%s %s ignored (result is not positive)\00", align 1
@BackEnd = external global %struct.back_end_rec*, align 8
@PlainCharHeight = external global i32, align 4
@.str.36 = private unnamed_addr constant [47 x i8] c"too many different fonts and sizes (max is %d)\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"run out of memory when increasing font table size\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"FontChange: old!\00", align 1
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.39 = private unnamed_addr constant [50 x i8] c"run out of memory when changing font or font size\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"FontWordSize: !is_word(type(x))!\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"no current font at word %s\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"no current colour at word %s\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"no current language at word %s\00", align 1
@MapTable = external global [0 x %struct.mapvec*], align 8
@.str.44 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.45 = private unnamed_addr constant [60 x i8] c"character %s replaced by space (it has no glyph in font %s)\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"FontSize!\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"no current font at this point\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"FontHalfXHeight!\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"FontMapping!\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"FontName!\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"FontFamiliy!\00", align 1
@FontFamilyAndFace.buff = internal global [80 x i8] zeroinitializer, align 16
@.str.52 = private unnamed_addr constant [41 x i8] c"family and face names %s %s are too long\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"FontDebug: font_root!\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"FontPrintAll: family!\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"FontPrintAll: face!\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"FontDebug: Down(face)!\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"FontPrintAll: ps_name!\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"FontPrintAll: first_size!\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"/%s%s %s /%s LoutRecode\0A\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"/%s { /%s%s LoutFont } def\0A\00", align 1
@.str.61 = private unnamed_addr constant [26 x i8] c"/%s { /%s LoutFont } def\0A\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"FontDebug: font_used!\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"FontPrintPageSetup: face!\00", align 1
@.str.65 = private unnamed_addr constant [32 x i8] c"FontPrintPageSetup: first_size!\00", align 1
@.str.66 = private unnamed_addr constant [29 x i8] c"FontPrintPageSetup: ps_name!\00", align 1
@.str.67 = private unnamed_addr constant [30 x i8] c"FontPrintPageResources: face!\00", align 1
@.str.68 = private unnamed_addr constant [33 x i8] c"FontPrintPageResources: ps_name!\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"FontPageUsed!\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"%s font %s\0A\00", align 1
@.str.71 = private unnamed_addr constant [27 x i8] c"%%DocumentNeededResources:\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"%%+\00", align 1
@.str.73 = private unnamed_addr constant [52 x i8] c"unable to set font %s %s (no font databases loaded)\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"cannot read %s for %s\00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c"FontRead: type(y) != PAR!\00", align 1
@.str.77 = private unnamed_addr constant [50 x i8] c"font family name %s incompatible with %s value %s\00", align 1
@.str.78 = private unnamed_addr constant [48 x i8] c"font face name %s incompatible with %s value %s\00", align 1
@.str.79 = private unnamed_addr constant [35 x i8] c"illegal font name (quotes needed?)\00", align 1
@.str.80 = private unnamed_addr constant [48 x i8] c"illegal font metrics file name (quotes needed?)\00", align 1
@.str.81 = private unnamed_addr constant [54 x i8] c"illegal font extra metrics file name (quotes needed?)\00", align 1
@.str.82 = private unnamed_addr constant [43 x i8] c"illegal mapping file name (quotes needed?)\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"illegal value of %s\00", align 1
@.str.84 = private unnamed_addr constant [47 x i8] c"FontRead: cannot identify component of FontDef\00", align 1
@.str.85 = private unnamed_addr constant [33 x i8] c"font %s %s already defined, at%s\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.88 = private unnamed_addr constant [32 x i8] c"expecting either Yes or No here\00", align 1
@.str.89 = private unnamed_addr constant [51 x i8] c"too many different fonts and sizes (maximum is %d)\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"fnt\00", align 1
@.str.91 = private unnamed_addr constant [25 x i8] c"cannot open font file %s\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.93 = private unnamed_addr constant [17 x i8] c"StartFontMetrics\00", align 1
@.str.94 = private unnamed_addr constant [50 x i8] c"font file %s does not begin with StartFontMetrics\00", align 1
@.str.95 = private unnamed_addr constant [45 x i8] c"run out of memory while reading font file %s\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"EndFontMetrics\0A\00", align 1
@.str.97 = private unnamed_addr constant [18 x i8] c"UnderlinePosition\00", align 1
@.str.98 = private unnamed_addr constant [53 x i8] c"UnderlinePosition found twice in font file (line %d)\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c"UnderlinePosition %f\00", align 1
@.str.100 = private unnamed_addr constant [19 x i8] c"UnderlineThickness\00", align 1
@.str.101 = private unnamed_addr constant [54 x i8] c"UnderlineThickness found twice in font file (line %d)\00", align 1
@.str.102 = private unnamed_addr constant [22 x i8] c"UnderlineThickness %f\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c"XHeight\00", align 1
@.str.104 = private unnamed_addr constant [43 x i8] c"XHeight found twice in font file (line %d)\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"XHeight %f\00", align 1
@.str.106 = private unnamed_addr constant [9 x i8] c"FontName\00", align 1
@.str.107 = private unnamed_addr constant [47 x i8] c"FontName found twice in font file %s (line %d)\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"FontName %s\00", align 1
@.str.109 = private unnamed_addr constant [41 x i8] c"FontName empty in font file %s (line %d)\00", align 1
@.str.110 = private unnamed_addr constant [48 x i8] c"FontName in font file (%s) and %s (%s) disagree\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"IsFixedPitch\00", align 1
@.str.112 = private unnamed_addr constant [16 x i8] c"IsFixedPitch %s\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c"StartCharMetrics\00", align 1
@.str.115 = private unnamed_addr constant [28 x i8] c"FontName missing in file %s\00", align 1
@Kern = external global i32, align 4
@.str.116 = private unnamed_addr constant [15 x i8] c"StartKernPairs\00", align 1
@.str.117 = private unnamed_addr constant [18 x i8] c"StartKernPairs %d\00", align 1
@.str.118 = private unnamed_addr constant [62 x i8] c"syntax error on StartKernPairs line in font file %s (line %d)\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"EndKernPairs\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"KPX\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"KPX %s %s %f\00", align 1
@.str.122 = private unnamed_addr constant [43 x i8] c"syntax error in font file %s (line %d): %s\00", align 1
@.str.123 = private unnamed_addr constant [60 x i8] c"non-contiguous kerning pair %s %s in font file %s (line %d)\00", align 1
@.str.124 = private unnamed_addr constant [49 x i8] c"too many kerning pairs in font file %s (line %d)\00", align 1
@.str.125 = private unnamed_addr constant [59 x i8] c"kerning pair %s %s appears twice in font file %s (line %d)\00", align 1
@.str.126 = private unnamed_addr constant [41 x i8] c"EndFontMetrics missing from font file %s\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.128 = private unnamed_addr constant [31 x i8] c"cannot open extra font file %s\00", align 1
@.str.129 = private unnamed_addr constant [22 x i8] c"StartExtraCharMetrics\00", align 1
@.str.130 = private unnamed_addr constant [21 x i8] c"StartBuildComposites\00", align 1
@.str.131 = private unnamed_addr constant [15 x i8] c"EndCharMetrics\00", align 1
@.str.132 = private unnamed_addr constant [20 x i8] c"EndExtraCharMetrics\00", align 1
@.str.133 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"N %s\00", align 1
@.str.135 = private unnamed_addr constant [3 x i8] c"WX\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"WX %f\00", align 1
@.str.137 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.138 = private unnamed_addr constant [14 x i8] c"B %f %f %f %f\00", align 1
@.str.139 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.140 = private unnamed_addr constant [67 x i8] c"ignoring unencoded ligature character %s in font file %s (line %d)\00", align 1
@.str.141 = private unnamed_addr constant [55 x i8] c"too many ligature characters in font file %s (line %d)\00", align 1
@.str.142 = private unnamed_addr constant [37 x i8] c"WX missing in font file %s (line %d)\00", align 1
@.str.143 = private unnamed_addr constant [36 x i8] c"B missing in font file %s (line %d)\00", align 1
@PlainCharWidth = external global i32, align 4
@.str.144 = private unnamed_addr constant [3 x i8] c"CC\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"CC %s %d \00", align 1
@.str.146 = private unnamed_addr constant [45 x i8] c"syntax error in extra font file %s (line %d)\00", align 1
@.str.147 = private unnamed_addr constant [52 x i8] c"unknown character name %s in font file %s (line %d)\00", align 1
@.str.148 = private unnamed_addr constant [14 x i8] c" PCC %s %d %d\00", align 1
@.str.149 = private unnamed_addr constant [44 x i8] c"too many composites in file %s (at line %d)\00", align 1
@.str.150 = private unnamed_addr constant [19 x i8] c"EndBuildComposites\00", align 1
@.str.151 = private unnamed_addr constant [59 x i8] c"missing EndBuildComposites in extra font file %s (line %d)\00", align 1

; Function Attrs: nounwind uwtable
define void @FontInit() #0 {
  store i32 1, i32* @font_curr_page, align 4
  store i32 0, i32* @font_count, align 4
  %1 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %2 = zext i8 %1 to i32
  store i32 %2, i32* @zz_size, align 4
  %3 = sext i32 %2 to i64
  %4 = icmp uge i64 %3, 265
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %6)
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
  %37 = bitcast %union.FIRST_UNION* %36 to %struct.anon*
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %37, i32 0, i32 0
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
  store %union.rec* %39, %union.rec** @font_root, align 8
  %60 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %61 = zext i8 %60 to i32
  store i32 %61, i32* @zz_size, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp uge i64 %62, 265
  br i1 %63, label %64, label %67

; <label>:64                                      ; preds = %33
  %65 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %66 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %65)
  br label %92

; <label>:67                                      ; preds = %33
  %68 = load i32, i32* @zz_size, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %69
  %71 = load %union.rec*, %union.rec** %70, align 8
  %72 = icmp eq %union.rec* %71, null
  br i1 %72, label %73, label %77

; <label>:73                                      ; preds = %67
  %74 = load i32, i32* @zz_size, align 4
  %75 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %76 = call %union.rec* @GetMemory(i32 %74, %struct.FILE_POS* %75)
  store %union.rec* %76, %union.rec** @zz_hold, align 8
  br label %91

; <label>:77                                      ; preds = %67
  %78 = load i32, i32* @zz_size, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %79
  %81 = load %union.rec*, %union.rec** %80, align 8
  store %union.rec* %81, %union.rec** @zz_hold, align 8
  store %union.rec* %81, %union.rec** @zz_hold, align 8
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %83 = bitcast %union.rec* %82 to %struct.word_type*
  %84 = getelementptr inbounds %struct.word_type, %struct.word_type* %83, i32 0, i32 0
  %85 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %84, i32 0, i64 0
  %86 = getelementptr inbounds %struct.LIST, %struct.LIST* %85, i32 0, i32 0
  %87 = load %union.rec*, %union.rec** %86, align 8
  %88 = load i32, i32* @zz_size, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %89
  store %union.rec* %87, %union.rec** %90, align 8
  br label %91

; <label>:91                                      ; preds = %77, %73
  br label %92

; <label>:92                                      ; preds = %91, %64
  %93 = load %union.rec*, %union.rec** @zz_hold, align 8
  %94 = bitcast %union.rec* %93 to %struct.word_type*
  %95 = getelementptr inbounds %struct.word_type, %struct.word_type* %94, i32 0, i32 1
  %96 = bitcast %union.FIRST_UNION* %95 to %struct.anon*
  %97 = getelementptr inbounds %struct.anon, %struct.anon* %96, i32 0, i32 0
  store i8 17, i8* %97, align 1
  %98 = load %union.rec*, %union.rec** @zz_hold, align 8
  %99 = load %union.rec*, %union.rec** @zz_hold, align 8
  %100 = bitcast %union.rec* %99 to %struct.word_type*
  %101 = getelementptr inbounds %struct.word_type, %struct.word_type* %100, i32 0, i32 0
  %102 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %101, i32 0, i64 1
  %103 = getelementptr inbounds %struct.LIST, %struct.LIST* %102, i32 0, i32 1
  store %union.rec* %98, %union.rec** %103, align 8
  %104 = load %union.rec*, %union.rec** @zz_hold, align 8
  %105 = bitcast %union.rec* %104 to %struct.word_type*
  %106 = getelementptr inbounds %struct.word_type, %struct.word_type* %105, i32 0, i32 0
  %107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %106, i32 0, i64 1
  %108 = getelementptr inbounds %struct.LIST, %struct.LIST* %107, i32 0, i32 0
  store %union.rec* %98, %union.rec** %108, align 8
  %109 = load %union.rec*, %union.rec** @zz_hold, align 8
  %110 = bitcast %union.rec* %109 to %struct.word_type*
  %111 = getelementptr inbounds %struct.word_type, %struct.word_type* %110, i32 0, i32 0
  %112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %111, i32 0, i64 0
  %113 = getelementptr inbounds %struct.LIST, %struct.LIST* %112, i32 0, i32 1
  store %union.rec* %98, %union.rec** %113, align 8
  %114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %115 = bitcast %union.rec* %114 to %struct.word_type*
  %116 = getelementptr inbounds %struct.word_type, %struct.word_type* %115, i32 0, i32 0
  %117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %116, i32 0, i64 0
  %118 = getelementptr inbounds %struct.LIST, %struct.LIST* %117, i32 0, i32 0
  store %union.rec* %98, %union.rec** %118, align 8
  store %union.rec* %98, %union.rec** @font_used, align 8
  store i32 0, i32* @font_seqnum, align 4
  %119 = call noalias i8* @malloc(i64 9600) #4
  %120 = bitcast i8* %119 to %struct.font_rec*
  store %struct.font_rec* %120, %struct.font_rec** @finfo, align 8
  store i32 100, i32* @finfo_size, align 4
  %121 = load %union.rec*, %union.rec** @StartSym, align 8
  %122 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 143, %union.rec* %121, i32 0)
  store %union.rec* %122, %union.rec** @FontDefSym, align 8
  %123 = load %union.rec*, %union.rec** @FontDefSym, align 8
  %124 = call %union.rec* @load(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 145, %union.rec* %123, i32 1)
  store %union.rec* %124, %union.rec** @fd_tag, align 8
  %125 = load %union.rec*, %union.rec** @FontDefSym, align 8
  %126 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 145, %union.rec* %125, i32 1)
  store %union.rec* %126, %union.rec** @fd_family, align 8
  %127 = load %union.rec*, %union.rec** @FontDefSym, align 8
  %128 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 145, %union.rec* %127, i32 1)
  store %union.rec* %128, %union.rec** @fd_face, align 8
  %129 = load %union.rec*, %union.rec** @FontDefSym, align 8
  %130 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 145, %union.rec* %129, i32 1)
  store %union.rec* %130, %union.rec** @fd_name, align 8
  %131 = load %union.rec*, %union.rec** @FontDefSym, align 8
  %132 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 145, %union.rec* %131, i32 1)
  store %union.rec* %132, %union.rec** @fd_metrics, align 8
  %133 = load %union.rec*, %union.rec** @FontDefSym, align 8
  %134 = call %union.rec* @load(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i32 145, %union.rec* %133, i32 0)
  store %union.rec* %134, %union.rec** @fd_extra_metrics, align 8
  %135 = load %union.rec*, %union.rec** @FontDefSym, align 8
  %136 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 145, %union.rec* %135, i32 1)
  store %union.rec* %136, %union.rec** @fd_mapping, align 8
  %137 = load %union.rec*, %union.rec** @FontDefSym, align 8
  %138 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 145, %union.rec* %137, i32 0)
  store %union.rec* %138, %union.rec** @fd_recode, align 8
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define internal %union.rec* @load(i8* %name, i32 %dtype, %union.rec* %encl, i32 %compulsory) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %union.rec*, align 8
  %4 = alloca i32, align 4
  %res = alloca %union.rec*, align 8
  store i8* %name, i8** %1, align 8
  store i32 %dtype, i32* %2, align 4
  store %union.rec* %encl, %union.rec** %3, align 8
  store i32 %compulsory, i32* %4, align 4
  %5 = load i8*, i8** %1, align 8
  %6 = load i32, i32* %2, align 4
  %7 = trunc i32 %6 to i8
  %8 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %9 = load %union.rec*, %union.rec** %3, align 8
  %10 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %11 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), %struct.FILE_POS* %10)
  %12 = call %union.rec* @InsertSym(i8* %5, i8 zeroext %7, %struct.FILE_POS* %8, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %9, %union.rec* %11)
  store %union.rec* %12, %union.rec** %res, align 8
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %13, 145
  br i1 %14, label %15, label %25

; <label>:15                                      ; preds = %0
  %16 = load %union.rec*, %union.rec** %res, align 8
  %17 = bitcast %union.rec* %16 to %struct.word_type*
  %18 = getelementptr inbounds %struct.word_type, %struct.word_type* %17, i32 0, i32 2
  %19 = bitcast %union.SECOND_UNION* %18 to %struct.anon.5*
  %20 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %19, i32 0, i32 1
  %21 = bitcast [3 x i8]* %20 to i24*
  %22 = load i24, i24* %21, align 1
  %23 = and i24 %22, -65537
  %24 = or i24 %23, 65536
  store i24 %24, i24* %21, align 1
  br label %25

; <label>:25                                      ; preds = %15, %0
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

; <label>:28                                      ; preds = %25
  %29 = load %union.rec*, %union.rec** %3, align 8
  %30 = bitcast %union.rec* %29 to %struct.symbol_type*
  %31 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %30, i32 0, i32 13
  %32 = load i16, i16* %31, align 2
  %33 = add i16 %32, 1
  store i16 %33, i16* %31, align 2
  %34 = load %union.rec*, %union.rec** %res, align 8
  %35 = bitcast %union.rec* %34 to %struct.symbol_type*
  %36 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %35, i32 0, i32 16
  %37 = load i8, i8* %36, align 2
  %38 = and i8 %37, -65
  %39 = or i8 %38, 64
  store i8 %39, i8* %36, align 2
  br label %40

; <label>:40                                      ; preds = %28, %25
  %41 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %41
}

; Function Attrs: nounwind uwtable
define void @FontChange(%struct.STYLE* %style, %union.rec* %x) #0 {
  %1 = alloca %struct.STYLE*, align 8
  %2 = alloca %union.rec*, align 8
  %i = alloca i32, align 4
  %requested_family = alloca %union.rec*, align 8
  %requested_face = alloca %union.rec*, align 8
  %requested_size = alloca %union.rec*, align 8
  %par = alloca [3 x %union.rec*], align 16
  %family = alloca %union.rec*, align 8
  %face = alloca %union.rec*, align 8
  %fsize = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %new = alloca %union.rec*, align 8
  %old = alloca %union.rec*, align 8
  %tmpf = alloca %union.rec*, align 8
  %gp = alloca %struct.GAP, align 4
  %flen = alloca i16, align 2
  %num = alloca i32, align 4
  %c = alloca i32, align 4
  %inc = alloca i32, align 4
  %newfnt = alloca %struct.metrics*, align 8
  %oldfnt = alloca %struct.metrics*, align 8
  %lig = alloca i8*, align 8
  %cmptop = alloca i32, align 4
  %oldcmp = alloca %struct.composite_rec*, align 8
  %newcmp = alloca %struct.composite_rec*, align 8
  %oldks = alloca i16*, align 8
  %newks = alloca i16*, align 8
  %klen = alloca i32, align 4
  store %struct.STYLE* %style, %struct.STYLE** %1, align 8
  store %union.rec* %x, %union.rec** %2, align 8
  %3 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %4 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 4095
  %7 = load i32, i32* @font_count, align 4
  %8 = icmp ule i32 %6, %7
  br i1 %8, label %12, label %9

; <label>:9                                       ; preds = %0
  %10 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %11 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0))
  br label %12

; <label>:12                                      ; preds = %9, %0
  store i32 0, i32* %num, align 4
  %13 = load %union.rec*, %union.rec** %2, align 8
  %14 = bitcast %union.rec* %13 to %struct.word_type*
  %15 = getelementptr inbounds %struct.word_type, %struct.word_type* %14, i32 0, i32 1
  %16 = bitcast %union.FIRST_UNION* %15 to %struct.anon*
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 5
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %12
  br label %243

; <label>:22                                      ; preds = %12
  %23 = load %union.rec*, %union.rec** %2, align 8
  %24 = bitcast %union.rec* %23 to %struct.word_type*
  %25 = getelementptr inbounds %struct.word_type, %struct.word_type* %24, i32 0, i32 1
  %26 = bitcast %union.FIRST_UNION* %25 to %struct.anon*
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 0
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 11
  br i1 %30, label %40, label %31

; <label>:31                                      ; preds = %22
  %32 = load %union.rec*, %union.rec** %2, align 8
  %33 = bitcast %union.rec* %32 to %struct.word_type*
  %34 = getelementptr inbounds %struct.word_type, %struct.word_type* %33, i32 0, i32 1
  %35 = bitcast %union.FIRST_UNION* %34 to %struct.anon*
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 0
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 12
  br i1 %39, label %40, label %85

; <label>:40                                      ; preds = %31, %22
  %41 = load %union.rec*, %union.rec** %2, align 8
  %42 = bitcast %union.rec* %41 to %struct.word_type*
  %43 = getelementptr inbounds %struct.word_type, %struct.word_type* %42, i32 0, i32 4
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %43, i32 0, i32 0
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0)) #5
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55

; <label>:47                                      ; preds = %40
  %48 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %49 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %48, i32 0, i32 0
  %50 = bitcast %union.anon* %49 to %struct.anon.9*
  %51 = bitcast %struct.anon.9* %50 to i8*
  %52 = load i8, i8* %51, align 4
  %53 = and i8 %52, -9
  %54 = or i8 %53, 8
  store i8 %54, i8* %51, align 4
  br label %84

; <label>:55                                      ; preds = %40
  %56 = load %union.rec*, %union.rec** %2, align 8
  %57 = bitcast %union.rec* %56 to %struct.word_type*
  %58 = getelementptr inbounds %struct.word_type, %struct.word_type* %57, i32 0, i32 4
  %59 = getelementptr inbounds [4 x i8], [4 x i8]* %58, i32 0, i32 0
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0)) #5
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %69

; <label>:62                                      ; preds = %55
  %63 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %64 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %63, i32 0, i32 0
  %65 = bitcast %union.anon* %64 to %struct.anon.9*
  %66 = bitcast %struct.anon.9* %65 to i8*
  %67 = load i8, i8* %66, align 4
  %68 = and i8 %67, -9
  store i8 %68, i8* %66, align 4
  br label %83

; <label>:69                                      ; preds = %55
  %70 = load %union.rec*, %union.rec** %2, align 8
  %71 = bitcast %union.rec* %70 to %struct.word_type*
  %72 = getelementptr inbounds %struct.word_type, %struct.word_type* %71, i32 0, i32 4
  %73 = getelementptr inbounds [4 x i8], [4 x i8]* %72, i32 0, i32 0
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0)) #5
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76

; <label>:76                                      ; preds = %69
  %77 = load %union.rec*, %union.rec** %2, align 8
  %78 = load i32, i32* %num, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %num, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds [3 x %union.rec*], [3 x %union.rec*]* %par, i32 0, i64 %80
  store %union.rec* %77, %union.rec** %81, align 8
  br label %82

; <label>:82                                      ; preds = %76, %69
  br label %83

; <label>:83                                      ; preds = %82, %62
  br label %84

; <label>:84                                      ; preds = %83, %47
  br label %242

; <label>:85                                      ; preds = %31
  %86 = load %union.rec*, %union.rec** %2, align 8
  %87 = bitcast %union.rec* %86 to %struct.word_type*
  %88 = getelementptr inbounds %struct.word_type, %struct.word_type* %87, i32 0, i32 1
  %89 = bitcast %union.FIRST_UNION* %88 to %struct.anon*
  %90 = getelementptr inbounds %struct.anon, %struct.anon* %89, i32 0, i32 0
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %92, 17
  br i1 %93, label %94, label %235

; <label>:94                                      ; preds = %85
  %95 = load %union.rec*, %union.rec** %2, align 8
  %96 = bitcast %union.rec* %95 to %struct.word_type*
  %97 = getelementptr inbounds %struct.word_type, %struct.word_type* %96, i32 0, i32 0
  %98 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %97, i32 0, i64 0
  %99 = getelementptr inbounds %struct.LIST, %struct.LIST* %98, i32 0, i32 1
  %100 = load %union.rec*, %union.rec** %99, align 8
  store %union.rec* %100, %union.rec** %link, align 8
  br label %101

; <label>:101                                     ; preds = %227, %94
  %102 = load %union.rec*, %union.rec** %link, align 8
  %103 = load %union.rec*, %union.rec** %2, align 8
  %104 = icmp ne %union.rec* %102, %103
  br i1 %104, label %105, label %234

; <label>:105                                     ; preds = %101
  %106 = load %union.rec*, %union.rec** %link, align 8
  %107 = bitcast %union.rec* %106 to %struct.word_type*
  %108 = getelementptr inbounds %struct.word_type, %struct.word_type* %107, i32 0, i32 0
  %109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %108, i32 0, i64 1
  %110 = getelementptr inbounds %struct.LIST, %struct.LIST* %109, i32 0, i32 0
  %111 = load %union.rec*, %union.rec** %110, align 8
  store %union.rec* %111, %union.rec** %y, align 8
  br label %112

; <label>:112                                     ; preds = %122, %105
  %113 = load %union.rec*, %union.rec** %y, align 8
  %114 = bitcast %union.rec* %113 to %struct.word_type*
  %115 = getelementptr inbounds %struct.word_type, %struct.word_type* %114, i32 0, i32 1
  %116 = bitcast %union.FIRST_UNION* %115 to %struct.anon*
  %117 = getelementptr inbounds %struct.anon, %struct.anon* %116, i32 0, i32 0
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %129

; <label>:121                                     ; preds = %112
  br label %122

; <label>:122                                     ; preds = %121
  %123 = load %union.rec*, %union.rec** %y, align 8
  %124 = bitcast %union.rec* %123 to %struct.word_type*
  %125 = getelementptr inbounds %struct.word_type, %struct.word_type* %124, i32 0, i32 0
  %126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %125, i32 0, i64 1
  %127 = getelementptr inbounds %struct.LIST, %struct.LIST* %126, i32 0, i32 0
  %128 = load %union.rec*, %union.rec** %127, align 8
  store %union.rec* %128, %union.rec** %y, align 8
  br label %112

; <label>:129                                     ; preds = %112
  %130 = load %union.rec*, %union.rec** %y, align 8
  %131 = bitcast %union.rec* %130 to %struct.word_type*
  %132 = getelementptr inbounds %struct.word_type, %struct.word_type* %131, i32 0, i32 1
  %133 = bitcast %union.FIRST_UNION* %132 to %struct.anon*
  %134 = getelementptr inbounds %struct.anon, %struct.anon* %133, i32 0, i32 0
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %147, label %138

; <label>:138                                     ; preds = %129
  %139 = load %union.rec*, %union.rec** %y, align 8
  %140 = bitcast %union.rec* %139 to %struct.word_type*
  %141 = getelementptr inbounds %struct.word_type, %struct.word_type* %140, i32 0, i32 1
  %142 = bitcast %union.FIRST_UNION* %141 to %struct.anon*
  %143 = getelementptr inbounds %struct.anon, %struct.anon* %142, i32 0, i32 0
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %145, 5
  br i1 %146, label %147, label %148

; <label>:147                                     ; preds = %138, %129
  br label %227

; <label>:148                                     ; preds = %138
  %149 = load %union.rec*, %union.rec** %y, align 8
  %150 = bitcast %union.rec* %149 to %struct.word_type*
  %151 = getelementptr inbounds %struct.word_type, %struct.word_type* %150, i32 0, i32 1
  %152 = bitcast %union.FIRST_UNION* %151 to %struct.anon*
  %153 = getelementptr inbounds %struct.anon, %struct.anon* %152, i32 0, i32 0
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp eq i32 %155, 11
  br i1 %156, label %166, label %157

; <label>:157                                     ; preds = %148
  %158 = load %union.rec*, %union.rec** %y, align 8
  %159 = bitcast %union.rec* %158 to %struct.word_type*
  %160 = getelementptr inbounds %struct.word_type, %struct.word_type* %159, i32 0, i32 1
  %161 = bitcast %union.FIRST_UNION* %160 to %struct.anon*
  %162 = getelementptr inbounds %struct.anon, %struct.anon* %161, i32 0, i32 0
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp eq i32 %164, 12
  br i1 %165, label %166, label %220

; <label>:166                                     ; preds = %157, %148
  %167 = load %union.rec*, %union.rec** %y, align 8
  %168 = bitcast %union.rec* %167 to %struct.word_type*
  %169 = getelementptr inbounds %struct.word_type, %struct.word_type* %168, i32 0, i32 4
  %170 = getelementptr inbounds [4 x i8], [4 x i8]* %169, i32 0, i32 0
  %171 = call i32 @strcmp(i8* %170, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0)) #5
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %181

; <label>:173                                     ; preds = %166
  %174 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %175 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %174, i32 0, i32 0
  %176 = bitcast %union.anon* %175 to %struct.anon.9*
  %177 = bitcast %struct.anon.9* %176 to i8*
  %178 = load i8, i8* %177, align 4
  %179 = and i8 %178, -9
  %180 = or i8 %179, 8
  store i8 %180, i8* %177, align 4
  br label %219

; <label>:181                                     ; preds = %166
  %182 = load %union.rec*, %union.rec** %y, align 8
  %183 = bitcast %union.rec* %182 to %struct.word_type*
  %184 = getelementptr inbounds %struct.word_type, %struct.word_type* %183, i32 0, i32 4
  %185 = getelementptr inbounds [4 x i8], [4 x i8]* %184, i32 0, i32 0
  %186 = call i32 @strcmp(i8* %185, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0)) #5
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %195

; <label>:188                                     ; preds = %181
  %189 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %190 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %189, i32 0, i32 0
  %191 = bitcast %union.anon* %190 to %struct.anon.9*
  %192 = bitcast %struct.anon.9* %191 to i8*
  %193 = load i8, i8* %192, align 4
  %194 = and i8 %193, -9
  store i8 %194, i8* %192, align 4
  br label %218

; <label>:195                                     ; preds = %181
  %196 = load %union.rec*, %union.rec** %y, align 8
  %197 = bitcast %union.rec* %196 to %struct.word_type*
  %198 = getelementptr inbounds %struct.word_type, %struct.word_type* %197, i32 0, i32 4
  %199 = getelementptr inbounds [4 x i8], [4 x i8]* %198, i32 0, i32 0
  %200 = call i32 @strcmp(i8* %199, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0)) #5
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %217, label %202

; <label>:202                                     ; preds = %195
  %203 = load i32, i32* %num, align 4
  %204 = icmp sge i32 %203, 3
  br i1 %204, label %205, label %211

; <label>:205                                     ; preds = %202
  %206 = load %union.rec*, %union.rec** %2, align 8
  %207 = bitcast %union.rec* %206 to %struct.word_type*
  %208 = getelementptr inbounds %struct.word_type, %struct.word_type* %207, i32 0, i32 1
  %209 = bitcast %union.FIRST_UNION* %208 to %struct.FILE_POS*
  %210 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i32 2, %struct.FILE_POS* %209, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  br label %2217

; <label>:211                                     ; preds = %202
  %212 = load %union.rec*, %union.rec** %y, align 8
  %213 = load i32, i32* %num, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %num, align 4
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds [3 x %union.rec*], [3 x %union.rec*]* %par, i32 0, i64 %215
  store %union.rec* %212, %union.rec** %216, align 8
  br label %217

; <label>:217                                     ; preds = %211, %195
  br label %218

; <label>:218                                     ; preds = %217, %188
  br label %219

; <label>:219                                     ; preds = %218, %173
  br label %226

; <label>:220                                     ; preds = %157
  %221 = load %union.rec*, %union.rec** %2, align 8
  %222 = bitcast %union.rec* %221 to %struct.word_type*
  %223 = getelementptr inbounds %struct.word_type, %struct.word_type* %222, i32 0, i32 1
  %224 = bitcast %union.FIRST_UNION* %223 to %struct.FILE_POS*
  %225 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i32 2, %struct.FILE_POS* %224, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  br label %2217

; <label>:226                                     ; preds = %219
  br label %227

; <label>:227                                     ; preds = %226, %147
  %228 = load %union.rec*, %union.rec** %link, align 8
  %229 = bitcast %union.rec* %228 to %struct.word_type*
  %230 = getelementptr inbounds %struct.word_type, %struct.word_type* %229, i32 0, i32 0
  %231 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %230, i32 0, i64 0
  %232 = getelementptr inbounds %struct.LIST, %struct.LIST* %231, i32 0, i32 1
  %233 = load %union.rec*, %union.rec** %232, align 8
  store %union.rec* %233, %union.rec** %link, align 8
  br label %101

; <label>:234                                     ; preds = %101
  br label %241

; <label>:235                                     ; preds = %85
  %236 = load %union.rec*, %union.rec** %2, align 8
  %237 = bitcast %union.rec* %236 to %struct.word_type*
  %238 = getelementptr inbounds %struct.word_type, %struct.word_type* %237, i32 0, i32 1
  %239 = bitcast %union.FIRST_UNION* %238 to %struct.FILE_POS*
  %240 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i32 2, %struct.FILE_POS* %239, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  br label %2217

; <label>:241                                     ; preds = %234
  br label %242

; <label>:242                                     ; preds = %241, %84
  br label %243

; <label>:243                                     ; preds = %242, %21
  %244 = load i32, i32* %num, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %247

; <label>:246                                     ; preds = %243
  br label %2217

; <label>:247                                     ; preds = %243
  %248 = load i32, i32* %num, align 4
  %249 = icmp sge i32 %248, 1
  br i1 %249, label %250, label %253

; <label>:250                                     ; preds = %247
  %251 = load i32, i32* %num, align 4
  %252 = icmp sle i32 %251, 3
  br i1 %252, label %256, label %253

; <label>:253                                     ; preds = %250, %247
  %254 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %255 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %254, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0))
  br label %256

; <label>:256                                     ; preds = %253, %250
  store %union.rec* null, %union.rec** %requested_size, align 8
  store i32 0, i32* %i, align 4
  br label %257

; <label>:257                                     ; preds = %309, %256
  %258 = load i32, i32* %i, align 4
  %259 = load i32, i32* %num, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %312

; <label>:261                                     ; preds = %257
  %262 = load i32, i32* %i, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [3 x %union.rec*], [3 x %union.rec*]* %par, i32 0, i64 %263
  %265 = load %union.rec*, %union.rec** %264, align 8
  %266 = bitcast %union.rec* %265 to %struct.word_type*
  %267 = getelementptr inbounds %struct.word_type, %struct.word_type* %266, i32 0, i32 4
  %268 = getelementptr inbounds [4 x i8], [4 x i8]* %267, i32 0, i64 0
  %269 = load i8, i8* %268, align 1
  %270 = zext i8 %269 to i32
  store i32 %270, i32* %c, align 4
  %271 = load i32, i32* %c, align 4
  %272 = icmp eq i32 %271, 43
  br i1 %272, label %282, label %273

; <label>:273                                     ; preds = %261
  %274 = load i32, i32* %c, align 4
  %275 = icmp eq i32 %274, 45
  br i1 %275, label %282, label %276

; <label>:276                                     ; preds = %273
  %277 = load i32, i32* %c, align 4
  %278 = icmp sge i32 %277, 48
  br i1 %278, label %279, label %308

; <label>:279                                     ; preds = %276
  %280 = load i32, i32* %c, align 4
  %281 = icmp sle i32 %280, 57
  br i1 %281, label %282, label %308

; <label>:282                                     ; preds = %279, %273, %261
  %283 = load i32, i32* %i, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [3 x %union.rec*], [3 x %union.rec*]* %par, i32 0, i64 %284
  %286 = load %union.rec*, %union.rec** %285, align 8
  store %union.rec* %286, %union.rec** %requested_size, align 8
  %287 = load i32, i32* %i, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %i, align 4
  br label %289

; <label>:289                                     ; preds = %302, %282
  %290 = load i32, i32* %i, align 4
  %291 = load i32, i32* %num, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %305

; <label>:293                                     ; preds = %289
  %294 = load i32, i32* %i, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [3 x %union.rec*], [3 x %union.rec*]* %par, i32 0, i64 %295
  %297 = load %union.rec*, %union.rec** %296, align 8
  %298 = load i32, i32* %i, align 4
  %299 = sub nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [3 x %union.rec*], [3 x %union.rec*]* %par, i32 0, i64 %300
  store %union.rec* %297, %union.rec** %301, align 8
  br label %302

; <label>:302                                     ; preds = %293
  %303 = load i32, i32* %i, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %i, align 4
  br label %289

; <label>:305                                     ; preds = %289
  %306 = load i32, i32* %num, align 4
  %307 = add nsw i32 %306, -1
  store i32 %307, i32* %num, align 4
  br label %308

; <label>:308                                     ; preds = %305, %279, %276
  br label %309

; <label>:309                                     ; preds = %308
  %310 = load i32, i32* %i, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %i, align 4
  br label %257

; <label>:312                                     ; preds = %257
  %313 = load i32, i32* %num, align 4
  switch i32 %313, label %323 [
    i32 0, label %314
    i32 1, label %315
    i32 2, label %318
  ]

; <label>:314                                     ; preds = %312
  store %union.rec* null, %union.rec** %requested_face, align 8
  store %union.rec* null, %union.rec** %requested_family, align 8
  br label %329

; <label>:315                                     ; preds = %312
  store %union.rec* null, %union.rec** %requested_family, align 8
  %316 = getelementptr inbounds [3 x %union.rec*], [3 x %union.rec*]* %par, i32 0, i64 0
  %317 = load %union.rec*, %union.rec** %316, align 8
  store %union.rec* %317, %union.rec** %requested_face, align 8
  br label %329

; <label>:318                                     ; preds = %312
  %319 = getelementptr inbounds [3 x %union.rec*], [3 x %union.rec*]* %par, i32 0, i64 0
  %320 = load %union.rec*, %union.rec** %319, align 8
  store %union.rec* %320, %union.rec** %requested_family, align 8
  %321 = getelementptr inbounds [3 x %union.rec*], [3 x %union.rec*]* %par, i32 0, i64 1
  %322 = load %union.rec*, %union.rec** %321, align 8
  store %union.rec* %322, %union.rec** %requested_face, align 8
  br label %329

; <label>:323                                     ; preds = %312
  %324 = load %union.rec*, %union.rec** %2, align 8
  %325 = bitcast %union.rec* %324 to %struct.word_type*
  %326 = getelementptr inbounds %struct.word_type, %struct.word_type* %325, i32 0, i32 1
  %327 = bitcast %union.FIRST_UNION* %326 to %struct.FILE_POS*
  %328 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i32 2, %struct.FILE_POS* %327, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  br label %2217

; <label>:329                                     ; preds = %318, %315, %314
  %330 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %331 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %330, i32 0, i32 4
  %332 = load i32, i32* %331, align 4
  %333 = and i32 %332, 4095
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %350

; <label>:335                                     ; preds = %329
  %336 = load %union.rec*, %union.rec** %requested_size, align 8
  %337 = icmp eq %union.rec* %336, null
  br i1 %337, label %344, label %338

; <label>:338                                     ; preds = %335
  %339 = load %union.rec*, %union.rec** %requested_family, align 8
  %340 = icmp eq %union.rec* %339, null
  br i1 %340, label %344, label %341

; <label>:341                                     ; preds = %338
  %342 = load %union.rec*, %union.rec** %requested_face, align 8
  %343 = icmp eq %union.rec* %342, null
  br i1 %343, label %344, label %350

; <label>:344                                     ; preds = %341, %338, %335
  %345 = load %union.rec*, %union.rec** %2, align 8
  %346 = bitcast %union.rec* %345 to %struct.word_type*
  %347 = getelementptr inbounds %struct.word_type, %struct.word_type* %346, i32 0, i32 1
  %348 = bitcast %union.FIRST_UNION* %347 to %struct.FILE_POS*
  %349 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i32 1, %struct.FILE_POS* %348)
  br label %350

; <label>:350                                     ; preds = %344, %341, %329
  store %union.rec* null, %union.rec** %family, align 8
  %351 = load %union.rec*, %union.rec** %requested_family, align 8
  %352 = icmp ne %union.rec* %351, null
  br i1 %352, label %353, label %415

; <label>:353                                     ; preds = %350
  %354 = load %union.rec*, %union.rec** @font_root, align 8
  %355 = bitcast %union.rec* %354 to %struct.word_type*
  %356 = getelementptr inbounds %struct.word_type, %struct.word_type* %355, i32 0, i32 0
  %357 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %356, i32 0, i64 0
  %358 = getelementptr inbounds %struct.LIST, %struct.LIST* %357, i32 0, i32 1
  %359 = load %union.rec*, %union.rec** %358, align 8
  store %union.rec* %359, %union.rec** %link, align 8
  br label %360

; <label>:360                                     ; preds = %401, %353
  %361 = load %union.rec*, %union.rec** %link, align 8
  %362 = load %union.rec*, %union.rec** @font_root, align 8
  %363 = icmp ne %union.rec* %361, %362
  br i1 %363, label %364, label %408

; <label>:364                                     ; preds = %360
  %365 = load %union.rec*, %union.rec** %link, align 8
  %366 = bitcast %union.rec* %365 to %struct.word_type*
  %367 = getelementptr inbounds %struct.word_type, %struct.word_type* %366, i32 0, i32 0
  %368 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %367, i32 0, i64 1
  %369 = getelementptr inbounds %struct.LIST, %struct.LIST* %368, i32 0, i32 0
  %370 = load %union.rec*, %union.rec** %369, align 8
  store %union.rec* %370, %union.rec** %y, align 8
  br label %371

; <label>:371                                     ; preds = %381, %364
  %372 = load %union.rec*, %union.rec** %y, align 8
  %373 = bitcast %union.rec* %372 to %struct.word_type*
  %374 = getelementptr inbounds %struct.word_type, %struct.word_type* %373, i32 0, i32 1
  %375 = bitcast %union.FIRST_UNION* %374 to %struct.anon*
  %376 = getelementptr inbounds %struct.anon, %struct.anon* %375, i32 0, i32 0
  %377 = load i8, i8* %376, align 1
  %378 = zext i8 %377 to i32
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %388

; <label>:380                                     ; preds = %371
  br label %381

; <label>:381                                     ; preds = %380
  %382 = load %union.rec*, %union.rec** %y, align 8
  %383 = bitcast %union.rec* %382 to %struct.word_type*
  %384 = getelementptr inbounds %struct.word_type, %struct.word_type* %383, i32 0, i32 0
  %385 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %384, i32 0, i64 1
  %386 = getelementptr inbounds %struct.LIST, %struct.LIST* %385, i32 0, i32 0
  %387 = load %union.rec*, %union.rec** %386, align 8
  store %union.rec* %387, %union.rec** %y, align 8
  br label %371

; <label>:388                                     ; preds = %371
  %389 = load %union.rec*, %union.rec** %requested_family, align 8
  %390 = bitcast %union.rec* %389 to %struct.word_type*
  %391 = getelementptr inbounds %struct.word_type, %struct.word_type* %390, i32 0, i32 4
  %392 = getelementptr inbounds [4 x i8], [4 x i8]* %391, i32 0, i32 0
  %393 = load %union.rec*, %union.rec** %y, align 8
  %394 = bitcast %union.rec* %393 to %struct.word_type*
  %395 = getelementptr inbounds %struct.word_type, %struct.word_type* %394, i32 0, i32 4
  %396 = getelementptr inbounds [4 x i8], [4 x i8]* %395, i32 0, i32 0
  %397 = call i32 @strcmp(i8* %392, i8* %396) #5
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %400

; <label>:399                                     ; preds = %388
  br label %408

; <label>:400                                     ; preds = %388
  br label %401

; <label>:401                                     ; preds = %400
  %402 = load %union.rec*, %union.rec** %link, align 8
  %403 = bitcast %union.rec* %402 to %struct.word_type*
  %404 = getelementptr inbounds %struct.word_type, %struct.word_type* %403, i32 0, i32 0
  %405 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %404, i32 0, i64 0
  %406 = getelementptr inbounds %struct.LIST, %struct.LIST* %405, i32 0, i32 1
  %407 = load %union.rec*, %union.rec** %406, align 8
  store %union.rec* %407, %union.rec** %link, align 8
  br label %360

; <label>:408                                     ; preds = %399, %360
  %409 = load %union.rec*, %union.rec** %link, align 8
  %410 = load %union.rec*, %union.rec** @font_root, align 8
  %411 = icmp ne %union.rec* %409, %410
  br i1 %411, label %412, label %414

; <label>:412                                     ; preds = %408
  %413 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %413, %union.rec** %family, align 8
  br label %414

; <label>:414                                     ; preds = %412, %408
  br label %564

; <label>:415                                     ; preds = %350
  %416 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %417 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %416, i32 0, i32 4
  %418 = load i32, i32* %417, align 4
  %419 = and i32 %418, 4095
  %420 = zext i32 %419 to i64
  %421 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %422 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %421, i64 %420
  %423 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %422, i32 0, i32 5
  %424 = load %union.rec*, %union.rec** %423, align 8
  %425 = bitcast %union.rec* %424 to %struct.word_type*
  %426 = getelementptr inbounds %struct.word_type, %struct.word_type* %425, i32 0, i32 0
  %427 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %426, i32 0, i64 1
  %428 = getelementptr inbounds %struct.LIST, %struct.LIST* %427, i32 0, i32 1
  %429 = load %union.rec*, %union.rec** %428, align 8
  %430 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %431 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %430, i32 0, i32 4
  %432 = load i32, i32* %431, align 4
  %433 = and i32 %432, 4095
  %434 = zext i32 %433 to i64
  %435 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %436 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %435, i64 %434
  %437 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %436, i32 0, i32 5
  %438 = load %union.rec*, %union.rec** %437, align 8
  %439 = icmp ne %union.rec* %429, %438
  br i1 %439, label %443, label %440

; <label>:440                                     ; preds = %415
  %441 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %442 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %441, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i32 0, i32 0))
  br label %443

; <label>:443                                     ; preds = %440, %415
  %444 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %445 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %444, i32 0, i32 4
  %446 = load i32, i32* %445, align 4
  %447 = and i32 %446, 4095
  %448 = zext i32 %447 to i64
  %449 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %450 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %449, i64 %448
  %451 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %450, i32 0, i32 5
  %452 = load %union.rec*, %union.rec** %451, align 8
  %453 = bitcast %union.rec* %452 to %struct.word_type*
  %454 = getelementptr inbounds %struct.word_type, %struct.word_type* %453, i32 0, i32 0
  %455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %454, i32 0, i64 1
  %456 = getelementptr inbounds %struct.LIST, %struct.LIST* %455, i32 0, i32 1
  %457 = load %union.rec*, %union.rec** %456, align 8
  %458 = bitcast %union.rec* %457 to %struct.word_type*
  %459 = getelementptr inbounds %struct.word_type, %struct.word_type* %458, i32 0, i32 0
  %460 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %459, i32 0, i64 0
  %461 = getelementptr inbounds %struct.LIST, %struct.LIST* %460, i32 0, i32 0
  %462 = load %union.rec*, %union.rec** %461, align 8
  store %union.rec* %462, %union.rec** %tmpf, align 8
  br label %463

; <label>:463                                     ; preds = %473, %443
  %464 = load %union.rec*, %union.rec** %tmpf, align 8
  %465 = bitcast %union.rec* %464 to %struct.word_type*
  %466 = getelementptr inbounds %struct.word_type, %struct.word_type* %465, i32 0, i32 1
  %467 = bitcast %union.FIRST_UNION* %466 to %struct.anon*
  %468 = getelementptr inbounds %struct.anon, %struct.anon* %467, i32 0, i32 0
  %469 = load i8, i8* %468, align 1
  %470 = zext i8 %469 to i32
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %472, label %480

; <label>:472                                     ; preds = %463
  br label %473

; <label>:473                                     ; preds = %472
  %474 = load %union.rec*, %union.rec** %tmpf, align 8
  %475 = bitcast %union.rec* %474 to %struct.word_type*
  %476 = getelementptr inbounds %struct.word_type, %struct.word_type* %475, i32 0, i32 0
  %477 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %476, i32 0, i64 0
  %478 = getelementptr inbounds %struct.LIST, %struct.LIST* %477, i32 0, i32 0
  %479 = load %union.rec*, %union.rec** %478, align 8
  store %union.rec* %479, %union.rec** %tmpf, align 8
  br label %463

; <label>:480                                     ; preds = %463
  %481 = load %union.rec*, %union.rec** %tmpf, align 8
  %482 = bitcast %union.rec* %481 to %struct.word_type*
  %483 = getelementptr inbounds %struct.word_type, %struct.word_type* %482, i32 0, i32 1
  %484 = bitcast %union.FIRST_UNION* %483 to %struct.anon*
  %485 = getelementptr inbounds %struct.anon, %struct.anon* %484, i32 0, i32 0
  %486 = load i8, i8* %485, align 1
  %487 = zext i8 %486 to i32
  %488 = icmp eq i32 %487, 11
  br i1 %488, label %501, label %489

; <label>:489                                     ; preds = %480
  %490 = load %union.rec*, %union.rec** %tmpf, align 8
  %491 = bitcast %union.rec* %490 to %struct.word_type*
  %492 = getelementptr inbounds %struct.word_type, %struct.word_type* %491, i32 0, i32 1
  %493 = bitcast %union.FIRST_UNION* %492 to %struct.anon*
  %494 = getelementptr inbounds %struct.anon, %struct.anon* %493, i32 0, i32 0
  %495 = load i8, i8* %494, align 1
  %496 = zext i8 %495 to i32
  %497 = icmp eq i32 %496, 12
  br i1 %497, label %501, label %498

; <label>:498                                     ; preds = %489
  %499 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %500 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %499, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0))
  br label %501

; <label>:501                                     ; preds = %498, %489, %480
  %502 = load %union.rec*, %union.rec** %tmpf, align 8
  %503 = bitcast %union.rec* %502 to %struct.word_type*
  %504 = getelementptr inbounds %struct.word_type, %struct.word_type* %503, i32 0, i32 0
  %505 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %504, i32 0, i64 1
  %506 = getelementptr inbounds %struct.LIST, %struct.LIST* %505, i32 0, i32 1
  %507 = load %union.rec*, %union.rec** %506, align 8
  %508 = load %union.rec*, %union.rec** %tmpf, align 8
  %509 = icmp ne %union.rec* %507, %508
  br i1 %509, label %513, label %510

; <label>:510                                     ; preds = %501
  %511 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %512 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %511, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0))
  br label %513

; <label>:513                                     ; preds = %510, %501
  %514 = load %union.rec*, %union.rec** %tmpf, align 8
  %515 = bitcast %union.rec* %514 to %struct.word_type*
  %516 = getelementptr inbounds %struct.word_type, %struct.word_type* %515, i32 0, i32 0
  %517 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %516, i32 0, i64 1
  %518 = getelementptr inbounds %struct.LIST, %struct.LIST* %517, i32 0, i32 1
  %519 = load %union.rec*, %union.rec** %518, align 8
  %520 = bitcast %union.rec* %519 to %struct.word_type*
  %521 = getelementptr inbounds %struct.word_type, %struct.word_type* %520, i32 0, i32 0
  %522 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %521, i32 0, i64 0
  %523 = getelementptr inbounds %struct.LIST, %struct.LIST* %522, i32 0, i32 0
  %524 = load %union.rec*, %union.rec** %523, align 8
  store %union.rec* %524, %union.rec** %family, align 8
  br label %525

; <label>:525                                     ; preds = %535, %513
  %526 = load %union.rec*, %union.rec** %family, align 8
  %527 = bitcast %union.rec* %526 to %struct.word_type*
  %528 = getelementptr inbounds %struct.word_type, %struct.word_type* %527, i32 0, i32 1
  %529 = bitcast %union.FIRST_UNION* %528 to %struct.anon*
  %530 = getelementptr inbounds %struct.anon, %struct.anon* %529, i32 0, i32 0
  %531 = load i8, i8* %530, align 1
  %532 = zext i8 %531 to i32
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %542

; <label>:534                                     ; preds = %525
  br label %535

; <label>:535                                     ; preds = %534
  %536 = load %union.rec*, %union.rec** %family, align 8
  %537 = bitcast %union.rec* %536 to %struct.word_type*
  %538 = getelementptr inbounds %struct.word_type, %struct.word_type* %537, i32 0, i32 0
  %539 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %538, i32 0, i64 0
  %540 = getelementptr inbounds %struct.LIST, %struct.LIST* %539, i32 0, i32 0
  %541 = load %union.rec*, %union.rec** %540, align 8
  store %union.rec* %541, %union.rec** %family, align 8
  br label %525

; <label>:542                                     ; preds = %525
  %543 = load %union.rec*, %union.rec** %family, align 8
  %544 = bitcast %union.rec* %543 to %struct.word_type*
  %545 = getelementptr inbounds %struct.word_type, %struct.word_type* %544, i32 0, i32 1
  %546 = bitcast %union.FIRST_UNION* %545 to %struct.anon*
  %547 = getelementptr inbounds %struct.anon, %struct.anon* %546, i32 0, i32 0
  %548 = load i8, i8* %547, align 1
  %549 = zext i8 %548 to i32
  %550 = icmp eq i32 %549, 11
  br i1 %550, label %563, label %551

; <label>:551                                     ; preds = %542
  %552 = load %union.rec*, %union.rec** %family, align 8
  %553 = bitcast %union.rec* %552 to %struct.word_type*
  %554 = getelementptr inbounds %struct.word_type, %struct.word_type* %553, i32 0, i32 1
  %555 = bitcast %union.FIRST_UNION* %554 to %struct.anon*
  %556 = getelementptr inbounds %struct.anon, %struct.anon* %555, i32 0, i32 0
  %557 = load i8, i8* %556, align 1
  %558 = zext i8 %557 to i32
  %559 = icmp eq i32 %558, 12
  br i1 %559, label %563, label %560

; <label>:560                                     ; preds = %551
  %561 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %562 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %561, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i32 0, i32 0))
  br label %563

; <label>:563                                     ; preds = %560, %551, %542
  br label %564

; <label>:564                                     ; preds = %563, %414
  store %union.rec* null, %union.rec** %face, align 8
  %565 = load %union.rec*, %union.rec** %family, align 8
  %566 = icmp ne %union.rec* %565, null
  br i1 %566, label %567, label %704

; <label>:567                                     ; preds = %564
  %568 = load %union.rec*, %union.rec** %requested_face, align 8
  %569 = icmp ne %union.rec* %568, null
  br i1 %569, label %570, label %632

; <label>:570                                     ; preds = %567
  %571 = load %union.rec*, %union.rec** %family, align 8
  %572 = bitcast %union.rec* %571 to %struct.word_type*
  %573 = getelementptr inbounds %struct.word_type, %struct.word_type* %572, i32 0, i32 0
  %574 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %573, i32 0, i64 0
  %575 = getelementptr inbounds %struct.LIST, %struct.LIST* %574, i32 0, i32 1
  %576 = load %union.rec*, %union.rec** %575, align 8
  store %union.rec* %576, %union.rec** %link, align 8
  br label %577

; <label>:577                                     ; preds = %618, %570
  %578 = load %union.rec*, %union.rec** %link, align 8
  %579 = load %union.rec*, %union.rec** %family, align 8
  %580 = icmp ne %union.rec* %578, %579
  br i1 %580, label %581, label %625

; <label>:581                                     ; preds = %577
  %582 = load %union.rec*, %union.rec** %link, align 8
  %583 = bitcast %union.rec* %582 to %struct.word_type*
  %584 = getelementptr inbounds %struct.word_type, %struct.word_type* %583, i32 0, i32 0
  %585 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %584, i32 0, i64 1
  %586 = getelementptr inbounds %struct.LIST, %struct.LIST* %585, i32 0, i32 0
  %587 = load %union.rec*, %union.rec** %586, align 8
  store %union.rec* %587, %union.rec** %y, align 8
  br label %588

; <label>:588                                     ; preds = %598, %581
  %589 = load %union.rec*, %union.rec** %y, align 8
  %590 = bitcast %union.rec* %589 to %struct.word_type*
  %591 = getelementptr inbounds %struct.word_type, %struct.word_type* %590, i32 0, i32 1
  %592 = bitcast %union.FIRST_UNION* %591 to %struct.anon*
  %593 = getelementptr inbounds %struct.anon, %struct.anon* %592, i32 0, i32 0
  %594 = load i8, i8* %593, align 1
  %595 = zext i8 %594 to i32
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %597, label %605

; <label>:597                                     ; preds = %588
  br label %598

; <label>:598                                     ; preds = %597
  %599 = load %union.rec*, %union.rec** %y, align 8
  %600 = bitcast %union.rec* %599 to %struct.word_type*
  %601 = getelementptr inbounds %struct.word_type, %struct.word_type* %600, i32 0, i32 0
  %602 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %601, i32 0, i64 1
  %603 = getelementptr inbounds %struct.LIST, %struct.LIST* %602, i32 0, i32 0
  %604 = load %union.rec*, %union.rec** %603, align 8
  store %union.rec* %604, %union.rec** %y, align 8
  br label %588

; <label>:605                                     ; preds = %588
  %606 = load %union.rec*, %union.rec** %requested_face, align 8
  %607 = bitcast %union.rec* %606 to %struct.word_type*
  %608 = getelementptr inbounds %struct.word_type, %struct.word_type* %607, i32 0, i32 4
  %609 = getelementptr inbounds [4 x i8], [4 x i8]* %608, i32 0, i32 0
  %610 = load %union.rec*, %union.rec** %y, align 8
  %611 = bitcast %union.rec* %610 to %struct.word_type*
  %612 = getelementptr inbounds %struct.word_type, %struct.word_type* %611, i32 0, i32 4
  %613 = getelementptr inbounds [4 x i8], [4 x i8]* %612, i32 0, i32 0
  %614 = call i32 @strcmp(i8* %609, i8* %613) #5
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %616, label %617

; <label>:616                                     ; preds = %605
  br label %625

; <label>:617                                     ; preds = %605
  br label %618

; <label>:618                                     ; preds = %617
  %619 = load %union.rec*, %union.rec** %link, align 8
  %620 = bitcast %union.rec* %619 to %struct.word_type*
  %621 = getelementptr inbounds %struct.word_type, %struct.word_type* %620, i32 0, i32 0
  %622 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %621, i32 0, i64 0
  %623 = getelementptr inbounds %struct.LIST, %struct.LIST* %622, i32 0, i32 1
  %624 = load %union.rec*, %union.rec** %623, align 8
  store %union.rec* %624, %union.rec** %link, align 8
  br label %577

; <label>:625                                     ; preds = %616, %577
  %626 = load %union.rec*, %union.rec** %link, align 8
  %627 = load %union.rec*, %union.rec** %family, align 8
  %628 = icmp ne %union.rec* %626, %627
  br i1 %628, label %629, label %631

; <label>:629                                     ; preds = %625
  %630 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %630, %union.rec** %face, align 8
  br label %631

; <label>:631                                     ; preds = %629, %625
  br label %703

; <label>:632                                     ; preds = %567
  %633 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %634 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %633, i32 0, i32 4
  %635 = load i32, i32* %634, align 4
  %636 = and i32 %635, 4095
  %637 = zext i32 %636 to i64
  %638 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %639 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %638, i64 %637
  %640 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %639, i32 0, i32 5
  %641 = load %union.rec*, %union.rec** %640, align 8
  %642 = bitcast %union.rec* %641 to %struct.word_type*
  %643 = getelementptr inbounds %struct.word_type, %struct.word_type* %642, i32 0, i32 0
  %644 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %643, i32 0, i64 1
  %645 = getelementptr inbounds %struct.LIST, %struct.LIST* %644, i32 0, i32 1
  %646 = load %union.rec*, %union.rec** %645, align 8
  %647 = bitcast %union.rec* %646 to %struct.word_type*
  %648 = getelementptr inbounds %struct.word_type, %struct.word_type* %647, i32 0, i32 0
  %649 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %648, i32 0, i64 0
  %650 = getelementptr inbounds %struct.LIST, %struct.LIST* %649, i32 0, i32 0
  %651 = load %union.rec*, %union.rec** %650, align 8
  store %union.rec* %651, %union.rec** %face, align 8
  br label %652

; <label>:652                                     ; preds = %662, %632
  %653 = load %union.rec*, %union.rec** %face, align 8
  %654 = bitcast %union.rec* %653 to %struct.word_type*
  %655 = getelementptr inbounds %struct.word_type, %struct.word_type* %654, i32 0, i32 1
  %656 = bitcast %union.FIRST_UNION* %655 to %struct.anon*
  %657 = getelementptr inbounds %struct.anon, %struct.anon* %656, i32 0, i32 0
  %658 = load i8, i8* %657, align 1
  %659 = zext i8 %658 to i32
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %661, label %669

; <label>:661                                     ; preds = %652
  br label %662

; <label>:662                                     ; preds = %661
  %663 = load %union.rec*, %union.rec** %face, align 8
  %664 = bitcast %union.rec* %663 to %struct.word_type*
  %665 = getelementptr inbounds %struct.word_type, %struct.word_type* %664, i32 0, i32 0
  %666 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %665, i32 0, i64 0
  %667 = getelementptr inbounds %struct.LIST, %struct.LIST* %666, i32 0, i32 0
  %668 = load %union.rec*, %union.rec** %667, align 8
  store %union.rec* %668, %union.rec** %face, align 8
  br label %652

; <label>:669                                     ; preds = %652
  %670 = load %union.rec*, %union.rec** %face, align 8
  %671 = bitcast %union.rec* %670 to %struct.word_type*
  %672 = getelementptr inbounds %struct.word_type, %struct.word_type* %671, i32 0, i32 1
  %673 = bitcast %union.FIRST_UNION* %672 to %struct.anon*
  %674 = getelementptr inbounds %struct.anon, %struct.anon* %673, i32 0, i32 0
  %675 = load i8, i8* %674, align 1
  %676 = zext i8 %675 to i32
  %677 = icmp eq i32 %676, 11
  br i1 %677, label %690, label %678

; <label>:678                                     ; preds = %669
  %679 = load %union.rec*, %union.rec** %face, align 8
  %680 = bitcast %union.rec* %679 to %struct.word_type*
  %681 = getelementptr inbounds %struct.word_type, %struct.word_type* %680, i32 0, i32 1
  %682 = bitcast %union.FIRST_UNION* %681 to %struct.anon*
  %683 = getelementptr inbounds %struct.anon, %struct.anon* %682, i32 0, i32 0
  %684 = load i8, i8* %683, align 1
  %685 = zext i8 %684 to i32
  %686 = icmp eq i32 %685, 12
  br i1 %686, label %690, label %687

; <label>:687                                     ; preds = %678
  %688 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %689 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %688, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0))
  br label %690

; <label>:690                                     ; preds = %687, %678, %669
  %691 = load %union.rec*, %union.rec** %face, align 8
  %692 = bitcast %union.rec* %691 to %struct.word_type*
  %693 = getelementptr inbounds %struct.word_type, %struct.word_type* %692, i32 0, i32 0
  %694 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %693, i32 0, i64 1
  %695 = getelementptr inbounds %struct.LIST, %struct.LIST* %694, i32 0, i32 1
  %696 = load %union.rec*, %union.rec** %695, align 8
  %697 = load %union.rec*, %union.rec** %face, align 8
  %698 = icmp ne %union.rec* %696, %697
  br i1 %698, label %702, label %699

; <label>:699                                     ; preds = %690
  %700 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %701 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %700, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0))
  br label %702

; <label>:702                                     ; preds = %699, %690
  br label %703

; <label>:703                                     ; preds = %702, %631
  br label %704

; <label>:704                                     ; preds = %703, %564
  %705 = load %union.rec*, %union.rec** %face, align 8
  %706 = icmp eq %union.rec* %705, null
  br i1 %706, label %707, label %825

; <label>:707                                     ; preds = %704
  %708 = load %union.rec*, %union.rec** %family, align 8
  %709 = icmp ne %union.rec* %708, null
  br i1 %709, label %716, label %710

; <label>:710                                     ; preds = %707
  %711 = load %union.rec*, %union.rec** %requested_family, align 8
  %712 = icmp ne %union.rec* %711, null
  br i1 %712, label %716, label %713

; <label>:713                                     ; preds = %710
  %714 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %715 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %714, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0))
  br label %716

; <label>:716                                     ; preds = %713, %710, %707
  %717 = load %union.rec*, %union.rec** %requested_face, align 8
  %718 = icmp ne %union.rec* %717, null
  br i1 %718, label %722, label %719

; <label>:719                                     ; preds = %716
  %720 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %721 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %720, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0))
  br label %722

; <label>:722                                     ; preds = %719, %716
  %723 = load %union.rec*, %union.rec** %family, align 8
  %724 = icmp ne %union.rec* %723, null
  br i1 %724, label %725, label %727

; <label>:725                                     ; preds = %722
  %726 = load %union.rec*, %union.rec** %family, align 8
  store %union.rec* %726, %union.rec** %requested_family, align 8
  br label %727

; <label>:727                                     ; preds = %725, %722
  %728 = load %union.rec*, %union.rec** %requested_family, align 8
  %729 = bitcast %union.rec* %728 to %struct.word_type*
  %730 = getelementptr inbounds %struct.word_type, %struct.word_type* %729, i32 0, i32 4
  %731 = getelementptr inbounds [4 x i8], [4 x i8]* %730, i32 0, i32 0
  %732 = load %union.rec*, %union.rec** %requested_face, align 8
  %733 = bitcast %union.rec* %732 to %struct.word_type*
  %734 = getelementptr inbounds %struct.word_type, %struct.word_type* %733, i32 0, i32 4
  %735 = getelementptr inbounds [4 x i8], [4 x i8]* %734, i32 0, i32 0
  %736 = load %union.rec*, %union.rec** %2, align 8
  %737 = call %union.rec* @FontRead(i8* %731, i8* %735, %union.rec* %736)
  store %union.rec* %737, %union.rec** %face, align 8
  %738 = load %union.rec*, %union.rec** %face, align 8
  %739 = icmp eq %union.rec* %738, null
  br i1 %739, label %740, label %824

; <label>:740                                     ; preds = %727
  %741 = load %union.rec*, %union.rec** @font_root, align 8
  %742 = bitcast %union.rec* %741 to %struct.word_type*
  %743 = getelementptr inbounds %struct.word_type, %struct.word_type* %742, i32 0, i32 0
  %744 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %743, i32 0, i64 0
  %745 = getelementptr inbounds %struct.LIST, %struct.LIST* %744, i32 0, i32 1
  %746 = load %union.rec*, %union.rec** %745, align 8
  store %union.rec* %746, %union.rec** %link, align 8
  br label %747

; <label>:747                                     ; preds = %788, %740
  %748 = load %union.rec*, %union.rec** %link, align 8
  %749 = load %union.rec*, %union.rec** @font_root, align 8
  %750 = icmp ne %union.rec* %748, %749
  br i1 %750, label %751, label %795

; <label>:751                                     ; preds = %747
  %752 = load %union.rec*, %union.rec** %link, align 8
  %753 = bitcast %union.rec* %752 to %struct.word_type*
  %754 = getelementptr inbounds %struct.word_type, %struct.word_type* %753, i32 0, i32 0
  %755 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %754, i32 0, i64 1
  %756 = getelementptr inbounds %struct.LIST, %struct.LIST* %755, i32 0, i32 0
  %757 = load %union.rec*, %union.rec** %756, align 8
  store %union.rec* %757, %union.rec** %y, align 8
  br label %758

; <label>:758                                     ; preds = %768, %751
  %759 = load %union.rec*, %union.rec** %y, align 8
  %760 = bitcast %union.rec* %759 to %struct.word_type*
  %761 = getelementptr inbounds %struct.word_type, %struct.word_type* %760, i32 0, i32 1
  %762 = bitcast %union.FIRST_UNION* %761 to %struct.anon*
  %763 = getelementptr inbounds %struct.anon, %struct.anon* %762, i32 0, i32 0
  %764 = load i8, i8* %763, align 1
  %765 = zext i8 %764 to i32
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %767, label %775

; <label>:767                                     ; preds = %758
  br label %768

; <label>:768                                     ; preds = %767
  %769 = load %union.rec*, %union.rec** %y, align 8
  %770 = bitcast %union.rec* %769 to %struct.word_type*
  %771 = getelementptr inbounds %struct.word_type, %struct.word_type* %770, i32 0, i32 0
  %772 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %771, i32 0, i64 1
  %773 = getelementptr inbounds %struct.LIST, %struct.LIST* %772, i32 0, i32 0
  %774 = load %union.rec*, %union.rec** %773, align 8
  store %union.rec* %774, %union.rec** %y, align 8
  br label %758

; <label>:775                                     ; preds = %758
  %776 = load %union.rec*, %union.rec** %y, align 8
  %777 = bitcast %union.rec* %776 to %struct.word_type*
  %778 = getelementptr inbounds %struct.word_type, %struct.word_type* %777, i32 0, i32 4
  %779 = getelementptr inbounds [4 x i8], [4 x i8]* %778, i32 0, i32 0
  %780 = load %union.rec*, %union.rec** %requested_face, align 8
  %781 = bitcast %union.rec* %780 to %struct.word_type*
  %782 = getelementptr inbounds %struct.word_type, %struct.word_type* %781, i32 0, i32 4
  %783 = getelementptr inbounds [4 x i8], [4 x i8]* %782, i32 0, i32 0
  %784 = call i32 @strcmp(i8* %779, i8* %783) #5
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %786, label %787

; <label>:786                                     ; preds = %775
  br label %795

; <label>:787                                     ; preds = %775
  br label %788

; <label>:788                                     ; preds = %787
  %789 = load %union.rec*, %union.rec** %link, align 8
  %790 = bitcast %union.rec* %789 to %struct.word_type*
  %791 = getelementptr inbounds %struct.word_type, %struct.word_type* %790, i32 0, i32 0
  %792 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %791, i32 0, i64 0
  %793 = getelementptr inbounds %struct.LIST, %struct.LIST* %792, i32 0, i32 1
  %794 = load %union.rec*, %union.rec** %793, align 8
  store %union.rec* %794, %union.rec** %link, align 8
  br label %747

; <label>:795                                     ; preds = %786, %747
  %796 = load %union.rec*, %union.rec** %link, align 8
  %797 = load %union.rec*, %union.rec** @font_root, align 8
  %798 = icmp ne %union.rec* %796, %797
  br i1 %798, label %799, label %809

; <label>:799                                     ; preds = %795
  %800 = load %union.rec*, %union.rec** %requested_face, align 8
  %801 = bitcast %union.rec* %800 to %struct.word_type*
  %802 = getelementptr inbounds %struct.word_type, %struct.word_type* %801, i32 0, i32 1
  %803 = bitcast %union.FIRST_UNION* %802 to %struct.FILE_POS*
  %804 = load %union.rec*, %union.rec** %requested_face, align 8
  %805 = bitcast %union.rec* %804 to %struct.word_type*
  %806 = getelementptr inbounds %struct.word_type, %struct.word_type* %805, i32 0, i32 4
  %807 = getelementptr inbounds [4 x i8], [4 x i8]* %806, i32 0, i32 0
  %808 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 45, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.27, i32 0, i32 0), i32 2, %struct.FILE_POS* %803, i8* %807)
  br label %823

; <label>:809                                     ; preds = %795
  %810 = load %union.rec*, %union.rec** %requested_face, align 8
  %811 = bitcast %union.rec* %810 to %struct.word_type*
  %812 = getelementptr inbounds %struct.word_type, %struct.word_type* %811, i32 0, i32 1
  %813 = bitcast %union.FIRST_UNION* %812 to %struct.FILE_POS*
  %814 = load %union.rec*, %union.rec** %requested_family, align 8
  %815 = bitcast %union.rec* %814 to %struct.word_type*
  %816 = getelementptr inbounds %struct.word_type, %struct.word_type* %815, i32 0, i32 4
  %817 = getelementptr inbounds [4 x i8], [4 x i8]* %816, i32 0, i32 0
  %818 = load %union.rec*, %union.rec** %requested_face, align 8
  %819 = bitcast %union.rec* %818 to %struct.word_type*
  %820 = getelementptr inbounds %struct.word_type, %struct.word_type* %819, i32 0, i32 4
  %821 = getelementptr inbounds [4 x i8], [4 x i8]* %820, i32 0, i32 0
  %822 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 46, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.28, i32 0, i32 0), i32 2, %struct.FILE_POS* %813, i8* %817, i8* %821)
  br label %823

; <label>:823                                     ; preds = %809, %799
  br label %2217

; <label>:824                                     ; preds = %727
  br label %825

; <label>:825                                     ; preds = %824, %704
  %826 = load %union.rec*, %union.rec** %face, align 8
  %827 = bitcast %union.rec* %826 to %struct.word_type*
  %828 = getelementptr inbounds %struct.word_type, %struct.word_type* %827, i32 0, i32 0
  %829 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %828, i32 0, i64 0
  %830 = getelementptr inbounds %struct.LIST, %struct.LIST* %829, i32 0, i32 1
  %831 = load %union.rec*, %union.rec** %830, align 8
  %832 = load %union.rec*, %union.rec** %face, align 8
  %833 = icmp ne %union.rec* %831, %832
  br i1 %833, label %837, label %834

; <label>:834                                     ; preds = %825
  %835 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %836 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %835, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0))
  br label %837

; <label>:837                                     ; preds = %834, %825
  %838 = load %union.rec*, %union.rec** %face, align 8
  %839 = bitcast %union.rec* %838 to %struct.word_type*
  %840 = getelementptr inbounds %struct.word_type, %struct.word_type* %839, i32 0, i32 0
  %841 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %840, i32 0, i64 0
  %842 = getelementptr inbounds %struct.LIST, %struct.LIST* %841, i32 0, i32 1
  %843 = load %union.rec*, %union.rec** %842, align 8
  %844 = bitcast %union.rec* %843 to %struct.word_type*
  %845 = getelementptr inbounds %struct.word_type, %struct.word_type* %844, i32 0, i32 0
  %846 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %845, i32 0, i64 0
  %847 = getelementptr inbounds %struct.LIST, %struct.LIST* %846, i32 0, i32 1
  %848 = load %union.rec*, %union.rec** %847, align 8
  %849 = load %union.rec*, %union.rec** %face, align 8
  %850 = icmp ne %union.rec* %848, %849
  br i1 %850, label %854, label %851

; <label>:851                                     ; preds = %837
  %852 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %853 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %852, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i32 0, i32 0))
  br label %854

; <label>:854                                     ; preds = %851, %837
  %855 = load %union.rec*, %union.rec** %face, align 8
  %856 = bitcast %union.rec* %855 to %struct.word_type*
  %857 = getelementptr inbounds %struct.word_type, %struct.word_type* %856, i32 0, i32 0
  %858 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %857, i32 0, i64 0
  %859 = getelementptr inbounds %struct.LIST, %struct.LIST* %858, i32 0, i32 1
  %860 = load %union.rec*, %union.rec** %859, align 8
  %861 = bitcast %union.rec* %860 to %struct.word_type*
  %862 = getelementptr inbounds %struct.word_type, %struct.word_type* %861, i32 0, i32 0
  %863 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %862, i32 0, i64 0
  %864 = getelementptr inbounds %struct.LIST, %struct.LIST* %863, i32 0, i32 1
  %865 = load %union.rec*, %union.rec** %864, align 8
  %866 = bitcast %union.rec* %865 to %struct.word_type*
  %867 = getelementptr inbounds %struct.word_type, %struct.word_type* %866, i32 0, i32 0
  %868 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %867, i32 0, i64 0
  %869 = getelementptr inbounds %struct.LIST, %struct.LIST* %868, i32 0, i32 1
  %870 = load %union.rec*, %union.rec** %869, align 8
  %871 = load %union.rec*, %union.rec** %face, align 8
  %872 = icmp ne %union.rec* %870, %871
  br i1 %872, label %876, label %873

; <label>:873                                     ; preds = %854
  %874 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %875 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %874, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i32 0, i32 0))
  br label %876

; <label>:876                                     ; preds = %873, %854
  %877 = load %union.rec*, %union.rec** %requested_size, align 8
  %878 = icmp eq %union.rec* %877, null
  br i1 %878, label %879, label %895

; <label>:879                                     ; preds = %876
  %880 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %881 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %880, i32 0, i32 4
  %882 = load i32, i32* %881, align 4
  %883 = and i32 %882, 4095
  %884 = zext i32 %883 to i64
  %885 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %886 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %885, i64 %884
  %887 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %886, i32 0, i32 5
  %888 = load %union.rec*, %union.rec** %887, align 8
  %889 = bitcast %union.rec* %888 to %struct.word_type*
  %890 = getelementptr inbounds %struct.word_type, %struct.word_type* %889, i32 0, i32 3
  %891 = bitcast %union.THIRD_UNION* %890 to %struct.anon.7*
  %892 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %891, i32 0, i32 0
  %893 = load i32, i32* %892, align 4
  %894 = trunc i32 %893 to i16
  store i16 %894, i16* %flen, align 2
  br label %1015

; <label>:895                                     ; preds = %876
  %896 = load %union.rec*, %union.rec** %requested_size, align 8
  %897 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  call void @GetGap(%union.rec* %896, %struct.STYLE* %897, %struct.GAP* %gp, i32* %inc)
  %898 = bitcast %struct.GAP* %gp to i16*
  %899 = load i16, i16* %898, align 4
  %900 = lshr i16 %899, 13
  %901 = zext i16 %900 to i32
  %902 = icmp ne i32 %901, 1
  br i1 %902, label %910, label %903

; <label>:903                                     ; preds = %895
  %904 = bitcast %struct.GAP* %gp to i16*
  %905 = load i16, i16* %904, align 4
  %906 = lshr i16 %905, 10
  %907 = and i16 %906, 7
  %908 = zext i16 %907 to i32
  %909 = icmp ne i32 %908, 1
  br i1 %909, label %910, label %935

; <label>:910                                     ; preds = %903, %895
  %911 = load %union.rec*, %union.rec** %requested_size, align 8
  %912 = bitcast %union.rec* %911 to %struct.word_type*
  %913 = getelementptr inbounds %struct.word_type, %struct.word_type* %912, i32 0, i32 1
  %914 = bitcast %union.FIRST_UNION* %913 to %struct.FILE_POS*
  %915 = load %union.rec*, %union.rec** %requested_size, align 8
  %916 = bitcast %union.rec* %915 to %struct.word_type*
  %917 = getelementptr inbounds %struct.word_type, %struct.word_type* %916, i32 0, i32 4
  %918 = getelementptr inbounds [4 x i8], [4 x i8]* %917, i32 0, i32 0
  %919 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i32 0, i32 0), i32 2, %struct.FILE_POS* %914, i8* %918)
  %920 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %921 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %920, i32 0, i32 4
  %922 = load i32, i32* %921, align 4
  %923 = and i32 %922, 4095
  %924 = zext i32 %923 to i64
  %925 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %926 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %925, i64 %924
  %927 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %926, i32 0, i32 5
  %928 = load %union.rec*, %union.rec** %927, align 8
  %929 = bitcast %union.rec* %928 to %struct.word_type*
  %930 = getelementptr inbounds %struct.word_type, %struct.word_type* %929, i32 0, i32 3
  %931 = bitcast %union.THIRD_UNION* %930 to %struct.anon.7*
  %932 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %931, i32 0, i32 0
  %933 = load i32, i32* %932, align 4
  %934 = trunc i32 %933 to i16
  store i16 %934, i16* %flen, align 2
  br label %1014

; <label>:935                                     ; preds = %903
  %936 = load i32, i32* %inc, align 4
  %937 = icmp eq i32 %936, 158
  br i1 %937, label %938, label %941

; <label>:938                                     ; preds = %935
  %939 = getelementptr inbounds %struct.GAP, %struct.GAP* %gp, i32 0, i32 1
  %940 = load i16, i16* %939, align 2
  store i16 %940, i16* %flen, align 2
  br label %1013

; <label>:941                                     ; preds = %935
  %942 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %943 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %942, i32 0, i32 4
  %944 = load i32, i32* %943, align 4
  %945 = and i32 %944, 4095
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %947, label %957

; <label>:947                                     ; preds = %941
  %948 = load %union.rec*, %union.rec** %requested_size, align 8
  %949 = bitcast %union.rec* %948 to %struct.word_type*
  %950 = getelementptr inbounds %struct.word_type, %struct.word_type* %949, i32 0, i32 1
  %951 = bitcast %union.FIRST_UNION* %950 to %struct.FILE_POS*
  %952 = load %union.rec*, %union.rec** %requested_size, align 8
  %953 = bitcast %union.rec* %952 to %struct.word_type*
  %954 = getelementptr inbounds %struct.word_type, %struct.word_type* %953, i32 0, i32 4
  %955 = getelementptr inbounds [4 x i8], [4 x i8]* %954, i32 0, i32 0
  %956 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.33, i32 0, i32 0), i32 1, %struct.FILE_POS* %951, i8* %955)
  br label %1012

; <label>:957                                     ; preds = %941
  %958 = load i32, i32* %inc, align 4
  %959 = icmp eq i32 %958, 159
  br i1 %959, label %960, label %980

; <label>:960                                     ; preds = %957
  %961 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %962 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %961, i32 0, i32 4
  %963 = load i32, i32* %962, align 4
  %964 = and i32 %963, 4095
  %965 = zext i32 %964 to i64
  %966 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %967 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %966, i64 %965
  %968 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %967, i32 0, i32 5
  %969 = load %union.rec*, %union.rec** %968, align 8
  %970 = bitcast %union.rec* %969 to %struct.word_type*
  %971 = getelementptr inbounds %struct.word_type, %struct.word_type* %970, i32 0, i32 3
  %972 = bitcast %union.THIRD_UNION* %971 to %struct.anon.7*
  %973 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %972, i32 0, i32 0
  %974 = load i32, i32* %973, align 4
  %975 = getelementptr inbounds %struct.GAP, %struct.GAP* %gp, i32 0, i32 1
  %976 = load i16, i16* %975, align 2
  %977 = sext i16 %976 to i32
  %978 = add nsw i32 %974, %977
  %979 = trunc i32 %978 to i16
  store i16 %979, i16* %flen, align 2
  br label %1011

; <label>:980                                     ; preds = %957
  %981 = load i32, i32* %inc, align 4
  %982 = icmp eq i32 %981, 160
  br i1 %982, label %983, label %1003

; <label>:983                                     ; preds = %980
  %984 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %985 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %984, i32 0, i32 4
  %986 = load i32, i32* %985, align 4
  %987 = and i32 %986, 4095
  %988 = zext i32 %987 to i64
  %989 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %990 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %989, i64 %988
  %991 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %990, i32 0, i32 5
  %992 = load %union.rec*, %union.rec** %991, align 8
  %993 = bitcast %union.rec* %992 to %struct.word_type*
  %994 = getelementptr inbounds %struct.word_type, %struct.word_type* %993, i32 0, i32 3
  %995 = bitcast %union.THIRD_UNION* %994 to %struct.anon.7*
  %996 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %995, i32 0, i32 0
  %997 = load i32, i32* %996, align 4
  %998 = getelementptr inbounds %struct.GAP, %struct.GAP* %gp, i32 0, i32 1
  %999 = load i16, i16* %998, align 2
  %1000 = sext i16 %999 to i32
  %1001 = sub nsw i32 %997, %1000
  %1002 = trunc i32 %1001 to i16
  store i16 %1002, i16* %flen, align 2
  br label %1010

; <label>:1003                                    ; preds = %980
  %1004 = load %union.rec*, %union.rec** %2, align 8
  %1005 = bitcast %union.rec* %1004 to %struct.word_type*
  %1006 = getelementptr inbounds %struct.word_type, %struct.word_type* %1005, i32 0, i32 1
  %1007 = bitcast %union.FIRST_UNION* %1006 to %struct.FILE_POS*
  %1008 = load i32, i32* %inc, align 4
  %1009 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), i32 0, %struct.FILE_POS* %1007, i32 %1008)
  br label %1010

; <label>:1010                                    ; preds = %1003, %983
  br label %1011

; <label>:1011                                    ; preds = %1010, %960
  br label %1012

; <label>:1012                                    ; preds = %1011, %947
  br label %1013

; <label>:1013                                    ; preds = %1012, %938
  br label %1014

; <label>:1014                                    ; preds = %1013, %910
  br label %1015

; <label>:1015                                    ; preds = %1014, %879
  %1016 = load i16, i16* %flen, align 2
  %1017 = sext i16 %1016 to i32
  %1018 = icmp sle i32 %1017, 0
  br i1 %1018, label %1019, label %1029

; <label>:1019                                    ; preds = %1015
  %1020 = load %union.rec*, %union.rec** %requested_size, align 8
  %1021 = bitcast %union.rec* %1020 to %struct.word_type*
  %1022 = getelementptr inbounds %struct.word_type, %struct.word_type* %1021, i32 0, i32 1
  %1023 = bitcast %union.FIRST_UNION* %1022 to %struct.FILE_POS*
  %1024 = load %union.rec*, %union.rec** %requested_size, align 8
  %1025 = bitcast %union.rec* %1024 to %struct.word_type*
  %1026 = getelementptr inbounds %struct.word_type, %struct.word_type* %1025, i32 0, i32 4
  %1027 = getelementptr inbounds [4 x i8], [4 x i8]* %1026, i32 0, i32 0
  %1028 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i32 0, i32 0), i32 2, %struct.FILE_POS* %1023, i8* %1027, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  br label %2217

; <label>:1029                                    ; preds = %1015
  %1030 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1031 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1030, i32 0, i32 8
  %1032 = load i32, i32* %1031, align 4
  %1033 = icmp ne i32 %1032, 0
  br i1 %1033, label %1037, label %1034

; <label>:1034                                    ; preds = %1029
  %1035 = load i32, i32* @PlainCharHeight, align 4
  %1036 = trunc i32 %1035 to i16
  store i16 %1036, i16* %flen, align 2
  br label %1037

; <label>:1037                                    ; preds = %1034, %1029
  %1038 = load %union.rec*, %union.rec** %face, align 8
  %1039 = bitcast %union.rec* %1038 to %struct.word_type*
  %1040 = getelementptr inbounds %struct.word_type, %struct.word_type* %1039, i32 0, i32 0
  %1041 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1040, i32 0, i64 0
  %1042 = getelementptr inbounds %struct.LIST, %struct.LIST* %1041, i32 0, i32 1
  %1043 = load %union.rec*, %union.rec** %1042, align 8
  %1044 = bitcast %union.rec* %1043 to %struct.word_type*
  %1045 = getelementptr inbounds %struct.word_type, %struct.word_type* %1044, i32 0, i32 0
  %1046 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1045, i32 0, i64 0
  %1047 = getelementptr inbounds %struct.LIST, %struct.LIST* %1046, i32 0, i32 1
  %1048 = load %union.rec*, %union.rec** %1047, align 8
  %1049 = bitcast %union.rec* %1048 to %struct.word_type*
  %1050 = getelementptr inbounds %struct.word_type, %struct.word_type* %1049, i32 0, i32 0
  %1051 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1050, i32 0, i64 0
  %1052 = getelementptr inbounds %struct.LIST, %struct.LIST* %1051, i32 0, i32 1
  %1053 = load %union.rec*, %union.rec** %1052, align 8
  store %union.rec* %1053, %union.rec** %link, align 8
  br label %1054

; <label>:1054                                    ; preds = %1165, %1037
  %1055 = load %union.rec*, %union.rec** %link, align 8
  %1056 = load %union.rec*, %union.rec** %face, align 8
  %1057 = icmp ne %union.rec* %1055, %1056
  br i1 %1057, label %1058, label %1172

; <label>:1058                                    ; preds = %1054
  %1059 = load %union.rec*, %union.rec** %link, align 8
  %1060 = bitcast %union.rec* %1059 to %struct.word_type*
  %1061 = getelementptr inbounds %struct.word_type, %struct.word_type* %1060, i32 0, i32 0
  %1062 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1061, i32 0, i64 1
  %1063 = getelementptr inbounds %struct.LIST, %struct.LIST* %1062, i32 0, i32 0
  %1064 = load %union.rec*, %union.rec** %1063, align 8
  store %union.rec* %1064, %union.rec** %fsize, align 8
  br label %1065

; <label>:1065                                    ; preds = %1075, %1058
  %1066 = load %union.rec*, %union.rec** %fsize, align 8
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
  %1076 = load %union.rec*, %union.rec** %fsize, align 8
  %1077 = bitcast %union.rec* %1076 to %struct.word_type*
  %1078 = getelementptr inbounds %struct.word_type, %struct.word_type* %1077, i32 0, i32 0
  %1079 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1078, i32 0, i64 1
  %1080 = getelementptr inbounds %struct.LIST, %struct.LIST* %1079, i32 0, i32 0
  %1081 = load %union.rec*, %union.rec** %1080, align 8
  store %union.rec* %1081, %union.rec** %fsize, align 8
  br label %1065

; <label>:1082                                    ; preds = %1065
  %1083 = load %union.rec*, %union.rec** %fsize, align 8
  %1084 = bitcast %union.rec* %1083 to %struct.word_type*
  %1085 = getelementptr inbounds %struct.word_type, %struct.word_type* %1084, i32 0, i32 3
  %1086 = bitcast %union.THIRD_UNION* %1085 to %struct.anon.7*
  %1087 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1086, i32 0, i32 0
  %1088 = load i32, i32* %1087, align 4
  %1089 = load i16, i16* %flen, align 2
  %1090 = sext i16 %1089 to i32
  %1091 = icmp eq i32 %1088, %1090
  br i1 %1091, label %1092, label %1164

; <label>:1092                                    ; preds = %1082
  %1093 = load %union.rec*, %union.rec** %fsize, align 8
  %1094 = bitcast %union.rec* %1093 to %struct.word_type*
  %1095 = getelementptr inbounds %struct.word_type, %struct.word_type* %1094, i32 0, i32 2
  %1096 = bitcast %union.SECOND_UNION* %1095 to %struct.anon.4*
  %1097 = bitcast %struct.anon.4* %1096 to i16*
  %1098 = load i16, i16* %1097, align 4
  %1099 = and i16 %1098, 4095
  %1100 = zext i16 %1099 to i32
  %1101 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %1102 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1101, i32 0, i32 4
  %1103 = load i32, i32* %1102, align 4
  %1104 = and i32 %1100, 4095
  %1105 = and i32 %1103, -4096
  %1106 = or i32 %1105, %1104
  store i32 %1106, i32* %1102, align 4
  %1107 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %1108 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1107, i32 0, i32 1
  %1109 = bitcast %union.anon.10* %1108 to %struct.GAP*
  %1110 = bitcast %struct.GAP* %1109 to i16*
  %1111 = load i16, i16* %1110, align 4
  %1112 = lshr i16 %1111, 7
  %1113 = and i16 %1112, 1
  %1114 = zext i16 %1113 to i32
  %1115 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %1116 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1115, i32 0, i32 1
  %1117 = bitcast %union.anon.10* %1116 to %struct.GAP*
  %1118 = bitcast %struct.GAP* %1117 to i16*
  %1119 = trunc i32 %1114 to i16
  %1120 = load i16, i16* %1118, align 4
  %1121 = and i16 %1119, 1
  %1122 = shl i16 %1121, 7
  %1123 = and i16 %1120, -129
  %1124 = or i16 %1123, %1122
  store i16 %1124, i16* %1118, align 4
  %1125 = zext i16 %1121 to i32
  %1126 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %1127 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1126, i32 0, i32 1
  %1128 = bitcast %union.anon.10* %1127 to %struct.GAP*
  %1129 = bitcast %struct.GAP* %1128 to i16*
  %1130 = load i16, i16* %1129, align 4
  %1131 = and i16 %1130, -257
  store i16 %1131, i16* %1129, align 4
  %1132 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %1133 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1132, i32 0, i32 1
  %1134 = bitcast %union.anon.10* %1133 to %struct.GAP*
  %1135 = bitcast %struct.GAP* %1134 to i16*
  %1136 = load i16, i16* %1135, align 4
  %1137 = and i16 %1136, -513
  %1138 = or i16 %1137, 512
  store i16 %1138, i16* %1135, align 4
  %1139 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %1140 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1139, i32 0, i32 1
  %1141 = bitcast %union.anon.10* %1140 to %struct.GAP*
  %1142 = bitcast %struct.GAP* %1141 to i16*
  %1143 = load i16, i16* %1142, align 4
  %1144 = and i16 %1143, -7169
  %1145 = or i16 %1144, 1024
  store i16 %1145, i16* %1142, align 4
  %1146 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %1147 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1146, i32 0, i32 1
  %1148 = bitcast %union.anon.10* %1147 to %struct.GAP*
  %1149 = bitcast %struct.GAP* %1148 to i16*
  %1150 = load i16, i16* %1149, align 4
  %1151 = and i16 %1150, 8191
  %1152 = or i16 %1151, 8192
  store i16 %1152, i16* %1149, align 4
  %1153 = load %union.rec*, %union.rec** %fsize, align 8
  %1154 = bitcast %union.rec* %1153 to %struct.word_type*
  %1155 = getelementptr inbounds %struct.word_type, %struct.word_type* %1154, i32 0, i32 3
  %1156 = bitcast %union.THIRD_UNION* %1155 to %struct.anon.7*
  %1157 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1156, i32 0, i32 2
  %1158 = load i32, i32* %1157, align 4
  %1159 = trunc i32 %1158 to i16
  %1160 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %1161 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1160, i32 0, i32 1
  %1162 = bitcast %union.anon.10* %1161 to %struct.GAP*
  %1163 = getelementptr inbounds %struct.GAP, %struct.GAP* %1162, i32 0, i32 1
  store i16 %1159, i16* %1163, align 2
  br label %2217

; <label>:1164                                    ; preds = %1082
  br label %1165

; <label>:1165                                    ; preds = %1164
  %1166 = load %union.rec*, %union.rec** %link, align 8
  %1167 = bitcast %union.rec* %1166 to %struct.word_type*
  %1168 = getelementptr inbounds %struct.word_type, %struct.word_type* %1167, i32 0, i32 0
  %1169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1168, i32 0, i64 0
  %1170 = getelementptr inbounds %struct.LIST, %struct.LIST* %1169, i32 0, i32 1
  %1171 = load %union.rec*, %union.rec** %1170, align 8
  store %union.rec* %1171, %union.rec** %link, align 8
  br label %1054

; <label>:1172                                    ; preds = %1054
  %1173 = load i32, i32* @font_count, align 4
  %1174 = add i32 %1173, 1
  store i32 %1174, i32* @font_count, align 4
  %1175 = load i32, i32* @finfo_size, align 4
  %1176 = icmp uge i32 %1174, %1175
  br i1 %1176, label %1177, label %1205

; <label>:1177                                    ; preds = %1172
  %1178 = load i32, i32* @font_count, align 4
  %1179 = icmp ugt i32 %1178, 4096
  br i1 %1179, label %1180, label %1186

; <label>:1180                                    ; preds = %1177
  %1181 = load %union.rec*, %union.rec** %2, align 8
  %1182 = bitcast %union.rec* %1181 to %struct.word_type*
  %1183 = getelementptr inbounds %struct.word_type, %struct.word_type* %1182, i32 0, i32 1
  %1184 = bitcast %union.FIRST_UNION* %1183 to %struct.FILE_POS*
  %1185 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 51, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.36, i32 0, i32 0), i32 1, %struct.FILE_POS* %1184, i32 4096)
  br label %1186

; <label>:1186                                    ; preds = %1180, %1177
  %1187 = load i32, i32* @finfo_size, align 4
  %1188 = mul nsw i32 %1187, 2
  store i32 %1188, i32* @finfo_size, align 4
  %1189 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %1190 = bitcast %struct.font_rec* %1189 to i8*
  %1191 = load i32, i32* @finfo_size, align 4
  %1192 = sext i32 %1191 to i64
  %1193 = mul i64 %1192, 96
  %1194 = call i8* @realloc(i8* %1190, i64 %1193) #4
  %1195 = bitcast i8* %1194 to %struct.font_rec*
  store %struct.font_rec* %1195, %struct.font_rec** @finfo, align 8
  %1196 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %1197 = icmp eq %struct.font_rec* %1196, null
  br i1 %1197, label %1198, label %1204

; <label>:1198                                    ; preds = %1186
  %1199 = load %union.rec*, %union.rec** %2, align 8
  %1200 = bitcast %union.rec* %1199 to %struct.word_type*
  %1201 = getelementptr inbounds %struct.word_type, %struct.word_type* %1200, i32 0, i32 1
  %1202 = bitcast %union.FIRST_UNION* %1201 to %struct.FILE_POS*
  %1203 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 52, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.37, i32 0, i32 0), i32 1, %struct.FILE_POS* %1202)
  br label %1204

; <label>:1204                                    ; preds = %1198, %1186
  br label %1205

; <label>:1205                                    ; preds = %1204, %1172
  %1206 = load %union.rec*, %union.rec** %face, align 8
  %1207 = bitcast %union.rec* %1206 to %struct.word_type*
  %1208 = getelementptr inbounds %struct.word_type, %struct.word_type* %1207, i32 0, i32 0
  %1209 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1208, i32 0, i64 0
  %1210 = getelementptr inbounds %struct.LIST, %struct.LIST* %1209, i32 0, i32 1
  %1211 = load %union.rec*, %union.rec** %1210, align 8
  %1212 = bitcast %union.rec* %1211 to %struct.word_type*
  %1213 = getelementptr inbounds %struct.word_type, %struct.word_type* %1212, i32 0, i32 0
  %1214 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1213, i32 0, i64 0
  %1215 = getelementptr inbounds %struct.LIST, %struct.LIST* %1214, i32 0, i32 1
  %1216 = load %union.rec*, %union.rec** %1215, align 8
  %1217 = bitcast %union.rec* %1216 to %struct.word_type*
  %1218 = getelementptr inbounds %struct.word_type, %struct.word_type* %1217, i32 0, i32 0
  %1219 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1218, i32 0, i64 0
  %1220 = getelementptr inbounds %struct.LIST, %struct.LIST* %1219, i32 0, i32 1
  %1221 = load %union.rec*, %union.rec** %1220, align 8
  %1222 = bitcast %union.rec* %1221 to %struct.word_type*
  %1223 = getelementptr inbounds %struct.word_type, %struct.word_type* %1222, i32 0, i32 0
  %1224 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1223, i32 0, i64 1
  %1225 = getelementptr inbounds %struct.LIST, %struct.LIST* %1224, i32 0, i32 0
  %1226 = load %union.rec*, %union.rec** %1225, align 8
  store %union.rec* %1226, %union.rec** %old, align 8
  br label %1227

; <label>:1227                                    ; preds = %1237, %1205
  %1228 = load %union.rec*, %union.rec** %old, align 8
  %1229 = bitcast %union.rec* %1228 to %struct.word_type*
  %1230 = getelementptr inbounds %struct.word_type, %struct.word_type* %1229, i32 0, i32 1
  %1231 = bitcast %union.FIRST_UNION* %1230 to %struct.anon*
  %1232 = getelementptr inbounds %struct.anon, %struct.anon* %1231, i32 0, i32 0
  %1233 = load i8, i8* %1232, align 1
  %1234 = zext i8 %1233 to i32
  %1235 = icmp eq i32 %1234, 0
  br i1 %1235, label %1236, label %1244

; <label>:1236                                    ; preds = %1227
  br label %1237

; <label>:1237                                    ; preds = %1236
  %1238 = load %union.rec*, %union.rec** %old, align 8
  %1239 = bitcast %union.rec* %1238 to %struct.word_type*
  %1240 = getelementptr inbounds %struct.word_type, %struct.word_type* %1239, i32 0, i32 0
  %1241 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1240, i32 0, i64 1
  %1242 = getelementptr inbounds %struct.LIST, %struct.LIST* %1241, i32 0, i32 0
  %1243 = load %union.rec*, %union.rec** %1242, align 8
  store %union.rec* %1243, %union.rec** %old, align 8
  br label %1227

; <label>:1244                                    ; preds = %1227
  %1245 = load %union.rec*, %union.rec** %old, align 8
  %1246 = bitcast %union.rec* %1245 to %struct.word_type*
  %1247 = getelementptr inbounds %struct.word_type, %struct.word_type* %1246, i32 0, i32 1
  %1248 = bitcast %union.FIRST_UNION* %1247 to %struct.anon*
  %1249 = getelementptr inbounds %struct.anon, %struct.anon* %1248, i32 0, i32 0
  %1250 = load i8, i8* %1249, align 1
  %1251 = zext i8 %1250 to i32
  %1252 = icmp eq i32 %1251, 11
  br i1 %1252, label %1265, label %1253

; <label>:1253                                    ; preds = %1244
  %1254 = load %union.rec*, %union.rec** %old, align 8
  %1255 = bitcast %union.rec* %1254 to %struct.word_type*
  %1256 = getelementptr inbounds %struct.word_type, %struct.word_type* %1255, i32 0, i32 1
  %1257 = bitcast %union.FIRST_UNION* %1256 to %struct.anon*
  %1258 = getelementptr inbounds %struct.anon, %struct.anon* %1257, i32 0, i32 0
  %1259 = load i8, i8* %1258, align 1
  %1260 = zext i8 %1259 to i32
  %1261 = icmp eq i32 %1260, 12
  br i1 %1261, label %1265, label %1262

; <label>:1262                                    ; preds = %1253
  %1263 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1264 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %1263, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0))
  br label %1265

; <label>:1265                                    ; preds = %1262, %1253, %1244
  %1266 = load %union.rec*, %union.rec** %old, align 8
  %1267 = bitcast %union.rec* %1266 to %struct.word_type*
  %1268 = getelementptr inbounds %struct.word_type, %struct.word_type* %1267, i32 0, i32 4
  %1269 = getelementptr inbounds [4 x i8], [4 x i8]* %1268, i32 0, i32 0
  %1270 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1271 = call %union.rec* @MakeWord(i32 11, i8* %1269, %struct.FILE_POS* %1270)
  store %union.rec* %1271, %union.rec** %new, align 8
  %1272 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1273 = zext i8 %1272 to i32
  store i32 %1273, i32* @zz_size, align 4
  %1274 = sext i32 %1273 to i64
  %1275 = icmp uge i64 %1274, 265
  br i1 %1275, label %1276, label %1279

; <label>:1276                                    ; preds = %1265
  %1277 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1278 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %1277)
  br label %1304

; <label>:1279                                    ; preds = %1265
  %1280 = load i32, i32* @zz_size, align 4
  %1281 = sext i32 %1280 to i64
  %1282 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1281
  %1283 = load %union.rec*, %union.rec** %1282, align 8
  %1284 = icmp eq %union.rec* %1283, null
  br i1 %1284, label %1285, label %1289

; <label>:1285                                    ; preds = %1279
  %1286 = load i32, i32* @zz_size, align 4
  %1287 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1288 = call %union.rec* @GetMemory(i32 %1286, %struct.FILE_POS* %1287)
  store %union.rec* %1288, %union.rec** @zz_hold, align 8
  br label %1303

; <label>:1289                                    ; preds = %1279
  %1290 = load i32, i32* @zz_size, align 4
  %1291 = sext i32 %1290 to i64
  %1292 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1291
  %1293 = load %union.rec*, %union.rec** %1292, align 8
  store %union.rec* %1293, %union.rec** @zz_hold, align 8
  store %union.rec* %1293, %union.rec** @zz_hold, align 8
  %1294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1295 = bitcast %union.rec* %1294 to %struct.word_type*
  %1296 = getelementptr inbounds %struct.word_type, %struct.word_type* %1295, i32 0, i32 0
  %1297 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1296, i32 0, i64 0
  %1298 = getelementptr inbounds %struct.LIST, %struct.LIST* %1297, i32 0, i32 0
  %1299 = load %union.rec*, %union.rec** %1298, align 8
  %1300 = load i32, i32* @zz_size, align 4
  %1301 = sext i32 %1300 to i64
  %1302 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1301
  store %union.rec* %1299, %union.rec** %1302, align 8
  br label %1303

; <label>:1303                                    ; preds = %1289, %1285
  br label %1304

; <label>:1304                                    ; preds = %1303, %1276
  %1305 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1306 = bitcast %union.rec* %1305 to %struct.word_type*
  %1307 = getelementptr inbounds %struct.word_type, %struct.word_type* %1306, i32 0, i32 1
  %1308 = bitcast %union.FIRST_UNION* %1307 to %struct.anon*
  %1309 = getelementptr inbounds %struct.anon, %struct.anon* %1308, i32 0, i32 0
  store i8 0, i8* %1309, align 1
  %1310 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1311 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1312 = bitcast %union.rec* %1311 to %struct.word_type*
  %1313 = getelementptr inbounds %struct.word_type, %struct.word_type* %1312, i32 0, i32 0
  %1314 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1313, i32 0, i64 1
  %1315 = getelementptr inbounds %struct.LIST, %struct.LIST* %1314, i32 0, i32 1
  store %union.rec* %1310, %union.rec** %1315, align 8
  %1316 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1317 = bitcast %union.rec* %1316 to %struct.word_type*
  %1318 = getelementptr inbounds %struct.word_type, %struct.word_type* %1317, i32 0, i32 0
  %1319 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1318, i32 0, i64 1
  %1320 = getelementptr inbounds %struct.LIST, %struct.LIST* %1319, i32 0, i32 0
  store %union.rec* %1310, %union.rec** %1320, align 8
  %1321 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1322 = bitcast %union.rec* %1321 to %struct.word_type*
  %1323 = getelementptr inbounds %struct.word_type, %struct.word_type* %1322, i32 0, i32 0
  %1324 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1323, i32 0, i64 0
  %1325 = getelementptr inbounds %struct.LIST, %struct.LIST* %1324, i32 0, i32 1
  store %union.rec* %1310, %union.rec** %1325, align 8
  %1326 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1327 = bitcast %union.rec* %1326 to %struct.word_type*
  %1328 = getelementptr inbounds %struct.word_type, %struct.word_type* %1327, i32 0, i32 0
  %1329 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1328, i32 0, i64 0
  %1330 = getelementptr inbounds %struct.LIST, %struct.LIST* %1329, i32 0, i32 0
  store %union.rec* %1310, %union.rec** %1330, align 8
  store %union.rec* %1310, %union.rec** @xx_link, align 8
  %1331 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1331, %union.rec** @zz_res, align 8
  %1332 = load %union.rec*, %union.rec** %face, align 8
  store %union.rec* %1332, %union.rec** @zz_hold, align 8
  %1333 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1334 = icmp eq %union.rec* %1333, null
  br i1 %1334, label %1335, label %1337

; <label>:1335                                    ; preds = %1304
  %1336 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1385

; <label>:1337                                    ; preds = %1304
  %1338 = load %union.rec*, %union.rec** @zz_res, align 8
  %1339 = icmp eq %union.rec* %1338, null
  br i1 %1339, label %1340, label %1342

; <label>:1340                                    ; preds = %1337
  %1341 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1383

; <label>:1342                                    ; preds = %1337
  %1343 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1344 = bitcast %union.rec* %1343 to %struct.word_type*
  %1345 = getelementptr inbounds %struct.word_type, %struct.word_type* %1344, i32 0, i32 0
  %1346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1345, i32 0, i64 0
  %1347 = getelementptr inbounds %struct.LIST, %struct.LIST* %1346, i32 0, i32 0
  %1348 = load %union.rec*, %union.rec** %1347, align 8
  store %union.rec* %1348, %union.rec** @zz_tmp, align 8
  %1349 = load %union.rec*, %union.rec** @zz_res, align 8
  %1350 = bitcast %union.rec* %1349 to %struct.word_type*
  %1351 = getelementptr inbounds %struct.word_type, %struct.word_type* %1350, i32 0, i32 0
  %1352 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1351, i32 0, i64 0
  %1353 = getelementptr inbounds %struct.LIST, %struct.LIST* %1352, i32 0, i32 0
  %1354 = load %union.rec*, %union.rec** %1353, align 8
  %1355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1356 = bitcast %union.rec* %1355 to %struct.word_type*
  %1357 = getelementptr inbounds %struct.word_type, %struct.word_type* %1356, i32 0, i32 0
  %1358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1357, i32 0, i64 0
  %1359 = getelementptr inbounds %struct.LIST, %struct.LIST* %1358, i32 0, i32 0
  store %union.rec* %1354, %union.rec** %1359, align 8
  %1360 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1361 = load %union.rec*, %union.rec** @zz_res, align 8
  %1362 = bitcast %union.rec* %1361 to %struct.word_type*
  %1363 = getelementptr inbounds %struct.word_type, %struct.word_type* %1362, i32 0, i32 0
  %1364 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1363, i32 0, i64 0
  %1365 = getelementptr inbounds %struct.LIST, %struct.LIST* %1364, i32 0, i32 0
  %1366 = load %union.rec*, %union.rec** %1365, align 8
  %1367 = bitcast %union.rec* %1366 to %struct.word_type*
  %1368 = getelementptr inbounds %struct.word_type, %struct.word_type* %1367, i32 0, i32 0
  %1369 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1368, i32 0, i64 0
  %1370 = getelementptr inbounds %struct.LIST, %struct.LIST* %1369, i32 0, i32 1
  store %union.rec* %1360, %union.rec** %1370, align 8
  %1371 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1372 = load %union.rec*, %union.rec** @zz_res, align 8
  %1373 = bitcast %union.rec* %1372 to %struct.word_type*
  %1374 = getelementptr inbounds %struct.word_type, %struct.word_type* %1373, i32 0, i32 0
  %1375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1374, i32 0, i64 0
  %1376 = getelementptr inbounds %struct.LIST, %struct.LIST* %1375, i32 0, i32 0
  store %union.rec* %1371, %union.rec** %1376, align 8
  %1377 = load %union.rec*, %union.rec** @zz_res, align 8
  %1378 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1379 = bitcast %union.rec* %1378 to %struct.word_type*
  %1380 = getelementptr inbounds %struct.word_type, %struct.word_type* %1379, i32 0, i32 0
  %1381 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1380, i32 0, i64 0
  %1382 = getelementptr inbounds %struct.LIST, %struct.LIST* %1381, i32 0, i32 1
  store %union.rec* %1377, %union.rec** %1382, align 8
  br label %1383

; <label>:1383                                    ; preds = %1342, %1340
  %1384 = phi %union.rec* [ %1341, %1340 ], [ %1377, %1342 ]
  br label %1385

; <label>:1385                                    ; preds = %1383, %1335
  %1386 = phi %union.rec* [ %1336, %1335 ], [ %1384, %1383 ]
  %1387 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1387, %union.rec** @zz_res, align 8
  %1388 = load %union.rec*, %union.rec** %new, align 8
  store %union.rec* %1388, %union.rec** @zz_hold, align 8
  %1389 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1390 = icmp eq %union.rec* %1389, null
  br i1 %1390, label %1391, label %1393

; <label>:1391                                    ; preds = %1385
  %1392 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1441

; <label>:1393                                    ; preds = %1385
  %1394 = load %union.rec*, %union.rec** @zz_res, align 8
  %1395 = icmp eq %union.rec* %1394, null
  br i1 %1395, label %1396, label %1398

; <label>:1396                                    ; preds = %1393
  %1397 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1439

; <label>:1398                                    ; preds = %1393
  %1399 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1400 = bitcast %union.rec* %1399 to %struct.word_type*
  %1401 = getelementptr inbounds %struct.word_type, %struct.word_type* %1400, i32 0, i32 0
  %1402 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1401, i32 0, i64 1
  %1403 = getelementptr inbounds %struct.LIST, %struct.LIST* %1402, i32 0, i32 0
  %1404 = load %union.rec*, %union.rec** %1403, align 8
  store %union.rec* %1404, %union.rec** @zz_tmp, align 8
  %1405 = load %union.rec*, %union.rec** @zz_res, align 8
  %1406 = bitcast %union.rec* %1405 to %struct.word_type*
  %1407 = getelementptr inbounds %struct.word_type, %struct.word_type* %1406, i32 0, i32 0
  %1408 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1407, i32 0, i64 1
  %1409 = getelementptr inbounds %struct.LIST, %struct.LIST* %1408, i32 0, i32 0
  %1410 = load %union.rec*, %union.rec** %1409, align 8
  %1411 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1412 = bitcast %union.rec* %1411 to %struct.word_type*
  %1413 = getelementptr inbounds %struct.word_type, %struct.word_type* %1412, i32 0, i32 0
  %1414 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1413, i32 0, i64 1
  %1415 = getelementptr inbounds %struct.LIST, %struct.LIST* %1414, i32 0, i32 0
  store %union.rec* %1410, %union.rec** %1415, align 8
  %1416 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1417 = load %union.rec*, %union.rec** @zz_res, align 8
  %1418 = bitcast %union.rec* %1417 to %struct.word_type*
  %1419 = getelementptr inbounds %struct.word_type, %struct.word_type* %1418, i32 0, i32 0
  %1420 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1419, i32 0, i64 1
  %1421 = getelementptr inbounds %struct.LIST, %struct.LIST* %1420, i32 0, i32 0
  %1422 = load %union.rec*, %union.rec** %1421, align 8
  %1423 = bitcast %union.rec* %1422 to %struct.word_type*
  %1424 = getelementptr inbounds %struct.word_type, %struct.word_type* %1423, i32 0, i32 0
  %1425 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1424, i32 0, i64 1
  %1426 = getelementptr inbounds %struct.LIST, %struct.LIST* %1425, i32 0, i32 1
  store %union.rec* %1416, %union.rec** %1426, align 8
  %1427 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1428 = load %union.rec*, %union.rec** @zz_res, align 8
  %1429 = bitcast %union.rec* %1428 to %struct.word_type*
  %1430 = getelementptr inbounds %struct.word_type, %struct.word_type* %1429, i32 0, i32 0
  %1431 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1430, i32 0, i64 1
  %1432 = getelementptr inbounds %struct.LIST, %struct.LIST* %1431, i32 0, i32 0
  store %union.rec* %1427, %union.rec** %1432, align 8
  %1433 = load %union.rec*, %union.rec** @zz_res, align 8
  %1434 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1435 = bitcast %union.rec* %1434 to %struct.word_type*
  %1436 = getelementptr inbounds %struct.word_type, %struct.word_type* %1435, i32 0, i32 0
  %1437 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1436, i32 0, i64 1
  %1438 = getelementptr inbounds %struct.LIST, %struct.LIST* %1437, i32 0, i32 1
  store %union.rec* %1433, %union.rec** %1438, align 8
  br label %1439

; <label>:1439                                    ; preds = %1398, %1396
  %1440 = phi %union.rec* [ %1397, %1396 ], [ %1433, %1398 ]
  br label %1441

; <label>:1441                                    ; preds = %1439, %1391
  %1442 = phi %union.rec* [ %1392, %1391 ], [ %1440, %1439 ]
  %1443 = load i32, i32* @font_count, align 4
  %1444 = load %union.rec*, %union.rec** %new, align 8
  %1445 = bitcast %union.rec* %1444 to %struct.word_type*
  %1446 = getelementptr inbounds %struct.word_type, %struct.word_type* %1445, i32 0, i32 2
  %1447 = bitcast %union.SECOND_UNION* %1446 to %struct.anon.4*
  %1448 = bitcast %struct.anon.4* %1447 to i16*
  %1449 = trunc i32 %1443 to i16
  %1450 = load i16, i16* %1448, align 4
  %1451 = and i16 %1449, 4095
  %1452 = and i16 %1450, -4096
  %1453 = or i16 %1452, %1451
  store i16 %1453, i16* %1448, align 4
  %1454 = zext i16 %1451 to i32
  %1455 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1456 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1455, i32 0, i32 8
  %1457 = load i32, i32* %1456, align 4
  %1458 = icmp ne i32 %1457, 0
  br i1 %1458, label %1459, label %1462

; <label>:1459                                    ; preds = %1441
  %1460 = load i16, i16* %flen, align 2
  %1461 = sext i16 %1460 to i32
  br label %1469

; <label>:1462                                    ; preds = %1441
  %1463 = load %union.rec*, %union.rec** %old, align 8
  %1464 = bitcast %union.rec* %1463 to %struct.word_type*
  %1465 = getelementptr inbounds %struct.word_type, %struct.word_type* %1464, i32 0, i32 3
  %1466 = bitcast %union.THIRD_UNION* %1465 to %struct.anon.7*
  %1467 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1466, i32 0, i32 0
  %1468 = load i32, i32* %1467, align 4
  br label %1469

; <label>:1469                                    ; preds = %1462, %1459
  %1470 = phi i32 [ %1461, %1459 ], [ %1468, %1462 ]
  %1471 = load %union.rec*, %union.rec** %new, align 8
  %1472 = bitcast %union.rec* %1471 to %struct.word_type*
  %1473 = getelementptr inbounds %struct.word_type, %struct.word_type* %1472, i32 0, i32 3
  %1474 = bitcast %union.THIRD_UNION* %1473 to %struct.anon.7*
  %1475 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1474, i32 0, i32 0
  store i32 %1470, i32* %1475, align 4
  %1476 = load %union.rec*, %union.rec** %old, align 8
  %1477 = bitcast %union.rec* %1476 to %struct.word_type*
  %1478 = getelementptr inbounds %struct.word_type, %struct.word_type* %1477, i32 0, i32 3
  %1479 = bitcast %union.THIRD_UNION* %1478 to %struct.anon.7*
  %1480 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1479, i32 0, i32 1
  %1481 = load i32, i32* %1480, align 4
  %1482 = load %union.rec*, %union.rec** %new, align 8
  %1483 = bitcast %union.rec* %1482 to %struct.word_type*
  %1484 = getelementptr inbounds %struct.word_type, %struct.word_type* %1483, i32 0, i32 3
  %1485 = bitcast %union.THIRD_UNION* %1484 to %struct.anon.7*
  %1486 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1485, i32 0, i32 0
  %1487 = load i32, i32* %1486, align 4
  %1488 = mul nsw i32 %1481, %1487
  %1489 = load %union.rec*, %union.rec** %old, align 8
  %1490 = bitcast %union.rec* %1489 to %struct.word_type*
  %1491 = getelementptr inbounds %struct.word_type, %struct.word_type* %1490, i32 0, i32 3
  %1492 = bitcast %union.THIRD_UNION* %1491 to %struct.anon.7*
  %1493 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1492, i32 0, i32 0
  %1494 = load i32, i32* %1493, align 4
  %1495 = sdiv i32 %1488, %1494
  %1496 = load %union.rec*, %union.rec** %new, align 8
  %1497 = bitcast %union.rec* %1496 to %struct.word_type*
  %1498 = getelementptr inbounds %struct.word_type, %struct.word_type* %1497, i32 0, i32 3
  %1499 = bitcast %union.THIRD_UNION* %1498 to %struct.anon.7*
  %1500 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1499, i32 0, i32 1
  store i32 %1495, i32* %1500, align 4
  %1501 = load %union.rec*, %union.rec** %old, align 8
  %1502 = bitcast %union.rec* %1501 to %struct.word_type*
  %1503 = getelementptr inbounds %struct.word_type, %struct.word_type* %1502, i32 0, i32 3
  %1504 = bitcast %union.THIRD_UNION* %1503 to %struct.anon.7*
  %1505 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1504, i32 0, i32 3
  %1506 = load i8, i8* %1505, align 4
  %1507 = lshr i8 %1506, 7
  %1508 = zext i8 %1507 to i32
  %1509 = load %union.rec*, %union.rec** %new, align 8
  %1510 = bitcast %union.rec* %1509 to %struct.word_type*
  %1511 = getelementptr inbounds %struct.word_type, %struct.word_type* %1510, i32 0, i32 3
  %1512 = bitcast %union.THIRD_UNION* %1511 to %struct.anon.7*
  %1513 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1512, i32 0, i32 3
  %1514 = trunc i32 %1508 to i8
  %1515 = load i8, i8* %1513, align 4
  %1516 = and i8 %1514, 1
  %1517 = shl i8 %1516, 7
  %1518 = and i8 %1515, 127
  %1519 = or i8 %1518, %1517
  store i8 %1519, i8* %1513, align 4
  %1520 = zext i8 %1516 to i32
  %1521 = load %union.rec*, %union.rec** %old, align 8
  %1522 = bitcast %union.rec* %1521 to %struct.word_type*
  %1523 = getelementptr inbounds %struct.word_type, %struct.word_type* %1522, i32 0, i32 3
  %1524 = bitcast %union.THIRD_UNION* %1523 to %struct.anon.7*
  %1525 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1524, i32 0, i32 3
  %1526 = load i8, i8* %1525, align 4
  %1527 = and i8 %1526, 127
  %1528 = zext i8 %1527 to i32
  %1529 = load %union.rec*, %union.rec** %new, align 8
  %1530 = bitcast %union.rec* %1529 to %struct.word_type*
  %1531 = getelementptr inbounds %struct.word_type, %struct.word_type* %1530, i32 0, i32 3
  %1532 = bitcast %union.THIRD_UNION* %1531 to %struct.anon.7*
  %1533 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1532, i32 0, i32 3
  %1534 = trunc i32 %1528 to i8
  %1535 = load i8, i8* %1533, align 4
  %1536 = and i8 %1534, 127
  %1537 = and i8 %1535, -128
  %1538 = or i8 %1537, %1536
  store i8 %1538, i8* %1533, align 4
  %1539 = zext i8 %1536 to i32
  %1540 = load %union.rec*, %union.rec** %old, align 8
  %1541 = bitcast %union.rec* %1540 to %struct.word_type*
  %1542 = getelementptr inbounds %struct.word_type, %struct.word_type* %1541, i32 0, i32 3
  %1543 = bitcast %union.THIRD_UNION* %1542 to %struct.anon.7*
  %1544 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1543, i32 0, i32 2
  %1545 = load i32, i32* %1544, align 4
  %1546 = load %union.rec*, %union.rec** %new, align 8
  %1547 = bitcast %union.rec* %1546 to %struct.word_type*
  %1548 = getelementptr inbounds %struct.word_type, %struct.word_type* %1547, i32 0, i32 3
  %1549 = bitcast %union.THIRD_UNION* %1548 to %struct.anon.7*
  %1550 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1549, i32 0, i32 0
  %1551 = load i32, i32* %1550, align 4
  %1552 = mul nsw i32 %1545, %1551
  %1553 = load %union.rec*, %union.rec** %old, align 8
  %1554 = bitcast %union.rec* %1553 to %struct.word_type*
  %1555 = getelementptr inbounds %struct.word_type, %struct.word_type* %1554, i32 0, i32 3
  %1556 = bitcast %union.THIRD_UNION* %1555 to %struct.anon.7*
  %1557 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1556, i32 0, i32 0
  %1558 = load i32, i32* %1557, align 4
  %1559 = sdiv i32 %1552, %1558
  %1560 = load %union.rec*, %union.rec** %new, align 8
  %1561 = bitcast %union.rec* %1560 to %struct.word_type*
  %1562 = getelementptr inbounds %struct.word_type, %struct.word_type* %1561, i32 0, i32 3
  %1563 = bitcast %union.THIRD_UNION* %1562 to %struct.anon.7*
  %1564 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1563, i32 0, i32 2
  store i32 %1559, i32* %1564, align 4
  %1565 = load %union.rec*, %union.rec** %new, align 8
  %1566 = load i32, i32* @font_count, align 4
  %1567 = zext i32 %1566 to i64
  %1568 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %1569 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1568, i64 %1567
  %1570 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1569, i32 0, i32 5
  store %union.rec* %1565, %union.rec** %1570, align 8
  %1571 = load %union.rec*, %union.rec** %face, align 8
  %1572 = load i32, i32* @font_count, align 4
  %1573 = zext i32 %1572 to i64
  %1574 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %1575 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1574, i64 %1573
  %1576 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1575, i32 0, i32 6
  store %union.rec* %1571, %union.rec** %1576, align 8
  %1577 = load %union.rec*, %union.rec** %old, align 8
  %1578 = bitcast %union.rec* %1577 to %struct.word_type*
  %1579 = getelementptr inbounds %struct.word_type, %struct.word_type* %1578, i32 0, i32 2
  %1580 = bitcast %union.SECOND_UNION* %1579 to %struct.anon.4*
  %1581 = bitcast %struct.anon.4* %1580 to i16*
  %1582 = load i16, i16* %1581, align 4
  %1583 = and i16 %1582, 4095
  %1584 = zext i16 %1583 to i32
  %1585 = zext i32 %1584 to i64
  %1586 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %1587 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1586, i64 %1585
  %1588 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1587, i32 0, i32 7
  %1589 = load i16, i16* %1588, align 2
  %1590 = sext i16 %1589 to i32
  %1591 = load %union.rec*, %union.rec** %new, align 8
  %1592 = bitcast %union.rec* %1591 to %struct.word_type*
  %1593 = getelementptr inbounds %struct.word_type, %struct.word_type* %1592, i32 0, i32 3
  %1594 = bitcast %union.THIRD_UNION* %1593 to %struct.anon.7*
  %1595 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1594, i32 0, i32 0
  %1596 = load i32, i32* %1595, align 4
  %1597 = mul nsw i32 %1590, %1596
  %1598 = load %union.rec*, %union.rec** %old, align 8
  %1599 = bitcast %union.rec* %1598 to %struct.word_type*
  %1600 = getelementptr inbounds %struct.word_type, %struct.word_type* %1599, i32 0, i32 3
  %1601 = bitcast %union.THIRD_UNION* %1600 to %struct.anon.7*
  %1602 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1601, i32 0, i32 0
  %1603 = load i32, i32* %1602, align 4
  %1604 = sdiv i32 %1597, %1603
  %1605 = trunc i32 %1604 to i16
  %1606 = load i32, i32* @font_count, align 4
  %1607 = zext i32 %1606 to i64
  %1608 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %1609 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1608, i64 %1607
  %1610 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1609, i32 0, i32 7
  store i16 %1605, i16* %1610, align 2
  %1611 = load %union.rec*, %union.rec** %old, align 8
  %1612 = bitcast %union.rec* %1611 to %struct.word_type*
  %1613 = getelementptr inbounds %struct.word_type, %struct.word_type* %1612, i32 0, i32 2
  %1614 = bitcast %union.SECOND_UNION* %1613 to %struct.anon.4*
  %1615 = bitcast %struct.anon.4* %1614 to i16*
  %1616 = load i16, i16* %1615, align 4
  %1617 = and i16 %1616, 4095
  %1618 = zext i16 %1617 to i32
  %1619 = zext i32 %1618 to i64
  %1620 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %1621 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1620, i64 %1619
  %1622 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1621, i32 0, i32 8
  %1623 = load i16, i16* %1622, align 2
  %1624 = sext i16 %1623 to i32
  %1625 = load %union.rec*, %union.rec** %new, align 8
  %1626 = bitcast %union.rec* %1625 to %struct.word_type*
  %1627 = getelementptr inbounds %struct.word_type, %struct.word_type* %1626, i32 0, i32 3
  %1628 = bitcast %union.THIRD_UNION* %1627 to %struct.anon.7*
  %1629 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1628, i32 0, i32 0
  %1630 = load i32, i32* %1629, align 4
  %1631 = mul nsw i32 %1624, %1630
  %1632 = load %union.rec*, %union.rec** %old, align 8
  %1633 = bitcast %union.rec* %1632 to %struct.word_type*
  %1634 = getelementptr inbounds %struct.word_type, %struct.word_type* %1633, i32 0, i32 3
  %1635 = bitcast %union.THIRD_UNION* %1634 to %struct.anon.7*
  %1636 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1635, i32 0, i32 0
  %1637 = load i32, i32* %1636, align 4
  %1638 = sdiv i32 %1631, %1637
  %1639 = trunc i32 %1638 to i16
  %1640 = load i32, i32* @font_count, align 4
  %1641 = zext i32 %1640 to i64
  %1642 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %1643 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1642, i64 %1641
  %1644 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1643, i32 0, i32 8
  store i16 %1639, i16* %1644, align 2
  %1645 = call noalias i8* @malloc(i64 2560) #4
  %1646 = bitcast i8* %1645 to %struct.metrics*
  %1647 = load i32, i32* @font_count, align 4
  %1648 = zext i32 %1647 to i64
  %1649 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %1650 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1649, i64 %1648
  %1651 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1650, i32 0, i32 0
  store %struct.metrics* %1646, %struct.metrics** %1651, align 8
  %1652 = load i32, i32* @font_count, align 4
  %1653 = zext i32 %1652 to i64
  %1654 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %1655 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1654, i64 %1653
  %1656 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1655, i32 0, i32 0
  %1657 = load %struct.metrics*, %struct.metrics** %1656, align 8
  %1658 = icmp eq %struct.metrics* %1657, null
  br i1 %1658, label %1659, label %1665

; <label>:1659                                    ; preds = %1469
  %1660 = load %union.rec*, %union.rec** %2, align 8
  %1661 = bitcast %union.rec* %1660 to %struct.word_type*
  %1662 = getelementptr inbounds %struct.word_type, %struct.word_type* %1661, i32 0, i32 1
  %1663 = bitcast %union.FIRST_UNION* %1662 to %struct.FILE_POS*
  %1664 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 53, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.39, i32 0, i32 0), i32 1, %struct.FILE_POS* %1663)
  br label %1665

; <label>:1665                                    ; preds = %1659, %1469
  %1666 = load %union.rec*, %union.rec** %old, align 8
  %1667 = bitcast %union.rec* %1666 to %struct.word_type*
  %1668 = getelementptr inbounds %struct.word_type, %struct.word_type* %1667, i32 0, i32 2
  %1669 = bitcast %union.SECOND_UNION* %1668 to %struct.anon.4*
  %1670 = bitcast %struct.anon.4* %1669 to i16*
  %1671 = load i16, i16* %1670, align 4
  %1672 = and i16 %1671, 4095
  %1673 = zext i16 %1672 to i32
  %1674 = zext i32 %1673 to i64
  %1675 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %1676 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1675, i64 %1674
  %1677 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1676, i32 0, i32 1
  %1678 = load i8*, i8** %1677, align 8
  store i8* %1678, i8** %lig, align 8
  %1679 = load i32, i32* @font_count, align 4
  %1680 = zext i32 %1679 to i64
  %1681 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %1682 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1681, i64 %1680
  %1683 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1682, i32 0, i32 1
  store i8* %1678, i8** %1683, align 8
  %1684 = load %union.rec*, %union.rec** %new, align 8
  %1685 = bitcast %union.rec* %1684 to %struct.word_type*
  %1686 = getelementptr inbounds %struct.word_type, %struct.word_type* %1685, i32 0, i32 2
  %1687 = bitcast %union.SECOND_UNION* %1686 to %struct.anon.4*
  %1688 = bitcast %struct.anon.4* %1687 to i16*
  %1689 = load i16, i16* %1688, align 4
  %1690 = and i16 %1689, 4095
  %1691 = zext i16 %1690 to i32
  %1692 = zext i32 %1691 to i64
  %1693 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %1694 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1693, i64 %1692
  %1695 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1694, i32 0, i32 0
  %1696 = load %struct.metrics*, %struct.metrics** %1695, align 8
  store %struct.metrics* %1696, %struct.metrics** %newfnt, align 8
  %1697 = load %union.rec*, %union.rec** %old, align 8
  %1698 = bitcast %union.rec* %1697 to %struct.word_type*
  %1699 = getelementptr inbounds %struct.word_type, %struct.word_type* %1698, i32 0, i32 2
  %1700 = bitcast %union.SECOND_UNION* %1699 to %struct.anon.4*
  %1701 = bitcast %struct.anon.4* %1700 to i16*
  %1702 = load i16, i16* %1701, align 4
  %1703 = and i16 %1702, 4095
  %1704 = zext i16 %1703 to i32
  %1705 = zext i32 %1704 to i64
  %1706 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %1707 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1706, i64 %1705
  %1708 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1707, i32 0, i32 0
  %1709 = load %struct.metrics*, %struct.metrics** %1708, align 8
  store %struct.metrics* %1709, %struct.metrics** %oldfnt, align 8
  store i32 0, i32* %i, align 4
  br label %1710

; <label>:1710                                    ; preds = %1858, %1665
  %1711 = load i32, i32* %i, align 4
  %1712 = icmp slt i32 %1711, 256
  br i1 %1712, label %1713, label %1861

; <label>:1713                                    ; preds = %1710
  %1714 = load i32, i32* %i, align 4
  %1715 = sext i32 %1714 to i64
  %1716 = load i8*, i8** %lig, align 8
  %1717 = getelementptr inbounds i8, i8* %1716, i64 %1715
  %1718 = load i8, i8* %1717, align 1
  %1719 = zext i8 %1718 to i32
  %1720 = icmp ne i32 %1719, 1
  br i1 %1720, label %1721, label %1857

; <label>:1721                                    ; preds = %1713
  %1722 = load i32, i32* %i, align 4
  %1723 = sext i32 %1722 to i64
  %1724 = load %struct.metrics*, %struct.metrics** %oldfnt, align 8
  %1725 = getelementptr inbounds %struct.metrics, %struct.metrics* %1724, i64 %1723
  %1726 = getelementptr inbounds %struct.metrics, %struct.metrics* %1725, i32 0, i32 2
  %1727 = load i16, i16* %1726, align 2
  %1728 = sext i16 %1727 to i32
  %1729 = load %union.rec*, %union.rec** %new, align 8
  %1730 = bitcast %union.rec* %1729 to %struct.word_type*
  %1731 = getelementptr inbounds %struct.word_type, %struct.word_type* %1730, i32 0, i32 3
  %1732 = bitcast %union.THIRD_UNION* %1731 to %struct.anon.7*
  %1733 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1732, i32 0, i32 0
  %1734 = load i32, i32* %1733, align 4
  %1735 = mul nsw i32 %1728, %1734
  %1736 = load %union.rec*, %union.rec** %old, align 8
  %1737 = bitcast %union.rec* %1736 to %struct.word_type*
  %1738 = getelementptr inbounds %struct.word_type, %struct.word_type* %1737, i32 0, i32 3
  %1739 = bitcast %union.THIRD_UNION* %1738 to %struct.anon.7*
  %1740 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1739, i32 0, i32 0
  %1741 = load i32, i32* %1740, align 4
  %1742 = sdiv i32 %1735, %1741
  %1743 = trunc i32 %1742 to i16
  %1744 = load i32, i32* %i, align 4
  %1745 = sext i32 %1744 to i64
  %1746 = load %struct.metrics*, %struct.metrics** %newfnt, align 8
  %1747 = getelementptr inbounds %struct.metrics, %struct.metrics* %1746, i64 %1745
  %1748 = getelementptr inbounds %struct.metrics, %struct.metrics* %1747, i32 0, i32 2
  store i16 %1743, i16* %1748, align 2
  %1749 = load i32, i32* %i, align 4
  %1750 = sext i32 %1749 to i64
  %1751 = load %struct.metrics*, %struct.metrics** %oldfnt, align 8
  %1752 = getelementptr inbounds %struct.metrics, %struct.metrics* %1751, i64 %1750
  %1753 = getelementptr inbounds %struct.metrics, %struct.metrics* %1752, i32 0, i32 3
  %1754 = load i16, i16* %1753, align 2
  %1755 = sext i16 %1754 to i32
  %1756 = load %union.rec*, %union.rec** %new, align 8
  %1757 = bitcast %union.rec* %1756 to %struct.word_type*
  %1758 = getelementptr inbounds %struct.word_type, %struct.word_type* %1757, i32 0, i32 3
  %1759 = bitcast %union.THIRD_UNION* %1758 to %struct.anon.7*
  %1760 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1759, i32 0, i32 0
  %1761 = load i32, i32* %1760, align 4
  %1762 = mul nsw i32 %1755, %1761
  %1763 = load %union.rec*, %union.rec** %old, align 8
  %1764 = bitcast %union.rec* %1763 to %struct.word_type*
  %1765 = getelementptr inbounds %struct.word_type, %struct.word_type* %1764, i32 0, i32 3
  %1766 = bitcast %union.THIRD_UNION* %1765 to %struct.anon.7*
  %1767 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1766, i32 0, i32 0
  %1768 = load i32, i32* %1767, align 4
  %1769 = sdiv i32 %1762, %1768
  %1770 = trunc i32 %1769 to i16
  %1771 = load i32, i32* %i, align 4
  %1772 = sext i32 %1771 to i64
  %1773 = load %struct.metrics*, %struct.metrics** %newfnt, align 8
  %1774 = getelementptr inbounds %struct.metrics, %struct.metrics* %1773, i64 %1772
  %1775 = getelementptr inbounds %struct.metrics, %struct.metrics* %1774, i32 0, i32 3
  store i16 %1770, i16* %1775, align 2
  %1776 = load i32, i32* %i, align 4
  %1777 = sext i32 %1776 to i64
  %1778 = load %struct.metrics*, %struct.metrics** %oldfnt, align 8
  %1779 = getelementptr inbounds %struct.metrics, %struct.metrics* %1778, i64 %1777
  %1780 = getelementptr inbounds %struct.metrics, %struct.metrics* %1779, i32 0, i32 1
  %1781 = load i16, i16* %1780, align 2
  %1782 = sext i16 %1781 to i32
  %1783 = load %union.rec*, %union.rec** %new, align 8
  %1784 = bitcast %union.rec* %1783 to %struct.word_type*
  %1785 = getelementptr inbounds %struct.word_type, %struct.word_type* %1784, i32 0, i32 3
  %1786 = bitcast %union.THIRD_UNION* %1785 to %struct.anon.7*
  %1787 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1786, i32 0, i32 0
  %1788 = load i32, i32* %1787, align 4
  %1789 = mul nsw i32 %1782, %1788
  %1790 = load %union.rec*, %union.rec** %old, align 8
  %1791 = bitcast %union.rec* %1790 to %struct.word_type*
  %1792 = getelementptr inbounds %struct.word_type, %struct.word_type* %1791, i32 0, i32 3
  %1793 = bitcast %union.THIRD_UNION* %1792 to %struct.anon.7*
  %1794 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1793, i32 0, i32 0
  %1795 = load i32, i32* %1794, align 4
  %1796 = sdiv i32 %1789, %1795
  %1797 = trunc i32 %1796 to i16
  %1798 = load i32, i32* %i, align 4
  %1799 = sext i32 %1798 to i64
  %1800 = load %struct.metrics*, %struct.metrics** %newfnt, align 8
  %1801 = getelementptr inbounds %struct.metrics, %struct.metrics* %1800, i64 %1799
  %1802 = getelementptr inbounds %struct.metrics, %struct.metrics* %1801, i32 0, i32 1
  store i16 %1797, i16* %1802, align 2
  %1803 = load i32, i32* %i, align 4
  %1804 = sext i32 %1803 to i64
  %1805 = load %struct.metrics*, %struct.metrics** %oldfnt, align 8
  %1806 = getelementptr inbounds %struct.metrics, %struct.metrics* %1805, i64 %1804
  %1807 = getelementptr inbounds %struct.metrics, %struct.metrics* %1806, i32 0, i32 0
  %1808 = load i16, i16* %1807, align 2
  %1809 = sext i16 %1808 to i32
  %1810 = load %union.rec*, %union.rec** %new, align 8
  %1811 = bitcast %union.rec* %1810 to %struct.word_type*
  %1812 = getelementptr inbounds %struct.word_type, %struct.word_type* %1811, i32 0, i32 3
  %1813 = bitcast %union.THIRD_UNION* %1812 to %struct.anon.7*
  %1814 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1813, i32 0, i32 0
  %1815 = load i32, i32* %1814, align 4
  %1816 = mul nsw i32 %1809, %1815
  %1817 = load %union.rec*, %union.rec** %old, align 8
  %1818 = bitcast %union.rec* %1817 to %struct.word_type*
  %1819 = getelementptr inbounds %struct.word_type, %struct.word_type* %1818, i32 0, i32 3
  %1820 = bitcast %union.THIRD_UNION* %1819 to %struct.anon.7*
  %1821 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1820, i32 0, i32 0
  %1822 = load i32, i32* %1821, align 4
  %1823 = sdiv i32 %1816, %1822
  %1824 = trunc i32 %1823 to i16
  %1825 = load i32, i32* %i, align 4
  %1826 = sext i32 %1825 to i64
  %1827 = load %struct.metrics*, %struct.metrics** %newfnt, align 8
  %1828 = getelementptr inbounds %struct.metrics, %struct.metrics* %1827, i64 %1826
  %1829 = getelementptr inbounds %struct.metrics, %struct.metrics* %1828, i32 0, i32 0
  store i16 %1824, i16* %1829, align 2
  %1830 = load i32, i32* %i, align 4
  %1831 = sext i32 %1830 to i64
  %1832 = load %struct.metrics*, %struct.metrics** %oldfnt, align 8
  %1833 = getelementptr inbounds %struct.metrics, %struct.metrics* %1832, i64 %1831
  %1834 = getelementptr inbounds %struct.metrics, %struct.metrics* %1833, i32 0, i32 4
  %1835 = load i16, i16* %1834, align 2
  %1836 = sext i16 %1835 to i32
  %1837 = load %union.rec*, %union.rec** %new, align 8
  %1838 = bitcast %union.rec* %1837 to %struct.word_type*
  %1839 = getelementptr inbounds %struct.word_type, %struct.word_type* %1838, i32 0, i32 3
  %1840 = bitcast %union.THIRD_UNION* %1839 to %struct.anon.7*
  %1841 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1840, i32 0, i32 0
  %1842 = load i32, i32* %1841, align 4
  %1843 = mul nsw i32 %1836, %1842
  %1844 = load %union.rec*, %union.rec** %old, align 8
  %1845 = bitcast %union.rec* %1844 to %struct.word_type*
  %1846 = getelementptr inbounds %struct.word_type, %struct.word_type* %1845, i32 0, i32 3
  %1847 = bitcast %union.THIRD_UNION* %1846 to %struct.anon.7*
  %1848 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1847, i32 0, i32 0
  %1849 = load i32, i32* %1848, align 4
  %1850 = sdiv i32 %1843, %1849
  %1851 = trunc i32 %1850 to i16
  %1852 = load i32, i32* %i, align 4
  %1853 = sext i32 %1852 to i64
  %1854 = load %struct.metrics*, %struct.metrics** %newfnt, align 8
  %1855 = getelementptr inbounds %struct.metrics, %struct.metrics* %1854, i64 %1853
  %1856 = getelementptr inbounds %struct.metrics, %struct.metrics* %1855, i32 0, i32 4
  store i16 %1851, i16* %1856, align 2
  br label %1857

; <label>:1857                                    ; preds = %1721, %1713
  br label %1858

; <label>:1858                                    ; preds = %1857
  %1859 = load i32, i32* %i, align 4
  %1860 = add nsw i32 %1859, 1
  store i32 %1860, i32* %i, align 4
  br label %1710

; <label>:1861                                    ; preds = %1710
  %1862 = load %union.rec*, %union.rec** %old, align 8
  %1863 = bitcast %union.rec* %1862 to %struct.word_type*
  %1864 = getelementptr inbounds %struct.word_type, %struct.word_type* %1863, i32 0, i32 2
  %1865 = bitcast %union.SECOND_UNION* %1864 to %struct.anon.4*
  %1866 = bitcast %struct.anon.4* %1865 to i16*
  %1867 = load i16, i16* %1866, align 4
  %1868 = and i16 %1867, 4095
  %1869 = zext i16 %1868 to i32
  %1870 = zext i32 %1869 to i64
  %1871 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %1872 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1871, i64 %1870
  %1873 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1872, i32 0, i32 2
  %1874 = load i16*, i16** %1873, align 8
  %1875 = load i32, i32* @font_count, align 4
  %1876 = zext i32 %1875 to i64
  %1877 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %1878 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1877, i64 %1876
  %1879 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1878, i32 0, i32 2
  store i16* %1874, i16** %1879, align 8
  %1880 = load %union.rec*, %union.rec** %old, align 8
  %1881 = bitcast %union.rec* %1880 to %struct.word_type*
  %1882 = getelementptr inbounds %struct.word_type, %struct.word_type* %1881, i32 0, i32 2
  %1883 = bitcast %union.SECOND_UNION* %1882 to %struct.anon.4*
  %1884 = bitcast %struct.anon.4* %1883 to i16*
  %1885 = load i16, i16* %1884, align 4
  %1886 = and i16 %1885, 4095
  %1887 = zext i16 %1886 to i32
  %1888 = zext i32 %1887 to i64
  %1889 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %1890 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1889, i64 %1888
  %1891 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1890, i32 0, i32 4
  %1892 = load i32, i32* %1891, align 4
  store i32 %1892, i32* %cmptop, align 4
  %1893 = load i32, i32* @font_count, align 4
  %1894 = zext i32 %1893 to i64
  %1895 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %1896 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1895, i64 %1894
  %1897 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1896, i32 0, i32 4
  store i32 %1892, i32* %1897, align 4
  %1898 = load %union.rec*, %union.rec** %old, align 8
  %1899 = bitcast %union.rec* %1898 to %struct.word_type*
  %1900 = getelementptr inbounds %struct.word_type, %struct.word_type* %1899, i32 0, i32 2
  %1901 = bitcast %union.SECOND_UNION* %1900 to %struct.anon.4*
  %1902 = bitcast %struct.anon.4* %1901 to i16*
  %1903 = load i16, i16* %1902, align 4
  %1904 = and i16 %1903, 4095
  %1905 = zext i16 %1904 to i32
  %1906 = zext i32 %1905 to i64
  %1907 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %1908 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1907, i64 %1906
  %1909 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1908, i32 0, i32 3
  %1910 = load %struct.composite_rec*, %struct.composite_rec** %1909, align 8
  store %struct.composite_rec* %1910, %struct.composite_rec** %oldcmp, align 8
  %1911 = load i32, i32* %cmptop, align 4
  %1912 = sext i32 %1911 to i64
  %1913 = mul i64 %1912, 6
  %1914 = call noalias i8* @malloc(i64 %1913) #4
  %1915 = bitcast i8* %1914 to %struct.composite_rec*
  store %struct.composite_rec* %1915, %struct.composite_rec** %newcmp, align 8
  %1916 = load %struct.composite_rec*, %struct.composite_rec** %newcmp, align 8
  %1917 = icmp eq %struct.composite_rec* %1916, null
  br i1 %1917, label %1918, label %1924

; <label>:1918                                    ; preds = %1861
  %1919 = load %union.rec*, %union.rec** %2, align 8
  %1920 = bitcast %union.rec* %1919 to %struct.word_type*
  %1921 = getelementptr inbounds %struct.word_type, %struct.word_type* %1920, i32 0, i32 1
  %1922 = bitcast %union.FIRST_UNION* %1921 to %struct.FILE_POS*
  %1923 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 54, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.39, i32 0, i32 0), i32 1, %struct.FILE_POS* %1922)
  br label %1924

; <label>:1924                                    ; preds = %1918, %1861
  store i32 1, i32* %i, align 4
  br label %1925

; <label>:1925                                    ; preds = %2005, %1924
  %1926 = load i32, i32* %i, align 4
  %1927 = load i32, i32* %cmptop, align 4
  %1928 = icmp slt i32 %1926, %1927
  br i1 %1928, label %1929, label %2008

; <label>:1929                                    ; preds = %1925
  %1930 = load i32, i32* %i, align 4
  %1931 = sext i32 %1930 to i64
  %1932 = load %struct.composite_rec*, %struct.composite_rec** %oldcmp, align 8
  %1933 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %1932, i64 %1931
  %1934 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %1933, i32 0, i32 0
  %1935 = load i8, i8* %1934, align 1
  %1936 = load i32, i32* %i, align 4
  %1937 = sext i32 %1936 to i64
  %1938 = load %struct.composite_rec*, %struct.composite_rec** %newcmp, align 8
  %1939 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %1938, i64 %1937
  %1940 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %1939, i32 0, i32 0
  store i8 %1935, i8* %1940, align 1
  %1941 = load i32, i32* %i, align 4
  %1942 = sext i32 %1941 to i64
  %1943 = load %struct.composite_rec*, %struct.composite_rec** %newcmp, align 8
  %1944 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %1943, i64 %1942
  %1945 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %1944, i32 0, i32 0
  %1946 = load i8, i8* %1945, align 1
  %1947 = zext i8 %1946 to i32
  %1948 = icmp ne i32 %1947, 0
  br i1 %1948, label %1949, label %2004

; <label>:1949                                    ; preds = %1929
  %1950 = load i32, i32* %i, align 4
  %1951 = sext i32 %1950 to i64
  %1952 = load %struct.composite_rec*, %struct.composite_rec** %oldcmp, align 8
  %1953 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %1952, i64 %1951
  %1954 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %1953, i32 0, i32 1
  %1955 = load i16, i16* %1954, align 2
  %1956 = sext i16 %1955 to i32
  %1957 = load %union.rec*, %union.rec** %new, align 8
  %1958 = bitcast %union.rec* %1957 to %struct.word_type*
  %1959 = getelementptr inbounds %struct.word_type, %struct.word_type* %1958, i32 0, i32 3
  %1960 = bitcast %union.THIRD_UNION* %1959 to %struct.anon.7*
  %1961 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1960, i32 0, i32 0
  %1962 = load i32, i32* %1961, align 4
  %1963 = mul nsw i32 %1956, %1962
  %1964 = load %union.rec*, %union.rec** %old, align 8
  %1965 = bitcast %union.rec* %1964 to %struct.word_type*
  %1966 = getelementptr inbounds %struct.word_type, %struct.word_type* %1965, i32 0, i32 3
  %1967 = bitcast %union.THIRD_UNION* %1966 to %struct.anon.7*
  %1968 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1967, i32 0, i32 0
  %1969 = load i32, i32* %1968, align 4
  %1970 = sdiv i32 %1963, %1969
  %1971 = trunc i32 %1970 to i16
  %1972 = load i32, i32* %i, align 4
  %1973 = sext i32 %1972 to i64
  %1974 = load %struct.composite_rec*, %struct.composite_rec** %newcmp, align 8
  %1975 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %1974, i64 %1973
  %1976 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %1975, i32 0, i32 1
  store i16 %1971, i16* %1976, align 2
  %1977 = load i32, i32* %i, align 4
  %1978 = sext i32 %1977 to i64
  %1979 = load %struct.composite_rec*, %struct.composite_rec** %oldcmp, align 8
  %1980 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %1979, i64 %1978
  %1981 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %1980, i32 0, i32 2
  %1982 = load i16, i16* %1981, align 2
  %1983 = sext i16 %1982 to i32
  %1984 = load %union.rec*, %union.rec** %new, align 8
  %1985 = bitcast %union.rec* %1984 to %struct.word_type*
  %1986 = getelementptr inbounds %struct.word_type, %struct.word_type* %1985, i32 0, i32 3
  %1987 = bitcast %union.THIRD_UNION* %1986 to %struct.anon.7*
  %1988 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1987, i32 0, i32 0
  %1989 = load i32, i32* %1988, align 4
  %1990 = mul nsw i32 %1983, %1989
  %1991 = load %union.rec*, %union.rec** %old, align 8
  %1992 = bitcast %union.rec* %1991 to %struct.word_type*
  %1993 = getelementptr inbounds %struct.word_type, %struct.word_type* %1992, i32 0, i32 3
  %1994 = bitcast %union.THIRD_UNION* %1993 to %struct.anon.7*
  %1995 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1994, i32 0, i32 0
  %1996 = load i32, i32* %1995, align 4
  %1997 = sdiv i32 %1990, %1996
  %1998 = trunc i32 %1997 to i16
  %1999 = load i32, i32* %i, align 4
  %2000 = sext i32 %1999 to i64
  %2001 = load %struct.composite_rec*, %struct.composite_rec** %newcmp, align 8
  %2002 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %2001, i64 %2000
  %2003 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %2002, i32 0, i32 2
  store i16 %1998, i16* %2003, align 2
  br label %2004

; <label>:2004                                    ; preds = %1949, %1929
  br label %2005

; <label>:2005                                    ; preds = %2004
  %2006 = load i32, i32* %i, align 4
  %2007 = add nsw i32 %2006, 1
  store i32 %2007, i32* %i, align 4
  br label %1925

; <label>:2008                                    ; preds = %1925
  %2009 = load %struct.composite_rec*, %struct.composite_rec** %newcmp, align 8
  %2010 = load i32, i32* @font_count, align 4
  %2011 = zext i32 %2010 to i64
  %2012 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %2013 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2012, i64 %2011
  %2014 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2013, i32 0, i32 3
  store %struct.composite_rec* %2009, %struct.composite_rec** %2014, align 8
  %2015 = load %union.rec*, %union.rec** %old, align 8
  %2016 = bitcast %union.rec* %2015 to %struct.word_type*
  %2017 = getelementptr inbounds %struct.word_type, %struct.word_type* %2016, i32 0, i32 2
  %2018 = bitcast %union.SECOND_UNION* %2017 to %struct.anon.4*
  %2019 = bitcast %struct.anon.4* %2018 to i16*
  %2020 = load i16, i16* %2019, align 4
  %2021 = and i16 %2020, 4095
  %2022 = zext i16 %2021 to i32
  %2023 = zext i32 %2022 to i64
  %2024 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %2025 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2024, i64 %2023
  %2026 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2025, i32 0, i32 9
  %2027 = load i16*, i16** %2026, align 8
  %2028 = load i32, i32* @font_count, align 4
  %2029 = zext i32 %2028 to i64
  %2030 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %2031 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2030, i64 %2029
  %2032 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2031, i32 0, i32 9
  store i16* %2027, i16** %2032, align 8
  %2033 = load %union.rec*, %union.rec** %old, align 8
  %2034 = bitcast %union.rec* %2033 to %struct.word_type*
  %2035 = getelementptr inbounds %struct.word_type, %struct.word_type* %2034, i32 0, i32 2
  %2036 = bitcast %union.SECOND_UNION* %2035 to %struct.anon.4*
  %2037 = bitcast %struct.anon.4* %2036 to i16*
  %2038 = load i16, i16* %2037, align 4
  %2039 = and i16 %2038, 4095
  %2040 = zext i16 %2039 to i32
  %2041 = zext i32 %2040 to i64
  %2042 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %2043 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2042, i64 %2041
  %2044 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2043, i32 0, i32 10
  %2045 = load i8*, i8** %2044, align 8
  %2046 = load i32, i32* @font_count, align 4
  %2047 = zext i32 %2046 to i64
  %2048 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %2049 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2048, i64 %2047
  %2050 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2049, i32 0, i32 10
  store i8* %2045, i8** %2050, align 8
  %2051 = load %union.rec*, %union.rec** %old, align 8
  %2052 = bitcast %union.rec* %2051 to %struct.word_type*
  %2053 = getelementptr inbounds %struct.word_type, %struct.word_type* %2052, i32 0, i32 2
  %2054 = bitcast %union.SECOND_UNION* %2053 to %struct.anon.4*
  %2055 = bitcast %struct.anon.4* %2054 to i16*
  %2056 = load i16, i16* %2055, align 4
  %2057 = and i16 %2056, 4095
  %2058 = zext i16 %2057 to i32
  %2059 = zext i32 %2058 to i64
  %2060 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %2061 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2060, i64 %2059
  %2062 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2061, i32 0, i32 11
  %2063 = load i8*, i8** %2062, align 8
  %2064 = load i32, i32* @font_count, align 4
  %2065 = zext i32 %2064 to i64
  %2066 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %2067 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2066, i64 %2065
  %2068 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2067, i32 0, i32 11
  store i8* %2063, i8** %2068, align 8
  %2069 = load %union.rec*, %union.rec** %old, align 8
  %2070 = bitcast %union.rec* %2069 to %struct.word_type*
  %2071 = getelementptr inbounds %struct.word_type, %struct.word_type* %2070, i32 0, i32 2
  %2072 = bitcast %union.SECOND_UNION* %2071 to %struct.anon.4*
  %2073 = bitcast %struct.anon.4* %2072 to i16*
  %2074 = load i16, i16* %2073, align 4
  %2075 = and i16 %2074, 4095
  %2076 = zext i16 %2075 to i32
  %2077 = zext i32 %2076 to i64
  %2078 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %2079 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2078, i64 %2077
  %2080 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2079, i32 0, i32 12
  %2081 = load i16*, i16** %2080, align 8
  store i16* %2081, i16** %oldks, align 8
  %2082 = load i16*, i16** %oldks, align 8
  %2083 = icmp ne i16* %2082, null
  br i1 %2083, label %2084, label %2146

; <label>:2084                                    ; preds = %2008
  %2085 = load i16*, i16** %oldks, align 8
  %2086 = getelementptr inbounds i16, i16* %2085, i64 0
  %2087 = load i16, i16* %2086, align 2
  %2088 = sext i16 %2087 to i32
  store i32 %2088, i32* %klen, align 4
  %2089 = load i32, i32* %klen, align 4
  %2090 = sext i32 %2089 to i64
  %2091 = mul i64 %2090, 2
  %2092 = call noalias i8* @malloc(i64 %2091) #4
  %2093 = bitcast i8* %2092 to i16*
  store i16* %2093, i16** %newks, align 8
  %2094 = load i32, i32* @font_count, align 4
  %2095 = zext i32 %2094 to i64
  %2096 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %2097 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2096, i64 %2095
  %2098 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2097, i32 0, i32 12
  store i16* %2093, i16** %2098, align 8
  %2099 = load i16*, i16** %newks, align 8
  %2100 = icmp eq i16* %2099, null
  br i1 %2100, label %2101, label %2107

; <label>:2101                                    ; preds = %2084
  %2102 = load %union.rec*, %union.rec** %2, align 8
  %2103 = bitcast %union.rec* %2102 to %struct.word_type*
  %2104 = getelementptr inbounds %struct.word_type, %struct.word_type* %2103, i32 0, i32 1
  %2105 = bitcast %union.FIRST_UNION* %2104 to %struct.FILE_POS*
  %2106 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 55, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.39, i32 0, i32 0), i32 1, %struct.FILE_POS* %2105)
  br label %2107

; <label>:2107                                    ; preds = %2101, %2084
  %2108 = load i32, i32* %klen, align 4
  %2109 = trunc i32 %2108 to i16
  %2110 = load i16*, i16** %newks, align 8
  %2111 = getelementptr inbounds i16, i16* %2110, i64 0
  store i16 %2109, i16* %2111, align 2
  store i32 1, i32* %i, align 4
  br label %2112

; <label>:2112                                    ; preds = %2142, %2107
  %2113 = load i32, i32* %i, align 4
  %2114 = load i32, i32* %klen, align 4
  %2115 = icmp slt i32 %2113, %2114
  br i1 %2115, label %2116, label %2145

; <label>:2116                                    ; preds = %2112
  %2117 = load i32, i32* %i, align 4
  %2118 = sext i32 %2117 to i64
  %2119 = load i16*, i16** %oldks, align 8
  %2120 = getelementptr inbounds i16, i16* %2119, i64 %2118
  %2121 = load i16, i16* %2120, align 2
  %2122 = sext i16 %2121 to i32
  %2123 = load %union.rec*, %union.rec** %new, align 8
  %2124 = bitcast %union.rec* %2123 to %struct.word_type*
  %2125 = getelementptr inbounds %struct.word_type, %struct.word_type* %2124, i32 0, i32 3
  %2126 = bitcast %union.THIRD_UNION* %2125 to %struct.anon.7*
  %2127 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %2126, i32 0, i32 0
  %2128 = load i32, i32* %2127, align 4
  %2129 = mul nsw i32 %2122, %2128
  %2130 = load %union.rec*, %union.rec** %old, align 8
  %2131 = bitcast %union.rec* %2130 to %struct.word_type*
  %2132 = getelementptr inbounds %struct.word_type, %struct.word_type* %2131, i32 0, i32 3
  %2133 = bitcast %union.THIRD_UNION* %2132 to %struct.anon.7*
  %2134 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %2133, i32 0, i32 0
  %2135 = load i32, i32* %2134, align 4
  %2136 = sdiv i32 %2129, %2135
  %2137 = trunc i32 %2136 to i16
  %2138 = load i32, i32* %i, align 4
  %2139 = sext i32 %2138 to i64
  %2140 = load i16*, i16** %newks, align 8
  %2141 = getelementptr inbounds i16, i16* %2140, i64 %2139
  store i16 %2137, i16* %2141, align 2
  br label %2142

; <label>:2142                                    ; preds = %2116
  %2143 = load i32, i32* %i, align 4
  %2144 = add nsw i32 %2143, 1
  store i32 %2144, i32* %i, align 4
  br label %2112

; <label>:2145                                    ; preds = %2112
  br label %2152

; <label>:2146                                    ; preds = %2008
  %2147 = load i32, i32* @font_count, align 4
  %2148 = zext i32 %2147 to i64
  %2149 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %2150 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2149, i64 %2148
  %2151 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2150, i32 0, i32 12
  store i16* null, i16** %2151, align 8
  br label %2152

; <label>:2152                                    ; preds = %2146, %2145
  %2153 = load i32, i32* @font_count, align 4
  %2154 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %2155 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2154, i32 0, i32 4
  %2156 = load i32, i32* %2155, align 4
  %2157 = and i32 %2153, 4095
  %2158 = and i32 %2156, -4096
  %2159 = or i32 %2158, %2157
  store i32 %2159, i32* %2155, align 4
  %2160 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %2161 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2160, i32 0, i32 1
  %2162 = bitcast %union.anon.10* %2161 to %struct.GAP*
  %2163 = bitcast %struct.GAP* %2162 to i16*
  %2164 = load i16, i16* %2163, align 4
  %2165 = lshr i16 %2164, 7
  %2166 = and i16 %2165, 1
  %2167 = zext i16 %2166 to i32
  %2168 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %2169 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2168, i32 0, i32 1
  %2170 = bitcast %union.anon.10* %2169 to %struct.GAP*
  %2171 = bitcast %struct.GAP* %2170 to i16*
  %2172 = trunc i32 %2167 to i16
  %2173 = load i16, i16* %2171, align 4
  %2174 = and i16 %2172, 1
  %2175 = shl i16 %2174, 7
  %2176 = and i16 %2173, -129
  %2177 = or i16 %2176, %2175
  store i16 %2177, i16* %2171, align 4
  %2178 = zext i16 %2174 to i32
  %2179 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %2180 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2179, i32 0, i32 1
  %2181 = bitcast %union.anon.10* %2180 to %struct.GAP*
  %2182 = bitcast %struct.GAP* %2181 to i16*
  %2183 = load i16, i16* %2182, align 4
  %2184 = and i16 %2183, -257
  store i16 %2184, i16* %2182, align 4
  %2185 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %2186 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2185, i32 0, i32 1
  %2187 = bitcast %union.anon.10* %2186 to %struct.GAP*
  %2188 = bitcast %struct.GAP* %2187 to i16*
  %2189 = load i16, i16* %2188, align 4
  %2190 = and i16 %2189, -513
  %2191 = or i16 %2190, 512
  store i16 %2191, i16* %2188, align 4
  %2192 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %2193 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2192, i32 0, i32 1
  %2194 = bitcast %union.anon.10* %2193 to %struct.GAP*
  %2195 = bitcast %struct.GAP* %2194 to i16*
  %2196 = load i16, i16* %2195, align 4
  %2197 = and i16 %2196, -7169
  %2198 = or i16 %2197, 1024
  store i16 %2198, i16* %2195, align 4
  %2199 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %2200 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2199, i32 0, i32 1
  %2201 = bitcast %union.anon.10* %2200 to %struct.GAP*
  %2202 = bitcast %struct.GAP* %2201 to i16*
  %2203 = load i16, i16* %2202, align 4
  %2204 = and i16 %2203, 8191
  %2205 = or i16 %2204, 8192
  store i16 %2205, i16* %2202, align 4
  %2206 = load %union.rec*, %union.rec** %new, align 8
  %2207 = bitcast %union.rec* %2206 to %struct.word_type*
  %2208 = getelementptr inbounds %struct.word_type, %struct.word_type* %2207, i32 0, i32 3
  %2209 = bitcast %union.THIRD_UNION* %2208 to %struct.anon.7*
  %2210 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %2209, i32 0, i32 2
  %2211 = load i32, i32* %2210, align 4
  %2212 = trunc i32 %2211 to i16
  %2213 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %2214 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2213, i32 0, i32 1
  %2215 = bitcast %union.anon.10* %2214 to %struct.GAP*
  %2216 = getelementptr inbounds %struct.GAP, %struct.GAP* %2215, i32 0, i32 1
  store i16 %2212, i16* %2216, align 2
  br label %2217

; <label>:2217                                    ; preds = %2152, %1092, %1019, %823, %323, %246, %235, %220, %205
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal %union.rec* @FontRead(i8* %family_name, i8* %face_name, %union.rec* %err) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %union.rec*, align 8
  %cs = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %db = alloca %union.rec*, align 8
  %fontdef_obj = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %ylink = alloca %union.rec*, align 8
  %tag = alloca [100 x i8], align 16
  %seq = alloca [100 x i8], align 16
  %dfnum = alloca i16, align 2
  %dfpos = alloca i64, align 8
  %cont = alloca i64, align 8
  %dlnum = alloca i32, align 4
  %font_name_found = alloca i32, align 4
  %family = alloca %union.rec*, align 8
  %face = alloca %union.rec*, align 8
  %font_name = alloca %union.rec*, align 8
  %AFMfilename = alloca %union.rec*, align 8
  %Extrafilename = alloca %union.rec*, align 8
  %LCMfilename = alloca %union.rec*, align 8
  %recode = alloca %union.rec*, align 8
  %first_size = alloca %union.rec*, align 8
  %buff = alloca [512 x i8], align 16
  %command = alloca [512 x i8], align 16
  %ch = alloca i8, align 1
  %status = alloca i8*, align 8
  %xheight2 = alloca i32, align 4
  %i = alloca i32, align 4
  %lnum = alloca i32, align 4
  %ligtop = alloca i32, align 4
  %cmptop = alloca i32, align 4
  %fl_xheight2 = alloca float, align 4
  %fl_under_pos = alloca float, align 4
  %fl_under_thick = alloca float, align 4
  %under_pos = alloca i32, align 4
  %under_thick = alloca i32, align 4
  %upfound = alloca i32, align 4
  %utfound = alloca i32, align 4
  %xhfound = alloca i32, align 4
  %fixed_pitch = alloca i32, align 4
  %fnum = alloca i16, align 2
  %extra_fnum = alloca i16, align 2
  %fp = alloca %struct._IO_FILE*, align 8
  %extra_fp = alloca %struct._IO_FILE*, align 8
  %fnt = alloca %struct.metrics*, align 8
  %lig = alloca i8*, align 8
  %composite = alloca i16*, align 8
  %cmp = alloca %struct.composite_rec*, align 8
  %kt = alloca i16*, align 8
  %kc = alloca i8*, align 8
  %kv = alloca i8*, align 8
  %ks = alloca i16*, align 8
  %ch1 = alloca i8, align 1
  %ch2 = alloca i8, align 1
  %last_ch1 = alloca i8, align 1
  %name1 = alloca [30 x i8], align 16
  %name2 = alloca [30 x i8], align 16
  %kc_top = alloca i32, align 4
  %ks_top = alloca i32, align 4
  %pos = alloca i32, align 4
  %num_pairs = alloca i32, align 4
  %ksize = alloca i32, align 4
  %fl_ksize = alloca float, align 4
  store i8* %family_name, i8** %2, align 8
  store i8* %face_name, i8** %3, align 8
  store %union.rec* %err, %union.rec** %4, align 8
  store i32 0, i32* %fixed_pitch, align 4
  %5 = load %union.rec*, %union.rec** @FontDefSym, align 8
  %6 = bitcast %union.rec* %5 to %struct.symbol_type*
  %7 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %6, i32 0, i32 8
  %8 = load %union.rec*, %union.rec** %7, align 8
  store %union.rec* %8, %union.rec** %cs, align 8
  %9 = load %union.rec*, %union.rec** %cs, align 8
  %10 = icmp eq %union.rec* %9, null
  br i1 %10, label %11, label %16

; <label>:11                                      ; preds = %0
  %12 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 10, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.73, i32 0, i32 0), i32 1, %struct.FILE_POS* %12, i8* %13, i8* %14)
  br label %16

; <label>:16                                      ; preds = %11, %0
  %17 = getelementptr inbounds [100 x i8], [100 x i8]* %tag, i32 0, i32 0
  %18 = load i8*, i8** %2, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 (i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i8* %18, i8* %19) #4
  %21 = load %union.rec*, %union.rec** %cs, align 8
  %22 = bitcast %union.rec* %21 to %struct.word_type*
  %23 = getelementptr inbounds %struct.word_type, %struct.word_type* %22, i32 0, i32 0
  %24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %23, i32 0, i64 1
  %25 = getelementptr inbounds %struct.LIST, %struct.LIST* %24, i32 0, i32 1
  %26 = load %union.rec*, %union.rec** %25, align 8
  %27 = bitcast %union.rec* %26 to %struct.word_type*
  %28 = getelementptr inbounds %struct.word_type, %struct.word_type* %27, i32 0, i32 0
  %29 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %28, i32 0, i64 1
  %30 = getelementptr inbounds %struct.LIST, %struct.LIST* %29, i32 0, i32 1
  %31 = load %union.rec*, %union.rec** %30, align 8
  store %union.rec* %31, %union.rec** %link, align 8
  br label %32

; <label>:32                                      ; preds = %69, %16
  %33 = load %union.rec*, %union.rec** %link, align 8
  %34 = load %union.rec*, %union.rec** %cs, align 8
  %35 = icmp ne %union.rec* %33, %34
  br i1 %35, label %36, label %76

; <label>:36                                      ; preds = %32
  %37 = load %union.rec*, %union.rec** %link, align 8
  %38 = bitcast %union.rec* %37 to %struct.word_type*
  %39 = getelementptr inbounds %struct.word_type, %struct.word_type* %38, i32 0, i32 0
  %40 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %39, i32 0, i64 0
  %41 = getelementptr inbounds %struct.LIST, %struct.LIST* %40, i32 0, i32 0
  %42 = load %union.rec*, %union.rec** %41, align 8
  store %union.rec* %42, %union.rec** %db, align 8
  br label %43

; <label>:43                                      ; preds = %53, %36
  %44 = load %union.rec*, %union.rec** %db, align 8
  %45 = bitcast %union.rec* %44 to %struct.word_type*
  %46 = getelementptr inbounds %struct.word_type, %struct.word_type* %45, i32 0, i32 1
  %47 = bitcast %union.FIRST_UNION* %46 to %struct.anon*
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 0
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %60

; <label>:52                                      ; preds = %43
  br label %53

; <label>:53                                      ; preds = %52
  %54 = load %union.rec*, %union.rec** %db, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 0
  %57 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %56, i32 0, i64 0
  %58 = getelementptr inbounds %struct.LIST, %struct.LIST* %57, i32 0, i32 0
  %59 = load %union.rec*, %union.rec** %58, align 8
  store %union.rec* %59, %union.rec** %db, align 8
  br label %43

; <label>:60                                      ; preds = %43
  %61 = load %union.rec*, %union.rec** %db, align 8
  %62 = load %union.rec*, %union.rec** @FontDefSym, align 8
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %tag, i32 0, i32 0
  %64 = getelementptr inbounds [100 x i8], [100 x i8]* %seq, i32 0, i32 0
  %65 = call i32 @DbRetrieve(%union.rec* %61, i32 0, %union.rec* %62, i8* %63, i8* %64, i16* %dfnum, i64* %dfpos, i32* %dlnum, i64* %cont)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

; <label>:67                                      ; preds = %60
  br label %76

; <label>:68                                      ; preds = %60
  br label %69

; <label>:69                                      ; preds = %68
  %70 = load %union.rec*, %union.rec** %link, align 8
  %71 = bitcast %union.rec* %70 to %struct.word_type*
  %72 = getelementptr inbounds %struct.word_type, %struct.word_type* %71, i32 0, i32 0
  %73 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %72, i32 0, i64 1
  %74 = getelementptr inbounds %struct.LIST, %struct.LIST* %73, i32 0, i32 1
  %75 = load %union.rec*, %union.rec** %74, align 8
  store %union.rec* %75, %union.rec** %link, align 8
  br label %32

; <label>:76                                      ; preds = %67, %32
  %77 = load %union.rec*, %union.rec** %link, align 8
  %78 = load %union.rec*, %union.rec** %cs, align 8
  %79 = icmp eq %union.rec* %77, %78
  br i1 %79, label %80, label %81

; <label>:80                                      ; preds = %76
  store %union.rec* null, %union.rec** %1
  br label %2778

; <label>:81                                      ; preds = %76
  call void @SwitchScope(%union.rec* null)
  %82 = load i16, i16* %dfnum, align 2
  %83 = load i64, i64* %dfpos, align 8
  %84 = load i32, i32* %dlnum, align 4
  %85 = call %union.rec* @ReadFromFile(i16 zeroext %82, i64 %83, i32 %84)
  store %union.rec* %85, %union.rec** %fontdef_obj, align 8
  call void @UnSwitchScope(%union.rec* null)
  %86 = load %union.rec*, %union.rec** %fontdef_obj, align 8
  %87 = icmp eq %union.rec* %86, null
  br i1 %87, label %88, label %92

; <label>:88                                      ; preds = %81
  %89 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %90 = getelementptr inbounds [100 x i8], [100 x i8]* %tag, i32 0, i32 0
  %91 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.75, i32 0, i32 0), i32 0, %struct.FILE_POS* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %90)
  br label %92

; <label>:92                                      ; preds = %88, %81
  store %union.rec* null, %union.rec** %AFMfilename, align 8
  store %union.rec* null, %union.rec** %font_name, align 8
  store %union.rec* null, %union.rec** %face, align 8
  store %union.rec* null, %union.rec** %family, align 8
  store %union.rec* null, %union.rec** %recode, align 8
  store %union.rec* null, %union.rec** %LCMfilename, align 8
  store %union.rec* null, %union.rec** %Extrafilename, align 8
  %93 = load %union.rec*, %union.rec** %fontdef_obj, align 8
  %94 = bitcast %union.rec* %93 to %struct.word_type*
  %95 = getelementptr inbounds %struct.word_type, %struct.word_type* %94, i32 0, i32 0
  %96 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %95, i32 0, i64 0
  %97 = getelementptr inbounds %struct.LIST, %struct.LIST* %96, i32 0, i32 1
  %98 = load %union.rec*, %union.rec** %97, align 8
  store %union.rec* %98, %union.rec** %ylink, align 8
  br label %99

; <label>:99                                      ; preds = %623, %92
  %100 = load %union.rec*, %union.rec** %ylink, align 8
  %101 = load %union.rec*, %union.rec** %fontdef_obj, align 8
  %102 = icmp ne %union.rec* %100, %101
  br i1 %102, label %103, label %630

; <label>:103                                     ; preds = %99
  %104 = load %union.rec*, %union.rec** %ylink, align 8
  %105 = bitcast %union.rec* %104 to %struct.word_type*
  %106 = getelementptr inbounds %struct.word_type, %struct.word_type* %105, i32 0, i32 0
  %107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %106, i32 0, i64 1
  %108 = getelementptr inbounds %struct.LIST, %struct.LIST* %107, i32 0, i32 0
  %109 = load %union.rec*, %union.rec** %108, align 8
  store %union.rec* %109, %union.rec** %y, align 8
  br label %110

; <label>:110                                     ; preds = %120, %103
  %111 = load %union.rec*, %union.rec** %y, align 8
  %112 = bitcast %union.rec* %111 to %struct.word_type*
  %113 = getelementptr inbounds %struct.word_type, %struct.word_type* %112, i32 0, i32 1
  %114 = bitcast %union.FIRST_UNION* %113 to %struct.anon*
  %115 = getelementptr inbounds %struct.anon, %struct.anon* %114, i32 0, i32 0
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %127

; <label>:119                                     ; preds = %110
  br label %120

; <label>:120                                     ; preds = %119
  %121 = load %union.rec*, %union.rec** %y, align 8
  %122 = bitcast %union.rec* %121 to %struct.word_type*
  %123 = getelementptr inbounds %struct.word_type, %struct.word_type* %122, i32 0, i32 0
  %124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %123, i32 0, i64 1
  %125 = getelementptr inbounds %struct.LIST, %struct.LIST* %124, i32 0, i32 0
  %126 = load %union.rec*, %union.rec** %125, align 8
  store %union.rec* %126, %union.rec** %y, align 8
  br label %110

; <label>:127                                     ; preds = %110
  %128 = load %union.rec*, %union.rec** %y, align 8
  %129 = bitcast %union.rec* %128 to %struct.word_type*
  %130 = getelementptr inbounds %struct.word_type, %struct.word_type* %129, i32 0, i32 1
  %131 = bitcast %union.FIRST_UNION* %130 to %struct.anon*
  %132 = getelementptr inbounds %struct.anon, %struct.anon* %131, i32 0, i32 0
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %134, 10
  br i1 %135, label %139, label %136

; <label>:136                                     ; preds = %127
  %137 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %138 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %137, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.76, i32 0, i32 0))
  br label %139

; <label>:139                                     ; preds = %136, %127
  %140 = load %union.rec*, %union.rec** %y, align 8
  %141 = bitcast %union.rec* %140 to %struct.closure_type*
  %142 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %141, i32 0, i32 5
  %143 = load %union.rec*, %union.rec** %142, align 8
  %144 = load %union.rec*, %union.rec** @fd_tag, align 8
  %145 = icmp eq %union.rec* %143, %144
  br i1 %145, label %146, label %147

; <label>:146                                     ; preds = %139
  br label %622

; <label>:147                                     ; preds = %139
  %148 = load %union.rec*, %union.rec** %y, align 8
  %149 = bitcast %union.rec* %148 to %struct.closure_type*
  %150 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %149, i32 0, i32 5
  %151 = load %union.rec*, %union.rec** %150, align 8
  %152 = load %union.rec*, %union.rec** @fd_family, align 8
  %153 = icmp eq %union.rec* %151, %152
  br i1 %153, label %154, label %221

; <label>:154                                     ; preds = %147
  %155 = load %union.rec*, %union.rec** %y, align 8
  %156 = bitcast %union.rec* %155 to %struct.word_type*
  %157 = getelementptr inbounds %struct.word_type, %struct.word_type* %156, i32 0, i32 0
  %158 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %157, i32 0, i64 0
  %159 = getelementptr inbounds %struct.LIST, %struct.LIST* %158, i32 0, i32 1
  %160 = load %union.rec*, %union.rec** %159, align 8
  %161 = bitcast %union.rec* %160 to %struct.word_type*
  %162 = getelementptr inbounds %struct.word_type, %struct.word_type* %161, i32 0, i32 0
  %163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %162, i32 0, i64 1
  %164 = getelementptr inbounds %struct.LIST, %struct.LIST* %163, i32 0, i32 0
  %165 = load %union.rec*, %union.rec** %164, align 8
  store %union.rec* %165, %union.rec** %family, align 8
  br label %166

; <label>:166                                     ; preds = %176, %154
  %167 = load %union.rec*, %union.rec** %family, align 8
  %168 = bitcast %union.rec* %167 to %struct.word_type*
  %169 = getelementptr inbounds %struct.word_type, %struct.word_type* %168, i32 0, i32 1
  %170 = bitcast %union.FIRST_UNION* %169 to %struct.anon*
  %171 = getelementptr inbounds %struct.anon, %struct.anon* %170, i32 0, i32 0
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %183

; <label>:175                                     ; preds = %166
  br label %176

; <label>:176                                     ; preds = %175
  %177 = load %union.rec*, %union.rec** %family, align 8
  %178 = bitcast %union.rec* %177 to %struct.word_type*
  %179 = getelementptr inbounds %struct.word_type, %struct.word_type* %178, i32 0, i32 0
  %180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %179, i32 0, i64 1
  %181 = getelementptr inbounds %struct.LIST, %struct.LIST* %180, i32 0, i32 0
  %182 = load %union.rec*, %union.rec** %181, align 8
  store %union.rec* %182, %union.rec** %family, align 8
  br label %166

; <label>:183                                     ; preds = %166
  %184 = load %union.rec*, %union.rec** %family, align 8
  %185 = bitcast %union.rec* %184 to %struct.word_type*
  %186 = getelementptr inbounds %struct.word_type, %struct.word_type* %185, i32 0, i32 1
  %187 = bitcast %union.FIRST_UNION* %186 to %struct.anon*
  %188 = getelementptr inbounds %struct.anon, %struct.anon* %187, i32 0, i32 0
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = icmp eq i32 %190, 11
  br i1 %191, label %201, label %192

; <label>:192                                     ; preds = %183
  %193 = load %union.rec*, %union.rec** %family, align 8
  %194 = bitcast %union.rec* %193 to %struct.word_type*
  %195 = getelementptr inbounds %struct.word_type, %struct.word_type* %194, i32 0, i32 1
  %196 = bitcast %union.FIRST_UNION* %195 to %struct.anon*
  %197 = getelementptr inbounds %struct.anon, %struct.anon* %196, i32 0, i32 0
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = icmp eq i32 %199, 12
  br i1 %200, label %201, label %209

; <label>:201                                     ; preds = %192, %183
  %202 = load %union.rec*, %union.rec** %family, align 8
  %203 = bitcast %union.rec* %202 to %struct.word_type*
  %204 = getelementptr inbounds %struct.word_type, %struct.word_type* %203, i32 0, i32 4
  %205 = getelementptr inbounds [4 x i8], [4 x i8]* %204, i32 0, i32 0
  %206 = load i8*, i8** %2, align 8
  %207 = call i32 @strcmp(i8* %205, i8* %206) #5
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %220, label %209

; <label>:209                                     ; preds = %201, %192
  %210 = load %union.rec*, %union.rec** %fontdef_obj, align 8
  %211 = bitcast %union.rec* %210 to %struct.word_type*
  %212 = getelementptr inbounds %struct.word_type, %struct.word_type* %211, i32 0, i32 1
  %213 = bitcast %union.FIRST_UNION* %212 to %struct.FILE_POS*
  %214 = load %union.rec*, %union.rec** %family, align 8
  %215 = bitcast %union.rec* %214 to %struct.word_type*
  %216 = getelementptr inbounds %struct.word_type, %struct.word_type* %215, i32 0, i32 4
  %217 = getelementptr inbounds [4 x i8], [4 x i8]* %216, i32 0, i32 0
  %218 = getelementptr inbounds [100 x i8], [100 x i8]* %tag, i32 0, i32 0
  %219 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 12, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.77, i32 0, i32 0), i32 1, %struct.FILE_POS* %213, i8* %217, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* %218)
  br label %220

; <label>:220                                     ; preds = %209, %201
  br label %621

; <label>:221                                     ; preds = %147
  %222 = load %union.rec*, %union.rec** %y, align 8
  %223 = bitcast %union.rec* %222 to %struct.closure_type*
  %224 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %223, i32 0, i32 5
  %225 = load %union.rec*, %union.rec** %224, align 8
  %226 = load %union.rec*, %union.rec** @fd_face, align 8
  %227 = icmp eq %union.rec* %225, %226
  br i1 %227, label %228, label %295

; <label>:228                                     ; preds = %221
  %229 = load %union.rec*, %union.rec** %y, align 8
  %230 = bitcast %union.rec* %229 to %struct.word_type*
  %231 = getelementptr inbounds %struct.word_type, %struct.word_type* %230, i32 0, i32 0
  %232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %231, i32 0, i64 0
  %233 = getelementptr inbounds %struct.LIST, %struct.LIST* %232, i32 0, i32 1
  %234 = load %union.rec*, %union.rec** %233, align 8
  %235 = bitcast %union.rec* %234 to %struct.word_type*
  %236 = getelementptr inbounds %struct.word_type, %struct.word_type* %235, i32 0, i32 0
  %237 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %236, i32 0, i64 1
  %238 = getelementptr inbounds %struct.LIST, %struct.LIST* %237, i32 0, i32 0
  %239 = load %union.rec*, %union.rec** %238, align 8
  store %union.rec* %239, %union.rec** %face, align 8
  br label %240

; <label>:240                                     ; preds = %250, %228
  %241 = load %union.rec*, %union.rec** %face, align 8
  %242 = bitcast %union.rec* %241 to %struct.word_type*
  %243 = getelementptr inbounds %struct.word_type, %struct.word_type* %242, i32 0, i32 1
  %244 = bitcast %union.FIRST_UNION* %243 to %struct.anon*
  %245 = getelementptr inbounds %struct.anon, %struct.anon* %244, i32 0, i32 0
  %246 = load i8, i8* %245, align 1
  %247 = zext i8 %246 to i32
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %257

; <label>:249                                     ; preds = %240
  br label %250

; <label>:250                                     ; preds = %249
  %251 = load %union.rec*, %union.rec** %face, align 8
  %252 = bitcast %union.rec* %251 to %struct.word_type*
  %253 = getelementptr inbounds %struct.word_type, %struct.word_type* %252, i32 0, i32 0
  %254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %253, i32 0, i64 1
  %255 = getelementptr inbounds %struct.LIST, %struct.LIST* %254, i32 0, i32 0
  %256 = load %union.rec*, %union.rec** %255, align 8
  store %union.rec* %256, %union.rec** %face, align 8
  br label %240

; <label>:257                                     ; preds = %240
  %258 = load %union.rec*, %union.rec** %face, align 8
  %259 = bitcast %union.rec* %258 to %struct.word_type*
  %260 = getelementptr inbounds %struct.word_type, %struct.word_type* %259, i32 0, i32 1
  %261 = bitcast %union.FIRST_UNION* %260 to %struct.anon*
  %262 = getelementptr inbounds %struct.anon, %struct.anon* %261, i32 0, i32 0
  %263 = load i8, i8* %262, align 1
  %264 = zext i8 %263 to i32
  %265 = icmp eq i32 %264, 11
  br i1 %265, label %275, label %266

; <label>:266                                     ; preds = %257
  %267 = load %union.rec*, %union.rec** %face, align 8
  %268 = bitcast %union.rec* %267 to %struct.word_type*
  %269 = getelementptr inbounds %struct.word_type, %struct.word_type* %268, i32 0, i32 1
  %270 = bitcast %union.FIRST_UNION* %269 to %struct.anon*
  %271 = getelementptr inbounds %struct.anon, %struct.anon* %270, i32 0, i32 0
  %272 = load i8, i8* %271, align 1
  %273 = zext i8 %272 to i32
  %274 = icmp eq i32 %273, 12
  br i1 %274, label %275, label %283

; <label>:275                                     ; preds = %266, %257
  %276 = load %union.rec*, %union.rec** %face, align 8
  %277 = bitcast %union.rec* %276 to %struct.word_type*
  %278 = getelementptr inbounds %struct.word_type, %struct.word_type* %277, i32 0, i32 4
  %279 = getelementptr inbounds [4 x i8], [4 x i8]* %278, i32 0, i32 0
  %280 = load i8*, i8** %3, align 8
  %281 = call i32 @strcmp(i8* %279, i8* %280) #5
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %294, label %283

; <label>:283                                     ; preds = %275, %266
  %284 = load %union.rec*, %union.rec** %fontdef_obj, align 8
  %285 = bitcast %union.rec* %284 to %struct.word_type*
  %286 = getelementptr inbounds %struct.word_type, %struct.word_type* %285, i32 0, i32 1
  %287 = bitcast %union.FIRST_UNION* %286 to %struct.FILE_POS*
  %288 = load %union.rec*, %union.rec** %face, align 8
  %289 = bitcast %union.rec* %288 to %struct.word_type*
  %290 = getelementptr inbounds %struct.word_type, %struct.word_type* %289, i32 0, i32 4
  %291 = getelementptr inbounds [4 x i8], [4 x i8]* %290, i32 0, i32 0
  %292 = getelementptr inbounds [100 x i8], [100 x i8]* %tag, i32 0, i32 0
  %293 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 13, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.78, i32 0, i32 0), i32 1, %struct.FILE_POS* %287, i8* %291, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* %292)
  br label %294

; <label>:294                                     ; preds = %283, %275
  br label %620

; <label>:295                                     ; preds = %221
  %296 = load %union.rec*, %union.rec** %y, align 8
  %297 = bitcast %union.rec* %296 to %struct.closure_type*
  %298 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %297, i32 0, i32 5
  %299 = load %union.rec*, %union.rec** %298, align 8
  %300 = load %union.rec*, %union.rec** @fd_name, align 8
  %301 = icmp eq %union.rec* %299, %300
  br i1 %301, label %302, label %358

; <label>:302                                     ; preds = %295
  %303 = load %union.rec*, %union.rec** %y, align 8
  %304 = bitcast %union.rec* %303 to %struct.word_type*
  %305 = getelementptr inbounds %struct.word_type, %struct.word_type* %304, i32 0, i32 0
  %306 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %305, i32 0, i64 0
  %307 = getelementptr inbounds %struct.LIST, %struct.LIST* %306, i32 0, i32 1
  %308 = load %union.rec*, %union.rec** %307, align 8
  %309 = bitcast %union.rec* %308 to %struct.word_type*
  %310 = getelementptr inbounds %struct.word_type, %struct.word_type* %309, i32 0, i32 0
  %311 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %310, i32 0, i64 1
  %312 = getelementptr inbounds %struct.LIST, %struct.LIST* %311, i32 0, i32 0
  %313 = load %union.rec*, %union.rec** %312, align 8
  store %union.rec* %313, %union.rec** %font_name, align 8
  br label %314

; <label>:314                                     ; preds = %324, %302
  %315 = load %union.rec*, %union.rec** %font_name, align 8
  %316 = bitcast %union.rec* %315 to %struct.word_type*
  %317 = getelementptr inbounds %struct.word_type, %struct.word_type* %316, i32 0, i32 1
  %318 = bitcast %union.FIRST_UNION* %317 to %struct.anon*
  %319 = getelementptr inbounds %struct.anon, %struct.anon* %318, i32 0, i32 0
  %320 = load i8, i8* %319, align 1
  %321 = zext i8 %320 to i32
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %331

; <label>:323                                     ; preds = %314
  br label %324

; <label>:324                                     ; preds = %323
  %325 = load %union.rec*, %union.rec** %font_name, align 8
  %326 = bitcast %union.rec* %325 to %struct.word_type*
  %327 = getelementptr inbounds %struct.word_type, %struct.word_type* %326, i32 0, i32 0
  %328 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %327, i32 0, i64 1
  %329 = getelementptr inbounds %struct.LIST, %struct.LIST* %328, i32 0, i32 0
  %330 = load %union.rec*, %union.rec** %329, align 8
  store %union.rec* %330, %union.rec** %font_name, align 8
  br label %314

; <label>:331                                     ; preds = %314
  %332 = load %union.rec*, %union.rec** %font_name, align 8
  %333 = call %union.rec* @ReplaceWithTidy(%union.rec* %332, i32 1)
  store %union.rec* %333, %union.rec** %font_name, align 8
  %334 = load %union.rec*, %union.rec** %font_name, align 8
  %335 = bitcast %union.rec* %334 to %struct.word_type*
  %336 = getelementptr inbounds %struct.word_type, %struct.word_type* %335, i32 0, i32 1
  %337 = bitcast %union.FIRST_UNION* %336 to %struct.anon*
  %338 = getelementptr inbounds %struct.anon, %struct.anon* %337, i32 0, i32 0
  %339 = load i8, i8* %338, align 1
  %340 = zext i8 %339 to i32
  %341 = icmp eq i32 %340, 11
  br i1 %341, label %357, label %342

; <label>:342                                     ; preds = %331
  %343 = load %union.rec*, %union.rec** %font_name, align 8
  %344 = bitcast %union.rec* %343 to %struct.word_type*
  %345 = getelementptr inbounds %struct.word_type, %struct.word_type* %344, i32 0, i32 1
  %346 = bitcast %union.FIRST_UNION* %345 to %struct.anon*
  %347 = getelementptr inbounds %struct.anon, %struct.anon* %346, i32 0, i32 0
  %348 = load i8, i8* %347, align 1
  %349 = zext i8 %348 to i32
  %350 = icmp eq i32 %349, 12
  br i1 %350, label %357, label %351

; <label>:351                                     ; preds = %342
  %352 = load %union.rec*, %union.rec** %font_name, align 8
  %353 = bitcast %union.rec* %352 to %struct.word_type*
  %354 = getelementptr inbounds %struct.word_type, %struct.word_type* %353, i32 0, i32 1
  %355 = bitcast %union.FIRST_UNION* %354 to %struct.FILE_POS*
  %356 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.79, i32 0, i32 0), i32 1, %struct.FILE_POS* %355)
  br label %357

; <label>:357                                     ; preds = %351, %342, %331
  br label %619

; <label>:358                                     ; preds = %295
  %359 = load %union.rec*, %union.rec** %y, align 8
  %360 = bitcast %union.rec* %359 to %struct.closure_type*
  %361 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %360, i32 0, i32 5
  %362 = load %union.rec*, %union.rec** %361, align 8
  %363 = load %union.rec*, %union.rec** @fd_metrics, align 8
  %364 = icmp eq %union.rec* %362, %363
  br i1 %364, label %365, label %421

; <label>:365                                     ; preds = %358
  %366 = load %union.rec*, %union.rec** %y, align 8
  %367 = bitcast %union.rec* %366 to %struct.word_type*
  %368 = getelementptr inbounds %struct.word_type, %struct.word_type* %367, i32 0, i32 0
  %369 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %368, i32 0, i64 0
  %370 = getelementptr inbounds %struct.LIST, %struct.LIST* %369, i32 0, i32 1
  %371 = load %union.rec*, %union.rec** %370, align 8
  %372 = bitcast %union.rec* %371 to %struct.word_type*
  %373 = getelementptr inbounds %struct.word_type, %struct.word_type* %372, i32 0, i32 0
  %374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %373, i32 0, i64 1
  %375 = getelementptr inbounds %struct.LIST, %struct.LIST* %374, i32 0, i32 0
  %376 = load %union.rec*, %union.rec** %375, align 8
  store %union.rec* %376, %union.rec** %AFMfilename, align 8
  br label %377

; <label>:377                                     ; preds = %387, %365
  %378 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %379 = bitcast %union.rec* %378 to %struct.word_type*
  %380 = getelementptr inbounds %struct.word_type, %struct.word_type* %379, i32 0, i32 1
  %381 = bitcast %union.FIRST_UNION* %380 to %struct.anon*
  %382 = getelementptr inbounds %struct.anon, %struct.anon* %381, i32 0, i32 0
  %383 = load i8, i8* %382, align 1
  %384 = zext i8 %383 to i32
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %394

; <label>:386                                     ; preds = %377
  br label %387

; <label>:387                                     ; preds = %386
  %388 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %389 = bitcast %union.rec* %388 to %struct.word_type*
  %390 = getelementptr inbounds %struct.word_type, %struct.word_type* %389, i32 0, i32 0
  %391 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %390, i32 0, i64 1
  %392 = getelementptr inbounds %struct.LIST, %struct.LIST* %391, i32 0, i32 0
  %393 = load %union.rec*, %union.rec** %392, align 8
  store %union.rec* %393, %union.rec** %AFMfilename, align 8
  br label %377

; <label>:394                                     ; preds = %377
  %395 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %396 = call %union.rec* @ReplaceWithTidy(%union.rec* %395, i32 1)
  store %union.rec* %396, %union.rec** %AFMfilename, align 8
  %397 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %398 = bitcast %union.rec* %397 to %struct.word_type*
  %399 = getelementptr inbounds %struct.word_type, %struct.word_type* %398, i32 0, i32 1
  %400 = bitcast %union.FIRST_UNION* %399 to %struct.anon*
  %401 = getelementptr inbounds %struct.anon, %struct.anon* %400, i32 0, i32 0
  %402 = load i8, i8* %401, align 1
  %403 = zext i8 %402 to i32
  %404 = icmp eq i32 %403, 11
  br i1 %404, label %420, label %405

; <label>:405                                     ; preds = %394
  %406 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %407 = bitcast %union.rec* %406 to %struct.word_type*
  %408 = getelementptr inbounds %struct.word_type, %struct.word_type* %407, i32 0, i32 1
  %409 = bitcast %union.FIRST_UNION* %408 to %struct.anon*
  %410 = getelementptr inbounds %struct.anon, %struct.anon* %409, i32 0, i32 0
  %411 = load i8, i8* %410, align 1
  %412 = zext i8 %411 to i32
  %413 = icmp eq i32 %412, 12
  br i1 %413, label %420, label %414

; <label>:414                                     ; preds = %405
  %415 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %416 = bitcast %union.rec* %415 to %struct.word_type*
  %417 = getelementptr inbounds %struct.word_type, %struct.word_type* %416, i32 0, i32 1
  %418 = bitcast %union.FIRST_UNION* %417 to %struct.FILE_POS*
  %419 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 15, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.80, i32 0, i32 0), i32 1, %struct.FILE_POS* %418)
  br label %420

; <label>:420                                     ; preds = %414, %405, %394
  br label %618

; <label>:421                                     ; preds = %358
  %422 = load %union.rec*, %union.rec** %y, align 8
  %423 = bitcast %union.rec* %422 to %struct.closure_type*
  %424 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %423, i32 0, i32 5
  %425 = load %union.rec*, %union.rec** %424, align 8
  %426 = load %union.rec*, %union.rec** @fd_extra_metrics, align 8
  %427 = icmp eq %union.rec* %425, %426
  br i1 %427, label %428, label %484

; <label>:428                                     ; preds = %421
  %429 = load %union.rec*, %union.rec** %y, align 8
  %430 = bitcast %union.rec* %429 to %struct.word_type*
  %431 = getelementptr inbounds %struct.word_type, %struct.word_type* %430, i32 0, i32 0
  %432 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %431, i32 0, i64 0
  %433 = getelementptr inbounds %struct.LIST, %struct.LIST* %432, i32 0, i32 1
  %434 = load %union.rec*, %union.rec** %433, align 8
  %435 = bitcast %union.rec* %434 to %struct.word_type*
  %436 = getelementptr inbounds %struct.word_type, %struct.word_type* %435, i32 0, i32 0
  %437 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %436, i32 0, i64 1
  %438 = getelementptr inbounds %struct.LIST, %struct.LIST* %437, i32 0, i32 0
  %439 = load %union.rec*, %union.rec** %438, align 8
  store %union.rec* %439, %union.rec** %Extrafilename, align 8
  br label %440

; <label>:440                                     ; preds = %450, %428
  %441 = load %union.rec*, %union.rec** %Extrafilename, align 8
  %442 = bitcast %union.rec* %441 to %struct.word_type*
  %443 = getelementptr inbounds %struct.word_type, %struct.word_type* %442, i32 0, i32 1
  %444 = bitcast %union.FIRST_UNION* %443 to %struct.anon*
  %445 = getelementptr inbounds %struct.anon, %struct.anon* %444, i32 0, i32 0
  %446 = load i8, i8* %445, align 1
  %447 = zext i8 %446 to i32
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %457

; <label>:449                                     ; preds = %440
  br label %450

; <label>:450                                     ; preds = %449
  %451 = load %union.rec*, %union.rec** %Extrafilename, align 8
  %452 = bitcast %union.rec* %451 to %struct.word_type*
  %453 = getelementptr inbounds %struct.word_type, %struct.word_type* %452, i32 0, i32 0
  %454 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %453, i32 0, i64 1
  %455 = getelementptr inbounds %struct.LIST, %struct.LIST* %454, i32 0, i32 0
  %456 = load %union.rec*, %union.rec** %455, align 8
  store %union.rec* %456, %union.rec** %Extrafilename, align 8
  br label %440

; <label>:457                                     ; preds = %440
  %458 = load %union.rec*, %union.rec** %Extrafilename, align 8
  %459 = call %union.rec* @ReplaceWithTidy(%union.rec* %458, i32 1)
  store %union.rec* %459, %union.rec** %Extrafilename, align 8
  %460 = load %union.rec*, %union.rec** %Extrafilename, align 8
  %461 = bitcast %union.rec* %460 to %struct.word_type*
  %462 = getelementptr inbounds %struct.word_type, %struct.word_type* %461, i32 0, i32 1
  %463 = bitcast %union.FIRST_UNION* %462 to %struct.anon*
  %464 = getelementptr inbounds %struct.anon, %struct.anon* %463, i32 0, i32 0
  %465 = load i8, i8* %464, align 1
  %466 = zext i8 %465 to i32
  %467 = icmp eq i32 %466, 11
  br i1 %467, label %483, label %468

; <label>:468                                     ; preds = %457
  %469 = load %union.rec*, %union.rec** %Extrafilename, align 8
  %470 = bitcast %union.rec* %469 to %struct.word_type*
  %471 = getelementptr inbounds %struct.word_type, %struct.word_type* %470, i32 0, i32 1
  %472 = bitcast %union.FIRST_UNION* %471 to %struct.anon*
  %473 = getelementptr inbounds %struct.anon, %struct.anon* %472, i32 0, i32 0
  %474 = load i8, i8* %473, align 1
  %475 = zext i8 %474 to i32
  %476 = icmp eq i32 %475, 12
  br i1 %476, label %483, label %477

; <label>:477                                     ; preds = %468
  %478 = load %union.rec*, %union.rec** %Extrafilename, align 8
  %479 = bitcast %union.rec* %478 to %struct.word_type*
  %480 = getelementptr inbounds %struct.word_type, %struct.word_type* %479, i32 0, i32 1
  %481 = bitcast %union.FIRST_UNION* %480 to %struct.FILE_POS*
  %482 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 16, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.81, i32 0, i32 0), i32 1, %struct.FILE_POS* %481)
  br label %483

; <label>:483                                     ; preds = %477, %468, %457
  br label %617

; <label>:484                                     ; preds = %421
  %485 = load %union.rec*, %union.rec** %y, align 8
  %486 = bitcast %union.rec* %485 to %struct.closure_type*
  %487 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %486, i32 0, i32 5
  %488 = load %union.rec*, %union.rec** %487, align 8
  %489 = load %union.rec*, %union.rec** @fd_mapping, align 8
  %490 = icmp eq %union.rec* %488, %489
  br i1 %490, label %491, label %547

; <label>:491                                     ; preds = %484
  %492 = load %union.rec*, %union.rec** %y, align 8
  %493 = bitcast %union.rec* %492 to %struct.word_type*
  %494 = getelementptr inbounds %struct.word_type, %struct.word_type* %493, i32 0, i32 0
  %495 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %494, i32 0, i64 0
  %496 = getelementptr inbounds %struct.LIST, %struct.LIST* %495, i32 0, i32 1
  %497 = load %union.rec*, %union.rec** %496, align 8
  %498 = bitcast %union.rec* %497 to %struct.word_type*
  %499 = getelementptr inbounds %struct.word_type, %struct.word_type* %498, i32 0, i32 0
  %500 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %499, i32 0, i64 1
  %501 = getelementptr inbounds %struct.LIST, %struct.LIST* %500, i32 0, i32 0
  %502 = load %union.rec*, %union.rec** %501, align 8
  store %union.rec* %502, %union.rec** %LCMfilename, align 8
  br label %503

; <label>:503                                     ; preds = %513, %491
  %504 = load %union.rec*, %union.rec** %LCMfilename, align 8
  %505 = bitcast %union.rec* %504 to %struct.word_type*
  %506 = getelementptr inbounds %struct.word_type, %struct.word_type* %505, i32 0, i32 1
  %507 = bitcast %union.FIRST_UNION* %506 to %struct.anon*
  %508 = getelementptr inbounds %struct.anon, %struct.anon* %507, i32 0, i32 0
  %509 = load i8, i8* %508, align 1
  %510 = zext i8 %509 to i32
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %520

; <label>:512                                     ; preds = %503
  br label %513

; <label>:513                                     ; preds = %512
  %514 = load %union.rec*, %union.rec** %LCMfilename, align 8
  %515 = bitcast %union.rec* %514 to %struct.word_type*
  %516 = getelementptr inbounds %struct.word_type, %struct.word_type* %515, i32 0, i32 0
  %517 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %516, i32 0, i64 1
  %518 = getelementptr inbounds %struct.LIST, %struct.LIST* %517, i32 0, i32 0
  %519 = load %union.rec*, %union.rec** %518, align 8
  store %union.rec* %519, %union.rec** %LCMfilename, align 8
  br label %503

; <label>:520                                     ; preds = %503
  %521 = load %union.rec*, %union.rec** %LCMfilename, align 8
  %522 = call %union.rec* @ReplaceWithTidy(%union.rec* %521, i32 1)
  store %union.rec* %522, %union.rec** %LCMfilename, align 8
  %523 = load %union.rec*, %union.rec** %LCMfilename, align 8
  %524 = bitcast %union.rec* %523 to %struct.word_type*
  %525 = getelementptr inbounds %struct.word_type, %struct.word_type* %524, i32 0, i32 1
  %526 = bitcast %union.FIRST_UNION* %525 to %struct.anon*
  %527 = getelementptr inbounds %struct.anon, %struct.anon* %526, i32 0, i32 0
  %528 = load i8, i8* %527, align 1
  %529 = zext i8 %528 to i32
  %530 = icmp eq i32 %529, 11
  br i1 %530, label %546, label %531

; <label>:531                                     ; preds = %520
  %532 = load %union.rec*, %union.rec** %LCMfilename, align 8
  %533 = bitcast %union.rec* %532 to %struct.word_type*
  %534 = getelementptr inbounds %struct.word_type, %struct.word_type* %533, i32 0, i32 1
  %535 = bitcast %union.FIRST_UNION* %534 to %struct.anon*
  %536 = getelementptr inbounds %struct.anon, %struct.anon* %535, i32 0, i32 0
  %537 = load i8, i8* %536, align 1
  %538 = zext i8 %537 to i32
  %539 = icmp eq i32 %538, 12
  br i1 %539, label %546, label %540

; <label>:540                                     ; preds = %531
  %541 = load %union.rec*, %union.rec** %LCMfilename, align 8
  %542 = bitcast %union.rec* %541 to %struct.word_type*
  %543 = getelementptr inbounds %struct.word_type, %struct.word_type* %542, i32 0, i32 1
  %544 = bitcast %union.FIRST_UNION* %543 to %struct.FILE_POS*
  %545 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.82, i32 0, i32 0), i32 1, %struct.FILE_POS* %544)
  br label %546

; <label>:546                                     ; preds = %540, %531, %520
  br label %616

; <label>:547                                     ; preds = %484
  %548 = load %union.rec*, %union.rec** %y, align 8
  %549 = bitcast %union.rec* %548 to %struct.closure_type*
  %550 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %549, i32 0, i32 5
  %551 = load %union.rec*, %union.rec** %550, align 8
  %552 = load %union.rec*, %union.rec** @fd_recode, align 8
  %553 = icmp eq %union.rec* %551, %552
  br i1 %553, label %554, label %612

; <label>:554                                     ; preds = %547
  %555 = load %union.rec*, %union.rec** %y, align 8
  %556 = bitcast %union.rec* %555 to %struct.word_type*
  %557 = getelementptr inbounds %struct.word_type, %struct.word_type* %556, i32 0, i32 0
  %558 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %557, i32 0, i64 0
  %559 = getelementptr inbounds %struct.LIST, %struct.LIST* %558, i32 0, i32 1
  %560 = load %union.rec*, %union.rec** %559, align 8
  %561 = bitcast %union.rec* %560 to %struct.word_type*
  %562 = getelementptr inbounds %struct.word_type, %struct.word_type* %561, i32 0, i32 0
  %563 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %562, i32 0, i64 1
  %564 = getelementptr inbounds %struct.LIST, %struct.LIST* %563, i32 0, i32 0
  %565 = load %union.rec*, %union.rec** %564, align 8
  store %union.rec* %565, %union.rec** %recode, align 8
  br label %566

; <label>:566                                     ; preds = %576, %554
  %567 = load %union.rec*, %union.rec** %recode, align 8
  %568 = bitcast %union.rec* %567 to %struct.word_type*
  %569 = getelementptr inbounds %struct.word_type, %struct.word_type* %568, i32 0, i32 1
  %570 = bitcast %union.FIRST_UNION* %569 to %struct.anon*
  %571 = getelementptr inbounds %struct.anon, %struct.anon* %570, i32 0, i32 0
  %572 = load i8, i8* %571, align 1
  %573 = zext i8 %572 to i32
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %575, label %583

; <label>:575                                     ; preds = %566
  br label %576

; <label>:576                                     ; preds = %575
  %577 = load %union.rec*, %union.rec** %recode, align 8
  %578 = bitcast %union.rec* %577 to %struct.word_type*
  %579 = getelementptr inbounds %struct.word_type, %struct.word_type* %578, i32 0, i32 0
  %580 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %579, i32 0, i64 1
  %581 = getelementptr inbounds %struct.LIST, %struct.LIST* %580, i32 0, i32 0
  %582 = load %union.rec*, %union.rec** %581, align 8
  store %union.rec* %582, %union.rec** %recode, align 8
  br label %566

; <label>:583                                     ; preds = %566
  %584 = load %union.rec*, %union.rec** %recode, align 8
  %585 = call %union.rec* @ReplaceWithTidy(%union.rec* %584, i32 1)
  store %union.rec* %585, %union.rec** %recode, align 8
  %586 = load %union.rec*, %union.rec** %recode, align 8
  %587 = bitcast %union.rec* %586 to %struct.word_type*
  %588 = getelementptr inbounds %struct.word_type, %struct.word_type* %587, i32 0, i32 1
  %589 = bitcast %union.FIRST_UNION* %588 to %struct.anon*
  %590 = getelementptr inbounds %struct.anon, %struct.anon* %589, i32 0, i32 0
  %591 = load i8, i8* %590, align 1
  %592 = zext i8 %591 to i32
  %593 = icmp eq i32 %592, 11
  br i1 %593, label %611, label %594

; <label>:594                                     ; preds = %583
  %595 = load %union.rec*, %union.rec** %recode, align 8
  %596 = bitcast %union.rec* %595 to %struct.word_type*
  %597 = getelementptr inbounds %struct.word_type, %struct.word_type* %596, i32 0, i32 1
  %598 = bitcast %union.FIRST_UNION* %597 to %struct.anon*
  %599 = getelementptr inbounds %struct.anon, %struct.anon* %598, i32 0, i32 0
  %600 = load i8, i8* %599, align 1
  %601 = zext i8 %600 to i32
  %602 = icmp eq i32 %601, 12
  br i1 %602, label %611, label %603

; <label>:603                                     ; preds = %594
  %604 = load %union.rec*, %union.rec** %recode, align 8
  %605 = bitcast %union.rec* %604 to %struct.word_type*
  %606 = getelementptr inbounds %struct.word_type, %struct.word_type* %605, i32 0, i32 1
  %607 = bitcast %union.FIRST_UNION* %606 to %struct.FILE_POS*
  %608 = load %union.rec*, %union.rec** @fd_recode, align 8
  %609 = call i8* @SymName(%union.rec* %608)
  %610 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.83, i32 0, i32 0), i32 1, %struct.FILE_POS* %607, i8* %609)
  br label %611

; <label>:611                                     ; preds = %603, %594, %583
  br label %615

; <label>:612                                     ; preds = %547
  %613 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %614 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %613, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.84, i32 0, i32 0))
  br label %615

; <label>:615                                     ; preds = %612, %611
  br label %616

; <label>:616                                     ; preds = %615, %546
  br label %617

; <label>:617                                     ; preds = %616, %483
  br label %618

; <label>:618                                     ; preds = %617, %420
  br label %619

; <label>:619                                     ; preds = %618, %357
  br label %620

; <label>:620                                     ; preds = %619, %294
  br label %621

; <label>:621                                     ; preds = %620, %220
  br label %622

; <label>:622                                     ; preds = %621, %146
  br label %623

; <label>:623                                     ; preds = %622
  %624 = load %union.rec*, %union.rec** %ylink, align 8
  %625 = bitcast %union.rec* %624 to %struct.word_type*
  %626 = getelementptr inbounds %struct.word_type, %struct.word_type* %625, i32 0, i32 0
  %627 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %626, i32 0, i64 0
  %628 = getelementptr inbounds %struct.LIST, %struct.LIST* %627, i32 0, i32 1
  %629 = load %union.rec*, %union.rec** %628, align 8
  store %union.rec* %629, %union.rec** %ylink, align 8
  br label %99

; <label>:630                                     ; preds = %99
  %631 = load %union.rec*, %union.rec** %family, align 8
  %632 = icmp eq %union.rec* %631, null
  br i1 %632, label %645, label %633

; <label>:633                                     ; preds = %630
  %634 = load %union.rec*, %union.rec** %face, align 8
  %635 = icmp eq %union.rec* %634, null
  br i1 %635, label %645, label %636

; <label>:636                                     ; preds = %633
  %637 = load %union.rec*, %union.rec** %font_name, align 8
  %638 = icmp eq %union.rec* %637, null
  br i1 %638, label %645, label %639

; <label>:639                                     ; preds = %636
  %640 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %641 = icmp eq %union.rec* %640, null
  br i1 %641, label %645, label %642

; <label>:642                                     ; preds = %639
  %643 = load %union.rec*, %union.rec** %LCMfilename, align 8
  %644 = icmp eq %union.rec* %643, null
  br i1 %644, label %645, label %646

; <label>:645                                     ; preds = %642, %639, %636, %633, %630
  store %union.rec* null, %union.rec** %1
  br label %2778

; <label>:646                                     ; preds = %642
  %647 = load %union.rec*, %union.rec** @font_root, align 8
  %648 = bitcast %union.rec* %647 to %struct.word_type*
  %649 = getelementptr inbounds %struct.word_type, %struct.word_type* %648, i32 0, i32 0
  %650 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %649, i32 0, i64 0
  %651 = getelementptr inbounds %struct.LIST, %struct.LIST* %650, i32 0, i32 1
  %652 = load %union.rec*, %union.rec** %651, align 8
  store %union.rec* %652, %union.rec** %link, align 8
  br label %653

; <label>:653                                     ; preds = %695, %646
  %654 = load %union.rec*, %union.rec** %link, align 8
  %655 = load %union.rec*, %union.rec** @font_root, align 8
  %656 = icmp ne %union.rec* %654, %655
  br i1 %656, label %657, label %702

; <label>:657                                     ; preds = %653
  %658 = load %union.rec*, %union.rec** %link, align 8
  %659 = bitcast %union.rec* %658 to %struct.word_type*
  %660 = getelementptr inbounds %struct.word_type, %struct.word_type* %659, i32 0, i32 0
  %661 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %660, i32 0, i64 1
  %662 = getelementptr inbounds %struct.LIST, %struct.LIST* %661, i32 0, i32 0
  %663 = load %union.rec*, %union.rec** %662, align 8
  store %union.rec* %663, %union.rec** %y, align 8
  br label %664

; <label>:664                                     ; preds = %674, %657
  %665 = load %union.rec*, %union.rec** %y, align 8
  %666 = bitcast %union.rec* %665 to %struct.word_type*
  %667 = getelementptr inbounds %struct.word_type, %struct.word_type* %666, i32 0, i32 1
  %668 = bitcast %union.FIRST_UNION* %667 to %struct.anon*
  %669 = getelementptr inbounds %struct.anon, %struct.anon* %668, i32 0, i32 0
  %670 = load i8, i8* %669, align 1
  %671 = zext i8 %670 to i32
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %673, label %681

; <label>:673                                     ; preds = %664
  br label %674

; <label>:674                                     ; preds = %673
  %675 = load %union.rec*, %union.rec** %y, align 8
  %676 = bitcast %union.rec* %675 to %struct.word_type*
  %677 = getelementptr inbounds %struct.word_type, %struct.word_type* %676, i32 0, i32 0
  %678 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %677, i32 0, i64 1
  %679 = getelementptr inbounds %struct.LIST, %struct.LIST* %678, i32 0, i32 0
  %680 = load %union.rec*, %union.rec** %679, align 8
  store %union.rec* %680, %union.rec** %y, align 8
  br label %664

; <label>:681                                     ; preds = %664
  %682 = load %union.rec*, %union.rec** %y, align 8
  %683 = bitcast %union.rec* %682 to %struct.word_type*
  %684 = getelementptr inbounds %struct.word_type, %struct.word_type* %683, i32 0, i32 4
  %685 = getelementptr inbounds [4 x i8], [4 x i8]* %684, i32 0, i32 0
  %686 = load %union.rec*, %union.rec** %family, align 8
  %687 = bitcast %union.rec* %686 to %struct.word_type*
  %688 = getelementptr inbounds %struct.word_type, %struct.word_type* %687, i32 0, i32 4
  %689 = getelementptr inbounds [4 x i8], [4 x i8]* %688, i32 0, i32 0
  %690 = call i32 @strcmp(i8* %685, i8* %689) #5
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %692, label %694

; <label>:692                                     ; preds = %681
  %693 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %693, %union.rec** %family, align 8
  br label %702

; <label>:694                                     ; preds = %681
  br label %695

; <label>:695                                     ; preds = %694
  %696 = load %union.rec*, %union.rec** %link, align 8
  %697 = bitcast %union.rec* %696 to %struct.word_type*
  %698 = getelementptr inbounds %struct.word_type, %struct.word_type* %697, i32 0, i32 0
  %699 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %698, i32 0, i64 0
  %700 = getelementptr inbounds %struct.LIST, %struct.LIST* %699, i32 0, i32 1
  %701 = load %union.rec*, %union.rec** %700, align 8
  store %union.rec* %701, %union.rec** %link, align 8
  br label %653

; <label>:702                                     ; preds = %692, %653
  %703 = load %union.rec*, %union.rec** %link, align 8
  %704 = load %union.rec*, %union.rec** @font_root, align 8
  %705 = icmp eq %union.rec* %703, %704
  br i1 %705, label %706, label %822

; <label>:706                                     ; preds = %702
  %707 = load %union.rec*, %union.rec** %family, align 8
  %708 = bitcast %union.rec* %707 to %struct.word_type*
  %709 = getelementptr inbounds %struct.word_type, %struct.word_type* %708, i32 0, i32 0
  %710 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %709, i32 0, i64 1
  %711 = getelementptr inbounds %struct.LIST, %struct.LIST* %710, i32 0, i32 1
  %712 = load %union.rec*, %union.rec** %711, align 8
  store %union.rec* %712, %union.rec** @xx_link, align 8
  %713 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %713, %union.rec** @zz_hold, align 8
  %714 = load %union.rec*, %union.rec** @zz_hold, align 8
  %715 = bitcast %union.rec* %714 to %struct.word_type*
  %716 = getelementptr inbounds %struct.word_type, %struct.word_type* %715, i32 0, i32 0
  %717 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %716, i32 0, i64 0
  %718 = getelementptr inbounds %struct.LIST, %struct.LIST* %717, i32 0, i32 1
  %719 = load %union.rec*, %union.rec** %718, align 8
  %720 = load %union.rec*, %union.rec** @zz_hold, align 8
  %721 = icmp eq %union.rec* %719, %720
  br i1 %721, label %722, label %723

; <label>:722                                     ; preds = %706
  br label %764

; <label>:723                                     ; preds = %706
  %724 = load %union.rec*, %union.rec** @zz_hold, align 8
  %725 = bitcast %union.rec* %724 to %struct.word_type*
  %726 = getelementptr inbounds %struct.word_type, %struct.word_type* %725, i32 0, i32 0
  %727 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %726, i32 0, i64 0
  %728 = getelementptr inbounds %struct.LIST, %struct.LIST* %727, i32 0, i32 1
  %729 = load %union.rec*, %union.rec** %728, align 8
  store %union.rec* %729, %union.rec** @zz_res, align 8
  %730 = load %union.rec*, %union.rec** @zz_hold, align 8
  %731 = bitcast %union.rec* %730 to %struct.word_type*
  %732 = getelementptr inbounds %struct.word_type, %struct.word_type* %731, i32 0, i32 0
  %733 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %732, i32 0, i64 0
  %734 = getelementptr inbounds %struct.LIST, %struct.LIST* %733, i32 0, i32 0
  %735 = load %union.rec*, %union.rec** %734, align 8
  %736 = load %union.rec*, %union.rec** @zz_res, align 8
  %737 = bitcast %union.rec* %736 to %struct.word_type*
  %738 = getelementptr inbounds %struct.word_type, %struct.word_type* %737, i32 0, i32 0
  %739 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %738, i32 0, i64 0
  %740 = getelementptr inbounds %struct.LIST, %struct.LIST* %739, i32 0, i32 0
  store %union.rec* %735, %union.rec** %740, align 8
  %741 = load %union.rec*, %union.rec** @zz_res, align 8
  %742 = load %union.rec*, %union.rec** @zz_hold, align 8
  %743 = bitcast %union.rec* %742 to %struct.word_type*
  %744 = getelementptr inbounds %struct.word_type, %struct.word_type* %743, i32 0, i32 0
  %745 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %744, i32 0, i64 0
  %746 = getelementptr inbounds %struct.LIST, %struct.LIST* %745, i32 0, i32 0
  %747 = load %union.rec*, %union.rec** %746, align 8
  %748 = bitcast %union.rec* %747 to %struct.word_type*
  %749 = getelementptr inbounds %struct.word_type, %struct.word_type* %748, i32 0, i32 0
  %750 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %749, i32 0, i64 0
  %751 = getelementptr inbounds %struct.LIST, %struct.LIST* %750, i32 0, i32 1
  store %union.rec* %741, %union.rec** %751, align 8
  %752 = load %union.rec*, %union.rec** @zz_hold, align 8
  %753 = load %union.rec*, %union.rec** @zz_hold, align 8
  %754 = bitcast %union.rec* %753 to %struct.word_type*
  %755 = getelementptr inbounds %struct.word_type, %struct.word_type* %754, i32 0, i32 0
  %756 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %755, i32 0, i64 0
  %757 = getelementptr inbounds %struct.LIST, %struct.LIST* %756, i32 0, i32 1
  store %union.rec* %752, %union.rec** %757, align 8
  %758 = load %union.rec*, %union.rec** @zz_hold, align 8
  %759 = bitcast %union.rec* %758 to %struct.word_type*
  %760 = getelementptr inbounds %struct.word_type, %struct.word_type* %759, i32 0, i32 0
  %761 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %760, i32 0, i64 0
  %762 = getelementptr inbounds %struct.LIST, %struct.LIST* %761, i32 0, i32 0
  store %union.rec* %752, %union.rec** %762, align 8
  %763 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %764

; <label>:764                                     ; preds = %723, %722
  %765 = phi %union.rec* [ null, %722 ], [ %763, %723 ]
  %766 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %766, %union.rec** @zz_res, align 8
  %767 = load %union.rec*, %union.rec** @font_root, align 8
  store %union.rec* %767, %union.rec** @zz_hold, align 8
  %768 = load %union.rec*, %union.rec** @zz_hold, align 8
  %769 = icmp eq %union.rec* %768, null
  br i1 %769, label %770, label %772

; <label>:770                                     ; preds = %764
  %771 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %820

; <label>:772                                     ; preds = %764
  %773 = load %union.rec*, %union.rec** @zz_res, align 8
  %774 = icmp eq %union.rec* %773, null
  br i1 %774, label %775, label %777

; <label>:775                                     ; preds = %772
  %776 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %818

; <label>:777                                     ; preds = %772
  %778 = load %union.rec*, %union.rec** @zz_hold, align 8
  %779 = bitcast %union.rec* %778 to %struct.word_type*
  %780 = getelementptr inbounds %struct.word_type, %struct.word_type* %779, i32 0, i32 0
  %781 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %780, i32 0, i64 0
  %782 = getelementptr inbounds %struct.LIST, %struct.LIST* %781, i32 0, i32 0
  %783 = load %union.rec*, %union.rec** %782, align 8
  store %union.rec* %783, %union.rec** @zz_tmp, align 8
  %784 = load %union.rec*, %union.rec** @zz_res, align 8
  %785 = bitcast %union.rec* %784 to %struct.word_type*
  %786 = getelementptr inbounds %struct.word_type, %struct.word_type* %785, i32 0, i32 0
  %787 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %786, i32 0, i64 0
  %788 = getelementptr inbounds %struct.LIST, %struct.LIST* %787, i32 0, i32 0
  %789 = load %union.rec*, %union.rec** %788, align 8
  %790 = load %union.rec*, %union.rec** @zz_hold, align 8
  %791 = bitcast %union.rec* %790 to %struct.word_type*
  %792 = getelementptr inbounds %struct.word_type, %struct.word_type* %791, i32 0, i32 0
  %793 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %792, i32 0, i64 0
  %794 = getelementptr inbounds %struct.LIST, %struct.LIST* %793, i32 0, i32 0
  store %union.rec* %789, %union.rec** %794, align 8
  %795 = load %union.rec*, %union.rec** @zz_hold, align 8
  %796 = load %union.rec*, %union.rec** @zz_res, align 8
  %797 = bitcast %union.rec* %796 to %struct.word_type*
  %798 = getelementptr inbounds %struct.word_type, %struct.word_type* %797, i32 0, i32 0
  %799 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %798, i32 0, i64 0
  %800 = getelementptr inbounds %struct.LIST, %struct.LIST* %799, i32 0, i32 0
  %801 = load %union.rec*, %union.rec** %800, align 8
  %802 = bitcast %union.rec* %801 to %struct.word_type*
  %803 = getelementptr inbounds %struct.word_type, %struct.word_type* %802, i32 0, i32 0
  %804 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %803, i32 0, i64 0
  %805 = getelementptr inbounds %struct.LIST, %struct.LIST* %804, i32 0, i32 1
  store %union.rec* %795, %union.rec** %805, align 8
  %806 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %807 = load %union.rec*, %union.rec** @zz_res, align 8
  %808 = bitcast %union.rec* %807 to %struct.word_type*
  %809 = getelementptr inbounds %struct.word_type, %struct.word_type* %808, i32 0, i32 0
  %810 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %809, i32 0, i64 0
  %811 = getelementptr inbounds %struct.LIST, %struct.LIST* %810, i32 0, i32 0
  store %union.rec* %806, %union.rec** %811, align 8
  %812 = load %union.rec*, %union.rec** @zz_res, align 8
  %813 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %814 = bitcast %union.rec* %813 to %struct.word_type*
  %815 = getelementptr inbounds %struct.word_type, %struct.word_type* %814, i32 0, i32 0
  %816 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %815, i32 0, i64 0
  %817 = getelementptr inbounds %struct.LIST, %struct.LIST* %816, i32 0, i32 1
  store %union.rec* %812, %union.rec** %817, align 8
  br label %818

; <label>:818                                     ; preds = %777, %775
  %819 = phi %union.rec* [ %776, %775 ], [ %812, %777 ]
  br label %820

; <label>:820                                     ; preds = %818, %770
  %821 = phi %union.rec* [ %771, %770 ], [ %819, %818 ]
  br label %822

; <label>:822                                     ; preds = %820, %702
  %823 = load %union.rec*, %union.rec** %family, align 8
  %824 = bitcast %union.rec* %823 to %struct.word_type*
  %825 = getelementptr inbounds %struct.word_type, %struct.word_type* %824, i32 0, i32 0
  %826 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %825, i32 0, i64 0
  %827 = getelementptr inbounds %struct.LIST, %struct.LIST* %826, i32 0, i32 1
  %828 = load %union.rec*, %union.rec** %827, align 8
  store %union.rec* %828, %union.rec** %link, align 8
  br label %829

; <label>:829                                     ; preds = %891, %822
  %830 = load %union.rec*, %union.rec** %link, align 8
  %831 = load %union.rec*, %union.rec** %family, align 8
  %832 = icmp ne %union.rec* %830, %831
  br i1 %832, label %833, label %898

; <label>:833                                     ; preds = %829
  %834 = load %union.rec*, %union.rec** %link, align 8
  %835 = bitcast %union.rec* %834 to %struct.word_type*
  %836 = getelementptr inbounds %struct.word_type, %struct.word_type* %835, i32 0, i32 0
  %837 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %836, i32 0, i64 1
  %838 = getelementptr inbounds %struct.LIST, %struct.LIST* %837, i32 0, i32 0
  %839 = load %union.rec*, %union.rec** %838, align 8
  store %union.rec* %839, %union.rec** %y, align 8
  br label %840

; <label>:840                                     ; preds = %850, %833
  %841 = load %union.rec*, %union.rec** %y, align 8
  %842 = bitcast %union.rec* %841 to %struct.word_type*
  %843 = getelementptr inbounds %struct.word_type, %struct.word_type* %842, i32 0, i32 1
  %844 = bitcast %union.FIRST_UNION* %843 to %struct.anon*
  %845 = getelementptr inbounds %struct.anon, %struct.anon* %844, i32 0, i32 0
  %846 = load i8, i8* %845, align 1
  %847 = zext i8 %846 to i32
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %849, label %857

; <label>:849                                     ; preds = %840
  br label %850

; <label>:850                                     ; preds = %849
  %851 = load %union.rec*, %union.rec** %y, align 8
  %852 = bitcast %union.rec* %851 to %struct.word_type*
  %853 = getelementptr inbounds %struct.word_type, %struct.word_type* %852, i32 0, i32 0
  %854 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %853, i32 0, i64 1
  %855 = getelementptr inbounds %struct.LIST, %struct.LIST* %854, i32 0, i32 0
  %856 = load %union.rec*, %union.rec** %855, align 8
  store %union.rec* %856, %union.rec** %y, align 8
  br label %840

; <label>:857                                     ; preds = %840
  %858 = load %union.rec*, %union.rec** %y, align 8
  %859 = bitcast %union.rec* %858 to %struct.word_type*
  %860 = getelementptr inbounds %struct.word_type, %struct.word_type* %859, i32 0, i32 4
  %861 = getelementptr inbounds [4 x i8], [4 x i8]* %860, i32 0, i32 0
  %862 = load %union.rec*, %union.rec** %face, align 8
  %863 = bitcast %union.rec* %862 to %struct.word_type*
  %864 = getelementptr inbounds %struct.word_type, %struct.word_type* %863, i32 0, i32 4
  %865 = getelementptr inbounds [4 x i8], [4 x i8]* %864, i32 0, i32 0
  %866 = call i32 @strcmp(i8* %861, i8* %865) #5
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %868, label %890

; <label>:868                                     ; preds = %857
  %869 = load %union.rec*, %union.rec** %face, align 8
  %870 = bitcast %union.rec* %869 to %struct.word_type*
  %871 = getelementptr inbounds %struct.word_type, %struct.word_type* %870, i32 0, i32 1
  %872 = bitcast %union.FIRST_UNION* %871 to %struct.FILE_POS*
  %873 = load %union.rec*, %union.rec** %family, align 8
  %874 = bitcast %union.rec* %873 to %struct.word_type*
  %875 = getelementptr inbounds %struct.word_type, %struct.word_type* %874, i32 0, i32 4
  %876 = getelementptr inbounds [4 x i8], [4 x i8]* %875, i32 0, i32 0
  %877 = load %union.rec*, %union.rec** %face, align 8
  %878 = bitcast %union.rec* %877 to %struct.word_type*
  %879 = getelementptr inbounds %struct.word_type, %struct.word_type* %878, i32 0, i32 4
  %880 = getelementptr inbounds [4 x i8], [4 x i8]* %879, i32 0, i32 0
  %881 = load %union.rec*, %union.rec** %y, align 8
  %882 = bitcast %union.rec* %881 to %struct.word_type*
  %883 = getelementptr inbounds %struct.word_type, %struct.word_type* %882, i32 0, i32 1
  %884 = bitcast %union.FIRST_UNION* %883 to %struct.FILE_POS*
  %885 = call i8* @EchoFilePos(%struct.FILE_POS* %884)
  %886 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.85, i32 0, i32 0), i32 2, %struct.FILE_POS* %872, i8* %876, i8* %880, i8* %885)
  %887 = load %union.rec*, %union.rec** %fontdef_obj, align 8
  %888 = call i32 @DisposeObject(%union.rec* %887)
  %889 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %889, %union.rec** %1
  br label %2778

; <label>:890                                     ; preds = %857
  br label %891

; <label>:891                                     ; preds = %890
  %892 = load %union.rec*, %union.rec** %link, align 8
  %893 = bitcast %union.rec* %892 to %struct.word_type*
  %894 = getelementptr inbounds %struct.word_type, %struct.word_type* %893, i32 0, i32 0
  %895 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %894, i32 0, i64 0
  %896 = getelementptr inbounds %struct.LIST, %struct.LIST* %895, i32 0, i32 1
  %897 = load %union.rec*, %union.rec** %896, align 8
  store %union.rec* %897, %union.rec** %link, align 8
  br label %829

; <label>:898                                     ; preds = %829
  %899 = load %union.rec*, %union.rec** %face, align 8
  %900 = bitcast %union.rec* %899 to %struct.word_type*
  %901 = getelementptr inbounds %struct.word_type, %struct.word_type* %900, i32 0, i32 0
  %902 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %901, i32 0, i64 1
  %903 = getelementptr inbounds %struct.LIST, %struct.LIST* %902, i32 0, i32 1
  %904 = load %union.rec*, %union.rec** %903, align 8
  store %union.rec* %904, %union.rec** @xx_link, align 8
  %905 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %905, %union.rec** @zz_hold, align 8
  %906 = load %union.rec*, %union.rec** @zz_hold, align 8
  %907 = bitcast %union.rec* %906 to %struct.word_type*
  %908 = getelementptr inbounds %struct.word_type, %struct.word_type* %907, i32 0, i32 0
  %909 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %908, i32 0, i64 0
  %910 = getelementptr inbounds %struct.LIST, %struct.LIST* %909, i32 0, i32 1
  %911 = load %union.rec*, %union.rec** %910, align 8
  %912 = load %union.rec*, %union.rec** @zz_hold, align 8
  %913 = icmp eq %union.rec* %911, %912
  br i1 %913, label %914, label %915

; <label>:914                                     ; preds = %898
  br label %956

; <label>:915                                     ; preds = %898
  %916 = load %union.rec*, %union.rec** @zz_hold, align 8
  %917 = bitcast %union.rec* %916 to %struct.word_type*
  %918 = getelementptr inbounds %struct.word_type, %struct.word_type* %917, i32 0, i32 0
  %919 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %918, i32 0, i64 0
  %920 = getelementptr inbounds %struct.LIST, %struct.LIST* %919, i32 0, i32 1
  %921 = load %union.rec*, %union.rec** %920, align 8
  store %union.rec* %921, %union.rec** @zz_res, align 8
  %922 = load %union.rec*, %union.rec** @zz_hold, align 8
  %923 = bitcast %union.rec* %922 to %struct.word_type*
  %924 = getelementptr inbounds %struct.word_type, %struct.word_type* %923, i32 0, i32 0
  %925 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %924, i32 0, i64 0
  %926 = getelementptr inbounds %struct.LIST, %struct.LIST* %925, i32 0, i32 0
  %927 = load %union.rec*, %union.rec** %926, align 8
  %928 = load %union.rec*, %union.rec** @zz_res, align 8
  %929 = bitcast %union.rec* %928 to %struct.word_type*
  %930 = getelementptr inbounds %struct.word_type, %struct.word_type* %929, i32 0, i32 0
  %931 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %930, i32 0, i64 0
  %932 = getelementptr inbounds %struct.LIST, %struct.LIST* %931, i32 0, i32 0
  store %union.rec* %927, %union.rec** %932, align 8
  %933 = load %union.rec*, %union.rec** @zz_res, align 8
  %934 = load %union.rec*, %union.rec** @zz_hold, align 8
  %935 = bitcast %union.rec* %934 to %struct.word_type*
  %936 = getelementptr inbounds %struct.word_type, %struct.word_type* %935, i32 0, i32 0
  %937 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %936, i32 0, i64 0
  %938 = getelementptr inbounds %struct.LIST, %struct.LIST* %937, i32 0, i32 0
  %939 = load %union.rec*, %union.rec** %938, align 8
  %940 = bitcast %union.rec* %939 to %struct.word_type*
  %941 = getelementptr inbounds %struct.word_type, %struct.word_type* %940, i32 0, i32 0
  %942 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %941, i32 0, i64 0
  %943 = getelementptr inbounds %struct.LIST, %struct.LIST* %942, i32 0, i32 1
  store %union.rec* %933, %union.rec** %943, align 8
  %944 = load %union.rec*, %union.rec** @zz_hold, align 8
  %945 = load %union.rec*, %union.rec** @zz_hold, align 8
  %946 = bitcast %union.rec* %945 to %struct.word_type*
  %947 = getelementptr inbounds %struct.word_type, %struct.word_type* %946, i32 0, i32 0
  %948 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %947, i32 0, i64 0
  %949 = getelementptr inbounds %struct.LIST, %struct.LIST* %948, i32 0, i32 1
  store %union.rec* %944, %union.rec** %949, align 8
  %950 = load %union.rec*, %union.rec** @zz_hold, align 8
  %951 = bitcast %union.rec* %950 to %struct.word_type*
  %952 = getelementptr inbounds %struct.word_type, %struct.word_type* %951, i32 0, i32 0
  %953 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %952, i32 0, i64 0
  %954 = getelementptr inbounds %struct.LIST, %struct.LIST* %953, i32 0, i32 0
  store %union.rec* %944, %union.rec** %954, align 8
  %955 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %956

; <label>:956                                     ; preds = %915, %914
  %957 = phi %union.rec* [ null, %914 ], [ %955, %915 ]
  %958 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %958, %union.rec** @zz_res, align 8
  %959 = load %union.rec*, %union.rec** %family, align 8
  store %union.rec* %959, %union.rec** @zz_hold, align 8
  %960 = load %union.rec*, %union.rec** @zz_hold, align 8
  %961 = icmp eq %union.rec* %960, null
  br i1 %961, label %962, label %964

; <label>:962                                     ; preds = %956
  %963 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1012

; <label>:964                                     ; preds = %956
  %965 = load %union.rec*, %union.rec** @zz_res, align 8
  %966 = icmp eq %union.rec* %965, null
  br i1 %966, label %967, label %969

; <label>:967                                     ; preds = %964
  %968 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1010

; <label>:969                                     ; preds = %964
  %970 = load %union.rec*, %union.rec** @zz_hold, align 8
  %971 = bitcast %union.rec* %970 to %struct.word_type*
  %972 = getelementptr inbounds %struct.word_type, %struct.word_type* %971, i32 0, i32 0
  %973 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %972, i32 0, i64 0
  %974 = getelementptr inbounds %struct.LIST, %struct.LIST* %973, i32 0, i32 0
  %975 = load %union.rec*, %union.rec** %974, align 8
  store %union.rec* %975, %union.rec** @zz_tmp, align 8
  %976 = load %union.rec*, %union.rec** @zz_res, align 8
  %977 = bitcast %union.rec* %976 to %struct.word_type*
  %978 = getelementptr inbounds %struct.word_type, %struct.word_type* %977, i32 0, i32 0
  %979 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %978, i32 0, i64 0
  %980 = getelementptr inbounds %struct.LIST, %struct.LIST* %979, i32 0, i32 0
  %981 = load %union.rec*, %union.rec** %980, align 8
  %982 = load %union.rec*, %union.rec** @zz_hold, align 8
  %983 = bitcast %union.rec* %982 to %struct.word_type*
  %984 = getelementptr inbounds %struct.word_type, %struct.word_type* %983, i32 0, i32 0
  %985 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %984, i32 0, i64 0
  %986 = getelementptr inbounds %struct.LIST, %struct.LIST* %985, i32 0, i32 0
  store %union.rec* %981, %union.rec** %986, align 8
  %987 = load %union.rec*, %union.rec** @zz_hold, align 8
  %988 = load %union.rec*, %union.rec** @zz_res, align 8
  %989 = bitcast %union.rec* %988 to %struct.word_type*
  %990 = getelementptr inbounds %struct.word_type, %struct.word_type* %989, i32 0, i32 0
  %991 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %990, i32 0, i64 0
  %992 = getelementptr inbounds %struct.LIST, %struct.LIST* %991, i32 0, i32 0
  %993 = load %union.rec*, %union.rec** %992, align 8
  %994 = bitcast %union.rec* %993 to %struct.word_type*
  %995 = getelementptr inbounds %struct.word_type, %struct.word_type* %994, i32 0, i32 0
  %996 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %995, i32 0, i64 0
  %997 = getelementptr inbounds %struct.LIST, %struct.LIST* %996, i32 0, i32 1
  store %union.rec* %987, %union.rec** %997, align 8
  %998 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %999 = load %union.rec*, %union.rec** @zz_res, align 8
  %1000 = bitcast %union.rec* %999 to %struct.word_type*
  %1001 = getelementptr inbounds %struct.word_type, %struct.word_type* %1000, i32 0, i32 0
  %1002 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1001, i32 0, i64 0
  %1003 = getelementptr inbounds %struct.LIST, %struct.LIST* %1002, i32 0, i32 0
  store %union.rec* %998, %union.rec** %1003, align 8
  %1004 = load %union.rec*, %union.rec** @zz_res, align 8
  %1005 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1006 = bitcast %union.rec* %1005 to %struct.word_type*
  %1007 = getelementptr inbounds %struct.word_type, %struct.word_type* %1006, i32 0, i32 0
  %1008 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1007, i32 0, i64 0
  %1009 = getelementptr inbounds %struct.LIST, %struct.LIST* %1008, i32 0, i32 1
  store %union.rec* %1004, %union.rec** %1009, align 8
  br label %1010

; <label>:1010                                    ; preds = %969, %967
  %1011 = phi %union.rec* [ %968, %967 ], [ %1004, %969 ]
  br label %1012

; <label>:1012                                    ; preds = %1010, %962
  %1013 = phi %union.rec* [ %963, %962 ], [ %1011, %1010 ]
  %1014 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1015 = zext i8 %1014 to i32
  store i32 %1015, i32* @zz_size, align 4
  %1016 = sext i32 %1015 to i64
  %1017 = icmp uge i64 %1016, 265
  br i1 %1017, label %1018, label %1021

; <label>:1018                                    ; preds = %1012
  %1019 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1020 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %1019)
  br label %1046

; <label>:1021                                    ; preds = %1012
  %1022 = load i32, i32* @zz_size, align 4
  %1023 = sext i32 %1022 to i64
  %1024 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1023
  %1025 = load %union.rec*, %union.rec** %1024, align 8
  %1026 = icmp eq %union.rec* %1025, null
  br i1 %1026, label %1027, label %1031

; <label>:1027                                    ; preds = %1021
  %1028 = load i32, i32* @zz_size, align 4
  %1029 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1030 = call %union.rec* @GetMemory(i32 %1028, %struct.FILE_POS* %1029)
  store %union.rec* %1030, %union.rec** @zz_hold, align 8
  br label %1045

; <label>:1031                                    ; preds = %1021
  %1032 = load i32, i32* @zz_size, align 4
  %1033 = sext i32 %1032 to i64
  %1034 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1033
  %1035 = load %union.rec*, %union.rec** %1034, align 8
  store %union.rec* %1035, %union.rec** @zz_hold, align 8
  store %union.rec* %1035, %union.rec** @zz_hold, align 8
  %1036 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1037 = bitcast %union.rec* %1036 to %struct.word_type*
  %1038 = getelementptr inbounds %struct.word_type, %struct.word_type* %1037, i32 0, i32 0
  %1039 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1038, i32 0, i64 0
  %1040 = getelementptr inbounds %struct.LIST, %struct.LIST* %1039, i32 0, i32 0
  %1041 = load %union.rec*, %union.rec** %1040, align 8
  %1042 = load i32, i32* @zz_size, align 4
  %1043 = sext i32 %1042 to i64
  %1044 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1043
  store %union.rec* %1041, %union.rec** %1044, align 8
  br label %1045

; <label>:1045                                    ; preds = %1031, %1027
  br label %1046

; <label>:1046                                    ; preds = %1045, %1018
  %1047 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1048 = bitcast %union.rec* %1047 to %struct.word_type*
  %1049 = getelementptr inbounds %struct.word_type, %struct.word_type* %1048, i32 0, i32 1
  %1050 = bitcast %union.FIRST_UNION* %1049 to %struct.anon*
  %1051 = getelementptr inbounds %struct.anon, %struct.anon* %1050, i32 0, i32 0
  store i8 0, i8* %1051, align 1
  %1052 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1053 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1054 = bitcast %union.rec* %1053 to %struct.word_type*
  %1055 = getelementptr inbounds %struct.word_type, %struct.word_type* %1054, i32 0, i32 0
  %1056 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1055, i32 0, i64 1
  %1057 = getelementptr inbounds %struct.LIST, %struct.LIST* %1056, i32 0, i32 1
  store %union.rec* %1052, %union.rec** %1057, align 8
  %1058 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1059 = bitcast %union.rec* %1058 to %struct.word_type*
  %1060 = getelementptr inbounds %struct.word_type, %struct.word_type* %1059, i32 0, i32 0
  %1061 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1060, i32 0, i64 1
  %1062 = getelementptr inbounds %struct.LIST, %struct.LIST* %1061, i32 0, i32 0
  store %union.rec* %1052, %union.rec** %1062, align 8
  %1063 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1064 = bitcast %union.rec* %1063 to %struct.word_type*
  %1065 = getelementptr inbounds %struct.word_type, %struct.word_type* %1064, i32 0, i32 0
  %1066 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1065, i32 0, i64 0
  %1067 = getelementptr inbounds %struct.LIST, %struct.LIST* %1066, i32 0, i32 1
  store %union.rec* %1052, %union.rec** %1067, align 8
  %1068 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1069 = bitcast %union.rec* %1068 to %struct.word_type*
  %1070 = getelementptr inbounds %struct.word_type, %struct.word_type* %1069, i32 0, i32 0
  %1071 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1070, i32 0, i64 0
  %1072 = getelementptr inbounds %struct.LIST, %struct.LIST* %1071, i32 0, i32 0
  store %union.rec* %1052, %union.rec** %1072, align 8
  store %union.rec* %1052, %union.rec** @xx_link, align 8
  %1073 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1073, %union.rec** @zz_res, align 8
  %1074 = load %union.rec*, %union.rec** %face, align 8
  store %union.rec* %1074, %union.rec** @zz_hold, align 8
  %1075 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1076 = icmp eq %union.rec* %1075, null
  br i1 %1076, label %1077, label %1079

; <label>:1077                                    ; preds = %1046
  %1078 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1127

; <label>:1079                                    ; preds = %1046
  %1080 = load %union.rec*, %union.rec** @zz_res, align 8
  %1081 = icmp eq %union.rec* %1080, null
  br i1 %1081, label %1082, label %1084

; <label>:1082                                    ; preds = %1079
  %1083 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1125

; <label>:1084                                    ; preds = %1079
  %1085 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1086 = bitcast %union.rec* %1085 to %struct.word_type*
  %1087 = getelementptr inbounds %struct.word_type, %struct.word_type* %1086, i32 0, i32 0
  %1088 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1087, i32 0, i64 0
  %1089 = getelementptr inbounds %struct.LIST, %struct.LIST* %1088, i32 0, i32 0
  %1090 = load %union.rec*, %union.rec** %1089, align 8
  store %union.rec* %1090, %union.rec** @zz_tmp, align 8
  %1091 = load %union.rec*, %union.rec** @zz_res, align 8
  %1092 = bitcast %union.rec* %1091 to %struct.word_type*
  %1093 = getelementptr inbounds %struct.word_type, %struct.word_type* %1092, i32 0, i32 0
  %1094 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1093, i32 0, i64 0
  %1095 = getelementptr inbounds %struct.LIST, %struct.LIST* %1094, i32 0, i32 0
  %1096 = load %union.rec*, %union.rec** %1095, align 8
  %1097 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1098 = bitcast %union.rec* %1097 to %struct.word_type*
  %1099 = getelementptr inbounds %struct.word_type, %struct.word_type* %1098, i32 0, i32 0
  %1100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1099, i32 0, i64 0
  %1101 = getelementptr inbounds %struct.LIST, %struct.LIST* %1100, i32 0, i32 0
  store %union.rec* %1096, %union.rec** %1101, align 8
  %1102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1103 = load %union.rec*, %union.rec** @zz_res, align 8
  %1104 = bitcast %union.rec* %1103 to %struct.word_type*
  %1105 = getelementptr inbounds %struct.word_type, %struct.word_type* %1104, i32 0, i32 0
  %1106 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1105, i32 0, i64 0
  %1107 = getelementptr inbounds %struct.LIST, %struct.LIST* %1106, i32 0, i32 0
  %1108 = load %union.rec*, %union.rec** %1107, align 8
  %1109 = bitcast %union.rec* %1108 to %struct.word_type*
  %1110 = getelementptr inbounds %struct.word_type, %struct.word_type* %1109, i32 0, i32 0
  %1111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1110, i32 0, i64 0
  %1112 = getelementptr inbounds %struct.LIST, %struct.LIST* %1111, i32 0, i32 1
  store %union.rec* %1102, %union.rec** %1112, align 8
  %1113 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1114 = load %union.rec*, %union.rec** @zz_res, align 8
  %1115 = bitcast %union.rec* %1114 to %struct.word_type*
  %1116 = getelementptr inbounds %struct.word_type, %struct.word_type* %1115, i32 0, i32 0
  %1117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1116, i32 0, i64 0
  %1118 = getelementptr inbounds %struct.LIST, %struct.LIST* %1117, i32 0, i32 0
  store %union.rec* %1113, %union.rec** %1118, align 8
  %1119 = load %union.rec*, %union.rec** @zz_res, align 8
  %1120 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1121 = bitcast %union.rec* %1120 to %struct.word_type*
  %1122 = getelementptr inbounds %struct.word_type, %struct.word_type* %1121, i32 0, i32 0
  %1123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1122, i32 0, i64 0
  %1124 = getelementptr inbounds %struct.LIST, %struct.LIST* %1123, i32 0, i32 1
  store %union.rec* %1119, %union.rec** %1124, align 8
  br label %1125

; <label>:1125                                    ; preds = %1084, %1082
  %1126 = phi %union.rec* [ %1083, %1082 ], [ %1119, %1084 ]
  br label %1127

; <label>:1127                                    ; preds = %1125, %1077
  %1128 = phi %union.rec* [ %1078, %1077 ], [ %1126, %1125 ]
  %1129 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1129, %union.rec** @zz_res, align 8
  %1130 = load %union.rec*, %union.rec** %font_name, align 8
  store %union.rec* %1130, %union.rec** @zz_hold, align 8
  %1131 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1132 = icmp eq %union.rec* %1131, null
  br i1 %1132, label %1133, label %1135

; <label>:1133                                    ; preds = %1127
  %1134 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1183

; <label>:1135                                    ; preds = %1127
  %1136 = load %union.rec*, %union.rec** @zz_res, align 8
  %1137 = icmp eq %union.rec* %1136, null
  br i1 %1137, label %1138, label %1140

; <label>:1138                                    ; preds = %1135
  %1139 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1181

; <label>:1140                                    ; preds = %1135
  %1141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1142 = bitcast %union.rec* %1141 to %struct.word_type*
  %1143 = getelementptr inbounds %struct.word_type, %struct.word_type* %1142, i32 0, i32 0
  %1144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1143, i32 0, i64 1
  %1145 = getelementptr inbounds %struct.LIST, %struct.LIST* %1144, i32 0, i32 0
  %1146 = load %union.rec*, %union.rec** %1145, align 8
  store %union.rec* %1146, %union.rec** @zz_tmp, align 8
  %1147 = load %union.rec*, %union.rec** @zz_res, align 8
  %1148 = bitcast %union.rec* %1147 to %struct.word_type*
  %1149 = getelementptr inbounds %struct.word_type, %struct.word_type* %1148, i32 0, i32 0
  %1150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1149, i32 0, i64 1
  %1151 = getelementptr inbounds %struct.LIST, %struct.LIST* %1150, i32 0, i32 0
  %1152 = load %union.rec*, %union.rec** %1151, align 8
  %1153 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1154 = bitcast %union.rec* %1153 to %struct.word_type*
  %1155 = getelementptr inbounds %struct.word_type, %struct.word_type* %1154, i32 0, i32 0
  %1156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1155, i32 0, i64 1
  %1157 = getelementptr inbounds %struct.LIST, %struct.LIST* %1156, i32 0, i32 0
  store %union.rec* %1152, %union.rec** %1157, align 8
  %1158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1159 = load %union.rec*, %union.rec** @zz_res, align 8
  %1160 = bitcast %union.rec* %1159 to %struct.word_type*
  %1161 = getelementptr inbounds %struct.word_type, %struct.word_type* %1160, i32 0, i32 0
  %1162 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1161, i32 0, i64 1
  %1163 = getelementptr inbounds %struct.LIST, %struct.LIST* %1162, i32 0, i32 0
  %1164 = load %union.rec*, %union.rec** %1163, align 8
  %1165 = bitcast %union.rec* %1164 to %struct.word_type*
  %1166 = getelementptr inbounds %struct.word_type, %struct.word_type* %1165, i32 0, i32 0
  %1167 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1166, i32 0, i64 1
  %1168 = getelementptr inbounds %struct.LIST, %struct.LIST* %1167, i32 0, i32 1
  store %union.rec* %1158, %union.rec** %1168, align 8
  %1169 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1170 = load %union.rec*, %union.rec** @zz_res, align 8
  %1171 = bitcast %union.rec* %1170 to %struct.word_type*
  %1172 = getelementptr inbounds %struct.word_type, %struct.word_type* %1171, i32 0, i32 0
  %1173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1172, i32 0, i64 1
  %1174 = getelementptr inbounds %struct.LIST, %struct.LIST* %1173, i32 0, i32 0
  store %union.rec* %1169, %union.rec** %1174, align 8
  %1175 = load %union.rec*, %union.rec** @zz_res, align 8
  %1176 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1177 = bitcast %union.rec* %1176 to %struct.word_type*
  %1178 = getelementptr inbounds %struct.word_type, %struct.word_type* %1177, i32 0, i32 0
  %1179 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1178, i32 0, i64 1
  %1180 = getelementptr inbounds %struct.LIST, %struct.LIST* %1179, i32 0, i32 1
  store %union.rec* %1175, %union.rec** %1180, align 8
  br label %1181

; <label>:1181                                    ; preds = %1140, %1138
  %1182 = phi %union.rec* [ %1139, %1138 ], [ %1175, %1140 ]
  br label %1183

; <label>:1183                                    ; preds = %1181, %1133
  %1184 = phi %union.rec* [ %1134, %1133 ], [ %1182, %1181 ]
  %1185 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1186 = zext i8 %1185 to i32
  store i32 %1186, i32* @zz_size, align 4
  %1187 = sext i32 %1186 to i64
  %1188 = icmp uge i64 %1187, 265
  br i1 %1188, label %1189, label %1192

; <label>:1189                                    ; preds = %1183
  %1190 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1191 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %1190)
  br label %1217

; <label>:1192                                    ; preds = %1183
  %1193 = load i32, i32* @zz_size, align 4
  %1194 = sext i32 %1193 to i64
  %1195 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1194
  %1196 = load %union.rec*, %union.rec** %1195, align 8
  %1197 = icmp eq %union.rec* %1196, null
  br i1 %1197, label %1198, label %1202

; <label>:1198                                    ; preds = %1192
  %1199 = load i32, i32* @zz_size, align 4
  %1200 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1201 = call %union.rec* @GetMemory(i32 %1199, %struct.FILE_POS* %1200)
  store %union.rec* %1201, %union.rec** @zz_hold, align 8
  br label %1216

; <label>:1202                                    ; preds = %1192
  %1203 = load i32, i32* @zz_size, align 4
  %1204 = sext i32 %1203 to i64
  %1205 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1204
  %1206 = load %union.rec*, %union.rec** %1205, align 8
  store %union.rec* %1206, %union.rec** @zz_hold, align 8
  store %union.rec* %1206, %union.rec** @zz_hold, align 8
  %1207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1208 = bitcast %union.rec* %1207 to %struct.word_type*
  %1209 = getelementptr inbounds %struct.word_type, %struct.word_type* %1208, i32 0, i32 0
  %1210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1209, i32 0, i64 0
  %1211 = getelementptr inbounds %struct.LIST, %struct.LIST* %1210, i32 0, i32 0
  %1212 = load %union.rec*, %union.rec** %1211, align 8
  %1213 = load i32, i32* @zz_size, align 4
  %1214 = sext i32 %1213 to i64
  %1215 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1214
  store %union.rec* %1212, %union.rec** %1215, align 8
  br label %1216

; <label>:1216                                    ; preds = %1202, %1198
  br label %1217

; <label>:1217                                    ; preds = %1216, %1189
  %1218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1219 = bitcast %union.rec* %1218 to %struct.word_type*
  %1220 = getelementptr inbounds %struct.word_type, %struct.word_type* %1219, i32 0, i32 1
  %1221 = bitcast %union.FIRST_UNION* %1220 to %struct.anon*
  %1222 = getelementptr inbounds %struct.anon, %struct.anon* %1221, i32 0, i32 0
  store i8 0, i8* %1222, align 1
  %1223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1224 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1225 = bitcast %union.rec* %1224 to %struct.word_type*
  %1226 = getelementptr inbounds %struct.word_type, %struct.word_type* %1225, i32 0, i32 0
  %1227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1226, i32 0, i64 1
  %1228 = getelementptr inbounds %struct.LIST, %struct.LIST* %1227, i32 0, i32 1
  store %union.rec* %1223, %union.rec** %1228, align 8
  %1229 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1230 = bitcast %union.rec* %1229 to %struct.word_type*
  %1231 = getelementptr inbounds %struct.word_type, %struct.word_type* %1230, i32 0, i32 0
  %1232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1231, i32 0, i64 1
  %1233 = getelementptr inbounds %struct.LIST, %struct.LIST* %1232, i32 0, i32 0
  store %union.rec* %1223, %union.rec** %1233, align 8
  %1234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1235 = bitcast %union.rec* %1234 to %struct.word_type*
  %1236 = getelementptr inbounds %struct.word_type, %struct.word_type* %1235, i32 0, i32 0
  %1237 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1236, i32 0, i64 0
  %1238 = getelementptr inbounds %struct.LIST, %struct.LIST* %1237, i32 0, i32 1
  store %union.rec* %1223, %union.rec** %1238, align 8
  %1239 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1240 = bitcast %union.rec* %1239 to %struct.word_type*
  %1241 = getelementptr inbounds %struct.word_type, %struct.word_type* %1240, i32 0, i32 0
  %1242 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1241, i32 0, i64 0
  %1243 = getelementptr inbounds %struct.LIST, %struct.LIST* %1242, i32 0, i32 0
  store %union.rec* %1223, %union.rec** %1243, align 8
  store %union.rec* %1223, %union.rec** @xx_link, align 8
  %1244 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1244, %union.rec** @zz_res, align 8
  %1245 = load %union.rec*, %union.rec** %face, align 8
  store %union.rec* %1245, %union.rec** @zz_hold, align 8
  %1246 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1247 = icmp eq %union.rec* %1246, null
  br i1 %1247, label %1248, label %1250

; <label>:1248                                    ; preds = %1217
  %1249 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1298

; <label>:1250                                    ; preds = %1217
  %1251 = load %union.rec*, %union.rec** @zz_res, align 8
  %1252 = icmp eq %union.rec* %1251, null
  br i1 %1252, label %1253, label %1255

; <label>:1253                                    ; preds = %1250
  %1254 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1296

; <label>:1255                                    ; preds = %1250
  %1256 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1257 = bitcast %union.rec* %1256 to %struct.word_type*
  %1258 = getelementptr inbounds %struct.word_type, %struct.word_type* %1257, i32 0, i32 0
  %1259 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1258, i32 0, i64 0
  %1260 = getelementptr inbounds %struct.LIST, %struct.LIST* %1259, i32 0, i32 0
  %1261 = load %union.rec*, %union.rec** %1260, align 8
  store %union.rec* %1261, %union.rec** @zz_tmp, align 8
  %1262 = load %union.rec*, %union.rec** @zz_res, align 8
  %1263 = bitcast %union.rec* %1262 to %struct.word_type*
  %1264 = getelementptr inbounds %struct.word_type, %struct.word_type* %1263, i32 0, i32 0
  %1265 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1264, i32 0, i64 0
  %1266 = getelementptr inbounds %struct.LIST, %struct.LIST* %1265, i32 0, i32 0
  %1267 = load %union.rec*, %union.rec** %1266, align 8
  %1268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1269 = bitcast %union.rec* %1268 to %struct.word_type*
  %1270 = getelementptr inbounds %struct.word_type, %struct.word_type* %1269, i32 0, i32 0
  %1271 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1270, i32 0, i64 0
  %1272 = getelementptr inbounds %struct.LIST, %struct.LIST* %1271, i32 0, i32 0
  store %union.rec* %1267, %union.rec** %1272, align 8
  %1273 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1274 = load %union.rec*, %union.rec** @zz_res, align 8
  %1275 = bitcast %union.rec* %1274 to %struct.word_type*
  %1276 = getelementptr inbounds %struct.word_type, %struct.word_type* %1275, i32 0, i32 0
  %1277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1276, i32 0, i64 0
  %1278 = getelementptr inbounds %struct.LIST, %struct.LIST* %1277, i32 0, i32 0
  %1279 = load %union.rec*, %union.rec** %1278, align 8
  %1280 = bitcast %union.rec* %1279 to %struct.word_type*
  %1281 = getelementptr inbounds %struct.word_type, %struct.word_type* %1280, i32 0, i32 0
  %1282 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1281, i32 0, i64 0
  %1283 = getelementptr inbounds %struct.LIST, %struct.LIST* %1282, i32 0, i32 1
  store %union.rec* %1273, %union.rec** %1283, align 8
  %1284 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1285 = load %union.rec*, %union.rec** @zz_res, align 8
  %1286 = bitcast %union.rec* %1285 to %struct.word_type*
  %1287 = getelementptr inbounds %struct.word_type, %struct.word_type* %1286, i32 0, i32 0
  %1288 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1287, i32 0, i64 0
  %1289 = getelementptr inbounds %struct.LIST, %struct.LIST* %1288, i32 0, i32 0
  store %union.rec* %1284, %union.rec** %1289, align 8
  %1290 = load %union.rec*, %union.rec** @zz_res, align 8
  %1291 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1292 = bitcast %union.rec* %1291 to %struct.word_type*
  %1293 = getelementptr inbounds %struct.word_type, %struct.word_type* %1292, i32 0, i32 0
  %1294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1293, i32 0, i64 0
  %1295 = getelementptr inbounds %struct.LIST, %struct.LIST* %1294, i32 0, i32 1
  store %union.rec* %1290, %union.rec** %1295, align 8
  br label %1296

; <label>:1296                                    ; preds = %1255, %1253
  %1297 = phi %union.rec* [ %1254, %1253 ], [ %1290, %1255 ]
  br label %1298

; <label>:1298                                    ; preds = %1296, %1248
  %1299 = phi %union.rec* [ %1249, %1248 ], [ %1297, %1296 ]
  %1300 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1300, %union.rec** @zz_res, align 8
  %1301 = load %union.rec*, %union.rec** %AFMfilename, align 8
  store %union.rec* %1301, %union.rec** @zz_hold, align 8
  %1302 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1303 = icmp eq %union.rec* %1302, null
  br i1 %1303, label %1304, label %1306

; <label>:1304                                    ; preds = %1298
  %1305 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1354

; <label>:1306                                    ; preds = %1298
  %1307 = load %union.rec*, %union.rec** @zz_res, align 8
  %1308 = icmp eq %union.rec* %1307, null
  br i1 %1308, label %1309, label %1311

; <label>:1309                                    ; preds = %1306
  %1310 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1352

; <label>:1311                                    ; preds = %1306
  %1312 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1313 = bitcast %union.rec* %1312 to %struct.word_type*
  %1314 = getelementptr inbounds %struct.word_type, %struct.word_type* %1313, i32 0, i32 0
  %1315 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1314, i32 0, i64 1
  %1316 = getelementptr inbounds %struct.LIST, %struct.LIST* %1315, i32 0, i32 0
  %1317 = load %union.rec*, %union.rec** %1316, align 8
  store %union.rec* %1317, %union.rec** @zz_tmp, align 8
  %1318 = load %union.rec*, %union.rec** @zz_res, align 8
  %1319 = bitcast %union.rec* %1318 to %struct.word_type*
  %1320 = getelementptr inbounds %struct.word_type, %struct.word_type* %1319, i32 0, i32 0
  %1321 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1320, i32 0, i64 1
  %1322 = getelementptr inbounds %struct.LIST, %struct.LIST* %1321, i32 0, i32 0
  %1323 = load %union.rec*, %union.rec** %1322, align 8
  %1324 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1325 = bitcast %union.rec* %1324 to %struct.word_type*
  %1326 = getelementptr inbounds %struct.word_type, %struct.word_type* %1325, i32 0, i32 0
  %1327 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1326, i32 0, i64 1
  %1328 = getelementptr inbounds %struct.LIST, %struct.LIST* %1327, i32 0, i32 0
  store %union.rec* %1323, %union.rec** %1328, align 8
  %1329 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1330 = load %union.rec*, %union.rec** @zz_res, align 8
  %1331 = bitcast %union.rec* %1330 to %struct.word_type*
  %1332 = getelementptr inbounds %struct.word_type, %struct.word_type* %1331, i32 0, i32 0
  %1333 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1332, i32 0, i64 1
  %1334 = getelementptr inbounds %struct.LIST, %struct.LIST* %1333, i32 0, i32 0
  %1335 = load %union.rec*, %union.rec** %1334, align 8
  %1336 = bitcast %union.rec* %1335 to %struct.word_type*
  %1337 = getelementptr inbounds %struct.word_type, %struct.word_type* %1336, i32 0, i32 0
  %1338 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1337, i32 0, i64 1
  %1339 = getelementptr inbounds %struct.LIST, %struct.LIST* %1338, i32 0, i32 1
  store %union.rec* %1329, %union.rec** %1339, align 8
  %1340 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1341 = load %union.rec*, %union.rec** @zz_res, align 8
  %1342 = bitcast %union.rec* %1341 to %struct.word_type*
  %1343 = getelementptr inbounds %struct.word_type, %struct.word_type* %1342, i32 0, i32 0
  %1344 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1343, i32 0, i64 1
  %1345 = getelementptr inbounds %struct.LIST, %struct.LIST* %1344, i32 0, i32 0
  store %union.rec* %1340, %union.rec** %1345, align 8
  %1346 = load %union.rec*, %union.rec** @zz_res, align 8
  %1347 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1348 = bitcast %union.rec* %1347 to %struct.word_type*
  %1349 = getelementptr inbounds %struct.word_type, %struct.word_type* %1348, i32 0, i32 0
  %1350 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1349, i32 0, i64 1
  %1351 = getelementptr inbounds %struct.LIST, %struct.LIST* %1350, i32 0, i32 1
  store %union.rec* %1346, %union.rec** %1351, align 8
  br label %1352

; <label>:1352                                    ; preds = %1311, %1309
  %1353 = phi %union.rec* [ %1310, %1309 ], [ %1346, %1311 ]
  br label %1354

; <label>:1354                                    ; preds = %1352, %1304
  %1355 = phi %union.rec* [ %1305, %1304 ], [ %1353, %1352 ]
  %1356 = load %union.rec*, %union.rec** %Extrafilename, align 8
  %1357 = icmp ne %union.rec* %1356, null
  br i1 %1357, label %1358, label %1530

; <label>:1358                                    ; preds = %1354
  %1359 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1360 = zext i8 %1359 to i32
  store i32 %1360, i32* @zz_size, align 4
  %1361 = sext i32 %1360 to i64
  %1362 = icmp uge i64 %1361, 265
  br i1 %1362, label %1363, label %1366

; <label>:1363                                    ; preds = %1358
  %1364 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1365 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %1364)
  br label %1391

; <label>:1366                                    ; preds = %1358
  %1367 = load i32, i32* @zz_size, align 4
  %1368 = sext i32 %1367 to i64
  %1369 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1368
  %1370 = load %union.rec*, %union.rec** %1369, align 8
  %1371 = icmp eq %union.rec* %1370, null
  br i1 %1371, label %1372, label %1376

; <label>:1372                                    ; preds = %1366
  %1373 = load i32, i32* @zz_size, align 4
  %1374 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1375 = call %union.rec* @GetMemory(i32 %1373, %struct.FILE_POS* %1374)
  store %union.rec* %1375, %union.rec** @zz_hold, align 8
  br label %1390

; <label>:1376                                    ; preds = %1366
  %1377 = load i32, i32* @zz_size, align 4
  %1378 = sext i32 %1377 to i64
  %1379 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1378
  %1380 = load %union.rec*, %union.rec** %1379, align 8
  store %union.rec* %1380, %union.rec** @zz_hold, align 8
  store %union.rec* %1380, %union.rec** @zz_hold, align 8
  %1381 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1382 = bitcast %union.rec* %1381 to %struct.word_type*
  %1383 = getelementptr inbounds %struct.word_type, %struct.word_type* %1382, i32 0, i32 0
  %1384 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1383, i32 0, i64 0
  %1385 = getelementptr inbounds %struct.LIST, %struct.LIST* %1384, i32 0, i32 0
  %1386 = load %union.rec*, %union.rec** %1385, align 8
  %1387 = load i32, i32* @zz_size, align 4
  %1388 = sext i32 %1387 to i64
  %1389 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1388
  store %union.rec* %1386, %union.rec** %1389, align 8
  br label %1390

; <label>:1390                                    ; preds = %1376, %1372
  br label %1391

; <label>:1391                                    ; preds = %1390, %1363
  %1392 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1393 = bitcast %union.rec* %1392 to %struct.word_type*
  %1394 = getelementptr inbounds %struct.word_type, %struct.word_type* %1393, i32 0, i32 1
  %1395 = bitcast %union.FIRST_UNION* %1394 to %struct.anon*
  %1396 = getelementptr inbounds %struct.anon, %struct.anon* %1395, i32 0, i32 0
  store i8 0, i8* %1396, align 1
  %1397 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1398 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1399 = bitcast %union.rec* %1398 to %struct.word_type*
  %1400 = getelementptr inbounds %struct.word_type, %struct.word_type* %1399, i32 0, i32 0
  %1401 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1400, i32 0, i64 1
  %1402 = getelementptr inbounds %struct.LIST, %struct.LIST* %1401, i32 0, i32 1
  store %union.rec* %1397, %union.rec** %1402, align 8
  %1403 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1404 = bitcast %union.rec* %1403 to %struct.word_type*
  %1405 = getelementptr inbounds %struct.word_type, %struct.word_type* %1404, i32 0, i32 0
  %1406 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1405, i32 0, i64 1
  %1407 = getelementptr inbounds %struct.LIST, %struct.LIST* %1406, i32 0, i32 0
  store %union.rec* %1397, %union.rec** %1407, align 8
  %1408 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1409 = bitcast %union.rec* %1408 to %struct.word_type*
  %1410 = getelementptr inbounds %struct.word_type, %struct.word_type* %1409, i32 0, i32 0
  %1411 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1410, i32 0, i64 0
  %1412 = getelementptr inbounds %struct.LIST, %struct.LIST* %1411, i32 0, i32 1
  store %union.rec* %1397, %union.rec** %1412, align 8
  %1413 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1414 = bitcast %union.rec* %1413 to %struct.word_type*
  %1415 = getelementptr inbounds %struct.word_type, %struct.word_type* %1414, i32 0, i32 0
  %1416 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1415, i32 0, i64 0
  %1417 = getelementptr inbounds %struct.LIST, %struct.LIST* %1416, i32 0, i32 0
  store %union.rec* %1397, %union.rec** %1417, align 8
  store %union.rec* %1397, %union.rec** @xx_link, align 8
  %1418 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1418, %union.rec** @zz_res, align 8
  %1419 = load %union.rec*, %union.rec** %AFMfilename, align 8
  store %union.rec* %1419, %union.rec** @zz_hold, align 8
  %1420 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1421 = icmp eq %union.rec* %1420, null
  br i1 %1421, label %1422, label %1424

; <label>:1422                                    ; preds = %1391
  %1423 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1472

; <label>:1424                                    ; preds = %1391
  %1425 = load %union.rec*, %union.rec** @zz_res, align 8
  %1426 = icmp eq %union.rec* %1425, null
  br i1 %1426, label %1427, label %1429

; <label>:1427                                    ; preds = %1424
  %1428 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1470

; <label>:1429                                    ; preds = %1424
  %1430 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1431 = bitcast %union.rec* %1430 to %struct.word_type*
  %1432 = getelementptr inbounds %struct.word_type, %struct.word_type* %1431, i32 0, i32 0
  %1433 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1432, i32 0, i64 0
  %1434 = getelementptr inbounds %struct.LIST, %struct.LIST* %1433, i32 0, i32 0
  %1435 = load %union.rec*, %union.rec** %1434, align 8
  store %union.rec* %1435, %union.rec** @zz_tmp, align 8
  %1436 = load %union.rec*, %union.rec** @zz_res, align 8
  %1437 = bitcast %union.rec* %1436 to %struct.word_type*
  %1438 = getelementptr inbounds %struct.word_type, %struct.word_type* %1437, i32 0, i32 0
  %1439 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1438, i32 0, i64 0
  %1440 = getelementptr inbounds %struct.LIST, %struct.LIST* %1439, i32 0, i32 0
  %1441 = load %union.rec*, %union.rec** %1440, align 8
  %1442 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1443 = bitcast %union.rec* %1442 to %struct.word_type*
  %1444 = getelementptr inbounds %struct.word_type, %struct.word_type* %1443, i32 0, i32 0
  %1445 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1444, i32 0, i64 0
  %1446 = getelementptr inbounds %struct.LIST, %struct.LIST* %1445, i32 0, i32 0
  store %union.rec* %1441, %union.rec** %1446, align 8
  %1447 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1448 = load %union.rec*, %union.rec** @zz_res, align 8
  %1449 = bitcast %union.rec* %1448 to %struct.word_type*
  %1450 = getelementptr inbounds %struct.word_type, %struct.word_type* %1449, i32 0, i32 0
  %1451 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1450, i32 0, i64 0
  %1452 = getelementptr inbounds %struct.LIST, %struct.LIST* %1451, i32 0, i32 0
  %1453 = load %union.rec*, %union.rec** %1452, align 8
  %1454 = bitcast %union.rec* %1453 to %struct.word_type*
  %1455 = getelementptr inbounds %struct.word_type, %struct.word_type* %1454, i32 0, i32 0
  %1456 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1455, i32 0, i64 0
  %1457 = getelementptr inbounds %struct.LIST, %struct.LIST* %1456, i32 0, i32 1
  store %union.rec* %1447, %union.rec** %1457, align 8
  %1458 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1459 = load %union.rec*, %union.rec** @zz_res, align 8
  %1460 = bitcast %union.rec* %1459 to %struct.word_type*
  %1461 = getelementptr inbounds %struct.word_type, %struct.word_type* %1460, i32 0, i32 0
  %1462 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1461, i32 0, i64 0
  %1463 = getelementptr inbounds %struct.LIST, %struct.LIST* %1462, i32 0, i32 0
  store %union.rec* %1458, %union.rec** %1463, align 8
  %1464 = load %union.rec*, %union.rec** @zz_res, align 8
  %1465 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1466 = bitcast %union.rec* %1465 to %struct.word_type*
  %1467 = getelementptr inbounds %struct.word_type, %struct.word_type* %1466, i32 0, i32 0
  %1468 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1467, i32 0, i64 0
  %1469 = getelementptr inbounds %struct.LIST, %struct.LIST* %1468, i32 0, i32 1
  store %union.rec* %1464, %union.rec** %1469, align 8
  br label %1470

; <label>:1470                                    ; preds = %1429, %1427
  %1471 = phi %union.rec* [ %1428, %1427 ], [ %1464, %1429 ]
  br label %1472

; <label>:1472                                    ; preds = %1470, %1422
  %1473 = phi %union.rec* [ %1423, %1422 ], [ %1471, %1470 ]
  %1474 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1474, %union.rec** @zz_res, align 8
  %1475 = load %union.rec*, %union.rec** %Extrafilename, align 8
  store %union.rec* %1475, %union.rec** @zz_hold, align 8
  %1476 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1477 = icmp eq %union.rec* %1476, null
  br i1 %1477, label %1478, label %1480

; <label>:1478                                    ; preds = %1472
  %1479 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1528

; <label>:1480                                    ; preds = %1472
  %1481 = load %union.rec*, %union.rec** @zz_res, align 8
  %1482 = icmp eq %union.rec* %1481, null
  br i1 %1482, label %1483, label %1485

; <label>:1483                                    ; preds = %1480
  %1484 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1526

; <label>:1485                                    ; preds = %1480
  %1486 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1487 = bitcast %union.rec* %1486 to %struct.word_type*
  %1488 = getelementptr inbounds %struct.word_type, %struct.word_type* %1487, i32 0, i32 0
  %1489 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1488, i32 0, i64 1
  %1490 = getelementptr inbounds %struct.LIST, %struct.LIST* %1489, i32 0, i32 0
  %1491 = load %union.rec*, %union.rec** %1490, align 8
  store %union.rec* %1491, %union.rec** @zz_tmp, align 8
  %1492 = load %union.rec*, %union.rec** @zz_res, align 8
  %1493 = bitcast %union.rec* %1492 to %struct.word_type*
  %1494 = getelementptr inbounds %struct.word_type, %struct.word_type* %1493, i32 0, i32 0
  %1495 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1494, i32 0, i64 1
  %1496 = getelementptr inbounds %struct.LIST, %struct.LIST* %1495, i32 0, i32 0
  %1497 = load %union.rec*, %union.rec** %1496, align 8
  %1498 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1499 = bitcast %union.rec* %1498 to %struct.word_type*
  %1500 = getelementptr inbounds %struct.word_type, %struct.word_type* %1499, i32 0, i32 0
  %1501 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1500, i32 0, i64 1
  %1502 = getelementptr inbounds %struct.LIST, %struct.LIST* %1501, i32 0, i32 0
  store %union.rec* %1497, %union.rec** %1502, align 8
  %1503 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1504 = load %union.rec*, %union.rec** @zz_res, align 8
  %1505 = bitcast %union.rec* %1504 to %struct.word_type*
  %1506 = getelementptr inbounds %struct.word_type, %struct.word_type* %1505, i32 0, i32 0
  %1507 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1506, i32 0, i64 1
  %1508 = getelementptr inbounds %struct.LIST, %struct.LIST* %1507, i32 0, i32 0
  %1509 = load %union.rec*, %union.rec** %1508, align 8
  %1510 = bitcast %union.rec* %1509 to %struct.word_type*
  %1511 = getelementptr inbounds %struct.word_type, %struct.word_type* %1510, i32 0, i32 0
  %1512 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1511, i32 0, i64 1
  %1513 = getelementptr inbounds %struct.LIST, %struct.LIST* %1512, i32 0, i32 1
  store %union.rec* %1503, %union.rec** %1513, align 8
  %1514 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1515 = load %union.rec*, %union.rec** @zz_res, align 8
  %1516 = bitcast %union.rec* %1515 to %struct.word_type*
  %1517 = getelementptr inbounds %struct.word_type, %struct.word_type* %1516, i32 0, i32 0
  %1518 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1517, i32 0, i64 1
  %1519 = getelementptr inbounds %struct.LIST, %struct.LIST* %1518, i32 0, i32 0
  store %union.rec* %1514, %union.rec** %1519, align 8
  %1520 = load %union.rec*, %union.rec** @zz_res, align 8
  %1521 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1522 = bitcast %union.rec* %1521 to %struct.word_type*
  %1523 = getelementptr inbounds %struct.word_type, %struct.word_type* %1522, i32 0, i32 0
  %1524 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1523, i32 0, i64 1
  %1525 = getelementptr inbounds %struct.LIST, %struct.LIST* %1524, i32 0, i32 1
  store %union.rec* %1520, %union.rec** %1525, align 8
  br label %1526

; <label>:1526                                    ; preds = %1485, %1483
  %1527 = phi %union.rec* [ %1484, %1483 ], [ %1520, %1485 ]
  br label %1528

; <label>:1528                                    ; preds = %1526, %1478
  %1529 = phi %union.rec* [ %1479, %1478 ], [ %1527, %1526 ]
  br label %1530

; <label>:1530                                    ; preds = %1528, %1354
  %1531 = load %union.rec*, %union.rec** %recode, align 8
  %1532 = icmp ne %union.rec* %1531, null
  br i1 %1532, label %1533, label %1561

; <label>:1533                                    ; preds = %1530
  %1534 = load %union.rec*, %union.rec** %recode, align 8
  %1535 = bitcast %union.rec* %1534 to %struct.word_type*
  %1536 = getelementptr inbounds %struct.word_type, %struct.word_type* %1535, i32 0, i32 4
  %1537 = getelementptr inbounds [4 x i8], [4 x i8]* %1536, i32 0, i32 0
  %1538 = call i32 @strcmp(i8* %1537, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i32 0, i32 0)) #5
  %1539 = icmp eq i32 %1538, 0
  br i1 %1539, label %1540, label %1561

; <label>:1540                                    ; preds = %1533
  %1541 = load %union.rec*, %union.rec** %face, align 8
  %1542 = bitcast %union.rec* %1541 to %struct.word_type*
  %1543 = getelementptr inbounds %struct.word_type, %struct.word_type* %1542, i32 0, i32 3
  %1544 = bitcast %union.THIRD_UNION* %1543 to %struct.anon.7*
  %1545 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1544, i32 0, i32 3
  %1546 = load i8, i8* %1545, align 4
  %1547 = and i8 %1546, 127
  store i8 %1547, i8* %1545, align 4
  %1548 = load %union.rec*, %union.rec** %LCMfilename, align 8
  %1549 = call i32 @MapLoad(%union.rec* %1548, i32 0)
  %1550 = load %union.rec*, %union.rec** %face, align 8
  %1551 = bitcast %union.rec* %1550 to %struct.word_type*
  %1552 = getelementptr inbounds %struct.word_type, %struct.word_type* %1551, i32 0, i32 3
  %1553 = bitcast %union.THIRD_UNION* %1552 to %struct.anon.7*
  %1554 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1553, i32 0, i32 3
  %1555 = trunc i32 %1549 to i8
  %1556 = load i8, i8* %1554, align 4
  %1557 = and i8 %1555, 127
  %1558 = and i8 %1556, -128
  %1559 = or i8 %1558, %1557
  store i8 %1559, i8* %1554, align 4
  %1560 = zext i8 %1557 to i32
  br label %1600

; <label>:1561                                    ; preds = %1533, %1530
  %1562 = load %union.rec*, %union.rec** %recode, align 8
  %1563 = icmp eq %union.rec* %1562, null
  br i1 %1563, label %1571, label %1564

; <label>:1564                                    ; preds = %1561
  %1565 = load %union.rec*, %union.rec** %recode, align 8
  %1566 = bitcast %union.rec* %1565 to %struct.word_type*
  %1567 = getelementptr inbounds %struct.word_type, %struct.word_type* %1566, i32 0, i32 4
  %1568 = getelementptr inbounds [4 x i8], [4 x i8]* %1567, i32 0, i32 0
  %1569 = call i32 @strcmp(i8* %1568, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0)) #5
  %1570 = icmp eq i32 %1569, 0
  br i1 %1570, label %1571, label %1593

; <label>:1571                                    ; preds = %1564, %1561
  %1572 = load %union.rec*, %union.rec** %face, align 8
  %1573 = bitcast %union.rec* %1572 to %struct.word_type*
  %1574 = getelementptr inbounds %struct.word_type, %struct.word_type* %1573, i32 0, i32 3
  %1575 = bitcast %union.THIRD_UNION* %1574 to %struct.anon.7*
  %1576 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1575, i32 0, i32 3
  %1577 = load i8, i8* %1576, align 4
  %1578 = and i8 %1577, 127
  %1579 = or i8 %1578, -128
  store i8 %1579, i8* %1576, align 4
  %1580 = load %union.rec*, %union.rec** %LCMfilename, align 8
  %1581 = call i32 @MapLoad(%union.rec* %1580, i32 1)
  %1582 = load %union.rec*, %union.rec** %face, align 8
  %1583 = bitcast %union.rec* %1582 to %struct.word_type*
  %1584 = getelementptr inbounds %struct.word_type, %struct.word_type* %1583, i32 0, i32 3
  %1585 = bitcast %union.THIRD_UNION* %1584 to %struct.anon.7*
  %1586 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1585, i32 0, i32 3
  %1587 = trunc i32 %1581 to i8
  %1588 = load i8, i8* %1586, align 4
  %1589 = and i8 %1587, 127
  %1590 = and i8 %1588, -128
  %1591 = or i8 %1590, %1589
  store i8 %1591, i8* %1586, align 4
  %1592 = zext i8 %1589 to i32
  br label %1599

; <label>:1593                                    ; preds = %1564
  %1594 = load %union.rec*, %union.rec** %recode, align 8
  %1595 = bitcast %union.rec* %1594 to %struct.word_type*
  %1596 = getelementptr inbounds %struct.word_type, %struct.word_type* %1595, i32 0, i32 1
  %1597 = bitcast %union.FIRST_UNION* %1596 to %struct.FILE_POS*
  %1598 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.88, i32 0, i32 0), i32 1, %struct.FILE_POS* %1597)
  br label %1599

; <label>:1599                                    ; preds = %1593, %1571
  br label %1600

; <label>:1600                                    ; preds = %1599, %1540
  %1601 = load %union.rec*, %union.rec** %face, align 8
  %1602 = bitcast %union.rec* %1601 to %struct.word_type*
  %1603 = getelementptr inbounds %struct.word_type, %struct.word_type* %1602, i32 0, i32 2
  %1604 = bitcast %union.SECOND_UNION* %1603 to %struct.anon.4*
  %1605 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %1604, i32 0, i32 1
  store i16 0, i16* %1605, align 2
  %1606 = load i32, i32* @font_count, align 4
  %1607 = add i32 %1606, 1
  store i32 %1607, i32* @font_count, align 4
  %1608 = load i32, i32* @finfo_size, align 4
  %1609 = icmp uge i32 %1607, %1608
  br i1 %1609, label %1610, label %1638

; <label>:1610                                    ; preds = %1600
  %1611 = load i32, i32* @font_count, align 4
  %1612 = icmp ugt i32 %1611, 4096
  br i1 %1612, label %1613, label %1619

; <label>:1613                                    ; preds = %1610
  %1614 = load %union.rec*, %union.rec** %4, align 8
  %1615 = bitcast %union.rec* %1614 to %struct.word_type*
  %1616 = getelementptr inbounds %struct.word_type, %struct.word_type* %1615, i32 0, i32 1
  %1617 = bitcast %union.FIRST_UNION* %1616 to %struct.FILE_POS*
  %1618 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 21, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.89, i32 0, i32 0), i32 1, %struct.FILE_POS* %1617, i32 4096)
  br label %1619

; <label>:1619                                    ; preds = %1613, %1610
  %1620 = load i32, i32* @finfo_size, align 4
  %1621 = mul nsw i32 %1620, 2
  store i32 %1621, i32* @finfo_size, align 4
  %1622 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %1623 = bitcast %struct.font_rec* %1622 to i8*
  %1624 = load i32, i32* @finfo_size, align 4
  %1625 = sext i32 %1624 to i64
  %1626 = mul i64 %1625, 96
  %1627 = call i8* @realloc(i8* %1623, i64 %1626) #4
  %1628 = bitcast i8* %1627 to %struct.font_rec*
  store %struct.font_rec* %1628, %struct.font_rec** @finfo, align 8
  %1629 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %1630 = icmp eq %struct.font_rec* %1629, null
  br i1 %1630, label %1631, label %1637

; <label>:1631                                    ; preds = %1619
  %1632 = load %union.rec*, %union.rec** %4, align 8
  %1633 = bitcast %union.rec* %1632 to %struct.word_type*
  %1634 = getelementptr inbounds %struct.word_type, %struct.word_type* %1633, i32 0, i32 1
  %1635 = bitcast %union.FIRST_UNION* %1634 to %struct.FILE_POS*
  %1636 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 22, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.37, i32 0, i32 0), i32 1, %struct.FILE_POS* %1635)
  br label %1637

; <label>:1637                                    ; preds = %1631, %1619
  br label %1638

; <label>:1638                                    ; preds = %1637, %1600
  %1639 = load i32, i32* @font_seqnum, align 4
  %1640 = add nsw i32 %1639, 1
  store i32 %1640, i32* @font_seqnum, align 4
  %1641 = call i8* @StringInt(i32 %1640)
  %1642 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1643 = call %union.rec* @MakeWordTwo(i32 11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0), i8* %1641, %struct.FILE_POS* %1642)
  store %union.rec* %1643, %union.rec** %first_size, align 8
  %1644 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1645 = zext i8 %1644 to i32
  store i32 %1645, i32* @zz_size, align 4
  %1646 = sext i32 %1645 to i64
  %1647 = icmp uge i64 %1646, 265
  br i1 %1647, label %1648, label %1651

; <label>:1648                                    ; preds = %1638
  %1649 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1650 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %1649)
  br label %1676

; <label>:1651                                    ; preds = %1638
  %1652 = load i32, i32* @zz_size, align 4
  %1653 = sext i32 %1652 to i64
  %1654 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1653
  %1655 = load %union.rec*, %union.rec** %1654, align 8
  %1656 = icmp eq %union.rec* %1655, null
  br i1 %1656, label %1657, label %1661

; <label>:1657                                    ; preds = %1651
  %1658 = load i32, i32* @zz_size, align 4
  %1659 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1660 = call %union.rec* @GetMemory(i32 %1658, %struct.FILE_POS* %1659)
  store %union.rec* %1660, %union.rec** @zz_hold, align 8
  br label %1675

; <label>:1661                                    ; preds = %1651
  %1662 = load i32, i32* @zz_size, align 4
  %1663 = sext i32 %1662 to i64
  %1664 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1663
  %1665 = load %union.rec*, %union.rec** %1664, align 8
  store %union.rec* %1665, %union.rec** @zz_hold, align 8
  store %union.rec* %1665, %union.rec** @zz_hold, align 8
  %1666 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1667 = bitcast %union.rec* %1666 to %struct.word_type*
  %1668 = getelementptr inbounds %struct.word_type, %struct.word_type* %1667, i32 0, i32 0
  %1669 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1668, i32 0, i64 0
  %1670 = getelementptr inbounds %struct.LIST, %struct.LIST* %1669, i32 0, i32 0
  %1671 = load %union.rec*, %union.rec** %1670, align 8
  %1672 = load i32, i32* @zz_size, align 4
  %1673 = sext i32 %1672 to i64
  %1674 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1673
  store %union.rec* %1671, %union.rec** %1674, align 8
  br label %1675

; <label>:1675                                    ; preds = %1661, %1657
  br label %1676

; <label>:1676                                    ; preds = %1675, %1648
  %1677 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1678 = bitcast %union.rec* %1677 to %struct.word_type*
  %1679 = getelementptr inbounds %struct.word_type, %struct.word_type* %1678, i32 0, i32 1
  %1680 = bitcast %union.FIRST_UNION* %1679 to %struct.anon*
  %1681 = getelementptr inbounds %struct.anon, %struct.anon* %1680, i32 0, i32 0
  store i8 0, i8* %1681, align 1
  %1682 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1683 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1684 = bitcast %union.rec* %1683 to %struct.word_type*
  %1685 = getelementptr inbounds %struct.word_type, %struct.word_type* %1684, i32 0, i32 0
  %1686 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1685, i32 0, i64 1
  %1687 = getelementptr inbounds %struct.LIST, %struct.LIST* %1686, i32 0, i32 1
  store %union.rec* %1682, %union.rec** %1687, align 8
  %1688 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1689 = bitcast %union.rec* %1688 to %struct.word_type*
  %1690 = getelementptr inbounds %struct.word_type, %struct.word_type* %1689, i32 0, i32 0
  %1691 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1690, i32 0, i64 1
  %1692 = getelementptr inbounds %struct.LIST, %struct.LIST* %1691, i32 0, i32 0
  store %union.rec* %1682, %union.rec** %1692, align 8
  %1693 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1694 = bitcast %union.rec* %1693 to %struct.word_type*
  %1695 = getelementptr inbounds %struct.word_type, %struct.word_type* %1694, i32 0, i32 0
  %1696 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1695, i32 0, i64 0
  %1697 = getelementptr inbounds %struct.LIST, %struct.LIST* %1696, i32 0, i32 1
  store %union.rec* %1682, %union.rec** %1697, align 8
  %1698 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1699 = bitcast %union.rec* %1698 to %struct.word_type*
  %1700 = getelementptr inbounds %struct.word_type, %struct.word_type* %1699, i32 0, i32 0
  %1701 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1700, i32 0, i64 0
  %1702 = getelementptr inbounds %struct.LIST, %struct.LIST* %1701, i32 0, i32 0
  store %union.rec* %1682, %union.rec** %1702, align 8
  store %union.rec* %1682, %union.rec** @xx_link, align 8
  %1703 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1703, %union.rec** @zz_res, align 8
  %1704 = load %union.rec*, %union.rec** %face, align 8
  store %union.rec* %1704, %union.rec** @zz_hold, align 8
  %1705 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1706 = icmp eq %union.rec* %1705, null
  br i1 %1706, label %1707, label %1709

; <label>:1707                                    ; preds = %1676
  %1708 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1757

; <label>:1709                                    ; preds = %1676
  %1710 = load %union.rec*, %union.rec** @zz_res, align 8
  %1711 = icmp eq %union.rec* %1710, null
  br i1 %1711, label %1712, label %1714

; <label>:1712                                    ; preds = %1709
  %1713 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1755

; <label>:1714                                    ; preds = %1709
  %1715 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1716 = bitcast %union.rec* %1715 to %struct.word_type*
  %1717 = getelementptr inbounds %struct.word_type, %struct.word_type* %1716, i32 0, i32 0
  %1718 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1717, i32 0, i64 0
  %1719 = getelementptr inbounds %struct.LIST, %struct.LIST* %1718, i32 0, i32 0
  %1720 = load %union.rec*, %union.rec** %1719, align 8
  store %union.rec* %1720, %union.rec** @zz_tmp, align 8
  %1721 = load %union.rec*, %union.rec** @zz_res, align 8
  %1722 = bitcast %union.rec* %1721 to %struct.word_type*
  %1723 = getelementptr inbounds %struct.word_type, %struct.word_type* %1722, i32 0, i32 0
  %1724 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1723, i32 0, i64 0
  %1725 = getelementptr inbounds %struct.LIST, %struct.LIST* %1724, i32 0, i32 0
  %1726 = load %union.rec*, %union.rec** %1725, align 8
  %1727 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1728 = bitcast %union.rec* %1727 to %struct.word_type*
  %1729 = getelementptr inbounds %struct.word_type, %struct.word_type* %1728, i32 0, i32 0
  %1730 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1729, i32 0, i64 0
  %1731 = getelementptr inbounds %struct.LIST, %struct.LIST* %1730, i32 0, i32 0
  store %union.rec* %1726, %union.rec** %1731, align 8
  %1732 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1733 = load %union.rec*, %union.rec** @zz_res, align 8
  %1734 = bitcast %union.rec* %1733 to %struct.word_type*
  %1735 = getelementptr inbounds %struct.word_type, %struct.word_type* %1734, i32 0, i32 0
  %1736 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1735, i32 0, i64 0
  %1737 = getelementptr inbounds %struct.LIST, %struct.LIST* %1736, i32 0, i32 0
  %1738 = load %union.rec*, %union.rec** %1737, align 8
  %1739 = bitcast %union.rec* %1738 to %struct.word_type*
  %1740 = getelementptr inbounds %struct.word_type, %struct.word_type* %1739, i32 0, i32 0
  %1741 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1740, i32 0, i64 0
  %1742 = getelementptr inbounds %struct.LIST, %struct.LIST* %1741, i32 0, i32 1
  store %union.rec* %1732, %union.rec** %1742, align 8
  %1743 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1744 = load %union.rec*, %union.rec** @zz_res, align 8
  %1745 = bitcast %union.rec* %1744 to %struct.word_type*
  %1746 = getelementptr inbounds %struct.word_type, %struct.word_type* %1745, i32 0, i32 0
  %1747 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1746, i32 0, i64 0
  %1748 = getelementptr inbounds %struct.LIST, %struct.LIST* %1747, i32 0, i32 0
  store %union.rec* %1743, %union.rec** %1748, align 8
  %1749 = load %union.rec*, %union.rec** @zz_res, align 8
  %1750 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1751 = bitcast %union.rec* %1750 to %struct.word_type*
  %1752 = getelementptr inbounds %struct.word_type, %struct.word_type* %1751, i32 0, i32 0
  %1753 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1752, i32 0, i64 0
  %1754 = getelementptr inbounds %struct.LIST, %struct.LIST* %1753, i32 0, i32 1
  store %union.rec* %1749, %union.rec** %1754, align 8
  br label %1755

; <label>:1755                                    ; preds = %1714, %1712
  %1756 = phi %union.rec* [ %1713, %1712 ], [ %1749, %1714 ]
  br label %1757

; <label>:1757                                    ; preds = %1755, %1707
  %1758 = phi %union.rec* [ %1708, %1707 ], [ %1756, %1755 ]
  %1759 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1759, %union.rec** @zz_res, align 8
  %1760 = load %union.rec*, %union.rec** %first_size, align 8
  store %union.rec* %1760, %union.rec** @zz_hold, align 8
  %1761 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1762 = icmp eq %union.rec* %1761, null
  br i1 %1762, label %1763, label %1765

; <label>:1763                                    ; preds = %1757
  %1764 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1813

; <label>:1765                                    ; preds = %1757
  %1766 = load %union.rec*, %union.rec** @zz_res, align 8
  %1767 = icmp eq %union.rec* %1766, null
  br i1 %1767, label %1768, label %1770

; <label>:1768                                    ; preds = %1765
  %1769 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1811

; <label>:1770                                    ; preds = %1765
  %1771 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1772 = bitcast %union.rec* %1771 to %struct.word_type*
  %1773 = getelementptr inbounds %struct.word_type, %struct.word_type* %1772, i32 0, i32 0
  %1774 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1773, i32 0, i64 1
  %1775 = getelementptr inbounds %struct.LIST, %struct.LIST* %1774, i32 0, i32 0
  %1776 = load %union.rec*, %union.rec** %1775, align 8
  store %union.rec* %1776, %union.rec** @zz_tmp, align 8
  %1777 = load %union.rec*, %union.rec** @zz_res, align 8
  %1778 = bitcast %union.rec* %1777 to %struct.word_type*
  %1779 = getelementptr inbounds %struct.word_type, %struct.word_type* %1778, i32 0, i32 0
  %1780 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1779, i32 0, i64 1
  %1781 = getelementptr inbounds %struct.LIST, %struct.LIST* %1780, i32 0, i32 0
  %1782 = load %union.rec*, %union.rec** %1781, align 8
  %1783 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1784 = bitcast %union.rec* %1783 to %struct.word_type*
  %1785 = getelementptr inbounds %struct.word_type, %struct.word_type* %1784, i32 0, i32 0
  %1786 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1785, i32 0, i64 1
  %1787 = getelementptr inbounds %struct.LIST, %struct.LIST* %1786, i32 0, i32 0
  store %union.rec* %1782, %union.rec** %1787, align 8
  %1788 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1789 = load %union.rec*, %union.rec** @zz_res, align 8
  %1790 = bitcast %union.rec* %1789 to %struct.word_type*
  %1791 = getelementptr inbounds %struct.word_type, %struct.word_type* %1790, i32 0, i32 0
  %1792 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1791, i32 0, i64 1
  %1793 = getelementptr inbounds %struct.LIST, %struct.LIST* %1792, i32 0, i32 0
  %1794 = load %union.rec*, %union.rec** %1793, align 8
  %1795 = bitcast %union.rec* %1794 to %struct.word_type*
  %1796 = getelementptr inbounds %struct.word_type, %struct.word_type* %1795, i32 0, i32 0
  %1797 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1796, i32 0, i64 1
  %1798 = getelementptr inbounds %struct.LIST, %struct.LIST* %1797, i32 0, i32 1
  store %union.rec* %1788, %union.rec** %1798, align 8
  %1799 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1800 = load %union.rec*, %union.rec** @zz_res, align 8
  %1801 = bitcast %union.rec* %1800 to %struct.word_type*
  %1802 = getelementptr inbounds %struct.word_type, %struct.word_type* %1801, i32 0, i32 0
  %1803 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1802, i32 0, i64 1
  %1804 = getelementptr inbounds %struct.LIST, %struct.LIST* %1803, i32 0, i32 0
  store %union.rec* %1799, %union.rec** %1804, align 8
  %1805 = load %union.rec*, %union.rec** @zz_res, align 8
  %1806 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1807 = bitcast %union.rec* %1806 to %struct.word_type*
  %1808 = getelementptr inbounds %struct.word_type, %struct.word_type* %1807, i32 0, i32 0
  %1809 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1808, i32 0, i64 1
  %1810 = getelementptr inbounds %struct.LIST, %struct.LIST* %1809, i32 0, i32 1
  store %union.rec* %1805, %union.rec** %1810, align 8
  br label %1811

; <label>:1811                                    ; preds = %1770, %1768
  %1812 = phi %union.rec* [ %1769, %1768 ], [ %1805, %1770 ]
  br label %1813

; <label>:1813                                    ; preds = %1811, %1763
  %1814 = phi %union.rec* [ %1764, %1763 ], [ %1812, %1811 ]
  %1815 = load i32, i32* @font_count, align 4
  %1816 = load %union.rec*, %union.rec** %first_size, align 8
  %1817 = bitcast %union.rec* %1816 to %struct.word_type*
  %1818 = getelementptr inbounds %struct.word_type, %struct.word_type* %1817, i32 0, i32 2
  %1819 = bitcast %union.SECOND_UNION* %1818 to %struct.anon.4*
  %1820 = bitcast %struct.anon.4* %1819 to i16*
  %1821 = trunc i32 %1815 to i16
  %1822 = load i16, i16* %1820, align 4
  %1823 = and i16 %1821, 4095
  %1824 = and i16 %1822, -4096
  %1825 = or i16 %1824, %1823
  store i16 %1825, i16* %1820, align 4
  %1826 = zext i16 %1823 to i32
  %1827 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1828 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1827, i32 0, i32 8
  %1829 = load i32, i32* %1828, align 4
  %1830 = icmp ne i32 %1829, 0
  br i1 %1830, label %1831, label %1832

; <label>:1831                                    ; preds = %1813
  br label %1834

; <label>:1832                                    ; preds = %1813
  %1833 = load i32, i32* @PlainCharHeight, align 4
  br label %1834

; <label>:1834                                    ; preds = %1832, %1831
  %1835 = phi i32 [ 1000, %1831 ], [ %1833, %1832 ]
  %1836 = load %union.rec*, %union.rec** %first_size, align 8
  %1837 = bitcast %union.rec* %1836 to %struct.word_type*
  %1838 = getelementptr inbounds %struct.word_type, %struct.word_type* %1837, i32 0, i32 3
  %1839 = bitcast %union.THIRD_UNION* %1838 to %struct.anon.7*
  %1840 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1839, i32 0, i32 0
  store i32 %1835, i32* %1840, align 4
  %1841 = load %union.rec*, %union.rec** %face, align 8
  %1842 = bitcast %union.rec* %1841 to %struct.word_type*
  %1843 = getelementptr inbounds %struct.word_type, %struct.word_type* %1842, i32 0, i32 3
  %1844 = bitcast %union.THIRD_UNION* %1843 to %struct.anon.7*
  %1845 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1844, i32 0, i32 3
  %1846 = load i8, i8* %1845, align 4
  %1847 = lshr i8 %1846, 7
  %1848 = zext i8 %1847 to i32
  %1849 = load %union.rec*, %union.rec** %first_size, align 8
  %1850 = bitcast %union.rec* %1849 to %struct.word_type*
  %1851 = getelementptr inbounds %struct.word_type, %struct.word_type* %1850, i32 0, i32 3
  %1852 = bitcast %union.THIRD_UNION* %1851 to %struct.anon.7*
  %1853 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1852, i32 0, i32 3
  %1854 = trunc i32 %1848 to i8
  %1855 = load i8, i8* %1853, align 4
  %1856 = and i8 %1854, 1
  %1857 = shl i8 %1856, 7
  %1858 = and i8 %1855, 127
  %1859 = or i8 %1858, %1857
  store i8 %1859, i8* %1853, align 4
  %1860 = zext i8 %1856 to i32
  %1861 = load %union.rec*, %union.rec** %face, align 8
  %1862 = bitcast %union.rec* %1861 to %struct.word_type*
  %1863 = getelementptr inbounds %struct.word_type, %struct.word_type* %1862, i32 0, i32 3
  %1864 = bitcast %union.THIRD_UNION* %1863 to %struct.anon.7*
  %1865 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1864, i32 0, i32 3
  %1866 = load i8, i8* %1865, align 4
  %1867 = and i8 %1866, 127
  %1868 = zext i8 %1867 to i32
  %1869 = load %union.rec*, %union.rec** %first_size, align 8
  %1870 = bitcast %union.rec* %1869 to %struct.word_type*
  %1871 = getelementptr inbounds %struct.word_type, %struct.word_type* %1870, i32 0, i32 3
  %1872 = bitcast %union.THIRD_UNION* %1871 to %struct.anon.7*
  %1873 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1872, i32 0, i32 3
  %1874 = trunc i32 %1868 to i8
  %1875 = load i8, i8* %1873, align 4
  %1876 = and i8 %1874, 127
  %1877 = and i8 %1875, -128
  %1878 = or i8 %1877, %1876
  store i8 %1878, i8* %1873, align 4
  %1879 = zext i8 %1876 to i32
  %1880 = load %union.rec*, %union.rec** %first_size, align 8
  %1881 = bitcast %union.rec* %1880 to %struct.word_type*
  %1882 = getelementptr inbounds %struct.word_type, %struct.word_type* %1881, i32 0, i32 2
  %1883 = bitcast %union.SECOND_UNION* %1882 to %struct.anon.4*
  %1884 = bitcast %struct.anon.4* %1883 to i16*
  %1885 = load i16, i16* %1884, align 4
  %1886 = and i16 %1885, 4095
  %1887 = zext i16 %1886 to i32
  %1888 = load %union.rec*, %union.rec** %face, align 8
  %1889 = bitcast %union.rec* %1888 to %struct.word_type*
  %1890 = getelementptr inbounds %struct.word_type, %struct.word_type* %1889, i32 0, i32 2
  %1891 = bitcast %union.SECOND_UNION* %1890 to %struct.anon.4*
  %1892 = bitcast %struct.anon.4* %1891 to i16*
  %1893 = trunc i32 %1887 to i16
  %1894 = load i16, i16* %1892, align 4
  %1895 = and i16 %1893, 4095
  %1896 = and i16 %1894, -4096
  %1897 = or i16 %1896, %1895
  store i16 %1897, i16* %1892, align 4
  %1898 = zext i16 %1895 to i32
  %1899 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %1900 = bitcast %union.rec* %1899 to %struct.word_type*
  %1901 = getelementptr inbounds %struct.word_type, %struct.word_type* %1900, i32 0, i32 4
  %1902 = getelementptr inbounds [4 x i8], [4 x i8]* %1901, i32 0, i32 0
  %1903 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %1904 = bitcast %union.rec* %1903 to %struct.word_type*
  %1905 = getelementptr inbounds %struct.word_type, %struct.word_type* %1904, i32 0, i32 1
  %1906 = bitcast %union.FIRST_UNION* %1905 to %struct.FILE_POS*
  %1907 = call zeroext i16 @DefineFile(i8* %1902, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), %struct.FILE_POS* %1906, i32 5, i32 5)
  store i16 %1907, i16* %fnum, align 2
  %1908 = load i16, i16* %fnum, align 2
  %1909 = call %struct._IO_FILE* @OpenFile(i16 zeroext %1908, i32 0, i32 0)
  store %struct._IO_FILE* %1909, %struct._IO_FILE** %fp, align 8
  %1910 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %1911 = icmp eq %struct._IO_FILE* %1910, null
  br i1 %1911, label %1912, label %1920

; <label>:1912                                    ; preds = %1834
  %1913 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %1914 = bitcast %union.rec* %1913 to %struct.word_type*
  %1915 = getelementptr inbounds %struct.word_type, %struct.word_type* %1914, i32 0, i32 1
  %1916 = bitcast %union.FIRST_UNION* %1915 to %struct.FILE_POS*
  %1917 = load i16, i16* %fnum, align 2
  %1918 = call i8* @FileName(i16 zeroext %1917)
  %1919 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.91, i32 0, i32 0), i32 1, %struct.FILE_POS* %1916, i8* %1918)
  br label %1920

; <label>:1920                                    ; preds = %1912, %1834
  %1921 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %1922 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %1923 = call i8* @fgets(i8* %1921, i32 512, %struct._IO_FILE* %1922)
  %1924 = icmp eq i8* %1923, null
  br i1 %1924, label %1934, label %1925

; <label>:1925                                    ; preds = %1920
  %1926 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %1927 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %1928 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1926, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), i8* %1927) #4
  %1929 = icmp ne i32 %1928, 1
  br i1 %1929, label %1934, label %1930

; <label>:1930                                    ; preds = %1925
  %1931 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %1932 = call i32 @strcmp(i8* %1931, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.93, i32 0, i32 0)) #5
  %1933 = icmp eq i32 %1932, 0
  br i1 %1933, label %1942, label %1934

; <label>:1934                                    ; preds = %1930, %1925, %1920
  %1935 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %1936 = bitcast %union.rec* %1935 to %struct.word_type*
  %1937 = getelementptr inbounds %struct.word_type, %struct.word_type* %1936, i32 0, i32 1
  %1938 = bitcast %union.FIRST_UNION* %1937 to %struct.FILE_POS*
  %1939 = load i16, i16* %fnum, align 2
  %1940 = call i8* @FileName(i16 zeroext %1939)
  %1941 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 24, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.94, i32 0, i32 0), i32 1, %struct.FILE_POS* %1938, i8* %1940)
  br label %1942

; <label>:1942                                    ; preds = %1934, %1930
  %1943 = call noalias i8* @malloc(i64 2560) #4
  %1944 = bitcast i8* %1943 to %struct.metrics*
  store %struct.metrics* %1944, %struct.metrics** %fnt, align 8
  %1945 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %1946 = icmp eq %struct.metrics* %1945, null
  br i1 %1946, label %1947, label %1955

; <label>:1947                                    ; preds = %1942
  %1948 = load %union.rec*, %union.rec** %4, align 8
  %1949 = bitcast %union.rec* %1948 to %struct.word_type*
  %1950 = getelementptr inbounds %struct.word_type, %struct.word_type* %1949, i32 0, i32 1
  %1951 = bitcast %union.FIRST_UNION* %1950 to %struct.FILE_POS*
  %1952 = load i16, i16* %fnum, align 2
  %1953 = call i8* @FileName(i16 zeroext %1952)
  %1954 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.95, i32 0, i32 0), i32 1, %struct.FILE_POS* %1951, i8* %1953)
  br label %1955

; <label>:1955                                    ; preds = %1947, %1942
  %1956 = call noalias i8* @malloc(i64 512) #4
  store i8* %1956, i8** %lig, align 8
  %1957 = load i8*, i8** %lig, align 8
  %1958 = icmp eq i8* %1957, null
  br i1 %1958, label %1959, label %1967

; <label>:1959                                    ; preds = %1955
  %1960 = load %union.rec*, %union.rec** %4, align 8
  %1961 = bitcast %union.rec* %1960 to %struct.word_type*
  %1962 = getelementptr inbounds %struct.word_type, %struct.word_type* %1961, i32 0, i32 1
  %1963 = bitcast %union.FIRST_UNION* %1962 to %struct.FILE_POS*
  %1964 = load i16, i16* %fnum, align 2
  %1965 = call i8* @FileName(i16 zeroext %1964)
  %1966 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.95, i32 0, i32 0), i32 1, %struct.FILE_POS* %1963, i8* %1965)
  br label %1967

; <label>:1967                                    ; preds = %1959, %1955
  store i32 0, i32* %i, align 4
  br label %1968

; <label>:1968                                    ; preds = %1976, %1967
  %1969 = load i32, i32* %i, align 4
  %1970 = icmp slt i32 %1969, 256
  br i1 %1970, label %1971, label %1979

; <label>:1971                                    ; preds = %1968
  %1972 = load i32, i32* %i, align 4
  %1973 = sext i32 %1972 to i64
  %1974 = load i8*, i8** %lig, align 8
  %1975 = getelementptr inbounds i8, i8* %1974, i64 %1973
  store i8 1, i8* %1975, align 1
  br label %1976

; <label>:1976                                    ; preds = %1971
  %1977 = load i32, i32* %i, align 4
  %1978 = add nsw i32 %1977, 1
  store i32 %1978, i32* %i, align 4
  br label %1968

; <label>:1979                                    ; preds = %1968
  store i32 258, i32* %ligtop, align 4
  %1980 = call noalias i8* @malloc(i64 512) #4
  %1981 = bitcast i8* %1980 to i16*
  store i16* %1981, i16** %composite, align 8
  %1982 = load i16*, i16** %composite, align 8
  %1983 = icmp eq i16* %1982, null
  br i1 %1983, label %1984, label %1992

; <label>:1984                                    ; preds = %1979
  %1985 = load %union.rec*, %union.rec** %4, align 8
  %1986 = bitcast %union.rec* %1985 to %struct.word_type*
  %1987 = getelementptr inbounds %struct.word_type, %struct.word_type* %1986, i32 0, i32 1
  %1988 = bitcast %union.FIRST_UNION* %1987 to %struct.FILE_POS*
  %1989 = load i16, i16* %fnum, align 2
  %1990 = call i8* @FileName(i16 zeroext %1989)
  %1991 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.95, i32 0, i32 0), i32 1, %struct.FILE_POS* %1988, i8* %1990)
  br label %1992

; <label>:1992                                    ; preds = %1984, %1979
  %1993 = call noalias i8* @malloc(i64 1536) #4
  %1994 = bitcast i8* %1993 to %struct.composite_rec*
  store %struct.composite_rec* %1994, %struct.composite_rec** %cmp, align 8
  %1995 = load %struct.composite_rec*, %struct.composite_rec** %cmp, align 8
  %1996 = icmp eq %struct.composite_rec* %1995, null
  br i1 %1996, label %1997, label %2005

; <label>:1997                                    ; preds = %1992
  %1998 = load %union.rec*, %union.rec** %4, align 8
  %1999 = bitcast %union.rec* %1998 to %struct.word_type*
  %2000 = getelementptr inbounds %struct.word_type, %struct.word_type* %1999, i32 0, i32 1
  %2001 = bitcast %union.FIRST_UNION* %2000 to %struct.FILE_POS*
  %2002 = load i16, i16* %fnum, align 2
  %2003 = call i8* @FileName(i16 zeroext %2002)
  %2004 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.95, i32 0, i32 0), i32 1, %struct.FILE_POS* %2001, i8* %2003)
  br label %2005

; <label>:2005                                    ; preds = %1997, %1992
  store i32 0, i32* %i, align 4
  br label %2006

; <label>:2006                                    ; preds = %2014, %2005
  %2007 = load i32, i32* %i, align 4
  %2008 = icmp slt i32 %2007, 256
  br i1 %2008, label %2009, label %2017

; <label>:2009                                    ; preds = %2006
  %2010 = load i32, i32* %i, align 4
  %2011 = sext i32 %2010 to i64
  %2012 = load i16*, i16** %composite, align 8
  %2013 = getelementptr inbounds i16, i16* %2012, i64 %2011
  store i16 0, i16* %2013, align 2
  br label %2014

; <label>:2014                                    ; preds = %2009
  %2015 = load i32, i32* %i, align 4
  %2016 = add nsw i32 %2015, 1
  store i32 %2016, i32* %i, align 4
  br label %2006

; <label>:2017                                    ; preds = %2006
  store i32 1, i32* %cmptop, align 4
  %2018 = call noalias i8* @malloc(i64 512) #4
  %2019 = bitcast i8* %2018 to i16*
  store i16* %2019, i16** %kt, align 8
  %2020 = load i16*, i16** %kt, align 8
  %2021 = icmp eq i16* %2020, null
  br i1 %2021, label %2022, label %2030

; <label>:2022                                    ; preds = %2017
  %2023 = load %union.rec*, %union.rec** %4, align 8
  %2024 = bitcast %union.rec* %2023 to %struct.word_type*
  %2025 = getelementptr inbounds %struct.word_type, %struct.word_type* %2024, i32 0, i32 1
  %2026 = bitcast %union.FIRST_UNION* %2025 to %struct.FILE_POS*
  %2027 = load i16, i16* %fnum, align 2
  %2028 = call i8* @FileName(i16 zeroext %2027)
  %2029 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.95, i32 0, i32 0), i32 1, %struct.FILE_POS* %2026, i8* %2028)
  br label %2030

; <label>:2030                                    ; preds = %2022, %2017
  store i32 0, i32* %i, align 4
  br label %2031

; <label>:2031                                    ; preds = %2039, %2030
  %2032 = load i32, i32* %i, align 4
  %2033 = icmp slt i32 %2032, 256
  br i1 %2033, label %2034, label %2042

; <label>:2034                                    ; preds = %2031
  %2035 = load i32, i32* %i, align 4
  %2036 = sext i32 %2035 to i64
  %2037 = load i16*, i16** %kt, align 8
  %2038 = getelementptr inbounds i16, i16* %2037, i64 %2036
  store i16 0, i16* %2038, align 2
  br label %2039

; <label>:2039                                    ; preds = %2034
  %2040 = load i32, i32* %i, align 4
  %2041 = add nsw i32 %2040, 1
  store i32 %2041, i32* %i, align 4
  br label %2031

; <label>:2042                                    ; preds = %2031
  store i16* null, i16** %ks, align 8
  store i32 0, i32* %utfound, align 4
  store i32 0, i32* %upfound, align 4
  store i32 0, i32* %xhfound, align 4
  store i32 0, i32* %under_pos, align 4
  store i32 0, i32* %under_thick, align 4
  store i32 0, i32* %xheight2, align 4
  store i8* null, i8** %kc, align 8
  store i8* null, i8** %kv, align 8
  store i16* null, i16** %ks, align 8
  store i32 0, i32* %font_name_found, align 4
  store i32 1, i32* %lnum, align 4
  br label %2043

; <label>:2043                                    ; preds = %2566, %2042
  %2044 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %2045 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %2046 = call i8* @fgets(i8* %2044, i32 512, %struct._IO_FILE* %2045)
  store i8* %2046, i8** %status, align 8
  %2047 = icmp ne i8* %2046, null
  br i1 %2047, label %2048, label %2060

; <label>:2048                                    ; preds = %2043
  %2049 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 0
  %2050 = load i8, i8* %2049, align 1
  %2051 = zext i8 %2050 to i32
  %2052 = icmp eq i32 %2051, 69
  br i1 %2052, label %2053, label %2057

; <label>:2053                                    ; preds = %2048
  %2054 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %2055 = call i32 @strcmp(i8* %2054, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.96, i32 0, i32 0)) #5
  %2056 = icmp eq i32 %2055, 0
  br label %2057

; <label>:2057                                    ; preds = %2053, %2048
  %2058 = phi i1 [ false, %2048 ], [ %2056, %2053 ]
  %2059 = xor i1 %2058, true
  br label %2060

; <label>:2060                                    ; preds = %2057, %2043
  %2061 = phi i1 [ false, %2043 ], [ %2059, %2057 ]
  br i1 %2061, label %2062, label %2567

; <label>:2062                                    ; preds = %2060
  %2063 = load i32, i32* %lnum, align 4
  %2064 = add nsw i32 %2063, 1
  store i32 %2064, i32* %lnum, align 4
  %2065 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %2066 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %2067 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2065, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), i8* %2066) #4
  %2068 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i64 0
  %2069 = load i8, i8* %2068, align 1
  %2070 = zext i8 %2069 to i32
  switch i32 %2070, label %2565 [
    i32 85, label %2071
    i32 88, label %2111
    i32 70, label %2132
    i32 73, label %2214
    i32 83, label %2228
  ]

; <label>:2071                                    ; preds = %2062
  %2072 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %2073 = call i32 @strcmp(i8* %2072, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.97, i32 0, i32 0)) #5
  %2074 = icmp eq i32 %2073, 0
  br i1 %2074, label %2075, label %2090

; <label>:2075                                    ; preds = %2071
  %2076 = load i32, i32* %upfound, align 4
  %2077 = icmp ne i32 %2076, 0
  br i1 %2077, label %2078, label %2085

; <label>:2078                                    ; preds = %2075
  %2079 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %2080 = bitcast %union.rec* %2079 to %struct.word_type*
  %2081 = getelementptr inbounds %struct.word_type, %struct.word_type* %2080, i32 0, i32 1
  %2082 = bitcast %union.FIRST_UNION* %2081 to %struct.FILE_POS*
  %2083 = load i32, i32* %lnum, align 4
  %2084 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 26, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.98, i32 0, i32 0), i32 1, %struct.FILE_POS* %2082, i32 %2083)
  br label %2085

; <label>:2085                                    ; preds = %2078, %2075
  %2086 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %2087 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2086, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.99, i32 0, i32 0), float* %fl_under_pos) #4
  %2088 = load float, float* %fl_under_pos, align 4
  %2089 = fptosi float %2088 to i32
  store i32 %2089, i32* %under_pos, align 4
  store i32 1, i32* %upfound, align 4
  br label %2110

; <label>:2090                                    ; preds = %2071
  %2091 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %2092 = call i32 @strcmp(i8* %2091, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.100, i32 0, i32 0)) #5
  %2093 = icmp eq i32 %2092, 0
  br i1 %2093, label %2094, label %2109

; <label>:2094                                    ; preds = %2090
  %2095 = load i32, i32* %utfound, align 4
  %2096 = icmp ne i32 %2095, 0
  br i1 %2096, label %2097, label %2104

; <label>:2097                                    ; preds = %2094
  %2098 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %2099 = bitcast %union.rec* %2098 to %struct.word_type*
  %2100 = getelementptr inbounds %struct.word_type, %struct.word_type* %2099, i32 0, i32 1
  %2101 = bitcast %union.FIRST_UNION* %2100 to %struct.FILE_POS*
  %2102 = load i32, i32* %lnum, align 4
  %2103 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 27, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.101, i32 0, i32 0), i32 1, %struct.FILE_POS* %2101, i32 %2102)
  br label %2104

; <label>:2104                                    ; preds = %2097, %2094
  %2105 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %2106 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.102, i32 0, i32 0), float* %fl_under_thick) #4
  %2107 = load float, float* %fl_under_thick, align 4
  %2108 = fptosi float %2107 to i32
  store i32 %2108, i32* %under_thick, align 4
  store i32 1, i32* %utfound, align 4
  br label %2109

; <label>:2109                                    ; preds = %2104, %2090
  br label %2110

; <label>:2110                                    ; preds = %2109, %2085
  br label %2566

; <label>:2111                                    ; preds = %2062
  %2112 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %2113 = call i32 @strcmp(i8* %2112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.103, i32 0, i32 0)) #5
  %2114 = icmp eq i32 %2113, 0
  br i1 %2114, label %2115, label %2131

; <label>:2115                                    ; preds = %2111
  %2116 = load i32, i32* %xhfound, align 4
  %2117 = icmp ne i32 %2116, 0
  br i1 %2117, label %2118, label %2125

; <label>:2118                                    ; preds = %2115
  %2119 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %2120 = bitcast %union.rec* %2119 to %struct.word_type*
  %2121 = getelementptr inbounds %struct.word_type, %struct.word_type* %2120, i32 0, i32 1
  %2122 = bitcast %union.FIRST_UNION* %2121 to %struct.FILE_POS*
  %2123 = load i32, i32* %lnum, align 4
  %2124 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.104, i32 0, i32 0), i32 1, %struct.FILE_POS* %2122, i32 %2123)
  br label %2125

; <label>:2125                                    ; preds = %2118, %2115
  %2126 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %2127 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), float* %fl_xheight2) #4
  %2128 = load float, float* %fl_xheight2, align 4
  %2129 = fdiv float %2128, 2.000000e+00
  %2130 = fptosi float %2129 to i32
  store i32 %2130, i32* %xheight2, align 4
  store i32 1, i32* %xhfound, align 4
  br label %2131

; <label>:2131                                    ; preds = %2125, %2111
  br label %2566

; <label>:2132                                    ; preds = %2062
  %2133 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %2134 = call i32 @strcmp(i8* %2133, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.106, i32 0, i32 0)) #5
  %2135 = icmp eq i32 %2134, 0
  br i1 %2135, label %2136, label %2213

; <label>:2136                                    ; preds = %2132
  %2137 = load i32, i32* %font_name_found, align 4
  %2138 = icmp ne i32 %2137, 0
  br i1 %2138, label %2139, label %2148

; <label>:2139                                    ; preds = %2136
  %2140 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %2141 = bitcast %union.rec* %2140 to %struct.word_type*
  %2142 = getelementptr inbounds %struct.word_type, %struct.word_type* %2141, i32 0, i32 1
  %2143 = bitcast %union.FIRST_UNION* %2142 to %struct.FILE_POS*
  %2144 = load i16, i16* %fnum, align 2
  %2145 = call i8* @FileName(i16 zeroext %2144)
  %2146 = load i32, i32* %lnum, align 4
  %2147 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 29, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.107, i32 0, i32 0), i32 1, %struct.FILE_POS* %2143, i8* %2145, i32 %2146)
  br label %2148

; <label>:2148                                    ; preds = %2139, %2136
  %2149 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %2150 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %2151 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2149, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.108, i32 0, i32 0), i8* %2150) #4
  %2152 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %2153 = call i32 @strcmp(i8* %2152, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0)) #5
  %2154 = icmp eq i32 %2153, 0
  br i1 %2154, label %2155, label %2164

; <label>:2155                                    ; preds = %2148
  %2156 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %2157 = bitcast %union.rec* %2156 to %struct.word_type*
  %2158 = getelementptr inbounds %struct.word_type, %struct.word_type* %2157, i32 0, i32 1
  %2159 = bitcast %union.FIRST_UNION* %2158 to %struct.FILE_POS*
  %2160 = load i16, i16* %fnum, align 2
  %2161 = call i8* @FileName(i16 zeroext %2160)
  %2162 = load i32, i32* %lnum, align 4
  %2163 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.109, i32 0, i32 0), i32 1, %struct.FILE_POS* %2159, i8* %2161, i32 %2162)
  br label %2164

; <label>:2164                                    ; preds = %2155, %2148
  %2165 = load %union.rec*, %union.rec** %face, align 8
  %2166 = bitcast %union.rec* %2165 to %struct.word_type*
  %2167 = getelementptr inbounds %struct.word_type, %struct.word_type* %2166, i32 0, i32 0
  %2168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2167, i32 0, i64 0
  %2169 = getelementptr inbounds %struct.LIST, %struct.LIST* %2168, i32 0, i32 1
  %2170 = load %union.rec*, %union.rec** %2169, align 8
  %2171 = bitcast %union.rec* %2170 to %struct.word_type*
  %2172 = getelementptr inbounds %struct.word_type, %struct.word_type* %2171, i32 0, i32 0
  %2173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2172, i32 0, i64 1
  %2174 = getelementptr inbounds %struct.LIST, %struct.LIST* %2173, i32 0, i32 0
  %2175 = load %union.rec*, %union.rec** %2174, align 8
  store %union.rec* %2175, %union.rec** %y, align 8
  br label %2176

; <label>:2176                                    ; preds = %2186, %2164
  %2177 = load %union.rec*, %union.rec** %y, align 8
  %2178 = bitcast %union.rec* %2177 to %struct.word_type*
  %2179 = getelementptr inbounds %struct.word_type, %struct.word_type* %2178, i32 0, i32 1
  %2180 = bitcast %union.FIRST_UNION* %2179 to %struct.anon*
  %2181 = getelementptr inbounds %struct.anon, %struct.anon* %2180, i32 0, i32 0
  %2182 = load i8, i8* %2181, align 1
  %2183 = zext i8 %2182 to i32
  %2184 = icmp eq i32 %2183, 0
  br i1 %2184, label %2185, label %2193

; <label>:2185                                    ; preds = %2176
  br label %2186

; <label>:2186                                    ; preds = %2185
  %2187 = load %union.rec*, %union.rec** %y, align 8
  %2188 = bitcast %union.rec* %2187 to %struct.word_type*
  %2189 = getelementptr inbounds %struct.word_type, %struct.word_type* %2188, i32 0, i32 0
  %2190 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2189, i32 0, i64 1
  %2191 = getelementptr inbounds %struct.LIST, %struct.LIST* %2190, i32 0, i32 0
  %2192 = load %union.rec*, %union.rec** %2191, align 8
  store %union.rec* %2192, %union.rec** %y, align 8
  br label %2176

; <label>:2193                                    ; preds = %2176
  %2194 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %2195 = load %union.rec*, %union.rec** %y, align 8
  %2196 = bitcast %union.rec* %2195 to %struct.word_type*
  %2197 = getelementptr inbounds %struct.word_type, %struct.word_type* %2196, i32 0, i32 4
  %2198 = getelementptr inbounds [4 x i8], [4 x i8]* %2197, i32 0, i32 0
  %2199 = call i32 @strcmp(i8* %2194, i8* %2198) #5
  %2200 = icmp eq i32 %2199, 0
  br i1 %2200, label %2212, label %2201

; <label>:2201                                    ; preds = %2193
  %2202 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %2203 = bitcast %union.rec* %2202 to %struct.word_type*
  %2204 = getelementptr inbounds %struct.word_type, %struct.word_type* %2203, i32 0, i32 1
  %2205 = bitcast %union.FIRST_UNION* %2204 to %struct.FILE_POS*
  %2206 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %2207 = load %union.rec*, %union.rec** %y, align 8
  %2208 = bitcast %union.rec* %2207 to %struct.word_type*
  %2209 = getelementptr inbounds %struct.word_type, %struct.word_type* %2208, i32 0, i32 4
  %2210 = getelementptr inbounds [4 x i8], [4 x i8]* %2209, i32 0, i32 0
  %2211 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.110, i32 0, i32 0), i32 2, %struct.FILE_POS* %2205, i8* %2206, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %2210)
  br label %2212

; <label>:2212                                    ; preds = %2201, %2193
  store i32 1, i32* %font_name_found, align 4
  br label %2213

; <label>:2213                                    ; preds = %2212, %2132
  br label %2566

; <label>:2214                                    ; preds = %2062
  %2215 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %2216 = call i32 @strcmp(i8* %2215, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.111, i32 0, i32 0)) #5
  %2217 = icmp eq i32 %2216, 0
  br i1 %2217, label %2218, label %2227

; <label>:2218                                    ; preds = %2214
  %2219 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %2220 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %2221 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2219, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.112, i32 0, i32 0), i8* %2220) #4
  %2222 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %2223 = call i32 @strcmp(i8* %2222, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.113, i32 0, i32 0)) #5
  %2224 = icmp eq i32 %2223, 0
  br i1 %2224, label %2225, label %2226

; <label>:2225                                    ; preds = %2218
  store i32 1, i32* %fixed_pitch, align 4
  br label %2226

; <label>:2226                                    ; preds = %2225, %2218
  br label %2227

; <label>:2227                                    ; preds = %2226, %2214
  br label %2566

; <label>:2228                                    ; preds = %2062
  %2229 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %2230 = call i32 @strcmp(i8* %2229, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.114, i32 0, i32 0)) #5
  %2231 = icmp eq i32 %2230, 0
  br i1 %2231, label %2232, label %2255

; <label>:2232                                    ; preds = %2228
  %2233 = load i32, i32* %font_name_found, align 4
  %2234 = icmp ne i32 %2233, 0
  br i1 %2234, label %2243, label %2235

; <label>:2235                                    ; preds = %2232
  %2236 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %2237 = bitcast %union.rec* %2236 to %struct.word_type*
  %2238 = getelementptr inbounds %struct.word_type, %struct.word_type* %2237, i32 0, i32 1
  %2239 = bitcast %union.FIRST_UNION* %2238 to %struct.FILE_POS*
  %2240 = load i16, i16* %fnum, align 2
  %2241 = call i8* @FileName(i16 zeroext %2240)
  %2242 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.115, i32 0, i32 0), i32 1, %struct.FILE_POS* %2239, i8* %2241)
  br label %2243

; <label>:2243                                    ; preds = %2235, %2232
  %2244 = load i32, i32* %xhfound, align 4
  %2245 = icmp ne i32 %2244, 0
  br i1 %2245, label %2247, label %2246

; <label>:2246                                    ; preds = %2243
  store i32 250, i32* %xheight2, align 4
  br label %2247

; <label>:2247                                    ; preds = %2246, %2243
  %2248 = load %union.rec*, %union.rec** %face, align 8
  %2249 = load i32, i32* %fixed_pitch, align 4
  %2250 = load i32, i32* %xheight2, align 4
  %2251 = load i8*, i8** %lig, align 8
  %2252 = load i16, i16* %fnum, align 2
  %2253 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %2254 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @ReadCharMetrics(%union.rec* %2248, i32 %2249, i32 %2250, i8* %2251, i32* %ligtop, i16 zeroext %2252, %struct.metrics* %2253, i32* %lnum, %struct._IO_FILE* %2254)
  br label %2564

; <label>:2255                                    ; preds = %2228
  %2256 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %2257 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %2256, i32 0, i32 8
  %2258 = load i32, i32* %2257, align 4
  %2259 = icmp ne i32 %2258, 0
  br i1 %2259, label %2260, label %2563

; <label>:2260                                    ; preds = %2255
  %2261 = load i32, i32* @Kern, align 4
  %2262 = icmp ne i32 %2261, 0
  br i1 %2262, label %2263, label %2563

; <label>:2263                                    ; preds = %2260
  %2264 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %2265 = call i32 @strcmp(i8* %2264, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.116, i32 0, i32 0)) #5
  %2266 = icmp eq i32 %2265, 0
  br i1 %2266, label %2267, label %2563

; <label>:2267                                    ; preds = %2263
  %2268 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %2269 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2268, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.117, i32 0, i32 0), i32* %num_pairs) #4
  %2270 = icmp ne i32 %2269, 1
  br i1 %2270, label %2271, label %2280

; <label>:2271                                    ; preds = %2267
  %2272 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %2273 = bitcast %union.rec* %2272 to %struct.word_type*
  %2274 = getelementptr inbounds %struct.word_type, %struct.word_type* %2273, i32 0, i32 1
  %2275 = bitcast %union.FIRST_UNION* %2274 to %struct.FILE_POS*
  %2276 = load i16, i16* %fnum, align 2
  %2277 = call i8* @FileName(i16 zeroext %2276)
  %2278 = load i32, i32* %lnum, align 4
  %2279 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 33, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.118, i32 0, i32 0), i32 1, %struct.FILE_POS* %2275, i8* %2277, i32 %2278)
  br label %2280

; <label>:2280                                    ; preds = %2271, %2267
  store i32 1, i32* %kc_top, align 4
  store i32 1, i32* %ks_top, align 4
  %2281 = load i32, i32* %num_pairs, align 4
  %2282 = mul nsw i32 2, %2281
  %2283 = sext i32 %2282 to i64
  %2284 = mul i64 %2283, 1
  %2285 = call noalias i8* @malloc(i64 %2284) #4
  store i8* %2285, i8** %kc, align 8
  %2286 = load i32, i32* %num_pairs, align 4
  %2287 = mul nsw i32 2, %2286
  %2288 = sext i32 %2287 to i64
  %2289 = mul i64 %2288, 1
  %2290 = call noalias i8* @malloc(i64 %2289) #4
  store i8* %2290, i8** %kv, align 8
  %2291 = load i32, i32* %num_pairs, align 4
  %2292 = sext i32 %2291 to i64
  %2293 = mul i64 %2292, 2
  %2294 = call noalias i8* @malloc(i64 %2293) #4
  %2295 = bitcast i8* %2294 to i16*
  store i16* %2295, i16** %ks, align 8
  store i8 0, i8* %last_ch1, align 1
  br label %2296

; <label>:2296                                    ; preds = %2557, %2381, %2366, %2351, %2336, %2280
  %2297 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %2298 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %2299 = call i8* @fgets(i8* %2297, i32 512, %struct._IO_FILE* %2298)
  %2300 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %2301 = icmp eq i8* %2299, %2300
  br i1 %2301, label %2302, label %2307

; <label>:2302                                    ; preds = %2296
  %2303 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %2304 = call i32 @StringBeginsWith(i8* %2303, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.119, i32 0, i32 0))
  %2305 = icmp ne i32 %2304, 0
  %2306 = xor i1 %2305, true
  br label %2307

; <label>:2307                                    ; preds = %2302, %2296
  %2308 = phi i1 [ false, %2296 ], [ %2306, %2302 ]
  br i1 %2308, label %2309, label %2558

; <label>:2309                                    ; preds = %2307
  %2310 = load i32, i32* %lnum, align 4
  %2311 = add nsw i32 %2310, 1
  store i32 %2311, i32* %lnum, align 4
  %2312 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %2313 = call i32 @StringBeginsWith(i8* %2312, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i32 0, i32 0))
  %2314 = icmp ne i32 %2313, 0
  br i1 %2314, label %2315, label %2557

; <label>:2315                                    ; preds = %2309
  %2316 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %2317 = getelementptr inbounds [30 x i8], [30 x i8]* %name1, i32 0, i32 0
  %2318 = getelementptr inbounds [30 x i8], [30 x i8]* %name2, i32 0, i32 0
  %2319 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2316, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.121, i32 0, i32 0), i8* %2317, i8* %2318, float* %fl_ksize) #4
  %2320 = icmp ne i32 %2319, 3
  br i1 %2320, label %2321, label %2331

; <label>:2321                                    ; preds = %2315
  %2322 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %2323 = bitcast %union.rec* %2322 to %struct.word_type*
  %2324 = getelementptr inbounds %struct.word_type, %struct.word_type* %2323, i32 0, i32 1
  %2325 = bitcast %union.FIRST_UNION* %2324 to %struct.FILE_POS*
  %2326 = load i16, i16* %fnum, align 2
  %2327 = call i8* @FileName(i16 zeroext %2326)
  %2328 = load i32, i32* %lnum, align 4
  %2329 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %2330 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.122, i32 0, i32 0), i32 1, %struct.FILE_POS* %2325, i8* %2327, i32 %2328, i8* %2329)
  br label %2331

; <label>:2331                                    ; preds = %2321, %2315
  %2332 = load float, float* %fl_ksize, align 4
  %2333 = fptosi float %2332 to i32
  store i32 %2333, i32* %ksize, align 4
  %2334 = load i32, i32* %ksize, align 4
  %2335 = icmp eq i32 %2334, 0
  br i1 %2335, label %2336, label %2337

; <label>:2336                                    ; preds = %2331
  br label %2296

; <label>:2337                                    ; preds = %2331
  %2338 = getelementptr inbounds [30 x i8], [30 x i8]* %name1, i32 0, i32 0
  %2339 = load %union.rec*, %union.rec** %face, align 8
  %2340 = bitcast %union.rec* %2339 to %struct.word_type*
  %2341 = getelementptr inbounds %struct.word_type, %struct.word_type* %2340, i32 0, i32 3
  %2342 = bitcast %union.THIRD_UNION* %2341 to %struct.anon.7*
  %2343 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %2342, i32 0, i32 3
  %2344 = load i8, i8* %2343, align 4
  %2345 = and i8 %2344, 127
  %2346 = zext i8 %2345 to i32
  %2347 = call zeroext i8 @MapCharEncoding(i8* %2338, i32 %2346)
  store i8 %2347, i8* %ch1, align 1
  %2348 = load i8, i8* %ch1, align 1
  %2349 = zext i8 %2348 to i32
  %2350 = icmp eq i32 %2349, 0
  br i1 %2350, label %2351, label %2352

; <label>:2351                                    ; preds = %2337
  br label %2296

; <label>:2352                                    ; preds = %2337
  %2353 = getelementptr inbounds [30 x i8], [30 x i8]* %name2, i32 0, i32 0
  %2354 = load %union.rec*, %union.rec** %face, align 8
  %2355 = bitcast %union.rec* %2354 to %struct.word_type*
  %2356 = getelementptr inbounds %struct.word_type, %struct.word_type* %2355, i32 0, i32 3
  %2357 = bitcast %union.THIRD_UNION* %2356 to %struct.anon.7*
  %2358 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %2357, i32 0, i32 3
  %2359 = load i8, i8* %2358, align 4
  %2360 = and i8 %2359, 127
  %2361 = zext i8 %2360 to i32
  %2362 = call zeroext i8 @MapCharEncoding(i8* %2353, i32 %2361)
  store i8 %2362, i8* %ch2, align 1
  %2363 = load i8, i8* %ch2, align 1
  %2364 = zext i8 %2363 to i32
  %2365 = icmp eq i32 %2364, 0
  br i1 %2365, label %2366, label %2367

; <label>:2366                                    ; preds = %2352
  br label %2296

; <label>:2367                                    ; preds = %2352
  %2368 = load i8, i8* %ch1, align 1
  %2369 = zext i8 %2368 to i32
  %2370 = load i8, i8* %last_ch1, align 1
  %2371 = zext i8 %2370 to i32
  %2372 = icmp ne i32 %2369, %2371
  br i1 %2372, label %2373, label %2392

; <label>:2373                                    ; preds = %2367
  %2374 = load i8, i8* %ch1, align 1
  %2375 = zext i8 %2374 to i64
  %2376 = load i16*, i16** %kt, align 8
  %2377 = getelementptr inbounds i16, i16* %2376, i64 %2375
  %2378 = load i16, i16* %2377, align 2
  %2379 = zext i16 %2378 to i32
  %2380 = icmp ne i32 %2379, 0
  br i1 %2380, label %2381, label %2392

; <label>:2381                                    ; preds = %2373
  %2382 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %2383 = bitcast %union.rec* %2382 to %struct.word_type*
  %2384 = getelementptr inbounds %struct.word_type, %struct.word_type* %2383, i32 0, i32 1
  %2385 = bitcast %union.FIRST_UNION* %2384 to %struct.FILE_POS*
  %2386 = getelementptr inbounds [30 x i8], [30 x i8]* %name1, i32 0, i32 0
  %2387 = getelementptr inbounds [30 x i8], [30 x i8]* %name2, i32 0, i32 0
  %2388 = load i16, i16* %fnum, align 2
  %2389 = call i8* @FileName(i16 zeroext %2388)
  %2390 = load i32, i32* %lnum, align 4
  %2391 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 35, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.123, i32 0, i32 0), i32 2, %struct.FILE_POS* %2385, i8* %2386, i8* %2387, i8* %2389, i32 %2390)
  br label %2296

; <label>:2392                                    ; preds = %2373, %2367
  %2393 = load i8, i8* %ch1, align 1
  store i8 %2393, i8* %last_ch1, align 1
  %2394 = load i8, i8* %ch1, align 1
  %2395 = zext i8 %2394 to i64
  %2396 = load i16*, i16** %kt, align 8
  %2397 = getelementptr inbounds i16, i16* %2396, i64 %2395
  %2398 = load i16, i16* %2397, align 2
  %2399 = zext i16 %2398 to i32
  %2400 = icmp eq i32 %2399, 0
  br i1 %2400, label %2401, label %2418

; <label>:2401                                    ; preds = %2392
  %2402 = load i32, i32* %kc_top, align 4
  %2403 = trunc i32 %2402 to i16
  %2404 = load i8, i8* %ch1, align 1
  %2405 = zext i8 %2404 to i64
  %2406 = load i16*, i16** %kt, align 8
  %2407 = getelementptr inbounds i16, i16* %2406, i64 %2405
  store i16 %2403, i16* %2407, align 2
  %2408 = load i32, i32* %kc_top, align 4
  %2409 = sext i32 %2408 to i64
  %2410 = load i8*, i8** %kc, align 8
  %2411 = getelementptr inbounds i8, i8* %2410, i64 %2409
  store i8 0, i8* %2411, align 1
  %2412 = load i32, i32* %kc_top, align 4
  %2413 = sext i32 %2412 to i64
  %2414 = load i8*, i8** %kv, align 8
  %2415 = getelementptr inbounds i8, i8* %2414, i64 %2413
  store i8 0, i8* %2415, align 1
  %2416 = load i32, i32* %kc_top, align 4
  %2417 = add nsw i32 %2416, 1
  store i32 %2417, i32* %kc_top, align 4
  br label %2418

; <label>:2418                                    ; preds = %2401, %2392
  store i32 1, i32* %pos, align 4
  br label %2419

; <label>:2419                                    ; preds = %2434, %2418
  %2420 = load i32, i32* %pos, align 4
  %2421 = load i32, i32* %ks_top, align 4
  %2422 = icmp slt i32 %2420, %2421
  br i1 %2422, label %2423, label %2437

; <label>:2423                                    ; preds = %2419
  %2424 = load i32, i32* %pos, align 4
  %2425 = sext i32 %2424 to i64
  %2426 = load i16*, i16** %ks, align 8
  %2427 = getelementptr inbounds i16, i16* %2426, i64 %2425
  %2428 = load i16, i16* %2427, align 2
  %2429 = sext i16 %2428 to i32
  %2430 = load i32, i32* %ksize, align 4
  %2431 = icmp eq i32 %2429, %2430
  br i1 %2431, label %2432, label %2433

; <label>:2432                                    ; preds = %2423
  br label %2437

; <label>:2433                                    ; preds = %2423
  br label %2434

; <label>:2434                                    ; preds = %2433
  %2435 = load i32, i32* %pos, align 4
  %2436 = add nsw i32 %2435, 1
  store i32 %2436, i32* %pos, align 4
  br label %2419

; <label>:2437                                    ; preds = %2432, %2419
  %2438 = load i32, i32* %pos, align 4
  %2439 = load i32, i32* %ks_top, align 4
  %2440 = icmp eq i32 %2438, %2439
  br i1 %2440, label %2441, label %2463

; <label>:2441                                    ; preds = %2437
  %2442 = load i32, i32* %ks_top, align 4
  %2443 = load i32, i32* %num_pairs, align 4
  %2444 = icmp eq i32 %2442, %2443
  br i1 %2444, label %2445, label %2454

; <label>:2445                                    ; preds = %2441
  %2446 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %2447 = bitcast %union.rec* %2446 to %struct.word_type*
  %2448 = getelementptr inbounds %struct.word_type, %struct.word_type* %2447, i32 0, i32 1
  %2449 = bitcast %union.FIRST_UNION* %2448 to %struct.FILE_POS*
  %2450 = load i16, i16* %fnum, align 2
  %2451 = call i8* @FileName(i16 zeroext %2450)
  %2452 = load i32, i32* %lnum, align 4
  %2453 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 36, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.124, i32 0, i32 0), i32 1, %struct.FILE_POS* %2449, i8* %2451, i32 %2452)
  br label %2454

; <label>:2454                                    ; preds = %2445, %2441
  %2455 = load i32, i32* %ksize, align 4
  %2456 = trunc i32 %2455 to i16
  %2457 = load i32, i32* %pos, align 4
  %2458 = sext i32 %2457 to i64
  %2459 = load i16*, i16** %ks, align 8
  %2460 = getelementptr inbounds i16, i16* %2459, i64 %2458
  store i16 %2456, i16* %2460, align 2
  %2461 = load i32, i32* %ks_top, align 4
  %2462 = add nsw i32 %2461, 1
  store i32 %2462, i32* %ks_top, align 4
  br label %2463

; <label>:2463                                    ; preds = %2454, %2437
  %2464 = load i32, i32* %kc_top, align 4
  %2465 = sub nsw i32 %2464, 1
  store i32 %2465, i32* %i, align 4
  br label %2466

; <label>:2466                                    ; preds = %2508, %2463
  %2467 = load i32, i32* %i, align 4
  %2468 = load i8, i8* %ch1, align 1
  %2469 = zext i8 %2468 to i64
  %2470 = load i16*, i16** %kt, align 8
  %2471 = getelementptr inbounds i16, i16* %2470, i64 %2469
  %2472 = load i16, i16* %2471, align 2
  %2473 = zext i16 %2472 to i32
  %2474 = icmp sge i32 %2467, %2473
  br i1 %2474, label %2475, label %2485

; <label>:2475                                    ; preds = %2466
  %2476 = load i32, i32* %i, align 4
  %2477 = sext i32 %2476 to i64
  %2478 = load i8*, i8** %kc, align 8
  %2479 = getelementptr inbounds i8, i8* %2478, i64 %2477
  %2480 = load i8, i8* %2479, align 1
  %2481 = zext i8 %2480 to i32
  %2482 = load i8, i8* %ch2, align 1
  %2483 = zext i8 %2482 to i32
  %2484 = icmp slt i32 %2481, %2483
  br label %2485

; <label>:2485                                    ; preds = %2475, %2466
  %2486 = phi i1 [ false, %2466 ], [ %2484, %2475 ]
  br i1 %2486, label %2487, label %2511

; <label>:2487                                    ; preds = %2485
  %2488 = load i32, i32* %i, align 4
  %2489 = sext i32 %2488 to i64
  %2490 = load i8*, i8** %kc, align 8
  %2491 = getelementptr inbounds i8, i8* %2490, i64 %2489
  %2492 = load i8, i8* %2491, align 1
  %2493 = load i32, i32* %i, align 4
  %2494 = add nsw i32 %2493, 1
  %2495 = sext i32 %2494 to i64
  %2496 = load i8*, i8** %kc, align 8
  %2497 = getelementptr inbounds i8, i8* %2496, i64 %2495
  store i8 %2492, i8* %2497, align 1
  %2498 = load i32, i32* %i, align 4
  %2499 = sext i32 %2498 to i64
  %2500 = load i8*, i8** %kv, align 8
  %2501 = getelementptr inbounds i8, i8* %2500, i64 %2499
  %2502 = load i8, i8* %2501, align 1
  %2503 = load i32, i32* %i, align 4
  %2504 = add nsw i32 %2503, 1
  %2505 = sext i32 %2504 to i64
  %2506 = load i8*, i8** %kv, align 8
  %2507 = getelementptr inbounds i8, i8* %2506, i64 %2505
  store i8 %2502, i8* %2507, align 1
  br label %2508

; <label>:2508                                    ; preds = %2487
  %2509 = load i32, i32* %i, align 4
  %2510 = add nsw i32 %2509, -1
  store i32 %2510, i32* %i, align 4
  br label %2466

; <label>:2511                                    ; preds = %2485
  %2512 = load i32, i32* %i, align 4
  %2513 = load i8, i8* %ch1, align 1
  %2514 = zext i8 %2513 to i64
  %2515 = load i16*, i16** %kt, align 8
  %2516 = getelementptr inbounds i16, i16* %2515, i64 %2514
  %2517 = load i16, i16* %2516, align 2
  %2518 = zext i16 %2517 to i32
  %2519 = icmp sge i32 %2512, %2518
  br i1 %2519, label %2520, label %2541

; <label>:2520                                    ; preds = %2511
  %2521 = load i32, i32* %i, align 4
  %2522 = sext i32 %2521 to i64
  %2523 = load i8*, i8** %kc, align 8
  %2524 = getelementptr inbounds i8, i8* %2523, i64 %2522
  %2525 = load i8, i8* %2524, align 1
  %2526 = zext i8 %2525 to i32
  %2527 = load i8, i8* %ch2, align 1
  %2528 = zext i8 %2527 to i32
  %2529 = icmp eq i32 %2526, %2528
  br i1 %2529, label %2530, label %2541

; <label>:2530                                    ; preds = %2520
  %2531 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %2532 = bitcast %union.rec* %2531 to %struct.word_type*
  %2533 = getelementptr inbounds %struct.word_type, %struct.word_type* %2532, i32 0, i32 1
  %2534 = bitcast %union.FIRST_UNION* %2533 to %struct.FILE_POS*
  %2535 = getelementptr inbounds [30 x i8], [30 x i8]* %name1, i32 0, i32 0
  %2536 = getelementptr inbounds [30 x i8], [30 x i8]* %name2, i32 0, i32 0
  %2537 = load i16, i16* %fnum, align 2
  %2538 = call i8* @FileName(i16 zeroext %2537)
  %2539 = load i32, i32* %lnum, align 4
  %2540 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 37, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.125, i32 0, i32 0), i32 1, %struct.FILE_POS* %2534, i8* %2535, i8* %2536, i8* %2538, i32 %2539)
  br label %2541

; <label>:2541                                    ; preds = %2530, %2520, %2511
  %2542 = load i8, i8* %ch2, align 1
  %2543 = load i32, i32* %i, align 4
  %2544 = add nsw i32 %2543, 1
  %2545 = sext i32 %2544 to i64
  %2546 = load i8*, i8** %kc, align 8
  %2547 = getelementptr inbounds i8, i8* %2546, i64 %2545
  store i8 %2542, i8* %2547, align 1
  %2548 = load i32, i32* %pos, align 4
  %2549 = trunc i32 %2548 to i8
  %2550 = load i32, i32* %i, align 4
  %2551 = add nsw i32 %2550, 1
  %2552 = sext i32 %2551 to i64
  %2553 = load i8*, i8** %kv, align 8
  %2554 = getelementptr inbounds i8, i8* %2553, i64 %2552
  store i8 %2549, i8* %2554, align 1
  %2555 = load i32, i32* %kc_top, align 4
  %2556 = add nsw i32 %2555, 1
  store i32 %2556, i32* %kc_top, align 4
  br label %2557

; <label>:2557                                    ; preds = %2541, %2309
  br label %2296

; <label>:2558                                    ; preds = %2307
  %2559 = load i32, i32* %ks_top, align 4
  %2560 = trunc i32 %2559 to i16
  %2561 = load i16*, i16** %ks, align 8
  %2562 = getelementptr inbounds i16, i16* %2561, i64 0
  store i16 %2560, i16* %2562, align 2
  br label %2563

; <label>:2563                                    ; preds = %2558, %2263, %2260, %2255
  br label %2564

; <label>:2564                                    ; preds = %2563, %2247
  br label %2566

; <label>:2565                                    ; preds = %2062
  br label %2566

; <label>:2566                                    ; preds = %2565, %2564, %2227, %2213, %2131, %2110
  br label %2043

; <label>:2567                                    ; preds = %2060
  %2568 = load i8*, i8** %status, align 8
  %2569 = icmp eq i8* %2568, null
  br i1 %2569, label %2570, label %2578

; <label>:2570                                    ; preds = %2567
  %2571 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %2572 = bitcast %union.rec* %2571 to %struct.word_type*
  %2573 = getelementptr inbounds %struct.word_type, %struct.word_type* %2572, i32 0, i32 1
  %2574 = bitcast %union.FIRST_UNION* %2573 to %struct.FILE_POS*
  %2575 = load i16, i16* %fnum, align 2
  %2576 = call i8* @FileName(i16 zeroext %2575)
  %2577 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.126, i32 0, i32 0), i32 1, %struct.FILE_POS* %2574, i8* %2576)
  br label %2578

; <label>:2578                                    ; preds = %2570, %2567
  %2579 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %2580 = call i32 @fclose(%struct._IO_FILE* %2579)
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  %2581 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %2582 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %2581, i32 0, i32 8
  %2583 = load i32, i32* %2582, align 4
  %2584 = icmp ne i32 %2583, 0
  br i1 %2584, label %2585, label %2587

; <label>:2585                                    ; preds = %2578
  %2586 = load i32, i32* %xheight2, align 4
  br label %2590

; <label>:2587                                    ; preds = %2578
  %2588 = load i32, i32* @PlainCharHeight, align 4
  %2589 = sdiv i32 %2588, 4
  br label %2590

; <label>:2590                                    ; preds = %2587, %2585
  %2591 = phi i32 [ %2586, %2585 ], [ %2589, %2587 ]
  %2592 = load %union.rec*, %union.rec** %first_size, align 8
  %2593 = bitcast %union.rec* %2592 to %struct.word_type*
  %2594 = getelementptr inbounds %struct.word_type, %struct.word_type* %2593, i32 0, i32 3
  %2595 = bitcast %union.THIRD_UNION* %2594 to %struct.anon.7*
  %2596 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %2595, i32 0, i32 1
  store i32 %2591, i32* %2596, align 4
  %2597 = load %union.rec*, %union.rec** %first_size, align 8
  %2598 = bitcast %union.rec* %2597 to %struct.word_type*
  %2599 = getelementptr inbounds %struct.word_type, %struct.word_type* %2598, i32 0, i32 3
  %2600 = bitcast %union.THIRD_UNION* %2599 to %struct.anon.7*
  %2601 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %2600, i32 0, i32 3
  %2602 = load i8, i8* %2601, align 4
  %2603 = and i8 %2602, 127
  %2604 = zext i8 %2603 to i32
  %2605 = call zeroext i8 @MapCharEncoding(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i32 0, i32 0), i32 %2604)
  store i8 %2605, i8* %ch, align 1
  %2606 = load i8, i8* %ch, align 1
  %2607 = zext i8 %2606 to i32
  %2608 = icmp eq i32 %2607, 0
  br i1 %2608, label %2609, label %2610

; <label>:2609                                    ; preds = %2590
  br label %2618

; <label>:2610                                    ; preds = %2590
  %2611 = load i8, i8* %ch, align 1
  %2612 = zext i8 %2611 to i64
  %2613 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %2614 = getelementptr inbounds %struct.metrics, %struct.metrics* %2613, i64 %2612
  %2615 = getelementptr inbounds %struct.metrics, %struct.metrics* %2614, i32 0, i32 3
  %2616 = load i16, i16* %2615, align 2
  %2617 = sext i16 %2616 to i32
  br label %2618

; <label>:2618                                    ; preds = %2610, %2609
  %2619 = phi i32 [ 0, %2609 ], [ %2617, %2610 ]
  %2620 = load %union.rec*, %union.rec** %first_size, align 8
  %2621 = bitcast %union.rec* %2620 to %struct.word_type*
  %2622 = getelementptr inbounds %struct.word_type, %struct.word_type* %2621, i32 0, i32 3
  %2623 = bitcast %union.THIRD_UNION* %2622 to %struct.anon.7*
  %2624 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %2623, i32 0, i32 2
  store i32 %2619, i32* %2624, align 4
  %2625 = load %union.rec*, %union.rec** %Extrafilename, align 8
  %2626 = icmp ne %union.rec* %2625, null
  br i1 %2626, label %2627, label %2694

; <label>:2627                                    ; preds = %2618
  %2628 = load %union.rec*, %union.rec** %Extrafilename, align 8
  %2629 = bitcast %union.rec* %2628 to %struct.word_type*
  %2630 = getelementptr inbounds %struct.word_type, %struct.word_type* %2629, i32 0, i32 4
  %2631 = getelementptr inbounds [4 x i8], [4 x i8]* %2630, i32 0, i32 0
  %2632 = load %union.rec*, %union.rec** %Extrafilename, align 8
  %2633 = bitcast %union.rec* %2632 to %struct.word_type*
  %2634 = getelementptr inbounds %struct.word_type, %struct.word_type* %2633, i32 0, i32 1
  %2635 = bitcast %union.FIRST_UNION* %2634 to %struct.FILE_POS*
  %2636 = call zeroext i16 @DefineFile(i8* %2631, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), %struct.FILE_POS* %2635, i32 5, i32 5)
  store i16 %2636, i16* %extra_fnum, align 2
  %2637 = load i16, i16* %extra_fnum, align 2
  %2638 = call %struct._IO_FILE* @OpenFile(i16 zeroext %2637, i32 0, i32 0)
  store %struct._IO_FILE* %2638, %struct._IO_FILE** %extra_fp, align 8
  %2639 = load %struct._IO_FILE*, %struct._IO_FILE** %extra_fp, align 8
  %2640 = icmp eq %struct._IO_FILE* %2639, null
  br i1 %2640, label %2641, label %2649

; <label>:2641                                    ; preds = %2627
  %2642 = load %union.rec*, %union.rec** %Extrafilename, align 8
  %2643 = bitcast %union.rec* %2642 to %struct.word_type*
  %2644 = getelementptr inbounds %struct.word_type, %struct.word_type* %2643, i32 0, i32 1
  %2645 = bitcast %union.FIRST_UNION* %2644 to %struct.FILE_POS*
  %2646 = load i16, i16* %extra_fnum, align 2
  %2647 = call i8* @FileName(i16 zeroext %2646)
  %2648 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.128, i32 0, i32 0), i32 1, %struct.FILE_POS* %2645, i8* %2647)
  br label %2649

; <label>:2649                                    ; preds = %2641, %2627
  store i32 0, i32* %lnum, align 4
  br label %2650

; <label>:2650                                    ; preds = %2690, %2649
  %2651 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %2652 = load %struct._IO_FILE*, %struct._IO_FILE** %extra_fp, align 8
  %2653 = call i8* @fgets(i8* %2651, i32 512, %struct._IO_FILE* %2652)
  %2654 = icmp ne i8* %2653, null
  br i1 %2654, label %2655, label %2691

; <label>:2655                                    ; preds = %2650
  %2656 = load i32, i32* %lnum, align 4
  %2657 = add nsw i32 %2656, 1
  store i32 %2657, i32* %lnum, align 4
  %2658 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %2659 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %2660 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2658, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), i8* %2659) #4
  %2661 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i64 0
  %2662 = load i8, i8* %2661, align 1
  %2663 = zext i8 %2662 to i32
  %2664 = icmp eq i32 %2663, 83
  br i1 %2664, label %2665, label %2690

; <label>:2665                                    ; preds = %2655
  %2666 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %2667 = call i32 @strcmp(i8* %2666, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.129, i32 0, i32 0)) #5
  %2668 = icmp eq i32 %2667, 0
  br i1 %2668, label %2669, label %2677

; <label>:2669                                    ; preds = %2665
  %2670 = load %union.rec*, %union.rec** %face, align 8
  %2671 = load i32, i32* %fixed_pitch, align 4
  %2672 = load i32, i32* %xheight2, align 4
  %2673 = load i8*, i8** %lig, align 8
  %2674 = load i16, i16* %extra_fnum, align 2
  %2675 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %2676 = load %struct._IO_FILE*, %struct._IO_FILE** %extra_fp, align 8
  call void @ReadCharMetrics(%union.rec* %2670, i32 %2671, i32 %2672, i8* %2673, i32* %ligtop, i16 zeroext %2674, %struct.metrics* %2675, i32* %lnum, %struct._IO_FILE* %2676)
  br label %2689

; <label>:2677                                    ; preds = %2665
  %2678 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %2679 = call i32 @strcmp(i8* %2678, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.130, i32 0, i32 0)) #5
  %2680 = icmp eq i32 %2679, 0
  br i1 %2680, label %2681, label %2688

; <label>:2681                                    ; preds = %2677
  %2682 = load %union.rec*, %union.rec** %face, align 8
  %2683 = load %union.rec*, %union.rec** %Extrafilename, align 8
  %2684 = load i16, i16* %extra_fnum, align 2
  %2685 = load i16*, i16** %composite, align 8
  %2686 = load %struct.composite_rec*, %struct.composite_rec** %cmp, align 8
  %2687 = load %struct._IO_FILE*, %struct._IO_FILE** %extra_fp, align 8
  call void @ReadCompositeMetrics(%union.rec* %2682, %union.rec* %2683, i16 zeroext %2684, i32* %lnum, i16* %2685, %struct.composite_rec* %2686, i32* %cmptop, %struct._IO_FILE* %2687)
  br label %2688

; <label>:2688                                    ; preds = %2681, %2677
  br label %2689

; <label>:2689                                    ; preds = %2688, %2669
  br label %2690

; <label>:2690                                    ; preds = %2689, %2655
  br label %2650

; <label>:2691                                    ; preds = %2650
  %2692 = load %struct._IO_FILE*, %struct._IO_FILE** %extra_fp, align 8
  %2693 = call i32 @fclose(%struct._IO_FILE* %2692)
  store %struct._IO_FILE* null, %struct._IO_FILE** %extra_fp, align 8
  br label %2694

; <label>:2694                                    ; preds = %2691, %2618
  %2695 = load %union.rec*, %union.rec** %first_size, align 8
  %2696 = load i32, i32* @font_count, align 4
  %2697 = zext i32 %2696 to i64
  %2698 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %2699 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2698, i64 %2697
  %2700 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2699, i32 0, i32 5
  store %union.rec* %2695, %union.rec** %2700, align 8
  %2701 = load %union.rec*, %union.rec** %face, align 8
  %2702 = load i32, i32* @font_count, align 4
  %2703 = zext i32 %2702 to i64
  %2704 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %2705 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2704, i64 %2703
  %2706 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2705, i32 0, i32 6
  store %union.rec* %2701, %union.rec** %2706, align 8
  %2707 = load i32, i32* %xheight2, align 4
  %2708 = load i32, i32* %under_pos, align 4
  %2709 = sub nsw i32 %2707, %2708
  %2710 = trunc i32 %2709 to i16
  %2711 = load i32, i32* @font_count, align 4
  %2712 = zext i32 %2711 to i64
  %2713 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %2714 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2713, i64 %2712
  %2715 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2714, i32 0, i32 7
  store i16 %2710, i16* %2715, align 2
  %2716 = load i32, i32* %under_thick, align 4
  %2717 = trunc i32 %2716 to i16
  %2718 = load i32, i32* @font_count, align 4
  %2719 = zext i32 %2718 to i64
  %2720 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %2721 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2720, i64 %2719
  %2722 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2721, i32 0, i32 8
  store i16 %2717, i16* %2722, align 2
  %2723 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %2724 = load i32, i32* @font_count, align 4
  %2725 = zext i32 %2724 to i64
  %2726 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %2727 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2726, i64 %2725
  %2728 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2727, i32 0, i32 0
  store %struct.metrics* %2723, %struct.metrics** %2728, align 8
  %2729 = load i8*, i8** %lig, align 8
  %2730 = load i32, i32* @font_count, align 4
  %2731 = zext i32 %2730 to i64
  %2732 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %2733 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2732, i64 %2731
  %2734 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2733, i32 0, i32 1
  store i8* %2729, i8** %2734, align 8
  %2735 = load i16*, i16** %composite, align 8
  %2736 = load i32, i32* @font_count, align 4
  %2737 = zext i32 %2736 to i64
  %2738 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %2739 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2738, i64 %2737
  %2740 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2739, i32 0, i32 2
  store i16* %2735, i16** %2740, align 8
  %2741 = load %struct.composite_rec*, %struct.composite_rec** %cmp, align 8
  %2742 = load i32, i32* @font_count, align 4
  %2743 = zext i32 %2742 to i64
  %2744 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %2745 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2744, i64 %2743
  %2746 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2745, i32 0, i32 3
  store %struct.composite_rec* %2741, %struct.composite_rec** %2746, align 8
  %2747 = load i32, i32* %cmptop, align 4
  %2748 = load i32, i32* @font_count, align 4
  %2749 = zext i32 %2748 to i64
  %2750 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %2751 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2750, i64 %2749
  %2752 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2751, i32 0, i32 4
  store i32 %2747, i32* %2752, align 4
  %2753 = load i16*, i16** %kt, align 8
  %2754 = load i32, i32* @font_count, align 4
  %2755 = zext i32 %2754 to i64
  %2756 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %2757 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2756, i64 %2755
  %2758 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2757, i32 0, i32 9
  store i16* %2753, i16** %2758, align 8
  %2759 = load i8*, i8** %kc, align 8
  %2760 = load i32, i32* @font_count, align 4
  %2761 = zext i32 %2760 to i64
  %2762 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %2763 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2762, i64 %2761
  %2764 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2763, i32 0, i32 10
  store i8* %2759, i8** %2764, align 8
  %2765 = load i8*, i8** %kv, align 8
  %2766 = load i32, i32* @font_count, align 4
  %2767 = zext i32 %2766 to i64
  %2768 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %2769 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2768, i64 %2767
  %2770 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2769, i32 0, i32 11
  store i8* %2765, i8** %2770, align 8
  %2771 = load i16*, i16** %ks, align 8
  %2772 = load i32, i32* @font_count, align 4
  %2773 = zext i32 %2772 to i64
  %2774 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %2775 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2774, i64 %2773
  %2776 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %2775, i32 0, i32 12
  store i16* %2771, i16** %2776, align 8
  %2777 = load %union.rec*, %union.rec** %face, align 8
  store %union.rec* %2777, %union.rec** %1
  br label %2778

; <label>:2778                                    ; preds = %2694, %868, %645, %80
  %2779 = load %union.rec*, %union.rec** %1
  ret %union.rec* %2779
}

declare void @GetGap(%union.rec*, %struct.STYLE*, %struct.GAP*, i32*) #1

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define void @FontWordSize(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %a = alloca i8*, align 8
  %b = alloca i8*, align 8
  %lig = alloca i8*, align 8
  %unacc = alloca i8*, align 8
  %acc = alloca i8*, align 8
  %tmp = alloca %union.rec*, align 8
  %buff = alloca [512 x i8], align 16
  %m = alloca i32, align 4
  %r = alloca i32, align 4
  %u = alloca i32, align 4
  %d = alloca i32, align 4
  %ksize = alloca i32, align 4
  %fnt = alloca %struct.metrics*, align 8
  %ua_ch1 = alloca i32, align 4
  %ua_ch2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %kc = alloca i8*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = bitcast %union.rec* %2 to %struct.word_type*
  %4 = getelementptr inbounds %struct.word_type, %struct.word_type* %3, i32 0, i32 1
  %5 = bitcast %union.FIRST_UNION* %4 to %struct.anon*
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 %8, 11
  br i1 %9, label %22, label %10

; <label>:10                                      ; preds = %0
  %11 = load %union.rec*, %union.rec** %1, align 8
  %12 = bitcast %union.rec* %11 to %struct.word_type*
  %13 = getelementptr inbounds %struct.word_type, %struct.word_type* %12, i32 0, i32 1
  %14 = bitcast %union.FIRST_UNION* %13 to %struct.anon*
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %17, 12
  br i1 %18, label %22, label %19

; <label>:19                                      ; preds = %10
  %20 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %21 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.40, i32 0, i32 0))
  br label %22

; <label>:22                                      ; preds = %19, %10, %0
  %23 = load %union.rec*, %union.rec** %1, align 8
  %24 = bitcast %union.rec* %23 to %struct.word_type*
  %25 = getelementptr inbounds %struct.word_type, %struct.word_type* %24, i32 0, i32 4
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %25, i32 0, i32 0
  store i8* %26, i8** %p, align 8
  %27 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  store i8* %27, i8** %q, align 8
  %28 = load i8*, i8** %p, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %665

; <label>:31                                      ; preds = %22
  %32 = load %union.rec*, %union.rec** %1, align 8
  %33 = bitcast %union.rec* %32 to %struct.word_type*
  %34 = getelementptr inbounds %struct.word_type, %struct.word_type* %33, i32 0, i32 2
  %35 = bitcast %union.SECOND_UNION* %34 to %struct.anon.1*
  %36 = bitcast %struct.anon.1* %35 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 4095
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %50, label %40

; <label>:40                                      ; preds = %31
  %41 = load %union.rec*, %union.rec** %1, align 8
  %42 = bitcast %union.rec* %41 to %struct.word_type*
  %43 = getelementptr inbounds %struct.word_type, %struct.word_type* %42, i32 0, i32 2
  %44 = bitcast %union.SECOND_UNION* %43 to %struct.anon.1*
  %45 = bitcast %struct.anon.1* %44 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 4095
  %48 = load i32, i32* @font_count, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %60

; <label>:50                                      ; preds = %40, %31
  %51 = load %union.rec*, %union.rec** %1, align 8
  %52 = bitcast %union.rec* %51 to %struct.word_type*
  %53 = getelementptr inbounds %struct.word_type, %struct.word_type* %52, i32 0, i32 1
  %54 = bitcast %union.FIRST_UNION* %53 to %struct.FILE_POS*
  %55 = load %union.rec*, %union.rec** %1, align 8
  %56 = bitcast %union.rec* %55 to %struct.word_type*
  %57 = getelementptr inbounds %struct.word_type, %struct.word_type* %56, i32 0, i32 4
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %57, i32 0, i32 0
  %59 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i32 0, i32 0), i32 1, %struct.FILE_POS* %54, i8* %58)
  br label %60

; <label>:60                                      ; preds = %50, %40
  %61 = load %union.rec*, %union.rec** %1, align 8
  %62 = bitcast %union.rec* %61 to %struct.word_type*
  %63 = getelementptr inbounds %struct.word_type, %struct.word_type* %62, i32 0, i32 2
  %64 = bitcast %union.SECOND_UNION* %63 to %struct.anon.1*
  %65 = bitcast %struct.anon.1* %64 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = lshr i32 %66, 12
  %68 = and i32 %67, 1023
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %85

; <label>:70                                      ; preds = %60
  %71 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %72 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

; <label>:75                                      ; preds = %70
  %76 = load %union.rec*, %union.rec** %1, align 8
  %77 = bitcast %union.rec* %76 to %struct.word_type*
  %78 = getelementptr inbounds %struct.word_type, %struct.word_type* %77, i32 0, i32 1
  %79 = bitcast %union.FIRST_UNION* %78 to %struct.FILE_POS*
  %80 = load %union.rec*, %union.rec** %1, align 8
  %81 = bitcast %union.rec* %80 to %struct.word_type*
  %82 = getelementptr inbounds %struct.word_type, %struct.word_type* %81, i32 0, i32 4
  %83 = getelementptr inbounds [4 x i8], [4 x i8]* %82, i32 0, i32 0
  %84 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i32 0, i32 0), i32 1, %struct.FILE_POS* %79, i8* %83)
  br label %85

; <label>:85                                      ; preds = %75, %70, %60
  %86 = load %union.rec*, %union.rec** %1, align 8
  %87 = bitcast %union.rec* %86 to %struct.word_type*
  %88 = getelementptr inbounds %struct.word_type, %struct.word_type* %87, i32 0, i32 2
  %89 = bitcast %union.SECOND_UNION* %88 to %struct.anon.1*
  %90 = bitcast %struct.anon.1* %89 to i32*
  %91 = load i32, i32* %90, align 4
  %92 = lshr i32 %91, 23
  %93 = and i32 %92, 63
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %105

; <label>:95                                      ; preds = %85
  %96 = load %union.rec*, %union.rec** %1, align 8
  %97 = bitcast %union.rec* %96 to %struct.word_type*
  %98 = getelementptr inbounds %struct.word_type, %struct.word_type* %97, i32 0, i32 1
  %99 = bitcast %union.FIRST_UNION* %98 to %struct.FILE_POS*
  %100 = load %union.rec*, %union.rec** %1, align 8
  %101 = bitcast %union.rec* %100 to %struct.word_type*
  %102 = getelementptr inbounds %struct.word_type, %struct.word_type* %101, i32 0, i32 4
  %103 = getelementptr inbounds [4 x i8], [4 x i8]* %102, i32 0, i32 0
  %104 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i32 0, i32 0), i32 1, %struct.FILE_POS* %99, i8* %103)
  br label %105

; <label>:105                                     ; preds = %95, %85
  %106 = load %union.rec*, %union.rec** %1, align 8
  %107 = bitcast %union.rec* %106 to %struct.word_type*
  %108 = getelementptr inbounds %struct.word_type, %struct.word_type* %107, i32 0, i32 2
  %109 = bitcast %union.SECOND_UNION* %108 to %struct.anon.1*
  %110 = bitcast %struct.anon.1* %109 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 4095
  %113 = zext i32 %112 to i64
  %114 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %115 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %114, i64 %113
  %116 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %115, i32 0, i32 0
  %117 = load %struct.metrics*, %struct.metrics** %116, align 8
  store %struct.metrics* %117, %struct.metrics** %fnt, align 8
  %118 = load %union.rec*, %union.rec** %1, align 8
  %119 = bitcast %union.rec* %118 to %struct.word_type*
  %120 = getelementptr inbounds %struct.word_type, %struct.word_type* %119, i32 0, i32 2
  %121 = bitcast %union.SECOND_UNION* %120 to %struct.anon.1*
  %122 = bitcast %struct.anon.1* %121 to i32*
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 4095
  %125 = zext i32 %124 to i64
  %126 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %127 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %126, i64 %125
  %128 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %lig, align 8
  %130 = load %union.rec*, %union.rec** %1, align 8
  %131 = bitcast %union.rec* %130 to %struct.word_type*
  %132 = getelementptr inbounds %struct.word_type, %struct.word_type* %131, i32 0, i32 2
  %133 = bitcast %union.SECOND_UNION* %132 to %struct.anon.1*
  %134 = bitcast %struct.anon.1* %133 to i32*
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 4095
  %137 = zext i32 %136 to i64
  %138 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %139 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %138, i64 %137
  %140 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %139, i32 0, i32 5
  %141 = load %union.rec*, %union.rec** %140, align 8
  %142 = bitcast %union.rec* %141 to %struct.word_type*
  %143 = getelementptr inbounds %struct.word_type, %struct.word_type* %142, i32 0, i32 3
  %144 = bitcast %union.THIRD_UNION* %143 to %struct.anon.7*
  %145 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %144, i32 0, i32 3
  %146 = load i8, i8* %145, align 4
  %147 = and i8 %146, 127
  %148 = zext i8 %147 to i32
  store i32 %148, i32* %m, align 4
  %149 = load i32, i32* %m, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds [0 x %struct.mapvec*], [0 x %struct.mapvec*]* @MapTable, i32 0, i64 %150
  %152 = load %struct.mapvec*, %struct.mapvec** %151, align 8
  %153 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %152, i32 0, i32 7
  %154 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %153, i32 0, i64 2
  %155 = getelementptr inbounds [256 x i8], [256 x i8]* %154, i32 0, i32 0
  store i8* %155, i8** %unacc, align 8
  %156 = load i32, i32* %m, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds [0 x %struct.mapvec*], [0 x %struct.mapvec*]* @MapTable, i32 0, i64 %157
  %159 = load %struct.mapvec*, %struct.mapvec** %158, align 8
  %160 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %159, i32 0, i32 7
  %161 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %160, i32 0, i64 3
  %162 = getelementptr inbounds [256 x i8], [256 x i8]* %161, i32 0, i32 0
  store i8* %162, i8** %acc, align 8
  store i32 0, i32* %r, align 4
  store i32 0, i32* %u, align 4
  store i32 0, i32* %d, align 4
  br label %163

; <label>:163                                     ; preds = %496, %105
  %164 = load i8*, i8** %p, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %p, align 8
  %166 = load i8, i8* %164, align 1
  %167 = load i8*, i8** %q, align 8
  store i8 %166, i8* %167, align 1
  %168 = zext i8 %166 to i64
  %169 = load i8*, i8** %lig, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 %168
  %171 = load i8, i8* %170, align 1
  %172 = icmp ne i8 %171, 0
  br i1 %172, label %173, label %444

; <label>:173                                     ; preds = %163
  %174 = load i8*, i8** %q, align 8
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i64
  %177 = load i8*, i8** %lig, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 %176
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %369

; <label>:182                                     ; preds = %173
  %183 = load %union.rec*, %union.rec** %1, align 8
  %184 = bitcast %union.rec* %183 to %struct.word_type*
  %185 = getelementptr inbounds %struct.word_type, %struct.word_type* %184, i32 0, i32 1
  %186 = bitcast %union.FIRST_UNION* %185 to %struct.FILE_POS*
  %187 = call %union.rec* @MakeWord(i32 12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), %struct.FILE_POS* %186)
  store %union.rec* %187, %union.rec** %tmp, align 8
  %188 = load i8*, i8** %q, align 8
  %189 = load i8, i8* %188, align 1
  %190 = load %union.rec*, %union.rec** %tmp, align 8
  %191 = bitcast %union.rec* %190 to %struct.word_type*
  %192 = getelementptr inbounds %struct.word_type, %struct.word_type* %191, i32 0, i32 4
  %193 = getelementptr inbounds [4 x i8], [4 x i8]* %192, i32 0, i64 0
  store i8 %189, i8* %193, align 1
  %194 = load i8*, i8** %q, align 8
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i64
  %197 = load i8*, i8** %unacc, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 %196
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = load i8*, i8** %q, align 8
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = icmp ne i32 %200, %203
  br i1 %204, label %205, label %296

; <label>:205                                     ; preds = %182
  %206 = load i8*, i8** %q, align 8
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i64
  %209 = load i8*, i8** %unacc, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 %208
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i64
  %213 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %214 = getelementptr inbounds %struct.metrics, %struct.metrics* %213, i64 %212
  %215 = getelementptr inbounds %struct.metrics, %struct.metrics* %214, i32 0, i32 0
  %216 = load i16, i16* %215, align 2
  %217 = load i8*, i8** %q, align 8
  %218 = load i8, i8* %217, align 1
  %219 = zext i8 %218 to i64
  %220 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %221 = getelementptr inbounds %struct.metrics, %struct.metrics* %220, i64 %219
  %222 = getelementptr inbounds %struct.metrics, %struct.metrics* %221, i32 0, i32 0
  store i16 %216, i16* %222, align 2
  %223 = load i8*, i8** %q, align 8
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i64
  %226 = load i8*, i8** %unacc, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 %225
  %228 = load i8, i8* %227, align 1
  %229 = zext i8 %228 to i64
  %230 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %231 = getelementptr inbounds %struct.metrics, %struct.metrics* %230, i64 %229
  %232 = getelementptr inbounds %struct.metrics, %struct.metrics* %231, i32 0, i32 1
  %233 = load i16, i16* %232, align 2
  %234 = load i8*, i8** %q, align 8
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i64
  %237 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %238 = getelementptr inbounds %struct.metrics, %struct.metrics* %237, i64 %236
  %239 = getelementptr inbounds %struct.metrics, %struct.metrics* %238, i32 0, i32 1
  store i16 %233, i16* %239, align 2
  %240 = load i8*, i8** %q, align 8
  %241 = load i8, i8* %240, align 1
  %242 = zext i8 %241 to i64
  %243 = load i8*, i8** %unacc, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 %242
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i64
  %247 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %248 = getelementptr inbounds %struct.metrics, %struct.metrics* %247, i64 %246
  %249 = getelementptr inbounds %struct.metrics, %struct.metrics* %248, i32 0, i32 2
  %250 = load i16, i16* %249, align 2
  %251 = load i8*, i8** %q, align 8
  %252 = load i8, i8* %251, align 1
  %253 = zext i8 %252 to i64
  %254 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %255 = getelementptr inbounds %struct.metrics, %struct.metrics* %254, i64 %253
  %256 = getelementptr inbounds %struct.metrics, %struct.metrics* %255, i32 0, i32 2
  store i16 %250, i16* %256, align 2
  %257 = load i8*, i8** %q, align 8
  %258 = load i8, i8* %257, align 1
  %259 = zext i8 %258 to i64
  %260 = load i8*, i8** %unacc, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 %259
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i64
  %264 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %265 = getelementptr inbounds %struct.metrics, %struct.metrics* %264, i64 %263
  %266 = getelementptr inbounds %struct.metrics, %struct.metrics* %265, i32 0, i32 3
  %267 = load i16, i16* %266, align 2
  %268 = load i8*, i8** %q, align 8
  %269 = load i8, i8* %268, align 1
  %270 = zext i8 %269 to i64
  %271 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %272 = getelementptr inbounds %struct.metrics, %struct.metrics* %271, i64 %270
  %273 = getelementptr inbounds %struct.metrics, %struct.metrics* %272, i32 0, i32 3
  store i16 %267, i16* %273, align 2
  %274 = load i8*, i8** %q, align 8
  %275 = load i8, i8* %274, align 1
  %276 = zext i8 %275 to i64
  %277 = load i8*, i8** %unacc, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 %276
  %279 = load i8, i8* %278, align 1
  %280 = zext i8 %279 to i64
  %281 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %282 = getelementptr inbounds %struct.metrics, %struct.metrics* %281, i64 %280
  %283 = getelementptr inbounds %struct.metrics, %struct.metrics* %282, i32 0, i32 4
  %284 = load i16, i16* %283, align 2
  %285 = load i8*, i8** %q, align 8
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i64
  %288 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %289 = getelementptr inbounds %struct.metrics, %struct.metrics* %288, i64 %287
  %290 = getelementptr inbounds %struct.metrics, %struct.metrics* %289, i32 0, i32 4
  store i16 %284, i16* %290, align 2
  %291 = load i8*, i8** %q, align 8
  %292 = load i8, i8* %291, align 1
  %293 = zext i8 %292 to i64
  %294 = load i8*, i8** %lig, align 8
  %295 = getelementptr inbounds i8, i8* %294, i64 %293
  store i8 0, i8* %295, align 1
  br label %315

; <label>:296                                     ; preds = %182
  %297 = load %union.rec*, %union.rec** %1, align 8
  %298 = bitcast %union.rec* %297 to %struct.word_type*
  %299 = getelementptr inbounds %struct.word_type, %struct.word_type* %298, i32 0, i32 1
  %300 = bitcast %union.FIRST_UNION* %299 to %struct.FILE_POS*
  %301 = load %union.rec*, %union.rec** %tmp, align 8
  %302 = call i8* @StringQuotedWord(%union.rec* %301)
  %303 = load %union.rec*, %union.rec** %1, align 8
  %304 = bitcast %union.rec* %303 to %struct.word_type*
  %305 = getelementptr inbounds %struct.word_type, %struct.word_type* %304, i32 0, i32 2
  %306 = bitcast %union.SECOND_UNION* %305 to %struct.anon.1*
  %307 = bitcast %struct.anon.1* %306 to i32*
  %308 = load i32, i32* %307, align 4
  %309 = and i32 %308, 4095
  %310 = call i8* @FontFamilyAndFace(i32 %309)
  %311 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 60, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.45, i32 0, i32 0), i32 2, %struct.FILE_POS* %300, i8* %302, i8* %310)
  %312 = load i8*, i8** %q, align 8
  store i8 32, i8* %312, align 1
  %313 = load i8*, i8** %p, align 8
  %314 = getelementptr inbounds i8, i8* %313, i64 -1
  store i8 32, i8* %314, align 1
  br label %315

; <label>:315                                     ; preds = %296, %205
  %316 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %316, %union.rec** @zz_hold, align 8
  %317 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %317, %union.rec** @zz_hold, align 8
  %318 = load %union.rec*, %union.rec** @zz_hold, align 8
  %319 = bitcast %union.rec* %318 to %struct.word_type*
  %320 = getelementptr inbounds %struct.word_type, %struct.word_type* %319, i32 0, i32 1
  %321 = bitcast %union.FIRST_UNION* %320 to %struct.anon*
  %322 = getelementptr inbounds %struct.anon, %struct.anon* %321, i32 0, i32 0
  %323 = load i8, i8* %322, align 1
  %324 = zext i8 %323 to i32
  %325 = icmp eq i32 %324, 11
  br i1 %325, label %335, label %326

; <label>:326                                     ; preds = %315
  %327 = load %union.rec*, %union.rec** @zz_hold, align 8
  %328 = bitcast %union.rec* %327 to %struct.word_type*
  %329 = getelementptr inbounds %struct.word_type, %struct.word_type* %328, i32 0, i32 1
  %330 = bitcast %union.FIRST_UNION* %329 to %struct.anon*
  %331 = getelementptr inbounds %struct.anon, %struct.anon* %330, i32 0, i32 0
  %332 = load i8, i8* %331, align 1
  %333 = zext i8 %332 to i32
  %334 = icmp eq i32 %333, 12
  br i1 %334, label %335, label %343

; <label>:335                                     ; preds = %326, %315
  %336 = load %union.rec*, %union.rec** @zz_hold, align 8
  %337 = bitcast %union.rec* %336 to %struct.word_type*
  %338 = getelementptr inbounds %struct.word_type, %struct.word_type* %337, i32 0, i32 1
  %339 = bitcast %union.FIRST_UNION* %338 to %struct.anon*
  %340 = getelementptr inbounds %struct.anon, %struct.anon* %339, i32 0, i32 1
  %341 = load i8, i8* %340, align 1
  %342 = zext i8 %341 to i32
  br label %354

; <label>:343                                     ; preds = %326
  %344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %345 = bitcast %union.rec* %344 to %struct.word_type*
  %346 = getelementptr inbounds %struct.word_type, %struct.word_type* %345, i32 0, i32 1
  %347 = bitcast %union.FIRST_UNION* %346 to %struct.anon*
  %348 = getelementptr inbounds %struct.anon, %struct.anon* %347, i32 0, i32 0
  %349 = load i8, i8* %348, align 1
  %350 = zext i8 %349 to i64
  %351 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %350
  %352 = load i8, i8* %351, align 1
  %353 = zext i8 %352 to i32
  br label %354

; <label>:354                                     ; preds = %343, %335
  %355 = phi i32 [ %342, %335 ], [ %353, %343 ]
  store i32 %355, i32* @zz_size, align 4
  %356 = load i32, i32* @zz_size, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %357
  %359 = load %union.rec*, %union.rec** %358, align 8
  %360 = load %union.rec*, %union.rec** @zz_hold, align 8
  %361 = bitcast %union.rec* %360 to %struct.word_type*
  %362 = getelementptr inbounds %struct.word_type, %struct.word_type* %361, i32 0, i32 0
  %363 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %362, i32 0, i64 0
  %364 = getelementptr inbounds %struct.LIST, %struct.LIST* %363, i32 0, i32 0
  store %union.rec* %359, %union.rec** %364, align 8
  %365 = load %union.rec*, %union.rec** @zz_hold, align 8
  %366 = load i32, i32* @zz_size, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %367
  store %union.rec* %365, %union.rec** %368, align 8
  br label %443

; <label>:369                                     ; preds = %173
  %370 = load i8*, i8** %p, align 8
  %371 = getelementptr inbounds i8, i8* %370, i64 -1
  %372 = load i8, i8* %371, align 1
  %373 = zext i8 %372 to i64
  %374 = load i8*, i8** %lig, align 8
  %375 = getelementptr inbounds i8, i8* %374, i64 %373
  %376 = load i8, i8* %375, align 1
  %377 = zext i8 %376 to i32
  %378 = add nsw i32 %377, 256
  %379 = sext i32 %378 to i64
  %380 = load i8*, i8** %lig, align 8
  %381 = getelementptr inbounds i8, i8* %380, i64 %379
  store i8* %381, i8** %a, align 8
  br label %382

; <label>:382                                     ; preds = %441, %369
  %383 = load i8*, i8** %a, align 8
  %384 = getelementptr inbounds i8, i8* %383, i32 1
  store i8* %384, i8** %a, align 8
  %385 = load i8, i8* %383, align 1
  %386 = zext i8 %385 to i32
  %387 = load i8*, i8** %p, align 8
  %388 = getelementptr inbounds i8, i8* %387, i64 -1
  %389 = load i8, i8* %388, align 1
  %390 = zext i8 %389 to i32
  %391 = icmp eq i32 %386, %390
  br i1 %391, label %392, label %442

; <label>:392                                     ; preds = %382
  %393 = load i8*, i8** %p, align 8
  store i8* %393, i8** %b, align 8
  br label %394

; <label>:394                                     ; preds = %415, %392
  %395 = load i8*, i8** %a, align 8
  %396 = load i8, i8* %395, align 1
  %397 = zext i8 %396 to i32
  %398 = load i8*, i8** %b, align 8
  %399 = load i8, i8* %398, align 1
  %400 = zext i8 %399 to i32
  %401 = icmp eq i32 %397, %400
  br i1 %401, label %402, label %413

; <label>:402                                     ; preds = %394
  %403 = load i8*, i8** %a, align 8
  %404 = getelementptr inbounds i8, i8* %403, i64 1
  %405 = load i8, i8* %404, align 1
  %406 = zext i8 %405 to i32
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %413

; <label>:408                                     ; preds = %402
  %409 = load i8*, i8** %b, align 8
  %410 = load i8, i8* %409, align 1
  %411 = zext i8 %410 to i32
  %412 = icmp ne i32 %411, 0
  br label %413

; <label>:413                                     ; preds = %408, %402, %394
  %414 = phi i1 [ false, %402 ], [ false, %394 ], [ %412, %408 ]
  br i1 %414, label %415, label %420

; <label>:415                                     ; preds = %413
  %416 = load i8*, i8** %a, align 8
  %417 = getelementptr inbounds i8, i8* %416, i32 1
  store i8* %417, i8** %a, align 8
  %418 = load i8*, i8** %b, align 8
  %419 = getelementptr inbounds i8, i8* %418, i32 1
  store i8* %419, i8** %b, align 8
  br label %394

; <label>:420                                     ; preds = %413
  %421 = load i8*, i8** %a, align 8
  %422 = getelementptr inbounds i8, i8* %421, i64 1
  %423 = load i8, i8* %422, align 1
  %424 = zext i8 %423 to i32
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %431

; <label>:426                                     ; preds = %420
  %427 = load i8*, i8** %a, align 8
  %428 = load i8, i8* %427, align 1
  %429 = load i8*, i8** %q, align 8
  store i8 %428, i8* %429, align 1
  %430 = load i8*, i8** %b, align 8
  store i8* %430, i8** %p, align 8
  br label %442

; <label>:431                                     ; preds = %420
  br label %432

; <label>:432                                     ; preds = %437, %431
  %433 = load i8*, i8** %a, align 8
  %434 = getelementptr inbounds i8, i8* %433, i32 1
  store i8* %434, i8** %a, align 8
  %435 = load i8, i8* %434, align 1
  %436 = icmp ne i8 %435, 0
  br i1 %436, label %437, label %438

; <label>:437                                     ; preds = %432
  br label %432

; <label>:438                                     ; preds = %432
  %439 = load i8*, i8** %a, align 8
  %440 = getelementptr inbounds i8, i8* %439, i32 1
  store i8* %440, i8** %a, align 8
  br label %441

; <label>:441                                     ; preds = %438
  br label %382

; <label>:442                                     ; preds = %426, %382
  br label %443

; <label>:443                                     ; preds = %442, %354
  br label %444

; <label>:444                                     ; preds = %443, %163
  %445 = load i8*, i8** %q, align 8
  %446 = load i8, i8* %445, align 1
  %447 = zext i8 %446 to i64
  %448 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %449 = getelementptr inbounds %struct.metrics, %struct.metrics* %448, i64 %447
  %450 = getelementptr inbounds %struct.metrics, %struct.metrics* %449, i32 0, i32 0
  %451 = load i16, i16* %450, align 2
  %452 = sext i16 %451 to i32
  %453 = load i32, i32* %u, align 4
  %454 = icmp sgt i32 %452, %453
  br i1 %454, label %455, label %464

; <label>:455                                     ; preds = %444
  %456 = load i8*, i8** %q, align 8
  %457 = load i8, i8* %456, align 1
  %458 = zext i8 %457 to i64
  %459 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %460 = getelementptr inbounds %struct.metrics, %struct.metrics* %459, i64 %458
  %461 = getelementptr inbounds %struct.metrics, %struct.metrics* %460, i32 0, i32 0
  %462 = load i16, i16* %461, align 2
  %463 = sext i16 %462 to i32
  store i32 %463, i32* %u, align 4
  br label %464

; <label>:464                                     ; preds = %455, %444
  %465 = load i8*, i8** %q, align 8
  %466 = load i8, i8* %465, align 1
  %467 = zext i8 %466 to i64
  %468 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %469 = getelementptr inbounds %struct.metrics, %struct.metrics* %468, i64 %467
  %470 = getelementptr inbounds %struct.metrics, %struct.metrics* %469, i32 0, i32 1
  %471 = load i16, i16* %470, align 2
  %472 = sext i16 %471 to i32
  %473 = load i32, i32* %d, align 4
  %474 = icmp slt i32 %472, %473
  br i1 %474, label %475, label %484

; <label>:475                                     ; preds = %464
  %476 = load i8*, i8** %q, align 8
  %477 = load i8, i8* %476, align 1
  %478 = zext i8 %477 to i64
  %479 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %480 = getelementptr inbounds %struct.metrics, %struct.metrics* %479, i64 %478
  %481 = getelementptr inbounds %struct.metrics, %struct.metrics* %480, i32 0, i32 1
  %482 = load i16, i16* %481, align 2
  %483 = sext i16 %482 to i32
  store i32 %483, i32* %d, align 4
  br label %484

; <label>:484                                     ; preds = %475, %464
  %485 = load i8*, i8** %q, align 8
  %486 = getelementptr inbounds i8, i8* %485, i32 1
  store i8* %486, i8** %q, align 8
  %487 = load i8, i8* %485, align 1
  %488 = zext i8 %487 to i64
  %489 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %490 = getelementptr inbounds %struct.metrics, %struct.metrics* %489, i64 %488
  %491 = getelementptr inbounds %struct.metrics, %struct.metrics* %490, i32 0, i32 3
  %492 = load i16, i16* %491, align 2
  %493 = sext i16 %492 to i32
  %494 = load i32, i32* %r, align 4
  %495 = add nsw i32 %494, %493
  store i32 %495, i32* %r, align 4
  br label %496

; <label>:496                                     ; preds = %484
  %497 = load i8*, i8** %p, align 8
  %498 = load i8, i8* %497, align 1
  %499 = icmp ne i8 %498, 0
  br i1 %499, label %163, label %500

; <label>:500                                     ; preds = %496
  %501 = load i8*, i8** %q, align 8
  store i8 0, i8* %501, align 1
  %502 = load i8*, i8** %q, align 8
  %503 = getelementptr inbounds i8, i8* %502, i64 -1
  %504 = load i8, i8* %503, align 1
  %505 = zext i8 %504 to i64
  %506 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %507 = getelementptr inbounds %struct.metrics, %struct.metrics* %506, i64 %505
  %508 = getelementptr inbounds %struct.metrics, %struct.metrics* %507, i32 0, i32 4
  %509 = load i16, i16* %508, align 2
  %510 = sext i16 %509 to i32
  %511 = load i32, i32* %r, align 4
  %512 = add nsw i32 %511, %510
  store i32 %512, i32* %r, align 4
  %513 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  store i8* %513, i8** %p, align 8
  %514 = load i8*, i8** %p, align 8
  %515 = getelementptr inbounds i8, i8* %514, i64 1
  store i8* %515, i8** %q, align 8
  br label %516

; <label>:516                                     ; preds = %631, %500
  %517 = load i8*, i8** %q, align 8
  %518 = load i8, i8* %517, align 1
  %519 = icmp ne i8 %518, 0
  br i1 %519, label %520, label %636

; <label>:520                                     ; preds = %516
  %521 = load i8*, i8** %p, align 8
  %522 = load i8, i8* %521, align 1
  %523 = zext i8 %522 to i64
  %524 = load i8*, i8** %unacc, align 8
  %525 = getelementptr inbounds i8, i8* %524, i64 %523
  %526 = load i8, i8* %525, align 1
  %527 = zext i8 %526 to i32
  store i32 %527, i32* %ua_ch1, align 4
  %528 = load i8*, i8** %q, align 8
  %529 = load i8, i8* %528, align 1
  %530 = zext i8 %529 to i64
  %531 = load i8*, i8** %unacc, align 8
  %532 = getelementptr inbounds i8, i8* %531, i64 %530
  %533 = load i8, i8* %532, align 1
  %534 = zext i8 %533 to i32
  store i32 %534, i32* %ua_ch2, align 4
  %535 = load i32, i32* %ua_ch1, align 4
  %536 = sext i32 %535 to i64
  %537 = load %union.rec*, %union.rec** %1, align 8
  %538 = bitcast %union.rec* %537 to %struct.word_type*
  %539 = getelementptr inbounds %struct.word_type, %struct.word_type* %538, i32 0, i32 2
  %540 = bitcast %union.SECOND_UNION* %539 to %struct.anon.1*
  %541 = bitcast %struct.anon.1* %540 to i32*
  %542 = load i32, i32* %541, align 4
  %543 = and i32 %542, 4095
  %544 = zext i32 %543 to i64
  %545 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %546 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %545, i64 %544
  %547 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %546, i32 0, i32 9
  %548 = load i16*, i16** %547, align 8
  %549 = getelementptr inbounds i16, i16* %548, i64 %536
  %550 = load i16, i16* %549, align 2
  %551 = zext i16 %550 to i32
  store i32 %551, i32* %i, align 4
  %552 = load i32, i32* %i, align 4
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %554, label %555

; <label>:554                                     ; preds = %520
  store i32 0, i32* %ksize, align 4
  br label %627

; <label>:555                                     ; preds = %520
  %556 = load %union.rec*, %union.rec** %1, align 8
  %557 = bitcast %union.rec* %556 to %struct.word_type*
  %558 = getelementptr inbounds %struct.word_type, %struct.word_type* %557, i32 0, i32 2
  %559 = bitcast %union.SECOND_UNION* %558 to %struct.anon.1*
  %560 = bitcast %struct.anon.1* %559 to i32*
  %561 = load i32, i32* %560, align 4
  %562 = and i32 %561, 4095
  %563 = zext i32 %562 to i64
  %564 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %565 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %564, i64 %563
  %566 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %565, i32 0, i32 10
  %567 = load i8*, i8** %566, align 8
  store i8* %567, i8** %kc, align 8
  %568 = load i32, i32* %i, align 4
  store i32 %568, i32* %j, align 4
  br label %569

; <label>:569                                     ; preds = %579, %555
  %570 = load i32, i32* %j, align 4
  %571 = sext i32 %570 to i64
  %572 = load i8*, i8** %kc, align 8
  %573 = getelementptr inbounds i8, i8* %572, i64 %571
  %574 = load i8, i8* %573, align 1
  %575 = zext i8 %574 to i32
  %576 = load i32, i32* %ua_ch2, align 4
  %577 = icmp sgt i32 %575, %576
  br i1 %577, label %578, label %582

; <label>:578                                     ; preds = %569
  br label %579

; <label>:579                                     ; preds = %578
  %580 = load i32, i32* %j, align 4
  %581 = add nsw i32 %580, 1
  store i32 %581, i32* %j, align 4
  br label %569

; <label>:582                                     ; preds = %569
  %583 = load i32, i32* %j, align 4
  %584 = sext i32 %583 to i64
  %585 = load i8*, i8** %kc, align 8
  %586 = getelementptr inbounds i8, i8* %585, i64 %584
  %587 = load i8, i8* %586, align 1
  %588 = zext i8 %587 to i32
  %589 = load i32, i32* %ua_ch2, align 4
  %590 = icmp eq i32 %588, %589
  br i1 %590, label %591, label %624

; <label>:591                                     ; preds = %582
  %592 = load i32, i32* %j, align 4
  %593 = sext i32 %592 to i64
  %594 = load %union.rec*, %union.rec** %1, align 8
  %595 = bitcast %union.rec* %594 to %struct.word_type*
  %596 = getelementptr inbounds %struct.word_type, %struct.word_type* %595, i32 0, i32 2
  %597 = bitcast %union.SECOND_UNION* %596 to %struct.anon.1*
  %598 = bitcast %struct.anon.1* %597 to i32*
  %599 = load i32, i32* %598, align 4
  %600 = and i32 %599, 4095
  %601 = zext i32 %600 to i64
  %602 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %603 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %602, i64 %601
  %604 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %603, i32 0, i32 11
  %605 = load i8*, i8** %604, align 8
  %606 = getelementptr inbounds i8, i8* %605, i64 %593
  %607 = load i8, i8* %606, align 1
  %608 = zext i8 %607 to i64
  %609 = load %union.rec*, %union.rec** %1, align 8
  %610 = bitcast %union.rec* %609 to %struct.word_type*
  %611 = getelementptr inbounds %struct.word_type, %struct.word_type* %610, i32 0, i32 2
  %612 = bitcast %union.SECOND_UNION* %611 to %struct.anon.1*
  %613 = bitcast %struct.anon.1* %612 to i32*
  %614 = load i32, i32* %613, align 4
  %615 = and i32 %614, 4095
  %616 = zext i32 %615 to i64
  %617 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %618 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %617, i64 %616
  %619 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %618, i32 0, i32 12
  %620 = load i16*, i16** %619, align 8
  %621 = getelementptr inbounds i16, i16* %620, i64 %608
  %622 = load i16, i16* %621, align 2
  %623 = sext i16 %622 to i32
  br label %625

; <label>:624                                     ; preds = %582
  br label %625

; <label>:625                                     ; preds = %624, %591
  %626 = phi i32 [ %623, %591 ], [ 0, %624 ]
  store i32 %626, i32* %ksize, align 4
  br label %627

; <label>:627                                     ; preds = %625, %554
  %628 = load i32, i32* %ksize, align 4
  %629 = load i32, i32* %r, align 4
  %630 = add nsw i32 %629, %628
  store i32 %630, i32* %r, align 4
  br label %631

; <label>:631                                     ; preds = %627
  %632 = load i8*, i8** %p, align 8
  %633 = getelementptr inbounds i8, i8* %632, i32 1
  store i8* %633, i8** %p, align 8
  %634 = load i8*, i8** %q, align 8
  %635 = getelementptr inbounds i8, i8* %634, i32 1
  store i8* %635, i8** %q, align 8
  br label %516

; <label>:636                                     ; preds = %516
  %637 = load %union.rec*, %union.rec** %1, align 8
  %638 = bitcast %union.rec* %637 to %struct.word_type*
  %639 = getelementptr inbounds %struct.word_type, %struct.word_type* %638, i32 0, i32 3
  %640 = bitcast %union.THIRD_UNION* %639 to %struct.anon.6*
  %641 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %640, i32 0, i32 0
  %642 = getelementptr inbounds [2 x i32], [2 x i32]* %641, i32 0, i64 0
  store i32 0, i32* %642, align 4
  %643 = load i32, i32* %r, align 4
  %644 = load %union.rec*, %union.rec** %1, align 8
  %645 = bitcast %union.rec* %644 to %struct.word_type*
  %646 = getelementptr inbounds %struct.word_type, %struct.word_type* %645, i32 0, i32 3
  %647 = bitcast %union.THIRD_UNION* %646 to %struct.anon.6*
  %648 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %647, i32 0, i32 1
  %649 = getelementptr inbounds [2 x i32], [2 x i32]* %648, i32 0, i64 0
  store i32 %643, i32* %649, align 4
  %650 = load i32, i32* %u, align 4
  %651 = load %union.rec*, %union.rec** %1, align 8
  %652 = bitcast %union.rec* %651 to %struct.word_type*
  %653 = getelementptr inbounds %struct.word_type, %struct.word_type* %652, i32 0, i32 3
  %654 = bitcast %union.THIRD_UNION* %653 to %struct.anon.6*
  %655 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %654, i32 0, i32 0
  %656 = getelementptr inbounds [2 x i32], [2 x i32]* %655, i32 0, i64 1
  store i32 %650, i32* %656, align 4
  %657 = load i32, i32* %d, align 4
  %658 = sub nsw i32 0, %657
  %659 = load %union.rec*, %union.rec** %1, align 8
  %660 = bitcast %union.rec* %659 to %struct.word_type*
  %661 = getelementptr inbounds %struct.word_type, %struct.word_type* %660, i32 0, i32 3
  %662 = bitcast %union.THIRD_UNION* %661 to %struct.anon.6*
  %663 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %662, i32 0, i32 1
  %664 = getelementptr inbounds [2 x i32], [2 x i32]* %663, i32 0, i64 1
  store i32 %658, i32* %664, align 4
  br label %690

; <label>:665                                     ; preds = %22
  %666 = load %union.rec*, %union.rec** %1, align 8
  %667 = bitcast %union.rec* %666 to %struct.word_type*
  %668 = getelementptr inbounds %struct.word_type, %struct.word_type* %667, i32 0, i32 3
  %669 = bitcast %union.THIRD_UNION* %668 to %struct.anon.6*
  %670 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %669, i32 0, i32 1
  %671 = getelementptr inbounds [2 x i32], [2 x i32]* %670, i32 0, i64 1
  store i32 0, i32* %671, align 4
  %672 = load %union.rec*, %union.rec** %1, align 8
  %673 = bitcast %union.rec* %672 to %struct.word_type*
  %674 = getelementptr inbounds %struct.word_type, %struct.word_type* %673, i32 0, i32 3
  %675 = bitcast %union.THIRD_UNION* %674 to %struct.anon.6*
  %676 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %675, i32 0, i32 0
  %677 = getelementptr inbounds [2 x i32], [2 x i32]* %676, i32 0, i64 1
  store i32 0, i32* %677, align 4
  %678 = load %union.rec*, %union.rec** %1, align 8
  %679 = bitcast %union.rec* %678 to %struct.word_type*
  %680 = getelementptr inbounds %struct.word_type, %struct.word_type* %679, i32 0, i32 3
  %681 = bitcast %union.THIRD_UNION* %680 to %struct.anon.6*
  %682 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %681, i32 0, i32 1
  %683 = getelementptr inbounds [2 x i32], [2 x i32]* %682, i32 0, i64 0
  store i32 0, i32* %683, align 4
  %684 = load %union.rec*, %union.rec** %1, align 8
  %685 = bitcast %union.rec* %684 to %struct.word_type*
  %686 = getelementptr inbounds %struct.word_type, %struct.word_type* %685, i32 0, i32 3
  %687 = bitcast %union.THIRD_UNION* %686 to %struct.anon.6*
  %688 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %687, i32 0, i32 0
  %689 = getelementptr inbounds [2 x i32], [2 x i32]* %688, i32 0, i64 0
  store i32 0, i32* %689, align 4
  br label %690

; <label>:690                                     ; preds = %665, %636
  ret void
}

declare i8* @StringQuotedWord(%union.rec*) #1

; Function Attrs: nounwind uwtable
define i8* @FontFamilyAndFace(i32 %fnum) #0 {
  %1 = alloca i32, align 4
  %face = alloca %union.rec*, align 8
  %family = alloca %union.rec*, align 8
  store i32 %fnum, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = load i32, i32* @font_count, align 4
  %4 = icmp ule i32 %2, %3
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %5, %0
  %9 = load i32, i32* %1, align 4
  %10 = zext i32 %9 to i64
  %11 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %12 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %11, i64 %10
  %13 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %12, i32 0, i32 5
  %14 = load %union.rec*, %union.rec** %13, align 8
  %15 = bitcast %union.rec* %14 to %struct.word_type*
  %16 = getelementptr inbounds %struct.word_type, %struct.word_type* %15, i32 0, i32 0
  %17 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %16, i32 0, i64 1
  %18 = getelementptr inbounds %struct.LIST, %struct.LIST* %17, i32 0, i32 1
  %19 = load %union.rec*, %union.rec** %18, align 8
  %20 = bitcast %union.rec* %19 to %struct.word_type*
  %21 = getelementptr inbounds %struct.word_type, %struct.word_type* %20, i32 0, i32 0
  %22 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %21, i32 0, i64 0
  %23 = getelementptr inbounds %struct.LIST, %struct.LIST* %22, i32 0, i32 0
  %24 = load %union.rec*, %union.rec** %23, align 8
  store %union.rec* %24, %union.rec** %face, align 8
  br label %25

; <label>:25                                      ; preds = %35, %8
  %26 = load %union.rec*, %union.rec** %face, align 8
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
  %36 = load %union.rec*, %union.rec** %face, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 0
  %39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %38, i32 0, i64 0
  %40 = getelementptr inbounds %struct.LIST, %struct.LIST* %39, i32 0, i32 0
  %41 = load %union.rec*, %union.rec** %40, align 8
  store %union.rec* %41, %union.rec** %face, align 8
  br label %25

; <label>:42                                      ; preds = %25
  %43 = load %union.rec*, %union.rec** %face, align 8
  %44 = bitcast %union.rec* %43 to %struct.word_type*
  %45 = getelementptr inbounds %struct.word_type, %struct.word_type* %44, i32 0, i32 0
  %46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %45, i32 0, i64 1
  %47 = getelementptr inbounds %struct.LIST, %struct.LIST* %46, i32 0, i32 1
  %48 = load %union.rec*, %union.rec** %47, align 8
  %49 = bitcast %union.rec* %48 to %struct.word_type*
  %50 = getelementptr inbounds %struct.word_type, %struct.word_type* %49, i32 0, i32 0
  %51 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %50, i32 0, i64 0
  %52 = getelementptr inbounds %struct.LIST, %struct.LIST* %51, i32 0, i32 0
  %53 = load %union.rec*, %union.rec** %52, align 8
  store %union.rec* %53, %union.rec** %family, align 8
  br label %54

; <label>:54                                      ; preds = %64, %42
  %55 = load %union.rec*, %union.rec** %family, align 8
  %56 = bitcast %union.rec* %55 to %struct.word_type*
  %57 = getelementptr inbounds %struct.word_type, %struct.word_type* %56, i32 0, i32 1
  %58 = bitcast %union.FIRST_UNION* %57 to %struct.anon*
  %59 = getelementptr inbounds %struct.anon, %struct.anon* %58, i32 0, i32 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

; <label>:63                                      ; preds = %54
  br label %64

; <label>:64                                      ; preds = %63
  %65 = load %union.rec*, %union.rec** %family, align 8
  %66 = bitcast %union.rec* %65 to %struct.word_type*
  %67 = getelementptr inbounds %struct.word_type, %struct.word_type* %66, i32 0, i32 0
  %68 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %67, i32 0, i64 0
  %69 = getelementptr inbounds %struct.LIST, %struct.LIST* %68, i32 0, i32 0
  %70 = load %union.rec*, %union.rec** %69, align 8
  store %union.rec* %70, %union.rec** %family, align 8
  br label %54

; <label>:71                                      ; preds = %54
  %72 = load %union.rec*, %union.rec** %family, align 8
  %73 = bitcast %union.rec* %72 to %struct.word_type*
  %74 = getelementptr inbounds %struct.word_type, %struct.word_type* %73, i32 0, i32 4
  %75 = getelementptr inbounds [4 x i8], [4 x i8]* %74, i32 0, i32 0
  %76 = call i64 @strlen(i8* %75) #5
  %77 = load %union.rec*, %union.rec** %face, align 8
  %78 = bitcast %union.rec* %77 to %struct.word_type*
  %79 = getelementptr inbounds %struct.word_type, %struct.word_type* %78, i32 0, i32 4
  %80 = getelementptr inbounds [4 x i8], [4 x i8]* %79, i32 0, i32 0
  %81 = call i64 @strlen(i8* %80) #5
  %82 = add i64 %76, %81
  %83 = add i64 %82, 1
  %84 = icmp ugt i64 %83, 80
  br i1 %84, label %85, label %96

; <label>:85                                      ; preds = %71
  %86 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %87 = load %union.rec*, %union.rec** %family, align 8
  %88 = bitcast %union.rec* %87 to %struct.word_type*
  %89 = getelementptr inbounds %struct.word_type, %struct.word_type* %88, i32 0, i32 4
  %90 = getelementptr inbounds [4 x i8], [4 x i8]* %89, i32 0, i32 0
  %91 = load %union.rec*, %union.rec** %face, align 8
  %92 = bitcast %union.rec* %91 to %struct.word_type*
  %93 = getelementptr inbounds %struct.word_type, %struct.word_type* %92, i32 0, i32 4
  %94 = getelementptr inbounds [4 x i8], [4 x i8]* %93, i32 0, i32 0
  %95 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.52, i32 0, i32 0), i32 1, %struct.FILE_POS* %86, i8* %90, i8* %94)
  br label %96

; <label>:96                                      ; preds = %85, %71
  %97 = load %union.rec*, %union.rec** %family, align 8
  %98 = bitcast %union.rec* %97 to %struct.word_type*
  %99 = getelementptr inbounds %struct.word_type, %struct.word_type* %98, i32 0, i32 4
  %100 = getelementptr inbounds [4 x i8], [4 x i8]* %99, i32 0, i32 0
  %101 = call i8* @strcpy(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @FontFamilyAndFace.buff, i32 0, i32 0), i8* %100) #4
  %102 = call i8* @strcat(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @FontFamilyAndFace.buff, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0)) #4
  %103 = load %union.rec*, %union.rec** %face, align 8
  %104 = bitcast %union.rec* %103 to %struct.word_type*
  %105 = getelementptr inbounds %struct.word_type, %struct.word_type* %104, i32 0, i32 4
  %106 = getelementptr inbounds [4 x i8], [4 x i8]* %105, i32 0, i32 0
  %107 = call i8* @strcat(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @FontFamilyAndFace.buff, i32 0, i32 0), i8* %106) #4
  ret i8* getelementptr inbounds ([80 x i8], [80 x i8]* @FontFamilyAndFace.buff, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i32 @FontSize(i32 %fnum, %union.rec* %x) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.rec*, align 8
  store i32 %fnum, i32* %1, align 4
  store %union.rec* %x, %union.rec** %2, align 8
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @font_count, align 4
  %5 = icmp ule i32 %3, %4
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %8 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %6, %0
  %10 = load i32, i32* %1, align 4
  %11 = icmp ule i32 %10, 0
  br i1 %11, label %12, label %18

; <label>:12                                      ; preds = %9
  %13 = load %union.rec*, %union.rec** %2, align 8
  %14 = bitcast %union.rec* %13 to %struct.word_type*
  %15 = getelementptr inbounds %struct.word_type, %struct.word_type* %14, i32 0, i32 1
  %16 = bitcast %union.FIRST_UNION* %15 to %struct.FILE_POS*
  %17 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i32 0, i32 0), i32 1, %struct.FILE_POS* %16)
  br label %18

; <label>:18                                      ; preds = %12, %9
  %19 = load i32, i32* %1, align 4
  %20 = zext i32 %19 to i64
  %21 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %22 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %21, i64 %20
  %23 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %22, i32 0, i32 5
  %24 = load %union.rec*, %union.rec** %23, align 8
  %25 = bitcast %union.rec* %24 to %struct.word_type*
  %26 = getelementptr inbounds %struct.word_type, %struct.word_type* %25, i32 0, i32 3
  %27 = bitcast %union.THIRD_UNION* %26 to %struct.anon.7*
  %28 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define i32 @FontHalfXHeight(i32 %fnum) #0 {
  %1 = alloca i32, align 4
  store i32 %fnum, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = load i32, i32* @font_count, align 4
  %4 = icmp ule i32 %2, %3
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %5, %0
  %9 = load i32, i32* %1, align 4
  %10 = zext i32 %9 to i64
  %11 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %12 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %11, i64 %10
  %13 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %12, i32 0, i32 5
  %14 = load %union.rec*, %union.rec** %13, align 8
  %15 = bitcast %union.rec* %14 to %struct.word_type*
  %16 = getelementptr inbounds %struct.word_type, %struct.word_type* %15, i32 0, i32 3
  %17 = bitcast %union.THIRD_UNION* %16 to %struct.anon.7*
  %18 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @FontMapping(i32 %fnum, %struct.FILE_POS* %xfpos) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.FILE_POS*, align 8
  store i32 %fnum, i32* %1, align 4
  store %struct.FILE_POS* %xfpos, %struct.FILE_POS** %2, align 8
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @font_count, align 4
  %5 = icmp ule i32 %3, %4
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %8 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %6, %0
  %10 = load i32, i32* %1, align 4
  %11 = icmp ule i32 %10, 0
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %9
  %13 = load %struct.FILE_POS*, %struct.FILE_POS** %2, align 8
  %14 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i32 0, i32 0), i32 1, %struct.FILE_POS* %13)
  br label %15

; <label>:15                                      ; preds = %12, %9
  %16 = load i32, i32* %1, align 4
  %17 = zext i32 %16 to i64
  %18 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %19 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %18, i64 %17
  %20 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %19, i32 0, i32 5
  %21 = load %union.rec*, %union.rec** %20, align 8
  %22 = bitcast %union.rec* %21 to %struct.word_type*
  %23 = getelementptr inbounds %struct.word_type, %struct.word_type* %22, i32 0, i32 3
  %24 = bitcast %union.THIRD_UNION* %23 to %struct.anon.7*
  %25 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %24, i32 0, i32 3
  %26 = load i8, i8* %25, align 4
  %27 = and i8 %26, 127
  %28 = zext i8 %27 to i32
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i8* @FontName(i32 %fnum) #0 {
  %1 = alloca i32, align 4
  store i32 %fnum, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = load i32, i32* @font_count, align 4
  %4 = icmp ule i32 %2, %3
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %5, %0
  %9 = load i32, i32* %1, align 4
  %10 = zext i32 %9 to i64
  %11 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %12 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %11, i64 %10
  %13 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %12, i32 0, i32 5
  %14 = load %union.rec*, %union.rec** %13, align 8
  %15 = bitcast %union.rec* %14 to %struct.word_type*
  %16 = getelementptr inbounds %struct.word_type, %struct.word_type* %15, i32 0, i32 4
  %17 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i32 0, i32 0
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define i8* @FontFamily(i32 %fnum) #0 {
  %1 = alloca i32, align 4
  %face = alloca %union.rec*, align 8
  %family = alloca %union.rec*, align 8
  store i32 %fnum, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = load i32, i32* @font_count, align 4
  %4 = icmp ule i32 %2, %3
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %5, %0
  %9 = load i32, i32* %1, align 4
  %10 = zext i32 %9 to i64
  %11 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %12 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %11, i64 %10
  %13 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %12, i32 0, i32 5
  %14 = load %union.rec*, %union.rec** %13, align 8
  %15 = bitcast %union.rec* %14 to %struct.word_type*
  %16 = getelementptr inbounds %struct.word_type, %struct.word_type* %15, i32 0, i32 0
  %17 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %16, i32 0, i64 1
  %18 = getelementptr inbounds %struct.LIST, %struct.LIST* %17, i32 0, i32 1
  %19 = load %union.rec*, %union.rec** %18, align 8
  %20 = bitcast %union.rec* %19 to %struct.word_type*
  %21 = getelementptr inbounds %struct.word_type, %struct.word_type* %20, i32 0, i32 0
  %22 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %21, i32 0, i64 0
  %23 = getelementptr inbounds %struct.LIST, %struct.LIST* %22, i32 0, i32 0
  %24 = load %union.rec*, %union.rec** %23, align 8
  store %union.rec* %24, %union.rec** %face, align 8
  br label %25

; <label>:25                                      ; preds = %35, %8
  %26 = load %union.rec*, %union.rec** %face, align 8
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
  %36 = load %union.rec*, %union.rec** %face, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 0
  %39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %38, i32 0, i64 0
  %40 = getelementptr inbounds %struct.LIST, %struct.LIST* %39, i32 0, i32 0
  %41 = load %union.rec*, %union.rec** %40, align 8
  store %union.rec* %41, %union.rec** %face, align 8
  br label %25

; <label>:42                                      ; preds = %25
  %43 = load %union.rec*, %union.rec** %face, align 8
  %44 = bitcast %union.rec* %43 to %struct.word_type*
  %45 = getelementptr inbounds %struct.word_type, %struct.word_type* %44, i32 0, i32 0
  %46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %45, i32 0, i64 1
  %47 = getelementptr inbounds %struct.LIST, %struct.LIST* %46, i32 0, i32 1
  %48 = load %union.rec*, %union.rec** %47, align 8
  %49 = bitcast %union.rec* %48 to %struct.word_type*
  %50 = getelementptr inbounds %struct.word_type, %struct.word_type* %49, i32 0, i32 0
  %51 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %50, i32 0, i64 0
  %52 = getelementptr inbounds %struct.LIST, %struct.LIST* %51, i32 0, i32 0
  %53 = load %union.rec*, %union.rec** %52, align 8
  store %union.rec* %53, %union.rec** %family, align 8
  br label %54

; <label>:54                                      ; preds = %64, %42
  %55 = load %union.rec*, %union.rec** %family, align 8
  %56 = bitcast %union.rec* %55 to %struct.word_type*
  %57 = getelementptr inbounds %struct.word_type, %struct.word_type* %56, i32 0, i32 1
  %58 = bitcast %union.FIRST_UNION* %57 to %struct.anon*
  %59 = getelementptr inbounds %struct.anon, %struct.anon* %58, i32 0, i32 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

; <label>:63                                      ; preds = %54
  br label %64

; <label>:64                                      ; preds = %63
  %65 = load %union.rec*, %union.rec** %family, align 8
  %66 = bitcast %union.rec* %65 to %struct.word_type*
  %67 = getelementptr inbounds %struct.word_type, %struct.word_type* %66, i32 0, i32 0
  %68 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %67, i32 0, i64 0
  %69 = getelementptr inbounds %struct.LIST, %struct.LIST* %68, i32 0, i32 0
  %70 = load %union.rec*, %union.rec** %69, align 8
  store %union.rec* %70, %union.rec** %family, align 8
  br label %54

; <label>:71                                      ; preds = %54
  %72 = load %union.rec*, %union.rec** %family, align 8
  %73 = bitcast %union.rec* %72 to %struct.word_type*
  %74 = getelementptr inbounds %struct.word_type, %struct.word_type* %73, i32 0, i32 4
  %75 = getelementptr inbounds [4 x i8], [4 x i8]* %74, i32 0, i32 0
  ret i8* %75
}

; Function Attrs: nounwind uwtable
define i8* @FontFace(i32 %fnum) #0 {
  %1 = alloca i32, align 4
  %face = alloca %union.rec*, align 8
  %family = alloca %union.rec*, align 8
  store i32 %fnum, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = load i32, i32* @font_count, align 4
  %4 = icmp ule i32 %2, %3
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %5, %0
  %9 = load i32, i32* %1, align 4
  %10 = zext i32 %9 to i64
  %11 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %12 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %11, i64 %10
  %13 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %12, i32 0, i32 5
  %14 = load %union.rec*, %union.rec** %13, align 8
  %15 = bitcast %union.rec* %14 to %struct.word_type*
  %16 = getelementptr inbounds %struct.word_type, %struct.word_type* %15, i32 0, i32 0
  %17 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %16, i32 0, i64 1
  %18 = getelementptr inbounds %struct.LIST, %struct.LIST* %17, i32 0, i32 1
  %19 = load %union.rec*, %union.rec** %18, align 8
  %20 = bitcast %union.rec* %19 to %struct.word_type*
  %21 = getelementptr inbounds %struct.word_type, %struct.word_type* %20, i32 0, i32 0
  %22 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %21, i32 0, i64 0
  %23 = getelementptr inbounds %struct.LIST, %struct.LIST* %22, i32 0, i32 0
  %24 = load %union.rec*, %union.rec** %23, align 8
  store %union.rec* %24, %union.rec** %face, align 8
  br label %25

; <label>:25                                      ; preds = %35, %8
  %26 = load %union.rec*, %union.rec** %face, align 8
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
  %36 = load %union.rec*, %union.rec** %face, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 0
  %39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %38, i32 0, i64 0
  %40 = getelementptr inbounds %struct.LIST, %struct.LIST* %39, i32 0, i32 0
  %41 = load %union.rec*, %union.rec** %40, align 8
  store %union.rec* %41, %union.rec** %face, align 8
  br label %25

; <label>:42                                      ; preds = %25
  %43 = load %union.rec*, %union.rec** %face, align 8
  %44 = bitcast %union.rec* %43 to %struct.word_type*
  %45 = getelementptr inbounds %struct.word_type, %struct.word_type* %44, i32 0, i32 0
  %46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %45, i32 0, i64 1
  %47 = getelementptr inbounds %struct.LIST, %struct.LIST* %46, i32 0, i32 1
  %48 = load %union.rec*, %union.rec** %47, align 8
  %49 = bitcast %union.rec* %48 to %struct.word_type*
  %50 = getelementptr inbounds %struct.word_type, %struct.word_type* %49, i32 0, i32 0
  %51 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %50, i32 0, i64 0
  %52 = getelementptr inbounds %struct.LIST, %struct.LIST* %51, i32 0, i32 0
  %53 = load %union.rec*, %union.rec** %52, align 8
  store %union.rec* %53, %union.rec** %family, align 8
  br label %54

; <label>:54                                      ; preds = %64, %42
  %55 = load %union.rec*, %union.rec** %family, align 8
  %56 = bitcast %union.rec* %55 to %struct.word_type*
  %57 = getelementptr inbounds %struct.word_type, %struct.word_type* %56, i32 0, i32 1
  %58 = bitcast %union.FIRST_UNION* %57 to %struct.anon*
  %59 = getelementptr inbounds %struct.anon, %struct.anon* %58, i32 0, i32 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

; <label>:63                                      ; preds = %54
  br label %64

; <label>:64                                      ; preds = %63
  %65 = load %union.rec*, %union.rec** %family, align 8
  %66 = bitcast %union.rec* %65 to %struct.word_type*
  %67 = getelementptr inbounds %struct.word_type, %struct.word_type* %66, i32 0, i32 0
  %68 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %67, i32 0, i64 0
  %69 = getelementptr inbounds %struct.LIST, %struct.LIST* %68, i32 0, i32 0
  %70 = load %union.rec*, %union.rec** %69, align 8
  store %union.rec* %70, %union.rec** %family, align 8
  br label %54

; <label>:71                                      ; preds = %54
  %72 = load %union.rec*, %union.rec** %face, align 8
  %73 = bitcast %union.rec* %72 to %struct.word_type*
  %74 = getelementptr inbounds %struct.word_type, %struct.word_type* %73, i32 0, i32 4
  %75 = getelementptr inbounds [4 x i8], [4 x i8]* %74, i32 0, i32 0
  ret i8* %75
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @FontPrintAll(%struct._IO_FILE* %fp) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %family = alloca %union.rec*, align 8
  %face = alloca %union.rec*, align 8
  %first_size = alloca %union.rec*, align 8
  %ps_name = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %flink = alloca %union.rec*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %1, align 8
  %2 = load %union.rec*, %union.rec** @font_root, align 8
  %3 = icmp ne %union.rec* %2, null
  br i1 %3, label %4, label %13

; <label>:4                                       ; preds = %0
  %5 = load %union.rec*, %union.rec** @font_root, align 8
  %6 = bitcast %union.rec* %5 to %struct.word_type*
  %7 = getelementptr inbounds %struct.word_type, %struct.word_type* %6, i32 0, i32 1
  %8 = bitcast %union.FIRST_UNION* %7 to %struct.anon*
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, 17
  br i1 %12, label %16, label %13

; <label>:13                                      ; preds = %4, %0
  %14 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %15 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i32 0, i32 0))
  br label %16

; <label>:16                                      ; preds = %13, %4
  %17 = load %union.rec*, %union.rec** @font_root, align 8
  %18 = bitcast %union.rec* %17 to %struct.word_type*
  %19 = getelementptr inbounds %struct.word_type, %struct.word_type* %18, i32 0, i32 0
  %20 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %19, i32 0, i64 0
  %21 = getelementptr inbounds %struct.LIST, %struct.LIST* %20, i32 0, i32 1
  %22 = load %union.rec*, %union.rec** %21, align 8
  store %union.rec* %22, %union.rec** %link, align 8
  br label %23

; <label>:23                                      ; preds = %351, %16
  %24 = load %union.rec*, %union.rec** %link, align 8
  %25 = load %union.rec*, %union.rec** @font_root, align 8
  %26 = icmp ne %union.rec* %24, %25
  br i1 %26, label %27, label %358

; <label>:27                                      ; preds = %23
  %28 = load %union.rec*, %union.rec** %link, align 8
  %29 = bitcast %union.rec* %28 to %struct.word_type*
  %30 = getelementptr inbounds %struct.word_type, %struct.word_type* %29, i32 0, i32 0
  %31 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %30, i32 0, i64 1
  %32 = getelementptr inbounds %struct.LIST, %struct.LIST* %31, i32 0, i32 0
  %33 = load %union.rec*, %union.rec** %32, align 8
  store %union.rec* %33, %union.rec** %family, align 8
  br label %34

; <label>:34                                      ; preds = %44, %27
  %35 = load %union.rec*, %union.rec** %family, align 8
  %36 = bitcast %union.rec* %35 to %struct.word_type*
  %37 = getelementptr inbounds %struct.word_type, %struct.word_type* %36, i32 0, i32 1
  %38 = bitcast %union.FIRST_UNION* %37 to %struct.anon*
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %38, i32 0, i32 0
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %51

; <label>:43                                      ; preds = %34
  br label %44

; <label>:44                                      ; preds = %43
  %45 = load %union.rec*, %union.rec** %family, align 8
  %46 = bitcast %union.rec* %45 to %struct.word_type*
  %47 = getelementptr inbounds %struct.word_type, %struct.word_type* %46, i32 0, i32 0
  %48 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %47, i32 0, i64 1
  %49 = getelementptr inbounds %struct.LIST, %struct.LIST* %48, i32 0, i32 0
  %50 = load %union.rec*, %union.rec** %49, align 8
  store %union.rec* %50, %union.rec** %family, align 8
  br label %34

; <label>:51                                      ; preds = %34
  %52 = load %union.rec*, %union.rec** %family, align 8
  %53 = bitcast %union.rec* %52 to %struct.word_type*
  %54 = getelementptr inbounds %struct.word_type, %struct.word_type* %53, i32 0, i32 1
  %55 = bitcast %union.FIRST_UNION* %54 to %struct.anon*
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 0
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 11
  br i1 %59, label %72, label %60

; <label>:60                                      ; preds = %51
  %61 = load %union.rec*, %union.rec** %family, align 8
  %62 = bitcast %union.rec* %61 to %struct.word_type*
  %63 = getelementptr inbounds %struct.word_type, %struct.word_type* %62, i32 0, i32 1
  %64 = bitcast %union.FIRST_UNION* %63 to %struct.anon*
  %65 = getelementptr inbounds %struct.anon, %struct.anon* %64, i32 0, i32 0
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 12
  br i1 %68, label %72, label %69

; <label>:69                                      ; preds = %60
  %70 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %71 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i32 0, i32 0))
  br label %72

; <label>:72                                      ; preds = %69, %60, %51
  %73 = load %union.rec*, %union.rec** %family, align 8
  %74 = bitcast %union.rec* %73 to %struct.word_type*
  %75 = getelementptr inbounds %struct.word_type, %struct.word_type* %74, i32 0, i32 0
  %76 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %75, i32 0, i64 0
  %77 = getelementptr inbounds %struct.LIST, %struct.LIST* %76, i32 0, i32 1
  %78 = load %union.rec*, %union.rec** %77, align 8
  store %union.rec* %78, %union.rec** %flink, align 8
  br label %79

; <label>:79                                      ; preds = %343, %72
  %80 = load %union.rec*, %union.rec** %flink, align 8
  %81 = load %union.rec*, %union.rec** %family, align 8
  %82 = icmp ne %union.rec* %80, %81
  br i1 %82, label %83, label %350

; <label>:83                                      ; preds = %79
  %84 = load %union.rec*, %union.rec** %flink, align 8
  %85 = bitcast %union.rec* %84 to %struct.word_type*
  %86 = getelementptr inbounds %struct.word_type, %struct.word_type* %85, i32 0, i32 0
  %87 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %86, i32 0, i64 1
  %88 = getelementptr inbounds %struct.LIST, %struct.LIST* %87, i32 0, i32 0
  %89 = load %union.rec*, %union.rec** %88, align 8
  store %union.rec* %89, %union.rec** %face, align 8
  br label %90

; <label>:90                                      ; preds = %100, %83
  %91 = load %union.rec*, %union.rec** %face, align 8
  %92 = bitcast %union.rec* %91 to %struct.word_type*
  %93 = getelementptr inbounds %struct.word_type, %struct.word_type* %92, i32 0, i32 1
  %94 = bitcast %union.FIRST_UNION* %93 to %struct.anon*
  %95 = getelementptr inbounds %struct.anon, %struct.anon* %94, i32 0, i32 0
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %107

; <label>:99                                      ; preds = %90
  br label %100

; <label>:100                                     ; preds = %99
  %101 = load %union.rec*, %union.rec** %face, align 8
  %102 = bitcast %union.rec* %101 to %struct.word_type*
  %103 = getelementptr inbounds %struct.word_type, %struct.word_type* %102, i32 0, i32 0
  %104 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %103, i32 0, i64 1
  %105 = getelementptr inbounds %struct.LIST, %struct.LIST* %104, i32 0, i32 0
  %106 = load %union.rec*, %union.rec** %105, align 8
  store %union.rec* %106, %union.rec** %face, align 8
  br label %90

; <label>:107                                     ; preds = %90
  %108 = load %union.rec*, %union.rec** %face, align 8
  %109 = bitcast %union.rec* %108 to %struct.word_type*
  %110 = getelementptr inbounds %struct.word_type, %struct.word_type* %109, i32 0, i32 1
  %111 = bitcast %union.FIRST_UNION* %110 to %struct.anon*
  %112 = getelementptr inbounds %struct.anon, %struct.anon* %111, i32 0, i32 0
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp eq i32 %114, 11
  br i1 %115, label %128, label %116

; <label>:116                                     ; preds = %107
  %117 = load %union.rec*, %union.rec** %face, align 8
  %118 = bitcast %union.rec* %117 to %struct.word_type*
  %119 = getelementptr inbounds %struct.word_type, %struct.word_type* %118, i32 0, i32 1
  %120 = bitcast %union.FIRST_UNION* %119 to %struct.anon*
  %121 = getelementptr inbounds %struct.anon, %struct.anon* %120, i32 0, i32 0
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %123, 12
  br i1 %124, label %128, label %125

; <label>:125                                     ; preds = %116
  %126 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %127 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %126, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.55, i32 0, i32 0))
  br label %128

; <label>:128                                     ; preds = %125, %116, %107
  %129 = load %union.rec*, %union.rec** %face, align 8
  %130 = bitcast %union.rec* %129 to %struct.word_type*
  %131 = getelementptr inbounds %struct.word_type, %struct.word_type* %130, i32 0, i32 0
  %132 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %131, i32 0, i64 0
  %133 = getelementptr inbounds %struct.LIST, %struct.LIST* %132, i32 0, i32 1
  %134 = load %union.rec*, %union.rec** %133, align 8
  %135 = load %union.rec*, %union.rec** %face, align 8
  %136 = icmp ne %union.rec* %134, %135
  br i1 %136, label %137, label %170

; <label>:137                                     ; preds = %128
  %138 = load %union.rec*, %union.rec** %face, align 8
  %139 = bitcast %union.rec* %138 to %struct.word_type*
  %140 = getelementptr inbounds %struct.word_type, %struct.word_type* %139, i32 0, i32 0
  %141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %140, i32 0, i64 0
  %142 = getelementptr inbounds %struct.LIST, %struct.LIST* %141, i32 0, i32 1
  %143 = load %union.rec*, %union.rec** %142, align 8
  %144 = bitcast %union.rec* %143 to %struct.word_type*
  %145 = getelementptr inbounds %struct.word_type, %struct.word_type* %144, i32 0, i32 0
  %146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %145, i32 0, i64 0
  %147 = getelementptr inbounds %struct.LIST, %struct.LIST* %146, i32 0, i32 1
  %148 = load %union.rec*, %union.rec** %147, align 8
  %149 = load %union.rec*, %union.rec** %face, align 8
  %150 = icmp ne %union.rec* %148, %149
  br i1 %150, label %151, label %170

; <label>:151                                     ; preds = %137
  %152 = load %union.rec*, %union.rec** %face, align 8
  %153 = bitcast %union.rec* %152 to %struct.word_type*
  %154 = getelementptr inbounds %struct.word_type, %struct.word_type* %153, i32 0, i32 0
  %155 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %154, i32 0, i64 0
  %156 = getelementptr inbounds %struct.LIST, %struct.LIST* %155, i32 0, i32 1
  %157 = load %union.rec*, %union.rec** %156, align 8
  %158 = bitcast %union.rec* %157 to %struct.word_type*
  %159 = getelementptr inbounds %struct.word_type, %struct.word_type* %158, i32 0, i32 0
  %160 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %159, i32 0, i64 0
  %161 = getelementptr inbounds %struct.LIST, %struct.LIST* %160, i32 0, i32 1
  %162 = load %union.rec*, %union.rec** %161, align 8
  %163 = bitcast %union.rec* %162 to %struct.word_type*
  %164 = getelementptr inbounds %struct.word_type, %struct.word_type* %163, i32 0, i32 0
  %165 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %164, i32 0, i64 0
  %166 = getelementptr inbounds %struct.LIST, %struct.LIST* %165, i32 0, i32 1
  %167 = load %union.rec*, %union.rec** %166, align 8
  %168 = load %union.rec*, %union.rec** %face, align 8
  %169 = icmp ne %union.rec* %167, %168
  br i1 %169, label %173, label %170

; <label>:170                                     ; preds = %151, %137, %128
  %171 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %172 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %171, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i32 0, i32 0))
  br label %173

; <label>:173                                     ; preds = %170, %151
  %174 = load %union.rec*, %union.rec** %face, align 8
  %175 = bitcast %union.rec* %174 to %struct.word_type*
  %176 = getelementptr inbounds %struct.word_type, %struct.word_type* %175, i32 0, i32 0
  %177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %176, i32 0, i64 0
  %178 = getelementptr inbounds %struct.LIST, %struct.LIST* %177, i32 0, i32 1
  %179 = load %union.rec*, %union.rec** %178, align 8
  %180 = bitcast %union.rec* %179 to %struct.word_type*
  %181 = getelementptr inbounds %struct.word_type, %struct.word_type* %180, i32 0, i32 0
  %182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %181, i32 0, i64 1
  %183 = getelementptr inbounds %struct.LIST, %struct.LIST* %182, i32 0, i32 0
  %184 = load %union.rec*, %union.rec** %183, align 8
  store %union.rec* %184, %union.rec** %ps_name, align 8
  br label %185

; <label>:185                                     ; preds = %195, %173
  %186 = load %union.rec*, %union.rec** %ps_name, align 8
  %187 = bitcast %union.rec* %186 to %struct.word_type*
  %188 = getelementptr inbounds %struct.word_type, %struct.word_type* %187, i32 0, i32 1
  %189 = bitcast %union.FIRST_UNION* %188 to %struct.anon*
  %190 = getelementptr inbounds %struct.anon, %struct.anon* %189, i32 0, i32 0
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %202

; <label>:194                                     ; preds = %185
  br label %195

; <label>:195                                     ; preds = %194
  %196 = load %union.rec*, %union.rec** %ps_name, align 8
  %197 = bitcast %union.rec* %196 to %struct.word_type*
  %198 = getelementptr inbounds %struct.word_type, %struct.word_type* %197, i32 0, i32 0
  %199 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %198, i32 0, i64 1
  %200 = getelementptr inbounds %struct.LIST, %struct.LIST* %199, i32 0, i32 0
  %201 = load %union.rec*, %union.rec** %200, align 8
  store %union.rec* %201, %union.rec** %ps_name, align 8
  br label %185

; <label>:202                                     ; preds = %185
  %203 = load %union.rec*, %union.rec** %ps_name, align 8
  %204 = bitcast %union.rec* %203 to %struct.word_type*
  %205 = getelementptr inbounds %struct.word_type, %struct.word_type* %204, i32 0, i32 1
  %206 = bitcast %union.FIRST_UNION* %205 to %struct.anon*
  %207 = getelementptr inbounds %struct.anon, %struct.anon* %206, i32 0, i32 0
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i32
  %210 = icmp eq i32 %209, 11
  br i1 %210, label %223, label %211

; <label>:211                                     ; preds = %202
  %212 = load %union.rec*, %union.rec** %ps_name, align 8
  %213 = bitcast %union.rec* %212 to %struct.word_type*
  %214 = getelementptr inbounds %struct.word_type, %struct.word_type* %213, i32 0, i32 1
  %215 = bitcast %union.FIRST_UNION* %214 to %struct.anon*
  %216 = getelementptr inbounds %struct.anon, %struct.anon* %215, i32 0, i32 0
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  %219 = icmp eq i32 %218, 12
  br i1 %219, label %223, label %220

; <label>:220                                     ; preds = %211
  %221 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %222 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %221, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i32 0, i32 0))
  br label %223

; <label>:223                                     ; preds = %220, %211, %202
  %224 = load %union.rec*, %union.rec** %face, align 8
  %225 = bitcast %union.rec* %224 to %struct.word_type*
  %226 = getelementptr inbounds %struct.word_type, %struct.word_type* %225, i32 0, i32 0
  %227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %226, i32 0, i64 0
  %228 = getelementptr inbounds %struct.LIST, %struct.LIST* %227, i32 0, i32 1
  %229 = load %union.rec*, %union.rec** %228, align 8
  %230 = bitcast %union.rec* %229 to %struct.word_type*
  %231 = getelementptr inbounds %struct.word_type, %struct.word_type* %230, i32 0, i32 0
  %232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %231, i32 0, i64 0
  %233 = getelementptr inbounds %struct.LIST, %struct.LIST* %232, i32 0, i32 1
  %234 = load %union.rec*, %union.rec** %233, align 8
  %235 = bitcast %union.rec* %234 to %struct.word_type*
  %236 = getelementptr inbounds %struct.word_type, %struct.word_type* %235, i32 0, i32 0
  %237 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %236, i32 0, i64 0
  %238 = getelementptr inbounds %struct.LIST, %struct.LIST* %237, i32 0, i32 1
  %239 = load %union.rec*, %union.rec** %238, align 8
  %240 = bitcast %union.rec* %239 to %struct.word_type*
  %241 = getelementptr inbounds %struct.word_type, %struct.word_type* %240, i32 0, i32 0
  %242 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %241, i32 0, i64 1
  %243 = getelementptr inbounds %struct.LIST, %struct.LIST* %242, i32 0, i32 0
  %244 = load %union.rec*, %union.rec** %243, align 8
  store %union.rec* %244, %union.rec** %first_size, align 8
  br label %245

; <label>:245                                     ; preds = %255, %223
  %246 = load %union.rec*, %union.rec** %first_size, align 8
  %247 = bitcast %union.rec* %246 to %struct.word_type*
  %248 = getelementptr inbounds %struct.word_type, %struct.word_type* %247, i32 0, i32 1
  %249 = bitcast %union.FIRST_UNION* %248 to %struct.anon*
  %250 = getelementptr inbounds %struct.anon, %struct.anon* %249, i32 0, i32 0
  %251 = load i8, i8* %250, align 1
  %252 = zext i8 %251 to i32
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %262

; <label>:254                                     ; preds = %245
  br label %255

; <label>:255                                     ; preds = %254
  %256 = load %union.rec*, %union.rec** %first_size, align 8
  %257 = bitcast %union.rec* %256 to %struct.word_type*
  %258 = getelementptr inbounds %struct.word_type, %struct.word_type* %257, i32 0, i32 0
  %259 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %258, i32 0, i64 1
  %260 = getelementptr inbounds %struct.LIST, %struct.LIST* %259, i32 0, i32 0
  %261 = load %union.rec*, %union.rec** %260, align 8
  store %union.rec* %261, %union.rec** %first_size, align 8
  br label %245

; <label>:262                                     ; preds = %245
  %263 = load %union.rec*, %union.rec** %first_size, align 8
  %264 = bitcast %union.rec* %263 to %struct.word_type*
  %265 = getelementptr inbounds %struct.word_type, %struct.word_type* %264, i32 0, i32 1
  %266 = bitcast %union.FIRST_UNION* %265 to %struct.anon*
  %267 = getelementptr inbounds %struct.anon, %struct.anon* %266, i32 0, i32 0
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i32
  %270 = icmp eq i32 %269, 11
  br i1 %270, label %283, label %271

; <label>:271                                     ; preds = %262
  %272 = load %union.rec*, %union.rec** %first_size, align 8
  %273 = bitcast %union.rec* %272 to %struct.word_type*
  %274 = getelementptr inbounds %struct.word_type, %struct.word_type* %273, i32 0, i32 1
  %275 = bitcast %union.FIRST_UNION* %274 to %struct.anon*
  %276 = getelementptr inbounds %struct.anon, %struct.anon* %275, i32 0, i32 0
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i32
  %279 = icmp eq i32 %278, 12
  br i1 %279, label %283, label %280

; <label>:280                                     ; preds = %271
  %281 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %282 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %281, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.58, i32 0, i32 0))
  br label %283

; <label>:283                                     ; preds = %280, %271, %262
  %284 = load %union.rec*, %union.rec** %face, align 8
  %285 = bitcast %union.rec* %284 to %struct.word_type*
  %286 = getelementptr inbounds %struct.word_type, %struct.word_type* %285, i32 0, i32 3
  %287 = bitcast %union.THIRD_UNION* %286 to %struct.anon.7*
  %288 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %287, i32 0, i32 3
  %289 = load i8, i8* %288, align 4
  %290 = lshr i8 %289, 7
  %291 = zext i8 %290 to i32
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %331

; <label>:293                                     ; preds = %283
  %294 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %295 = load %union.rec*, %union.rec** %ps_name, align 8
  %296 = bitcast %union.rec* %295 to %struct.word_type*
  %297 = getelementptr inbounds %struct.word_type, %struct.word_type* %296, i32 0, i32 4
  %298 = getelementptr inbounds [4 x i8], [4 x i8]* %297, i32 0, i32 0
  %299 = load %union.rec*, %union.rec** %first_size, align 8
  %300 = bitcast %union.rec* %299 to %struct.word_type*
  %301 = getelementptr inbounds %struct.word_type, %struct.word_type* %300, i32 0, i32 4
  %302 = getelementptr inbounds [4 x i8], [4 x i8]* %301, i32 0, i32 0
  %303 = load %union.rec*, %union.rec** %face, align 8
  %304 = bitcast %union.rec* %303 to %struct.word_type*
  %305 = getelementptr inbounds %struct.word_type, %struct.word_type* %304, i32 0, i32 3
  %306 = bitcast %union.THIRD_UNION* %305 to %struct.anon.7*
  %307 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %306, i32 0, i32 3
  %308 = load i8, i8* %307, align 4
  %309 = and i8 %308, 127
  %310 = zext i8 %309 to i32
  %311 = call i8* @MapEncodingName(i32 %310)
  %312 = load %union.rec*, %union.rec** %ps_name, align 8
  %313 = bitcast %union.rec* %312 to %struct.word_type*
  %314 = getelementptr inbounds %struct.word_type, %struct.word_type* %313, i32 0, i32 4
  %315 = getelementptr inbounds [4 x i8], [4 x i8]* %314, i32 0, i32 0
  %316 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %294, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.59, i32 0, i32 0), i8* %298, i8* %302, i8* %311, i8* %315)
  %317 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %318 = load %union.rec*, %union.rec** %first_size, align 8
  %319 = bitcast %union.rec* %318 to %struct.word_type*
  %320 = getelementptr inbounds %struct.word_type, %struct.word_type* %319, i32 0, i32 4
  %321 = getelementptr inbounds [4 x i8], [4 x i8]* %320, i32 0, i32 0
  %322 = load %union.rec*, %union.rec** %ps_name, align 8
  %323 = bitcast %union.rec* %322 to %struct.word_type*
  %324 = getelementptr inbounds %struct.word_type, %struct.word_type* %323, i32 0, i32 4
  %325 = getelementptr inbounds [4 x i8], [4 x i8]* %324, i32 0, i32 0
  %326 = load %union.rec*, %union.rec** %first_size, align 8
  %327 = bitcast %union.rec* %326 to %struct.word_type*
  %328 = getelementptr inbounds %struct.word_type, %struct.word_type* %327, i32 0, i32 4
  %329 = getelementptr inbounds [4 x i8], [4 x i8]* %328, i32 0, i32 0
  %330 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %317, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.60, i32 0, i32 0), i8* %321, i8* %325, i8* %329)
  br label %342

; <label>:331                                     ; preds = %283
  %332 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %333 = load %union.rec*, %union.rec** %first_size, align 8
  %334 = bitcast %union.rec* %333 to %struct.word_type*
  %335 = getelementptr inbounds %struct.word_type, %struct.word_type* %334, i32 0, i32 4
  %336 = getelementptr inbounds [4 x i8], [4 x i8]* %335, i32 0, i32 0
  %337 = load %union.rec*, %union.rec** %ps_name, align 8
  %338 = bitcast %union.rec* %337 to %struct.word_type*
  %339 = getelementptr inbounds %struct.word_type, %struct.word_type* %338, i32 0, i32 4
  %340 = getelementptr inbounds [4 x i8], [4 x i8]* %339, i32 0, i32 0
  %341 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %332, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i32 0, i32 0), i8* %336, i8* %340)
  br label %342

; <label>:342                                     ; preds = %331, %293
  br label %343

; <label>:343                                     ; preds = %342
  %344 = load %union.rec*, %union.rec** %flink, align 8
  %345 = bitcast %union.rec* %344 to %struct.word_type*
  %346 = getelementptr inbounds %struct.word_type, %struct.word_type* %345, i32 0, i32 0
  %347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %346, i32 0, i64 0
  %348 = getelementptr inbounds %struct.LIST, %struct.LIST* %347, i32 0, i32 1
  %349 = load %union.rec*, %union.rec** %348, align 8
  store %union.rec* %349, %union.rec** %flink, align 8
  br label %79

; <label>:350                                     ; preds = %79
  br label %351

; <label>:351                                     ; preds = %350
  %352 = load %union.rec*, %union.rec** %link, align 8
  %353 = bitcast %union.rec* %352 to %struct.word_type*
  %354 = getelementptr inbounds %struct.word_type, %struct.word_type* %353, i32 0, i32 0
  %355 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %354, i32 0, i64 0
  %356 = getelementptr inbounds %struct.LIST, %struct.LIST* %355, i32 0, i32 1
  %357 = load %union.rec*, %union.rec** %356, align 8
  store %union.rec* %357, %union.rec** %link, align 8
  br label %23

; <label>:358                                     ; preds = %23
  %359 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %360 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i32 0, i32 0), %struct._IO_FILE* %359)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @MapEncodingName(i32) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @FontPrintPageSetup(%struct._IO_FILE* %fp) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %face = alloca %union.rec*, align 8
  %first_size = alloca %union.rec*, align 8
  %ps_name = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %1, align 8
  %2 = load %union.rec*, %union.rec** @font_root, align 8
  %3 = icmp ne %union.rec* %2, null
  br i1 %3, label %4, label %13

; <label>:4                                       ; preds = %0
  %5 = load %union.rec*, %union.rec** @font_root, align 8
  %6 = bitcast %union.rec* %5 to %struct.word_type*
  %7 = getelementptr inbounds %struct.word_type, %struct.word_type* %6, i32 0, i32 1
  %8 = bitcast %union.FIRST_UNION* %7 to %struct.anon*
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, 17
  br i1 %12, label %16, label %13

; <label>:13                                      ; preds = %4, %0
  %14 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %15 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i32 0, i32 0))
  br label %16

; <label>:16                                      ; preds = %13, %4
  %17 = load %union.rec*, %union.rec** @font_used, align 8
  %18 = icmp ne %union.rec* %17, null
  br i1 %18, label %19, label %28

; <label>:19                                      ; preds = %16
  %20 = load %union.rec*, %union.rec** @font_used, align 8
  %21 = bitcast %union.rec* %20 to %struct.word_type*
  %22 = getelementptr inbounds %struct.word_type, %struct.word_type* %21, i32 0, i32 1
  %23 = bitcast %union.FIRST_UNION* %22 to %struct.anon*
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 17
  br i1 %27, label %31, label %28

; <label>:28                                      ; preds = %19, %16
  %29 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %30 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.63, i32 0, i32 0))
  br label %31

; <label>:31                                      ; preds = %28, %19
  %32 = load %union.rec*, %union.rec** @font_used, align 8
  %33 = bitcast %union.rec* %32 to %struct.word_type*
  %34 = getelementptr inbounds %struct.word_type, %struct.word_type* %33, i32 0, i32 0
  %35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %34, i32 0, i64 0
  %36 = getelementptr inbounds %struct.LIST, %struct.LIST* %35, i32 0, i32 1
  %37 = load %union.rec*, %union.rec** %36, align 8
  store %union.rec* %37, %union.rec** %link, align 8
  br label %38

; <label>:38                                      ; preds = %223, %31
  %39 = load %union.rec*, %union.rec** %link, align 8
  %40 = load %union.rec*, %union.rec** @font_used, align 8
  %41 = icmp ne %union.rec* %39, %40
  br i1 %41, label %42, label %230

; <label>:42                                      ; preds = %38
  %43 = load %union.rec*, %union.rec** %link, align 8
  %44 = bitcast %union.rec* %43 to %struct.word_type*
  %45 = getelementptr inbounds %struct.word_type, %struct.word_type* %44, i32 0, i32 0
  %46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %45, i32 0, i64 1
  %47 = getelementptr inbounds %struct.LIST, %struct.LIST* %46, i32 0, i32 0
  %48 = load %union.rec*, %union.rec** %47, align 8
  store %union.rec* %48, %union.rec** %face, align 8
  br label %49

; <label>:49                                      ; preds = %59, %42
  %50 = load %union.rec*, %union.rec** %face, align 8
  %51 = bitcast %union.rec* %50 to %struct.word_type*
  %52 = getelementptr inbounds %struct.word_type, %struct.word_type* %51, i32 0, i32 1
  %53 = bitcast %union.FIRST_UNION* %52 to %struct.anon*
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %53, i32 0, i32 0
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66

; <label>:58                                      ; preds = %49
  br label %59

; <label>:59                                      ; preds = %58
  %60 = load %union.rec*, %union.rec** %face, align 8
  %61 = bitcast %union.rec* %60 to %struct.word_type*
  %62 = getelementptr inbounds %struct.word_type, %struct.word_type* %61, i32 0, i32 0
  %63 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %62, i32 0, i64 1
  %64 = getelementptr inbounds %struct.LIST, %struct.LIST* %63, i32 0, i32 0
  %65 = load %union.rec*, %union.rec** %64, align 8
  store %union.rec* %65, %union.rec** %face, align 8
  br label %49

; <label>:66                                      ; preds = %49
  %67 = load %union.rec*, %union.rec** %face, align 8
  %68 = bitcast %union.rec* %67 to %struct.word_type*
  %69 = getelementptr inbounds %struct.word_type, %struct.word_type* %68, i32 0, i32 1
  %70 = bitcast %union.FIRST_UNION* %69 to %struct.anon*
  %71 = getelementptr inbounds %struct.anon, %struct.anon* %70, i32 0, i32 0
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 11
  br i1 %74, label %87, label %75

; <label>:75                                      ; preds = %66
  %76 = load %union.rec*, %union.rec** %face, align 8
  %77 = bitcast %union.rec* %76 to %struct.word_type*
  %78 = getelementptr inbounds %struct.word_type, %struct.word_type* %77, i32 0, i32 1
  %79 = bitcast %union.FIRST_UNION* %78 to %struct.anon*
  %80 = getelementptr inbounds %struct.anon, %struct.anon* %79, i32 0, i32 0
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 12
  br i1 %83, label %87, label %84

; <label>:84                                      ; preds = %75
  %85 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %86 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.64, i32 0, i32 0))
  br label %87

; <label>:87                                      ; preds = %84, %75, %66
  %88 = load %union.rec*, %union.rec** %face, align 8
  %89 = bitcast %union.rec* %88 to %struct.word_type*
  %90 = getelementptr inbounds %struct.word_type, %struct.word_type* %89, i32 0, i32 0
  %91 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %90, i32 0, i64 0
  %92 = getelementptr inbounds %struct.LIST, %struct.LIST* %91, i32 0, i32 1
  %93 = load %union.rec*, %union.rec** %92, align 8
  %94 = load %union.rec*, %union.rec** %face, align 8
  %95 = icmp ne %union.rec* %93, %94
  br i1 %95, label %99, label %96

; <label>:96                                      ; preds = %87
  %97 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %98 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i32 0, i32 0))
  br label %99

; <label>:99                                      ; preds = %96, %87
  %100 = load %union.rec*, %union.rec** %face, align 8
  %101 = bitcast %union.rec* %100 to %struct.word_type*
  %102 = getelementptr inbounds %struct.word_type, %struct.word_type* %101, i32 0, i32 0
  %103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %102, i32 0, i64 0
  %104 = getelementptr inbounds %struct.LIST, %struct.LIST* %103, i32 0, i32 1
  %105 = load %union.rec*, %union.rec** %104, align 8
  %106 = bitcast %union.rec* %105 to %struct.word_type*
  %107 = getelementptr inbounds %struct.word_type, %struct.word_type* %106, i32 0, i32 0
  %108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %107, i32 0, i64 0
  %109 = getelementptr inbounds %struct.LIST, %struct.LIST* %108, i32 0, i32 1
  %110 = load %union.rec*, %union.rec** %109, align 8
  %111 = bitcast %union.rec* %110 to %struct.word_type*
  %112 = getelementptr inbounds %struct.word_type, %struct.word_type* %111, i32 0, i32 0
  %113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %112, i32 0, i64 0
  %114 = getelementptr inbounds %struct.LIST, %struct.LIST* %113, i32 0, i32 1
  %115 = load %union.rec*, %union.rec** %114, align 8
  %116 = bitcast %union.rec* %115 to %struct.word_type*
  %117 = getelementptr inbounds %struct.word_type, %struct.word_type* %116, i32 0, i32 0
  %118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %117, i32 0, i64 1
  %119 = getelementptr inbounds %struct.LIST, %struct.LIST* %118, i32 0, i32 0
  %120 = load %union.rec*, %union.rec** %119, align 8
  store %union.rec* %120, %union.rec** %first_size, align 8
  br label %121

; <label>:121                                     ; preds = %131, %99
  %122 = load %union.rec*, %union.rec** %first_size, align 8
  %123 = bitcast %union.rec* %122 to %struct.word_type*
  %124 = getelementptr inbounds %struct.word_type, %struct.word_type* %123, i32 0, i32 1
  %125 = bitcast %union.FIRST_UNION* %124 to %struct.anon*
  %126 = getelementptr inbounds %struct.anon, %struct.anon* %125, i32 0, i32 0
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %138

; <label>:130                                     ; preds = %121
  br label %131

; <label>:131                                     ; preds = %130
  %132 = load %union.rec*, %union.rec** %first_size, align 8
  %133 = bitcast %union.rec* %132 to %struct.word_type*
  %134 = getelementptr inbounds %struct.word_type, %struct.word_type* %133, i32 0, i32 0
  %135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %134, i32 0, i64 1
  %136 = getelementptr inbounds %struct.LIST, %struct.LIST* %135, i32 0, i32 0
  %137 = load %union.rec*, %union.rec** %136, align 8
  store %union.rec* %137, %union.rec** %first_size, align 8
  br label %121

; <label>:138                                     ; preds = %121
  %139 = load %union.rec*, %union.rec** %first_size, align 8
  %140 = bitcast %union.rec* %139 to %struct.word_type*
  %141 = getelementptr inbounds %struct.word_type, %struct.word_type* %140, i32 0, i32 1
  %142 = bitcast %union.FIRST_UNION* %141 to %struct.anon*
  %143 = getelementptr inbounds %struct.anon, %struct.anon* %142, i32 0, i32 0
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %145, 11
  br i1 %146, label %159, label %147

; <label>:147                                     ; preds = %138
  %148 = load %union.rec*, %union.rec** %first_size, align 8
  %149 = bitcast %union.rec* %148 to %struct.word_type*
  %150 = getelementptr inbounds %struct.word_type, %struct.word_type* %149, i32 0, i32 1
  %151 = bitcast %union.FIRST_UNION* %150 to %struct.anon*
  %152 = getelementptr inbounds %struct.anon, %struct.anon* %151, i32 0, i32 0
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = icmp eq i32 %154, 12
  br i1 %155, label %159, label %156

; <label>:156                                     ; preds = %147
  %157 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %158 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %157, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.65, i32 0, i32 0))
  br label %159

; <label>:159                                     ; preds = %156, %147, %138
  %160 = load %union.rec*, %union.rec** %face, align 8
  %161 = bitcast %union.rec* %160 to %struct.word_type*
  %162 = getelementptr inbounds %struct.word_type, %struct.word_type* %161, i32 0, i32 0
  %163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %162, i32 0, i64 0
  %164 = getelementptr inbounds %struct.LIST, %struct.LIST* %163, i32 0, i32 1
  %165 = load %union.rec*, %union.rec** %164, align 8
  %166 = bitcast %union.rec* %165 to %struct.word_type*
  %167 = getelementptr inbounds %struct.word_type, %struct.word_type* %166, i32 0, i32 0
  %168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %167, i32 0, i64 1
  %169 = getelementptr inbounds %struct.LIST, %struct.LIST* %168, i32 0, i32 0
  %170 = load %union.rec*, %union.rec** %169, align 8
  store %union.rec* %170, %union.rec** %ps_name, align 8
  br label %171

; <label>:171                                     ; preds = %181, %159
  %172 = load %union.rec*, %union.rec** %ps_name, align 8
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
  %182 = load %union.rec*, %union.rec** %ps_name, align 8
  %183 = bitcast %union.rec* %182 to %struct.word_type*
  %184 = getelementptr inbounds %struct.word_type, %struct.word_type* %183, i32 0, i32 0
  %185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %184, i32 0, i64 1
  %186 = getelementptr inbounds %struct.LIST, %struct.LIST* %185, i32 0, i32 0
  %187 = load %union.rec*, %union.rec** %186, align 8
  store %union.rec* %187, %union.rec** %ps_name, align 8
  br label %171

; <label>:188                                     ; preds = %171
  %189 = load %union.rec*, %union.rec** %ps_name, align 8
  %190 = bitcast %union.rec* %189 to %struct.word_type*
  %191 = getelementptr inbounds %struct.word_type, %struct.word_type* %190, i32 0, i32 1
  %192 = bitcast %union.FIRST_UNION* %191 to %struct.anon*
  %193 = getelementptr inbounds %struct.anon, %struct.anon* %192, i32 0, i32 0
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = icmp eq i32 %195, 11
  br i1 %196, label %209, label %197

; <label>:197                                     ; preds = %188
  %198 = load %union.rec*, %union.rec** %ps_name, align 8
  %199 = bitcast %union.rec* %198 to %struct.word_type*
  %200 = getelementptr inbounds %struct.word_type, %struct.word_type* %199, i32 0, i32 1
  %201 = bitcast %union.FIRST_UNION* %200 to %struct.anon*
  %202 = getelementptr inbounds %struct.anon, %struct.anon* %201, i32 0, i32 0
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = icmp eq i32 %204, 12
  br i1 %205, label %209, label %206

; <label>:206                                     ; preds = %197
  %207 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %208 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %207, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i32 0, i32 0))
  br label %209

; <label>:209                                     ; preds = %206, %197, %188
  %210 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %211 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %210, i32 0, i32 12
  %212 = load void (%union.rec*, i32, i8*, i8*)*, void (%union.rec*, i32, i8*, i8*)** %211, align 8
  %213 = load %union.rec*, %union.rec** %face, align 8
  %214 = load i32, i32* @font_curr_page, align 4
  %215 = load %union.rec*, %union.rec** %ps_name, align 8
  %216 = bitcast %union.rec* %215 to %struct.word_type*
  %217 = getelementptr inbounds %struct.word_type, %struct.word_type* %216, i32 0, i32 4
  %218 = getelementptr inbounds [4 x i8], [4 x i8]* %217, i32 0, i32 0
  %219 = load %union.rec*, %union.rec** %first_size, align 8
  %220 = bitcast %union.rec* %219 to %struct.word_type*
  %221 = getelementptr inbounds %struct.word_type, %struct.word_type* %220, i32 0, i32 4
  %222 = getelementptr inbounds [4 x i8], [4 x i8]* %221, i32 0, i32 0
  call void %212(%union.rec* %213, i32 %214, i8* %218, i8* %222)
  br label %223

; <label>:223                                     ; preds = %209
  %224 = load %union.rec*, %union.rec** %link, align 8
  %225 = bitcast %union.rec* %224 to %struct.word_type*
  %226 = getelementptr inbounds %struct.word_type, %struct.word_type* %225, i32 0, i32 0
  %227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %226, i32 0, i64 0
  %228 = getelementptr inbounds %struct.LIST, %struct.LIST* %227, i32 0, i32 1
  %229 = load %union.rec*, %union.rec** %228, align 8
  store %union.rec* %229, %union.rec** %link, align 8
  br label %38

; <label>:230                                     ; preds = %38
  ret void
}

; Function Attrs: nounwind uwtable
define void @FontPrintPageResources(%struct._IO_FILE* %fp) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %face = alloca %union.rec*, align 8
  %ps_name = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %pface = alloca %union.rec*, align 8
  %pname = alloca %union.rec*, align 8
  %plink = alloca %union.rec*, align 8
  %first = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %1, align 8
  %2 = load %union.rec*, %union.rec** @font_root, align 8
  %3 = icmp ne %union.rec* %2, null
  br i1 %3, label %4, label %13

; <label>:4                                       ; preds = %0
  %5 = load %union.rec*, %union.rec** @font_root, align 8
  %6 = bitcast %union.rec* %5 to %struct.word_type*
  %7 = getelementptr inbounds %struct.word_type, %struct.word_type* %6, i32 0, i32 1
  %8 = bitcast %union.FIRST_UNION* %7 to %struct.anon*
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, 17
  br i1 %12, label %16, label %13

; <label>:13                                      ; preds = %4, %0
  %14 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %15 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i32 0, i32 0))
  br label %16

; <label>:16                                      ; preds = %13, %4
  %17 = load %union.rec*, %union.rec** @font_used, align 8
  %18 = icmp ne %union.rec* %17, null
  br i1 %18, label %19, label %28

; <label>:19                                      ; preds = %16
  %20 = load %union.rec*, %union.rec** @font_used, align 8
  %21 = bitcast %union.rec* %20 to %struct.word_type*
  %22 = getelementptr inbounds %struct.word_type, %struct.word_type* %21, i32 0, i32 1
  %23 = bitcast %union.FIRST_UNION* %22 to %struct.anon*
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 17
  br i1 %27, label %31, label %28

; <label>:28                                      ; preds = %19, %16
  %29 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %30 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.63, i32 0, i32 0))
  br label %31

; <label>:31                                      ; preds = %28, %19
  store i32 1, i32* %first, align 4
  %32 = load %union.rec*, %union.rec** @font_used, align 8
  %33 = bitcast %union.rec* %32 to %struct.word_type*
  %34 = getelementptr inbounds %struct.word_type, %struct.word_type* %33, i32 0, i32 0
  %35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %34, i32 0, i64 0
  %36 = getelementptr inbounds %struct.LIST, %struct.LIST* %35, i32 0, i32 1
  %37 = load %union.rec*, %union.rec** %36, align 8
  store %union.rec* %37, %union.rec** %link, align 8
  br label %38

; <label>:38                                      ; preds = %247, %31
  %39 = load %union.rec*, %union.rec** %link, align 8
  %40 = load %union.rec*, %union.rec** @font_used, align 8
  %41 = icmp ne %union.rec* %39, %40
  br i1 %41, label %42, label %254

; <label>:42                                      ; preds = %38
  %43 = load %union.rec*, %union.rec** %link, align 8
  %44 = bitcast %union.rec* %43 to %struct.word_type*
  %45 = getelementptr inbounds %struct.word_type, %struct.word_type* %44, i32 0, i32 0
  %46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %45, i32 0, i64 1
  %47 = getelementptr inbounds %struct.LIST, %struct.LIST* %46, i32 0, i32 0
  %48 = load %union.rec*, %union.rec** %47, align 8
  store %union.rec* %48, %union.rec** %face, align 8
  br label %49

; <label>:49                                      ; preds = %59, %42
  %50 = load %union.rec*, %union.rec** %face, align 8
  %51 = bitcast %union.rec* %50 to %struct.word_type*
  %52 = getelementptr inbounds %struct.word_type, %struct.word_type* %51, i32 0, i32 1
  %53 = bitcast %union.FIRST_UNION* %52 to %struct.anon*
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %53, i32 0, i32 0
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66

; <label>:58                                      ; preds = %49
  br label %59

; <label>:59                                      ; preds = %58
  %60 = load %union.rec*, %union.rec** %face, align 8
  %61 = bitcast %union.rec* %60 to %struct.word_type*
  %62 = getelementptr inbounds %struct.word_type, %struct.word_type* %61, i32 0, i32 0
  %63 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %62, i32 0, i64 1
  %64 = getelementptr inbounds %struct.LIST, %struct.LIST* %63, i32 0, i32 0
  %65 = load %union.rec*, %union.rec** %64, align 8
  store %union.rec* %65, %union.rec** %face, align 8
  br label %49

; <label>:66                                      ; preds = %49
  %67 = load %union.rec*, %union.rec** %face, align 8
  %68 = bitcast %union.rec* %67 to %struct.word_type*
  %69 = getelementptr inbounds %struct.word_type, %struct.word_type* %68, i32 0, i32 1
  %70 = bitcast %union.FIRST_UNION* %69 to %struct.anon*
  %71 = getelementptr inbounds %struct.anon, %struct.anon* %70, i32 0, i32 0
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 11
  br i1 %74, label %87, label %75

; <label>:75                                      ; preds = %66
  %76 = load %union.rec*, %union.rec** %face, align 8
  %77 = bitcast %union.rec* %76 to %struct.word_type*
  %78 = getelementptr inbounds %struct.word_type, %struct.word_type* %77, i32 0, i32 1
  %79 = bitcast %union.FIRST_UNION* %78 to %struct.anon*
  %80 = getelementptr inbounds %struct.anon, %struct.anon* %79, i32 0, i32 0
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 12
  br i1 %83, label %87, label %84

; <label>:84                                      ; preds = %75
  %85 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %86 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.67, i32 0, i32 0))
  br label %87

; <label>:87                                      ; preds = %84, %75, %66
  %88 = load %union.rec*, %union.rec** %face, align 8
  %89 = bitcast %union.rec* %88 to %struct.word_type*
  %90 = getelementptr inbounds %struct.word_type, %struct.word_type* %89, i32 0, i32 0
  %91 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %90, i32 0, i64 0
  %92 = getelementptr inbounds %struct.LIST, %struct.LIST* %91, i32 0, i32 1
  %93 = load %union.rec*, %union.rec** %92, align 8
  %94 = load %union.rec*, %union.rec** %face, align 8
  %95 = icmp ne %union.rec* %93, %94
  br i1 %95, label %99, label %96

; <label>:96                                      ; preds = %87
  %97 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %98 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i32 0, i32 0))
  br label %99

; <label>:99                                      ; preds = %96, %87
  %100 = load %union.rec*, %union.rec** %face, align 8
  %101 = bitcast %union.rec* %100 to %struct.word_type*
  %102 = getelementptr inbounds %struct.word_type, %struct.word_type* %101, i32 0, i32 0
  %103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %102, i32 0, i64 0
  %104 = getelementptr inbounds %struct.LIST, %struct.LIST* %103, i32 0, i32 1
  %105 = load %union.rec*, %union.rec** %104, align 8
  %106 = bitcast %union.rec* %105 to %struct.word_type*
  %107 = getelementptr inbounds %struct.word_type, %struct.word_type* %106, i32 0, i32 0
  %108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %107, i32 0, i64 1
  %109 = getelementptr inbounds %struct.LIST, %struct.LIST* %108, i32 0, i32 0
  %110 = load %union.rec*, %union.rec** %109, align 8
  store %union.rec* %110, %union.rec** %ps_name, align 8
  br label %111

; <label>:111                                     ; preds = %121, %99
  %112 = load %union.rec*, %union.rec** %ps_name, align 8
  %113 = bitcast %union.rec* %112 to %struct.word_type*
  %114 = getelementptr inbounds %struct.word_type, %struct.word_type* %113, i32 0, i32 1
  %115 = bitcast %union.FIRST_UNION* %114 to %struct.anon*
  %116 = getelementptr inbounds %struct.anon, %struct.anon* %115, i32 0, i32 0
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %128

; <label>:120                                     ; preds = %111
  br label %121

; <label>:121                                     ; preds = %120
  %122 = load %union.rec*, %union.rec** %ps_name, align 8
  %123 = bitcast %union.rec* %122 to %struct.word_type*
  %124 = getelementptr inbounds %struct.word_type, %struct.word_type* %123, i32 0, i32 0
  %125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %124, i32 0, i64 1
  %126 = getelementptr inbounds %struct.LIST, %struct.LIST* %125, i32 0, i32 0
  %127 = load %union.rec*, %union.rec** %126, align 8
  store %union.rec* %127, %union.rec** %ps_name, align 8
  br label %111

; <label>:128                                     ; preds = %111
  %129 = load %union.rec*, %union.rec** %ps_name, align 8
  %130 = bitcast %union.rec* %129 to %struct.word_type*
  %131 = getelementptr inbounds %struct.word_type, %struct.word_type* %130, i32 0, i32 1
  %132 = bitcast %union.FIRST_UNION* %131 to %struct.anon*
  %133 = getelementptr inbounds %struct.anon, %struct.anon* %132, i32 0, i32 0
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp eq i32 %135, 11
  br i1 %136, label %149, label %137

; <label>:137                                     ; preds = %128
  %138 = load %union.rec*, %union.rec** %ps_name, align 8
  %139 = bitcast %union.rec* %138 to %struct.word_type*
  %140 = getelementptr inbounds %struct.word_type, %struct.word_type* %139, i32 0, i32 1
  %141 = bitcast %union.FIRST_UNION* %140 to %struct.anon*
  %142 = getelementptr inbounds %struct.anon, %struct.anon* %141, i32 0, i32 0
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp eq i32 %144, 12
  br i1 %145, label %149, label %146

; <label>:146                                     ; preds = %137
  %147 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %148 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %147, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.68, i32 0, i32 0))
  br label %149

; <label>:149                                     ; preds = %146, %137, %128
  %150 = load %union.rec*, %union.rec** @font_used, align 8
  %151 = bitcast %union.rec* %150 to %struct.word_type*
  %152 = getelementptr inbounds %struct.word_type, %struct.word_type* %151, i32 0, i32 0
  %153 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %152, i32 0, i64 0
  %154 = getelementptr inbounds %struct.LIST, %struct.LIST* %153, i32 0, i32 1
  %155 = load %union.rec*, %union.rec** %154, align 8
  store %union.rec* %155, %union.rec** %plink, align 8
  br label %156

; <label>:156                                     ; preds = %226, %149
  %157 = load %union.rec*, %union.rec** %plink, align 8
  %158 = load %union.rec*, %union.rec** %link, align 8
  %159 = icmp ne %union.rec* %157, %158
  br i1 %159, label %160, label %233

; <label>:160                                     ; preds = %156
  %161 = load %union.rec*, %union.rec** %plink, align 8
  %162 = bitcast %union.rec* %161 to %struct.word_type*
  %163 = getelementptr inbounds %struct.word_type, %struct.word_type* %162, i32 0, i32 0
  %164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %163, i32 0, i64 1
  %165 = getelementptr inbounds %struct.LIST, %struct.LIST* %164, i32 0, i32 0
  %166 = load %union.rec*, %union.rec** %165, align 8
  store %union.rec* %166, %union.rec** %pface, align 8
  br label %167

; <label>:167                                     ; preds = %177, %160
  %168 = load %union.rec*, %union.rec** %pface, align 8
  %169 = bitcast %union.rec* %168 to %struct.word_type*
  %170 = getelementptr inbounds %struct.word_type, %struct.word_type* %169, i32 0, i32 1
  %171 = bitcast %union.FIRST_UNION* %170 to %struct.anon*
  %172 = getelementptr inbounds %struct.anon, %struct.anon* %171, i32 0, i32 0
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %184

; <label>:176                                     ; preds = %167
  br label %177

; <label>:177                                     ; preds = %176
  %178 = load %union.rec*, %union.rec** %pface, align 8
  %179 = bitcast %union.rec* %178 to %struct.word_type*
  %180 = getelementptr inbounds %struct.word_type, %struct.word_type* %179, i32 0, i32 0
  %181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %180, i32 0, i64 1
  %182 = getelementptr inbounds %struct.LIST, %struct.LIST* %181, i32 0, i32 0
  %183 = load %union.rec*, %union.rec** %182, align 8
  store %union.rec* %183, %union.rec** %pface, align 8
  br label %167

; <label>:184                                     ; preds = %167
  %185 = load %union.rec*, %union.rec** %pface, align 8
  %186 = bitcast %union.rec* %185 to %struct.word_type*
  %187 = getelementptr inbounds %struct.word_type, %struct.word_type* %186, i32 0, i32 0
  %188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %187, i32 0, i64 0
  %189 = getelementptr inbounds %struct.LIST, %struct.LIST* %188, i32 0, i32 1
  %190 = load %union.rec*, %union.rec** %189, align 8
  %191 = bitcast %union.rec* %190 to %struct.word_type*
  %192 = getelementptr inbounds %struct.word_type, %struct.word_type* %191, i32 0, i32 0
  %193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %192, i32 0, i64 1
  %194 = getelementptr inbounds %struct.LIST, %struct.LIST* %193, i32 0, i32 0
  %195 = load %union.rec*, %union.rec** %194, align 8
  store %union.rec* %195, %union.rec** %pname, align 8
  br label %196

; <label>:196                                     ; preds = %206, %184
  %197 = load %union.rec*, %union.rec** %pname, align 8
  %198 = bitcast %union.rec* %197 to %struct.word_type*
  %199 = getelementptr inbounds %struct.word_type, %struct.word_type* %198, i32 0, i32 1
  %200 = bitcast %union.FIRST_UNION* %199 to %struct.anon*
  %201 = getelementptr inbounds %struct.anon, %struct.anon* %200, i32 0, i32 0
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %213

; <label>:205                                     ; preds = %196
  br label %206

; <label>:206                                     ; preds = %205
  %207 = load %union.rec*, %union.rec** %pname, align 8
  %208 = bitcast %union.rec* %207 to %struct.word_type*
  %209 = getelementptr inbounds %struct.word_type, %struct.word_type* %208, i32 0, i32 0
  %210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %209, i32 0, i64 1
  %211 = getelementptr inbounds %struct.LIST, %struct.LIST* %210, i32 0, i32 0
  %212 = load %union.rec*, %union.rec** %211, align 8
  store %union.rec* %212, %union.rec** %pname, align 8
  br label %196

; <label>:213                                     ; preds = %196
  %214 = load %union.rec*, %union.rec** %pname, align 8
  %215 = bitcast %union.rec* %214 to %struct.word_type*
  %216 = getelementptr inbounds %struct.word_type, %struct.word_type* %215, i32 0, i32 4
  %217 = getelementptr inbounds [4 x i8], [4 x i8]* %216, i32 0, i32 0
  %218 = load %union.rec*, %union.rec** %ps_name, align 8
  %219 = bitcast %union.rec* %218 to %struct.word_type*
  %220 = getelementptr inbounds %struct.word_type, %struct.word_type* %219, i32 0, i32 4
  %221 = getelementptr inbounds [4 x i8], [4 x i8]* %220, i32 0, i32 0
  %222 = call i32 @strcmp(i8* %217, i8* %221) #5
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %225

; <label>:224                                     ; preds = %213
  br label %233

; <label>:225                                     ; preds = %213
  br label %226

; <label>:226                                     ; preds = %225
  %227 = load %union.rec*, %union.rec** %plink, align 8
  %228 = bitcast %union.rec* %227 to %struct.word_type*
  %229 = getelementptr inbounds %struct.word_type, %struct.word_type* %228, i32 0, i32 0
  %230 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %229, i32 0, i64 0
  %231 = getelementptr inbounds %struct.LIST, %struct.LIST* %230, i32 0, i32 1
  %232 = load %union.rec*, %union.rec** %231, align 8
  store %union.rec* %232, %union.rec** %plink, align 8
  br label %156

; <label>:233                                     ; preds = %224, %156
  %234 = load %union.rec*, %union.rec** %plink, align 8
  %235 = load %union.rec*, %union.rec** %link, align 8
  %236 = icmp eq %union.rec* %234, %235
  br i1 %236, label %237, label %246

; <label>:237                                     ; preds = %233
  %238 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %239 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %238, i32 0, i32 13
  %240 = load void (i8*, i32)*, void (i8*, i32)** %239, align 8
  %241 = load %union.rec*, %union.rec** %ps_name, align 8
  %242 = bitcast %union.rec* %241 to %struct.word_type*
  %243 = getelementptr inbounds %struct.word_type, %struct.word_type* %242, i32 0, i32 4
  %244 = getelementptr inbounds [4 x i8], [4 x i8]* %243, i32 0, i32 0
  %245 = load i32, i32* %first, align 4
  call void %240(i8* %244, i32 %245)
  store i32 0, i32* %first, align 4
  br label %246

; <label>:246                                     ; preds = %237, %233
  br label %247

; <label>:247                                     ; preds = %246
  %248 = load %union.rec*, %union.rec** %link, align 8
  %249 = bitcast %union.rec* %248 to %struct.word_type*
  %250 = getelementptr inbounds %struct.word_type, %struct.word_type* %249, i32 0, i32 0
  %251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %250, i32 0, i64 0
  %252 = getelementptr inbounds %struct.LIST, %struct.LIST* %251, i32 0, i32 1
  %253 = load %union.rec*, %union.rec** %252, align 8
  store %union.rec* %253, %union.rec** %link, align 8
  br label %38

; <label>:254                                     ; preds = %38
  ret void
}

; Function Attrs: nounwind uwtable
define void @FontAdvanceCurrentPage() #0 {
  br label %1

; <label>:1                                       ; preds = %161, %0
  %2 = load %union.rec*, %union.rec** @font_used, align 8
  %3 = bitcast %union.rec* %2 to %struct.word_type*
  %4 = getelementptr inbounds %struct.word_type, %struct.word_type* %3, i32 0, i32 0
  %5 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4, i32 0, i64 0
  %6 = getelementptr inbounds %struct.LIST, %struct.LIST* %5, i32 0, i32 1
  %7 = load %union.rec*, %union.rec** %6, align 8
  %8 = load %union.rec*, %union.rec** @font_used, align 8
  %9 = icmp ne %union.rec* %7, %8
  br i1 %9, label %10, label %176

; <label>:10                                      ; preds = %1
  %11 = load %union.rec*, %union.rec** @font_used, align 8
  %12 = bitcast %union.rec* %11 to %struct.word_type*
  %13 = getelementptr inbounds %struct.word_type, %struct.word_type* %12, i32 0, i32 0
  %14 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %13, i32 0, i64 0
  %15 = getelementptr inbounds %struct.LIST, %struct.LIST* %14, i32 0, i32 1
  %16 = load %union.rec*, %union.rec** %15, align 8
  store %union.rec* %16, %union.rec** @xx_link, align 8
  %17 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %17, %union.rec** @zz_hold, align 8
  %18 = load %union.rec*, %union.rec** @zz_hold, align 8
  %19 = bitcast %union.rec* %18 to %struct.word_type*
  %20 = getelementptr inbounds %struct.word_type, %struct.word_type* %19, i32 0, i32 0
  %21 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %20, i32 0, i64 1
  %22 = getelementptr inbounds %struct.LIST, %struct.LIST* %21, i32 0, i32 1
  %23 = load %union.rec*, %union.rec** %22, align 8
  %24 = load %union.rec*, %union.rec** @zz_hold, align 8
  %25 = icmp eq %union.rec* %23, %24
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %10
  br label %68

; <label>:27                                      ; preds = %10
  %28 = load %union.rec*, %union.rec** @zz_hold, align 8
  %29 = bitcast %union.rec* %28 to %struct.word_type*
  %30 = getelementptr inbounds %struct.word_type, %struct.word_type* %29, i32 0, i32 0
  %31 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %30, i32 0, i64 1
  %32 = getelementptr inbounds %struct.LIST, %struct.LIST* %31, i32 0, i32 1
  %33 = load %union.rec*, %union.rec** %32, align 8
  store %union.rec* %33, %union.rec** @zz_res, align 8
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  %35 = bitcast %union.rec* %34 to %struct.word_type*
  %36 = getelementptr inbounds %struct.word_type, %struct.word_type* %35, i32 0, i32 0
  %37 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %36, i32 0, i64 1
  %38 = getelementptr inbounds %struct.LIST, %struct.LIST* %37, i32 0, i32 0
  %39 = load %union.rec*, %union.rec** %38, align 8
  %40 = load %union.rec*, %union.rec** @zz_res, align 8
  %41 = bitcast %union.rec* %40 to %struct.word_type*
  %42 = getelementptr inbounds %struct.word_type, %struct.word_type* %41, i32 0, i32 0
  %43 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %42, i32 0, i64 1
  %44 = getelementptr inbounds %struct.LIST, %struct.LIST* %43, i32 0, i32 0
  store %union.rec* %39, %union.rec** %44, align 8
  %45 = load %union.rec*, %union.rec** @zz_res, align 8
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %47 = bitcast %union.rec* %46 to %struct.word_type*
  %48 = getelementptr inbounds %struct.word_type, %struct.word_type* %47, i32 0, i32 0
  %49 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %48, i32 0, i64 1
  %50 = getelementptr inbounds %struct.LIST, %struct.LIST* %49, i32 0, i32 0
  %51 = load %union.rec*, %union.rec** %50, align 8
  %52 = bitcast %union.rec* %51 to %struct.word_type*
  %53 = getelementptr inbounds %struct.word_type, %struct.word_type* %52, i32 0, i32 0
  %54 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %53, i32 0, i64 1
  %55 = getelementptr inbounds %struct.LIST, %struct.LIST* %54, i32 0, i32 1
  store %union.rec* %45, %union.rec** %55, align 8
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  %57 = load %union.rec*, %union.rec** @zz_hold, align 8
  %58 = bitcast %union.rec* %57 to %struct.word_type*
  %59 = getelementptr inbounds %struct.word_type, %struct.word_type* %58, i32 0, i32 0
  %60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %59, i32 0, i64 1
  %61 = getelementptr inbounds %struct.LIST, %struct.LIST* %60, i32 0, i32 1
  store %union.rec* %56, %union.rec** %61, align 8
  %62 = load %union.rec*, %union.rec** @zz_hold, align 8
  %63 = bitcast %union.rec* %62 to %struct.word_type*
  %64 = getelementptr inbounds %struct.word_type, %struct.word_type* %63, i32 0, i32 0
  %65 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %64, i32 0, i64 1
  %66 = getelementptr inbounds %struct.LIST, %struct.LIST* %65, i32 0, i32 0
  store %union.rec* %56, %union.rec** %66, align 8
  %67 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %68

; <label>:68                                      ; preds = %27, %26
  %69 = phi %union.rec* [ null, %26 ], [ %67, %27 ]
  %70 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %70, %union.rec** @zz_hold, align 8
  %71 = load %union.rec*, %union.rec** @zz_hold, align 8
  %72 = bitcast %union.rec* %71 to %struct.word_type*
  %73 = getelementptr inbounds %struct.word_type, %struct.word_type* %72, i32 0, i32 0
  %74 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %73, i32 0, i64 0
  %75 = getelementptr inbounds %struct.LIST, %struct.LIST* %74, i32 0, i32 1
  %76 = load %union.rec*, %union.rec** %75, align 8
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  %78 = icmp eq %union.rec* %76, %77
  br i1 %78, label %79, label %80

; <label>:79                                      ; preds = %68
  br label %121

; <label>:80                                      ; preds = %68
  %81 = load %union.rec*, %union.rec** @zz_hold, align 8
  %82 = bitcast %union.rec* %81 to %struct.word_type*
  %83 = getelementptr inbounds %struct.word_type, %struct.word_type* %82, i32 0, i32 0
  %84 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %83, i32 0, i64 0
  %85 = getelementptr inbounds %struct.LIST, %struct.LIST* %84, i32 0, i32 1
  %86 = load %union.rec*, %union.rec** %85, align 8
  store %union.rec* %86, %union.rec** @zz_res, align 8
  %87 = load %union.rec*, %union.rec** @zz_hold, align 8
  %88 = bitcast %union.rec* %87 to %struct.word_type*
  %89 = getelementptr inbounds %struct.word_type, %struct.word_type* %88, i32 0, i32 0
  %90 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %89, i32 0, i64 0
  %91 = getelementptr inbounds %struct.LIST, %struct.LIST* %90, i32 0, i32 0
  %92 = load %union.rec*, %union.rec** %91, align 8
  %93 = load %union.rec*, %union.rec** @zz_res, align 8
  %94 = bitcast %union.rec* %93 to %struct.word_type*
  %95 = getelementptr inbounds %struct.word_type, %struct.word_type* %94, i32 0, i32 0
  %96 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %95, i32 0, i64 0
  %97 = getelementptr inbounds %struct.LIST, %struct.LIST* %96, i32 0, i32 0
  store %union.rec* %92, %union.rec** %97, align 8
  %98 = load %union.rec*, %union.rec** @zz_res, align 8
  %99 = load %union.rec*, %union.rec** @zz_hold, align 8
  %100 = bitcast %union.rec* %99 to %struct.word_type*
  %101 = getelementptr inbounds %struct.word_type, %struct.word_type* %100, i32 0, i32 0
  %102 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %101, i32 0, i64 0
  %103 = getelementptr inbounds %struct.LIST, %struct.LIST* %102, i32 0, i32 0
  %104 = load %union.rec*, %union.rec** %103, align 8
  %105 = bitcast %union.rec* %104 to %struct.word_type*
  %106 = getelementptr inbounds %struct.word_type, %struct.word_type* %105, i32 0, i32 0
  %107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %106, i32 0, i64 0
  %108 = getelementptr inbounds %struct.LIST, %struct.LIST* %107, i32 0, i32 1
  store %union.rec* %98, %union.rec** %108, align 8
  %109 = load %union.rec*, %union.rec** @zz_hold, align 8
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %111 = bitcast %union.rec* %110 to %struct.word_type*
  %112 = getelementptr inbounds %struct.word_type, %struct.word_type* %111, i32 0, i32 0
  %113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %112, i32 0, i64 0
  %114 = getelementptr inbounds %struct.LIST, %struct.LIST* %113, i32 0, i32 1
  store %union.rec* %109, %union.rec** %114, align 8
  %115 = load %union.rec*, %union.rec** @zz_hold, align 8
  %116 = bitcast %union.rec* %115 to %struct.word_type*
  %117 = getelementptr inbounds %struct.word_type, %struct.word_type* %116, i32 0, i32 0
  %118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %117, i32 0, i64 0
  %119 = getelementptr inbounds %struct.LIST, %struct.LIST* %118, i32 0, i32 0
  store %union.rec* %109, %union.rec** %119, align 8
  %120 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %121

; <label>:121                                     ; preds = %80, %79
  %122 = phi %union.rec* [ null, %79 ], [ %120, %80 ]
  %123 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %123, %union.rec** @zz_hold, align 8
  %124 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %124, %union.rec** @zz_hold, align 8
  %125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %126 = bitcast %union.rec* %125 to %struct.word_type*
  %127 = getelementptr inbounds %struct.word_type, %struct.word_type* %126, i32 0, i32 1
  %128 = bitcast %union.FIRST_UNION* %127 to %struct.anon*
  %129 = getelementptr inbounds %struct.anon, %struct.anon* %128, i32 0, i32 0
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp eq i32 %131, 11
  br i1 %132, label %142, label %133

; <label>:133                                     ; preds = %121
  %134 = load %union.rec*, %union.rec** @zz_hold, align 8
  %135 = bitcast %union.rec* %134 to %struct.word_type*
  %136 = getelementptr inbounds %struct.word_type, %struct.word_type* %135, i32 0, i32 1
  %137 = bitcast %union.FIRST_UNION* %136 to %struct.anon*
  %138 = getelementptr inbounds %struct.anon, %struct.anon* %137, i32 0, i32 0
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp eq i32 %140, 12
  br i1 %141, label %142, label %150

; <label>:142                                     ; preds = %133, %121
  %143 = load %union.rec*, %union.rec** @zz_hold, align 8
  %144 = bitcast %union.rec* %143 to %struct.word_type*
  %145 = getelementptr inbounds %struct.word_type, %struct.word_type* %144, i32 0, i32 1
  %146 = bitcast %union.FIRST_UNION* %145 to %struct.anon*
  %147 = getelementptr inbounds %struct.anon, %struct.anon* %146, i32 0, i32 1
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  br label %161

; <label>:150                                     ; preds = %133
  %151 = load %union.rec*, %union.rec** @zz_hold, align 8
  %152 = bitcast %union.rec* %151 to %struct.word_type*
  %153 = getelementptr inbounds %struct.word_type, %struct.word_type* %152, i32 0, i32 1
  %154 = bitcast %union.FIRST_UNION* %153 to %struct.anon*
  %155 = getelementptr inbounds %struct.anon, %struct.anon* %154, i32 0, i32 0
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i64
  %158 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  br label %161

; <label>:161                                     ; preds = %150, %142
  %162 = phi i32 [ %149, %142 ], [ %160, %150 ]
  store i32 %162, i32* @zz_size, align 4
  %163 = load i32, i32* @zz_size, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %164
  %166 = load %union.rec*, %union.rec** %165, align 8
  %167 = load %union.rec*, %union.rec** @zz_hold, align 8
  %168 = bitcast %union.rec* %167 to %struct.word_type*
  %169 = getelementptr inbounds %struct.word_type, %struct.word_type* %168, i32 0, i32 0
  %170 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %169, i32 0, i64 0
  %171 = getelementptr inbounds %struct.LIST, %struct.LIST* %170, i32 0, i32 0
  store %union.rec* %166, %union.rec** %171, align 8
  %172 = load %union.rec*, %union.rec** @zz_hold, align 8
  %173 = load i32, i32* @zz_size, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %174
  store %union.rec* %172, %union.rec** %175, align 8
  br label %1

; <label>:176                                     ; preds = %1
  %177 = load i32, i32* @font_curr_page, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* @font_curr_page, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @FontPageUsed(%union.rec* %face) #0 {
  %1 = alloca %union.rec*, align 8
  store %union.rec* %face, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = bitcast %union.rec* %2 to %struct.word_type*
  %4 = getelementptr inbounds %struct.word_type, %struct.word_type* %3, i32 0, i32 2
  %5 = bitcast %union.SECOND_UNION* %4 to %struct.anon.4*
  %6 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %5, i32 0, i32 1
  %7 = load i16, i16* %6, align 2
  %8 = zext i16 %7 to i32
  %9 = load i32, i32* @font_curr_page, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %14, label %11

; <label>:11                                      ; preds = %0
  %12 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %13 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %11, %0
  %15 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %16 = zext i8 %15 to i32
  store i32 %16, i32* @zz_size, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp uge i64 %17, 265
  br i1 %18, label %19, label %22

; <label>:19                                      ; preds = %14
  %20 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %21 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %20)
  br label %47

; <label>:22                                      ; preds = %14
  %23 = load i32, i32* @zz_size, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %24
  %26 = load %union.rec*, %union.rec** %25, align 8
  %27 = icmp eq %union.rec* %26, null
  br i1 %27, label %28, label %32

; <label>:28                                      ; preds = %22
  %29 = load i32, i32* @zz_size, align 4
  %30 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %31 = call %union.rec* @GetMemory(i32 %29, %struct.FILE_POS* %30)
  store %union.rec* %31, %union.rec** @zz_hold, align 8
  br label %46

; <label>:32                                      ; preds = %22
  %33 = load i32, i32* @zz_size, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %34
  %36 = load %union.rec*, %union.rec** %35, align 8
  store %union.rec* %36, %union.rec** @zz_hold, align 8
  store %union.rec* %36, %union.rec** @zz_hold, align 8
  %37 = load %union.rec*, %union.rec** @zz_hold, align 8
  %38 = bitcast %union.rec* %37 to %struct.word_type*
  %39 = getelementptr inbounds %struct.word_type, %struct.word_type* %38, i32 0, i32 0
  %40 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %39, i32 0, i64 0
  %41 = getelementptr inbounds %struct.LIST, %struct.LIST* %40, i32 0, i32 0
  %42 = load %union.rec*, %union.rec** %41, align 8
  %43 = load i32, i32* @zz_size, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %44
  store %union.rec* %42, %union.rec** %45, align 8
  br label %46

; <label>:46                                      ; preds = %32, %28
  br label %47

; <label>:47                                      ; preds = %46, %19
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %49 = bitcast %union.rec* %48 to %struct.word_type*
  %50 = getelementptr inbounds %struct.word_type, %struct.word_type* %49, i32 0, i32 1
  %51 = bitcast %union.FIRST_UNION* %50 to %struct.anon*
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 0
  store i8 0, i8* %52, align 1
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %54 = load %union.rec*, %union.rec** @zz_hold, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 0
  %57 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %56, i32 0, i64 1
  %58 = getelementptr inbounds %struct.LIST, %struct.LIST* %57, i32 0, i32 1
  store %union.rec* %53, %union.rec** %58, align 8
  %59 = load %union.rec*, %union.rec** @zz_hold, align 8
  %60 = bitcast %union.rec* %59 to %struct.word_type*
  %61 = getelementptr inbounds %struct.word_type, %struct.word_type* %60, i32 0, i32 0
  %62 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %61, i32 0, i64 1
  %63 = getelementptr inbounds %struct.LIST, %struct.LIST* %62, i32 0, i32 0
  store %union.rec* %53, %union.rec** %63, align 8
  %64 = load %union.rec*, %union.rec** @zz_hold, align 8
  %65 = bitcast %union.rec* %64 to %struct.word_type*
  %66 = getelementptr inbounds %struct.word_type, %struct.word_type* %65, i32 0, i32 0
  %67 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %66, i32 0, i64 0
  %68 = getelementptr inbounds %struct.LIST, %struct.LIST* %67, i32 0, i32 1
  store %union.rec* %53, %union.rec** %68, align 8
  %69 = load %union.rec*, %union.rec** @zz_hold, align 8
  %70 = bitcast %union.rec* %69 to %struct.word_type*
  %71 = getelementptr inbounds %struct.word_type, %struct.word_type* %70, i32 0, i32 0
  %72 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %71, i32 0, i64 0
  %73 = getelementptr inbounds %struct.LIST, %struct.LIST* %72, i32 0, i32 0
  store %union.rec* %53, %union.rec** %73, align 8
  store %union.rec* %53, %union.rec** @xx_link, align 8
  %74 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %74, %union.rec** @zz_res, align 8
  %75 = load %union.rec*, %union.rec** @font_used, align 8
  store %union.rec* %75, %union.rec** @zz_hold, align 8
  %76 = load %union.rec*, %union.rec** @zz_hold, align 8
  %77 = icmp eq %union.rec* %76, null
  br i1 %77, label %78, label %80

; <label>:78                                      ; preds = %47
  %79 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %128

; <label>:80                                      ; preds = %47
  %81 = load %union.rec*, %union.rec** @zz_res, align 8
  %82 = icmp eq %union.rec* %81, null
  br i1 %82, label %83, label %85

; <label>:83                                      ; preds = %80
  %84 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %126

; <label>:85                                      ; preds = %80
  %86 = load %union.rec*, %union.rec** @zz_hold, align 8
  %87 = bitcast %union.rec* %86 to %struct.word_type*
  %88 = getelementptr inbounds %struct.word_type, %struct.word_type* %87, i32 0, i32 0
  %89 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %88, i32 0, i64 0
  %90 = getelementptr inbounds %struct.LIST, %struct.LIST* %89, i32 0, i32 0
  %91 = load %union.rec*, %union.rec** %90, align 8
  store %union.rec* %91, %union.rec** @zz_tmp, align 8
  %92 = load %union.rec*, %union.rec** @zz_res, align 8
  %93 = bitcast %union.rec* %92 to %struct.word_type*
  %94 = getelementptr inbounds %struct.word_type, %struct.word_type* %93, i32 0, i32 0
  %95 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %94, i32 0, i64 0
  %96 = getelementptr inbounds %struct.LIST, %struct.LIST* %95, i32 0, i32 0
  %97 = load %union.rec*, %union.rec** %96, align 8
  %98 = load %union.rec*, %union.rec** @zz_hold, align 8
  %99 = bitcast %union.rec* %98 to %struct.word_type*
  %100 = getelementptr inbounds %struct.word_type, %struct.word_type* %99, i32 0, i32 0
  %101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %100, i32 0, i64 0
  %102 = getelementptr inbounds %struct.LIST, %struct.LIST* %101, i32 0, i32 0
  store %union.rec* %97, %union.rec** %102, align 8
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %104 = load %union.rec*, %union.rec** @zz_res, align 8
  %105 = bitcast %union.rec* %104 to %struct.word_type*
  %106 = getelementptr inbounds %struct.word_type, %struct.word_type* %105, i32 0, i32 0
  %107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %106, i32 0, i64 0
  %108 = getelementptr inbounds %struct.LIST, %struct.LIST* %107, i32 0, i32 0
  %109 = load %union.rec*, %union.rec** %108, align 8
  %110 = bitcast %union.rec* %109 to %struct.word_type*
  %111 = getelementptr inbounds %struct.word_type, %struct.word_type* %110, i32 0, i32 0
  %112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %111, i32 0, i64 0
  %113 = getelementptr inbounds %struct.LIST, %struct.LIST* %112, i32 0, i32 1
  store %union.rec* %103, %union.rec** %113, align 8
  %114 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %115 = load %union.rec*, %union.rec** @zz_res, align 8
  %116 = bitcast %union.rec* %115 to %struct.word_type*
  %117 = getelementptr inbounds %struct.word_type, %struct.word_type* %116, i32 0, i32 0
  %118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %117, i32 0, i64 0
  %119 = getelementptr inbounds %struct.LIST, %struct.LIST* %118, i32 0, i32 0
  store %union.rec* %114, %union.rec** %119, align 8
  %120 = load %union.rec*, %union.rec** @zz_res, align 8
  %121 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %122 = bitcast %union.rec* %121 to %struct.word_type*
  %123 = getelementptr inbounds %struct.word_type, %struct.word_type* %122, i32 0, i32 0
  %124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %123, i32 0, i64 0
  %125 = getelementptr inbounds %struct.LIST, %struct.LIST* %124, i32 0, i32 1
  store %union.rec* %120, %union.rec** %125, align 8
  br label %126

; <label>:126                                     ; preds = %85, %83
  %127 = phi %union.rec* [ %84, %83 ], [ %120, %85 ]
  br label %128

; <label>:128                                     ; preds = %126, %78
  %129 = phi %union.rec* [ %79, %78 ], [ %127, %126 ]
  %130 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %130, %union.rec** @zz_res, align 8
  %131 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %131, %union.rec** @zz_hold, align 8
  %132 = load %union.rec*, %union.rec** @zz_hold, align 8
  %133 = icmp eq %union.rec* %132, null
  br i1 %133, label %134, label %136

; <label>:134                                     ; preds = %128
  %135 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %184

; <label>:136                                     ; preds = %128
  %137 = load %union.rec*, %union.rec** @zz_res, align 8
  %138 = icmp eq %union.rec* %137, null
  br i1 %138, label %139, label %141

; <label>:139                                     ; preds = %136
  %140 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %182

; <label>:141                                     ; preds = %136
  %142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %143 = bitcast %union.rec* %142 to %struct.word_type*
  %144 = getelementptr inbounds %struct.word_type, %struct.word_type* %143, i32 0, i32 0
  %145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %144, i32 0, i64 1
  %146 = getelementptr inbounds %struct.LIST, %struct.LIST* %145, i32 0, i32 0
  %147 = load %union.rec*, %union.rec** %146, align 8
  store %union.rec* %147, %union.rec** @zz_tmp, align 8
  %148 = load %union.rec*, %union.rec** @zz_res, align 8
  %149 = bitcast %union.rec* %148 to %struct.word_type*
  %150 = getelementptr inbounds %struct.word_type, %struct.word_type* %149, i32 0, i32 0
  %151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %150, i32 0, i64 1
  %152 = getelementptr inbounds %struct.LIST, %struct.LIST* %151, i32 0, i32 0
  %153 = load %union.rec*, %union.rec** %152, align 8
  %154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %155 = bitcast %union.rec* %154 to %struct.word_type*
  %156 = getelementptr inbounds %struct.word_type, %struct.word_type* %155, i32 0, i32 0
  %157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %156, i32 0, i64 1
  %158 = getelementptr inbounds %struct.LIST, %struct.LIST* %157, i32 0, i32 0
  store %union.rec* %153, %union.rec** %158, align 8
  %159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %160 = load %union.rec*, %union.rec** @zz_res, align 8
  %161 = bitcast %union.rec* %160 to %struct.word_type*
  %162 = getelementptr inbounds %struct.word_type, %struct.word_type* %161, i32 0, i32 0
  %163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %162, i32 0, i64 1
  %164 = getelementptr inbounds %struct.LIST, %struct.LIST* %163, i32 0, i32 0
  %165 = load %union.rec*, %union.rec** %164, align 8
  %166 = bitcast %union.rec* %165 to %struct.word_type*
  %167 = getelementptr inbounds %struct.word_type, %struct.word_type* %166, i32 0, i32 0
  %168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %167, i32 0, i64 1
  %169 = getelementptr inbounds %struct.LIST, %struct.LIST* %168, i32 0, i32 1
  store %union.rec* %159, %union.rec** %169, align 8
  %170 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %171 = load %union.rec*, %union.rec** @zz_res, align 8
  %172 = bitcast %union.rec* %171 to %struct.word_type*
  %173 = getelementptr inbounds %struct.word_type, %struct.word_type* %172, i32 0, i32 0
  %174 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %173, i32 0, i64 1
  %175 = getelementptr inbounds %struct.LIST, %struct.LIST* %174, i32 0, i32 0
  store %union.rec* %170, %union.rec** %175, align 8
  %176 = load %union.rec*, %union.rec** @zz_res, align 8
  %177 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %178 = bitcast %union.rec* %177 to %struct.word_type*
  %179 = getelementptr inbounds %struct.word_type, %struct.word_type* %178, i32 0, i32 0
  %180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %179, i32 0, i64 1
  %181 = getelementptr inbounds %struct.LIST, %struct.LIST* %180, i32 0, i32 1
  store %union.rec* %176, %union.rec** %181, align 8
  br label %182

; <label>:182                                     ; preds = %141, %139
  %183 = phi %union.rec* [ %140, %139 ], [ %176, %141 ]
  br label %184

; <label>:184                                     ; preds = %182, %134
  %185 = phi %union.rec* [ %135, %134 ], [ %183, %182 ]
  %186 = load i32, i32* @font_curr_page, align 4
  %187 = trunc i32 %186 to i16
  %188 = load %union.rec*, %union.rec** %1, align 8
  %189 = bitcast %union.rec* %188 to %struct.word_type*
  %190 = getelementptr inbounds %struct.word_type, %struct.word_type* %189, i32 0, i32 2
  %191 = bitcast %union.SECOND_UNION* %190 to %struct.anon.4*
  %192 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %191, i32 0, i32 1
  store i16 %187, i16* %192, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @FontNeeded(%struct._IO_FILE* %fp) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %first_need = alloca i32, align 4
  %link = alloca %union.rec*, align 8
  %flink = alloca %union.rec*, align 8
  %family = alloca %union.rec*, align 8
  %face = alloca %union.rec*, align 8
  %ps_name = alloca %union.rec*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %1, align 8
  store i32 1, i32* %first_need, align 4
  %2 = load %union.rec*, %union.rec** @font_root, align 8
  %3 = bitcast %union.rec* %2 to %struct.word_type*
  %4 = getelementptr inbounds %struct.word_type, %struct.word_type* %3, i32 0, i32 0
  %5 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4, i32 0, i64 0
  %6 = getelementptr inbounds %struct.LIST, %struct.LIST* %5, i32 0, i32 1
  %7 = load %union.rec*, %union.rec** %6, align 8
  store %union.rec* %7, %union.rec** %link, align 8
  br label %8

; <label>:8                                       ; preds = %139, %0
  %9 = load %union.rec*, %union.rec** %link, align 8
  %10 = load %union.rec*, %union.rec** @font_root, align 8
  %11 = icmp ne %union.rec* %9, %10
  br i1 %11, label %12, label %146

; <label>:12                                      ; preds = %8
  %13 = load %union.rec*, %union.rec** %link, align 8
  %14 = bitcast %union.rec* %13 to %struct.word_type*
  %15 = getelementptr inbounds %struct.word_type, %struct.word_type* %14, i32 0, i32 0
  %16 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %15, i32 0, i64 1
  %17 = getelementptr inbounds %struct.LIST, %struct.LIST* %16, i32 0, i32 0
  %18 = load %union.rec*, %union.rec** %17, align 8
  store %union.rec* %18, %union.rec** %family, align 8
  br label %19

; <label>:19                                      ; preds = %29, %12
  %20 = load %union.rec*, %union.rec** %family, align 8
  %21 = bitcast %union.rec* %20 to %struct.word_type*
  %22 = getelementptr inbounds %struct.word_type, %struct.word_type* %21, i32 0, i32 1
  %23 = bitcast %union.FIRST_UNION* %22 to %struct.anon*
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

; <label>:28                                      ; preds = %19
  br label %29

; <label>:29                                      ; preds = %28
  %30 = load %union.rec*, %union.rec** %family, align 8
  %31 = bitcast %union.rec* %30 to %struct.word_type*
  %32 = getelementptr inbounds %struct.word_type, %struct.word_type* %31, i32 0, i32 0
  %33 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %32, i32 0, i64 1
  %34 = getelementptr inbounds %struct.LIST, %struct.LIST* %33, i32 0, i32 0
  %35 = load %union.rec*, %union.rec** %34, align 8
  store %union.rec* %35, %union.rec** %family, align 8
  br label %19

; <label>:36                                      ; preds = %19
  %37 = load %union.rec*, %union.rec** %family, align 8
  %38 = bitcast %union.rec* %37 to %struct.word_type*
  %39 = getelementptr inbounds %struct.word_type, %struct.word_type* %38, i32 0, i32 0
  %40 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %39, i32 0, i64 0
  %41 = getelementptr inbounds %struct.LIST, %struct.LIST* %40, i32 0, i32 1
  %42 = load %union.rec*, %union.rec** %41, align 8
  store %union.rec* %42, %union.rec** %flink, align 8
  br label %43

; <label>:43                                      ; preds = %131, %36
  %44 = load %union.rec*, %union.rec** %flink, align 8
  %45 = load %union.rec*, %union.rec** %family, align 8
  %46 = icmp ne %union.rec* %44, %45
  br i1 %46, label %47, label %138

; <label>:47                                      ; preds = %43
  %48 = load %union.rec*, %union.rec** %flink, align 8
  %49 = bitcast %union.rec* %48 to %struct.word_type*
  %50 = getelementptr inbounds %struct.word_type, %struct.word_type* %49, i32 0, i32 0
  %51 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %50, i32 0, i64 1
  %52 = getelementptr inbounds %struct.LIST, %struct.LIST* %51, i32 0, i32 0
  %53 = load %union.rec*, %union.rec** %52, align 8
  store %union.rec* %53, %union.rec** %face, align 8
  br label %54

; <label>:54                                      ; preds = %64, %47
  %55 = load %union.rec*, %union.rec** %face, align 8
  %56 = bitcast %union.rec* %55 to %struct.word_type*
  %57 = getelementptr inbounds %struct.word_type, %struct.word_type* %56, i32 0, i32 1
  %58 = bitcast %union.FIRST_UNION* %57 to %struct.anon*
  %59 = getelementptr inbounds %struct.anon, %struct.anon* %58, i32 0, i32 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

; <label>:63                                      ; preds = %54
  br label %64

; <label>:64                                      ; preds = %63
  %65 = load %union.rec*, %union.rec** %face, align 8
  %66 = bitcast %union.rec* %65 to %struct.word_type*
  %67 = getelementptr inbounds %struct.word_type, %struct.word_type* %66, i32 0, i32 0
  %68 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %67, i32 0, i64 1
  %69 = getelementptr inbounds %struct.LIST, %struct.LIST* %68, i32 0, i32 0
  %70 = load %union.rec*, %union.rec** %69, align 8
  store %union.rec* %70, %union.rec** %face, align 8
  br label %54

; <label>:71                                      ; preds = %54
  %72 = load %union.rec*, %union.rec** %face, align 8
  %73 = bitcast %union.rec* %72 to %struct.word_type*
  %74 = getelementptr inbounds %struct.word_type, %struct.word_type* %73, i32 0, i32 0
  %75 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %74, i32 0, i64 0
  %76 = getelementptr inbounds %struct.LIST, %struct.LIST* %75, i32 0, i32 1
  %77 = load %union.rec*, %union.rec** %76, align 8
  %78 = bitcast %union.rec* %77 to %struct.word_type*
  %79 = getelementptr inbounds %struct.word_type, %struct.word_type* %78, i32 0, i32 0
  %80 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %79, i32 0, i64 1
  %81 = getelementptr inbounds %struct.LIST, %struct.LIST* %80, i32 0, i32 0
  %82 = load %union.rec*, %union.rec** %81, align 8
  store %union.rec* %82, %union.rec** %ps_name, align 8
  br label %83

; <label>:83                                      ; preds = %93, %71
  %84 = load %union.rec*, %union.rec** %ps_name, align 8
  %85 = bitcast %union.rec* %84 to %struct.word_type*
  %86 = getelementptr inbounds %struct.word_type, %struct.word_type* %85, i32 0, i32 1
  %87 = bitcast %union.FIRST_UNION* %86 to %struct.anon*
  %88 = getelementptr inbounds %struct.anon, %struct.anon* %87, i32 0, i32 0
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %100

; <label>:92                                      ; preds = %83
  br label %93

; <label>:93                                      ; preds = %92
  %94 = load %union.rec*, %union.rec** %ps_name, align 8
  %95 = bitcast %union.rec* %94 to %struct.word_type*
  %96 = getelementptr inbounds %struct.word_type, %struct.word_type* %95, i32 0, i32 0
  %97 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %96, i32 0, i64 1
  %98 = getelementptr inbounds %struct.LIST, %struct.LIST* %97, i32 0, i32 0
  %99 = load %union.rec*, %union.rec** %98, align 8
  store %union.rec* %99, %union.rec** %ps_name, align 8
  br label %83

; <label>:100                                     ; preds = %83
  %101 = load %union.rec*, %union.rec** %ps_name, align 8
  %102 = bitcast %union.rec* %101 to %struct.word_type*
  %103 = getelementptr inbounds %struct.word_type, %struct.word_type* %102, i32 0, i32 1
  %104 = bitcast %union.FIRST_UNION* %103 to %struct.anon*
  %105 = getelementptr inbounds %struct.anon, %struct.anon* %104, i32 0, i32 0
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %107, 11
  br i1 %108, label %121, label %109

; <label>:109                                     ; preds = %100
  %110 = load %union.rec*, %union.rec** %ps_name, align 8
  %111 = bitcast %union.rec* %110 to %struct.word_type*
  %112 = getelementptr inbounds %struct.word_type, %struct.word_type* %111, i32 0, i32 1
  %113 = bitcast %union.FIRST_UNION* %112 to %struct.anon*
  %114 = getelementptr inbounds %struct.anon, %struct.anon* %113, i32 0, i32 0
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp eq i32 %116, 12
  br i1 %117, label %121, label %118

; <label>:118                                     ; preds = %109
  %119 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %120 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %119, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.68, i32 0, i32 0))
  br label %121

; <label>:121                                     ; preds = %118, %109, %100
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %123 = load i32, i32* %first_need, align 4
  %124 = icmp ne i32 %123, 0
  %125 = select i1 %124, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)
  %126 = load %union.rec*, %union.rec** %ps_name, align 8
  %127 = bitcast %union.rec* %126 to %struct.word_type*
  %128 = getelementptr inbounds %struct.word_type, %struct.word_type* %127, i32 0, i32 4
  %129 = getelementptr inbounds [4 x i8], [4 x i8]* %128, i32 0, i32 0
  %130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0), i8* %125, i8* %129)
  store i32 0, i32* %first_need, align 4
  br label %131

; <label>:131                                     ; preds = %121
  %132 = load %union.rec*, %union.rec** %flink, align 8
  %133 = bitcast %union.rec* %132 to %struct.word_type*
  %134 = getelementptr inbounds %struct.word_type, %struct.word_type* %133, i32 0, i32 0
  %135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %134, i32 0, i64 0
  %136 = getelementptr inbounds %struct.LIST, %struct.LIST* %135, i32 0, i32 1
  %137 = load %union.rec*, %union.rec** %136, align 8
  store %union.rec* %137, %union.rec** %flink, align 8
  br label %43

; <label>:138                                     ; preds = %43
  br label %139

; <label>:139                                     ; preds = %138
  %140 = load %union.rec*, %union.rec** %link, align 8
  %141 = bitcast %union.rec* %140 to %struct.word_type*
  %142 = getelementptr inbounds %struct.word_type, %struct.word_type* %141, i32 0, i32 0
  %143 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %142, i32 0, i64 0
  %144 = getelementptr inbounds %struct.LIST, %struct.LIST* %143, i32 0, i32 1
  %145 = load %union.rec*, %union.rec** %144, align 8
  store %union.rec* %145, %union.rec** %link, align 8
  br label %8

; <label>:146                                     ; preds = %8
  %147 = load i32, i32* %first_need, align 4
  ret i32 %147
}

declare %union.rec* @InsertSym(i8*, i8 zeroext, %struct.FILE_POS*, i8 zeroext, i32, i32, i32, %union.rec*, %union.rec*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i32 @DbRetrieve(%union.rec*, i32, %union.rec*, i8*, i8*, i16*, i64*, i32*, i64*) #1

declare void @SwitchScope(%union.rec*) #1

declare %union.rec* @ReadFromFile(i16 zeroext, i64, i32) #1

declare void @UnSwitchScope(%union.rec*) #1

declare %union.rec* @ReplaceWithTidy(%union.rec*, i32) #1

declare i8* @SymName(%union.rec*) #1

declare i8* @EchoFilePos(%struct.FILE_POS*) #1

declare i32 @DisposeObject(%union.rec*) #1

declare i32 @MapLoad(%union.rec*, i32) #1

declare %union.rec* @MakeWordTwo(i32, i8*, i8*, %struct.FILE_POS*) #1

declare i8* @StringInt(i32) #1

declare zeroext i16 @DefineFile(i8*, i8*, %struct.FILE_POS*, i32, i32) #1

declare %struct._IO_FILE* @OpenFile(i16 zeroext, i32, i32) #1

declare i8* @FileName(i16 zeroext) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @ReadCharMetrics(%union.rec* %face, i32 %fixed_pitch, i32 %xheight2, i8* %lig, i32* %ligtop, i16 zeroext %fnum, %struct.metrics* %fnt, i32* %lnum, %struct._IO_FILE* %fp) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.metrics*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct._IO_FILE*, align 8
  %buff = alloca [512 x i8], align 16
  %command = alloca [512 x i8], align 16
  %ch = alloca i8, align 1
  %ligchar = alloca i8, align 1
  %i = alloca i32, align 4
  %wx = alloca i32, align 4
  %llx = alloca i32, align 4
  %lly = alloca i32, align 4
  %urx = alloca i32, align 4
  %ury = alloca i32, align 4
  %fl_wx = alloca float, align 4
  %fl_llx = alloca float, align 4
  %fl_lly = alloca float, align 4
  %fl_urx = alloca float, align 4
  %fl_ury = alloca float, align 4
  %wxfound = alloca i32, align 4
  %bfound = alloca i32, align 4
  %AFMfilename = alloca %union.rec*, align 8
  store %union.rec* %face, %union.rec** %1, align 8
  store i32 %fixed_pitch, i32* %2, align 4
  store i32 %xheight2, i32* %3, align 4
  store i8* %lig, i8** %4, align 8
  store i32* %ligtop, i32** %5, align 8
  store i16 %fnum, i16* %6, align 2
  store %struct.metrics* %fnt, %struct.metrics** %7, align 8
  store i32* %lnum, i32** %8, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %9, align 8
  %10 = load %union.rec*, %union.rec** %1, align 8
  %11 = bitcast %union.rec* %10 to %struct.word_type*
  %12 = getelementptr inbounds %struct.word_type, %struct.word_type* %11, i32 0, i32 0
  %13 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %12, i32 0, i64 0
  %14 = getelementptr inbounds %struct.LIST, %struct.LIST* %13, i32 0, i32 1
  %15 = load %union.rec*, %union.rec** %14, align 8
  %16 = bitcast %union.rec* %15 to %struct.word_type*
  %17 = getelementptr inbounds %struct.word_type, %struct.word_type* %16, i32 0, i32 0
  %18 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %17, i32 0, i64 0
  %19 = getelementptr inbounds %struct.LIST, %struct.LIST* %18, i32 0, i32 1
  %20 = load %union.rec*, %union.rec** %19, align 8
  %21 = bitcast %union.rec* %20 to %struct.word_type*
  %22 = getelementptr inbounds %struct.word_type, %struct.word_type* %21, i32 0, i32 0
  %23 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %22, i32 0, i64 1
  %24 = getelementptr inbounds %struct.LIST, %struct.LIST* %23, i32 0, i32 0
  %25 = load %union.rec*, %union.rec** %24, align 8
  store %union.rec* %25, %union.rec** %AFMfilename, align 8
  br label %26

; <label>:26                                      ; preds = %36, %0
  %27 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %28 = bitcast %union.rec* %27 to %struct.word_type*
  %29 = getelementptr inbounds %struct.word_type, %struct.word_type* %28, i32 0, i32 1
  %30 = bitcast %union.FIRST_UNION* %29 to %struct.anon*
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

; <label>:35                                      ; preds = %26
  br label %36

; <label>:36                                      ; preds = %35
  %37 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %38 = bitcast %union.rec* %37 to %struct.word_type*
  %39 = getelementptr inbounds %struct.word_type, %struct.word_type* %38, i32 0, i32 0
  %40 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %39, i32 0, i64 1
  %41 = getelementptr inbounds %struct.LIST, %struct.LIST* %40, i32 0, i32 0
  %42 = load %union.rec*, %union.rec** %41, align 8
  store %union.rec* %42, %union.rec** %AFMfilename, align 8
  br label %26

; <label>:43                                      ; preds = %26
  br label %44

; <label>:44                                      ; preds = %496, %43
  %45 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %47 = call i8* @fgets(i8* %45, i32 512, %struct._IO_FILE* %46)
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %58

; <label>:49                                      ; preds = %44
  %50 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %51 = call i32 @StringBeginsWith(i8* %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.131, i32 0, i32 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

; <label>:53                                      ; preds = %49
  %54 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %55 = call i32 @StringBeginsWith(i8* %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.132, i32 0, i32 0))
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

; <label>:58                                      ; preds = %53, %49, %44
  %59 = phi i1 [ false, %49 ], [ false, %44 ], [ %57, %53 ]
  br i1 %59, label %60, label %497

; <label>:60                                      ; preds = %58
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  store i8 0, i8* %ch, align 1
  store i32 0, i32* %bfound, align 4
  store i32 0, i32* %wxfound, align 4
  store i32 0, i32* %i, align 4
  br label %64

; <label>:64                                      ; preds = %71, %60
  %65 = load i32, i32* %i, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %69, 32
  br i1 %70, label %71, label %74

; <label>:71                                      ; preds = %64
  %72 = load i32, i32* %i, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %i, align 4
  br label %64

; <label>:74                                      ; preds = %64
  br label %75

; <label>:75                                      ; preds = %341, %74
  %76 = load i32, i32* %i, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp ne i32 %80, 10
  br i1 %81, label %82, label %342

; <label>:82                                      ; preds = %75
  %83 = load i32, i32* %i, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %84
  %86 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %87 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), i8* %86) #4
  %88 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %89 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.133, i32 0, i32 0)) #5
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %107

; <label>:91                                      ; preds = %82
  %92 = load i32, i32* %i, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %93
  %95 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %96 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i32 0, i32 0), i8* %95) #4
  %97 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %98 = load %union.rec*, %union.rec** %1, align 8
  %99 = bitcast %union.rec* %98 to %struct.word_type*
  %100 = getelementptr inbounds %struct.word_type, %struct.word_type* %99, i32 0, i32 3
  %101 = bitcast %union.THIRD_UNION* %100 to %struct.anon.7*
  %102 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %101, i32 0, i32 3
  %103 = load i8, i8* %102, align 4
  %104 = and i8 %103, 127
  %105 = zext i8 %104 to i32
  %106 = call zeroext i8 @MapCharEncoding(i8* %97, i32 %105)
  store i8 %106, i8* %ch, align 1
  br label %300

; <label>:107                                     ; preds = %82
  %108 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.135, i32 0, i32 0)) #5
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %118

; <label>:111                                     ; preds = %107
  %112 = load i32, i32* %i, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %113
  %115 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.136, i32 0, i32 0), float* %fl_wx) #4
  %116 = load float, float* %fl_wx, align 4
  %117 = fptosi float %116 to i32
  store i32 %117, i32* %wx, align 4
  store i32 1, i32* %wxfound, align 4
  br label %299

; <label>:118                                     ; preds = %107
  %119 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %120 = call i32 @strcmp(i8* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.137, i32 0, i32 0)) #5
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %135

; <label>:122                                     ; preds = %118
  %123 = load i32, i32* %i, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %124
  %126 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %125, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.138, i32 0, i32 0), float* %fl_llx, float* %fl_lly, float* %fl_urx, float* %fl_ury) #4
  %127 = load float, float* %fl_llx, align 4
  %128 = fptosi float %127 to i32
  store i32 %128, i32* %llx, align 4
  %129 = load float, float* %fl_lly, align 4
  %130 = fptosi float %129 to i32
  store i32 %130, i32* %lly, align 4
  %131 = load float, float* %fl_urx, align 4
  %132 = fptosi float %131 to i32
  store i32 %132, i32* %urx, align 4
  %133 = load float, float* %fl_ury, align 4
  %134 = fptosi float %133 to i32
  store i32 %134, i32* %ury, align 4
  store i32 1, i32* %bfound, align 4
  br label %298

; <label>:135                                     ; preds = %118
  %136 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %137 = call i32 @strcmp(i8* %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.139, i32 0, i32 0)) #5
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %297

; <label>:139                                     ; preds = %135
  %140 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %141 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %297

; <label>:144                                     ; preds = %139
  %145 = load i8, i8* %ch, align 1
  %146 = zext i8 %145 to i32
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %297

; <label>:148                                     ; preds = %144
  %149 = load i8, i8* %ch, align 1
  %150 = zext i8 %149 to i64
  %151 = load i8*, i8** %4, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 %150
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %165

; <label>:156                                     ; preds = %148
  %157 = load i32*, i32** %5, align 8
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %158, 256
  %160 = trunc i32 %159 to i8
  %161 = load i8, i8* %ch, align 1
  %162 = zext i8 %161 to i64
  %163 = load i8*, i8** %4, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 %162
  store i8 %160, i8* %164, align 1
  br label %165

; <label>:165                                     ; preds = %156, %148
  %166 = load i8, i8* %ch, align 1
  %167 = load i32*, i32** %5, align 8
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  %170 = sext i32 %168 to i64
  %171 = load i8*, i8** %4, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 %170
  store i8 %166, i8* %172, align 1
  %173 = load i32, i32* %i, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %i, align 4
  br label %175

; <label>:175                                     ; preds = %182, %165
  %176 = load i32, i32* %i, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = icmp eq i32 %180, 32
  br i1 %181, label %182, label %185

; <label>:182                                     ; preds = %175
  %183 = load i32, i32* %i, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %i, align 4
  br label %175

; <label>:185                                     ; preds = %175
  br label %186

; <label>:186                                     ; preds = %289, %185
  %187 = load i32, i32* %i, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = icmp ne i32 %191, 59
  br i1 %192, label %193, label %200

; <label>:193                                     ; preds = %186
  %194 = load i32, i32* %i, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = icmp ne i32 %198, 10
  br label %200

; <label>:200                                     ; preds = %193, %186
  %201 = phi i1 [ false, %186 ], [ %199, %193 ]
  br i1 %201, label %202, label %290

; <label>:202                                     ; preds = %200
  %203 = load i32, i32* %i, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %204
  %206 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %207 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %205, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), i8* %206) #4
  %208 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %209 = load %union.rec*, %union.rec** %1, align 8
  %210 = bitcast %union.rec* %209 to %struct.word_type*
  %211 = getelementptr inbounds %struct.word_type, %struct.word_type* %210, i32 0, i32 3
  %212 = bitcast %union.THIRD_UNION* %211 to %struct.anon.7*
  %213 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %212, i32 0, i32 3
  %214 = load i8, i8* %213, align 4
  %215 = and i8 %214, 127
  %216 = zext i8 %215 to i32
  %217 = call zeroext i8 @MapCharEncoding(i8* %208, i32 %216)
  store i8 %217, i8* %ligchar, align 1
  %218 = load i8, i8* %ligchar, align 1
  %219 = zext i8 %218 to i32
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %229

; <label>:221                                     ; preds = %202
  %222 = load i8, i8* %ligchar, align 1
  %223 = load i32*, i32** %5, align 8
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %223, align 4
  %226 = sext i32 %224 to i64
  %227 = load i8*, i8** %4, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 %226
  store i8 %222, i8* %228, align 1
  br label %244

; <label>:229                                     ; preds = %202
  %230 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %231 = bitcast %union.rec* %230 to %struct.word_type*
  %232 = getelementptr inbounds %struct.word_type, %struct.word_type* %231, i32 0, i32 1
  %233 = bitcast %union.FIRST_UNION* %232 to %struct.FILE_POS*
  %234 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %235 = load i16, i16* %6, align 2
  %236 = call i8* @FileName(i16 zeroext %235)
  %237 = load i32*, i32** %8, align 8
  %238 = load i32, i32* %237, align 4
  %239 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 1, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.140, i32 0, i32 0), i32 2, %struct.FILE_POS* %233, i8* %234, i8* %236, i32 %238)
  %240 = load i8, i8* %ch, align 1
  %241 = zext i8 %240 to i64
  %242 = load i8*, i8** %4, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 %241
  store i8 1, i8* %243, align 1
  br label %244

; <label>:244                                     ; preds = %229, %221
  %245 = load i32*, i32** %5, align 8
  %246 = load i32, i32* %245, align 4
  %247 = icmp sgt i32 %246, 507
  br i1 %247, label %248, label %258

; <label>:248                                     ; preds = %244
  %249 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %250 = bitcast %union.rec* %249 to %struct.word_type*
  %251 = getelementptr inbounds %struct.word_type, %struct.word_type* %250, i32 0, i32 1
  %252 = bitcast %union.FIRST_UNION* %251 to %struct.FILE_POS*
  %253 = load i16, i16* %6, align 2
  %254 = call i8* @FileName(i16 zeroext %253)
  %255 = load i32*, i32** %8, align 8
  %256 = load i32, i32* %255, align 4
  %257 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 2, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.141, i32 0, i32 0), i32 1, %struct.FILE_POS* %252, i8* %254, i32 %256)
  br label %258

; <label>:258                                     ; preds = %248, %244
  br label %259

; <label>:259                                     ; preds = %275, %258
  %260 = load i32, i32* %i, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %261
  %263 = load i8, i8* %262, align 1
  %264 = zext i8 %263 to i32
  %265 = icmp ne i32 %264, 32
  br i1 %265, label %266, label %273

; <label>:266                                     ; preds = %259
  %267 = load i32, i32* %i, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %268
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = icmp ne i32 %271, 59
  br label %273

; <label>:273                                     ; preds = %266, %259
  %274 = phi i1 [ false, %259 ], [ %272, %266 ]
  br i1 %274, label %275, label %278

; <label>:275                                     ; preds = %273
  %276 = load i32, i32* %i, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %i, align 4
  br label %259

; <label>:278                                     ; preds = %273
  br label %279

; <label>:279                                     ; preds = %286, %278
  %280 = load i32, i32* %i, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %281
  %283 = load i8, i8* %282, align 1
  %284 = zext i8 %283 to i32
  %285 = icmp eq i32 %284, 32
  br i1 %285, label %286, label %289

; <label>:286                                     ; preds = %279
  %287 = load i32, i32* %i, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %i, align 4
  br label %279

; <label>:289                                     ; preds = %279
  br label %186

; <label>:290                                     ; preds = %200
  %291 = load i32*, i32** %5, align 8
  %292 = load i32, i32* %291, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %291, align 4
  %294 = sext i32 %292 to i64
  %295 = load i8*, i8** %4, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 %294
  store i8 0, i8* %296, align 1
  br label %297

; <label>:297                                     ; preds = %290, %144, %139, %135
  br label %298

; <label>:298                                     ; preds = %297, %122
  br label %299

; <label>:299                                     ; preds = %298, %111
  br label %300

; <label>:300                                     ; preds = %299, %91
  br label %301

; <label>:301                                     ; preds = %317, %300
  %302 = load i32, i32* %i, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %303
  %305 = load i8, i8* %304, align 1
  %306 = zext i8 %305 to i32
  %307 = icmp ne i32 %306, 59
  br i1 %307, label %308, label %315

; <label>:308                                     ; preds = %301
  %309 = load i32, i32* %i, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %310
  %312 = load i8, i8* %311, align 1
  %313 = zext i8 %312 to i32
  %314 = icmp ne i32 %313, 10
  br label %315

; <label>:315                                     ; preds = %308, %301
  %316 = phi i1 [ false, %301 ], [ %314, %308 ]
  br i1 %316, label %317, label %320

; <label>:317                                     ; preds = %315
  %318 = load i32, i32* %i, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %i, align 4
  br label %301

; <label>:320                                     ; preds = %315
  %321 = load i32, i32* %i, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %322
  %324 = load i8, i8* %323, align 1
  %325 = zext i8 %324 to i32
  %326 = icmp eq i32 %325, 59
  br i1 %326, label %327, label %341

; <label>:327                                     ; preds = %320
  %328 = load i32, i32* %i, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %i, align 4
  br label %330

; <label>:330                                     ; preds = %337, %327
  %331 = load i32, i32* %i, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %332
  %334 = load i8, i8* %333, align 1
  %335 = zext i8 %334 to i32
  %336 = icmp eq i32 %335, 32
  br i1 %336, label %337, label %340

; <label>:337                                     ; preds = %330
  %338 = load i32, i32* %i, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %i, align 4
  br label %330

; <label>:340                                     ; preds = %330
  br label %341

; <label>:341                                     ; preds = %340, %320
  br label %75

; <label>:342                                     ; preds = %75
  %343 = load i8, i8* %ch, align 1
  %344 = zext i8 %343 to i32
  %345 = icmp sgt i32 %344, 0
  br i1 %345, label %346, label %496

; <label>:346                                     ; preds = %342
  %347 = load i32, i32* %wxfound, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %359, label %349

; <label>:349                                     ; preds = %346
  %350 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %351 = bitcast %union.rec* %350 to %struct.word_type*
  %352 = getelementptr inbounds %struct.word_type, %struct.word_type* %351, i32 0, i32 1
  %353 = bitcast %union.FIRST_UNION* %352 to %struct.FILE_POS*
  %354 = load i16, i16* %6, align 2
  %355 = call i8* @FileName(i16 zeroext %354)
  %356 = load i32*, i32** %8, align 8
  %357 = load i32, i32* %356, align 4
  %358 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.142, i32 0, i32 0), i32 1, %struct.FILE_POS* %353, i8* %355, i32 %357)
  br label %359

; <label>:359                                     ; preds = %349, %346
  %360 = load i32, i32* %bfound, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %372, label %362

; <label>:362                                     ; preds = %359
  %363 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %364 = bitcast %union.rec* %363 to %struct.word_type*
  %365 = getelementptr inbounds %struct.word_type, %struct.word_type* %364, i32 0, i32 1
  %366 = bitcast %union.FIRST_UNION* %365 to %struct.FILE_POS*
  %367 = load i16, i16* %6, align 2
  %368 = call i8* @FileName(i16 zeroext %367)
  %369 = load i32*, i32** %8, align 8
  %370 = load i32, i32* %369, align 4
  %371 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.143, i32 0, i32 0), i32 1, %struct.FILE_POS* %366, i8* %368, i32 %370)
  br label %372

; <label>:372                                     ; preds = %362, %359
  %373 = load i8, i8* %ch, align 1
  %374 = zext i8 %373 to i64
  %375 = load i8*, i8** %4, align 8
  %376 = getelementptr inbounds i8, i8* %375, i64 %374
  %377 = load i8, i8* %376, align 1
  %378 = zext i8 %377 to i32
  %379 = icmp eq i32 %378, 1
  br i1 %379, label %380, label %385

; <label>:380                                     ; preds = %372
  %381 = load i8, i8* %ch, align 1
  %382 = zext i8 %381 to i64
  %383 = load i8*, i8** %4, align 8
  %384 = getelementptr inbounds i8, i8* %383, i64 %382
  store i8 0, i8* %384, align 1
  br label %401

; <label>:385                                     ; preds = %372
  %386 = load i8, i8* %ch, align 1
  %387 = zext i8 %386 to i64
  %388 = load i8*, i8** %4, align 8
  %389 = getelementptr inbounds i8, i8* %388, i64 %387
  %390 = load i8, i8* %389, align 1
  %391 = zext i8 %390 to i32
  %392 = icmp sgt i32 %391, 1
  br i1 %392, label %393, label %400

; <label>:393                                     ; preds = %385
  %394 = load i32*, i32** %5, align 8
  %395 = load i32, i32* %394, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %394, align 4
  %397 = sext i32 %395 to i64
  %398 = load i8*, i8** %4, align 8
  %399 = getelementptr inbounds i8, i8* %398, i64 %397
  store i8 0, i8* %399, align 1
  br label %400

; <label>:400                                     ; preds = %393, %385
  br label %401

; <label>:401                                     ; preds = %400, %380
  %402 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %403 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %402, i32 0, i32 8
  %404 = load i32, i32* %403, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %460

; <label>:406                                     ; preds = %401
  %407 = load i32, i32* %llx, align 4
  %408 = trunc i32 %407 to i16
  %409 = load i8, i8* %ch, align 1
  %410 = zext i8 %409 to i64
  %411 = load %struct.metrics*, %struct.metrics** %7, align 8
  %412 = getelementptr inbounds %struct.metrics, %struct.metrics* %411, i64 %410
  %413 = getelementptr inbounds %struct.metrics, %struct.metrics* %412, i32 0, i32 2
  store i16 %408, i16* %413, align 2
  %414 = load i32, i32* %lly, align 4
  %415 = load i32, i32* %3, align 4
  %416 = sub nsw i32 %414, %415
  %417 = trunc i32 %416 to i16
  %418 = load i8, i8* %ch, align 1
  %419 = zext i8 %418 to i64
  %420 = load %struct.metrics*, %struct.metrics** %7, align 8
  %421 = getelementptr inbounds %struct.metrics, %struct.metrics* %420, i64 %419
  %422 = getelementptr inbounds %struct.metrics, %struct.metrics* %421, i32 0, i32 1
  store i16 %417, i16* %422, align 2
  %423 = load i32, i32* %wx, align 4
  %424 = trunc i32 %423 to i16
  %425 = load i8, i8* %ch, align 1
  %426 = zext i8 %425 to i64
  %427 = load %struct.metrics*, %struct.metrics** %7, align 8
  %428 = getelementptr inbounds %struct.metrics, %struct.metrics* %427, i64 %426
  %429 = getelementptr inbounds %struct.metrics, %struct.metrics* %428, i32 0, i32 3
  store i16 %424, i16* %429, align 2
  %430 = load i32, i32* %ury, align 4
  %431 = load i32, i32* %3, align 4
  %432 = sub nsw i32 %430, %431
  %433 = trunc i32 %432 to i16
  %434 = load i8, i8* %ch, align 1
  %435 = zext i8 %434 to i64
  %436 = load %struct.metrics*, %struct.metrics** %7, align 8
  %437 = getelementptr inbounds %struct.metrics, %struct.metrics* %436, i64 %435
  %438 = getelementptr inbounds %struct.metrics, %struct.metrics* %437, i32 0, i32 0
  store i16 %433, i16* %438, align 2
  %439 = load i32, i32* %urx, align 4
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %447, label %441

; <label>:441                                     ; preds = %406
  %442 = load i32, i32* %wx, align 4
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %447, label %444

; <label>:444                                     ; preds = %441
  %445 = load i32, i32* %2, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %448

; <label>:447                                     ; preds = %444, %441, %406
  br label %452

; <label>:448                                     ; preds = %444
  %449 = load i32, i32* %urx, align 4
  %450 = load i32, i32* %wx, align 4
  %451 = sub nsw i32 %449, %450
  br label %452

; <label>:452                                     ; preds = %448, %447
  %453 = phi i32 [ 0, %447 ], [ %451, %448 ]
  %454 = trunc i32 %453 to i16
  %455 = load i8, i8* %ch, align 1
  %456 = zext i8 %455 to i64
  %457 = load %struct.metrics*, %struct.metrics** %7, align 8
  %458 = getelementptr inbounds %struct.metrics, %struct.metrics* %457, i64 %456
  %459 = getelementptr inbounds %struct.metrics, %struct.metrics* %458, i32 0, i32 4
  store i16 %454, i16* %459, align 2
  br label %495

; <label>:460                                     ; preds = %401
  %461 = load i8, i8* %ch, align 1
  %462 = zext i8 %461 to i64
  %463 = load %struct.metrics*, %struct.metrics** %7, align 8
  %464 = getelementptr inbounds %struct.metrics, %struct.metrics* %463, i64 %462
  %465 = getelementptr inbounds %struct.metrics, %struct.metrics* %464, i32 0, i32 2
  store i16 0, i16* %465, align 2
  %466 = load i32, i32* @PlainCharHeight, align 4
  %467 = sub nsw i32 0, %466
  %468 = sdiv i32 %467, 2
  %469 = trunc i32 %468 to i16
  %470 = load i8, i8* %ch, align 1
  %471 = zext i8 %470 to i64
  %472 = load %struct.metrics*, %struct.metrics** %7, align 8
  %473 = getelementptr inbounds %struct.metrics, %struct.metrics* %472, i64 %471
  %474 = getelementptr inbounds %struct.metrics, %struct.metrics* %473, i32 0, i32 1
  store i16 %469, i16* %474, align 2
  %475 = load i32, i32* @PlainCharWidth, align 4
  %476 = trunc i32 %475 to i16
  %477 = load i8, i8* %ch, align 1
  %478 = zext i8 %477 to i64
  %479 = load %struct.metrics*, %struct.metrics** %7, align 8
  %480 = getelementptr inbounds %struct.metrics, %struct.metrics* %479, i64 %478
  %481 = getelementptr inbounds %struct.metrics, %struct.metrics* %480, i32 0, i32 3
  store i16 %476, i16* %481, align 2
  %482 = load i32, i32* @PlainCharHeight, align 4
  %483 = sdiv i32 %482, 2
  %484 = trunc i32 %483 to i16
  %485 = load i8, i8* %ch, align 1
  %486 = zext i8 %485 to i64
  %487 = load %struct.metrics*, %struct.metrics** %7, align 8
  %488 = getelementptr inbounds %struct.metrics, %struct.metrics* %487, i64 %486
  %489 = getelementptr inbounds %struct.metrics, %struct.metrics* %488, i32 0, i32 0
  store i16 %484, i16* %489, align 2
  %490 = load i8, i8* %ch, align 1
  %491 = zext i8 %490 to i64
  %492 = load %struct.metrics*, %struct.metrics** %7, align 8
  %493 = getelementptr inbounds %struct.metrics, %struct.metrics* %492, i64 %491
  %494 = getelementptr inbounds %struct.metrics, %struct.metrics* %493, i32 0, i32 4
  store i16 0, i16* %494, align 2
  br label %495

; <label>:495                                     ; preds = %460, %452
  br label %496

; <label>:496                                     ; preds = %495, %342
  br label %44

; <label>:497                                     ; preds = %58
  ret void
}

declare i32 @StringBeginsWith(i8*, i8*) #1

declare zeroext i8 @MapCharEncoding(i8*, i32) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @ReadCompositeMetrics(%union.rec* %face, %union.rec* %Extrafilename, i16 zeroext %extra_fnum, i32* %lnum, i16* %composite, %struct.composite_rec* %cmp, i32* %cmptop, %struct._IO_FILE* %fp) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca %struct.composite_rec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  %status = alloca i8*, align 8
  %buff = alloca [512 x i8], align 16
  %composite_name = alloca [100 x i8], align 16
  %name = alloca [100 x i8], align 16
  %composite_num = alloca i32, align 4
  %x_offset = alloca i32, align 4
  %y_offset = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %composite_code = alloca i8, align 1
  %code = alloca i8, align 1
  store %union.rec* %face, %union.rec** %1, align 8
  store %union.rec* %Extrafilename, %union.rec** %2, align 8
  store i16 %extra_fnum, i16* %3, align 2
  store i32* %lnum, i32** %4, align 8
  store i16* %composite, i16** %5, align 8
  store %struct.composite_rec* %cmp, %struct.composite_rec** %6, align 8
  store i32* %cmptop, i32** %7, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %8, align 8
  br label %9

; <label>:9                                       ; preds = %253, %0
  %10 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %12 = call i8* @fgets(i8* %10, i32 512, %struct._IO_FILE* %11)
  store i8* %12, i8** %status, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

; <label>:14                                      ; preds = %9
  %15 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %16 = call i32 @StringBeginsWith(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.144, i32 0, i32 0))
  %17 = icmp ne i32 %16, 0
  br label %18

; <label>:18                                      ; preds = %14, %9
  %19 = phi i1 [ false, %9 ], [ %17, %14 ]
  br i1 %19, label %20, label %263

; <label>:20                                      ; preds = %18
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %25 = getelementptr inbounds [100 x i8], [100 x i8]* %composite_name, i32 0, i32 0
  %26 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.145, i32 0, i32 0), i8* %25, i32* %composite_num) #4
  %27 = icmp ne i32 %26, 2
  br i1 %27, label %28, label %38

; <label>:28                                      ; preds = %20
  %29 = load %union.rec*, %union.rec** %2, align 8
  %30 = bitcast %union.rec* %29 to %struct.word_type*
  %31 = getelementptr inbounds %struct.word_type, %struct.word_type* %30, i32 0, i32 1
  %32 = bitcast %union.FIRST_UNION* %31 to %struct.FILE_POS*
  %33 = load i16, i16* %3, align 2
  %34 = call i8* @FileName(i16 zeroext %33)
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.146, i32 0, i32 0), i32 1, %struct.FILE_POS* %32, i8* %34, i32 %36)
  br label %38

; <label>:38                                      ; preds = %28, %20
  store i32 0, i32* %i, align 4
  br label %39

; <label>:39                                      ; preds = %63, %38
  %40 = load i32, i32* %i, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %44, 59
  br i1 %45, label %46, label %60

; <label>:46                                      ; preds = %39
  %47 = load i32, i32* %i, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp ne i32 %51, 10
  br i1 %52, label %53, label %60

; <label>:53                                      ; preds = %46
  %54 = load i32, i32* %i, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br label %60

; <label>:60                                      ; preds = %53, %46, %39
  %61 = phi i1 [ false, %46 ], [ false, %39 ], [ %59, %53 ]
  br i1 %61, label %62, label %66

; <label>:62                                      ; preds = %60
  br label %63

; <label>:63                                      ; preds = %62
  %64 = load i32, i32* %i, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %i, align 4
  br label %39

; <label>:66                                      ; preds = %60
  %67 = load i32, i32* %i, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp ne i32 %71, 59
  br i1 %72, label %73, label %83

; <label>:73                                      ; preds = %66
  %74 = load %union.rec*, %union.rec** %2, align 8
  %75 = bitcast %union.rec* %74 to %struct.word_type*
  %76 = getelementptr inbounds %struct.word_type, %struct.word_type* %75, i32 0, i32 1
  %77 = bitcast %union.FIRST_UNION* %76 to %struct.FILE_POS*
  %78 = load i16, i16* %3, align 2
  %79 = call i8* @FileName(i16 zeroext %78)
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.146, i32 0, i32 0), i32 1, %struct.FILE_POS* %77, i8* %79, i32 %81)
  br label %83

; <label>:83                                      ; preds = %73, %66
  %84 = load i32, i32* %i, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %i, align 4
  %86 = getelementptr inbounds [100 x i8], [100 x i8]* %composite_name, i32 0, i32 0
  %87 = load %union.rec*, %union.rec** %1, align 8
  %88 = bitcast %union.rec* %87 to %struct.word_type*
  %89 = getelementptr inbounds %struct.word_type, %struct.word_type* %88, i32 0, i32 3
  %90 = bitcast %union.THIRD_UNION* %89 to %struct.anon.7*
  %91 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %90, i32 0, i32 3
  %92 = load i8, i8* %91, align 4
  %93 = and i8 %92, 127
  %94 = zext i8 %93 to i32
  %95 = call zeroext i8 @MapCharEncoding(i8* %86, i32 %94)
  store i8 %95, i8* %composite_code, align 1
  %96 = load i8, i8* %composite_code, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %109

; <label>:99                                      ; preds = %83
  %100 = load %union.rec*, %union.rec** %2, align 8
  %101 = bitcast %union.rec* %100 to %struct.word_type*
  %102 = getelementptr inbounds %struct.word_type, %struct.word_type* %101, i32 0, i32 1
  %103 = bitcast %union.FIRST_UNION* %102 to %struct.FILE_POS*
  %104 = load i16, i16* %3, align 2
  %105 = call i8* @FileName(i16 zeroext %104)
  %106 = load i32*, i32** %4, align 8
  %107 = load i32, i32* %106, align 4
  %108 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 6, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.147, i32 0, i32 0), i32 1, %struct.FILE_POS* %103, i8* %105, i32 %107)
  br label %109

; <label>:109                                     ; preds = %99, %83
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %110, align 4
  %112 = trunc i32 %111 to i16
  %113 = load i8, i8* %composite_code, align 1
  %114 = zext i8 %113 to i64
  %115 = load i16*, i16** %5, align 8
  %116 = getelementptr inbounds i16, i16* %115, i64 %114
  store i16 %112, i16* %116, align 2
  store i32 0, i32* %count, align 4
  br label %117

; <label>:117                                     ; preds = %236, %109
  %118 = load i32, i32* %count, align 4
  %119 = load i32, i32* %composite_num, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %239

; <label>:121                                     ; preds = %117
  %122 = load i32, i32* %i, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %123
  %125 = getelementptr inbounds [100 x i8], [100 x i8]* %name, i32 0, i32 0
  %126 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.148, i32 0, i32 0), i8* %125, i32* %x_offset, i32* %y_offset) #4
  %127 = icmp ne i32 %126, 3
  br i1 %127, label %128, label %138

; <label>:128                                     ; preds = %121
  %129 = load %union.rec*, %union.rec** %2, align 8
  %130 = bitcast %union.rec* %129 to %struct.word_type*
  %131 = getelementptr inbounds %struct.word_type, %struct.word_type* %130, i32 0, i32 1
  %132 = bitcast %union.FIRST_UNION* %131 to %struct.FILE_POS*
  %133 = load i16, i16* %3, align 2
  %134 = call i8* @FileName(i16 zeroext %133)
  %135 = load i32*, i32** %4, align 8
  %136 = load i32, i32* %135, align 4
  %137 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.146, i32 0, i32 0), i32 1, %struct.FILE_POS* %132, i8* %134, i32 %136)
  br label %138

; <label>:138                                     ; preds = %128, %121
  br label %139

; <label>:139                                     ; preds = %163, %138
  %140 = load i32, i32* %i, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp ne i32 %144, 59
  br i1 %145, label %146, label %160

; <label>:146                                     ; preds = %139
  %147 = load i32, i32* %i, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = icmp ne i32 %151, 10
  br i1 %152, label %153, label %160

; <label>:153                                     ; preds = %146
  %154 = load i32, i32* %i, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = icmp ne i32 %158, 0
  br label %160

; <label>:160                                     ; preds = %153, %146, %139
  %161 = phi i1 [ false, %146 ], [ false, %139 ], [ %159, %153 ]
  br i1 %161, label %162, label %166

; <label>:162                                     ; preds = %160
  br label %163

; <label>:163                                     ; preds = %162
  %164 = load i32, i32* %i, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %i, align 4
  br label %139

; <label>:166                                     ; preds = %160
  %167 = load i32, i32* %i, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = icmp ne i32 %171, 59
  br i1 %172, label %173, label %183

; <label>:173                                     ; preds = %166
  %174 = load %union.rec*, %union.rec** %2, align 8
  %175 = bitcast %union.rec* %174 to %struct.word_type*
  %176 = getelementptr inbounds %struct.word_type, %struct.word_type* %175, i32 0, i32 1
  %177 = bitcast %union.FIRST_UNION* %176 to %struct.FILE_POS*
  %178 = load i16, i16* %3, align 2
  %179 = call i8* @FileName(i16 zeroext %178)
  %180 = load i32*, i32** %4, align 8
  %181 = load i32, i32* %180, align 4
  %182 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.146, i32 0, i32 0), i32 1, %struct.FILE_POS* %177, i8* %179, i32 %181)
  br label %183

; <label>:183                                     ; preds = %173, %166
  %184 = load i32, i32* %i, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %i, align 4
  %186 = load i32*, i32** %7, align 8
  %187 = load i32, i32* %186, align 4
  %188 = icmp sge i32 %187, 256
  br i1 %188, label %189, label %199

; <label>:189                                     ; preds = %183
  %190 = load %union.rec*, %union.rec** %2, align 8
  %191 = bitcast %union.rec* %190 to %struct.word_type*
  %192 = getelementptr inbounds %struct.word_type, %struct.word_type* %191, i32 0, i32 1
  %193 = bitcast %union.FIRST_UNION* %192 to %struct.FILE_POS*
  %194 = load i16, i16* %3, align 2
  %195 = call i8* @FileName(i16 zeroext %194)
  %196 = load i32*, i32** %4, align 8
  %197 = load i32, i32* %196, align 4
  %198 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.149, i32 0, i32 0), i32 1, %struct.FILE_POS* %193, i8* %195, i32 %197)
  br label %199

; <label>:199                                     ; preds = %189, %183
  %200 = getelementptr inbounds [100 x i8], [100 x i8]* %name, i32 0, i32 0
  %201 = load %union.rec*, %union.rec** %1, align 8
  %202 = bitcast %union.rec* %201 to %struct.word_type*
  %203 = getelementptr inbounds %struct.word_type, %struct.word_type* %202, i32 0, i32 3
  %204 = bitcast %union.THIRD_UNION* %203 to %struct.anon.7*
  %205 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %204, i32 0, i32 3
  %206 = load i8, i8* %205, align 4
  %207 = and i8 %206, 127
  %208 = zext i8 %207 to i32
  %209 = call zeroext i8 @MapCharEncoding(i8* %200, i32 %208)
  store i8 %209, i8* %code, align 1
  %210 = load i8, i8* %code, align 1
  %211 = load i32*, i32** %7, align 8
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = load %struct.composite_rec*, %struct.composite_rec** %6, align 8
  %215 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %214, i64 %213
  %216 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %215, i32 0, i32 0
  store i8 %210, i8* %216, align 1
  %217 = load i32, i32* %x_offset, align 4
  %218 = trunc i32 %217 to i16
  %219 = load i32*, i32** %7, align 8
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = load %struct.composite_rec*, %struct.composite_rec** %6, align 8
  %223 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %222, i64 %221
  %224 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %223, i32 0, i32 1
  store i16 %218, i16* %224, align 2
  %225 = load i32, i32* %y_offset, align 4
  %226 = trunc i32 %225 to i16
  %227 = load i32*, i32** %7, align 8
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = load %struct.composite_rec*, %struct.composite_rec** %6, align 8
  %231 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %230, i64 %229
  %232 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %231, i32 0, i32 2
  store i16 %226, i16* %232, align 2
  %233 = load i32*, i32** %7, align 8
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %233, align 4
  br label %236

; <label>:236                                     ; preds = %199
  %237 = load i32, i32* %count, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %count, align 4
  br label %117

; <label>:239                                     ; preds = %117
  %240 = load i32*, i32** %7, align 8
  %241 = load i32, i32* %240, align 4
  %242 = icmp sge i32 %241, 256
  br i1 %242, label %243, label %253

; <label>:243                                     ; preds = %239
  %244 = load %union.rec*, %union.rec** %2, align 8
  %245 = bitcast %union.rec* %244 to %struct.word_type*
  %246 = getelementptr inbounds %struct.word_type, %struct.word_type* %245, i32 0, i32 1
  %247 = bitcast %union.FIRST_UNION* %246 to %struct.FILE_POS*
  %248 = load i16, i16* %3, align 2
  %249 = call i8* @FileName(i16 zeroext %248)
  %250 = load i32*, i32** %4, align 8
  %251 = load i32, i32* %250, align 4
  %252 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 8, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.149, i32 0, i32 0), i32 1, %struct.FILE_POS* %247, i8* %249, i32 %251)
  br label %253

; <label>:253                                     ; preds = %243, %239
  %254 = load i32*, i32** %7, align 8
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  %257 = load %struct.composite_rec*, %struct.composite_rec** %6, align 8
  %258 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %257, i64 %256
  %259 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %258, i32 0, i32 0
  store i8 0, i8* %259, align 1
  %260 = load i32*, i32** %7, align 8
  %261 = load i32, i32* %260, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %260, align 4
  br label %9

; <label>:263                                     ; preds = %18
  %264 = load i8*, i8** %status, align 8
  %265 = icmp eq i8* %264, null
  br i1 %265, label %270, label %266

; <label>:266                                     ; preds = %263
  %267 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %268 = call i32 @StringBeginsWith(i8* %267, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.150, i32 0, i32 0))
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %280, label %270

; <label>:270                                     ; preds = %266, %263
  %271 = load %union.rec*, %union.rec** %2, align 8
  %272 = bitcast %union.rec* %271 to %struct.word_type*
  %273 = getelementptr inbounds %struct.word_type, %struct.word_type* %272, i32 0, i32 1
  %274 = bitcast %union.FIRST_UNION* %273 to %struct.FILE_POS*
  %275 = load i16, i16* %3, align 2
  %276 = call i8* @FileName(i16 zeroext %275)
  %277 = load i32*, i32** %4, align 8
  %278 = load i32, i32* %277, align 4
  %279 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 9, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.151, i32 0, i32 0), i32 1, %struct.FILE_POS* %274, i8* %276, i32 %278)
  br label %280

; <label>:280                                     ; preds = %270, %266
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
