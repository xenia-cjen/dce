; ModuleID = 'z48.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FILE_POS = type { i8, i8, i16, i32 }
%struct.t_font_encoding_entry = type { %struct.t_font_encoding_entry*, i32, i8* }
%struct.t_qsave_entry = type { %struct.t_qsave_entry*, i32, i32, float, float }
%struct.t_qsave_marking_entry = type { %struct.t_qsave_marking_entry*, i32 }
%struct.t_font_list_entry = type { %struct.t_font_list_entry*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.t_source_annot_entry = type { %struct.t_source_annot_entry*, %struct.t_target_annot_entry*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.t_target_annot_entry = type { %struct.t_target_annot_entry*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.t_page_block = type { %struct.t_page_block*, [64 x i32] }
%struct.t_offset_block = type { %struct.t_offset_block*, [256 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@g_valid_text_matrix = internal global i32 0, align 4
@g_PDF_debug = internal global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%%\0A%% font encoding '%s':\0A%%\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"<<\0A/Type /Encoding\0A/Differences [ 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"PDFFile_BeginFontEncoding: run out of memory\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"PDFFile_BeginFontEncoding: out of memory\00", align 1
@g_font_encoding_list = internal global %struct.t_font_encoding_entry* null, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"]\0A>>\0Aendobj\0A\00", align 1
@g_graphics_vars = internal global [4 x i32] zeroinitializer, align 16
@g_units = internal global [7 x i32] zeroinitializer, align 16
@g_in_buffering_mode = internal global i32 0, align 4
@g_buffer_pos = internal global i32 0, align 4
@g_buffer = internal global [1024 x i8] zeroinitializer, align 16
@g_TJ_pending = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c")]TJ\0A\00", align 1
@g_ET_pending = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"ET\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"PDFPage_Push: run out of memory\00", align 1
@g_page_h_origin = internal global i32 0, align 4
@g_page_v_origin = internal global i32 0, align 4
@g_qsave_stack = internal global %struct.t_qsave_entry* null, align 8
@g_qsave_marking_stack = internal global %struct.t_qsave_marking_entry* null, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"q\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"\0AQ\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"cannot find font entry for name %s\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"%s %u Tf\0A\00", align 1
@g_page_uses_fonts = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c")%d(\00", align 1
@g_page_contents_obj_num = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"%.2f 0 0 %.2f 0 0 cm\0A\00", align 1
@g_page_h_scale_factor = internal global float 0.000000e+00, align 4
@g_page_v_scale_factor = internal global float 0.000000e+00, align 4
@.str.14 = private unnamed_addr constant [28 x i8] c"%.2f %.2f %.2f %.2f 0 0 cm\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"1 0 0 1 %.2f %.2f cm\0A\00", align 1
@g_expr_depth = internal global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@g_link_depth = internal global i32 0, align 4
@g_graphic_keywords = internal global [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.112, i32 0, i32 0)], align 16
@.str.17 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@g_link_keywords = internal global [5 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.117, i32 0, i32 0)], align 16
@g_link_index = internal global i32 0, align 4
@g_link_keyword = internal global i32 0, align 4
@g_doc_info_keywords = internal global [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.121, i32 0, i32 0)], align 16
@g_arithmetic_keywords = internal global [7 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.132, i32 0, i32 0)], align 16
@g_expr = internal global [512 x i8] zeroinitializer, align 16
@.str.18 = private unnamed_addr constant [35 x i8] c"PDFPage_WriteGraphic: '(' expected\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@g_expr_index = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [65 x i8] c"PDFPage_WriteGraphic: '__' encountered while processing @Graphic\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"q %d w %d %d m %d %d l s Q\0A\00", align 1
@g_page_has_text = internal global i32 0, align 4
@g_page_has_graphics = internal global i32 0, align 4
@g_page_length_obj_num = internal global i32 0, align 4
@g_page_start_offset = internal global i32 0, align 4
@g_page_line_width = internal global i32 0, align 4
@g_font_list = internal global %struct.t_font_list_entry* null, align 8
@g_page_count = internal global i32 0, align 4
@g_page_object_num = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [37 x i8] c"%%\0A%% length object for page %u:\0A%%\0A\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"%u\0Aendobj\0A\00", align 1
@g_source_annot_list = internal global %struct.t_source_annot_entry* null, align 8
@g_cur_page_block = internal global %struct.t_page_block* null, align 8
@.str.24 = private unnamed_addr constant [35 x i8] c"PDFPage_Cleanup: run out of memory\00", align 1
@g_page_block_list = internal global %struct.t_page_block* null, align 8
@.str.25 = private unnamed_addr constant [26 x i8] c"%%\0A%% page number %u:\0A%%\0A\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"<<\0A/Type /Page\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"/CropBox [ 0 0 %u %u ]\0A\00", align 1
@g_doc_h_bound = internal global i32 0, align 4
@g_doc_v_bound = internal global i32 0, align 4
@.str.28 = private unnamed_addr constant [9 x i8] c"/Parent \00", align 1
@g_pages_root = internal global i32 0, align 4
@.str.29 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"/Contents \00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"/Resources\0A<<\0A\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"/Font <<\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c" >>\0A\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"/ProcSet [ /PDF\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c" /Text\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c" ]\0A\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c">>\0A\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"/Annots [\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c">>\0Aendobj\0A\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"%PDF-1.2\0A\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"%\E2\E3\CF\D3\0A\00", align 1
@g_next_objnum = internal global i32 0, align 4
@g_obj_offset_list = internal global %struct.t_offset_block* null, align 8
@g_cur_obj_offset_block = internal global %struct.t_offset_block* null, align 8
@g_doc_author = internal global i8* null, align 8
@g_doc_title = internal global i8* null, align 8
@g_doc_subject = internal global i8* null, align 8
@g_doc_keywords = internal global i8* null, align 8
@g_target_annot_list = internal global %struct.t_target_annot_entry* null, align 8
@g_has_exported_targets = internal global i32 0, align 4
@.str.44 = private unnamed_addr constant [46 x i8] c"%%\0A%% /Dests dictionary (exported links):\0A%%\0A\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"<<\0A\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"/%s [ \00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c" /XYZ null null null ]\0A\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"%%\0A%% catalog:\0A%%\0A\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"/Type /Catalog\0A\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"/Pages \00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"/Dests \00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"%%\0A%% Info object:\0A%%\0A\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"/Creator (%s)\0A\00", align 1
@.str.54 = private unnamed_addr constant [40 x i8] c"Basser Lout Version 3.24 (October 2000)\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"/Producer (%s)\0A\00", align 1
@.str.56 = private unnamed_addr constant [44 x i8] c"/CreationDate (D:%.4d%.2d%.2d%.2d%.2d%.2d)\0A\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"/Author (%s)\0A\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"/Title (%s)\0A\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"/Subject (%s)\0A\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"/Keywords (%s)\0A\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"trailer\0A<<\0A\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"/Size %u\0A\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"/Root \00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"\0A/Info \00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c" >>\0Astartxref\0A%u\0A\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"%%EOF\0A\00", align 1
@.str.67 = private unnamed_addr constant [51 x i8] c"PDFFile_Cleanup: unresolved link annotation named \00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.69 = private unnamed_addr constant [40 x i8] c"PDFFont_NewListEntry: run out of memory\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.71 = private unnamed_addr constant [30 x i8] c"%%\0A%% page %u's contents:\0A%%\0A\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"<< /Length \00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c" >>\0Astream\0A\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"%u w\0A\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"BT\0A\00", align 1
@.str.77 = private unnamed_addr constant [18 x i8] c"1 0 0 1 %d %d Tm\0A\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"%d 0 Td\0A\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"[(\00", align 1
@.str.80 = private unnamed_addr constant [58 x i8] c"PDFPage_CollectExpr: expression too long (max. 512 chars)\00", align 1
@.str.81 = private unnamed_addr constant [31 x i8] c"PDFPage_EvalExpr: '(' expected\00", align 1
@.str.82 = private unnamed_addr constant [31 x i8] c"PDFPage_EvalExpr: ',' expected\00", align 1
@.str.83 = private unnamed_addr constant [31 x i8] c"PDFPage_EvalExpr: ')' expected\00", align 1
@g_unit_keywords = internal global [7 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i32 0, i32 0)], align 16
@.str.84 = private unnamed_addr constant [77 x i8] c"PDFPage_EvalExpr: __add, __sub, __mul, __div, or a unit keyword was expected\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.86 = private unnamed_addr constant [80 x i8] c"PDFPage_GetFloat: unable to evaluate number for Lout graphic keyword processing\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"cm\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"pt\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"em\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"loutf\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"loutv\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"louts\00", align 1
@.str.94 = private unnamed_addr constant [52 x i8] c"PDFPage_CollectLink: link too long (max. 512 chars)\00", align 1
@g_link = internal global [512 x i8] zeroinitializer, align 16
@.str.95 = private unnamed_addr constant [60 x i8] c"PDFPage_ProcessLinkKeyword: empty link-name / URI; ignored.\00", align 1
@g_dest_link_options = internal global [8 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0)], align 16
@g_external_file_spec_keyword = internal global [1 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i32 0, i32 0)], align 8
@.str.96 = private unnamed_addr constant [44 x i8] c"PDFPage_ProcessLinkKeyword: empty file spec\00", align 1
@.str.97 = private unnamed_addr constant [42 x i8] c"PDFPage_ProcessLinkKeyword: out of memory\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"__FitNoChange\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"__Fit\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"__FitH\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"__FitV\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"__FitR\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"__FitB\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"__FitBH\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"__FitBV\00", align 1
@.str.106 = private unnamed_addr constant [38 x i8] c"PDFSourceAnnot_New: run out of memory\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"__link_to=\00", align 1
@.str.108 = private unnamed_addr constant [38 x i8] c"PDFTargetAnnot_New: run out of memory\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"xsize\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"ysize\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"xmark\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"ymark\00", align 1
@.str.113 = private unnamed_addr constant [15 x i8] c"link_source=<<\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c"link_external=<<\00", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"link_URI=<<\00", align 1
@.str.116 = private unnamed_addr constant [15 x i8] c"link_target=<<\00", align 1
@.str.117 = private unnamed_addr constant [26 x i8] c"link_target_for_export=<<\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"author=\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"title=\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"subject=\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"keywords=\00", align 1
@.str.122 = private unnamed_addr constant [55 x i8] c"PDFPage_ProcessDocInfoKeyword: no memory for __author=\00", align 1
@.str.123 = private unnamed_addr constant [54 x i8] c"PDFPage_ProcessDocInfoKeyword: no memory for __title=\00", align 1
@.str.124 = private unnamed_addr constant [56 x i8] c"PDFPage_ProcessDocInfoKeyword: no memory for __subject=\00", align 1
@.str.125 = private unnamed_addr constant [57 x i8] c"PDFPage_ProcessDocInfoKeyword: no memory for __keywords=\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"pick\00", align 1
@.str.133 = private unnamed_addr constant [33 x i8] c"PDFObject_New: run out of memory\00", align 1
@.str.134 = private unnamed_addr constant [18 x i8] c"endstream\0Aendobj\0A\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"%u 0 obj\0A\00", align 1
@.str.136 = private unnamed_addr constant [34 x i8] c"%%\0A%% declare use of font %s:\0A%%\0A\00", align 1
@.str.137 = private unnamed_addr constant [32 x i8] c"<<\0A/Type /Font\0A/Subtype /Type1\0A\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"/Name %s\0A\00", align 1
@.str.139 = private unnamed_addr constant [15 x i8] c"/BaseFont /%s\0A\00", align 1
@.str.140 = private unnamed_addr constant [11 x i8] c"/Encoding \00", align 1
@g_standard_base_14_fonts = internal global [14 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.154, i32 0, i32 0)], align 16
@.str.141 = private unnamed_addr constant [8 x i8] c"Courier\00", align 1
@.str.142 = private unnamed_addr constant [13 x i8] c"Courier-Bold\00", align 1
@.str.143 = private unnamed_addr constant [16 x i8] c"Courier-Oblique\00", align 1
@.str.144 = private unnamed_addr constant [20 x i8] c"Courier-BoldOblique\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"Helvetica\00", align 1
@.str.146 = private unnamed_addr constant [15 x i8] c"Helvetica-Bold\00", align 1
@.str.147 = private unnamed_addr constant [18 x i8] c"Helvetica-Oblique\00", align 1
@.str.148 = private unnamed_addr constant [22 x i8] c"Helvetica-BoldOblique\00", align 1
@.str.149 = private unnamed_addr constant [7 x i8] c"Symbol\00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"Times\00", align 1
@.str.151 = private unnamed_addr constant [11 x i8] c"Times-Bold\00", align 1
@.str.152 = private unnamed_addr constant [13 x i8] c"Times-Italic\00", align 1
@.str.153 = private unnamed_addr constant [17 x i8] c"Times-BoldItalic\00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c"ZapfDingbats\00", align 1
@.str.155 = private unnamed_addr constant [48 x i8] c"%%\0A%% annotation in page object # %u to %s:\0A%%\0A\00", align 1
@.str.156 = private unnamed_addr constant [72 x i8] c"<<\0A/Type /Annot\0A/Subtype /Link\0A/Rect [ %d %d %d %d ]\0A/Border [ 0 0 0 ]\0A\00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c"/Dest [ \00", align 1
@.str.158 = private unnamed_addr constant [21 x i8] c" /XYZ null null null\00", align 1
@.str.159 = private unnamed_addr constant [6 x i8] c" /Fit\00", align 1
@.str.160 = private unnamed_addr constant [10 x i8] c" /FitH %u\00", align 1
@.str.161 = private unnamed_addr constant [10 x i8] c" /FitV %u\00", align 1
@.str.162 = private unnamed_addr constant [19 x i8] c" /FitR %u %u %u %u\00", align 1
@.str.163 = private unnamed_addr constant [7 x i8] c" /FitB\00", align 1
@.str.164 = private unnamed_addr constant [11 x i8] c" /FitBH %u\00", align 1
@.str.165 = private unnamed_addr constant [11 x i8] c" /FitBV %u\00", align 1
@.str.166 = private unnamed_addr constant [47 x i8] c"PDFSourceAnnot_Write: invalid link dest option\00", align 1
@.str.167 = private unnamed_addr constant [50 x i8] c"/A << /Type /Action /S /GoToR /D (%s) /F\0A(%s) >>\0A\00", align 1
@.str.168 = private unnamed_addr constant [42 x i8] c"/A << /Type /Action /S /URI /URI\0A(%s) >>\0A\00", align 1
@.str.169 = private unnamed_addr constant [7 x i8] c"%u 0 R\00", align 1
@.str.170 = private unnamed_addr constant [30 x i8] c"%%\0A%% root of pages tree:\0A%%\0A\00", align 1
@.str.171 = private unnamed_addr constant [14 x i8] c"/Type /Pages\0A\00", align 1
@.str.172 = private unnamed_addr constant [9 x i8] c"/Kids [ \00", align 1
@.str.173 = private unnamed_addr constant [14 x i8] c" ]\0A/Count %u\0A\00", align 1
@.str.174 = private unnamed_addr constant [25 x i8] c"/MediaBox [ 0 0 %u %u ]\0A\00", align 1
@.str.175 = private unnamed_addr constant [22 x i8] c"%%\0A%% xref table:\0A%%\0A\00", align 1
@.str.176 = private unnamed_addr constant [6 x i8] c"xref\0A\00", align 1
@.str.177 = private unnamed_addr constant [6 x i8] c"0 %u\0A\00", align 1
@.str.178 = private unnamed_addr constant [21 x i8] c"0000000000 65535 f \0A\00", align 1
@.str.179 = private unnamed_addr constant [16 x i8] c"%010u 00000 n \0A\00", align 1
@.str.180 = private unnamed_addr constant [45 x i8] c"PDFFile_WriteXREF: undefined object number: \00", align 1

; Function Attrs: nounwind uwtable
define i32 @PDFHasValidTextMatrix() #0 {
  %1 = load i32, i32* @g_valid_text_matrix, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @PDFFile_BeginFontEncoding(%struct._IO_FILE* %in_fp, i8* %in_encoding_name) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i8*, align 8
  %encoding_num = alloca i32, align 4
  %encoding_entry = alloca %struct.t_font_encoding_entry*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  store i8* %in_encoding_name, i8** %2, align 8
  %3 = load i32, i32* @g_PDF_debug, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %9

; <label>:5                                       ; preds = %0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i8* %7)
  br label %9

; <label>:9                                       ; preds = %5, %0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %11 = call i32 @PDFObject_WriteNewObj(%struct._IO_FILE* %10)
  store i32 %11, i32* %encoding_num, align 4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %13 = call i32 @fputs(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), %struct._IO_FILE* %12)
  %14 = call noalias i8* @malloc(i64 24) #5
  %15 = bitcast i8* %14 to %struct.t_font_encoding_entry*
  store %struct.t_font_encoding_entry* %15, %struct.t_font_encoding_entry** %encoding_entry, align 8
  %16 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %encoding_entry, align 8
  %17 = icmp eq %struct.t_font_encoding_entry* %16, null
  br i1 %17, label %18, label %21

; <label>:18                                      ; preds = %9
  %19 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %20 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0), i32 1, %struct.FILE_POS* %19)
  br label %21

; <label>:21                                      ; preds = %18, %9
  %22 = load i8*, i8** %2, align 8
  %23 = call i64 @strlen(i8* %22) #6
  %24 = add i64 %23, 1
  %25 = call noalias i8* @malloc(i64 %24) #5
  %26 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %encoding_entry, align 8
  %27 = getelementptr inbounds %struct.t_font_encoding_entry, %struct.t_font_encoding_entry* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %encoding_entry, align 8
  %29 = getelementptr inbounds %struct.t_font_encoding_entry, %struct.t_font_encoding_entry* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %35

; <label>:32                                      ; preds = %21
  %33 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %34 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %33)
  br label %35

; <label>:35                                      ; preds = %32, %21
  %36 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** @g_font_encoding_list, align 8
  %37 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %encoding_entry, align 8
  %38 = getelementptr inbounds %struct.t_font_encoding_entry, %struct.t_font_encoding_entry* %37, i32 0, i32 0
  store %struct.t_font_encoding_entry* %36, %struct.t_font_encoding_entry** %38, align 8
  %39 = load i32, i32* %encoding_num, align 4
  %40 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %encoding_entry, align 8
  %41 = getelementptr inbounds %struct.t_font_encoding_entry, %struct.t_font_encoding_entry* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %encoding_entry, align 8
  %43 = getelementptr inbounds %struct.t_font_encoding_entry, %struct.t_font_encoding_entry* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** %2, align 8
  %46 = call i8* @strcpy(i8* %44, i8* %45) #5
  %47 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %encoding_entry, align 8
  store %struct.t_font_encoding_entry* %47, %struct.t_font_encoding_entry** @g_font_encoding_list, align 8
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @PDFObject_WriteNewObj(%struct._IO_FILE* %in_fp) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %next_ref = alloca i32, align 4
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  %2 = call i32 @PDFObject_New()
  store i32 %2, i32* %next_ref, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %4 = load i32, i32* %next_ref, align 4
  call void @PDFObject_WriteObj(%struct._IO_FILE* %3, i32 %4)
  %5 = load i32, i32* %next_ref, align 4
  ret i32 %5
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @PDFFile_EndFontEncoding(%struct._IO_FILE* %in_fp) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %3 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFFont_AddFont(%struct._IO_FILE* %in_fp, i8* %in_short_font_name, i8* %in_real_font_name, i8* %in_font_encoding_name) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %entry = alloca %struct.t_font_list_entry*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  store i8* %in_short_font_name, i8** %2, align 8
  store i8* %in_real_font_name, i8** %3, align 8
  store i8* %in_font_encoding_name, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.t_font_list_entry* @PDFFont_FindListEntry(i8* %5)
  store %struct.t_font_list_entry* %6, %struct.t_font_list_entry** %entry, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @PDFFont_FindFontEncoding(i8* %9)
  %11 = call %struct.t_font_list_entry* @PDFFont_NewListEntry(i8* %7, i8* %8, i32 %10)
  store %struct.t_font_list_entry* %11, %struct.t_font_list_entry** %entry, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.t_font_list_entry* @PDFFont_FindListEntry(i8* %in_real_font_name) #0 {
  %1 = alloca i8*, align 8
  %entry = alloca %struct.t_font_list_entry*, align 8
  store i8* %in_real_font_name, i8** %1, align 8
  %2 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** @g_font_list, align 8
  store %struct.t_font_list_entry* %2, %struct.t_font_list_entry** %entry, align 8
  br label %3

; <label>:3                                       ; preds = %14, %0
  %4 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry, align 8
  %5 = icmp ne %struct.t_font_list_entry* %4, null
  br i1 %5, label %6, label %18

; <label>:6                                       ; preds = %3
  %7 = load i8*, i8** %1, align 8
  %8 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry, align 8
  %9 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %8, i32 0, i32 3
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @strcmp(i8* %7, i8* %10) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %6
  br label %18

; <label>:14                                      ; preds = %6
  %15 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry, align 8
  %16 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %15, i32 0, i32 0
  %17 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %16, align 8
  store %struct.t_font_list_entry* %17, %struct.t_font_list_entry** %entry, align 8
  br label %3

; <label>:18                                      ; preds = %13, %3
  %19 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry, align 8
  ret %struct.t_font_list_entry* %19
}

