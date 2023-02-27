; ModuleID = 'kernel'
source_filename = "kernel"
target triple = "nvptx64-nvidia-cuda"

%struct.RuntimeContext.11 = type { ptr, [64 x i64], [64 x i64], [32 x [12 x i32]], i32, [64 x i8], [64 x i64], [64 x i8], ptr }
%struct.LLVMRuntime = type { i8, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [512 x ptr], [512 x i64], ptr, ptr, [1024 x ptr], [1024 x ptr], ptr, [1024 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, [2048 x i8], [32 x i64], i32, i64, ptr, i32, i32, i64, ptr }

define void @update_force_c80_0_kernel_0_serial(ptr byval(%struct.RuntimeContext.11) %context) {
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

define void @update_force_c80_0_kernel_1_range_for(ptr byval(%struct.RuntimeContext.11) %context) {
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
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  br label %entry

final:                                            ; preds = %after_for
  ret void

entry:                                            ; preds = %allocs
  br label %function_body

function_body:                                    ; preds = %entry
  store i32 %2, ptr %3, align 4
  %15 = load i32, ptr %3, align 4
  %16 = call i64 @RuntimeContext_get_args(ptr %0, i32 5)
  %17 = inttoptr i64 %16 to ptr
  %18 = getelementptr float, ptr %17, i32 0
  %19 = load float, ptr %18, align 4
  %20 = getelementptr float, ptr %17, i32 1
  %21 = load float, ptr %20, align 4
  %22 = getelementptr float, ptr %17, i32 2
  %23 = load float, ptr %22, align 4
  %24 = call i64 @RuntimeContext_get_args(ptr %0, i32 4)
  %25 = inttoptr i64 %24 to ptr
  %26 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 4, i32 0)
  %27 = mul i32 0, %26
  %28 = add i32 %27, %15
  %29 = mul i32 %28, 3
  %30 = add i32 %29, 0
  %31 = getelementptr float, ptr %25, i32 %30
  %32 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 4, i32 0)
  %33 = mul i32 0, %32
  %34 = add i32 %33, %15
  %35 = mul i32 %34, 3
  %36 = add i32 %35, 1
  %37 = getelementptr float, ptr %25, i32 %36
  %38 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 4, i32 0)
  %39 = mul i32 0, %38
  %40 = add i32 %39, %15
  %41 = mul i32 %40, 3
  %42 = add i32 %41, 2
  %43 = getelementptr float, ptr %25, i32 %42
  %44 = call i64 @RuntimeContext_get_args(ptr %0, i32 0)
  %45 = inttoptr i64 %44 to ptr
  %46 = call i64 @RuntimeContext_get_args(ptr %0, i32 3)
  %47 = inttoptr i64 %46 to ptr
  %48 = call i64 @RuntimeContext_get_args(ptr %0, i32 2)
  %49 = inttoptr i64 %48 to ptr
  %50 = call i64 @RuntimeContext_get_args(ptr %0, i32 1)
  %51 = inttoptr i64 %50 to ptr
  %52 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %53 = mul i32 0, %52
  %54 = add i32 %53, %15
  %55 = mul i32 %54, 3
  %56 = add i32 %55, 0
  %57 = getelementptr float, ptr %45, i32 %56
  %58 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %59 = mul i32 0, %58
  %60 = add i32 %59, %15
  %61 = mul i32 %60, 3
  %62 = add i32 %61, 1
  %63 = getelementptr float, ptr %45, i32 %62
  %64 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %65 = mul i32 0, %64
  %66 = add i32 %65, %15
  %67 = mul i32 %66, 3
  %68 = add i32 %67, 2
  %69 = getelementptr float, ptr %45, i32 %68
  %70 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 3, i32 0)
  %71 = mul i32 0, %70
  %72 = add i32 %71, %15
  %73 = getelementptr float, ptr %47, i32 %72
  %74 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 2, i32 0)
  %75 = mul i32 0, %74
  %76 = add i32 %75, %15
  %77 = getelementptr float, ptr %49, i32 %76
  %78 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 1, i32 0)
  %79 = mul i32 0, %78
  %80 = add i32 %79, %15
  %81 = mul i32 %80, 3
  %82 = add i32 %81, 0
  %83 = getelementptr float, ptr %51, i32 %82
  %84 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 1, i32 0)
  %85 = mul i32 0, %84
  %86 = add i32 %85, %15
  %87 = mul i32 %86, 3
  %88 = add i32 %87, 1
  %89 = getelementptr float, ptr %51, i32 %88
  %90 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 1, i32 0)
  %91 = mul i32 0, %90
  %92 = add i32 %91, %15
  %93 = mul i32 %92, 3
  %94 = add i32 %93, 2
  %95 = getelementptr float, ptr %51, i32 %94
  %96 = call ptr @RuntimeContext_get_runtime(ptr %0)
  %97 = call ptr @get_temporary_pointer(ptr %96, i64 0)
  %98 = load i32, ptr %97, align 4
  store float 0.000000e+00, ptr %4, align 4
  store float %19, ptr %4, align 4
  store float 0.000000e+00, ptr %5, align 4
  store float %21, ptr %5, align 4
  store float 0.000000e+00, ptr %6, align 4
  store float %23, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %for_loop_test

