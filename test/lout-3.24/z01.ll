; ModuleID = 'z01.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FILE_POS = type { i8, i8, i16, i32 }
%struct.back_end_rec = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, void (%struct._IO_FILE*)*, void (i8*, i32, i32)*, void (%union.rec*, i32, i8*, i8*)*, void (i8*, i32)*, void (i32)*, void (i32, i32, i8*)*, void (i32, i32, i8*)*, void ()*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, %union.rec*)*, void (i32, i32, i32, i32, i32)*, void (i32, i32)*, void (i32)*, void (float, float)*, void (%union.rec*)*, void ()*, void (%union.rec*)*, void (%union.rec*)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (...)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.13, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { %struct._IO_FILE*, [8 x i8] }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.13 = type { %union.rec* }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.anon.0 = type { i8, i8, i8 }
%struct.anon.5 = type { i8, [3 x i8] }

@MemCheck = global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"LOUTLIB\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"/usr/staff/jeff/lout.lib\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"unable to initialize locale\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"%s/%s/%s/LC_MESSAGES/errors.%s\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@MsgCat = common global i8* null, align 8
@TotalWordCount = common global i32 0, align 4
@PS_BackEnd = external global %struct.back_end_rec*, align 8
@BackEnd = common global %struct.back_end_rec* null, align 8
@PlainCharWidth = external global i32, align 4
@PlainCharHeight = external global i32, align 4
@PlainFormFeed = external global i32, align 4
@InitializeAll = common global i32 0, align 4
@UseCollate = common global i32 0, align 4
@AllowCrossDb = common global i32 0, align 4
@InMemoryDbIndexes = common global i32 0, align 4
@Encapsulated = external global i32, align 4
@SafeExecution = common global i32 0, align 4
@Kern = common global i32 0, align 4
@AltErrorFormat = common global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"lout\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@CommandOptions = common global %union.rec* null, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"usage: -o <filename>\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c".lt\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"-o: output file name %s ends with %s\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"usage: -c <filename>\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"usage: -e <filename>\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"EPS\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"usage: -EPS\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"usage: -D <directoryname>\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"usage: -C <directoryname>\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"usage: -F <directoryname>\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"usage: -H <directoryname>\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"usage: -I <directoryname>\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"usage: -i <filename>\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"two -h options illegal\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"usage: -h <filename>\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c".lh\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.26 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"Basser Lout Version 3.24 (October 2000)\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"%-28s %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"Basser Lout written by:\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"Jeffrey H. Kingston (jeff@cs.usyd.edu.au)\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"Free source available from:\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"ftp://ftp.cs.usyd.edu.au/jeff/lout\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"%-28s %s %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"This executable compiled:\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"15:11:04\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"Mar 13 2016\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"%-28s %s%s%s\0A\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"System include directory:\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"System database directory:\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.43 = private unnamed_addr constant [54 x i8] c"Database index files created afresh automatically:%s\0A\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c" yes\00", align 1
@.str.45 = private unnamed_addr constant [51 x i8] c"Safe execution (disabling system()) is default:%s\0A\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c" no\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"strcoll() used for sorting by default:%s\0A\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"PDF compression on:%s\0A\00", align 1
@.str.49 = private unnamed_addr constant [46 x i8] c"Debugging (-d, -dd, -ddd flags) available:%s\0A\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.51 = private unnamed_addr constant [48 x i8] c"Basser Lout comes with ABSOLUTELY NO WARRANTY.\0A\00", align 1
@.str.52 = private unnamed_addr constant [47 x i8] c"This is free software, and you are welcome to\0A\00", align 1
@.str.53 = private unnamed_addr constant [48 x i8] c"redistribute it under certain conditions.  For\0A\00", align 1
@.str.54 = private unnamed_addr constant [49 x i8] c"details on both points, consult the GNU General\0A\00", align 1
@.str.55 = private unnamed_addr constant [50 x i8] c"Public License (distributed with this software).\0A\00", align 1
@PDF_BackEnd = external global %struct.back_end_rec*, align 8
@.str.56 = private unnamed_addr constant [4 x i8] c"PDF\00", align 1
@Plain_BackEnd = external global %struct.back_end_rec*, align 8
@.str.57 = private unnamed_addr constant [9 x i8] c"%f%c%f%c\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"usage: lout -%c<length><length>\00", align 1
@.str.59 = private unnamed_addr constant [38 x i8] c"lout -%c: units must be c, i, p, or m\00", align 1
@.str.60 = private unnamed_addr constant [33 x i8] c"%s - debug flags not implemented\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"-m%ld\00", align 1
@.str.62 = private unnamed_addr constant [30 x i8] c"checking memory location %ld\0A\00", align 1
@.str.63 = private unnamed_addr constant [31 x i8] c"standard input specified twice\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"%[^{ ] { %[^}] }\00", align 1
@.str.65 = private unnamed_addr constant [32 x i8] c"error in command-line option %s\00", align 1
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.66 = private unnamed_addr constant [29 x i8] c"unknown command line flag %s\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"unable to initialize collation\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.68 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"cannot open output file %s\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"hyph\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"maps\00", align 1
@StartSym = common global %union.rec* null, align 8
@.str.73 = private unnamed_addr constant [7 x i8] c"\5CStart\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"@Galley\00", align 1
@GalleySym = common global %union.rec* null, align 8
@.str.75 = private unnamed_addr constant [13 x i8] c"@ForceGalley\00", align 1
@ForceGalleySym = common global %union.rec* null, align 8
@.str.76 = private unnamed_addr constant [8 x i8] c"@LInput\00", align 1
@InputSym = common global %union.rec* null, align 8
@.str.77 = private unnamed_addr constant [7 x i8] c"\5CPrint\00", align 1
@PrintSym = common global %union.rec* null, align 8
@.str.78 = private unnamed_addr constant [10 x i8] c"@FilterIn\00", align 1
@FilterInSym = common global %union.rec* null, align 8
@.str.79 = private unnamed_addr constant [11 x i8] c"@FilterOut\00", align 1
@FilterOutSym = common global %union.rec* null, align 8
@.str.80 = private unnamed_addr constant [11 x i8] c"@FilterErr\00", align 1
@FilterErrSym = common global %union.rec* null, align 8
@.str.81 = private unnamed_addr constant [9 x i8] c"@OptGall\00", align 1
@OptGallSym = common global %union.rec* null, align 8
@.str.82 = private unnamed_addr constant [10 x i8] c"@Verbatim\00", align 1
@VerbatimSym = common global %union.rec* null, align 8
@.str.83 = private unnamed_addr constant [13 x i8] c"@RawVerbatim\00", align 1
@RawVerbatimSym = common global %union.rec* null, align 8
@.str.84 = private unnamed_addr constant [7 x i8] c"@Begin\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"@End\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"@LEnv\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"@@A\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"@@B\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"@@C\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"@@D\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"@@E\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"@LClos\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"@@V\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"@LUse\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"@LEO\00", align 1
@.str.96 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.97 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"@Include\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"@SysInclude\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"@PrependGraphic\00", align 1
@.str.101 = private unnamed_addr constant [19 x i8] c"@SysPrependGraphic\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"@Database\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"@SysDatabase\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"@Use\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"@NotRevealed\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"@Case\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"@Yield\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"@BackEnd\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"@Char\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"@Font\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"@Space\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"@YUnit\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"@ZUnit\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"@Break\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"@Underline\00", align 1
@.str.116 = private unnamed_addr constant [11 x i8] c"@SetColour\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"@SetColor\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"@Outline\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"@Language\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"@CurrLang\00", align 1
@.str.121 = private unnamed_addr constant [12 x i8] c"@CurrFamily\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"@CurrFace\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"@CurrYUnit\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"@CurrZUnit\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"@Common\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"@Rump\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"@Meld\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"@Insert\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"@OneOf\00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"@Next\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"@Plus\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"@Minus\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"@Open\00", align 1
@.str.134 = private unnamed_addr constant [8 x i8] c"@Tagged\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"@Wide\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"@High\00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c"@HShift\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"@VShift\00", align 1
@.str.139 = private unnamed_addr constant [22 x i8] c"@BeginHeaderComponent\00", align 1
@.str.140 = private unnamed_addr constant [20 x i8] c"@EndHeaderComponent\00", align 1
@.str.141 = private unnamed_addr constant [20 x i8] c"@SetHeaderComponent\00", align 1
@.str.142 = private unnamed_addr constant [22 x i8] c"@ClearHeaderComponent\00", align 1
@.str.143 = private unnamed_addr constant [8 x i8] c"@OneCol\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"@OneRow\00", align 1
@.str.145 = private unnamed_addr constant [8 x i8] c"@HScale\00", align 1
@.str.146 = private unnamed_addr constant [8 x i8] c"@VScale\00", align 1
@.str.147 = private unnamed_addr constant [8 x i8] c"@HCover\00", align 1
@.str.148 = private unnamed_addr constant [8 x i8] c"@VCover\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"@KernShrink\00", align 1
@.str.150 = private unnamed_addr constant [7 x i8] c"@Scale\00", align 1
@.str.151 = private unnamed_addr constant [11 x i8] c"@HContract\00", align 1
@.str.152 = private unnamed_addr constant [11 x i8] c"@VContract\00", align 1
@.str.153 = private unnamed_addr constant [10 x i8] c"@HLimited\00", align 1
@.str.154 = private unnamed_addr constant [10 x i8] c"@VLimited\00", align 1
@.str.155 = private unnamed_addr constant [9 x i8] c"@HExpand\00", align 1
@.str.156 = private unnamed_addr constant [9 x i8] c"@VExpand\00", align 1
@.str.157 = private unnamed_addr constant [13 x i8] c"@StartHVSpan\00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c"@StartHSpan\00", align 1
@.str.159 = private unnamed_addr constant [12 x i8] c"@StartVSpan\00", align 1
@.str.160 = private unnamed_addr constant [7 x i8] c"@HSpan\00", align 1
@.str.161 = private unnamed_addr constant [7 x i8] c"@VSpan\00", align 1
@.str.162 = private unnamed_addr constant [9 x i8] c"@PAdjust\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"@HAdjust\00", align 1
@.str.164 = private unnamed_addr constant [9 x i8] c"@VAdjust\00", align 1
@.str.165 = private unnamed_addr constant [8 x i8] c"@Rotate\00", align 1
@.str.166 = private unnamed_addr constant [12 x i8] c"@Background\00", align 1
@.str.167 = private unnamed_addr constant [16 x i8] c"@IncludeGraphic\00", align 1
@.str.168 = private unnamed_addr constant [19 x i8] c"@SysIncludeGraphic\00", align 1
@.str.169 = private unnamed_addr constant [14 x i8] c"@PlainGraphic\00", align 1
@.str.170 = private unnamed_addr constant [9 x i8] c"@Graphic\00", align 1
@.str.171 = private unnamed_addr constant [12 x i8] c"@LinkSource\00", align 1
@.str.172 = private unnamed_addr constant [10 x i8] c"@LinkDest\00", align 1
@.str.173 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.174 = private unnamed_addr constant [4 x i8] c"&&&\00", align 1
@.str.175 = private unnamed_addr constant [6 x i8] c"@Null\00", align 1
@.str.176 = private unnamed_addr constant [11 x i8] c"@PageLabel\00", align 1
@.str.177 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.178 = private unnamed_addr constant [4 x i8] c"^//\00", align 1
@.str.179 = private unnamed_addr constant [3 x i8] c"^/\00", align 1
@.str.180 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.181 = private unnamed_addr constant [4 x i8] c"^||\00", align 1
@.str.182 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.183 = private unnamed_addr constant [3 x i8] c"^|\00", align 1
@.str.184 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.185 = private unnamed_addr constant [3 x i8] c"^&\00", align 1
@.str.186 = private unnamed_addr constant [31 x i8] c"total of all words printed: %d\00", align 1
@.str.187 = private unnamed_addr constant [27 x i8] c"usage:  lout options files\00", align 1
@.str.188 = private unnamed_addr constant [62 x i8] c"  -s              suppress access to cross reference database\00", align 1
@.str.189 = private unnamed_addr constant [55 x i8] c"  -EPS            EPS (Encapsulated PostScript) output\00", align 1
@.str.190 = private unnamed_addr constant [62 x i8] c"  -PDF or -Z      PDF (Adobe Portable Document Format) output\00", align 1
@.str.191 = private unnamed_addr constant [58 x i8] c"  -p              plain text output instead of PostScript\00", align 1
@.str.192 = private unnamed_addr constant [64 x i8] c"  -P              like -p but with form-feed char between pages\00", align 1
@.str.193 = private unnamed_addr constant [62 x i8] c"  -S              safe execution (disable calls to system(3))\00", align 1
@.str.194 = private unnamed_addr constant [62 x i8] c"  -U              unsafe execution (allow calls to system(3))\00", align 1
@.str.195 = private unnamed_addr constant [66 x i8] c"  -l              ASCII collation order when sorting indexes etc.\00", align 1
@.str.196 = private unnamed_addr constant [67 x i8] c"  -L              locale collation order when sorting indexes etc.\00", align 1
@.str.197 = private unnamed_addr constant [51 x i8] c"  -o file         output to file instead of stdout\00", align 1
@.str.198 = private unnamed_addr constant [59 x i8] c"  -e file         error messages to file instead of stderr\00", align 1
@.str.199 = private unnamed_addr constant [63 x i8] c"  -a              alternative error format:  file:line:col ...\00", align 1
@.str.200 = private unnamed_addr constant [56 x i8] c"  -w              print total number of words in output\00", align 1
@.str.201 = private unnamed_addr constant [61 x i8] c"  -i file         like @SysInclude { file }; not recommended\00", align 1
@.str.202 = private unnamed_addr constant [60 x i8] c"  -I directory    add directory to include file search path\00", align 1
@.str.203 = private unnamed_addr constant [56 x i8] c"  -C directory    add directory to LCM file search path\00", align 1
@.str.204 = private unnamed_addr constant [65 x i8] c"  -F directory    add directory to font metrics file search path\00", align 1
@.str.205 = private unnamed_addr constant [64 x i8] c"  -H directory    add directory to hyphenation file search path\00", align 1
@.str.206 = private unnamed_addr constant [61 x i8] c"  -D directory    add directory to database file search path\00", align 1
@.str.207 = private unnamed_addr constant [67 x i8] c"  --option{value} set option e.g. --'@InitialFont{Times Base 10p}'\00", align 1
@.str.208 = private unnamed_addr constant [63 x i8] c"  -c file         use file.li instead of lout.li for crossrefs\00", align 1
@.str.209 = private unnamed_addr constant [63 x i8] c"  -M              save memory (don't read in database indexes)\00", align 1
@.str.210 = private unnamed_addr constant [57 x i8] c"  -x              initializing run, not for ordinary use\00", align 1
@.str.211 = private unnamed_addr constant [62 x i8] c"  -u              print this usage message on stderr and exit\00", align 1
@.str.212 = private unnamed_addr constant [62 x i8] c"  -V              print version and configuration information\00", align 1
@.str.213 = private unnamed_addr constant [54 x i8] c"  -               a file name denoting standard input\00", align 1
@.str.214 = private unnamed_addr constant [3 x i8] c"pa\00", align 1
@.str.215 = private unnamed_addr constant [3 x i8] c"pb\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %arg = alloca i8*, align 8
  %t = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %s = alloca %union.rec*, align 8
  %stdin_seen = alloca i32, align 4
  %source_file_count = alloca i32, align 4
  %cross_db = alloca i8*, align 8
  %outfile = alloca i8*, align 8
  %lib = alloca i8*, align 8
  %out_fp = alloca %struct._IO_FILE*, align 8
  %MemCheckLong = alloca i64, align 8
  %oname = alloca [512 x i8], align 16
  %oval = alloca [512 x i8], align 16
  %buff = alloca [512 x i8], align 16
  %p = alloca i8*, align 8
  %bp = alloca i32, align 4
  %z = alloca %union.rec*, align 8
  %seen_wordcount = alloca i32, align 4
  %catname = alloca [512 x i8], align 16
  %loc = alloca i8*, align 8
  %len1 = alloca float, align 4
  %len2 = alloca float, align 4
  %units1 = alloca i8, align 1
  %units2 = alloca i8, align 1
  %g = alloca %union.rec*, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  %4 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0)) #5
  store i8* %4, i8** %lib, align 8
  %5 = load i8*, i8** %lib, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i8** %lib, align 8
  br label %8

; <label>:8                                       ; preds = %7, %0
  %9 = call i8* @setlocale(i32 5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)) #5
  store i8* %9, i8** %loc, align 8
  %10 = load i8*, i8** %loc, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %8
  %13 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %14 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i32 2, %struct.FILE_POS* %13)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %loc, align 8
  br label %15

; <label>:15                                      ; preds = %12, %8
  %16 = getelementptr inbounds [512 x i8], [512 x i8]* %catname, i32 0, i32 0
  %17 = load i8*, i8** %lib, align 8
  %18 = load i8*, i8** %loc, align 8
  %19 = load i8*, i8** %loc, align 8
  %20 = call i32 (i8*, i8*, ...) @sprintf(i8* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %18, i8* %19) #5
  %21 = getelementptr inbounds [512 x i8], [512 x i8]* %catname, i32 0, i32 0
  %22 = call i8* @catopen(i8* %21, i32 0)
  store i8* %22, i8** @MsgCat, align 8
  store i32 0, i32* @TotalWordCount, align 4
  store i32 0, i32* %seen_wordcount, align 4
  %23 = load %struct.back_end_rec*, %struct.back_end_rec** @PS_BackEnd, align 8
  store %struct.back_end_rec* %23, %struct.back_end_rec** @BackEnd, align 8
  store i32 144, i32* @PlainCharWidth, align 4
  store i32 240, i32* @PlainCharHeight, align 4
  store i32 0, i32* @PlainFormFeed, align 4
  store i32 0, i32* @InitializeAll, align 4
  store i32 1, i32* @UseCollate, align 4
  store i32 1, i32* @AllowCrossDb, align 4
  store i32 1, i32* @InMemoryDbIndexes, align 4
  store i32 0, i32* @Encapsulated, align 4
  store i32 0, i32* @SafeExecution, align 4
  store i32 1, i32* @Kern, align 4
  call void @MemInit()
  call void @InitSym()
  call void @LexInit()
  call void @InitFiles()
  %24 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %25 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %struct.FILE_POS* %24)
  call void @AddToPath(i32 0, %union.rec* %25)
  %26 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %27 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %struct.FILE_POS* %26)
  call void @AddToPath(i32 3, %union.rec* %27)
  %28 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %29 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %struct.FILE_POS* %28)
  call void @AddToPath(i32 1, %union.rec* %29)
  store i32 0, i32* %stdin_seen, align 4
  store i32 0, i32* @AltErrorFormat, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8** %cross_db, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8** %outfile, align 8
  store i32 0, i32* %source_file_count, align 4
  %30 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %31 = zext i8 %30 to i32
  store i32 %31, i32* @zz_size, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp uge i64 %32, 265
  br i1 %33, label %34, label %37

; <label>:34                                      ; preds = %15
  %35 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %36 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %35)
  br label %62

; <label>:37                                      ; preds = %15
  %38 = load i32, i32* @zz_size, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %39
  %41 = load %union.rec*, %union.rec** %40, align 8
  %42 = icmp eq %union.rec* %41, null
  br i1 %42, label %43, label %47

; <label>:43                                      ; preds = %37
  %44 = load i32, i32* @zz_size, align 4
  %45 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %46 = call %union.rec* @GetMemory(i32 %44, %struct.FILE_POS* %45)
  store %union.rec* %46, %union.rec** @zz_hold, align 8
  br label %61

; <label>:47                                      ; preds = %37
  %48 = load i32, i32* @zz_size, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %49
  %51 = load %union.rec*, %union.rec** %50, align 8
  store %union.rec* %51, %union.rec** @zz_hold, align 8
  store %union.rec* %51, %union.rec** @zz_hold, align 8
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  %53 = bitcast %union.rec* %52 to %struct.word_type*
  %54 = getelementptr inbounds %struct.word_type, %struct.word_type* %53, i32 0, i32 0
  %55 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %54, i32 0, i64 0
  %56 = getelementptr inbounds %struct.LIST, %struct.LIST* %55, i32 0, i32 0
  %57 = load %union.rec*, %union.rec** %56, align 8
  %58 = load i32, i32* @zz_size, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %59
  store %union.rec* %57, %union.rec** %60, align 8
  br label %61

; <label>:61                                      ; preds = %47, %43
  br label %62

