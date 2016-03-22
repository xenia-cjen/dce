; ModuleID = 'z49.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.GRAPHICS_STATE = type { i32, i32, i32, i32, i16 }
%struct.FILE_POS = type { i8, i8, i16, i32 }
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
%struct.back_end_rec = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, void (%struct._IO_FILE*)*, void (i8*, i32, i32)*, void (%union.rec*, i32, i8*, i8*)*, void (i8*, i32)*, void (i32)*, void (i32, i32, i8*)*, void (i32, i32, i8*)*, void ()*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, %union.rec*)*, void (i32, i32, i32, i32, i32)*, void (i32, i32)*, void (i32)*, void (float, float)*, void (%union.rec*)*, void ()*, void (%union.rec*)*, void (%union.rec*)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (...)* }
%struct.anon.14 = type { i32, i32, [1 x %union.rec*] }
%struct.mapvec = type { %union.rec*, i16, i32, i32, %union.rec*, [256 x %union.rec*], [353 x i8], [4 x [256 x i8]] }
%struct.paper = type { i8*, i32, i32 }
%struct.font_rec = type { %struct.metrics*, i8*, i16*, %struct.composite_rec*, i32, %union.rec*, %union.rec*, i16, i16, i16*, i8*, i8*, i16* }
%struct.metrics = type { i16, i16, i16, i16, i16 }
%struct.composite_rec = type { i8, i16, i16 }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.anon.0 = type { i8, i8, i8 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.anon.2 = type { i8, i8, i16 }
%struct.anon.7 = type { i32, i32, i32, i8 }

@out_fp = internal global %struct._IO_FILE* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"\0Agrestore\0A\00", align 1
@gs_stack_top = internal global i32 0, align 4
@gs_stack = internal global [50 x %struct.GRAPHICS_STATE] zeroinitializer, align 16
@currentfont = internal global i32 0, align 4
@currentcolour = internal global i32 0, align 4
@cpexists = internal global i32 0, align 4
@currenty = internal global i32 0, align 4
@currentxheight2 = internal global i16 0, align 2
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"error in left parameter of %s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"@Graphic\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"PrintGraphic: type(x) != GRAPHIC!\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%hd %s \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"%d %d %d %d %d %d %d LoutGraphic\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"%d %d %d %d %d %d %d %d %d LoutGr2\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"PrintGraphicInclude!\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"PrintGraphicInclude: !incgraphic_ok(x)!\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"PrintGraphicInclude: fp!\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"%hd %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"BeginEPSF\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"%%%%BeginDocument: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"%%DocumentNeededResources:\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"(atend)\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.20 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@needs = internal global %union.rec* null, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.21 = private unnamed_addr constant [17 x i8] c"%%LanguageLevel:\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"ignoring LanguageLevel comment in %s file %s\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"@IncludeGraphic\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"%%Extensions:\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"ignoring Extensions comment in %s file %s\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"%%+\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"lout.eps\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"\0A%%%%EndDocument\0AEndEPSF\0A\00", align 1
@wordcount = internal global i32 0, align 4
@ConvertToPDFName.buff = internal global [200 x i8] zeroinitializer, align 16
@.str.29 = private unnamed_addr constant [5 x i8] c"LOUT\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"tag %s is too long\00", align 1
@ps_back = internal global %struct.back_end_rec { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, void (%struct._IO_FILE*)* @PS_PrintInitialize, void (i8*, i32, i32)* @PS_PrintLength, void (%union.rec*, i32, i8*, i8*)* @PS_PrintPageSetupForFont, void (i8*, i32)* @PS_PrintPageResourceForFont, void (i32)* @PS_PrintMapping, void (i32, i32, i8*)* @PS_PrintBeforeFirstPage, void (i32, i32, i8*)* @PS_PrintBetweenPages, void ()* @PS_PrintAfterLastPage, void (%union.rec*, i32, i32)* @PS_PrintWord, void (%union.rec*, i32, i32, %union.rec*)* @PS_PrintPlainGraphic, void (i32, i32, i32, i32, i32)* @PS_PrintUnderline, void (i32, i32)* @PS_CoordTranslate, void (i32)* @PS_CoordRotate, void (float, float)* @PS_CoordScale, void (%union.rec*)* @PS_SaveGraphicState, void ()* @PS_RestoreGraphicState, void (%union.rec*)* @PS_PrintGraphicObject, void (%union.rec*)* @PS_DefineGraphicNames, void (%union.rec*, i32, i32)* @PS_SaveTranslateDefineSave, void (%union.rec*, i32, i32)* @PS_PrintGraphicInclude, void (%union.rec*, i32, i32, i32, i32)* @PS_LinkSource, void (%union.rec*, i32, i32, i32, i32)* @PS_LinkDest, void (...)* bitcast (void ()* @PS_LinkCheck to void (...)*) }, align 8
@PS_BackEnd = global %struct.back_end_rec* @ps_back, align 8
@Encapsulated = common global i32 0, align 4
@.str.31 = private unnamed_addr constant [7 x i8] c"gsave\0A\00", align 1
@.str.32 = private unnamed_addr constant [55 x i8] c"rotations, graphics etc. too deeply nested (max is %d)\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"%d %d translate\0A\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"%.4f %.4f scale\0A\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"%%EOF\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"%%Trailer\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"PostScript\00", align 1
@prologue_done = internal global i32 0, align 4
@pagecount = internal global i32 0, align 4
@supplied = internal global %union.rec* null, align 8
@link_dest_tab = internal global %struct.anon.14* null, align 8
@link_source_list = internal global %union.rec* null, align 8
@.str.38 = private unnamed_addr constant [44 x i8] c"run out of memory enlarging link dest table\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"%.3fc\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"%%%%IncludeResource: font %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"/%s%s %s /%s LoutRecode\0A\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"/%s { /%s%s LoutFont } def\0A\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"/%s { /%s LoutFont } def\0A\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"%s font %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"%%PageResources:\00", align 1
@MapTable = external global [0 x %struct.mapvec*], align 8
@.str.46 = private unnamed_addr constant [32 x i8] c"%%%%BeginResource: encoding %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"/%s [\0A\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"/%s%c\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"] def\0A\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"%%%%EndResource\0A\0A\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"%!PS-Adobe-3.0 EPSF-3.0\0A\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"%!PS-Adobe-3.0\0A\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"%%%%Creator: %s\0A\00", align 1
@.str.54 = private unnamed_addr constant [40 x i8] c"Basser Lout Version 3.24 (October 2000)\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"%%%%CreationDate: %s\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"%%DocumentData: Binary\0A\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"%%DocumentNeededResources: (atend)\0A\00", align 1
@.str.58 = private unnamed_addr constant [38 x i8] c"%%DocumentSuppliedResources: (atend)\0A\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"%%%%DocumentMedia: %s %d %d 0 white ()\0A\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"%%PageOrder: Ascend\0A\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"%%Pages: (atend)\0A\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"%%%%BoundingBox: 0 0 %d %d\0A\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"%%EndComments\0A\0A\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"%%BeginProlog\0A\00", align 1
@.str.65 = private unnamed_addr constant [31 x i8] c"%%%%BeginResource: procset %s\0A\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"LoutStartUp\00", align 1
@.str.67 = private unnamed_addr constant [61 x i8] c"/save_cp { currentpoint /cp_y exch def /cp_x exch def } def\0A\00", align 1
@.str.68 = private unnamed_addr constant [38 x i8] c"/restore_cp { cp_x cp_y moveto } def\0A\00", align 1
@.str.69 = private unnamed_addr constant [53 x i8] c"/outline { gsave 1 1 1 setrgbcolor dup show save_cp\0A\00", align 1
@.str.70 = private unnamed_addr constant [55 x i8] c"  grestore true charpath stroke restore_cp } bind def\0A\00", align 1
@.str.71 = private unnamed_addr constant [39 x i8] c"/m  { 3 1 roll moveto show } bind def\0A\00", align 1
@.str.72 = private unnamed_addr constant [42 x i8] c"/mo { 3 1 roll moveto outline } bind def\0A\00", align 1
@.str.73 = private unnamed_addr constant [57 x i8] c"/s  { exch currentpoint exch pop moveto show } bind def\0A\00", align 1
@.str.74 = private unnamed_addr constant [60 x i8] c"/so { exch currentpoint exch pop moveto outline } bind def\0A\00", align 1
@.str.75 = private unnamed_addr constant [42 x i8] c"/k  { exch neg 0 rmoveto show } bind def\0A\00", align 1
@.str.76 = private unnamed_addr constant [45 x i8] c"/ko { exch neg 0 rmoveto outline } bind def\0A\00", align 1
@.str.77 = private unnamed_addr constant [38 x i8] c"/r  { exch 0 rmoveto show } bind def\0A\00", align 1
@.str.78 = private unnamed_addr constant [41 x i8] c"/ro { exch 0 rmoveto outline } bind def\0A\00", align 1
@.str.79 = private unnamed_addr constant [55 x i8] c"/c  { gsave 3 1 roll rmoveto show grestore } bind def\0A\00", align 1
@.str.80 = private unnamed_addr constant [58 x i8] c"/co { gsave 3 1 roll rmoveto outline grestore } bind def\0A\00", align 1
@.str.81 = private unnamed_addr constant [39 x i8] c"/ul { gsave setlinewidth dup 3 1 roll\0A\00", align 1
@.str.82 = private unnamed_addr constant [48 x i8] c"      moveto lineto stroke grestore } bind def\0A\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"/in { %d mul } def\0A\00", align 1
@.str.84 = private unnamed_addr constant [20 x i8] c"/cm { %d mul } def\0A\00", align 1
@.str.85 = private unnamed_addr constant [20 x i8] c"/pt { %d mul } def\0A\00", align 1
@.str.86 = private unnamed_addr constant [20 x i8] c"/em { %d mul } def\0A\00", align 1
@.str.87 = private unnamed_addr constant [23 x i8] c"/sp { louts mul } def\0A\00", align 1
@.str.88 = private unnamed_addr constant [23 x i8] c"/vs { loutv mul } def\0A\00", align 1
@.str.89 = private unnamed_addr constant [23 x i8] c"/ft { loutf mul } def\0A\00", align 1
@.str.90 = private unnamed_addr constant [24 x i8] c"/dg {           } def\0A\0A\00", align 1
@.str.91 = private unnamed_addr constant [16 x i8] c"/LoutGraphic {\0A\00", align 1
@.str.92 = private unnamed_addr constant [19 x i8] c"  /louts exch def\0A\00", align 1
@.str.93 = private unnamed_addr constant [19 x i8] c"  /loutv exch def\0A\00", align 1
@.str.94 = private unnamed_addr constant [19 x i8] c"  /loutf exch def\0A\00", align 1
@.str.95 = private unnamed_addr constant [19 x i8] c"  /ymark exch def\0A\00", align 1
@.str.96 = private unnamed_addr constant [19 x i8] c"  /xmark exch def\0A\00", align 1
@.str.97 = private unnamed_addr constant [19 x i8] c"  /ysize exch def\0A\00", align 1
@.str.98 = private unnamed_addr constant [26 x i8] c"  /xsize exch def\0A} def\0A\0A\00", align 1
@.str.99 = private unnamed_addr constant [53 x i8] c"/LoutGr2 { gsave translate LoutGraphic gsave } def\0A\0A\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"/LoutFont\0A\00", align 1
@.str.101 = private unnamed_addr constant [35 x i8] c"{ findfont exch scalefont setfont\0A\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"} bind def\0A\0A\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c"/LoutRecode {\0A\00", align 1
@.str.104 = private unnamed_addr constant [36 x i8] c"  { findfont dup length dict begin\0A\00", align 1
@.str.105 = private unnamed_addr constant [53 x i8] c"    {1 index /FID ne {def} {pop pop} ifelse} forall\0A\00", align 1
@.str.106 = private unnamed_addr constant [24 x i8] c"    /Encoding exch def\0A\00", align 1
@.str.107 = private unnamed_addr constant [36 x i8] c"    currentdict end definefont pop\0A\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"  }\0A\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"  stopped pop\0A\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"/BeginEPSF {\0A\00", align 1
@.str.111 = private unnamed_addr constant [27 x i8] c"  /LoutEPSFState save def\0A\00", align 1
@.str.112 = private unnamed_addr constant [34 x i8] c"  /dict_count countdictstack def\0A\00", align 1
@.str.113 = private unnamed_addr constant [29 x i8] c"  /op_count count 1 sub def\0A\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"  userdict begin\0A\00", align 1
@.str.115 = private unnamed_addr constant [21 x i8] c"  /showpage { } def\0A\00", align 1
@.str.116 = private unnamed_addr constant [26 x i8] c"  0 setgray 0 setlinecap\0A\00", align 1
@.str.117 = private unnamed_addr constant [32 x i8] c"  1 setlinewidth 0 setlinejoin\0A\00", align 1
@.str.118 = private unnamed_addr constant [41 x i8] c"  10 setmiterlimit [] 0 setdash newpath\0A\00", align 1
@.str.119 = private unnamed_addr constant [24 x i8] c"  /languagelevel where\0A\00", align 1
@.str.120 = private unnamed_addr constant [23 x i8] c"  { pop languagelevel\0A\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"    1 ne\0A\00", align 1
@.str.122 = private unnamed_addr constant [48 x i8] c"    { false setstrokeadjust false setoverprint\0A\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"    } if\0A\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"  } if\0A\00", align 1
@.str.125 = private unnamed_addr constant [12 x i8] c"/EndEPSF {\0A\00", align 1
@.str.126 = private unnamed_addr constant [37 x i8] c"  count op_count sub { pop } repeat\0A\00", align 1
@.str.127 = private unnamed_addr constant [48 x i8] c"  countdictstack dict_count sub { end } repeat\0A\00", align 1
@.str.128 = private unnamed_addr constant [25 x i8] c"  LoutEPSFState restore\0A\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"} bind def\0A\00", align 1
@.str.130 = private unnamed_addr constant [16 x i8] c"%%EndResource\0A\0A\00", align 1
@.str.131 = private unnamed_addr constant [23 x i8] c"cannot open %s file %s\00", align 1
@.str.132 = private unnamed_addr constant [16 x i8] c"@PrependGraphic\00", align 1
@.str.133 = private unnamed_addr constant [20 x i8] c"%s file %s is empty\00", align 1
@.str.134 = private unnamed_addr constant [17 x i8] c"%%BeginResource:\00", align 1
@.str.135 = private unnamed_addr constant [50 x i8] c"%s file %s lacks PostScript BeginResource comment\00", align 1
@.str.136 = private unnamed_addr constant [15 x i8] c"%% %s file %s\0A\00", align 1
@.str.137 = private unnamed_addr constant [14 x i8] c"%%EndProlog\0A\0A\00", align 1
@.str.138 = private unnamed_addr constant [14 x i8] c"%%BeginSetup\0A\00", align 1
@.str.139 = private unnamed_addr constant [71 x i8] c"/pdfmark where {pop} {userdict /pdfmark /cleartomark load put} ifelse\0A\00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"%%EndSetup\0A\0A\00", align 1
@.str.141 = private unnamed_addr constant [11 x i8] c"%%%%Page: \00", align 1
@EightBitToPrintForm = external global [0 x i8*], align 8
@.str.142 = private unnamed_addr constant [5 x i8] c" %d\0A\00", align 1
@.str.143 = private unnamed_addr constant [20 x i8] c"%%%%BeginPageSetup\0A\00", align 1
@.str.144 = private unnamed_addr constant [18 x i8] c"/pgsave save def\0A\00", align 1
@.str.145 = private unnamed_addr constant [32 x i8] c"%.4f dup scale %d setlinewidth\0A\00", align 1
@.str.146 = private unnamed_addr constant [19 x i8] c"%%%%EndPageSetup\0A\0A\00", align 1
@MediaName.paper_map = internal constant [15 x %struct.paper] [%struct.paper { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 12240, i32 15840 }, %struct.paper { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.148, i32 0, i32 0), i32 15840, i32 24480 }, %struct.paper { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.149, i32 0, i32 0), i32 24480, i32 15840 }, %struct.paper { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.150, i32 0, i32 0), i32 12240, i32 20160 }, %struct.paper { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.151, i32 0, i32 0), i32 7920, i32 12240 }, %struct.paper { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.152, i32 0, i32 0), i32 10800, i32 14400 }, %struct.paper { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.153, i32 0, i32 0), i32 16840, i32 23800 }, %struct.paper { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.154, i32 0, i32 0), i32 11900, i32 16840 }, %struct.paper { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.155, i32 0, i32 0), i32 8400, i32 11900 }, %struct.paper { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i32 0, i32 0), i32 14580, i32 20640 }, %struct.paper { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157, i32 0, i32 0), i32 10320, i32 14580 }, %struct.paper { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.158, i32 0, i32 0), i32 12240, i32 18720 }, %struct.paper { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.159, i32 0, i32 0), i32 12200, i32 15600 }, %struct.paper { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.160, i32 0, i32 0), i32 14400, i32 20160 }, %struct.paper zeroinitializer], align 16
@.str.147 = private unnamed_addr constant [7 x i8] c"Letter\00", align 1
@.str.148 = private unnamed_addr constant [8 x i8] c"Tabloid\00", align 1
@.str.149 = private unnamed_addr constant [7 x i8] c"Ledger\00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"Legal\00", align 1
@.str.151 = private unnamed_addr constant [10 x i8] c"Statement\00", align 1
@.str.152 = private unnamed_addr constant [10 x i8] c"Executive\00", align 1
@.str.153 = private unnamed_addr constant [3 x i8] c"A3\00", align 1
@.str.154 = private unnamed_addr constant [3 x i8] c"A4\00", align 1
@.str.155 = private unnamed_addr constant [3 x i8] c"A5\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c"B4\00", align 1
@.str.157 = private unnamed_addr constant [3 x i8] c"B5\00", align 1
@.str.158 = private unnamed_addr constant [6 x i8] c"Folio\00", align 1
@.str.159 = private unnamed_addr constant [7 x i8] c"Quarto\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c"10x14\00", align 1
@MediaName.user_defined = internal global i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.161, i32 0, i32 0), align 8
@.str.161 = private unnamed_addr constant [6 x i8] c"Plain\00", align 1
@.str.162 = private unnamed_addr constant [26 x i8] c"\0Apgsave restore\0Ashowpage\0A\00", align 1
@.str.163 = private unnamed_addr constant [46 x i8] c"truncating -EPS document at end of first page\00", align 1
@.str.164 = private unnamed_addr constant [12 x i8] c"\0A%%%%Page: \00", align 1
@.str.165 = private unnamed_addr constant [18 x i8] c"%%%%EndPageSetup\0A\00", align 1
@.str.166 = private unnamed_addr constant [14 x i8] c"\0A%%%%Trailer\0A\00", align 1
@.str.167 = private unnamed_addr constant [23 x i8] c"PrintAfterLast: needs!\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.169 = private unnamed_addr constant [43 x i8] c"%%%%DocumentSuppliedResources: procset %s\0A\00", align 1
@.str.170 = private unnamed_addr constant [9 x i8] c"%%%%+ %s\00", align 1
@.str.171 = private unnamed_addr constant [15 x i8] c"%%%%Pages: %d\0A\00", align 1
@.str.172 = private unnamed_addr constant [9 x i8] c"%%%%EOF\0A\00", align 1
@TotalWordCount = external global i32, align 4
@.str.173 = private unnamed_addr constant [7 x i8] c"%hd %s\00", align 1
@.str.174 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@finfo = external global %struct.font_rec*, align 8
@.str.175 = private unnamed_addr constant [3 x i8] c"so\00", align 1
@.str.176 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.177 = private unnamed_addr constant [3 x i8] c"mo\00", align 1
@.str.178 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.179 = private unnamed_addr constant [5 x i8] c")%s \00", align 1
@.str.180 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.181 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.182 = private unnamed_addr constant [8 x i8] c")%s %d(\00", align 1
@.str.183 = private unnamed_addr constant [3 x i8] c"ko\00", align 1
@.str.184 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.185 = private unnamed_addr constant [5 x i8] c")%s\0A\00", align 1
@.str.186 = private unnamed_addr constant [14 x i8] c"%d %d (%c)%s \00", align 1
@.str.187 = private unnamed_addr constant [3 x i8] c"co\00", align 1
@.str.188 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.189 = private unnamed_addr constant [59 x i8] c"PS_PrintPlainGraphic: this routine should never be called!\00", align 1
@.str.190 = private unnamed_addr constant [16 x i8] c"%d %d %d %d ul\0A\00", align 1
@.str.191 = private unnamed_addr constant [13 x i8] c"%.4f rotate\0A\00", align 1
@.str.192 = private unnamed_addr constant [62 x i8] c"\0A[ /Rect [%d %d %d %d] /Subtype /Link /Dest /%s /ANN pdfmark\0A\00", align 1
@.str.193 = private unnamed_addr constant [28 x i8] c"\0A[ /Dest /%s /DEST pdfmark\0A\00", align 1
@.str.194 = private unnamed_addr constant [56 x i8] c"link destination %s ignored (there is already one at%s)\00", align 1
@.str.195 = private unnamed_addr constant [37 x i8] c"link name %s used twice (first at%s)\00", align 1
@.str.196 = private unnamed_addr constant [34 x i8] c" PS_LinkCheck: !is_word(type(y))!\00", align 1
@.str.197 = private unnamed_addr constant [38 x i8] c"link name %s has no destination point\00", align 1

; Function Attrs: nounwind uwtable
define void @PS_RestoreGraphicState() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %3 = load i32, i32* @gs_stack_top, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %4
  %6 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* @currentfont, align 4
  %8 = load i32, i32* @gs_stack_top, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %9
  %11 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* @currentcolour, align 4
  %13 = load i32, i32* @gs_stack_top, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %14
  %16 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* @cpexists, align 4
  %18 = load i32, i32* @gs_stack_top, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %19
  %21 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* @currenty, align 4
  %23 = load i32, i32* @gs_stack_top, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %24
  %26 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %25, i32 0, i32 4
  %27 = load i16, i16* %26, align 2
  store i16 %27, i16* @currentxheight2, align 2
  %28 = load i32, i32* @gs_stack_top, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* @gs_stack_top, align 4
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @PS_PrintGraphicObject(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = bitcast %union.rec* %2 to %struct.word_type*
  %4 = getelementptr inbounds %struct.word_type, %struct.word_type* %3, i32 0, i32 1
  %5 = bitcast %union.FIRST_UNION* %4 to %struct.anon*
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  switch i32 %8, label %160 [
    i32 11, label %9
    i32 12, label %9
    i32 17, label %16
  ]

; <label>:9                                       ; preds = %0, %0
  %10 = load %union.rec*, %union.rec** %1, align 8
  %11 = bitcast %union.rec* %10 to %struct.word_type*
  %12 = getelementptr inbounds %struct.word_type, %struct.word_type* %11, i32 0, i32 4
  %13 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i32 0, i32 0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %15 = call i32 @fputs(i8* %13, %struct._IO_FILE* %14)
  br label %166

; <label>:16                                      ; preds = %0
  %17 = load %union.rec*, %union.rec** %1, align 8
  %18 = bitcast %union.rec* %17 to %struct.word_type*
  %19 = getelementptr inbounds %struct.word_type, %struct.word_type* %18, i32 0, i32 0
  %20 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %19, i32 0, i64 0
  %21 = getelementptr inbounds %struct.LIST, %struct.LIST* %20, i32 0, i32 1
  %22 = load %union.rec*, %union.rec** %21, align 8
  store %union.rec* %22, %union.rec** %link, align 8
  br label %23

; <label>:23                                      ; preds = %152, %16
  %24 = load %union.rec*, %union.rec** %link, align 8
  %25 = load %union.rec*, %union.rec** %1, align 8
  %26 = icmp ne %union.rec* %24, %25
  br i1 %26, label %27, label %159

; <label>:27                                      ; preds = %23
  %28 = load %union.rec*, %union.rec** %link, align 8
  %29 = bitcast %union.rec* %28 to %struct.word_type*
  %30 = getelementptr inbounds %struct.word_type, %struct.word_type* %29, i32 0, i32 0
  %31 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %30, i32 0, i64 1
  %32 = getelementptr inbounds %struct.LIST, %struct.LIST* %31, i32 0, i32 0
  %33 = load %union.rec*, %union.rec** %32, align 8
  store %union.rec* %33, %union.rec** %y, align 8
  br label %34

; <label>:34                                      ; preds = %44, %27
  %35 = load %union.rec*, %union.rec** %y, align 8
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
  %45 = load %union.rec*, %union.rec** %y, align 8
  %46 = bitcast %union.rec* %45 to %struct.word_type*
  %47 = getelementptr inbounds %struct.word_type, %struct.word_type* %46, i32 0, i32 0
  %48 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %47, i32 0, i64 1
  %49 = getelementptr inbounds %struct.LIST, %struct.LIST* %48, i32 0, i32 0
  %50 = load %union.rec*, %union.rec** %49, align 8
  store %union.rec* %50, %union.rec** %y, align 8
  br label %34

; <label>:51                                      ; preds = %34
  %52 = load %union.rec*, %union.rec** %y, align 8
  %53 = bitcast %union.rec* %52 to %struct.word_type*
  %54 = getelementptr inbounds %struct.word_type, %struct.word_type* %53, i32 0, i32 1
  %55 = bitcast %union.FIRST_UNION* %54 to %struct.anon*
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 0
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %86

; <label>:60                                      ; preds = %51
  %61 = load %union.rec*, %union.rec** %y, align 8
  %62 = bitcast %union.rec* %61 to %struct.word_type*
  %63 = getelementptr inbounds %struct.word_type, %struct.word_type* %62, i32 0, i32 2
  %64 = bitcast %union.SECOND_UNION* %63 to %struct.anon.0*
  %65 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %64, i32 0, i32 2
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %72

; <label>:69                                      ; preds = %60
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %71 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), %struct._IO_FILE* %70)
  br label %85

; <label>:72                                      ; preds = %60
  %73 = load %union.rec*, %union.rec** %y, align 8
  %74 = bitcast %union.rec* %73 to %struct.word_type*
  %75 = getelementptr inbounds %struct.word_type, %struct.word_type* %74, i32 0, i32 2
  %76 = bitcast %union.SECOND_UNION* %75 to %struct.anon.0*
  %77 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %76, i32 0, i32 1
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %84

; <label>:81                                      ; preds = %72
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %83 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %82)
  br label %84

; <label>:84                                      ; preds = %81, %72
  br label %85

; <label>:85                                      ; preds = %84, %69
  br label %151

; <label>:86                                      ; preds = %51
  %87 = load %union.rec*, %union.rec** %y, align 8
  %88 = bitcast %union.rec* %87 to %struct.word_type*
  %89 = getelementptr inbounds %struct.word_type, %struct.word_type* %88, i32 0, i32 1
  %90 = bitcast %union.FIRST_UNION* %89 to %struct.anon*
  %91 = getelementptr inbounds %struct.anon, %struct.anon* %90, i32 0, i32 0
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %93, 11
  br i1 %94, label %113, label %95

; <label>:95                                      ; preds = %86
  %96 = load %union.rec*, %union.rec** %y, align 8
  %97 = bitcast %union.rec* %96 to %struct.word_type*
  %98 = getelementptr inbounds %struct.word_type, %struct.word_type* %97, i32 0, i32 1
  %99 = bitcast %union.FIRST_UNION* %98 to %struct.anon*
  %100 = getelementptr inbounds %struct.anon, %struct.anon* %99, i32 0, i32 0
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 12
  br i1 %103, label %113, label %104

; <label>:104                                     ; preds = %95
  %105 = load %union.rec*, %union.rec** %y, align 8
  %106 = bitcast %union.rec* %105 to %struct.word_type*
  %107 = getelementptr inbounds %struct.word_type, %struct.word_type* %106, i32 0, i32 1
  %108 = bitcast %union.FIRST_UNION* %107 to %struct.anon*
  %109 = getelementptr inbounds %struct.anon, %struct.anon* %108, i32 0, i32 0
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 17
  br i1 %112, label %113, label %115

; <label>:113                                     ; preds = %104, %95, %86
  %114 = load %union.rec*, %union.rec** %y, align 8
  call void @PS_PrintGraphicObject(%union.rec* %114)
  br label %150

; <label>:115                                     ; preds = %104
  %116 = load %union.rec*, %union.rec** %y, align 8
  %117 = bitcast %union.rec* %116 to %struct.word_type*
  %118 = getelementptr inbounds %struct.word_type, %struct.word_type* %117, i32 0, i32 1
  %119 = bitcast %union.FIRST_UNION* %118 to %struct.anon*
  %120 = getelementptr inbounds %struct.anon, %struct.anon* %119, i32 0, i32 0
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp eq i32 %122, 26
  br i1 %123, label %142, label %124

; <label>:124                                     ; preds = %115
  %125 = load %union.rec*, %union.rec** %y, align 8
  %126 = bitcast %union.rec* %125 to %struct.word_type*
  %127 = getelementptr inbounds %struct.word_type, %struct.word_type* %126, i32 0, i32 1
  %128 = bitcast %union.FIRST_UNION* %127 to %struct.anon*
  %129 = getelementptr inbounds %struct.anon, %struct.anon* %128, i32 0, i32 0
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp sge i32 %131, 119
  br i1 %132, label %133, label %143

; <label>:133                                     ; preds = %124
  %134 = load %union.rec*, %union.rec** %y, align 8
  %135 = bitcast %union.rec* %134 to %struct.word_type*
  %136 = getelementptr inbounds %struct.word_type, %struct.word_type* %135, i32 0, i32 1
  %137 = bitcast %union.FIRST_UNION* %136 to %struct.anon*
  %138 = getelementptr inbounds %struct.anon, %struct.anon* %137, i32 0, i32 0
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp sle i32 %140, 138
  br i1 %141, label %142, label %143

; <label>:142                                     ; preds = %133, %115
  br label %149

; <label>:143                                     ; preds = %133, %124
  %144 = load %union.rec*, %union.rec** %1, align 8
  %145 = bitcast %union.rec* %144 to %struct.word_type*
  %146 = getelementptr inbounds %struct.word_type, %struct.word_type* %145, i32 0, i32 1
  %147 = bitcast %union.FIRST_UNION* %146 to %struct.FILE_POS*
  %148 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 49, i32 8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 2, %struct.FILE_POS* %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  br label %149

; <label>:149                                     ; preds = %143, %142
  br label %150

; <label>:150                                     ; preds = %149, %113
  br label %151

; <label>:151                                     ; preds = %150, %85
  br label %152

; <label>:152                                     ; preds = %151
  %153 = load %union.rec*, %union.rec** %link, align 8
  %154 = bitcast %union.rec* %153 to %struct.word_type*
  %155 = getelementptr inbounds %struct.word_type, %struct.word_type* %154, i32 0, i32 0
  %156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %155, i32 0, i64 0
  %157 = getelementptr inbounds %struct.LIST, %struct.LIST* %156, i32 0, i32 1
  %158 = load %union.rec*, %union.rec** %157, align 8
  store %union.rec* %158, %union.rec** %link, align 8
  br label %23

; <label>:159                                     ; preds = %23
  br label %166

; <label>:160                                     ; preds = %0
  %161 = load %union.rec*, %union.rec** %1, align 8
  %162 = bitcast %union.rec* %161 to %struct.word_type*
  %163 = getelementptr inbounds %struct.word_type, %struct.word_type* %162, i32 0, i32 1
  %164 = bitcast %union.FIRST_UNION* %163 to %struct.FILE_POS*
  %165 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 49, i32 9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 2, %struct.FILE_POS* %164, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  br label %166

