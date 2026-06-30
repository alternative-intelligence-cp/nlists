; ModuleID = 'tests/benchmark_nlists.npk'
source_filename = "tests/benchmark_nlists.npk"

%Numeric_vtable_t = type {}
%Display_vtable_t = type {}

@LIST_TAG_EMPTY = global i64 0
@LIST_TAG_INT64 = global i64 1
@LIST_TAG_FLOAT64 = global i64 2
@LIST_TAG_PTR = global i64 3
@LIST_TAG_BYTES = global i64 4
@Numeric_vtable_int8 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_int16 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_int32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_int64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_uint8 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_uint16 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_uint32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_uint64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tbb8 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tbb16 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tbb32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tbb64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_frac8 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_frac16 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_frac32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_frac64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tfp32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tfp64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_fix256 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_flt32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_flt64 = internal constant %Numeric_vtable_t zeroinitializer
@Display_vtable_int8 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int16 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int128 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int256 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int512 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int1024 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int2048 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int4096 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint8 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint16 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint128 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint256 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint512 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint1024 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint2048 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint4096 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tbb8 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tbb16 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tbb32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tbb64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_frac8 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_frac16 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_frac32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_frac64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tfp32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tfp64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_fix256 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_flt32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_flt64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_trit = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tryte = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_nit = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_nyte = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_bool = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_string = internal constant %Display_vtable_t zeroinitializer

define linkonce_odr { i8, ptr, i8 } @mem.store64(i64 %addr, i64 %val) {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %ptr = alloca ptr, align 8
  %addr1 = load i64, ptr %addr.addr, align 4
  %addr2 = load i64, ptr %addr.addr, align 4
  %cast.inttoptr = inttoptr i64 %addr2 to ptr
  store ptr %cast.inttoptr, ptr %ptr, align 8
  %val3 = load i64, ptr %val.addr, align 4
  %ptr.ptr = load ptr, ptr %ptr, align 8
  %arrayidx = getelementptr i64, ptr %ptr.ptr, i64 0
  store i64 %val3, ptr %arrayidx, align 4
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i64, ptr, i8 } @mem.load64(i64 %addr) {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 4
  %ptr = alloca ptr, align 8
  %addr1 = load i64, ptr %addr.addr, align 4
  %addr2 = load i64, ptr %addr.addr, align 4
  %cast.inttoptr = inttoptr i64 %addr2 to ptr
  store ptr %cast.inttoptr, ptr %ptr, align 8
  %ptr.ptr = load ptr, ptr %ptr, align 8
  %arrayidx = getelementptr i64, ptr %ptr.ptr, i64 0
  %elem = load i64, ptr %arrayidx, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %elem, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i8, ptr, i8 } @mem.store32(i64 %addr, i32 %val) {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 4
  %val.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  %ptr = alloca ptr, align 8
  %addr1 = load i64, ptr %addr.addr, align 4
  %addr2 = load i64, ptr %addr.addr, align 4
  %cast.inttoptr = inttoptr i64 %addr2 to ptr
  store ptr %cast.inttoptr, ptr %ptr, align 8
  %val3 = load i32, ptr %val.addr, align 4
  %ptr.ptr = load ptr, ptr %ptr, align 8
  %arrayidx = getelementptr i32, ptr %ptr.ptr, i64 0
  store i32 %val3, ptr %arrayidx, align 4
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i32, ptr, i8 } @mem.load32(i64 %addr) {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 4
  %ptr = alloca ptr, align 8
  %addr1 = load i64, ptr %addr.addr, align 4
  %addr2 = load i64, ptr %addr.addr, align 4
  %cast.inttoptr = inttoptr i64 %addr2 to ptr
  store ptr %cast.inttoptr, ptr %ptr, align 8
  %ptr.ptr = load ptr, ptr %ptr, align 8
  %arrayidx = getelementptr i64, ptr %ptr.ptr, i64 0
  %elem = load i64, ptr %arrayidx, align 4
  %val_trunc = trunc i64 %elem to i32
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %val_trunc, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { i8, ptr, i8 } @mem.store8(i64 %addr, i8 %val) {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 4
  %val.addr = alloca i8, align 1
  store i8 %val, ptr %val.addr, align 1
  %ptr = alloca ptr, align 8
  %addr1 = load i64, ptr %addr.addr, align 4
  %addr2 = load i64, ptr %addr.addr, align 4
  %cast.inttoptr = inttoptr i64 %addr2 to ptr
  store ptr %cast.inttoptr, ptr %ptr, align 8
  %val3 = load i8, ptr %val.addr, align 1
  %ptr.ptr = load ptr, ptr %ptr, align 8
  %arrayidx = getelementptr i8, ptr %ptr.ptr, i64 0
  store i8 %val3, ptr %arrayidx, align 1
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i8, ptr, i8 } @mem.load8(i64 %addr) {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 4
  %ptr = alloca ptr, align 8
  %addr1 = load i64, ptr %addr.addr, align 4
  %addr2 = load i64, ptr %addr.addr, align 4
  %cast.inttoptr = inttoptr i64 %addr2 to ptr
  store ptr %cast.inttoptr, ptr %ptr, align 8
  %ptr.ptr = load ptr, ptr %ptr, align 8
  %arrayidx = getelementptr i64, ptr %ptr.ptr, i64 0
  %elem = load i64, ptr %arrayidx, align 4
  %val_trunc = trunc i64 %elem to i8
  %result.val = insertvalue { i8, ptr, i8 } undef, i8 %val_trunc, 0
  %result.err = insertvalue { i8, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i8, ptr, i8 } %result.err, i8 0, 2
  ret { i8, ptr, i8 } %result.is_error
}

define linkonce_odr i32 @__mem_init() {
entry:
  ret i32 0
}

define linkonce_odr { i64, ptr, i8 } @allocator.NodeAllocator_create(i64 %node_size) {
entry:
  %node_size.addr = alloca i64, align 8
  store i64 %node_size, ptr %node_size.addr, align 4
  %blk = call ptr @npk_alloc(i64 8)
  %wild_ptr = call ptr @npk_alloc(i64 64)
  store ptr %wild_ptr, ptr %blk, align 8
  %blk1 = load ptr, ptr %blk, align 8
  %eqtmp = icmp eq ptr %blk1, null
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i64, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %handle = alloca i64, align 8
  %blk2 = load ptr, ptr %blk, align 8
  %blk3 = load ptr, ptr %blk, align 8
  %cast.ptrtoint = ptrtoint ptr %blk3 to i64
  %andtmp = and i64 %cast.ptrtoint, 281474976710655
  %andtmp4 = and i64 %andtmp, 281474976710655
  store i64 %andtmp4, ptr %handle, align 4
  %node_size5 = load i64, ptr %node_size.addr, align 4
  %lttmp = icmp slt i64 %node_size5, 8
  %ifcond6 = icmp ne i1 %lttmp, false
  br i1 %ifcond6, label %then7, label %ifcont8

then7:                                            ; preds = %ifcont
  store i64 8, ptr %node_size.addr, align 4
  br label %ifcont8

ifcont8:                                          ; preds = %then7, %ifcont
  %handle9 = load i64, ptr %handle, align 4
  %addtmp = add i64 %handle9, 0
  %node_size10 = load i64, ptr %node_size.addr, align 4
  %calltmp = call { i8, ptr, i8 } @mem.store64(i64 %addtmp, i64 %node_size10)
  %raw.value = extractvalue { i8, ptr, i8 } %calltmp, 0
  %handle11 = load i64, ptr %handle, align 4
  %addtmp12 = add i64 %handle11, 8
  %calltmp13 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp12, i64 0)
  %raw.value14 = extractvalue { i8, ptr, i8 } %calltmp13, 0
  %handle15 = load i64, ptr %handle, align 4
  %addtmp16 = add i64 %handle15, 16
  %calltmp17 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp16, i64 0)
  %raw.value18 = extractvalue { i8, ptr, i8 } %calltmp17, 0
  %handle19 = load i64, ptr %handle, align 4
  %addtmp20 = add i64 %handle19, 24
  %calltmp21 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp20, i64 32768)
  %raw.value22 = extractvalue { i8, ptr, i8 } %calltmp21, 0
  %handle23 = load i64, ptr %handle, align 4
  %addtmp24 = add i64 %handle23, 32
  %calltmp25 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp24, i64 0)
  %raw.value26 = extractvalue { i8, ptr, i8 } %calltmp25, 0
  %handle27 = load i64, ptr %handle, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %handle27, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i8, ptr, i8 } @allocator.NodeAllocator_destroy(i64 %handle) {
entry:
  %handle.addr = alloca i64, align 8
  store i64 %handle, ptr %handle.addr, align 4
  %handle1 = load i64, ptr %handle.addr, align 4
  %eqtmp = icmp eq i64 %handle1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %head_block = alloca i64, align 8
  %handle2 = load i64, ptr %handle.addr, align 4
  %addtmp = add i64 %handle2, 8
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %head_block, align 4
  %block_size = alloca i64, align 8
  %handle3 = load i64, ptr %handle.addr, align 4
  %addtmp4 = add i64 %handle3, 24
  %calltmp5 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp4)
  %raw.value6 = extractvalue { i64, ptr, i8 } %calltmp5, 0
  store i64 %raw.value6, ptr %block_size, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %ifcont
  %head_block7 = load i64, ptr %head_block, align 4
  %netmp = icmp ne i64 %head_block7, 0
  %whilecond8 = icmp ne i1 %netmp, false
  br i1 %whilecond8, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %next_block = alloca i64, align 8
  %head_block9 = load i64, ptr %head_block, align 4
  %calltmp10 = call { i64, ptr, i8 } @mem.load64(i64 %head_block9)
  %raw.value11 = extractvalue { i64, ptr, i8 } %calltmp10, 0
  store i64 %raw.value11, ptr %next_block, align 4
  %head_block12 = load i64, ptr %head_block, align 4
  %cast.inttoptr = inttoptr i64 %head_block12 to ptr
  call void @npk_free(ptr %cast.inttoptr)
  %next_block13 = load i64, ptr %next_block, align 4
  store i64 %next_block13, ptr %head_block, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %handle14 = load i64, ptr %handle.addr, align 4
  %cast.inttoptr15 = inttoptr i64 %handle14 to ptr
  call void @npk_free(ptr %cast.inttoptr15)
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i64, ptr, i8 } @allocator.NodeAllocator_alloc(i64 %handle) {
entry:
  %handle.addr = alloca i64, align 8
  store i64 %handle, ptr %handle.addr, align 4
  %free_head = alloca i64, align 8
  %handle1 = load i64, ptr %handle.addr, align 4
  %addtmp = add i64 %handle1, 32
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %free_head, align 4
  %node_size = alloca i64, align 8
  %handle2 = load i64, ptr %handle.addr, align 4
  %addtmp3 = add i64 %handle2, 0
  %calltmp4 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp3)
  %raw.value5 = extractvalue { i64, ptr, i8 } %calltmp4, 0
  store i64 %raw.value5, ptr %node_size, align 4
  %free_head6 = load i64, ptr %free_head, align 4
  %netmp = icmp ne i64 %free_head6, 0
  %ifcond = icmp ne i1 %netmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %next_free = alloca i64, align 8
  %free_head7 = load i64, ptr %free_head, align 4
  %calltmp8 = call { i64, ptr, i8 } @mem.load64(i64 %free_head7)
  %raw.value9 = extractvalue { i64, ptr, i8 } %calltmp8, 0
  store i64 %raw.value9, ptr %next_free, align 4
  %handle10 = load i64, ptr %handle.addr, align 4
  %addtmp11 = add i64 %handle10, 32
  %next_free12 = load i64, ptr %next_free, align 4
  %calltmp13 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp11, i64 %next_free12)
  %raw.value14 = extractvalue { i8, ptr, i8 } %calltmp13, 0
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %then
  %i15 = load i64, ptr %i, align 4
  %node_size16 = load i64, ptr %node_size, align 4
  %lttmp = icmp slt i64 %i15, %node_size16
  %whilecond17 = icmp ne i1 %lttmp, false
  br i1 %whilecond17, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %free_head18 = load i64, ptr %free_head, align 4
  %i19 = load i64, ptr %i, align 4
  %addtmp20 = add i64 %free_head18, %i19
  %calltmp21 = call { i8, ptr, i8 } @mem.store8(i64 %addtmp20, i8 0)
  %raw.value22 = extractvalue { i8, ptr, i8 } %calltmp21, 0
  %i23 = load i64, ptr %i, align 4
  %addtmp24 = add i64 %i23, 1
  store i64 %addtmp24, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %free_head25 = load i64, ptr %free_head, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %free_head25, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error

ifcont:                                           ; preds = %entry
  %block_size = alloca i64, align 8
  %handle26 = load i64, ptr %handle.addr, align 4
  %addtmp27 = add i64 %handle26, 24
  %calltmp28 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp27)
  %raw.value29 = extractvalue { i64, ptr, i8 } %calltmp28, 0
  store i64 %raw.value29, ptr %block_size, align 4
  %head_block = alloca i64, align 8
  %handle30 = load i64, ptr %handle.addr, align 4
  %addtmp31 = add i64 %handle30, 8
  %calltmp32 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp31)
  %raw.value33 = extractvalue { i64, ptr, i8 } %calltmp32, 0
  store i64 %raw.value33, ptr %head_block, align 4
  %offset = alloca i64, align 8
  %handle34 = load i64, ptr %handle.addr, align 4
  %addtmp35 = add i64 %handle34, 16
  %calltmp36 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp35)
  %raw.value37 = extractvalue { i64, ptr, i8 } %calltmp36, 0
  store i64 %raw.value37, ptr %offset, align 4
  %head_block38 = load i64, ptr %head_block, align 4
  %eqtmp = icmp eq i64 %head_block38, 0
  %ifcond39 = icmp ne i1 %eqtmp, false
  br i1 %ifcond39, label %then40, label %else

then40:                                           ; preds = %ifcont
  %blk = call ptr @npk_alloc(i64 8)
  %block_size41 = load i64, ptr %block_size, align 4
  %wild_ptr = call ptr @npk_alloc(i64 %block_size41)
  store ptr %wild_ptr, ptr %blk, align 8
  %blk42 = load ptr, ptr %blk, align 8
  %eqtmp43 = icmp eq ptr %blk42, null
  %ifcond44 = icmp ne i1 %eqtmp43, false
  br i1 %ifcond44, label %then45, label %ifcont46

then45:                                           ; preds = %then40
  ret { i64, ptr, i8 } zeroinitializer

ifcont46:                                         ; preds = %then40
  %new_block = alloca i64, align 8
  %blk47 = load ptr, ptr %blk, align 8
  %blk48 = load ptr, ptr %blk, align 8
  %cast.ptrtoint = ptrtoint ptr %blk48 to i64
  %andtmp = and i64 %cast.ptrtoint, 281474976710655
  %andtmp49 = and i64 %andtmp, 281474976710655
  store i64 %andtmp49, ptr %new_block, align 4
  %new_block50 = load i64, ptr %new_block, align 4
  %calltmp51 = call { i8, ptr, i8 } @mem.store64(i64 %new_block50, i64 0)
  %raw.value52 = extractvalue { i8, ptr, i8 } %calltmp51, 0
  %handle53 = load i64, ptr %handle.addr, align 4
  %addtmp54 = add i64 %handle53, 8
  %new_block55 = load i64, ptr %new_block, align 4
  %calltmp56 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp54, i64 %new_block55)
  %raw.value57 = extractvalue { i8, ptr, i8 } %calltmp56, 0
  %new_block58 = load i64, ptr %new_block, align 4
  store i64 %new_block58, ptr %head_block, align 4
  store i64 8, ptr %offset, align 4
  %handle59 = load i64, ptr %handle.addr, align 4
  %addtmp60 = add i64 %handle59, 16
  %offset61 = load i64, ptr %offset, align 4
  %calltmp62 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp60, i64 %offset61)
  %raw.value63 = extractvalue { i8, ptr, i8 } %calltmp62, 0
  br label %ifcont100

else:                                             ; preds = %ifcont
  %offset64 = load i64, ptr %offset, align 4
  %node_size65 = load i64, ptr %node_size, align 4
  %addtmp66 = add i64 %offset64, %node_size65
  %block_size67 = load i64, ptr %block_size, align 4
  %gttmp = icmp sgt i64 %addtmp66, %block_size67
  %ifcond68 = icmp ne i1 %gttmp, false
  br i1 %ifcond68, label %then69, label %ifcont99

then69:                                           ; preds = %else
  %blk70 = call ptr @npk_alloc(i64 8)
  %block_size71 = load i64, ptr %block_size, align 4
  %wild_ptr72 = call ptr @npk_alloc(i64 %block_size71)
  store ptr %wild_ptr72, ptr %blk70, align 8
  %blk73 = load ptr, ptr %blk70, align 8
  %eqtmp74 = icmp eq ptr %blk73, null
  %ifcond75 = icmp ne i1 %eqtmp74, false
  br i1 %ifcond75, label %then76, label %ifcont77

then76:                                           ; preds = %then69
  ret { i64, ptr, i8 } zeroinitializer

