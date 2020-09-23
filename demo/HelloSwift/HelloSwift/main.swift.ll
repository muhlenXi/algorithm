; ModuleID = '<swift-imported-modules>'
source_filename = "<swift-imported-modules>"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%T4main6PersonC = type <{ %swift.refcounted, %TSS, %TSi }>
%swift.refcounted = type { %swift.type*, i64 }
%swift.type = type { i64 }
%TSS = type <{ %Ts11_StringGutsV }>
%Ts11_StringGutsV = type <{ %Ts13_StringObjectV }>
%Ts13_StringObjectV = type <{ %Ts6UInt64V, %swift.bridge* }>
%Ts6UInt64V = type <{ i64 }>
%swift.bridge = type opaque
%TSi = type <{ i64 }>
%swift.full_type = type { i8**, %swift.type }
%objc_class = type { %objc_class*, %objc_class*, %swift.opaque*, %swift.opaque*, i64 }
%swift.opaque = type opaque
%swift.method_descriptor = type { i32, i32 }
%swift.type_metadata_record = type { i32 }
%swift.metadata_response = type { %swift.type*, i64 }
%"$s4main6PersonC4nameSSvM.Frame" = type { [24 x i8] }
%"$s4main6PersonC3ageSivM.Frame" = type { [24 x i8] }
%Any = type { [24 x i8], %swift.type* }

