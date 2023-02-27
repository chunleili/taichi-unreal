; ModuleID = 'kernel'
source_filename = "kernel"
target triple = "nvptx64-nvidia-cuda"

%struct.RuntimeContext.0 = type { ptr, [64 x i64], [64 x i64], [32 x [12 x i32]], i32, [64 x i8], [64 x i64], [64 x i8], ptr }

define void @initialize_c74_0_kernel_0_serial(ptr byval(%struct.RuntimeContext.0) %context) {
entry:
  br label %body

final:                                            ; preds = %body
  ret void

body:                                             ; preds = %entry
  %0 = call i64 @RuntimeContext_get_args(ptr %context, i32 0)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 0, i32 0)
  %3 = mul i32 0, %2
  %4 = add i32 %3, 0
  %5 = mul i32 %4, 3
  %6 = add i32 %5, 0
  %7 = getelementptr float, ptr %1, i32 %6
  store float 0.000000e+00, ptr %7, align 4
  %8 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 0, i32 0)
  %9 = mul i32 0, %8
  %10 = add i32 %9, 0
  %11 = mul i32 %10, 3
  %12 = add i32 %11, 1
  %13 = getelementptr float, ptr %1, i32 %12
  store float 0.000000e+00, ptr %13, align 4
  %14 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 0, i32 0)
  %15 = mul i32 0, %14
  %16 = add i32 %15, 0
  %17 = mul i32 %16, 3
  %18 = add i32 %17, 2
  %19 = getelementptr float, ptr %1, i32 %18
  store float 0.000000e+00, ptr %19, align 4
  %20 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 0, i32 0)
  %21 = mul i32 0, %20
  %22 = add i32 %21, 1
  %23 = mul i32 %22, 3
  %24 = add i32 %23, 0
  %25 = getelementptr float, ptr %1, i32 %24
  store float 1.000000e+00, ptr %25, align 4
  %26 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 0, i32 0)
  %27 = mul i32 0, %26
  %28 = add i32 %27, 1
  %29 = mul i32 %28, 3
  %30 = add i32 %29, 1
  %31 = getelementptr float, ptr %1, i32 %30
  store float 1.000000e+00, ptr %31, align 4
  %32 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 0, i32 0)
  %33 = mul i32 0, %32
  %34 = add i32 %33, 1
  %35 = mul i32 %34, 3
  %36 = add i32 %35, 2
  %37 = getelementptr float, ptr %1, i32 %36
  store float 1.000000e+00, ptr %37, align 4
  %38 = call i64 @RuntimeContext_get_args(ptr %context, i32 1)
  %39 = inttoptr i64 %38 to ptr
  %40 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 1, i32 0)
  %41 = mul i32 0, %40
  %42 = add i32 %41, 0
  %43 = mul i32 %42, 3
  %44 = add i32 %43, 0
  %45 = getelementptr float, ptr %39, i32 %44
  store float 0x3FD3333340000000, ptr %45, align 4
  %46 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 1, i32 0)
  %47 = mul i32 0, %46
  %48 = add i32 %47, 0
  %49 = mul i32 %48, 3
  %50 = add i32 %49, 1
  %51 = getelementptr float, ptr %39, i32 %50
  store float 0x3FB99999A0000000, ptr %51, align 4
  %52 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 1, i32 0)
  %53 = mul i32 0, %52
  %54 = add i32 %53, 0
  %55 = mul i32 %54, 3
  %56 = add i32 %55, 2
  %57 = getelementptr float, ptr %39, i32 %56
  store float 0x3FD3333340000000, ptr %57, align 4
  %58 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 1, i32 0)
  %59 = mul i32 0, %58
  %60 = add i32 %59, 1
  %61 = mul i32 %60, 3
  %62 = add i32 %61, 0
  %63 = getelementptr float, ptr %39, i32 %62
  store float 0x3FE6666660000000, ptr %63, align 4
  %64 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 1, i32 0)
  %65 = mul i32 0, %64
  %66 = add i32 %65, 1
  %67 = mul i32 %66, 3
  %68 = add i32 %67, 1
  %69 = getelementptr float, ptr %39, i32 %68
  store float 0x3FE6666660000000, ptr %69, align 4
  %70 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 1, i32 0)
  %71 = mul i32 0, %70
  %72 = add i32 %71, 1
  %73 = mul i32 %72, 3
  %74 = add i32 %73, 2
  %75 = getelementptr float, ptr %39, i32 %74
  store float 0x3FE6666660000000, ptr %75, align 4
  %76 = call i64 @RuntimeContext_get_args(ptr %context, i32 2)
  %77 = inttoptr i64 %76 to ptr
  %78 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 2, i32 0)
  %79 = mul i32 0, %78
  %80 = add i32 %79, 0
  %81 = getelementptr i32, ptr %77, i32 %80
  store i32 20, ptr %81, align 4
  %82 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 2, i32 0)
  %83 = mul i32 0, %82
  %84 = add i32 %83, 1
  %85 = getelementptr i32, ptr %77, i32 %84
  store i32 20, ptr %85, align 4
  %86 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 2, i32 0)
  %87 = mul i32 0, %86
  %88 = add i32 %87, 2
  %89 = getelementptr i32, ptr %77, i32 %88
  store i32 20, ptr %89, align 4
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
  %args = getelementptr inbounds %struct.RuntimeContext.0, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %i.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [64 x i64], ptr %args, i64 0, i64 %idxprom
  %2 = load i64, ptr %arrayidx, align 8
  ret i64 %2
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
  %extra_args = getelementptr inbounds %struct.RuntimeContext.0, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %i.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [32 x [12 x i32]], ptr %extra_args, i64 0, i64 %idxprom
  %2 = load i32, ptr %j.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [12 x i32], ptr %arrayidx, i64 0, i64 %idxprom1
  %3 = load i32, ptr %arrayidx2, align 4
  ret i32 %3
}

attributes #0 = { alwaysinline mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!nvvm.annotations = !{!0, !1, !2, !3, !4, !3, !5, !5, !5, !5, !6, !6, !5}
!llvm.linker.options = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}
!nvvmir.version = !{!13}
!llvm.module.flags = !{!14, !15, !16}

!0 = !{ptr @initialize_c74_0_kernel_0_serial, !"kernel", i32 1}
!1 = !{ptr @initialize_c74_0_kernel_0_serial, !"maxntidx", i32 1}
!2 = !{ptr @initialize_c74_0_kernel_0_serial, !"minctasm", i32 2}
!3 = !{null, !"align", i32 8}
!4 = !{null, !"align", i32 8, !"align", i32 65544, !"align", i32 131080}
!5 = !{null, !"align", i32 16}
!6 = !{null, !"align", i32 16, !"align", i32 65552, !"align", i32 131088}
!7 = !{!"/FAILIFMISMATCH:\22_MSC_VER=1900\22"}
!8 = !{!"/FAILIFMISMATCH:\22_ITERATOR_DEBUG_LEVEL=0\22"}
!9 = !{!"/FAILIFMISMATCH:\22RuntimeLibrary=MT_StaticRelease\22"}
!10 = !{!"/DEFAULTLIB:libcpmt.lib"}
!11 = !{!"/FAILIFMISMATCH:\22_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\22"}
!12 = !{!"clang version 15.0.0 (https://github.com/llvm/llvm-project.git 483eed9e1faaa59925386728d40c099a237205e4)"}
!13 = !{i32 1, i32 4}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