; <label>:166                                     ; preds = %160, %159, %9
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind uwtable
define void @PS_DefineGraphicNames(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = bitcast %union.rec* %2 to %struct.word_type*
  %4 = getelementptr inbounds %struct.word_type, %struct.word_type* %3, i32 0, i32 1
  %5 = bitcast %union.FIRST_UNION* %4 to %struct.anon*
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 %8, 97
  br i1 %9, label %13, label %10

; <label>:10                                      ; preds = %0
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %12 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i32 0, %struct.FILE_POS* %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %10, %0
  %14 = load %union.rec*, %union.rec** %1, align 8
  %15 = bitcast %union.rec* %14 to %struct.closure_type*
  %16 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %15, i32 0, i32 4
  %17 = bitcast %union.FOURTH_UNION* %16 to %struct.STYLE*
  %18 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 4095
  %21 = load i32, i32* @currentfont, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %45

; <label>:23                                      ; preds = %13
  %24 = load %union.rec*, %union.rec** %1, align 8
  %25 = bitcast %union.rec* %24 to %struct.closure_type*
  %26 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %25, i32 0, i32 4
  %27 = bitcast %union.FOURTH_UNION* %26 to %struct.STYLE*
  %28 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 4095
  store i32 %30, i32* @currentfont, align 4
  %31 = load i32, i32* @currentfont, align 4
  %32 = icmp ugt i32 %31, 0
  br i1 %32, label %33, label %44

; <label>:33                                      ; preds = %23
  %34 = load i32, i32* @currentfont, align 4
  %35 = call i32 @FontHalfXHeight(i32 %34)
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* @currentxheight2, align 2
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %38 = load i32, i32* @currentfont, align 4
  %39 = load %union.rec*, %union.rec** %1, align 8
  %40 = call i32 @FontSize(i32 %38, %union.rec* %39)
  %41 = load i32, i32* @currentfont, align 4
  %42 = call i8* @FontName(i32 %41)
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 %40, i8* %42)
  br label %44

; <label>:44                                      ; preds = %33, %23
  br label %45

; <label>:45                                      ; preds = %44, %13
  %46 = load %union.rec*, %union.rec** %1, align 8
  %47 = bitcast %union.rec* %46 to %struct.closure_type*
  %48 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %47, i32 0, i32 4
  %49 = bitcast %union.FOURTH_UNION* %48 to %struct.STYLE*
  %50 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = lshr i32 %51, 12
  %53 = and i32 %52, 1023
  %54 = load i32, i32* @currentcolour, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %73

; <label>:56                                      ; preds = %45
  %57 = load %union.rec*, %union.rec** %1, align 8
  %58 = bitcast %union.rec* %57 to %struct.closure_type*
  %59 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %58, i32 0, i32 4
  %60 = bitcast %union.FOURTH_UNION* %59 to %struct.STYLE*
  %61 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = lshr i32 %62, 12
  %64 = and i32 %63, 1023
  store i32 %64, i32* @currentcolour, align 4
  %65 = load i32, i32* @currentcolour, align 4
  %66 = icmp ugt i32 %65, 0
  br i1 %66, label %67, label %72

; <label>:67                                      ; preds = %56
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %69 = load i32, i32* @currentcolour, align 4
  %70 = call i8* @ColourCommand(i32 %69)
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %70)
  br label %72

; <label>:72                                      ; preds = %67, %56
  br label %73

; <label>:73                                      ; preds = %72, %45
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %75 = load %union.rec*, %union.rec** %1, align 8
  %76 = bitcast %union.rec* %75 to %struct.word_type*
  %77 = getelementptr inbounds %struct.word_type, %struct.word_type* %76, i32 0, i32 3
  %78 = bitcast %union.THIRD_UNION* %77 to %struct.anon.6*
  %79 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %78, i32 0, i32 0
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %79, i32 0, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load %union.rec*, %union.rec** %1, align 8
  %83 = bitcast %union.rec* %82 to %struct.word_type*
  %84 = getelementptr inbounds %struct.word_type, %struct.word_type* %83, i32 0, i32 3
  %85 = bitcast %union.THIRD_UNION* %84 to %struct.anon.6*
  %86 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %85, i32 0, i32 1
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i32 0, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %81, %88
  %90 = load %union.rec*, %union.rec** %1, align 8
  %91 = bitcast %union.rec* %90 to %struct.word_type*
  %92 = getelementptr inbounds %struct.word_type, %struct.word_type* %91, i32 0, i32 3
  %93 = bitcast %union.THIRD_UNION* %92 to %struct.anon.6*
  %94 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %93, i32 0, i32 0
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %94, i32 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = load %union.rec*, %union.rec** %1, align 8
  %98 = bitcast %union.rec* %97 to %struct.word_type*
  %99 = getelementptr inbounds %struct.word_type, %struct.word_type* %98, i32 0, i32 3
  %100 = bitcast %union.THIRD_UNION* %99 to %struct.anon.6*
  %101 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %100, i32 0, i32 1
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %101, i32 0, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %96, %103
  %105 = load %union.rec*, %union.rec** %1, align 8
  %106 = bitcast %union.rec* %105 to %struct.word_type*
  %107 = getelementptr inbounds %struct.word_type, %struct.word_type* %106, i32 0, i32 3
  %108 = bitcast %union.THIRD_UNION* %107 to %struct.anon.6*
  %109 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %108, i32 0, i32 0
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %109, i32 0, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load %union.rec*, %union.rec** %1, align 8
  %113 = bitcast %union.rec* %112 to %struct.word_type*
  %114 = getelementptr inbounds %struct.word_type, %struct.word_type* %113, i32 0, i32 3
  %115 = bitcast %union.THIRD_UNION* %114 to %struct.anon.6*
  %116 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %115, i32 0, i32 1
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %116, i32 0, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @currentfont, align 4
  %120 = icmp ule i32 %119, 0
  br i1 %120, label %121, label %122

; <label>:121                                     ; preds = %73
  br label %126

; <label>:122                                     ; preds = %73
  %123 = load i32, i32* @currentfont, align 4
  %124 = load %union.rec*, %union.rec** %1, align 8
  %125 = call i32 @FontSize(i32 %123, %union.rec* %124)
  br label %126

; <label>:126                                     ; preds = %122, %121
  %127 = phi i32 [ 240, %121 ], [ %125, %122 ]
  %128 = load %union.rec*, %union.rec** %1, align 8
  %129 = bitcast %union.rec* %128 to %struct.closure_type*
  %130 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %129, i32 0, i32 4
  %131 = bitcast %union.FOURTH_UNION* %130 to %struct.STYLE*
  %132 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %131, i32 0, i32 0
  %133 = bitcast %union.anon* %132 to %struct.GAP*
  %134 = getelementptr inbounds %struct.GAP, %struct.GAP* %133, i32 0, i32 1
  %135 = load i16, i16* %134, align 2
  %136 = sext i16 %135 to i32
  %137 = load %union.rec*, %union.rec** %1, align 8
  %138 = bitcast %union.rec* %137 to %struct.closure_type*
  %139 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %138, i32 0, i32 4
  %140 = bitcast %union.FOURTH_UNION* %139 to %struct.STYLE*
  %141 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %140, i32 0, i32 1
  %142 = bitcast %union.anon.10* %141 to %struct.GAP*
  %143 = getelementptr inbounds %struct.GAP, %struct.GAP* %142, i32 0, i32 1
  %144 = load i16, i16* %143, align 2
  %145 = sext i16 %144 to i32
  %146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0), i32 %89, i32 %104, i32 %111, i32 %118, i32 %127, i32 %136, i32 %145)
  ret void
}

declare i32 @FontHalfXHeight(i32) #1

declare i32 @FontSize(i32, %union.rec*) #1

declare i8* @FontName(i32) #1

declare i8* @ColourCommand(i32) #1

; Function Attrs: nounwind uwtable
define void @PS_SaveTranslateDefineSave(%union.rec* %x, i32 %xdist, i32 %ydist) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %union.rec* %x, %union.rec** %1, align 8
  store i32 %xdist, i32* %2, align 4
  store i32 %ydist, i32* %3, align 4
  %4 = load i32, i32* @gs_stack_top, align 4
  %5 = icmp sge i32 %4, 49
  br i1 %5, label %27, label %6

; <label>:6                                       ; preds = %0
  %7 = load %union.rec*, %union.rec** %1, align 8
  %8 = bitcast %union.rec* %7 to %struct.closure_type*
  %9 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %8, i32 0, i32 4
  %10 = bitcast %union.FOURTH_UNION* %9 to %struct.STYLE*
  %11 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 4095
  %14 = load i32, i32* @currentfont, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %27, label %16

; <label>:16                                      ; preds = %6
  %17 = load %union.rec*, %union.rec** %1, align 8
  %18 = bitcast %union.rec* %17 to %struct.closure_type*
  %19 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %18, i32 0, i32 4
  %20 = bitcast %union.FOURTH_UNION* %19 to %struct.STYLE*
  %21 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = lshr i32 %22, 12
  %24 = and i32 %23, 1023
  %25 = load i32, i32* @currentcolour, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %33

; <label>:27                                      ; preds = %16, %6, %0
  %28 = load %union.rec*, %union.rec** %1, align 8
  call void @PS_SaveGraphicState(%union.rec* %28)
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %3, align 4
  call void @PS_CoordTranslate(i32 %29, i32 %30)
  %31 = load %union.rec*, %union.rec** %1, align 8
  call void @PS_DefineGraphicNames(%union.rec* %31)
  %32 = load %union.rec*, %union.rec** %1, align 8
  call void @PS_SaveGraphicState(%union.rec* %32)
  br label %163

; <label>:33                                      ; preds = %16
  %34 = load i32, i32* @gs_stack_top, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @gs_stack_top, align 4
  %36 = load i32, i32* @currentfont, align 4
  %37 = load i32, i32* @gs_stack_top, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %38
  %40 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @currentcolour, align 4
  %42 = load i32, i32* @gs_stack_top, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %43
  %45 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* @cpexists, align 4
  %47 = load i32, i32* @gs_stack_top, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %48
  %50 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %49, i32 0, i32 2
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* @currenty, align 4
  %52 = load i32, i32* @gs_stack_top, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %53
  %55 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %54, i32 0, i32 3
  store i32 %51, i32* %55, align 4
  %56 = load i16, i16* @currentxheight2, align 2
  %57 = load i32, i32* @gs_stack_top, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %58
  %60 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %59, i32 0, i32 4
  store i16 %56, i16* %60, align 2
  store i32 0, i32* @cpexists, align 4
  %61 = load i32, i32* @gs_stack_top, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @gs_stack_top, align 4
  %63 = load i32, i32* @currentfont, align 4
  %64 = load i32, i32* @gs_stack_top, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %65
  %67 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 4
  %68 = load i32, i32* @currentcolour, align 4
  %69 = load i32, i32* @gs_stack_top, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %70
  %72 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %71, i32 0, i32 1
  store i32 %68, i32* %72, align 4
  %73 = load i32, i32* @cpexists, align 4
  %74 = load i32, i32* @gs_stack_top, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %75
  %77 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %76, i32 0, i32 2
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* @currenty, align 4
  %79 = load i32, i32* @gs_stack_top, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %80
  %82 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %81, i32 0, i32 3
  store i32 %78, i32* %82, align 4
  %83 = load i16, i16* @currentxheight2, align 2
  %84 = load i32, i32* @gs_stack_top, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %85
  %87 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %86, i32 0, i32 4
  store i16 %83, i16* %87, align 2
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %89 = load %union.rec*, %union.rec** %1, align 8
  %90 = bitcast %union.rec* %89 to %struct.word_type*
  %91 = getelementptr inbounds %struct.word_type, %struct.word_type* %90, i32 0, i32 3
  %92 = bitcast %union.THIRD_UNION* %91 to %struct.anon.6*
  %93 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %92, i32 0, i32 0
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %93, i32 0, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load %union.rec*, %union.rec** %1, align 8
  %97 = bitcast %union.rec* %96 to %struct.word_type*
  %98 = getelementptr inbounds %struct.word_type, %struct.word_type* %97, i32 0, i32 3
  %99 = bitcast %union.THIRD_UNION* %98 to %struct.anon.6*
  %100 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %99, i32 0, i32 1
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %100, i32 0, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %95, %102
  %104 = load %union.rec*, %union.rec** %1, align 8
  %105 = bitcast %union.rec* %104 to %struct.word_type*
  %106 = getelementptr inbounds %struct.word_type, %struct.word_type* %105, i32 0, i32 3
  %107 = bitcast %union.THIRD_UNION* %106 to %struct.anon.6*
  %108 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %107, i32 0, i32 0
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %108, i32 0, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load %union.rec*, %union.rec** %1, align 8
  %112 = bitcast %union.rec* %111 to %struct.word_type*
  %113 = getelementptr inbounds %struct.word_type, %struct.word_type* %112, i32 0, i32 3
  %114 = bitcast %union.THIRD_UNION* %113 to %struct.anon.6*
  %115 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %114, i32 0, i32 1
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %115, i32 0, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %110, %117
  %119 = load %union.rec*, %union.rec** %1, align 8
  %120 = bitcast %union.rec* %119 to %struct.word_type*
  %121 = getelementptr inbounds %struct.word_type, %struct.word_type* %120, i32 0, i32 3
  %122 = bitcast %union.THIRD_UNION* %121 to %struct.anon.6*
  %123 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %122, i32 0, i32 0
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %123, i32 0, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = load %union.rec*, %union.rec** %1, align 8
  %127 = bitcast %union.rec* %126 to %struct.word_type*
  %128 = getelementptr inbounds %struct.word_type, %struct.word_type* %127, i32 0, i32 3
  %129 = bitcast %union.THIRD_UNION* %128 to %struct.anon.6*
  %130 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %129, i32 0, i32 1
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %130, i32 0, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @currentfont, align 4
  %134 = icmp ule i32 %133, 0
  br i1 %134, label %135, label %136

; <label>:135                                     ; preds = %33
  br label %140

; <label>:136                                     ; preds = %33
  %137 = load i32, i32* @currentfont, align 4
  %138 = load %union.rec*, %union.rec** %1, align 8
  %139 = call i32 @FontSize(i32 %137, %union.rec* %138)
  br label %140

; <label>:140                                     ; preds = %136, %135
  %141 = phi i32 [ 240, %135 ], [ %139, %136 ]
  %142 = load %union.rec*, %union.rec** %1, align 8
  %143 = bitcast %union.rec* %142 to %struct.closure_type*
  %144 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %143, i32 0, i32 4
  %145 = bitcast %union.FOURTH_UNION* %144 to %struct.STYLE*
  %146 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %145, i32 0, i32 0
  %147 = bitcast %union.anon* %146 to %struct.GAP*
  %148 = getelementptr inbounds %struct.GAP, %struct.GAP* %147, i32 0, i32 1
  %149 = load i16, i16* %148, align 2
  %150 = sext i16 %149 to i32
  %151 = load %union.rec*, %union.rec** %1, align 8
  %152 = bitcast %union.rec* %151 to %struct.closure_type*
  %153 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %152, i32 0, i32 4
  %154 = bitcast %union.FOURTH_UNION* %153 to %struct.STYLE*
  %155 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %154, i32 0, i32 1
  %156 = bitcast %union.anon.10* %155 to %struct.GAP*
  %157 = getelementptr inbounds %struct.GAP, %struct.GAP* %156, i32 0, i32 1
  %158 = load i16, i16* %157, align 2
  %159 = sext i16 %158 to i32
  %160 = load i32, i32* %2, align 4
  %161 = load i32, i32* %3, align 4
  %162 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0), i32 %103, i32 %118, i32 %125, i32 %132, i32 %141, i32 %150, i32 %159, i32 %160, i32 %161)
  br label %163

; <label>:163                                     ; preds = %140, %27
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_SaveGraphicState(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0))
  %4 = load i32, i32* @gs_stack_top, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @gs_stack_top, align 4
  %6 = load i32, i32* @gs_stack_top, align 4
  %7 = icmp sge i32 %6, 50
  br i1 %7, label %8, label %14

; <label>:8                                       ; preds = %0
  %9 = load %union.rec*, %union.rec** %1, align 8
  %10 = bitcast %union.rec* %9 to %struct.word_type*
  %11 = getelementptr inbounds %struct.word_type, %struct.word_type* %10, i32 0, i32 1
  %12 = bitcast %union.FIRST_UNION* %11 to %struct.FILE_POS*
  %13 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 49, i32 7, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.32, i32 0, i32 0), i32 1, %struct.FILE_POS* %12, i32 50)
  br label %14

; <label>:14                                      ; preds = %8, %0
  %15 = load i32, i32* @currentfont, align 4
  %16 = load i32, i32* @gs_stack_top, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %17
  %19 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* @currentcolour, align 4
  %21 = load i32, i32* @gs_stack_top, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %22
  %24 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* @cpexists, align 4
  %26 = load i32, i32* @gs_stack_top, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %27
  %29 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %28, i32 0, i32 2
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* @currenty, align 4
  %31 = load i32, i32* @gs_stack_top, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %32
  %34 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %33, i32 0, i32 3
  store i32 %30, i32* %34, align 4
  %35 = load i16, i16* @currentxheight2, align 2
  %36 = load i32, i32* @gs_stack_top, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %37
  %39 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %38, i32 0, i32 4
  store i16 %35, i16* %39, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_CoordTranslate(i32 %xdist, i32 %ydist) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %xdist, i32* %1, align 4
  store i32 %ydist, i32* %2, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i32 0, i32 0), i32 %4, i32 %5)
  store i32 0, i32* @cpexists, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @PS_PrintGraphicInclude(%union.rec* %x, i32 %colmark, i32 %rowmark) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %y = alloca %union.rec*, align 8
  %full_name = alloca %union.rec*, align 8
  %buff = alloca [512 x i8], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  %state = alloca i32, align 4
  %compressed = alloca i32, align 4
  store %union.rec* %x, %union.rec** %1, align 8
  store i32 %colmark, i32* %2, align 4
  store i32 %rowmark, i32* %3, align 4
  %4 = load %union.rec*, %union.rec** %1, align 8
  %5 = bitcast %union.rec* %4 to %struct.word_type*
  %6 = getelementptr inbounds %struct.word_type, %struct.word_type* %5, i32 0, i32 1
  %7 = bitcast %union.FIRST_UNION* %6 to %struct.anon*
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, 94
  br i1 %11, label %24, label %12

; <label>:12                                      ; preds = %0
  %13 = load %union.rec*, %union.rec** %1, align 8
  %14 = bitcast %union.rec* %13 to %struct.word_type*
  %15 = getelementptr inbounds %struct.word_type, %struct.word_type* %14, i32 0, i32 1
  %16 = bitcast %union.FIRST_UNION* %15 to %struct.anon*
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 95
  br i1 %20, label %24, label %21

; <label>:21                                      ; preds = %12
  %22 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %23 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i32 0, %struct.FILE_POS* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0))
  br label %24

; <label>:24                                      ; preds = %21, %12, %0
  %25 = load %union.rec*, %union.rec** %1, align 8
  %26 = bitcast %union.rec* %25 to %struct.word_type*
  %27 = getelementptr inbounds %struct.word_type, %struct.word_type* %26, i32 0, i32 2
  %28 = bitcast %union.SECOND_UNION* %27 to %struct.anon.2*
  %29 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %28, i32 0, i32 1
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %35, label %32

; <label>:32                                      ; preds = %24
  %33 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %34 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i32 0, %struct.FILE_POS* %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0))
  br label %35

; <label>:35                                      ; preds = %32, %24
  %36 = load %union.rec*, %union.rec** %1, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 0
  %39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %38, i32 0, i64 0
  %40 = getelementptr inbounds %struct.LIST, %struct.LIST* %39, i32 0, i32 1
  %41 = load %union.rec*, %union.rec** %40, align 8
  %42 = bitcast %union.rec* %41 to %struct.word_type*
  %43 = getelementptr inbounds %struct.word_type, %struct.word_type* %42, i32 0, i32 0
  %44 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %43, i32 0, i64 1
  %45 = getelementptr inbounds %struct.LIST, %struct.LIST* %44, i32 0, i32 0
  %46 = load %union.rec*, %union.rec** %45, align 8
  store %union.rec* %46, %union.rec** %y, align 8
  br label %47

; <label>:47                                      ; preds = %57, %35
  %48 = load %union.rec*, %union.rec** %y, align 8
  %49 = bitcast %union.rec* %48 to %struct.word_type*
  %50 = getelementptr inbounds %struct.word_type, %struct.word_type* %49, i32 0, i32 1
  %51 = bitcast %union.FIRST_UNION* %50 to %struct.anon*
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 0
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

; <label>:56                                      ; preds = %47
  br label %57

; <label>:57                                      ; preds = %56
  %58 = load %union.rec*, %union.rec** %y, align 8
  %59 = bitcast %union.rec* %58 to %struct.word_type*
  %60 = getelementptr inbounds %struct.word_type, %struct.word_type* %59, i32 0, i32 0
  %61 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %60, i32 0, i64 1
  %62 = getelementptr inbounds %struct.LIST, %struct.LIST* %61, i32 0, i32 0
  %63 = load %union.rec*, %union.rec** %62, align 8
  store %union.rec* %63, %union.rec** %y, align 8
  br label %47

; <label>:64                                      ; preds = %47
  %65 = load %union.rec*, %union.rec** %y, align 8
  %66 = bitcast %union.rec* %65 to %struct.word_type*
  %67 = getelementptr inbounds %struct.word_type, %struct.word_type* %66, i32 0, i32 4
  %68 = getelementptr inbounds [4 x i8], [4 x i8]* %67, i32 0, i32 0
  %69 = load %union.rec*, %union.rec** %1, align 8
  %70 = bitcast %union.rec* %69 to %struct.word_type*
  %71 = getelementptr inbounds %struct.word_type, %struct.word_type* %70, i32 0, i32 1
  %72 = bitcast %union.FIRST_UNION* %71 to %struct.anon*
  %73 = getelementptr inbounds %struct.anon, %struct.anon* %72, i32 0, i32 0
  %74 = load i8, i8* %73, align 1
  %75 = load %union.rec*, %union.rec** %y, align 8
  %76 = bitcast %union.rec* %75 to %struct.word_type*
  %77 = getelementptr inbounds %struct.word_type, %struct.word_type* %76, i32 0, i32 1
  %78 = bitcast %union.FIRST_UNION* %77 to %struct.FILE_POS*
  %79 = call %struct._IO_FILE* @OpenIncGraphicFile(i8* %68, i8 zeroext %74, %union.rec** %full_name, %struct.FILE_POS* %78, i32* %compressed)
  store %struct._IO_FILE* %79, %struct._IO_FILE** %fp, align 8
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %81 = icmp ne %struct._IO_FILE* %80, null
  br i1 %81, label %85, label %82

; <label>:82                                      ; preds = %64
  %83 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %84 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i32 0, %struct.FILE_POS* %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0))
  br label %85

; <label>:85                                      ; preds = %82, %64
  %86 = load %union.rec*, %union.rec** %1, align 8
  %87 = bitcast %union.rec* %86 to %struct.closure_type*
  %88 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %87, i32 0, i32 4
  %89 = bitcast %union.FOURTH_UNION* %88 to %struct.STYLE*
  %90 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 4095
  %93 = load i32, i32* @currentfont, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %113

; <label>:95                                      ; preds = %85
  %96 = load %union.rec*, %union.rec** %1, align 8
  %97 = bitcast %union.rec* %96 to %struct.closure_type*
  %98 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %97, i32 0, i32 4
  %99 = bitcast %union.FOURTH_UNION* %98 to %struct.STYLE*
  %100 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 4095
  store i32 %102, i32* @currentfont, align 4
  %103 = load i32, i32* @currentfont, align 4
  %104 = call i32 @FontHalfXHeight(i32 %103)
  %105 = trunc i32 %104 to i16
  store i16 %105, i16* @currentxheight2, align 2
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %107 = load i32, i32* @currentfont, align 4
  %108 = load %union.rec*, %union.rec** %1, align 8
  %109 = call i32 @FontSize(i32 %107, %union.rec* %108)
  %110 = load i32, i32* @currentfont, align 4
  %111 = call i8* @FontName(i32 %110)
  %112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 %109, i8* %111)
  br label %113

; <label>:113                                     ; preds = %95, %85
  %114 = load %union.rec*, %union.rec** %1, align 8
  %115 = bitcast %union.rec* %114 to %struct.closure_type*
  %116 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %115, i32 0, i32 4
  %117 = bitcast %union.FOURTH_UNION* %116 to %struct.STYLE*
  %118 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = lshr i32 %119, 12
  %121 = and i32 %120, 1023
  %122 = load i32, i32* @currentcolour, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %141

; <label>:124                                     ; preds = %113
  %125 = load %union.rec*, %union.rec** %1, align 8
  %126 = bitcast %union.rec* %125 to %struct.closure_type*
  %127 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %126, i32 0, i32 4
  %128 = bitcast %union.FOURTH_UNION* %127 to %struct.STYLE*
  %129 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = lshr i32 %130, 12
  %132 = and i32 %131, 1023
  store i32 %132, i32* @currentcolour, align 4
  %133 = load i32, i32* @currentcolour, align 4
  %134 = icmp ugt i32 %133, 0
  br i1 %134, label %135, label %140

; <label>:135                                     ; preds = %124
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %137 = load i32, i32* @currentcolour, align 4
  %138 = call i8* @ColourCommand(i32 %137)
  %139 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* %138)
  br label %140

; <label>:140                                     ; preds = %135, %124
  br label %141

; <label>:141                                     ; preds = %140, %113
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %143 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %142, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0))
  %144 = load i32, i32* %2, align 4
  %145 = load %union.rec*, %union.rec** %1, align 8
  %146 = bitcast %union.rec* %145 to %struct.word_type*
  %147 = getelementptr inbounds %struct.word_type, %struct.word_type* %146, i32 0, i32 3
  %148 = bitcast %union.THIRD_UNION* %147 to %struct.anon.6*
  %149 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %148, i32 0, i32 0
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %149, i32 0, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %144, %151
  %153 = load i32, i32* %3, align 4
  %154 = load %union.rec*, %union.rec** %1, align 8
  %155 = bitcast %union.rec* %154 to %struct.word_type*
  %156 = getelementptr inbounds %struct.word_type, %struct.word_type* %155, i32 0, i32 3
  %157 = bitcast %union.THIRD_UNION* %156 to %struct.anon.6*
  %158 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %157, i32 0, i32 1
  %159 = getelementptr inbounds [2 x i32], [2 x i32]* %158, i32 0, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 %153, %160
  call void @PS_CoordTranslate(i32 %152, i32 %161)
  call void @PS_CoordScale(float 2.000000e+01, float 2.000000e+01)
  %162 = load %union.rec*, %union.rec** %y, align 8
  %163 = bitcast %union.rec* %162 to %struct.word_type*
  %164 = getelementptr inbounds %struct.word_type, %struct.word_type* %163, i32 0, i32 3
  %165 = bitcast %union.THIRD_UNION* %164 to %struct.anon.6*
  %166 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %165, i32 0, i32 0
  %167 = getelementptr inbounds [2 x i32], [2 x i32]* %166, i32 0, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = sub nsw i32 0, %168
  %170 = load %union.rec*, %union.rec** %y, align 8
  %171 = bitcast %union.rec* %170 to %struct.word_type*
  %172 = getelementptr inbounds %struct.word_type, %struct.word_type* %171, i32 0, i32 3
  %173 = bitcast %union.THIRD_UNION* %172 to %struct.anon.6*
  %174 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %173, i32 0, i32 0
  %175 = getelementptr inbounds [2 x i32], [2 x i32]* %174, i32 0, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = sub nsw i32 0, %176
  call void @PS_CoordTranslate(i32 %169, i32 %177)
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %179 = load %union.rec*, %union.rec** %full_name, align 8
  %180 = bitcast %union.rec* %179 to %struct.word_type*
  %181 = getelementptr inbounds %struct.word_type, %struct.word_type* %180, i32 0, i32 4
  %182 = getelementptr inbounds [4 x i8], [4 x i8]* %181, i32 0, i32 0
  %183 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %178, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0), i8* %182)
  %184 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %186 = call i8* @fgets(i8* %184, i32 512, %struct._IO_FILE* %185)
  %187 = icmp eq i8* %186, null
  %188 = select i1 %187, i32 2, i32 0
  store i32 %188, i32* %state, align 4
  br label %189

; <label>:189                                     ; preds = %624, %141
  %190 = load i32, i32* %state, align 4
  %191 = icmp ne i32 %190, 2
  br i1 %191, label %192, label %625

; <label>:192                                     ; preds = %189
  %193 = load i32, i32* %state, align 4
  switch i32 %193, label %624 [
    i32 0, label %194
    i32 1, label %425
  ]

; <label>:194                                     ; preds = %192
  %195 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %196 = call i32 @StringBeginsWith(i8* %195, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0))
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %382

; <label>:198                                     ; preds = %194
  %199 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %200 = call i32 @StringContains(i8* %199, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0))
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %382, label %202

; <label>:202                                     ; preds = %198
  %203 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 26
  %204 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %205 = call %union.rec* @MakeWord(i32 11, i8* %203, %struct.FILE_POS* %204)
  store %union.rec* %205, %union.rec** %y, align 8
  %206 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %207 = zext i8 %206 to i32
  store i32 %207, i32* @zz_size, align 4
  %208 = sext i32 %207 to i64
  %209 = icmp uge i64 %208, 265
  br i1 %209, label %210, label %213

; <label>:210                                     ; preds = %202
  %211 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %212 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %211)
  br label %238

; <label>:213                                     ; preds = %202
  %214 = load i32, i32* @zz_size, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %215
  %217 = load %union.rec*, %union.rec** %216, align 8
  %218 = icmp eq %union.rec* %217, null
  br i1 %218, label %219, label %223

; <label>:219                                     ; preds = %213
  %220 = load i32, i32* @zz_size, align 4
  %221 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %222 = call %union.rec* @GetMemory(i32 %220, %struct.FILE_POS* %221)
  store %union.rec* %222, %union.rec** @zz_hold, align 8
  br label %237

; <label>:223                                     ; preds = %213
  %224 = load i32, i32* @zz_size, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %225
  %227 = load %union.rec*, %union.rec** %226, align 8
  store %union.rec* %227, %union.rec** @zz_hold, align 8
  store %union.rec* %227, %union.rec** @zz_hold, align 8
  %228 = load %union.rec*, %union.rec** @zz_hold, align 8
  %229 = bitcast %union.rec* %228 to %struct.word_type*
  %230 = getelementptr inbounds %struct.word_type, %struct.word_type* %229, i32 0, i32 0
  %231 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %230, i32 0, i64 0
  %232 = getelementptr inbounds %struct.LIST, %struct.LIST* %231, i32 0, i32 0
  %233 = load %union.rec*, %union.rec** %232, align 8
  %234 = load i32, i32* @zz_size, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %235
  store %union.rec* %233, %union.rec** %236, align 8
  br label %237

; <label>:237                                     ; preds = %223, %219
  br label %238

; <label>:238                                     ; preds = %237, %210
  %239 = load %union.rec*, %union.rec** @zz_hold, align 8
  %240 = bitcast %union.rec* %239 to %struct.word_type*
  %241 = getelementptr inbounds %struct.word_type, %struct.word_type* %240, i32 0, i32 1
  %242 = bitcast %union.FIRST_UNION* %241 to %struct.anon*
  %243 = getelementptr inbounds %struct.anon, %struct.anon* %242, i32 0, i32 0
  store i8 0, i8* %243, align 1
  %244 = load %union.rec*, %union.rec** @zz_hold, align 8
  %245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %246 = bitcast %union.rec* %245 to %struct.word_type*
  %247 = getelementptr inbounds %struct.word_type, %struct.word_type* %246, i32 0, i32 0
  %248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %247, i32 0, i64 1
  %249 = getelementptr inbounds %struct.LIST, %struct.LIST* %248, i32 0, i32 1
  store %union.rec* %244, %union.rec** %249, align 8
  %250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %251 = bitcast %union.rec* %250 to %struct.word_type*
  %252 = getelementptr inbounds %struct.word_type, %struct.word_type* %251, i32 0, i32 0
  %253 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %252, i32 0, i64 1
  %254 = getelementptr inbounds %struct.LIST, %struct.LIST* %253, i32 0, i32 0
  store %union.rec* %244, %union.rec** %254, align 8
  %255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %256 = bitcast %union.rec* %255 to %struct.word_type*
  %257 = getelementptr inbounds %struct.word_type, %struct.word_type* %256, i32 0, i32 0
  %258 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %257, i32 0, i64 0
  %259 = getelementptr inbounds %struct.LIST, %struct.LIST* %258, i32 0, i32 1
  store %union.rec* %244, %union.rec** %259, align 8
  %260 = load %union.rec*, %union.rec** @zz_hold, align 8
  %261 = bitcast %union.rec* %260 to %struct.word_type*
  %262 = getelementptr inbounds %struct.word_type, %struct.word_type* %261, i32 0, i32 0
  %263 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %262, i32 0, i64 0
  %264 = getelementptr inbounds %struct.LIST, %struct.LIST* %263, i32 0, i32 0
  store %union.rec* %244, %union.rec** %264, align 8
  store %union.rec* %244, %union.rec** @xx_link, align 8
  %265 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %265, %union.rec** @zz_res, align 8
  %266 = load %union.rec*, %union.rec** @needs, align 8
  store %union.rec* %266, %union.rec** @zz_hold, align 8
  %267 = load %union.rec*, %union.rec** @zz_hold, align 8
  %268 = icmp eq %union.rec* %267, null
  br i1 %268, label %269, label %271