for_loop_body:                                    ; preds = %for_loop_test
  %99 = load i32, ptr %7, align 4
  %100 = load float, ptr %57, align 4
  %101 = load float, ptr %63, align 4
  %102 = load float, ptr %69, align 4
  %103 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %104 = mul i32 0, %103
  %105 = add i32 %104, %99
  %106 = mul i32 %105, 3
  %107 = add i32 %106, 0
  %108 = getelementptr float, ptr %45, i32 %107
  %109 = load float, ptr %108, align 4
  %110 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %111 = mul i32 0, %110
  %112 = add i32 %111, %99
  %113 = mul i32 %112, 3
  %114 = add i32 %113, 1
  %115 = getelementptr float, ptr %45, i32 %114
  %116 = load float, ptr %115, align 4
  %117 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %118 = mul i32 0, %117
  %119 = add i32 %118, %99
  %120 = mul i32 %119, 3
  %121 = add i32 %120, 2
  %122 = getelementptr float, ptr %45, i32 %121
  %123 = load float, ptr %122, align 4
  %124 = fsub float %100, %109
  %125 = fsub float %101, %116
  %126 = fsub float %102, %123
  %127 = fmul float %124, %124
  %128 = fmul float %125, %125
  %129 = fmul float %126, %126
  %130 = fadd float %127, %128
  %131 = fadd float %130, %129
  %132 = call float @__nv_sqrtf(float %131)
  store float 0.000000e+00, ptr %8, align 4
  store float 0.000000e+00, ptr %9, align 4
  store float 0.000000e+00, ptr %10, align 4
  %133 = fcmp oeq float %132, 0.000000e+00
  %134 = sext i1 %133 to i32
  %135 = and i32 %134, 1
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %true_block, label %false_block

for_loop_inc:                                     ; preds = %after_if12
  %137 = load i32, ptr %7, align 4
  %138 = add i32 %137, 1
  store i32 %138, ptr %7, align 4
  br label %for_loop_test

after_for:                                        ; preds = %for_loop_test
  %139 = load float, ptr %6, align 4
  store float %139, ptr %43, align 4
  %140 = load float, ptr %5, align 4
  store float %140, ptr %37, align 4
  %141 = load float, ptr %4, align 4
  store float %141, ptr %31, align 4
  br label %final

for_loop_test:                                    ; preds = %for_loop_inc, %function_body
  %142 = load i32, ptr %7, align 4
  %143 = icmp slt i32 %142, %98
  br i1 %143, label %for_loop_body, label %after_for

true_block:                                       ; preds = %for_loop_body
  br label %after_if

false_block:                                      ; preds = %for_loop_body
  %144 = fcmp ole float %132, 0x3FA47AE140000000
  %145 = sext i1 %144 to i32
  %146 = and i32 %145, 1
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %true_block1, label %false_block2

