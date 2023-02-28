; ModuleID = 'kernel'
source_filename = "kernel"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.34.31937"

%struct.RuntimeContext = type { ptr, [64 x i64], [64 x i64], [32 x [12 x i32]], i32, [64 x i8], [64 x i64], [64 x i8], ptr }
%struct.range_task_helper_context = type { ptr, ptr, ptr, ptr, i64, i32, i32, i32, i32 }
%struct.LLVMRuntime = type { i8, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [512 x ptr], [512 x i64], ptr, ptr, [1024 x ptr], [1024 x ptr], ptr, [1024 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, [2048 x i8], [32 x i64], i32, i64, ptr, i32, i32, i64, ptr }

@"??_C@_0BF@POBDBJJN@step?5must?5not?5be?5?$CFd?6?$AA@" = internal unnamed_addr constant [21 x i8] c"step must not be %d\0A\00", align 1

define void @initialize_c74_0_kernel_0_range_for(ptr %context) {
entry:
  br label %body

final:                                            ; preds = %body
  ret void

body:                                             ; preds = %entry
  call void @cpu_parallel_range_for(ptr %context, i32 16, i32 0, i32 10, i32 1, i32 512, ptr null, ptr @function_body, ptr null, i64 1)
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
  %5 = sitofp i32 %4 to float
  %6 = fmul float %5, 0x3FB99999A0000000
  %7 = call i64 @RuntimeContext_get_args(ptr %0, i32 0)
  %8 = inttoptr i64 %7 to ptr
  %9 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %10 = mul i32 0, %9
  %11 = add i32 %10, %4
  %12 = mul i32 %11, 3
  %13 = add i32 %12, 0
  %14 = getelementptr float, ptr %8, i32 %13
  store float 0.000000e+00, ptr %14, align 4
  %15 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %16 = mul i32 0, %15
  %17 = add i32 %16, %4
  %18 = mul i32 %17, 3
  %19 = add i32 %18, 1
  %20 = getelementptr float, ptr %8, i32 %19
  store float %6, ptr %20, align 4
  %21 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %22 = mul i32 0, %21
  %23 = add i32 %22, %4
  %24 = mul i32 %23, 3
  %25 = add i32 %24, 2
  %26 = getelementptr float, ptr %8, i32 %25
  store float 0.000000e+00, ptr %26, align 4
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
define internal void @cpu_parallel_range_for(ptr noundef %context, i32 noundef %num_threads, i32 noundef %begin, i32 noundef %end, i32 noundef %step, i32 noundef %block_dim, ptr noundef %prologue, ptr noundef %body, ptr noundef %epilogue, i64 noundef %tls_size) #0 {
entry:
  %tls_size.addr = alloca i64, align 8
  %epilogue.addr = alloca ptr, align 8
  %body.addr = alloca ptr, align 8
  %prologue.addr = alloca ptr, align 8
  %block_dim.addr = alloca i32, align 4
  %step.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %begin.addr = alloca i32, align 4
  %num_threads.addr = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %ctx = alloca %struct.range_task_helper_context, align 8
  %runtime10 = alloca ptr, align 8
  store i64 %tls_size, ptr %tls_size.addr, align 8
  store ptr %epilogue, ptr %epilogue.addr, align 8
  store ptr %body, ptr %body.addr, align 8
  store ptr %prologue, ptr %prologue.addr, align 8
  store i32 %block_dim, ptr %block_dim.addr, align 4
  store i32 %step, ptr %step.addr, align 4
  store i32 %end, ptr %end.addr, align 4
  store i32 %begin, ptr %begin.addr, align 4
  store i32 %num_threads, ptr %num_threads.addr, align 4
  store ptr %context, ptr %context.addr, align 8
  %call = call noundef ptr @"??0range_task_helper_context@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(56) %ctx) #5
  %0 = load ptr, ptr %context.addr, align 8
  %context1 = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 0
  store ptr %0, ptr %context1, align 8
  %1 = load ptr, ptr %prologue.addr, align 8
  %prologue2 = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 1
  store ptr %1, ptr %prologue2, align 8
  %2 = load i64, ptr %tls_size.addr, align 8
  %tls_size3 = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 4
  store i64 %2, ptr %tls_size3, align 8
  %3 = load ptr, ptr %body.addr, align 8
  %body4 = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 2
  store ptr %3, ptr %body4, align 8
  %4 = load ptr, ptr %epilogue.addr, align 8
  %epilogue5 = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 3
  store ptr %4, ptr %epilogue5, align 8
  %5 = load i32, ptr %begin.addr, align 4
  %begin6 = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 5
  store i32 %5, ptr %begin6, align 8
  %6 = load i32, ptr %end.addr, align 4
  %end7 = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 6
  store i32 %6, ptr %end7, align 4
  %7 = load i32, ptr %step.addr, align 4
  %step8 = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 8
  store i32 %7, ptr %step8, align 4
  %8 = load i32, ptr %step.addr, align 4
  %cmp = icmp ne i32 %8, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load i32, ptr %step.addr, align 4
  %cmp9 = icmp ne i32 %9, -1
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %context.addr, align 8
  %runtime = getelementptr inbounds %struct.RuntimeContext, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %runtime, align 8
  call void @"??$taichi_printf@AEAH@@YAXPEAULLVMRuntime@@PEBDAEAH@Z"(ptr noundef %11, ptr noundef @"??_C@_0BF@POBDBJJN@step?5must?5not?5be?5?$CFd?6?$AA@", ptr noundef nonnull align 4 dereferenceable(4) %step.addr)
  call void @exit(i32 noundef -1) #6
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %12 = load i32, ptr %block_dim.addr, align 4
  %block_size = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 7
  store i32 %12, ptr %block_size, align 8
  %13 = load ptr, ptr %context.addr, align 8
  %runtime11 = getelementptr inbounds %struct.RuntimeContext, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %runtime11, align 8
  store ptr %14, ptr %runtime10, align 8
  %15 = load ptr, ptr %runtime10, align 8
  %parallel_for = getelementptr inbounds %struct.LLVMRuntime, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %parallel_for, align 8
  %17 = load i32, ptr %num_threads.addr, align 4
  %18 = load i32, ptr %end.addr, align 4
  %19 = load i32, ptr %begin.addr, align 4
  %sub = sub nsw i32 %18, %19
  %20 = load i32, ptr %block_dim.addr, align 4
  %add = add nsw i32 %sub, %20
  %sub12 = sub nsw i32 %add, 1
  %21 = load i32, ptr %block_dim.addr, align 4
  %div = sdiv i32 %sub12, %21
  %22 = load ptr, ptr %runtime10, align 8
  %thread_pool = getelementptr inbounds %struct.LLVMRuntime, ptr %22, i32 0, i32 11
  %23 = load ptr, ptr %thread_pool, align 8
  call void %16(ptr noundef %23, i32 noundef %div, i32 noundef %17, ptr noundef %ctx, ptr noundef @cpu_parallel_range_for_task)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal noundef ptr @"??0range_task_helper_context@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(56) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %prologue = getelementptr inbounds %struct.range_task_helper_context, ptr %this1, i32 0, i32 1
  store ptr null, ptr %prologue, align 8
  %body = getelementptr inbounds %struct.range_task_helper_context, ptr %this1, i32 0, i32 2
  store ptr null, ptr %body, align 8
  %epilogue = getelementptr inbounds %struct.range_task_helper_context, ptr %this1, i32 0, i32 3
  store ptr null, ptr %epilogue, align 8
  %tls_size = getelementptr inbounds %struct.range_task_helper_context, ptr %this1, i32 0, i32 4
  store i64 1, ptr %tls_size, align 8
  ret ptr %this1
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal void @"??$taichi_printf@AEAH@@YAXPEAULLVMRuntime@@PEBDAEAH@Z"(ptr noundef %runtime, ptr noundef %format, ptr noundef nonnull align 4 dereferenceable(4) %args) #0 {
entry:
  %args.addr = alloca ptr, align 8
  %format.addr = alloca ptr, align 8
  %runtime.addr = alloca ptr, align 8
  store ptr %args, ptr %args.addr, align 8
  store ptr %format, ptr %format.addr, align 8
  store ptr %runtime, ptr %runtime.addr, align 8
  %0 = load ptr, ptr %runtime.addr, align 8
  %host_printf = getelementptr inbounds %struct.LLVMRuntime, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %host_printf, align 8
  %2 = load ptr, ptr %args.addr, align 8
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr %format.addr, align 8
  call void (ptr, ...) %1(ptr noundef %4, i32 noundef %3)
  ret void
}

; Function Attrs: alwaysinline noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal void @cpu_parallel_range_for_task(ptr noundef %range_context, i32 noundef %thread_id, i32 noundef %task_id) #0 {
entry:
  %task_id.addr = alloca i32, align 4
  %thread_id.addr = alloca i32, align 4
  %range_context.addr = alloca ptr, align 8
  %ctx = alloca %struct.range_task_helper_context, align 8
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %tls_ptr = alloca ptr, align 8
  %this_thread_context = alloca %struct.RuntimeContext, align 8
  %block_start = alloca i32, align 4
  %block_end = alloca i32, align 4
  %ref.tmp = alloca i32, align 4
  %i = alloca i32, align 4
  %block_start10 = alloca i32, align 4
  %block_end14 = alloca i32, align 4
  %ref.tmp15 = alloca i32, align 4
  %i20 = alloca i32, align 4
  store i32 %task_id, ptr %task_id.addr, align 4
  store i32 %thread_id, ptr %thread_id.addr, align 4
  store ptr %range_context, ptr %range_context.addr, align 8
  %0 = load ptr, ptr %range_context.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ctx, ptr align 8 %0, i64 56, i1 false)
  %tls_size = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 4
  %1 = load i64, ptr %tls_size, align 8
  %2 = call ptr @llvm.stacksave()
  store ptr %2, ptr %saved_stack, align 8
  %vla = alloca i8, i64 %1, align 8
  store i64 %1, ptr %__vla_expr0, align 8
  %arrayidx = getelementptr inbounds i8, ptr %vla, i64 0
  store ptr %arrayidx, ptr %tls_ptr, align 8
  %prologue = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 1
  %3 = load ptr, ptr %prologue, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %prologue1 = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 1
  %4 = load ptr, ptr %prologue1, align 8
  %5 = load ptr, ptr %tls_ptr, align 8
  %context = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 0
  %6 = load ptr, ptr %context, align 8
  call void %4(ptr noundef %6, ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %context2 = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 0
  %7 = load ptr, ptr %context2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %this_thread_context, ptr align 8 %7, i64 3224, i1 false)
  %8 = load i32, ptr %thread_id.addr, align 4
  %cpu_thread_id = getelementptr inbounds %struct.RuntimeContext, ptr %this_thread_context, i32 0, i32 4
  store i32 %8, ptr %cpu_thread_id, align 8
  %step = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 8
  %9 = load i32, ptr %step, align 4
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %begin = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 5
  %10 = load i32, ptr %begin, align 8
  %11 = load i32, ptr %task_id.addr, align 4
  %block_size = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 7
  %12 = load i32, ptr %block_size, align 8
  %mul = mul nsw i32 %11, %12
  %add = add nsw i32 %10, %mul
  store i32 %add, ptr %block_start, align 4
  %end = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 6
  %13 = load i32, ptr %block_start, align 4
  %block_size4 = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 7
  %14 = load i32, ptr %block_size4, align 8
  %add5 = add nsw i32 %13, %14
  store i32 %add5, ptr %ref.tmp, align 4
  %call = call noundef nonnull align 4 dereferenceable(4) ptr @"??$min@H@std@@YAAEBHAEBH0@Z"(ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp, ptr noundef nonnull align 4 dereferenceable(4) %end) #5
  %15 = load i32, ptr %call, align 4
  store i32 %15, ptr %block_end, align 4
  %16 = load i32, ptr %block_start, align 4
  store i32 %16, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %17 = load i32, ptr %i, align 4
  %18 = load i32, ptr %block_end, align 4
  %cmp6 = icmp slt i32 %17, %18
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %body = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 2
  %19 = load ptr, ptr %body, align 8
  %20 = load i32, ptr %i, align 4
  %21 = load ptr, ptr %tls_ptr, align 8
  call void %19(ptr noundef %this_thread_context, ptr noundef %21, i32 noundef %20)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, ptr %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %if.end29