; <label>:62                                      ; preds = %61, %34
  %63 = load %union.rec*, %union.rec** @zz_hold, align 8
  %64 = bitcast %union.rec* %63 to %struct.word_type*
  %65 = getelementptr inbounds %struct.word_type, %struct.word_type* %64, i32 0, i32 1
  %66 = bitcast %union.FIRST_UNION* %65 to %struct.anon*
  %67 = getelementptr inbounds %struct.anon, %struct.anon* %66, i32 0, i32 0
  store i8 17, i8* %67, align 1
  %68 = load %union.rec*, %union.rec** @zz_hold, align 8
  %69 = load %union.rec*, %union.rec** @zz_hold, align 8
  %70 = bitcast %union.rec* %69 to %struct.word_type*
  %71 = getelementptr inbounds %struct.word_type, %struct.word_type* %70, i32 0, i32 0
  %72 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %71, i32 0, i64 1
  %73 = getelementptr inbounds %struct.LIST, %struct.LIST* %72, i32 0, i32 1
  store %union.rec* %68, %union.rec** %73, align 8
  %74 = load %union.rec*, %union.rec** @zz_hold, align 8
  %75 = bitcast %union.rec* %74 to %struct.word_type*
  %76 = getelementptr inbounds %struct.word_type, %struct.word_type* %75, i32 0, i32 0
  %77 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %76, i32 0, i64 1
  %78 = getelementptr inbounds %struct.LIST, %struct.LIST* %77, i32 0, i32 0
  store %union.rec* %68, %union.rec** %78, align 8
  %79 = load %union.rec*, %union.rec** @zz_hold, align 8
  %80 = bitcast %union.rec* %79 to %struct.word_type*
  %81 = getelementptr inbounds %struct.word_type, %struct.word_type* %80, i32 0, i32 0
  %82 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %81, i32 0, i64 0
  %83 = getelementptr inbounds %struct.LIST, %struct.LIST* %82, i32 0, i32 1
  store %union.rec* %68, %union.rec** %83, align 8
  %84 = load %union.rec*, %union.rec** @zz_hold, align 8
  %85 = bitcast %union.rec* %84 to %struct.word_type*
  %86 = getelementptr inbounds %struct.word_type, %struct.word_type* %85, i32 0, i32 0
  %87 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %86, i32 0, i64 0
  %88 = getelementptr inbounds %struct.LIST, %struct.LIST* %87, i32 0, i32 0
  store %union.rec* %68, %union.rec** %88, align 8
  store %union.rec* %68, %union.rec** @CommandOptions, align 8
  store i32 1, i32* %i, align 4
  br label %89

; <label>:89                                      ; preds = %1635, %62
  %90 = load i32, i32* %i, align 4
  %91 = load i32, i32* %2, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %1638

; <label>:93                                      ; preds = %89
  %94 = load i32, i32* %i, align 4
  %95 = sext i32 %94 to i64
  %96 = load i8**, i8*** %3, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 %95
  %98 = load i8*, i8** %97, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 45
  br i1 %101, label %102, label %1599

; <label>:102                                     ; preds = %93
  %103 = load i32, i32* %i, align 4
  %104 = sext i32 %103 to i64
  %105 = load i8**, i8*** %3, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 %104
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  switch i32 %110, label %1589 [
    i32 111, label %111
    i32 115, label %128
    i32 77, label %129
    i32 107, label %130
    i32 108, label %131
    i32 76, label %132
    i32 99, label %133
    i32 101, label %142
    i32 97, label %152
    i32 69, label %153
    i32 68, label %166
    i32 67, label %181
    i32 70, label %193
    i32 72, label %205
    i32 73, label %217
    i32 105, label %232
    i32 104, label %264
    i32 86, label %286
    i32 119, label %323
    i32 90, label %324
    i32 80, label %326
    i32 112, label %338
    i32 120, label %431
    i32 117, label %432
    i32 100, label %434
    i32 109, label %442
    i32 0, label %455
    i32 45, label %464
    i32 83, label %1587
    i32 85, label %1588
  ]

; <label>:111                                     ; preds = %102
  %112 = load i8**, i8*** %3, align 8
  %113 = load i32, i32* %2, align 4
  %114 = call i8* @GetArg(i8** %112, i32 %113, i32* %i)
  store i8* %114, i8** %outfile, align 8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %119

; <label>:116                                     ; preds = %111
  %117 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %118 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i32 1, %struct.FILE_POS* %117)
  br label %119

; <label>:119                                     ; preds = %116, %111
  %120 = load i8*, i8** %outfile, align 8
  %121 = call i32 @StringEndsWith(i8* %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

; <label>:123                                     ; preds = %119
  %124 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %125 = load i8*, i8** %outfile, align 8
  %126 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i32 0, i32 0), i32 1, %struct.FILE_POS* %124, i8* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0))
  br label %127

; <label>:127                                     ; preds = %123, %119
  br label %1598

; <label>:128                                     ; preds = %102
  store i32 0, i32* @AllowCrossDb, align 4
  br label %1598

; <label>:129                                     ; preds = %102
  store i32 0, i32* @InMemoryDbIndexes, align 4
  br label %1598

; <label>:130                                     ; preds = %102
  store i32 0, i32* @Kern, align 4
  br label %1598

; <label>:131                                     ; preds = %102
  store i32 0, i32* @UseCollate, align 4
  br label %1598

; <label>:132                                     ; preds = %102
  store i32 1, i32* @UseCollate, align 4
  br label %1598

; <label>:133                                     ; preds = %102
  %134 = load i8**, i8*** %3, align 8
  %135 = load i32, i32* %2, align 4
  %136 = call i8* @GetArg(i8** %134, i32 %135, i32* %i)
  store i8* %136, i8** %cross_db, align 8
  %137 = icmp eq i8* %136, null
  br i1 %137, label %138, label %141

; <label>:138                                     ; preds = %133
  %139 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %140 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i32 1, %struct.FILE_POS* %139)
  br label %141

; <label>:141                                     ; preds = %138, %133
  br label %1598

; <label>:142                                     ; preds = %102
  %143 = load i8**, i8*** %3, align 8
  %144 = load i32, i32* %2, align 4
  %145 = call i8* @GetArg(i8** %143, i32 %144, i32* %i)
  store i8* %145, i8** %arg, align 8
  %146 = icmp eq i8* %145, null
  br i1 %146, label %147, label %150

; <label>:147                                     ; preds = %142
  %148 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %149 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %148)
  br label %150

; <label>:150                                     ; preds = %147, %142
  %151 = load i8*, i8** %arg, align 8
  call void @ErrorInit(i8* %151)
  br label %1598

; <label>:152                                     ; preds = %102
  store i32 1, i32* @AltErrorFormat, align 4
  br label %1598

; <label>:153                                     ; preds = %102
  %154 = load i32, i32* %i, align 4
  %155 = sext i32 %154 to i64
  %156 = load i8**, i8*** %3, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 %155
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = call i32 @strcmp(i8* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)) #6
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %165, label %162

; <label>:162                                     ; preds = %153
  %163 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %164 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 1, %struct.FILE_POS* %163)
  br label %165

; <label>:165                                     ; preds = %162, %153
  store i32 1, i32* @Encapsulated, align 4
  br label %1598

; <label>:166                                     ; preds = %102
  %167 = load i8**, i8*** %3, align 8
  %168 = load i32, i32* %2, align 4
  %169 = call i8* @GetArg(i8** %167, i32 %168, i32* %i)
  store i8* %169, i8** %arg, align 8
  %170 = icmp eq i8* %169, null
  br i1 %170, label %171, label %174

; <label>:171                                     ; preds = %166
  %172 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %173 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), i32 1, %struct.FILE_POS* %172)
  br label %174

; <label>:174                                     ; preds = %171, %166
  %175 = load i8*, i8** %arg, align 8
  %176 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %177 = call %union.rec* @MakeWord(i32 11, i8* %175, %struct.FILE_POS* %176)
  call void @AddToPath(i32 3, %union.rec* %177)
  %178 = load i8*, i8** %arg, align 8
  %179 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %180 = call %union.rec* @MakeWord(i32 11, i8* %178, %struct.FILE_POS* %179)
  call void @AddToPath(i32 4, %union.rec* %180)
  br label %1598

; <label>:181                                     ; preds = %102
  %182 = load i8**, i8*** %3, align 8
  %183 = load i32, i32* %2, align 4
  %184 = call i8* @GetArg(i8** %182, i32 %183, i32* %i)
  store i8* %184, i8** %arg, align 8
  %185 = icmp eq i8* %184, null
  br i1 %185, label %186, label %189

; <label>:186                                     ; preds = %181
  %187 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %188 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0), i32 1, %struct.FILE_POS* %187)
  br label %189

; <label>:189                                     ; preds = %186, %181
  %190 = load i8*, i8** %arg, align 8
  %191 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %192 = call %union.rec* @MakeWord(i32 11, i8* %190, %struct.FILE_POS* %191)
  call void @AddToPath(i32 7, %union.rec* %192)
  br label %1598

; <label>:193                                     ; preds = %102
  %194 = load i8**, i8*** %3, align 8
  %195 = load i32, i32* %2, align 4
  %196 = call i8* @GetArg(i8** %194, i32 %195, i32* %i)
  store i8* %196, i8** %arg, align 8
  %197 = icmp eq i8* %196, null
  br i1 %197, label %198, label %201

; <label>:198                                     ; preds = %193
  %199 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %200 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0), i32 1, %struct.FILE_POS* %199)
  br label %201

; <label>:201                                     ; preds = %198, %193
  %202 = load i8*, i8** %arg, align 8
  %203 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %204 = call %union.rec* @MakeWord(i32 11, i8* %202, %struct.FILE_POS* %203)
  call void @AddToPath(i32 5, %union.rec* %204)
  br label %1598

; <label>:205                                     ; preds = %102
  %206 = load i8**, i8*** %3, align 8
  %207 = load i32, i32* %2, align 4
  %208 = call i8* @GetArg(i8** %206, i32 %207, i32* %i)
  store i8* %208, i8** %arg, align 8
  %209 = icmp eq i8* %208, null
  br i1 %209, label %210, label %213

; <label>:210                                     ; preds = %205
  %211 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %212 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %211)
  br label %213

; <label>:213                                     ; preds = %210, %205
  %214 = load i8*, i8** %arg, align 8
  %215 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %216 = call %union.rec* @MakeWord(i32 11, i8* %214, %struct.FILE_POS* %215)
  call void @AddToPath(i32 6, %union.rec* %216)
  br label %1598

; <label>:217                                     ; preds = %102
  %218 = load i8**, i8*** %3, align 8
  %219 = load i32, i32* %2, align 4
  %220 = call i8* @GetArg(i8** %218, i32 %219, i32* %i)
  store i8* %220, i8** %arg, align 8
  %221 = icmp eq i8* %220, null
  br i1 %221, label %222, label %225

; <label>:222                                     ; preds = %217
  %223 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %224 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0), i32 1, %struct.FILE_POS* %223)
  br label %225

; <label>:225                                     ; preds = %222, %217
  %226 = load i8*, i8** %arg, align 8
  %227 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %228 = call %union.rec* @MakeWord(i32 11, i8* %226, %struct.FILE_POS* %227)
  call void @AddToPath(i32 1, %union.rec* %228)
  %229 = load i8*, i8** %arg, align 8
  %230 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %231 = call %union.rec* @MakeWord(i32 11, i8* %229, %struct.FILE_POS* %230)
  call void @AddToPath(i32 2, %union.rec* %231)
  br label %1598

; <label>:232                                     ; preds = %102
  %233 = load i8**, i8*** %3, align 8
  %234 = load i32, i32* %2, align 4
  %235 = call i8* @GetArg(i8** %233, i32 %234, i32* %i)
  store i8* %235, i8** %arg, align 8
  %236 = icmp eq i8* %235, null
  br i1 %236, label %237, label %240

; <label>:237                                     ; preds = %232
  %238 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %239 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %238)
  br label %240

; <label>:240                                     ; preds = %237, %232
  %241 = load i8*, i8** %arg, align 8
  %242 = call i64 @strlen(i8* %241) #6
  %243 = sub i64 %242, 3
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %len, align 4
  %245 = load i32, i32* %len, align 4
  %246 = icmp sge i32 %245, 0
  br i1 %246, label %247, label %260

; <label>:247                                     ; preds = %240
  %248 = load i32, i32* %len, align 4
  %249 = sext i32 %248 to i64
  %250 = load i8*, i8** %arg, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 %249
  %252 = call i32 @strcmp(i8* %251, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)) #6
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %260

; <label>:254                                     ; preds = %247
  %255 = load i32, i32* %len, align 4
  %256 = sext i32 %255 to i64
  %257 = load i8*, i8** %arg, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 %256
  %259 = call i8* @strcpy(i8* %258, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)) #5
  br label %260

; <label>:260                                     ; preds = %254, %247, %240
  %261 = load i8*, i8** %arg, align 8
  %262 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %263 = call zeroext i16 @DefineFile(i8* %261, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %struct.FILE_POS* %262, i32 0, i32 2)
  br label %1598

; <label>:264                                     ; preds = %102
  %265 = call zeroext i16 @FirstFile(i32 7)
  %266 = zext i16 %265 to i32
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %271

; <label>:268                                     ; preds = %264
  %269 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %270 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0), i32 1, %struct.FILE_POS* %269)
  br label %271

; <label>:271                                     ; preds = %268, %264
  %272 = load i8**, i8*** %3, align 8
  %273 = load i32, i32* %2, align 4
  %274 = call i8* @GetArg(i8** %272, i32 %273, i32* %i)
  store i8* %274, i8** %arg, align 8
  %275 = icmp eq i8* %274, null
  br i1 %275, label %276, label %279

; <label>:276                                     ; preds = %271
  %277 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %278 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0), i32 1, %struct.FILE_POS* %277)
  br label %279

; <label>:279                                     ; preds = %276, %271
  %280 = load i8*, i8** %arg, align 8
  %281 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %282 = call zeroext i16 @DefineFile(i8* %280, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %struct.FILE_POS* %281, i32 7, i32 1)
  %283 = load i8*, i8** %arg, align 8
  %284 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %285 = call zeroext i16 @DefineFile(i8* %283, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), %struct.FILE_POS* %284, i32 8, i32 1)
  br label %1598

; <label>:286                                     ; preds = %102
  %287 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %288 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %287, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i32 0, i32 0))
  %289 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %290 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %289, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i32 0, i32 0))
  %291 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %292 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %291, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i32 0, i32 0))
  %293 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %294 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %293, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0))
  %295 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %296 = load i8*, i8** %lib, align 8
  %297 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %295, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0), i8* %296, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0))
  %298 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %299 = load i8*, i8** %lib, align 8
  %300 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %298, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i32 0, i32 0), i8* %299, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0))
  %301 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %302 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %301, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0))
  %303 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %304 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %303, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0))
  %305 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %306 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %305, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0))
  %307 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %308 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %307, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0))
  %309 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %310 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %309, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0))
  %311 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %312 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %311, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0))
  %313 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %314 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %313, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.51, i32 0, i32 0))
  %315 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %316 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %315, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.52, i32 0, i32 0))
  %317 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %318 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %317, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.53, i32 0, i32 0))
  %319 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %320 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %319, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.54, i32 0, i32 0))
  %321 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %322 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %321, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.55, i32 0, i32 0))
  call void @exit(i32 0) #7
  unreachable

; <label>:323                                     ; preds = %102
  store i32 1, i32* %seen_wordcount, align 4
  br label %1598

; <label>:324                                     ; preds = %102
  %325 = load %struct.back_end_rec*, %struct.back_end_rec** @PDF_BackEnd, align 8
  store %struct.back_end_rec* %325, %struct.back_end_rec** @BackEnd, align 8
  br label %1598

; <label>:326                                     ; preds = %102
  %327 = load i32, i32* %i, align 4
  %328 = sext i32 %327 to i64
  %329 = load i8**, i8*** %3, align 8
  %330 = getelementptr inbounds i8*, i8** %329, i64 %328
  %331 = load i8*, i8** %330, align 8
  %332 = getelementptr inbounds i8, i8* %331, i64 1
  %333 = call i32 @strcmp(i8* %332, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0)) #6
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %337

; <label>:335                                     ; preds = %326
  %336 = load %struct.back_end_rec*, %struct.back_end_rec** @PDF_BackEnd, align 8
  store %struct.back_end_rec* %336, %struct.back_end_rec** @BackEnd, align 8
  br label %1598

; <label>:337                                     ; preds = %326
  store i32 1, i32* @PlainFormFeed, align 4
  br label %338

; <label>:338                                     ; preds = %102, %337
  %339 = load %struct.back_end_rec*, %struct.back_end_rec** @Plain_BackEnd, align 8
  store %struct.back_end_rec* %339, %struct.back_end_rec** @BackEnd, align 8
  %340 = load i32, i32* %i, align 4
  %341 = sext i32 %340 to i64
  %342 = load i8**, i8*** %3, align 8
  %343 = getelementptr inbounds i8*, i8** %342, i64 %341
  %344 = load i8*, i8** %343, align 8
  %345 = getelementptr inbounds i8, i8* %344, i64 2
  %346 = load i8, i8* %345, align 1
  %347 = sext i8 %346 to i32
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %430

; <label>:349                                     ; preds = %338
  %350 = load i32, i32* %i, align 4
  %351 = sext i32 %350 to i64
  %352 = load i8**, i8*** %3, align 8
  %353 = getelementptr inbounds i8*, i8** %352, i64 %351
  %354 = load i8*, i8** %353, align 8
  %355 = getelementptr inbounds i8, i8* %354, i64 2
  %356 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %355, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), float* %len1, i8* %units1, float* %len2, i8* %units2) #5
  %357 = icmp ne i32 %356, 4
  br i1 %357, label %358, label %369

; <label>:358                                     ; preds = %349
  %359 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %360 = load i32, i32* %i, align 4
  %361 = sext i32 %360 to i64
  %362 = load i8**, i8*** %3, align 8
  %363 = getelementptr inbounds i8*, i8** %362, i64 %361
  %364 = load i8*, i8** %363, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 1
  %366 = load i8, i8* %365, align 1
  %367 = sext i8 %366 to i32
  %368 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.58, i32 0, i32 0), i32 1, %struct.FILE_POS* %359, i32 %367)
  br label %369

; <label>:369                                     ; preds = %358, %349
  %370 = load i8, i8* %units1, align 1
  %371 = zext i8 %370 to i32
  switch i32 %371, label %388 [
    i32 99, label %372
    i32 105, label %376
    i32 112, label %380
    i32 109, label %384
  ]

; <label>:372                                     ; preds = %369
  %373 = load float, float* %len1, align 4
  %374 = fmul float %373, 5.670000e+02
  %375 = fptosi float %374 to i32
  store i32 %375, i32* @PlainCharWidth, align 4
  br label %399

; <label>:376                                     ; preds = %369
  %377 = load float, float* %len1, align 4
  %378 = fmul float %377, 1.440000e+03
  %379 = fptosi float %378 to i32
  store i32 %379, i32* @PlainCharWidth, align 4
  br label %399

; <label>:380                                     ; preds = %369
  %381 = load float, float* %len1, align 4
  %382 = fmul float %381, 2.000000e+01
  %383 = fptosi float %382 to i32
  store i32 %383, i32* @PlainCharWidth, align 4
  br label %399

; <label>:384                                     ; preds = %369
  %385 = load float, float* %len1, align 4
  %386 = fmul float %385, 1.200000e+02
  %387 = fptosi float %386 to i32
  store i32 %387, i32* @PlainCharWidth, align 4
  br label %399

; <label>:388                                     ; preds = %369
  %389 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %390 = load i32, i32* %i, align 4
  %391 = sext i32 %390 to i64
  %392 = load i8**, i8*** %3, align 8
  %393 = getelementptr inbounds i8*, i8** %392, i64 %391
  %394 = load i8*, i8** %393, align 8
  %395 = getelementptr inbounds i8, i8* %394, i64 1
  %396 = load i8, i8* %395, align 1
  %397 = sext i8 %396 to i32
  %398 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.59, i32 0, i32 0), i32 1, %struct.FILE_POS* %389, i32 %397)
  br label %399

; <label>:399                                     ; preds = %388, %384, %380, %376, %372
  %400 = load i8, i8* %units2, align 1
  %401 = zext i8 %400 to i32
  switch i32 %401, label %418 [
    i32 99, label %402
    i32 105, label %406
    i32 112, label %410
    i32 109, label %414
  ]

; <label>:402                                     ; preds = %399
  %403 = load float, float* %len2, align 4
  %404 = fmul float %403, 5.670000e+02
  %405 = fptosi float %404 to i32
  store i32 %405, i32* @PlainCharHeight, align 4
  br label %429

; <label>:406                                     ; preds = %399
  %407 = load float, float* %len2, align 4
  %408 = fmul float %407, 1.440000e+03
  %409 = fptosi float %408 to i32
  store i32 %409, i32* @PlainCharHeight, align 4
  br label %429

; <label>:410                                     ; preds = %399
  %411 = load float, float* %len2, align 4
  %412 = fmul float %411, 2.000000e+01
  %413 = fptosi float %412 to i32
  store i32 %413, i32* @PlainCharHeight, align 4
  br label %429