ifcont77:                                         ; preds = %then69
  %new_block78 = alloca i64, align 8
  %blk79 = load ptr, ptr %blk70, align 8
  %blk80 = load ptr, ptr %blk70, align 8
  %cast.ptrtoint81 = ptrtoint ptr %blk80 to i64
  %andtmp82 = and i64 %cast.ptrtoint81, 281474976710655
  %andtmp83 = and i64 %andtmp82, 281474976710655
  store i64 %andtmp83, ptr %new_block78, align 4
  %new_block84 = load i64, ptr %new_block78, align 4
  %head_block85 = load i64, ptr %head_block, align 4
  %calltmp86 = call { i8, ptr, i8 } @mem.store64(i64 %new_block84, i64 %head_block85)
  %raw.value87 = extractvalue { i8, ptr, i8 } %calltmp86, 0
  %handle88 = load i64, ptr %handle.addr, align 4
  %addtmp89 = add i64 %handle88, 8
  %new_block90 = load i64, ptr %new_block78, align 4
  %calltmp91 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp89, i64 %new_block90)
  %raw.value92 = extractvalue { i8, ptr, i8 } %calltmp91, 0
  %new_block93 = load i64, ptr %new_block78, align 4
  store i64 %new_block93, ptr %head_block, align 4
  store i64 8, ptr %offset, align 4
  %handle94 = load i64, ptr %handle.addr, align 4
  %addtmp95 = add i64 %handle94, 16
  %offset96 = load i64, ptr %offset, align 4
  %calltmp97 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp95, i64 %offset96)
  %raw.value98 = extractvalue { i8, ptr, i8 } %calltmp97, 0
  br label %ifcont99

ifcont99:                                         ; preds = %ifcont77, %else
  br label %ifcont100

ifcont100:                                        ; preds = %ifcont99, %ifcont46
  %ptr = alloca i64, align 8
  %head_block101 = load i64, ptr %head_block, align 4
  %offset102 = load i64, ptr %offset, align 4
  %addtmp103 = add i64 %head_block101, %offset102
  store i64 %addtmp103, ptr %ptr, align 4
  %handle104 = load i64, ptr %handle.addr, align 4
  %addtmp105 = add i64 %handle104, 16
  %offset106 = load i64, ptr %offset, align 4
  %node_size107 = load i64, ptr %node_size, align 4
  %addtmp108 = add i64 %offset106, %node_size107
  %calltmp109 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp105, i64 %addtmp108)
  %raw.value110 = extractvalue { i8, ptr, i8 } %calltmp109, 0
  %j = alloca i64, align 8
  store i64 0, ptr %j, align 4
  br label %whilecond111

whilecond111:                                     ; preds = %whilebody116, %ifcont100
  %j112 = load i64, ptr %j, align 4
  %node_size113 = load i64, ptr %node_size, align 4
  %lttmp114 = icmp slt i64 %j112, %node_size113
  %whilecond115 = icmp ne i1 %lttmp114, false
  br i1 %whilecond115, label %whilebody116, label %afterwhile119

whilebody116:                                     ; preds = %whilecond111
  %j117 = load i64, ptr %j, align 4
  %addtmp118 = add i64 %j117, 1
  store i64 %addtmp118, ptr %j, align 4
  call void @npk_gc_safepoint()
  br label %whilecond111

afterwhile119:                                    ; preds = %whilecond111
  %ptr120 = load i64, ptr %ptr, align 4
  %result.val121 = insertvalue { i64, ptr, i8 } undef, i64 %ptr120, 0
  %result.err122 = insertvalue { i64, ptr, i8 } %result.val121, ptr null, 1
  %result.is_error123 = insertvalue { i64, ptr, i8 } %result.err122, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error123
}

define linkonce_odr { i8, ptr, i8 } @allocator.NodeAllocator_free(i64 %handle, i64 %ptr) {
entry:
  %handle.addr = alloca i64, align 8
  store i64 %handle, ptr %handle.addr, align 4
  %ptr.addr = alloca i64, align 8
  store i64 %ptr, ptr %ptr.addr, align 4
  %ptr1 = load i64, ptr %ptr.addr, align 4
  %eqtmp = icmp eq i64 %ptr1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %free_head = alloca i64, align 8
  %handle2 = load i64, ptr %handle.addr, align 4
  %addtmp = add i64 %handle2, 32
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %free_head, align 4
  %ptr3 = load i64, ptr %ptr.addr, align 4
  %free_head4 = load i64, ptr %free_head, align 4
  %calltmp5 = call { i8, ptr, i8 } @mem.store64(i64 %ptr3, i64 %free_head4)
  %raw.value6 = extractvalue { i8, ptr, i8 } %calltmp5, 0
  %handle7 = load i64, ptr %handle.addr, align 4
  %addtmp8 = add i64 %handle7, 32
  %ptr9 = load i64, ptr %ptr.addr, align 4
  %calltmp10 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp8, i64 %ptr9)
  %raw.value11 = extractvalue { i8, ptr, i8 } %calltmp10, 0
  ret { i8, ptr, i8 } zeroinitializer
}

declare ptr @npk_alloc(i64)

declare void @npk_free(ptr)

declare void @npk_gc_safepoint()

define linkonce_odr i32 @__allocator_init() {
entry:
  ret i32 0
}

define linkonce_odr i32 @__types_init() {
entry:
  ret i32 0
}

define linkonce_odr { i64, ptr, i8 } @singly.SList_create() {
entry:
  %header_ptr = call ptr @npk_alloc(i64 8)
  %wild_ptr = call ptr @npk_alloc(i64 32)
  store ptr %wild_ptr, ptr %header_ptr, align 8
  %header_ptr1 = load ptr, ptr %header_ptr, align 8
  %eqtmp = icmp eq ptr %header_ptr1, null
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i64, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %header = alloca i64, align 8
  %header_ptr2 = load ptr, ptr %header_ptr, align 8
  %header_ptr3 = load ptr, ptr %header_ptr, align 8
  %cast.ptrtoint = ptrtoint ptr %header_ptr3 to i64
  %andtmp = and i64 %cast.ptrtoint, 281474976710655
  store i64 %andtmp, ptr %header, align 4
  %allocator = alloca i64, align 8
  %calltmp = call { i64, ptr, i8 } @allocator.NodeAllocator_create(i64 16)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %allocator, align 4
  %allocator4 = load i64, ptr %allocator, align 4
  %eqtmp5 = icmp eq i64 %allocator4, 0
  %ifcond6 = icmp ne i1 %eqtmp5, false
  br i1 %ifcond6, label %then7, label %ifcont9

then7:                                            ; preds = %ifcont
  %header_ptr8 = load ptr, ptr %header_ptr, align 8
  call void @npk_free(ptr %header_ptr8)
  ret { i64, ptr, i8 } zeroinitializer

ifcont9:                                          ; preds = %ifcont
  %header10 = load i64, ptr %header, align 4
  %addtmp = add i64 %header10, 0
  %calltmp11 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp, i64 0)
  %raw.value12 = extractvalue { i8, ptr, i8 } %calltmp11, 0
  %header13 = load i64, ptr %header, align 4
  %addtmp14 = add i64 %header13, 8
  %calltmp15 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp14, i64 0)
  %raw.value16 = extractvalue { i8, ptr, i8 } %calltmp15, 0
  %header17 = load i64, ptr %header, align 4
  %addtmp18 = add i64 %header17, 16
  %calltmp19 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp18, i64 0)
  %raw.value20 = extractvalue { i8, ptr, i8 } %calltmp19, 0
  %header21 = load i64, ptr %header, align 4
  %addtmp22 = add i64 %header21, 24
  %allocator23 = load i64, ptr %allocator, align 4
  %calltmp24 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp22, i64 %allocator23)
  %raw.value25 = extractvalue { i8, ptr, i8 } %calltmp24, 0
  %header26 = load i64, ptr %header, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %header26, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i8, ptr, i8 } @singly.SList_destroy(i64 %header) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %allocator = alloca i64, align 8
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 24
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %allocator, align 4
  %allocator3 = load i64, ptr %allocator, align 4
  %calltmp4 = call { i8, ptr, i8 } @allocator.NodeAllocator_destroy(i64 %allocator3)
  %raw.value5 = extractvalue { i8, ptr, i8 } %calltmp4, 0
  %header6 = load i64, ptr %header.addr, align 4
  %cast.inttoptr = inttoptr i64 %header6 to ptr
  call void @npk_free(ptr %cast.inttoptr)
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i8, ptr, i8 } @singly.SList_push_front(i64 %header, i64 %val) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  %allocator = alloca i64, align 8
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 24
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %allocator, align 4
  %node = alloca i64, align 8
  %allocator3 = load i64, ptr %allocator, align 4
  %calltmp4 = call { i64, ptr, i8 } @allocator.NodeAllocator_alloc(i64 %allocator3)
  %raw.value5 = extractvalue { i64, ptr, i8 } %calltmp4, 0
  store i64 %raw.value5, ptr %node, align 4
  %node6 = load i64, ptr %node, align 4
  %eqtmp7 = icmp eq i64 %node6, 0
  %ifcond8 = icmp ne i1 %eqtmp7, false
  br i1 %ifcond8, label %then9, label %ifcont10

then9:                                            ; preds = %ifcont
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont10:                                         ; preds = %ifcont
  %head = alloca i64, align 8
  %header11 = load i64, ptr %header.addr, align 4
  %addtmp12 = add i64 %header11, 0
  %calltmp13 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp12)
  %raw.value14 = extractvalue { i64, ptr, i8 } %calltmp13, 0
  store i64 %raw.value14, ptr %head, align 4
  %node15 = load i64, ptr %node, align 4
  %addtmp16 = add i64 %node15, 0
  %val17 = load i64, ptr %val.addr, align 4
  %calltmp18 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp16, i64 %val17)
  %raw.value19 = extractvalue { i8, ptr, i8 } %calltmp18, 0
  %node20 = load i64, ptr %node, align 4
  %addtmp21 = add i64 %node20, 8
  %head22 = load i64, ptr %head, align 4
  %calltmp23 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp21, i64 %head22)
  %raw.value24 = extractvalue { i8, ptr, i8 } %calltmp23, 0
  %header25 = load i64, ptr %header.addr, align 4
  %addtmp26 = add i64 %header25, 0
  %node27 = load i64, ptr %node, align 4
  %calltmp28 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp26, i64 %node27)
  %raw.value29 = extractvalue { i8, ptr, i8 } %calltmp28, 0
  %head30 = load i64, ptr %head, align 4
  %eqtmp31 = icmp eq i64 %head30, 0
  %ifcond32 = icmp ne i1 %eqtmp31, false
  br i1 %ifcond32, label %then33, label %ifcont39

then33:                                           ; preds = %ifcont10
  %header34 = load i64, ptr %header.addr, align 4
  %addtmp35 = add i64 %header34, 8
  %node36 = load i64, ptr %node, align 4
  %calltmp37 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp35, i64 %node36)
  %raw.value38 = extractvalue { i8, ptr, i8 } %calltmp37, 0
  br label %ifcont39

ifcont39:                                         ; preds = %then33, %ifcont10
  %count = alloca i64, align 8
  %header40 = load i64, ptr %header.addr, align 4
  %addtmp41 = add i64 %header40, 16
  %calltmp42 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp41)
  %raw.value43 = extractvalue { i64, ptr, i8 } %calltmp42, 0
  store i64 %raw.value43, ptr %count, align 4
  %header44 = load i64, ptr %header.addr, align 4
  %addtmp45 = add i64 %header44, 16
  %count46 = load i64, ptr %count, align 4
  %addtmp47 = add i64 %count46, 1
  %calltmp48 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp45, i64 %addtmp47)
  %raw.value49 = extractvalue { i8, ptr, i8 } %calltmp48, 0
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i8, ptr, i8 } @singly.SList_push_back(i64 %header, i64 %val) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  %allocator = alloca i64, align 8
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 24
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %allocator, align 4
  %node = alloca i64, align 8
  %allocator3 = load i64, ptr %allocator, align 4
  %calltmp4 = call { i64, ptr, i8 } @allocator.NodeAllocator_alloc(i64 %allocator3)
  %raw.value5 = extractvalue { i64, ptr, i8 } %calltmp4, 0
  store i64 %raw.value5, ptr %node, align 4
  %node6 = load i64, ptr %node, align 4
  %eqtmp7 = icmp eq i64 %node6, 0
  %ifcond8 = icmp ne i1 %eqtmp7, false
  br i1 %ifcond8, label %then9, label %ifcont10

then9:                                            ; preds = %ifcont
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont10:                                         ; preds = %ifcont
  %node11 = load i64, ptr %node, align 4
  %addtmp12 = add i64 %node11, 0
  %val13 = load i64, ptr %val.addr, align 4
  %calltmp14 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp12, i64 %val13)
  %raw.value15 = extractvalue { i8, ptr, i8 } %calltmp14, 0
  %node16 = load i64, ptr %node, align 4
  %addtmp17 = add i64 %node16, 8
  %calltmp18 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp17, i64 0)
  %raw.value19 = extractvalue { i8, ptr, i8 } %calltmp18, 0
  %tail = alloca i64, align 8
  %header20 = load i64, ptr %header.addr, align 4
  %addtmp21 = add i64 %header20, 8
  %calltmp22 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp21)
  %raw.value23 = extractvalue { i64, ptr, i8 } %calltmp22, 0
  store i64 %raw.value23, ptr %tail, align 4
  %tail24 = load i64, ptr %tail, align 4
  %eqtmp25 = icmp eq i64 %tail24, 0
  %ifcond26 = icmp ne i1 %eqtmp25, false
  br i1 %ifcond26, label %then27, label %else

then27:                                           ; preds = %ifcont10
  %header28 = load i64, ptr %header.addr, align 4
  %addtmp29 = add i64 %header28, 0
  %node30 = load i64, ptr %node, align 4
  %calltmp31 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp29, i64 %node30)
  %raw.value32 = extractvalue { i8, ptr, i8 } %calltmp31, 0
  %header33 = load i64, ptr %header.addr, align 4
  %addtmp34 = add i64 %header33, 8
  %node35 = load i64, ptr %node, align 4
  %calltmp36 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp34, i64 %node35)
  %raw.value37 = extractvalue { i8, ptr, i8 } %calltmp36, 0
  br label %ifcont48

else:                                             ; preds = %ifcont10
  %tail38 = load i64, ptr %tail, align 4
  %addtmp39 = add i64 %tail38, 8
  %node40 = load i64, ptr %node, align 4
  %calltmp41 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp39, i64 %node40)
  %raw.value42 = extractvalue { i8, ptr, i8 } %calltmp41, 0
  %header43 = load i64, ptr %header.addr, align 4
  %addtmp44 = add i64 %header43, 8
  %node45 = load i64, ptr %node, align 4
  %calltmp46 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp44, i64 %node45)
  %raw.value47 = extractvalue { i8, ptr, i8 } %calltmp46, 0
  br label %ifcont48

ifcont48:                                         ; preds = %else, %then27
  %count = alloca i64, align 8
  %header49 = load i64, ptr %header.addr, align 4
  %addtmp50 = add i64 %header49, 16
  %calltmp51 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp50)
  %raw.value52 = extractvalue { i64, ptr, i8 } %calltmp51, 0
  store i64 %raw.value52, ptr %count, align 4
  %header53 = load i64, ptr %header.addr, align 4
  %addtmp54 = add i64 %header53, 16
  %count55 = load i64, ptr %count, align 4
  %addtmp56 = add i64 %count55, 1
  %calltmp57 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp54, i64 %addtmp56)
  %raw.value58 = extractvalue { i8, ptr, i8 } %calltmp57, 0
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i64, ptr, i8 } @singly.SList_pop_front(i64 %header) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i64, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %head = alloca i64, align 8
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 0
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %head, align 4
  %head3 = load i64, ptr %head, align 4
  %eqtmp4 = icmp eq i64 %head3, 0
  %ifcond5 = icmp ne i1 %eqtmp4, false
  br i1 %ifcond5, label %then6, label %ifcont7

then6:                                            ; preds = %ifcont
  ret { i64, ptr, i8 } zeroinitializer

ifcont7:                                          ; preds = %ifcont
  %val = alloca i64, align 8
  %head8 = load i64, ptr %head, align 4
  %addtmp9 = add i64 %head8, 0
  %calltmp10 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp9)
  %raw.value11 = extractvalue { i64, ptr, i8 } %calltmp10, 0
  store i64 %raw.value11, ptr %val, align 4
  %next = alloca i64, align 8
  %head12 = load i64, ptr %head, align 4
  %addtmp13 = add i64 %head12, 8
  %calltmp14 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp13)
  %raw.value15 = extractvalue { i64, ptr, i8 } %calltmp14, 0
  store i64 %raw.value15, ptr %next, align 4
  %header16 = load i64, ptr %header.addr, align 4
  %addtmp17 = add i64 %header16, 0
  %next18 = load i64, ptr %next, align 4
  %calltmp19 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp17, i64 %next18)
  %raw.value20 = extractvalue { i8, ptr, i8 } %calltmp19, 0
  %next21 = load i64, ptr %next, align 4
  %eqtmp22 = icmp eq i64 %next21, 0
  %ifcond23 = icmp ne i1 %eqtmp22, false
  br i1 %ifcond23, label %then24, label %ifcont29

then24:                                           ; preds = %ifcont7
  %header25 = load i64, ptr %header.addr, align 4
  %addtmp26 = add i64 %header25, 8
  %calltmp27 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp26, i64 0)
  %raw.value28 = extractvalue { i8, ptr, i8 } %calltmp27, 0
  br label %ifcont29