if.else:                                          ; preds = %if.end
  %step7 = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 8
  %23 = load i32, ptr %step7, align 4
  %cmp8 = icmp eq i32 %23, -1
  br i1 %cmp8, label %if.then9, label %if.end28

if.then9:                                         ; preds = %if.else
  %end11 = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 6
  %24 = load i32, ptr %end11, align 4
  %25 = load i32, ptr %task_id.addr, align 4
  %block_size12 = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 7
  %26 = load i32, ptr %block_size12, align 8
  %mul13 = mul nsw i32 %25, %26
  %sub = sub nsw i32 %24, %mul13
  store i32 %sub, ptr %block_start10, align 4
  %27 = load i32, ptr %block_start10, align 4
  %block_size16 = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 7
  %28 = load i32, ptr %block_size16, align 8
  %mul17 = mul nsw i32 %27, %28
  store i32 %mul17, ptr %ref.tmp15, align 4
  %begin18 = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 5
  %call19 = call noundef nonnull align 4 dereferenceable(4) ptr @"??$max@H@std@@YAAEBHAEBH0@Z"(ptr noundef nonnull align 4 dereferenceable(4) %begin18, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp15) #5
  %29 = load i32, ptr %call19, align 4
  store i32 %29, ptr %block_end14, align 4
  %30 = load i32, ptr %block_start10, align 4
  %sub21 = sub nsw i32 %30, 1
  store i32 %sub21, ptr %i20, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc26, %if.then9
  %31 = load i32, ptr %i20, align 4
  %32 = load i32, ptr %block_end14, align 4
  %cmp23 = icmp sge i32 %31, %32
  br i1 %cmp23, label %for.body24, label %for.end27