; Function Attrs: nounwind uwtable
define internal %struct.t_font_list_entry* @PDFFont_NewListEntry(i8* %in_short_font_name, i8* %in_real_font_name, i32 %in_font_encoding_obj) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %next_font_num = alloca i32, align 4
  %new_entry = alloca %struct.t_font_list_entry*, align 8
  %PDF_font_name = alloca [64 x i8], align 16
  %num = alloca [32 x i8], align 16
  store i8* %in_short_font_name, i8** %1, align 8
  store i8* %in_real_font_name, i8** %2, align 8
  store i32 %in_font_encoding_obj, i32* %3, align 4
  store i32 0, i32* %next_font_num, align 4
  %4 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** @g_font_list, align 8
  store %struct.t_font_list_entry* %4, %struct.t_font_list_entry** %new_entry, align 8
  br label %5

; <label>:5                                       ; preds = %8, %0
  %6 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %7 = icmp ne %struct.t_font_list_entry* %6, null
  br i1 %7, label %8, label %14

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %next_font_num, align 4
  %10 = add i32 %9, 1
  store i32 %10, i32* %next_font_num, align 4
  %11 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %12 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %11, i32 0, i32 0
  %13 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %12, align 8
  store %struct.t_font_list_entry* %13, %struct.t_font_list_entry** %new_entry, align 8
  br label %5

; <label>:14                                      ; preds = %5
  %15 = bitcast [64 x i8]* %PDF_font_name to i8*
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 64, i32 16, i1 false)
  %16 = bitcast i8* %15 to [64 x i8]*
  %17 = getelementptr [64 x i8], [64 x i8]* %16, i32 0, i32 0
  store i8 47, i8* %17
  %18 = getelementptr [64 x i8], [64 x i8]* %16, i32 0, i32 1
  store i8 70, i8* %18
  %19 = call noalias i8* @malloc(i64 48) #5
  %20 = bitcast i8* %19 to %struct.t_font_list_entry*
  store %struct.t_font_list_entry* %20, %struct.t_font_list_entry** %new_entry, align 8
  %21 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %22 = icmp eq %struct.t_font_list_entry* %21, null
  br i1 %22, label %23, label %26

; <label>:23                                      ; preds = %14
  %24 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %25 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.69, i32 0, i32 0), i32 1, %struct.FILE_POS* %24)
  br label %26

; <label>:26                                      ; preds = %23, %14
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %num, i32 0, i32 0
  %28 = load i32, i32* %next_font_num, align 4
  %29 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), i32 %28) #5
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %PDF_font_name, i32 0, i32 0
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %num, i32 0, i32 0
  %32 = call i8* @strcat(i8* %30, i8* %31) #5
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %PDF_font_name, i32 0, i32 0
  %34 = call i64 @strlen(i8* %33) #6
  %35 = add i64 %34, 1
  %36 = call noalias i8* @malloc(i64 %35) #5
  %37 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %38 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %40 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %46

; <label>:43                                      ; preds = %26
  %44 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %45 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.69, i32 0, i32 0), i32 1, %struct.FILE_POS* %44)
  br label %46

; <label>:46                                      ; preds = %43, %26
  %47 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %48 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %PDF_font_name, i32 0, i32 0
  %51 = call i8* @strcpy(i8* %49, i8* %50) #5
  %52 = load i8*, i8** %1, align 8
  %53 = call i64 @strlen(i8* %52) #6
  %54 = add i64 %53, 1
  %55 = call noalias i8* @malloc(i64 %54) #5
  %56 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %57 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %59 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %65

; <label>:62                                      ; preds = %46
  %63 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %64 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.69, i32 0, i32 0), i32 1, %struct.FILE_POS* %63)
  br label %65

; <label>:65                                      ; preds = %62, %46
  %66 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %67 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %1, align 8
  %70 = call i8* @strcpy(i8* %68, i8* %69) #5
  %71 = load i8*, i8** %2, align 8
  %72 = call i64 @strlen(i8* %71) #6
  %73 = add i64 %72, 1
  %74 = call noalias i8* @malloc(i64 %73) #5
  %75 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %76 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  %77 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %78 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %77, i32 0, i32 3
  %79 = load i8*, i8** %78, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %84

; <label>:81                                      ; preds = %65
  %82 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %83 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.69, i32 0, i32 0), i32 1, %struct.FILE_POS* %82)
  br label %84

; <label>:84                                      ; preds = %81, %65
  %85 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %86 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %85, i32 0, i32 3
  %87 = load i8*, i8** %86, align 8
  %88 = load i8*, i8** %2, align 8
  %89 = call i8* @strcpy(i8* %87, i8* %88) #5
  %90 = load i32, i32* %3, align 4
  %91 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %92 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  %93 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %94 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %93, i32 0, i32 5
  store i32 0, i32* %94, align 4
  %95 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %96 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %95, i32 0, i32 6
  store i32 0, i32* %96, align 4
  %97 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** @g_font_list, align 8
  %98 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %99 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %98, i32 0, i32 0
  store %struct.t_font_list_entry* %97, %struct.t_font_list_entry** %99, align 8
  %100 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  store %struct.t_font_list_entry* %100, %struct.t_font_list_entry** @g_font_list, align 8
  %101 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  ret %struct.t_font_list_entry* %101
}

; Function Attrs: nounwind uwtable
define internal i32 @PDFFont_FindFontEncoding(i8* %in_font_encoding_name) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %entry = alloca %struct.t_font_encoding_entry*, align 8
  store i8* %in_font_encoding_name, i8** %2, align 8
  %3 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** @g_font_encoding_list, align 8
  store %struct.t_font_encoding_entry* %3, %struct.t_font_encoding_entry** %entry, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i32 0, i32* %1
  br label %33

; <label>:7                                       ; preds = %0
  br label %8

; <label>:8                                       ; preds = %19, %7
  %9 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %entry, align 8
  %10 = icmp ne %struct.t_font_encoding_entry* %9, null
  br i1 %10, label %11, label %23

; <label>:11                                      ; preds = %8
  %12 = load i8*, i8** %2, align 8
  %13 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %entry, align 8
  %14 = getelementptr inbounds %struct.t_font_encoding_entry, %struct.t_font_encoding_entry* %13, i32 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strcmp(i8* %12, i8* %15) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %11
  br label %23

; <label>:19                                      ; preds = %11
  %20 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %entry, align 8
  %21 = getelementptr inbounds %struct.t_font_encoding_entry, %struct.t_font_encoding_entry* %20, i32 0, i32 0
  %22 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %21, align 8
  store %struct.t_font_encoding_entry* %22, %struct.t_font_encoding_entry** %entry, align 8
  br label %8

; <label>:23                                      ; preds = %18, %8
  %24 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %entry, align 8
  %25 = icmp ne %struct.t_font_encoding_entry* %24, null
  br i1 %25, label %26, label %30

; <label>:26                                      ; preds = %23
  %27 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %entry, align 8
  %28 = getelementptr inbounds %struct.t_font_encoding_entry, %struct.t_font_encoding_entry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  br label %31

; <label>:30                                      ; preds = %23
  br label %31

; <label>:31                                      ; preds = %30, %26
  %32 = phi i32 [ %29, %26 ], [ 0, %30 ]
  store i32 %32, i32* %1
  br label %33

; <label>:33                                      ; preds = %31, %6
  %34 = load i32, i32* %1
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define void @PDFPage_SetVars(i32 %xsize, i32 %ysize, i32 %xmark, i32 %ymark, i32 %loutf, i32 %loutv, i32 %louts) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %xsize, i32* %1, align 4
  store i32 %ysize, i32* %2, align 4
  store i32 %xmark, i32* %3, align 4
  store i32 %ymark, i32* %4, align 4
  store i32 %loutf, i32* %5, align 4
  store i32 %loutv, i32* %6, align 4
  store i32 %louts, i32* %7, align 4
  %8 = load i32, i32* %1, align 4
  store i32 %8, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_graphics_vars, i32 0, i64 0), align 4
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_graphics_vars, i32 0, i64 1), align 4
  %10 = load i32, i32* %3, align 4
  store i32 %10, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_graphics_vars, i32 0, i64 2), align 4
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_graphics_vars, i32 0, i64 3), align 4
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_units, i32 0, i64 4), align 4
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_units, i32 0, i64 5), align 4
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_units, i32 0, i64 6), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFPage_Write(%struct._IO_FILE* %in_fp, i8* %in_str) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i8*, align 8
  %len = alloca i32, align 4
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  store i8* %in_str, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %47

; <label>:8                                       ; preds = %0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @PDFPage_Begin(%struct._IO_FILE* %9)
  %10 = load i32, i32* @g_in_buffering_mode, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %34

; <label>:12                                      ; preds = %8
  %13 = load i8*, i8** %2, align 8
  %14 = call i64 @strlen(i8* %13) #6
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %len, align 4
  %16 = load i32, i32* @g_buffer_pos, align 4
  %17 = load i32, i32* %len, align 4
  %18 = add i32 %16, %17
  %19 = icmp ugt i32 %18, 1023
  br i1 %19, label %20, label %24

; <label>:20                                      ; preds = %12
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @PDFPage_FlushBuffer(%struct._IO_FILE* %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %23 = load i8*, i8** %2, align 8
  call void @PDFPage_WriteStream(%struct._IO_FILE* %22, i8* %23)
  br label %33

; <label>:24                                      ; preds = %12
  %25 = load i32, i32* @g_buffer_pos, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @g_buffer, i32 0, i32 0), i64 %26
  %28 = load i8*, i8** %2, align 8
  %29 = call i8* @strcpy(i8* %27, i8* %28) #5
  %30 = load i32, i32* %len, align 4
  %31 = load i32, i32* @g_buffer_pos, align 4
  %32 = add i32 %31, %30
  store i32 %32, i32* @g_buffer_pos, align 4
  br label %33

; <label>:33                                      ; preds = %24, %20
  br label %47

; <label>:34                                      ; preds = %8
  %35 = load i32, i32* @g_TJ_pending, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

; <label>:37                                      ; preds = %34
  store i32 0, i32* @g_TJ_pending, align 4
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @PDFPage_WriteStream(%struct._IO_FILE* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  br label %39

; <label>:39                                      ; preds = %37, %34
  %40 = load i32, i32* @g_ET_pending, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

; <label>:42                                      ; preds = %39
  store i32 0, i32* @g_ET_pending, align 4
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @PDFPage_WriteStream(%struct._IO_FILE* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* @g_valid_text_matrix, align 4
  br label %44

; <label>:44                                      ; preds = %42, %39
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %46 = load i8*, i8** %2, align 8
  call void @PDFPage_WriteStream(%struct._IO_FILE* %45, i8* %46)
  br label %47

; <label>:47                                      ; preds = %7, %44, %33
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDFPage_Begin(%struct._IO_FILE* %in_fp) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %str = alloca [512 x i8], align 16
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  %2 = load i32, i32* @g_page_contents_obj_num, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %37

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* @g_PDF_debug, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

; <label>:7                                       ; preds = %4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %9 = load i32, i32* @g_page_count, align 4
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.71, i32 0, i32 0), i32 %9)
  br label %11

; <label>:11                                      ; preds = %7, %4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %13 = call i32 @PDFObject_WriteNewObj(%struct._IO_FILE* %12)
  store i32 %13, i32* @g_page_contents_obj_num, align 4
  %14 = call i32 @PDFObject_New()
  store i32 %14, i32* @g_page_length_obj_num, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %16 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i32 0, i32 0), %struct._IO_FILE* %15)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %18 = load i32, i32* @g_page_length_obj_num, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %17, i32 %18)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %20 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i32 0, i32 0), %struct._IO_FILE* %19)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %22 = call i64 @ftell(%struct._IO_FILE* %21)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* @g_page_start_offset, align 4
  %24 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %25 = load float, float* @g_page_h_scale_factor, align 4
  %26 = fpext float %25 to double
  %27 = load float, float* @g_page_v_scale_factor, align 4
  %28 = fpext float %27 to double
  %29 = call i32 (i8*, i8*, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), double %26, double %28) #5
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  call void @PDFPage_WriteStream(%struct._IO_FILE* %30, i8* %31)
  %32 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %33 = load i32, i32* @g_page_line_width, align 4
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i32 %33) #5
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  call void @PDFPage_WriteStream(%struct._IO_FILE* %35, i8* %36)
  br label %37

; <label>:37                                      ; preds = %11, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDFPage_FlushBuffer(%struct._IO_FILE* %in_fp) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %entry = alloca %struct.t_qsave_marking_entry*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  %2 = load i32, i32* @g_in_buffering_mode, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %17

; <label>:4                                       ; preds = %0
  store i32 0, i32* @g_in_buffering_mode, align 4
  br label %5

; <label>:5                                       ; preds = %8, %4
  %6 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** @g_qsave_marking_stack, align 8
  %7 = icmp ne %struct.t_qsave_marking_entry* %6, null
  br i1 %7, label %8, label %15

; <label>:8                                       ; preds = %5
  %9 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** @g_qsave_marking_stack, align 8
  store %struct.t_qsave_marking_entry* %9, %struct.t_qsave_marking_entry** %entry, align 8
  %10 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** %entry, align 8
  %11 = getelementptr inbounds %struct.t_qsave_marking_entry, %struct.t_qsave_marking_entry* %10, i32 0, i32 0
  %12 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** %11, align 8
  store %struct.t_qsave_marking_entry* %12, %struct.t_qsave_marking_entry** @g_qsave_marking_stack, align 8
  %13 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** %entry, align 8
  %14 = bitcast %struct.t_qsave_marking_entry* %13 to i8*
  call void @free(i8* %14) #5
  br label %5

; <label>:15                                      ; preds = %5
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @PDFPage_WriteStream(%struct._IO_FILE* %16, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @g_buffer, i32 0, i32 0))
  br label %17

; <label>:17                                      ; preds = %15, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDFPage_WriteStream(%struct._IO_FILE* %in_fp, i8* %in_str) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i8*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  store i8* %in_str, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %12

; <label>:8                                       ; preds = %0
  %9 = load i8*, i8** %2, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %11 = call i32 @fputs(i8* %9, %struct._IO_FILE* %10)
  br label %12

; <label>:12                                      ; preds = %8, %7
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFPage_Push(%struct._IO_FILE* %in_fp) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %entry = alloca %struct.t_qsave_entry*, align 8
  %entry1 = alloca %struct.t_qsave_marking_entry*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  %2 = call noalias i8* @malloc(i64 24) #5
  %3 = bitcast i8* %2 to %struct.t_qsave_entry*
  store %struct.t_qsave_entry* %3, %struct.t_qsave_entry** %entry, align 8
  %4 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** %entry, align 8
  %5 = icmp eq %struct.t_qsave_entry* %4, null
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %8 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0), i32 1, %struct.FILE_POS* %7)
  br label %9

; <label>:9                                       ; preds = %6, %0
  %10 = load i32, i32* @g_page_h_origin, align 4
  %11 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** %entry, align 8
  %12 = getelementptr inbounds %struct.t_qsave_entry, %struct.t_qsave_entry* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @g_page_v_origin, align 4
  %14 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** %entry, align 8
  %15 = getelementptr inbounds %struct.t_qsave_entry, %struct.t_qsave_entry* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** @g_qsave_stack, align 8
  %17 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** %entry, align 8
  %18 = getelementptr inbounds %struct.t_qsave_entry, %struct.t_qsave_entry* %17, i32 0, i32 0
  store %struct.t_qsave_entry* %16, %struct.t_qsave_entry** %18, align 8
  %19 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** %entry, align 8
  store %struct.t_qsave_entry* %19, %struct.t_qsave_entry** @g_qsave_stack, align 8
  %20 = load i32, i32* @g_in_buffering_mode, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

; <label>:22                                      ; preds = %9
  %23 = call noalias i8* @malloc(i64 16) #5
  %24 = bitcast i8* %23 to %struct.t_qsave_marking_entry*
  store %struct.t_qsave_marking_entry* %24, %struct.t_qsave_marking_entry** %entry1, align 8
  %25 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** %entry1, align 8
  %26 = icmp eq %struct.t_qsave_marking_entry* %25, null
  br i1 %26, label %27, label %30

; <label>:27                                      ; preds = %22
  %28 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %29 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0), i32 1, %struct.FILE_POS* %28)
  br label %30

; <label>:30                                      ; preds = %27, %22
  %31 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** @g_qsave_marking_stack, align 8
  %32 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** %entry1, align 8
  %33 = getelementptr inbounds %struct.t_qsave_marking_entry, %struct.t_qsave_marking_entry* %32, i32 0, i32 0
  store %struct.t_qsave_marking_entry* %31, %struct.t_qsave_marking_entry** %33, align 8
  %34 = load i32, i32* @g_buffer_pos, align 4
  %35 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** %entry1, align 8
  %36 = getelementptr inbounds %struct.t_qsave_marking_entry, %struct.t_qsave_marking_entry* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** %entry1, align 8
  store %struct.t_qsave_marking_entry* %37, %struct.t_qsave_marking_entry** @g_qsave_marking_stack, align 8
  br label %38

; <label>:38                                      ; preds = %30, %9
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @PDFPage_Write(%struct._IO_FILE* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFPage_Pop(%struct._IO_FILE* %in_fp) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %entry = alloca %struct.t_qsave_entry*, align 8
  %entry1 = alloca %struct.t_qsave_marking_entry*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  %2 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** @g_qsave_stack, align 8
  store %struct.t_qsave_entry* %2, %struct.t_qsave_entry** %entry, align 8
  %3 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** %entry, align 8
  %4 = getelementptr inbounds %struct.t_qsave_entry, %struct.t_qsave_entry* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* @g_page_h_origin, align 4
  %6 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** %entry, align 8
  %7 = getelementptr inbounds %struct.t_qsave_entry, %struct.t_qsave_entry* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* @g_page_v_origin, align 4
  %9 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** %entry, align 8
  %10 = getelementptr inbounds %struct.t_qsave_entry, %struct.t_qsave_entry* %9, i32 0, i32 0
  %11 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** %10, align 8
  store %struct.t_qsave_entry* %11, %struct.t_qsave_entry** @g_qsave_stack, align 8
  %12 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** %entry, align 8
  %13 = bitcast %struct.t_qsave_entry* %12 to i8*
  call void @free(i8* %13) #5
  %14 = load i32, i32* @g_in_buffering_mode, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %33

; <label>:16                                      ; preds = %0
  %17 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** @g_qsave_marking_stack, align 8
  store %struct.t_qsave_marking_entry* %17, %struct.t_qsave_marking_entry** %entry1, align 8
  %18 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** %entry1, align 8
  %19 = icmp ne %struct.t_qsave_marking_entry* %18, null
  %20 = zext i1 %19 to i32
  %21 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %20, %struct.FILE_POS* %21)
  %22 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** %entry1, align 8
  %23 = getelementptr inbounds %struct.t_qsave_marking_entry, %struct.t_qsave_marking_entry* %22, i32 0, i32 0
  %24 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** %23, align 8
  store %struct.t_qsave_marking_entry* %24, %struct.t_qsave_marking_entry** @g_qsave_marking_stack, align 8
  %25 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** %entry1, align 8
  %26 = getelementptr inbounds %struct.t_qsave_marking_entry, %struct.t_qsave_marking_entry* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* @g_buffer_pos, align 4
  %28 = load i32, i32* @g_buffer_pos, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* @g_buffer, i32 0, i64 %29
  store i8 0, i8* %30, align 1
  %31 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** %entry1, align 8
  %32 = bitcast %struct.t_qsave_marking_entry* %31 to i8*
  call void @free(i8* %32) #5
  br label %39

; <label>:33                                      ; preds = %0
  %34 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** @g_qsave_marking_stack, align 8
  %35 = icmp eq %struct.t_qsave_marking_entry* %34, null
  %36 = zext i1 %35 to i32
  %37 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %36, %struct.FILE_POS* %37)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @PDFPage_Write(%struct._IO_FILE* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0))
  br label %39

; <label>:39                                      ; preds = %33, %16
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @Assert(i32 %condition, %struct.FILE_POS* %inFilePos) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.FILE_POS*, align 8
  store i32 %condition, i32* %1, align 4
  store %struct.FILE_POS* %inFilePos, %struct.FILE_POS** %2, align 8
  %3 = load i32, i32* %1, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %13, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

; <label>:8                                       ; preds = %5
  %9 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %10 = load %struct.FILE_POS*, %struct.FILE_POS** %2, align 8
  %11 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i32 0, i32 0), i32 0, %struct.FILE_POS* %9, %struct.FILE_POS* %10)
  br label %12

; <label>:12                                      ; preds = %8, %5
  br label %13

; <label>:13                                      ; preds = %12, %0
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFFont_Set(%struct._IO_FILE* %in_fp, i32 %in_font_size, i8* %in_short_font_name) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %str = alloca [512 x i8], align 16
  %entry = alloca %struct.t_font_list_entry*, align 8
  %cur_ET_pending = alloca i32, align 4
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  store i32 %in_font_size, i32* %2, align 4
  store i8* %in_short_font_name, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call %struct.t_font_list_entry* @PDFFont_FindListEntry_Short(i8* %4)
  store %struct.t_font_list_entry* %5, %struct.t_font_list_entry** %entry, align 8
  %6 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry, align 8
  %7 = icmp eq %struct.t_font_list_entry* %6, null
  br i1 %7, label %8, label %12

; <label>:8                                       ; preds = %0
  %9 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0), i32 1, %struct.FILE_POS* %9, i8* %10)
  br label %12

; <label>:12                                      ; preds = %8, %0
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %14 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry, align 8
  %15 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = load i32, i32* %2, align 4
  %18 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* %16, i32 %17) #5
  %19 = load i32, i32* @g_TJ_pending, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