ifcont29:                                         ; preds = %then24, %ifcont7
  %count = alloca i64, align 8
  %header30 = load i64, ptr %header.addr, align 4
  %addtmp31 = add i64 %header30, 16
  %calltmp32 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp31)
  %raw.value33 = extractvalue { i64, ptr, i8 } %calltmp32, 0
  store i64 %raw.value33, ptr %count, align 4
  %header34 = load i64, ptr %header.addr, align 4
  %addtmp35 = add i64 %header34, 16
  %count36 = load i64, ptr %count, align 4
  %subtmp = sub i64 %count36, 1
  %calltmp37 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp35, i64 %subtmp)
  %raw.value38 = extractvalue { i8, ptr, i8 } %calltmp37, 0
  %allocator = alloca i64, align 8
  %header39 = load i64, ptr %header.addr, align 4
  %addtmp40 = add i64 %header39, 24
  %calltmp41 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp40)
  %raw.value42 = extractvalue { i64, ptr, i8 } %calltmp41, 0
  store i64 %raw.value42, ptr %allocator, align 4
  %allocator43 = load i64, ptr %allocator, align 4
  %head44 = load i64, ptr %head, align 4
  %calltmp45 = call { i8, ptr, i8 } @allocator.NodeAllocator_free(i64 %allocator43, i64 %head44)
  %raw.value46 = extractvalue { i8, ptr, i8 } %calltmp45, 0
  %val47 = load i64, ptr %val, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %val47, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i8, ptr, i8 } @singly.SList_clear(i64 %header) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %allocator = alloca i64, align 8
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 24
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %allocator, align 4
  %head = alloca i64, align 8
  %header3 = load i64, ptr %header.addr, align 4
  %addtmp4 = add i64 %header3, 0
  %calltmp5 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp4)
  %raw.value6 = extractvalue { i64, ptr, i8 } %calltmp5, 0
  store i64 %raw.value6, ptr %head, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %ifcont
  %head7 = load i64, ptr %head, align 4
  %netmp = icmp ne i64 %head7, 0
  %whilecond8 = icmp ne i1 %netmp, false
  br i1 %whilecond8, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %next = alloca i64, align 8
  %head9 = load i64, ptr %head, align 4
  %addtmp10 = add i64 %head9, 8
  %calltmp11 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp10)
  %raw.value12 = extractvalue { i64, ptr, i8 } %calltmp11, 0
  store i64 %raw.value12, ptr %next, align 4
  %allocator13 = load i64, ptr %allocator, align 4
  %head14 = load i64, ptr %head, align 4
  %calltmp15 = call { i8, ptr, i8 } @allocator.NodeAllocator_free(i64 %allocator13, i64 %head14)
  %raw.value16 = extractvalue { i8, ptr, i8 } %calltmp15, 0
  %next17 = load i64, ptr %next, align 4
  store i64 %next17, ptr %head, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %header18 = load i64, ptr %header.addr, align 4
  %addtmp19 = add i64 %header18, 0
  %calltmp20 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp19, i64 0)
  %raw.value21 = extractvalue { i8, ptr, i8 } %calltmp20, 0
  %header22 = load i64, ptr %header.addr, align 4
  %addtmp23 = add i64 %header22, 8
  %calltmp24 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp23, i64 0)
  %raw.value25 = extractvalue { i8, ptr, i8 } %calltmp24, 0
  %header26 = load i64, ptr %header.addr, align 4
  %addtmp27 = add i64 %header26, 16
  %calltmp28 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp27, i64 0)
  %raw.value29 = extractvalue { i8, ptr, i8 } %calltmp28, 0
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i8, ptr, i8 } @singly.SList_contains(i64 %header, i64 %val) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %curr = alloca i64, align 8
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 0
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %curr, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont13, %ifcont
  %curr3 = load i64, ptr %curr, align 4
  %netmp = icmp ne i64 %curr3, 0
  %whilecond4 = icmp ne i1 %netmp, false
  br i1 %whilecond4, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %curr5 = load i64, ptr %curr, align 4
  %addtmp6 = add i64 %curr5, 0
  %calltmp7 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp6)
  %raw.value8 = extractvalue { i64, ptr, i8 } %calltmp7, 0
  %val9 = load i64, ptr %val.addr, align 4
  %eqtmp10 = icmp eq i64 %raw.value8, %val9
  %ifcond11 = icmp ne i1 %eqtmp10, false
  br i1 %ifcond11, label %then12, label %ifcont13

then12:                                           ; preds = %whilebody
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont13:                                         ; preds = %whilebody
  %curr14 = load i64, ptr %curr, align 4
  %addtmp15 = add i64 %curr14, 8
  %calltmp16 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp15)
  %raw.value17 = extractvalue { i64, ptr, i8 } %calltmp16, 0
  store i64 %raw.value17, ptr %curr, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i8, ptr, i8 } @singly.SList_remove_first(i64 %header, i64 %val) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %curr = alloca i64, align 8
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 0
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %curr, align 4
  %prev = alloca i64, align 8
  store i64 0, ptr %prev, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont59, %ifcont
  %curr3 = load i64, ptr %curr, align 4
  %netmp = icmp ne i64 %curr3, 0
  %whilecond4 = icmp ne i1 %netmp, false
  br i1 %whilecond4, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %curr5 = load i64, ptr %curr, align 4
  %addtmp6 = add i64 %curr5, 0
  %calltmp7 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp6)
  %raw.value8 = extractvalue { i64, ptr, i8 } %calltmp7, 0
  %val9 = load i64, ptr %val.addr, align 4
  %eqtmp10 = icmp eq i64 %raw.value8, %val9
  %ifcond11 = icmp ne i1 %eqtmp10, false
  br i1 %ifcond11, label %then12, label %ifcont59

then12:                                           ; preds = %whilebody
  %next = alloca i64, align 8
  %curr13 = load i64, ptr %curr, align 4
  %addtmp14 = add i64 %curr13, 8
  %calltmp15 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp14)
  %raw.value16 = extractvalue { i64, ptr, i8 } %calltmp15, 0
  store i64 %raw.value16, ptr %next, align 4
  %prev17 = load i64, ptr %prev, align 4
  %eqtmp18 = icmp eq i64 %prev17, 0
  %ifcond19 = icmp ne i1 %eqtmp18, false
  br i1 %ifcond19, label %then20, label %else

then20:                                           ; preds = %then12
  %header21 = load i64, ptr %header.addr, align 4
  %addtmp22 = add i64 %header21, 0
  %next23 = load i64, ptr %next, align 4
  %calltmp24 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp22, i64 %next23)
  %raw.value25 = extractvalue { i8, ptr, i8 } %calltmp24, 0
  br label %ifcont31

else:                                             ; preds = %then12
  %prev26 = load i64, ptr %prev, align 4
  %addtmp27 = add i64 %prev26, 8
  %next28 = load i64, ptr %next, align 4
  %calltmp29 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp27, i64 %next28)
  %raw.value30 = extractvalue { i8, ptr, i8 } %calltmp29, 0
  br label %ifcont31

ifcont31:                                         ; preds = %else, %then20
  %next32 = load i64, ptr %next, align 4
  %eqtmp33 = icmp eq i64 %next32, 0
  %ifcond34 = icmp ne i1 %eqtmp33, false
  br i1 %ifcond34, label %then35, label %ifcont41

then35:                                           ; preds = %ifcont31
  %header36 = load i64, ptr %header.addr, align 4
  %addtmp37 = add i64 %header36, 8
  %prev38 = load i64, ptr %prev, align 4
  %calltmp39 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp37, i64 %prev38)
  %raw.value40 = extractvalue { i8, ptr, i8 } %calltmp39, 0
  br label %ifcont41

ifcont41:                                         ; preds = %then35, %ifcont31
  %count = alloca i64, align 8
  %header42 = load i64, ptr %header.addr, align 4
  %addtmp43 = add i64 %header42, 16
  %calltmp44 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp43)
  %raw.value45 = extractvalue { i64, ptr, i8 } %calltmp44, 0
  store i64 %raw.value45, ptr %count, align 4
  %header46 = load i64, ptr %header.addr, align 4
  %addtmp47 = add i64 %header46, 16
  %count48 = load i64, ptr %count, align 4
  %subtmp = sub i64 %count48, 1
  %calltmp49 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp47, i64 %subtmp)
  %raw.value50 = extractvalue { i8, ptr, i8 } %calltmp49, 0
  %allocator = alloca i64, align 8
  %header51 = load i64, ptr %header.addr, align 4
  %addtmp52 = add i64 %header51, 24
  %calltmp53 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp52)
  %raw.value54 = extractvalue { i64, ptr, i8 } %calltmp53, 0
  store i64 %raw.value54, ptr %allocator, align 4
  %allocator55 = load i64, ptr %allocator, align 4
  %curr56 = load i64, ptr %curr, align 4
  %calltmp57 = call { i8, ptr, i8 } @allocator.NodeAllocator_free(i64 %allocator55, i64 %curr56)
  %raw.value58 = extractvalue { i8, ptr, i8 } %calltmp57, 0
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont59:                                         ; preds = %whilebody
  %curr60 = load i64, ptr %curr, align 4
  store i64 %curr60, ptr %prev, align 4
  %curr61 = load i64, ptr %curr, align 4
  %addtmp62 = add i64 %curr61, 8
  %calltmp63 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp62)
  %raw.value64 = extractvalue { i64, ptr, i8 } %calltmp63, 0
  store i64 %raw.value64, ptr %curr, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i8, ptr, i8 } @singly.SList_reverse(i64 %header) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %curr = alloca i64, align 8
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 0
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %curr, align 4
  %curr3 = load i64, ptr %curr, align 4
  %eqtmp4 = icmp eq i64 %curr3, 0
  %ifcond5 = icmp ne i1 %eqtmp4, false
  br i1 %ifcond5, label %then6, label %ifcont7

then6:                                            ; preds = %ifcont
  ret { i8, ptr, i8 } zeroinitializer

ifcont7:                                          ; preds = %ifcont
  %prev = alloca i64, align 8
  store i64 0, ptr %prev, align 4
  %next = alloca i64, align 8
  store i64 0, ptr %next, align 4
  %header8 = load i64, ptr %header.addr, align 4
  %addtmp9 = add i64 %header8, 8
  %curr10 = load i64, ptr %curr, align 4
  %calltmp11 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp9, i64 %curr10)
  %raw.value12 = extractvalue { i8, ptr, i8 } %calltmp11, 0
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %ifcont7
  %curr13 = load i64, ptr %curr, align 4
  %netmp = icmp ne i64 %curr13, 0
  %whilecond14 = icmp ne i1 %netmp, false
  br i1 %whilecond14, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %curr15 = load i64, ptr %curr, align 4
  %addtmp16 = add i64 %curr15, 8
  %calltmp17 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp16)
  %raw.value18 = extractvalue { i64, ptr, i8 } %calltmp17, 0
  store i64 %raw.value18, ptr %next, align 4
  %curr19 = load i64, ptr %curr, align 4
  %addtmp20 = add i64 %curr19, 8
  %prev21 = load i64, ptr %prev, align 4
  %calltmp22 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp20, i64 %prev21)
  %raw.value23 = extractvalue { i8, ptr, i8 } %calltmp22, 0
  %curr24 = load i64, ptr %curr, align 4
  store i64 %curr24, ptr %prev, align 4
  %next25 = load i64, ptr %next, align 4
  store i64 %next25, ptr %curr, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %header26 = load i64, ptr %header.addr, align 4
  %addtmp27 = add i64 %header26, 0
  %prev28 = load i64, ptr %prev, align 4
  %calltmp29 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp27, i64 %prev28)
  %raw.value30 = extractvalue { i8, ptr, i8 } %calltmp29, 0
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i64, ptr, i8 } @singly.SList_count(i64 %header) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i64, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 16
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %raw.value, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr i32 @__singly_init() {
entry:
  ret i32 0
}

define linkonce_odr { i64, ptr, i8 } @doubly.DList_create() {
entry:
  %header_ptr = call ptr @npk_alloc(i64 8)
  %wild_ptr = call ptr @npk_alloc(i64 32)
  store ptr %wild_ptr, ptr %header_ptr, align 8
  %header_ptr1 = load ptr, ptr %header_ptr, align 8
  %eqtmp = icmp eq ptr %header_ptr1, null
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i64, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %header = alloca i64, align 8
  %header_ptr2 = load ptr, ptr %header_ptr, align 8
  %header_ptr3 = load ptr, ptr %header_ptr, align 8
  %cast.ptrtoint = ptrtoint ptr %header_ptr3 to i64
  %andtmp = and i64 %cast.ptrtoint, 281474976710655
  store i64 %andtmp, ptr %header, align 4
  %allocator = alloca i64, align 8
  %calltmp = call { i64, ptr, i8 } @allocator.NodeAllocator_create(i64 24)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %andtmp4 = and i64 %raw.value, 281474976710655
  store i64 %andtmp4, ptr %allocator, align 4
  %allocator5 = load i64, ptr %allocator, align 4
  %eqtmp6 = icmp eq i64 %allocator5, 0
  %ifcond7 = icmp ne i1 %eqtmp6, false
  br i1 %ifcond7, label %then8, label %ifcont10

then8:                                            ; preds = %ifcont
  %header_ptr9 = load ptr, ptr %header_ptr, align 8
  call void @npk_free(ptr %header_ptr9)
  ret { i64, ptr, i8 } zeroinitializer

ifcont10:                                         ; preds = %ifcont
  %header11 = load i64, ptr %header, align 4
  %addtmp = add i64 %header11, 0
  %calltmp12 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp, i64 0)
  %raw.value13 = extractvalue { i8, ptr, i8 } %calltmp12, 0
  %header14 = load i64, ptr %header, align 4
  %addtmp15 = add i64 %header14, 8
  %calltmp16 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp15, i64 0)
  %raw.value17 = extractvalue { i8, ptr, i8 } %calltmp16, 0
  %header18 = load i64, ptr %header, align 4
  %addtmp19 = add i64 %header18, 16
  %calltmp20 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp19, i64 0)
  %raw.value21 = extractvalue { i8, ptr, i8 } %calltmp20, 0
  %header22 = load i64, ptr %header, align 4
  %addtmp23 = add i64 %header22, 24
  %allocator24 = load i64, ptr %allocator, align 4
  %calltmp25 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp23, i64 %allocator24)
  %raw.value26 = extractvalue { i8, ptr, i8 } %calltmp25, 0
  %header27 = load i64, ptr %header, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %header27, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i8, ptr, i8 } @doubly.DList_destroy(i64 %header) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %allocator = alloca i64, align 8
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 24
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %allocator, align 4
  %allocator3 = load i64, ptr %allocator, align 4
  %calltmp4 = call { i8, ptr, i8 } @allocator.NodeAllocator_destroy(i64 %allocator3)
  %raw.value5 = extractvalue { i8, ptr, i8 } %calltmp4, 0
  %header6 = load i64, ptr %header.addr, align 4
  %cast.inttoptr = inttoptr i64 %header6 to ptr
  call void @npk_free(ptr %cast.inttoptr)
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i8, ptr, i8 } @doubly.DList_push_front(i64 %header, i64 %val) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  %allocator = alloca i64, align 8
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 24
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %allocator, align 4
  %node = alloca i64, align 8
  %allocator3 = load i64, ptr %allocator, align 4
  %calltmp4 = call { i64, ptr, i8 } @allocator.NodeAllocator_alloc(i64 %allocator3)
  %raw.value5 = extractvalue { i64, ptr, i8 } %calltmp4, 0
  %andtmp = and i64 %raw.value5, 281474976710655
  store i64 %andtmp, ptr %node, align 4
  %node6 = load i64, ptr %node, align 4
  %eqtmp7 = icmp eq i64 %node6, 0
  %ifcond8 = icmp ne i1 %eqtmp7, false
  br i1 %ifcond8, label %then9, label %ifcont10

then9:                                            ; preds = %ifcont
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont10:                                         ; preds = %ifcont
  %head = alloca i64, align 8
  %header11 = load i64, ptr %header.addr, align 4
  %addtmp12 = add i64 %header11, 0
  %calltmp13 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp12)
  %raw.value14 = extractvalue { i64, ptr, i8 } %calltmp13, 0
  store i64 %raw.value14, ptr %head, align 4
  %node15 = load i64, ptr %node, align 4
  %addtmp16 = add i64 %node15, 0
  %val17 = load i64, ptr %val.addr, align 4
  %calltmp18 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp16, i64 %val17)
  %raw.value19 = extractvalue { i8, ptr, i8 } %calltmp18, 0
  %node20 = load i64, ptr %node, align 4
  %addtmp21 = add i64 %node20, 8
  %head22 = load i64, ptr %head, align 4
  %calltmp23 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp21, i64 %head22)
  %raw.value24 = extractvalue { i8, ptr, i8 } %calltmp23, 0
  %node25 = load i64, ptr %node, align 4
  %addtmp26 = add i64 %node25, 16
  %calltmp27 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp26, i64 0)
  %raw.value28 = extractvalue { i8, ptr, i8 } %calltmp27, 0
  %header29 = load i64, ptr %header.addr, align 4
  %addtmp30 = add i64 %header29, 0
  %node31 = load i64, ptr %node, align 4
  %calltmp32 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp30, i64 %node31)
  %raw.value33 = extractvalue { i8, ptr, i8 } %calltmp32, 0
  %head34 = load i64, ptr %head, align 4
  %eqtmp35 = icmp eq i64 %head34, 0
  %ifcond36 = icmp ne i1 %eqtmp35, false
  br i1 %ifcond36, label %then37, label %else

then37:                                           ; preds = %ifcont10
  %header38 = load i64, ptr %header.addr, align 4
  %addtmp39 = add i64 %header38, 8
  %node40 = load i64, ptr %node, align 4
  %calltmp41 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp39, i64 %node40)
  %raw.value42 = extractvalue { i8, ptr, i8 } %calltmp41, 0
  br label %ifcont48

else:                                             ; preds = %ifcont10
  %head43 = load i64, ptr %head, align 4
  %addtmp44 = add i64 %head43, 16
  %node45 = load i64, ptr %node, align 4
  %calltmp46 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp44, i64 %node45)
  %raw.value47 = extractvalue { i8, ptr, i8 } %calltmp46, 0
  br label %ifcont48