for.body24:                                       ; preds = %for.cond22
  %body25 = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 2
  %33 = load ptr, ptr %body25, align 8
  %34 = load i32, ptr %i20, align 4
  %35 = load ptr, ptr %tls_ptr, align 8
  call void %33(ptr noundef %this_thread_context, ptr noundef %35, i32 noundef %34)
  br label %for.inc26

for.inc26:                                        ; preds = %for.body24
  %36 = load i32, ptr %i20, align 4
  %dec = add nsw i32 %36, -1
  store i32 %dec, ptr %i20, align 4
  br label %for.cond22, !llvm.loop !11

for.end27:                                        ; preds = %for.cond22
  br label %if.end28

if.end28:                                         ; preds = %for.end27, %if.else
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %for.end
  %epilogue = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 3
  %37 = load ptr, ptr %epilogue, align 8
  %tobool30 = icmp ne ptr %37, null
  br i1 %tobool30, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end29
  %epilogue32 = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 3
  %38 = load ptr, ptr %epilogue32, align 8
  %39 = load ptr, ptr %tls_ptr, align 8
  %context33 = getelementptr inbounds %struct.range_task_helper_context, ptr %ctx, i32 0, i32 0
  %40 = load ptr, ptr %context33, align 8
  call void %38(ptr noundef %40, ptr noundef %39)
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end29
  %41 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore(ptr %41)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #4

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef nonnull align 4 dereferenceable(4) ptr @"??$min@H@std@@YAAEBHAEBH0@Z"(ptr noundef nonnull align 4 dereferenceable(4) %_Left, ptr noundef nonnull align 4 dereferenceable(4) %_Right) #0 {
entry:
  %_Right.addr = alloca ptr, align 8
  %_Left.addr = alloca ptr, align 8
  store ptr %_Right, ptr %_Right.addr, align 8
  store ptr %_Left, ptr %_Left.addr, align 8
  %0 = load ptr, ptr %_Right.addr, align 8
  %1 = load i32, ptr %0, align 4
  %2 = load ptr, ptr %_Left.addr, align 8
  %3 = load i32, ptr %2, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load ptr, ptr %_Right.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load ptr, ptr %_Left.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond-lvalue = phi ptr [ %4, %cond.true ], [ %5, %cond.false ]
  ret ptr %cond-lvalue
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef nonnull align 4 dereferenceable(4) ptr @"??$max@H@std@@YAAEBHAEBH0@Z"(ptr noundef nonnull align 4 dereferenceable(4) %_Left, ptr noundef nonnull align 4 dereferenceable(4) %_Right) #0 {
entry:
  %_Right.addr = alloca ptr, align 8
  %_Left.addr = alloca ptr, align 8
  store ptr %_Right, ptr %_Right.addr, align 8
  store ptr %_Left, ptr %_Left.addr, align 8
  %0 = load ptr, ptr %_Left.addr, align 8
  %1 = load i32, ptr %0, align 4
  %2 = load ptr, ptr %_Right.addr, align 8
  %3 = load i32, ptr %2, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load ptr, ptr %_Right.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load ptr, ptr %_Left.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond-lvalue = phi ptr [ %4, %cond.true ], [ %5, %cond.false ]
  ret ptr %cond-lvalue
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(ptr) #4

attributes #0 = { alwaysinline mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { alwaysinline noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

!llvm.linker.options = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.module.flags = !{!6, !7, !8}

!0 = !{!"/FAILIFMISMATCH:\22_MSC_VER=1900\22"}
!1 = !{!"/FAILIFMISMATCH:\22_ITERATOR_DEBUG_LEVEL=0\22"}
!2 = !{!"/FAILIFMISMATCH:\22RuntimeLibrary=MT_StaticRelease\22"}
!3 = !{!"/DEFAULTLIB:libcpmt.lib"}
!4 = !{!"/FAILIFMISMATCH:\22_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\22"}
!5 = !{!"clang version 15.0.0 (https://github.com/llvm/llvm-project.git 483eed9e1faaa59925386728d40c099a237205e4)"}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
