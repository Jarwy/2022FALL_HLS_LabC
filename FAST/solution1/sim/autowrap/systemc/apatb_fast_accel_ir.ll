; ModuleID = 'E:/NTU/111_1/HLS/LabC/FAST/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"class.std::ios_base::Init" }
%"class.std::ios_base::Init" = type { i8 }

; Function Attrs: noinline
define void @apatb_fast_accel_ir(%"struct.ap_uint<8>"* %img_in, i32 %threshold, %"struct.ap_uint<8>"* %img_out, i32 %rows, i32 %cols) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 16384)
  %img_in_copy = bitcast i8* %malloccall to [16384 x i8]*
  %malloccall1 = call i8* @malloc(i64 16384)
  %img_out_copy = bitcast i8* %malloccall1 to [16384 x i8]*
  %0 = bitcast %"struct.ap_uint<8>"* %img_in to [16384 x %"struct.ap_uint<8>"]*
  %1 = bitcast %"struct.ap_uint<8>"* %img_out to [16384 x %"struct.ap_uint<8>"]*
  call fastcc void @copy_in([16384 x %"struct.ap_uint<8>"]* %0, [16384 x i8]* %img_in_copy, [16384 x %"struct.ap_uint<8>"]* %1, [16384 x i8]* %img_out_copy)
  %2 = getelementptr [16384 x i8], [16384 x i8]* %img_in_copy, i32 0, i32 0
  %3 = getelementptr [16384 x i8], [16384 x i8]* %img_out_copy, i32 0, i32 0
  call void @apatb_fast_accel_hw(i8* %2, i32 %threshold, i8* %3, i32 %rows, i32 %cols)
  call fastcc void @copy_out([16384 x %"struct.ap_uint<8>"]* %0, [16384 x i8]* %img_in_copy, [16384 x %"struct.ap_uint<8>"]* %1, [16384 x i8]* %img_out_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([16384 x %"struct.ap_uint<8>"]* readonly, [16384 x i8]* noalias, [16384 x %"struct.ap_uint<8>"]* readonly, [16384 x i8]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a16384struct.ap_uint<8>.9"([16384 x i8]* %1, [16384 x %"struct.ap_uint<8>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a16384struct.ap_uint<8>.9"([16384 x i8]* %3, [16384 x %"struct.ap_uint<8>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([16384 x %"struct.ap_uint<8>"]*, [16384 x i8]* noalias readonly, [16384 x %"struct.ap_uint<8>"]*, [16384 x i8]* noalias readonly) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a16384struct.ap_uint<8>"([16384 x %"struct.ap_uint<8>"]* %0, [16384 x i8]* %1)
  call fastcc void @"onebyonecpy_hls.p0a16384struct.ap_uint<8>"([16384 x %"struct.ap_uint<8>"]* %2, [16384 x i8]* %3)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a16384struct.ap_uint<8>"([16384 x %"struct.ap_uint<8>"]* noalias, [16384 x i8]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [16384 x %"struct.ap_uint<8>"]* %0, null
  %3 = icmp eq [16384 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = getelementptr [16384 x i8], [16384 x i8]* %1, i64 0, i64 %for.loop.idx7
  %dst.addr.0.0.06 = getelementptr [16384 x %"struct.ap_uint<8>"], [16384 x %"struct.ap_uint<8>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16384
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a16384struct.ap_uint<8>.9"([16384 x i8]* noalias, [16384 x %"struct.ap_uint<8>"]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [16384 x i8]* %0, null
  %3 = icmp eq [16384 x %"struct.ap_uint<8>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [16384 x %"struct.ap_uint<8>"], [16384 x %"struct.ap_uint<8>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %5 = getelementptr [16384 x i8], [16384 x i8]* %0, i64 0, i64 %for.loop.idx7
  %6 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %6, i8* %5, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16384
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @apatb_fast_accel_hw(i8*, i32, i8*, i32, i32)

define void @fast_accel_hw_stub_wrapper(i8*, i32, i8*, i32, i32) #4 {
entry:
  %malloccall = tail call i8* @malloc(i64 16384)
  %5 = bitcast i8* %malloccall to [16384 x %"struct.ap_uint<8>"]*
  %malloccall1 = tail call i8* @malloc(i64 16384)
  %6 = bitcast i8* %malloccall1 to [16384 x %"struct.ap_uint<8>"]*
  %7 = bitcast i8* %0 to [16384 x i8]*
  %8 = bitcast i8* %2 to [16384 x i8]*
  call void @copy_out([16384 x %"struct.ap_uint<8>"]* %5, [16384 x i8]* %7, [16384 x %"struct.ap_uint<8>"]* %6, [16384 x i8]* %8)
  %9 = bitcast [16384 x %"struct.ap_uint<8>"]* %5 to %"struct.ap_uint<8>"*
  %10 = bitcast [16384 x %"struct.ap_uint<8>"]* %6 to %"struct.ap_uint<8>"*
  call void @fast_accel_hw_stub(%"struct.ap_uint<8>"* %9, i32 %1, %"struct.ap_uint<8>"* %10, i32 %3, i32 %4)
  call void @copy_in([16384 x %"struct.ap_uint<8>"]* %5, [16384 x i8]* %7, [16384 x %"struct.ap_uint<8>"]* %6, [16384 x i8]* %8)
  ret void
}

declare void @fast_accel_hw_stub(%"struct.ap_uint<8>"*, i32, %"struct.ap_uint<8>"*, i32, i32)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