ifcont48:                                         ; preds = %else, %then37
  %count = alloca i64, align 8
  %header49 = load i64, ptr %header.addr, align 4
  %addtmp50 = add i64 %header49, 16
  %calltmp51 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp50)
  %raw.value52 = extractvalue { i64, ptr, i8 } %calltmp51, 0
  store i64 %raw.value52, ptr %count, align 4
  %header53 = load i64, ptr %header.addr, align 4
  %addtmp54 = add i64 %header53, 16
  %count55 = load i64, ptr %count, align 4
  %addtmp56 = add i64 %count55, 1
  %calltmp57 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp54, i64 %addtmp56)
  %raw.value58 = extractvalue { i8, ptr, i8 } %calltmp57, 0
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i8, ptr, i8 } @doubly.DList_push_back(i64 %header, i64 %val) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %allocator = alloca i64, align 8
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 24
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %allocator, align 4
  %node = alloca i64, align 8
  %allocator3 = load i64, ptr %allocator, align 4
  %calltmp4 = call { i64, ptr, i8 } @allocator.NodeAllocator_alloc(i64 %allocator3)
  %raw.value5 = extractvalue { i64, ptr, i8 } %calltmp4, 0
  store i64 %raw.value5, ptr %node, align 4
  %node6 = load i64, ptr %node, align 4
  %eqtmp7 = icmp eq i64 %node6, 0
  %ifcond8 = icmp ne i1 %eqtmp7, false
  br i1 %ifcond8, label %then9, label %ifcont10

then9:                                            ; preds = %ifcont
  ret { i8, ptr, i8 } zeroinitializer

ifcont10:                                         ; preds = %ifcont
  %tail = alloca i64, align 8
  %header11 = load i64, ptr %header.addr, align 4
  %addtmp12 = add i64 %header11, 8
  %calltmp13 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp12)
  %raw.value14 = extractvalue { i64, ptr, i8 } %calltmp13, 0
  store i64 %raw.value14, ptr %tail, align 4
  %node15 = load i64, ptr %node, align 4
  %addtmp16 = add i64 %node15, 0
  %val17 = load i64, ptr %val.addr, align 4
  %calltmp18 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp16, i64 %val17)
  %raw.value19 = extractvalue { i8, ptr, i8 } %calltmp18, 0
  %node20 = load i64, ptr %node, align 4
  %addtmp21 = add i64 %node20, 8
  %calltmp22 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp21, i64 0)
  %raw.value23 = extractvalue { i8, ptr, i8 } %calltmp22, 0
  %node24 = load i64, ptr %node, align 4
  %addtmp25 = add i64 %node24, 16
  %tail26 = load i64, ptr %tail, align 4
  %calltmp27 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp25, i64 %tail26)
  %raw.value28 = extractvalue { i8, ptr, i8 } %calltmp27, 0
  %header29 = load i64, ptr %header.addr, align 4
  %addtmp30 = add i64 %header29, 8
  %node31 = load i64, ptr %node, align 4
  %calltmp32 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp30, i64 %node31)
  %raw.value33 = extractvalue { i8, ptr, i8 } %calltmp32, 0
  %tail34 = load i64, ptr %tail, align 4
  %eqtmp35 = icmp eq i64 %tail34, 0
  %ifcond36 = icmp ne i1 %eqtmp35, false
  br i1 %ifcond36, label %then37, label %else

then37:                                           ; preds = %ifcont10
  %header38 = load i64, ptr %header.addr, align 4
  %addtmp39 = add i64 %header38, 0
  %node40 = load i64, ptr %node, align 4
  %calltmp41 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp39, i64 %node40)
  %raw.value42 = extractvalue { i8, ptr, i8 } %calltmp41, 0
  br label %ifcont48

else:                                             ; preds = %ifcont10
  %tail43 = load i64, ptr %tail, align 4
  %addtmp44 = add i64 %tail43, 8
  %node45 = load i64, ptr %node, align 4
  %calltmp46 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp44, i64 %node45)
  %raw.value47 = extractvalue { i8, ptr, i8 } %calltmp46, 0
  br label %ifcont48

ifcont48:                                         ; preds = %else, %then37
  %count = alloca i64, align 8
  %header49 = load i64, ptr %header.addr, align 4
  %addtmp50 = add i64 %header49, 16
  %calltmp51 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp50)
  %raw.value52 = extractvalue { i64, ptr, i8 } %calltmp51, 0
  store i64 %raw.value52, ptr %count, align 4
  %header53 = load i64, ptr %header.addr, align 4
  %addtmp54 = add i64 %header53, 16
  %count55 = load i64, ptr %count, align 4
  %addtmp56 = add i64 %count55, 1
  %calltmp57 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp54, i64 %addtmp56)
  %raw.value58 = extractvalue { i8, ptr, i8 } %calltmp57, 0
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }
}

define linkonce_odr { i64, ptr, i8 } @doubly.DList_pop_front(i64 %header) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i64, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %head = alloca i64, align 8
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 0
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %head, align 4
  %head3 = load i64, ptr %head, align 4
  %eqtmp4 = icmp eq i64 %head3, 0
  %ifcond5 = icmp ne i1 %eqtmp4, false
  br i1 %ifcond5, label %then6, label %ifcont7

then6:                                            ; preds = %ifcont
  ret { i64, ptr, i8 } zeroinitializer

ifcont7:                                          ; preds = %ifcont
  %val = alloca i64, align 8
  %head8 = load i64, ptr %head, align 4
  %addtmp9 = add i64 %head8, 0
  %calltmp10 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp9)
  %raw.value11 = extractvalue { i64, ptr, i8 } %calltmp10, 0
  store i64 %raw.value11, ptr %val, align 4
  %next = alloca i64, align 8
  %head12 = load i64, ptr %head, align 4
  %addtmp13 = add i64 %head12, 8
  %calltmp14 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp13)
  %raw.value15 = extractvalue { i64, ptr, i8 } %calltmp14, 0
  store i64 %raw.value15, ptr %next, align 4
  %header16 = load i64, ptr %header.addr, align 4
  %addtmp17 = add i64 %header16, 0
  %next18 = load i64, ptr %next, align 4
  %calltmp19 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp17, i64 %next18)
  %raw.value20 = extractvalue { i8, ptr, i8 } %calltmp19, 0
  %next21 = load i64, ptr %next, align 4
  %eqtmp22 = icmp eq i64 %next21, 0
  %ifcond23 = icmp ne i1 %eqtmp22, false
  br i1 %ifcond23, label %then24, label %else

then24:                                           ; preds = %ifcont7
  %header25 = load i64, ptr %header.addr, align 4
  %addtmp26 = add i64 %header25, 8
  %calltmp27 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp26, i64 0)
  %raw.value28 = extractvalue { i8, ptr, i8 } %calltmp27, 0
  br label %ifcont33

else:                                             ; preds = %ifcont7
  %next29 = load i64, ptr %next, align 4
  %addtmp30 = add i64 %next29, 16
  %calltmp31 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp30, i64 0)
  %raw.value32 = extractvalue { i8, ptr, i8 } %calltmp31, 0
  br label %ifcont33

ifcont33:                                         ; preds = %else, %then24
  %count = alloca i64, align 8
  %header34 = load i64, ptr %header.addr, align 4
  %addtmp35 = add i64 %header34, 16
  %calltmp36 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp35)
  %raw.value37 = extractvalue { i64, ptr, i8 } %calltmp36, 0
  store i64 %raw.value37, ptr %count, align 4
  %header38 = load i64, ptr %header.addr, align 4
  %addtmp39 = add i64 %header38, 16
  %count40 = load i64, ptr %count, align 4
  %subtmp = sub i64 %count40, 1
  %calltmp41 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp39, i64 %subtmp)
  %raw.value42 = extractvalue { i8, ptr, i8 } %calltmp41, 0
  %allocator = alloca i64, align 8
  %header43 = load i64, ptr %header.addr, align 4
  %addtmp44 = add i64 %header43, 24
  %calltmp45 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp44)
  %raw.value46 = extractvalue { i64, ptr, i8 } %calltmp45, 0
  store i64 %raw.value46, ptr %allocator, align 4
  %allocator47 = load i64, ptr %allocator, align 4
  %head48 = load i64, ptr %head, align 4
  %calltmp49 = call { i8, ptr, i8 } @allocator.NodeAllocator_free(i64 %allocator47, i64 %head48)
  %raw.value50 = extractvalue { i8, ptr, i8 } %calltmp49, 0
  %val51 = load i64, ptr %val, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %val51, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @doubly.DList_pop_back(i64 %header) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i64, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %tail = alloca i64, align 8
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 8
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %tail, align 4
  %tail3 = load i64, ptr %tail, align 4
  %eqtmp4 = icmp eq i64 %tail3, 0
  %ifcond5 = icmp ne i1 %eqtmp4, false
  br i1 %ifcond5, label %then6, label %ifcont7

then6:                                            ; preds = %ifcont
  ret { i64, ptr, i8 } zeroinitializer

ifcont7:                                          ; preds = %ifcont
  %val = alloca i64, align 8
  %tail8 = load i64, ptr %tail, align 4
  %addtmp9 = add i64 %tail8, 0
  %calltmp10 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp9)
  %raw.value11 = extractvalue { i64, ptr, i8 } %calltmp10, 0
  store i64 %raw.value11, ptr %val, align 4
  %prev = alloca i64, align 8
  %tail12 = load i64, ptr %tail, align 4
  %addtmp13 = add i64 %tail12, 16
  %calltmp14 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp13)
  %raw.value15 = extractvalue { i64, ptr, i8 } %calltmp14, 0
  store i64 %raw.value15, ptr %prev, align 4
  %header16 = load i64, ptr %header.addr, align 4
  %addtmp17 = add i64 %header16, 8
  %prev18 = load i64, ptr %prev, align 4
  %calltmp19 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp17, i64 %prev18)
  %raw.value20 = extractvalue { i8, ptr, i8 } %calltmp19, 0
  %prev21 = load i64, ptr %prev, align 4
  %eqtmp22 = icmp eq i64 %prev21, 0
  %ifcond23 = icmp ne i1 %eqtmp22, false
  br i1 %ifcond23, label %then24, label %else

then24:                                           ; preds = %ifcont7
  %header25 = load i64, ptr %header.addr, align 4
  %addtmp26 = add i64 %header25, 0
  %calltmp27 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp26, i64 0)
  %raw.value28 = extractvalue { i8, ptr, i8 } %calltmp27, 0
  br label %ifcont33

else:                                             ; preds = %ifcont7
  %prev29 = load i64, ptr %prev, align 4
  %addtmp30 = add i64 %prev29, 8
  %calltmp31 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp30, i64 0)
  %raw.value32 = extractvalue { i8, ptr, i8 } %calltmp31, 0
  br label %ifcont33

ifcont33:                                         ; preds = %else, %then24
  %count = alloca i64, align 8
  %header34 = load i64, ptr %header.addr, align 4
  %addtmp35 = add i64 %header34, 16
  %calltmp36 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp35)
  %raw.value37 = extractvalue { i64, ptr, i8 } %calltmp36, 0
  store i64 %raw.value37, ptr %count, align 4
  %header38 = load i64, ptr %header.addr, align 4
  %addtmp39 = add i64 %header38, 16
  %count40 = load i64, ptr %count, align 4
  %subtmp = sub i64 %count40, 1
  %calltmp41 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp39, i64 %subtmp)
  %raw.value42 = extractvalue { i8, ptr, i8 } %calltmp41, 0
  %allocator = alloca i64, align 8
  %header43 = load i64, ptr %header.addr, align 4
  %addtmp44 = add i64 %header43, 24
  %calltmp45 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp44)
  %raw.value46 = extractvalue { i64, ptr, i8 } %calltmp45, 0
  store i64 %raw.value46, ptr %allocator, align 4
  %allocator47 = load i64, ptr %allocator, align 4
  %tail48 = load i64, ptr %tail, align 4
  %calltmp49 = call { i8, ptr, i8 } @allocator.NodeAllocator_free(i64 %allocator47, i64 %tail48)
  %raw.value50 = extractvalue { i8, ptr, i8 } %calltmp49, 0
  %val51 = load i64, ptr %val, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %val51, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i8, ptr, i8 } @doubly.DList_clear(i64 %header) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %allocator = alloca i64, align 8
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 24
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %allocator, align 4
  %head = alloca i64, align 8
  %header3 = load i64, ptr %header.addr, align 4
  %addtmp4 = add i64 %header3, 0
  %calltmp5 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp4)
  %raw.value6 = extractvalue { i64, ptr, i8 } %calltmp5, 0
  store i64 %raw.value6, ptr %head, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %ifcont
  %head7 = load i64, ptr %head, align 4
  %netmp = icmp ne i64 %head7, 0
  %whilecond8 = icmp ne i1 %netmp, false
  br i1 %whilecond8, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %next = alloca i64, align 8
  %head9 = load i64, ptr %head, align 4
  %addtmp10 = add i64 %head9, 8
  %calltmp11 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp10)
  %raw.value12 = extractvalue { i64, ptr, i8 } %calltmp11, 0
  store i64 %raw.value12, ptr %next, align 4
  %allocator13 = load i64, ptr %allocator, align 4
  %head14 = load i64, ptr %head, align 4
  %calltmp15 = call { i8, ptr, i8 } @allocator.NodeAllocator_free(i64 %allocator13, i64 %head14)
  %raw.value16 = extractvalue { i8, ptr, i8 } %calltmp15, 0
  %next17 = load i64, ptr %next, align 4
  store i64 %next17, ptr %head, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %header18 = load i64, ptr %header.addr, align 4
  %addtmp19 = add i64 %header18, 0
  %calltmp20 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp19, i64 0)
  %raw.value21 = extractvalue { i8, ptr, i8 } %calltmp20, 0
  %header22 = load i64, ptr %header.addr, align 4
  %addtmp23 = add i64 %header22, 8
  %calltmp24 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp23, i64 0)
  %raw.value25 = extractvalue { i8, ptr, i8 } %calltmp24, 0
  %header26 = load i64, ptr %header.addr, align 4
  %addtmp27 = add i64 %header26, 16
  %calltmp28 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp27, i64 0)
  %raw.value29 = extractvalue { i8, ptr, i8 } %calltmp28, 0
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i8, ptr, i8 } @doubly.DList_contains(i64 %header, i64 %val) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %curr = alloca i64, align 8
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 0
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %curr, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont13, %ifcont
  %curr3 = load i64, ptr %curr, align 4
  %netmp = icmp ne i64 %curr3, 0
  %whilecond4 = icmp ne i1 %netmp, false
  br i1 %whilecond4, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %curr5 = load i64, ptr %curr, align 4
  %addtmp6 = add i64 %curr5, 0
  %calltmp7 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp6)
  %raw.value8 = extractvalue { i64, ptr, i8 } %calltmp7, 0
  %val9 = load i64, ptr %val.addr, align 4
  %eqtmp10 = icmp eq i64 %raw.value8, %val9
  %ifcond11 = icmp ne i1 %eqtmp10, false
  br i1 %ifcond11, label %then12, label %ifcont13

then12:                                           ; preds = %whilebody
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont13:                                         ; preds = %whilebody
  %curr14 = load i64, ptr %curr, align 4
  %addtmp15 = add i64 %curr14, 8
  %calltmp16 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp15)
  %raw.value17 = extractvalue { i64, ptr, i8 } %calltmp16, 0
  store i64 %raw.value17, ptr %curr, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i8, ptr, i8 } @doubly.DList_remove(i64 %header, i64 %val) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %curr = alloca i64, align 8
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 0
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %curr, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont69, %ifcont
  %curr3 = load i64, ptr %curr, align 4
  %netmp = icmp ne i64 %curr3, 0
  %whilecond4 = icmp ne i1 %netmp, false
  br i1 %whilecond4, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %curr5 = load i64, ptr %curr, align 4
  %addtmp6 = add i64 %curr5, 0
  %calltmp7 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp6)
  %raw.value8 = extractvalue { i64, ptr, i8 } %calltmp7, 0
  %val9 = load i64, ptr %val.addr, align 4
  %eqtmp10 = icmp eq i64 %raw.value8, %val9
  %ifcond11 = icmp ne i1 %eqtmp10, false
  br i1 %ifcond11, label %then12, label %ifcont69

then12:                                           ; preds = %whilebody
  %next = alloca i64, align 8
  %curr13 = load i64, ptr %curr, align 4
  %addtmp14 = add i64 %curr13, 8
  %calltmp15 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp14)
  %raw.value16 = extractvalue { i64, ptr, i8 } %calltmp15, 0
  store i64 %raw.value16, ptr %next, align 4
  %prev = alloca i64, align 8
  %curr17 = load i64, ptr %curr, align 4
  %addtmp18 = add i64 %curr17, 16
  %calltmp19 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp18)
  %raw.value20 = extractvalue { i64, ptr, i8 } %calltmp19, 0
  store i64 %raw.value20, ptr %prev, align 4
  %prev21 = load i64, ptr %prev, align 4
  %eqtmp22 = icmp eq i64 %prev21, 0
  %ifcond23 = icmp ne i1 %eqtmp22, false
  br i1 %ifcond23, label %then24, label %else

then24:                                           ; preds = %then12
  %header25 = load i64, ptr %header.addr, align 4
  %addtmp26 = add i64 %header25, 0
  %next27 = load i64, ptr %next, align 4
  %calltmp28 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp26, i64 %next27)
  %raw.value29 = extractvalue { i8, ptr, i8 } %calltmp28, 0
  br label %ifcont35

else:                                             ; preds = %then12
  %prev30 = load i64, ptr %prev, align 4
  %addtmp31 = add i64 %prev30, 8
  %next32 = load i64, ptr %next, align 4
  %calltmp33 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp31, i64 %next32)
  %raw.value34 = extractvalue { i8, ptr, i8 } %calltmp33, 0
  br label %ifcont35

ifcont35:                                         ; preds = %else, %then24
  %next36 = load i64, ptr %next, align 4
  %eqtmp37 = icmp eq i64 %next36, 0
  %ifcond38 = icmp ne i1 %eqtmp37, false
  br i1 %ifcond38, label %then39, label %else45

