; ModuleID = 'kernel'
source_filename = "kernel"
target triple = "nvptx64-nvidia-cuda"

%struct.RuntimeContext.4 = type { ptr, [64 x i64], [64 x i64], [32 x [12 x i32]], i32, [64 x i8], [64 x i64], [64 x i8], ptr }
%struct.LLVMRuntime = type { i8, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [512 x ptr], [512 x i64], ptr, ptr, [1024 x ptr], [1024 x ptr], ptr, [1024 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, [2048 x i8], [32 x i64], i32, i64, ptr, i32, i32, i64, ptr }

define void @update_density_c78_0_kernel_0_serial(ptr byval(%struct.RuntimeContext.4) %context) {
entry:
  br label %body

final:                                            ; preds = %body
  ret void

body:                                             ; preds = %entry
  %0 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 0, i32 0)
  %1 = call ptr @RuntimeContext_get_runtime(ptr %context)
  %2 = call ptr @get_temporary_pointer(ptr %1, i64 0)
  store i32 %0, ptr %2, align 4
  br label %final
}

define void @update_density_c78_0_kernel_1_range_for(ptr byval(%struct.RuntimeContext.4) %context) {
entry:
  br label %body

final:                                            ; preds = %body
  ret void

body:                                             ; preds = %entry
  %0 = call ptr @RuntimeContext_get_runtime(ptr %context)
  %1 = call ptr @get_temporary_pointer(ptr %0, i64 0)
  %2 = load i32, ptr %1, align 4
  call void @gpu_parallel_range_for(ptr %context, i32 0, i32 %2, ptr null, ptr @function_body, ptr null, i64 1)
  br label %final
}

define internal void @function_body(ptr %0, ptr %1, i32 %2) {
allocs:
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  br label %entry

final:                                            ; preds = %after_for
  ret void

entry:                                            ; preds = %allocs
  br label %function_body

function_body:                                    ; preds = %entry
  store i32 %2, ptr %3, align 4
  %7 = load i32, ptr %3, align 4
  %8 = call i64 @RuntimeContext_get_args(ptr %0, i32 1)
  %9 = inttoptr i64 %8 to ptr
  %10 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 1, i32 0)
  %11 = mul i32 0, %10
  %12 = add i32 %11, %7
  %13 = getelementptr float, ptr %9, i32 %12
  %14 = call i64 @RuntimeContext_get_args(ptr %0, i32 0)
  %15 = inttoptr i64 %14 to ptr
  %16 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %17 = mul i32 0, %16
  %18 = add i32 %17, %7
  %19 = mul i32 %18, 3
  %20 = add i32 %19, 0
  %21 = getelementptr float, ptr %15, i32 %20
  %22 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %23 = mul i32 0, %22
  %24 = add i32 %23, %7
  %25 = mul i32 %24, 3
  %26 = add i32 %25, 1
  %27 = getelementptr float, ptr %15, i32 %26
  %28 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %29 = mul i32 0, %28
  %30 = add i32 %29, %7
  %31 = mul i32 %30, 3
  %32 = add i32 %31, 2
  %33 = getelementptr float, ptr %15, i32 %32
  %34 = call ptr @RuntimeContext_get_runtime(ptr %0)
  %35 = call ptr @get_temporary_pointer(ptr %34, i64 0)
  %36 = load i32, ptr %35, align 4
  store float 0.000000e+00, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %for_loop_test

for_loop_body:                                    ; preds = %for_loop_test
  %37 = load i32, ptr %5, align 4
  %38 = load float, ptr %21, align 4
  %39 = load float, ptr %27, align 4
  %40 = load float, ptr %33, align 4
  %41 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %42 = mul i32 0, %41
  %43 = add i32 %42, %37
  %44 = mul i32 %43, 3
  %45 = add i32 %44, 0
  %46 = getelementptr float, ptr %15, i32 %45
  %47 = load float, ptr %46, align 4
  %48 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %49 = mul i32 0, %48
  %50 = add i32 %49, %37
  %51 = mul i32 %50, 3
  %52 = add i32 %51, 1
  %53 = getelementptr float, ptr %15, i32 %52
  %54 = load float, ptr %53, align 4
  %55 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %56 = mul i32 0, %55
  %57 = add i32 %56, %37
  %58 = mul i32 %57, 3
  %59 = add i32 %58, 2
  %60 = getelementptr float, ptr %15, i32 %59
  %61 = load float, ptr %60, align 4
  %62 = fsub float %38, %47
  %63 = fsub float %39, %54
  %64 = fsub float %40, %61
  %65 = fmul float %62, %62
  %66 = fmul float %63, %63
  %67 = fmul float %64, %64
  %68 = fadd float %65, %66
  %69 = fadd float %68, %67
  %70 = call float @__nv_sqrtf(float %69)
  store float 0.000000e+00, ptr %6, align 4
  %71 = fcmp ole float %70, 0x3FA47AE140000000
  %72 = sext i1 %71 to i32
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %true_block, label %false_block

