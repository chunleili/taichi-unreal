; ModuleID = 'kernel'
source_filename = "kernel"
target triple = "nvptx64-nvidia-cuda"

%struct.RuntimeContext.13 = type { ptr, [64 x i64], [64 x i64], [32 x [12 x i32]], i32, [64 x i8], [64 x i64], [64 x i8], ptr }
%struct.LLVMRuntime = type { i8, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [512 x ptr], [512 x i64], ptr, ptr, [1024 x ptr], [1024 x ptr], ptr, [1024 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, [2048 x i8], [32 x i64], i32, i64, ptr, i32, i32, i64, ptr }

define void @advance_c82_0_kernel_0_serial(ptr byval(%struct.RuntimeContext.13) %context) {
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

define void @advance_c82_0_kernel_1_range_for(ptr byval(%struct.RuntimeContext.13) %context) {
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
  br label %entry

final:                                            ; preds = %function_body
  ret void

entry:                                            ; preds = %allocs
  br label %function_body

function_body:                                    ; preds = %entry
  store i32 %2, ptr %3, align 4
  %4 = load i32, ptr %3, align 4
  %5 = call i64 @RuntimeContext_get_args(ptr %0, i32 2)
  %6 = inttoptr i64 %5 to ptr
  %7 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 2, i32 0)
  %8 = mul i32 0, %7
  %9 = add i32 %8, %4
  %10 = mul i32 %9, 3
  %11 = add i32 %10, 0
  %12 = getelementptr float, ptr %6, i32 %11
  %13 = load float, ptr %12, align 4
  %14 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 2, i32 0)
  %15 = mul i32 0, %14
  %16 = add i32 %15, %4
  %17 = mul i32 %16, 3
  %18 = add i32 %17, 1
  %19 = getelementptr float, ptr %6, i32 %18
  %20 = load float, ptr %19, align 4
  %21 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 2, i32 0)
  %22 = mul i32 0, %21
  %23 = add i32 %22, %4
  %24 = mul i32 %23, 3
  %25 = add i32 %24, 2
  %26 = getelementptr float, ptr %6, i32 %25
  %27 = load float, ptr %26, align 4
  %28 = fmul float %13, 0x3F6A36E2E0000000
  %29 = fmul float %20, 0x3F6A36E2E0000000
  %30 = fmul float %27, 0x3F6A36E2E0000000
  %31 = call i64 @RuntimeContext_get_args(ptr %0, i32 1)
  %32 = inttoptr i64 %31 to ptr
  %33 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 1, i32 0)
  %34 = mul i32 0, %33
  %35 = add i32 %34, %4
  %36 = mul i32 %35, 3
  %37 = add i32 %36, 0
  %38 = getelementptr float, ptr %32, i32 %37
  %39 = load float, ptr %38, align 4
  %40 = fadd float %39, %28
  store float %40, ptr %38, align 4
  %41 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 1, i32 0)
  %42 = mul i32 0, %41
  %43 = add i32 %42, %4
  %44 = mul i32 %43, 3
  %45 = add i32 %44, 1
  %46 = getelementptr float, ptr %32, i32 %45
  %47 = load float, ptr %46, align 4
  %48 = fadd float %47, %29
  store float %48, ptr %46, align 4
  %49 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 1, i32 0)
  %50 = mul i32 0, %49
  %51 = add i32 %50, %4
  %52 = mul i32 %51, 3
  %53 = add i32 %52, 2
  %54 = getelementptr float, ptr %32, i32 %53
  %55 = load float, ptr %54, align 4
  %56 = fadd float %55, %30
  store float %56, ptr %54, align 4
  %57 = fmul float %40, 0x3F6A36E2E0000000
  %58 = fmul float %48, 0x3F6A36E2E0000000
  %59 = fmul float %56, 0x3F6A36E2E0000000
  %60 = call i64 @RuntimeContext_get_args(ptr %0, i32 0)
  %61 = inttoptr i64 %60 to ptr
  %62 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %63 = mul i32 0, %62
  %64 = add i32 %63, %4
  %65 = mul i32 %64, 3
  %66 = add i32 %65, 0
  %67 = getelementptr float, ptr %61, i32 %66
  %68 = load float, ptr %67, align 4
  %69 = fadd float %68, %57
  store float %69, ptr %67, align 4
  %70 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %71 = mul i32 0, %70
  %72 = add i32 %71, %4
  %73 = mul i32 %72, 3
  %74 = add i32 %73, 1
  %75 = getelementptr float, ptr %61, i32 %74
  %76 = load float, ptr %75, align 4
  %77 = fadd float %76, %58
  store float %77, ptr %75, align 4
  %78 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %79 = mul i32 0, %78
  %80 = add i32 %79, %4
  %81 = mul i32 %80, 3
  %82 = add i32 %81, 2
  %83 = getelementptr float, ptr %61, i32 %82
  %84 = load float, ptr %83, align 4
  %85 = fadd float %84, %59
  store float %85, ptr %83, align 4
  br label %final
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal i64 @RuntimeContext_get_args(ptr noundef %s, i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %args = getelementptr inbounds %struct.RuntimeContext.13, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %i.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [64 x i64], ptr %args, i64 0, i64 %idxprom
  %2 = load i64, ptr %arrayidx, align 8
  ret i64 %2
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal ptr @RuntimeContext_get_runtime(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %runtime = getelementptr inbounds %struct.RuntimeContext.13, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %runtime, align 8
  ret ptr %1
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal i32 @RuntimeContext_get_extra_args(ptr noundef %ctx, i32 noundef %i, i32 noundef %j) #0 {
entry:
  %j.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  store i32 %j, ptr %j.addr, align 4
  store i32 %i, ptr %i.addr, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  %0 = load ptr, ptr %ctx.addr, align 8
  %extra_args = getelementptr inbounds %struct.RuntimeContext.13, ptr %0, i32 0, i32 3
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
define internal ptr @get_temporary_pointer(ptr noundef %runtime, i64 noundef %offset) #0 {
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
define internal void @gpu_parallel_range_for(ptr noundef %context, i32 noundef %begin, i32 noundef %end, ptr noundef %prologue, ptr noundef %func, ptr noundef %epilogue, i64 noundef %tls_size) #0 {
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
define internal i32 @thread_idx() #0 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  ret i32 %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal i32 @block_dim() #0 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  ret i32 %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal i32 @block_idx() #0 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  ret i32 %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #1

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal i32 @grid_dim() #0 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x()
  ret i32 %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(ptr) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.nvvm.read.ptx.sreg.nctaid.x() #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.nvvm.read.ptx.sreg.tid.x() #2

attributes #0 = { alwaysinline mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!nvvm.annotations = !{!0, !1, !2, !3, !4, !5, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8}
!llvm.linker.options = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}
!nvvmir.version = !{!16}
!llvm.module.flags = !{!17, !18, !19}

!0 = !{ptr @advance_c82_0_kernel_0_serial, !"kernel", i32 1}
!1 = !{ptr @advance_c82_0_kernel_0_serial, !"maxntidx", i32 1}
!2 = !{ptr @advance_c82_0_kernel_0_serial, !"minctasm", i32 2}
!3 = !{ptr @advance_c82_0_kernel_1_range_for, !"kernel", i32 1}
!4 = !{ptr @advance_c82_0_kernel_1_range_for, !"maxntidx", i32 128}
!5 = !{ptr @advance_c82_0_kernel_1_range_for, !"minctasm", i32 2}
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