then39:                                           ; preds = %ifcont35
  %header40 = load i64, ptr %header.addr, align 4
  %addtmp41 = add i64 %header40, 8
  %prev42 = load i64, ptr %prev, align 4
  %calltmp43 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp41, i64 %prev42)
  %raw.value44 = extractvalue { i8, ptr, i8 } %calltmp43, 0
  br label %ifcont51

else45:                                           ; preds = %ifcont35
  %next46 = load i64, ptr %next, align 4
  %addtmp47 = add i64 %next46, 16
  %prev48 = load i64, ptr %prev, align 4
  %calltmp49 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp47, i64 %prev48)
  %raw.value50 = extractvalue { i8, ptr, i8 } %calltmp49, 0
  br label %ifcont51

ifcont51:                                         ; preds = %else45, %then39
  %count = alloca i64, align 8
  %header52 = load i64, ptr %header.addr, align 4
  %addtmp53 = add i64 %header52, 16
  %calltmp54 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp53)
  %raw.value55 = extractvalue { i64, ptr, i8 } %calltmp54, 0
  store i64 %raw.value55, ptr %count, align 4
  %header56 = load i64, ptr %header.addr, align 4
  %addtmp57 = add i64 %header56, 16
  %count58 = load i64, ptr %count, align 4
  %subtmp = sub i64 %count58, 1
  %calltmp59 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp57, i64 %subtmp)
  %raw.value60 = extractvalue { i8, ptr, i8 } %calltmp59, 0
  %allocator = alloca i64, align 8
  %header61 = load i64, ptr %header.addr, align 4
  %addtmp62 = add i64 %header61, 24
  %calltmp63 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp62)
  %raw.value64 = extractvalue { i64, ptr, i8 } %calltmp63, 0
  store i64 %raw.value64, ptr %allocator, align 4
  %allocator65 = load i64, ptr %allocator, align 4
  %curr66 = load i64, ptr %curr, align 4
  %calltmp67 = call { i8, ptr, i8 } @allocator.NodeAllocator_free(i64 %allocator65, i64 %curr66)
  %raw.value68 = extractvalue { i8, ptr, i8 } %calltmp67, 0
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont69:                                         ; preds = %whilebody
  %curr70 = load i64, ptr %curr, align 4
  %addtmp71 = add i64 %curr70, 8
  %calltmp72 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp71)
  %raw.value73 = extractvalue { i64, ptr, i8 } %calltmp72, 0
  store i64 %raw.value73, ptr %curr, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i8, ptr, i8 } @doubly.DList_insert_before(i64 %header, i64 %target, i64 %val) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %target.addr = alloca i64, align 8
  store i64 %target, ptr %target.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  %curr = alloca i64, align 8
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 0
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %curr, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont74, %ifcont
  %curr3 = load i64, ptr %curr, align 4
  %netmp = icmp ne i64 %curr3, 0
  %whilecond4 = icmp ne i1 %netmp, false
  br i1 %whilecond4, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %curr5 = load i64, ptr %curr, align 4
  %addtmp6 = add i64 %curr5, 0
  %calltmp7 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp6)
  %raw.value8 = extractvalue { i64, ptr, i8 } %calltmp7, 0
  %target9 = load i64, ptr %target.addr, align 4
  %eqtmp10 = icmp eq i64 %raw.value8, %target9
  %ifcond11 = icmp ne i1 %eqtmp10, false
  br i1 %ifcond11, label %then12, label %ifcont74

then12:                                           ; preds = %whilebody
  %allocator = alloca i64, align 8
  %header13 = load i64, ptr %header.addr, align 4
  %addtmp14 = add i64 %header13, 24
  %calltmp15 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp14)
  %raw.value16 = extractvalue { i64, ptr, i8 } %calltmp15, 0
  store i64 %raw.value16, ptr %allocator, align 4
  %node = alloca i64, align 8
  %allocator17 = load i64, ptr %allocator, align 4
  %calltmp18 = call { i64, ptr, i8 } @allocator.NodeAllocator_alloc(i64 %allocator17)
  %raw.value19 = extractvalue { i64, ptr, i8 } %calltmp18, 0
  %andtmp = and i64 %raw.value19, 281474976710655
  store i64 %andtmp, ptr %node, align 4
  %node20 = load i64, ptr %node, align 4
  %eqtmp21 = icmp eq i64 %node20, 0
  %ifcond22 = icmp ne i1 %eqtmp21, false
  br i1 %ifcond22, label %then23, label %ifcont24

then23:                                           ; preds = %then12
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont24:                                         ; preds = %then12
  %prev = alloca i64, align 8
  %curr25 = load i64, ptr %curr, align 4
  %addtmp26 = add i64 %curr25, 16
  %calltmp27 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp26)
  %raw.value28 = extractvalue { i64, ptr, i8 } %calltmp27, 0
  store i64 %raw.value28, ptr %prev, align 4
  %node29 = load i64, ptr %node, align 4
  %addtmp30 = add i64 %node29, 0
  %val31 = load i64, ptr %val.addr, align 4
  %calltmp32 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp30, i64 %val31)
  %raw.value33 = extractvalue { i8, ptr, i8 } %calltmp32, 0
  %node34 = load i64, ptr %node, align 4
  %addtmp35 = add i64 %node34, 8
  %curr36 = load i64, ptr %curr, align 4
  %calltmp37 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp35, i64 %curr36)
  %raw.value38 = extractvalue { i8, ptr, i8 } %calltmp37, 0
  %node39 = load i64, ptr %node, align 4
  %addtmp40 = add i64 %node39, 16
  %prev41 = load i64, ptr %prev, align 4
  %calltmp42 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp40, i64 %prev41)
  %raw.value43 = extractvalue { i8, ptr, i8 } %calltmp42, 0
  %curr44 = load i64, ptr %curr, align 4
  %addtmp45 = add i64 %curr44, 16
  %node46 = load i64, ptr %node, align 4
  %calltmp47 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp45, i64 %node46)
  %raw.value48 = extractvalue { i8, ptr, i8 } %calltmp47, 0
  %prev49 = load i64, ptr %prev, align 4
  %eqtmp50 = icmp eq i64 %prev49, 0
  %ifcond51 = icmp ne i1 %eqtmp50, false
  br i1 %ifcond51, label %then52, label %else

then52:                                           ; preds = %ifcont24
  %header53 = load i64, ptr %header.addr, align 4
  %addtmp54 = add i64 %header53, 0
  %node55 = load i64, ptr %node, align 4
  %calltmp56 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp54, i64 %node55)
  %raw.value57 = extractvalue { i8, ptr, i8 } %calltmp56, 0
  br label %ifcont63

else:                                             ; preds = %ifcont24
  %prev58 = load i64, ptr %prev, align 4
  %addtmp59 = add i64 %prev58, 8
  %node60 = load i64, ptr %node, align 4
  %calltmp61 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp59, i64 %node60)
  %raw.value62 = extractvalue { i8, ptr, i8 } %calltmp61, 0
  br label %ifcont63

ifcont63:                                         ; preds = %else, %then52
  %count = alloca i64, align 8
  %header64 = load i64, ptr %header.addr, align 4
  %addtmp65 = add i64 %header64, 16
  %calltmp66 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp65)
  %raw.value67 = extractvalue { i64, ptr, i8 } %calltmp66, 0
  store i64 %raw.value67, ptr %count, align 4
  %header68 = load i64, ptr %header.addr, align 4
  %addtmp69 = add i64 %header68, 16
  %count70 = load i64, ptr %count, align 4
  %addtmp71 = add i64 %count70, 1
  %calltmp72 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp69, i64 %addtmp71)
  %raw.value73 = extractvalue { i8, ptr, i8 } %calltmp72, 0
  ret { i8, ptr, i8 } zeroinitializer

ifcont74:                                         ; preds = %whilebody
  %curr75 = load i64, ptr %curr, align 4
  %addtmp76 = add i64 %curr75, 8
  %calltmp77 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp76)
  %raw.value78 = extractvalue { i64, ptr, i8 } %calltmp77, 0
  store i64 %raw.value78, ptr %curr, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }
}

define linkonce_odr { i8, ptr, i8 } @doubly.DList_insert_after(i64 %header, i64 %target, i64 %val) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %target.addr = alloca i64, align 8
  store i64 %target, ptr %target.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  %curr = alloca i64, align 8
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 0
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %curr, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont74, %ifcont
  %curr3 = load i64, ptr %curr, align 4
  %netmp = icmp ne i64 %curr3, 0
  %whilecond4 = icmp ne i1 %netmp, false
  br i1 %whilecond4, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %curr5 = load i64, ptr %curr, align 4
  %addtmp6 = add i64 %curr5, 0
  %calltmp7 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp6)
  %raw.value8 = extractvalue { i64, ptr, i8 } %calltmp7, 0
  %target9 = load i64, ptr %target.addr, align 4
  %eqtmp10 = icmp eq i64 %raw.value8, %target9
  %ifcond11 = icmp ne i1 %eqtmp10, false
  br i1 %ifcond11, label %then12, label %ifcont74

then12:                                           ; preds = %whilebody
  %allocator = alloca i64, align 8
  %header13 = load i64, ptr %header.addr, align 4
  %addtmp14 = add i64 %header13, 24
  %calltmp15 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp14)
  %raw.value16 = extractvalue { i64, ptr, i8 } %calltmp15, 0
  store i64 %raw.value16, ptr %allocator, align 4
  %node = alloca i64, align 8
  %allocator17 = load i64, ptr %allocator, align 4
  %calltmp18 = call { i64, ptr, i8 } @allocator.NodeAllocator_alloc(i64 %allocator17)
  %raw.value19 = extractvalue { i64, ptr, i8 } %calltmp18, 0
  %andtmp = and i64 %raw.value19, 281474976710655
  store i64 %andtmp, ptr %node, align 4
  %node20 = load i64, ptr %node, align 4
  %eqtmp21 = icmp eq i64 %node20, 0
  %ifcond22 = icmp ne i1 %eqtmp21, false
  br i1 %ifcond22, label %then23, label %ifcont24

then23:                                           ; preds = %then12
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont24:                                         ; preds = %then12
  %next = alloca i64, align 8
  %curr25 = load i64, ptr %curr, align 4
  %addtmp26 = add i64 %curr25, 8
  %calltmp27 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp26)
  %raw.value28 = extractvalue { i64, ptr, i8 } %calltmp27, 0
  store i64 %raw.value28, ptr %next, align 4
  %node29 = load i64, ptr %node, align 4
  %addtmp30 = add i64 %node29, 0
  %val31 = load i64, ptr %val.addr, align 4
  %calltmp32 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp30, i64 %val31)
  %raw.value33 = extractvalue { i8, ptr, i8 } %calltmp32, 0
  %node34 = load i64, ptr %node, align 4
  %addtmp35 = add i64 %node34, 8
  %next36 = load i64, ptr %next, align 4
  %calltmp37 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp35, i64 %next36)
  %raw.value38 = extractvalue { i8, ptr, i8 } %calltmp37, 0
  %node39 = load i64, ptr %node, align 4
  %addtmp40 = add i64 %node39, 16
  %curr41 = load i64, ptr %curr, align 4
  %calltmp42 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp40, i64 %curr41)
  %raw.value43 = extractvalue { i8, ptr, i8 } %calltmp42, 0
  %curr44 = load i64, ptr %curr, align 4
  %addtmp45 = add i64 %curr44, 8
  %node46 = load i64, ptr %node, align 4
  %calltmp47 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp45, i64 %node46)
  %raw.value48 = extractvalue { i8, ptr, i8 } %calltmp47, 0
  %next49 = load i64, ptr %next, align 4
  %eqtmp50 = icmp eq i64 %next49, 0
  %ifcond51 = icmp ne i1 %eqtmp50, false
  br i1 %ifcond51, label %then52, label %else

then52:                                           ; preds = %ifcont24
  %header53 = load i64, ptr %header.addr, align 4
  %addtmp54 = add i64 %header53, 8
  %node55 = load i64, ptr %node, align 4
  %calltmp56 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp54, i64 %node55)
  %raw.value57 = extractvalue { i8, ptr, i8 } %calltmp56, 0
  br label %ifcont63

else:                                             ; preds = %ifcont24
  %next58 = load i64, ptr %next, align 4
  %addtmp59 = add i64 %next58, 16
  %node60 = load i64, ptr %node, align 4
  %calltmp61 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp59, i64 %node60)
  %raw.value62 = extractvalue { i8, ptr, i8 } %calltmp61, 0
  br label %ifcont63

ifcont63:                                         ; preds = %else, %then52
  %count = alloca i64, align 8
  %header64 = load i64, ptr %header.addr, align 4
  %addtmp65 = add i64 %header64, 16
  %calltmp66 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp65)
  %raw.value67 = extractvalue { i64, ptr, i8 } %calltmp66, 0
  store i64 %raw.value67, ptr %count, align 4
  %header68 = load i64, ptr %header.addr, align 4
  %addtmp69 = add i64 %header68, 16
  %count70 = load i64, ptr %count, align 4
  %addtmp71 = add i64 %count70, 1
  %calltmp72 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp69, i64 %addtmp71)
  %raw.value73 = extractvalue { i8, ptr, i8 } %calltmp72, 0
  ret { i8, ptr, i8 } zeroinitializer

ifcont74:                                         ; preds = %whilebody
  %curr75 = load i64, ptr %curr, align 4
  %addtmp76 = add i64 %curr75, 8
  %calltmp77 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp76)
  %raw.value78 = extractvalue { i64, ptr, i8 } %calltmp77, 0
  store i64 %raw.value78, ptr %curr, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }
}

define linkonce_odr { i64, ptr, i8 } @doubly.DList_count(i64 %header) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i64, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 16
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %raw.value, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr i32 @__doubly_init() {
entry:
  ret i32 0
}

define linkonce_odr { i64, ptr, i8 } @sorted.SortedList_create() {
entry:
  %calltmp = call { i64, ptr, i8 } @doubly.DList_create()
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %raw.value, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i8, ptr, i8 } @sorted.SortedList_destroy(i64 %header) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %calltmp = call { i8, ptr, i8 } @doubly.DList_destroy(i64 %header1)
  %raw.value = extractvalue { i8, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { i8, ptr, i8 } undef, i8 %raw.value, 0
  %result.err = insertvalue { i8, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i8, ptr, i8 } %result.err, i8 0, 2
  ret { i8, ptr, i8 } %result.is_error
}

define linkonce_odr { i8, ptr, i8 } @sorted.SortedList_insert(i64 %header, i64 %val) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  %head = alloca i64, align 8
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 0
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %head, align 4
  %head3 = load i64, ptr %head, align 4
  %eqtmp4 = icmp eq i64 %head3, 0
  %ifcond5 = icmp ne i1 %eqtmp4, false
  br i1 %ifcond5, label %then6, label %ifcont11

then6:                                            ; preds = %ifcont
  %header7 = load i64, ptr %header.addr, align 4
  %val8 = load i64, ptr %val.addr, align 4
  %calltmp9 = call { i8, ptr, i8 } @doubly.DList_push_front(i64 %header7, i64 %val8)
  %raw.value10 = extractvalue { i8, ptr, i8 } %calltmp9, 0
  %result.val = insertvalue { i8, ptr, i8 } undef, i8 %raw.value10, 0
  %result.err = insertvalue { i8, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i8, ptr, i8 } %result.err, i8 0, 2
  ret { i8, ptr, i8 } %result.is_error

ifcont11:                                         ; preds = %ifcont
  %curr = alloca i64, align 8
  %head12 = load i64, ptr %head, align 4
  store i64 %head12, ptr %curr, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont84, %ifcont11
  %curr13 = load i64, ptr %curr, align 4
  %netmp = icmp ne i64 %curr13, 0
  %whilecond14 = icmp ne i1 %netmp, false
  br i1 %whilecond14, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %curr_val = alloca i64, align 8
  %curr15 = load i64, ptr %curr, align 4
  %addtmp16 = add i64 %curr15, 0
  %calltmp17 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp16)
  %raw.value18 = extractvalue { i64, ptr, i8 } %calltmp17, 0
  store i64 %raw.value18, ptr %curr_val, align 4
  %val19 = load i64, ptr %val.addr, align 4
  %curr_val20 = load i64, ptr %curr_val, align 4
  %letmp = icmp sle i64 %val19, %curr_val20
  %ifcond21 = icmp ne i1 %letmp, false
  br i1 %ifcond21, label %then22, label %ifcont84

then22:                                           ; preds = %whilebody
  %allocator = alloca i64, align 8
  %header23 = load i64, ptr %header.addr, align 4
  %addtmp24 = add i64 %header23, 24
  %calltmp25 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp24)
  %raw.value26 = extractvalue { i64, ptr, i8 } %calltmp25, 0
  store i64 %raw.value26, ptr %allocator, align 4
  %node = alloca i64, align 8
  %allocator27 = load i64, ptr %allocator, align 4
  %calltmp28 = call { i64, ptr, i8 } @allocator.NodeAllocator_alloc(i64 %allocator27)
  %raw.value29 = extractvalue { i64, ptr, i8 } %calltmp28, 0
  store i64 %raw.value29, ptr %node, align 4
  %node30 = load i64, ptr %node, align 4
  %eqtmp31 = icmp eq i64 %node30, 0
  %ifcond32 = icmp ne i1 %eqtmp31, false
  br i1 %ifcond32, label %then33, label %ifcont34

