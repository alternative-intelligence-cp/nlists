; ModuleID = 'bench_nlists.npk'
source_filename = "bench_nlists.npk"

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

define i32 @failsafe(i32 %err) {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4
  call void @proc_exit(i32 1) #0
  unreachable
}

define i32 @main(i32 %argc, ptr %argv) {
entry:
  call void @npk_gc_init(i64 0, i64 0)
  call void @npk_args_init(i32 %argc, ptr %argv)
  call void @npk_streams_init()
  %argc.addr = alloca i32, align 4
  store i32 %argc, ptr %argc.addr, align 4
  %dlist = alloca i64, align 8
  %calltmp = call { i64, ptr, i8 } @doubly.DList_create()
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %dlist, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %entry
  %i1 = load i64, ptr %i, align 4
  %lttmp = icmp slt i64 %i1, 1000000
  %whilecond2 = icmp ne i1 %lttmp, false
  br i1 %whilecond2, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %dlist3 = load i64, ptr %dlist, align 4
  %i4 = load i64, ptr %i, align 4
  %calltmp5 = call { i8, ptr, i8 } @doubly.DList_push_back(i64 %dlist3, i64 %i4)
  %raw.value6 = extractvalue { i8, ptr, i8 } %calltmp5, 0
  %i7 = load i64, ptr %i, align 4
  %addtmp = add i64 %i7, 1
  store i64 %addtmp, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  store i64 0, ptr %i, align 4
  br label %whilecond8

whilecond8:                                       ; preds = %whilebody12, %afterwhile
  %i9 = load i64, ptr %i, align 4
  %lttmp10 = icmp slt i64 %i9, 1000000
  %whilecond11 = icmp ne i1 %lttmp10, false
  br i1 %whilecond11, label %whilebody12, label %afterwhile18

whilebody12:                                      ; preds = %whilecond8
  %dlist13 = load i64, ptr %dlist, align 4
  %calltmp14 = call { i64, ptr, i8 } @doubly.DList_pop_front(i64 %dlist13)
  %raw.value15 = extractvalue { i64, ptr, i8 } %calltmp14, 0
  %i16 = load i64, ptr %i, align 4
  %addtmp17 = add i64 %i16, 1
  store i64 %addtmp17, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond8

afterwhile18:                                     ; preds = %whilecond8
  %dlist19 = load i64, ptr %dlist, align 4
  %calltmp20 = call { i8, ptr, i8 } @doubly.DList_destroy(i64 %dlist19)
  %raw.value21 = extractvalue { i8, ptr, i8 } %calltmp20, 0
  call void @proc_exit(i32 0) #0
  unreachable
}

; Function Attrs: noreturn
declare void @proc_exit(i32) #0

declare void @npk_gc_init(i64, i64)

declare void @npk_args_init(i32, ptr)

declare void @npk_streams_init()

define linkonce_odr i32 @__bench_nlists_init() {
entry:
  ret i32 0
}

attributes #0 = { noreturn }
