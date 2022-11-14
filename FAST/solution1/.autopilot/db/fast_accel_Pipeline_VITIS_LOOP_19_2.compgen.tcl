# This script segment is generated automatically by AutoPilot

set name fast_accel_urem_33s_6ns_5_37_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto} LATENCY 36 ALLOW_PRAGMA 1
}


set name fast_accel_urem_14ns_6ns_5_18_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto} LATENCY 17 ALLOW_PRAGMA 1
}


set name fast_accel_mul_33ns_35ns_67_2_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set id 47
set name fast_accel_mul_mul_14ns_15ns_29_4_1
set corename simcore_mul
set op mul
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 14
set in0_signed 0
set in1_width 15
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 29
set arg_lists {i0 {14 0 +} i1 {15 0 +} p {29 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {dsp} LATENCY 3 ALLOW_PRAGMA 1
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 62 \
    name IMG_V_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_0 \
    op interface \
    ports { IMG_V_0_address0 { O 10 vector } IMG_V_0_ce0 { O 1 bit } IMG_V_0_q0 { I 8 vector } IMG_V_0_address1 { O 10 vector } IMG_V_0_ce1 { O 1 bit } IMG_V_0_q1 { I 8 vector } IMG_V_0_address2 { O 10 vector } IMG_V_0_ce2 { O 1 bit } IMG_V_0_q2 { I 8 vector } IMG_V_0_address3 { O 10 vector } IMG_V_0_ce3 { O 1 bit } IMG_V_0_q3 { I 8 vector } IMG_V_0_address4 { O 10 vector } IMG_V_0_ce4 { O 1 bit } IMG_V_0_q4 { I 8 vector } IMG_V_0_address5 { O 10 vector } IMG_V_0_ce5 { O 1 bit } IMG_V_0_q5 { I 8 vector } IMG_V_0_address6 { O 10 vector } IMG_V_0_ce6 { O 1 bit } IMG_V_0_q6 { I 8 vector } IMG_V_0_address7 { O 10 vector } IMG_V_0_ce7 { O 1 bit } IMG_V_0_q7 { I 8 vector } IMG_V_0_address8 { O 10 vector } IMG_V_0_ce8 { O 1 bit } IMG_V_0_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 63 \
    name IMG_V_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_1 \
    op interface \
    ports { IMG_V_1_address0 { O 10 vector } IMG_V_1_ce0 { O 1 bit } IMG_V_1_q0 { I 8 vector } IMG_V_1_address1 { O 10 vector } IMG_V_1_ce1 { O 1 bit } IMG_V_1_q1 { I 8 vector } IMG_V_1_address2 { O 10 vector } IMG_V_1_ce2 { O 1 bit } IMG_V_1_q2 { I 8 vector } IMG_V_1_address3 { O 10 vector } IMG_V_1_ce3 { O 1 bit } IMG_V_1_q3 { I 8 vector } IMG_V_1_address4 { O 10 vector } IMG_V_1_ce4 { O 1 bit } IMG_V_1_q4 { I 8 vector } IMG_V_1_address5 { O 10 vector } IMG_V_1_ce5 { O 1 bit } IMG_V_1_q5 { I 8 vector } IMG_V_1_address6 { O 10 vector } IMG_V_1_ce6 { O 1 bit } IMG_V_1_q6 { I 8 vector } IMG_V_1_address7 { O 10 vector } IMG_V_1_ce7 { O 1 bit } IMG_V_1_q7 { I 8 vector } IMG_V_1_address8 { O 10 vector } IMG_V_1_ce8 { O 1 bit } IMG_V_1_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 64 \
    name IMG_V_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_2 \
    op interface \
    ports { IMG_V_2_address0 { O 10 vector } IMG_V_2_ce0 { O 1 bit } IMG_V_2_q0 { I 8 vector } IMG_V_2_address1 { O 10 vector } IMG_V_2_ce1 { O 1 bit } IMG_V_2_q1 { I 8 vector } IMG_V_2_address2 { O 10 vector } IMG_V_2_ce2 { O 1 bit } IMG_V_2_q2 { I 8 vector } IMG_V_2_address3 { O 10 vector } IMG_V_2_ce3 { O 1 bit } IMG_V_2_q3 { I 8 vector } IMG_V_2_address4 { O 10 vector } IMG_V_2_ce4 { O 1 bit } IMG_V_2_q4 { I 8 vector } IMG_V_2_address5 { O 10 vector } IMG_V_2_ce5 { O 1 bit } IMG_V_2_q5 { I 8 vector } IMG_V_2_address6 { O 10 vector } IMG_V_2_ce6 { O 1 bit } IMG_V_2_q6 { I 8 vector } IMG_V_2_address7 { O 10 vector } IMG_V_2_ce7 { O 1 bit } IMG_V_2_q7 { I 8 vector } IMG_V_2_address8 { O 10 vector } IMG_V_2_ce8 { O 1 bit } IMG_V_2_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 65 \
    name IMG_V_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_3 \
    op interface \
    ports { IMG_V_3_address0 { O 10 vector } IMG_V_3_ce0 { O 1 bit } IMG_V_3_q0 { I 8 vector } IMG_V_3_address1 { O 10 vector } IMG_V_3_ce1 { O 1 bit } IMG_V_3_q1 { I 8 vector } IMG_V_3_address2 { O 10 vector } IMG_V_3_ce2 { O 1 bit } IMG_V_3_q2 { I 8 vector } IMG_V_3_address3 { O 10 vector } IMG_V_3_ce3 { O 1 bit } IMG_V_3_q3 { I 8 vector } IMG_V_3_address4 { O 10 vector } IMG_V_3_ce4 { O 1 bit } IMG_V_3_q4 { I 8 vector } IMG_V_3_address5 { O 10 vector } IMG_V_3_ce5 { O 1 bit } IMG_V_3_q5 { I 8 vector } IMG_V_3_address6 { O 10 vector } IMG_V_3_ce6 { O 1 bit } IMG_V_3_q6 { I 8 vector } IMG_V_3_address7 { O 10 vector } IMG_V_3_ce7 { O 1 bit } IMG_V_3_q7 { I 8 vector } IMG_V_3_address8 { O 10 vector } IMG_V_3_ce8 { O 1 bit } IMG_V_3_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 66 \
    name IMG_V_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_4 \
    op interface \
    ports { IMG_V_4_address0 { O 10 vector } IMG_V_4_ce0 { O 1 bit } IMG_V_4_q0 { I 8 vector } IMG_V_4_address1 { O 10 vector } IMG_V_4_ce1 { O 1 bit } IMG_V_4_q1 { I 8 vector } IMG_V_4_address2 { O 10 vector } IMG_V_4_ce2 { O 1 bit } IMG_V_4_q2 { I 8 vector } IMG_V_4_address3 { O 10 vector } IMG_V_4_ce3 { O 1 bit } IMG_V_4_q3 { I 8 vector } IMG_V_4_address4 { O 10 vector } IMG_V_4_ce4 { O 1 bit } IMG_V_4_q4 { I 8 vector } IMG_V_4_address5 { O 10 vector } IMG_V_4_ce5 { O 1 bit } IMG_V_4_q5 { I 8 vector } IMG_V_4_address6 { O 10 vector } IMG_V_4_ce6 { O 1 bit } IMG_V_4_q6 { I 8 vector } IMG_V_4_address7 { O 10 vector } IMG_V_4_ce7 { O 1 bit } IMG_V_4_q7 { I 8 vector } IMG_V_4_address8 { O 10 vector } IMG_V_4_ce8 { O 1 bit } IMG_V_4_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 67 \
    name IMG_V_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_5 \
    op interface \
    ports { IMG_V_5_address0 { O 10 vector } IMG_V_5_ce0 { O 1 bit } IMG_V_5_q0 { I 8 vector } IMG_V_5_address1 { O 10 vector } IMG_V_5_ce1 { O 1 bit } IMG_V_5_q1 { I 8 vector } IMG_V_5_address2 { O 10 vector } IMG_V_5_ce2 { O 1 bit } IMG_V_5_q2 { I 8 vector } IMG_V_5_address3 { O 10 vector } IMG_V_5_ce3 { O 1 bit } IMG_V_5_q3 { I 8 vector } IMG_V_5_address4 { O 10 vector } IMG_V_5_ce4 { O 1 bit } IMG_V_5_q4 { I 8 vector } IMG_V_5_address5 { O 10 vector } IMG_V_5_ce5 { O 1 bit } IMG_V_5_q5 { I 8 vector } IMG_V_5_address6 { O 10 vector } IMG_V_5_ce6 { O 1 bit } IMG_V_5_q6 { I 8 vector } IMG_V_5_address7 { O 10 vector } IMG_V_5_ce7 { O 1 bit } IMG_V_5_q7 { I 8 vector } IMG_V_5_address8 { O 10 vector } IMG_V_5_ce8 { O 1 bit } IMG_V_5_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 68 \
    name IMG_V_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_6 \
    op interface \
    ports { IMG_V_6_address0 { O 10 vector } IMG_V_6_ce0 { O 1 bit } IMG_V_6_q0 { I 8 vector } IMG_V_6_address1 { O 10 vector } IMG_V_6_ce1 { O 1 bit } IMG_V_6_q1 { I 8 vector } IMG_V_6_address2 { O 10 vector } IMG_V_6_ce2 { O 1 bit } IMG_V_6_q2 { I 8 vector } IMG_V_6_address3 { O 10 vector } IMG_V_6_ce3 { O 1 bit } IMG_V_6_q3 { I 8 vector } IMG_V_6_address4 { O 10 vector } IMG_V_6_ce4 { O 1 bit } IMG_V_6_q4 { I 8 vector } IMG_V_6_address5 { O 10 vector } IMG_V_6_ce5 { O 1 bit } IMG_V_6_q5 { I 8 vector } IMG_V_6_address6 { O 10 vector } IMG_V_6_ce6 { O 1 bit } IMG_V_6_q6 { I 8 vector } IMG_V_6_address7 { O 10 vector } IMG_V_6_ce7 { O 1 bit } IMG_V_6_q7 { I 8 vector } IMG_V_6_address8 { O 10 vector } IMG_V_6_ce8 { O 1 bit } IMG_V_6_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 69 \
    name IMG_V_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_7 \
    op interface \
    ports { IMG_V_7_address0 { O 10 vector } IMG_V_7_ce0 { O 1 bit } IMG_V_7_q0 { I 8 vector } IMG_V_7_address1 { O 10 vector } IMG_V_7_ce1 { O 1 bit } IMG_V_7_q1 { I 8 vector } IMG_V_7_address2 { O 10 vector } IMG_V_7_ce2 { O 1 bit } IMG_V_7_q2 { I 8 vector } IMG_V_7_address3 { O 10 vector } IMG_V_7_ce3 { O 1 bit } IMG_V_7_q3 { I 8 vector } IMG_V_7_address4 { O 10 vector } IMG_V_7_ce4 { O 1 bit } IMG_V_7_q4 { I 8 vector } IMG_V_7_address5 { O 10 vector } IMG_V_7_ce5 { O 1 bit } IMG_V_7_q5 { I 8 vector } IMG_V_7_address6 { O 10 vector } IMG_V_7_ce6 { O 1 bit } IMG_V_7_q6 { I 8 vector } IMG_V_7_address7 { O 10 vector } IMG_V_7_ce7 { O 1 bit } IMG_V_7_q7 { I 8 vector } IMG_V_7_address8 { O 10 vector } IMG_V_7_ce8 { O 1 bit } IMG_V_7_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 70 \
    name IMG_V_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_8 \
    op interface \
    ports { IMG_V_8_address0 { O 10 vector } IMG_V_8_ce0 { O 1 bit } IMG_V_8_q0 { I 8 vector } IMG_V_8_address1 { O 10 vector } IMG_V_8_ce1 { O 1 bit } IMG_V_8_q1 { I 8 vector } IMG_V_8_address2 { O 10 vector } IMG_V_8_ce2 { O 1 bit } IMG_V_8_q2 { I 8 vector } IMG_V_8_address3 { O 10 vector } IMG_V_8_ce3 { O 1 bit } IMG_V_8_q3 { I 8 vector } IMG_V_8_address4 { O 10 vector } IMG_V_8_ce4 { O 1 bit } IMG_V_8_q4 { I 8 vector } IMG_V_8_address5 { O 10 vector } IMG_V_8_ce5 { O 1 bit } IMG_V_8_q5 { I 8 vector } IMG_V_8_address6 { O 10 vector } IMG_V_8_ce6 { O 1 bit } IMG_V_8_q6 { I 8 vector } IMG_V_8_address7 { O 10 vector } IMG_V_8_ce7 { O 1 bit } IMG_V_8_q7 { I 8 vector } IMG_V_8_address8 { O 10 vector } IMG_V_8_ce8 { O 1 bit } IMG_V_8_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 71 \
    name IMG_V_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_9 \
    op interface \
    ports { IMG_V_9_address0 { O 10 vector } IMG_V_9_ce0 { O 1 bit } IMG_V_9_q0 { I 8 vector } IMG_V_9_address1 { O 10 vector } IMG_V_9_ce1 { O 1 bit } IMG_V_9_q1 { I 8 vector } IMG_V_9_address2 { O 10 vector } IMG_V_9_ce2 { O 1 bit } IMG_V_9_q2 { I 8 vector } IMG_V_9_address3 { O 10 vector } IMG_V_9_ce3 { O 1 bit } IMG_V_9_q3 { I 8 vector } IMG_V_9_address4 { O 10 vector } IMG_V_9_ce4 { O 1 bit } IMG_V_9_q4 { I 8 vector } IMG_V_9_address5 { O 10 vector } IMG_V_9_ce5 { O 1 bit } IMG_V_9_q5 { I 8 vector } IMG_V_9_address6 { O 10 vector } IMG_V_9_ce6 { O 1 bit } IMG_V_9_q6 { I 8 vector } IMG_V_9_address7 { O 10 vector } IMG_V_9_ce7 { O 1 bit } IMG_V_9_q7 { I 8 vector } IMG_V_9_address8 { O 10 vector } IMG_V_9_ce8 { O 1 bit } IMG_V_9_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 72 \
    name IMG_V_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_10 \
    op interface \
    ports { IMG_V_10_address0 { O 10 vector } IMG_V_10_ce0 { O 1 bit } IMG_V_10_q0 { I 8 vector } IMG_V_10_address1 { O 10 vector } IMG_V_10_ce1 { O 1 bit } IMG_V_10_q1 { I 8 vector } IMG_V_10_address2 { O 10 vector } IMG_V_10_ce2 { O 1 bit } IMG_V_10_q2 { I 8 vector } IMG_V_10_address3 { O 10 vector } IMG_V_10_ce3 { O 1 bit } IMG_V_10_q3 { I 8 vector } IMG_V_10_address4 { O 10 vector } IMG_V_10_ce4 { O 1 bit } IMG_V_10_q4 { I 8 vector } IMG_V_10_address5 { O 10 vector } IMG_V_10_ce5 { O 1 bit } IMG_V_10_q5 { I 8 vector } IMG_V_10_address6 { O 10 vector } IMG_V_10_ce6 { O 1 bit } IMG_V_10_q6 { I 8 vector } IMG_V_10_address7 { O 10 vector } IMG_V_10_ce7 { O 1 bit } IMG_V_10_q7 { I 8 vector } IMG_V_10_address8 { O 10 vector } IMG_V_10_ce8 { O 1 bit } IMG_V_10_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 73 \
    name IMG_V_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_11 \
    op interface \
    ports { IMG_V_11_address0 { O 10 vector } IMG_V_11_ce0 { O 1 bit } IMG_V_11_q0 { I 8 vector } IMG_V_11_address1 { O 10 vector } IMG_V_11_ce1 { O 1 bit } IMG_V_11_q1 { I 8 vector } IMG_V_11_address2 { O 10 vector } IMG_V_11_ce2 { O 1 bit } IMG_V_11_q2 { I 8 vector } IMG_V_11_address3 { O 10 vector } IMG_V_11_ce3 { O 1 bit } IMG_V_11_q3 { I 8 vector } IMG_V_11_address4 { O 10 vector } IMG_V_11_ce4 { O 1 bit } IMG_V_11_q4 { I 8 vector } IMG_V_11_address5 { O 10 vector } IMG_V_11_ce5 { O 1 bit } IMG_V_11_q5 { I 8 vector } IMG_V_11_address6 { O 10 vector } IMG_V_11_ce6 { O 1 bit } IMG_V_11_q6 { I 8 vector } IMG_V_11_address7 { O 10 vector } IMG_V_11_ce7 { O 1 bit } IMG_V_11_q7 { I 8 vector } IMG_V_11_address8 { O 10 vector } IMG_V_11_ce8 { O 1 bit } IMG_V_11_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 74 \
    name IMG_V_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_12 \
    op interface \
    ports { IMG_V_12_address0 { O 10 vector } IMG_V_12_ce0 { O 1 bit } IMG_V_12_q0 { I 8 vector } IMG_V_12_address1 { O 10 vector } IMG_V_12_ce1 { O 1 bit } IMG_V_12_q1 { I 8 vector } IMG_V_12_address2 { O 10 vector } IMG_V_12_ce2 { O 1 bit } IMG_V_12_q2 { I 8 vector } IMG_V_12_address3 { O 10 vector } IMG_V_12_ce3 { O 1 bit } IMG_V_12_q3 { I 8 vector } IMG_V_12_address4 { O 10 vector } IMG_V_12_ce4 { O 1 bit } IMG_V_12_q4 { I 8 vector } IMG_V_12_address5 { O 10 vector } IMG_V_12_ce5 { O 1 bit } IMG_V_12_q5 { I 8 vector } IMG_V_12_address6 { O 10 vector } IMG_V_12_ce6 { O 1 bit } IMG_V_12_q6 { I 8 vector } IMG_V_12_address7 { O 10 vector } IMG_V_12_ce7 { O 1 bit } IMG_V_12_q7 { I 8 vector } IMG_V_12_address8 { O 10 vector } IMG_V_12_ce8 { O 1 bit } IMG_V_12_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 75 \
    name IMG_V_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_13 \
    op interface \
    ports { IMG_V_13_address0 { O 10 vector } IMG_V_13_ce0 { O 1 bit } IMG_V_13_q0 { I 8 vector } IMG_V_13_address1 { O 10 vector } IMG_V_13_ce1 { O 1 bit } IMG_V_13_q1 { I 8 vector } IMG_V_13_address2 { O 10 vector } IMG_V_13_ce2 { O 1 bit } IMG_V_13_q2 { I 8 vector } IMG_V_13_address3 { O 10 vector } IMG_V_13_ce3 { O 1 bit } IMG_V_13_q3 { I 8 vector } IMG_V_13_address4 { O 10 vector } IMG_V_13_ce4 { O 1 bit } IMG_V_13_q4 { I 8 vector } IMG_V_13_address5 { O 10 vector } IMG_V_13_ce5 { O 1 bit } IMG_V_13_q5 { I 8 vector } IMG_V_13_address6 { O 10 vector } IMG_V_13_ce6 { O 1 bit } IMG_V_13_q6 { I 8 vector } IMG_V_13_address7 { O 10 vector } IMG_V_13_ce7 { O 1 bit } IMG_V_13_q7 { I 8 vector } IMG_V_13_address8 { O 10 vector } IMG_V_13_ce8 { O 1 bit } IMG_V_13_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 76 \
    name IMG_V_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_14 \
    op interface \
    ports { IMG_V_14_address0 { O 10 vector } IMG_V_14_ce0 { O 1 bit } IMG_V_14_q0 { I 8 vector } IMG_V_14_address1 { O 10 vector } IMG_V_14_ce1 { O 1 bit } IMG_V_14_q1 { I 8 vector } IMG_V_14_address2 { O 10 vector } IMG_V_14_ce2 { O 1 bit } IMG_V_14_q2 { I 8 vector } IMG_V_14_address3 { O 10 vector } IMG_V_14_ce3 { O 1 bit } IMG_V_14_q3 { I 8 vector } IMG_V_14_address4 { O 10 vector } IMG_V_14_ce4 { O 1 bit } IMG_V_14_q4 { I 8 vector } IMG_V_14_address5 { O 10 vector } IMG_V_14_ce5 { O 1 bit } IMG_V_14_q5 { I 8 vector } IMG_V_14_address6 { O 10 vector } IMG_V_14_ce6 { O 1 bit } IMG_V_14_q6 { I 8 vector } IMG_V_14_address7 { O 10 vector } IMG_V_14_ce7 { O 1 bit } IMG_V_14_q7 { I 8 vector } IMG_V_14_address8 { O 10 vector } IMG_V_14_ce8 { O 1 bit } IMG_V_14_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 77 \
    name IMG_V_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_15 \
    op interface \
    ports { IMG_V_15_address0 { O 10 vector } IMG_V_15_ce0 { O 1 bit } IMG_V_15_q0 { I 8 vector } IMG_V_15_address1 { O 10 vector } IMG_V_15_ce1 { O 1 bit } IMG_V_15_q1 { I 8 vector } IMG_V_15_address2 { O 10 vector } IMG_V_15_ce2 { O 1 bit } IMG_V_15_q2 { I 8 vector } IMG_V_15_address3 { O 10 vector } IMG_V_15_ce3 { O 1 bit } IMG_V_15_q3 { I 8 vector } IMG_V_15_address4 { O 10 vector } IMG_V_15_ce4 { O 1 bit } IMG_V_15_q4 { I 8 vector } IMG_V_15_address5 { O 10 vector } IMG_V_15_ce5 { O 1 bit } IMG_V_15_q5 { I 8 vector } IMG_V_15_address6 { O 10 vector } IMG_V_15_ce6 { O 1 bit } IMG_V_15_q6 { I 8 vector } IMG_V_15_address7 { O 10 vector } IMG_V_15_ce7 { O 1 bit } IMG_V_15_q7 { I 8 vector } IMG_V_15_address8 { O 10 vector } IMG_V_15_ce8 { O 1 bit } IMG_V_15_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 78 \
    name IMG_V_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_16 \
    op interface \
    ports { IMG_V_16_address0 { O 10 vector } IMG_V_16_ce0 { O 1 bit } IMG_V_16_q0 { I 8 vector } IMG_V_16_address1 { O 10 vector } IMG_V_16_ce1 { O 1 bit } IMG_V_16_q1 { I 8 vector } IMG_V_16_address2 { O 10 vector } IMG_V_16_ce2 { O 1 bit } IMG_V_16_q2 { I 8 vector } IMG_V_16_address3 { O 10 vector } IMG_V_16_ce3 { O 1 bit } IMG_V_16_q3 { I 8 vector } IMG_V_16_address4 { O 10 vector } IMG_V_16_ce4 { O 1 bit } IMG_V_16_q4 { I 8 vector } IMG_V_16_address5 { O 10 vector } IMG_V_16_ce5 { O 1 bit } IMG_V_16_q5 { I 8 vector } IMG_V_16_address6 { O 10 vector } IMG_V_16_ce6 { O 1 bit } IMG_V_16_q6 { I 8 vector } IMG_V_16_address7 { O 10 vector } IMG_V_16_ce7 { O 1 bit } IMG_V_16_q7 { I 8 vector } IMG_V_16_address8 { O 10 vector } IMG_V_16_ce8 { O 1 bit } IMG_V_16_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 79 \
    name IMG_V_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_17 \
    op interface \
    ports { IMG_V_17_address0 { O 10 vector } IMG_V_17_ce0 { O 1 bit } IMG_V_17_q0 { I 8 vector } IMG_V_17_address1 { O 10 vector } IMG_V_17_ce1 { O 1 bit } IMG_V_17_q1 { I 8 vector } IMG_V_17_address2 { O 10 vector } IMG_V_17_ce2 { O 1 bit } IMG_V_17_q2 { I 8 vector } IMG_V_17_address3 { O 10 vector } IMG_V_17_ce3 { O 1 bit } IMG_V_17_q3 { I 8 vector } IMG_V_17_address4 { O 10 vector } IMG_V_17_ce4 { O 1 bit } IMG_V_17_q4 { I 8 vector } IMG_V_17_address5 { O 10 vector } IMG_V_17_ce5 { O 1 bit } IMG_V_17_q5 { I 8 vector } IMG_V_17_address6 { O 10 vector } IMG_V_17_ce6 { O 1 bit } IMG_V_17_q6 { I 8 vector } IMG_V_17_address7 { O 10 vector } IMG_V_17_ce7 { O 1 bit } IMG_V_17_q7 { I 8 vector } IMG_V_17_address8 { O 10 vector } IMG_V_17_ce8 { O 1 bit } IMG_V_17_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 80 \
    name IMG_V_18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_18 \
    op interface \
    ports { IMG_V_18_address0 { O 10 vector } IMG_V_18_ce0 { O 1 bit } IMG_V_18_q0 { I 8 vector } IMG_V_18_address1 { O 10 vector } IMG_V_18_ce1 { O 1 bit } IMG_V_18_q1 { I 8 vector } IMG_V_18_address2 { O 10 vector } IMG_V_18_ce2 { O 1 bit } IMG_V_18_q2 { I 8 vector } IMG_V_18_address3 { O 10 vector } IMG_V_18_ce3 { O 1 bit } IMG_V_18_q3 { I 8 vector } IMG_V_18_address4 { O 10 vector } IMG_V_18_ce4 { O 1 bit } IMG_V_18_q4 { I 8 vector } IMG_V_18_address5 { O 10 vector } IMG_V_18_ce5 { O 1 bit } IMG_V_18_q5 { I 8 vector } IMG_V_18_address6 { O 10 vector } IMG_V_18_ce6 { O 1 bit } IMG_V_18_q6 { I 8 vector } IMG_V_18_address7 { O 10 vector } IMG_V_18_ce7 { O 1 bit } IMG_V_18_q7 { I 8 vector } IMG_V_18_address8 { O 10 vector } IMG_V_18_ce8 { O 1 bit } IMG_V_18_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 81 \
    name IMG_V_19 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_19 \
    op interface \
    ports { IMG_V_19_address0 { O 10 vector } IMG_V_19_ce0 { O 1 bit } IMG_V_19_q0 { I 8 vector } IMG_V_19_address1 { O 10 vector } IMG_V_19_ce1 { O 1 bit } IMG_V_19_q1 { I 8 vector } IMG_V_19_address2 { O 10 vector } IMG_V_19_ce2 { O 1 bit } IMG_V_19_q2 { I 8 vector } IMG_V_19_address3 { O 10 vector } IMG_V_19_ce3 { O 1 bit } IMG_V_19_q3 { I 8 vector } IMG_V_19_address4 { O 10 vector } IMG_V_19_ce4 { O 1 bit } IMG_V_19_q4 { I 8 vector } IMG_V_19_address5 { O 10 vector } IMG_V_19_ce5 { O 1 bit } IMG_V_19_q5 { I 8 vector } IMG_V_19_address6 { O 10 vector } IMG_V_19_ce6 { O 1 bit } IMG_V_19_q6 { I 8 vector } IMG_V_19_address7 { O 10 vector } IMG_V_19_ce7 { O 1 bit } IMG_V_19_q7 { I 8 vector } IMG_V_19_address8 { O 10 vector } IMG_V_19_ce8 { O 1 bit } IMG_V_19_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 82 \
    name IMG_V_20 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_20 \
    op interface \
    ports { IMG_V_20_address0 { O 10 vector } IMG_V_20_ce0 { O 1 bit } IMG_V_20_q0 { I 8 vector } IMG_V_20_address1 { O 10 vector } IMG_V_20_ce1 { O 1 bit } IMG_V_20_q1 { I 8 vector } IMG_V_20_address2 { O 10 vector } IMG_V_20_ce2 { O 1 bit } IMG_V_20_q2 { I 8 vector } IMG_V_20_address3 { O 10 vector } IMG_V_20_ce3 { O 1 bit } IMG_V_20_q3 { I 8 vector } IMG_V_20_address4 { O 10 vector } IMG_V_20_ce4 { O 1 bit } IMG_V_20_q4 { I 8 vector } IMG_V_20_address5 { O 10 vector } IMG_V_20_ce5 { O 1 bit } IMG_V_20_q5 { I 8 vector } IMG_V_20_address6 { O 10 vector } IMG_V_20_ce6 { O 1 bit } IMG_V_20_q6 { I 8 vector } IMG_V_20_address7 { O 10 vector } IMG_V_20_ce7 { O 1 bit } IMG_V_20_q7 { I 8 vector } IMG_V_20_address8 { O 10 vector } IMG_V_20_ce8 { O 1 bit } IMG_V_20_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 83 \
    name IMG_V_21 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_21 \
    op interface \
    ports { IMG_V_21_address0 { O 10 vector } IMG_V_21_ce0 { O 1 bit } IMG_V_21_q0 { I 8 vector } IMG_V_21_address1 { O 10 vector } IMG_V_21_ce1 { O 1 bit } IMG_V_21_q1 { I 8 vector } IMG_V_21_address2 { O 10 vector } IMG_V_21_ce2 { O 1 bit } IMG_V_21_q2 { I 8 vector } IMG_V_21_address3 { O 10 vector } IMG_V_21_ce3 { O 1 bit } IMG_V_21_q3 { I 8 vector } IMG_V_21_address4 { O 10 vector } IMG_V_21_ce4 { O 1 bit } IMG_V_21_q4 { I 8 vector } IMG_V_21_address5 { O 10 vector } IMG_V_21_ce5 { O 1 bit } IMG_V_21_q5 { I 8 vector } IMG_V_21_address6 { O 10 vector } IMG_V_21_ce6 { O 1 bit } IMG_V_21_q6 { I 8 vector } IMG_V_21_address7 { O 10 vector } IMG_V_21_ce7 { O 1 bit } IMG_V_21_q7 { I 8 vector } IMG_V_21_address8 { O 10 vector } IMG_V_21_ce8 { O 1 bit } IMG_V_21_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 84 \
    name IMG_V_22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_22 \
    op interface \
    ports { IMG_V_22_address0 { O 10 vector } IMG_V_22_ce0 { O 1 bit } IMG_V_22_q0 { I 8 vector } IMG_V_22_address1 { O 10 vector } IMG_V_22_ce1 { O 1 bit } IMG_V_22_q1 { I 8 vector } IMG_V_22_address2 { O 10 vector } IMG_V_22_ce2 { O 1 bit } IMG_V_22_q2 { I 8 vector } IMG_V_22_address3 { O 10 vector } IMG_V_22_ce3 { O 1 bit } IMG_V_22_q3 { I 8 vector } IMG_V_22_address4 { O 10 vector } IMG_V_22_ce4 { O 1 bit } IMG_V_22_q4 { I 8 vector } IMG_V_22_address5 { O 10 vector } IMG_V_22_ce5 { O 1 bit } IMG_V_22_q5 { I 8 vector } IMG_V_22_address6 { O 10 vector } IMG_V_22_ce6 { O 1 bit } IMG_V_22_q6 { I 8 vector } IMG_V_22_address7 { O 10 vector } IMG_V_22_ce7 { O 1 bit } IMG_V_22_q7 { I 8 vector } IMG_V_22_address8 { O 10 vector } IMG_V_22_ce8 { O 1 bit } IMG_V_22_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 85 \
    name IMG_V_23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_23 \
    op interface \
    ports { IMG_V_23_address0 { O 10 vector } IMG_V_23_ce0 { O 1 bit } IMG_V_23_q0 { I 8 vector } IMG_V_23_address1 { O 10 vector } IMG_V_23_ce1 { O 1 bit } IMG_V_23_q1 { I 8 vector } IMG_V_23_address2 { O 10 vector } IMG_V_23_ce2 { O 1 bit } IMG_V_23_q2 { I 8 vector } IMG_V_23_address3 { O 10 vector } IMG_V_23_ce3 { O 1 bit } IMG_V_23_q3 { I 8 vector } IMG_V_23_address4 { O 10 vector } IMG_V_23_ce4 { O 1 bit } IMG_V_23_q4 { I 8 vector } IMG_V_23_address5 { O 10 vector } IMG_V_23_ce5 { O 1 bit } IMG_V_23_q5 { I 8 vector } IMG_V_23_address6 { O 10 vector } IMG_V_23_ce6 { O 1 bit } IMG_V_23_q6 { I 8 vector } IMG_V_23_address7 { O 10 vector } IMG_V_23_ce7 { O 1 bit } IMG_V_23_q7 { I 8 vector } IMG_V_23_address8 { O 10 vector } IMG_V_23_ce8 { O 1 bit } IMG_V_23_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 86 \
    name IMG_V_24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_24 \
    op interface \
    ports { IMG_V_24_address0 { O 10 vector } IMG_V_24_ce0 { O 1 bit } IMG_V_24_q0 { I 8 vector } IMG_V_24_address1 { O 10 vector } IMG_V_24_ce1 { O 1 bit } IMG_V_24_q1 { I 8 vector } IMG_V_24_address2 { O 10 vector } IMG_V_24_ce2 { O 1 bit } IMG_V_24_q2 { I 8 vector } IMG_V_24_address3 { O 10 vector } IMG_V_24_ce3 { O 1 bit } IMG_V_24_q3 { I 8 vector } IMG_V_24_address4 { O 10 vector } IMG_V_24_ce4 { O 1 bit } IMG_V_24_q4 { I 8 vector } IMG_V_24_address5 { O 10 vector } IMG_V_24_ce5 { O 1 bit } IMG_V_24_q5 { I 8 vector } IMG_V_24_address6 { O 10 vector } IMG_V_24_ce6 { O 1 bit } IMG_V_24_q6 { I 8 vector } IMG_V_24_address7 { O 10 vector } IMG_V_24_ce7 { O 1 bit } IMG_V_24_q7 { I 8 vector } IMG_V_24_address8 { O 10 vector } IMG_V_24_ce8 { O 1 bit } IMG_V_24_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 87 \
    name IMG_V_25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_25 \
    op interface \
    ports { IMG_V_25_address0 { O 10 vector } IMG_V_25_ce0 { O 1 bit } IMG_V_25_q0 { I 8 vector } IMG_V_25_address1 { O 10 vector } IMG_V_25_ce1 { O 1 bit } IMG_V_25_q1 { I 8 vector } IMG_V_25_address2 { O 10 vector } IMG_V_25_ce2 { O 1 bit } IMG_V_25_q2 { I 8 vector } IMG_V_25_address3 { O 10 vector } IMG_V_25_ce3 { O 1 bit } IMG_V_25_q3 { I 8 vector } IMG_V_25_address4 { O 10 vector } IMG_V_25_ce4 { O 1 bit } IMG_V_25_q4 { I 8 vector } IMG_V_25_address5 { O 10 vector } IMG_V_25_ce5 { O 1 bit } IMG_V_25_q5 { I 8 vector } IMG_V_25_address6 { O 10 vector } IMG_V_25_ce6 { O 1 bit } IMG_V_25_q6 { I 8 vector } IMG_V_25_address7 { O 10 vector } IMG_V_25_ce7 { O 1 bit } IMG_V_25_q7 { I 8 vector } IMG_V_25_address8 { O 10 vector } IMG_V_25_ce8 { O 1 bit } IMG_V_25_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 88 \
    name IMG_V_26 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IMG_V_26 \
    op interface \
    ports { IMG_V_26_address0 { O 10 vector } IMG_V_26_ce0 { O 1 bit } IMG_V_26_q0 { I 8 vector } IMG_V_26_address1 { O 10 vector } IMG_V_26_ce1 { O 1 bit } IMG_V_26_q1 { I 8 vector } IMG_V_26_address2 { O 10 vector } IMG_V_26_ce2 { O 1 bit } IMG_V_26_q2 { I 8 vector } IMG_V_26_address3 { O 10 vector } IMG_V_26_ce3 { O 1 bit } IMG_V_26_q3 { I 8 vector } IMG_V_26_address4 { O 10 vector } IMG_V_26_ce4 { O 1 bit } IMG_V_26_q4 { I 8 vector } IMG_V_26_address5 { O 10 vector } IMG_V_26_ce5 { O 1 bit } IMG_V_26_q5 { I 8 vector } IMG_V_26_address6 { O 10 vector } IMG_V_26_ce6 { O 1 bit } IMG_V_26_q6 { I 8 vector } IMG_V_26_address7 { O 10 vector } IMG_V_26_ce7 { O 1 bit } IMG_V_26_q7 { I 8 vector } IMG_V_26_address8 { O 10 vector } IMG_V_26_ce8 { O 1 bit } IMG_V_26_q8 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IMG_V_26'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name gmem \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem \
    op interface \
    ports { m_axi_gmem_AWVALID { O 1 bit } m_axi_gmem_AWREADY { I 1 bit } m_axi_gmem_AWADDR { O 64 vector } m_axi_gmem_AWID { O 1 vector } m_axi_gmem_AWLEN { O 32 vector } m_axi_gmem_AWSIZE { O 3 vector } m_axi_gmem_AWBURST { O 2 vector } m_axi_gmem_AWLOCK { O 2 vector } m_axi_gmem_AWCACHE { O 4 vector } m_axi_gmem_AWPROT { O 3 vector } m_axi_gmem_AWQOS { O 4 vector } m_axi_gmem_AWREGION { O 4 vector } m_axi_gmem_AWUSER { O 1 vector } m_axi_gmem_WVALID { O 1 bit } m_axi_gmem_WREADY { I 1 bit } m_axi_gmem_WDATA { O 8 vector } m_axi_gmem_WSTRB { O 1 vector } m_axi_gmem_WLAST { O 1 bit } m_axi_gmem_WID { O 1 vector } m_axi_gmem_WUSER { O 1 vector } m_axi_gmem_ARVALID { O 1 bit } m_axi_gmem_ARREADY { I 1 bit } m_axi_gmem_ARADDR { O 64 vector } m_axi_gmem_ARID { O 1 vector } m_axi_gmem_ARLEN { O 32 vector } m_axi_gmem_ARSIZE { O 3 vector } m_axi_gmem_ARBURST { O 2 vector } m_axi_gmem_ARLOCK { O 2 vector } m_axi_gmem_ARCACHE { O 4 vector } m_axi_gmem_ARPROT { O 3 vector } m_axi_gmem_ARQOS { O 4 vector } m_axi_gmem_ARREGION { O 4 vector } m_axi_gmem_ARUSER { O 1 vector } m_axi_gmem_RVALID { I 1 bit } m_axi_gmem_RREADY { O 1 bit } m_axi_gmem_RDATA { I 8 vector } m_axi_gmem_RLAST { I 1 bit } m_axi_gmem_RID { I 1 vector } m_axi_gmem_RFIFONUM { I 11 vector } m_axi_gmem_RUSER { I 1 vector } m_axi_gmem_RRESP { I 2 vector } m_axi_gmem_BVALID { I 1 bit } m_axi_gmem_BREADY { O 1 bit } m_axi_gmem_BRESP { I 2 vector } m_axi_gmem_BID { I 1 vector } m_axi_gmem_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name threshold \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_threshold \
    op interface \
    ports { threshold { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name img_out \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_out \
    op interface \
    ports { img_out { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name img_in \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_in \
    op interface \
    ports { img_in { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName fast_accel_flow_control_loop_pipe_sequential_init_U
set CompName fast_accel_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix fast_accel_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