then33:                                           ; preds = %then22
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont34:                                         ; preds = %then22
  %prev = alloca i64, align 8
  %curr35 = load i64, ptr %curr, align 4
  %addtmp36 = add i64 %curr35, 16
  %calltmp37 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp36)
  %raw.value38 = extractvalue { i64, ptr, i8 } %calltmp37, 0
  store i64 %raw.value38, ptr %prev, align 4
  %node39 = load i64, ptr %node, align 4
  %addtmp40 = add i64 %node39, 0
  %val41 = load i64, ptr %val.addr, align 4
  %calltmp42 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp40, i64 %val41)
  %raw.value43 = extractvalue { i8, ptr, i8 } %calltmp42, 0
  %node44 = load i64, ptr %node, align 4
  %addtmp45 = add i64 %node44, 8
  %curr46 = load i64, ptr %curr, align 4
  %calltmp47 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp45, i64 %curr46)
  %raw.value48 = extractvalue { i8, ptr, i8 } %calltmp47, 0
  %node49 = load i64, ptr %node, align 4
  %addtmp50 = add i64 %node49, 16
  %prev51 = load i64, ptr %prev, align 4
  %calltmp52 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp50, i64 %prev51)
  %raw.value53 = extractvalue { i8, ptr, i8 } %calltmp52, 0
  %curr54 = load i64, ptr %curr, align 4
  %addtmp55 = add i64 %curr54, 16
  %node56 = load i64, ptr %node, align 4
  %calltmp57 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp55, i64 %node56)
  %raw.value58 = extractvalue { i8, ptr, i8 } %calltmp57, 0
  %prev59 = load i64, ptr %prev, align 4
  %eqtmp60 = icmp eq i64 %prev59, 0
  %ifcond61 = icmp ne i1 %eqtmp60, false
  br i1 %ifcond61, label %then62, label %else

then62:                                           ; preds = %ifcont34
  %header63 = load i64, ptr %header.addr, align 4
  %addtmp64 = add i64 %header63, 0
  %node65 = load i64, ptr %node, align 4
  %calltmp66 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp64, i64 %node65)
  %raw.value67 = extractvalue { i8, ptr, i8 } %calltmp66, 0
  br label %ifcont73

else:                                             ; preds = %ifcont34
  %prev68 = load i64, ptr %prev, align 4
  %addtmp69 = add i64 %prev68, 8
  %node70 = load i64, ptr %node, align 4
  %calltmp71 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp69, i64 %node70)
  %raw.value72 = extractvalue { i8, ptr, i8 } %calltmp71, 0
  br label %ifcont73

ifcont73:                                         ; preds = %else, %then62
  %count = alloca i64, align 8
  %header74 = load i64, ptr %header.addr, align 4
  %addtmp75 = add i64 %header74, 16
  %calltmp76 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp75)
  %raw.value77 = extractvalue { i64, ptr, i8 } %calltmp76, 0
  store i64 %raw.value77, ptr %count, align 4
  %header78 = load i64, ptr %header.addr, align 4
  %addtmp79 = add i64 %header78, 16
  %count80 = load i64, ptr %count, align 4
  %addtmp81 = add i64 %count80, 1
  %calltmp82 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp79, i64 %addtmp81)
  %raw.value83 = extractvalue { i8, ptr, i8 } %calltmp82, 0
  ret { i8, ptr, i8 } zeroinitializer

ifcont84:                                         ; preds = %whilebody
  %curr85 = load i64, ptr %curr, align 4
  %addtmp86 = add i64 %curr85, 8
  %calltmp87 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp86)
  %raw.value88 = extractvalue { i64, ptr, i8 } %calltmp87, 0
  store i64 %raw.value88, ptr %curr, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %header89 = load i64, ptr %header.addr, align 4
  %val90 = load i64, ptr %val.addr, align 4
  %calltmp91 = call { i8, ptr, i8 } @doubly.DList_push_back(i64 %header89, i64 %val90)
  %raw.value92 = extractvalue { i8, ptr, i8 } %calltmp91, 0
  %result.val93 = insertvalue { i8, ptr, i8 } undef, i8 %raw.value92, 0
  %result.err94 = insertvalue { i8, ptr, i8 } %result.val93, ptr null, 1
  %result.is_error95 = insertvalue { i8, ptr, i8 } %result.err94, i8 0, 2
  ret { i8, ptr, i8 } %result.is_error95
}

define linkonce_odr { i64, ptr, i8 } @sorted.SortedList_pop_front(i64 %header) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %calltmp = call { i64, ptr, i8 } @doubly.DList_pop_front(i64 %header1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %raw.value, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @sorted.SortedList_pop_back(i64 %header) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %calltmp = call { i64, ptr, i8 } @doubly.DList_pop_back(i64 %header1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %raw.value, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @sorted.SortedList_count(i64 %header) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %calltmp = call { i64, ptr, i8 } @doubly.DList_count(i64 %header1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %raw.value, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr i32 @__sorted_init() {
entry:
  ret i32 0
}

define linkonce_odr { i64, ptr, i8 } @skiplist.SkipList_create() {
entry:
  %header_ptr = call ptr @npk_alloc(i64 8)
  %wild_ptr = call ptr @npk_alloc(i64 48)
  store ptr %wild_ptr, ptr %header_ptr, align 8
  %header_ptr1 = load ptr, ptr %header_ptr, align 8
  %eqtmp = icmp eq ptr %header_ptr1, null
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i64, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %header = alloca i64, align 8
  %header_ptr2 = load ptr, ptr %header_ptr, align 8
  %header_ptr3 = load ptr, ptr %header_ptr, align 8
  %cast.ptrtoint = ptrtoint ptr %header_ptr3 to i64
  %andtmp = and i64 %cast.ptrtoint, 281474976710655
  store i64 %andtmp, ptr %header, align 4
  %allocator = alloca i64, align 8
  %calltmp = call { i64, ptr, i8 } @allocator.NodeAllocator_create(i64 136)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %allocator, align 4
  %allocator4 = load i64, ptr %allocator, align 4
  %eqtmp5 = icmp eq i64 %allocator4, 0
  %ifcond6 = icmp ne i1 %eqtmp5, false
  br i1 %ifcond6, label %then7, label %ifcont9

then7:                                            ; preds = %ifcont
  %header_ptr8 = load ptr, ptr %header_ptr, align 8
  call void @npk_free(ptr %header_ptr8)
  ret { i64, ptr, i8 } zeroinitializer

ifcont9:                                          ; preds = %ifcont
  %head = alloca i64, align 8
  %allocator10 = load i64, ptr %allocator, align 4
  %calltmp11 = call { i64, ptr, i8 } @allocator.NodeAllocator_alloc(i64 %allocator10)
  %raw.value12 = extractvalue { i64, ptr, i8 } %calltmp11, 0
  store i64 %raw.value12, ptr %head, align 4
  %head13 = load i64, ptr %head, align 4
  %eqtmp14 = icmp eq i64 %head13, 0
  %ifcond15 = icmp ne i1 %eqtmp14, false
  br i1 %ifcond15, label %then16, label %ifcont21

then16:                                           ; preds = %ifcont9
  %allocator17 = load i64, ptr %allocator, align 4
  %calltmp18 = call { i8, ptr, i8 } @allocator.NodeAllocator_destroy(i64 %allocator17)
  %raw.value19 = extractvalue { i8, ptr, i8 } %calltmp18, 0
  %header_ptr20 = load ptr, ptr %header_ptr, align 8
  call void @npk_free(ptr %header_ptr20)
  ret { i64, ptr, i8 } zeroinitializer

ifcont21:                                         ; preds = %ifcont9
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %ifcont21
  %i22 = load i64, ptr %i, align 4
  %lttmp = icmp slt i64 %i22, 16
  %whilecond23 = icmp ne i1 %lttmp, false
  br i1 %whilecond23, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %head24 = load i64, ptr %head, align 4
  %addtmp = add i64 %head24, 8
  %i25 = load i64, ptr %i, align 4
  %multmp = mul i64 %i25, 8
  %addtmp26 = add i64 %addtmp, %multmp
  %calltmp27 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp26, i64 0)
  %raw.value28 = extractvalue { i8, ptr, i8 } %calltmp27, 0
  %i29 = load i64, ptr %i, align 4
  %addtmp30 = add i64 %i29, 1
  store i64 %addtmp30, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %header31 = load i64, ptr %header, align 4
  %addtmp32 = add i64 %header31, 0
  %head33 = load i64, ptr %head, align 4
  %calltmp34 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp32, i64 %head33)
  %raw.value35 = extractvalue { i8, ptr, i8 } %calltmp34, 0
  %header36 = load i64, ptr %header, align 4
  %addtmp37 = add i64 %header36, 8
  %calltmp38 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp37, i64 0)
  %raw.value39 = extractvalue { i8, ptr, i8 } %calltmp38, 0
  %header40 = load i64, ptr %header, align 4
  %addtmp41 = add i64 %header40, 16
  %calltmp42 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp41, i64 16)
  %raw.value43 = extractvalue { i8, ptr, i8 } %calltmp42, 0
  %header44 = load i64, ptr %header, align 4
  %addtmp45 = add i64 %header44, 24
  %allocator46 = load i64, ptr %allocator, align 4
  %calltmp47 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp45, i64 %allocator46)
  %raw.value48 = extractvalue { i8, ptr, i8 } %calltmp47, 0
  %header49 = load i64, ptr %header, align 4
  %addtmp50 = add i64 %header49, 32
  %calltmp51 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp50, i64 1)
  %raw.value52 = extractvalue { i8, ptr, i8 } %calltmp51, 0
  %header53 = load i64, ptr %header, align 4
  %addtmp54 = add i64 %header53, 40
  %calltmp55 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp54, i64 12345)
  %raw.value56 = extractvalue { i8, ptr, i8 } %calltmp55, 0
  %header57 = load i64, ptr %header, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %header57, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i8, ptr, i8 } @skiplist.SkipList_destroy(i64 %header) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %allocator = alloca i64, align 8
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 24
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %allocator, align 4
  %allocator3 = load i64, ptr %allocator, align 4
  %calltmp4 = call { i8, ptr, i8 } @allocator.NodeAllocator_destroy(i64 %allocator3)
  %raw.value5 = extractvalue { i8, ptr, i8 } %calltmp4, 0
  %header6 = load i64, ptr %header.addr, align 4
  %cast.inttoptr = inttoptr i64 %header6 to ptr
  call void @npk_free(ptr %cast.inttoptr)
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i64, ptr, i8 } @skiplist.SkipList_random_level(i64 %header) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %seed = alloca i64, align 8
  %header1 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header1, 40
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %seed, align 4
  %level = alloca i64, align 8
  store i64 1, ptr %level, align 4
  %max_lvl = alloca i64, align 8
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp3 = add i64 %header2, 16
  %calltmp4 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp3)
  %raw.value5 = extractvalue { i64, ptr, i8 } %calltmp4, 0
  store i64 %raw.value5, ptr %max_lvl, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont, %entry
  %level6 = load i64, ptr %level, align 4
  %max_lvl7 = load i64, ptr %max_lvl, align 4
  %lttmp = icmp slt i64 %level6, %max_lvl7
  %whilecond8 = icmp ne i1 %lttmp, false
  br i1 %whilecond8, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %seed9 = load i64, ptr %seed, align 4
  %multmp = mul i64 %seed9, 1103515245
  %addtmp10 = add i64 %multmp, 12345
  %andtmp = and i64 %addtmp10, 2147483647
  store i64 %andtmp, ptr %seed, align 4
  %seed11 = load i64, ptr %seed, align 4
  %ashrtmp = ashr i64 %seed11, 16
  %andtmp12 = and i64 %ashrtmp, 1
  %eqtmp = icmp eq i64 %andtmp12, 1
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %whilebody
  br label %afterwhile

afterbreak:                                       ; No predecessors!
  br label %ifcont

ifcont:                                           ; preds = %afterbreak, %whilebody
  %level13 = load i64, ptr %level, align 4
  %addtmp14 = add i64 %level13, 1
  store i64 %addtmp14, ptr %level, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %then, %whilecond
  %header15 = load i64, ptr %header.addr, align 4
  %addtmp16 = add i64 %header15, 40
  %seed17 = load i64, ptr %seed, align 4
  %calltmp18 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp16, i64 %seed17)
  %raw.value19 = extractvalue { i8, ptr, i8 } %calltmp18, 0
  %level20 = load i64, ptr %level, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %level20, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i8, ptr, i8 } @skiplist.SkipList_insert(i64 %header, i64 %val) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  %head = alloca i64, align 8
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 0
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %head, align 4
  %level = alloca i64, align 8
  %header3 = load i64, ptr %header.addr, align 4
  %addtmp4 = add i64 %header3, 32
  %calltmp5 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp4)
  %raw.value6 = extractvalue { i64, ptr, i8 } %calltmp5, 0
  store i64 %raw.value6, ptr %level, align 4
  %update_ptr = call ptr @npk_alloc(i64 8)
  %wild_ptr = call ptr @npk_alloc(i64 128)
  store ptr %wild_ptr, ptr %update_ptr, align 8
  %update = alloca i64, align 8
  %update_ptr7 = load ptr, ptr %update_ptr, align 8
  %update_ptr8 = load ptr, ptr %update_ptr, align 8
  %cast.ptrtoint = ptrtoint ptr %update_ptr8 to i64
  %andtmp = and i64 %cast.ptrtoint, 281474976710655
  store i64 %andtmp, ptr %update, align 4
  %curr = alloca i64, align 8
  %head9 = load i64, ptr %head, align 4
  store i64 %head9, ptr %curr, align 4
  %i = alloca i64, align 8
  %level10 = load i64, ptr %level, align 4
  %subtmp = sub i64 %level10, 1
  store i64 %subtmp, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %afterwhile, %ifcont
  %i11 = load i64, ptr %i, align 4
  %getmp = icmp sge i64 %i11, 0
  %whilecond12 = icmp ne i1 %getmp, false
  br i1 %whilecond12, label %whilebody, label %afterwhile48

whilebody:                                        ; preds = %whilecond
  %next = alloca i64, align 8
  %curr13 = load i64, ptr %curr, align 4
  %addtmp14 = add i64 %curr13, 8
  %i15 = load i64, ptr %i, align 4
  %multmp = mul i64 %i15, 8
  %addtmp16 = add i64 %addtmp14, %multmp
  %calltmp17 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp16)
  %raw.value18 = extractvalue { i64, ptr, i8 } %calltmp17, 0
  store i64 %raw.value18, ptr %next, align 4
  br label %whilecond19

whilecond19:                                      ; preds = %ifcont38, %whilebody
  %next20 = load i64, ptr %next, align 4
  %netmp = icmp ne i64 %next20, 0
  %whilecond21 = icmp ne i1 %netmp, false
  br i1 %whilecond21, label %whilebody22, label %afterwhile

whilebody22:                                      ; preds = %whilecond19
  %next23 = load i64, ptr %next, align 4
  %addtmp24 = add i64 %next23, 0
  %calltmp25 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp24)
  %raw.value26 = extractvalue { i64, ptr, i8 } %calltmp25, 0
  %val27 = load i64, ptr %val.addr, align 4
  %lttmp = icmp slt i64 %raw.value26, %val27
  %ifcond28 = icmp ne i1 %lttmp, false
  br i1 %ifcond28, label %then29, label %else

then29:                                           ; preds = %whilebody22
  %next30 = load i64, ptr %next, align 4
  store i64 %next30, ptr %curr, align 4
  %curr31 = load i64, ptr %curr, align 4
  %addtmp32 = add i64 %curr31, 8
  %i33 = load i64, ptr %i, align 4
  %multmp34 = mul i64 %i33, 8
  %addtmp35 = add i64 %addtmp32, %multmp34
  %calltmp36 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp35)
  %raw.value37 = extractvalue { i64, ptr, i8 } %calltmp36, 0
  store i64 %raw.value37, ptr %next, align 4
  br label %ifcont38

else:                                             ; preds = %whilebody22
  br label %afterwhile

afterbreak:                                       ; No predecessors!
  br label %ifcont38

ifcont38:                                         ; preds = %afterbreak, %then29
  call void @npk_gc_safepoint()
  br label %whilecond19

afterwhile:                                       ; preds = %else, %whilecond19
  %update39 = load i64, ptr %update, align 4
  %i40 = load i64, ptr %i, align 4
  %multmp41 = mul i64 %i40, 8
  %addtmp42 = add i64 %update39, %multmp41
  %curr43 = load i64, ptr %curr, align 4
  %calltmp44 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp42, i64 %curr43)
  %raw.value45 = extractvalue { i8, ptr, i8 } %calltmp44, 0
  %i46 = load i64, ptr %i, align 4
  %subtmp47 = sub i64 %i46, 1
  store i64 %subtmp47, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile48:                                     ; preds = %whilecond
  %seed = alloca i64, align 8
  %header49 = load i64, ptr %header.addr, align 4
  %addtmp50 = add i64 %header49, 40
  %calltmp51 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp50)
  %raw.value52 = extractvalue { i64, ptr, i8 } %calltmp51, 0
  store i64 %raw.value52, ptr %seed, align 4
  %new_level = alloca i64, align 8
  store i64 1, ptr %new_level, align 4
  %max_lvl = alloca i64, align 8
  %header53 = load i64, ptr %header.addr, align 4
  %addtmp54 = add i64 %header53, 16
  %calltmp55 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp54)
  %raw.value56 = extractvalue { i64, ptr, i8 } %calltmp55, 0
  store i64 %raw.value56, ptr %max_lvl, align 4
  br label %whilecond57

whilecond57:                                      ; preds = %ifcont73, %afterwhile48
  %new_level58 = load i64, ptr %new_level, align 4
  %max_lvl59 = load i64, ptr %max_lvl, align 4
  %lttmp60 = icmp slt i64 %new_level58, %max_lvl59
  %whilecond61 = icmp ne i1 %lttmp60, false
  br i1 %whilecond61, label %whilebody62, label %afterwhile76

whilebody62:                                      ; preds = %whilecond57
  %seed63 = load i64, ptr %seed, align 4
  %multmp64 = mul i64 %seed63, 1103515245
  %addtmp65 = add i64 %multmp64, 12345
  %andtmp66 = and i64 %addtmp65, 2147483647
  store i64 %andtmp66, ptr %seed, align 4
  %seed67 = load i64, ptr %seed, align 4
  %ashrtmp = ashr i64 %seed67, 16
  %andtmp68 = and i64 %ashrtmp, 1
  %eqtmp69 = icmp eq i64 %andtmp68, 1
  %ifcond70 = icmp ne i1 %eqtmp69, false
  br i1 %ifcond70, label %then71, label %ifcont73