@"$s4main6personAA6PersonCvp" = hidden global %T4main6PersonC* null, align 8
@0 = private unnamed_addr constant [7 x i8] c"unknow\00"
@"$sypN" = external global %swift.full_type
@1 = private unnamed_addr constant [6 x i8] c"Hello\00"
@"$sSSN" = external global %swift.type, align 8
@"\01l_entry_point" = private constant { i32 } { i32 trunc (i64 sub (i64 ptrtoint (i32 (i32, i8**)* @main to i64), i64 ptrtoint ({ i32 }* @"\01l_entry_point" to i64)) to i32) }, section "__TEXT, __swift5_entry, regular, no_dead_strip", align 4
@"$s4main6PersonC4nameSSvpWvd" = hidden constant i64 16, align 8
@"$s4main6PersonC3ageSivpWvd" = hidden constant i64 32, align 8
@"$sBoWV" = external global i8*, align 8
@"$s4main6PersonCMm" = hidden global %objc_class { %objc_class* @"OBJC_METACLASS_$__TtCs12_SwiftObject", %objc_class* @"OBJC_METACLASS_$__TtCs12_SwiftObject", %swift.opaque* @_objc_empty_cache, %swift.opaque* null, i64 ptrtoint ({ i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }* @_METACLASS_DATA__TtC4main6Person to i64) }, align 8
@"OBJC_CLASS_$__TtCs12_SwiftObject" = external global %objc_class, align 8
@_objc_empty_cache = external global %swift.opaque
@"OBJC_METACLASS_$__TtCs12_SwiftObject" = external global %objc_class, align 8
@2 = private unnamed_addr constant [17 x i8] c"_TtC4main6Person\00"
@_METACLASS_DATA__TtC4main6Person = internal constant { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* } { i32 129, i32 40, i32 40, i32 0, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2, i64 0, i64 0), i8* null, i8* null, i8* null, i8* null, i8* null }, section "__DATA, __objc_const", align 8
@3 = private unnamed_addr constant [5 x i8] c"name\00"
@4 = private unnamed_addr constant [1 x i8] zeroinitializer
@5 = private unnamed_addr constant [4 x i8] c"age\00"
@_IVARS__TtC4main6Person = internal constant { i32, i32, [2 x { i64*, i8*, i8*, i32, i32 }] } { i32 32, i32 2, [2 x { i64*, i8*, i8*, i32, i32 }] [{ i64*, i8*, i8*, i32, i32 } { i64* @"$s4main6PersonC4nameSSvpWvd", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @4, i64 0, i64 0), i32 3, i32 16 }, { i64*, i8*, i8*, i32, i32 } { i64* @"$s4main6PersonC3ageSivpWvd", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @4, i64 0, i64 0), i32 3, i32 8 }] }, section "__DATA, __objc_const", align 8
@_DATA__TtC4main6Person = internal constant { i32, i32, i32, i32, i8*, i8*, i8*, i8*, { i32, i32, [2 x { i64*, i8*, i8*, i32, i32 }] }*, i8*, i8* } { i32 128, i32 16, i32 40, i32 0, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2, i64 0, i64 0), i8* null, i8* null, { i32, i32, [2 x { i64*, i8*, i8*, i32, i32 }] }* @_IVARS__TtC4main6Person, i8* null, i8* null }, section "__DATA, __objc_const", align 8
@6 = private constant [5 x i8] c"main\00"
@"$s4mainMXM" = linkonce_odr hidden constant <{ i32, i32, i32 }> <{ i32 0, i32 0, i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @6 to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32 }>, <{ i32, i32, i32 }>* @"$s4mainMXM", i32 0, i32 2) to i64)) to i32) }>, section "__TEXT,__const", align 4
@7 = private constant [7 x i8] c"Person\00"
@"$s4main6PersonCMn" = hidden constant <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }> <{ i32 -2147483568, i32 trunc (i64 sub (i64 ptrtoint (<{ i32, i32, i32 }>* @"$s4mainMXM" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main6PersonCMn", i32 0, i32 1) to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([7 x i8]* @7 to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main6PersonCMn", i32 0, i32 2) to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (%swift.metadata_response (i64)* @"$s4main6PersonCMa" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main6PersonCMn", i32 0, i32 3) to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ({ i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32 }* @"$s4main6PersonCMF" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main6PersonCMn", i32 0, i32 4) to i64)) to i32), i32 0, i32 2, i32 20, i32 10, i32 2, i32 10, i32 12, i32 8, %swift.method_descriptor { i32 18, i32 trunc (i64 sub (i64 ptrtoint ({ i64, %swift.bridge* } (%T4main6PersonC*)* @"$s4main6PersonC4nameSSvg" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main6PersonCMn", i32 0, i32 13, i32 1) to i64)) to i32) }, %swift.method_descriptor { i32 19, i32 trunc (i64 sub (i64 ptrtoint (void (i64, %swift.bridge*, %T4main6PersonC*)* @"$s4main6PersonC4nameSSvs" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main6PersonCMn", i32 0, i32 14, i32 1) to i64)) to i32) }, %swift.method_descriptor { i32 20, i32 trunc (i64 sub (i64 ptrtoint ({ i8*, %TSS* } (i8*, %T4main6PersonC*)* @"$s4main6PersonC4nameSSvM" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main6PersonCMn", i32 0, i32 15, i32 1) to i64)) to i32) }, %swift.method_descriptor { i32 18, i32 trunc (i64 sub (i64 ptrtoint (i64 (%T4main6PersonC*)* @"$s4main6PersonC3ageSivg" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main6PersonCMn", i32 0, i32 16, i32 1) to i64)) to i32) }, %swift.method_descriptor { i32 19, i32 trunc (i64 sub (i64 ptrtoint (void (i64, %T4main6PersonC*)* @"$s4main6PersonC3ageSivs" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main6PersonCMn", i32 0, i32 17, i32 1) to i64)) to i32) }, %swift.method_descriptor { i32 20, i32 trunc (i64 sub (i64 ptrtoint ({ i8*, %TSi* } (i8*, %T4main6PersonC*)* @"$s4main6PersonC3ageSivM" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main6PersonCMn", i32 0, i32 18, i32 1) to i64)) to i32) }, %swift.method_descriptor { i32 16, i32 trunc (i64 sub (i64 ptrtoint (void (%T4main6PersonC*)* @"$s4main6PersonC8sayHelloyyF" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main6PersonCMn", i32 0, i32 19, i32 1) to i64)) to i32) }, %swift.method_descriptor { i32 1, i32 trunc (i64 sub (i64 ptrtoint (%T4main6PersonC* (%swift.type*)* @"$s4main6PersonCACycfC" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main6PersonCMn", i32 0, i32 20, i32 1) to i64)) to i32) } }>, section "__TEXT,__const", align 4
@"$s4main6PersonCMf" = internal global <{ void (%T4main6PersonC*)*, i8**, i64, %objc_class*, %swift.opaque*, %swift.opaque*, i64, i32, i32, i32, i16, i16, i32, i32, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>*, i8*, i64, i64, { i64, %swift.bridge* } (%T4main6PersonC*)*, void (i64, %swift.bridge*, %T4main6PersonC*)*, { i8*, %TSS* } (i8*, %T4main6PersonC*)*, i64 (%T4main6PersonC*)*, void (i64, %T4main6PersonC*)*, { i8*, %TSi* } (i8*, %T4main6PersonC*)*, void (%T4main6PersonC*)*, %T4main6PersonC* (%swift.type*)* }> <{ void (%T4main6PersonC*)* @"$s4main6PersonCfD", i8** @"$sBoWV", i64 ptrtoint (%objc_class* @"$s4main6PersonCMm" to i64), %objc_class* @"OBJC_CLASS_$__TtCs12_SwiftObject", %swift.opaque* @_objc_empty_cache, %swift.opaque* null, i64 add (i64 ptrtoint ({ i32, i32, i32, i32, i8*, i8*, i8*, i8*, { i32, i32, [2 x { i64*, i8*, i8*, i32, i32 }] }*, i8*, i8* }* @_DATA__TtC4main6Person to i64), i64 2), i32 2, i32 0, i32 40, i16 7, i16 0, i32 176, i32 16, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main6PersonCMn", i8* null, i64 16, i64 32, { i64, %swift.bridge* } (%T4main6PersonC*)* @"$s4main6PersonC4nameSSvg", void (i64, %swift.bridge*, %T4main6PersonC*)* @"$s4main6PersonC4nameSSvs", { i8*, %TSS* } (i8*, %T4main6PersonC*)* @"$s4main6PersonC4nameSSvM", i64 (%T4main6PersonC*)* @"$s4main6PersonC3ageSivg", void (i64, %T4main6PersonC*)* @"$s4main6PersonC3ageSivs", { i8*, %TSi* } (i8*, %T4main6PersonC*)* @"$s4main6PersonC3ageSivM", void (%T4main6PersonC*)* @"$s4main6PersonC8sayHelloyyF", %T4main6PersonC* (%swift.type*)* @"$s4main6PersonCACycfC" }>, align 8
@"symbolic _____ 4main6PersonC" = linkonce_odr hidden constant <{ i8, i32, i8 }> <{ i8 1, i32 trunc (i64 sub (i64 ptrtoint (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main6PersonCMn" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i8, i32, i8 }>, <{ i8, i32, i8 }>* @"symbolic _____ 4main6PersonC", i32 0, i32 1) to i64)) to i32), i8 0 }>, section "__TEXT,__swift5_typeref, regular, no_dead_strip", align 2
@"symbolic SS" = linkonce_odr hidden constant <{ [2 x i8], i8 }> <{ [2 x i8] c"SS", i8 0 }>, section "__TEXT,__swift5_typeref, regular, no_dead_strip", align 2
@8 = private constant [5 x i8] c"name\00", section "__TEXT,__swift5_reflstr, regular, no_dead_strip"
@"symbolic Si" = linkonce_odr hidden constant <{ [2 x i8], i8 }> <{ [2 x i8] c"Si", i8 0 }>, section "__TEXT,__swift5_typeref, regular, no_dead_strip", align 2
@9 = private constant [4 x i8] c"age\00", section "__TEXT,__swift5_reflstr, regular, no_dead_strip"
@"$s4main6PersonCMF" = internal constant { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (<{ i8, i32, i8 }>* @"symbolic _____ 4main6PersonC" to i64), i64 ptrtoint ({ i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32 }* @"$s4main6PersonCMF" to i64)) to i32), i32 0, i16 1, i16 12, i32 2, i32 2, i32 trunc (i64 sub (i64 ptrtoint (<{ [2 x i8], i8 }>* @"symbolic SS" to i64), i64 ptrtoint (i32* getelementptr inbounds ({ i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32 }, { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32 }* @"$s4main6PersonCMF", i32 0, i32 6) to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @8 to i64), i64 ptrtoint (i32* getelementptr inbounds ({ i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32 }, { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32 }* @"$s4main6PersonCMF", i32 0, i32 7) to i64)) to i32), i32 2, i32 trunc (i64 sub (i64 ptrtoint (<{ [2 x i8], i8 }>* @"symbolic Si" to i64), i64 ptrtoint (i32* getelementptr inbounds ({ i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32 }, { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32 }* @"$s4main6PersonCMF", i32 0, i32 9) to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([4 x i8]* @9 to i64), i64 ptrtoint (i32* getelementptr inbounds ({ i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32 }, { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32 }* @"$s4main6PersonCMF", i32 0, i32 10) to i64)) to i32) }, section "__TEXT,__swift5_fieldmd, regular, no_dead_strip", align 4
@"_swift_FORCE_LOAD_$_swiftFoundation_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftFoundation"
@"_swift_FORCE_LOAD_$_swiftObjectiveC_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftObjectiveC"
@"_swift_FORCE_LOAD_$_swiftDarwin_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftDarwin"
@"_swift_FORCE_LOAD_$_swiftCoreFoundation_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftCoreFoundation"
@"_swift_FORCE_LOAD_$_swiftDispatch_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftDispatch"
@"_swift_FORCE_LOAD_$_swiftCoreGraphics_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftCoreGraphics"
@"_swift_FORCE_LOAD_$_swiftIOKit_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftIOKit"
@"_swift_FORCE_LOAD_$_swiftXPC_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftXPC"
@"_swift_FORCE_LOAD_$_swiftCompatibility51_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftCompatibility51"
@10 = private unnamed_addr constant [2 x i8] c"\0A\00"
@11 = private unnamed_addr constant [2 x i8] c" \00"
@"\01l_type_metadata_table" = private constant [1 x %swift.type_metadata_record] [%swift.type_metadata_record { i32 trunc (i64 sub (i64 ptrtoint (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main6PersonCMn" to i64), i64 ptrtoint ([1 x %swift.type_metadata_record]* @"\01l_type_metadata_table" to i64)) to i32) }], section "__TEXT, __swift5_types, regular, no_dead_strip", align 4
@__swift_reflection_version = linkonce_odr hidden constant i16 3
@objc_classes = internal global [1 x i8*] [i8* bitcast (%swift.type* @"$s4main6PersonCN" to i8*)], section "__DATA,__objc_classlist,regular,no_dead_strip", align 8
@llvm.used = appending global [15 x i8*] [i8* bitcast (i32 (i32, i8**)* @main to i8*), i8* bitcast ({ i32 }* @"\01l_entry_point" to i8*), i8* bitcast ({ i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32 }* @"$s4main6PersonCMF" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftFoundation_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftObjectiveC_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftDarwin_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftCoreFoundation_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftDispatch_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftCoreGraphics_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftIOKit_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftXPC_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftCompatibility51_$_main" to i8*), i8* bitcast ([1 x %swift.type_metadata_record]* @"\01l_type_metadata_table" to i8*), i8* bitcast (i16* @__swift_reflection_version to i8*), i8* bitcast ([1 x i8*]* @objc_classes to i8*)], section "llvm.metadata", align 8

@"$s4main6PersonC4nameSSvgTq" = hidden alias %swift.method_descriptor, getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main6PersonCMn", i32 0, i32 13)
@"$s4main6PersonC4nameSSvsTq" = hidden alias %swift.method_descriptor, getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main6PersonCMn", i32 0, i32 14)
@"$s4main6PersonC4nameSSvMTq" = hidden alias %swift.method_descriptor, getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main6PersonCMn", i32 0, i32 15)
@"$s4main6PersonC3ageSivgTq" = hidden alias %swift.method_descriptor, getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main6PersonCMn", i32 0, i32 16)
@"$s4main6PersonC3ageSivsTq" = hidden alias %swift.method_descriptor, getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main6PersonCMn", i32 0, i32 17)
@"$s4main6PersonC3ageSivMTq" = hidden alias %swift.method_descriptor, getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main6PersonCMn", i32 0, i32 18)
@"$s4main6PersonC8sayHelloyyFTq" = hidden alias %swift.method_descriptor, getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main6PersonCMn", i32 0, i32 19)
@"$s4main6PersonCACycfCTq" = hidden alias %swift.method_descriptor, getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main6PersonCMn", i32 0, i32 20)
@"$s4main6PersonCN" = hidden alias %swift.type, bitcast (i64* getelementptr inbounds (<{ void (%T4main6PersonC*)*, i8**, i64, %objc_class*, %swift.opaque*, %swift.opaque*, i64, i32, i32, i32, i16, i16, i32, i32, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>*, i8*, i64, i64, { i64, %swift.bridge* } (%T4main6PersonC*)*, void (i64, %swift.bridge*, %T4main6PersonC*)*, { i8*, %TSS* } (i8*, %T4main6PersonC*)*, i64 (%T4main6PersonC*)*, void (i64, %T4main6PersonC*)*, { i8*, %TSi* } (i8*, %T4main6PersonC*)*, void (%T4main6PersonC*)*, %T4main6PersonC* (%swift.type*)* }>, <{ void (%T4main6PersonC*)*, i8**, i64, %objc_class*, %swift.opaque*, %swift.opaque*, i64, i32, i32, i32, i16, i16, i32, i32, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>*, i8*, i64, i64, { i64, %swift.bridge* } (%T4main6PersonC*)*, void (i64, %swift.bridge*, %T4main6PersonC*)*, { i8*, %TSS* } (i8*, %T4main6PersonC*)*, i64 (%T4main6PersonC*)*, void (i64, %T4main6PersonC*)*, { i8*, %TSi* } (i8*, %T4main6PersonC*)*, void (%T4main6PersonC*)*, %T4main6PersonC* (%swift.type*)* }>* @"$s4main6PersonCMf", i32 0, i32 2) to %swift.type*)
define i32 @main(i32 %0, i8** %1) #0 {
entry:
  %2 = bitcast i8** %1 to i8*
  %3 = call swiftcc %swift.metadata_response @"$s4main6PersonCMa"(i64 0) #8
  %4 = extractvalue %swift.metadata_response %3, 0
  %5 = call swiftcc %T4main6PersonC* @"$s4main6PersonCACycfC"(%swift.type* swiftself %4)
  store %T4main6PersonC* %5, %T4main6PersonC** @"$s4main6personAA6PersonCvp", align 8
  %6 = load %T4main6PersonC*, %T4main6PersonC** @"$s4main6personAA6PersonCvp", align 8
  %7 = getelementptr inbounds %T4main6PersonC, %T4main6PersonC* %6, i32 0, i32 0, i32 0
  %8 = load %swift.type*, %swift.type** %7, align 8
  %9 = bitcast %swift.type* %8 to void (%T4main6PersonC*)**
  %10 = getelementptr inbounds void (%T4main6PersonC*)*, void (%T4main6PersonC*)** %9, i64 18
  %11 = load void (%T4main6PersonC*)*, void (%T4main6PersonC*)** %10, align 8, !invariant.load !46
  call swiftcc void %11(%T4main6PersonC* swiftself %6)
  ret i32 0
}
; Function Attrs: noinline nounwind readnone
define hidden swiftcc %swift.metadata_response @"$s4main6PersonCMa"(i64 %0) #1 {
entry:
  %1 = call %objc_class* @objc_opt_self(%objc_class* bitcast (i64* getelementptr inbounds (<{ void (%T4main6PersonC*)*, i8**, i64, %objc_class*, %swift.opaque*, %swift.opaque*, i64, i32, i32, i32, i16, i16, i32, i32, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>*, i8*, i64, i64, { i64, %swift.bridge* } (%T4main6PersonC*)*, void (i64, %swift.bridge*, %T4main6PersonC*)*, { i8*, %TSS* } (i8*, %T4main6PersonC*)*, i64 (%T4main6PersonC*)*, void (i64, %T4main6PersonC*)*, { i8*, %TSi* } (i8*, %T4main6PersonC*)*, void (%T4main6PersonC*)*, %T4main6PersonC* (%swift.type*)* }>, <{ void (%T4main6PersonC*)*, i8**, i64, %objc_class*, %swift.opaque*, %swift.opaque*, i64, i32, i32, i32, i16, i16, i32, i32, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>*, i8*, i64, i64, { i64, %swift.bridge* } (%T4main6PersonC*)*, void (i64, %swift.bridge*, %T4main6PersonC*)*, { i8*, %TSS* } (i8*, %T4main6PersonC*)*, i64 (%T4main6PersonC*)*, void (i64, %T4main6PersonC*)*, { i8*, %TSi* } (i8*, %T4main6PersonC*)*, void (%T4main6PersonC*)*, %T4main6PersonC* (%swift.type*)* }>* @"$s4main6PersonCMf", i32 0, i32 2) to %objc_class*))
  %2 = bitcast %objc_class* %1 to %swift.type*
  %3 = insertvalue %swift.metadata_response undef, %swift.type* %2, 0
  %4 = insertvalue %swift.metadata_response %3, i64 0, 1
  ret %swift.metadata_response %4
}
define hidden swiftcc { i64, %swift.bridge* } @"$s4main6PersonC4nameSSvpfi"() #0 {
entry:
  %0 = call swiftcc { i64, %swift.bridge* } @"$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC"(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @0, i64 0, i64 0), i64 6, i1 true)
  %1 = extractvalue { i64, %swift.bridge* } %0, 0
  %2 = extractvalue { i64, %swift.bridge* } %0, 1
  %3 = insertvalue { i64, %swift.bridge* } undef, i64 %1, 0
  %4 = insertvalue { i64, %swift.bridge* } %3, %swift.bridge* %2, 1
  ret { i64, %swift.bridge* } %4
}
define hidden swiftcc { i64, %swift.bridge* } @"$s4main6PersonC4nameSSvg"(%T4main6PersonC* swiftself %0) #0 {
entry:
  %access-scratch = alloca [24 x i8], align 8
  %1 = getelementptr inbounds %T4main6PersonC, %T4main6PersonC* %0, i32 0, i32 1
  %2 = bitcast [24 x i8]* %access-scratch to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %2)
  %3 = bitcast %TSS* %1 to i8*
  call void @swift_beginAccess(i8* %3, [24 x i8]* %access-scratch, i64 32, i8* null) #4
  %._guts = getelementptr inbounds %TSS, %TSS* %1, i32 0, i32 0
  %._guts._object = getelementptr inbounds %Ts11_StringGutsV, %Ts11_StringGutsV* %._guts, i32 0, i32 0
  %._guts._object._countAndFlagsBits = getelementptr inbounds %Ts13_StringObjectV, %Ts13_StringObjectV* %._guts._object, i32 0, i32 0
  %._guts._object._countAndFlagsBits._value = getelementptr inbounds %Ts6UInt64V, %Ts6UInt64V* %._guts._object._countAndFlagsBits, i32 0, i32 0
  %4 = load i64, i64* %._guts._object._countAndFlagsBits._value, align 8
  %._guts._object._object = getelementptr inbounds %Ts13_StringObjectV, %Ts13_StringObjectV* %._guts._object, i32 0, i32 1
  %5 = load %swift.bridge*, %swift.bridge** %._guts._object._object, align 8
  %6 = call %swift.bridge* @swift_bridgeObjectRetain(%swift.bridge* returned %5) #4
  call void @swift_endAccess([24 x i8]* %access-scratch) #4
  %7 = bitcast [24 x i8]* %access-scratch to i8*
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %7)
  %8 = insertvalue { i64, %swift.bridge* } undef, i64 %4, 0
  %9 = insertvalue { i64, %swift.bridge* } %8, %swift.bridge* %5, 1
  ret { i64, %swift.bridge* } %9
}
define hidden swiftcc void @"$s4main6PersonC4nameSSvs"(i64 %0, %swift.bridge* %1, %T4main6PersonC* swiftself %2) #0 {
entry:
  %access-scratch = alloca [24 x i8], align 8
  %3 = call %swift.bridge* @swift_bridgeObjectRetain(%swift.bridge* returned %1) #4
  %4 = getelementptr inbounds %T4main6PersonC, %T4main6PersonC* %2, i32 0, i32 1
  %5 = bitcast [24 x i8]* %access-scratch to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %5)
  %6 = bitcast %TSS* %4 to i8*
  call void @swift_beginAccess(i8* %6, [24 x i8]* %access-scratch, i64 33, i8* null) #4
  %._guts = getelementptr inbounds %TSS, %TSS* %4, i32 0, i32 0
  %._guts._object = getelementptr inbounds %Ts11_StringGutsV, %Ts11_StringGutsV* %._guts, i32 0, i32 0
  %._guts._object._countAndFlagsBits = getelementptr inbounds %Ts13_StringObjectV, %Ts13_StringObjectV* %._guts._object, i32 0, i32 0
  %._guts._object._countAndFlagsBits._value = getelementptr inbounds %Ts6UInt64V, %Ts6UInt64V* %._guts._object._countAndFlagsBits, i32 0, i32 0
  %7 = load i64, i64* %._guts._object._countAndFlagsBits._value, align 8
  %._guts._object._object = getelementptr inbounds %Ts13_StringObjectV, %Ts13_StringObjectV* %._guts._object, i32 0, i32 1
  %8 = load %swift.bridge*, %swift.bridge** %._guts._object._object, align 8
  %._guts1 = getelementptr inbounds %TSS, %TSS* %4, i32 0, i32 0
  %._guts1._object = getelementptr inbounds %Ts11_StringGutsV, %Ts11_StringGutsV* %._guts1, i32 0, i32 0
  %._guts1._object._countAndFlagsBits = getelementptr inbounds %Ts13_StringObjectV, %Ts13_StringObjectV* %._guts1._object, i32 0, i32 0
  %._guts1._object._countAndFlagsBits._value = getelementptr inbounds %Ts6UInt64V, %Ts6UInt64V* %._guts1._object._countAndFlagsBits, i32 0, i32 0
  store i64 %0, i64* %._guts1._object._countAndFlagsBits._value, align 8
  %._guts1._object._object = getelementptr inbounds %Ts13_StringObjectV, %Ts13_StringObjectV* %._guts1._object, i32 0, i32 1
  store %swift.bridge* %1, %swift.bridge** %._guts1._object._object, align 8
  call void @swift_bridgeObjectRelease(%swift.bridge* %8) #4
  call void @swift_endAccess([24 x i8]* %access-scratch) #4
  %9 = bitcast [24 x i8]* %access-scratch to i8*
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %9)
  call void @swift_bridgeObjectRelease(%swift.bridge* %1) #4
  ret void
}
; Function Attrs: noinline
define hidden swiftcc { i8*, %TSS* } @"$s4main6PersonC4nameSSvM"(i8* noalias dereferenceable(32) %0, %T4main6PersonC* swiftself %1) #2 {
entry:
  %FramePtr = bitcast i8* %0 to %"$s4main6PersonC4nameSSvM.Frame"*
  %access-scratch = getelementptr inbounds %"$s4main6PersonC4nameSSvM.Frame", %"$s4main6PersonC4nameSSvM.Frame"* %FramePtr, i32 0, i32 0
  %2 = getelementptr inbounds %T4main6PersonC, %T4main6PersonC* %1, i32 0, i32 1
  %3 = bitcast [24 x i8]* %access-scratch to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %3)
  %4 = bitcast %TSS* %2 to i8*
  call void @swift_beginAccess(i8* %4, [24 x i8]* %access-scratch, i64 33, i8* null) #4
  %5 = insertvalue { i8*, %TSS* } { i8* bitcast (void (i8*, i1)* @"$s4main6PersonC4nameSSvM.resume.0" to i8*), %TSS* undef }, %TSS* %2, 1
  ret { i8*, %TSS* } %5
}
define internal swiftcc void @"$s4main6PersonC4nameSSvM.resume.0"(i8* noalias nonnull align 8 dereferenceable(32) %0, i1 %1) #0 {
entryresume.0:
  %FramePtr = bitcast i8* %0 to %"$s4main6PersonC4nameSSvM.Frame"*
  %vFrame = bitcast %"$s4main6PersonC4nameSSvM.Frame"* %FramePtr to i8*
  %access-scratch = getelementptr inbounds %"$s4main6PersonC4nameSSvM.Frame", %"$s4main6PersonC4nameSSvM.Frame"* %FramePtr, i32 0, i32 0
  %access-scratch.reload.addr1 = getelementptr inbounds %"$s4main6PersonC4nameSSvM.Frame", %"$s4main6PersonC4nameSSvM.Frame"* %FramePtr, i32 0, i32 0
  call void @swift_endAccess([24 x i8]* %access-scratch.reload.addr1) #4
  %2 = bitcast [24 x i8]* %access-scratch.reload.addr1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %2)
  ret void
}
define hidden swiftcc i64 @"$s4main6PersonC3ageSivpfi"() #0 {
entry:
  ret i64 0
}
define hidden swiftcc i64 @"$s4main6PersonC3ageSivg"(%T4main6PersonC* swiftself %0) #0 {
entry:
  %access-scratch = alloca [24 x i8], align 8
  %1 = getelementptr inbounds %T4main6PersonC, %T4main6PersonC* %0, i32 0, i32 2
  %2 = bitcast [24 x i8]* %access-scratch to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %2)
  %3 = bitcast %TSi* %1 to i8*
  call void @swift_beginAccess(i8* %3, [24 x i8]* %access-scratch, i64 32, i8* null) #4
  %._value = getelementptr inbounds %TSi, %TSi* %1, i32 0, i32 0
  %4 = load i64, i64* %._value, align 8
  call void @swift_endAccess([24 x i8]* %access-scratch) #4
  %5 = bitcast [24 x i8]* %access-scratch to i8*
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %5)
  ret i64 %4
}
define hidden swiftcc void @"$s4main6PersonC3ageSivs"(i64 %0, %T4main6PersonC* swiftself %1) #0 {
entry:
  %access-scratch = alloca [24 x i8], align 8
  %2 = getelementptr inbounds %T4main6PersonC, %T4main6PersonC* %1, i32 0, i32 2
  %3 = bitcast [24 x i8]* %access-scratch to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %3)
  %4 = bitcast %TSi* %2 to i8*
  call void @swift_beginAccess(i8* %4, [24 x i8]* %access-scratch, i64 33, i8* null) #4
  %._value = getelementptr inbounds %TSi, %TSi* %2, i32 0, i32 0
  store i64 %0, i64* %._value, align 8
  call void @swift_endAccess([24 x i8]* %access-scratch) #4
  %5 = bitcast [24 x i8]* %access-scratch to i8*
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %5)
  ret void
}
; Function Attrs: noinline
define hidden swiftcc { i8*, %TSi* } @"$s4main6PersonC3ageSivM"(i8* noalias dereferenceable(32) %0, %T4main6PersonC* swiftself %1) #2 {
entry:
  %FramePtr = bitcast i8* %0 to %"$s4main6PersonC3ageSivM.Frame"*
  %access-scratch = getelementptr inbounds %"$s4main6PersonC3ageSivM.Frame", %"$s4main6PersonC3ageSivM.Frame"* %FramePtr, i32 0, i32 0
  %2 = getelementptr inbounds %T4main6PersonC, %T4main6PersonC* %1, i32 0, i32 2
  %3 = bitcast [24 x i8]* %access-scratch to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %3)
  %4 = bitcast %TSi* %2 to i8*
  call void @swift_beginAccess(i8* %4, [24 x i8]* %access-scratch, i64 33, i8* null) #4
  %5 = insertvalue { i8*, %TSi* } { i8* bitcast (void (i8*, i1)* @"$s4main6PersonC3ageSivM.resume.0" to i8*), %TSi* undef }, %TSi* %2, 1
  ret { i8*, %TSi* } %5
}
define internal swiftcc void @"$s4main6PersonC3ageSivM.resume.0"(i8* noalias nonnull align 8 dereferenceable(32) %0, i1 %1) #0 {
entryresume.0:
  %FramePtr = bitcast i8* %0 to %"$s4main6PersonC3ageSivM.Frame"*
  %vFrame = bitcast %"$s4main6PersonC3ageSivM.Frame"* %FramePtr to i8*
  %access-scratch = getelementptr inbounds %"$s4main6PersonC3ageSivM.Frame", %"$s4main6PersonC3ageSivM.Frame"* %FramePtr, i32 0, i32 0
  %access-scratch.reload.addr1 = getelementptr inbounds %"$s4main6PersonC3ageSivM.Frame", %"$s4main6PersonC3ageSivM.Frame"* %FramePtr, i32 0, i32 0
  call void @swift_endAccess([24 x i8]* %access-scratch.reload.addr1) #4
  %2 = bitcast [24 x i8]* %access-scratch.reload.addr1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %2)
  ret void
}
define hidden swiftcc void @"$s4main6PersonC8sayHelloyyF"(%T4main6PersonC* swiftself %0) #0 {
entry:
  %self.debug = alloca %T4main6PersonC*, align 8
  %1 = bitcast %T4main6PersonC** %self.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  store %T4main6PersonC* %0, %T4main6PersonC** %self.debug, align 8
  %2 = call swiftcc { %swift.bridge*, i8* } @"$ss27_allocateUninitializedArrayySayxG_BptBwlF"(i64 1, %swift.type* getelementptr inbounds (%swift.full_type, %swift.full_type* @"$sypN", i32 0, i32 1))
  %3 = extractvalue { %swift.bridge*, i8* } %2, 0
  %4 = extractvalue { %swift.bridge*, i8* } %2, 1
  %5 = bitcast i8* %4 to %Any*
  %6 = call swiftcc { i64, %swift.bridge* } @"$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC"(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i64 0, i64 0), i64 5, i1 true)
  %7 = extractvalue { i64, %swift.bridge* } %6, 0
  %8 = extractvalue { i64, %swift.bridge* } %6, 1
  %9 = getelementptr inbounds %Any, %Any* %5, i32 0, i32 1
  store %swift.type* @"$sSSN", %swift.type** %9, align 8
  %10 = getelementptr inbounds %Any, %Any* %5, i32 0, i32 0
  %11 = getelementptr inbounds %Any, %Any* %5, i32 0, i32 0
  %12 = bitcast [24 x i8]* %11 to %TSS*
  %._guts = getelementptr inbounds %TSS, %TSS* %12, i32 0, i32 0
  %._guts._object = getelementptr inbounds %Ts11_StringGutsV, %Ts11_StringGutsV* %._guts, i32 0, i32 0
  %._guts._object._countAndFlagsBits = getelementptr inbounds %Ts13_StringObjectV, %Ts13_StringObjectV* %._guts._object, i32 0, i32 0
  %._guts._object._countAndFlagsBits._value = getelementptr inbounds %Ts6UInt64V, %Ts6UInt64V* %._guts._object._countAndFlagsBits, i32 0, i32 0
  store i64 %7, i64* %._guts._object._countAndFlagsBits._value, align 8
  %._guts._object._object = getelementptr inbounds %Ts13_StringObjectV, %Ts13_StringObjectV* %._guts._object, i32 0, i32 1
  store %swift.bridge* %8, %swift.bridge** %._guts._object._object, align 8
  %13 = call swiftcc { i64, %swift.bridge* } @"$ss5print_9separator10terminatoryypd_S2StFfA0_"()
  %14 = extractvalue { i64, %swift.bridge* } %13, 0
  %15 = extractvalue { i64, %swift.bridge* } %13, 1
  %16 = call swiftcc { i64, %swift.bridge* } @"$ss5print_9separator10terminatoryypd_S2StFfA1_"()
  %17 = extractvalue { i64, %swift.bridge* } %16, 0
  %18 = extractvalue { i64, %swift.bridge* } %16, 1
  call swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(%swift.bridge* %3, i64 %14, %swift.bridge* %15, i64 %17, %swift.bridge* %18)
  call void @swift_bridgeObjectRelease(%swift.bridge* %18) #4
  call void @swift_bridgeObjectRelease(%swift.bridge* %15) #4
  call void @swift_bridgeObjectRelease(%swift.bridge* %3) #4
  ret void
}
define linkonce_odr hidden swiftcc { i64, %swift.bridge* } @"$ss5print_9separator10terminatoryypd_S2StFfA0_"() #0 {
entry:
  %0 = call swiftcc { i64, %swift.bridge* } @"$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @11, i64 0, i64 0), i64 1, i1 true)
  %1 = extractvalue { i64, %swift.bridge* } %0, 0
  %2 = extractvalue { i64, %swift.bridge* } %0, 1
  %3 = insertvalue { i64, %swift.bridge* } undef, i64 %1, 0
  %4 = insertvalue { i64, %swift.bridge* } %3, %swift.bridge* %2, 1
  ret { i64, %swift.bridge* } %4
}
define linkonce_odr hidden swiftcc { i64, %swift.bridge* } @"$ss5print_9separator10terminatoryypd_S2StFfA1_"() #0 {
entry:
  %0 = call swiftcc { i64, %swift.bridge* } @"$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @10, i64 0, i64 0), i64 1, i1 true)
  %1 = extractvalue { i64, %swift.bridge* } %0, 0
  %2 = extractvalue { i64, %swift.bridge* } %0, 1
  %3 = insertvalue { i64, %swift.bridge* } undef, i64 %1, 0
  %4 = insertvalue { i64, %swift.bridge* } %3, %swift.bridge* %2, 1
  ret { i64, %swift.bridge* } %4
}
define hidden swiftcc %swift.refcounted* @"$s4main6PersonCfd"(%T4main6PersonC* swiftself %0) #0 {
entry:
  %self.debug = alloca %T4main6PersonC*, align 8
  %1 = bitcast %T4main6PersonC** %self.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  store %T4main6PersonC* %0, %T4main6PersonC** %self.debug, align 8
  %2 = getelementptr inbounds %T4main6PersonC, %T4main6PersonC* %0, i32 0, i32 1
  %3 = call %TSS* @"$sSSWOh"(%TSS* %2)
  %4 = bitcast %T4main6PersonC* %0 to %swift.refcounted*
  ret %swift.refcounted* %4
}
define hidden swiftcc void @"$s4main6PersonCfD"(%T4main6PersonC* swiftself %0) #0 {
entry:
  %self.debug = alloca %T4main6PersonC*, align 8
  %1 = bitcast %T4main6PersonC** %self.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  store %T4main6PersonC* %0, %T4main6PersonC** %self.debug, align 8
  %2 = call swiftcc %swift.refcounted* @"$s4main6PersonCfd"(%T4main6PersonC* swiftself %0)
  %3 = bitcast %swift.refcounted* %2 to %T4main6PersonC*
  %4 = bitcast %T4main6PersonC* %3 to %swift.refcounted*
  call void @swift_deallocClassInstance(%swift.refcounted* %4, i64 40, i64 7)
  ret void
}
define hidden swiftcc %T4main6PersonC* @"$s4main6PersonCACycfC"(%swift.type* swiftself %0) #0 {
entry:
  %1 = call noalias %swift.refcounted* @swift_allocObject(%swift.type* %0, i64 40, i64 7) #4
  %2 = bitcast %swift.refcounted* %1 to %T4main6PersonC*
  %3 = call swiftcc %T4main6PersonC* @"$s4main6PersonCACycfc"(%T4main6PersonC* swiftself %2)
  ret %T4main6PersonC* %3
}
declare swiftcc { i64, %swift.bridge* } @"$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC"(i8*, i64, i1) #0
; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3
; Function Attrs: nounwind
declare void @swift_beginAccess(i8*, [24 x i8]*, i64, i8*) #4
; Function Attrs: nounwind
declare %swift.bridge* @swift_bridgeObjectRetain(%swift.bridge* returned) #4
; Function Attrs: nounwind
declare void @swift_endAccess([24 x i8]*) #4
; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3
; Function Attrs: nounwind
declare void @swift_bridgeObjectRelease(%swift.bridge*) #4
declare swiftcc void @"$s4main6PersonCSSIetMAgYl_TC"(i8* noalias dereferenceable(32), i1) #0
declare i8* @malloc(i64)
declare void @free(i8*)
; Function Attrs: nounwind
declare token @llvm.coro.id.retcon.once(i32, i32, i8*, i8*, i8*, i8*) #4
; Function Attrs: nounwind
declare i8* @llvm.coro.begin(token, i8* writeonly) #4
; Function Attrs: nounwind
declare i1 @llvm.coro.suspend.retcon.i1(...) #4
; Function Attrs: nounwind
declare i1 @llvm.coro.end(i8*, i1) #4
declare swiftcc void @"$s4main6PersonCSiIetMAgYl_TC"(i8* noalias dereferenceable(32), i1) #0
; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5
declare swiftcc { %swift.bridge*, i8* } @"$ss27_allocateUninitializedArrayySayxG_BptBwlF"(i64, %swift.type*) #0
declare swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(%swift.bridge*, i64, %swift.bridge*, i64, %swift.bridge*) #0
; Function Attrs: noinline nounwind
define linkonce_odr hidden %TSS* @"$sSSWOh"(%TSS* %0) #6 {
entry:
  %._guts = getelementptr inbounds %TSS, %TSS* %0, i32 0, i32 0
  %._guts._object = getelementptr inbounds %Ts11_StringGutsV, %Ts11_StringGutsV* %._guts, i32 0, i32 0
  %._guts._object._object = getelementptr inbounds %Ts13_StringObjectV, %Ts13_StringObjectV* %._guts._object, i32 0, i32 1
  %toDestroy = load %swift.bridge*, %swift.bridge** %._guts._object._object, align 8
  call void @swift_bridgeObjectRelease(%swift.bridge* %toDestroy) #4
  ret %TSS* %0
}
; Function Attrs: nounwind
declare void @swift_deallocClassInstance(%swift.refcounted*, i64, i64) #4
; Function Attrs: nounwind
declare %swift.refcounted* @swift_allocObject(%swift.type*, i64, i64) #4
define hidden swiftcc %T4main6PersonC* @"$s4main6PersonCACycfc"(%T4main6PersonC* swiftself %0) #0 {
entry:
  %self.debug = alloca %T4main6PersonC*, align 8
  %1 = bitcast %T4main6PersonC** %self.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %access-scratch = alloca [24 x i8], align 8
  %access-scratch1 = alloca [24 x i8], align 8
  store %T4main6PersonC* %0, %T4main6PersonC** %self.debug, align 8
  %2 = call swiftcc { i64, %swift.bridge* } @"$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC"(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @0, i64 0, i64 0), i64 6, i1 true)
  %3 = extractvalue { i64, %swift.bridge* } %2, 0
  %4 = extractvalue { i64, %swift.bridge* } %2, 1
  %5 = getelementptr inbounds %T4main6PersonC, %T4main6PersonC* %0, i32 0, i32 1
  %6 = bitcast [24 x i8]* %access-scratch to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %6)
  %7 = bitcast %TSS* %5 to i8*
  call void @swift_beginAccess(i8* %7, [24 x i8]* %access-scratch, i64 33, i8* null) #4
  %._guts = getelementptr inbounds %TSS, %TSS* %5, i32 0, i32 0
  %._guts._object = getelementptr inbounds %Ts11_StringGutsV, %Ts11_StringGutsV* %._guts, i32 0, i32 0
  %._guts._object._countAndFlagsBits = getelementptr inbounds %Ts13_StringObjectV, %Ts13_StringObjectV* %._guts._object, i32 0, i32 0
  %._guts._object._countAndFlagsBits._value = getelementptr inbounds %Ts6UInt64V, %Ts6UInt64V* %._guts._object._countAndFlagsBits, i32 0, i32 0
  store i64 %3, i64* %._guts._object._countAndFlagsBits._value, align 8
  %._guts._object._object = getelementptr inbounds %Ts13_StringObjectV, %Ts13_StringObjectV* %._guts._object, i32 0, i32 1
  store %swift.bridge* %4, %swift.bridge** %._guts._object._object, align 8
  call void @swift_endAccess([24 x i8]* %access-scratch) #4
  %8 = bitcast [24 x i8]* %access-scratch to i8*
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %8)
  %9 = getelementptr inbounds %T4main6PersonC, %T4main6PersonC* %0, i32 0, i32 2
  %10 = bitcast [24 x i8]* %access-scratch1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %10)
  %11 = bitcast %TSi* %9 to i8*
  call void @swift_beginAccess(i8* %11, [24 x i8]* %access-scratch1, i64 33, i8* null) #4
  %._value = getelementptr inbounds %TSi, %TSi* %9, i32 0, i32 0
  store i64 0, i64* %._value, align 8
  call void @swift_endAccess([24 x i8]* %access-scratch1) #4
  %12 = bitcast [24 x i8]* %access-scratch1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %12)
  ret %T4main6PersonC* %0
}
; Function Attrs: nounwind
declare %objc_class* @objc_opt_self(%objc_class*) #4
declare extern_weak void @"_swift_FORCE_LOAD_$_swiftFoundation"()
declare extern_weak void @"_swift_FORCE_LOAD_$_swiftObjectiveC"()
declare extern_weak void @"_swift_FORCE_LOAD_$_swiftDarwin"()
declare extern_weak void @"_swift_FORCE_LOAD_$_swiftCoreFoundation"()
declare extern_weak void @"_swift_FORCE_LOAD_$_swiftDispatch"()
declare extern_weak void @"_swift_FORCE_LOAD_$_swiftCoreGraphics"()
declare extern_weak void @"_swift_FORCE_LOAD_$_swiftIOKit"()
declare extern_weak void @"_swift_FORCE_LOAD_$_swiftXPC"()
declare extern_weak void @"_swift_FORCE_LOAD_$_swiftCompatibility51"()
; Function Attrs: alwaysinline
define private void @coro.devirt.trigger(i8* %0) #7 {
entry:
  ret void
}

