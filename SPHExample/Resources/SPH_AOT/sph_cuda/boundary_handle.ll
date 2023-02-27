; ModuleID = 'kernel'
source_filename = "kernel"
target triple = "nvptx64-nvidia-cuda"

%struct.RuntimeContext.16 = type { ptr, [64 x i64], [64 x i64], [32 x [12 x i32]], i32, [64 x i8], [64 x i64], [64 x i8], ptr }
%struct.LLVMRuntime = type { i8, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [512 x ptr], [512 x i64], ptr, ptr, [1024 x ptr], [1024 x ptr], ptr, [1024 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, [2048 x i8], [32 x i64], i32, i64, ptr, i32, i32, i64, ptr }

define void @boundary_handle_c84_0_kernel_0_serial(ptr byval(%struct.RuntimeContext.16) %context) {
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

define void @boundary_handle_c84_0_kernel_1_range_for(ptr byval(%struct.RuntimeContext.16) %context) {
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
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  br label %entry

final:                                            ; preds = %after_if18
  ret void

entry:                                            ; preds = %allocs
  br label %function_body

function_body:                                    ; preds = %entry
  store i32 %2, ptr %3, align 4
  %7 = load i32, ptr %3, align 4
  store float 0.000000e+00, ptr %4, align 4
  store float 0.000000e+00, ptr %5, align 4
  store float 0.000000e+00, ptr %6, align 4
  %8 = call i64 @RuntimeContext_get_args(ptr %0, i32 0)
  %9 = inttoptr i64 %8 to ptr
  %10 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %11 = mul i32 0, %10
  %12 = add i32 %11, %7
  %13 = mul i32 %12, 3
  %14 = add i32 %13, 0
  %15 = getelementptr float, ptr %9, i32 %14
  %16 = load float, ptr %15, align 4
  %17 = call i64 @RuntimeContext_get_args(ptr %0, i32 2)
  %18 = inttoptr i64 %17 to ptr
  %19 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 2, i32 0)
  %20 = mul i32 0, %19
  %21 = add i32 %20, 0
  %22 = mul i32 %21, 3
  %23 = add i32 %22, 0
  %24 = getelementptr float, ptr %18, i32 %23
  %25 = load float, ptr %24, align 4
  %26 = fcmp olt float %16, %25
  %27 = sext i1 %26 to i32
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %true_block, label %false_block

true_block:                                       ; preds = %function_body
  %30 = load float, ptr %24, align 4
  store float %30, ptr %15, align 4
  store float -1.000000e+00, ptr %4, align 4
  br label %after_if

false_block:                                      ; preds = %function_body
  br label %after_if

after_if:                                         ; preds = %false_block, %true_block
  %31 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %32 = mul i32 0, %31
  %33 = add i32 %32, %7
  %34 = mul i32 %33, 3
  %35 = add i32 %34, 1
  %36 = getelementptr float, ptr %9, i32 %35
  %37 = load float, ptr %36, align 4
  %38 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 2, i32 0)
  %39 = mul i32 0, %38
  %40 = add i32 %39, 0
  %41 = mul i32 %40, 3
  %42 = add i32 %41, 1
  %43 = getelementptr float, ptr %18, i32 %42
  %44 = load float, ptr %43, align 4
  %45 = fcmp olt float %37, %44
  %46 = sext i1 %45 to i32
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %true_block1, label %false_block2

true_block1:                                      ; preds = %after_if
  %49 = load float, ptr %43, align 4
  store float %49, ptr %36, align 4
  store float -1.000000e+00, ptr %5, align 4
  br label %after_if3

false_block2:                                     ; preds = %after_if
  br label %after_if3

after_if3:                                        ; preds = %false_block2, %true_block1
  %50 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %51 = mul i32 0, %50
  %52 = add i32 %51, %7
  %53 = mul i32 %52, 3
  %54 = add i32 %53, 2
  %55 = getelementptr float, ptr %9, i32 %54
  %56 = load float, ptr %55, align 4
  %57 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 2, i32 0)
  %58 = mul i32 0, %57
  %59 = add i32 %58, 0
  %60 = mul i32 %59, 3
  %61 = add i32 %60, 2
  %62 = getelementptr float, ptr %18, i32 %61
  %63 = load float, ptr %62, align 4
  %64 = fcmp olt float %56, %63
  %65 = sext i1 %64 to i32
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %true_block4, label %false_block5

