; ModuleID = 'kernel'
source_filename = "kernel"
target triple = "nvptx64-nvidia-cuda"

%struct.RuntimeContext = type { ptr, [64 x i64], [64 x i64], [32 x [12 x i32]], i32, [64 x i8], [64 x i64], [64 x i8], ptr }
%struct.LLVMRuntime = type { i8, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [512 x ptr], [512 x i64], ptr, ptr, [1024 x ptr], [1024 x ptr], ptr, [1024 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, [2048 x i8], [32 x i64], i32, i64, ptr, i32, i32, i64, ptr }

define void @initialize_particle_c76_0_kernel_0_serial(ptr byval(%struct.RuntimeContext) %context) {
entry:
  br label %body

final:                                            ; preds = %body
  ret void

body:                                             ; preds = %entry
  %0 = call i64 @RuntimeContext_get_args(ptr %context, i32 4)
  %1 = inttoptr i64 %0 to ptr
  %2 = getelementptr float, ptr %1, i32 0
  store float -1.000000e+01, ptr %2, align 4
  %3 = getelementptr float, ptr %1, i32 1
  store float 0.000000e+00, ptr %3, align 4
  %4 = getelementptr float, ptr %1, i32 2
  store float 0.000000e+00, ptr %4, align 4
  %5 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 0, i32 0)
  %6 = call ptr @RuntimeContext_get_runtime(ptr %context)
  %7 = call ptr @get_temporary_pointer(ptr %6, i64 0)
  store i32 %5, ptr %7, align 4
  br label %final
}