after_if:                                         ; preds = %after_if3, %true_block
  %148 = load float, ptr %73, align 4
  %149 = load float, ptr %77, align 4
  %150 = fmul float %149, %149
  %151 = fdiv float %148, %150
  %152 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 3, i32 0)
  %153 = mul i32 0, %152
  %154 = add i32 %153, %99
  %155 = getelementptr float, ptr %47, i32 %154
  %156 = load float, ptr %155, align 4
  %157 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 2, i32 0)
  %158 = mul i32 0, %157
  %159 = add i32 %158, %99
  %160 = getelementptr float, ptr %49, i32 %159
  %161 = load float, ptr %160, align 4
  %162 = fmul float %161, %161
  %163 = fdiv float %156, %162
  %164 = fadd float %151, %163
  %165 = fmul float %164, 0xBF7A36E2E0000000
  %166 = load float, ptr %8, align 4
  %167 = load float, ptr %9, align 4
  %168 = load float, ptr %10, align 4
  %169 = fmul float %165, %166
  %170 = fmul float %165, %167
  %171 = fmul float %165, %168
  %172 = load float, ptr %4, align 4
  %173 = fadd float %172, %169
  %174 = load float, ptr %5, align 4
  %175 = fadd float %174, %170
  %176 = load float, ptr %6, align 4
  %177 = fadd float %176, %171
  %178 = load float, ptr %83, align 4
  %179 = load float, ptr %89, align 4
  %180 = load float, ptr %95, align 4
  %181 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 1, i32 0)
  %182 = mul i32 0, %181
  %183 = add i32 %182, %99
  %184 = mul i32 %183, 3
  %185 = add i32 %184, 0
  %186 = getelementptr float, ptr %51, i32 %185
  %187 = load float, ptr %186, align 4
  %188 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 1, i32 0)
  %189 = mul i32 0, %188
  %190 = add i32 %189, %99
  %191 = mul i32 %190, 3
  %192 = add i32 %191, 1
  %193 = getelementptr float, ptr %51, i32 %192
  %194 = load float, ptr %193, align 4
  %195 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 1, i32 0)
  %196 = mul i32 0, %195
  %197 = add i32 %196, %99
  %198 = mul i32 %197, 3
  %199 = add i32 %198, 2
  %200 = getelementptr float, ptr %51, i32 %199
  %201 = load float, ptr %200, align 4
  %202 = fsub float %178, %187
  %203 = fsub float %179, %194
  %204 = fsub float %180, %201
  %205 = fmul float %202, %124
  %206 = fmul float %203, %125
  %207 = fmul float %204, %126
  %208 = fadd float %205, %206
  %209 = fadd float %208, %207
  store float 0.000000e+00, ptr %11, align 4
  store float 0.000000e+00, ptr %12, align 4
  store float 0.000000e+00, ptr %13, align 4
  %210 = icmp ne i32 %135, 0
  br i1 %210, label %true_block4, label %false_block5

true_block1:                                      ; preds = %false_block
  %211 = fsub float 0x3FA47AE140000000, %132
  %212 = fmul float %211, 0xC1EA0E1B60000000
  %213 = fmul float %212, %211
  %214 = fdiv float %124, %132
  %215 = fdiv float %125, %132
  %216 = fdiv float %126, %132
  %217 = fmul float %213, %214
  %218 = fmul float %213, %215
  %219 = fmul float %213, %216
  store float %217, ptr %8, align 4
  store float %218, ptr %9, align 4
  store float %219, ptr %10, align 4
  br label %after_if3

false_block2:                                     ; preds = %false_block
  br label %after_if3

after_if3:                                        ; preds = %false_block2, %true_block1
  br label %after_if

true_block4:                                      ; preds = %after_if
  br label %after_if6

false_block5:                                     ; preds = %after_if
  %220 = fcmp ole float %132, 0x3FA47AE140000000
  %221 = sext i1 %220 to i32
  %222 = and i32 %221, 1
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %true_block7, label %false_block8