true_block4:                                      ; preds = %after_if3
  %68 = load float, ptr %62, align 4
  store float %68, ptr %55, align 4
  store float -1.000000e+00, ptr %6, align 4
  br label %after_if6

false_block5:                                     ; preds = %after_if3
  br label %after_if6

after_if6:                                        ; preds = %false_block5, %true_block4
  %69 = load float, ptr %15, align 4
  %70 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 2, i32 0)
  %71 = mul i32 0, %70
  %72 = add i32 %71, 1
  %73 = mul i32 %72, 3
  %74 = add i32 %73, 0
  %75 = getelementptr float, ptr %18, i32 %74
  %76 = load float, ptr %75, align 4
  %77 = fcmp ogt float %69, %76
  %78 = sext i1 %77 to i32
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %true_block7, label %false_block8

true_block7:                                      ; preds = %after_if6
  %81 = load float, ptr %75, align 4
  store float %81, ptr %15, align 4
  %82 = load float, ptr %4, align 4
  %83 = fadd float %82, 1.000000e+00
  store float %83, ptr %4, align 4
  br label %after_if9

false_block8:                                     ; preds = %after_if6
  br label %after_if9

after_if9:                                        ; preds = %false_block8, %true_block7
  %84 = load float, ptr %36, align 4
  %85 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 2, i32 0)
  %86 = mul i32 0, %85
  %87 = add i32 %86, 1
  %88 = mul i32 %87, 3
  %89 = add i32 %88, 1
  %90 = getelementptr float, ptr %18, i32 %89
  %91 = load float, ptr %90, align 4
  %92 = fcmp ogt float %84, %91
  %93 = sext i1 %92 to i32
  %94 = and i32 %93, 1
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %true_block10, label %false_block11

true_block10:                                     ; preds = %after_if9
  %96 = load float, ptr %90, align 4
  store float %96, ptr %36, align 4
  %97 = load float, ptr %5, align 4
  %98 = fadd float %97, 1.000000e+00
  store float %98, ptr %5, align 4
  br label %after_if12

false_block11:                                    ; preds = %after_if9
  br label %after_if12

after_if12:                                       ; preds = %false_block11, %true_block10
  %99 = load float, ptr %55, align 4
  %100 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 2, i32 0)
  %101 = mul i32 0, %100
  %102 = add i32 %101, 1
  %103 = mul i32 %102, 3
  %104 = add i32 %103, 2
  %105 = getelementptr float, ptr %18, i32 %104
  %106 = load float, ptr %105, align 4
  %107 = fcmp ogt float %99, %106
  %108 = sext i1 %107 to i32
  %109 = and i32 %108, 1
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %true_block13, label %false_block14

true_block13:                                     ; preds = %after_if12
  %111 = load float, ptr %105, align 4
  store float %111, ptr %55, align 4
  %112 = load float, ptr %6, align 4
  %113 = fadd float %112, 1.000000e+00
  store float %113, ptr %6, align 4
  br label %after_if15

false_block14:                                    ; preds = %after_if12
  br label %after_if15

after_if15:                                       ; preds = %false_block14, %true_block13
  %114 = load float, ptr %4, align 4
  %115 = load float, ptr %5, align 4
  %116 = load float, ptr %6, align 4
  %117 = fmul float %114, %114
  %118 = fmul float %115, %115
  %119 = fmul float %116, %116
  %120 = fadd float %117, %118
  %121 = fadd float %120, %119
  %122 = call float @__nv_sqrtf(float %121)
  %123 = fcmp ogt float %122, 0x3EB0C6F7A0000000
  %124 = sext i1 %123 to i32
  %125 = and i32 %124, 1
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %true_block16, label %false_block17