; <label>:269                                     ; preds = %238
  %270 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %319

; <label>:271                                     ; preds = %238
  %272 = load %union.rec*, %union.rec** @zz_res, align 8
  %273 = icmp eq %union.rec* %272, null
  br i1 %273, label %274, label %276

; <label>:274                                     ; preds = %271
  %275 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %317

; <label>:276                                     ; preds = %271
  %277 = load %union.rec*, %union.rec** @zz_hold, align 8
  %278 = bitcast %union.rec* %277 to %struct.word_type*
  %279 = getelementptr inbounds %struct.word_type, %struct.word_type* %278, i32 0, i32 0
  %280 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %279, i32 0, i64 0
  %281 = getelementptr inbounds %struct.LIST, %struct.LIST* %280, i32 0, i32 0
  %282 = load %union.rec*, %union.rec** %281, align 8
  store %union.rec* %282, %union.rec** @zz_tmp, align 8
  %283 = load %union.rec*, %union.rec** @zz_res, align 8
  %284 = bitcast %union.rec* %283 to %struct.word_type*
  %285 = getelementptr inbounds %struct.word_type, %struct.word_type* %284, i32 0, i32 0
  %286 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %285, i32 0, i64 0
  %287 = getelementptr inbounds %struct.LIST, %struct.LIST* %286, i32 0, i32 0
  %288 = load %union.rec*, %union.rec** %287, align 8
  %289 = load %union.rec*, %union.rec** @zz_hold, align 8
  %290 = bitcast %union.rec* %289 to %struct.word_type*
  %291 = getelementptr inbounds %struct.word_type, %struct.word_type* %290, i32 0, i32 0
  %292 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %291, i32 0, i64 0
  %293 = getelementptr inbounds %struct.LIST, %struct.LIST* %292, i32 0, i32 0
  store %union.rec* %288, %union.rec** %293, align 8
  %294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %295 = load %union.rec*, %union.rec** @zz_res, align 8
  %296 = bitcast %union.rec* %295 to %struct.word_type*
  %297 = getelementptr inbounds %struct.word_type, %struct.word_type* %296, i32 0, i32 0
  %298 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %297, i32 0, i64 0
  %299 = getelementptr inbounds %struct.LIST, %struct.LIST* %298, i32 0, i32 0
  %300 = load %union.rec*, %union.rec** %299, align 8
  %301 = bitcast %union.rec* %300 to %struct.word_type*
  %302 = getelementptr inbounds %struct.word_type, %struct.word_type* %301, i32 0, i32 0
  %303 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %302, i32 0, i64 0
  %304 = getelementptr inbounds %struct.LIST, %struct.LIST* %303, i32 0, i32 1
  store %union.rec* %294, %union.rec** %304, align 8
  %305 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %306 = load %union.rec*, %union.rec** @zz_res, align 8
  %307 = bitcast %union.rec* %306 to %struct.word_type*
  %308 = getelementptr inbounds %struct.word_type, %struct.word_type* %307, i32 0, i32 0
  %309 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %308, i32 0, i64 0
  %310 = getelementptr inbounds %struct.LIST, %struct.LIST* %309, i32 0, i32 0
  store %union.rec* %305, %union.rec** %310, align 8
  %311 = load %union.rec*, %union.rec** @zz_res, align 8
  %312 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %313 = bitcast %union.rec* %312 to %struct.word_type*
  %314 = getelementptr inbounds %struct.word_type, %struct.word_type* %313, i32 0, i32 0
  %315 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %314, i32 0, i64 0
  %316 = getelementptr inbounds %struct.LIST, %struct.LIST* %315, i32 0, i32 1
  store %union.rec* %311, %union.rec** %316, align 8
  br label %317

; <label>:317                                     ; preds = %276, %274
  %318 = phi %union.rec* [ %275, %274 ], [ %311, %276 ]
  br label %319

; <label>:319                                     ; preds = %317, %269
  %320 = phi %union.rec* [ %270, %269 ], [ %318, %317 ]
  %321 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %321, %union.rec** @zz_res, align 8
  %322 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %322, %union.rec** @zz_hold, align 8
  %323 = load %union.rec*, %union.rec** @zz_hold, align 8
  %324 = icmp eq %union.rec* %323, null
  br i1 %324, label %325, label %327

; <label>:325                                     ; preds = %319
  %326 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %375

; <label>:327                                     ; preds = %319
  %328 = load %union.rec*, %union.rec** @zz_res, align 8
  %329 = icmp eq %union.rec* %328, null
  br i1 %329, label %330, label %332

; <label>:330                                     ; preds = %327
  %331 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %373

; <label>:332                                     ; preds = %327
  %333 = load %union.rec*, %union.rec** @zz_hold, align 8
  %334 = bitcast %union.rec* %333 to %struct.word_type*
  %335 = getelementptr inbounds %struct.word_type, %struct.word_type* %334, i32 0, i32 0
  %336 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %335, i32 0, i64 1
  %337 = getelementptr inbounds %struct.LIST, %struct.LIST* %336, i32 0, i32 0
  %338 = load %union.rec*, %union.rec** %337, align 8
  store %union.rec* %338, %union.rec** @zz_tmp, align 8
  %339 = load %union.rec*, %union.rec** @zz_res, align 8
  %340 = bitcast %union.rec* %339 to %struct.word_type*
  %341 = getelementptr inbounds %struct.word_type, %struct.word_type* %340, i32 0, i32 0
  %342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %341, i32 0, i64 1
  %343 = getelementptr inbounds %struct.LIST, %struct.LIST* %342, i32 0, i32 0
  %344 = load %union.rec*, %union.rec** %343, align 8
  %345 = load %union.rec*, %union.rec** @zz_hold, align 8
  %346 = bitcast %union.rec* %345 to %struct.word_type*
  %347 = getelementptr inbounds %struct.word_type, %struct.word_type* %346, i32 0, i32 0
  %348 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %347, i32 0, i64 1
  %349 = getelementptr inbounds %struct.LIST, %struct.LIST* %348, i32 0, i32 0
  store %union.rec* %344, %union.rec** %349, align 8
  %350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %351 = load %union.rec*, %union.rec** @zz_res, align 8
  %352 = bitcast %union.rec* %351 to %struct.word_type*
  %353 = getelementptr inbounds %struct.word_type, %struct.word_type* %352, i32 0, i32 0
  %354 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %353, i32 0, i64 1
  %355 = getelementptr inbounds %struct.LIST, %struct.LIST* %354, i32 0, i32 0
  %356 = load %union.rec*, %union.rec** %355, align 8
  %357 = bitcast %union.rec* %356 to %struct.word_type*
  %358 = getelementptr inbounds %struct.word_type, %struct.word_type* %357, i32 0, i32 0
  %359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %358, i32 0, i64 1
  %360 = getelementptr inbounds %struct.LIST, %struct.LIST* %359, i32 0, i32 1
  store %union.rec* %350, %union.rec** %360, align 8
  %361 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %362 = load %union.rec*, %union.rec** @zz_res, align 8
  %363 = bitcast %union.rec* %362 to %struct.word_type*
  %364 = getelementptr inbounds %struct.word_type, %struct.word_type* %363, i32 0, i32 0
  %365 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %364, i32 0, i64 1
  %366 = getelementptr inbounds %struct.LIST, %struct.LIST* %365, i32 0, i32 0
  store %union.rec* %361, %union.rec** %366, align 8
  %367 = load %union.rec*, %union.rec** @zz_res, align 8
  %368 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %369 = bitcast %union.rec* %368 to %struct.word_type*
  %370 = getelementptr inbounds %struct.word_type, %struct.word_type* %369, i32 0, i32 0
  %371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %370, i32 0, i64 1
  %372 = getelementptr inbounds %struct.LIST, %struct.LIST* %371, i32 0, i32 1
  store %union.rec* %367, %union.rec** %372, align 8
  br label %373

; <label>:373                                     ; preds = %332, %330
  %374 = phi %union.rec* [ %331, %330 ], [ %367, %332 ]
  br label %375

; <label>:375                                     ; preds = %373, %325
  %376 = phi %union.rec* [ %326, %325 ], [ %374, %373 ]
  %377 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %378 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %379 = call i8* @fgets(i8* %377, i32 512, %struct._IO_FILE* %378)
  %380 = icmp eq i8* %379, null
  %381 = select i1 %380, i32 2, i32 1
  store i32 %381, i32* %state, align 4
  br label %424

; <label>:382                                     ; preds = %198, %194
  %383 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %384 = call i32 @StringBeginsWith(i8* %383, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0))
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %396

; <label>:386                                     ; preds = %382
  %387 = load %union.rec*, %union.rec** %1, align 8
  %388 = bitcast %union.rec* %387 to %struct.word_type*
  %389 = getelementptr inbounds %struct.word_type, %struct.word_type* %388, i32 0, i32 1
  %390 = bitcast %union.FIRST_UNION* %389 to %struct.FILE_POS*
  %391 = load %union.rec*, %union.rec** %full_name, align 8
  %392 = bitcast %union.rec* %391 to %struct.word_type*
  %393 = getelementptr inbounds %struct.word_type, %struct.word_type* %392, i32 0, i32 4
  %394 = getelementptr inbounds [4 x i8], [4 x i8]* %393, i32 0, i32 0
  %395 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 49, i32 10, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i32 0, i32 0), i32 2, %struct.FILE_POS* %390, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i8* %394)
  br label %396

; <label>:396                                     ; preds = %386, %382
  %397 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %398 = call i32 @StringBeginsWith(i8* %397, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0))
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %410

; <label>:400                                     ; preds = %396
  %401 = load %union.rec*, %union.rec** %1, align 8
  %402 = bitcast %union.rec* %401 to %struct.word_type*
  %403 = getelementptr inbounds %struct.word_type, %struct.word_type* %402, i32 0, i32 1
  %404 = bitcast %union.FIRST_UNION* %403 to %struct.FILE_POS*
  %405 = load %union.rec*, %union.rec** %full_name, align 8
  %406 = bitcast %union.rec* %405 to %struct.word_type*
  %407 = getelementptr inbounds %struct.word_type, %struct.word_type* %406, i32 0, i32 4
  %408 = getelementptr inbounds [4 x i8], [4 x i8]* %407, i32 0, i32 0
  %409 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 49, i32 11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i32 0, i32 0), i32 2, %struct.FILE_POS* %404, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i8* %408)
  br label %410

; <label>:410                                     ; preds = %400, %396
  %411 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %412 = call i32 @strip_out(i8* %411)
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %418, label %414

; <label>:414                                     ; preds = %410
  %415 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %416 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %417 = call i32 @fputs(i8* %415, %struct._IO_FILE* %416)
  br label %418

; <label>:418                                     ; preds = %414, %410
  %419 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %420 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %421 = call i8* @fgets(i8* %419, i32 512, %struct._IO_FILE* %420)
  %422 = icmp eq i8* %421, null
  %423 = select i1 %422, i32 2, i32 0
  store i32 %423, i32* %state, align 4
  br label %424

; <label>:424                                     ; preds = %418, %375
  br label %624

; <label>:425                                     ; preds = %192
  %426 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %427 = call i32 @StringBeginsWith(i8* %426, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0))
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %609

; <label>:429                                     ; preds = %425
  %430 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 3
  %431 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %432 = call %union.rec* @MakeWord(i32 11, i8* %430, %struct.FILE_POS* %431)
  store %union.rec* %432, %union.rec** %1, align 8
  %433 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %434 = zext i8 %433 to i32
  store i32 %434, i32* @zz_size, align 4
  %435 = sext i32 %434 to i64
  %436 = icmp uge i64 %435, 265
  br i1 %436, label %437, label %440

; <label>:437                                     ; preds = %429
  %438 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %439 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %438)
  br label %465

; <label>:440                                     ; preds = %429
  %441 = load i32, i32* @zz_size, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %442
  %444 = load %union.rec*, %union.rec** %443, align 8
  %445 = icmp eq %union.rec* %444, null
  br i1 %445, label %446, label %450

; <label>:446                                     ; preds = %440
  %447 = load i32, i32* @zz_size, align 4
  %448 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %449 = call %union.rec* @GetMemory(i32 %447, %struct.FILE_POS* %448)
  store %union.rec* %449, %union.rec** @zz_hold, align 8
  br label %464

; <label>:450                                     ; preds = %440
  %451 = load i32, i32* @zz_size, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %452
  %454 = load %union.rec*, %union.rec** %453, align 8
  store %union.rec* %454, %union.rec** @zz_hold, align 8
  store %union.rec* %454, %union.rec** @zz_hold, align 8
  %455 = load %union.rec*, %union.rec** @zz_hold, align 8
  %456 = bitcast %union.rec* %455 to %struct.word_type*
  %457 = getelementptr inbounds %struct.word_type, %struct.word_type* %456, i32 0, i32 0
  %458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %457, i32 0, i64 0
  %459 = getelementptr inbounds %struct.LIST, %struct.LIST* %458, i32 0, i32 0
  %460 = load %union.rec*, %union.rec** %459, align 8
  %461 = load i32, i32* @zz_size, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %462
  store %union.rec* %460, %union.rec** %463, align 8
  br label %464

; <label>:464                                     ; preds = %450, %446
  br label %465

; <label>:465                                     ; preds = %464, %437
  %466 = load %union.rec*, %union.rec** @zz_hold, align 8
  %467 = bitcast %union.rec* %466 to %struct.word_type*
  %468 = getelementptr inbounds %struct.word_type, %struct.word_type* %467, i32 0, i32 1
  %469 = bitcast %union.FIRST_UNION* %468 to %struct.anon*
  %470 = getelementptr inbounds %struct.anon, %struct.anon* %469, i32 0, i32 0
  store i8 0, i8* %470, align 1
  %471 = load %union.rec*, %union.rec** @zz_hold, align 8
  %472 = load %union.rec*, %union.rec** @zz_hold, align 8
  %473 = bitcast %union.rec* %472 to %struct.word_type*
  %474 = getelementptr inbounds %struct.word_type, %struct.word_type* %473, i32 0, i32 0
  %475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %474, i32 0, i64 1
  %476 = getelementptr inbounds %struct.LIST, %struct.LIST* %475, i32 0, i32 1
  store %union.rec* %471, %union.rec** %476, align 8
  %477 = load %union.rec*, %union.rec** @zz_hold, align 8
  %478 = bitcast %union.rec* %477 to %struct.word_type*
  %479 = getelementptr inbounds %struct.word_type, %struct.word_type* %478, i32 0, i32 0
  %480 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %479, i32 0, i64 1
  %481 = getelementptr inbounds %struct.LIST, %struct.LIST* %480, i32 0, i32 0
  store %union.rec* %471, %union.rec** %481, align 8
  %482 = load %union.rec*, %union.rec** @zz_hold, align 8
  %483 = bitcast %union.rec* %482 to %struct.word_type*
  %484 = getelementptr inbounds %struct.word_type, %struct.word_type* %483, i32 0, i32 0
  %485 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %484, i32 0, i64 0
  %486 = getelementptr inbounds %struct.LIST, %struct.LIST* %485, i32 0, i32 1
  store %union.rec* %471, %union.rec** %486, align 8
  %487 = load %union.rec*, %union.rec** @zz_hold, align 8
  %488 = bitcast %union.rec* %487 to %struct.word_type*
  %489 = getelementptr inbounds %struct.word_type, %struct.word_type* %488, i32 0, i32 0
  %490 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %489, i32 0, i64 0
  %491 = getelementptr inbounds %struct.LIST, %struct.LIST* %490, i32 0, i32 0
  store %union.rec* %471, %union.rec** %491, align 8
  store %union.rec* %471, %union.rec** @xx_link, align 8
  %492 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %492, %union.rec** @zz_res, align 8
  %493 = load %union.rec*, %union.rec** @needs, align 8
  store %union.rec* %493, %union.rec** @zz_hold, align 8
  %494 = load %union.rec*, %union.rec** @zz_hold, align 8
  %495 = icmp eq %union.rec* %494, null
  br i1 %495, label %496, label %498

; <label>:496                                     ; preds = %465
  %497 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %546

; <label>:498                                     ; preds = %465
  %499 = load %union.rec*, %union.rec** @zz_res, align 8
  %500 = icmp eq %union.rec* %499, null
  br i1 %500, label %501, label %503

; <label>:501                                     ; preds = %498
  %502 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %544

; <label>:503                                     ; preds = %498
  %504 = load %union.rec*, %union.rec** @zz_hold, align 8
  %505 = bitcast %union.rec* %504 to %struct.word_type*
  %506 = getelementptr inbounds %struct.word_type, %struct.word_type* %505, i32 0, i32 0
  %507 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %506, i32 0, i64 0
  %508 = getelementptr inbounds %struct.LIST, %struct.LIST* %507, i32 0, i32 0
  %509 = load %union.rec*, %union.rec** %508, align 8
  store %union.rec* %509, %union.rec** @zz_tmp, align 8
  %510 = load %union.rec*, %union.rec** @zz_res, align 8
  %511 = bitcast %union.rec* %510 to %struct.word_type*
  %512 = getelementptr inbounds %struct.word_type, %struct.word_type* %511, i32 0, i32 0
  %513 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %512, i32 0, i64 0
  %514 = getelementptr inbounds %struct.LIST, %struct.LIST* %513, i32 0, i32 0
  %515 = load %union.rec*, %union.rec** %514, align 8
  %516 = load %union.rec*, %union.rec** @zz_hold, align 8
  %517 = bitcast %union.rec* %516 to %struct.word_type*
  %518 = getelementptr inbounds %struct.word_type, %struct.word_type* %517, i32 0, i32 0
  %519 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %518, i32 0, i64 0
  %520 = getelementptr inbounds %struct.LIST, %struct.LIST* %519, i32 0, i32 0
  store %union.rec* %515, %union.rec** %520, align 8
  %521 = load %union.rec*, %union.rec** @zz_hold, align 8
  %522 = load %union.rec*, %union.rec** @zz_res, align 8
  %523 = bitcast %union.rec* %522 to %struct.word_type*
  %524 = getelementptr inbounds %struct.word_type, %struct.word_type* %523, i32 0, i32 0
  %525 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %524, i32 0, i64 0
  %526 = getelementptr inbounds %struct.LIST, %struct.LIST* %525, i32 0, i32 0
  %527 = load %union.rec*, %union.rec** %526, align 8
  %528 = bitcast %union.rec* %527 to %struct.word_type*
  %529 = getelementptr inbounds %struct.word_type, %struct.word_type* %528, i32 0, i32 0
  %530 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %529, i32 0, i64 0
  %531 = getelementptr inbounds %struct.LIST, %struct.LIST* %530, i32 0, i32 1
  store %union.rec* %521, %union.rec** %531, align 8
  %532 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %533 = load %union.rec*, %union.rec** @zz_res, align 8
  %534 = bitcast %union.rec* %533 to %struct.word_type*
  %535 = getelementptr inbounds %struct.word_type, %struct.word_type* %534, i32 0, i32 0
  %536 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %535, i32 0, i64 0
  %537 = getelementptr inbounds %struct.LIST, %struct.LIST* %536, i32 0, i32 0
  store %union.rec* %532, %union.rec** %537, align 8
  %538 = load %union.rec*, %union.rec** @zz_res, align 8
  %539 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %540 = bitcast %union.rec* %539 to %struct.word_type*
  %541 = getelementptr inbounds %struct.word_type, %struct.word_type* %540, i32 0, i32 0
  %542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %541, i32 0, i64 0
  %543 = getelementptr inbounds %struct.LIST, %struct.LIST* %542, i32 0, i32 1
  store %union.rec* %538, %union.rec** %543, align 8
  br label %544

; <label>:544                                     ; preds = %503, %501
  %545 = phi %union.rec* [ %502, %501 ], [ %538, %503 ]
  br label %546

; <label>:546                                     ; preds = %544, %496
  %547 = phi %union.rec* [ %497, %496 ], [ %545, %544 ]
  %548 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %548, %union.rec** @zz_res, align 8
  %549 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %549, %union.rec** @zz_hold, align 8
  %550 = load %union.rec*, %union.rec** @zz_hold, align 8
  %551 = icmp eq %union.rec* %550, null
  br i1 %551, label %552, label %554

; <label>:552                                     ; preds = %546
  %553 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %602

; <label>:554                                     ; preds = %546
  %555 = load %union.rec*, %union.rec** @zz_res, align 8
  %556 = icmp eq %union.rec* %555, null
  br i1 %556, label %557, label %559

; <label>:557                                     ; preds = %554
  %558 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %600

; <label>:559                                     ; preds = %554
  %560 = load %union.rec*, %union.rec** @zz_hold, align 8
  %561 = bitcast %union.rec* %560 to %struct.word_type*
  %562 = getelementptr inbounds %struct.word_type, %struct.word_type* %561, i32 0, i32 0
  %563 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %562, i32 0, i64 1
  %564 = getelementptr inbounds %struct.LIST, %struct.LIST* %563, i32 0, i32 0
  %565 = load %union.rec*, %union.rec** %564, align 8
  store %union.rec* %565, %union.rec** @zz_tmp, align 8
  %566 = load %union.rec*, %union.rec** @zz_res, align 8
  %567 = bitcast %union.rec* %566 to %struct.word_type*
  %568 = getelementptr inbounds %struct.word_type, %struct.word_type* %567, i32 0, i32 0
  %569 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %568, i32 0, i64 1
  %570 = getelementptr inbounds %struct.LIST, %struct.LIST* %569, i32 0, i32 0
  %571 = load %union.rec*, %union.rec** %570, align 8
  %572 = load %union.rec*, %union.rec** @zz_hold, align 8
  %573 = bitcast %union.rec* %572 to %struct.word_type*
  %574 = getelementptr inbounds %struct.word_type, %struct.word_type* %573, i32 0, i32 0
  %575 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %574, i32 0, i64 1
  %576 = getelementptr inbounds %struct.LIST, %struct.LIST* %575, i32 0, i32 0
  store %union.rec* %571, %union.rec** %576, align 8
  %577 = load %union.rec*, %union.rec** @zz_hold, align 8
  %578 = load %union.rec*, %union.rec** @zz_res, align 8
  %579 = bitcast %union.rec* %578 to %struct.word_type*
  %580 = getelementptr inbounds %struct.word_type, %struct.word_type* %579, i32 0, i32 0
  %581 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %580, i32 0, i64 1
  %582 = getelementptr inbounds %struct.LIST, %struct.LIST* %581, i32 0, i32 0
  %583 = load %union.rec*, %union.rec** %582, align 8
  %584 = bitcast %union.rec* %583 to %struct.word_type*
  %585 = getelementptr inbounds %struct.word_type, %struct.word_type* %584, i32 0, i32 0
  %586 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %585, i32 0, i64 1
  %587 = getelementptr inbounds %struct.LIST, %struct.LIST* %586, i32 0, i32 1
  store %union.rec* %577, %union.rec** %587, align 8
  %588 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %589 = load %union.rec*, %union.rec** @zz_res, align 8
  %590 = bitcast %union.rec* %589 to %struct.word_type*
  %591 = getelementptr inbounds %struct.word_type, %struct.word_type* %590, i32 0, i32 0
  %592 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %591, i32 0, i64 1
  %593 = getelementptr inbounds %struct.LIST, %struct.LIST* %592, i32 0, i32 0
  store %union.rec* %588, %union.rec** %593, align 8
  %594 = load %union.rec*, %union.rec** @zz_res, align 8
  %595 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %596 = bitcast %union.rec* %595 to %struct.word_type*
  %597 = getelementptr inbounds %struct.word_type, %struct.word_type* %596, i32 0, i32 0
  %598 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %597, i32 0, i64 1
  %599 = getelementptr inbounds %struct.LIST, %struct.LIST* %598, i32 0, i32 1
  store %union.rec* %594, %union.rec** %599, align 8
  br label %600

; <label>:600                                     ; preds = %559, %557
  %601 = phi %union.rec* [ %558, %557 ], [ %594, %559 ]
  br label %602

; <label>:602                                     ; preds = %600, %552
  %603 = phi %union.rec* [ %553, %552 ], [ %601, %600 ]
  %604 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %605 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %606 = call i8* @fgets(i8* %604, i32 512, %struct._IO_FILE* %605)
  %607 = icmp eq i8* %606, null
  %608 = select i1 %607, i32 2, i32 1
  store i32 %608, i32* %state, align 4
  br label %623

; <label>:609                                     ; preds = %425
  %610 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %611 = call i32 @strip_out(i8* %610)
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %617, label %613

; <label>:613                                     ; preds = %609
  %614 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %615 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %616 = call i32 @fputs(i8* %614, %struct._IO_FILE* %615)
  br label %617

; <label>:617                                     ; preds = %613, %609
  %618 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %619 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %620 = call i8* @fgets(i8* %618, i32 512, %struct._IO_FILE* %619)
  %621 = icmp eq i8* %620, null
  %622 = select i1 %621, i32 2, i32 0
  store i32 %622, i32* %state, align 4
  br label %623

; <label>:623                                     ; preds = %617, %602
  br label %624

; <label>:624                                     ; preds = %192, %623, %424
  br label %189

; <label>:625                                     ; preds = %189
  %626 = load %union.rec*, %union.rec** %full_name, align 8
  %627 = call i32 @DisposeObject(%union.rec* %626)
  %628 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %629 = call i32 @fclose(%struct._IO_FILE* %628)
  %630 = load i32, i32* %compressed, align 4
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %632, label %634

; <label>:632                                     ; preds = %625
  %633 = call i32 @remove(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0)) #4
  br label %634

; <label>:634                                     ; preds = %632, %625
  %635 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %636 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %635, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0))
  store i32 0, i32* @wordcount, align 4
  ret void
}

declare %struct._IO_FILE* @OpenIncGraphicFile(i8*, i8 zeroext, %union.rec**, %struct.FILE_POS*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @PS_CoordScale(float %hfactor, float %vfactor) #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  store float %hfactor, float* %1, align 4
  store float %vfactor, float* %2, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %4 = load float, float* %1, align 4
  %5 = fpext float %4 to double
  %6 = load float, float* %2, align 4
  %7 = fpext float %6 to double
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0), double %5, double %7)
  store i32 0, i32* @cpexists, align 4
  ret void
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare i32 @StringBeginsWith(i8*, i8*) #1

declare i32 @StringContains(i8*, i8*) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define internal i32 @strip_out(i8* %buff) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i8* %buff, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @StringBeginsWith(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0))
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i32 1, i32* %1
  br label %13

; <label>:7                                       ; preds = %0
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @StringBeginsWith(i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %7
  store i32 1, i32* %1
  br label %13

; <label>:12                                      ; preds = %7
  store i32 0, i32* %1
  br label %13

; <label>:13                                      ; preds = %12, %11, %6
  %14 = load i32, i32* %1
  ret i32 %14
}

declare i32 @DisposeObject(%union.rec*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @remove(i8*) #2

; Function Attrs: nounwind uwtable
define i8* @ConvertToPDFName(%union.rec* %name) #0 {
  %1 = alloca %union.rec*, align 8
  %q = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %union.rec* %name, %union.rec** %1, align 8
  %2 = call i8* @strcpy(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @ConvertToPDFName.buff, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0)) #4
  %3 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @ConvertToPDFName.buff, i32 0, i32 0)) #5
  %4 = getelementptr inbounds [200 x i8], [200 x i8]* @ConvertToPDFName.buff, i32 0, i64 %3
  store i8* %4, i8** %q, align 8
  %5 = load %union.rec*, %union.rec** %1, align 8
  %6 = bitcast %union.rec* %5 to %struct.word_type*
  %7 = getelementptr inbounds %struct.word_type, %struct.word_type* %6, i32 0, i32 4
  %8 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i32 0, i32 0
  store i8* %8, i8** %p, align 8
  br label %9

; <label>:9                                       ; preds = %66, %0
  %10 = load i8*, i8** %p, align 8
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %69

; <label>:14                                      ; preds = %9
  %15 = load i8*, i8** %q, align 8
  %16 = icmp uge i8* %15, getelementptr inbounds ([200 x i8], [200 x i8]* @ConvertToPDFName.buff, i32 0, i64 199)
  br i1 %16, label %17, label %27

; <label>:17                                      ; preds = %14
  %18 = load %union.rec*, %union.rec** %1, align 8
  %19 = bitcast %union.rec* %18 to %struct.word_type*
  %20 = getelementptr inbounds %struct.word_type, %struct.word_type* %19, i32 0, i32 1
  %21 = bitcast %union.FIRST_UNION* %20 to %struct.FILE_POS*
  %22 = load %union.rec*, %union.rec** %1, align 8
  %23 = bitcast %union.rec* %22 to %struct.word_type*
  %24 = getelementptr inbounds %struct.word_type, %struct.word_type* %23, i32 0, i32 4
  %25 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i32 0, i32 0
  %26 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 49, i32 12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %21, i8* %25)
  br label %27

; <label>:27                                      ; preds = %17, %14
  %28 = load i8*, i8** %p, align 8
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp sge i32 %30, 97
  br i1 %31, label %32, label %37

; <label>:32                                      ; preds = %27
  %33 = load i8*, i8** %p, align 8
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp sle i32 %35, 122
  br i1 %36, label %57, label %37

; <label>:37                                      ; preds = %32, %27
  %38 = load i8*, i8** %p, align 8
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp sge i32 %40, 65
  br i1 %41, label %42, label %47

; <label>:42                                      ; preds = %37
  %43 = load i8*, i8** %p, align 8
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp sle i32 %45, 90
  br i1 %46, label %57, label %47

; <label>:47                                      ; preds = %42, %37
  %48 = load i8*, i8** %p, align 8
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp sge i32 %50, 48
  br i1 %51, label %52, label %62

; <label>:52                                      ; preds = %47
  %53 = load i8*, i8** %p, align 8
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp sle i32 %55, 57
  br i1 %56, label %57, label %62

; <label>:57                                      ; preds = %52, %42, %32
  %58 = load i8*, i8** %p, align 8
  %59 = load i8, i8* %58, align 1
  %60 = load i8*, i8** %q, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %q, align 8
  store i8 %59, i8* %60, align 1
  br label %65

; <label>:62                                      ; preds = %52, %47
  %63 = load i8*, i8** %q, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %q, align 8
  store i8 95, i8* %63, align 1
  br label %65

; <label>:65                                      ; preds = %62, %57
  br label %66

; <label>:66                                      ; preds = %65
  %67 = load i8*, i8** %p, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %p, align 8
  br label %9

; <label>:69                                      ; preds = %9
  %70 = load i8*, i8** %q, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %q, align 8
  store i8 0, i8* %70, align 1
  ret i8* getelementptr inbounds ([200 x i8], [200 x i8]* @ConvertToPDFName.buff, i32 0, i32 0)
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @PS_PrintInitialize(%struct._IO_FILE* %fp) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %1, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** @out_fp, align 8
  store i32 0, i32* @prologue_done, align 4
  store i32 -1, i32* @gs_stack_top, align 4
  store i32 0, i32* @currentfont, align 4
  store i32 0, i32* @currentcolour, align 4
  store i32 0, i32* @cpexists, align 4
  store i32 0, i32* @pagecount, align 4
  store i32 0, i32* @wordcount, align 4
  %3 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %4 = zext i8 %3 to i32
  store i32 %4, i32* @zz_size, align 4
  %5 = sext i32 %4 to i64
  %6 = icmp uge i64 %5, 265
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %0
  %8 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %9 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %8)
  br label %35

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* @zz_size, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %12
  %14 = load %union.rec*, %union.rec** %13, align 8
  %15 = icmp eq %union.rec* %14, null
  br i1 %15, label %16, label %20

; <label>:16                                      ; preds = %10
  %17 = load i32, i32* @zz_size, align 4
  %18 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %19 = call %union.rec* @GetMemory(i32 %17, %struct.FILE_POS* %18)
  store %union.rec* %19, %union.rec** @zz_hold, align 8
  br label %34