then71:                                           ; preds = %whilebody62
  br label %afterwhile76

afterbreak72:                                     ; No predecessors!
  br label %ifcont73

ifcont73:                                         ; preds = %afterbreak72, %whilebody62
  %new_level74 = load i64, ptr %new_level, align 4
  %addtmp75 = add i64 %new_level74, 1
  store i64 %addtmp75, ptr %new_level, align 4
  call void @npk_gc_safepoint()
  br label %whilecond57

afterwhile76:                                     ; preds = %then71, %whilecond57
  %header77 = load i64, ptr %header.addr, align 4
  %addtmp78 = add i64 %header77, 40
  %seed79 = load i64, ptr %seed, align 4
  %calltmp80 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp78, i64 %seed79)
  %raw.value81 = extractvalue { i8, ptr, i8 } %calltmp80, 0
  %new_level82 = load i64, ptr %new_level, align 4
  %level83 = load i64, ptr %level, align 4
  %gttmp = icmp sgt i64 %new_level82, %level83
  %ifcond84 = icmp ne i1 %gttmp, false
  br i1 %ifcond84, label %then85, label %ifcont109

then85:                                           ; preds = %afterwhile76
  %level86 = load i64, ptr %level, align 4
  store i64 %level86, ptr %i, align 4
  br label %whilecond87

whilecond87:                                      ; preds = %whilebody92, %then85
  %i88 = load i64, ptr %i, align 4
  %new_level89 = load i64, ptr %new_level, align 4
  %lttmp90 = icmp slt i64 %i88, %new_level89
  %whilecond91 = icmp ne i1 %lttmp90, false
  br i1 %whilecond91, label %whilebody92, label %afterwhile102

whilebody92:                                      ; preds = %whilecond87
  %update93 = load i64, ptr %update, align 4
  %i94 = load i64, ptr %i, align 4
  %multmp95 = mul i64 %i94, 8
  %addtmp96 = add i64 %update93, %multmp95
  %head97 = load i64, ptr %head, align 4
  %calltmp98 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp96, i64 %head97)
  %raw.value99 = extractvalue { i8, ptr, i8 } %calltmp98, 0
  %i100 = load i64, ptr %i, align 4
  %addtmp101 = add i64 %i100, 1
  store i64 %addtmp101, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond87

afterwhile102:                                    ; preds = %whilecond87
  %header103 = load i64, ptr %header.addr, align 4
  %addtmp104 = add i64 %header103, 32
  %new_level105 = load i64, ptr %new_level, align 4
  %calltmp106 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp104, i64 %new_level105)
  %raw.value107 = extractvalue { i8, ptr, i8 } %calltmp106, 0
  %new_level108 = load i64, ptr %new_level, align 4
  store i64 %new_level108, ptr %level, align 4
  br label %ifcont109

ifcont109:                                        ; preds = %afterwhile102, %afterwhile76
  %allocator = alloca i64, align 8
  %header110 = load i64, ptr %header.addr, align 4
  %addtmp111 = add i64 %header110, 24
  %calltmp112 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp111)
  %raw.value113 = extractvalue { i64, ptr, i8 } %calltmp112, 0
  store i64 %raw.value113, ptr %allocator, align 4
  %node = alloca i64, align 8
  %allocator114 = load i64, ptr %allocator, align 4
  %calltmp115 = call { i64, ptr, i8 } @allocator.NodeAllocator_alloc(i64 %allocator114)
  %raw.value116 = extractvalue { i64, ptr, i8 } %calltmp115, 0
  store i64 %raw.value116, ptr %node, align 4
  %node117 = load i64, ptr %node, align 4
  %addtmp118 = add i64 %node117, 0
  %val119 = load i64, ptr %val.addr, align 4
  %calltmp120 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp118, i64 %val119)
  %raw.value121 = extractvalue { i8, ptr, i8 } %calltmp120, 0
  store i64 0, ptr %i, align 4
  br label %whilecond122

whilecond122:                                     ; preds = %whilebody127, %ifcont109
  %i123 = load i64, ptr %i, align 4
  %new_level124 = load i64, ptr %new_level, align 4
  %lttmp125 = icmp slt i64 %i123, %new_level124
  %whilecond126 = icmp ne i1 %lttmp125, false
  br i1 %whilecond126, label %whilebody127, label %afterwhile159

whilebody127:                                     ; preds = %whilecond122
  %upd_node = alloca i64, align 8
  %update128 = load i64, ptr %update, align 4
  %i129 = load i64, ptr %i, align 4
  %multmp130 = mul i64 %i129, 8
  %addtmp131 = add i64 %update128, %multmp130
  %calltmp132 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp131)
  %raw.value133 = extractvalue { i64, ptr, i8 } %calltmp132, 0
  store i64 %raw.value133, ptr %upd_node, align 4
  %fwd = alloca i64, align 8
  %upd_node134 = load i64, ptr %upd_node, align 4
  %addtmp135 = add i64 %upd_node134, 8
  %i136 = load i64, ptr %i, align 4
  %multmp137 = mul i64 %i136, 8
  %addtmp138 = add i64 %addtmp135, %multmp137
  %calltmp139 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp138)
  %raw.value140 = extractvalue { i64, ptr, i8 } %calltmp139, 0
  store i64 %raw.value140, ptr %fwd, align 4
  %node141 = load i64, ptr %node, align 4
  %addtmp142 = add i64 %node141, 8
  %i143 = load i64, ptr %i, align 4
  %multmp144 = mul i64 %i143, 8
  %addtmp145 = add i64 %addtmp142, %multmp144
  %fwd146 = load i64, ptr %fwd, align 4
  %calltmp147 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp145, i64 %fwd146)
  %raw.value148 = extractvalue { i8, ptr, i8 } %calltmp147, 0
  %upd_node149 = load i64, ptr %upd_node, align 4
  %addtmp150 = add i64 %upd_node149, 8
  %i151 = load i64, ptr %i, align 4
  %multmp152 = mul i64 %i151, 8
  %addtmp153 = add i64 %addtmp150, %multmp152
  %node154 = load i64, ptr %node, align 4
  %calltmp155 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp153, i64 %node154)
  %raw.value156 = extractvalue { i8, ptr, i8 } %calltmp155, 0
  %i157 = load i64, ptr %i, align 4
  %addtmp158 = add i64 %i157, 1
  store i64 %addtmp158, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond122

afterwhile159:                                    ; preds = %whilecond122
  br label %whilecond160

whilecond160:                                     ; preds = %whilebody164, %afterwhile159
  %i161 = load i64, ptr %i, align 4
  %lttmp162 = icmp slt i64 %i161, 16
  %whilecond163 = icmp ne i1 %lttmp162, false
  br i1 %whilecond163, label %whilebody164, label %afterwhile174

whilebody164:                                     ; preds = %whilecond160
  %node165 = load i64, ptr %node, align 4
  %addtmp166 = add i64 %node165, 8
  %i167 = load i64, ptr %i, align 4
  %multmp168 = mul i64 %i167, 8
  %addtmp169 = add i64 %addtmp166, %multmp168
  %calltmp170 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp169, i64 0)
  %raw.value171 = extractvalue { i8, ptr, i8 } %calltmp170, 0
  %i172 = load i64, ptr %i, align 4
  %addtmp173 = add i64 %i172, 1
  store i64 %addtmp173, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond160

afterwhile174:                                    ; preds = %whilecond160
  %update_ptr175 = load ptr, ptr %update_ptr, align 8
  call void @npk_free(ptr %update_ptr175)
  %count = alloca i64, align 8
  %header176 = load i64, ptr %header.addr, align 4
  %addtmp177 = add i64 %header176, 8
  %calltmp178 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp177)
  %raw.value179 = extractvalue { i64, ptr, i8 } %calltmp178, 0
  store i64 %raw.value179, ptr %count, align 4
  %header180 = load i64, ptr %header.addr, align 4
  %addtmp181 = add i64 %header180, 8
  %count182 = load i64, ptr %count, align 4
  %addtmp183 = add i64 %count182, 1
  %calltmp184 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp181, i64 %addtmp183)
  %raw.value185 = extractvalue { i8, ptr, i8 } %calltmp184, 0
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i8, ptr, i8 } @skiplist.SkipList_contains(i64 %header, i64 %val) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %head = alloca i64, align 8
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 0
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %head, align 4
  %level = alloca i64, align 8
  %header3 = load i64, ptr %header.addr, align 4
  %addtmp4 = add i64 %header3, 32
  %calltmp5 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp4)
  %raw.value6 = extractvalue { i64, ptr, i8 } %calltmp5, 0
  store i64 %raw.value6, ptr %level, align 4
  %curr = alloca i64, align 8
  %head7 = load i64, ptr %head, align 4
  store i64 %head7, ptr %curr, align 4
  %i = alloca i64, align 8
  %level8 = load i64, ptr %level, align 4
  %subtmp = sub i64 %level8, 1
  store i64 %subtmp, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %afterwhile, %ifcont
  %i9 = load i64, ptr %i, align 4
  %getmp = icmp sge i64 %i9, 0
  %whilecond10 = icmp ne i1 %getmp, false
  br i1 %whilecond10, label %whilebody, label %afterwhile40

whilebody:                                        ; preds = %whilecond
  %next = alloca i64, align 8
  %curr11 = load i64, ptr %curr, align 4
  %addtmp12 = add i64 %curr11, 8
  %i13 = load i64, ptr %i, align 4
  %multmp = mul i64 %i13, 8
  %addtmp14 = add i64 %addtmp12, %multmp
  %calltmp15 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp14)
  %raw.value16 = extractvalue { i64, ptr, i8 } %calltmp15, 0
  store i64 %raw.value16, ptr %next, align 4
  br label %whilecond17

whilecond17:                                      ; preds = %ifcont37, %whilebody
  %next18 = load i64, ptr %next, align 4
  %netmp = icmp ne i64 %next18, 0
  %whilecond19 = icmp ne i1 %netmp, false
  br i1 %whilecond19, label %whilebody20, label %afterwhile

whilebody20:                                      ; preds = %whilecond17
  %next_val = alloca i64, align 8
  %next21 = load i64, ptr %next, align 4
  %addtmp22 = add i64 %next21, 0
  %calltmp23 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp22)
  %raw.value24 = extractvalue { i64, ptr, i8 } %calltmp23, 0
  store i64 %raw.value24, ptr %next_val, align 4
  %next_val25 = load i64, ptr %next_val, align 4
  %val26 = load i64, ptr %val.addr, align 4
  %lttmp = icmp slt i64 %next_val25, %val26
  %ifcond27 = icmp ne i1 %lttmp, false
  br i1 %ifcond27, label %then28, label %else

then28:                                           ; preds = %whilebody20
  %next29 = load i64, ptr %next, align 4
  store i64 %next29, ptr %curr, align 4
  %curr30 = load i64, ptr %curr, align 4
  %addtmp31 = add i64 %curr30, 8
  %i32 = load i64, ptr %i, align 4
  %multmp33 = mul i64 %i32, 8
  %addtmp34 = add i64 %addtmp31, %multmp33
  %calltmp35 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp34)
  %raw.value36 = extractvalue { i64, ptr, i8 } %calltmp35, 0
  store i64 %raw.value36, ptr %next, align 4
  br label %ifcont37

else:                                             ; preds = %whilebody20
  br label %afterwhile

afterbreak:                                       ; No predecessors!
  br label %ifcont37

ifcont37:                                         ; preds = %afterbreak, %then28
  call void @npk_gc_safepoint()
  br label %whilecond17

afterwhile:                                       ; preds = %else, %whilecond17
  %i38 = load i64, ptr %i, align 4
  %subtmp39 = sub i64 %i38, 1
  store i64 %subtmp39, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile40:                                     ; preds = %whilecond
  %fwd = alloca i64, align 8
  %curr41 = load i64, ptr %curr, align 4
  %addtmp42 = add i64 %curr41, 8
  %calltmp43 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp42)
  %raw.value44 = extractvalue { i64, ptr, i8 } %calltmp43, 0
  store i64 %raw.value44, ptr %fwd, align 4
  %fwd45 = load i64, ptr %fwd, align 4
  %netmp46 = icmp ne i64 %fwd45, 0
  %ifcond47 = icmp ne i1 %netmp46, false
  br i1 %ifcond47, label %then48, label %ifcont58

then48:                                           ; preds = %afterwhile40
  %fwd49 = load i64, ptr %fwd, align 4
  %addtmp50 = add i64 %fwd49, 0
  %calltmp51 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp50)
  %raw.value52 = extractvalue { i64, ptr, i8 } %calltmp51, 0
  %val53 = load i64, ptr %val.addr, align 4
  %eqtmp54 = icmp eq i64 %raw.value52, %val53
  %ifcond55 = icmp ne i1 %eqtmp54, false
  br i1 %ifcond55, label %then56, label %ifcont57

then56:                                           ; preds = %then48
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont57:                                         ; preds = %then48
  br label %ifcont58

ifcont58:                                         ; preds = %ifcont57, %afterwhile40
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i8, ptr, i8 } @skiplist.SkipList_remove(i64 %header, i64 %val) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %head = alloca i64, align 8
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 0
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %head, align 4
  %level = alloca i64, align 8
  %header3 = load i64, ptr %header.addr, align 4
  %addtmp4 = add i64 %header3, 32
  %calltmp5 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp4)
  %raw.value6 = extractvalue { i64, ptr, i8 } %calltmp5, 0
  store i64 %raw.value6, ptr %level, align 4
  %update_ptr = call ptr @npk_alloc(i64 8)
  %wild_ptr = call ptr @npk_alloc(i64 128)
  store ptr %wild_ptr, ptr %update_ptr, align 8
  %update = alloca i64, align 8
  %update_ptr7 = load ptr, ptr %update_ptr, align 8
  %update_ptr8 = load ptr, ptr %update_ptr, align 8
  %cast.ptrtoint = ptrtoint ptr %update_ptr8 to i64
  %andtmp = and i64 %cast.ptrtoint, 281474976710655
  store i64 %andtmp, ptr %update, align 4
  %curr = alloca i64, align 8
  %head9 = load i64, ptr %head, align 4
  store i64 %head9, ptr %curr, align 4
  %i = alloca i64, align 8
  %level10 = load i64, ptr %level, align 4
  %subtmp = sub i64 %level10, 1
  store i64 %subtmp, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %afterwhile, %ifcont
  %i11 = load i64, ptr %i, align 4
  %getmp = icmp sge i64 %i11, 0
  %whilecond12 = icmp ne i1 %getmp, false
  br i1 %whilecond12, label %whilebody, label %afterwhile48

whilebody:                                        ; preds = %whilecond
  %next = alloca i64, align 8
  %curr13 = load i64, ptr %curr, align 4
  %addtmp14 = add i64 %curr13, 8
  %i15 = load i64, ptr %i, align 4
  %multmp = mul i64 %i15, 8
  %addtmp16 = add i64 %addtmp14, %multmp
  %calltmp17 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp16)
  %raw.value18 = extractvalue { i64, ptr, i8 } %calltmp17, 0
  store i64 %raw.value18, ptr %next, align 4
  br label %whilecond19

whilecond19:                                      ; preds = %ifcont38, %whilebody
  %next20 = load i64, ptr %next, align 4
  %netmp = icmp ne i64 %next20, 0
  %whilecond21 = icmp ne i1 %netmp, false
  br i1 %whilecond21, label %whilebody22, label %afterwhile

whilebody22:                                      ; preds = %whilecond19
  %next23 = load i64, ptr %next, align 4
  %addtmp24 = add i64 %next23, 0
  %calltmp25 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp24)
  %raw.value26 = extractvalue { i64, ptr, i8 } %calltmp25, 0
  %val27 = load i64, ptr %val.addr, align 4
  %lttmp = icmp slt i64 %raw.value26, %val27
  %ifcond28 = icmp ne i1 %lttmp, false
  br i1 %ifcond28, label %then29, label %else

then29:                                           ; preds = %whilebody22
  %next30 = load i64, ptr %next, align 4
  store i64 %next30, ptr %curr, align 4
  %curr31 = load i64, ptr %curr, align 4
  %addtmp32 = add i64 %curr31, 8
  %i33 = load i64, ptr %i, align 4
  %multmp34 = mul i64 %i33, 8
  %addtmp35 = add i64 %addtmp32, %multmp34
  %calltmp36 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp35)
  %raw.value37 = extractvalue { i64, ptr, i8 } %calltmp36, 0
  store i64 %raw.value37, ptr %next, align 4
  br label %ifcont38

else:                                             ; preds = %whilebody22
  br label %afterwhile

afterbreak:                                       ; No predecessors!
  br label %ifcont38

ifcont38:                                         ; preds = %afterbreak, %then29
  call void @npk_gc_safepoint()
  br label %whilecond19

afterwhile:                                       ; preds = %else, %whilecond19
  %update39 = load i64, ptr %update, align 4
  %i40 = load i64, ptr %i, align 4
  %multmp41 = mul i64 %i40, 8
  %addtmp42 = add i64 %update39, %multmp41
  %curr43 = load i64, ptr %curr, align 4
  %calltmp44 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp42, i64 %curr43)
  %raw.value45 = extractvalue { i8, ptr, i8 } %calltmp44, 0
  %i46 = load i64, ptr %i, align 4
  %subtmp47 = sub i64 %i46, 1
  store i64 %subtmp47, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile48:                                     ; preds = %whilecond
  %fwd = alloca i64, align 8
  %curr49 = load i64, ptr %curr, align 4
  %addtmp50 = add i64 %curr49, 8
  %calltmp51 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp50)
  %raw.value52 = extractvalue { i64, ptr, i8 } %calltmp51, 0
  store i64 %raw.value52, ptr %fwd, align 4
  %fwd53 = load i64, ptr %fwd, align 4
  %netmp54 = icmp ne i64 %fwd53, 0
  %ifcond55 = icmp ne i1 %netmp54, false
  br i1 %ifcond55, label %then56, label %ifcont153