; <label>:414                                     ; preds = %399
  %415 = load float, float* %len2, align 4
  %416 = fmul float %415, 1.200000e+02
  %417 = fptosi float %416 to i32
  store i32 %417, i32* @PlainCharHeight, align 4
  br label %429

; <label>:418                                     ; preds = %399
  %419 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %420 = load i32, i32* %i, align 4
  %421 = sext i32 %420 to i64
  %422 = load i8**, i8*** %3, align 8
  %423 = getelementptr inbounds i8*, i8** %422, i64 %421
  %424 = load i8*, i8** %423, align 8
  %425 = getelementptr inbounds i8, i8* %424, i64 1
  %426 = load i8, i8* %425, align 1
  %427 = sext i8 %426 to i32
  %428 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.59, i32 0, i32 0), i32 1, %struct.FILE_POS* %419, i32 %427)
  br label %429

; <label>:429                                     ; preds = %418, %414, %410, %406, %402
  br label %430

; <label>:430                                     ; preds = %429, %338
  br label %1598

; <label>:431                                     ; preds = %102
  store i32 1, i32* @InitializeAll, align 4
  store i32 0, i32* @AllowCrossDb, align 4
  br label %1598

; <label>:432                                     ; preds = %102
  %433 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @PrintUsage(%struct._IO_FILE* %433)
  call void @exit(i32 0) #7
  unreachable

; <label>:434                                     ; preds = %102
  %435 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %436 = load i32, i32* %i, align 4
  %437 = sext i32 %436 to i64
  %438 = load i8**, i8*** %3, align 8
  %439 = getelementptr inbounds i8*, i8** %438, i64 %437
  %440 = load i8*, i8** %439, align 8
  %441 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.60, i32 0, i32 0), i32 1, %struct.FILE_POS* %435, i8* %440)
  br label %1598

; <label>:442                                     ; preds = %102
  %443 = load i32, i32* %i, align 4
  %444 = sext i32 %443 to i64
  %445 = load i8**, i8*** %3, align 8
  %446 = getelementptr inbounds i8*, i8** %445, i64 %444
  %447 = load i8*, i8** %446, align 8
  %448 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %447, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i64* %MemCheckLong) #5
  %449 = load i64, i64* %MemCheckLong, align 8
  %450 = inttoptr i64 %449 to i8*
  store i8* %450, i8** @MemCheck, align 8
  %451 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %452 = load i8*, i8** @MemCheck, align 8
  %453 = ptrtoint i8* %452 to i64
  %454 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %451, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.62, i32 0, i32 0), i64 %453)
  br label %1598

; <label>:455                                     ; preds = %102
  %456 = load i32, i32* %stdin_seen, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %461

; <label>:458                                     ; preds = %455
  %459 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %460 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.63, i32 0, i32 0), i32 1, %struct.FILE_POS* %459)
  br label %461

; <label>:461                                     ; preds = %458, %455
  store i32 1, i32* %stdin_seen, align 4
  %462 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %463 = call zeroext i16 @DefineFile(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %struct.FILE_POS* %462, i32 0, i32 0)
  br label %1598

; <label>:464                                     ; preds = %102
  %465 = load i32, i32* %i, align 4
  %466 = sext i32 %465 to i64
  %467 = load i8**, i8*** %3, align 8
  %468 = getelementptr inbounds i8*, i8** %467, i64 %466
  %469 = load i8*, i8** %468, align 8
  %470 = getelementptr inbounds i8, i8* %469, i64 2
  %471 = getelementptr inbounds [512 x i8], [512 x i8]* %oname, i32 0, i32 0
  %472 = getelementptr inbounds [512 x i8], [512 x i8]* %oval, i32 0, i32 0
  %473 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %470, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.64, i32 0, i32 0), i8* %471, i8* %472) #5
  %474 = icmp ne i32 %473, 2
  br i1 %474, label %483, label %475

; <label>:475                                     ; preds = %464
  %476 = getelementptr inbounds [512 x i8], [512 x i8]* %oname, i32 0, i32 0
  %477 = call i64 @strlen(i8* %476) #6
  %478 = icmp eq i64 %477, 0
  br i1 %478, label %483, label %479

; <label>:479                                     ; preds = %475
  %480 = getelementptr inbounds [512 x i8], [512 x i8]* %oval, i32 0, i32 0
  %481 = call i64 @strlen(i8* %480) #6
  %482 = icmp eq i64 %481, 0
  br i1 %482, label %483, label %492

; <label>:483                                     ; preds = %479, %475, %464
  %484 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %485 = load i32, i32* %i, align 4
  %486 = sext i32 %485 to i64
  %487 = load i8**, i8*** %3, align 8
  %488 = getelementptr inbounds i8*, i8** %487, i64 %486
  %489 = load i8*, i8** %488, align 8
  %490 = getelementptr inbounds i8, i8* %489, i64 2
  %491 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.65, i32 0, i32 0), i32 1, %struct.FILE_POS* %484, i8* %490)
  br label %492

; <label>:492                                     ; preds = %483, %479
  %493 = getelementptr inbounds [512 x i8], [512 x i8]* %oname, i32 0, i32 0
  %494 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %495 = call %union.rec* @MakeWord(i32 11, i8* %493, %struct.FILE_POS* %494)
  store %union.rec* %495, %union.rec** %y, align 8
  %496 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %497 = zext i8 %496 to i32
  store i32 %497, i32* @zz_size, align 4
  %498 = sext i32 %497 to i64
  %499 = icmp uge i64 %498, 265
  br i1 %499, label %500, label %503

; <label>:500                                     ; preds = %492
  %501 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %502 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %501)
  br label %528

; <label>:503                                     ; preds = %492
  %504 = load i32, i32* @zz_size, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %505
  %507 = load %union.rec*, %union.rec** %506, align 8
  %508 = icmp eq %union.rec* %507, null
  br i1 %508, label %509, label %513

; <label>:509                                     ; preds = %503
  %510 = load i32, i32* @zz_size, align 4
  %511 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %512 = call %union.rec* @GetMemory(i32 %510, %struct.FILE_POS* %511)
  store %union.rec* %512, %union.rec** @zz_hold, align 8
  br label %527

; <label>:513                                     ; preds = %503
  %514 = load i32, i32* @zz_size, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %515
  %517 = load %union.rec*, %union.rec** %516, align 8
  store %union.rec* %517, %union.rec** @zz_hold, align 8
  store %union.rec* %517, %union.rec** @zz_hold, align 8
  %518 = load %union.rec*, %union.rec** @zz_hold, align 8
  %519 = bitcast %union.rec* %518 to %struct.word_type*
  %520 = getelementptr inbounds %struct.word_type, %struct.word_type* %519, i32 0, i32 0
  %521 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %520, i32 0, i64 0
  %522 = getelementptr inbounds %struct.LIST, %struct.LIST* %521, i32 0, i32 0
  %523 = load %union.rec*, %union.rec** %522, align 8
  %524 = load i32, i32* @zz_size, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %525
  store %union.rec* %523, %union.rec** %526, align 8
  br label %527

; <label>:527                                     ; preds = %513, %509
  br label %528

; <label>:528                                     ; preds = %527, %500
  %529 = load %union.rec*, %union.rec** @zz_hold, align 8
  %530 = bitcast %union.rec* %529 to %struct.word_type*
  %531 = getelementptr inbounds %struct.word_type, %struct.word_type* %530, i32 0, i32 1
  %532 = bitcast %union.FIRST_UNION* %531 to %struct.anon*
  %533 = getelementptr inbounds %struct.anon, %struct.anon* %532, i32 0, i32 0
  store i8 0, i8* %533, align 1
  %534 = load %union.rec*, %union.rec** @zz_hold, align 8
  %535 = load %union.rec*, %union.rec** @zz_hold, align 8
  %536 = bitcast %union.rec* %535 to %struct.word_type*
  %537 = getelementptr inbounds %struct.word_type, %struct.word_type* %536, i32 0, i32 0
  %538 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %537, i32 0, i64 1
  %539 = getelementptr inbounds %struct.LIST, %struct.LIST* %538, i32 0, i32 1
  store %union.rec* %534, %union.rec** %539, align 8
  %540 = load %union.rec*, %union.rec** @zz_hold, align 8
  %541 = bitcast %union.rec* %540 to %struct.word_type*
  %542 = getelementptr inbounds %struct.word_type, %struct.word_type* %541, i32 0, i32 0
  %543 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %542, i32 0, i64 1
  %544 = getelementptr inbounds %struct.LIST, %struct.LIST* %543, i32 0, i32 0
  store %union.rec* %534, %union.rec** %544, align 8
  %545 = load %union.rec*, %union.rec** @zz_hold, align 8
  %546 = bitcast %union.rec* %545 to %struct.word_type*
  %547 = getelementptr inbounds %struct.word_type, %struct.word_type* %546, i32 0, i32 0
  %548 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %547, i32 0, i64 0
  %549 = getelementptr inbounds %struct.LIST, %struct.LIST* %548, i32 0, i32 1
  store %union.rec* %534, %union.rec** %549, align 8
  %550 = load %union.rec*, %union.rec** @zz_hold, align 8
  %551 = bitcast %union.rec* %550 to %struct.word_type*
  %552 = getelementptr inbounds %struct.word_type, %struct.word_type* %551, i32 0, i32 0
  %553 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %552, i32 0, i64 0
  %554 = getelementptr inbounds %struct.LIST, %struct.LIST* %553, i32 0, i32 0
  store %union.rec* %534, %union.rec** %554, align 8
  store %union.rec* %534, %union.rec** @xx_link, align 8
  %555 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %555, %union.rec** @zz_res, align 8
  %556 = load %union.rec*, %union.rec** @CommandOptions, align 8
  store %union.rec* %556, %union.rec** @zz_hold, align 8
  %557 = load %union.rec*, %union.rec** @zz_hold, align 8
  %558 = icmp eq %union.rec* %557, null
  br i1 %558, label %559, label %561

; <label>:559                                     ; preds = %528
  %560 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %609

; <label>:561                                     ; preds = %528
  %562 = load %union.rec*, %union.rec** @zz_res, align 8
  %563 = icmp eq %union.rec* %562, null
  br i1 %563, label %564, label %566

; <label>:564                                     ; preds = %561
  %565 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %607

; <label>:566                                     ; preds = %561
  %567 = load %union.rec*, %union.rec** @zz_hold, align 8
  %568 = bitcast %union.rec* %567 to %struct.word_type*
  %569 = getelementptr inbounds %struct.word_type, %struct.word_type* %568, i32 0, i32 0
  %570 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %569, i32 0, i64 0
  %571 = getelementptr inbounds %struct.LIST, %struct.LIST* %570, i32 0, i32 0
  %572 = load %union.rec*, %union.rec** %571, align 8
  store %union.rec* %572, %union.rec** @zz_tmp, align 8
  %573 = load %union.rec*, %union.rec** @zz_res, align 8
  %574 = bitcast %union.rec* %573 to %struct.word_type*
  %575 = getelementptr inbounds %struct.word_type, %struct.word_type* %574, i32 0, i32 0
  %576 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %575, i32 0, i64 0
  %577 = getelementptr inbounds %struct.LIST, %struct.LIST* %576, i32 0, i32 0
  %578 = load %union.rec*, %union.rec** %577, align 8
  %579 = load %union.rec*, %union.rec** @zz_hold, align 8
  %580 = bitcast %union.rec* %579 to %struct.word_type*
  %581 = getelementptr inbounds %struct.word_type, %struct.word_type* %580, i32 0, i32 0
  %582 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %581, i32 0, i64 0
  %583 = getelementptr inbounds %struct.LIST, %struct.LIST* %582, i32 0, i32 0
  store %union.rec* %578, %union.rec** %583, align 8
  %584 = load %union.rec*, %union.rec** @zz_hold, align 8
  %585 = load %union.rec*, %union.rec** @zz_res, align 8
  %586 = bitcast %union.rec* %585 to %struct.word_type*
  %587 = getelementptr inbounds %struct.word_type, %struct.word_type* %586, i32 0, i32 0
  %588 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %587, i32 0, i64 0
  %589 = getelementptr inbounds %struct.LIST, %struct.LIST* %588, i32 0, i32 0
  %590 = load %union.rec*, %union.rec** %589, align 8
  %591 = bitcast %union.rec* %590 to %struct.word_type*
  %592 = getelementptr inbounds %struct.word_type, %struct.word_type* %591, i32 0, i32 0
  %593 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %592, i32 0, i64 0
  %594 = getelementptr inbounds %struct.LIST, %struct.LIST* %593, i32 0, i32 1
  store %union.rec* %584, %union.rec** %594, align 8
  %595 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %596 = load %union.rec*, %union.rec** @zz_res, align 8
  %597 = bitcast %union.rec* %596 to %struct.word_type*
  %598 = getelementptr inbounds %struct.word_type, %struct.word_type* %597, i32 0, i32 0
  %599 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %598, i32 0, i64 0
  %600 = getelementptr inbounds %struct.LIST, %struct.LIST* %599, i32 0, i32 0
  store %union.rec* %595, %union.rec** %600, align 8
  %601 = load %union.rec*, %union.rec** @zz_res, align 8
  %602 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %603 = bitcast %union.rec* %602 to %struct.word_type*
  %604 = getelementptr inbounds %struct.word_type, %struct.word_type* %603, i32 0, i32 0
  %605 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %604, i32 0, i64 0
  %606 = getelementptr inbounds %struct.LIST, %struct.LIST* %605, i32 0, i32 1
  store %union.rec* %601, %union.rec** %606, align 8
  br label %607

; <label>:607                                     ; preds = %566, %564
  %608 = phi %union.rec* [ %565, %564 ], [ %601, %566 ]
  br label %609

; <label>:609                                     ; preds = %607, %559
  %610 = phi %union.rec* [ %560, %559 ], [ %608, %607 ]
  %611 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %611, %union.rec** @zz_res, align 8
  %612 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %612, %union.rec** @zz_hold, align 8
  %613 = load %union.rec*, %union.rec** @zz_hold, align 8
  %614 = icmp eq %union.rec* %613, null
  br i1 %614, label %615, label %617

; <label>:615                                     ; preds = %609
  %616 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %665

; <label>:617                                     ; preds = %609
  %618 = load %union.rec*, %union.rec** @zz_res, align 8
  %619 = icmp eq %union.rec* %618, null
  br i1 %619, label %620, label %622

; <label>:620                                     ; preds = %617
  %621 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %663

; <label>:622                                     ; preds = %617
  %623 = load %union.rec*, %union.rec** @zz_hold, align 8
  %624 = bitcast %union.rec* %623 to %struct.word_type*
  %625 = getelementptr inbounds %struct.word_type, %struct.word_type* %624, i32 0, i32 0
  %626 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %625, i32 0, i64 1
  %627 = getelementptr inbounds %struct.LIST, %struct.LIST* %626, i32 0, i32 0
  %628 = load %union.rec*, %union.rec** %627, align 8
  store %union.rec* %628, %union.rec** @zz_tmp, align 8
  %629 = load %union.rec*, %union.rec** @zz_res, align 8
  %630 = bitcast %union.rec* %629 to %struct.word_type*
  %631 = getelementptr inbounds %struct.word_type, %struct.word_type* %630, i32 0, i32 0
  %632 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %631, i32 0, i64 1
  %633 = getelementptr inbounds %struct.LIST, %struct.LIST* %632, i32 0, i32 0
  %634 = load %union.rec*, %union.rec** %633, align 8
  %635 = load %union.rec*, %union.rec** @zz_hold, align 8
  %636 = bitcast %union.rec* %635 to %struct.word_type*
  %637 = getelementptr inbounds %struct.word_type, %struct.word_type* %636, i32 0, i32 0
  %638 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %637, i32 0, i64 1
  %639 = getelementptr inbounds %struct.LIST, %struct.LIST* %638, i32 0, i32 0
  store %union.rec* %634, %union.rec** %639, align 8
  %640 = load %union.rec*, %union.rec** @zz_hold, align 8
  %641 = load %union.rec*, %union.rec** @zz_res, align 8
  %642 = bitcast %union.rec* %641 to %struct.word_type*
  %643 = getelementptr inbounds %struct.word_type, %struct.word_type* %642, i32 0, i32 0
  %644 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %643, i32 0, i64 1
  %645 = getelementptr inbounds %struct.LIST, %struct.LIST* %644, i32 0, i32 0
  %646 = load %union.rec*, %union.rec** %645, align 8
  %647 = bitcast %union.rec* %646 to %struct.word_type*
  %648 = getelementptr inbounds %struct.word_type, %struct.word_type* %647, i32 0, i32 0
  %649 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %648, i32 0, i64 1
  %650 = getelementptr inbounds %struct.LIST, %struct.LIST* %649, i32 0, i32 1
  store %union.rec* %640, %union.rec** %650, align 8
  %651 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %652 = load %union.rec*, %union.rec** @zz_res, align 8
  %653 = bitcast %union.rec* %652 to %struct.word_type*
  %654 = getelementptr inbounds %struct.word_type, %struct.word_type* %653, i32 0, i32 0
  %655 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %654, i32 0, i64 1
  %656 = getelementptr inbounds %struct.LIST, %struct.LIST* %655, i32 0, i32 0
  store %union.rec* %651, %union.rec** %656, align 8
  %657 = load %union.rec*, %union.rec** @zz_res, align 8
  %658 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %659 = bitcast %union.rec* %658 to %struct.word_type*
  %660 = getelementptr inbounds %struct.word_type, %struct.word_type* %659, i32 0, i32 0
  %661 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %660, i32 0, i64 1
  %662 = getelementptr inbounds %struct.LIST, %struct.LIST* %661, i32 0, i32 1
  store %union.rec* %657, %union.rec** %662, align 8
  br label %663

; <label>:663                                     ; preds = %622, %620
  %664 = phi %union.rec* [ %621, %620 ], [ %657, %622 ]
  br label %665

; <label>:665                                     ; preds = %663, %615
  %666 = phi %union.rec* [ %616, %615 ], [ %664, %663 ]
  %667 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %668 = zext i8 %667 to i32
  store i32 %668, i32* @zz_size, align 4
  %669 = sext i32 %668 to i64
  %670 = icmp uge i64 %669, 265
  br i1 %670, label %671, label %674

; <label>:671                                     ; preds = %665
  %672 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %673 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %672)
  br label %699

; <label>:674                                     ; preds = %665
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
  store i8 17, i8* %704, align 1
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
  store %union.rec* %705, %union.rec** %y, align 8
  %726 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %727 = zext i8 %726 to i32
  store i32 %727, i32* @zz_size, align 4
  %728 = sext i32 %727 to i64
  %729 = icmp uge i64 %728, 265
  br i1 %729, label %730, label %733

; <label>:730                                     ; preds = %699
  %731 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %732 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %731)
  br label %758

; <label>:733                                     ; preds = %699
  %734 = load i32, i32* @zz_size, align 4
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %735
  %737 = load %union.rec*, %union.rec** %736, align 8
  %738 = icmp eq %union.rec* %737, null
  br i1 %738, label %739, label %743

; <label>:739                                     ; preds = %733
  %740 = load i32, i32* @zz_size, align 4
  %741 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %742 = call %union.rec* @GetMemory(i32 %740, %struct.FILE_POS* %741)
  store %union.rec* %742, %union.rec** @zz_hold, align 8
  br label %757

; <label>:743                                     ; preds = %733
  %744 = load i32, i32* @zz_size, align 4
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %745
  %747 = load %union.rec*, %union.rec** %746, align 8
  store %union.rec* %747, %union.rec** @zz_hold, align 8
  store %union.rec* %747, %union.rec** @zz_hold, align 8
  %748 = load %union.rec*, %union.rec** @zz_hold, align 8
  %749 = bitcast %union.rec* %748 to %struct.word_type*
  %750 = getelementptr inbounds %struct.word_type, %struct.word_type* %749, i32 0, i32 0
  %751 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %750, i32 0, i64 0
  %752 = getelementptr inbounds %struct.LIST, %struct.LIST* %751, i32 0, i32 0
  %753 = load %union.rec*, %union.rec** %752, align 8
  %754 = load i32, i32* @zz_size, align 4
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %755
  store %union.rec* %753, %union.rec** %756, align 8
  br label %757

; <label>:757                                     ; preds = %743, %739
  br label %758