; <label>:20                                      ; preds = %10
  %21 = load i32, i32* @zz_size, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %22
  %24 = load %union.rec*, %union.rec** %23, align 8
  store %union.rec* %24, %union.rec** @zz_hold, align 8
  store %union.rec* %24, %union.rec** @zz_hold, align 8
  %25 = load %union.rec*, %union.rec** @zz_hold, align 8
  %26 = bitcast %union.rec* %25 to %struct.word_type*
  %27 = getelementptr inbounds %struct.word_type, %struct.word_type* %26, i32 0, i32 0
  %28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %27, i32 0, i64 0
  %29 = getelementptr inbounds %struct.LIST, %struct.LIST* %28, i32 0, i32 0
  %30 = load %union.rec*, %union.rec** %29, align 8
  %31 = load i32, i32* @zz_size, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %32
  store %union.rec* %30, %union.rec** %33, align 8
  br label %34

; <label>:34                                      ; preds = %20, %16
  br label %35

; <label>:35                                      ; preds = %34, %7
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 1
  %39 = bitcast %union.FIRST_UNION* %38 to %struct.anon*
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %39, i32 0, i32 0
  store i8 17, i8* %40, align 1
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %42 = load %union.rec*, %union.rec** @zz_hold, align 8
  %43 = bitcast %union.rec* %42 to %struct.word_type*
  %44 = getelementptr inbounds %struct.word_type, %struct.word_type* %43, i32 0, i32 0
  %45 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %44, i32 0, i64 1
  %46 = getelementptr inbounds %struct.LIST, %struct.LIST* %45, i32 0, i32 1
  store %union.rec* %41, %union.rec** %46, align 8
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %48 = bitcast %union.rec* %47 to %struct.word_type*
  %49 = getelementptr inbounds %struct.word_type, %struct.word_type* %48, i32 0, i32 0
  %50 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %49, i32 0, i64 1
  %51 = getelementptr inbounds %struct.LIST, %struct.LIST* %50, i32 0, i32 0
  store %union.rec* %41, %union.rec** %51, align 8
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  %53 = bitcast %union.rec* %52 to %struct.word_type*
  %54 = getelementptr inbounds %struct.word_type, %struct.word_type* %53, i32 0, i32 0
  %55 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %54, i32 0, i64 0
  %56 = getelementptr inbounds %struct.LIST, %struct.LIST* %55, i32 0, i32 1
  store %union.rec* %41, %union.rec** %56, align 8
  %57 = load %union.rec*, %union.rec** @zz_hold, align 8
  %58 = bitcast %union.rec* %57 to %struct.word_type*
  %59 = getelementptr inbounds %struct.word_type, %struct.word_type* %58, i32 0, i32 0
  %60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %59, i32 0, i64 0
  %61 = getelementptr inbounds %struct.LIST, %struct.LIST* %60, i32 0, i32 0
  store %union.rec* %41, %union.rec** %61, align 8
  store %union.rec* %41, %union.rec** @needs, align 8
  %62 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %63 = zext i8 %62 to i32
  store i32 %63, i32* @zz_size, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp uge i64 %64, 265
  br i1 %65, label %66, label %69

; <label>:66                                      ; preds = %35
  %67 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %68 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %67)
  br label %94

; <label>:69                                      ; preds = %35
  %70 = load i32, i32* @zz_size, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %71
  %73 = load %union.rec*, %union.rec** %72, align 8
  %74 = icmp eq %union.rec* %73, null
  br i1 %74, label %75, label %79

; <label>:75                                      ; preds = %69
  %76 = load i32, i32* @zz_size, align 4
  %77 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %78 = call %union.rec* @GetMemory(i32 %76, %struct.FILE_POS* %77)
  store %union.rec* %78, %union.rec** @zz_hold, align 8
  br label %93

; <label>:79                                      ; preds = %69
  %80 = load i32, i32* @zz_size, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %81
  %83 = load %union.rec*, %union.rec** %82, align 8
  store %union.rec* %83, %union.rec** @zz_hold, align 8
  store %union.rec* %83, %union.rec** @zz_hold, align 8
  %84 = load %union.rec*, %union.rec** @zz_hold, align 8
  %85 = bitcast %union.rec* %84 to %struct.word_type*
  %86 = getelementptr inbounds %struct.word_type, %struct.word_type* %85, i32 0, i32 0
  %87 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %86, i32 0, i64 0
  %88 = getelementptr inbounds %struct.LIST, %struct.LIST* %87, i32 0, i32 0
  %89 = load %union.rec*, %union.rec** %88, align 8
  %90 = load i32, i32* @zz_size, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %91
  store %union.rec* %89, %union.rec** %92, align 8
  br label %93

; <label>:93                                      ; preds = %79, %75
  br label %94

; <label>:94                                      ; preds = %93, %66
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  %96 = bitcast %union.rec* %95 to %struct.word_type*
  %97 = getelementptr inbounds %struct.word_type, %struct.word_type* %96, i32 0, i32 1
  %98 = bitcast %union.FIRST_UNION* %97 to %struct.anon*
  %99 = getelementptr inbounds %struct.anon, %struct.anon* %98, i32 0, i32 0
  store i8 17, i8* %99, align 1
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %102 = bitcast %union.rec* %101 to %struct.word_type*
  %103 = getelementptr inbounds %struct.word_type, %struct.word_type* %102, i32 0, i32 0
  %104 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %103, i32 0, i64 1
  %105 = getelementptr inbounds %struct.LIST, %struct.LIST* %104, i32 0, i32 1
  store %union.rec* %100, %union.rec** %105, align 8
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %107 = bitcast %union.rec* %106 to %struct.word_type*
  %108 = getelementptr inbounds %struct.word_type, %struct.word_type* %107, i32 0, i32 0
  %109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %108, i32 0, i64 1
  %110 = getelementptr inbounds %struct.LIST, %struct.LIST* %109, i32 0, i32 0
  store %union.rec* %100, %union.rec** %110, align 8
  %111 = load %union.rec*, %union.rec** @zz_hold, align 8
  %112 = bitcast %union.rec* %111 to %struct.word_type*
  %113 = getelementptr inbounds %struct.word_type, %struct.word_type* %112, i32 0, i32 0
  %114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %113, i32 0, i64 0
  %115 = getelementptr inbounds %struct.LIST, %struct.LIST* %114, i32 0, i32 1
  store %union.rec* %100, %union.rec** %115, align 8
  %116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %117 = bitcast %union.rec* %116 to %struct.word_type*
  %118 = getelementptr inbounds %struct.word_type, %struct.word_type* %117, i32 0, i32 0
  %119 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %118, i32 0, i64 0
  %120 = getelementptr inbounds %struct.LIST, %struct.LIST* %119, i32 0, i32 0
  store %union.rec* %100, %union.rec** %120, align 8
  store %union.rec* %100, %union.rec** @supplied, align 8
  %121 = call %struct.anon.14* @ltab_new(i32 200)
  store %struct.anon.14* %121, %struct.anon.14** @link_dest_tab, align 8
  %122 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %123 = zext i8 %122 to i32
  store i32 %123, i32* @zz_size, align 4
  %124 = sext i32 %123 to i64
  %125 = icmp uge i64 %124, 265
  br i1 %125, label %126, label %129

; <label>:126                                     ; preds = %94
  %127 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %128 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %127)
  br label %154

; <label>:129                                     ; preds = %94
  %130 = load i32, i32* @zz_size, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %131
  %133 = load %union.rec*, %union.rec** %132, align 8
  %134 = icmp eq %union.rec* %133, null
  br i1 %134, label %135, label %139

; <label>:135                                     ; preds = %129
  %136 = load i32, i32* @zz_size, align 4
  %137 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %138 = call %union.rec* @GetMemory(i32 %136, %struct.FILE_POS* %137)
  store %union.rec* %138, %union.rec** @zz_hold, align 8
  br label %153

; <label>:139                                     ; preds = %129
  %140 = load i32, i32* @zz_size, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %141
  %143 = load %union.rec*, %union.rec** %142, align 8
  store %union.rec* %143, %union.rec** @zz_hold, align 8
  store %union.rec* %143, %union.rec** @zz_hold, align 8
  %144 = load %union.rec*, %union.rec** @zz_hold, align 8
  %145 = bitcast %union.rec* %144 to %struct.word_type*
  %146 = getelementptr inbounds %struct.word_type, %struct.word_type* %145, i32 0, i32 0
  %147 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %146, i32 0, i64 0
  %148 = getelementptr inbounds %struct.LIST, %struct.LIST* %147, i32 0, i32 0
  %149 = load %union.rec*, %union.rec** %148, align 8
  %150 = load i32, i32* @zz_size, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %151
  store %union.rec* %149, %union.rec** %152, align 8
  br label %153

; <label>:153                                     ; preds = %139, %135
  br label %154

; <label>:154                                     ; preds = %153, %126
  %155 = load %union.rec*, %union.rec** @zz_hold, align 8
  %156 = bitcast %union.rec* %155 to %struct.word_type*
  %157 = getelementptr inbounds %struct.word_type, %struct.word_type* %156, i32 0, i32 1
  %158 = bitcast %union.FIRST_UNION* %157 to %struct.anon*
  %159 = getelementptr inbounds %struct.anon, %struct.anon* %158, i32 0, i32 0
  store i8 17, i8* %159, align 1
  %160 = load %union.rec*, %union.rec** @zz_hold, align 8
  %161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %162 = bitcast %union.rec* %161 to %struct.word_type*
  %163 = getelementptr inbounds %struct.word_type, %struct.word_type* %162, i32 0, i32 0
  %164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %163, i32 0, i64 1
  %165 = getelementptr inbounds %struct.LIST, %struct.LIST* %164, i32 0, i32 1
  store %union.rec* %160, %union.rec** %165, align 8
  %166 = load %union.rec*, %union.rec** @zz_hold, align 8
  %167 = bitcast %union.rec* %166 to %struct.word_type*
  %168 = getelementptr inbounds %struct.word_type, %struct.word_type* %167, i32 0, i32 0
  %169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %168, i32 0, i64 1
  %170 = getelementptr inbounds %struct.LIST, %struct.LIST* %169, i32 0, i32 0
  store %union.rec* %160, %union.rec** %170, align 8
  %171 = load %union.rec*, %union.rec** @zz_hold, align 8
  %172 = bitcast %union.rec* %171 to %struct.word_type*
  %173 = getelementptr inbounds %struct.word_type, %struct.word_type* %172, i32 0, i32 0
  %174 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %173, i32 0, i64 0
  %175 = getelementptr inbounds %struct.LIST, %struct.LIST* %174, i32 0, i32 1
  store %union.rec* %160, %union.rec** %175, align 8
  %176 = load %union.rec*, %union.rec** @zz_hold, align 8
  %177 = bitcast %union.rec* %176 to %struct.word_type*
  %178 = getelementptr inbounds %struct.word_type, %struct.word_type* %177, i32 0, i32 0
  %179 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %178, i32 0, i64 0
  %180 = getelementptr inbounds %struct.LIST, %struct.LIST* %179, i32 0, i32 0
  store %union.rec* %160, %union.rec** %180, align 8
  store %union.rec* %160, %union.rec** @link_source_list, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintLength(i8* %buff, i32 %length, i32 %length_dim) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i8* %buff, i8** %1, align 8
  store i32 %length, i32* %2, align 4
  store i32 %length_dim, i32* %3, align 4
  %4 = load i8*, i8** %1, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sitofp i32 %5 to float
  %7 = fdiv float %6, 5.670000e+02
  %8 = fpext float %7 to double
  %9 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), double %8) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintPageSetupForFont(%union.rec* %face, i32 %font_curr_page, i8* %font_name, i8* %short_name) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %union.rec* %face, %union.rec** %1, align 8
  store i32 %font_curr_page, i32* %2, align 4
  store i8* %font_name, i8** %3, align 8
  store i8* %short_name, i8** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i32 0, i32 0), i8* %6)
  %8 = load %union.rec*, %union.rec** %1, align 8
  %9 = bitcast %union.rec* %8 to %struct.word_type*
  %10 = getelementptr inbounds %struct.word_type, %struct.word_type* %9, i32 0, i32 3
  %11 = bitcast %union.THIRD_UNION* %10 to %struct.anon.7*
  %12 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %11, i32 0, i32 3
  %13 = load i8, i8* %12, align 4
  %14 = lshr i8 %13, 7
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %46

; <label>:17                                      ; preds = %0
  %18 = load %union.rec*, %union.rec** %1, align 8
  %19 = bitcast %union.rec* %18 to %struct.word_type*
  %20 = getelementptr inbounds %struct.word_type, %struct.word_type* %19, i32 0, i32 3
  %21 = bitcast %union.THIRD_UNION* %20 to %struct.anon.7*
  %22 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %21, i32 0, i32 3
  %23 = load i8, i8* %22, align 4
  %24 = and i8 %23, 127
  %25 = zext i8 %24 to i32
  %26 = load i32, i32* %2, align 4
  call void @MapEnsurePrinted(i32 %25, i32 %26)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load %union.rec*, %union.rec** %1, align 8
  %31 = bitcast %union.rec* %30 to %struct.word_type*
  %32 = getelementptr inbounds %struct.word_type, %struct.word_type* %31, i32 0, i32 3
  %33 = bitcast %union.THIRD_UNION* %32 to %struct.anon.7*
  %34 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %33, i32 0, i32 3
  %35 = load i8, i8* %34, align 4
  %36 = and i8 %35, 127
  %37 = zext i8 %36 to i32
  %38 = call i8* @MapEncodingName(i32 %37)
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i32 0, i32 0), i8* %28, i8* %29, i8* %38, i8* %39)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i32 0, i32 0), i8* %42, i8* %43, i8* %44)
  br label %51

; <label>:46                                      ; preds = %0
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.43, i32 0, i32 0), i8* %48, i8* %49)
  br label %51

; <label>:51                                      ; preds = %46, %17
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintPageResourceForFont(i8* %font_name, i32 %first) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  store i8* %font_name, i8** %1, align 8
  store i32 %first, i32* %2, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0)
  %7 = load i8*, i8** %1, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i8* %6, i8* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintMapping(i32 %m) #0 {
  %1 = alloca i32, align 4
  %map = alloca %struct.mapvec*, align 8
  %i = alloca i32, align 4
  store i32 %m, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x %struct.mapvec*], [0 x %struct.mapvec*]* @MapTable, i32 0, i64 %3
  %5 = load %struct.mapvec*, %struct.mapvec** %4, align 8
  store %struct.mapvec* %5, %struct.mapvec** %map, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %7 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %8 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %7, i32 0, i32 4
  %9 = load %union.rec*, %union.rec** %8, align 8
  %10 = bitcast %union.rec* %9 to %struct.word_type*
  %11 = getelementptr inbounds %struct.word_type, %struct.word_type* %10, i32 0, i32 4
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i32 0, i32 0
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.46, i32 0, i32 0), i8* %12)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %15 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %16 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %15, i32 0, i32 4
  %17 = load %union.rec*, %union.rec** %16, align 8
  %18 = bitcast %union.rec* %17 to %struct.word_type*
  %19 = getelementptr inbounds %struct.word_type, %struct.word_type* %18, i32 0, i32 4
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i32 0, i32 0
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* %20)
  store i32 0, i32* %i, align 4
  br label %22

; <label>:22                                      ; preds = %42, %0
  %23 = load i32, i32* %i, align 4
  %24 = icmp slt i32 %23, 256
  br i1 %24, label %25, label %45

; <label>:25                                      ; preds = %22
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %27 = load i32, i32* %i, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %30 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %29, i32 0, i32 5
  %31 = getelementptr inbounds [256 x %union.rec*], [256 x %union.rec*]* %30, i32 0, i64 %28
  %32 = load %union.rec*, %union.rec** %31, align 8
  %33 = bitcast %union.rec* %32 to %struct.word_type*
  %34 = getelementptr inbounds %struct.word_type, %struct.word_type* %33, i32 0, i32 4
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %34, i32 0, i32 0
  %36 = load i32, i32* %i, align 4
  %37 = add nsw i32 %36, 1
  %38 = srem i32 %37, 8
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %39, i32 32, i32 10
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i8* %35, i32 %40)
  br label %42

; <label>:42                                      ; preds = %25
  %43 = load i32, i32* %i, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %i, align 4
  br label %22

; <label>:45                                      ; preds = %22
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0))
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintBeforeFirstPage(i32 %h, i32 %v, i8* %label) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %fnum = alloca i16, align 2
  %p = alloca i8*, align 8
  %buff = alloca [512 x i8], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  %tmp = alloca %union.rec*, align 8
  store i32 %h, i32* %1, align 4
  store i32 %v, i32* %2, align 4
  store i8* %label, i8** %3, align 8
  %4 = load i32, i32* @Encapsulated, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %8 = call i32 @fputs(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i32 0, i32 0), %struct._IO_FILE* %7)
  br label %12

; <label>:9                                       ; preds = %0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %11 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i32 0, i32 0), %struct._IO_FILE* %10)
  br label %12

; <label>:12                                      ; preds = %9, %6
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.54, i32 0, i32 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %16 = call i8* @TimeString()
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i32 0, i32 0), i8* %16)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %19 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.56, i32 0, i32 0), %struct._IO_FILE* %18)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %21 = call i32 @fputs(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.57, i32 0, i32 0), %struct._IO_FILE* %20)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %23 = call i32 @fputs(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.58, i32 0, i32 0), %struct._IO_FILE* %22)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i8* @MediaName(i32 %25, i32 %26)
  %28 = load i32, i32* %1, align 4
  %29 = sdiv i32 %28, 20
  %30 = load i32, i32* %2, align 4
  %31 = sdiv i32 %30, 20
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.59, i32 0, i32 0), i8* %27, i32 %29, i32 %31)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %34 = call i32 @fputs(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.60, i32 0, i32 0), %struct._IO_FILE* %33)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %36 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.61, i32 0, i32 0), %struct._IO_FILE* %35)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %38 = load i32, i32* %1, align 4
  %39 = sdiv i32 %38, 20
  %40 = load i32, i32* %2, align 4
  %41 = sdiv i32 %40, 20
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.62, i32 0, i32 0), i32 %39, i32 %41)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %44 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i32 0, i32 0), %struct._IO_FILE* %43)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %46 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0), %struct._IO_FILE* %45)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i32 0, i32 0))
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %50 = call i32 @fputs(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.67, i32 0, i32 0), %struct._IO_FILE* %49)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %52 = call i32 @fputs(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.68, i32 0, i32 0), %struct._IO_FILE* %51)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %54 = call i32 @fputs(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.69, i32 0, i32 0), %struct._IO_FILE* %53)
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %56 = call i32 @fputs(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.70, i32 0, i32 0), %struct._IO_FILE* %55)
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %58 = call i32 @fputs(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.71, i32 0, i32 0), %struct._IO_FILE* %57)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %60 = call i32 @fputs(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.72, i32 0, i32 0), %struct._IO_FILE* %59)
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %62 = call i32 @fputs(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.73, i32 0, i32 0), %struct._IO_FILE* %61)
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %64 = call i32 @fputs(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.74, i32 0, i32 0), %struct._IO_FILE* %63)
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %66 = call i32 @fputs(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.75, i32 0, i32 0), %struct._IO_FILE* %65)
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %68 = call i32 @fputs(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.76, i32 0, i32 0), %struct._IO_FILE* %67)
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %70 = call i32 @fputs(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.77, i32 0, i32 0), %struct._IO_FILE* %69)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %72 = call i32 @fputs(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.78, i32 0, i32 0), %struct._IO_FILE* %71)
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %74 = call i32 @fputs(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.79, i32 0, i32 0), %struct._IO_FILE* %73)
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %76 = call i32 @fputs(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.80, i32 0, i32 0), %struct._IO_FILE* %75)
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %78 = call i32 @fputs(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.81, i32 0, i32 0), %struct._IO_FILE* %77)
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %80 = call i32 @fputs(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.82, i32 0, i32 0), %struct._IO_FILE* %79)
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.83, i32 0, i32 0), i32 1440)
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.84, i32 0, i32 0), i32 567)
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.85, i32 0, i32 0), i32 20)
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.86, i32 0, i32 0), i32 120)
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %90 = call i32 @fputs(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.87, i32 0, i32 0), %struct._IO_FILE* %89)
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %92 = call i32 @fputs(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.88, i32 0, i32 0), %struct._IO_FILE* %91)
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %94 = call i32 @fputs(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.89, i32 0, i32 0), %struct._IO_FILE* %93)
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %96 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.90, i32 0, i32 0), %struct._IO_FILE* %95)
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %98 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.91, i32 0, i32 0), %struct._IO_FILE* %97)
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %100 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.92, i32 0, i32 0), %struct._IO_FILE* %99)
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %102 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.93, i32 0, i32 0), %struct._IO_FILE* %101)
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %104 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.94, i32 0, i32 0), %struct._IO_FILE* %103)
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %106 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.95, i32 0, i32 0), %struct._IO_FILE* %105)
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %108 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.96, i32 0, i32 0), %struct._IO_FILE* %107)
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %110 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.97, i32 0, i32 0), %struct._IO_FILE* %109)
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %112 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.98, i32 0, i32 0), %struct._IO_FILE* %111)
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %114 = call i32 @fputs(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.99, i32 0, i32 0), %struct._IO_FILE* %113)
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %116 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), %struct._IO_FILE* %115)
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %118 = call i32 @fputs(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.101, i32 0, i32 0), %struct._IO_FILE* %117)
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %120 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.102, i32 0, i32 0), %struct._IO_FILE* %119)
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %122 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.103, i32 0, i32 0), %struct._IO_FILE* %121)
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %124 = call i32 @fputs(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.104, i32 0, i32 0), %struct._IO_FILE* %123)
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %126 = call i32 @fputs(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.105, i32 0, i32 0), %struct._IO_FILE* %125)
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %128 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.106, i32 0, i32 0), %struct._IO_FILE* %127)
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %130 = call i32 @fputs(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.107, i32 0, i32 0), %struct._IO_FILE* %129)
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %132 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0), %struct._IO_FILE* %131)
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %134 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.109, i32 0, i32 0), %struct._IO_FILE* %133)
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %136 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.102, i32 0, i32 0), %struct._IO_FILE* %135)
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %138 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.110, i32 0, i32 0), %struct._IO_FILE* %137)
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %140 = call i32 @fputs(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.111, i32 0, i32 0), %struct._IO_FILE* %139)
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %142 = call i32 @fputs(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.112, i32 0, i32 0), %struct._IO_FILE* %141)
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %144 = call i32 @fputs(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.113, i32 0, i32 0), %struct._IO_FILE* %143)
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %146 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.114, i32 0, i32 0), %struct._IO_FILE* %145)
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %148 = call i32 @fputs(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.115, i32 0, i32 0), %struct._IO_FILE* %147)
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %150 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.116, i32 0, i32 0), %struct._IO_FILE* %149)
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %152 = call i32 @fputs(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.117, i32 0, i32 0), %struct._IO_FILE* %151)
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %154 = call i32 @fputs(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.118, i32 0, i32 0), %struct._IO_FILE* %153)
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %156 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.119, i32 0, i32 0), %struct._IO_FILE* %155)
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %158 = call i32 @fputs(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.120, i32 0, i32 0), %struct._IO_FILE* %157)
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %160 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.121, i32 0, i32 0), %struct._IO_FILE* %159)
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %162 = call i32 @fputs(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.122, i32 0, i32 0), %struct._IO_FILE* %161)
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %164 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.123, i32 0, i32 0), %struct._IO_FILE* %163)
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %166 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i32 0, i32 0), %struct._IO_FILE* %165)
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %168 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.102, i32 0, i32 0), %struct._IO_FILE* %167)
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %170 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.125, i32 0, i32 0), %struct._IO_FILE* %169)
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %172 = call i32 @fputs(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.126, i32 0, i32 0), %struct._IO_FILE* %171)
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %174 = call i32 @fputs(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.127, i32 0, i32 0), %struct._IO_FILE* %173)
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %176 = call i32 @fputs(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.128, i32 0, i32 0), %struct._IO_FILE* %175)
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %178 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.129, i32 0, i32 0), %struct._IO_FILE* %177)
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %180 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.130, i32 0, i32 0), %struct._IO_FILE* %179)
  %181 = call zeroext i16 @FirstFile(i32 6)
  store i16 %181, i16* %fnum, align 2
  br label %182

; <label>:182                                     ; preds = %416, %12
  %183 = load i16, i16* %fnum, align 2
  %184 = zext i16 %183 to i32
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %419

; <label>:186                                     ; preds = %182
  %187 = load i16, i16* %fnum, align 2
  %188 = call %struct._IO_FILE* @OpenFile(i16 zeroext %187, i32 0, i32 0)
  store %struct._IO_FILE* %188, %struct._IO_FILE** %fp, align 8
  %189 = icmp eq %struct._IO_FILE* %188, null
  br i1 %189, label %190, label %196

; <label>:190                                     ; preds = %186
  %191 = load i16, i16* %fnum, align 2
  %192 = call %struct.FILE_POS* @PosOfFile(i16 zeroext %191)
  %193 = load i16, i16* %fnum, align 2
  %194 = call i8* @FileName(i16 zeroext %193)
  %195 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 49, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.131, i32 0, i32 0), i32 2, %struct.FILE_POS* %192, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.132, i32 0, i32 0), i8* %194)
  br label %415

; <label>:196                                     ; preds = %186
  %197 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %199 = call i8* @fgets(i8* %197, i32 512, %struct._IO_FILE* %198)
  %200 = icmp eq i8* %199, null
  br i1 %200, label %201, label %207

; <label>:201                                     ; preds = %196
  %202 = load i16, i16* %fnum, align 2
  %203 = call %struct.FILE_POS* @PosOfFile(i16 zeroext %202)
  %204 = load i16, i16* %fnum, align 2
  %205 = call i8* @FileName(i16 zeroext %204)
  %206 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 49, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.133, i32 0, i32 0), i32 2, %struct.FILE_POS* %203, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.132, i32 0, i32 0), i8* %205)
  br label %414

; <label>:207                                     ; preds = %196
  %208 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %209 = call i32 @StringBeginsWith(i8* %208, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.134, i32 0, i32 0))
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %386

; <label>:211                                     ; preds = %207
  %212 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 16
  %213 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %214 = call %union.rec* @MakeWord(i32 11, i8* %212, %struct.FILE_POS* %213)
  store %union.rec* %214, %union.rec** %tmp, align 8
  %215 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %216 = zext i8 %215 to i32
  store i32 %216, i32* @zz_size, align 4
  %217 = sext i32 %216 to i64
  %218 = icmp uge i64 %217, 265
  br i1 %218, label %219, label %222

; <label>:219                                     ; preds = %211
  %220 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %221 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %220)
  br label %247

; <label>:222                                     ; preds = %211
  %223 = load i32, i32* @zz_size, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %224
  %226 = load %union.rec*, %union.rec** %225, align 8
  %227 = icmp eq %union.rec* %226, null
  br i1 %227, label %228, label %232

; <label>:228                                     ; preds = %222
  %229 = load i32, i32* @zz_size, align 4
  %230 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %231 = call %union.rec* @GetMemory(i32 %229, %struct.FILE_POS* %230)
  store %union.rec* %231, %union.rec** @zz_hold, align 8
  br label %246

; <label>:232                                     ; preds = %222
  %233 = load i32, i32* @zz_size, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %234
  %236 = load %union.rec*, %union.rec** %235, align 8
  store %union.rec* %236, %union.rec** @zz_hold, align 8
  store %union.rec* %236, %union.rec** @zz_hold, align 8
  %237 = load %union.rec*, %union.rec** @zz_hold, align 8
  %238 = bitcast %union.rec* %237 to %struct.word_type*
  %239 = getelementptr inbounds %struct.word_type, %struct.word_type* %238, i32 0, i32 0
  %240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %239, i32 0, i64 0
  %241 = getelementptr inbounds %struct.LIST, %struct.LIST* %240, i32 0, i32 0
  %242 = load %union.rec*, %union.rec** %241, align 8
  %243 = load i32, i32* @zz_size, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %244
  store %union.rec* %242, %union.rec** %245, align 8
  br label %246

; <label>:246                                     ; preds = %232, %228
  br label %247

; <label>:247                                     ; preds = %246, %219
  %248 = load %union.rec*, %union.rec** @zz_hold, align 8
  %249 = bitcast %union.rec* %248 to %struct.word_type*
  %250 = getelementptr inbounds %struct.word_type, %struct.word_type* %249, i32 0, i32 1
  %251 = bitcast %union.FIRST_UNION* %250 to %struct.anon*
  %252 = getelementptr inbounds %struct.anon, %struct.anon* %251, i32 0, i32 0
  store i8 0, i8* %252, align 1
  %253 = load %union.rec*, %union.rec** @zz_hold, align 8
  %254 = load %union.rec*, %union.rec** @zz_hold, align 8
  %255 = bitcast %union.rec* %254 to %struct.word_type*
  %256 = getelementptr inbounds %struct.word_type, %struct.word_type* %255, i32 0, i32 0
  %257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %256, i32 0, i64 1
  %258 = getelementptr inbounds %struct.LIST, %struct.LIST* %257, i32 0, i32 1
  store %union.rec* %253, %union.rec** %258, align 8
  %259 = load %union.rec*, %union.rec** @zz_hold, align 8
  %260 = bitcast %union.rec* %259 to %struct.word_type*
  %261 = getelementptr inbounds %struct.word_type, %struct.word_type* %260, i32 0, i32 0
  %262 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %261, i32 0, i64 1
  %263 = getelementptr inbounds %struct.LIST, %struct.LIST* %262, i32 0, i32 0
  store %union.rec* %253, %union.rec** %263, align 8
  %264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %265 = bitcast %union.rec* %264 to %struct.word_type*
  %266 = getelementptr inbounds %struct.word_type, %struct.word_type* %265, i32 0, i32 0
  %267 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %266, i32 0, i64 0
  %268 = getelementptr inbounds %struct.LIST, %struct.LIST* %267, i32 0, i32 1
  store %union.rec* %253, %union.rec** %268, align 8
  %269 = load %union.rec*, %union.rec** @zz_hold, align 8
  %270 = bitcast %union.rec* %269 to %struct.word_type*
  %271 = getelementptr inbounds %struct.word_type, %struct.word_type* %270, i32 0, i32 0
  %272 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %271, i32 0, i64 0
  %273 = getelementptr inbounds %struct.LIST, %struct.LIST* %272, i32 0, i32 0
  store %union.rec* %253, %union.rec** %273, align 8
  store %union.rec* %253, %union.rec** @xx_link, align 8
  %274 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %274, %union.rec** @zz_res, align 8
  %275 = load %union.rec*, %union.rec** @supplied, align 8
  store %union.rec* %275, %union.rec** @zz_hold, align 8
  %276 = load %union.rec*, %union.rec** @zz_hold, align 8
  %277 = icmp eq %union.rec* %276, null
  br i1 %277, label %278, label %280

; <label>:278                                     ; preds = %247
  %279 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %328

; <label>:280                                     ; preds = %247
  %281 = load %union.rec*, %union.rec** @zz_res, align 8
  %282 = icmp eq %union.rec* %281, null
  br i1 %282, label %283, label %285

; <label>:283                                     ; preds = %280
  %284 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %326