; <label>:21                                      ; preds = %12
  store i32 0, i32* @g_TJ_pending, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @PDFPage_WriteStream(%struct._IO_FILE* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  br label %23

; <label>:23                                      ; preds = %21, %12
  %24 = load i32, i32* @g_ET_pending, align 4
  store i32 %24, i32* %cur_ET_pending, align 4
  store i32 0, i32* @g_ET_pending, align 4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %26 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  call void @PDFPage_Write(%struct._IO_FILE* %25, i8* %26)
  %27 = load i32, i32* %cur_ET_pending, align 4
  store i32 %27, i32* @g_ET_pending, align 4
  %28 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry, align 8
  %29 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %28, i32 0, i32 7
  store i32 1, i32* %29, align 4
  store i32 1, i32* @g_page_uses_fonts, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.t_font_list_entry* @PDFFont_FindListEntry_Short(i8* %in_short_font_name) #0 {
  %1 = alloca i8*, align 8
  %entry = alloca %struct.t_font_list_entry*, align 8
  store i8* %in_short_font_name, i8** %1, align 8
  %2 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** @g_font_list, align 8
  store %struct.t_font_list_entry* %2, %struct.t_font_list_entry** %entry, align 8
  br label %3

; <label>:3                                       ; preds = %14, %0
  %4 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry, align 8
  %5 = icmp ne %struct.t_font_list_entry* %4, null
  br i1 %5, label %6, label %18

; <label>:6                                       ; preds = %3
  %7 = load i8*, i8** %1, align 8
  %8 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry, align 8
  %9 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %8, i32 0, i32 2
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @strcmp(i8* %7, i8* %10) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %6
  br label %18

; <label>:14                                      ; preds = %6
  %15 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry, align 8
  %16 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %15, i32 0, i32 0
  %17 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %16, align 8
  store %struct.t_font_list_entry* %17, %struct.t_font_list_entry** %entry, align 8
  br label %3

; <label>:18                                      ; preds = %13, %3
  %19 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry, align 8
  ret %struct.t_font_list_entry* %19
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @PDFText_OpenXY(%struct._IO_FILE* %in_fp, i32 %hpos, i32 %vpos) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  store i32 %hpos, i32* %2, align 4
  store i32 %vpos, i32* %3, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @PDFText_OpenBT(%struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* %3, align 4
  call void @PDFText_MoveToXYAndOpen(%struct._IO_FILE* %5, i32 %6, i32 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDFText_OpenBT(%struct._IO_FILE* %in_fp) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @PDFPage_FlushBuffer(%struct._IO_FILE* %2)
  store i32 1, i32* @g_page_has_text, align 4
  %3 = load i32, i32* @g_TJ_pending, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  store i32 0, i32* @g_TJ_pending, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @PDFPage_WriteStream(%struct._IO_FILE* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %5, %0
  %8 = load i32, i32* @g_ET_pending, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  store i32 0, i32* @g_ET_pending, align 4
  br label %13

; <label>:11                                      ; preds = %7
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @PDFPage_Write(%struct._IO_FILE* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0))
  store i32 1, i32* @g_valid_text_matrix, align 4
  br label %13

; <label>:13                                      ; preds = %11, %10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDFText_MoveToXYAndOpen(%struct._IO_FILE* %in_fp, i32 %hpos, i32 %vpos) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %str = alloca [512 x i8], align 16
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  store i32 %hpos, i32* %2, align 4
  store i32 %vpos, i32* %3, align 4
  %4 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.77, i32 0, i32 0), i32 %5, i32 %6) #5
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %9 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  call void @PDFPage_Write(%struct._IO_FILE* %8, i8* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @PDFText_OpenString(%struct._IO_FILE* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFText_OpenX(%struct._IO_FILE* %in_fp, i32 %hpos) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i32, align 4
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  store i32 %hpos, i32* %2, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @PDFText_OpenBT(%struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %5 = load i32, i32* %2, align 4
  call void @PDFText_MoveToXAndOpen(%struct._IO_FILE* %4, i32 %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDFText_MoveToXAndOpen(%struct._IO_FILE* %in_fp, i32 %hpos) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i32, align 4
  %str = alloca [512 x i8], align 16
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  store i32 %hpos, i32* %2, align 4
  %3 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %4 = load i32, i32* %2, align 4
  %5 = call i32 (i8*, i8*, ...) @sprintf(i8* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i32 %4) #5
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %7 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  call void @PDFPage_Write(%struct._IO_FILE* %6, i8* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @PDFText_OpenString(%struct._IO_FILE* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFText_Open(%struct._IO_FILE* %in_fp) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  %2 = load i32, i32* @g_TJ_pending, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %9

; <label>:4                                       ; preds = %0
  store i32 0, i32* @g_TJ_pending, align 4
  %5 = load i32, i32* @g_ET_pending, align 4
  %6 = icmp eq i32 %5, 1
  %7 = zext i1 %6 to i32
  %8 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %7, %struct.FILE_POS* %8)
  store i32 0, i32* @g_ET_pending, align 4
  br label %12

; <label>:9                                       ; preds = %0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @PDFText_OpenBT(%struct._IO_FILE* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @PDFText_OpenString(%struct._IO_FILE* %11)
  br label %12

; <label>:12                                      ; preds = %9, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDFText_OpenString(%struct._IO_FILE* %in_fp) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  %2 = load i32, i32* @g_TJ_pending, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  store i32 0, i32* @g_TJ_pending, align 4
  br label %7

; <label>:5                                       ; preds = %0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @PDFPage_Write(%struct._IO_FILE* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %5, %4
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFText_Kern(%struct._IO_FILE* %in_fp, i32 %in_kern) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i32, align 4
  %str = alloca [512 x i8], align 16
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  store i32 %in_kern, i32* %2, align 4
  %3 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %4 = load i32, i32* %2, align 4
  %5 = sub nsw i32 0, %4
  %6 = call i32 (i8*, i8*, ...) @sprintf(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 %5) #5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %8 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  call void @PDFPage_Write(%struct._IO_FILE* %7, i8* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFText_Close(%struct._IO_FILE* %in_fp) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  %2 = load i32, i32* @g_page_contents_obj_num, align 4
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i32
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %4, %struct.FILE_POS* %5)
  store i32 1, i32* @g_TJ_pending, align 4
  store i32 1, i32* @g_ET_pending, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFPage_Scale(%struct._IO_FILE* %in_fp, float %in_h_scale_factor, float %in_v_scale_factor) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %str = alloca [512 x i8], align 16
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  store float %in_h_scale_factor, float* %2, align 4
  store float %in_v_scale_factor, float* %3, align 4
  %4 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %5 = load float, float* %2, align 4
  %6 = fpext float %5 to double
  %7 = load float, float* %3, align 4
  %8 = fpext float %7 to double
  %9 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), double %6, double %8) #5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %11 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  call void @PDFPage_Write(%struct._IO_FILE* %10, i8* %11)
  %12 = load float, float* %2, align 4
  %13 = load float, float* @g_page_h_scale_factor, align 4
  %14 = fmul float %13, %12
  store float %14, float* @g_page_h_scale_factor, align 4
  %15 = load float, float* %3, align 4
  %16 = load float, float* @g_page_v_scale_factor, align 4
  %17 = fmul float %16, %15
  store float %17, float* @g_page_v_scale_factor, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFPage_Rotate(%struct._IO_FILE* %in_fp, float %in_angle_in_radians) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca float, align 4
  %cos_radians = alloca float, align 4
  %sin_radians = alloca float, align 4
  %str = alloca [512 x i8], align 16
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  store float %in_angle_in_radians, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = fpext float %3 to double
  %5 = call double @cos(double %4) #5
  %6 = fptrunc double %5 to float
  store float %6, float* %cos_radians, align 4
  %7 = load float, float* %2, align 4
  %8 = fpext float %7 to double
  %9 = call double @sin(double %8) #5
  %10 = fptrunc double %9 to float
  store float %10, float* %sin_radians, align 4
  %11 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %12 = load float, float* %cos_radians, align 4
  %13 = fpext float %12 to double
  %14 = load float, float* %sin_radians, align 4
  %15 = fpext float %14 to double
  %16 = load float, float* %sin_radians, align 4
  %17 = fsub float -0.000000e+00, %16
  %18 = fpext float %17 to double
  %19 = load float, float* %cos_radians, align 4
  %20 = fpext float %19 to double
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0), double %13, double %15, double %18, double %20) #5
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %23 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  call void @PDFPage_Write(%struct._IO_FILE* %22, i8* %23)
  ret void
}

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind uwtable
define void @PDFPage_Translate(%struct._IO_FILE* %in_fp, float %in_delta_h, float %in_delta_v) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %str = alloca [512 x i8], align 16
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  store float %in_delta_h, float* %2, align 4
  store float %in_delta_v, float* %3, align 4
  %4 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %5 = load float, float* %2, align 4
  %6 = fpext float %5 to double
  %7 = load float, float* %3, align 4
  %8 = fpext float %7 to double
  %9 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), double %6, double %8) #5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %11 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  call void @PDFPage_Write(%struct._IO_FILE* %10, i8* %11)
  %12 = load float, float* %2, align 4
  %13 = load i32, i32* @g_page_h_origin, align 4
  %14 = sitofp i32 %13 to float
  %15 = fadd float %14, %12
  %16 = fptosi float %15 to i32
  store i32 %16, i32* @g_page_h_origin, align 4
  %17 = load float, float* %3, align 4
  %18 = load i32, i32* @g_page_v_origin, align 4
  %19 = sitofp i32 %18 to float
  %20 = fadd float %19, %17
  %21 = fptosi float %20 to i32
  store i32 %21, i32* @g_page_v_origin, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFPage_WriteGraphic(%struct._IO_FILE* %in_fp, i8* %in_str) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i8*, align 8
  %str = alloca [512 x i8], align 16
  %charPtr = alloca i8*, align 8
  %strPtr = alloca i8*, align 8
  %hasResult = alloca i32, align 4
  %value = alloca float, align 4
  %i = alloca i32, align 4
  %value1 = alloca float, align 4
  %hasResult2 = alloca i32, align 4
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  store i8* %in_str, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  store i8* %3, i8** %charPtr, align 8
  %4 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  store i8* %4, i8** %strPtr, align 8
  %5 = load i8*, i8** %charPtr, align 8
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  br label %218

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* @g_expr_depth, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

; <label>:13                                      ; preds = %10
  %14 = load i8*, i8** %charPtr, align 8
  %15 = call i8* @PDFPage_CollectExpr(i8* %14, i32* %hasResult, float* %value)
  store i8* %15, i8** %charPtr, align 8
  %16 = load i32, i32* %hasResult, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

; <label>:18                                      ; preds = %13
  %19 = load i8*, i8** %strPtr, align 8
  %20 = load float, float* %value, align 4
  %21 = fpext float %20 to double
  %22 = call i32 (i8*, i8*, ...) @sprintf(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), double %21) #5
  %23 = load i8*, i8** %strPtr, align 8
  %24 = call i64 @strlen(i8* %23) #6
  %25 = load i8*, i8** %strPtr, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 %24
  store i8* %26, i8** %strPtr, align 8
  br label %27

; <label>:27                                      ; preds = %18, %13
  br label %28

; <label>:28                                      ; preds = %27, %10
  %29 = load i32, i32* @g_link_depth, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

; <label>:31                                      ; preds = %28
  %32 = load i8*, i8** %charPtr, align 8
  %33 = call i8* @PDFPage_CollectLink(i8* %32)
  store i8* %33, i8** %charPtr, align 8
  br label %34

; <label>:34                                      ; preds = %31, %28
  br label %35

; <label>:35                                      ; preds = %212, %34
  %36 = load i8*, i8** %charPtr, align 8
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %213

; <label>:40                                      ; preds = %35
  %41 = load i8*, i8** %strPtr, align 8
  %42 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %43 = getelementptr inbounds i8, i8* %42, i64 512
  %44 = icmp ult i8* %41, %43
  %45 = zext i1 %44 to i32
  %46 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %45, %struct.FILE_POS* %46)
  %47 = load i8*, i8** %charPtr, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 95
  br i1 %51, label %52, label %206

; <label>:52                                      ; preds = %40
  %53 = load i8*, i8** %charPtr, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 95
  br i1 %57, label %58, label %206

; <label>:58                                      ; preds = %52
  %59 = load i8*, i8** %charPtr, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  store i8* %60, i8** %charPtr, align 8
  %61 = load i8*, i8** %charPtr, align 8
  %62 = call i32 @PDFKeyword_Find(i32 4, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @g_graphic_keywords, i32 0, i32 0), i8* %61)
  store i32 %62, i32* %i, align 4
  %63 = load i32, i32* %i, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %83

; <label>:65                                      ; preds = %58
  %66 = load i32, i32* %i, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [4 x i8*], [4 x i8*]* @g_graphic_keywords, i32 0, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @strlen(i8* %69) #6
  %71 = load i8*, i8** %charPtr, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 %70
  store i8* %72, i8** %charPtr, align 8
  %73 = load i8*, i8** %strPtr, align 8
  %74 = load i32, i32* %i, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* @g_graphics_vars, i32 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, i8*, ...) @sprintf(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32 %77) #5
  %79 = load i8*, i8** %strPtr, align 8
  %80 = call i64 @strlen(i8* %79) #6
  %81 = load i8*, i8** %strPtr, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 %80
  store i8* %82, i8** %strPtr, align 8
  br label %205

; <label>:83                                      ; preds = %58
  %84 = load i8*, i8** %charPtr, align 8
  %85 = call i32 @PDFKeyword_Find(i32 5, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @g_link_keywords, i32 0, i32 0), i8* %84)
  store i32 %85, i32* %i, align 4
  %86 = load i32, i32* %i, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %117

; <label>:88                                      ; preds = %83
  %89 = load i32, i32* %i, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [5 x i8*], [5 x i8*]* @g_link_keywords, i32 0, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @strlen(i8* %92) #6
  %94 = load i8*, i8** %charPtr, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 %93
  store i8* %95, i8** %charPtr, align 8
  br label %96

; <label>:96                                      ; preds = %108, %88
  %97 = load i8*, i8** %charPtr, align 8
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = sext i32 %99 to i64
  %101 = call i16** @__ctype_b_loc() #7
  %102 = load i16*, i16** %101, align 8
  %103 = getelementptr inbounds i16, i16* %102, i64 %100
  %104 = load i16, i16* %103, align 2
  %105 = zext i16 %104 to i32
  %106 = and i32 %105, 8192
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

; <label>:108                                     ; preds = %96
  %109 = load i8*, i8** %charPtr, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %charPtr, align 8
  br label %96

; <label>:111                                     ; preds = %96
  store i32 0, i32* @g_link_index, align 4
  %112 = load i32, i32* @g_link_depth, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* @g_link_depth, align 4
  %114 = load i32, i32* %i, align 4
  store i32 %114, i32* @g_link_keyword, align 4
  %115 = load i8*, i8** %charPtr, align 8
  %116 = call i8* @PDFPage_CollectLink(i8* %115)
  store i8* %116, i8** %charPtr, align 8
  br label %204

; <label>:117                                     ; preds = %83
  %118 = load i8*, i8** %charPtr, align 8
  %119 = call i32 @PDFKeyword_Find(i32 4, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @g_doc_info_keywords, i32 0, i32 0), i8* %118)
  store i32 %119, i32* %i, align 4
  %120 = load i32, i32* %i, align 4
  %121 = icmp sge i32 %120, 0
  br i1 %121, label %122, label %133

; <label>:122                                     ; preds = %117
  %123 = load i32, i32* %i, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [4 x i8*], [4 x i8*]* @g_doc_info_keywords, i32 0, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @strlen(i8* %126) #6
  %128 = load i8*, i8** %charPtr, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 %127
  store i8* %129, i8** %charPtr, align 8
  %130 = load i8*, i8** %charPtr, align 8
  %131 = load i32, i32* %i, align 4
  %132 = call i8* @PDFPage_ProcessDocInfoKeyword(i8* %130, i32 %131)
  store i8* %132, i8** %charPtr, align 8
  br label %203

; <label>:133                                     ; preds = %117
  %134 = load i8*, i8** %charPtr, align 8
  %135 = call i32 @PDFKeyword_Find(i32 7, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @g_arithmetic_keywords, i32 0, i32 0), i8* %134)
  store i32 %135, i32* %i, align 4
  %136 = load i32, i32* %i, align 4
  %137 = icmp sge i32 %136, 0
  br i1 %137, label %138, label %195

; <label>:138                                     ; preds = %133
  %139 = load i32, i32* %i, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [7 x i8*], [7 x i8*]* @g_arithmetic_keywords, i32 0, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = call i8* @strcpy(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @g_expr, i32 0, i32 0), i8* %142) #5
  %144 = load i32, i32* %i, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [7 x i8*], [7 x i8*]* @g_arithmetic_keywords, i32 0, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = call i64 @strlen(i8* %147) #6
  %149 = load i8*, i8** %charPtr, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 %148
  store i8* %150, i8** %charPtr, align 8
  br label %151

; <label>:151                                     ; preds = %163, %138
  %152 = load i8*, i8** %charPtr, align 8
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = sext i32 %154 to i64
  %156 = call i16** @__ctype_b_loc() #7
  %157 = load i16*, i16** %156, align 8
  %158 = getelementptr inbounds i16, i16* %157, i64 %155
  %159 = load i16, i16* %158, align 2
  %160 = zext i16 %159 to i32
  %161 = and i32 %160, 8192
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

; <label>:163                                     ; preds = %151
  %164 = load i8*, i8** %charPtr, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %charPtr, align 8
  br label %151

; <label>:166                                     ; preds = %151
  %167 = load i8*, i8** %charPtr, align 8
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp ne i32 %169, 40
  br i1 %170, label %171, label %174

; <label>:171                                     ; preds = %166
  %172 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %173 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0), i32 1, %struct.FILE_POS* %172)
  br label %174

; <label>:174                                     ; preds = %171, %166
  %175 = call i8* @strcat(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @g_expr, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #5
  %176 = call i64 @strlen(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @g_expr, i32 0, i32 0)) #6
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* @g_expr_index, align 4
  %178 = load i32, i32* @g_expr_depth, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* @g_expr_depth, align 4
  %180 = load i8*, i8** %charPtr, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %charPtr, align 8
  %182 = call i8* @PDFPage_CollectExpr(i8* %181, i32* %hasResult2, float* %value1)
  store i8* %182, i8** %charPtr, align 8
  %183 = load i32, i32* %hasResult2, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %194

; <label>:185                                     ; preds = %174
  %186 = load i8*, i8** %strPtr, align 8
  %187 = load float, float* %value1, align 4
  %188 = fpext float %187 to double
  %189 = call i32 (i8*, i8*, ...) @sprintf(i8* %186, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), double %188) #5
  %190 = load i8*, i8** %strPtr, align 8
  %191 = call i64 @strlen(i8* %190) #6
  %192 = load i8*, i8** %strPtr, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 %191
  store i8* %193, i8** %strPtr, align 8
  br label %194

; <label>:194                                     ; preds = %185, %174
  br label %202

; <label>:195                                     ; preds = %133
  %196 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %197 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 37, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct.FILE_POS* %196)
  %198 = load i8*, i8** %strPtr, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %strPtr, align 8
  store i8 95, i8* %198, align 1
  %200 = load i8*, i8** %strPtr, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %strPtr, align 8
  store i8 95, i8* %200, align 1
  br label %202

; <label>:202                                     ; preds = %195, %194
  br label %203

; <label>:203                                     ; preds = %202, %122
  br label %204

; <label>:204                                     ; preds = %203, %111
  br label %205

; <label>:205                                     ; preds = %204, %65
  br label %212

; <label>:206                                     ; preds = %52, %40
  %207 = load i8*, i8** %charPtr, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %charPtr, align 8
  %209 = load i8, i8* %207, align 1
  %210 = load i8*, i8** %strPtr, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %strPtr, align 8
  store i8 %209, i8* %210, align 1
  br label %212

; <label>:212                                     ; preds = %206, %205
  br label %35

; <label>:213                                     ; preds = %35
  %214 = load i8*, i8** %strPtr, align 8
  store i8 0, i8* %214, align 1
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @PDFPage_FlushBuffer(%struct._IO_FILE* %215)
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %217 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  call void @PDFPage_Write(%struct._IO_FILE* %216, i8* %217)
  br label %218

; <label>:218                                     ; preds = %213, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @PDFPage_CollectExpr(i8* %charPtr, i32* %outHasResult, float* %outResult) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca float*, align 8
  %ch = alloca i8, align 1
  store i8* %charPtr, i8** %1, align 8
  store i32* %outHasResult, i32** %2, align 8
  store float* %outResult, float** %3, align 8
  %4 = load i32*, i32** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

; <label>:5                                       ; preds = %53, %0
  %6 = load i8*, i8** %1, align 8
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %54

; <label>:10                                      ; preds = %5
  %11 = load i32, i32* @g_expr_index, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp uge i64 %12, 512
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %10
  %15 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %16 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 34, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.80, i32 0, i32 0), i32 1, %struct.FILE_POS* %15)
  br label %17

; <label>:17                                      ; preds = %14, %10
  %18 = load i8*, i8** %1, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %1, align 8
  %20 = load i8, i8* %18, align 1
  store i8 %20, i8* %ch, align 1
  %21 = load i32, i32* @g_expr_index, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @g_expr_index, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds [512 x i8], [512 x i8]* @g_expr, i32 0, i64 %23
  store i8 %20, i8* %24, align 1
  %25 = load i8, i8* %ch, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 40
  br i1 %27, label %28, label %31

; <label>:28                                      ; preds = %17
  %29 = load i32, i32* @g_expr_depth, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @g_expr_depth, align 4
  br label %53

; <label>:31                                      ; preds = %17
  %32 = load i8, i8* %ch, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 41
  br i1 %34, label %35, label %52