for_loop_inc:                                     ; preds = %after_if
  %75 = load i32, ptr %5, align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr %5, align 4
  br label %for_loop_test

after_for:                                        ; preds = %for_loop_test
  %77 = load float, ptr %4, align 4
  store float %77, ptr %13, align 4
  %78 = fmul float %77, 0x3F50624DE0000000
  %79 = fsub float %78, 1.000000e+00
  %80 = call float @llvm.maxnum.f32(float %79, float 0.000000e+00)
  %81 = fmul float %80, 1.000000e+04
  %82 = call i64 @RuntimeContext_get_args(ptr %0, i32 2)
  %83 = inttoptr i64 %82 to ptr
  %84 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 2, i32 0)
  %85 = mul i32 0, %84
  %86 = add i32 %85, %7
  %87 = getelementptr float, ptr %83, i32 %86
  store float %81, ptr %87, align 4
  br label %final

for_loop_test:                                    ; preds = %for_loop_inc, %function_body
  %88 = load i32, ptr %5, align 4
  %89 = icmp slt i32 %88, %36
  br i1 %89, label %for_loop_body, label %after_for

true_block:                                       ; preds = %for_loop_body
  %90 = fmul float %70, %70
  %91 = fsub float 0x3F5A36E2E0000000, %90
  %92 = fmul float %91, 0x4295BDF8A0000000
  %93 = fmul float %92, %91
  %94 = fmul float %93, %91
  store float %94, ptr %6, align 4
  br label %after_if

false_block:                                      ; preds = %for_loop_body
  br label %after_if