then56:                                           ; preds = %afterwhile48
  %fwd57 = load i64, ptr %fwd, align 4
  %addtmp58 = add i64 %fwd57, 0
  %calltmp59 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp58)
  %raw.value60 = extractvalue { i64, ptr, i8 } %calltmp59, 0
  %val61 = load i64, ptr %val.addr, align 4
  %eqtmp62 = icmp eq i64 %raw.value60, %val61
  %ifcond63 = icmp ne i1 %eqtmp62, false
  br i1 %ifcond63, label %then64, label %ifcont152

then64:                                           ; preds = %then56
  store i64 0, ptr %i, align 4
  br label %whilecond65

whilecond65:                                      ; preds = %ifcont89, %then64
  %i66 = load i64, ptr %i, align 4
  %level67 = load i64, ptr %level, align 4
  %lttmp68 = icmp slt i64 %i66, %level67
  %whilecond69 = icmp ne i1 %lttmp68, false
  br i1 %whilecond69, label %whilebody70, label %afterwhile106

whilebody70:                                      ; preds = %whilecond65
  %upd_node = alloca i64, align 8
  %update71 = load i64, ptr %update, align 4
  %i72 = load i64, ptr %i, align 4
  %multmp73 = mul i64 %i72, 8
  %addtmp74 = add i64 %update71, %multmp73
  %calltmp75 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp74)
  %raw.value76 = extractvalue { i64, ptr, i8 } %calltmp75, 0
  store i64 %raw.value76, ptr %upd_node, align 4
  %upd_node77 = load i64, ptr %upd_node, align 4
  %addtmp78 = add i64 %upd_node77, 8
  %i79 = load i64, ptr %i, align 4
  %multmp80 = mul i64 %i79, 8
  %addtmp81 = add i64 %addtmp78, %multmp80
  %calltmp82 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp81)
  %raw.value83 = extractvalue { i64, ptr, i8 } %calltmp82, 0
  %fwd84 = load i64, ptr %fwd, align 4
  %netmp85 = icmp ne i64 %raw.value83, %fwd84
  %ifcond86 = icmp ne i1 %netmp85, false
  br i1 %ifcond86, label %then87, label %ifcont89

then87:                                           ; preds = %whilebody70
  br label %afterwhile106

afterbreak88:                                     ; No predecessors!
  br label %ifcont89

ifcont89:                                         ; preds = %afterbreak88, %whilebody70
  %upd_node90 = load i64, ptr %upd_node, align 4
  %addtmp91 = add i64 %upd_node90, 8
  %i92 = load i64, ptr %i, align 4
  %multmp93 = mul i64 %i92, 8
  %addtmp94 = add i64 %addtmp91, %multmp93
  %fwd95 = load i64, ptr %fwd, align 4
  %addtmp96 = add i64 %fwd95, 8
  %i97 = load i64, ptr %i, align 4
  %multmp98 = mul i64 %i97, 8
  %addtmp99 = add i64 %addtmp96, %multmp98
  %calltmp100 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp99)
  %raw.value101 = extractvalue { i64, ptr, i8 } %calltmp100, 0
  %calltmp102 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp94, i64 %raw.value101)
  %raw.value103 = extractvalue { i8, ptr, i8 } %calltmp102, 0
  %i104 = load i64, ptr %i, align 4
  %addtmp105 = add i64 %i104, 1
  store i64 %addtmp105, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond65

afterwhile106:                                    ; preds = %then87, %whilecond65
  %allocator = alloca i64, align 8
  %header107 = load i64, ptr %header.addr, align 4
  %addtmp108 = add i64 %header107, 24
  %calltmp109 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp108)
  %raw.value110 = extractvalue { i64, ptr, i8 } %calltmp109, 0
  store i64 %raw.value110, ptr %allocator, align 4
  %allocator111 = load i64, ptr %allocator, align 4
  %fwd112 = load i64, ptr %fwd, align 4
  %calltmp113 = call { i8, ptr, i8 } @allocator.NodeAllocator_free(i64 %allocator111, i64 %fwd112)
  %raw.value114 = extractvalue { i8, ptr, i8 } %calltmp113, 0
  br label %whilecond115

whilecond115:                                     ; preds = %ifcont134, %afterwhile106
  %level116 = load i64, ptr %level, align 4
  %gttmp = icmp sgt i64 %level116, 1
  %whilecond117 = icmp ne i1 %gttmp, false
  br i1 %whilecond117, label %whilebody118, label %afterwhile135

whilebody118:                                     ; preds = %whilecond115
  %head119 = load i64, ptr %head, align 4
  %addtmp120 = add i64 %head119, 8
  %level121 = load i64, ptr %level, align 4
  %subtmp122 = sub i64 %level121, 1
  %multmp123 = mul i64 %subtmp122, 8
  %addtmp124 = add i64 %addtmp120, %multmp123
  %calltmp125 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp124)
  %raw.value126 = extractvalue { i64, ptr, i8 } %calltmp125, 0
  %eqtmp127 = icmp eq i64 %raw.value126, 0
  %ifcond128 = icmp ne i1 %eqtmp127, false
  br i1 %ifcond128, label %then129, label %else132

then129:                                          ; preds = %whilebody118
  %level130 = load i64, ptr %level, align 4
  %subtmp131 = sub i64 %level130, 1
  store i64 %subtmp131, ptr %level, align 4
  br label %ifcont134

else132:                                          ; preds = %whilebody118
  br label %afterwhile135

afterbreak133:                                    ; No predecessors!
  br label %ifcont134

ifcont134:                                        ; preds = %afterbreak133, %then129
  call void @npk_gc_safepoint()
  br label %whilecond115

afterwhile135:                                    ; preds = %else132, %whilecond115
  %header136 = load i64, ptr %header.addr, align 4
  %addtmp137 = add i64 %header136, 32
  %level138 = load i64, ptr %level, align 4
  %calltmp139 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp137, i64 %level138)
  %raw.value140 = extractvalue { i8, ptr, i8 } %calltmp139, 0
  %count = alloca i64, align 8
  %header141 = load i64, ptr %header.addr, align 4
  %addtmp142 = add i64 %header141, 8
  %calltmp143 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp142)
  %raw.value144 = extractvalue { i64, ptr, i8 } %calltmp143, 0
  store i64 %raw.value144, ptr %count, align 4
  %header145 = load i64, ptr %header.addr, align 4
  %addtmp146 = add i64 %header145, 8
  %count147 = load i64, ptr %count, align 4
  %subtmp148 = sub i64 %count147, 1
  %calltmp149 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp146, i64 %subtmp148)
  %raw.value150 = extractvalue { i8, ptr, i8 } %calltmp149, 0
  %update_ptr151 = load ptr, ptr %update_ptr, align 8
  call void @npk_free(ptr %update_ptr151)
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont152:                                        ; preds = %then56
  br label %ifcont153

ifcont153:                                        ; preds = %ifcont152, %afterwhile48
  %update_ptr154 = load ptr, ptr %update_ptr, align 8
  call void @npk_free(ptr %update_ptr154)
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i64, ptr, i8 } @skiplist.SkipList_count(i64 %header) {
entry:
  %header.addr = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 4
  %header1 = load i64, ptr %header.addr, align 4
  %eqtmp = icmp eq i64 %header1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i64, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %header2 = load i64, ptr %header.addr, align 4
  %addtmp = add i64 %header2, 8
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %raw.value, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr i32 @__skiplist_init() {
entry:
  ret i32 0
}

define i32 @failsafe(i32 %err) {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4
  call void @proc_exit(i32 1) #0
  unreachable
}

define { i64, ptr, i8 } @hash_int64(i64 %key) {
entry:
  %key.addr = alloca i64, align 8
  store i64 %key, ptr %key.addr, align 4
  %key1 = load i64, ptr %key.addr, align 4
  %key2 = load i64, ptr %key.addr, align 4
  %ashrtmp = ashr i64 %key2, 30
  %xortmp = xor i64 %key1, %ashrtmp
  store i64 %xortmp, ptr %key.addr, align 4
  %key3 = load i64, ptr %key.addr, align 4
  %multmp = mul i64 %key3, -4265267296055464877
  store i64 %multmp, ptr %key.addr, align 4
  %key4 = load i64, ptr %key.addr, align 4
  %key5 = load i64, ptr %key.addr, align 4
  %ashrtmp6 = ashr i64 %key5, 27
  %xortmp7 = xor i64 %key4, %ashrtmp6
  store i64 %xortmp7, ptr %key.addr, align 4
  %key8 = load i64, ptr %key.addr, align 4
  %multmp9 = mul i64 %key8, -4007235288047910137
  store i64 %multmp9, ptr %key.addr, align 4
  %key10 = load i64, ptr %key.addr, align 4
  %key11 = load i64, ptr %key.addr, align 4
  %ashrtmp12 = ashr i64 %key11, 31
  %xortmp13 = xor i64 %key10, %ashrtmp12
  store i64 %xortmp13, ptr %key.addr, align 4
  %key14 = load i64, ptr %key.addr, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %key14, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define i32 @main(i32 %0, ptr %1) {
entry:
  call void @npk_gc_init(i64 0, i64 0)
  call void @npk_args_init(i32 %0, ptr %1)
  call void @npk_streams_init()
  %num_items = alloca i64, align 8
  store i64 100000, ptr %num_items, align 4
  %slist = alloca i64, align 8
  %calltmp = call { i64, ptr, i8 } @singly.SList_create()
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %slist, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %entry
  %i1 = load i64, ptr %i, align 4
  %num_items2 = load i64, ptr %num_items, align 4
  %lttmp = icmp slt i64 %i1, %num_items2
  %whilecond3 = icmp ne i1 %lttmp, false
  br i1 %whilecond3, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %slist4 = load i64, ptr %slist, align 4
  %i5 = load i64, ptr %i, align 4
  %calltmp6 = call { i8, ptr, i8 } @singly.SList_push_front(i64 %slist4, i64 %i5)
  %raw.value7 = extractvalue { i8, ptr, i8 } %calltmp6, 0
  %i8 = load i64, ptr %i, align 4
  %addtmp = add i64 %i8, 1
  store i64 %addtmp, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %slist9 = load i64, ptr %slist, align 4
  %calltmp10 = call { i8, ptr, i8 } @singly.SList_destroy(i64 %slist9)
  %raw.value11 = extractvalue { i8, ptr, i8 } %calltmp10, 0
  %dlist = alloca i64, align 8
  %calltmp12 = call { i64, ptr, i8 } @doubly.DList_create()
  %raw.value13 = extractvalue { i64, ptr, i8 } %calltmp12, 0
  store i64 %raw.value13, ptr %dlist, align 4
  store i64 0, ptr %i, align 4
  br label %whilecond14

whilecond14:                                      ; preds = %whilebody19, %afterwhile
  %i15 = load i64, ptr %i, align 4
  %num_items16 = load i64, ptr %num_items, align 4
  %lttmp17 = icmp slt i64 %i15, %num_items16
  %whilecond18 = icmp ne i1 %lttmp17, false
  br i1 %whilecond18, label %whilebody19, label %afterwhile26

whilebody19:                                      ; preds = %whilecond14
  %dlist20 = load i64, ptr %dlist, align 4
  %i21 = load i64, ptr %i, align 4
  %calltmp22 = call { i8, ptr, i8 } @doubly.DList_push_back(i64 %dlist20, i64 %i21)
  %raw.value23 = extractvalue { i8, ptr, i8 } %calltmp22, 0
  %i24 = load i64, ptr %i, align 4
  %addtmp25 = add i64 %i24, 1
  store i64 %addtmp25, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond14

afterwhile26:                                     ; preds = %whilecond14
  %dlist27 = load i64, ptr %dlist, align 4
  %calltmp28 = call { i8, ptr, i8 } @doubly.DList_destroy(i64 %dlist27)
  %raw.value29 = extractvalue { i8, ptr, i8 } %calltmp28, 0
  %skip = alloca i64, align 8
  %calltmp30 = call { i64, ptr, i8 } @skiplist.SkipList_create()
  %raw.value31 = extractvalue { i64, ptr, i8 } %calltmp30, 0
  store i64 %raw.value31, ptr %skip, align 4
  store i64 0, ptr %i, align 4
  br label %whilecond32

whilecond32:                                      ; preds = %ifcont, %afterwhile26
  %i33 = load i64, ptr %i, align 4
  %num_items34 = load i64, ptr %num_items, align 4
  %lttmp35 = icmp slt i64 %i33, %num_items34
  %whilecond36 = icmp ne i1 %lttmp35, false
  br i1 %whilecond36, label %whilebody37, label %afterwhile53

whilebody37:                                      ; preds = %whilecond32
  %rand_key = alloca i64, align 8
  %i38 = load i64, ptr %i, align 4
  %calltmp39 = call { i64, ptr, i8 } @hash_int64(i64 %i38)
  %raw.value40 = extractvalue { i64, ptr, i8 } %calltmp39, 0
  store i64 %raw.value40, ptr %rand_key, align 4
  %rand_key41 = load i64, ptr %rand_key, align 4
  %lttmp42 = icmp slt i64 %rand_key41, 0
  %ifcond = icmp ne i1 %lttmp42, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %whilebody37
  %rand_key43 = load i64, ptr %rand_key, align 4
  %multmp = mul i64 %rand_key43, -1
  store i64 %multmp, ptr %rand_key, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %whilebody37
  %rand_key44 = load i64, ptr %rand_key, align 4
  %num_items45 = load i64, ptr %num_items, align 4
  %multmp46 = mul i64 %num_items45, 10
  %mod.iszero = icmp eq i64 %multmp46, 0
  %modtmp = srem i64 %rand_key44, %multmp46
  %safe.modtmp = select i1 %mod.iszero, i64 9223372036854775807, i64 %modtmp
  store i64 %safe.modtmp, ptr %rand_key, align 4
  %skip47 = load i64, ptr %skip, align 4
  %rand_key48 = load i64, ptr %rand_key, align 4
  %calltmp49 = call { i8, ptr, i8 } @skiplist.SkipList_insert(i64 %skip47, i64 %rand_key48)
  %raw.value50 = extractvalue { i8, ptr, i8 } %calltmp49, 0
  %i51 = load i64, ptr %i, align 4
  %addtmp52 = add i64 %i51, 1
  store i64 %addtmp52, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond32

afterwhile53:                                     ; preds = %whilecond32
  store i64 0, ptr %i, align 4
  br label %whilecond54

whilecond54:                                      ; preds = %ifcont70, %afterwhile53
  %i55 = load i64, ptr %i, align 4
  %num_items56 = load i64, ptr %num_items, align 4
  %lttmp57 = icmp slt i64 %i55, %num_items56
  %whilecond58 = icmp ne i1 %lttmp57, false
  br i1 %whilecond58, label %whilebody59, label %afterwhile83

whilebody59:                                      ; preds = %whilecond54
  %rand_key60 = alloca i64, align 8
  %i61 = load i64, ptr %i, align 4
  %calltmp62 = call { i64, ptr, i8 } @hash_int64(i64 %i61)
  %raw.value63 = extractvalue { i64, ptr, i8 } %calltmp62, 0
  store i64 %raw.value63, ptr %rand_key60, align 4
  %rand_key64 = load i64, ptr %rand_key60, align 4
  %lttmp65 = icmp slt i64 %rand_key64, 0
  %ifcond66 = icmp ne i1 %lttmp65, false
  br i1 %ifcond66, label %then67, label %ifcont70

then67:                                           ; preds = %whilebody59
  %rand_key68 = load i64, ptr %rand_key60, align 4
  %multmp69 = mul i64 %rand_key68, -1
  store i64 %multmp69, ptr %rand_key60, align 4
  br label %ifcont70

ifcont70:                                         ; preds = %then67, %whilebody59
  %rand_key71 = load i64, ptr %rand_key60, align 4
  %num_items72 = load i64, ptr %num_items, align 4
  %multmp73 = mul i64 %num_items72, 10
  %mod.iszero74 = icmp eq i64 %multmp73, 0
  %modtmp75 = srem i64 %rand_key71, %multmp73
  %safe.modtmp76 = select i1 %mod.iszero74, i64 9223372036854775807, i64 %modtmp75
  store i64 %safe.modtmp76, ptr %rand_key60, align 4
  %skip77 = load i64, ptr %skip, align 4
  %rand_key78 = load i64, ptr %rand_key60, align 4
  %calltmp79 = call { i8, ptr, i8 } @skiplist.SkipList_contains(i64 %skip77, i64 %rand_key78)
  %raw.value80 = extractvalue { i8, ptr, i8 } %calltmp79, 0
  %i81 = load i64, ptr %i, align 4
  %addtmp82 = add i64 %i81, 1
  store i64 %addtmp82, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond54

afterwhile83:                                     ; preds = %whilecond54
  %skip84 = load i64, ptr %skip, align 4
  %calltmp85 = call { i8, ptr, i8 } @skiplist.SkipList_destroy(i64 %skip84)
  %raw.value86 = extractvalue { i8, ptr, i8 } %calltmp85, 0
  call void @proc_exit(i32 0) #0
  unreachable
}

; Function Attrs: noreturn
declare void @proc_exit(i32) #0

declare void @npk_gc_init(i64, i64)

declare void @npk_args_init(i32, ptr)

declare void @npk_streams_init()

define linkonce_odr i32 @__benchmark_nlists_init() {
entry:
  ret i32 0
}

attributes #0 = { noreturn }