; <label>:35                                      ; preds = %31
  %36 = load i32, i32* @g_expr_depth, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %38, %struct.FILE_POS* %39)
  %40 = load i32, i32* @g_expr_depth, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* @g_expr_depth, align 4
  %42 = load i32, i32* @g_expr_depth, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

; <label>:44                                      ; preds = %35
  %45 = load i32, i32* @g_expr_index, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [512 x i8], [512 x i8]* @g_expr, i32 0, i64 %46
  store i8 0, i8* %47, align 1
  %48 = load float*, float** %3, align 8
  %49 = call i8* @PDFPage_EvalExpr(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @g_expr, i32 0, i32 0), float* %48)
  %50 = load i32*, i32** %2, align 8
  store i32 1, i32* %50, align 4
  br label %54

; <label>:51                                      ; preds = %35
  br label %52

; <label>:52                                      ; preds = %51, %31
  br label %53

; <label>:53                                      ; preds = %52, %28
  br label %5

; <label>:54                                      ; preds = %44, %5
  %55 = load i8*, i8** %1, align 8
  ret i8* %55
}

; Function Attrs: nounwind uwtable
define internal i8* @PDFPage_CollectLink(i8* %charPtr) #0 {
  %1 = alloca i8*, align 8
  %ch = alloca i8, align 1
  store i8* %charPtr, i8** %1, align 8
  br label %2

; <label>:2                                       ; preds = %75, %0
  %3 = load i8*, i8** %1, align 8
  %4 = load i8, i8* %3, align 1
  %5 = zext i8 %4 to i32
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %76

; <label>:7                                       ; preds = %2
  %8 = load i32, i32* @g_link_index, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp uge i64 %9, 512
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %7
  %12 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %13 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 35, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.94, i32 0, i32 0), i32 1, %struct.FILE_POS* %12)
  br label %14

; <label>:14                                      ; preds = %11, %7
  %15 = load i8*, i8** %1, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %1, align 8
  %17 = load i8, i8* %15, align 1
  store i8 %17, i8* %ch, align 1
  %18 = load i32, i32* @g_link_index, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @g_link_index, align 4
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds [512 x i8], [512 x i8]* @g_link, i32 0, i64 %20
  store i8 %17, i8* %21, align 1
  %22 = load i8, i8* %ch, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 60
  br i1 %24, label %25, label %40

; <label>:25                                      ; preds = %14
  %26 = load i8*, i8** %1, align 8
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 60
  br i1 %29, label %30, label %40

; <label>:30                                      ; preds = %25
  %31 = load i8*, i8** %1, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %1, align 8
  %33 = load i8, i8* %31, align 1
  %34 = load i32, i32* @g_link_index, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @g_link_index, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds [512 x i8], [512 x i8]* @g_link, i32 0, i64 %36
  store i8 %33, i8* %37, align 1
  %38 = load i32, i32* @g_link_depth, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @g_link_depth, align 4
  br label %75

; <label>:40                                      ; preds = %25, %14
  %41 = load i8, i8* %ch, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 62
  br i1 %43, label %44, label %74

; <label>:44                                      ; preds = %40
  %45 = load i8*, i8** %1, align 8
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 62
  br i1 %48, label %49, label %74

; <label>:49                                      ; preds = %44
  %50 = load i32, i32* @g_link_depth, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %52, %struct.FILE_POS* %53)
  %54 = load i32, i32* @g_link_depth, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* @g_link_depth, align 4
  %56 = load i32, i32* @g_link_depth, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65

; <label>:58                                      ; preds = %49
  %59 = load i32, i32* @g_link_index, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* @g_link_index, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [512 x i8], [512 x i8]* @g_link, i32 0, i64 %61
  store i8 0, i8* %62, align 1
  call void @PDFPage_ProcessLinkKeyword()
  %63 = load i8*, i8** %1, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %1, align 8
  br label %76

; <label>:65                                      ; preds = %49
  %66 = load i8*, i8** %1, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %1, align 8
  %68 = load i8, i8* %66, align 1
  %69 = load i32, i32* @g_link_index, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @g_link_index, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds [512 x i8], [512 x i8]* @g_link, i32 0, i64 %71
  store i8 %68, i8* %72, align 1
  br label %73

; <label>:73                                      ; preds = %65
  br label %74

; <label>:74                                      ; preds = %73, %44, %40
  br label %75

; <label>:75                                      ; preds = %74, %30
  br label %2

; <label>:76                                      ; preds = %58, %2
  %77 = load i8*, i8** %1, align 8
  ret i8* %77
}

; Function Attrs: nounwind uwtable
define internal i32 @PDFKeyword_Find(i32 %in_number_of_array_elements, i8** %in_keyword_array, i8* %in_str) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  store i32 %in_number_of_array_elements, i32* %1, align 4
  store i8** %in_keyword_array, i8*** %2, align 8
  store i8* %in_str, i8** %3, align 8
  store i32 0, i32* %i, align 4
  br label %4

; <label>:4                                       ; preds = %28, %0
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %31

; <label>:8                                       ; preds = %4
  %9 = load i32, i32* %i, align 4
  %10 = zext i32 %9 to i64
  %11 = load i8**, i8*** %2, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 %10
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @strlen(i8* %13) #6
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %len, align 4
  %16 = load i32, i32* %i, align 4
  %17 = zext i32 %16 to i64
  %18 = load i8**, i8*** %2, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 %17
  %20 = load i8*, i8** %19, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* %len, align 4
  %23 = zext i32 %22 to i64
  %24 = call i32 @memcmp(i8* %20, i8* %21, i64 %23) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %8
  br label %31

; <label>:27                                      ; preds = %8
  br label %28

; <label>:28                                      ; preds = %27
  %29 = load i32, i32* %i, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %i, align 4
  br label %4

; <label>:31                                      ; preds = %26, %4
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %1, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %37

; <label>:35                                      ; preds = %31
  %36 = load i32, i32* %i, align 4
  br label %38

; <label>:37                                      ; preds = %31
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ -1, %37 ]
  ret i32 %39
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind uwtable
define internal i8* @PDFPage_ProcessDocInfoKeyword(i8* %charPtr, i32 %i) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  store i8* %charPtr, i8** %1, align 8
  store i32 %i, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %84 [
    i32 0, label %4
    i32 1, label %24
    i32 2, label %44
    i32 3, label %64
  ]

; <label>:4                                       ; preds = %0
  %5 = load i8*, i8** @g_doc_author, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %9

; <label>:7                                       ; preds = %4
  %8 = load i8*, i8** @g_doc_author, align 8
  call void @free(i8* %8) #5
  br label %9

; <label>:9                                       ; preds = %7, %4
  %10 = load i8*, i8** %1, align 8
  %11 = call i64 @strlen(i8* %10) #6
  %12 = add i64 %11, 1
  %13 = call noalias i8* @malloc(i64 %12) #5
  store i8* %13, i8** @g_doc_author, align 8
  %14 = load i8*, i8** @g_doc_author, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %19

; <label>:16                                      ; preds = %9
  %17 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %18 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 26, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.122, i32 0, i32 0), i32 2, %struct.FILE_POS* %17)
  br label %23

; <label>:19                                      ; preds = %9
  %20 = load i8*, i8** @g_doc_author, align 8
  %21 = load i8*, i8** %1, align 8
  %22 = call i8* @strcpy(i8* %20, i8* %21) #5
  br label %23

; <label>:23                                      ; preds = %19, %16
  br label %84

; <label>:24                                      ; preds = %0
  %25 = load i8*, i8** @g_doc_title, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %29

; <label>:27                                      ; preds = %24
  %28 = load i8*, i8** @g_doc_title, align 8
  call void @free(i8* %28) #5
  br label %29

; <label>:29                                      ; preds = %27, %24
  %30 = load i8*, i8** %1, align 8
  %31 = call i64 @strlen(i8* %30) #6
  %32 = add i64 %31, 1
  %33 = call noalias i8* @malloc(i64 %32) #5
  store i8* %33, i8** @g_doc_title, align 8
  %34 = load i8*, i8** @g_doc_title, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %39

; <label>:36                                      ; preds = %29
  %37 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %38 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 27, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.123, i32 0, i32 0), i32 2, %struct.FILE_POS* %37)
  br label %43

; <label>:39                                      ; preds = %29
  %40 = load i8*, i8** @g_doc_title, align 8
  %41 = load i8*, i8** %1, align 8
  %42 = call i8* @strcpy(i8* %40, i8* %41) #5
  br label %43

; <label>:43                                      ; preds = %39, %36
  br label %84

; <label>:44                                      ; preds = %0
  %45 = load i8*, i8** @g_doc_subject, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %49

; <label>:47                                      ; preds = %44
  %48 = load i8*, i8** @g_doc_subject, align 8
  call void @free(i8* %48) #5
  br label %49

; <label>:49                                      ; preds = %47, %44
  %50 = load i8*, i8** %1, align 8
  %51 = call i64 @strlen(i8* %50) #6
  %52 = add i64 %51, 1
  %53 = call noalias i8* @malloc(i64 %52) #5
  store i8* %53, i8** @g_doc_subject, align 8
  %54 = load i8*, i8** @g_doc_subject, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %59

; <label>:56                                      ; preds = %49
  %57 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %58 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 47, i32 28, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.124, i32 0, i32 0), i32 2, %struct.FILE_POS* %57)
  br label %63

; <label>:59                                      ; preds = %49
  %60 = load i8*, i8** @g_doc_subject, align 8
  %61 = load i8*, i8** %1, align 8
  %62 = call i8* @strcpy(i8* %60, i8* %61) #5
  br label %63

; <label>:63                                      ; preds = %59, %56
  br label %84

; <label>:64                                      ; preds = %0
  %65 = load i8*, i8** @g_doc_keywords, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %69

; <label>:67                                      ; preds = %64
  %68 = load i8*, i8** @g_doc_keywords, align 8
  call void @free(i8* %68) #5
  br label %69

; <label>:69                                      ; preds = %67, %64
  %70 = load i8*, i8** %1, align 8
  %71 = call i64 @strlen(i8* %70) #6
  %72 = add i64 %71, 1
  %73 = call noalias i8* @malloc(i64 %72) #5
  store i8* %73, i8** @g_doc_keywords, align 8
  %74 = load i8*, i8** @g_doc_keywords, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %79

; <label>:76                                      ; preds = %69
  %77 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %78 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 29, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.125, i32 0, i32 0), i32 2, %struct.FILE_POS* %77)
  br label %83

; <label>:79                                      ; preds = %69
  %80 = load i8*, i8** @g_doc_keywords, align 8
  %81 = load i8*, i8** %1, align 8
  %82 = call i8* @strcpy(i8* %80, i8* %81) #5
  br label %83

; <label>:83                                      ; preds = %79, %76
  br label %84

; <label>:84                                      ; preds = %0, %83, %63, %43, %23
  %85 = load i8*, i8** %1, align 8
  %86 = load i8*, i8** %1, align 8
  %87 = call i64 @strlen(i8* %86) #6
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  ret i8* %88
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @PDFPage_PrintUnderline(%struct._IO_FILE* %in_fp, i32 %in_x1, i32 %in_x2, i32 %in_y, i32 %in_thickness) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %str = alloca [512 x i8], align 16
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  store i32 %in_x1, i32* %2, align 4
  store i32 %in_x2, i32* %3, align 4
  store i32 %in_y, i32* %4, align 4
  store i32 %in_thickness, i32* %5, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @PDFPage_FlushBuffer(%struct._IO_FILE* %6)
  %7 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0), i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #5
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %15 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  call void @PDFPage_Write(%struct._IO_FILE* %14, i8* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFPage_Init(%struct._IO_FILE* %in_fp, float %in_scale_factor, i32 %in_line_width) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %entry = alloca %struct.t_font_list_entry*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  store float %in_scale_factor, float* %2, align 4
  store i32 %in_line_width, i32* %3, align 4
  store i32 0, i32* @g_page_uses_fonts, align 4
  store i32 0, i32* @g_page_has_text, align 4
  store i32 0, i32* @g_page_has_graphics, align 4
  store i32 0, i32* @g_page_contents_obj_num, align 4
  store i32 0, i32* @g_page_length_obj_num, align 4
  store i32 0, i32* @g_page_start_offset, align 4
  %4 = load float, float* %2, align 4
  store float %4, float* @g_page_v_scale_factor, align 4
  store float %4, float* @g_page_h_scale_factor, align 4
  store i32 0, i32* @g_page_v_origin, align 4
  store i32 0, i32* @g_page_h_origin, align 4
  %5 = load i32, i32* %3, align 4
  store i32 %5, i32* @g_page_line_width, align 4
  store i32 0, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_graphics_vars, i32 0, i64 0), align 4
  store i32 0, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_graphics_vars, i32 0, i64 1), align 4
  store i32 0, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_graphics_vars, i32 0, i64 2), align 4
  store i32 0, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_graphics_vars, i32 0, i64 3), align 4
  store i32 0, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_units, i32 0, i64 4), align 4
  store i32 0, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_units, i32 0, i64 5), align 4
  store i32 0, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_units, i32 0, i64 6), align 4
  store i32 0, i32* @g_ET_pending, align 4
  store i32 0, i32* @g_TJ_pending, align 4
  store i32 0, i32* @g_valid_text_matrix, align 4
  %6 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** @g_font_list, align 8
  store %struct.t_font_list_entry* %6, %struct.t_font_list_entry** %entry, align 8
  br label %7

; <label>:7                                       ; preds = %10, %0
  %8 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry, align 8
  %9 = icmp ne %struct.t_font_list_entry* %8, null
  br i1 %9, label %10, label %16

; <label>:10                                      ; preds = %7
  %11 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry, align 8
  %12 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %11, i32 0, i32 7
  store i32 0, i32* %12, align 4
  %13 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry, align 8
  %14 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %13, i32 0, i32 0
  %15 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %14, align 8
  store %struct.t_font_list_entry* %15, %struct.t_font_list_entry** %entry, align 8
  br label %7

; <label>:16                                      ; preds = %7
  store %struct.t_qsave_entry* null, %struct.t_qsave_entry** @g_qsave_stack, align 8
  store %struct.t_qsave_marking_entry* null, %struct.t_qsave_marking_entry** @g_qsave_marking_stack, align 8
  store i32 0, i32* @g_buffer_pos, align 4
  store i8 0, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @g_buffer, i32 0, i64 0), align 1
  store i32 0, i32* @g_in_buffering_mode, align 4
  store i32 1, i32* @g_in_buffering_mode, align 4
  %17 = load i32, i32* @g_page_count, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* @g_page_count, align 4
  %19 = call i32 @PDFObject_New()
  store i32 %19, i32* @g_page_object_num, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFPage_Cleanup(%struct._IO_FILE* %in_fp) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %hasAnnot = alloca i32, align 4
  %page_length = alloca i32, align 4
  %entry = alloca %struct.t_font_list_entry*, align 8
  %source = alloca %struct.t_source_annot_entry*, align 8
  %wanted_block_num = alloca i32, align 4
  %block_pos = alloca i32, align 4
  %the_block = alloca %struct.t_page_block*, align 8
  %entry1 = alloca %struct.t_font_list_entry*, align 8
  %entry2 = alloca %struct.t_source_annot_entry*, align 8
  %previous_entry = alloca %struct.t_source_annot_entry*, align 8
  %next_entry = alloca %struct.t_source_annot_entry*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  store i32 0, i32* %hasAnnot, align 4
  %2 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** @g_qsave_stack, align 8
  %3 = icmp eq %struct.t_qsave_entry* %2, null
  %4 = zext i1 %3 to i32
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %4, %struct.FILE_POS* %5)
  %6 = load i32, i32* @g_page_contents_obj_num, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %34

; <label>:8                                       ; preds = %0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %10 = call i32 @PDFPage_End(%struct._IO_FILE* %9)
  store i32 %10, i32* %page_length, align 4
  %11 = load i32, i32* @g_PDF_debug, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

; <label>:13                                      ; preds = %8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %15 = load i32, i32* @g_page_count, align 4
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i32 0, i32 0), i32 %15)
  br label %17

; <label>:17                                      ; preds = %13, %8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %19 = load i32, i32* @g_page_length_obj_num, align 4
  call void @PDFObject_WriteObj(%struct._IO_FILE* %18, i32 %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %21 = load i32, i32* %page_length, align 4
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i32 %21)
  %23 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** @g_font_list, align 8
  store %struct.t_font_list_entry* %23, %struct.t_font_list_entry** %entry, align 8
  br label %24

; <label>:24                                      ; preds = %27, %17
  %25 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry, align 8
  %26 = icmp ne %struct.t_font_list_entry* %25, null
  br i1 %26, label %27, label %33

; <label>:27                                      ; preds = %24
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %29 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry, align 8
  call void @PDFFont_WriteFontResource(%struct._IO_FILE* %28, %struct.t_font_list_entry* %29)
  %30 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry, align 8
  %31 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %30, i32 0, i32 0
  %32 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %31, align 8
  store %struct.t_font_list_entry* %32, %struct.t_font_list_entry** %entry, align 8
  br label %24

; <label>:33                                      ; preds = %24
  br label %34

; <label>:34                                      ; preds = %33, %0
  %35 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** @g_source_annot_list, align 8
  store %struct.t_source_annot_entry* %35, %struct.t_source_annot_entry** %source, align 8
  br label %36

; <label>:36                                      ; preds = %48, %34
  %37 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  %38 = icmp ne %struct.t_source_annot_entry* %37, null
  br i1 %38, label %39, label %52

; <label>:39                                      ; preds = %36
  %40 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  %41 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @g_page_object_num, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

; <label>:45                                      ; preds = %39
  store i32 1, i32* %hasAnnot, align 4
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %47 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  call void @PDFSourceAnnot_Write(%struct._IO_FILE* %46, %struct.t_source_annot_entry* %47)
  br label %48

; <label>:48                                      ; preds = %45, %39
  %49 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  %50 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %49, i32 0, i32 0
  %51 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %50, align 8
  store %struct.t_source_annot_entry* %51, %struct.t_source_annot_entry** %source, align 8
  br label %36

; <label>:52                                      ; preds = %36
  %53 = load i32, i32* @g_page_count, align 4
  %54 = sub i32 %53, 1
  %55 = udiv i32 %54, 64
  store i32 %55, i32* %wanted_block_num, align 4
  %56 = load i32, i32* @g_page_count, align 4
  %57 = sub i32 %56, 1
  %58 = urem i32 %57, 64
  store i32 %58, i32* %block_pos, align 4
  %59 = load %struct.t_page_block*, %struct.t_page_block** @g_cur_page_block, align 8
  store %struct.t_page_block* %59, %struct.t_page_block** %the_block, align 8
  %60 = load i32, i32* %block_pos, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %91

; <label>:62                                      ; preds = %52
  %63 = call noalias i8* @malloc(i64 264) #5
  %64 = bitcast i8* %63 to %struct.t_page_block*
  store %struct.t_page_block* %64, %struct.t_page_block** %the_block, align 8
  %65 = load %struct.t_page_block*, %struct.t_page_block** %the_block, align 8
  %66 = icmp eq %struct.t_page_block* %65, null
  br i1 %66, label %67, label %70

; <label>:67                                      ; preds = %62
  %68 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %69 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i32 0, i32 0), i32 1, %struct.FILE_POS* %68)
  br label %70

; <label>:70                                      ; preds = %67, %62
  %71 = load i32, i32* %wanted_block_num, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %79

; <label>:73                                      ; preds = %70
  %74 = load %struct.t_page_block*, %struct.t_page_block** @g_page_block_list, align 8
  %75 = icmp eq %struct.t_page_block* %74, null
  %76 = zext i1 %75 to i32
  %77 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %76, %struct.FILE_POS* %77)
  %78 = load %struct.t_page_block*, %struct.t_page_block** %the_block, align 8
  store %struct.t_page_block* %78, %struct.t_page_block** @g_page_block_list, align 8
  br label %87

; <label>:79                                      ; preds = %70
  %80 = load %struct.t_page_block*, %struct.t_page_block** @g_cur_page_block, align 8
  %81 = icmp ne %struct.t_page_block* %80, null
  %82 = zext i1 %81 to i32
  %83 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %82, %struct.FILE_POS* %83)
  %84 = load %struct.t_page_block*, %struct.t_page_block** %the_block, align 8
  %85 = load %struct.t_page_block*, %struct.t_page_block** @g_cur_page_block, align 8
  %86 = getelementptr inbounds %struct.t_page_block, %struct.t_page_block* %85, i32 0, i32 0
  store %struct.t_page_block* %84, %struct.t_page_block** %86, align 8
  br label %87

; <label>:87                                      ; preds = %79, %73
  %88 = load %struct.t_page_block*, %struct.t_page_block** %the_block, align 8
  %89 = getelementptr inbounds %struct.t_page_block, %struct.t_page_block* %88, i32 0, i32 0
  store %struct.t_page_block* null, %struct.t_page_block** %89, align 8
  %90 = load %struct.t_page_block*, %struct.t_page_block** %the_block, align 8
  store %struct.t_page_block* %90, %struct.t_page_block** @g_cur_page_block, align 8
  br label %96

; <label>:91                                      ; preds = %52
  %92 = load %struct.t_page_block*, %struct.t_page_block** %the_block, align 8
  %93 = icmp ne %struct.t_page_block* %92, null
  %94 = zext i1 %93 to i32
  %95 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %94, %struct.FILE_POS* %95)
  br label %96

; <label>:96                                      ; preds = %91, %87
  %97 = load i32, i32* @g_PDF_debug, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

; <label>:99                                      ; preds = %96
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %101 = load i32, i32* @g_page_count, align 4
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i32 0, i32 0), i32 %101)
  br label %103