; <label>:285                                     ; preds = %280
  %286 = load %union.rec*, %union.rec** @zz_hold, align 8
  %287 = bitcast %union.rec* %286 to %struct.word_type*
  %288 = getelementptr inbounds %struct.word_type, %struct.word_type* %287, i32 0, i32 0
  %289 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %288, i32 0, i64 0
  %290 = getelementptr inbounds %struct.LIST, %struct.LIST* %289, i32 0, i32 0
  %291 = load %union.rec*, %union.rec** %290, align 8
  store %union.rec* %291, %union.rec** @zz_tmp, align 8
  %292 = load %union.rec*, %union.rec** @zz_res, align 8
  %293 = bitcast %union.rec* %292 to %struct.word_type*
  %294 = getelementptr inbounds %struct.word_type, %struct.word_type* %293, i32 0, i32 0
  %295 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %294, i32 0, i64 0
  %296 = getelementptr inbounds %struct.LIST, %struct.LIST* %295, i32 0, i32 0
  %297 = load %union.rec*, %union.rec** %296, align 8
  %298 = load %union.rec*, %union.rec** @zz_hold, align 8
  %299 = bitcast %union.rec* %298 to %struct.word_type*
  %300 = getelementptr inbounds %struct.word_type, %struct.word_type* %299, i32 0, i32 0
  %301 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %300, i32 0, i64 0
  %302 = getelementptr inbounds %struct.LIST, %struct.LIST* %301, i32 0, i32 0
  store %union.rec* %297, %union.rec** %302, align 8
  %303 = load %union.rec*, %union.rec** @zz_hold, align 8
  %304 = load %union.rec*, %union.rec** @zz_res, align 8
  %305 = bitcast %union.rec* %304 to %struct.word_type*
  %306 = getelementptr inbounds %struct.word_type, %struct.word_type* %305, i32 0, i32 0
  %307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %306, i32 0, i64 0
  %308 = getelementptr inbounds %struct.LIST, %struct.LIST* %307, i32 0, i32 0
  %309 = load %union.rec*, %union.rec** %308, align 8
  %310 = bitcast %union.rec* %309 to %struct.word_type*
  %311 = getelementptr inbounds %struct.word_type, %struct.word_type* %310, i32 0, i32 0
  %312 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %311, i32 0, i64 0
  %313 = getelementptr inbounds %struct.LIST, %struct.LIST* %312, i32 0, i32 1
  store %union.rec* %303, %union.rec** %313, align 8
  %314 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %315 = load %union.rec*, %union.rec** @zz_res, align 8
  %316 = bitcast %union.rec* %315 to %struct.word_type*
  %317 = getelementptr inbounds %struct.word_type, %struct.word_type* %316, i32 0, i32 0
  %318 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %317, i32 0, i64 0
  %319 = getelementptr inbounds %struct.LIST, %struct.LIST* %318, i32 0, i32 0
  store %union.rec* %314, %union.rec** %319, align 8
  %320 = load %union.rec*, %union.rec** @zz_res, align 8
  %321 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %322 = bitcast %union.rec* %321 to %struct.word_type*
  %323 = getelementptr inbounds %struct.word_type, %struct.word_type* %322, i32 0, i32 0
  %324 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %323, i32 0, i64 0
  %325 = getelementptr inbounds %struct.LIST, %struct.LIST* %324, i32 0, i32 1
  store %union.rec* %320, %union.rec** %325, align 8
  br label %326

; <label>:326                                     ; preds = %285, %283
  %327 = phi %union.rec* [ %284, %283 ], [ %320, %285 ]
  br label %328

; <label>:328                                     ; preds = %326, %278
  %329 = phi %union.rec* [ %279, %278 ], [ %327, %326 ]
  %330 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %330, %union.rec** @zz_res, align 8
  %331 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %331, %union.rec** @zz_hold, align 8
  %332 = load %union.rec*, %union.rec** @zz_hold, align 8
  %333 = icmp eq %union.rec* %332, null
  br i1 %333, label %334, label %336

; <label>:334                                     ; preds = %328
  %335 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %384

; <label>:336                                     ; preds = %328
  %337 = load %union.rec*, %union.rec** @zz_res, align 8
  %338 = icmp eq %union.rec* %337, null
  br i1 %338, label %339, label %341

; <label>:339                                     ; preds = %336
  %340 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %382

; <label>:341                                     ; preds = %336
  %342 = load %union.rec*, %union.rec** @zz_hold, align 8
  %343 = bitcast %union.rec* %342 to %struct.word_type*
  %344 = getelementptr inbounds %struct.word_type, %struct.word_type* %343, i32 0, i32 0
  %345 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %344, i32 0, i64 1
  %346 = getelementptr inbounds %struct.LIST, %struct.LIST* %345, i32 0, i32 0
  %347 = load %union.rec*, %union.rec** %346, align 8
  store %union.rec* %347, %union.rec** @zz_tmp, align 8
  %348 = load %union.rec*, %union.rec** @zz_res, align 8
  %349 = bitcast %union.rec* %348 to %struct.word_type*
  %350 = getelementptr inbounds %struct.word_type, %struct.word_type* %349, i32 0, i32 0
  %351 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %350, i32 0, i64 1
  %352 = getelementptr inbounds %struct.LIST, %struct.LIST* %351, i32 0, i32 0
  %353 = load %union.rec*, %union.rec** %352, align 8
  %354 = load %union.rec*, %union.rec** @zz_hold, align 8
  %355 = bitcast %union.rec* %354 to %struct.word_type*
  %356 = getelementptr inbounds %struct.word_type, %struct.word_type* %355, i32 0, i32 0
  %357 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %356, i32 0, i64 1
  %358 = getelementptr inbounds %struct.LIST, %struct.LIST* %357, i32 0, i32 0
  store %union.rec* %353, %union.rec** %358, align 8
  %359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %360 = load %union.rec*, %union.rec** @zz_res, align 8
  %361 = bitcast %union.rec* %360 to %struct.word_type*
  %362 = getelementptr inbounds %struct.word_type, %struct.word_type* %361, i32 0, i32 0
  %363 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %362, i32 0, i64 1
  %364 = getelementptr inbounds %struct.LIST, %struct.LIST* %363, i32 0, i32 0
  %365 = load %union.rec*, %union.rec** %364, align 8
  %366 = bitcast %union.rec* %365 to %struct.word_type*
  %367 = getelementptr inbounds %struct.word_type, %struct.word_type* %366, i32 0, i32 0
  %368 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %367, i32 0, i64 1
  %369 = getelementptr inbounds %struct.LIST, %struct.LIST* %368, i32 0, i32 1
  store %union.rec* %359, %union.rec** %369, align 8
  %370 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %371 = load %union.rec*, %union.rec** @zz_res, align 8
  %372 = bitcast %union.rec* %371 to %struct.word_type*
  %373 = getelementptr inbounds %struct.word_type, %struct.word_type* %372, i32 0, i32 0
  %374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %373, i32 0, i64 1
  %375 = getelementptr inbounds %struct.LIST, %struct.LIST* %374, i32 0, i32 0
  store %union.rec* %370, %union.rec** %375, align 8
  %376 = load %union.rec*, %union.rec** @zz_res, align 8
  %377 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %378 = bitcast %union.rec* %377 to %struct.word_type*
  %379 = getelementptr inbounds %struct.word_type, %struct.word_type* %378, i32 0, i32 0
  %380 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %379, i32 0, i64 1
  %381 = getelementptr inbounds %struct.LIST, %struct.LIST* %380, i32 0, i32 1
  store %union.rec* %376, %union.rec** %381, align 8
  br label %382

; <label>:382                                     ; preds = %341, %339
  %383 = phi %union.rec* [ %340, %339 ], [ %376, %341 ]
  br label %384

; <label>:384                                     ; preds = %382, %334
  %385 = phi %union.rec* [ %335, %334 ], [ %383, %382 ]
  br label %392

; <label>:386                                     ; preds = %207
  %387 = load i16, i16* %fnum, align 2
  %388 = call %struct.FILE_POS* @PosOfFile(i16 zeroext %387)
  %389 = load i16, i16* %fnum, align 2
  %390 = call i8* @FileName(i16 zeroext %389)
  %391 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 49, i32 5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.135, i32 0, i32 0), i32 2, %struct.FILE_POS* %388, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.132, i32 0, i32 0), i8* %390)
  br label %392

; <label>:392                                     ; preds = %386, %384
  %393 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %394 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %395 = call i32 @fputs(i8* %393, %struct._IO_FILE* %394)
  %396 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %397 = load i16, i16* %fnum, align 2
  %398 = call i8* @FileName(i16 zeroext %397)
  %399 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %396, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.132, i32 0, i32 0), i8* %398)
  br label %400

; <label>:400                                     ; preds = %405, %392
  %401 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %402 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %403 = call i8* @fgets(i8* %401, i32 512, %struct._IO_FILE* %402)
  %404 = icmp ne i8* %403, null
  br i1 %404, label %405, label %409

; <label>:405                                     ; preds = %400
  %406 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %407 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %408 = call i32 @fputs(i8* %406, %struct._IO_FILE* %407)
  br label %400

; <label>:409                                     ; preds = %400
  %410 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %411 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), %struct._IO_FILE* %410)
  %412 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %413 = call i32 @fclose(%struct._IO_FILE* %412)
  br label %414

; <label>:414                                     ; preds = %409, %201
  br label %415

; <label>:415                                     ; preds = %414, %190
  br label %416

; <label>:416                                     ; preds = %415
  %417 = load i16, i16* %fnum, align 2
  %418 = call zeroext i16 @NextFile(i16 zeroext %417)
  store i16 %418, i16* %fnum, align 2
  br label %182

; <label>:419                                     ; preds = %182
  %420 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %421 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.137, i32 0, i32 0), %struct._IO_FILE* %420)
  %422 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %423 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.138, i32 0, i32 0), %struct._IO_FILE* %422)
  call void (...) @MapPrintEncodings()
  %424 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %425 = call i32 @fputs(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.139, i32 0, i32 0), %struct._IO_FILE* %424)
  %426 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %427 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.140, i32 0, i32 0), %struct._IO_FILE* %426)
  %428 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %429 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %428, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.141, i32 0, i32 0))
  %430 = load i8*, i8** %3, align 8
  store i8* %430, i8** %p, align 8
  br label %431

; <label>:431                                     ; preds = %444, %419
  %432 = load i8*, i8** %p, align 8
  %433 = load i8, i8* %432, align 1
  %434 = zext i8 %433 to i32
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %447

; <label>:436                                     ; preds = %431
  %437 = load i8*, i8** %p, align 8
  %438 = load i8, i8* %437, align 1
  %439 = zext i8 %438 to i64
  %440 = getelementptr inbounds [0 x i8*], [0 x i8*]* @EightBitToPrintForm, i32 0, i64 %439
  %441 = load i8*, i8** %440, align 8
  %442 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %443 = call i32 @fputs(i8* %441, %struct._IO_FILE* %442)
  br label %444

; <label>:444                                     ; preds = %436
  %445 = load i8*, i8** %p, align 8
  %446 = getelementptr inbounds i8, i8* %445, i32 1
  store i8* %446, i8** %p, align 8
  br label %431

; <label>:447                                     ; preds = %431
  %448 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %449 = load i32, i32* @pagecount, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* @pagecount, align 4
  %451 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %448, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i32 0, i32 0), i32 %450)
  %452 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %453 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %452, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.143, i32 0, i32 0))
  %454 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @FontPrintPageResources(%struct._IO_FILE* %454)
  %455 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %456 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %455, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.144, i32 0, i32 0))
  %457 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @FontPrintPageSetup(%struct._IO_FILE* %457)
  call void @FontAdvanceCurrentPage()
  %458 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %459 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %458, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.145, i32 0, i32 0), double 5.000000e-02, i32 10)
  %460 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %461 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %460, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.146, i32 0, i32 0))
  store i32 1, i32* @prologue_done, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintBetweenPages(i32 %h, i32 %v, i8* %label) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i32 %h, i32* %1, align 4
  store i32 %v, i32* %2, align 4
  store i8* %label, i8** %3, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.162, i32 0, i32 0))
  store i32 0, i32* @gs_stack_top, align 4
  store i32 0, i32* @cpexists, align 4
  store i32 0, i32* @currentfont, align 4
  store i32 0, i32* @currentcolour, align 4
  %6 = load i32, i32* @Encapsulated, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %0
  call void @PS_PrintAfterLastPage()
  %9 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %10 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 49, i32 6, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.163, i32 0, i32 0), i32 1, %struct.FILE_POS* %9)
  br label %11

; <label>:11                                      ; preds = %8, %0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.164, i32 0, i32 0))
  %14 = load i8*, i8** %3, align 8
  store i8* %14, i8** %p, align 8
  br label %15

; <label>:15                                      ; preds = %28, %11
  %16 = load i8*, i8** %p, align 8
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

; <label>:20                                      ; preds = %15
  %21 = load i8*, i8** %p, align 8
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds [0 x i8*], [0 x i8*]* @EightBitToPrintForm, i32 0, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %27 = call i32 @fputs(i8* %25, %struct._IO_FILE* %26)
  br label %28

; <label>:28                                      ; preds = %20
  %29 = load i8*, i8** %p, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %p, align 8
  br label %15

; <label>:31                                      ; preds = %15
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %33 = load i32, i32* @pagecount, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @pagecount, align 4
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i32 0, i32 0), i32 %34)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.143, i32 0, i32 0))
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @FontPrintPageResources(%struct._IO_FILE* %38)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.144, i32 0, i32 0))
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @FontPrintPageSetup(%struct._IO_FILE* %41)
  call void @FontAdvanceCurrentPage()
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.145, i32 0, i32 0), double 5.000000e-02, i32 10)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.165, i32 0, i32 0))
  store i32 0, i32* @wordcount, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintAfterLastPage() #0 {
  %x = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %first_need = alloca i32, align 4
  %1 = load i32, i32* @prologue_done, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %140

; <label>:3                                       ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.162, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.166, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %9 = call i32 @FontNeeded(%struct._IO_FILE* %8)
  store i32 %9, i32* %first_need, align 4
  %10 = load %union.rec*, %union.rec** @needs, align 8
  %11 = bitcast %union.rec* %10 to %struct.word_type*
  %12 = getelementptr inbounds %struct.word_type, %struct.word_type* %11, i32 0, i32 0
  %13 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %12, i32 0, i64 0
  %14 = getelementptr inbounds %struct.LIST, %struct.LIST* %13, i32 0, i32 1
  %15 = load %union.rec*, %union.rec** %14, align 8
  store %union.rec* %15, %union.rec** %link, align 8
  br label %16

; <label>:16                                      ; preds = %75, %3
  %17 = load %union.rec*, %union.rec** %link, align 8
  %18 = load %union.rec*, %union.rec** @needs, align 8
  %19 = icmp ne %union.rec* %17, %18
  br i1 %19, label %20, label %82

; <label>:20                                      ; preds = %16
  %21 = load %union.rec*, %union.rec** %link, align 8
  %22 = bitcast %union.rec* %21 to %struct.word_type*
  %23 = getelementptr inbounds %struct.word_type, %struct.word_type* %22, i32 0, i32 0
  %24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %23, i32 0, i64 1
  %25 = getelementptr inbounds %struct.LIST, %struct.LIST* %24, i32 0, i32 0
  %26 = load %union.rec*, %union.rec** %25, align 8
  store %union.rec* %26, %union.rec** %x, align 8
  br label %27

; <label>:27                                      ; preds = %37, %20
  %28 = load %union.rec*, %union.rec** %x, align 8
  %29 = bitcast %union.rec* %28 to %struct.word_type*
  %30 = getelementptr inbounds %struct.word_type, %struct.word_type* %29, i32 0, i32 1
  %31 = bitcast %union.FIRST_UNION* %30 to %struct.anon*
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

; <label>:36                                      ; preds = %27
  br label %37

; <label>:37                                      ; preds = %36
  %38 = load %union.rec*, %union.rec** %x, align 8
  %39 = bitcast %union.rec* %38 to %struct.word_type*
  %40 = getelementptr inbounds %struct.word_type, %struct.word_type* %39, i32 0, i32 0
  %41 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %40, i32 0, i64 1
  %42 = getelementptr inbounds %struct.LIST, %struct.LIST* %41, i32 0, i32 0
  %43 = load %union.rec*, %union.rec** %42, align 8
  store %union.rec* %43, %union.rec** %x, align 8
  br label %27

; <label>:44                                      ; preds = %27
  %45 = load %union.rec*, %union.rec** %x, align 8
  %46 = bitcast %union.rec* %45 to %struct.word_type*
  %47 = getelementptr inbounds %struct.word_type, %struct.word_type* %46, i32 0, i32 1
  %48 = bitcast %union.FIRST_UNION* %47 to %struct.anon*
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %48, i32 0, i32 0
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 11
  br i1 %52, label %65, label %53

; <label>:53                                      ; preds = %44
  %54 = load %union.rec*, %union.rec** %x, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 1
  %57 = bitcast %union.FIRST_UNION* %56 to %struct.anon*
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 0
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 12
  br i1 %61, label %65, label %62

; <label>:62                                      ; preds = %53
  %63 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %64 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i32 0, %struct.FILE_POS* %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.167, i32 0, i32 0))
  br label %65

; <label>:65                                      ; preds = %62, %53, %44
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %67 = load i32, i32* %first_need, align 4
  %68 = icmp ne i32 %67, 0
  %69 = select i1 %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0)
  %70 = load %union.rec*, %union.rec** %x, align 8
  %71 = bitcast %union.rec* %70 to %struct.word_type*
  %72 = getelementptr inbounds %struct.word_type, %struct.word_type* %71, i32 0, i32 4
  %73 = getelementptr inbounds [4 x i8], [4 x i8]* %72, i32 0, i32 0
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.168, i32 0, i32 0), i8* %69, i8* %73)
  store i32 0, i32* %first_need, align 4
  br label %75

; <label>:75                                      ; preds = %65
  %76 = load %union.rec*, %union.rec** %link, align 8
  %77 = bitcast %union.rec* %76 to %struct.word_type*
  %78 = getelementptr inbounds %struct.word_type, %struct.word_type* %77, i32 0, i32 0
  %79 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %78, i32 0, i64 0
  %80 = getelementptr inbounds %struct.LIST, %struct.LIST* %79, i32 0, i32 1
  %81 = load %union.rec*, %union.rec** %80, align 8
  store %union.rec* %81, %union.rec** %link, align 8
  br label %16

; <label>:82                                      ; preds = %16
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i32 0, i32 0))
  %85 = load %union.rec*, %union.rec** @supplied, align 8
  %86 = bitcast %union.rec* %85 to %struct.word_type*
  %87 = getelementptr inbounds %struct.word_type, %struct.word_type* %86, i32 0, i32 0
  %88 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %87, i32 0, i64 0
  %89 = getelementptr inbounds %struct.LIST, %struct.LIST* %88, i32 0, i32 1
  %90 = load %union.rec*, %union.rec** %89, align 8
  store %union.rec* %90, %union.rec** %link, align 8
  br label %91

; <label>:91                                      ; preds = %126, %82
  %92 = load %union.rec*, %union.rec** %link, align 8
  %93 = load %union.rec*, %union.rec** @supplied, align 8
  %94 = icmp ne %union.rec* %92, %93
  br i1 %94, label %95, label %133

; <label>:95                                      ; preds = %91
  %96 = load %union.rec*, %union.rec** %link, align 8
  %97 = bitcast %union.rec* %96 to %struct.word_type*
  %98 = getelementptr inbounds %struct.word_type, %struct.word_type* %97, i32 0, i32 0
  %99 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %98, i32 0, i64 1
  %100 = getelementptr inbounds %struct.LIST, %struct.LIST* %99, i32 0, i32 0
  %101 = load %union.rec*, %union.rec** %100, align 8
  store %union.rec* %101, %union.rec** %x, align 8
  br label %102

; <label>:102                                     ; preds = %112, %95
  %103 = load %union.rec*, %union.rec** %x, align 8
  %104 = bitcast %union.rec* %103 to %struct.word_type*
  %105 = getelementptr inbounds %struct.word_type, %struct.word_type* %104, i32 0, i32 1
  %106 = bitcast %union.FIRST_UNION* %105 to %struct.anon*
  %107 = getelementptr inbounds %struct.anon, %struct.anon* %106, i32 0, i32 0
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %119

; <label>:111                                     ; preds = %102
  br label %112

; <label>:112                                     ; preds = %111
  %113 = load %union.rec*, %union.rec** %x, align 8
  %114 = bitcast %union.rec* %113 to %struct.word_type*
  %115 = getelementptr inbounds %struct.word_type, %struct.word_type* %114, i32 0, i32 0
  %116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %115, i32 0, i64 1
  %117 = getelementptr inbounds %struct.LIST, %struct.LIST* %116, i32 0, i32 0
  %118 = load %union.rec*, %union.rec** %117, align 8
  store %union.rec* %118, %union.rec** %x, align 8
  br label %102

; <label>:119                                     ; preds = %102
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %121 = load %union.rec*, %union.rec** %x, align 8
  %122 = bitcast %union.rec* %121 to %struct.word_type*
  %123 = getelementptr inbounds %struct.word_type, %struct.word_type* %122, i32 0, i32 4
  %124 = getelementptr inbounds [4 x i8], [4 x i8]* %123, i32 0, i32 0
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.170, i32 0, i32 0), i8* %124)
  br label %126

; <label>:126                                     ; preds = %119
  %127 = load %union.rec*, %union.rec** %link, align 8
  %128 = bitcast %union.rec* %127 to %struct.word_type*
  %129 = getelementptr inbounds %struct.word_type, %struct.word_type* %128, i32 0, i32 0
  %130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %129, i32 0, i64 0
  %131 = getelementptr inbounds %struct.LIST, %struct.LIST* %130, i32 0, i32 1
  %132 = load %union.rec*, %union.rec** %131, align 8
  store %union.rec* %132, %union.rec** %link, align 8
  br label %91

; <label>:133                                     ; preds = %91
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @MapPrintPSResources(%struct._IO_FILE* %134)
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %136 = load i32, i32* @pagecount, align 4
  %137 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %135, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.171, i32 0, i32 0), i32 %136)
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %139 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.172, i32 0, i32 0))
  br label %140

; <label>:140                                     ; preds = %133, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintWord(%union.rec* %x, i32 %hpos, i32 %vpos) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %a = alloca i8*, align 8
  %b = alloca i8*, align 8
  %lig = alloca i8*, align 8
  %unacc = alloca i8*, align 8
  %ksize = alloca i32, align 4
  %command = alloca i8*, align 8
  %m = alloca i32, align 4
  %composite = alloca i16*, align 8
  %cmp = alloca %struct.composite_rec*, align 8
  %buff = alloca [20 x i8], align 16
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %buff1 = alloca [20 x i8], align 16
  %i2 = alloca i32, align 4
  %y3 = alloca i32, align 4
  %buff4 = alloca [20 x i8], align 16
  %i5 = alloca i32, align 4
  %y6 = alloca i32, align 4
  %buff7 = alloca [20 x i8], align 16
  %i8 = alloca i32, align 4
  %y9 = alloca i32, align 4
  %ua_ch1 = alloca i32, align 4
  %ua_ch2 = alloca i32, align 4
  %i10 = alloca i32, align 4
  %j = alloca i32, align 4
  %kc = alloca i8*, align 8
  %buff11 = alloca [20 x i8], align 16
  %i12 = alloca i32, align 4
  %y13 = alloca i32, align 4
  store %union.rec* %x, %union.rec** %1, align 8
  store i32 %hpos, i32* %2, align 4
  store i32 %vpos, i32* %3, align 4
  %4 = load i32, i32* @TotalWordCount, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @TotalWordCount, align 4
  %6 = load %union.rec*, %union.rec** %1, align 8
  %7 = bitcast %union.rec* %6 to %struct.word_type*
  %8 = getelementptr inbounds %struct.word_type, %struct.word_type* %7, i32 0, i32 2
  %9 = bitcast %union.SECOND_UNION* %8 to %struct.anon.1*
  %10 = bitcast %struct.anon.1* %9 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 4095
  %13 = load i32, i32* @currentfont, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %43

; <label>:15                                      ; preds = %0
  %16 = load %union.rec*, %union.rec** %1, align 8
  %17 = bitcast %union.rec* %16 to %struct.word_type*
  %18 = getelementptr inbounds %struct.word_type, %struct.word_type* %17, i32 0, i32 2
  %19 = bitcast %union.SECOND_UNION* %18 to %struct.anon.1*
  %20 = bitcast %struct.anon.1* %19 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 4095
  store i32 %22, i32* @currentfont, align 4
  %23 = load i32, i32* @currentfont, align 4
  %24 = call i32 @FontHalfXHeight(i32 %23)
  %25 = trunc i32 %24 to i16
  store i16 %25, i16* @currentxheight2, align 2
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %27 = load i32, i32* @currentfont, align 4
  %28 = load %union.rec*, %union.rec** %1, align 8
  %29 = call i32 @FontSize(i32 %27, %union.rec* %28)
  %30 = load i32, i32* @currentfont, align 4
  %31 = call i8* @FontName(i32 %30)
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.173, i32 0, i32 0), i32 %29, i8* %31)
  %33 = load i32, i32* @wordcount, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @wordcount, align 4
  %35 = icmp sge i32 %34, 5
  br i1 %35, label %36, label %39

; <label>:36                                      ; preds = %15
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %38 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %37)
  store i32 0, i32* @wordcount, align 4
  br label %42

; <label>:39                                      ; preds = %15
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %41 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %40)
  br label %42

; <label>:42                                      ; preds = %39, %36
  br label %43

; <label>:43                                      ; preds = %42, %0
  %44 = load %union.rec*, %union.rec** %1, align 8
  %45 = bitcast %union.rec* %44 to %struct.word_type*
  %46 = getelementptr inbounds %struct.word_type, %struct.word_type* %45, i32 0, i32 2
  %47 = bitcast %union.SECOND_UNION* %46 to %struct.anon.1*
  %48 = bitcast %struct.anon.1* %47 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = lshr i32 %49, 12
  %51 = and i32 %50, 1023
  %52 = load i32, i32* @currentcolour, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %81

; <label>:54                                      ; preds = %43
  %55 = load %union.rec*, %union.rec** %1, align 8
  %56 = bitcast %union.rec* %55 to %struct.word_type*
  %57 = getelementptr inbounds %struct.word_type, %struct.word_type* %56, i32 0, i32 2
  %58 = bitcast %union.SECOND_UNION* %57 to %struct.anon.1*
  %59 = bitcast %struct.anon.1* %58 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = lshr i32 %60, 12
  %62 = and i32 %61, 1023
  store i32 %62, i32* @currentcolour, align 4
  %63 = load i32, i32* @currentcolour, align 4
  %64 = icmp ugt i32 %63, 0
  br i1 %64, label %65, label %80

; <label>:65                                      ; preds = %54
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %67 = load i32, i32* @currentcolour, align 4
  %68 = call i8* @ColourCommand(i32 %67)
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.174, i32 0, i32 0), i8* %68)
  %70 = load i32, i32* @wordcount, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* @wordcount, align 4
  %72 = icmp sge i32 %71, 5
  br i1 %72, label %73, label %76

; <label>:73                                      ; preds = %65
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %75 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %74)
  store i32 0, i32* @wordcount, align 4
  br label %79

; <label>:76                                      ; preds = %65
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %78 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %77)
  br label %79

; <label>:79                                      ; preds = %76, %73
  br label %80

; <label>:80                                      ; preds = %79, %54
  br label %81

; <label>:81                                      ; preds = %80, %43
  %82 = load %union.rec*, %union.rec** %1, align 8
  %83 = bitcast %union.rec* %82 to %struct.word_type*
  %84 = getelementptr inbounds %struct.word_type, %struct.word_type* %83, i32 0, i32 2
  %85 = bitcast %union.SECOND_UNION* %84 to %struct.anon.1*
  %86 = bitcast %struct.anon.1* %85 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 4095
  %89 = zext i32 %88 to i64
  %90 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %91 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %90, i64 %89
  %92 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %lig, align 8
  %94 = load %union.rec*, %union.rec** %1, align 8
  %95 = bitcast %union.rec* %94 to %struct.word_type*
  %96 = getelementptr inbounds %struct.word_type, %struct.word_type* %95, i32 0, i32 4
  %97 = getelementptr inbounds [4 x i8], [4 x i8]* %96, i32 0, i32 0
  store i8* %97, i8** %q, align 8
  store i8* %97, i8** %p, align 8
  br label %98

; <label>:98                                      ; preds = %197, %81
  %99 = load i8*, i8** %p, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %p, align 8
  %101 = load i8, i8* %99, align 1
  %102 = load i8*, i8** %q, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %q, align 8
  store i8 %101, i8* %102, align 1
  %104 = zext i8 %101 to i64
  %105 = load i8*, i8** %lig, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 %104
  %107 = load i8, i8* %106, align 1
  %108 = icmp ne i8 %107, 0
  br i1 %108, label %109, label %196

; <label>:109                                     ; preds = %98
  %110 = load i8*, i8** %q, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 -1
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i64
  %114 = load i8*, i8** %lig, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 %113
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %120

; <label>:119                                     ; preds = %109
  br label %197

; <label>:120                                     ; preds = %109
  %121 = load i8*, i8** %p, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 -1
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i64
  %125 = load i8*, i8** %lig, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 %124
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = add nsw i32 %128, 256
  %130 = sext i32 %129 to i64
  %131 = load i8*, i8** %lig, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 %130
  store i8* %132, i8** %a, align 8
  br label %133

; <label>:133                                     ; preds = %193, %120
  %134 = load i8*, i8** %a, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %a, align 8
  %136 = load i8, i8* %134, align 1
  %137 = zext i8 %136 to i32
  %138 = load i8*, i8** %p, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 -1
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp eq i32 %137, %141
  br i1 %142, label %143, label %194

; <label>:143                                     ; preds = %133
  %144 = load i8*, i8** %p, align 8
  store i8* %144, i8** %b, align 8
  br label %145

; <label>:145                                     ; preds = %166, %143
  %146 = load i8*, i8** %a, align 8
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = load i8*, i8** %b, align 8
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = icmp eq i32 %148, %151
  br i1 %152, label %153, label %164

; <label>:153                                     ; preds = %145
  %154 = load i8*, i8** %a, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 1
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

; <label>:159                                     ; preds = %153
  %160 = load i8*, i8** %b, align 8
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = icmp ne i32 %162, 0
  br label %164

; <label>:164                                     ; preds = %159, %153, %145
  %165 = phi i1 [ false, %153 ], [ false, %145 ], [ %163, %159 ]
  br i1 %165, label %166, label %171

; <label>:166                                     ; preds = %164
  %167 = load i8*, i8** %a, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %a, align 8
  %169 = load i8*, i8** %b, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %b, align 8
  br label %145

; <label>:171                                     ; preds = %164
  %172 = load i8*, i8** %a, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %183

; <label>:177                                     ; preds = %171
  %178 = load i8*, i8** %a, align 8
  %179 = load i8, i8* %178, align 1
  %180 = load i8*, i8** %q, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 -1
  store i8 %179, i8* %181, align 1
  %182 = load i8*, i8** %b, align 8
  store i8* %182, i8** %p, align 8
  br label %194

; <label>:183                                     ; preds = %171
  br label %184

; <label>:184                                     ; preds = %189, %183
  %185 = load i8*, i8** %a, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %a, align 8
  %187 = load i8, i8* %186, align 1
  %188 = icmp ne i8 %187, 0
  br i1 %188, label %189, label %190

; <label>:189                                     ; preds = %184
  br label %184

; <label>:190                                     ; preds = %184
  %191 = load i8*, i8** %a, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %a, align 8
  br label %193

; <label>:193                                     ; preds = %190
  br label %133

; <label>:194                                     ; preds = %177, %133
  br label %195

; <label>:195                                     ; preds = %194
  br label %196

; <label>:196                                     ; preds = %195, %98
  br label %197

; <label>:197                                     ; preds = %196, %119
  %198 = load i8*, i8** %p, align 8
  %199 = load i8, i8* %198, align 1
  %200 = icmp ne i8 %199, 0
  br i1 %200, label %98, label %201

; <label>:201                                     ; preds = %197
  %202 = load i8*, i8** %q, align 8
  store i8 0, i8* %202, align 1
  %203 = load %union.rec*, %union.rec** %1, align 8
  %204 = bitcast %union.rec* %203 to %struct.word_type*
  %205 = getelementptr inbounds %struct.word_type, %struct.word_type* %204, i32 0, i32 2
  %206 = bitcast %union.SECOND_UNION* %205 to %struct.anon.1*
  %207 = bitcast %struct.anon.1* %206 to i32*
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %208, 4095
  %210 = zext i32 %209 to i64
  %211 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %212 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %211, i64 %210
  %213 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %212, i32 0, i32 3
  %214 = load %struct.composite_rec*, %struct.composite_rec** %213, align 8
  store %struct.composite_rec* %214, %struct.composite_rec** %cmp, align 8
  %215 = load %union.rec*, %union.rec** %1, align 8
  %216 = bitcast %union.rec* %215 to %struct.word_type*
  %217 = getelementptr inbounds %struct.word_type, %struct.word_type* %216, i32 0, i32 2
  %218 = bitcast %union.SECOND_UNION* %217 to %struct.anon.1*
  %219 = bitcast %struct.anon.1* %218 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = and i32 %220, 4095
  %222 = zext i32 %221 to i64
  %223 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %224 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %223, i64 %222
  %225 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %224, i32 0, i32 2
  %226 = load i16*, i16** %225, align 8
  store i16* %226, i16** %composite, align 8
  %227 = load i32, i32* %3, align 4
  %228 = load i16, i16* @currentxheight2, align 2
  %229 = sext i16 %228 to i32
  %230 = sub nsw i32 %227, %229
  store i32 %230, i32* %3, align 4
  %231 = load i32, i32* @cpexists, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %286