attributes #0 = { "frame-pointer"="all" "probe-stack"="__chkstk_darwin" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" }
attributes #1 = { noinline nounwind readnone "frame-pointer"="none" "probe-stack"="__chkstk_darwin" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" }
attributes #2 = { noinline "frame-pointer"="all" "probe-stack"="__chkstk_darwin" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { argmemonly nounwind willreturn writeonly }
attributes #6 = { noinline nounwind }
attributes #7 = { alwaysinline }
attributes #8 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!swift.module.flags = !{!9}
!llvm.asan.globals = !{!10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!llvm.linker.options = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}

!0 = !{i32 2, !"SDK Version", [3 x i32] [i32 10, i32 15, i32 6]}
!1 = !{i32 1, !"Objective-C Version", i32 2}
!2 = !{i32 1, !"Objective-C Image Info Version", i32 0}
!3 = !{i32 1, !"Objective-C Image Info Section", !"__DATA,__objc_imageinfo,regular,no_dead_strip"}
!4 = !{i32 4, !"Objective-C Garbage Collection", i32 84084480}
!5 = !{i32 1, !"Objective-C Class Properties", i32 64}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 1, !"Swift Version", i32 7}
!9 = !{!"standard-library", i1 false}
!10 = !{<{ i32, i32, i32 }>* @"$s4mainMXM", null, null, i1 false, i1 true}
!11 = !{<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main6PersonCMn", null, null, i1 false, i1 true}
!12 = !{<{ i8, i32, i8 }>* @"symbolic _____ 4main6PersonC", null, null, i1 false, i1 true}
!13 = !{<{ [2 x i8], i8 }>* @"symbolic SS", null, null, i1 false, i1 true}
!14 = !{[5 x i8]* @8, null, null, i1 false, i1 true}
!15 = !{<{ [2 x i8], i8 }>* @"symbolic Si", null, null, i1 false, i1 true}
!16 = !{[4 x i8]* @9, null, null, i1 false, i1 true}
!17 = !{{ i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32 }* @"$s4main6PersonCMF", null, null, i1 false, i1 true}
!18 = !{[1 x %swift.type_metadata_record]* @"\01l_type_metadata_table", null, null, i1 false, i1 true}
!19 = !{[1 x i8*]* @objc_classes, null, null, i1 false, i1 true}
!20 = !{[15 x i8*]* @llvm.used, null, null, i1 false, i1 true}
!21 = !{!"-lswiftFoundation"}
!22 = !{!"-lswiftCore"}
!23 = !{!"-lswiftObjectiveC"}
!24 = !{!"-lswiftDarwin"}
!25 = !{!"-framework", !"Foundation"}
!26 = !{!"-lswiftCoreFoundation"}
!27 = !{!"-framework", !"CoreFoundation"}
!28 = !{!"-lswiftDispatch"}
!29 = !{!"-framework", !"Combine"}
!30 = !{!"-framework", !"ApplicationServices"}
!31 = !{!"-lswiftCoreGraphics"}
!32 = !{!"-framework", !"CoreGraphics"}
!33 = !{!"-lswiftIOKit"}
!34 = !{!"-framework", !"IOKit"}
!35 = !{!"-framework", !"ColorSync"}
!36 = !{!"-framework", !"ImageIO"}
!37 = !{!"-framework", !"CoreServices"}
!38 = !{!"-framework", !"Security"}
!39 = !{!"-framework", !"CFNetwork"}
!40 = !{!"-framework", !"DiskArbitration"}
!41 = !{!"-framework", !"CoreText"}
!42 = !{!"-lswiftXPC"}
!43 = !{!"-lswiftSwiftOnoneSupport"}
!44 = !{!"-lobjc"}
!45 = !{!"-lswiftCompatibility51"}
!46 = !{}