; <label>:103                                     ; preds = %99, %96
  %104 = load i32, i32* @g_page_object_num, align 4
  %105 = load i32, i32* %block_pos, align 4
  %106 = zext i32 %105 to i64
  %107 = load %struct.t_page_block*, %struct.t_page_block** %the_block, align 8
  %108 = getelementptr inbounds %struct.t_page_block, %struct.t_page_block* %107, i32 0, i32 1
  %109 = getelementptr inbounds [64 x i32], [64 x i32]* %108, i32 0, i64 %106
  store i32 %104, i32* %109, align 4
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %111 = load i32, i32* @g_page_object_num, align 4
  call void @PDFObject_WriteObj(%struct._IO_FILE* %110, i32 %111)
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %113 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), %struct._IO_FILE* %112)
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %115 = load i32, i32* @g_doc_h_bound, align 4
  %116 = load i32, i32* @g_doc_v_bound, align 4
  %117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), i32 %115, i32 %116)
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %119 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), %struct._IO_FILE* %118)
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %121 = load i32, i32* @g_pages_root, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %120, i32 %121)
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %123 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), %struct._IO_FILE* %122)
  %124 = load i32, i32* @g_page_contents_obj_num, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

; <label>:126                                     ; preds = %103
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %128 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), %struct._IO_FILE* %127)
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %130 = load i32, i32* @g_page_contents_obj_num, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %129, i32 %130)
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %132 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), %struct._IO_FILE* %131)
  br label %133

; <label>:133                                     ; preds = %126, %103
  %134 = load i32, i32* @g_page_uses_fonts, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %142, label %136

; <label>:136                                     ; preds = %133
  %137 = load i32, i32* @g_page_has_text, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

; <label>:139                                     ; preds = %136
  %140 = load i32, i32* @g_page_has_graphics, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

; <label>:142                                     ; preds = %139, %136, %133
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %144 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), %struct._IO_FILE* %143)
  br label %145

; <label>:145                                     ; preds = %142, %139
  %146 = load i32, i32* @g_page_uses_fonts, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %175

; <label>:148                                     ; preds = %145
  %149 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** @g_font_list, align 8
  store %struct.t_font_list_entry* %149, %struct.t_font_list_entry** %entry1, align 8
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %151 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), %struct._IO_FILE* %150)
  br label %152

; <label>:152                                     ; preds = %168, %148
  %153 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry1, align 8
  %154 = icmp ne %struct.t_font_list_entry* %153, null
  br i1 %154, label %155, label %172

; <label>:155                                     ; preds = %152
  %156 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry1, align 8
  %157 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %168

; <label>:160                                     ; preds = %155
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %162 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry1, align 8
  %163 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* %164)
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %167 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry1, align 8
  call void @PDFFont_WriteObjectRef(%struct._IO_FILE* %166, %struct.t_font_list_entry* %167)
  br label %168

; <label>:168                                     ; preds = %160, %155
  %169 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry1, align 8
  %170 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %169, i32 0, i32 0
  %171 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %170, align 8
  store %struct.t_font_list_entry* %171, %struct.t_font_list_entry** %entry1, align 8
  br label %152

; <label>:172                                     ; preds = %152
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %174 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), %struct._IO_FILE* %173)
  br label %175

; <label>:175                                     ; preds = %172, %145
  %176 = load i32, i32* @g_page_has_text, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %181, label %178

; <label>:178                                     ; preds = %175
  %179 = load i32, i32* @g_page_has_graphics, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %192

; <label>:181                                     ; preds = %178, %175
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %183 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0), %struct._IO_FILE* %182)
  %184 = load i32, i32* @g_page_has_text, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

; <label>:186                                     ; preds = %181
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %188 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), %struct._IO_FILE* %187)
  br label %189

; <label>:189                                     ; preds = %186, %181
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %191 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), %struct._IO_FILE* %190)
  br label %192

; <label>:192                                     ; preds = %189, %178
  %193 = load i32, i32* @g_page_uses_fonts, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %201, label %195

; <label>:195                                     ; preds = %192
  %196 = load i32, i32* @g_page_has_text, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %201, label %198

; <label>:198                                     ; preds = %195
  %199 = load i32, i32* @g_page_has_graphics, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

; <label>:201                                     ; preds = %198, %195, %192
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %203 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), %struct._IO_FILE* %202)
  br label %204

; <label>:204                                     ; preds = %201, %198
  %205 = load i32, i32* %hasAnnot, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %266

; <label>:207                                     ; preds = %204
  %208 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** @g_source_annot_list, align 8
  store %struct.t_source_annot_entry* %208, %struct.t_source_annot_entry** %entry2, align 8
  store %struct.t_source_annot_entry* null, %struct.t_source_annot_entry** %previous_entry, align 8
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %210 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), %struct._IO_FILE* %209)
  br label %211

; <label>:211                                     ; preds = %262, %207
  %212 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry2, align 8
  %213 = icmp ne %struct.t_source_annot_entry* %212, null
  br i1 %213, label %214, label %263

; <label>:214                                     ; preds = %211
  %215 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry2, align 8
  %216 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %215, i32 0, i32 9
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @g_page_object_num, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %257

; <label>:220                                     ; preds = %214
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %222 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), %struct._IO_FILE* %221)
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %224 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry2, align 8
  %225 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %224, i32 0, i32 8
  %226 = load i32, i32* %225, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %223, i32 %226)
  %227 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry2, align 8
  %228 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %227, i32 0, i32 12
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %251

; <label>:231                                     ; preds = %220
  %232 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry2, align 8
  %233 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %232, i32 0, i32 0
  %234 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %233, align 8
  store %struct.t_source_annot_entry* %234, %struct.t_source_annot_entry** %next_entry, align 8
  %235 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** @g_source_annot_list, align 8
  %236 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry2, align 8
  %237 = icmp eq %struct.t_source_annot_entry* %235, %236
  br i1 %237, label %238, label %240

; <label>:238                                     ; preds = %231
  %239 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %next_entry, align 8
  store %struct.t_source_annot_entry* %239, %struct.t_source_annot_entry** @g_source_annot_list, align 8
  br label %240

; <label>:240                                     ; preds = %238, %231
  %241 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %previous_entry, align 8
  %242 = icmp ne %struct.t_source_annot_entry* %241, null
  br i1 %242, label %243, label %247

; <label>:243                                     ; preds = %240
  %244 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %next_entry, align 8
  %245 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %previous_entry, align 8
  %246 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %245, i32 0, i32 0
  store %struct.t_source_annot_entry* %244, %struct.t_source_annot_entry** %246, align 8
  br label %247

; <label>:247                                     ; preds = %243, %240
  %248 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry2, align 8
  %249 = call %struct.t_source_annot_entry* @PDFSourceAnnot_Dispose(%struct.t_source_annot_entry* %248)
  %250 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %next_entry, align 8
  store %struct.t_source_annot_entry* %250, %struct.t_source_annot_entry** %entry2, align 8
  br label %256

; <label>:251                                     ; preds = %220
  %252 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry2, align 8
  store %struct.t_source_annot_entry* %252, %struct.t_source_annot_entry** %previous_entry, align 8
  %253 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry2, align 8
  %254 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %253, i32 0, i32 0
  %255 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %254, align 8
  store %struct.t_source_annot_entry* %255, %struct.t_source_annot_entry** %entry2, align 8
  br label %256

; <label>:256                                     ; preds = %251, %247
  br label %262

; <label>:257                                     ; preds = %214
  %258 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry2, align 8
  store %struct.t_source_annot_entry* %258, %struct.t_source_annot_entry** %previous_entry, align 8
  %259 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry2, align 8
  %260 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %259, i32 0, i32 0
  %261 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %260, align 8
  store %struct.t_source_annot_entry* %261, %struct.t_source_annot_entry** %entry2, align 8
  br label %262

; <label>:262                                     ; preds = %257, %256
  br label %211

; <label>:263                                     ; preds = %211
  %264 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %265 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), %struct._IO_FILE* %264)
  br label %266

; <label>:266                                     ; preds = %263, %204
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %268 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), %struct._IO_FILE* %267)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @PDFPage_End(%struct._IO_FILE* %in_fp) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %page_length = alloca i32, align 4
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  %2 = load i32, i32* @g_in_buffering_mode, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  store i32 0, i32* @g_buffer_pos, align 4
  store i8 0, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @g_buffer, i32 0, i64 0), align 1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @PDFPage_FlushBuffer(%struct._IO_FILE* %5)
  br label %6

; <label>:6                                       ; preds = %4, %0
  %7 = load i32, i32* @g_page_contents_obj_num, align 4
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %9, %struct.FILE_POS* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %12 = call i64 @ftell(%struct._IO_FILE* %11)
  %13 = load i32, i32* @g_page_start_offset, align 4
  %14 = zext i32 %13 to i64
  %15 = sub nsw i64 %12, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %page_length, align 4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %18 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.134, i32 0, i32 0), %struct._IO_FILE* %17)
  %19 = load i32, i32* %page_length, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal void @PDFObject_WriteObj(%struct._IO_FILE* %in_fp, i32 %in_object_number) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i32, align 4
  %block_pos = alloca i32, align 4
  %block = alloca %struct.t_offset_block*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  store i32 %in_object_number, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call %struct.t_offset_block* @PDFObject_FindOffsetBlock(i32 %3, i32* %block_pos)
  store %struct.t_offset_block* %4, %struct.t_offset_block** %block, align 8
  %5 = load i32, i32* %block_pos, align 4
  %6 = zext i32 %5 to i64
  %7 = load %struct.t_offset_block*, %struct.t_offset_block** %block, align 8
  %8 = getelementptr inbounds %struct.t_offset_block, %struct.t_offset_block* %7, i32 0, i32 1
  %9 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i32 0, i64 %6
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %12, %struct.FILE_POS* %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %15 = call i64 @ftell(%struct._IO_FILE* %14)
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* %block_pos, align 4
  %18 = zext i32 %17 to i64
  %19 = load %struct.t_offset_block*, %struct.t_offset_block** %block, align 8
  %20 = getelementptr inbounds %struct.t_offset_block, %struct.t_offset_block* %19, i32 0, i32 1
  %21 = getelementptr inbounds [256 x i32], [256 x i32]* %20, i32 0, i64 %18
  store i32 %16, i32* %21, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %23 = load i32, i32* %2, align 4
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i32 0, i32 0), i32 %23)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDFFont_WriteFontResource(%struct._IO_FILE* %in_fp, %struct.t_font_list_entry* %in_font_entry) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca %struct.t_font_list_entry*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  store %struct.t_font_list_entry* %in_font_entry, %struct.t_font_list_entry** %2, align 8
  %3 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %2, align 8
  %4 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %3, i32 0, i32 6
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %56, label %7

; <label>:7                                       ; preds = %0
  %8 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %2, align 8
  %9 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %8, i32 0, i32 6
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* @g_PDF_debug, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

; <label>:12                                      ; preds = %7
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %14 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %2, align 8
  %15 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %14, i32 0, i32 3
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.136, i32 0, i32 0), i8* %16)
  br label %18

; <label>:18                                      ; preds = %12, %7
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %20 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %2, align 8
  call void @PDFFont_WriteObject(%struct._IO_FILE* %19, %struct.t_font_list_entry* %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %22 = call i32 @fputs(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.137, i32 0, i32 0), %struct._IO_FILE* %21)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %24 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %2, align 8
  %25 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.138, i32 0, i32 0), i8* %26)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %29 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %2, align 8
  %30 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %29, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.139, i32 0, i32 0), i8* %31)
  %33 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %2, align 8
  %34 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @PDFFont_IsOneOfTheBase14Fonts(i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

; <label>:38                                      ; preds = %18
  br label %39

; <label>:39                                      ; preds = %38, %18
  %40 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %2, align 8
  %41 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

; <label>:44                                      ; preds = %39
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %46 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.140, i32 0, i32 0), %struct._IO_FILE* %45)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %48 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %2, align 8
  %49 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %47, i32 %50)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %52 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), %struct._IO_FILE* %51)
  br label %53

; <label>:53                                      ; preds = %44, %39
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %55 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), %struct._IO_FILE* %54)
  br label %56

; <label>:56                                      ; preds = %53, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDFSourceAnnot_Write(%struct._IO_FILE* %in_fp, %struct.t_source_annot_entry* %in_entry) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca %struct.t_source_annot_entry*, align 8
  %target = alloca %struct.t_target_annot_entry*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  store %struct.t_source_annot_entry* %in_entry, %struct.t_source_annot_entry** %2, align 8
  %3 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %2, align 8
  %4 = icmp ne %struct.t_source_annot_entry* %3, null
  %5 = zext i1 %4 to i32
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %5, %struct.FILE_POS* %6)
  %7 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %2, align 8
  %8 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %7, i32 0, i32 1
  %9 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %8, align 8
  store %struct.t_target_annot_entry* %9, %struct.t_target_annot_entry** %target, align 8
  %10 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %2, align 8
  %11 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %10, i32 0, i32 11
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

; <label>:14                                      ; preds = %0
  %15 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %16 = icmp eq %struct.t_target_annot_entry* %15, null
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %14
  br label %141

; <label>:18                                      ; preds = %14, %0
  %19 = load i32, i32* @g_PDF_debug, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

; <label>:21                                      ; preds = %18
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %23 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %2, align 8
  %24 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %2, align 8
  %27 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %26, i32 0, i32 1
  %28 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %27, align 8
  %29 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.155, i32 0, i32 0), i32 %25, i8* %30)
  br label %32

; <label>:32                                      ; preds = %21, %18
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %34 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %2, align 8
  %35 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  call void @PDFObject_WriteObj(%struct._IO_FILE* %33, i32 %36)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %38 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %2, align 8
  %39 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %2, align 8
  %42 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %2, align 8
  %45 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %2, align 8
  %48 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.156, i32 0, i32 0), i32 %40, i32 %43, i32 %46, i32 %49)
  %51 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %2, align 8
  %52 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %136 [
    i32 0, label %54
    i32 1, label %120
    i32 2, label %129
    i32 3, label %135
    i32 4, label %135
    i32 5, label %135
  ]

; <label>:54                                      ; preds = %32
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.157, i32 0, i32 0))
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %58 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %2, align 8
  %59 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %58, i32 0, i32 1
  %60 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %59, align 8
  %61 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %57, i32 %62)
  %63 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %2, align 8
  %64 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %63, i32 0, i32 10
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %114 [
    i32 0, label %66
    i32 1, label %69
    i32 2, label %72
    i32 3, label %78
    i32 4, label %84
    i32 5, label %99
    i32 6, label %102
    i32 7, label %108
  ]

; <label>:66                                      ; preds = %54
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.158, i32 0, i32 0))
  br label %69

; <label>:69                                      ; preds = %54, %66
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.159, i32 0, i32 0))
  br label %117

; <label>:72                                      ; preds = %54
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %74 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %75 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.160, i32 0, i32 0), i32 %76)
  br label %117

; <label>:78                                      ; preds = %54
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %80 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %81 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.161, i32 0, i32 0), i32 %82)
  br label %117

; <label>:84                                      ; preds = %54
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %86 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %87 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %90 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %93 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %96 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.162, i32 0, i32 0), i32 %88, i32 %91, i32 %94, i32 %97)
  br label %117

; <label>:99                                      ; preds = %54
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.163, i32 0, i32 0))
  br label %117

; <label>:102                                     ; preds = %54
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %104 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %105 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.164, i32 0, i32 0), i32 %106)
  br label %117

; <label>:108                                     ; preds = %54
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %110 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %111 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.165, i32 0, i32 0), i32 %112)
  br label %117

; <label>:114                                     ; preds = %54
  %115 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %116 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 18, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.166, i32 0, i32 0), i32 1, %struct.FILE_POS* %115)
  br label %117

; <label>:117                                     ; preds = %114, %108, %102, %99, %84, %78, %72, %69
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0))
  br label %136

; <label>:120                                     ; preds = %32
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %122 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %2, align 8
  %123 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %2, align 8
  %126 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %125, i32 0, i32 3
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.167, i32 0, i32 0), i8* %124, i8* %127)
  br label %136

; <label>:129                                     ; preds = %32
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %131 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %2, align 8
  %132 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %130, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.168, i32 0, i32 0), i8* %133)
  br label %136

; <label>:135                                     ; preds = %32, %32, %32
  br label %136

; <label>:136                                     ; preds = %32, %135, %129, %120, %117
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %137, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0))
  %139 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %2, align 8
  %140 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %139, i32 0, i32 12
  store i32 1, i32* %140, align 4
  br label %141

; <label>:141                                     ; preds = %136, %17
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDFObject_WriteRef(%struct._IO_FILE* %in_fp, i32 %in_object_number) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i32, align 4
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  store i32 %in_object_number, i32* %2, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %4 = load i32, i32* %2, align 4
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.169, i32 0, i32 0), i32 %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDFFont_WriteObjectRef(%struct._IO_FILE* %in_fp, %struct.t_font_list_entry* %in_font_entry) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca %struct.t_font_list_entry*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  store %struct.t_font_list_entry* %in_font_entry, %struct.t_font_list_entry** %2, align 8
  %3 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %2, align 8
  %4 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %7, %struct.FILE_POS* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %10 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %2, align 8
  %11 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %9, i32 %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.t_source_annot_entry* @PDFSourceAnnot_Dispose(%struct.t_source_annot_entry* %in_source_annot) #0 {
  %1 = alloca %struct.t_source_annot_entry*, align 8
  %next_entry = alloca %struct.t_source_annot_entry*, align 8
  store %struct.t_source_annot_entry* %in_source_annot, %struct.t_source_annot_entry** %1, align 8
  %2 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %1, align 8
  %3 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %2, i32 0, i32 0
  %4 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %3, align 8
  store %struct.t_source_annot_entry* %4, %struct.t_source_annot_entry** %next_entry, align 8
  %5 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %1, align 8
  %6 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %5, i32 0, i32 2
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %13

; <label>:9                                       ; preds = %0
  %10 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %1, align 8
  %11 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  call void @free(i8* %12) #5
  br label %13

; <label>:13                                      ; preds = %9, %0
  %14 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %1, align 8
  %15 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %14, i32 0, i32 3
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

; <label>:18                                      ; preds = %13
  %19 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %1, align 8
  %20 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %19, i32 0, i32 3
  %21 = load i8*, i8** %20, align 8
  call void @free(i8* %21) #5
  br label %22

; <label>:22                                      ; preds = %18, %13
  %23 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %1, align 8
  %24 = bitcast %struct.t_source_annot_entry* %23 to i8*
  call void @free(i8* %24) #5
  %25 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %next_entry, align 8
  ret %struct.t_source_annot_entry* %25
}

; Function Attrs: nounwind uwtable
define void @PDFFile_Init(%struct._IO_FILE* %in_fp, i32 %in_h_bound, i32 %in_v_bound, i32 %in_IN, i32 %in_CM, i32 %in_PT, i32 %in_EM) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  store i32 %in_h_bound, i32* %2, align 4
  store i32 %in_v_bound, i32* %3, align 4
  store i32 %in_IN, i32* %4, align 4
  store i32 %in_CM, i32* %5, align 4
  store i32 %in_PT, i32* %6, align 4
  store i32 %in_EM, i32* %7, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %9 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), %struct._IO_FILE* %8)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %11 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), %struct._IO_FILE* %10)
  store i32 0, i32* @g_PDF_debug, align 4
  store i32 1, i32* @g_next_objnum, align 4
  store %struct.t_offset_block* null, %struct.t_offset_block** @g_obj_offset_list, align 8
  store %struct.t_offset_block* null, %struct.t_offset_block** @g_cur_obj_offset_block, align 8
  store %struct.t_font_list_entry* null, %struct.t_font_list_entry** @g_font_list, align 8
  store %struct.t_font_encoding_entry* null, %struct.t_font_encoding_entry** @g_font_encoding_list, align 8
  store i32 0, i32* @g_page_count, align 4
  store %struct.t_page_block* null, %struct.t_page_block** @g_page_block_list, align 8
  store %struct.t_page_block* null, %struct.t_page_block** @g_cur_page_block, align 8
  %12 = call i32 @PDFObject_New()
  store i32 %12, i32* @g_pages_root, align 4
  %13 = load i32, i32* %2, align 4
  store i32 %13, i32* @g_doc_h_bound, align 4
  %14 = load i32, i32* %3, align 4
  store i32 %14, i32* @g_doc_v_bound, align 4
  store i8* null, i8** @g_doc_author, align 8
  store i8* null, i8** @g_doc_title, align 8
  store i8* null, i8** @g_doc_subject, align 8
  store i8* null, i8** @g_doc_keywords, align 8
  store %struct.t_target_annot_entry* null, %struct.t_target_annot_entry** @g_target_annot_list, align 8
  store i32 0, i32* @g_has_exported_targets, align 4
  store %struct.t_source_annot_entry* null, %struct.t_source_annot_entry** @g_source_annot_list, align 8
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_units, i32 0, i64 0), align 4
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_units, i32 0, i64 1), align 4
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_units, i32 0, i64 2), align 4
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_units, i32 0, i64 3), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFFile_Cleanup(%struct._IO_FILE* %in_fp) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %xref_start = alloca i32, align 4
  %catalog_obj_num = alloca i32, align 4
  %info_obj_num = alloca i32, align 4
  %dests_obj_num = alloca i32, align 4
  %source = alloca %struct.t_source_annot_entry*, align 8
  %target = alloca %struct.t_target_annot_entry*, align 8
  %entry = alloca %struct.t_target_annot_entry*, align 8
  %now = alloca i64, align 8
  %date = alloca %struct.tm*, align 8
  %the_block = alloca %struct.t_offset_block*, align 8
  %the_block1 = alloca %struct.t_font_encoding_entry*, align 8
  %the_block2 = alloca %struct.t_font_list_entry*, align 8
  %the_block3 = alloca %struct.t_page_block*, align 8
  %entry4 = alloca %struct.t_source_annot_entry*, align 8
  %str = alloca [512 x i8], align 16
  %entry5 = alloca %struct.t_target_annot_entry*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  %2 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** @g_source_annot_list, align 8
  store %struct.t_source_annot_entry* %2, %struct.t_source_annot_entry** %source, align 8
  br label %3