; <label>:758                                     ; preds = %757, %730
  %759 = load %union.rec*, %union.rec** @zz_hold, align 8
  %760 = bitcast %union.rec* %759 to %struct.word_type*
  %761 = getelementptr inbounds %struct.word_type, %struct.word_type* %760, i32 0, i32 1
  %762 = bitcast %union.FIRST_UNION* %761 to %struct.anon*
  %763 = getelementptr inbounds %struct.anon, %struct.anon* %762, i32 0, i32 0
  store i8 0, i8* %763, align 1
  %764 = load %union.rec*, %union.rec** @zz_hold, align 8
  %765 = load %union.rec*, %union.rec** @zz_hold, align 8
  %766 = bitcast %union.rec* %765 to %struct.word_type*
  %767 = getelementptr inbounds %struct.word_type, %struct.word_type* %766, i32 0, i32 0
  %768 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %767, i32 0, i64 1
  %769 = getelementptr inbounds %struct.LIST, %struct.LIST* %768, i32 0, i32 1
  store %union.rec* %764, %union.rec** %769, align 8
  %770 = load %union.rec*, %union.rec** @zz_hold, align 8
  %771 = bitcast %union.rec* %770 to %struct.word_type*
  %772 = getelementptr inbounds %struct.word_type, %struct.word_type* %771, i32 0, i32 0
  %773 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %772, i32 0, i64 1
  %774 = getelementptr inbounds %struct.LIST, %struct.LIST* %773, i32 0, i32 0
  store %union.rec* %764, %union.rec** %774, align 8
  %775 = load %union.rec*, %union.rec** @zz_hold, align 8
  %776 = bitcast %union.rec* %775 to %struct.word_type*
  %777 = getelementptr inbounds %struct.word_type, %struct.word_type* %776, i32 0, i32 0
  %778 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %777, i32 0, i64 0
  %779 = getelementptr inbounds %struct.LIST, %struct.LIST* %778, i32 0, i32 1
  store %union.rec* %764, %union.rec** %779, align 8
  %780 = load %union.rec*, %union.rec** @zz_hold, align 8
  %781 = bitcast %union.rec* %780 to %struct.word_type*
  %782 = getelementptr inbounds %struct.word_type, %struct.word_type* %781, i32 0, i32 0
  %783 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %782, i32 0, i64 0
  %784 = getelementptr inbounds %struct.LIST, %struct.LIST* %783, i32 0, i32 0
  store %union.rec* %764, %union.rec** %784, align 8
  store %union.rec* %764, %union.rec** @xx_link, align 8
  %785 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %785, %union.rec** @zz_res, align 8
  %786 = load %union.rec*, %union.rec** @CommandOptions, align 8
  store %union.rec* %786, %union.rec** @zz_hold, align 8
  %787 = load %union.rec*, %union.rec** @zz_hold, align 8
  %788 = icmp eq %union.rec* %787, null
  br i1 %788, label %789, label %791

; <label>:789                                     ; preds = %758
  %790 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %839

; <label>:791                                     ; preds = %758
  %792 = load %union.rec*, %union.rec** @zz_res, align 8
  %793 = icmp eq %union.rec* %792, null
  br i1 %793, label %794, label %796

; <label>:794                                     ; preds = %791
  %795 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %837

; <label>:796                                     ; preds = %791
  %797 = load %union.rec*, %union.rec** @zz_hold, align 8
  %798 = bitcast %union.rec* %797 to %struct.word_type*
  %799 = getelementptr inbounds %struct.word_type, %struct.word_type* %798, i32 0, i32 0
  %800 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %799, i32 0, i64 0
  %801 = getelementptr inbounds %struct.LIST, %struct.LIST* %800, i32 0, i32 0
  %802 = load %union.rec*, %union.rec** %801, align 8
  store %union.rec* %802, %union.rec** @zz_tmp, align 8
  %803 = load %union.rec*, %union.rec** @zz_res, align 8
  %804 = bitcast %union.rec* %803 to %struct.word_type*
  %805 = getelementptr inbounds %struct.word_type, %struct.word_type* %804, i32 0, i32 0
  %806 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %805, i32 0, i64 0
  %807 = getelementptr inbounds %struct.LIST, %struct.LIST* %806, i32 0, i32 0
  %808 = load %union.rec*, %union.rec** %807, align 8
  %809 = load %union.rec*, %union.rec** @zz_hold, align 8
  %810 = bitcast %union.rec* %809 to %struct.word_type*
  %811 = getelementptr inbounds %struct.word_type, %struct.word_type* %810, i32 0, i32 0
  %812 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %811, i32 0, i64 0
  %813 = getelementptr inbounds %struct.LIST, %struct.LIST* %812, i32 0, i32 0
  store %union.rec* %808, %union.rec** %813, align 8
  %814 = load %union.rec*, %union.rec** @zz_hold, align 8
  %815 = load %union.rec*, %union.rec** @zz_res, align 8
  %816 = bitcast %union.rec* %815 to %struct.word_type*
  %817 = getelementptr inbounds %struct.word_type, %struct.word_type* %816, i32 0, i32 0
  %818 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %817, i32 0, i64 0
  %819 = getelementptr inbounds %struct.LIST, %struct.LIST* %818, i32 0, i32 0
  %820 = load %union.rec*, %union.rec** %819, align 8
  %821 = bitcast %union.rec* %820 to %struct.word_type*
  %822 = getelementptr inbounds %struct.word_type, %struct.word_type* %821, i32 0, i32 0
  %823 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %822, i32 0, i64 0
  %824 = getelementptr inbounds %struct.LIST, %struct.LIST* %823, i32 0, i32 1
  store %union.rec* %814, %union.rec** %824, align 8
  %825 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %826 = load %union.rec*, %union.rec** @zz_res, align 8
  %827 = bitcast %union.rec* %826 to %struct.word_type*
  %828 = getelementptr inbounds %struct.word_type, %struct.word_type* %827, i32 0, i32 0
  %829 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %828, i32 0, i64 0
  %830 = getelementptr inbounds %struct.LIST, %struct.LIST* %829, i32 0, i32 0
  store %union.rec* %825, %union.rec** %830, align 8
  %831 = load %union.rec*, %union.rec** @zz_res, align 8
  %832 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %833 = bitcast %union.rec* %832 to %struct.word_type*
  %834 = getelementptr inbounds %struct.word_type, %struct.word_type* %833, i32 0, i32 0
  %835 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %834, i32 0, i64 0
  %836 = getelementptr inbounds %struct.LIST, %struct.LIST* %835, i32 0, i32 1
  store %union.rec* %831, %union.rec** %836, align 8
  br label %837

; <label>:837                                     ; preds = %796, %794
  %838 = phi %union.rec* [ %795, %794 ], [ %831, %796 ]
  br label %839

; <label>:839                                     ; preds = %837, %789
  %840 = phi %union.rec* [ %790, %789 ], [ %838, %837 ]
  %841 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %841, %union.rec** @zz_res, align 8
  %842 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %842, %union.rec** @zz_hold, align 8
  %843 = load %union.rec*, %union.rec** @zz_hold, align 8
  %844 = icmp eq %union.rec* %843, null
  br i1 %844, label %845, label %847

; <label>:845                                     ; preds = %839
  %846 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %895

; <label>:847                                     ; preds = %839
  %848 = load %union.rec*, %union.rec** @zz_res, align 8
  %849 = icmp eq %union.rec* %848, null
  br i1 %849, label %850, label %852

; <label>:850                                     ; preds = %847
  %851 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %893

; <label>:852                                     ; preds = %847
  %853 = load %union.rec*, %union.rec** @zz_hold, align 8
  %854 = bitcast %union.rec* %853 to %struct.word_type*
  %855 = getelementptr inbounds %struct.word_type, %struct.word_type* %854, i32 0, i32 0
  %856 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %855, i32 0, i64 1
  %857 = getelementptr inbounds %struct.LIST, %struct.LIST* %856, i32 0, i32 0
  %858 = load %union.rec*, %union.rec** %857, align 8
  store %union.rec* %858, %union.rec** @zz_tmp, align 8
  %859 = load %union.rec*, %union.rec** @zz_res, align 8
  %860 = bitcast %union.rec* %859 to %struct.word_type*
  %861 = getelementptr inbounds %struct.word_type, %struct.word_type* %860, i32 0, i32 0
  %862 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %861, i32 0, i64 1
  %863 = getelementptr inbounds %struct.LIST, %struct.LIST* %862, i32 0, i32 0
  %864 = load %union.rec*, %union.rec** %863, align 8
  %865 = load %union.rec*, %union.rec** @zz_hold, align 8
  %866 = bitcast %union.rec* %865 to %struct.word_type*
  %867 = getelementptr inbounds %struct.word_type, %struct.word_type* %866, i32 0, i32 0
  %868 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %867, i32 0, i64 1
  %869 = getelementptr inbounds %struct.LIST, %struct.LIST* %868, i32 0, i32 0
  store %union.rec* %864, %union.rec** %869, align 8
  %870 = load %union.rec*, %union.rec** @zz_hold, align 8
  %871 = load %union.rec*, %union.rec** @zz_res, align 8
  %872 = bitcast %union.rec* %871 to %struct.word_type*
  %873 = getelementptr inbounds %struct.word_type, %struct.word_type* %872, i32 0, i32 0
  %874 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %873, i32 0, i64 1
  %875 = getelementptr inbounds %struct.LIST, %struct.LIST* %874, i32 0, i32 0
  %876 = load %union.rec*, %union.rec** %875, align 8
  %877 = bitcast %union.rec* %876 to %struct.word_type*
  %878 = getelementptr inbounds %struct.word_type, %struct.word_type* %877, i32 0, i32 0
  %879 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %878, i32 0, i64 1
  %880 = getelementptr inbounds %struct.LIST, %struct.LIST* %879, i32 0, i32 1
  store %union.rec* %870, %union.rec** %880, align 8
  %881 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %882 = load %union.rec*, %union.rec** @zz_res, align 8
  %883 = bitcast %union.rec* %882 to %struct.word_type*
  %884 = getelementptr inbounds %struct.word_type, %struct.word_type* %883, i32 0, i32 0
  %885 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %884, i32 0, i64 1
  %886 = getelementptr inbounds %struct.LIST, %struct.LIST* %885, i32 0, i32 0
  store %union.rec* %881, %union.rec** %886, align 8
  %887 = load %union.rec*, %union.rec** @zz_res, align 8
  %888 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %889 = bitcast %union.rec* %888 to %struct.word_type*
  %890 = getelementptr inbounds %struct.word_type, %struct.word_type* %889, i32 0, i32 0
  %891 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %890, i32 0, i64 1
  %892 = getelementptr inbounds %struct.LIST, %struct.LIST* %891, i32 0, i32 1
  store %union.rec* %887, %union.rec** %892, align 8
  br label %893

; <label>:893                                     ; preds = %852, %850
  %894 = phi %union.rec* [ %851, %850 ], [ %887, %852 ]
  br label %895

; <label>:895                                     ; preds = %893, %845
  %896 = phi %union.rec* [ %846, %845 ], [ %894, %893 ]
  store i32 0, i32* %bp, align 4
  %897 = getelementptr inbounds [512 x i8], [512 x i8]* %oval, i32 0, i32 0
  store i8* %897, i8** %p, align 8
  br label %898

; <label>:898                                     ; preds = %1383, %895
  %899 = load i8*, i8** %p, align 8
  %900 = load i8, i8* %899, align 1
  %901 = zext i8 %900 to i32
  %902 = icmp ne i32 %901, 0
  br i1 %902, label %903, label %1386

; <label>:903                                     ; preds = %898
  %904 = load i8*, i8** %p, align 8
  %905 = load i8, i8* %904, align 1
  %906 = zext i8 %905 to i32
  switch i32 %906, label %1375 [
    i32 32, label %907
    i32 9, label %907
    i32 10, label %907
    i32 123, label %907
    i32 125, label %907
  ]

; <label>:907                                     ; preds = %903, %903, %903, %903, %903
  %908 = load i32, i32* %bp, align 4
  %909 = icmp sgt i32 %908, 0
  br i1 %909, label %910, label %1374

; <label>:910                                     ; preds = %907
  %911 = load i32, i32* %bp, align 4
  %912 = add nsw i32 %911, 1
  store i32 %912, i32* %bp, align 4
  %913 = sext i32 %911 to i64
  %914 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %913
  store i8 0, i8* %914, align 1
  %915 = load %union.rec*, %union.rec** %y, align 8
  %916 = bitcast %union.rec* %915 to %struct.word_type*
  %917 = getelementptr inbounds %struct.word_type, %struct.word_type* %916, i32 0, i32 0
  %918 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %917, i32 0, i64 0
  %919 = getelementptr inbounds %struct.LIST, %struct.LIST* %918, i32 0, i32 1
  %920 = load %union.rec*, %union.rec** %919, align 8
  %921 = load %union.rec*, %union.rec** %y, align 8
  %922 = icmp ne %union.rec* %920, %921
  br i1 %922, label %923, label %1199

; <label>:923                                     ; preds = %910
  %924 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %925 = zext i8 %924 to i32
  store i32 %925, i32* @zz_size, align 4
  %926 = sext i32 %925 to i64
  %927 = icmp uge i64 %926, 265
  br i1 %927, label %928, label %931

; <label>:928                                     ; preds = %923
  %929 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %930 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %929)
  br label %956

; <label>:931                                     ; preds = %923
  %932 = load i32, i32* @zz_size, align 4
  %933 = sext i32 %932 to i64
  %934 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %933
  %935 = load %union.rec*, %union.rec** %934, align 8
  %936 = icmp eq %union.rec* %935, null
  br i1 %936, label %937, label %941

; <label>:937                                     ; preds = %931
  %938 = load i32, i32* @zz_size, align 4
  %939 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %940 = call %union.rec* @GetMemory(i32 %938, %struct.FILE_POS* %939)
  store %union.rec* %940, %union.rec** @zz_hold, align 8
  br label %955

; <label>:941                                     ; preds = %931
  %942 = load i32, i32* @zz_size, align 4
  %943 = sext i32 %942 to i64
  %944 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %943
  %945 = load %union.rec*, %union.rec** %944, align 8
  store %union.rec* %945, %union.rec** @zz_hold, align 8
  store %union.rec* %945, %union.rec** @zz_hold, align 8
  %946 = load %union.rec*, %union.rec** @zz_hold, align 8
  %947 = bitcast %union.rec* %946 to %struct.word_type*
  %948 = getelementptr inbounds %struct.word_type, %struct.word_type* %947, i32 0, i32 0
  %949 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %948, i32 0, i64 0
  %950 = getelementptr inbounds %struct.LIST, %struct.LIST* %949, i32 0, i32 0
  %951 = load %union.rec*, %union.rec** %950, align 8
  %952 = load i32, i32* @zz_size, align 4
  %953 = sext i32 %952 to i64
  %954 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %953
  store %union.rec* %951, %union.rec** %954, align 8
  br label %955

; <label>:955                                     ; preds = %941, %937
  br label %956

; <label>:956                                     ; preds = %955, %928
  %957 = load %union.rec*, %union.rec** @zz_hold, align 8
  %958 = bitcast %union.rec* %957 to %struct.word_type*
  %959 = getelementptr inbounds %struct.word_type, %struct.word_type* %958, i32 0, i32 1
  %960 = bitcast %union.FIRST_UNION* %959 to %struct.anon*
  %961 = getelementptr inbounds %struct.anon, %struct.anon* %960, i32 0, i32 0
  store i8 1, i8* %961, align 1
  %962 = load %union.rec*, %union.rec** @zz_hold, align 8
  %963 = load %union.rec*, %union.rec** @zz_hold, align 8
  %964 = bitcast %union.rec* %963 to %struct.word_type*
  %965 = getelementptr inbounds %struct.word_type, %struct.word_type* %964, i32 0, i32 0
  %966 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %965, i32 0, i64 1
  %967 = getelementptr inbounds %struct.LIST, %struct.LIST* %966, i32 0, i32 1
  store %union.rec* %962, %union.rec** %967, align 8
  %968 = load %union.rec*, %union.rec** @zz_hold, align 8
  %969 = bitcast %union.rec* %968 to %struct.word_type*
  %970 = getelementptr inbounds %struct.word_type, %struct.word_type* %969, i32 0, i32 0
  %971 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %970, i32 0, i64 1
  %972 = getelementptr inbounds %struct.LIST, %struct.LIST* %971, i32 0, i32 0
  store %union.rec* %962, %union.rec** %972, align 8
  %973 = load %union.rec*, %union.rec** @zz_hold, align 8
  %974 = bitcast %union.rec* %973 to %struct.word_type*
  %975 = getelementptr inbounds %struct.word_type, %struct.word_type* %974, i32 0, i32 0
  %976 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %975, i32 0, i64 0
  %977 = getelementptr inbounds %struct.LIST, %struct.LIST* %976, i32 0, i32 1
  store %union.rec* %962, %union.rec** %977, align 8
  %978 = load %union.rec*, %union.rec** @zz_hold, align 8
  %979 = bitcast %union.rec* %978 to %struct.word_type*
  %980 = getelementptr inbounds %struct.word_type, %struct.word_type* %979, i32 0, i32 0
  %981 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %980, i32 0, i64 0
  %982 = getelementptr inbounds %struct.LIST, %struct.LIST* %981, i32 0, i32 0
  store %union.rec* %962, %union.rec** %982, align 8
  store %union.rec* %962, %union.rec** %g, align 8
  %983 = load %union.rec*, %union.rec** %g, align 8
  %984 = bitcast %union.rec* %983 to %struct.word_type*
  %985 = getelementptr inbounds %struct.word_type, %struct.word_type* %984, i32 0, i32 2
  %986 = bitcast %union.SECOND_UNION* %985 to %struct.anon.0*
  %987 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %986, i32 0, i32 1
  store i8 1, i8* %987, align 1
  %988 = load %union.rec*, %union.rec** %g, align 8
  %989 = bitcast %union.rec* %988 to %struct.word_type*
  %990 = getelementptr inbounds %struct.word_type, %struct.word_type* %989, i32 0, i32 2
  %991 = bitcast %union.SECOND_UNION* %990 to %struct.anon.0*
  %992 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %991, i32 0, i32 2
  store i8 0, i8* %992, align 1
  %993 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %994 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %993, i32 0, i32 2
  %995 = load i16, i16* %994, align 2
  %996 = load %union.rec*, %union.rec** %g, align 8
  %997 = bitcast %union.rec* %996 to %struct.word_type*
  %998 = getelementptr inbounds %struct.word_type, %struct.word_type* %997, i32 0, i32 1
  %999 = bitcast %union.FIRST_UNION* %998 to %struct.FILE_POS*
  %1000 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %999, i32 0, i32 2
  store i16 %995, i16* %1000, align 2
  %1001 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1002 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1001, i32 0, i32 3
  %1003 = load i32, i32* %1002, align 4
  %1004 = and i32 %1003, 1048575
  %1005 = load %union.rec*, %union.rec** %g, align 8
  %1006 = bitcast %union.rec* %1005 to %struct.word_type*
  %1007 = getelementptr inbounds %struct.word_type, %struct.word_type* %1006, i32 0, i32 1
  %1008 = bitcast %union.FIRST_UNION* %1007 to %struct.FILE_POS*
  %1009 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1008, i32 0, i32 3
  %1010 = load i32, i32* %1009, align 4
  %1011 = and i32 %1004, 1048575
  %1012 = and i32 %1010, -1048576
  %1013 = or i32 %1012, %1011
  store i32 %1013, i32* %1009, align 4
  %1014 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1015 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1014, i32 0, i32 3
  %1016 = load i32, i32* %1015, align 4
  %1017 = lshr i32 %1016, 20
  %1018 = load %union.rec*, %union.rec** %g, align 8
  %1019 = bitcast %union.rec* %1018 to %struct.word_type*
  %1020 = getelementptr inbounds %struct.word_type, %struct.word_type* %1019, i32 0, i32 1
  %1021 = bitcast %union.FIRST_UNION* %1020 to %struct.FILE_POS*
  %1022 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1021, i32 0, i32 3
  %1023 = load i32, i32* %1022, align 4
  %1024 = and i32 %1017, 4095
  %1025 = shl i32 %1024, 20
  %1026 = and i32 %1023, 1048575
  %1027 = or i32 %1026, %1025
  store i32 %1027, i32* %1022, align 4
  %1028 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1029 = zext i8 %1028 to i32
  store i32 %1029, i32* @zz_size, align 4
  %1030 = sext i32 %1029 to i64
  %1031 = icmp uge i64 %1030, 265
  br i1 %1031, label %1032, label %1035

; <label>:1032                                    ; preds = %956
  %1033 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1034 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %1033)
  br label %1060

; <label>:1035                                    ; preds = %956
  %1036 = load i32, i32* @zz_size, align 4
  %1037 = sext i32 %1036 to i64
  %1038 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1037
  %1039 = load %union.rec*, %union.rec** %1038, align 8
  %1040 = icmp eq %union.rec* %1039, null
  br i1 %1040, label %1041, label %1045

; <label>:1041                                    ; preds = %1035
  %1042 = load i32, i32* @zz_size, align 4
  %1043 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1044 = call %union.rec* @GetMemory(i32 %1042, %struct.FILE_POS* %1043)
  store %union.rec* %1044, %union.rec** @zz_hold, align 8
  br label %1059