after_if:                                         ; preds = %false_block, %true_block
  %95 = load float, ptr %6, align 4
  %96 = fmul float %95, 0x3F7A36E2E0000000
  %97 = load float, ptr %4, align 4
  %98 = fadd float %97, %96
  store float %98, ptr %4, align 4
  br label %for_loop_inc
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.maxnum.f32(float, float) #0

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal i64 @RuntimeContext_get_args(ptr noundef %s, i32 noundef %i) #1 {
entry:
  %i.addr = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %args = getelementptr inbounds %struct.RuntimeContext.4, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %i.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [64 x i64], ptr %args, i64 0, i64 %idxprom
  %2 = load i64, ptr %arrayidx, align 8
  ret i64 %2
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal ptr @RuntimeContext_get_runtime(ptr noundef %s) #1 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %runtime = getelementptr inbounds %struct.RuntimeContext.4, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %runtime, align 8
  ret ptr %1
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal i32 @RuntimeContext_get_extra_args(ptr noundef %ctx, i32 noundef %i, i32 noundef %j) #1 {
entry:
  %j.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  store i32 %j, ptr %j.addr, align 4
  store i32 %i, ptr %i.addr, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  %0 = load ptr, ptr %ctx.addr, align 8
  %extra_args = getelementptr inbounds %struct.RuntimeContext.4, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %i.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [32 x [12 x i32]], ptr %extra_args, i64 0, i64 %idxprom
  %2 = load i32, ptr %j.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [12 x i32], ptr %arrayidx, i64 0, i64 %idxprom1
  %3 = load i32, ptr %arrayidx2, align 4
  ret i32 %3
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal ptr @get_temporary_pointer(ptr noundef %runtime, i64 noundef %offset) #1 {
entry:
  %offset.addr = alloca i64, align 8
  %runtime.addr = alloca ptr, align 8
  store i64 %offset, ptr %offset.addr, align 8
  store ptr %runtime, ptr %runtime.addr, align 8
  %0 = load ptr, ptr %runtime.addr, align 8
  %temporaries = getelementptr inbounds %struct.LLVMRuntime, ptr %0, i32 0, i32 17
  %1 = load ptr, ptr %temporaries, align 8
  %2 = load i64, ptr %offset.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %2
  ret ptr %add.ptr
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal void @gpu_parallel_range_for(ptr noundef %context, i32 noundef %begin, i32 noundef %end, ptr noundef %prologue, ptr noundef %func, ptr noundef %epilogue, i64 noundef %tls_size) #1 {
entry:
  %tls_size.addr = alloca i64, align 8
  %epilogue.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %prologue.addr = alloca ptr, align 8
  %end.addr = alloca i32, align 4
  %begin.addr = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %idx = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %tls_ptr = alloca ptr, align 8
  store i64 %tls_size, ptr %tls_size.addr, align 8
  store ptr %epilogue, ptr %epilogue.addr, align 8
  store ptr %func, ptr %func.addr, align 8
  store ptr %prologue, ptr %prologue.addr, align 8
  store i32 %end, ptr %end.addr, align 4
  store i32 %begin, ptr %begin.addr, align 4
  store ptr %context, ptr %context.addr, align 8
  %call = call i32 @thread_idx()
  %call1 = call i32 @block_dim()
  %call2 = call i32 @block_idx()
  %mul = mul nsw i32 %call1, %call2
  %add = add nsw i32 %call, %mul
  %0 = load i32, ptr %begin.addr, align 4
  %add3 = add nsw i32 %add, %0
  store i32 %add3, ptr %idx, align 4
  %1 = load i64, ptr %tls_size.addr, align 8
  %2 = call ptr @llvm.stacksave()
  store ptr %2, ptr %saved_stack, align 8
  %vla = alloca i8, i64 %1, align 8
  store i64 %1, ptr %__vla_expr0, align 8
  %arrayidx = getelementptr inbounds i8, ptr %vla, i64 0
  store ptr %arrayidx, ptr %tls_ptr, align 8
  %3 = load ptr, ptr %prologue.addr, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %prologue.addr, align 8
  %5 = load ptr, ptr %tls_ptr, align 8
  %6 = load ptr, ptr %context.addr, align 8
  call void %4(ptr noundef %6, ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %7 = load i32, ptr %idx, align 4
  %8 = load i32, ptr %end.addr, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %func.addr, align 8
  %10 = load i32, ptr %idx, align 4
  %11 = load ptr, ptr %tls_ptr, align 8
  %12 = load ptr, ptr %context.addr, align 8
  call void %9(ptr noundef %12, ptr noundef %11, i32 noundef %10)
  %call4 = call i32 @block_dim()
  %call5 = call i32 @grid_dim()
  %mul6 = mul nsw i32 %call4, %call5
  %13 = load i32, ptr %idx, align 4
  %add7 = add nsw i32 %13, %mul6
  store i32 %add7, ptr %idx, align 4
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  %14 = load ptr, ptr %epilogue.addr, align 8
  %tobool8 = icmp ne ptr %14, null
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %while.end
  %15 = load ptr, ptr %epilogue.addr, align 8
  %16 = load ptr, ptr %tls_ptr, align 8
  %17 = load ptr, ptr %context.addr, align 8
  call void %15(ptr noundef %17, ptr noundef %16)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %while.end
  %18 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore(ptr %18)
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal i32 @thread_idx() #1 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  ret i32 %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal i32 @block_dim() #1 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  ret i32 %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal i32 @block_idx() #1 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  ret i32 %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #2

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal i32 @grid_dim() #1 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x()
  ret i32 %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.nvvm.read.ptx.sreg.nctaid.x() #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.nvvm.read.ptx.sreg.tid.x() #0

; Function Attrs: alwaysinline inlinehint
define internal float @__nv_sqrtf(float %x) #3 {
  %1 = call float @llvm.nvvm.sqrt.f(float %x)
  ret float %1
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare float @llvm.nvvm.sqrt.f(float) #4

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { alwaysinline mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { alwaysinline inlinehint }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }

!nvvm.annotations = !{!0, !1, !2, !3, !4, !5, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8}
!llvm.linker.options = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}
!nvvmir.version = !{!16}
!llvm.module.flags = !{!17, !18, !19}

!0 = !{ptr @update_density_c78_0_kernel_0_serial, !"kernel", i32 1}
!1 = !{ptr @update_density_c78_0_kernel_0_serial, !"maxntidx", i32 1}
!2 = !{ptr @update_density_c78_0_kernel_0_serial, !"minctasm", i32 2}
!3 = !{ptr @update_density_c78_0_kernel_1_range_for, !"kernel", i32 1}
!4 = !{ptr @update_density_c78_0_kernel_1_range_for, !"maxntidx", i32 128}
!5 = !{ptr @update_density_c78_0_kernel_1_range_for, !"minctasm", i32 2}
!6 = !{null, !"align", i32 8}
!7 = !{null, !"align", i32 8, !"align", i32 65544, !"align", i32 131080}
!8 = !{null, !"align", i32 16}
!9 = !{null, !"align", i32 16, !"align", i32 65552, !"align", i32 131088}
!10 = !{!"/FAILIFMISMATCH:\22_MSC_VER=1900\22"}
!11 = !{!"/FAILIFMISMATCH:\22_ITERATOR_DEBUG_LEVEL=0\22"}
!12 = !{!"/FAILIFMISMATCH:\22RuntimeLibrary=MT_StaticRelease\22"}
!13 = !{!"/DEFAULTLIB:libcpmt.lib"}
!14 = !{!"/FAILIFMISMATCH:\22_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\22"}
!15 = !{!"clang version 15.0.0 (https://github.com/llvm/llvm-project.git 483eed9e1faaa59925386728d40c099a237205e4)"}
!16 = !{i32 1, i32 4}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 7, !"PIC Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 2}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