; <label>:3                                       ; preds = %25, %0
  %4 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  %5 = icmp ne %struct.t_source_annot_entry* %4, null
  br i1 %5, label %6, label %29

; <label>:6                                       ; preds = %3
  %7 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  %8 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %7, i32 0, i32 1
  %9 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %8, align 8
  %10 = icmp eq %struct.t_target_annot_entry* %9, null
  %11 = zext i1 %10 to i32
  %12 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %11, %struct.FILE_POS* %12)
  %13 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  %14 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %13, i32 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = call %struct.t_target_annot_entry* @PDFTargetAnnot_Find(i8* %15)
  store %struct.t_target_annot_entry* %16, %struct.t_target_annot_entry** %target, align 8
  %17 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %18 = icmp ne %struct.t_target_annot_entry* %17, null
  br i1 %18, label %19, label %25

; <label>:19                                      ; preds = %6
  %20 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %21 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  %22 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %21, i32 0, i32 1
  store %struct.t_target_annot_entry* %20, %struct.t_target_annot_entry** %22, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %24 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  call void @PDFSourceAnnot_Write(%struct._IO_FILE* %23, %struct.t_source_annot_entry* %24)
  br label %25

; <label>:25                                      ; preds = %19, %6
  %26 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  %27 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %26, i32 0, i32 0
  %28 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %27, align 8
  store %struct.t_source_annot_entry* %28, %struct.t_source_annot_entry** %source, align 8
  br label %3

; <label>:29                                      ; preds = %3
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @PDFFile_WritePagesObject(%struct._IO_FILE* %30)
  %31 = load i32, i32* @g_has_exported_targets, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %76

; <label>:33                                      ; preds = %29
  %34 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** @g_target_annot_list, align 8
  store %struct.t_target_annot_entry* %34, %struct.t_target_annot_entry** %entry, align 8
  %35 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry, align 8
  %36 = icmp ne %struct.t_target_annot_entry* %35, null
  %37 = zext i1 %36 to i32
  %38 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %37, %struct.FILE_POS* %38)
  %39 = load i32, i32* @g_PDF_debug, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

; <label>:41                                      ; preds = %33
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.44, i32 0, i32 0))
  br label %44

; <label>:44                                      ; preds = %41, %33
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %46 = call i32 @PDFObject_WriteNewObj(%struct._IO_FILE* %45)
  store i32 %46, i32* %dests_obj_num, align 4
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %48 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), %struct._IO_FILE* %47)
  br label %49

; <label>:49                                      ; preds = %69, %44
  %50 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry, align 8
  %51 = icmp ne %struct.t_target_annot_entry* %50, null
  br i1 %51, label %52, label %73

; <label>:52                                      ; preds = %49
  %53 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry, align 8
  %54 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

; <label>:57                                      ; preds = %52
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %59 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry, align 8
  %60 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i8* %61)
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %64 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry, align 8
  %65 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %63, i32 %66)
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.47, i32 0, i32 0))
  br label %69

; <label>:69                                      ; preds = %57, %52
  %70 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry, align 8
  %71 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %70, i32 0, i32 0
  %72 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %71, align 8
  store %struct.t_target_annot_entry* %72, %struct.t_target_annot_entry** %entry, align 8
  br label %49

; <label>:73                                      ; preds = %49
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %75 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), %struct._IO_FILE* %74)
  br label %76

; <label>:76                                      ; preds = %73, %29
  %77 = load i32, i32* @g_PDF_debug, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

; <label>:79                                      ; preds = %76
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.48, i32 0, i32 0))
  br label %82

; <label>:82                                      ; preds = %79, %76
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %84 = call i32 @PDFObject_WriteNewObj(%struct._IO_FILE* %83)
  store i32 %84, i32* %catalog_obj_num, align 4
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %86 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), %struct._IO_FILE* %85)
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %88 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0), %struct._IO_FILE* %87)
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %90 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), %struct._IO_FILE* %89)
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %92 = load i32, i32* @g_pages_root, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %91, i32 %92)
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %94 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), %struct._IO_FILE* %93)
  %95 = load i32, i32* @g_has_exported_targets, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

; <label>:97                                      ; preds = %82
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %99 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), %struct._IO_FILE* %98)
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %101 = load i32, i32* %dests_obj_num, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %100, i32 %101)
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %103 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), %struct._IO_FILE* %102)
  br label %104

; <label>:104                                     ; preds = %97, %82
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %106 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), %struct._IO_FILE* %105)
  %107 = load i32, i32* @g_PDF_debug, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

; <label>:109                                     ; preds = %104
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i32 0, i32 0))
  br label %112

; <label>:112                                     ; preds = %109, %104
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %114 = call i32 @PDFObject_WriteNewObj(%struct._IO_FILE* %113)
  store i32 %114, i32* %info_obj_num, align 4
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %116 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), %struct._IO_FILE* %115)
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.54, i32 0, i32 0))
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.54, i32 0, i32 0))
  %121 = call i64 @time(i64* null) #5
  store i64 %121, i64* %now, align 8
  %122 = call %struct.tm* @localtime(i64* %now) #5
  store %struct.tm* %122, %struct.tm** %date, align 8
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %124 = load %struct.tm*, %struct.tm** %date, align 8
  %125 = getelementptr inbounds %struct.tm, %struct.tm* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1900
  %128 = load %struct.tm*, %struct.tm** %date, align 8
  %129 = getelementptr inbounds %struct.tm, %struct.tm* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  %132 = load %struct.tm*, %struct.tm** %date, align 8
  %133 = getelementptr inbounds %struct.tm, %struct.tm* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.tm*, %struct.tm** %date, align 8
  %136 = getelementptr inbounds %struct.tm, %struct.tm* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.tm*, %struct.tm** %date, align 8
  %139 = getelementptr inbounds %struct.tm, %struct.tm* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.tm*, %struct.tm** %date, align 8
  %142 = getelementptr inbounds %struct.tm, %struct.tm* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.56, i32 0, i32 0), i32 %127, i32 %131, i32 %134, i32 %137, i32 %140, i32 %143)
  %145 = load i8*, i8** @g_doc_author, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %151

; <label>:147                                     ; preds = %112
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %149 = load i8*, i8** @g_doc_author, align 8
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %148, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), i8* %149)
  br label %151

; <label>:151                                     ; preds = %147, %112
  %152 = load i8*, i8** @g_doc_title, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %158

; <label>:154                                     ; preds = %151
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %156 = load i8*, i8** @g_doc_title, align 8
  %157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %155, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i32 0, i32 0), i8* %156)
  br label %158

; <label>:158                                     ; preds = %154, %151
  %159 = load i8*, i8** @g_doc_subject, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %165

; <label>:161                                     ; preds = %158
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %163 = load i8*, i8** @g_doc_subject, align 8
  %164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %162, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i32 0, i32 0), i8* %163)
  br label %165

; <label>:165                                     ; preds = %161, %158
  %166 = load i8*, i8** @g_doc_keywords, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %172

; <label>:168                                     ; preds = %165
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %170 = load i8*, i8** @g_doc_keywords, align 8
  %171 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %169, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i32 0, i32 0), i8* %170)
  br label %172

; <label>:172                                     ; preds = %168, %165
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %174 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), %struct._IO_FILE* %173)
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %176 = call i32 @PDFFile_WriteXREF(%struct._IO_FILE* %175)
  store i32 %176, i32* %xref_start, align 4
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %178 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i32 0, i32 0), %struct._IO_FILE* %177)
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %180 = load i32, i32* @g_next_objnum, align 4
  %181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i32 %180)
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %183 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), %struct._IO_FILE* %182)
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %185 = load i32, i32* %catalog_obj_num, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %184, i32 %185)
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %187 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), %struct._IO_FILE* %186)
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %189 = load i32, i32* %info_obj_num, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %188, i32 %189)
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %191 = load i32, i32* %xref_start, align 4
  %192 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %190, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i32 0, i32 0), i32 %191)
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %194 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), %struct._IO_FILE* %193)
  br label %195

; <label>:195                                     ; preds = %198, %172
  %196 = load %struct.t_offset_block*, %struct.t_offset_block** @g_obj_offset_list, align 8
  %197 = icmp ne %struct.t_offset_block* %196, null
  br i1 %197, label %198, label %205

; <label>:198                                     ; preds = %195
  %199 = load %struct.t_offset_block*, %struct.t_offset_block** @g_obj_offset_list, align 8
  store %struct.t_offset_block* %199, %struct.t_offset_block** %the_block, align 8
  %200 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %201 = getelementptr inbounds %struct.t_offset_block, %struct.t_offset_block* %200, i32 0, i32 0
  %202 = load %struct.t_offset_block*, %struct.t_offset_block** %201, align 8
  store %struct.t_offset_block* %202, %struct.t_offset_block** @g_obj_offset_list, align 8
  %203 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %204 = bitcast %struct.t_offset_block* %203 to i8*
  call void @free(i8* %204) #5
  br label %195

; <label>:205                                     ; preds = %195
  br label %206

; <label>:206                                     ; preds = %209, %205
  %207 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** @g_font_encoding_list, align 8
  %208 = icmp ne %struct.t_font_encoding_entry* %207, null
  br i1 %208, label %209, label %219

; <label>:209                                     ; preds = %206
  %210 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** @g_font_encoding_list, align 8
  store %struct.t_font_encoding_entry* %210, %struct.t_font_encoding_entry** %the_block1, align 8
  %211 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %the_block1, align 8
  %212 = getelementptr inbounds %struct.t_font_encoding_entry, %struct.t_font_encoding_entry* %211, i32 0, i32 0
  %213 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %212, align 8
  store %struct.t_font_encoding_entry* %213, %struct.t_font_encoding_entry** @g_font_encoding_list, align 8
  %214 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %the_block1, align 8
  %215 = getelementptr inbounds %struct.t_font_encoding_entry, %struct.t_font_encoding_entry* %214, i32 0, i32 2
  %216 = load i8*, i8** %215, align 8
  call void @free(i8* %216) #5
  %217 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %the_block1, align 8
  %218 = bitcast %struct.t_font_encoding_entry* %217 to i8*
  call void @free(i8* %218) #5
  br label %206

; <label>:219                                     ; preds = %206
  br label %220

; <label>:220                                     ; preds = %223, %219
  %221 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** @g_font_list, align 8
  %222 = icmp ne %struct.t_font_list_entry* %221, null
  br i1 %222, label %223, label %239

; <label>:223                                     ; preds = %220
  %224 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** @g_font_list, align 8
  store %struct.t_font_list_entry* %224, %struct.t_font_list_entry** %the_block2, align 8
  %225 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %the_block2, align 8
  %226 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %225, i32 0, i32 0
  %227 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %226, align 8
  store %struct.t_font_list_entry* %227, %struct.t_font_list_entry** @g_font_list, align 8
  %228 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %the_block2, align 8
  %229 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %228, i32 0, i32 1
  %230 = load i8*, i8** %229, align 8
  call void @free(i8* %230) #5
  %231 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %the_block2, align 8
  %232 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %231, i32 0, i32 2
  %233 = load i8*, i8** %232, align 8
  call void @free(i8* %233) #5
  %234 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %the_block2, align 8
  %235 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %234, i32 0, i32 3
  %236 = load i8*, i8** %235, align 8
  call void @free(i8* %236) #5
  %237 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %the_block2, align 8
  %238 = bitcast %struct.t_font_list_entry* %237 to i8*
  call void @free(i8* %238) #5
  br label %220

; <label>:239                                     ; preds = %220
  br label %240

; <label>:240                                     ; preds = %243, %239
  %241 = load %struct.t_page_block*, %struct.t_page_block** @g_page_block_list, align 8
  %242 = icmp ne %struct.t_page_block* %241, null
  br i1 %242, label %243, label %250

; <label>:243                                     ; preds = %240
  %244 = load %struct.t_page_block*, %struct.t_page_block** @g_page_block_list, align 8
  store %struct.t_page_block* %244, %struct.t_page_block** %the_block3, align 8
  %245 = load %struct.t_page_block*, %struct.t_page_block** %the_block3, align 8
  %246 = getelementptr inbounds %struct.t_page_block, %struct.t_page_block* %245, i32 0, i32 0
  %247 = load %struct.t_page_block*, %struct.t_page_block** %246, align 8
  store %struct.t_page_block* %247, %struct.t_page_block** @g_page_block_list, align 8
  %248 = load %struct.t_page_block*, %struct.t_page_block** %the_block3, align 8
  %249 = bitcast %struct.t_page_block* %248 to i8*
  call void @free(i8* %249) #5
  br label %240

; <label>:250                                     ; preds = %240
  br label %251

; <label>:251                                     ; preds = %271, %250
  %252 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** @g_source_annot_list, align 8
  %253 = icmp ne %struct.t_source_annot_entry* %252, null
  br i1 %253, label %254, label %274

; <label>:254                                     ; preds = %251
  %255 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** @g_source_annot_list, align 8
  store %struct.t_source_annot_entry* %255, %struct.t_source_annot_entry** %entry4, align 8
  %256 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry4, align 8
  %257 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %256, i32 0, i32 1
  %258 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %257, align 8
  %259 = icmp eq %struct.t_target_annot_entry* %258, null
  br i1 %259, label %260, label %271

; <label>:260                                     ; preds = %254
  %261 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %262 = call i8* @strcpy(i8* %261, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.67, i32 0, i32 0)) #5
  %263 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %264 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry4, align 8
  %265 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %264, i32 0, i32 2
  %266 = load i8*, i8** %265, align 8
  %267 = call i8* @strcat(i8* %263, i8* %266) #5
  %268 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %269 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %270 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0), i32 2, %struct.FILE_POS* %268, i8* %269)
  br label %271

; <label>:271                                     ; preds = %260, %254
  %272 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry4, align 8
  %273 = call %struct.t_source_annot_entry* @PDFSourceAnnot_Dispose(%struct.t_source_annot_entry* %272)
  store %struct.t_source_annot_entry* %273, %struct.t_source_annot_entry** @g_source_annot_list, align 8
  br label %251

; <label>:274                                     ; preds = %251
  br label %275

; <label>:275                                     ; preds = %278, %274
  %276 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** @g_target_annot_list, align 8
  %277 = icmp ne %struct.t_target_annot_entry* %276, null
  br i1 %277, label %278, label %288

; <label>:278                                     ; preds = %275
  %279 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** @g_target_annot_list, align 8
  store %struct.t_target_annot_entry* %279, %struct.t_target_annot_entry** %entry5, align 8
  %280 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry5, align 8
  %281 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %280, i32 0, i32 0
  %282 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %281, align 8
  store %struct.t_target_annot_entry* %282, %struct.t_target_annot_entry** @g_target_annot_list, align 8
  %283 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry5, align 8
  %284 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %283, i32 0, i32 1
  %285 = load i8*, i8** %284, align 8
  call void @free(i8* %285) #5
  %286 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry5, align 8
  %287 = bitcast %struct.t_target_annot_entry* %286 to i8*
  call void @free(i8* %287) #5
  br label %275

; <label>:288                                     ; preds = %275
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.t_target_annot_entry* @PDFTargetAnnot_Find(i8* %in_annot_name) #0 {
  %1 = alloca i8*, align 8
  %entry = alloca %struct.t_target_annot_entry*, align 8
  store i8* %in_annot_name, i8** %1, align 8
  %2 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** @g_target_annot_list, align 8
  store %struct.t_target_annot_entry* %2, %struct.t_target_annot_entry** %entry, align 8
  br label %3

; <label>:3                                       ; preds = %14, %0
  %4 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry, align 8
  %5 = icmp ne %struct.t_target_annot_entry* %4, null
  br i1 %5, label %6, label %18

; <label>:6                                       ; preds = %3
  %7 = load i8*, i8** %1, align 8
  %8 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry, align 8
  %9 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @strcmp(i8* %7, i8* %10) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %6
  br label %18

; <label>:14                                      ; preds = %6
  %15 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry, align 8
  %16 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %15, i32 0, i32 0
  %17 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %16, align 8
  store %struct.t_target_annot_entry* %17, %struct.t_target_annot_entry** %entry, align 8
  br label %3

; <label>:18                                      ; preds = %13, %3
  %19 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry, align 8
  ret %struct.t_target_annot_entry* %19
}

; Function Attrs: nounwind uwtable
define internal void @PDFFile_WritePagesObject(%struct._IO_FILE* %in_fp) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %the_block = alloca %struct.t_page_block*, align 8
  %block_pos = alloca i32, align 4
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  %2 = load %struct.t_page_block*, %struct.t_page_block** @g_page_block_list, align 8
  store %struct.t_page_block* %2, %struct.t_page_block** %the_block, align 8
  %3 = load i32, i32* @g_PDF_debug, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.170, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %5, %0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %10 = load i32, i32* @g_pages_root, align 4
  call void @PDFObject_WriteObj(%struct._IO_FILE* %9, i32 %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %12 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), %struct._IO_FILE* %11)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %14 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.171, i32 0, i32 0), %struct._IO_FILE* %13)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %16 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.172, i32 0, i32 0), %struct._IO_FILE* %15)
  store i32 0, i32* %i, align 4
  br label %17

; <label>:17                                      ; preds = %40, %8
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* @g_page_count, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %43

; <label>:21                                      ; preds = %17
  %22 = load i32, i32* %i, align 4
  %23 = urem i32 %22, 64
  store i32 %23, i32* %block_pos, align 4
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %25 = load i32, i32* %block_pos, align 4
  %26 = sext i32 %25 to i64
  %27 = load %struct.t_page_block*, %struct.t_page_block** %the_block, align 8
  %28 = getelementptr inbounds %struct.t_page_block, %struct.t_page_block* %27, i32 0, i32 1
  %29 = getelementptr inbounds [64 x i32], [64 x i32]* %28, i32 0, i64 %26
  %30 = load i32, i32* %29, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %24, i32 %30)
  %31 = load i32, i32* %block_pos, align 4
  %32 = icmp eq i32 %31, 63
  br i1 %32, label %33, label %37

; <label>:33                                      ; preds = %21
  %34 = load %struct.t_page_block*, %struct.t_page_block** %the_block, align 8
  %35 = getelementptr inbounds %struct.t_page_block, %struct.t_page_block* %34, i32 0, i32 0
  %36 = load %struct.t_page_block*, %struct.t_page_block** %35, align 8
  store %struct.t_page_block* %36, %struct.t_page_block** %the_block, align 8
  br label %37

; <label>:37                                      ; preds = %33, %21
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %39 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), %struct._IO_FILE* %38)
  br label %40

; <label>:40                                      ; preds = %37
  %41 = load i32, i32* %i, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %i, align 4
  br label %17

; <label>:43                                      ; preds = %17
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %45 = load i32, i32* @g_page_count, align 4
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.173, i32 0, i32 0), i32 %45)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %48 = load i32, i32* @g_doc_h_bound, align 4
  %49 = load i32, i32* @g_doc_v_bound, align 4
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.174, i32 0, i32 0), i32 %48, i32 %49)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %52 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), %struct._IO_FILE* %51)
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #2

; Function Attrs: nounwind uwtable
define internal i32 @PDFFile_WriteXREF(%struct._IO_FILE* %in_fp) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %xref_start = alloca i32, align 4
  %the_block = alloca %struct.t_offset_block*, align 8
  %block_pos = alloca i32, align 4
  %str = alloca [512 x i8], align 16
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  %2 = load %struct.t_offset_block*, %struct.t_offset_block** @g_obj_offset_list, align 8
  store %struct.t_offset_block* %2, %struct.t_offset_block** %the_block, align 8
  %3 = load i32, i32* @g_PDF_debug, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.175, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %5, %0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %10 = call i64 @ftell(%struct._IO_FILE* %9)
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %xref_start, align 4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %13 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.176, i32 0, i32 0), %struct._IO_FILE* %12)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %15 = load i32, i32* @g_next_objnum, align 4
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.177, i32 0, i32 0), i32 %15)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %18 = call i32 @fputs(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.178, i32 0, i32 0), %struct._IO_FILE* %17)
  %19 = load i32, i32* @g_next_objnum, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %24, label %21

; <label>:21                                      ; preds = %8
  %22 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %23 = icmp ne %struct.t_offset_block* %22, null
  br label %24

; <label>:24                                      ; preds = %21, %8
  %25 = phi i1 [ true, %8 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %26, %struct.FILE_POS* %27)
  store i32 1, i32* %i, align 4
  br label %28

; <label>:28                                      ; preds = %71, %24
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* @g_next_objnum, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %74

; <label>:32                                      ; preds = %28
  %33 = load i32, i32* %i, align 4
  %34 = sub nsw i32 %33, 1
  %35 = srem i32 %34, 256
  store i32 %35, i32* %block_pos, align 4
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %37 = load i32, i32* %block_pos, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %40 = getelementptr inbounds %struct.t_offset_block, %struct.t_offset_block* %39, i32 0, i32 1
  %41 = getelementptr inbounds [256 x i32], [256 x i32]* %40, i32 0, i64 %38
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.179, i32 0, i32 0), i32 %42)
  %44 = load i32, i32* %block_pos, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %47 = getelementptr inbounds %struct.t_offset_block, %struct.t_offset_block* %46, i32 0, i32 1
  %48 = getelementptr inbounds [256 x i32], [256 x i32]* %47, i32 0, i64 %45
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %63