; <label>:1045                                    ; preds = %1035
  %1046 = load i32, i32* @zz_size, align 4
  %1047 = sext i32 %1046 to i64
  %1048 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1047
  %1049 = load %union.rec*, %union.rec** %1048, align 8
  store %union.rec* %1049, %union.rec** @zz_hold, align 8
  store %union.rec* %1049, %union.rec** @zz_hold, align 8
  %1050 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1051 = bitcast %union.rec* %1050 to %struct.word_type*
  %1052 = getelementptr inbounds %struct.word_type, %struct.word_type* %1051, i32 0, i32 0
  %1053 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1052, i32 0, i64 0
  %1054 = getelementptr inbounds %struct.LIST, %struct.LIST* %1053, i32 0, i32 0
  %1055 = load %union.rec*, %union.rec** %1054, align 8
  %1056 = load i32, i32* @zz_size, align 4
  %1057 = sext i32 %1056 to i64
  %1058 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1057
  store %union.rec* %1055, %union.rec** %1058, align 8
  br label %1059

; <label>:1059                                    ; preds = %1045, %1041
  br label %1060

; <label>:1060                                    ; preds = %1059, %1032
  %1061 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1062 = bitcast %union.rec* %1061 to %struct.word_type*
  %1063 = getelementptr inbounds %struct.word_type, %struct.word_type* %1062, i32 0, i32 1
  %1064 = bitcast %union.FIRST_UNION* %1063 to %struct.anon*
  %1065 = getelementptr inbounds %struct.anon, %struct.anon* %1064, i32 0, i32 0
  store i8 0, i8* %1065, align 1
  %1066 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1067 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1068 = bitcast %union.rec* %1067 to %struct.word_type*
  %1069 = getelementptr inbounds %struct.word_type, %struct.word_type* %1068, i32 0, i32 0
  %1070 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1069, i32 0, i64 1
  %1071 = getelementptr inbounds %struct.LIST, %struct.LIST* %1070, i32 0, i32 1
  store %union.rec* %1066, %union.rec** %1071, align 8
  %1072 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1073 = bitcast %union.rec* %1072 to %struct.word_type*
  %1074 = getelementptr inbounds %struct.word_type, %struct.word_type* %1073, i32 0, i32 0
  %1075 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1074, i32 0, i64 1
  %1076 = getelementptr inbounds %struct.LIST, %struct.LIST* %1075, i32 0, i32 0
  store %union.rec* %1066, %union.rec** %1076, align 8
  %1077 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1078 = bitcast %union.rec* %1077 to %struct.word_type*
  %1079 = getelementptr inbounds %struct.word_type, %struct.word_type* %1078, i32 0, i32 0
  %1080 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1079, i32 0, i64 0
  %1081 = getelementptr inbounds %struct.LIST, %struct.LIST* %1080, i32 0, i32 1
  store %union.rec* %1066, %union.rec** %1081, align 8
  %1082 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1083 = bitcast %union.rec* %1082 to %struct.word_type*
  %1084 = getelementptr inbounds %struct.word_type, %struct.word_type* %1083, i32 0, i32 0
  %1085 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1084, i32 0, i64 0
  %1086 = getelementptr inbounds %struct.LIST, %struct.LIST* %1085, i32 0, i32 0
  store %union.rec* %1066, %union.rec** %1086, align 8
  store %union.rec* %1066, %union.rec** @xx_link, align 8
  %1087 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1087, %union.rec** @zz_res, align 8
  %1088 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1088, %union.rec** @zz_hold, align 8
  %1089 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1090 = icmp eq %union.rec* %1089, null
  br i1 %1090, label %1091, label %1093

; <label>:1091                                    ; preds = %1060
  %1092 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1141

; <label>:1093                                    ; preds = %1060
  %1094 = load %union.rec*, %union.rec** @zz_res, align 8
  %1095 = icmp eq %union.rec* %1094, null
  br i1 %1095, label %1096, label %1098

; <label>:1096                                    ; preds = %1093
  %1097 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1139

; <label>:1098                                    ; preds = %1093
  %1099 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1100 = bitcast %union.rec* %1099 to %struct.word_type*
  %1101 = getelementptr inbounds %struct.word_type, %struct.word_type* %1100, i32 0, i32 0
  %1102 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1101, i32 0, i64 0
  %1103 = getelementptr inbounds %struct.LIST, %struct.LIST* %1102, i32 0, i32 0
  %1104 = load %union.rec*, %union.rec** %1103, align 8
  store %union.rec* %1104, %union.rec** @zz_tmp, align 8
  %1105 = load %union.rec*, %union.rec** @zz_res, align 8
  %1106 = bitcast %union.rec* %1105 to %struct.word_type*
  %1107 = getelementptr inbounds %struct.word_type, %struct.word_type* %1106, i32 0, i32 0
  %1108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1107, i32 0, i64 0
  %1109 = getelementptr inbounds %struct.LIST, %struct.LIST* %1108, i32 0, i32 0
  %1110 = load %union.rec*, %union.rec** %1109, align 8
  %1111 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1112 = bitcast %union.rec* %1111 to %struct.word_type*
  %1113 = getelementptr inbounds %struct.word_type, %struct.word_type* %1112, i32 0, i32 0
  %1114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1113, i32 0, i64 0
  %1115 = getelementptr inbounds %struct.LIST, %struct.LIST* %1114, i32 0, i32 0
  store %union.rec* %1110, %union.rec** %1115, align 8
  %1116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1117 = load %union.rec*, %union.rec** @zz_res, align 8
  %1118 = bitcast %union.rec* %1117 to %struct.word_type*
  %1119 = getelementptr inbounds %struct.word_type, %struct.word_type* %1118, i32 0, i32 0
  %1120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1119, i32 0, i64 0
  %1121 = getelementptr inbounds %struct.LIST, %struct.LIST* %1120, i32 0, i32 0
  %1122 = load %union.rec*, %union.rec** %1121, align 8
  %1123 = bitcast %union.rec* %1122 to %struct.word_type*
  %1124 = getelementptr inbounds %struct.word_type, %struct.word_type* %1123, i32 0, i32 0
  %1125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1124, i32 0, i64 0
  %1126 = getelementptr inbounds %struct.LIST, %struct.LIST* %1125, i32 0, i32 1
  store %union.rec* %1116, %union.rec** %1126, align 8
  %1127 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1128 = load %union.rec*, %union.rec** @zz_res, align 8
  %1129 = bitcast %union.rec* %1128 to %struct.word_type*
  %1130 = getelementptr inbounds %struct.word_type, %struct.word_type* %1129, i32 0, i32 0
  %1131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1130, i32 0, i64 0
  %1132 = getelementptr inbounds %struct.LIST, %struct.LIST* %1131, i32 0, i32 0
  store %union.rec* %1127, %union.rec** %1132, align 8
  %1133 = load %union.rec*, %union.rec** @zz_res, align 8
  %1134 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1135 = bitcast %union.rec* %1134 to %struct.word_type*
  %1136 = getelementptr inbounds %struct.word_type, %struct.word_type* %1135, i32 0, i32 0
  %1137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1136, i32 0, i64 0
  %1138 = getelementptr inbounds %struct.LIST, %struct.LIST* %1137, i32 0, i32 1
  store %union.rec* %1133, %union.rec** %1138, align 8
  br label %1139

; <label>:1139                                    ; preds = %1098, %1096
  %1140 = phi %union.rec* [ %1097, %1096 ], [ %1133, %1098 ]
  br label %1141

; <label>:1141                                    ; preds = %1139, %1091
  %1142 = phi %union.rec* [ %1092, %1091 ], [ %1140, %1139 ]
  %1143 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1143, %union.rec** @zz_res, align 8
  %1144 = load %union.rec*, %union.rec** %g, align 8
  store %union.rec* %1144, %union.rec** @zz_hold, align 8
  %1145 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1146 = icmp eq %union.rec* %1145, null
  br i1 %1146, label %1147, label %1149

; <label>:1147                                    ; preds = %1141
  %1148 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1197

; <label>:1149                                    ; preds = %1141
  %1150 = load %union.rec*, %union.rec** @zz_res, align 8
  %1151 = icmp eq %union.rec* %1150, null
  br i1 %1151, label %1152, label %1154

; <label>:1152                                    ; preds = %1149
  %1153 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1195

; <label>:1154                                    ; preds = %1149
  %1155 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1156 = bitcast %union.rec* %1155 to %struct.word_type*
  %1157 = getelementptr inbounds %struct.word_type, %struct.word_type* %1156, i32 0, i32 0
  %1158 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1157, i32 0, i64 1
  %1159 = getelementptr inbounds %struct.LIST, %struct.LIST* %1158, i32 0, i32 0
  %1160 = load %union.rec*, %union.rec** %1159, align 8
  store %union.rec* %1160, %union.rec** @zz_tmp, align 8
  %1161 = load %union.rec*, %union.rec** @zz_res, align 8
  %1162 = bitcast %union.rec* %1161 to %struct.word_type*
  %1163 = getelementptr inbounds %struct.word_type, %struct.word_type* %1162, i32 0, i32 0
  %1164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1163, i32 0, i64 1
  %1165 = getelementptr inbounds %struct.LIST, %struct.LIST* %1164, i32 0, i32 0
  %1166 = load %union.rec*, %union.rec** %1165, align 8
  %1167 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1168 = bitcast %union.rec* %1167 to %struct.word_type*
  %1169 = getelementptr inbounds %struct.word_type, %struct.word_type* %1168, i32 0, i32 0
  %1170 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1169, i32 0, i64 1
  %1171 = getelementptr inbounds %struct.LIST, %struct.LIST* %1170, i32 0, i32 0
  store %union.rec* %1166, %union.rec** %1171, align 8
  %1172 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1173 = load %union.rec*, %union.rec** @zz_res, align 8
  %1174 = bitcast %union.rec* %1173 to %struct.word_type*
  %1175 = getelementptr inbounds %struct.word_type, %struct.word_type* %1174, i32 0, i32 0
  %1176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1175, i32 0, i64 1
  %1177 = getelementptr inbounds %struct.LIST, %struct.LIST* %1176, i32 0, i32 0
  %1178 = load %union.rec*, %union.rec** %1177, align 8
  %1179 = bitcast %union.rec* %1178 to %struct.word_type*
  %1180 = getelementptr inbounds %struct.word_type, %struct.word_type* %1179, i32 0, i32 0
  %1181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1180, i32 0, i64 1
  %1182 = getelementptr inbounds %struct.LIST, %struct.LIST* %1181, i32 0, i32 1
  store %union.rec* %1172, %union.rec** %1182, align 8
  %1183 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1184 = load %union.rec*, %union.rec** @zz_res, align 8
  %1185 = bitcast %union.rec* %1184 to %struct.word_type*
  %1186 = getelementptr inbounds %struct.word_type, %struct.word_type* %1185, i32 0, i32 0
  %1187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1186, i32 0, i64 1
  %1188 = getelementptr inbounds %struct.LIST, %struct.LIST* %1187, i32 0, i32 0
  store %union.rec* %1183, %union.rec** %1188, align 8
  %1189 = load %union.rec*, %union.rec** @zz_res, align 8
  %1190 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1191 = bitcast %union.rec* %1190 to %struct.word_type*
  %1192 = getelementptr inbounds %struct.word_type, %struct.word_type* %1191, i32 0, i32 0
  %1193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1192, i32 0, i64 1
  %1194 = getelementptr inbounds %struct.LIST, %struct.LIST* %1193, i32 0, i32 1
  store %union.rec* %1189, %union.rec** %1194, align 8
  br label %1195

; <label>:1195                                    ; preds = %1154, %1152
  %1196 = phi %union.rec* [ %1153, %1152 ], [ %1189, %1154 ]
  br label %1197

; <label>:1197                                    ; preds = %1195, %1147
  %1198 = phi %union.rec* [ %1148, %1147 ], [ %1196, %1195 ]
  br label %1199

; <label>:1199                                    ; preds = %1197, %910
  %1200 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %1201 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1202 = call %union.rec* @MakeWord(i32 11, i8* %1200, %struct.FILE_POS* %1201)
  store %union.rec* %1202, %union.rec** %z, align 8
  %1203 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1204 = zext i8 %1203 to i32
  store i32 %1204, i32* @zz_size, align 4
  %1205 = sext i32 %1204 to i64
  %1206 = icmp uge i64 %1205, 265
  br i1 %1206, label %1207, label %1210

; <label>:1207                                    ; preds = %1199
  %1208 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1209 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %1208)
  br label %1235

; <label>:1210                                    ; preds = %1199
  %1211 = load i32, i32* @zz_size, align 4
  %1212 = sext i32 %1211 to i64
  %1213 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1212
  %1214 = load %union.rec*, %union.rec** %1213, align 8
  %1215 = icmp eq %union.rec* %1214, null
  br i1 %1215, label %1216, label %1220

; <label>:1216                                    ; preds = %1210
  %1217 = load i32, i32* @zz_size, align 4
  %1218 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1219 = call %union.rec* @GetMemory(i32 %1217, %struct.FILE_POS* %1218)
  store %union.rec* %1219, %union.rec** @zz_hold, align 8
  br label %1234

; <label>:1220                                    ; preds = %1210
  %1221 = load i32, i32* @zz_size, align 4
  %1222 = sext i32 %1221 to i64
  %1223 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1222
  %1224 = load %union.rec*, %union.rec** %1223, align 8
  store %union.rec* %1224, %union.rec** @zz_hold, align 8
  store %union.rec* %1224, %union.rec** @zz_hold, align 8
  %1225 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1226 = bitcast %union.rec* %1225 to %struct.word_type*
  %1227 = getelementptr inbounds %struct.word_type, %struct.word_type* %1226, i32 0, i32 0
  %1228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1227, i32 0, i64 0
  %1229 = getelementptr inbounds %struct.LIST, %struct.LIST* %1228, i32 0, i32 0
  %1230 = load %union.rec*, %union.rec** %1229, align 8
  %1231 = load i32, i32* @zz_size, align 4
  %1232 = sext i32 %1231 to i64
  %1233 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1232
  store %union.rec* %1230, %union.rec** %1233, align 8
  br label %1234

; <label>:1234                                    ; preds = %1220, %1216
  br label %1235

; <label>:1235                                    ; preds = %1234, %1207
  %1236 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1237 = bitcast %union.rec* %1236 to %struct.word_type*
  %1238 = getelementptr inbounds %struct.word_type, %struct.word_type* %1237, i32 0, i32 1
  %1239 = bitcast %union.FIRST_UNION* %1238 to %struct.anon*
  %1240 = getelementptr inbounds %struct.anon, %struct.anon* %1239, i32 0, i32 0
  store i8 0, i8* %1240, align 1
  %1241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1243 = bitcast %union.rec* %1242 to %struct.word_type*
  %1244 = getelementptr inbounds %struct.word_type, %struct.word_type* %1243, i32 0, i32 0
  %1245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1244, i32 0, i64 1
  %1246 = getelementptr inbounds %struct.LIST, %struct.LIST* %1245, i32 0, i32 1
  store %union.rec* %1241, %union.rec** %1246, align 8
  %1247 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1248 = bitcast %union.rec* %1247 to %struct.word_type*
  %1249 = getelementptr inbounds %struct.word_type, %struct.word_type* %1248, i32 0, i32 0
  %1250 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1249, i32 0, i64 1
  %1251 = getelementptr inbounds %struct.LIST, %struct.LIST* %1250, i32 0, i32 0
  store %union.rec* %1241, %union.rec** %1251, align 8
  %1252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1253 = bitcast %union.rec* %1252 to %struct.word_type*
  %1254 = getelementptr inbounds %struct.word_type, %struct.word_type* %1253, i32 0, i32 0
  %1255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1254, i32 0, i64 0
  %1256 = getelementptr inbounds %struct.LIST, %struct.LIST* %1255, i32 0, i32 1
  store %union.rec* %1241, %union.rec** %1256, align 8
  %1257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1258 = bitcast %union.rec* %1257 to %struct.word_type*
  %1259 = getelementptr inbounds %struct.word_type, %struct.word_type* %1258, i32 0, i32 0
  %1260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1259, i32 0, i64 0
  %1261 = getelementptr inbounds %struct.LIST, %struct.LIST* %1260, i32 0, i32 0
  store %union.rec* %1241, %union.rec** %1261, align 8
  store %union.rec* %1241, %union.rec** @xx_link, align 8
  %1262 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1262, %union.rec** @zz_res, align 8
  %1263 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1263, %union.rec** @zz_hold, align 8
  %1264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1265 = icmp eq %union.rec* %1264, null
  br i1 %1265, label %1266, label %1268

; <label>:1266                                    ; preds = %1235
  %1267 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1316

; <label>:1268                                    ; preds = %1235
  %1269 = load %union.rec*, %union.rec** @zz_res, align 8
  %1270 = icmp eq %union.rec* %1269, null
  br i1 %1270, label %1271, label %1273

; <label>:1271                                    ; preds = %1268
  %1272 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1314

; <label>:1273                                    ; preds = %1268
  %1274 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1275 = bitcast %union.rec* %1274 to %struct.word_type*
  %1276 = getelementptr inbounds %struct.word_type, %struct.word_type* %1275, i32 0, i32 0
  %1277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1276, i32 0, i64 0
  %1278 = getelementptr inbounds %struct.LIST, %struct.LIST* %1277, i32 0, i32 0
  %1279 = load %union.rec*, %union.rec** %1278, align 8
  store %union.rec* %1279, %union.rec** @zz_tmp, align 8
  %1280 = load %union.rec*, %union.rec** @zz_res, align 8
  %1281 = bitcast %union.rec* %1280 to %struct.word_type*
  %1282 = getelementptr inbounds %struct.word_type, %struct.word_type* %1281, i32 0, i32 0
  %1283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1282, i32 0, i64 0
  %1284 = getelementptr inbounds %struct.LIST, %struct.LIST* %1283, i32 0, i32 0
  %1285 = load %union.rec*, %union.rec** %1284, align 8
  %1286 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1287 = bitcast %union.rec* %1286 to %struct.word_type*
  %1288 = getelementptr inbounds %struct.word_type, %struct.word_type* %1287, i32 0, i32 0
  %1289 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1288, i32 0, i64 0
  %1290 = getelementptr inbounds %struct.LIST, %struct.LIST* %1289, i32 0, i32 0
  store %union.rec* %1285, %union.rec** %1290, align 8
  %1291 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1292 = load %union.rec*, %union.rec** @zz_res, align 8
  %1293 = bitcast %union.rec* %1292 to %struct.word_type*
  %1294 = getelementptr inbounds %struct.word_type, %struct.word_type* %1293, i32 0, i32 0
  %1295 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1294, i32 0, i64 0
  %1296 = getelementptr inbounds %struct.LIST, %struct.LIST* %1295, i32 0, i32 0
  %1297 = load %union.rec*, %union.rec** %1296, align 8
  %1298 = bitcast %union.rec* %1297 to %struct.word_type*
  %1299 = getelementptr inbounds %struct.word_type, %struct.word_type* %1298, i32 0, i32 0
  %1300 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1299, i32 0, i64 0
  %1301 = getelementptr inbounds %struct.LIST, %struct.LIST* %1300, i32 0, i32 1
  store %union.rec* %1291, %union.rec** %1301, align 8
  %1302 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1303 = load %union.rec*, %union.rec** @zz_res, align 8
  %1304 = bitcast %union.rec* %1303 to %struct.word_type*
  %1305 = getelementptr inbounds %struct.word_type, %struct.word_type* %1304, i32 0, i32 0
  %1306 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1305, i32 0, i64 0
  %1307 = getelementptr inbounds %struct.LIST, %struct.LIST* %1306, i32 0, i32 0
  store %union.rec* %1302, %union.rec** %1307, align 8
  %1308 = load %union.rec*, %union.rec** @zz_res, align 8
  %1309 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1310 = bitcast %union.rec* %1309 to %struct.word_type*
  %1311 = getelementptr inbounds %struct.word_type, %struct.word_type* %1310, i32 0, i32 0
  %1312 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1311, i32 0, i64 0
  %1313 = getelementptr inbounds %struct.LIST, %struct.LIST* %1312, i32 0, i32 1
  store %union.rec* %1308, %union.rec** %1313, align 8
  br label %1314

; <label>:1314                                    ; preds = %1273, %1271
  %1315 = phi %union.rec* [ %1272, %1271 ], [ %1308, %1273 ]
  br label %1316

; <label>:1316                                    ; preds = %1314, %1266
  %1317 = phi %union.rec* [ %1267, %1266 ], [ %1315, %1314 ]
  %1318 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1318, %union.rec** @zz_res, align 8
  %1319 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %1319, %union.rec** @zz_hold, align 8
  %1320 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1321 = icmp eq %union.rec* %1320, null
  br i1 %1321, label %1322, label %1324

; <label>:1322                                    ; preds = %1316
  %1323 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1372

; <label>:1324                                    ; preds = %1316
  %1325 = load %union.rec*, %union.rec** @zz_res, align 8
  %1326 = icmp eq %union.rec* %1325, null
  br i1 %1326, label %1327, label %1329

; <label>:1327                                    ; preds = %1324
  %1328 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1370