after_if6:                                        ; preds = %after_if9, %true_block4
  %224 = fmul float %209, 0x3F5F751040000000
  %225 = fadd float %132, 0x3EF0C6F7A0000000
  %226 = fdiv float %224, %225
  %227 = fdiv float %226, %161
  %228 = load float, ptr %11, align 4
  %229 = load float, ptr %12, align 4
  %230 = load float, ptr %13, align 4
  %231 = fmul float %227, %228
  %232 = fmul float %227, %229
  %233 = fmul float %227, %230
  %234 = fadd float %173, %231
  %235 = fadd float %175, %232
  %236 = fadd float %177, %233
  %237 = fcmp ogt float %131, 0x3F3A36E2E0000000
  %238 = sext i1 %237 to i32
  %239 = and i32 %238, 1
  store float 0.000000e+00, ptr %14, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %true_block10, label %false_block11

true_block7:                                      ; preds = %false_block5
  %241 = fsub float 0x3FA47AE140000000, %132
  %242 = fmul float %241, 0xC1EA0E1B60000000
  %243 = fmul float %242, %241
  %244 = fdiv float %124, %132
  %245 = fdiv float %125, %132
  %246 = fdiv float %126, %132
  %247 = fmul float %243, %244
  %248 = fmul float %243, %245
  %249 = fmul float %243, %246
  store float %247, ptr %11, align 4
  store float %248, ptr %12, align 4
  store float %249, ptr %13, align 4
  br label %after_if9

false_block8:                                     ; preds = %false_block5
  br label %after_if9

after_if9:                                        ; preds = %false_block8, %true_block7
  br label %after_if6

true_block10:                                     ; preds = %after_if6
  %250 = fcmp ole float %132, 0x3FA47AE140000000
  %251 = sext i1 %250 to i32
  %252 = and i32 %251, 1
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %true_block13, label %false_block14

false_block11:                                    ; preds = %after_if6
  %254 = fmul float %124, 0xC049D16FC0000000
  %255 = fmul float %125, 0xC049D16FC0000000
  %256 = fmul float %126, 0xC049D16FC0000000
  %257 = fadd float %234, %254
  store float %257, ptr %4, align 4
  %258 = fadd float %235, %255
  store float %258, ptr %5, align 4
  %259 = fadd float %236, %256
  store float %259, ptr %6, align 4
  br label %after_if12

after_if12:                                       ; preds = %after_if15, %false_block11
  br label %for_loop_inc

true_block13:                                     ; preds = %true_block10
  %260 = fmul float %132, %132
  %261 = fsub float 0x3F5A36E2E0000000, %260
  %262 = fmul float %261, 0x4295BDF8A0000000
  %263 = fmul float %262, %261
  %264 = fmul float %263, %261
  store float %264, ptr %14, align 4
  br label %after_if15

false_block14:                                    ; preds = %true_block10
  br label %after_if15

after_if15:                                       ; preds = %false_block14, %true_block13
  %265 = fmul float %124, 0xBF747AE140000000
  %266 = fmul float %125, 0xBF747AE140000000
  %267 = fmul float %126, 0xBF747AE140000000
  %268 = load float, ptr %14, align 4
  %269 = fmul float %265, %268
  %270 = fmul float %266, %268
  %271 = fmul float %267, %268
  %272 = fadd float %234, %269
  store float %272, ptr %4, align 4
  %273 = fadd float %235, %270
  store float %273, ptr %5, align 4
  %274 = fadd float %236, %271
  store float %274, ptr %6, align 4
  br label %after_if12
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal i64 @RuntimeContext_get_args(ptr noundef %s, i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %args = getelementptr inbounds %struct.RuntimeContext.11, ptr %0, i32 0, i32 1
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
  %runtime = getelementptr inbounds %struct.RuntimeContext.11, ptr %0, i32 0, i32 0
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
  %extra_args = getelementptr inbounds %struct.RuntimeContext.11, ptr %0, i32 0, i32 3
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

!0 = !{ptr @update_force_c80_0_kernel_0_serial, !"kernel", i32 1}
!1 = !{ptr @update_force_c80_0_kernel_0_serial, !"maxntidx", i32 1}
!2 = !{ptr @update_force_c80_0_kernel_0_serial, !"minctasm", i32 2}
!3 = !{ptr @update_force_c80_0_kernel_1_range_for, !"kernel", i32 1}
!4 = !{ptr @update_force_c80_0_kernel_1_range_for, !"maxntidx", i32 128}
!5 = !{ptr @update_force_c80_0_kernel_1_range_for, !"minctasm", i32 2}
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