; <label>:51                                      ; preds = %32
  %52 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %53 = call i8* @strcpy(i8* %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.180, i32 0, i32 0)) #5
  %54 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %55 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %56 = call i64 @strlen(i8* %55) #6
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i32, i32* %i, align 4
  %59 = call i32 (i8*, i8*, ...) @sprintf(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), i32 %58) #5
  %60 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %61 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %62 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0), i32 2, %struct.FILE_POS* %60, i8* %61)
  br label %63

; <label>:63                                      ; preds = %51, %32
  %64 = load i32, i32* %block_pos, align 4
  %65 = icmp eq i32 %64, 255
  br i1 %65, label %66, label %70

; <label>:66                                      ; preds = %63
  %67 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %68 = getelementptr inbounds %struct.t_offset_block, %struct.t_offset_block* %67, i32 0, i32 0
  %69 = load %struct.t_offset_block*, %struct.t_offset_block** %68, align 8
  store %struct.t_offset_block* %69, %struct.t_offset_block** %the_block, align 8
  br label %70

; <label>:70                                      ; preds = %66, %63
  br label %71

; <label>:71                                      ; preds = %70
  %72 = load i32, i32* %i, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %i, align 4
  br label %28

; <label>:74                                      ; preds = %28
  %75 = load i32, i32* %xref_start, align 4
  ret i32 %75
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare i64 @ftell(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i8* @PDFPage_EvalExpr(i8* %inExpr, float* %outValue) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca float*, align 8
  %i = alloca i32, align 4
  %chp = alloca i8*, align 8
  %val = alloca float, align 4
  %val1 = alloca float, align 4
  %val2 = alloca float, align 4
  %count = alloca i32, align 4
  store i8* %inExpr, i8** %1, align 8
  store float* %outValue, float** %2, align 8
  %3 = load i8*, i8** %1, align 8
  store i8* %3, i8** %chp, align 8
  br label %4

; <label>:4                                       ; preds = %16, %0
  %5 = load i8*, i8** %chp, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = sext i32 %7 to i64
  %9 = call i16** @__ctype_b_loc() #7
  %10 = load i16*, i16** %9, align 8
  %11 = getelementptr inbounds i16, i16* %10, i64 %8
  %12 = load i16, i16* %11, align 2
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 8192
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

; <label>:16                                      ; preds = %4
  %17 = load i8*, i8** %chp, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %chp, align 8
  br label %4

; <label>:19                                      ; preds = %4
  br label %20

; <label>:20                                      ; preds = %25, %19
  %21 = load i8*, i8** %chp, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 95
  br i1 %24, label %25, label %28

; <label>:25                                      ; preds = %20
  %26 = load i8*, i8** %chp, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %chp, align 8
  br label %20

; <label>:28                                      ; preds = %20
  br label %29

; <label>:29                                      ; preds = %34, %28
  %30 = load i8*, i8** %chp, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 43
  br i1 %33, label %34, label %37

; <label>:34                                      ; preds = %29
  %35 = load i8*, i8** %chp, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %chp, align 8
  br label %29

; <label>:37                                      ; preds = %29
  %38 = load i8*, i8** %chp, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = sext i32 %40 to i64
  %42 = call i16** @__ctype_b_loc() #7
  %43 = load i16*, i16** %42, align 8
  %44 = getelementptr inbounds i16, i16* %43, i64 %41
  %45 = load i16, i16* %44, align 2
  %46 = zext i16 %45 to i32
  %47 = and i32 %46, 2048
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

; <label>:49                                      ; preds = %37
  %50 = load i8*, i8** %chp, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 46
  br i1 %53, label %54, label %58

; <label>:54                                      ; preds = %49, %37
  %55 = load i8*, i8** %chp, align 8
  %56 = load float*, float** %2, align 8
  %57 = call i8* @PDFPage_GetFloat(i8* %55, float* %56)
  store i8* %57, i8** %chp, align 8
  br label %258

; <label>:58                                      ; preds = %49
  %59 = load i8*, i8** %chp, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 45
  br i1 %62, label %63, label %70

; <label>:63                                      ; preds = %58
  %64 = load i8*, i8** %chp, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %chp, align 8
  %66 = call i8* @PDFPage_EvalExpr(i8* %65, float* %val)
  store i8* %66, i8** %chp, align 8
  %67 = load float, float* %val, align 4
  %68 = fsub float -0.000000e+00, %67
  %69 = load float*, float** %2, align 8
  store float %68, float* %69, align 4
  br label %257

; <label>:70                                      ; preds = %58
  %71 = load i8*, i8** %chp, align 8
  %72 = call i32 @PDFKeyword_Find(i32 7, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @g_arithmetic_keywords, i32 0, i32 0), i8* %71)
  store i32 %72, i32* %i, align 4
  %73 = load i32, i32* %i, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %213

; <label>:75                                      ; preds = %70
  %76 = load i32, i32* %i, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [7 x i8*], [7 x i8*]* @g_arithmetic_keywords, i32 0, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @strlen(i8* %79) #6
  %81 = load i8*, i8** %chp, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 %80
  store i8* %82, i8** %chp, align 8
  br label %83

; <label>:83                                      ; preds = %95, %75
  %84 = load i8*, i8** %chp, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = sext i32 %86 to i64
  %88 = call i16** @__ctype_b_loc() #7
  %89 = load i16*, i16** %88, align 8
  %90 = getelementptr inbounds i16, i16* %89, i64 %87
  %91 = load i16, i16* %90, align 2
  %92 = zext i16 %91 to i32
  %93 = and i32 %92, 8192
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

; <label>:95                                      ; preds = %83
  %96 = load i8*, i8** %chp, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %chp, align 8
  br label %83

; <label>:98                                      ; preds = %83
  %99 = load i8*, i8** %chp, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 40
  br i1 %102, label %103, label %106

; <label>:103                                     ; preds = %98
  %104 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %105 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.81, i32 0, i32 0), i32 1, %struct.FILE_POS* %104)
  br label %106

; <label>:106                                     ; preds = %103, %98
  %107 = load i8*, i8** %chp, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %chp, align 8
  %109 = call i8* @PDFPage_EvalExpr(i8* %108, float* %val1)
  store i8* %109, i8** %chp, align 8
  %110 = load i32, i32* %i, align 4
  %111 = icmp sle i32 %110, 3
  br i1 %111, label %115, label %112

; <label>:112                                     ; preds = %106
  %113 = load i32, i32* %i, align 4
  %114 = icmp eq i32 %113, 6
  br i1 %114, label %115, label %157

; <label>:115                                     ; preds = %112, %106
  %116 = load i32, i32* %i, align 4
  %117 = icmp eq i32 %116, 6
  br i1 %117, label %118, label %127

; <label>:118                                     ; preds = %115
  %119 = load float, float* %val1, align 4
  %120 = fpext float %119 to double
  %121 = call double @floor(double %120) #7
  %122 = fptosi double %121 to i32
  store i32 %122, i32* %count, align 4
  %123 = load i32, i32* %count, align 4
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %125, %struct.FILE_POS* %126)
  br label %128

; <label>:127                                     ; preds = %115
  store i32 1, i32* %count, align 4
  br label %128

; <label>:128                                     ; preds = %127, %118
  %129 = load i8*, i8** %chp, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 44
  br i1 %132, label %133, label %136

; <label>:133                                     ; preds = %128
  %134 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %135 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.82, i32 0, i32 0), i32 1, %struct.FILE_POS* %134)
  br label %136

; <label>:136                                     ; preds = %133, %128
  br label %137

; <label>:137                                     ; preds = %152, %136
  %138 = load i8*, i8** %chp, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %chp, align 8
  %140 = call i8* @PDFPage_EvalExpr(i8* %139, float* %val2)
  store i8* %140, i8** %chp, align 8
  %141 = load i32, i32* %count, align 4
  %142 = icmp ne i32 %141, 1
  br i1 %142, label %143, label %151

; <label>:143                                     ; preds = %137
  %144 = load i8*, i8** %chp, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 44
  br i1 %147, label %148, label %151

; <label>:148                                     ; preds = %143
  %149 = load i8*, i8** %chp, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %chp, align 8
  br label %151

; <label>:151                                     ; preds = %148, %143, %137
  br label %152

; <label>:152                                     ; preds = %151
  %153 = load i32, i32* %count, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %count, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %137, label %156

; <label>:156                                     ; preds = %152
  br label %157

; <label>:157                                     ; preds = %156, %112
  %158 = load i8*, i8** %chp, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp ne i32 %160, 41
  br i1 %161, label %162, label %165

; <label>:162                                     ; preds = %157
  %163 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %164 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.83, i32 0, i32 0), i32 1, %struct.FILE_POS* %163)
  br label %165

; <label>:165                                     ; preds = %162, %157
  %166 = load i8*, i8** %chp, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %chp, align 8
  %168 = load i32, i32* %i, align 4
  switch i32 %168, label %212 [
    i32 0, label %169
    i32 1, label %174
    i32 2, label %179
    i32 3, label %184
    i32 4, label %193
    i32 5, label %201
    i32 6, label %209
  ]

; <label>:169                                     ; preds = %165
  %170 = load float, float* %val1, align 4
  %171 = load float, float* %val2, align 4
  %172 = fadd float %170, %171
  %173 = load float*, float** %2, align 8
  store float %172, float* %173, align 4
  br label %212

; <label>:174                                     ; preds = %165
  %175 = load float, float* %val1, align 4
  %176 = load float, float* %val2, align 4
  %177 = fsub float %175, %176
  %178 = load float*, float** %2, align 8
  store float %177, float* %178, align 4
  br label %212

; <label>:179                                     ; preds = %165
  %180 = load float, float* %val1, align 4
  %181 = load float, float* %val2, align 4
  %182 = fmul float %180, %181
  %183 = load float*, float** %2, align 8
  store float %182, float* %183, align 4
  br label %212

; <label>:184                                     ; preds = %165
  %185 = load float, float* %val2, align 4
  %186 = fcmp une float %185, 0.000000e+00
  %187 = zext i1 %186 to i32
  %188 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %187, %struct.FILE_POS* %188)
  %189 = load float, float* %val1, align 4
  %190 = load float, float* %val2, align 4
  %191 = fdiv float %189, %190
  %192 = load float*, float** %2, align 8
  store float %191, float* %192, align 4
  br label %212

; <label>:193                                     ; preds = %165
  %194 = load float, float* %val1, align 4
  %195 = fpext float %194 to double
  %196 = fmul double %195, 0x400921FB54442D18
  %197 = fdiv double %196, 1.800000e+02
  %198 = call double @sin(double %197) #5
  %199 = fptrunc double %198 to float
  %200 = load float*, float** %2, align 8
  store float %199, float* %200, align 4
  br label %212

; <label>:201                                     ; preds = %165
  %202 = load float, float* %val1, align 4
  %203 = fpext float %202 to double
  %204 = fmul double %203, 0x400921FB54442D18
  %205 = fdiv double %204, 1.800000e+02
  %206 = call double @cos(double %205) #5
  %207 = fptrunc double %206 to float
  %208 = load float*, float** %2, align 8
  store float %207, float* %208, align 4
  br label %212

; <label>:209                                     ; preds = %165
  %210 = load float, float* %val2, align 4
  %211 = load float*, float** %2, align 8
  store float %210, float* %211, align 4
  br label %212

; <label>:212                                     ; preds = %165, %209, %201, %193, %184, %179, %174, %169
  br label %256

; <label>:213                                     ; preds = %70
  %214 = load i8*, i8** %chp, align 8
  %215 = call i32 @PDFKeyword_Find(i32 4, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @g_graphic_keywords, i32 0, i32 0), i8* %214)
  store i32 %215, i32* %i, align 4
  %216 = load i32, i32* %i, align 4
  %217 = icmp sge i32 %216, 0
  br i1 %217, label %218, label %232

; <label>:218                                     ; preds = %213
  %219 = load i32, i32* %i, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [4 x i8*], [4 x i8*]* @g_graphic_keywords, i32 0, i64 %220
  %222 = load i8*, i8** %221, align 8
  %223 = call i64 @strlen(i8* %222) #6
  %224 = load i8*, i8** %chp, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 %223
  store i8* %225, i8** %chp, align 8
  %226 = load i32, i32* %i, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [4 x i32], [4 x i32]* @g_graphics_vars, i32 0, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = sitofp i32 %229 to float
  %231 = load float*, float** %2, align 8
  store float %230, float* %231, align 4
  br label %255

; <label>:232                                     ; preds = %213
  %233 = load i8*, i8** %chp, align 8
  %234 = call i32 @PDFKeyword_Find(i32 7, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @g_unit_keywords, i32 0, i32 0), i8* %233)
  store i32 %234, i32* %i, align 4
  %235 = load i32, i32* %i, align 4
  %236 = icmp sge i32 %235, 0
  br i1 %236, label %237, label %251

; <label>:237                                     ; preds = %232
  %238 = load i32, i32* %i, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [7 x i8*], [7 x i8*]* @g_unit_keywords, i32 0, i64 %239
  %241 = load i8*, i8** %240, align 8
  %242 = call i64 @strlen(i8* %241) #6
  %243 = load i8*, i8** %chp, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 %242
  store i8* %244, i8** %chp, align 8
  %245 = load i32, i32* %i, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [7 x i32], [7 x i32]* @g_units, i32 0, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = sitofp i32 %248 to float
  %250 = load float*, float** %2, align 8
  store float %249, float* %250, align 4
  br label %254

; <label>:251                                     ; preds = %232
  %252 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %253 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 33, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.84, i32 0, i32 0), i32 1, %struct.FILE_POS* %252)
  br label %254

; <label>:254                                     ; preds = %251, %237
  br label %255

; <label>:255                                     ; preds = %254, %218
  br label %256

; <label>:256                                     ; preds = %255, %212
  br label %257

; <label>:257                                     ; preds = %256, %63
  br label %258

; <label>:258                                     ; preds = %257, %54
  %259 = load i8*, i8** %chp, align 8
  ret i8* %259
}

; Function Attrs: nounwind uwtable
define internal i8* @PDFPage_GetFloat(i8* %in_str, float* %out_value) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca float*, align 8
  store i8* %in_str, i8** %1, align 8
  store float* %out_value, float** %2, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = load float*, float** %2, align 8
  %5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i32 0, i32 0), float* %4) #5
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %60

; <label>:7                                       ; preds = %0
  br label %8

; <label>:8                                       ; preds = %20, %7
  %9 = load i8*, i8** %1, align 8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = sext i32 %11 to i64
  %13 = call i16** @__ctype_b_loc() #7
  %14 = load i16*, i16** %13, align 8
  %15 = getelementptr inbounds i16, i16* %14, i64 %12
  %16 = load i16, i16* %15, align 2
  %17 = zext i16 %16 to i32
  %18 = and i32 %17, 8192
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

; <label>:20                                      ; preds = %8
  %21 = load i8*, i8** %1, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %1, align 8
  br label %8

; <label>:23                                      ; preds = %8
  %24 = load i8*, i8** %1, align 8
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 45
  br i1 %27, label %33, label %28

; <label>:28                                      ; preds = %23
  %29 = load i8*, i8** %1, align 8
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 43
  br i1 %32, label %33, label %36

; <label>:33                                      ; preds = %28, %23
  %34 = load i8*, i8** %1, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %1, align 8
  br label %36

; <label>:36                                      ; preds = %33, %28
  br label %37

; <label>:37                                      ; preds = %56, %36
  %38 = load i8*, i8** %1, align 8
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = sext i32 %40 to i64
  %42 = call i16** @__ctype_b_loc() #7
  %43 = load i16*, i16** %42, align 8
  %44 = getelementptr inbounds i16, i16* %43, i64 %41
  %45 = load i16, i16* %44, align 2
  %46 = zext i16 %45 to i32
  %47 = and i32 %46, 2048
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

; <label>:49                                      ; preds = %37
  %50 = load i8*, i8** %1, align 8
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 46
  br label %54

; <label>:54                                      ; preds = %49, %37
  %55 = phi i1 [ true, %37 ], [ %53, %49 ]
  br i1 %55, label %56, label %59

; <label>:56                                      ; preds = %54
  %57 = load i8*, i8** %1, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %1, align 8
  br label %37

; <label>:59                                      ; preds = %54
  br label %63

; <label>:60                                      ; preds = %0
  %61 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %62 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 21, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.86, i32 0, i32 0), i32 1, %struct.FILE_POS* %61)
  br label %63

; <label>:63                                      ; preds = %60, %59
  %64 = load i8*, i8** %1, align 8
  ret i8* %64
}

; Function Attrs: nounwind readnone
declare double @floor(double) #4

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @PDFPage_ProcessLinkKeyword() #0 {
  %charPtr = alloca i8*, align 8
  %keyword = alloca i32, align 4
  %link_len = alloca i32, align 4
  %link_name = alloca i8*, align 8
  %parm = alloca i8*, align 8
  %ll_x = alloca i32, align 4
  %ll_y = alloca i32, align 4
  %ur_x = alloca i32, align 4
  %ur_y = alloca i32, align 4
  %j = alloca i32, align 4
  %source = alloca %struct.t_source_annot_entry*, align 8
  %j1 = alloca i32, align 4
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @g_link, i32 0, i32 0), i8** %charPtr, align 8
  %1 = load i32, i32* @g_link_keyword, align 4
  store i32 %1, i32* %keyword, align 4
  store i32 0, i32* %link_len, align 4
  %2 = load i8*, i8** %charPtr, align 8
  store i8* %2, i8** %link_name, align 8
  store i8* null, i8** %parm, align 8
  br label %3

; <label>:3                                       ; preds = %38, %0
  %4 = load i8*, i8** %charPtr, align 8
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %36

; <label>:8                                       ; preds = %3
  %9 = load i8*, i8** %charPtr, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = sext i32 %12 to i64
  %14 = call i16** @__ctype_b_loc() #7
  %15 = load i16*, i16** %14, align 8
  %16 = getelementptr inbounds i16, i16* %15, i64 %13
  %17 = load i16, i16* %16, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 8192
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

; <label>:21                                      ; preds = %8
  %22 = load i8*, i8** %charPtr, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 95
  br i1 %26, label %27, label %33

; <label>:27                                      ; preds = %21
  %28 = load i8*, i8** %charPtr, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 95
  br label %33

; <label>:33                                      ; preds = %27, %21, %8
  %34 = phi i1 [ false, %21 ], [ false, %8 ], [ %32, %27 ]
  %35 = xor i1 %34, true
  br label %36

; <label>:36                                      ; preds = %33, %3
  %37 = phi i1 [ false, %3 ], [ %35, %33 ]
  br i1 %37, label %38, label %43

; <label>:38                                      ; preds = %36
  %39 = load i32, i32* %link_len, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %link_len, align 4
  %41 = load i8*, i8** %charPtr, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %charPtr, align 8
  br label %3

; <label>:43                                      ; preds = %36
  %44 = load i8*, i8** %charPtr, align 8
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

; <label>:48                                      ; preds = %43
  %49 = load i8*, i8** %charPtr, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %charPtr, align 8
  store i8* %50, i8** %parm, align 8
  br label %51

; <label>:51                                      ; preds = %48, %43
  br label %52

; <label>:52                                      ; preds = %57, %51
  %53 = load i8*, i8** %charPtr, align 8
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

; <label>:57                                      ; preds = %52
  %58 = load i8*, i8** %charPtr, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %charPtr, align 8
  br label %52

; <label>:60                                      ; preds = %52
  %61 = load i32, i32* %link_len, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

; <label>:63                                      ; preds = %60
  %64 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %65 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 22, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.95, i32 0, i32 0), i32 2, %struct.FILE_POS* %64)
  br label %204

; <label>:66                                      ; preds = %60
  %67 = load i32, i32* @g_page_h_origin, align 4
  %68 = sitofp i32 %67 to float
  %69 = load float, float* @g_page_h_scale_factor, align 4
  %70 = fmul float %68, %69
  %71 = fptosi float %70 to i32
  store i32 %71, i32* %ll_x, align 4
  %72 = load i32, i32* @g_page_v_origin, align 4
  %73 = sitofp i32 %72 to float
  %74 = load float, float* @g_page_v_scale_factor, align 4
  %75 = fmul float %73, %74
  %76 = fptosi float %75 to i32
  store i32 %76, i32* %ll_y, align 4
  %77 = load i32, i32* @g_page_h_origin, align 4
  %78 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_graphics_vars, i32 0, i64 0), align 4
  %79 = add nsw i32 %77, %78
  %80 = sitofp i32 %79 to float
  %81 = load float, float* @g_page_h_scale_factor, align 4
  %82 = fmul float %80, %81
  %83 = fptosi float %82 to i32
  store i32 %83, i32* %ur_x, align 4
  %84 = load i32, i32* @g_page_v_origin, align 4
  %85 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_graphics_vars, i32 0, i64 1), align 4
  %86 = add nsw i32 %84, %85
  %87 = sitofp i32 %86 to float
  %88 = load float, float* @g_page_v_scale_factor, align 4
  %89 = fmul float %87, %88
  %90 = fptosi float %89 to i32
  store i32 %90, i32* %ur_y, align 4
  %91 = load i32, i32* %keyword, align 4
  switch i32 %91, label %203 [
    i32 0, label %92
    i32 1, label %136
    i32 2, label %136
    i32 3, label %192
    i32 4, label %192
    i32 5, label %202
  ]

; <label>:92                                      ; preds = %66
  %93 = load i8*, i8** %parm, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %125