; <label>:1329                                    ; preds = %1324
  %1330 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1331 = bitcast %union.rec* %1330 to %struct.word_type*
  %1332 = getelementptr inbounds %struct.word_type, %struct.word_type* %1331, i32 0, i32 0
  %1333 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1332, i32 0, i64 1
  %1334 = getelementptr inbounds %struct.LIST, %struct.LIST* %1333, i32 0, i32 0
  %1335 = load %union.rec*, %union.rec** %1334, align 8
  store %union.rec* %1335, %union.rec** @zz_tmp, align 8
  %1336 = load %union.rec*, %union.rec** @zz_res, align 8
  %1337 = bitcast %union.rec* %1336 to %struct.word_type*
  %1338 = getelementptr inbounds %struct.word_type, %struct.word_type* %1337, i32 0, i32 0
  %1339 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1338, i32 0, i64 1
  %1340 = getelementptr inbounds %struct.LIST, %struct.LIST* %1339, i32 0, i32 0
  %1341 = load %union.rec*, %union.rec** %1340, align 8
  %1342 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1343 = bitcast %union.rec* %1342 to %struct.word_type*
  %1344 = getelementptr inbounds %struct.word_type, %struct.word_type* %1343, i32 0, i32 0
  %1345 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1344, i32 0, i64 1
  %1346 = getelementptr inbounds %struct.LIST, %struct.LIST* %1345, i32 0, i32 0
  store %union.rec* %1341, %union.rec** %1346, align 8
  %1347 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1348 = load %union.rec*, %union.rec** @zz_res, align 8
  %1349 = bitcast %union.rec* %1348 to %struct.word_type*
  %1350 = getelementptr inbounds %struct.word_type, %struct.word_type* %1349, i32 0, i32 0
  %1351 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1350, i32 0, i64 1
  %1352 = getelementptr inbounds %struct.LIST, %struct.LIST* %1351, i32 0, i32 0
  %1353 = load %union.rec*, %union.rec** %1352, align 8
  %1354 = bitcast %union.rec* %1353 to %struct.word_type*
  %1355 = getelementptr inbounds %struct.word_type, %struct.word_type* %1354, i32 0, i32 0
  %1356 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1355, i32 0, i64 1
  %1357 = getelementptr inbounds %struct.LIST, %struct.LIST* %1356, i32 0, i32 1
  store %union.rec* %1347, %union.rec** %1357, align 8
  %1358 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1359 = load %union.rec*, %union.rec** @zz_res, align 8
  %1360 = bitcast %union.rec* %1359 to %struct.word_type*
  %1361 = getelementptr inbounds %struct.word_type, %struct.word_type* %1360, i32 0, i32 0
  %1362 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1361, i32 0, i64 1
  %1363 = getelementptr inbounds %struct.LIST, %struct.LIST* %1362, i32 0, i32 0
  store %union.rec* %1358, %union.rec** %1363, align 8
  %1364 = load %union.rec*, %union.rec** @zz_res, align 8
  %1365 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1366 = bitcast %union.rec* %1365 to %struct.word_type*
  %1367 = getelementptr inbounds %struct.word_type, %struct.word_type* %1366, i32 0, i32 0
  %1368 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1367, i32 0, i64 1
  %1369 = getelementptr inbounds %struct.LIST, %struct.LIST* %1368, i32 0, i32 1
  store %union.rec* %1364, %union.rec** %1369, align 8
  br label %1370

; <label>:1370                                    ; preds = %1329, %1327
  %1371 = phi %union.rec* [ %1328, %1327 ], [ %1364, %1329 ]
  br label %1372

; <label>:1372                                    ; preds = %1370, %1322
  %1373 = phi %union.rec* [ %1323, %1322 ], [ %1371, %1370 ]
  store i32 0, i32* %bp, align 4
  br label %1374

; <label>:1374                                    ; preds = %1372, %907
  br label %1382

; <label>:1375                                    ; preds = %903
  %1376 = load i8*, i8** %p, align 8
  %1377 = load i8, i8* %1376, align 1
  %1378 = load i32, i32* %bp, align 4
  %1379 = add nsw i32 %1378, 1
  store i32 %1379, i32* %bp, align 4
  %1380 = sext i32 %1378 to i64
  %1381 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %1380
  store i8 %1377, i8* %1381, align 1
  br label %1382

; <label>:1382                                    ; preds = %1375, %1374
  br label %1383

; <label>:1383                                    ; preds = %1382
  %1384 = load i8*, i8** %p, align 8
  %1385 = getelementptr inbounds i8, i8* %1384, i32 1
  store i8* %1385, i8** %p, align 8
  br label %898

; <label>:1386                                    ; preds = %898
  %1387 = load i32, i32* %bp, align 4
  %1388 = icmp sgt i32 %1387, 0
  br i1 %1388, label %1389, label %1568

; <label>:1389                                    ; preds = %1386
  %1390 = load i32, i32* %bp, align 4
  %1391 = add nsw i32 %1390, 1
  store i32 %1391, i32* %bp, align 4
  %1392 = sext i32 %1390 to i64
  %1393 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %1392
  store i8 0, i8* %1393, align 1
  %1394 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %1395 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1396 = call %union.rec* @MakeWord(i32 11, i8* %1394, %struct.FILE_POS* %1395)
  store %union.rec* %1396, %union.rec** %z, align 8
  %1397 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1398 = zext i8 %1397 to i32
  store i32 %1398, i32* @zz_size, align 4
  %1399 = sext i32 %1398 to i64
  %1400 = icmp uge i64 %1399, 265
  br i1 %1400, label %1401, label %1404

; <label>:1401                                    ; preds = %1389
  %1402 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1403 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %1402)
  br label %1429

; <label>:1404                                    ; preds = %1389
  %1405 = load i32, i32* @zz_size, align 4
  %1406 = sext i32 %1405 to i64
  %1407 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1406
  %1408 = load %union.rec*, %union.rec** %1407, align 8
  %1409 = icmp eq %union.rec* %1408, null
  br i1 %1409, label %1410, label %1414

; <label>:1410                                    ; preds = %1404
  %1411 = load i32, i32* @zz_size, align 4
  %1412 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1413 = call %union.rec* @GetMemory(i32 %1411, %struct.FILE_POS* %1412)
  store %union.rec* %1413, %union.rec** @zz_hold, align 8
  br label %1428

; <label>:1414                                    ; preds = %1404
  %1415 = load i32, i32* @zz_size, align 4
  %1416 = sext i32 %1415 to i64
  %1417 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1416
  %1418 = load %union.rec*, %union.rec** %1417, align 8
  store %union.rec* %1418, %union.rec** @zz_hold, align 8
  store %union.rec* %1418, %union.rec** @zz_hold, align 8
  %1419 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1420 = bitcast %union.rec* %1419 to %struct.word_type*
  %1421 = getelementptr inbounds %struct.word_type, %struct.word_type* %1420, i32 0, i32 0
  %1422 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1421, i32 0, i64 0
  %1423 = getelementptr inbounds %struct.LIST, %struct.LIST* %1422, i32 0, i32 0
  %1424 = load %union.rec*, %union.rec** %1423, align 8
  %1425 = load i32, i32* @zz_size, align 4
  %1426 = sext i32 %1425 to i64
  %1427 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1426
  store %union.rec* %1424, %union.rec** %1427, align 8
  br label %1428

; <label>:1428                                    ; preds = %1414, %1410
  br label %1429

; <label>:1429                                    ; preds = %1428, %1401
  %1430 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1431 = bitcast %union.rec* %1430 to %struct.word_type*
  %1432 = getelementptr inbounds %struct.word_type, %struct.word_type* %1431, i32 0, i32 1
  %1433 = bitcast %union.FIRST_UNION* %1432 to %struct.anon*
  %1434 = getelementptr inbounds %struct.anon, %struct.anon* %1433, i32 0, i32 0
  store i8 0, i8* %1434, align 1
  %1435 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1436 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1437 = bitcast %union.rec* %1436 to %struct.word_type*
  %1438 = getelementptr inbounds %struct.word_type, %struct.word_type* %1437, i32 0, i32 0
  %1439 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1438, i32 0, i64 1
  %1440 = getelementptr inbounds %struct.LIST, %struct.LIST* %1439, i32 0, i32 1
  store %union.rec* %1435, %union.rec** %1440, align 8
  %1441 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1442 = bitcast %union.rec* %1441 to %struct.word_type*
  %1443 = getelementptr inbounds %struct.word_type, %struct.word_type* %1442, i32 0, i32 0
  %1444 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1443, i32 0, i64 1
  %1445 = getelementptr inbounds %struct.LIST, %struct.LIST* %1444, i32 0, i32 0
  store %union.rec* %1435, %union.rec** %1445, align 8
  %1446 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1447 = bitcast %union.rec* %1446 to %struct.word_type*
  %1448 = getelementptr inbounds %struct.word_type, %struct.word_type* %1447, i32 0, i32 0
  %1449 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1448, i32 0, i64 0
  %1450 = getelementptr inbounds %struct.LIST, %struct.LIST* %1449, i32 0, i32 1
  store %union.rec* %1435, %union.rec** %1450, align 8
  %1451 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1452 = bitcast %union.rec* %1451 to %struct.word_type*
  %1453 = getelementptr inbounds %struct.word_type, %struct.word_type* %1452, i32 0, i32 0
  %1454 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1453, i32 0, i64 0
  %1455 = getelementptr inbounds %struct.LIST, %struct.LIST* %1454, i32 0, i32 0
  store %union.rec* %1435, %union.rec** %1455, align 8
  store %union.rec* %1435, %union.rec** @xx_link, align 8
  %1456 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1456, %union.rec** @zz_res, align 8
  %1457 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1457, %union.rec** @zz_hold, align 8
  %1458 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1459 = icmp eq %union.rec* %1458, null
  br i1 %1459, label %1460, label %1462

; <label>:1460                                    ; preds = %1429
  %1461 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1510

; <label>:1462                                    ; preds = %1429
  %1463 = load %union.rec*, %union.rec** @zz_res, align 8
  %1464 = icmp eq %union.rec* %1463, null
  br i1 %1464, label %1465, label %1467

; <label>:1465                                    ; preds = %1462
  %1466 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1508

; <label>:1467                                    ; preds = %1462
  %1468 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1469 = bitcast %union.rec* %1468 to %struct.word_type*
  %1470 = getelementptr inbounds %struct.word_type, %struct.word_type* %1469, i32 0, i32 0
  %1471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1470, i32 0, i64 0
  %1472 = getelementptr inbounds %struct.LIST, %struct.LIST* %1471, i32 0, i32 0
  %1473 = load %union.rec*, %union.rec** %1472, align 8
  store %union.rec* %1473, %union.rec** @zz_tmp, align 8
  %1474 = load %union.rec*, %union.rec** @zz_res, align 8
  %1475 = bitcast %union.rec* %1474 to %struct.word_type*
  %1476 = getelementptr inbounds %struct.word_type, %struct.word_type* %1475, i32 0, i32 0
  %1477 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1476, i32 0, i64 0
  %1478 = getelementptr inbounds %struct.LIST, %struct.LIST* %1477, i32 0, i32 0
  %1479 = load %union.rec*, %union.rec** %1478, align 8
  %1480 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1481 = bitcast %union.rec* %1480 to %struct.word_type*
  %1482 = getelementptr inbounds %struct.word_type, %struct.word_type* %1481, i32 0, i32 0
  %1483 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1482, i32 0, i64 0
  %1484 = getelementptr inbounds %struct.LIST, %struct.LIST* %1483, i32 0, i32 0
  store %union.rec* %1479, %union.rec** %1484, align 8
  %1485 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1486 = load %union.rec*, %union.rec** @zz_res, align 8
  %1487 = bitcast %union.rec* %1486 to %struct.word_type*
  %1488 = getelementptr inbounds %struct.word_type, %struct.word_type* %1487, i32 0, i32 0
  %1489 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1488, i32 0, i64 0
  %1490 = getelementptr inbounds %struct.LIST, %struct.LIST* %1489, i32 0, i32 0
  %1491 = load %union.rec*, %union.rec** %1490, align 8
  %1492 = bitcast %union.rec* %1491 to %struct.word_type*
  %1493 = getelementptr inbounds %struct.word_type, %struct.word_type* %1492, i32 0, i32 0
  %1494 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1493, i32 0, i64 0
  %1495 = getelementptr inbounds %struct.LIST, %struct.LIST* %1494, i32 0, i32 1
  store %union.rec* %1485, %union.rec** %1495, align 8
  %1496 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1497 = load %union.rec*, %union.rec** @zz_res, align 8
  %1498 = bitcast %union.rec* %1497 to %struct.word_type*
  %1499 = getelementptr inbounds %struct.word_type, %struct.word_type* %1498, i32 0, i32 0
  %1500 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1499, i32 0, i64 0
  %1501 = getelementptr inbounds %struct.LIST, %struct.LIST* %1500, i32 0, i32 0
  store %union.rec* %1496, %union.rec** %1501, align 8
  %1502 = load %union.rec*, %union.rec** @zz_res, align 8
  %1503 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1504 = bitcast %union.rec* %1503 to %struct.word_type*
  %1505 = getelementptr inbounds %struct.word_type, %struct.word_type* %1504, i32 0, i32 0
  %1506 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1505, i32 0, i64 0
  %1507 = getelementptr inbounds %struct.LIST, %struct.LIST* %1506, i32 0, i32 1
  store %union.rec* %1502, %union.rec** %1507, align 8
  br label %1508

; <label>:1508                                    ; preds = %1467, %1465
  %1509 = phi %union.rec* [ %1466, %1465 ], [ %1502, %1467 ]
  br label %1510

; <label>:1510                                    ; preds = %1508, %1460
  %1511 = phi %union.rec* [ %1461, %1460 ], [ %1509, %1508 ]
  %1512 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1512, %union.rec** @zz_res, align 8
  %1513 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %1513, %union.rec** @zz_hold, align 8
  %1514 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1515 = icmp eq %union.rec* %1514, null
  br i1 %1515, label %1516, label %1518

; <label>:1516                                    ; preds = %1510
  %1517 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1566

; <label>:1518                                    ; preds = %1510
  %1519 = load %union.rec*, %union.rec** @zz_res, align 8
  %1520 = icmp eq %union.rec* %1519, null
  br i1 %1520, label %1521, label %1523

; <label>:1521                                    ; preds = %1518
  %1522 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1564

; <label>:1523                                    ; preds = %1518
  %1524 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1525 = bitcast %union.rec* %1524 to %struct.word_type*
  %1526 = getelementptr inbounds %struct.word_type, %struct.word_type* %1525, i32 0, i32 0
  %1527 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1526, i32 0, i64 1
  %1528 = getelementptr inbounds %struct.LIST, %struct.LIST* %1527, i32 0, i32 0
  %1529 = load %union.rec*, %union.rec** %1528, align 8
  store %union.rec* %1529, %union.rec** @zz_tmp, align 8
  %1530 = load %union.rec*, %union.rec** @zz_res, align 8
  %1531 = bitcast %union.rec* %1530 to %struct.word_type*
  %1532 = getelementptr inbounds %struct.word_type, %struct.word_type* %1531, i32 0, i32 0
  %1533 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1532, i32 0, i64 1
  %1534 = getelementptr inbounds %struct.LIST, %struct.LIST* %1533, i32 0, i32 0
  %1535 = load %union.rec*, %union.rec** %1534, align 8
  %1536 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1537 = bitcast %union.rec* %1536 to %struct.word_type*
  %1538 = getelementptr inbounds %struct.word_type, %struct.word_type* %1537, i32 0, i32 0
  %1539 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1538, i32 0, i64 1
  %1540 = getelementptr inbounds %struct.LIST, %struct.LIST* %1539, i32 0, i32 0
  store %union.rec* %1535, %union.rec** %1540, align 8
  %1541 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1542 = load %union.rec*, %union.rec** @zz_res, align 8
  %1543 = bitcast %union.rec* %1542 to %struct.word_type*
  %1544 = getelementptr inbounds %struct.word_type, %struct.word_type* %1543, i32 0, i32 0
  %1545 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1544, i32 0, i64 1
  %1546 = getelementptr inbounds %struct.LIST, %struct.LIST* %1545, i32 0, i32 0
  %1547 = load %union.rec*, %union.rec** %1546, align 8
  %1548 = bitcast %union.rec* %1547 to %struct.word_type*
  %1549 = getelementptr inbounds %struct.word_type, %struct.word_type* %1548, i32 0, i32 0
  %1550 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1549, i32 0, i64 1
  %1551 = getelementptr inbounds %struct.LIST, %struct.LIST* %1550, i32 0, i32 1
  store %union.rec* %1541, %union.rec** %1551, align 8
  %1552 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1553 = load %union.rec*, %union.rec** @zz_res, align 8
  %1554 = bitcast %union.rec* %1553 to %struct.word_type*
  %1555 = getelementptr inbounds %struct.word_type, %struct.word_type* %1554, i32 0, i32 0
  %1556 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1555, i32 0, i64 1
  %1557 = getelementptr inbounds %struct.LIST, %struct.LIST* %1556, i32 0, i32 0
  store %union.rec* %1552, %union.rec** %1557, align 8
  %1558 = load %union.rec*, %union.rec** @zz_res, align 8
  %1559 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1560 = bitcast %union.rec* %1559 to %struct.word_type*
  %1561 = getelementptr inbounds %struct.word_type, %struct.word_type* %1560, i32 0, i32 0
  %1562 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1561, i32 0, i64 1
  %1563 = getelementptr inbounds %struct.LIST, %struct.LIST* %1562, i32 0, i32 1
  store %union.rec* %1558, %union.rec** %1563, align 8
  br label %1564

; <label>:1564                                    ; preds = %1523, %1521
  %1565 = phi %union.rec* [ %1522, %1521 ], [ %1558, %1523 ]
  br label %1566

; <label>:1566                                    ; preds = %1564, %1516
  %1567 = phi %union.rec* [ %1517, %1516 ], [ %1565, %1564 ]
  br label %1568

; <label>:1568                                    ; preds = %1566, %1386
  %1569 = load %union.rec*, %union.rec** %y, align 8
  %1570 = bitcast %union.rec* %1569 to %struct.word_type*
  %1571 = getelementptr inbounds %struct.word_type, %struct.word_type* %1570, i32 0, i32 0
  %1572 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1571, i32 0, i64 0
  %1573 = getelementptr inbounds %struct.LIST, %struct.LIST* %1572, i32 0, i32 1
  %1574 = load %union.rec*, %union.rec** %1573, align 8
  %1575 = load %union.rec*, %union.rec** %y, align 8
  %1576 = icmp eq %union.rec* %1574, %1575
  br i1 %1576, label %1577, label %1586

; <label>:1577                                    ; preds = %1568
  %1578 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1579 = load i32, i32* %i, align 4
  %1580 = sext i32 %1579 to i64
  %1581 = load i8**, i8*** %3, align 8
  %1582 = getelementptr inbounds i8*, i8** %1581, i64 %1580
  %1583 = load i8*, i8** %1582, align 8
  %1584 = getelementptr inbounds i8, i8* %1583, i64 2
  %1585 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.65, i32 0, i32 0), i32 1, %struct.FILE_POS* %1578, i8* %1584)
  br label %1586

; <label>:1586                                    ; preds = %1577, %1568
  br label %1598

; <label>:1587                                    ; preds = %102
  store i32 1, i32* @SafeExecution, align 4
  br label %1598

; <label>:1588                                    ; preds = %102
  store i32 0, i32* @SafeExecution, align 4
  br label %1598

; <label>:1589                                    ; preds = %102
  %1590 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @PrintUsage(%struct._IO_FILE* %1590)
  %1591 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1592 = load i32, i32* %i, align 4
  %1593 = sext i32 %1592 to i64
  %1594 = load i8**, i8*** %3, align 8
  %1595 = getelementptr inbounds i8*, i8** %1594, i64 %1593
  %1596 = load i8*, i8** %1595, align 8
  %1597 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i32 0, i32 0), i32 1, %struct.FILE_POS* %1591, i8* %1596)
  br label %1598

; <label>:1598                                    ; preds = %1589, %1588, %1587, %1586, %461, %442, %434, %431, %430, %335, %324, %323, %279, %260, %225, %213, %201, %189, %174, %165, %152, %150, %141, %132, %131, %130, %129, %128, %127
  br label %1634

; <label>:1599                                    ; preds = %93
  %1600 = load i32, i32* %i, align 4
  %1601 = sext i32 %1600 to i64
  %1602 = load i8**, i8*** %3, align 8
  %1603 = getelementptr inbounds i8*, i8** %1602, i64 %1601
  %1604 = load i8*, i8** %1603, align 8
  store i8* %1604, i8** %arg, align 8
  %1605 = load i8*, i8** %arg, align 8
  %1606 = call i64 @strlen(i8* %1605) #6
  %1607 = sub i64 %1606, 3
  %1608 = trunc i64 %1607 to i32
  store i32 %1608, i32* %len, align 4
  %1609 = load i32, i32* %len, align 4
  %1610 = icmp sge i32 %1609, 0
  br i1 %1610, label %1611, label %1624