; <label>:233                                     ; preds = %201
  %234 = load i32, i32* @currenty, align 4
  %235 = load i32, i32* %3, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %286

; <label>:237                                     ; preds = %233
  %238 = load i32, i32* %2, align 4
  %239 = icmp sge i32 %238, 0
  br i1 %239, label %240, label %242

; <label>:240                                     ; preds = %237
  %241 = load i32, i32* %2, align 4
  store i32 %241, i32* %y, align 4
  br label %247

; <label>:242                                     ; preds = %237
  %243 = load i32, i32* %2, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %y, align 4
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %246 = call i32 @_IO_putc(i32 45, %struct._IO_FILE* %245)
  br label %247

; <label>:247                                     ; preds = %242, %240
  store i32 0, i32* %i, align 4
  br label %248

; <label>:248                                     ; preds = %257, %247
  %249 = load i32, i32* %y, align 4
  %250 = srem i32 %249, 10
  %251 = add nsw i32 %250, 48
  %252 = trunc i32 %251 to i8
  %253 = load i32, i32* %i, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %i, align 4
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i64 %255
  store i8 %252, i8* %256, align 1
  br label %257

; <label>:257                                     ; preds = %248
  %258 = load i32, i32* %y, align 4
  %259 = sdiv i32 %258, 10
  store i32 %259, i32* %y, align 4
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %248, label %261

; <label>:261                                     ; preds = %257
  br label %262

; <label>:262                                     ; preds = %272, %261
  %263 = load i32, i32* %i, align 4
  %264 = add nsw i32 %263, -1
  store i32 %264, i32* %i, align 4
  %265 = load i32, i32* %i, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i64 %266
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %271 = call i32 @_IO_putc(i32 %269, %struct._IO_FILE* %270)
  br label %272

; <label>:272                                     ; preds = %262
  %273 = load i32, i32* %i, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %262, label %275

; <label>:275                                     ; preds = %272
  %276 = load %union.rec*, %union.rec** %1, align 8
  %277 = bitcast %union.rec* %276 to %struct.word_type*
  %278 = getelementptr inbounds %struct.word_type, %struct.word_type* %277, i32 0, i32 2
  %279 = bitcast %union.SECOND_UNION* %278 to %struct.anon.1*
  %280 = bitcast %struct.anon.1* %279 to i32*
  %281 = load i32, i32* %280, align 4
  %282 = lshr i32 %281, 22
  %283 = and i32 %282, 1
  %284 = icmp ne i32 %283, 0
  %285 = select i1 %284, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.176, i32 0, i32 0)
  store i8* %285, i8** %command, align 8
  br label %376

; <label>:286                                     ; preds = %233, %201
  %287 = load i32, i32* %3, align 4
  store i32 %287, i32* @currenty, align 4
  %288 = load i32, i32* %2, align 4
  %289 = icmp sge i32 %288, 0
  br i1 %289, label %290, label %292

; <label>:290                                     ; preds = %286
  %291 = load i32, i32* %2, align 4
  store i32 %291, i32* %y3, align 4
  br label %297

; <label>:292                                     ; preds = %286
  %293 = load i32, i32* %2, align 4
  %294 = sub nsw i32 0, %293
  store i32 %294, i32* %y3, align 4
  %295 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %296 = call i32 @_IO_putc(i32 45, %struct._IO_FILE* %295)
  br label %297

; <label>:297                                     ; preds = %292, %290
  store i32 0, i32* %i2, align 4
  br label %298

; <label>:298                                     ; preds = %307, %297
  %299 = load i32, i32* %y3, align 4
  %300 = srem i32 %299, 10
  %301 = add nsw i32 %300, 48
  %302 = trunc i32 %301 to i8
  %303 = load i32, i32* %i2, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %i2, align 4
  %305 = sext i32 %303 to i64
  %306 = getelementptr inbounds [20 x i8], [20 x i8]* %buff1, i32 0, i64 %305
  store i8 %302, i8* %306, align 1
  br label %307

; <label>:307                                     ; preds = %298
  %308 = load i32, i32* %y3, align 4
  %309 = sdiv i32 %308, 10
  store i32 %309, i32* %y3, align 4
  %310 = icmp sgt i32 %309, 0
  br i1 %310, label %298, label %311

; <label>:311                                     ; preds = %307
  br label %312

; <label>:312                                     ; preds = %322, %311
  %313 = load i32, i32* %i2, align 4
  %314 = add nsw i32 %313, -1
  store i32 %314, i32* %i2, align 4
  %315 = load i32, i32* %i2, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [20 x i8], [20 x i8]* %buff1, i32 0, i64 %316
  %318 = load i8, i8* %317, align 1
  %319 = sext i8 %318 to i32
  %320 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %321 = call i32 @_IO_putc(i32 %319, %struct._IO_FILE* %320)
  br label %322

; <label>:322                                     ; preds = %312
  %323 = load i32, i32* %i2, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %312, label %325

; <label>:325                                     ; preds = %322
  %326 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %327 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %326)
  %328 = load i32, i32* @currenty, align 4
  %329 = icmp sge i32 %328, 0
  br i1 %329, label %330, label %332

; <label>:330                                     ; preds = %325
  %331 = load i32, i32* @currenty, align 4
  store i32 %331, i32* %y6, align 4
  br label %337

; <label>:332                                     ; preds = %325
  %333 = load i32, i32* @currenty, align 4
  %334 = sub nsw i32 0, %333
  store i32 %334, i32* %y6, align 4
  %335 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %336 = call i32 @_IO_putc(i32 45, %struct._IO_FILE* %335)
  br label %337

; <label>:337                                     ; preds = %332, %330
  store i32 0, i32* %i5, align 4
  br label %338

; <label>:338                                     ; preds = %347, %337
  %339 = load i32, i32* %y6, align 4
  %340 = srem i32 %339, 10
  %341 = add nsw i32 %340, 48
  %342 = trunc i32 %341 to i8
  %343 = load i32, i32* %i5, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %i5, align 4
  %345 = sext i32 %343 to i64
  %346 = getelementptr inbounds [20 x i8], [20 x i8]* %buff4, i32 0, i64 %345
  store i8 %342, i8* %346, align 1
  br label %347

; <label>:347                                     ; preds = %338
  %348 = load i32, i32* %y6, align 4
  %349 = sdiv i32 %348, 10
  store i32 %349, i32* %y6, align 4
  %350 = icmp sgt i32 %349, 0
  br i1 %350, label %338, label %351

; <label>:351                                     ; preds = %347
  br label %352

; <label>:352                                     ; preds = %362, %351
  %353 = load i32, i32* %i5, align 4
  %354 = add nsw i32 %353, -1
  store i32 %354, i32* %i5, align 4
  %355 = load i32, i32* %i5, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [20 x i8], [20 x i8]* %buff4, i32 0, i64 %356
  %358 = load i8, i8* %357, align 1
  %359 = sext i8 %358 to i32
  %360 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %361 = call i32 @_IO_putc(i32 %359, %struct._IO_FILE* %360)
  br label %362

; <label>:362                                     ; preds = %352
  %363 = load i32, i32* %i5, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %352, label %365

; <label>:365                                     ; preds = %362
  %366 = load %union.rec*, %union.rec** %1, align 8
  %367 = bitcast %union.rec* %366 to %struct.word_type*
  %368 = getelementptr inbounds %struct.word_type, %struct.word_type* %367, i32 0, i32 2
  %369 = bitcast %union.SECOND_UNION* %368 to %struct.anon.1*
  %370 = bitcast %struct.anon.1* %369 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = lshr i32 %371, 22
  %373 = and i32 %372, 1
  %374 = icmp ne i32 %373, 0
  %375 = select i1 %374, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.178, i32 0, i32 0)
  store i8* %375, i8** %command, align 8
  store i32 1, i32* @cpexists, align 4
  br label %376

; <label>:376                                     ; preds = %365, %275
  %377 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %378 = call i32 @_IO_putc(i32 40, %struct._IO_FILE* %377)
  %379 = load %union.rec*, %union.rec** %1, align 8
  %380 = bitcast %union.rec* %379 to %struct.word_type*
  %381 = getelementptr inbounds %struct.word_type, %struct.word_type* %380, i32 0, i32 4
  %382 = getelementptr inbounds [4 x i8], [4 x i8]* %381, i32 0, i32 0
  store i8* %382, i8** %p, align 8
  %383 = load i8*, i8** %p, align 8
  %384 = load i8, i8* %383, align 1
  %385 = zext i8 %384 to i64
  %386 = load i16*, i16** %composite, align 8
  %387 = getelementptr inbounds i16, i16* %386, i64 %385
  %388 = load i16, i16* %387, align 2
  %389 = icmp ne i16 %388, 0
  br i1 %389, label %390, label %516

; <label>:390                                     ; preds = %376
  %391 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %392 = load i8*, i8** %command, align 8
  %393 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %391, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.179, i32 0, i32 0), i8* %392)
  %394 = load i8*, i8** %p, align 8
  %395 = load i8, i8* %394, align 1
  %396 = zext i8 %395 to i64
  %397 = load i16*, i16** %composite, align 8
  %398 = getelementptr inbounds i16, i16* %397, i64 %396
  %399 = load i16, i16* %398, align 2
  %400 = zext i16 %399 to i64
  %401 = load %struct.composite_rec*, %struct.composite_rec** %cmp, align 8
  %402 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %401, i64 %400
  %403 = load %union.rec*, %union.rec** %1, align 8
  %404 = bitcast %union.rec* %403 to %struct.word_type*
  %405 = getelementptr inbounds %struct.word_type, %struct.word_type* %404, i32 0, i32 2
  %406 = bitcast %union.SECOND_UNION* %405 to %struct.anon.1*
  %407 = bitcast %struct.anon.1* %406 to i32*
  %408 = load i32, i32* %407, align 4
  %409 = lshr i32 %408, 22
  %410 = and i32 %409, 1
  %411 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PrintComposite(%struct.composite_rec* %402, i32 %410, %struct._IO_FILE* %411)
  %412 = load i8*, i8** %p, align 8
  %413 = load i8, i8* %412, align 1
  %414 = zext i8 %413 to i64
  %415 = load %union.rec*, %union.rec** %1, align 8
  %416 = bitcast %union.rec* %415 to %struct.word_type*
  %417 = getelementptr inbounds %struct.word_type, %struct.word_type* %416, i32 0, i32 2
  %418 = bitcast %union.SECOND_UNION* %417 to %struct.anon.1*
  %419 = bitcast %struct.anon.1* %418 to i32*
  %420 = load i32, i32* %419, align 4
  %421 = and i32 %420, 4095
  %422 = zext i32 %421 to i64
  %423 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %424 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %423, i64 %422
  %425 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %424, i32 0, i32 0
  %426 = load %struct.metrics*, %struct.metrics** %425, align 8
  %427 = getelementptr inbounds %struct.metrics, %struct.metrics* %426, i64 %414
  %428 = getelementptr inbounds %struct.metrics, %struct.metrics* %427, i32 0, i32 3
  %429 = load i16, i16* %428, align 2
  %430 = sext i16 %429 to i32
  %431 = icmp sge i32 %430, 0
  br i1 %431, label %432, label %452

; <label>:432                                     ; preds = %390
  %433 = load i8*, i8** %p, align 8
  %434 = load i8, i8* %433, align 1
  %435 = zext i8 %434 to i64
  %436 = load %union.rec*, %union.rec** %1, align 8
  %437 = bitcast %union.rec* %436 to %struct.word_type*
  %438 = getelementptr inbounds %struct.word_type, %struct.word_type* %437, i32 0, i32 2
  %439 = bitcast %union.SECOND_UNION* %438 to %struct.anon.1*
  %440 = bitcast %struct.anon.1* %439 to i32*
  %441 = load i32, i32* %440, align 4
  %442 = and i32 %441, 4095
  %443 = zext i32 %442 to i64
  %444 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %445 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %444, i64 %443
  %446 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %445, i32 0, i32 0
  %447 = load %struct.metrics*, %struct.metrics** %446, align 8
  %448 = getelementptr inbounds %struct.metrics, %struct.metrics* %447, i64 %435
  %449 = getelementptr inbounds %struct.metrics, %struct.metrics* %448, i32 0, i32 3
  %450 = load i16, i16* %449, align 2
  %451 = sext i16 %450 to i32
  store i32 %451, i32* %y9, align 4
  br label %475

; <label>:452                                     ; preds = %390
  %453 = load i8*, i8** %p, align 8
  %454 = load i8, i8* %453, align 1
  %455 = zext i8 %454 to i64
  %456 = load %union.rec*, %union.rec** %1, align 8
  %457 = bitcast %union.rec* %456 to %struct.word_type*
  %458 = getelementptr inbounds %struct.word_type, %struct.word_type* %457, i32 0, i32 2
  %459 = bitcast %union.SECOND_UNION* %458 to %struct.anon.1*
  %460 = bitcast %struct.anon.1* %459 to i32*
  %461 = load i32, i32* %460, align 4
  %462 = and i32 %461, 4095
  %463 = zext i32 %462 to i64
  %464 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %465 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %464, i64 %463
  %466 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %465, i32 0, i32 0
  %467 = load %struct.metrics*, %struct.metrics** %466, align 8
  %468 = getelementptr inbounds %struct.metrics, %struct.metrics* %467, i64 %455
  %469 = getelementptr inbounds %struct.metrics, %struct.metrics* %468, i32 0, i32 3
  %470 = load i16, i16* %469, align 2
  %471 = sext i16 %470 to i32
  %472 = sub nsw i32 0, %471
  store i32 %472, i32* %y9, align 4
  %473 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %474 = call i32 @_IO_putc(i32 45, %struct._IO_FILE* %473)
  br label %475

; <label>:475                                     ; preds = %452, %432
  store i32 0, i32* %i8, align 4
  br label %476

; <label>:476                                     ; preds = %485, %475
  %477 = load i32, i32* %y9, align 4
  %478 = srem i32 %477, 10
  %479 = add nsw i32 %478, 48
  %480 = trunc i32 %479 to i8
  %481 = load i32, i32* %i8, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %i8, align 4
  %483 = sext i32 %481 to i64
  %484 = getelementptr inbounds [20 x i8], [20 x i8]* %buff7, i32 0, i64 %483
  store i8 %480, i8* %484, align 1
  br label %485

; <label>:485                                     ; preds = %476
  %486 = load i32, i32* %y9, align 4
  %487 = sdiv i32 %486, 10
  store i32 %487, i32* %y9, align 4
  %488 = icmp sgt i32 %487, 0
  br i1 %488, label %476, label %489

; <label>:489                                     ; preds = %485
  br label %490

; <label>:490                                     ; preds = %500, %489
  %491 = load i32, i32* %i8, align 4
  %492 = add nsw i32 %491, -1
  store i32 %492, i32* %i8, align 4
  %493 = load i32, i32* %i8, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds [20 x i8], [20 x i8]* %buff7, i32 0, i64 %494
  %496 = load i8, i8* %495, align 1
  %497 = sext i8 %496 to i32
  %498 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %499 = call i32 @_IO_putc(i32 %497, %struct._IO_FILE* %498)
  br label %500

; <label>:500                                     ; preds = %490
  %501 = load i32, i32* %i8, align 4
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %490, label %503

; <label>:503                                     ; preds = %500
  %504 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %505 = call i32 @_IO_putc(i32 40, %struct._IO_FILE* %504)
  %506 = load %union.rec*, %union.rec** %1, align 8
  %507 = bitcast %union.rec* %506 to %struct.word_type*
  %508 = getelementptr inbounds %struct.word_type, %struct.word_type* %507, i32 0, i32 2
  %509 = bitcast %union.SECOND_UNION* %508 to %struct.anon.1*
  %510 = bitcast %struct.anon.1* %509 to i32*
  %511 = load i32, i32* %510, align 4
  %512 = lshr i32 %511, 22
  %513 = and i32 %512, 1
  %514 = icmp ne i32 %513, 0
  %515 = select i1 %514, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.181, i32 0, i32 0)
  store i8* %515, i8** %command, align 8
  br label %524

; <label>:516                                     ; preds = %376
  %517 = load i8*, i8** %p, align 8
  %518 = load i8, i8* %517, align 1
  %519 = zext i8 %518 to i64
  %520 = getelementptr inbounds [0 x i8*], [0 x i8*]* @EightBitToPrintForm, i32 0, i64 %519
  %521 = load i8*, i8** %520, align 8
  %522 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %523 = call i32 @fputs(i8* %521, %struct._IO_FILE* %522)
  br label %524

; <label>:524                                     ; preds = %516, %503
  %525 = load %union.rec*, %union.rec** %1, align 8
  %526 = bitcast %union.rec* %525 to %struct.word_type*
  %527 = getelementptr inbounds %struct.word_type, %struct.word_type* %526, i32 0, i32 2
  %528 = bitcast %union.SECOND_UNION* %527 to %struct.anon.1*
  %529 = bitcast %struct.anon.1* %528 to i32*
  %530 = load i32, i32* %529, align 4
  %531 = and i32 %530, 4095
  %532 = zext i32 %531 to i64
  %533 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %534 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %533, i64 %532
  %535 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %534, i32 0, i32 5
  %536 = load %union.rec*, %union.rec** %535, align 8
  %537 = bitcast %union.rec* %536 to %struct.word_type*
  %538 = getelementptr inbounds %struct.word_type, %struct.word_type* %537, i32 0, i32 3
  %539 = bitcast %union.THIRD_UNION* %538 to %struct.anon.7*
  %540 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %539, i32 0, i32 3
  %541 = load i8, i8* %540, align 4
  %542 = and i8 %541, 127
  %543 = zext i8 %542 to i32
  store i32 %543, i32* %m, align 4
  %544 = load i32, i32* %m, align 4
  %545 = zext i32 %544 to i64
  %546 = getelementptr inbounds [0 x %struct.mapvec*], [0 x %struct.mapvec*]* @MapTable, i32 0, i64 %545
  %547 = load %struct.mapvec*, %struct.mapvec** %546, align 8
  %548 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %547, i32 0, i32 7
  %549 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %548, i32 0, i64 2
  %550 = getelementptr inbounds [256 x i8], [256 x i8]* %549, i32 0, i32 0
  store i8* %550, i8** %unacc, align 8
  %551 = load i8*, i8** %p, align 8
  %552 = getelementptr inbounds i8, i8* %551, i32 1
  store i8* %552, i8** %p, align 8
  br label %553

; <label>:553                                     ; preds = %830, %524
  %554 = load i8*, i8** %p, align 8
  %555 = load i8, i8* %554, align 1
  %556 = icmp ne i8 %555, 0
  br i1 %556, label %557, label %833

; <label>:557                                     ; preds = %553
  %558 = load i8*, i8** %p, align 8
  %559 = getelementptr inbounds i8, i8* %558, i64 -1
  %560 = load i8, i8* %559, align 1
  %561 = zext i8 %560 to i64
  %562 = load i8*, i8** %unacc, align 8
  %563 = getelementptr inbounds i8, i8* %562, i64 %561
  %564 = load i8, i8* %563, align 1
  %565 = zext i8 %564 to i32
  store i32 %565, i32* %ua_ch1, align 4
  %566 = load i8*, i8** %p, align 8
  %567 = load i8, i8* %566, align 1
  %568 = zext i8 %567 to i64
  %569 = load i8*, i8** %unacc, align 8
  %570 = getelementptr inbounds i8, i8* %569, i64 %568
  %571 = load i8, i8* %570, align 1
  %572 = zext i8 %571 to i32
  store i32 %572, i32* %ua_ch2, align 4
  %573 = load i32, i32* %ua_ch1, align 4
  %574 = sext i32 %573 to i64
  %575 = load %union.rec*, %union.rec** %1, align 8
  %576 = bitcast %union.rec* %575 to %struct.word_type*
  %577 = getelementptr inbounds %struct.word_type, %struct.word_type* %576, i32 0, i32 2
  %578 = bitcast %union.SECOND_UNION* %577 to %struct.anon.1*
  %579 = bitcast %struct.anon.1* %578 to i32*
  %580 = load i32, i32* %579, align 4
  %581 = and i32 %580, 4095
  %582 = zext i32 %581 to i64
  %583 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %584 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %583, i64 %582
  %585 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %584, i32 0, i32 9
  %586 = load i16*, i16** %585, align 8
  %587 = getelementptr inbounds i16, i16* %586, i64 %574
  %588 = load i16, i16* %587, align 2
  %589 = zext i16 %588 to i32
  store i32 %589, i32* %i10, align 4
  %590 = load i32, i32* %j, align 4
  %591 = load i32, i32* %i10, align 4
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %593, label %594

; <label>:593                                     ; preds = %557
  store i32 0, i32* %ksize, align 4
  br label %666

; <label>:594                                     ; preds = %557
  %595 = load %union.rec*, %union.rec** %1, align 8
  %596 = bitcast %union.rec* %595 to %struct.word_type*
  %597 = getelementptr inbounds %struct.word_type, %struct.word_type* %596, i32 0, i32 2
  %598 = bitcast %union.SECOND_UNION* %597 to %struct.anon.1*
  %599 = bitcast %struct.anon.1* %598 to i32*
  %600 = load i32, i32* %599, align 4
  %601 = and i32 %600, 4095
  %602 = zext i32 %601 to i64
  %603 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %604 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %603, i64 %602
  %605 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %604, i32 0, i32 10
  %606 = load i8*, i8** %605, align 8
  store i8* %606, i8** %kc, align 8
  %607 = load i32, i32* %i10, align 4
  store i32 %607, i32* %j, align 4
  br label %608

; <label>:608                                     ; preds = %618, %594
  %609 = load i32, i32* %j, align 4
  %610 = sext i32 %609 to i64
  %611 = load i8*, i8** %kc, align 8
  %612 = getelementptr inbounds i8, i8* %611, i64 %610
  %613 = load i8, i8* %612, align 1
  %614 = zext i8 %613 to i32
  %615 = load i32, i32* %ua_ch2, align 4
  %616 = icmp sgt i32 %614, %615
  br i1 %616, label %617, label %621

; <label>:617                                     ; preds = %608
  br label %618

; <label>:618                                     ; preds = %617
  %619 = load i32, i32* %j, align 4
  %620 = add nsw i32 %619, 1
  store i32 %620, i32* %j, align 4
  br label %608

; <label>:621                                     ; preds = %608
  %622 = load i32, i32* %j, align 4
  %623 = sext i32 %622 to i64
  %624 = load i8*, i8** %kc, align 8
  %625 = getelementptr inbounds i8, i8* %624, i64 %623
  %626 = load i8, i8* %625, align 1
  %627 = zext i8 %626 to i32
  %628 = load i32, i32* %ua_ch2, align 4
  %629 = icmp eq i32 %627, %628
  br i1 %629, label %630, label %663

; <label>:630                                     ; preds = %621
  %631 = load i32, i32* %j, align 4
  %632 = sext i32 %631 to i64
  %633 = load %union.rec*, %union.rec** %1, align 8
  %634 = bitcast %union.rec* %633 to %struct.word_type*
  %635 = getelementptr inbounds %struct.word_type, %struct.word_type* %634, i32 0, i32 2
  %636 = bitcast %union.SECOND_UNION* %635 to %struct.anon.1*
  %637 = bitcast %struct.anon.1* %636 to i32*
  %638 = load i32, i32* %637, align 4
  %639 = and i32 %638, 4095
  %640 = zext i32 %639 to i64
  %641 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %642 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %641, i64 %640
  %643 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %642, i32 0, i32 11
  %644 = load i8*, i8** %643, align 8
  %645 = getelementptr inbounds i8, i8* %644, i64 %632
  %646 = load i8, i8* %645, align 1
  %647 = zext i8 %646 to i64
  %648 = load %union.rec*, %union.rec** %1, align 8
  %649 = bitcast %union.rec* %648 to %struct.word_type*
  %650 = getelementptr inbounds %struct.word_type, %struct.word_type* %649, i32 0, i32 2
  %651 = bitcast %union.SECOND_UNION* %650 to %struct.anon.1*
  %652 = bitcast %struct.anon.1* %651 to i32*
  %653 = load i32, i32* %652, align 4
  %654 = and i32 %653, 4095
  %655 = zext i32 %654 to i64
  %656 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %657 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %656, i64 %655
  %658 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %657, i32 0, i32 12
  %659 = load i16*, i16** %658, align 8
  %660 = getelementptr inbounds i16, i16* %659, i64 %647
  %661 = load i16, i16* %660, align 2
  %662 = sext i16 %661 to i32
  br label %664

; <label>:663                                     ; preds = %621
  br label %664

; <label>:664                                     ; preds = %663, %630
  %665 = phi i32 [ %662, %630 ], [ 0, %663 ]
  store i32 %665, i32* %ksize, align 4
  br label %666

; <label>:666                                     ; preds = %664, %593
  %667 = load i32, i32* %ksize, align 4
  %668 = icmp ne i32 %667, 0
  br i1 %668, label %669, label %687

; <label>:669                                     ; preds = %666
  %670 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %671 = load i8*, i8** %command, align 8
  %672 = load i32, i32* %ksize, align 4
  %673 = sub nsw i32 0, %672
  %674 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %670, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.182, i32 0, i32 0), i8* %671, i32 %673)
  %675 = load i32, i32* @wordcount, align 4
  %676 = add nsw i32 %675, 1
  store i32 %676, i32* @wordcount, align 4
  %677 = load %union.rec*, %union.rec** %1, align 8
  %678 = bitcast %union.rec* %677 to %struct.word_type*
  %679 = getelementptr inbounds %struct.word_type, %struct.word_type* %678, i32 0, i32 2
  %680 = bitcast %union.SECOND_UNION* %679 to %struct.anon.1*
  %681 = bitcast %struct.anon.1* %680 to i32*
  %682 = load i32, i32* %681, align 4
  %683 = lshr i32 %682, 22
  %684 = and i32 %683, 1
  %685 = icmp ne i32 %684, 0
  %686 = select i1 %685, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.184, i32 0, i32 0)
  store i8* %686, i8** %command, align 8
  br label %687

; <label>:687                                     ; preds = %669, %666
  %688 = load i8*, i8** %p, align 8
  %689 = load i8, i8* %688, align 1
  %690 = zext i8 %689 to i64
  %691 = load i16*, i16** %composite, align 8
  %692 = getelementptr inbounds i16, i16* %691, i64 %690
  %693 = load i16, i16* %692, align 2
  %694 = icmp ne i16 %693, 0
  br i1 %694, label %695, label %821

; <label>:695                                     ; preds = %687
  %696 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %697 = load i8*, i8** %command, align 8
  %698 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %696, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.179, i32 0, i32 0), i8* %697)
  %699 = load i8*, i8** %p, align 8
  %700 = load i8, i8* %699, align 1
  %701 = zext i8 %700 to i64
  %702 = load i16*, i16** %composite, align 8
  %703 = getelementptr inbounds i16, i16* %702, i64 %701
  %704 = load i16, i16* %703, align 2
  %705 = zext i16 %704 to i64
  %706 = load %struct.composite_rec*, %struct.composite_rec** %cmp, align 8
  %707 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %706, i64 %705
  %708 = load %union.rec*, %union.rec** %1, align 8
  %709 = bitcast %union.rec* %708 to %struct.word_type*
  %710 = getelementptr inbounds %struct.word_type, %struct.word_type* %709, i32 0, i32 2
  %711 = bitcast %union.SECOND_UNION* %710 to %struct.anon.1*
  %712 = bitcast %struct.anon.1* %711 to i32*
  %713 = load i32, i32* %712, align 4
  %714 = lshr i32 %713, 22
  %715 = and i32 %714, 1
  %716 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PrintComposite(%struct.composite_rec* %707, i32 %715, %struct._IO_FILE* %716)
  %717 = load i8*, i8** %p, align 8
  %718 = load i8, i8* %717, align 1
  %719 = zext i8 %718 to i64
  %720 = load %union.rec*, %union.rec** %1, align 8
  %721 = bitcast %union.rec* %720 to %struct.word_type*
  %722 = getelementptr inbounds %struct.word_type, %struct.word_type* %721, i32 0, i32 2
  %723 = bitcast %union.SECOND_UNION* %722 to %struct.anon.1*
  %724 = bitcast %struct.anon.1* %723 to i32*
  %725 = load i32, i32* %724, align 4
  %726 = and i32 %725, 4095
  %727 = zext i32 %726 to i64
  %728 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %729 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %728, i64 %727
  %730 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %729, i32 0, i32 0
  %731 = load %struct.metrics*, %struct.metrics** %730, align 8
  %732 = getelementptr inbounds %struct.metrics, %struct.metrics* %731, i64 %719
  %733 = getelementptr inbounds %struct.metrics, %struct.metrics* %732, i32 0, i32 3
  %734 = load i16, i16* %733, align 2
  %735 = sext i16 %734 to i32
  %736 = icmp sge i32 %735, 0
  br i1 %736, label %737, label %757

; <label>:737                                     ; preds = %695
  %738 = load i8*, i8** %p, align 8
  %739 = load i8, i8* %738, align 1
  %740 = zext i8 %739 to i64
  %741 = load %union.rec*, %union.rec** %1, align 8
  %742 = bitcast %union.rec* %741 to %struct.word_type*
  %743 = getelementptr inbounds %struct.word_type, %struct.word_type* %742, i32 0, i32 2
  %744 = bitcast %union.SECOND_UNION* %743 to %struct.anon.1*
  %745 = bitcast %struct.anon.1* %744 to i32*
  %746 = load i32, i32* %745, align 4
  %747 = and i32 %746, 4095
  %748 = zext i32 %747 to i64
  %749 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %750 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %749, i64 %748
  %751 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %750, i32 0, i32 0
  %752 = load %struct.metrics*, %struct.metrics** %751, align 8
  %753 = getelementptr inbounds %struct.metrics, %struct.metrics* %752, i64 %740
  %754 = getelementptr inbounds %struct.metrics, %struct.metrics* %753, i32 0, i32 3
  %755 = load i16, i16* %754, align 2
  %756 = sext i16 %755 to i32
  store i32 %756, i32* %y13, align 4
  br label %780

; <label>:757                                     ; preds = %695
  %758 = load i8*, i8** %p, align 8
  %759 = load i8, i8* %758, align 1
  %760 = zext i8 %759 to i64
  %761 = load %union.rec*, %union.rec** %1, align 8
  %762 = bitcast %union.rec* %761 to %struct.word_type*
  %763 = getelementptr inbounds %struct.word_type, %struct.word_type* %762, i32 0, i32 2
  %764 = bitcast %union.SECOND_UNION* %763 to %struct.anon.1*
  %765 = bitcast %struct.anon.1* %764 to i32*
  %766 = load i32, i32* %765, align 4
  %767 = and i32 %766, 4095
  %768 = zext i32 %767 to i64
  %769 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %770 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %769, i64 %768
  %771 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %770, i32 0, i32 0
  %772 = load %struct.metrics*, %struct.metrics** %771, align 8
  %773 = getelementptr inbounds %struct.metrics, %struct.metrics* %772, i64 %760
  %774 = getelementptr inbounds %struct.metrics, %struct.metrics* %773, i32 0, i32 3
  %775 = load i16, i16* %774, align 2
  %776 = sext i16 %775 to i32
  %777 = sub nsw i32 0, %776
  store i32 %777, i32* %y13, align 4
  %778 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %779 = call i32 @_IO_putc(i32 45, %struct._IO_FILE* %778)
  br label %780

; <label>:780                                     ; preds = %757, %737
  store i32 0, i32* %i12, align 4
  br label %781

; <label>:781                                     ; preds = %790, %780
  %782 = load i32, i32* %y13, align 4
  %783 = srem i32 %782, 10
  %784 = add nsw i32 %783, 48
  %785 = trunc i32 %784 to i8
  %786 = load i32, i32* %i12, align 4
  %787 = add nsw i32 %786, 1
  store i32 %787, i32* %i12, align 4
  %788 = sext i32 %786 to i64
  %789 = getelementptr inbounds [20 x i8], [20 x i8]* %buff11, i32 0, i64 %788
  store i8 %785, i8* %789, align 1
  br label %790