true_block16:                                     ; preds = %after_if15
  %127 = load float, ptr %4, align 4
  %128 = load float, ptr %5, align 4
  %129 = load float, ptr %6, align 4
  %130 = fdiv float %127, %122
  %131 = fdiv float %128, %122
  %132 = fdiv float %129, %122
  %133 = call i64 @RuntimeContext_get_args(ptr %0, i32 1)
  %134 = inttoptr i64 %133 to ptr
  %135 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 1, i32 0)
  %136 = mul i32 0, %135
  %137 = add i32 %136, %7
  %138 = mul i32 %137, 3
  %139 = add i32 %138, 0
  %140 = getelementptr float, ptr %134, i32 %139
  %141 = load float, ptr %140, align 4
  %142 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 1, i32 0)
  %143 = mul i32 0, %142
  %144 = add i32 %143, %7
  %145 = mul i32 %144, 3
  %146 = add i32 %145, 1
  %147 = getelementptr float, ptr %134, i32 %146
  %148 = load float, ptr %147, align 4
  %149 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 1, i32 0)
  %150 = mul i32 0, %149
  %151 = add i32 %150, %7
  %152 = mul i32 %151, 3
  %153 = add i32 %152, 2
  %154 = getelementptr float, ptr %134, i32 %153
  %155 = load float, ptr %154, align 4
  %156 = fmul float %130, %141
  %157 = fmul float %131, %148
  %158 = fmul float %132, %155
  %159 = fadd float %156, %157
  %160 = fadd float %159, %158
  %161 = fmul float %160, 1.500000e+00
  %162 = fmul float %161, %130
  %163 = fmul float %161, %131
  %164 = fmul float %161, %132
  %neg = fneg float %162
  %neg19 = fneg float %163
  %neg20 = fneg float %164
  %165 = fadd float %141, %neg
  store float %165, ptr %140, align 4
  %166 = fadd float %148, %neg19
  store float %166, ptr %147, align 4
  %167 = fadd float %155, %neg20
  store float %167, ptr %154, align 4
  br label %after_if18

false_block17:                                    ; preds = %after_if15
  br label %after_if18

after_if18:                                       ; preds = %false_block17, %true_block16
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
  %args = getelementptr inbounds %struct.RuntimeContext.16, ptr %0, i32 0, i32 1
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
  %runtime = getelementptr inbounds %struct.RuntimeContext.16, ptr %0, i32 0, i32 0
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
  %extra_args = getelementptr inbounds %struct.RuntimeContext.16, ptr %0, i32 0, i32 3
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

; Function Attrs: alwaysinline inlinehint
define internal float @__nv_sqrtf(float %x) #3 {
  %1 = call float @llvm.nvvm.sqrt.f(float %x)
  ret float %1
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare float @llvm.nvvm.sqrt.f(float) #4

attributes #0 = { alwaysinline mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { alwaysinline inlinehint }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }

!nvvm.annotations = !{!0, !1, !2, !3, !4, !5, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8}
!llvm.linker.options = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}
!nvvmir.version = !{!16}
!llvm.module.flags = !{!17, !18, !19}

!0 = !{ptr @boundary_handle_c84_0_kernel_0_serial, !"kernel", i32 1}
!1 = !{ptr @boundary_handle_c84_0_kernel_0_serial, !"maxntidx", i32 1}
!2 = !{ptr @boundary_handle_c84_0_kernel_0_serial, !"minctasm", i32 2}
!3 = !{ptr @boundary_handle_c84_0_kernel_1_range_for, !"kernel", i32 1}
!4 = !{ptr @boundary_handle_c84_0_kernel_1_range_for, !"maxntidx", i32 128}
!5 = !{ptr @boundary_handle_c84_0_kernel_1_range_for, !"minctasm", i32 2}
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