; <label>:1611                                    ; preds = %1599
  %1612 = load i32, i32* %len, align 4
  %1613 = sext i32 %1612 to i64
  %1614 = load i8*, i8** %arg, align 8
  %1615 = getelementptr inbounds i8, i8* %1614, i64 %1613
  %1616 = call i32 @strcmp(i8* %1615, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)) #6
  %1617 = icmp eq i32 %1616, 0
  br i1 %1617, label %1618, label %1624

; <label>:1618                                    ; preds = %1611
  %1619 = load i32, i32* %len, align 4
  %1620 = sext i32 %1619 to i64
  %1621 = load i8*, i8** %arg, align 8
  %1622 = getelementptr inbounds i8, i8* %1621, i64 %1620
  %1623 = call i8* @strcpy(i8* %1622, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)) #5
  br label %1624

; <label>:1624                                    ; preds = %1618, %1611, %1599
  %1625 = load i32, i32* %i, align 4
  %1626 = sext i32 %1625 to i64
  %1627 = load i8**, i8*** %3, align 8
  %1628 = getelementptr inbounds i8*, i8** %1627, i64 %1626
  %1629 = load i8*, i8** %1628, align 8
  %1630 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1631 = call zeroext i16 @DefineFile(i8* %1629, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %struct.FILE_POS* %1630, i32 0, i32 0)
  %1632 = load i32, i32* %source_file_count, align 4
  %1633 = add nsw i32 %1632, 1
  store i32 %1633, i32* %source_file_count, align 4
  br label %1634

; <label>:1634                                    ; preds = %1624, %1598
  br label %1635

; <label>:1635                                    ; preds = %1634
  %1636 = load i32, i32* %i, align 4
  %1637 = add nsw i32 %1636, 1
  store i32 %1637, i32* %i, align 4
  br label %89

; <label>:1638                                    ; preds = %89
  %1639 = load i32, i32* @UseCollate, align 4
  %1640 = icmp ne i32 %1639, 0
  br i1 %1640, label %1641, label %1648

; <label>:1641                                    ; preds = %1638
  %1642 = call i8* @setlocale(i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)) #5
  %1643 = icmp ne i8* %1642, null
  br i1 %1643, label %1647, label %1644

; <label>:1644                                    ; preds = %1641
  %1645 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1646 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.67, i32 0, i32 0), i32 2, %struct.FILE_POS* %1645)
  br label %1647

; <label>:1647                                    ; preds = %1644, %1641
  br label %1648

; <label>:1648                                    ; preds = %1647, %1638
  %1649 = load i8*, i8** %outfile, align 8
  %1650 = call i32 @strcmp(i8* %1649, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)) #6
  %1651 = icmp eq i32 %1650, 0
  br i1 %1651, label %1652, label %1654

; <label>:1652                                    ; preds = %1648
  %1653 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %1653, %struct._IO_FILE** %out_fp, align 8
  br label %1669

; <label>:1654                                    ; preds = %1648
  %1655 = load i8*, i8** %outfile, align 8
  %1656 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1657 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1656, i32 0, i32 0
  %1658 = load i32, i32* %1657, align 4
  %1659 = icmp eq i32 %1658, 2
  %1660 = select i1 %1659, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0)
  %1661 = call %struct._IO_FILE* @fopen(i8* %1655, i8* %1660)
  store %struct._IO_FILE* %1661, %struct._IO_FILE** %out_fp, align 8
  %1662 = load %struct._IO_FILE*, %struct._IO_FILE** %out_fp, align 8
  %1663 = icmp eq %struct._IO_FILE* %1662, null
  br i1 %1663, label %1664, label %1668

; <label>:1664                                    ; preds = %1654
  %1665 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1666 = load i8*, i8** %outfile, align 8
  %1667 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.69, i32 0, i32 0), i32 1, %struct.FILE_POS* %1665, i8* %1666)
  br label %1668

; <label>:1668                                    ; preds = %1664, %1654
  br label %1669

; <label>:1669                                    ; preds = %1668, %1652
  call void @ColourInit()
  call void @LanguageInit()
  %1670 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1671 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1670, i32 0, i32 10
  %1672 = load void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)** %1671, align 8
  %1673 = load %struct._IO_FILE*, %struct._IO_FILE** %out_fp, align 8
  call void %1672(%struct._IO_FILE* %1673)
  %1674 = load i8*, i8** %lib, align 8
  %1675 = call %union.rec* @MakeWordThree(i8* %1674, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0))
  call void @AddToPath(i32 5, %union.rec* %1675)
  %1676 = load i8*, i8** %lib, align 8
  %1677 = call %union.rec* @MakeWordThree(i8* %1676, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0))
  call void @AddToPath(i32 6, %union.rec* %1677)
  %1678 = load i8*, i8** %lib, align 8
  %1679 = call %union.rec* @MakeWordThree(i8* %1678, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0))
  call void @AddToPath(i32 7, %union.rec* %1679)
  %1680 = load i8*, i8** %lib, align 8
  %1681 = call %union.rec* @MakeWordThree(i8* %1680, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0))
  call void @AddToPath(i32 4, %union.rec* %1681)
  %1682 = load i8*, i8** %lib, align 8
  %1683 = call %union.rec* @MakeWordThree(i8* %1682, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0))
  call void @AddToPath(i32 3, %union.rec* %1683)
  %1684 = load i8*, i8** %lib, align 8
  %1685 = call %union.rec* @MakeWordThree(i8* %1684, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0))
  call void @AddToPath(i32 2, %union.rec* %1685)
  %1686 = load i8*, i8** %lib, align 8
  %1687 = call %union.rec* @MakeWordThree(i8* %1686, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0))
  call void @AddToPath(i32 1, %union.rec* %1687)
  %1688 = load i32, i32* %source_file_count, align 4
  %1689 = icmp eq i32 %1688, 0
  br i1 %1689, label %1690, label %1693

; <label>:1690                                    ; preds = %1669
  %1691 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1692 = call zeroext i16 @DefineFile(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %struct.FILE_POS* %1691, i32 0, i32 0)
  br label %1693

; <label>:1693                                    ; preds = %1690, %1669
  store %union.rec* null, %union.rec** @StartSym, align 8
  %1694 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i32 0, i32 0, i32 0, i32 1, i8 zeroext 0)
  store %union.rec* %1694, %union.rec** @StartSym, align 8
  %1695 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i32 0, i32 0, i32 0, i32 1, i8 zeroext 0)
  store %union.rec* %1695, %union.rec** @GalleySym, align 8
  %1696 = call %union.rec* @load(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.75, i32 0, i32 0), i32 0, i32 0, i32 0, i32 1, i8 zeroext 0)
  store %union.rec* %1696, %union.rec** @ForceGalleySym, align 8
  %1697 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i32 0, i32 0, i32 0, i32 1, i8 zeroext 0)
  store %union.rec* %1697, %union.rec** @InputSym, align 8
  %1698 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0), i32 0, i32 0, i32 0, i32 1, i8 zeroext 0)
  store %union.rec* %1698, %union.rec** @PrintSym, align 8
  %1699 = call %union.rec* @load(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8 zeroext 0)
  store %union.rec* %1699, %union.rec** @FilterInSym, align 8
  %1700 = call %union.rec* @load(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8 zeroext 0)
  store %union.rec* %1700, %union.rec** @FilterOutSym, align 8
  %1701 = call %union.rec* @load(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8 zeroext 0)
  store %union.rec* %1701, %union.rec** @FilterErrSym, align 8
  %1702 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i32 0, i32 0, i32 1, i32 0, i8 zeroext 100)
  store %union.rec* %1702, %union.rec** @OptGallSym, align 8
  %1703 = call %union.rec* @load(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i32 53, i32 0, i32 1, i32 0, i8 zeroext 100)
  store %union.rec* %1703, %union.rec** @VerbatimSym, align 8
  %1704 = call %union.rec* @load(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i32 0, i32 0), i32 54, i32 0, i32 1, i32 0, i8 zeroext 100)
  store %union.rec* %1704, %union.rec** @RawVerbatimSym, align 8
  %1705 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i32 104, i32 0, i32 0, i32 0, i8 zeroext 1)
  %1706 = call %union.rec* @load(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i32 105, i32 0, i32 0, i32 0, i8 zeroext 2)
  %1707 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i32 82, i32 0, i32 0, i32 0, i8 zeroext 0)
  %1708 = call %union.rec* @load(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0), i32 83, i32 0, i32 0, i32 0, i8 zeroext 0)
  %1709 = call %union.rec* @load(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i32 0, i32 0), i32 84, i32 0, i32 0, i32 0, i8 zeroext 0)
  %1710 = call %union.rec* @load(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i32 85, i32 0, i32 0, i32 0, i8 zeroext 0)
  %1711 = call %union.rec* @load(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0), i32 86, i32 0, i32 0, i32 0, i8 zeroext 0)
  %1712 = call %union.rec* @load(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i32 0, i32 0), i32 87, i32 0, i32 0, i32 0, i8 zeroext 0)
  %1713 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0), i32 88, i32 0, i32 0, i32 0, i8 zeroext 0)
  %1714 = call %union.rec* @load(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0), i32 89, i32 0, i32 0, i32 0, i8 zeroext 0)
  %1715 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i32 0, i32 0), i32 90, i32 0, i32 0, i32 0, i8 zeroext 0)
  %1716 = call %union.rec* @load(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), i32 91, i32 0, i32 0, i32 0, i8 zeroext 0)
  %1717 = call %union.rec* @load(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.96, i32 0, i32 0), i32 102, i32 0, i32 0, i32 0, i8 zeroext 3)
  %1718 = call %union.rec* @load(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0), i32 103, i32 0, i32 0, i32 0, i8 zeroext 4)
  %1719 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i32 0, i32 0), i32 112, i32 0, i32 0, i32 0, i8 zeroext 0)
  %1720 = call %union.rec* @load(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i32 0, i32 0), i32 113, i32 0, i32 0, i32 0, i8 zeroext 0)
  %1721 = call %union.rec* @load(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.100, i32 0, i32 0), i32 114, i32 0, i32 0, i32 0, i8 zeroext 0)
  %1722 = call %union.rec* @load(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.101, i32 0, i32 0), i32 115, i32 0, i32 0, i32 0, i8 zeroext 0)
  %1723 = call %union.rec* @load(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.102, i32 0, i32 0), i32 116, i32 0, i32 0, i32 0, i8 zeroext 0)
  %1724 = call %union.rec* @load(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.103, i32 0, i32 0), i32 117, i32 0, i32 0, i32 0, i8 zeroext 0)
  %1725 = call %union.rec* @load(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i32 0, i32 0), i32 106, i32 0, i32 0, i32 0, i8 zeroext 0)
  %1726 = call %union.rec* @load(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.105, i32 0, i32 0), i32 107, i32 0, i32 0, i32 0, i8 zeroext 0)
  %1727 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i32 0, i32 0), i32 52, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1728 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.107, i32 0, i32 0), i32 55, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1729 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.108, i32 0, i32 0), i32 56, i32 0, i32 0, i32 0, i8 zeroext 100)
  %1730 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i32 0, i32 0), i32 58, i32 0, i32 1, i32 0, i8 zeroext 100)
  %1731 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.110, i32 0, i32 0), i32 59, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1732 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i32 0, i32 0), i32 60, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1733 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i32 0, i32 0), i32 61, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1734 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i32 0, i32 0), i32 62, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1735 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.114, i32 0, i32 0), i32 63, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1736 = call %union.rec* @load(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.115, i32 0, i32 0), i32 64, i32 0, i32 1, i32 0, i8 zeroext 100)
  %1737 = call %union.rec* @load(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.116, i32 0, i32 0), i32 65, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1738 = call %union.rec* @load(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.117, i32 0, i32 0), i32 65, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1739 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.118, i32 0, i32 0), i32 66, i32 0, i32 1, i32 0, i8 zeroext 100)
  %1740 = call %union.rec* @load(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.119, i32 0, i32 0), i32 67, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1741 = call %union.rec* @load(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.120, i32 0, i32 0), i32 68, i32 0, i32 0, i32 0, i8 zeroext 100)
  %1742 = call %union.rec* @load(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i32 0, i32 0), i32 69, i32 0, i32 0, i32 0, i8 zeroext 100)
  %1743 = call %union.rec* @load(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 70, i32 0, i32 0, i32 0, i8 zeroext 100)
  %1744 = call %union.rec* @load(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.123, i32 0, i32 0), i32 71, i32 0, i32 0, i32 0, i8 zeroext 100)
  %1745 = call %union.rec* @load(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.124, i32 0, i32 0), i32 72, i32 0, i32 0, i32 0, i8 zeroext 100)
  %1746 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.125, i32 0, i32 0), i32 73, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1747 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i32 0, i32 0), i32 74, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1748 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i32 0, i32 0), i32 75, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1749 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i32 0, i32 0), i32 76, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1750 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i32 0, i32 0), i32 77, i32 0, i32 1, i32 0, i8 zeroext 100)
  %1751 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i32 0, i32 0), i32 78, i32 0, i32 1, i32 0, i8 zeroext 100)
  %1752 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i32 0), i32 79, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1753 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.132, i32 0, i32 0), i32 80, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1754 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.133, i32 0, i32 0), i32 92, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1755 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.134, i32 0, i32 0), i32 93, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1756 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.135, i32 0, i32 0), i32 26, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1757 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.136, i32 0, i32 0), i32 27, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1758 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.137, i32 0, i32 0), i32 28, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1759 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.138, i32 0, i32 0), i32 29, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1760 = call %union.rec* @load(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.139, i32 0, i32 0), i32 20, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1761 = call %union.rec* @load(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.140, i32 0, i32 0), i32 21, i32 0, i32 0, i32 0, i8 zeroext 100)
  %1762 = call %union.rec* @load(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.141, i32 0, i32 0), i32 22, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1763 = call %union.rec* @load(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.142, i32 0, i32 0), i32 23, i32 0, i32 0, i32 0, i8 zeroext 100)
  %1764 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.143, i32 0, i32 0), i32 24, i32 0, i32 1, i32 0, i8 zeroext 100)
  %1765 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.144, i32 0, i32 0), i32 25, i32 0, i32 1, i32 0, i8 zeroext 100)
  %1766 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.145, i32 0, i32 0), i32 30, i32 0, i32 1, i32 0, i8 zeroext 100)
  %1767 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.146, i32 0, i32 0), i32 31, i32 0, i32 1, i32 0, i8 zeroext 100)
  %1768 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.147, i32 0, i32 0), i32 32, i32 0, i32 1, i32 0, i8 zeroext 100)
  %1769 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.148, i32 0, i32 0), i32 33, i32 0, i32 1, i32 0, i8 zeroext 100)
  %1770 = call %union.rec* @load(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.149, i32 0, i32 0), i32 35, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1771 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.150, i32 0, i32 0), i32 34, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1772 = call %union.rec* @load(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.151, i32 0, i32 0), i32 36, i32 0, i32 1, i32 0, i8 zeroext 100)
  %1773 = call %union.rec* @load(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.152, i32 0, i32 0), i32 37, i32 0, i32 1, i32 0, i8 zeroext 100)
  %1774 = call %union.rec* @load(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.153, i32 0, i32 0), i32 38, i32 0, i32 1, i32 0, i8 zeroext 100)
  %1775 = call %union.rec* @load(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.154, i32 0, i32 0), i32 39, i32 0, i32 1, i32 0, i8 zeroext 100)
  %1776 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.155, i32 0, i32 0), i32 40, i32 0, i32 1, i32 0, i8 zeroext 100)
  %1777 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.156, i32 0, i32 0), i32 41, i32 0, i32 1, i32 0, i8 zeroext 100)
  %1778 = call %union.rec* @load(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.157, i32 0, i32 0), i32 44, i32 0, i32 1, i32 0, i8 zeroext 100)
  %1779 = call %union.rec* @load(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.158, i32 0, i32 0), i32 42, i32 0, i32 1, i32 0, i8 zeroext 100)
  %1780 = call %union.rec* @load(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.159, i32 0, i32 0), i32 43, i32 0, i32 1, i32 0, i8 zeroext 100)
  %1781 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.160, i32 0, i32 0), i32 45, i32 0, i32 0, i32 0, i8 zeroext 100)
  %1782 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.161, i32 0, i32 0), i32 46, i32 0, i32 0, i32 0, i8 zeroext 100)
  %1783 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.162, i32 0, i32 0), i32 47, i32 0, i32 1, i32 0, i8 zeroext 100)
  %1784 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.163, i32 0, i32 0), i32 48, i32 0, i32 1, i32 0, i8 zeroext 100)
  %1785 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.164, i32 0, i32 0), i32 49, i32 0, i32 1, i32 0, i8 zeroext 100)
  %1786 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.165, i32 0, i32 0), i32 50, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1787 = call %union.rec* @load(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.166, i32 0, i32 0), i32 51, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1788 = call %union.rec* @load(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.167, i32 0, i32 0), i32 94, i32 0, i32 1, i32 0, i8 zeroext 100)
  %1789 = call %union.rec* @load(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.168, i32 0, i32 0), i32 95, i32 0, i32 1, i32 0, i8 zeroext 100)
  %1790 = call %union.rec* @load(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.169, i32 0, i32 0), i32 96, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1791 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.170, i32 0, i32 0), i32 97, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1792 = call %union.rec* @load(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.171, i32 0, i32 0), i32 98, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1793 = call %union.rec* @load(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.172, i32 0, i32 0), i32 99, i32 1, i32 1, i32 0, i8 zeroext 100)
  %1794 = call %union.rec* @load(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.173, i32 0, i32 0), i32 6, i32 1, i32 1, i32 0, i8 zeroext 101)
  %1795 = call %union.rec* @load(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.174, i32 0, i32 0), i32 7, i32 1, i32 1, i32 0, i8 zeroext 101)
  %1796 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.175, i32 0, i32 0), i32 5, i32 0, i32 0, i32 1, i8 zeroext 0)
  %1797 = call %union.rec* @load(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.176, i32 0, i32 0), i32 4, i32 0, i32 1, i32 1, i8 zeroext 100)
  %1798 = call %union.rec* @load(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.177, i32 0, i32 0), i32 19, i32 1, i32 1, i32 0, i8 zeroext 5)
  store %union.rec* %1798, %union.rec** %s, align 8
  %1799 = load %union.rec*, %union.rec** %s, align 8
  %1800 = bitcast %union.rec* %1799 to %struct.word_type*
  %1801 = getelementptr inbounds %struct.word_type, %struct.word_type* %1800, i32 0, i32 2
  %1802 = bitcast %union.SECOND_UNION* %1801 to %struct.anon.5*
  %1803 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1802, i32 0, i32 1
  %1804 = bitcast [3 x i8]* %1803 to i24*
  %1805 = load i24, i24* %1804, align 1
  %1806 = and i24 %1805, -131073
  store i24 %1806, i24* %1804, align 1
  %1807 = load %union.rec*, %union.rec** %s, align 8
  %1808 = bitcast %union.rec* %1807 to %struct.word_type*
  %1809 = getelementptr inbounds %struct.word_type, %struct.word_type* %1808, i32 0, i32 2
  %1810 = bitcast %union.SECOND_UNION* %1809 to %struct.anon.5*
  %1811 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1810, i32 0, i32 1
  %1812 = bitcast [3 x i8]* %1811 to i24*
  %1813 = load i24, i24* %1812, align 1
  %1814 = and i24 %1813, -262145
  store i24 %1814, i24* %1812, align 1
  %1815 = call %union.rec* @load(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.178, i32 0, i32 0), i32 19, i32 1, i32 1, i32 0, i8 zeroext 5)
  store %union.rec* %1815, %union.rec** %s, align 8
  %1816 = load %union.rec*, %union.rec** %s, align 8
  %1817 = bitcast %union.rec* %1816 to %struct.word_type*
  %1818 = getelementptr inbounds %struct.word_type, %struct.word_type* %1817, i32 0, i32 2
  %1819 = bitcast %union.SECOND_UNION* %1818 to %struct.anon.5*
  %1820 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1819, i32 0, i32 1
  %1821 = bitcast [3 x i8]* %1820 to i24*
  %1822 = load i24, i24* %1821, align 1
  %1823 = and i24 %1822, -131073
  %1824 = or i24 %1823, 131072
  store i24 %1824, i24* %1821, align 1
  %1825 = load %union.rec*, %union.rec** %s, align 8
  %1826 = bitcast %union.rec* %1825 to %struct.word_type*
  %1827 = getelementptr inbounds %struct.word_type, %struct.word_type* %1826, i32 0, i32 2
  %1828 = bitcast %union.SECOND_UNION* %1827 to %struct.anon.5*
  %1829 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1828, i32 0, i32 1
  %1830 = bitcast [3 x i8]* %1829 to i24*
  %1831 = load i24, i24* %1830, align 1
  %1832 = and i24 %1831, -262145
  store i24 %1832, i24* %1830, align 1
  %1833 = call %union.rec* @load(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i32 19, i32 1, i32 1, i32 0, i8 zeroext 5)
  store %union.rec* %1833, %union.rec** %s, align 8
  %1834 = load %union.rec*, %union.rec** %s, align 8
  %1835 = bitcast %union.rec* %1834 to %struct.word_type*
  %1836 = getelementptr inbounds %struct.word_type, %struct.word_type* %1835, i32 0, i32 2
  %1837 = bitcast %union.SECOND_UNION* %1836 to %struct.anon.5*
  %1838 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1837, i32 0, i32 1
  %1839 = bitcast [3 x i8]* %1838 to i24*
  %1840 = load i24, i24* %1839, align 1
  %1841 = and i24 %1840, -131073
  store i24 %1841, i24* %1839, align 1
  %1842 = load %union.rec*, %union.rec** %s, align 8
  %1843 = bitcast %union.rec* %1842 to %struct.word_type*
  %1844 = getelementptr inbounds %struct.word_type, %struct.word_type* %1843, i32 0, i32 2
  %1845 = bitcast %union.SECOND_UNION* %1844 to %struct.anon.5*
  %1846 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1845, i32 0, i32 1
  %1847 = bitcast [3 x i8]* %1846 to i24*
  %1848 = load i24, i24* %1847, align 1
  %1849 = and i24 %1848, -262145
  %1850 = or i24 %1849, 262144
  store i24 %1850, i24* %1847, align 1
  %1851 = call %union.rec* @load(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.179, i32 0, i32 0), i32 19, i32 1, i32 1, i32 0, i8 zeroext 5)
  store %union.rec* %1851, %union.rec** %s, align 8
  %1852 = load %union.rec*, %union.rec** %s, align 8
  %1853 = bitcast %union.rec* %1852 to %struct.word_type*
  %1854 = getelementptr inbounds %struct.word_type, %struct.word_type* %1853, i32 0, i32 2
  %1855 = bitcast %union.SECOND_UNION* %1854 to %struct.anon.5*
  %1856 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1855, i32 0, i32 1
  %1857 = bitcast [3 x i8]* %1856 to i24*
  %1858 = load i24, i24* %1857, align 1
  %1859 = and i24 %1858, -131073
  %1860 = or i24 %1859, 131072
  store i24 %1860, i24* %1857, align 1
  %1861 = load %union.rec*, %union.rec** %s, align 8
  %1862 = bitcast %union.rec* %1861 to %struct.word_type*
  %1863 = getelementptr inbounds %struct.word_type, %struct.word_type* %1862, i32 0, i32 2
  %1864 = bitcast %union.SECOND_UNION* %1863 to %struct.anon.5*
  %1865 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1864, i32 0, i32 1
  %1866 = bitcast [3 x i8]* %1865 to i24*
  %1867 = load i24, i24* %1866, align 1
  %1868 = and i24 %1867, -262145
  %1869 = or i24 %1868, 262144
  store i24 %1869, i24* %1866, align 1
  %1870 = call %union.rec* @load(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.180, i32 0, i32 0), i32 18, i32 1, i32 1, i32 0, i8 zeroext 6)
  store %union.rec* %1870, %union.rec** %s, align 8
  %1871 = load %union.rec*, %union.rec** %s, align 8
  %1872 = bitcast %union.rec* %1871 to %struct.word_type*
  %1873 = getelementptr inbounds %struct.word_type, %struct.word_type* %1872, i32 0, i32 2
  %1874 = bitcast %union.SECOND_UNION* %1873 to %struct.anon.5*
  %1875 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1874, i32 0, i32 1
  %1876 = bitcast [3 x i8]* %1875 to i24*
  %1877 = load i24, i24* %1876, align 1
  %1878 = and i24 %1877, -131073
  store i24 %1878, i24* %1876, align 1
  %1879 = load %union.rec*, %union.rec** %s, align 8
  %1880 = bitcast %union.rec* %1879 to %struct.word_type*
  %1881 = getelementptr inbounds %struct.word_type, %struct.word_type* %1880, i32 0, i32 2
  %1882 = bitcast %union.SECOND_UNION* %1881 to %struct.anon.5*
  %1883 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1882, i32 0, i32 1
  %1884 = bitcast [3 x i8]* %1883 to i24*
  %1885 = load i24, i24* %1884, align 1
  %1886 = and i24 %1885, -262145
  store i24 %1886, i24* %1884, align 1
  %1887 = call %union.rec* @load(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.181, i32 0, i32 0), i32 18, i32 1, i32 1, i32 0, i8 zeroext 6)
  store %union.rec* %1887, %union.rec** %s, align 8
  %1888 = load %union.rec*, %union.rec** %s, align 8
  %1889 = bitcast %union.rec* %1888 to %struct.word_type*
  %1890 = getelementptr inbounds %struct.word_type, %struct.word_type* %1889, i32 0, i32 2
  %1891 = bitcast %union.SECOND_UNION* %1890 to %struct.anon.5*
  %1892 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1891, i32 0, i32 1
  %1893 = bitcast [3 x i8]* %1892 to i24*
  %1894 = load i24, i24* %1893, align 1
  %1895 = and i24 %1894, -131073
  %1896 = or i24 %1895, 131072
  store i24 %1896, i24* %1893, align 1
  %1897 = load %union.rec*, %union.rec** %s, align 8
  %1898 = bitcast %union.rec* %1897 to %struct.word_type*
  %1899 = getelementptr inbounds %struct.word_type, %struct.word_type* %1898, i32 0, i32 2
  %1900 = bitcast %union.SECOND_UNION* %1899 to %struct.anon.5*
  %1901 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1900, i32 0, i32 1
  %1902 = bitcast [3 x i8]* %1901 to i24*
  %1903 = load i24, i24* %1902, align 1
  %1904 = and i24 %1903, -262145
  store i24 %1904, i24* %1902, align 1
  %1905 = call %union.rec* @load(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.182, i32 0, i32 0), i32 18, i32 1, i32 1, i32 0, i8 zeroext 6)
  store %union.rec* %1905, %union.rec** %s, align 8
  %1906 = load %union.rec*, %union.rec** %s, align 8
  %1907 = bitcast %union.rec* %1906 to %struct.word_type*
  %1908 = getelementptr inbounds %struct.word_type, %struct.word_type* %1907, i32 0, i32 2
  %1909 = bitcast %union.SECOND_UNION* %1908 to %struct.anon.5*
  %1910 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1909, i32 0, i32 1
  %1911 = bitcast [3 x i8]* %1910 to i24*
  %1912 = load i24, i24* %1911, align 1
  %1913 = and i24 %1912, -131073
  store i24 %1913, i24* %1911, align 1
  %1914 = load %union.rec*, %union.rec** %s, align 8
  %1915 = bitcast %union.rec* %1914 to %struct.word_type*
  %1916 = getelementptr inbounds %struct.word_type, %struct.word_type* %1915, i32 0, i32 2
  %1917 = bitcast %union.SECOND_UNION* %1916 to %struct.anon.5*
  %1918 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1917, i32 0, i32 1
  %1919 = bitcast [3 x i8]* %1918 to i24*
  %1920 = load i24, i24* %1919, align 1
  %1921 = and i24 %1920, -262145
  %1922 = or i24 %1921, 262144
  store i24 %1922, i24* %1919, align 1
  %1923 = call %union.rec* @load(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.183, i32 0, i32 0), i32 18, i32 1, i32 1, i32 0, i8 zeroext 6)
  store %union.rec* %1923, %union.rec** %s, align 8
  %1924 = load %union.rec*, %union.rec** %s, align 8
  %1925 = bitcast %union.rec* %1924 to %struct.word_type*
  %1926 = getelementptr inbounds %struct.word_type, %struct.word_type* %1925, i32 0, i32 2
  %1927 = bitcast %union.SECOND_UNION* %1926 to %struct.anon.5*
  %1928 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1927, i32 0, i32 1
  %1929 = bitcast [3 x i8]* %1928 to i24*
  %1930 = load i24, i24* %1929, align 1
  %1931 = and i24 %1930, -131073
  %1932 = or i24 %1931, 131072
  store i24 %1932, i24* %1929, align 1
  %1933 = load %union.rec*, %union.rec** %s, align 8
  %1934 = bitcast %union.rec* %1933 to %struct.word_type*
  %1935 = getelementptr inbounds %struct.word_type, %struct.word_type* %1934, i32 0, i32 2
  %1936 = bitcast %union.SECOND_UNION* %1935 to %struct.anon.5*
  %1937 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1936, i32 0, i32 1
  %1938 = bitcast [3 x i8]* %1937 to i24*
  %1939 = load i24, i24* %1938, align 1
  %1940 = and i24 %1939, -262145
  %1941 = or i24 %1940, 262144
  store i24 %1941, i24* %1938, align 1
  %1942 = call %union.rec* @load(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.184, i32 0, i32 0), i32 17, i32 1, i32 1, i32 0, i8 zeroext 7)
  store %union.rec* %1942, %union.rec** %s, align 8
  %1943 = load %union.rec*, %union.rec** %s, align 8
  %1944 = bitcast %union.rec* %1943 to %struct.word_type*
  %1945 = getelementptr inbounds %struct.word_type, %struct.word_type* %1944, i32 0, i32 2
  %1946 = bitcast %union.SECOND_UNION* %1945 to %struct.anon.5*
  %1947 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1946, i32 0, i32 1
  %1948 = bitcast [3 x i8]* %1947 to i24*
  %1949 = load i24, i24* %1948, align 1
  %1950 = and i24 %1949, -131073
  store i24 %1950, i24* %1948, align 1
  %1951 = load %union.rec*, %union.rec** %s, align 8
  %1952 = bitcast %union.rec* %1951 to %struct.word_type*
  %1953 = getelementptr inbounds %struct.word_type, %struct.word_type* %1952, i32 0, i32 2
  %1954 = bitcast %union.SECOND_UNION* %1953 to %struct.anon.5*
  %1955 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1954, i32 0, i32 1
  %1956 = bitcast [3 x i8]* %1955 to i24*
  %1957 = load i24, i24* %1956, align 1
  %1958 = and i24 %1957, -262145
  %1959 = or i24 %1958, 262144
  store i24 %1959, i24* %1956, align 1
  %1960 = call %union.rec* @load(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.185, i32 0, i32 0), i32 17, i32 1, i32 1, i32 0, i8 zeroext 7)
  store %union.rec* %1960, %union.rec** %s, align 8
  %1961 = load %union.rec*, %union.rec** %s, align 8
  %1962 = bitcast %union.rec* %1961 to %struct.word_type*
  %1963 = getelementptr inbounds %struct.word_type, %struct.word_type* %1962, i32 0, i32 2
  %1964 = bitcast %union.SECOND_UNION* %1963 to %struct.anon.5*
  %1965 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1964, i32 0, i32 1
  %1966 = bitcast [3 x i8]* %1965 to i24*
  %1967 = load i24, i24* %1966, align 1
  %1968 = and i24 %1967, -131073
  %1969 = or i24 %1968, 131072
  store i24 %1969, i24* %1966, align 1
  %1970 = load %union.rec*, %union.rec** %s, align 8
  %1971 = bitcast %union.rec* %1970 to %struct.word_type*
  %1972 = getelementptr inbounds %struct.word_type, %struct.word_type* %1971, i32 0, i32 2
  %1973 = bitcast %union.SECOND_UNION* %1972 to %struct.anon.5*
  %1974 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1973, i32 0, i32 1
  %1975 = bitcast [3 x i8]* %1974 to i24*
  %1976 = load i24, i24* %1975, align 1
  %1977 = and i24 %1976, -262145
  %1978 = or i24 %1977, 262144
  store i24 %1978, i24* %1975, align 1
  call void @FontInit()
  call void @InitTime()
  call void @FilterInit()
  call void @EnvInit()
  %1979 = load %union.rec*, %union.rec** @StartSym, align 8
  call void @PushScope(%union.rec* %1979, i32 0, i32 0)
  %1980 = call zeroext i16 @FirstFile(i32 0)
  call void @LexPush(i16 zeroext %1980, i32 0, i32 0, i32 1, i32 0)
  %1981 = load i8*, i8** %cross_db, align 8
  call void @InitParser(i8* %1981)
  %1982 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1983 = load %union.rec*, %union.rec** @StartSym, align 8
  %1984 = call %union.rec* @NewToken(i8 zeroext 104, %struct.FILE_POS* %1982, i8 zeroext 0, i8 zeroext 0, i8 zeroext 1, %union.rec* %1983)
  store %union.rec* %1984, %union.rec** %t, align 8
  %1985 = load %union.rec*, %union.rec** @StartSym, align 8
  %1986 = call %union.rec* @Parse(%union.rec** %t, %union.rec* %1985, i32 1, i32 1)
  store %union.rec* %1986, %union.rec** %res, align 8
  %1987 = load %union.rec*, %union.rec** @CommandOptions, align 8
  %1988 = call i32 @DisposeObject(%union.rec* %1987)
  %1989 = load %union.rec*, %union.rec** %res, align 8
  call void @TransferEnd(%union.rec* %1989)
  call void @TransferClose()
  %1990 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1991 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1990, i32 0, i32 17
  %1992 = load void ()*, void ()** %1991, align 8
  call void %1992()
  %1993 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1994 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1993, i32 0, i32 32
  %1995 = load void (...)*, void (...)** %1994, align 8
  call void (...) %1995()
  call void @CrossClose()
  call void @CloseFiles()
  call void @FilterScavenge(i32 1)
  %1996 = load i32, i32* %seen_wordcount, align 4
  %1997 = icmp ne i32 %1996, 0
  br i1 %1997, label %1998, label %2002