; <label>:790                                     ; preds = %781
  %791 = load i32, i32* %y13, align 4
  %792 = sdiv i32 %791, 10
  store i32 %792, i32* %y13, align 4
  %793 = icmp sgt i32 %792, 0
  br i1 %793, label %781, label %794

; <label>:794                                     ; preds = %790
  br label %795

; <label>:795                                     ; preds = %805, %794
  %796 = load i32, i32* %i12, align 4
  %797 = add nsw i32 %796, -1
  store i32 %797, i32* %i12, align 4
  %798 = load i32, i32* %i12, align 4
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds [20 x i8], [20 x i8]* %buff11, i32 0, i64 %799
  %801 = load i8, i8* %800, align 1
  %802 = sext i8 %801 to i32
  %803 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %804 = call i32 @_IO_putc(i32 %802, %struct._IO_FILE* %803)
  br label %805

; <label>:805                                     ; preds = %795
  %806 = load i32, i32* %i12, align 4
  %807 = icmp ne i32 %806, 0
  br i1 %807, label %795, label %808

; <label>:808                                     ; preds = %805
  %809 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %810 = call i32 @_IO_putc(i32 40, %struct._IO_FILE* %809)
  %811 = load %union.rec*, %union.rec** %1, align 8
  %812 = bitcast %union.rec* %811 to %struct.word_type*
  %813 = getelementptr inbounds %struct.word_type, %struct.word_type* %812, i32 0, i32 2
  %814 = bitcast %union.SECOND_UNION* %813 to %struct.anon.1*
  %815 = bitcast %struct.anon.1* %814 to i32*
  %816 = load i32, i32* %815, align 4
  %817 = lshr i32 %816, 22
  %818 = and i32 %817, 1
  %819 = icmp ne i32 %818, 0
  %820 = select i1 %819, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.181, i32 0, i32 0)
  store i8* %820, i8** %command, align 8
  br label %829

; <label>:821                                     ; preds = %687
  %822 = load i8*, i8** %p, align 8
  %823 = load i8, i8* %822, align 1
  %824 = zext i8 %823 to i64
  %825 = getelementptr inbounds [0 x i8*], [0 x i8*]* @EightBitToPrintForm, i32 0, i64 %824
  %826 = load i8*, i8** %825, align 8
  %827 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %828 = call i32 @fputs(i8* %826, %struct._IO_FILE* %827)
  br label %829

; <label>:829                                     ; preds = %821, %808
  br label %830

; <label>:830                                     ; preds = %829
  %831 = load i8*, i8** %p, align 8
  %832 = getelementptr inbounds i8, i8* %831, i32 1
  store i8* %832, i8** %p, align 8
  br label %553

; <label>:833                                     ; preds = %553
  %834 = load i32, i32* @wordcount, align 4
  %835 = add nsw i32 %834, 1
  store i32 %835, i32* @wordcount, align 4
  %836 = icmp sge i32 %835, 5
  br i1 %836, label %837, label %841

; <label>:837                                     ; preds = %833
  %838 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %839 = load i8*, i8** %command, align 8
  %840 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %838, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.185, i32 0, i32 0), i8* %839)
  store i32 0, i32* @wordcount, align 4
  br label %845

; <label>:841                                     ; preds = %833
  %842 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %843 = load i8*, i8** %command, align 8
  %844 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %842, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.179, i32 0, i32 0), i8* %843)
  br label %845

; <label>:845                                     ; preds = %841, %837
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintPlainGraphic(%union.rec* %x, i32 %xmk, i32 %ymk, %union.rec* %z) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  store i32 %xmk, i32* %2, align 4
  store i32 %ymk, i32* %3, align 4
  store %union.rec* %z, %union.rec** %4, align 8
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i32 0, %struct.FILE_POS* %5, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.189, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintUnderline(i32 %fnum, i32 %col, i32 %xstart, i32 %xstop, i32 %ymk) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %fnum, i32* %1, align 4
  store i32 %col, i32* %2, align 4
  store i32 %xstart, i32* %3, align 4
  store i32 %xstop, i32* %4, align 4
  store i32 %ymk, i32* %5, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @currentcolour, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %29

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* @currentcolour, align 4
  %11 = load i32, i32* @currentcolour, align 4
  %12 = icmp ugt i32 %11, 0
  br i1 %12, label %13, label %28

; <label>:13                                      ; preds = %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %15 = load i32, i32* @currentcolour, align 4
  %16 = call i8* @ColourCommand(i32 %15)
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.174, i32 0, i32 0), i8* %16)
  %18 = load i32, i32* @wordcount, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @wordcount, align 4
  %20 = icmp sge i32 %19, 5
  br i1 %20, label %21, label %24

; <label>:21                                      ; preds = %13
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %23 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %22)
  store i32 0, i32* @wordcount, align 4
  br label %27

; <label>:24                                      ; preds = %13
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %26 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %25)
  br label %27

; <label>:27                                      ; preds = %24, %21
  br label %28

; <label>:28                                      ; preds = %27, %9
  br label %29

; <label>:29                                      ; preds = %28, %0
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %1, align 4
  %35 = zext i32 %34 to i64
  %36 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %37 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %36, i64 %35
  %38 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %37, i32 0, i32 7
  %39 = load i16, i16* %38, align 2
  %40 = sext i16 %39 to i32
  %41 = sub nsw i32 %33, %40
  %42 = load i32, i32* %1, align 4
  %43 = zext i32 %42 to i64
  %44 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %45 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %44, i64 %43
  %46 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %45, i32 0, i32 8
  %47 = load i16, i16* %46, align 2
  %48 = sext i16 %47 to i32
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.190, i32 0, i32 0), i32 %31, i32 %32, i32 %41, i32 %48)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_CoordRotate(i32 %amount) #0 {
  %1 = alloca i32, align 4
  store i32 %amount, i32* %1, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %3 = load i32, i32* %1, align 4
  %4 = sitofp i32 %3 to float
  %5 = fdiv float %4, 1.280000e+02
  %6 = fpext float %5 to double
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.191, i32 0, i32 0), double %6)
  store i32 0, i32* @cpexists, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_LinkSource(%union.rec* %name, i32 %llx, i32 %lly, i32 %urx, i32 %ury) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %union.rec* %name, %union.rec** %1, align 8
  store i32 %llx, i32* %2, align 4
  store i32 %lly, i32* %3, align 4
  store i32 %urx, i32* %4, align 4
  store i32 %ury, i32* %5, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %union.rec*, %union.rec** %1, align 8
  %12 = call i8* @ConvertToPDFName(%union.rec* %11)
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.192, i32 0, i32 0), i32 %7, i32 %8, i32 %9, i32 %10, i8* %12)
  %14 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %15 = zext i8 %14 to i32
  store i32 %15, i32* @zz_size, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp uge i64 %16, 265
  br i1 %17, label %18, label %21

; <label>:18                                      ; preds = %0
  %19 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %20 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %19)
  br label %46

; <label>:21                                      ; preds = %0
  %22 = load i32, i32* @zz_size, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %23
  %25 = load %union.rec*, %union.rec** %24, align 8
  %26 = icmp eq %union.rec* %25, null
  br i1 %26, label %27, label %31

; <label>:27                                      ; preds = %21
  %28 = load i32, i32* @zz_size, align 4
  %29 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %30 = call %union.rec* @GetMemory(i32 %28, %struct.FILE_POS* %29)
  store %union.rec* %30, %union.rec** @zz_hold, align 8
  br label %45

; <label>:31                                      ; preds = %21
  %32 = load i32, i32* @zz_size, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %33
  %35 = load %union.rec*, %union.rec** %34, align 8
  store %union.rec* %35, %union.rec** @zz_hold, align 8
  store %union.rec* %35, %union.rec** @zz_hold, align 8
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 0
  %39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %38, i32 0, i64 0
  %40 = getelementptr inbounds %struct.LIST, %struct.LIST* %39, i32 0, i32 0
  %41 = load %union.rec*, %union.rec** %40, align 8
  %42 = load i32, i32* @zz_size, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %43
  store %union.rec* %41, %union.rec** %44, align 8
  br label %45

; <label>:45                                      ; preds = %31, %27
  br label %46

; <label>:46                                      ; preds = %45, %18
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %48 = bitcast %union.rec* %47 to %struct.word_type*
  %49 = getelementptr inbounds %struct.word_type, %struct.word_type* %48, i32 0, i32 1
  %50 = bitcast %union.FIRST_UNION* %49 to %struct.anon*
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %50, i32 0, i32 0
  store i8 0, i8* %51, align 1
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %54 = bitcast %union.rec* %53 to %struct.word_type*
  %55 = getelementptr inbounds %struct.word_type, %struct.word_type* %54, i32 0, i32 0
  %56 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %55, i32 0, i64 1
  %57 = getelementptr inbounds %struct.LIST, %struct.LIST* %56, i32 0, i32 1
  store %union.rec* %52, %union.rec** %57, align 8
  %58 = load %union.rec*, %union.rec** @zz_hold, align 8
  %59 = bitcast %union.rec* %58 to %struct.word_type*
  %60 = getelementptr inbounds %struct.word_type, %struct.word_type* %59, i32 0, i32 0
  %61 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %60, i32 0, i64 1
  %62 = getelementptr inbounds %struct.LIST, %struct.LIST* %61, i32 0, i32 0
  store %union.rec* %52, %union.rec** %62, align 8
  %63 = load %union.rec*, %union.rec** @zz_hold, align 8
  %64 = bitcast %union.rec* %63 to %struct.word_type*
  %65 = getelementptr inbounds %struct.word_type, %struct.word_type* %64, i32 0, i32 0
  %66 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %65, i32 0, i64 0
  %67 = getelementptr inbounds %struct.LIST, %struct.LIST* %66, i32 0, i32 1
  store %union.rec* %52, %union.rec** %67, align 8
  %68 = load %union.rec*, %union.rec** @zz_hold, align 8
  %69 = bitcast %union.rec* %68 to %struct.word_type*
  %70 = getelementptr inbounds %struct.word_type, %struct.word_type* %69, i32 0, i32 0
  %71 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %70, i32 0, i64 0
  %72 = getelementptr inbounds %struct.LIST, %struct.LIST* %71, i32 0, i32 0
  store %union.rec* %52, %union.rec** %72, align 8
  store %union.rec* %52, %union.rec** @xx_link, align 8
  %73 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %73, %union.rec** @zz_res, align 8
  %74 = load %union.rec*, %union.rec** @link_source_list, align 8
  store %union.rec* %74, %union.rec** @zz_hold, align 8
  %75 = load %union.rec*, %union.rec** @zz_hold, align 8
  %76 = icmp eq %union.rec* %75, null
  br i1 %76, label %77, label %79

; <label>:77                                      ; preds = %46
  %78 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %127

; <label>:79                                      ; preds = %46
  %80 = load %union.rec*, %union.rec** @zz_res, align 8
  %81 = icmp eq %union.rec* %80, null
  br i1 %81, label %82, label %84

; <label>:82                                      ; preds = %79
  %83 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %125

; <label>:84                                      ; preds = %79
  %85 = load %union.rec*, %union.rec** @zz_hold, align 8
  %86 = bitcast %union.rec* %85 to %struct.word_type*
  %87 = getelementptr inbounds %struct.word_type, %struct.word_type* %86, i32 0, i32 0
  %88 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %87, i32 0, i64 0
  %89 = getelementptr inbounds %struct.LIST, %struct.LIST* %88, i32 0, i32 0
  %90 = load %union.rec*, %union.rec** %89, align 8
  store %union.rec* %90, %union.rec** @zz_tmp, align 8
  %91 = load %union.rec*, %union.rec** @zz_res, align 8
  %92 = bitcast %union.rec* %91 to %struct.word_type*
  %93 = getelementptr inbounds %struct.word_type, %struct.word_type* %92, i32 0, i32 0
  %94 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %93, i32 0, i64 0
  %95 = getelementptr inbounds %struct.LIST, %struct.LIST* %94, i32 0, i32 0
  %96 = load %union.rec*, %union.rec** %95, align 8
  %97 = load %union.rec*, %union.rec** @zz_hold, align 8
  %98 = bitcast %union.rec* %97 to %struct.word_type*
  %99 = getelementptr inbounds %struct.word_type, %struct.word_type* %98, i32 0, i32 0
  %100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %99, i32 0, i64 0
  %101 = getelementptr inbounds %struct.LIST, %struct.LIST* %100, i32 0, i32 0
  store %union.rec* %96, %union.rec** %101, align 8
  %102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %103 = load %union.rec*, %union.rec** @zz_res, align 8
  %104 = bitcast %union.rec* %103 to %struct.word_type*
  %105 = getelementptr inbounds %struct.word_type, %struct.word_type* %104, i32 0, i32 0
  %106 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %105, i32 0, i64 0
  %107 = getelementptr inbounds %struct.LIST, %struct.LIST* %106, i32 0, i32 0
  %108 = load %union.rec*, %union.rec** %107, align 8
  %109 = bitcast %union.rec* %108 to %struct.word_type*
  %110 = getelementptr inbounds %struct.word_type, %struct.word_type* %109, i32 0, i32 0
  %111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %110, i32 0, i64 0
  %112 = getelementptr inbounds %struct.LIST, %struct.LIST* %111, i32 0, i32 1
  store %union.rec* %102, %union.rec** %112, align 8
  %113 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %114 = load %union.rec*, %union.rec** @zz_res, align 8
  %115 = bitcast %union.rec* %114 to %struct.word_type*
  %116 = getelementptr inbounds %struct.word_type, %struct.word_type* %115, i32 0, i32 0
  %117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %116, i32 0, i64 0
  %118 = getelementptr inbounds %struct.LIST, %struct.LIST* %117, i32 0, i32 0
  store %union.rec* %113, %union.rec** %118, align 8
  %119 = load %union.rec*, %union.rec** @zz_res, align 8
  %120 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %121 = bitcast %union.rec* %120 to %struct.word_type*
  %122 = getelementptr inbounds %struct.word_type, %struct.word_type* %121, i32 0, i32 0
  %123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %122, i32 0, i64 0
  %124 = getelementptr inbounds %struct.LIST, %struct.LIST* %123, i32 0, i32 1
  store %union.rec* %119, %union.rec** %124, align 8
  br label %125

; <label>:125                                     ; preds = %84, %82
  %126 = phi %union.rec* [ %83, %82 ], [ %119, %84 ]
  br label %127

; <label>:127                                     ; preds = %125, %77
  %128 = phi %union.rec* [ %78, %77 ], [ %126, %125 ]
  %129 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %129, %union.rec** @zz_res, align 8
  %130 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %130, %union.rec** @zz_hold, align 8
  %131 = load %union.rec*, %union.rec** @zz_hold, align 8
  %132 = icmp eq %union.rec* %131, null
  br i1 %132, label %133, label %135

; <label>:133                                     ; preds = %127
  %134 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %183

; <label>:135                                     ; preds = %127
  %136 = load %union.rec*, %union.rec** @zz_res, align 8
  %137 = icmp eq %union.rec* %136, null
  br i1 %137, label %138, label %140

; <label>:138                                     ; preds = %135
  %139 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %181

; <label>:140                                     ; preds = %135
  %141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %142 = bitcast %union.rec* %141 to %struct.word_type*
  %143 = getelementptr inbounds %struct.word_type, %struct.word_type* %142, i32 0, i32 0
  %144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %143, i32 0, i64 1
  %145 = getelementptr inbounds %struct.LIST, %struct.LIST* %144, i32 0, i32 0
  %146 = load %union.rec*, %union.rec** %145, align 8
  store %union.rec* %146, %union.rec** @zz_tmp, align 8
  %147 = load %union.rec*, %union.rec** @zz_res, align 8
  %148 = bitcast %union.rec* %147 to %struct.word_type*
  %149 = getelementptr inbounds %struct.word_type, %struct.word_type* %148, i32 0, i32 0
  %150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %149, i32 0, i64 1
  %151 = getelementptr inbounds %struct.LIST, %struct.LIST* %150, i32 0, i32 0
  %152 = load %union.rec*, %union.rec** %151, align 8
  %153 = load %union.rec*, %union.rec** @zz_hold, align 8
  %154 = bitcast %union.rec* %153 to %struct.word_type*
  %155 = getelementptr inbounds %struct.word_type, %struct.word_type* %154, i32 0, i32 0
  %156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %155, i32 0, i64 1
  %157 = getelementptr inbounds %struct.LIST, %struct.LIST* %156, i32 0, i32 0
  store %union.rec* %152, %union.rec** %157, align 8
  %158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %159 = load %union.rec*, %union.rec** @zz_res, align 8
  %160 = bitcast %union.rec* %159 to %struct.word_type*
  %161 = getelementptr inbounds %struct.word_type, %struct.word_type* %160, i32 0, i32 0
  %162 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %161, i32 0, i64 1
  %163 = getelementptr inbounds %struct.LIST, %struct.LIST* %162, i32 0, i32 0
  %164 = load %union.rec*, %union.rec** %163, align 8
  %165 = bitcast %union.rec* %164 to %struct.word_type*
  %166 = getelementptr inbounds %struct.word_type, %struct.word_type* %165, i32 0, i32 0
  %167 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %166, i32 0, i64 1
  %168 = getelementptr inbounds %struct.LIST, %struct.LIST* %167, i32 0, i32 1
  store %union.rec* %158, %union.rec** %168, align 8
  %169 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %170 = load %union.rec*, %union.rec** @zz_res, align 8
  %171 = bitcast %union.rec* %170 to %struct.word_type*
  %172 = getelementptr inbounds %struct.word_type, %struct.word_type* %171, i32 0, i32 0
  %173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %172, i32 0, i64 1
  %174 = getelementptr inbounds %struct.LIST, %struct.LIST* %173, i32 0, i32 0
  store %union.rec* %169, %union.rec** %174, align 8
  %175 = load %union.rec*, %union.rec** @zz_res, align 8
  %176 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %177 = bitcast %union.rec* %176 to %struct.word_type*
  %178 = getelementptr inbounds %struct.word_type, %struct.word_type* %177, i32 0, i32 0
  %179 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %178, i32 0, i64 1
  %180 = getelementptr inbounds %struct.LIST, %struct.LIST* %179, i32 0, i32 1
  store %union.rec* %175, %union.rec** %180, align 8
  br label %181

; <label>:181                                     ; preds = %140, %138
  %182 = phi %union.rec* [ %139, %138 ], [ %175, %140 ]
  br label %183

; <label>:183                                     ; preds = %181, %133
  %184 = phi %union.rec* [ %134, %133 ], [ %182, %181 ]
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_LinkDest(%union.rec* %name, i32 %llx, i32 %lly, i32 %urx, i32 %ury) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %prev = alloca %union.rec*, align 8
  store %union.rec* %name, %union.rec** %1, align 8
  store i32 %llx, i32* %2, align 4
  store i32 %lly, i32* %3, align 4
  store i32 %urx, i32* %4, align 4
  store i32 %ury, i32* %5, align 4
  %6 = load %union.rec*, %union.rec** %1, align 8
  %7 = bitcast %union.rec* %6 to %struct.word_type*
  %8 = getelementptr inbounds %struct.word_type, %struct.word_type* %7, i32 0, i32 4
  %9 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i32 0, i32 0
  %10 = load %struct.anon.14*, %struct.anon.14** @link_dest_tab, align 8
  %11 = call %union.rec* @ltab_retrieve(i8* %9, %struct.anon.14* %10)
  store %union.rec* %11, %union.rec** %prev, align 8
  %12 = load %union.rec*, %union.rec** %prev, align 8
  %13 = icmp eq %union.rec* %12, null
  br i1 %13, label %14, label %20

; <label>:14                                      ; preds = %0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %16 = load %union.rec*, %union.rec** %1, align 8
  %17 = call i8* @ConvertToPDFName(%union.rec* %16)
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.193, i32 0, i32 0), i8* %17)
  %19 = load %union.rec*, %union.rec** %1, align 8
  call void @ltab_insert(%union.rec* %19, %struct.anon.14** @link_dest_tab)
  br label %35

; <label>:20                                      ; preds = %0
  %21 = load %union.rec*, %union.rec** %1, align 8
  %22 = bitcast %union.rec* %21 to %struct.word_type*
  %23 = getelementptr inbounds %struct.word_type, %struct.word_type* %22, i32 0, i32 1
  %24 = bitcast %union.FIRST_UNION* %23 to %struct.FILE_POS*
  %25 = load %union.rec*, %union.rec** %1, align 8
  %26 = bitcast %union.rec* %25 to %struct.word_type*
  %27 = getelementptr inbounds %struct.word_type, %struct.word_type* %26, i32 0, i32 4
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %27, i32 0, i32 0
  %29 = load %union.rec*, %union.rec** %prev, align 8
  %30 = bitcast %union.rec* %29 to %struct.word_type*
  %31 = getelementptr inbounds %struct.word_type, %struct.word_type* %30, i32 0, i32 1
  %32 = bitcast %union.FIRST_UNION* %31 to %struct.FILE_POS*
  %33 = call i8* @EchoFilePos(%struct.FILE_POS* %32)
  %34 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 49, i32 13, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.194, i32 0, i32 0), i32 2, %struct.FILE_POS* %24, i8* %28, i8* %33)
  br label %35

; <label>:35                                      ; preds = %20, %14
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.anon.14* @ltab_new(i32 %newsize) #0 {
  %1 = alloca i32, align 4
  %S = alloca %struct.anon.14*, align 8
  %i = alloca i32, align 4
  store i32 %newsize, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = sext i32 %2 to i64
  %4 = mul i64 %3, 8
  %5 = add i64 8, %4
  %6 = call noalias i8* @malloc(i64 %5) #4
  %7 = bitcast i8* %6 to %struct.anon.14*
  store %struct.anon.14* %7, %struct.anon.14** %S, align 8
  %8 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %9 = icmp eq %struct.anon.14* %8, null
  br i1 %9, label %10, label %13

; <label>:10                                      ; preds = %0
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %12 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 43, i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.38, i32 0, i32 0), i32 1, %struct.FILE_POS* %11)
  br label %13

; <label>:13                                      ; preds = %10, %0
  %14 = load i32, i32* %1, align 4
  %15 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %16 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %18 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  store i32 0, i32* %i, align 4
  br label %19

; <label>:19                                      ; preds = %29, %13
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %1, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %32

; <label>:23                                      ; preds = %19
  %24 = load i32, i32* %i, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %27 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %26, i32 0, i32 2
  %28 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %27, i32 0, i64 %25
  store %union.rec* null, %union.rec** %28, align 8
  br label %29

; <label>:29                                      ; preds = %23
  %30 = load i32, i32* %i, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %i, align 4
  br label %19

; <label>:32                                      ; preds = %19
  %33 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  ret %struct.anon.14* %33
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare void @MapEnsurePrinted(i32, i32) #1

declare i8* @MapEncodingName(i32) #1

declare i8* @TimeString() #1

; Function Attrs: nounwind uwtable
define internal i8* @MediaName(i32 %h, i32 %v) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %p = alloca %struct.paper*, align 8
  store i32 %h, i32* %2, align 4
  store i32 %v, i32* %3, align 4
  store %struct.paper* getelementptr inbounds ([15 x %struct.paper], [15 x %struct.paper]* @MediaName.paper_map, i32 0, i32 0), %struct.paper** %p, align 8
  br label %4

; <label>:4                                       ; preds = %26, %0
  %5 = load %struct.paper*, %struct.paper** %p, align 8
  %6 = getelementptr inbounds %struct.paper, %struct.paper* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %29

; <label>:9                                       ; preds = %4
  %10 = load i32, i32* %2, align 4
  %11 = load %struct.paper*, %struct.paper** %p, align 8
  %12 = getelementptr inbounds %struct.paper, %struct.paper* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %25

; <label>:15                                      ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.paper*, %struct.paper** %p, align 8
  %18 = getelementptr inbounds %struct.paper, %struct.paper* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %25

; <label>:21                                      ; preds = %15
  %22 = load %struct.paper*, %struct.paper** %p, align 8
  %23 = getelementptr inbounds %struct.paper, %struct.paper* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %1
  br label %31

; <label>:25                                      ; preds = %15, %9
  br label %26

; <label>:26                                      ; preds = %25
  %27 = load %struct.paper*, %struct.paper** %p, align 8
  %28 = getelementptr inbounds %struct.paper, %struct.paper* %27, i32 1
  store %struct.paper* %28, %struct.paper** %p, align 8
  br label %4

; <label>:29                                      ; preds = %4
  %30 = load i8*, i8** @MediaName.user_defined, align 8
  store i8* %30, i8** %1
  br label %31

; <label>:31                                      ; preds = %29, %21
  %32 = load i8*, i8** %1
  ret i8* %32
}

declare zeroext i16 @FirstFile(i32) #1

declare %struct._IO_FILE* @OpenFile(i16 zeroext, i32, i32) #1

declare %struct.FILE_POS* @PosOfFile(i16 zeroext) #1

declare i8* @FileName(i16 zeroext) #1

declare zeroext i16 @NextFile(i16 zeroext) #1

declare void @MapPrintEncodings(...) #1

declare void @FontPrintPageResources(%struct._IO_FILE*) #1

declare void @FontPrintPageSetup(%struct._IO_FILE*) #1

declare void @FontAdvanceCurrentPage() #1

declare i32 @FontNeeded(%struct._IO_FILE*) #1

declare void @MapPrintPSResources(%struct._IO_FILE*) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @PrintComposite(%struct.composite_rec* %cp, i32 %outline, %struct._IO_FILE* %fp) #0 {
  %1 = alloca %struct.composite_rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct.composite_rec* %cp, %struct.composite_rec** %1, align 8
  store i32 %outline, i32* %2, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %3, align 8
  br label %4

; <label>:4                                       ; preds = %10, %0
  %5 = load %struct.composite_rec*, %struct.composite_rec** %1, align 8
  %6 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %5, i32 0, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %30

; <label>:10                                      ; preds = %4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %12 = load %struct.composite_rec*, %struct.composite_rec** %1, align 8
  %13 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %12, i32 0, i32 1
  %14 = load i16, i16* %13, align 2
  %15 = sext i16 %14 to i32
  %16 = load %struct.composite_rec*, %struct.composite_rec** %1, align 8
  %17 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %16, i32 0, i32 2
  %18 = load i16, i16* %17, align 2
  %19 = sext i16 %18 to i32
  %20 = load %struct.composite_rec*, %struct.composite_rec** %1, align 8
  %21 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = load i32, i32* %2, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i32 0, i32 0)
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.186, i32 0, i32 0), i32 %15, i32 %19, i32 %23, i8* %26)
  %28 = load %struct.composite_rec*, %struct.composite_rec** %1, align 8
  %29 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %28, i32 1
  store %struct.composite_rec* %29, %struct.composite_rec** %1, align 8
  br label %4

; <label>:30                                      ; preds = %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal %union.rec* @ltab_retrieve(i8* %str, %struct.anon.14* %S) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.anon.14*, align 8
  %x = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %pos = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %str, i8** %2, align 8
  store %struct.anon.14* %S, %struct.anon.14** %3, align 8
  %4 = load i8*, i8** %2, align 8
  store i8* %4, i8** %p, align 8
  %5 = load i8*, i8** %p, align 8
  %6 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %6, i8** %p, align 8
  %7 = load i8, i8* %5, align 1
  %8 = zext i8 %7 to i32
  store i32 %8, i32* %pos, align 4
  br label %9

; <label>:9                                       ; preds = %13, %0
  %10 = load i8*, i8** %p, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %20

; <label>:13                                      ; preds = %9
  %14 = load i8*, i8** %p, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %p, align 8
  %16 = load i8, i8* %14, align 1
  %17 = zext i8 %16 to i32
  %18 = load i32, i32* %pos, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %pos, align 4
  br label %9

; <label>:20                                      ; preds = %9
  %21 = load i32, i32* %pos, align 4
  %22 = load %struct.anon.14*, %struct.anon.14** %3, align 8
  %23 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = srem i32 %21, %24
  store i32 %25, i32* %pos, align 4
  %26 = load i32, i32* %pos, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.anon.14*, %struct.anon.14** %3, align 8
  %29 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %28, i32 0, i32 2
  %30 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %29, i32 0, i64 %27
  %31 = load %union.rec*, %union.rec** %30, align 8
  store %union.rec* %31, %union.rec** %x, align 8
  %32 = load %union.rec*, %union.rec** %x, align 8
  %33 = icmp eq %union.rec* %32, null
  br i1 %33, label %34, label %35

; <label>:34                                      ; preds = %20
  store %union.rec* null, %union.rec** %1
  br label %89

; <label>:35                                      ; preds = %20
  %36 = load %union.rec*, %union.rec** %x, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 0
  %39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %38, i32 0, i64 0
  %40 = getelementptr inbounds %struct.LIST, %struct.LIST* %39, i32 0, i32 1
  %41 = load %union.rec*, %union.rec** %40, align 8
  store %union.rec* %41, %union.rec** %link, align 8
  br label %42

; <label>:42                                      ; preds = %81, %35
  %43 = load %union.rec*, %union.rec** %link, align 8
  %44 = load %union.rec*, %union.rec** %x, align 8
  %45 = icmp ne %union.rec* %43, %44
  br i1 %45, label %46, label %88

; <label>:46                                      ; preds = %42
  %47 = load %union.rec*, %union.rec** %link, align 8
  %48 = bitcast %union.rec* %47 to %struct.word_type*
  %49 = getelementptr inbounds %struct.word_type, %struct.word_type* %48, i32 0, i32 0
  %50 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %49, i32 0, i64 1
  %51 = getelementptr inbounds %struct.LIST, %struct.LIST* %50, i32 0, i32 0
  %52 = load %union.rec*, %union.rec** %51, align 8
  store %union.rec* %52, %union.rec** %y, align 8
  br label %53

; <label>:53                                      ; preds = %63, %46
  %54 = load %union.rec*, %union.rec** %y, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 1
  %57 = bitcast %union.FIRST_UNION* %56 to %struct.anon*
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 0
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70

; <label>:62                                      ; preds = %53
  br label %63

; <label>:63                                      ; preds = %62
  %64 = load %union.rec*, %union.rec** %y, align 8
  %65 = bitcast %union.rec* %64 to %struct.word_type*
  %66 = getelementptr inbounds %struct.word_type, %struct.word_type* %65, i32 0, i32 0
  %67 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %66, i32 0, i64 1
  %68 = getelementptr inbounds %struct.LIST, %struct.LIST* %67, i32 0, i32 0
  %69 = load %union.rec*, %union.rec** %68, align 8
  store %union.rec* %69, %union.rec** %y, align 8
  br label %53

; <label>:70                                      ; preds = %53
  %71 = load i8*, i8** %2, align 8
  %72 = load %union.rec*, %union.rec** %y, align 8
  %73 = bitcast %union.rec* %72 to %struct.word_type*
  %74 = getelementptr inbounds %struct.word_type, %struct.word_type* %73, i32 0, i32 4
  %75 = getelementptr inbounds [4 x i8], [4 x i8]* %74, i32 0, i32 0
  %76 = call i32 @strcmp(i8* %71, i8* %75) #5
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

; <label>:78                                      ; preds = %70
  %79 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %79, %union.rec** %1
  br label %89

; <label>:80                                      ; preds = %70
  br label %81

; <label>:81                                      ; preds = %80
  %82 = load %union.rec*, %union.rec** %link, align 8
  %83 = bitcast %union.rec* %82 to %struct.word_type*
  %84 = getelementptr inbounds %struct.word_type, %struct.word_type* %83, i32 0, i32 0
  %85 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %84, i32 0, i64 0
  %86 = getelementptr inbounds %struct.LIST, %struct.LIST* %85, i32 0, i32 1
  %87 = load %union.rec*, %union.rec** %86, align 8
  store %union.rec* %87, %union.rec** %link, align 8
  br label %42

; <label>:88                                      ; preds = %42
  store %union.rec* null, %union.rec** %1
  br label %89

; <label>:89                                      ; preds = %88, %78, %34
  %90 = load %union.rec*, %union.rec** %1
  ret %union.rec* %90
}

; Function Attrs: nounwind uwtable
define internal void @ltab_insert(%union.rec* %x, %struct.anon.14** %S) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %struct.anon.14**, align 8
  %pos = alloca i32, align 4
  %z = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %p = alloca i8*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  store %struct.anon.14** %S, %struct.anon.14*** %2, align 8
  %3 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  %4 = load %struct.anon.14*, %struct.anon.14** %3, align 8
  %5 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  %8 = load %struct.anon.14*, %struct.anon.14** %7, align 8
  %9 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %10, 1
  %12 = icmp eq i32 %6, %11
  br i1 %12, label %13, label %23