; <label>:95                                      ; preds = %92
  %96 = load i8*, i8** %charPtr, align 8
  %97 = call i32 @PDFKeyword_Find(i32 8, i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @g_dest_link_options, i32 0, i32 0), i8* %96)
  store i32 %97, i32* %j, align 4
  %98 = load i32, i32* %j, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %108

; <label>:100                                     ; preds = %95
  %101 = load i32, i32* %j, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [8 x i8*], [8 x i8*]* @g_dest_link_options, i32 0, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @strlen(i8* %104) #6
  %106 = load i8*, i8** %charPtr, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 %105
  store i8* %107, i8** %charPtr, align 8
  br label %124

; <label>:108                                     ; preds = %95
  store i32 0, i32* %j, align 4
  br label %109

; <label>:109                                     ; preds = %114, %108
  %110 = load i8*, i8** %charPtr, align 8
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

; <label>:114                                     ; preds = %109
  %115 = load i8*, i8** %charPtr, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %charPtr, align 8
  br label %109

; <label>:117                                     ; preds = %109
  %118 = load i8*, i8** %charPtr, align 8
  %119 = load i8*, i8** %link_name, align 8
  %120 = ptrtoint i8* %118 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %link_len, align 4
  br label %124

; <label>:124                                     ; preds = %117, %100
  br label %126

; <label>:125                                     ; preds = %92
  store i32 0, i32* %j, align 4
  br label %126

; <label>:126                                     ; preds = %125, %124
  %127 = load i32, i32* %keyword, align 4
  %128 = load i8*, i8** %link_name, align 8
  %129 = load i32, i32* %link_len, align 4
  %130 = load i32, i32* %ll_x, align 4
  %131 = load i32, i32* %ll_y, align 4
  %132 = load i32, i32* %ur_x, align 4
  %133 = load i32, i32* %ur_y, align 4
  %134 = load i32, i32* %j, align 4
  %135 = call %struct.t_source_annot_entry* @PDFSourceAnnot_New(i32 %127, i8* %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134)
  br label %203

; <label>:136                                     ; preds = %66, %66
  %137 = load i32, i32* %keyword, align 4
  %138 = load i8*, i8** %link_name, align 8
  %139 = load i32, i32* %link_len, align 4
  %140 = load i32, i32* %ll_x, align 4
  %141 = load i32, i32* %ll_y, align 4
  %142 = load i32, i32* %ur_x, align 4
  %143 = load i32, i32* %ur_y, align 4
  %144 = call %struct.t_source_annot_entry* @PDFSourceAnnot_New(i32 %137, i8* %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 0)
  store %struct.t_source_annot_entry* %144, %struct.t_source_annot_entry** %source, align 8
  %145 = load i32, i32* %keyword, align 4
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %191

; <label>:147                                     ; preds = %136
  store i32 0, i32* %link_len, align 4
  %148 = load i8*, i8** %parm, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %164

; <label>:150                                     ; preds = %147
  %151 = load i8*, i8** %parm, align 8
  %152 = call i32 @PDFKeyword_Find(i32 1, i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_external_file_spec_keyword, i32 0, i32 0), i8* %151)
  store i32 %152, i32* %j1, align 4
  %153 = load i32, i32* %j1, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %163

; <label>:155                                     ; preds = %150
  %156 = load i8*, i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_external_file_spec_keyword, i32 0, i64 0), align 8
  %157 = call i64 @strlen(i8* %156) #6
  %158 = load i8*, i8** %parm, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 %157
  store i8* %159, i8** %parm, align 8
  %160 = load i8*, i8** %parm, align 8
  %161 = call i64 @strlen(i8* %160) #6
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %link_len, align 4
  br label %163

; <label>:163                                     ; preds = %155, %150
  br label %164

; <label>:164                                     ; preds = %163, %147
  %165 = load i32, i32* %link_len, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %170

; <label>:167                                     ; preds = %164
  %168 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %169 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 24, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.96, i32 0, i32 0), i32 1, %struct.FILE_POS* %168)
  br label %190

; <label>:170                                     ; preds = %164
  %171 = load i32, i32* %link_len, align 4
  %172 = add i32 %171, 1
  %173 = zext i32 %172 to i64
  %174 = call noalias i8* @malloc(i64 %173) #5
  %175 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  %176 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %175, i32 0, i32 3
  store i8* %174, i8** %176, align 8
  %177 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  %178 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %177, i32 0, i32 3
  %179 = load i8*, i8** %178, align 8
  %180 = icmp eq i8* %179, null
  br i1 %180, label %181, label %184

; <label>:181                                     ; preds = %170
  %182 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %183 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.97, i32 0, i32 0), i32 1, %struct.FILE_POS* %182)
  br label %184

; <label>:184                                     ; preds = %181, %170
  %185 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  %186 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %185, i32 0, i32 3
  %187 = load i8*, i8** %186, align 8
  %188 = load i8*, i8** %parm, align 8
  %189 = call i8* @strcpy(i8* %187, i8* %188) #5
  br label %190

; <label>:190                                     ; preds = %184, %167
  br label %191

; <label>:191                                     ; preds = %190, %136
  br label %203

; <label>:192                                     ; preds = %66, %66
  %193 = load i8*, i8** %link_name, align 8
  %194 = load i32, i32* %link_len, align 4
  %195 = load i32, i32* %ll_x, align 4
  %196 = load i32, i32* %ll_y, align 4
  %197 = load i32, i32* %ur_x, align 4
  %198 = load i32, i32* %ur_y, align 4
  %199 = load i32, i32* %keyword, align 4
  %200 = icmp eq i32 %199, 4
  %201 = zext i1 %200 to i32
  call void @PDFTargetAnnot_New(i8* %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %198, i32 %201)
  br label %203

; <label>:202                                     ; preds = %66
  br label %203

; <label>:203                                     ; preds = %66, %202, %192, %191, %126
  br label %204

; <label>:204                                     ; preds = %203, %63
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.t_source_annot_entry* @PDFSourceAnnot_New(i32 %in_link_type, i8* %in_annot_name, i32 %in_annot_name_length, i32 %in_ll_x, i32 %in_ll_y, i32 %in_ur_x, i32 %in_ur_y, i32 %in_link_dest_option) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %target = alloca %struct.t_target_annot_entry*, align 8
  %entry = alloca %struct.t_source_annot_entry*, align 8
  store i32 %in_link_type, i32* %1, align 4
  store i8* %in_annot_name, i8** %2, align 8
  store i32 %in_annot_name_length, i32* %3, align 4
  store i32 %in_ll_x, i32* %4, align 4
  store i32 %in_ll_y, i32* %5, align 4
  store i32 %in_ur_x, i32* %6, align 4
  store i32 %in_ur_y, i32* %7, align 4
  store i32 %in_link_dest_option, i32* %8, align 4
  store %struct.t_target_annot_entry* null, %struct.t_target_annot_entry** %target, align 8
  %9 = call noalias i8* @malloc(i64 72) #5
  %10 = bitcast i8* %9 to %struct.t_source_annot_entry*
  store %struct.t_source_annot_entry* %10, %struct.t_source_annot_entry** %entry, align 8
  %11 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry, align 8
  %12 = icmp eq %struct.t_source_annot_entry* %11, null
  br i1 %12, label %13, label %16

; <label>:13                                      ; preds = %0
  %14 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %15 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.106, i32 0, i32 0), i32 1, %struct.FILE_POS* %14)
  br label %16

; <label>:16                                      ; preds = %13, %0
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry, align 8
  %19 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry, align 8
  %22 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry, align 8
  %25 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry, align 8
  %28 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 4
  %29 = call i32 @PDFObject_New()
  %30 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry, align 8
  %31 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @g_page_object_num, align 4
  %33 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry, align 8
  %34 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %1, align 4
  %36 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry, align 8
  %37 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %36, i32 0, i32 11
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp uge i32 %38, 0
  br i1 %39, label %40, label %43

; <label>:40                                      ; preds = %16
  %41 = load i32, i32* %8, align 4
  %42 = icmp ule i32 %41, 7
  br label %43

; <label>:43                                      ; preds = %40, %16
  %44 = phi i1 [ false, %16 ], [ %42, %40 ]
  %45 = zext i1 %44 to i32
  %46 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %45, %struct.FILE_POS* %46)
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry, align 8
  %49 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %48, i32 0, i32 10
  store i32 %47, i32* %49, align 4
  %50 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry, align 8
  %51 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %50, i32 0, i32 3
  store i8* null, i8** %51, align 8
  %52 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry, align 8
  %53 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %52, i32 0, i32 12
  store i32 0, i32* %53, align 4
  %54 = load i32, i32* %1, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

; <label>:56                                      ; preds = %43
  %57 = load i8*, i8** %2, align 8
  %58 = call %struct.t_target_annot_entry* @PDFTargetAnnot_Find(i8* %57)
  store %struct.t_target_annot_entry* %58, %struct.t_target_annot_entry** %target, align 8
  br label %59

; <label>:59                                      ; preds = %56, %43
  %60 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %61 = icmp ne %struct.t_target_annot_entry* %60, null
  br i1 %61, label %62, label %68

; <label>:62                                      ; preds = %59
  %63 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %64 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry, align 8
  %65 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %64, i32 0, i32 1
  store %struct.t_target_annot_entry* %63, %struct.t_target_annot_entry** %65, align 8
  %66 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry, align 8
  %67 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %66, i32 0, i32 2
  store i8* null, i8** %67, align 8
  br label %97

; <label>:68                                      ; preds = %59
  %69 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry, align 8
  %70 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %69, i32 0, i32 1
  store %struct.t_target_annot_entry* null, %struct.t_target_annot_entry** %70, align 8
  %71 = load i32, i32* %3, align 4
  %72 = add i32 %71, 1
  %73 = zext i32 %72 to i64
  %74 = call noalias i8* @malloc(i64 %73) #5
  %75 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry, align 8
  %76 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry, align 8
  %78 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %84

; <label>:81                                      ; preds = %68
  %82 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %83 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.106, i32 0, i32 0), i32 1, %struct.FILE_POS* %82)
  br label %84

; <label>:84                                      ; preds = %81, %68
  %85 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry, align 8
  %86 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = load i8*, i8** %2, align 8
  %89 = load i32, i32* %3, align 4
  %90 = zext i32 %89 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 %90, i32 1, i1 false)
  %91 = load i32, i32* %3, align 4
  %92 = zext i32 %91 to i64
  %93 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry, align 8
  %94 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 %92
  store i8 0, i8* %96, align 1
  br label %97

; <label>:97                                      ; preds = %84, %62
  %98 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** @g_source_annot_list, align 8
  %99 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry, align 8
  %100 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %99, i32 0, i32 0
  store %struct.t_source_annot_entry* %98, %struct.t_source_annot_entry** %100, align 8
  %101 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry, align 8
  store %struct.t_source_annot_entry* %101, %struct.t_source_annot_entry** @g_source_annot_list, align 8
  %102 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry, align 8
  ret %struct.t_source_annot_entry* %102
}

; Function Attrs: nounwind uwtable
define internal void @PDFTargetAnnot_New(i8* %in_annot_name, i32 %in_annot_name_length, i32 %in_ll_x, i32 %in_ll_y, i32 %in_ur_x, i32 %in_ur_y, i32 %in_for_export) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %entry = alloca %struct.t_target_annot_entry*, align 8
  store i8* %in_annot_name, i8** %1, align 8
  store i32 %in_annot_name_length, i32* %2, align 4
  store i32 %in_ll_x, i32* %3, align 4
  store i32 %in_ll_y, i32* %4, align 4
  store i32 %in_ur_x, i32* %5, align 4
  store i32 %in_ur_y, i32* %6, align 4
  store i32 %in_for_export, i32* %7, align 4
  %8 = call noalias i8* @malloc(i64 40) #5
  %9 = bitcast i8* %8 to %struct.t_target_annot_entry*
  store %struct.t_target_annot_entry* %9, %struct.t_target_annot_entry** %entry, align 8
  %10 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry, align 8
  %11 = icmp eq %struct.t_target_annot_entry* %10, null
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %0
  %13 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %14 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.108, i32 0, i32 0), i32 1, %struct.FILE_POS* %13)
  br label %15

; <label>:15                                      ; preds = %12, %0
  %16 = load i32, i32* %2, align 4
  %17 = add i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call noalias i8* @malloc(i64 %18) #5
  %20 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry, align 8
  %21 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry, align 8
  %23 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %29

; <label>:26                                      ; preds = %15
  %27 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %28 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.108, i32 0, i32 0), i32 1, %struct.FILE_POS* %27)
  br label %29

; <label>:29                                      ; preds = %26, %15
  %30 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry, align 8
  %31 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %1, align 8
  %34 = load i32, i32* %2, align 4
  %35 = zext i32 %34 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 %35, i32 1, i1 false)
  %36 = load i32, i32* %2, align 4
  %37 = zext i32 %36 to i64
  %38 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry, align 8
  %39 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 %37
  store i8 0, i8* %41, align 1
  %42 = load i32, i32* @g_page_contents_obj_num, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %44, %struct.FILE_POS* %45)
  %46 = load i32, i32* @g_page_object_num, align 4
  %47 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry, align 8
  %48 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry, align 8
  %51 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry, align 8
  %54 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry, align 8
  %57 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry, align 8
  %60 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry, align 8
  %63 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 4
  %64 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** @g_target_annot_list, align 8
  %65 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry, align 8
  %66 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %65, i32 0, i32 0
  store %struct.t_target_annot_entry* %64, %struct.t_target_annot_entry** %66, align 8
  %67 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry, align 8
  store %struct.t_target_annot_entry* %67, %struct.t_target_annot_entry** @g_target_annot_list, align 8
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

; <label>:70                                      ; preds = %29
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* @g_has_exported_targets, align 4
  br label %72

; <label>:72                                      ; preds = %70, %29
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @PDFObject_New() #0 {
  %wanted_block_num = alloca i32, align 4
  %block_pos = alloca i32, align 4
  %the_block = alloca %struct.t_offset_block*, align 8
  %1 = load i32, i32* @g_next_objnum, align 4
  %2 = sub i32 %1, 1
  %3 = udiv i32 %2, 256
  store i32 %3, i32* %wanted_block_num, align 4
  %4 = load i32, i32* @g_next_objnum, align 4
  %5 = sub i32 %4, 1
  %6 = urem i32 %5, 256
  store i32 %6, i32* %block_pos, align 4
  %7 = load %struct.t_offset_block*, %struct.t_offset_block** @g_cur_obj_offset_block, align 8
  store %struct.t_offset_block* %7, %struct.t_offset_block** %the_block, align 8
  %8 = load i32, i32* %block_pos, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %39

; <label>:10                                      ; preds = %0
  %11 = call noalias i8* @malloc(i64 1032) #5
  %12 = bitcast i8* %11 to %struct.t_offset_block*
  store %struct.t_offset_block* %12, %struct.t_offset_block** %the_block, align 8
  %13 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %14 = icmp eq %struct.t_offset_block* %13, null
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %10
  %16 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %17 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.133, i32 0, i32 0), i32 1, %struct.FILE_POS* %16)
  br label %18

; <label>:18                                      ; preds = %15, %10
  %19 = load i32, i32* %wanted_block_num, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

; <label>:21                                      ; preds = %18
  %22 = load %struct.t_offset_block*, %struct.t_offset_block** @g_obj_offset_list, align 8
  %23 = icmp eq %struct.t_offset_block* %22, null
  %24 = zext i1 %23 to i32
  %25 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %24, %struct.FILE_POS* %25)
  %26 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  store %struct.t_offset_block* %26, %struct.t_offset_block** @g_obj_offset_list, align 8
  br label %35

; <label>:27                                      ; preds = %18
  %28 = load %struct.t_offset_block*, %struct.t_offset_block** @g_cur_obj_offset_block, align 8
  %29 = icmp ne %struct.t_offset_block* %28, null
  %30 = zext i1 %29 to i32
  %31 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %30, %struct.FILE_POS* %31)
  %32 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %33 = load %struct.t_offset_block*, %struct.t_offset_block** @g_cur_obj_offset_block, align 8
  %34 = getelementptr inbounds %struct.t_offset_block, %struct.t_offset_block* %33, i32 0, i32 0
  store %struct.t_offset_block* %32, %struct.t_offset_block** %34, align 8
  br label %35

; <label>:35                                      ; preds = %27, %21
  %36 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %37 = getelementptr inbounds %struct.t_offset_block, %struct.t_offset_block* %36, i32 0, i32 0
  store %struct.t_offset_block* null, %struct.t_offset_block** %37, align 8
  %38 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  store %struct.t_offset_block* %38, %struct.t_offset_block** @g_cur_obj_offset_block, align 8
  br label %44

; <label>:39                                      ; preds = %0
  %40 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %41 = icmp ne %struct.t_offset_block* %40, null
  %42 = zext i1 %41 to i32
  %43 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %42, %struct.FILE_POS* %43)
  br label %44

; <label>:44                                      ; preds = %39, %35
  %45 = load i32, i32* %block_pos, align 4
  %46 = sext i32 %45 to i64
  %47 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %48 = getelementptr inbounds %struct.t_offset_block, %struct.t_offset_block* %47, i32 0, i32 1
  %49 = getelementptr inbounds [256 x i32], [256 x i32]* %48, i32 0, i64 %46
  store i32 0, i32* %49, align 4
  %50 = load i32, i32* @g_next_objnum, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* @g_next_objnum, align 4
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal %struct.t_offset_block* @PDFObject_FindOffsetBlock(i32 %in_obj_num, i32* %out_block_pos) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %wanted_block_num = alloca i32, align 4
  %block_pos = alloca i32, align 4
  %the_block = alloca %struct.t_offset_block*, align 8
  store i32 %in_obj_num, i32* %1, align 4
  store i32* %out_block_pos, i32** %2, align 8
  %3 = load i32, i32* %1, align 4
  %4 = sub i32 %3, 1
  %5 = udiv i32 %4, 256
  store i32 %5, i32* %wanted_block_num, align 4
  %6 = load i32, i32* %1, align 4
  %7 = sub i32 %6, 1
  %8 = urem i32 %7, 256
  store i32 %8, i32* %block_pos, align 4
  %9 = load %struct.t_offset_block*, %struct.t_offset_block** @g_obj_offset_list, align 8
  store %struct.t_offset_block* %9, %struct.t_offset_block** %the_block, align 8
  %10 = load i32, i32* %1, align 4
  %11 = icmp ugt i32 %10, 0
  br i1 %11, label %12, label %16

; <label>:12                                      ; preds = %0
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @g_next_objnum, align 4
  %15 = icmp ult i32 %13, %14
  br label %16

; <label>:16                                      ; preds = %12, %0
  %17 = phi i1 [ false, %0 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %18, %struct.FILE_POS* %19)
  br label %20

; <label>:20                                      ; preds = %23, %16
  %21 = load i32, i32* %wanted_block_num, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

; <label>:23                                      ; preds = %20
  %24 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %25 = icmp ne %struct.t_offset_block* %24, null
  %26 = zext i1 %25 to i32
  %27 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %26, %struct.FILE_POS* %27)
  %28 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %29 = getelementptr inbounds %struct.t_offset_block, %struct.t_offset_block* %28, i32 0, i32 0
  %30 = load %struct.t_offset_block*, %struct.t_offset_block** %29, align 8
  store %struct.t_offset_block* %30, %struct.t_offset_block** %the_block, align 8
  %31 = load i32, i32* %wanted_block_num, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %wanted_block_num, align 4
  br label %20

; <label>:33                                      ; preds = %20
  %34 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %35 = icmp ne %struct.t_offset_block* %34, null
  %36 = zext i1 %35 to i32
  %37 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %36, %struct.FILE_POS* %37)
  %38 = load i32*, i32** %2, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

; <label>:40                                      ; preds = %33
  %41 = load i32, i32* %block_pos, align 4
  %42 = load i32*, i32** %2, align 8
  store i32 %41, i32* %42, align 4
  br label %43

; <label>:43                                      ; preds = %40, %33
  %44 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  ret %struct.t_offset_block* %44
}

; Function Attrs: nounwind uwtable
define internal void @PDFFont_WriteObject(%struct._IO_FILE* %in_fp, %struct.t_font_list_entry* %in_font_entry) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca %struct.t_font_list_entry*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %1, align 8
  store %struct.t_font_list_entry* %in_font_entry, %struct.t_font_list_entry** %2, align 8
  %3 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %2, align 8
  %4 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

; <label>:7                                       ; preds = %0
  %8 = call i32 @PDFObject_New()
  %9 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %2, align 8
  %10 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 4
  br label %11

; <label>:11                                      ; preds = %7, %0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %13 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %2, align 8
  %14 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  call void @PDFObject_WriteObj(%struct._IO_FILE* %12, i32 %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @PDFFont_IsOneOfTheBase14Fonts(i8* %in_real_font_name) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %in_real_font_name, i8** %2, align 8
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %16, %0
  %4 = load i32, i32* %i, align 4
  %5 = icmp slt i32 %4, 14
  br i1 %5, label %6, label %19

; <label>:6                                       ; preds = %3
  %7 = load i32, i32* %i, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [14 x i8*], [14 x i8*]* @g_standard_base_14_fonts, i32 0, i64 %8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @strcmp(i8* %10, i8* %11) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %6
  store i32 1, i32* %1
  br label %20

; <label>:15                                      ; preds = %6
  br label %16

; <label>:16                                      ; preds = %15
  %17 = load i32, i32* %i, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %i, align 4
  br label %3

; <label>:19                                      ; preds = %3
  store i32 0, i32* %1
  br label %20

; <label>:20                                      ; preds = %19, %14
  %21 = load i32, i32* %1
  ret i32 %21
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