; <label>:1998                                    ; preds = %1693
  %1999 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2000 = load i32, i32* @TotalWordCount, align 4
  %2001 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.186, i32 0, i32 0), i32 2, %struct.FILE_POS* %1999, i32 %2000)
  br label %2002

; <label>:2002                                    ; preds = %1998, %1693
  call void @CheckErrorBlocks()
  %2003 = load i8*, i8** @MsgCat, align 8
  %2004 = call i32 @catclose(i8* %2003) #5
  call void @exit(i32 0) #7
  unreachable
                                                  ; No predecessors!
  %2006 = load i32, i32* %1
  ret i32 %2006
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #1

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #1

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare i8* @catopen(i8*, i32) #2

declare void @MemInit() #2

declare void @InitSym() #2

declare void @LexInit() #2

declare void @InitFiles() #2

declare void @AddToPath(i32, %union.rec*) #2

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #2

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #2

; Function Attrs: nounwind uwtable
define internal i8* @GetArg(i8** %argv, i32 %argc, i32* %i) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i8** %argv, i8*** %2, align 8
  store i32 %argc, i32* %3, align 4
  store i32* %i, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = load i8**, i8*** %2, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 %7
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 2
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

; <label>:14                                      ; preds = %0
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = load i8**, i8*** %2, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 %17
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  store i8* %21, i8** %1
  br label %49

; <label>:22                                      ; preds = %0
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = sub nsw i32 %25, 1
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %48

; <label>:28                                      ; preds = %22
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = load i8**, i8*** %2, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 %32
  %35 = load i8*, i8** %34, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 45
  br i1 %38, label %39, label %48

; <label>:39                                      ; preds = %28
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = add nsw i32 %41, 1
  %44 = sext i32 %43 to i64
  %45 = load i8**, i8*** %2, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 %44
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %1
  br label %49

; <label>:48                                      ; preds = %28, %22
  store i8* null, i8** %1
  br label %49

; <label>:49                                      ; preds = %48, %39, %14
  %50 = load i8*, i8** %1
  ret i8* %50
}

declare i32 @StringEndsWith(i8*, i8*) #2

declare void @ErrorInit(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

declare zeroext i16 @DefineFile(i8*, i8*, %struct.FILE_POS*, i32, i32) #2

declare zeroext i16 @FirstFile(i32) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @PrintUsage(%struct._IO_FILE* %fp) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %1, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.187, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.188, i32 0, i32 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.189, i32 0, i32 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.190, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.191, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.192, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.193, i32 0, i32 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.194, i32 0, i32 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.195, i32 0, i32 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.196, i32 0, i32 0))
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.197, i32 0, i32 0))
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.198, i32 0, i32 0))
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.199, i32 0, i32 0))
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.200, i32 0, i32 0))
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.201, i32 0, i32 0))
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.202, i32 0, i32 0))
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.203, i32 0, i32 0))
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.204, i32 0, i32 0))
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.205, i32 0, i32 0))
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.206, i32 0, i32 0))
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.207, i32 0, i32 0))
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.208, i32 0, i32 0))
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.209, i32 0, i32 0))
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.210, i32 0, i32 0))
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.211, i32 0, i32 0))
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.212, i32 0, i32 0))
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.213, i32 0, i32 0))
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare void @ColourInit() #2

declare void @LanguageInit() #2

declare %union.rec* @MakeWordThree(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %union.rec* @load(i8* %xstr, i32 %xpre, i32 %xleft, i32 %xright, i32 %xindef, i8 zeroext %xprec) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %s = alloca %union.rec*, align 8
  store i8* %xstr, i8** %1, align 8
  store i32 %xpre, i32* %2, align 4
  store i32 %xleft, i32* %3, align 4
  store i32 %xright, i32* %4, align 4
  store i32 %xindef, i32* %5, align 4
  store i8 %xprec, i8* %6, align 1
  %7 = load i8*, i8** %1, align 8
  %8 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %9 = load i8, i8* %6, align 1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load %union.rec*, %union.rec** @StartSym, align 8
  %13 = call %union.rec* @InsertSym(i8* %7, i8 zeroext -113, %struct.FILE_POS* %8, i8 zeroext %9, i32 %10, i32 0, i32 %11, %union.rec* %12, %union.rec* null)
  store %union.rec* %13, %union.rec** %s, align 8
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

; <label>:16                                      ; preds = %0
  %17 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %18 = load %union.rec*, %union.rec** %s, align 8
  %19 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8 zeroext -112, %struct.FILE_POS* %17, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %18, %union.rec* null)
  br label %20

; <label>:20                                      ; preds = %16, %0
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

; <label>:23                                      ; preds = %20
  %24 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %25 = load %union.rec*, %union.rec** %s, align 8
  %26 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.215, i32 0, i32 0), i8 zeroext -110, %struct.FILE_POS* %24, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %25, %union.rec* null)
  br label %27

; <label>:27                                      ; preds = %23, %20
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %49

; <label>:30                                      ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %49

; <label>:33                                      ; preds = %30
  %34 = load i32, i32* %2, align 4
  %35 = icmp ne i32 %34, 79
  br i1 %35, label %36, label %49

; <label>:36                                      ; preds = %33
  %37 = load i32, i32* %2, align 4
  %38 = icmp ne i32 %37, 80
  br i1 %38, label %39, label %49

; <label>:39                                      ; preds = %36
  %40 = load %union.rec*, %union.rec** %s, align 8
  %41 = bitcast %union.rec* %40 to %struct.word_type*
  %42 = getelementptr inbounds %struct.word_type, %struct.word_type* %41, i32 0, i32 2
  %43 = bitcast %union.SECOND_UNION* %42 to %struct.anon.5*
  %44 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %43, i32 0, i32 1
  %45 = bitcast [3 x i8]* %44 to i24*
  %46 = load i24, i24* %45, align 1
  %47 = and i24 %46, -17
  %48 = or i24 %47, 16
  store i24 %48, i24* %45, align 1
  br label %49

; <label>:49                                      ; preds = %39, %36, %33, %30, %27
  %50 = load %union.rec*, %union.rec** %s, align 8
  ret %union.rec* %50
}

declare void @FontInit() #2

declare void @InitTime() #2

declare void @FilterInit() #2

declare void @EnvInit() #2

declare void @PushScope(%union.rec*, i32, i32) #2

declare void @LexPush(i16 zeroext, i32, i32, i32, i32) #2

declare void @InitParser(i8*) #2

declare %union.rec* @NewToken(i8 zeroext, %struct.FILE_POS*, i8 zeroext, i8 zeroext, i8 zeroext, %union.rec*) #2

declare %union.rec* @Parse(%union.rec**, %union.rec*, i32, i32) #2

declare i32 @DisposeObject(%union.rec*) #2

declare void @TransferEnd(%union.rec*) #2

declare void @TransferClose() #2

declare void @CrossClose() #2

declare void @CloseFiles() #2

declare void @FilterScavenge(i32) #2

declare void @CheckErrorBlocks() #2

; Function Attrs: nounwind
declare i32 @catclose(i8*) #1

declare %union.rec* @InsertSym(i8*, i8 zeroext, %struct.FILE_POS*, i8 zeroext, i32, i32, i32, %union.rec*, %union.rec*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