; <label>:13                                      ; preds = %0
  %14 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  %15 = load %struct.anon.14*, %struct.anon.14** %14, align 8
  %16 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  %17 = load %struct.anon.14*, %struct.anon.14** %16, align 8
  %18 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 2, %19
  %21 = call %struct.anon.14* @ltab_rehash(%struct.anon.14* %15, i32 %20)
  %22 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  store %struct.anon.14* %21, %struct.anon.14** %22, align 8
  br label %23

; <label>:23                                      ; preds = %13, %0
  %24 = load %union.rec*, %union.rec** %1, align 8
  %25 = bitcast %union.rec* %24 to %struct.word_type*
  %26 = getelementptr inbounds %struct.word_type, %struct.word_type* %25, i32 0, i32 4
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i32 0, i32 0
  store i8* %27, i8** %p, align 8
  %28 = load i8*, i8** %p, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %p, align 8
  %30 = load i8, i8* %28, align 1
  %31 = zext i8 %30 to i32
  store i32 %31, i32* %pos, align 4
  br label %32

; <label>:32                                      ; preds = %36, %23
  %33 = load i8*, i8** %p, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %43

; <label>:36                                      ; preds = %32
  %37 = load i8*, i8** %p, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %p, align 8
  %39 = load i8, i8* %37, align 1
  %40 = zext i8 %39 to i32
  %41 = load i32, i32* %pos, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %pos, align 4
  br label %32

; <label>:43                                      ; preds = %32
  %44 = load i32, i32* %pos, align 4
  %45 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  %46 = load %struct.anon.14*, %struct.anon.14** %45, align 8
  %47 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = srem i32 %44, %48
  store i32 %49, i32* %pos, align 4
  %50 = load i32, i32* %pos, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  %53 = load %struct.anon.14*, %struct.anon.14** %52, align 8
  %54 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %53, i32 0, i32 2
  %55 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %54, i32 0, i64 %51
  %56 = load %union.rec*, %union.rec** %55, align 8
  %57 = icmp eq %union.rec* %56, null
  br i1 %57, label %58, label %124

; <label>:58                                      ; preds = %43
  %59 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %60 = zext i8 %59 to i32
  store i32 %60, i32* @zz_size, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp uge i64 %61, 265
  br i1 %62, label %63, label %66

; <label>:63                                      ; preds = %58
  %64 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %65 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %64)
  br label %91

; <label>:66                                      ; preds = %58
  %67 = load i32, i32* @zz_size, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %68
  %70 = load %union.rec*, %union.rec** %69, align 8
  %71 = icmp eq %union.rec* %70, null
  br i1 %71, label %72, label %76

; <label>:72                                      ; preds = %66
  %73 = load i32, i32* @zz_size, align 4
  %74 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %75 = call %union.rec* @GetMemory(i32 %73, %struct.FILE_POS* %74)
  store %union.rec* %75, %union.rec** @zz_hold, align 8
  br label %90

; <label>:76                                      ; preds = %66
  %77 = load i32, i32* @zz_size, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %78
  %80 = load %union.rec*, %union.rec** %79, align 8
  store %union.rec* %80, %union.rec** @zz_hold, align 8
  store %union.rec* %80, %union.rec** @zz_hold, align 8
  %81 = load %union.rec*, %union.rec** @zz_hold, align 8
  %82 = bitcast %union.rec* %81 to %struct.word_type*
  %83 = getelementptr inbounds %struct.word_type, %struct.word_type* %82, i32 0, i32 0
  %84 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %83, i32 0, i64 0
  %85 = getelementptr inbounds %struct.LIST, %struct.LIST* %84, i32 0, i32 0
  %86 = load %union.rec*, %union.rec** %85, align 8
  %87 = load i32, i32* @zz_size, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %88
  store %union.rec* %86, %union.rec** %89, align 8
  br label %90

; <label>:90                                      ; preds = %76, %72
  br label %91

; <label>:91                                      ; preds = %90, %63
  %92 = load %union.rec*, %union.rec** @zz_hold, align 8
  %93 = bitcast %union.rec* %92 to %struct.word_type*
  %94 = getelementptr inbounds %struct.word_type, %struct.word_type* %93, i32 0, i32 1
  %95 = bitcast %union.FIRST_UNION* %94 to %struct.anon*
  %96 = getelementptr inbounds %struct.anon, %struct.anon* %95, i32 0, i32 0
  store i8 17, i8* %96, align 1
  %97 = load %union.rec*, %union.rec** @zz_hold, align 8
  %98 = load %union.rec*, %union.rec** @zz_hold, align 8
  %99 = bitcast %union.rec* %98 to %struct.word_type*
  %100 = getelementptr inbounds %struct.word_type, %struct.word_type* %99, i32 0, i32 0
  %101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %100, i32 0, i64 1
  %102 = getelementptr inbounds %struct.LIST, %struct.LIST* %101, i32 0, i32 1
  store %union.rec* %97, %union.rec** %102, align 8
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %104 = bitcast %union.rec* %103 to %struct.word_type*
  %105 = getelementptr inbounds %struct.word_type, %struct.word_type* %104, i32 0, i32 0
  %106 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %105, i32 0, i64 1
  %107 = getelementptr inbounds %struct.LIST, %struct.LIST* %106, i32 0, i32 0
  store %union.rec* %97, %union.rec** %107, align 8
  %108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %109 = bitcast %union.rec* %108 to %struct.word_type*
  %110 = getelementptr inbounds %struct.word_type, %struct.word_type* %109, i32 0, i32 0
  %111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %110, i32 0, i64 0
  %112 = getelementptr inbounds %struct.LIST, %struct.LIST* %111, i32 0, i32 1
  store %union.rec* %97, %union.rec** %112, align 8
  %113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %114 = bitcast %union.rec* %113 to %struct.word_type*
  %115 = getelementptr inbounds %struct.word_type, %struct.word_type* %114, i32 0, i32 0
  %116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %115, i32 0, i64 0
  %117 = getelementptr inbounds %struct.LIST, %struct.LIST* %116, i32 0, i32 0
  store %union.rec* %97, %union.rec** %117, align 8
  %118 = load i32, i32* %pos, align 4
  %119 = sext i32 %118 to i64
  %120 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  %121 = load %struct.anon.14*, %struct.anon.14** %120, align 8
  %122 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %121, i32 0, i32 2
  %123 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %122, i32 0, i64 %119
  store %union.rec* %97, %union.rec** %123, align 8
  br label %124

; <label>:124                                     ; preds = %91, %43
  %125 = load i32, i32* %pos, align 4
  %126 = sext i32 %125 to i64
  %127 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  %128 = load %struct.anon.14*, %struct.anon.14** %127, align 8
  %129 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %128, i32 0, i32 2
  %130 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %129, i32 0, i64 %126
  %131 = load %union.rec*, %union.rec** %130, align 8
  store %union.rec* %131, %union.rec** %z, align 8
  %132 = load %union.rec*, %union.rec** %z, align 8
  %133 = bitcast %union.rec* %132 to %struct.word_type*
  %134 = getelementptr inbounds %struct.word_type, %struct.word_type* %133, i32 0, i32 0
  %135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %134, i32 0, i64 0
  %136 = getelementptr inbounds %struct.LIST, %struct.LIST* %135, i32 0, i32 1
  %137 = load %union.rec*, %union.rec** %136, align 8
  store %union.rec* %137, %union.rec** %link, align 8
  br label %138

; <label>:138                                     ; preds = %193, %124
  %139 = load %union.rec*, %union.rec** %link, align 8
  %140 = load %union.rec*, %union.rec** %z, align 8
  %141 = icmp ne %union.rec* %139, %140
  br i1 %141, label %142, label %200

; <label>:142                                     ; preds = %138
  %143 = load %union.rec*, %union.rec** %link, align 8
  %144 = bitcast %union.rec* %143 to %struct.word_type*
  %145 = getelementptr inbounds %struct.word_type, %struct.word_type* %144, i32 0, i32 0
  %146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %145, i32 0, i64 1
  %147 = getelementptr inbounds %struct.LIST, %struct.LIST* %146, i32 0, i32 0
  %148 = load %union.rec*, %union.rec** %147, align 8
  store %union.rec* %148, %union.rec** %y, align 8
  br label %149

; <label>:149                                     ; preds = %159, %142
  %150 = load %union.rec*, %union.rec** %y, align 8
  %151 = bitcast %union.rec* %150 to %struct.word_type*
  %152 = getelementptr inbounds %struct.word_type, %struct.word_type* %151, i32 0, i32 1
  %153 = bitcast %union.FIRST_UNION* %152 to %struct.anon*
  %154 = getelementptr inbounds %struct.anon, %struct.anon* %153, i32 0, i32 0
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %166

; <label>:158                                     ; preds = %149
  br label %159

; <label>:159                                     ; preds = %158
  %160 = load %union.rec*, %union.rec** %y, align 8
  %161 = bitcast %union.rec* %160 to %struct.word_type*
  %162 = getelementptr inbounds %struct.word_type, %struct.word_type* %161, i32 0, i32 0
  %163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %162, i32 0, i64 1
  %164 = getelementptr inbounds %struct.LIST, %struct.LIST* %163, i32 0, i32 0
  %165 = load %union.rec*, %union.rec** %164, align 8
  store %union.rec* %165, %union.rec** %y, align 8
  br label %149

; <label>:166                                     ; preds = %149
  %167 = load %union.rec*, %union.rec** %1, align 8
  %168 = bitcast %union.rec* %167 to %struct.word_type*
  %169 = getelementptr inbounds %struct.word_type, %struct.word_type* %168, i32 0, i32 4
  %170 = getelementptr inbounds [4 x i8], [4 x i8]* %169, i32 0, i32 0
  %171 = load %union.rec*, %union.rec** %y, align 8
  %172 = bitcast %union.rec* %171 to %struct.word_type*
  %173 = getelementptr inbounds %struct.word_type, %struct.word_type* %172, i32 0, i32 4
  %174 = getelementptr inbounds [4 x i8], [4 x i8]* %173, i32 0, i32 0
  %175 = call i32 @strcmp(i8* %170, i8* %174) #5
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %192

; <label>:177                                     ; preds = %166
  %178 = load %union.rec*, %union.rec** %1, align 8
  %179 = bitcast %union.rec* %178 to %struct.word_type*
  %180 = getelementptr inbounds %struct.word_type, %struct.word_type* %179, i32 0, i32 1
  %181 = bitcast %union.FIRST_UNION* %180 to %struct.FILE_POS*
  %182 = load %union.rec*, %union.rec** %1, align 8
  %183 = bitcast %union.rec* %182 to %struct.word_type*
  %184 = getelementptr inbounds %struct.word_type, %struct.word_type* %183, i32 0, i32 4
  %185 = getelementptr inbounds [4 x i8], [4 x i8]* %184, i32 0, i32 0
  %186 = load %union.rec*, %union.rec** %y, align 8
  %187 = bitcast %union.rec* %186 to %struct.word_type*
  %188 = getelementptr inbounds %struct.word_type, %struct.word_type* %187, i32 0, i32 1
  %189 = bitcast %union.FIRST_UNION* %188 to %struct.FILE_POS*
  %190 = call i8* @EchoFilePos(%struct.FILE_POS* %189)
  %191 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 43, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.195, i32 0, i32 0), i32 2, %struct.FILE_POS* %181, i8* %185, i8* %190)
  br label %192

; <label>:192                                     ; preds = %177, %166
  br label %193

; <label>:193                                     ; preds = %192
  %194 = load %union.rec*, %union.rec** %link, align 8
  %195 = bitcast %union.rec* %194 to %struct.word_type*
  %196 = getelementptr inbounds %struct.word_type, %struct.word_type* %195, i32 0, i32 0
  %197 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %196, i32 0, i64 0
  %198 = getelementptr inbounds %struct.LIST, %struct.LIST* %197, i32 0, i32 1
  %199 = load %union.rec*, %union.rec** %198, align 8
  store %union.rec* %199, %union.rec** %link, align 8
  br label %138

; <label>:200                                     ; preds = %138
  %201 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %202 = zext i8 %201 to i32
  store i32 %202, i32* @zz_size, align 4
  %203 = sext i32 %202 to i64
  %204 = icmp uge i64 %203, 265
  br i1 %204, label %205, label %208

; <label>:205                                     ; preds = %200
  %206 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %207 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %206)
  br label %233

; <label>:208                                     ; preds = %200
  %209 = load i32, i32* @zz_size, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %210
  %212 = load %union.rec*, %union.rec** %211, align 8
  %213 = icmp eq %union.rec* %212, null
  br i1 %213, label %214, label %218

; <label>:214                                     ; preds = %208
  %215 = load i32, i32* @zz_size, align 4
  %216 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %217 = call %union.rec* @GetMemory(i32 %215, %struct.FILE_POS* %216)
  store %union.rec* %217, %union.rec** @zz_hold, align 8
  br label %232

; <label>:218                                     ; preds = %208
  %219 = load i32, i32* @zz_size, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %220
  %222 = load %union.rec*, %union.rec** %221, align 8
  store %union.rec* %222, %union.rec** @zz_hold, align 8
  store %union.rec* %222, %union.rec** @zz_hold, align 8
  %223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %224 = bitcast %union.rec* %223 to %struct.word_type*
  %225 = getelementptr inbounds %struct.word_type, %struct.word_type* %224, i32 0, i32 0
  %226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %225, i32 0, i64 0
  %227 = getelementptr inbounds %struct.LIST, %struct.LIST* %226, i32 0, i32 0
  %228 = load %union.rec*, %union.rec** %227, align 8
  %229 = load i32, i32* @zz_size, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %230
  store %union.rec* %228, %union.rec** %231, align 8
  br label %232

; <label>:232                                     ; preds = %218, %214
  br label %233

; <label>:233                                     ; preds = %232, %205
  %234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %235 = bitcast %union.rec* %234 to %struct.word_type*
  %236 = getelementptr inbounds %struct.word_type, %struct.word_type* %235, i32 0, i32 1
  %237 = bitcast %union.FIRST_UNION* %236 to %struct.anon*
  %238 = getelementptr inbounds %struct.anon, %struct.anon* %237, i32 0, i32 0
  store i8 0, i8* %238, align 1
  %239 = load %union.rec*, %union.rec** @zz_hold, align 8
  %240 = load %union.rec*, %union.rec** @zz_hold, align 8
  %241 = bitcast %union.rec* %240 to %struct.word_type*
  %242 = getelementptr inbounds %struct.word_type, %struct.word_type* %241, i32 0, i32 0
  %243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %242, i32 0, i64 1
  %244 = getelementptr inbounds %struct.LIST, %struct.LIST* %243, i32 0, i32 1
  store %union.rec* %239, %union.rec** %244, align 8
  %245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %246 = bitcast %union.rec* %245 to %struct.word_type*
  %247 = getelementptr inbounds %struct.word_type, %struct.word_type* %246, i32 0, i32 0
  %248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %247, i32 0, i64 1
  %249 = getelementptr inbounds %struct.LIST, %struct.LIST* %248, i32 0, i32 0
  store %union.rec* %239, %union.rec** %249, align 8
  %250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %251 = bitcast %union.rec* %250 to %struct.word_type*
  %252 = getelementptr inbounds %struct.word_type, %struct.word_type* %251, i32 0, i32 0
  %253 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %252, i32 0, i64 0
  %254 = getelementptr inbounds %struct.LIST, %struct.LIST* %253, i32 0, i32 1
  store %union.rec* %239, %union.rec** %254, align 8
  %255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %256 = bitcast %union.rec* %255 to %struct.word_type*
  %257 = getelementptr inbounds %struct.word_type, %struct.word_type* %256, i32 0, i32 0
  %258 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %257, i32 0, i64 0
  %259 = getelementptr inbounds %struct.LIST, %struct.LIST* %258, i32 0, i32 0
  store %union.rec* %239, %union.rec** %259, align 8
  store %union.rec* %239, %union.rec** @xx_link, align 8
  %260 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %260, %union.rec** @zz_res, align 8
  %261 = load i32, i32* %pos, align 4
  %262 = sext i32 %261 to i64
  %263 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  %264 = load %struct.anon.14*, %struct.anon.14** %263, align 8
  %265 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %264, i32 0, i32 2
  %266 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %265, i32 0, i64 %262
  %267 = load %union.rec*, %union.rec** %266, align 8
  store %union.rec* %267, %union.rec** @zz_hold, align 8
  %268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %269 = icmp eq %union.rec* %268, null
  br i1 %269, label %270, label %272

; <label>:270                                     ; preds = %233
  %271 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %320

; <label>:272                                     ; preds = %233
  %273 = load %union.rec*, %union.rec** @zz_res, align 8
  %274 = icmp eq %union.rec* %273, null
  br i1 %274, label %275, label %277

; <label>:275                                     ; preds = %272
  %276 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %318

; <label>:277                                     ; preds = %272
  %278 = load %union.rec*, %union.rec** @zz_hold, align 8
  %279 = bitcast %union.rec* %278 to %struct.word_type*
  %280 = getelementptr inbounds %struct.word_type, %struct.word_type* %279, i32 0, i32 0
  %281 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %280, i32 0, i64 0
  %282 = getelementptr inbounds %struct.LIST, %struct.LIST* %281, i32 0, i32 0
  %283 = load %union.rec*, %union.rec** %282, align 8
  store %union.rec* %283, %union.rec** @zz_tmp, align 8
  %284 = load %union.rec*, %union.rec** @zz_res, align 8
  %285 = bitcast %union.rec* %284 to %struct.word_type*
  %286 = getelementptr inbounds %struct.word_type, %struct.word_type* %285, i32 0, i32 0
  %287 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %286, i32 0, i64 0
  %288 = getelementptr inbounds %struct.LIST, %struct.LIST* %287, i32 0, i32 0
  %289 = load %union.rec*, %union.rec** %288, align 8
  %290 = load %union.rec*, %union.rec** @zz_hold, align 8
  %291 = bitcast %union.rec* %290 to %struct.word_type*
  %292 = getelementptr inbounds %struct.word_type, %struct.word_type* %291, i32 0, i32 0
  %293 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %292, i32 0, i64 0
  %294 = getelementptr inbounds %struct.LIST, %struct.LIST* %293, i32 0, i32 0
  store %union.rec* %289, %union.rec** %294, align 8
  %295 = load %union.rec*, %union.rec** @zz_hold, align 8
  %296 = load %union.rec*, %union.rec** @zz_res, align 8
  %297 = bitcast %union.rec* %296 to %struct.word_type*
  %298 = getelementptr inbounds %struct.word_type, %struct.word_type* %297, i32 0, i32 0
  %299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %298, i32 0, i64 0
  %300 = getelementptr inbounds %struct.LIST, %struct.LIST* %299, i32 0, i32 0
  %301 = load %union.rec*, %union.rec** %300, align 8
  %302 = bitcast %union.rec* %301 to %struct.word_type*
  %303 = getelementptr inbounds %struct.word_type, %struct.word_type* %302, i32 0, i32 0
  %304 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %303, i32 0, i64 0
  %305 = getelementptr inbounds %struct.LIST, %struct.LIST* %304, i32 0, i32 1
  store %union.rec* %295, %union.rec** %305, align 8
  %306 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %307 = load %union.rec*, %union.rec** @zz_res, align 8
  %308 = bitcast %union.rec* %307 to %struct.word_type*
  %309 = getelementptr inbounds %struct.word_type, %struct.word_type* %308, i32 0, i32 0
  %310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %309, i32 0, i64 0
  %311 = getelementptr inbounds %struct.LIST, %struct.LIST* %310, i32 0, i32 0
  store %union.rec* %306, %union.rec** %311, align 8
  %312 = load %union.rec*, %union.rec** @zz_res, align 8
  %313 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %314 = bitcast %union.rec* %313 to %struct.word_type*
  %315 = getelementptr inbounds %struct.word_type, %struct.word_type* %314, i32 0, i32 0
  %316 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %315, i32 0, i64 0
  %317 = getelementptr inbounds %struct.LIST, %struct.LIST* %316, i32 0, i32 1
  store %union.rec* %312, %union.rec** %317, align 8
  br label %318

; <label>:318                                     ; preds = %277, %275
  %319 = phi %union.rec* [ %276, %275 ], [ %312, %277 ]
  br label %320

; <label>:320                                     ; preds = %318, %270
  %321 = phi %union.rec* [ %271, %270 ], [ %319, %318 ]
  %322 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %322, %union.rec** @zz_res, align 8
  %323 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %323, %union.rec** @zz_hold, align 8
  %324 = load %union.rec*, %union.rec** @zz_hold, align 8
  %325 = icmp eq %union.rec* %324, null
  br i1 %325, label %326, label %328

; <label>:326                                     ; preds = %320
  %327 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %376

; <label>:328                                     ; preds = %320
  %329 = load %union.rec*, %union.rec** @zz_res, align 8
  %330 = icmp eq %union.rec* %329, null
  br i1 %330, label %331, label %333

; <label>:331                                     ; preds = %328
  %332 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %374

; <label>:333                                     ; preds = %328
  %334 = load %union.rec*, %union.rec** @zz_hold, align 8
  %335 = bitcast %union.rec* %334 to %struct.word_type*
  %336 = getelementptr inbounds %struct.word_type, %struct.word_type* %335, i32 0, i32 0
  %337 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %336, i32 0, i64 1
  %338 = getelementptr inbounds %struct.LIST, %struct.LIST* %337, i32 0, i32 0
  %339 = load %union.rec*, %union.rec** %338, align 8
  store %union.rec* %339, %union.rec** @zz_tmp, align 8
  %340 = load %union.rec*, %union.rec** @zz_res, align 8
  %341 = bitcast %union.rec* %340 to %struct.word_type*
  %342 = getelementptr inbounds %struct.word_type, %struct.word_type* %341, i32 0, i32 0
  %343 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %342, i32 0, i64 1
  %344 = getelementptr inbounds %struct.LIST, %struct.LIST* %343, i32 0, i32 0
  %345 = load %union.rec*, %union.rec** %344, align 8
  %346 = load %union.rec*, %union.rec** @zz_hold, align 8
  %347 = bitcast %union.rec* %346 to %struct.word_type*
  %348 = getelementptr inbounds %struct.word_type, %struct.word_type* %347, i32 0, i32 0
  %349 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %348, i32 0, i64 1
  %350 = getelementptr inbounds %struct.LIST, %struct.LIST* %349, i32 0, i32 0
  store %union.rec* %345, %union.rec** %350, align 8
  %351 = load %union.rec*, %union.rec** @zz_hold, align 8
  %352 = load %union.rec*, %union.rec** @zz_res, align 8
  %353 = bitcast %union.rec* %352 to %struct.word_type*
  %354 = getelementptr inbounds %struct.word_type, %struct.word_type* %353, i32 0, i32 0
  %355 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %354, i32 0, i64 1
  %356 = getelementptr inbounds %struct.LIST, %struct.LIST* %355, i32 0, i32 0
  %357 = load %union.rec*, %union.rec** %356, align 8
  %358 = bitcast %union.rec* %357 to %struct.word_type*
  %359 = getelementptr inbounds %struct.word_type, %struct.word_type* %358, i32 0, i32 0
  %360 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %359, i32 0, i64 1
  %361 = getelementptr inbounds %struct.LIST, %struct.LIST* %360, i32 0, i32 1
  store %union.rec* %351, %union.rec** %361, align 8
  %362 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %363 = load %union.rec*, %union.rec** @zz_res, align 8
  %364 = bitcast %union.rec* %363 to %struct.word_type*
  %365 = getelementptr inbounds %struct.word_type, %struct.word_type* %364, i32 0, i32 0
  %366 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %365, i32 0, i64 1
  %367 = getelementptr inbounds %struct.LIST, %struct.LIST* %366, i32 0, i32 0
  store %union.rec* %362, %union.rec** %367, align 8
  %368 = load %union.rec*, %union.rec** @zz_res, align 8
  %369 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %370 = bitcast %union.rec* %369 to %struct.word_type*
  %371 = getelementptr inbounds %struct.word_type, %struct.word_type* %370, i32 0, i32 0
  %372 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %371, i32 0, i64 1
  %373 = getelementptr inbounds %struct.LIST, %struct.LIST* %372, i32 0, i32 1
  store %union.rec* %368, %union.rec** %373, align 8
  br label %374

; <label>:374                                     ; preds = %333, %331
  %375 = phi %union.rec* [ %332, %331 ], [ %368, %333 ]
  br label %376

; <label>:376                                     ; preds = %374, %326
  %377 = phi %union.rec* [ %327, %326 ], [ %375, %374 ]
  ret void
}

declare i8* @EchoFilePos(%struct.FILE_POS*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct.anon.14* @ltab_rehash(%struct.anon.14* %S, i32 %newsize) #0 {
  %1 = alloca %struct.anon.14*, align 8
  %2 = alloca i32, align 4
  %NewS = alloca %struct.anon.14*, align 8
  %i = alloca i32, align 4
  store %struct.anon.14* %S, %struct.anon.14** %1, align 8
  store i32 %newsize, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call %struct.anon.14* @ltab_new(i32 %3)
  store %struct.anon.14* %4, %struct.anon.14** %NewS, align 8
  store i32 1, i32* %i, align 4
  br label %5

; <label>:5                                       ; preds = %27, %0
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.anon.14*, %struct.anon.14** %1, align 8
  %8 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sle i32 %6, %9
  br i1 %10, label %11, label %30

; <label>:11                                      ; preds = %5
  %12 = load i32, i32* %i, align 4
  %13 = sext i32 %12 to i64
  %14 = load %struct.anon.14*, %struct.anon.14** %1, align 8
  %15 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %14, i32 0, i32 2
  %16 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %15, i32 0, i64 %13
  %17 = load %union.rec*, %union.rec** %16, align 8
  %18 = icmp ne %union.rec* %17, null
  br i1 %18, label %19, label %26

; <label>:19                                      ; preds = %11
  %20 = load i32, i32* %i, align 4
  %21 = sext i32 %20 to i64
  %22 = load %struct.anon.14*, %struct.anon.14** %1, align 8
  %23 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %22, i32 0, i32 2
  %24 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %23, i32 0, i64 %21
  %25 = load %union.rec*, %union.rec** %24, align 8
  call void @ltab_insert(%union.rec* %25, %struct.anon.14** %NewS)
  br label %26

; <label>:26                                      ; preds = %19, %11
  br label %27

; <label>:27                                      ; preds = %26
  %28 = load i32, i32* %i, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %i, align 4
  br label %5

; <label>:30                                      ; preds = %5
  %31 = load %struct.anon.14*, %struct.anon.14** %1, align 8
  %32 = bitcast %struct.anon.14* %31 to i8*
  call void @free(i8* %32) #4
  %33 = load %struct.anon.14*, %struct.anon.14** %NewS, align 8
  ret %struct.anon.14* %33
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @PS_LinkCheck() #0 {
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %1 = load %union.rec*, %union.rec** @link_source_list, align 8
  %2 = bitcast %union.rec* %1 to %struct.word_type*
  %3 = getelementptr inbounds %struct.word_type, %struct.word_type* %2, i32 0, i32 0
  %4 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3, i32 0, i64 0
  %5 = getelementptr inbounds %struct.LIST, %struct.LIST* %4, i32 0, i32 1
  %6 = load %union.rec*, %union.rec** %5, align 8
  store %union.rec* %6, %union.rec** %link, align 8
  br label %7

; <label>:7                                       ; preds = %75, %0
  %8 = load %union.rec*, %union.rec** %link, align 8
  %9 = load %union.rec*, %union.rec** @link_source_list, align 8
  %10 = icmp ne %union.rec* %8, %9
  br i1 %10, label %11, label %82

; <label>:11                                      ; preds = %7
  %12 = load %union.rec*, %union.rec** %link, align 8
  %13 = bitcast %union.rec* %12 to %struct.word_type*
  %14 = getelementptr inbounds %struct.word_type, %struct.word_type* %13, i32 0, i32 0
  %15 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %14, i32 0, i64 1
  %16 = getelementptr inbounds %struct.LIST, %struct.LIST* %15, i32 0, i32 0
  %17 = load %union.rec*, %union.rec** %16, align 8
  store %union.rec* %17, %union.rec** %y, align 8
  br label %18

; <label>:18                                      ; preds = %28, %11
  %19 = load %union.rec*, %union.rec** %y, align 8
  %20 = bitcast %union.rec* %19 to %struct.word_type*
  %21 = getelementptr inbounds %struct.word_type, %struct.word_type* %20, i32 0, i32 1
  %22 = bitcast %union.FIRST_UNION* %21 to %struct.anon*
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

; <label>:27                                      ; preds = %18
  br label %28

; <label>:28                                      ; preds = %27
  %29 = load %union.rec*, %union.rec** %y, align 8
  %30 = bitcast %union.rec* %29 to %struct.word_type*
  %31 = getelementptr inbounds %struct.word_type, %struct.word_type* %30, i32 0, i32 0
  %32 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %31, i32 0, i64 1
  %33 = getelementptr inbounds %struct.LIST, %struct.LIST* %32, i32 0, i32 0
  %34 = load %union.rec*, %union.rec** %33, align 8
  store %union.rec* %34, %union.rec** %y, align 8
  br label %18

; <label>:35                                      ; preds = %18
  %36 = load %union.rec*, %union.rec** %y, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 1
  %39 = bitcast %union.FIRST_UNION* %38 to %struct.anon*
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %39, i32 0, i32 0
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, 11
  br i1 %43, label %56, label %44

; <label>:44                                      ; preds = %35
  %45 = load %union.rec*, %union.rec** %y, align 8
  %46 = bitcast %union.rec* %45 to %struct.word_type*
  %47 = getelementptr inbounds %struct.word_type, %struct.word_type* %46, i32 0, i32 1
  %48 = bitcast %union.FIRST_UNION* %47 to %struct.anon*
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %48, i32 0, i32 0
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 12
  br i1 %52, label %56, label %53

; <label>:53                                      ; preds = %44
  %54 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %55 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i32 0, %struct.FILE_POS* %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.196, i32 0, i32 0))
  br label %56

; <label>:56                                      ; preds = %53, %44, %35
  %57 = load %union.rec*, %union.rec** %y, align 8
  %58 = bitcast %union.rec* %57 to %struct.word_type*
  %59 = getelementptr inbounds %struct.word_type, %struct.word_type* %58, i32 0, i32 4
  %60 = getelementptr inbounds [4 x i8], [4 x i8]* %59, i32 0, i32 0
  %61 = load %struct.anon.14*, %struct.anon.14** @link_dest_tab, align 8
  %62 = call %union.rec* @ltab_retrieve(i8* %60, %struct.anon.14* %61)
  %63 = icmp eq %union.rec* %62, null
  br i1 %63, label %64, label %74

; <label>:64                                      ; preds = %56
  %65 = load %union.rec*, %union.rec** %y, align 8
  %66 = bitcast %union.rec* %65 to %struct.word_type*
  %67 = getelementptr inbounds %struct.word_type, %struct.word_type* %66, i32 0, i32 1
  %68 = bitcast %union.FIRST_UNION* %67 to %struct.FILE_POS*
  %69 = load %union.rec*, %union.rec** %y, align 8
  %70 = bitcast %union.rec* %69 to %struct.word_type*
  %71 = getelementptr inbounds %struct.word_type, %struct.word_type* %70, i32 0, i32 4
  %72 = getelementptr inbounds [4 x i8], [4 x i8]* %71, i32 0, i32 0
  %73 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 49, i32 14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.197, i32 0, i32 0), i32 2, %struct.FILE_POS* %68, i8* %72)
  br label %74

; <label>:74                                      ; preds = %64, %56
  br label %75

; <label>:75                                      ; preds = %74
  %76 = load %union.rec*, %union.rec** %link, align 8
  %77 = bitcast %union.rec* %76 to %struct.word_type*
  %78 = getelementptr inbounds %struct.word_type, %struct.word_type* %77, i32 0, i32 0
  %79 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %78, i32 0, i64 0
  %80 = getelementptr inbounds %struct.LIST, %struct.LIST* %79, i32 0, i32 1
  %81 = load %union.rec*, %union.rec** %80, align 8
  store %union.rec* %81, %union.rec** %link, align 8
  br label %7

; <label>:82                                      ; preds = %7
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