define void @initialize_particle_c76_0_kernel_1_range_for(ptr byval(%struct.RuntimeContext) %context) {
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
  %5 = call i64 @RuntimeContext_get_args(ptr %0, i32 3)
  %6 = inttoptr i64 %5 to ptr
  %7 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 3, i32 0)
  %8 = mul i32 0, %7
  %9 = add i32 %8, 0
  %10 = getelementptr i32, ptr %6, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = sdiv i32 %4, %11
  %13 = icmp slt i32 %4, 0
  %14 = sext i1 %13 to i32
  %15 = icmp slt i32 %11, 0
  %16 = sext i1 %15 to i32
  %17 = mul i32 %11, %12
  %18 = icmp ne i32 %14, %16
  %19 = sext i1 %18 to i32
  %20 = icmp ne i32 %4, 0
  %21 = sext i1 %20 to i32
  %22 = icmp ne i32 %17, %4
  %23 = sext i1 %22 to i32
  %24 = and i32 %19, %21
  %25 = and i32 %24, %23
  %26 = add i32 %12, %25
  %27 = mul i32 %11, %26
  %28 = sub i32 %4, %27
  %29 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 3, i32 0)
  %30 = mul i32 0, %29
  %31 = add i32 %30, 1
  %32 = getelementptr i32, ptr %6, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = sdiv i32 %26, %33
  %35 = icmp slt i32 %26, 0
  %36 = sext i1 %35 to i32
  %37 = icmp slt i32 %33, 0
  %38 = sext i1 %37 to i32
  %39 = mul i32 %33, %34
  %40 = icmp ne i32 %36, %38
  %41 = sext i1 %40 to i32
  %42 = icmp ne i32 %26, 0
  %43 = sext i1 %42 to i32
  %44 = icmp ne i32 %39, %26
  %45 = sext i1 %44 to i32
  %46 = and i32 %41, %43
  %47 = and i32 %46, %45
  %48 = add i32 %34, %47
  %49 = mul i32 %33, %48
  %50 = sub i32 %26, %49
  %51 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 3, i32 0)
  %52 = mul i32 0, %51
  %53 = add i32 %52, 2
  %54 = getelementptr i32, ptr %6, i32 %53
  %55 = load i32, ptr %54, align 4
  %56 = sdiv i32 %48, %55
  %57 = icmp slt i32 %48, 0
  %58 = sext i1 %57 to i32
  %59 = icmp slt i32 %55, 0
  %60 = sext i1 %59 to i32
  %61 = mul i32 %55, %56
  %62 = icmp ne i32 %58, %60
  %63 = sext i1 %62 to i32
  %64 = icmp ne i32 %48, 0
  %65 = sext i1 %64 to i32
  %66 = icmp ne i32 %61, %48
  %67 = sext i1 %66 to i32
  %68 = and i32 %63, %65
  %69 = and i32 %68, %67
  %70 = add i32 %56, %69
  %71 = mul i32 %55, %70
  %72 = sub i32 %48, %71
  %73 = sitofp i32 %28 to float
  %74 = fmul float %73, 0x3F947AE140000000
  %75 = sitofp i32 %50 to float
  %76 = fmul float %75, 0x3F947AE140000000
  %77 = sitofp i32 %72 to float
  %78 = fmul float %77, 0x3F947AE140000000
  %79 = call i64 @RuntimeContext_get_args(ptr %0, i32 2)
  %80 = inttoptr i64 %79 to ptr
  %81 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 2, i32 0)
  %82 = mul i32 0, %81
  %83 = add i32 %82, 0
  %84 = mul i32 %83, 3
  %85 = add i32 %84, 0
  %86 = getelementptr float, ptr %80, i32 %85
  %87 = load float, ptr %86, align 4
  %88 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 2, i32 0)
  %89 = mul i32 0, %88
  %90 = add i32 %89, 0
  %91 = mul i32 %90, 3
  %92 = add i32 %91, 1
  %93 = getelementptr float, ptr %80, i32 %92
  %94 = load float, ptr %93, align 4
  %95 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 2, i32 0)
  %96 = mul i32 0, %95
  %97 = add i32 %96, 0
  %98 = mul i32 %97, 3
  %99 = add i32 %98, 2
  %100 = getelementptr float, ptr %80, i32 %99
  %101 = load float, ptr %100, align 4
  %102 = fadd float %74, %87
  %103 = fadd float %76, %94
  %104 = fadd float %78, %101
  %105 = call i64 @RuntimeContext_get_args(ptr %0, i32 0)
  %106 = inttoptr i64 %105 to ptr
  %107 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %108 = mul i32 0, %107
  %109 = add i32 %108, %4
  %110 = mul i32 %109, 3
  %111 = add i32 %110, 0
  %112 = getelementptr float, ptr %106, i32 %111
  store float %102, ptr %112, align 4
  %113 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %114 = mul i32 0, %113
  %115 = add i32 %114, %4
  %116 = mul i32 %115, 3
  %117 = add i32 %116, 1
  %118 = getelementptr float, ptr %106, i32 %117
  store float %103, ptr %118, align 4
  %119 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %120 = mul i32 0, %119
  %121 = add i32 %120, %4
  %122 = mul i32 %121, 3
  %123 = add i32 %122, 2
  %124 = getelementptr float, ptr %106, i32 %123
  store float %104, ptr %124, align 4
  %125 = call i64 @RuntimeContext_get_args(ptr %0, i32 1)
  %126 = inttoptr i64 %125 to ptr
  %127 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 1, i32 0)
  %128 = mul i32 0, %127
  %129 = add i32 %128, %4
  %130 = mul i32 %129, 3
  %131 = add i32 %130, 0
  %132 = getelementptr float, ptr %126, i32 %131
  store float 0.000000e+00, ptr %132, align 4
  %133 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 1, i32 0)
  %134 = mul i32 0, %133
  %135 = add i32 %134, %4
  %136 = mul i32 %135, 3
  %137 = add i32 %136, 1
  %138 = getelementptr float, ptr %126, i32 %137
  store float 0.000000e+00, ptr %138, align 4
  %139 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 1, i32 0)
  %140 = mul i32 0, %139
  %141 = add i32 %140, %4
  %142 = mul i32 %141, 3
  %143 = add i32 %142, 2
  %144 = getelementptr float, ptr %126, i32 %143
  store float 0.000000e+00, ptr %144, align 4
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
  %args = getelementptr inbounds %struct.RuntimeContext, ptr %0, i32 0, i32 1
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
  %runtime = getelementptr inbounds %struct.RuntimeContext, ptr %0, i32 0, i32 0
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
  %extra_args = getelementptr inbounds %struct.RuntimeContext, ptr %0, i32 0, i32 3
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

!0 = !{ptr @initialize_particle_c76_0_kernel_0_serial, !"kernel", i32 1}
!1 = !{ptr @initialize_particle_c76_0_kernel_0_serial, !"maxntidx", i32 1}
!2 = !{ptr @initialize_particle_c76_0_kernel_0_serial, !"minctasm", i32 2}
!3 = !{ptr @initialize_particle_c76_0_kernel_1_range_for, !"kernel", i32 1}
!4 = !{ptr @initialize_particle_c76_0_kernel_1_range_for, !"maxntidx", i32 128}
!5 = !{ptr @initialize_particle_c76_0_kernel_1_range_for, !"minctasm", i32 2}
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
