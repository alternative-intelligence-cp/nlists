; ModuleID = 'bench/test_allocator2.npk'
source_filename = "bench/test_allocator2.npk"

%Numeric_vtable_t = type {}
%Display_vtable_t = type {}

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

define linkonce_odr ptr @allocator.NodeAllocator_create(i64 %node_size) {
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
  ret ptr null

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
  %handle10 = load i64, ptr %handle, align 4
  %addtmp11 = add i64 %handle10, 0
  %cast.inttoptr = inttoptr i64 %addtmp11 to ptr
  %node_size12 = load i64, ptr %node_size.addr, align 4
  store i64 %node_size12, ptr %cast.inttoptr, align 4
  %handle13 = load i64, ptr %handle, align 4
  %addtmp14 = add i64 %handle13, 8
  %handle15 = load i64, ptr %handle, align 4
  %addtmp16 = add i64 %handle15, 8
  %cast.inttoptr17 = inttoptr i64 %addtmp16 to ptr
  store i64 0, ptr %cast.inttoptr17, align 4
  %handle18 = load i64, ptr %handle, align 4
  %addtmp19 = add i64 %handle18, 16
  %handle20 = load i64, ptr %handle, align 4
  %addtmp21 = add i64 %handle20, 16
  %cast.inttoptr22 = inttoptr i64 %addtmp21 to ptr
  store i64 0, ptr %cast.inttoptr22, align 4
  %handle23 = load i64, ptr %handle, align 4
  %addtmp24 = add i64 %handle23, 24
  %handle25 = load i64, ptr %handle, align 4
  %addtmp26 = add i64 %handle25, 24
  %cast.inttoptr27 = inttoptr i64 %addtmp26 to ptr
  store i64 32768, ptr %cast.inttoptr27, align 4
  %handle28 = load i64, ptr %handle, align 4
  %addtmp29 = add i64 %handle28, 32
  %handle30 = load i64, ptr %handle, align 4
  %addtmp31 = add i64 %handle30, 32
  %cast.inttoptr32 = inttoptr i64 %addtmp31 to ptr
  store i64 0, ptr %cast.inttoptr32, align 4
  %blk33 = load ptr, ptr %blk, align 8
  ret ptr %blk33
}

define linkonce_odr { i8, ptr, i8 } @allocator.NodeAllocator_destroy(ptr %handle_ptr) {
entry:
  %handle = alloca i64, align 8
  %cast.ptrtoint = ptrtoint ptr %handle_ptr to i64
  %andtmp = and i64 %cast.ptrtoint, 281474976710655
  %andtmp1 = and i64 %andtmp, 281474976710655
  store i64 %andtmp1, ptr %handle, align 4
  %handle2 = load i64, ptr %handle, align 4
  %eqtmp = icmp eq i64 %handle2, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %head_block = alloca i64, align 8
  %handle3 = load i64, ptr %handle, align 4
  %addtmp = add i64 %handle3, 8
  %handle4 = load i64, ptr %handle, align 4
  %addtmp5 = add i64 %handle4, 8
  %cast.inttoptr = inttoptr i64 %addtmp5 to ptr
  %null.deref = icmp eq ptr %cast.inttoptr, null
  br i1 %null.deref, label %null.fail, label %null.ok

null.fail:                                        ; preds = %ifcont
  call void @exit(i32 46)
  unreachable

null.ok:                                          ; preds = %ifcont
  %deref = load i32, ptr %cast.inttoptr, align 4
  %init_sext = sext i32 %deref to i64
  store i64 %init_sext, ptr %head_block, align 4
  %block_size = alloca i64, align 8
  %handle6 = load i64, ptr %handle, align 4
  %addtmp7 = add i64 %handle6, 24
  %handle8 = load i64, ptr %handle, align 4
  %addtmp9 = add i64 %handle8, 24
  %cast.inttoptr10 = inttoptr i64 %addtmp9 to ptr
  %null.deref11 = icmp eq ptr %cast.inttoptr10, null
  br i1 %null.deref11, label %null.fail12, label %null.ok13

null.fail12:                                      ; preds = %null.ok
  call void @exit(i32 46)
  unreachable

null.ok13:                                        ; preds = %null.ok
  %deref14 = load i32, ptr %cast.inttoptr10, align 4
  %init_sext15 = sext i32 %deref14 to i64
  store i64 %init_sext15, ptr %block_size, align 4
  br label %whilecond

whilecond:                                        ; preds = %null.ok23, %null.ok13
  %head_block16 = load i64, ptr %head_block, align 4
  %netmp = icmp ne i64 %head_block16, 0
  %whilecond17 = icmp ne i1 %netmp, false
  br i1 %whilecond17, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %next_block = alloca i64, align 8
  %head_block18 = load i64, ptr %head_block, align 4
  %head_block19 = load i64, ptr %head_block, align 4
  %cast.inttoptr20 = inttoptr i64 %head_block19 to ptr
  %null.deref21 = icmp eq ptr %cast.inttoptr20, null
  br i1 %null.deref21, label %null.fail22, label %null.ok23

null.fail22:                                      ; preds = %whilebody
  call void @exit(i32 46)
  unreachable

null.ok23:                                        ; preds = %whilebody
  %deref24 = load i32, ptr %cast.inttoptr20, align 4
  %init_sext25 = sext i32 %deref24 to i64
  store i64 %init_sext25, ptr %next_block, align 4
  %head_block26 = load i64, ptr %head_block, align 4
  %cast.inttoptr27 = inttoptr i64 %head_block26 to ptr
  call void @npk_free(ptr %cast.inttoptr27)
  %next_block28 = load i64, ptr %next_block, align 4
  store i64 %next_block28, ptr %head_block, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %handle29 = load i64, ptr %handle, align 4
  %cast.inttoptr30 = inttoptr i64 %handle29 to ptr
  call void @npk_free(ptr %cast.inttoptr30)
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i64, ptr, i8 } @allocator.NodeAllocator_alloc(ptr %handle_ptr) {
entry:
  %handle = alloca i64, align 8
  %cast.ptrtoint = ptrtoint ptr %handle_ptr to i64
  %andtmp = and i64 %cast.ptrtoint, 281474976710655
  %andtmp1 = and i64 %andtmp, 281474976710655
  store i64 %andtmp1, ptr %handle, align 4
  %free_head = alloca i64, align 8
  %handle2 = load i64, ptr %handle, align 4
  %addtmp = add i64 %handle2, 32
  %handle3 = load i64, ptr %handle, align 4
  %addtmp4 = add i64 %handle3, 32
  %cast.inttoptr = inttoptr i64 %addtmp4 to ptr
  %null.deref = icmp eq ptr %cast.inttoptr, null
  br i1 %null.deref, label %null.fail, label %null.ok

null.fail:                                        ; preds = %entry
  call void @exit(i32 46)
  unreachable

null.ok:                                          ; preds = %entry
  %deref = load i32, ptr %cast.inttoptr, align 4
  %init_sext = sext i32 %deref to i64
  store i64 %init_sext, ptr %free_head, align 4
  %node_size = alloca i64, align 8
  %handle5 = load i64, ptr %handle, align 4
  %addtmp6 = add i64 %handle5, 0
  %handle7 = load i64, ptr %handle, align 4
  %addtmp8 = add i64 %handle7, 0
  %cast.inttoptr9 = inttoptr i64 %addtmp8 to ptr
  %null.deref10 = icmp eq ptr %cast.inttoptr9, null
  br i1 %null.deref10, label %null.fail11, label %null.ok12

null.fail11:                                      ; preds = %null.ok
  call void @exit(i32 46)
  unreachable

null.ok12:                                        ; preds = %null.ok
  %deref13 = load i32, ptr %cast.inttoptr9, align 4
  %init_sext14 = sext i32 %deref13 to i64
  store i64 %init_sext14, ptr %node_size, align 4
  %free_head15 = load i64, ptr %free_head, align 4
  %netmp = icmp ne i64 %free_head15, 0
  %ifcond = icmp ne i1 %netmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %null.ok12
  %next_free = alloca i64, align 8
  %free_head16 = load i64, ptr %free_head, align 4
  %free_head17 = load i64, ptr %free_head, align 4
  %cast.inttoptr18 = inttoptr i64 %free_head17 to ptr
  %null.deref19 = icmp eq ptr %cast.inttoptr18, null
  br i1 %null.deref19, label %null.fail20, label %null.ok21

null.fail20:                                      ; preds = %then
  call void @exit(i32 46)
  unreachable

null.ok21:                                        ; preds = %then
  %deref22 = load i32, ptr %cast.inttoptr18, align 4
  %init_sext23 = sext i32 %deref22 to i64
  store i64 %init_sext23, ptr %next_free, align 4
  %handle24 = load i64, ptr %handle, align 4
  %addtmp25 = add i64 %handle24, 32
  %handle26 = load i64, ptr %handle, align 4
  %addtmp27 = add i64 %handle26, 32
  %cast.inttoptr28 = inttoptr i64 %addtmp27 to ptr
  %next_free29 = load i64, ptr %next_free, align 4
  store i64 %next_free29, ptr %cast.inttoptr28, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %null.ok21
  %i30 = load i64, ptr %i, align 4
  %node_size31 = load i64, ptr %node_size, align 4
  %lttmp = icmp slt i64 %i30, %node_size31
  %whilecond32 = icmp ne i1 %lttmp, false
  br i1 %whilecond32, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %free_head33 = load i64, ptr %free_head, align 4
  %i34 = load i64, ptr %i, align 4
  %addtmp35 = add i64 %free_head33, %i34
  %free_head36 = load i64, ptr %free_head, align 4
  %i37 = load i64, ptr %i, align 4
  %addtmp38 = add i64 %free_head36, %i37
  %cast.inttoptr39 = inttoptr i64 %addtmp38 to ptr
  store i8 0, ptr %cast.inttoptr39, align 1
  %i40 = load i64, ptr %i, align 4
  %addtmp41 = add i64 %i40, 1
  store i64 %addtmp41, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %free_head42 = load i64, ptr %free_head, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %free_head42, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error

ifcont:                                           ; preds = %null.ok12
  %block_size = alloca i64, align 8
  %handle43 = load i64, ptr %handle, align 4
  %addtmp44 = add i64 %handle43, 24
  %handle45 = load i64, ptr %handle, align 4
  %addtmp46 = add i64 %handle45, 24
  %cast.inttoptr47 = inttoptr i64 %addtmp46 to ptr
  %null.deref48 = icmp eq ptr %cast.inttoptr47, null
  br i1 %null.deref48, label %null.fail49, label %null.ok50

null.fail49:                                      ; preds = %ifcont
  call void @exit(i32 46)
  unreachable

null.ok50:                                        ; preds = %ifcont
  %deref51 = load i32, ptr %cast.inttoptr47, align 4
  %init_sext52 = sext i32 %deref51 to i64
  store i64 %init_sext52, ptr %block_size, align 4
  %head_block = alloca i64, align 8
  %handle53 = load i64, ptr %handle, align 4
  %addtmp54 = add i64 %handle53, 8
  %handle55 = load i64, ptr %handle, align 4
  %addtmp56 = add i64 %handle55, 8
  %cast.inttoptr57 = inttoptr i64 %addtmp56 to ptr
  %null.deref58 = icmp eq ptr %cast.inttoptr57, null
  br i1 %null.deref58, label %null.fail59, label %null.ok60

null.fail59:                                      ; preds = %null.ok50
  call void @exit(i32 46)
  unreachable

null.ok60:                                        ; preds = %null.ok50
  %deref61 = load i32, ptr %cast.inttoptr57, align 4
  %init_sext62 = sext i32 %deref61 to i64
  store i64 %init_sext62, ptr %head_block, align 4
  %offset = alloca i64, align 8
  %handle63 = load i64, ptr %handle, align 4
  %addtmp64 = add i64 %handle63, 16
  %handle65 = load i64, ptr %handle, align 4
  %addtmp66 = add i64 %handle65, 16
  %cast.inttoptr67 = inttoptr i64 %addtmp66 to ptr
  %null.deref68 = icmp eq ptr %cast.inttoptr67, null
  br i1 %null.deref68, label %null.fail69, label %null.ok70

null.fail69:                                      ; preds = %null.ok60
  call void @exit(i32 46)
  unreachable

null.ok70:                                        ; preds = %null.ok60
  %deref71 = load i32, ptr %cast.inttoptr67, align 4
  %init_sext72 = sext i32 %deref71 to i64
  store i64 %init_sext72, ptr %offset, align 4
  %head_block73 = load i64, ptr %head_block, align 4
  %eqtmp = icmp eq i64 %head_block73, 0
  %ifcond74 = icmp ne i1 %eqtmp, false
  br i1 %ifcond74, label %then75, label %else

then75:                                           ; preds = %null.ok70
  %blk = call ptr @npk_alloc(i64 8)
  %block_size76 = load i64, ptr %block_size, align 4
  %wild_ptr = call ptr @npk_alloc(i64 %block_size76)
  store ptr %wild_ptr, ptr %blk, align 8
  %blk77 = load ptr, ptr %blk, align 8
  %eqtmp78 = icmp eq ptr %blk77, null
  %ifcond79 = icmp ne i1 %eqtmp78, false
  br i1 %ifcond79, label %then80, label %ifcont81

then80:                                           ; preds = %then75
  ret { i64, ptr, i8 } zeroinitializer

ifcont81:                                         ; preds = %then75
  %new_block = alloca i64, align 8
  %blk82 = load ptr, ptr %blk, align 8
  %blk83 = load ptr, ptr %blk, align 8
  %cast.ptrtoint84 = ptrtoint ptr %blk83 to i64
  %andtmp85 = and i64 %cast.ptrtoint84, 281474976710655
  %andtmp86 = and i64 %andtmp85, 281474976710655
  store i64 %andtmp86, ptr %new_block, align 4
  %new_block87 = load i64, ptr %new_block, align 4
  %new_block88 = load i64, ptr %new_block, align 4
  %cast.inttoptr89 = inttoptr i64 %new_block88 to ptr
  store i64 0, ptr %cast.inttoptr89, align 4
  %handle90 = load i64, ptr %handle, align 4
  %addtmp91 = add i64 %handle90, 8
  %handle92 = load i64, ptr %handle, align 4
  %addtmp93 = add i64 %handle92, 8
  %cast.inttoptr94 = inttoptr i64 %addtmp93 to ptr
  %new_block95 = load i64, ptr %new_block, align 4
  store i64 %new_block95, ptr %cast.inttoptr94, align 4
  %new_block96 = load i64, ptr %new_block, align 4
  store i64 %new_block96, ptr %head_block, align 4
  store i64 8, ptr %offset, align 4
  %handle97 = load i64, ptr %handle, align 4
  %addtmp98 = add i64 %handle97, 16
  %handle99 = load i64, ptr %handle, align 4
  %addtmp100 = add i64 %handle99, 16
  %cast.inttoptr101 = inttoptr i64 %addtmp100 to ptr
  %offset102 = load i64, ptr %offset, align 4
  store i64 %offset102, ptr %cast.inttoptr101, align 4
  br label %ifcont141

else:                                             ; preds = %null.ok70
  %offset103 = load i64, ptr %offset, align 4
  %node_size104 = load i64, ptr %node_size, align 4
  %addtmp105 = add i64 %offset103, %node_size104
  %block_size106 = load i64, ptr %block_size, align 4
  %gttmp = icmp sgt i64 %addtmp105, %block_size106
  %ifcond107 = icmp ne i1 %gttmp, false
  br i1 %ifcond107, label %then108, label %ifcont140

then108:                                          ; preds = %else
  %blk109 = call ptr @npk_alloc(i64 8)
  %block_size110 = load i64, ptr %block_size, align 4
  %wild_ptr111 = call ptr @npk_alloc(i64 %block_size110)
  store ptr %wild_ptr111, ptr %blk109, align 8
  %blk112 = load ptr, ptr %blk109, align 8
  %eqtmp113 = icmp eq ptr %blk112, null
  %ifcond114 = icmp ne i1 %eqtmp113, false
  br i1 %ifcond114, label %then115, label %ifcont116

then115:                                          ; preds = %then108
  ret { i64, ptr, i8 } zeroinitializer

ifcont116:                                        ; preds = %then108
  %new_block117 = alloca i64, align 8
  %blk118 = load ptr, ptr %blk109, align 8
  %blk119 = load ptr, ptr %blk109, align 8
  %cast.ptrtoint120 = ptrtoint ptr %blk119 to i64
  %andtmp121 = and i64 %cast.ptrtoint120, 281474976710655
  %andtmp122 = and i64 %andtmp121, 281474976710655
  store i64 %andtmp122, ptr %new_block117, align 4
  %new_block123 = load i64, ptr %new_block117, align 4
  %new_block124 = load i64, ptr %new_block117, align 4
  %cast.inttoptr125 = inttoptr i64 %new_block124 to ptr
  %head_block126 = load i64, ptr %head_block, align 4
  store i64 %head_block126, ptr %cast.inttoptr125, align 4
  %handle127 = load i64, ptr %handle, align 4
  %addtmp128 = add i64 %handle127, 8
  %handle129 = load i64, ptr %handle, align 4
  %addtmp130 = add i64 %handle129, 8
  %cast.inttoptr131 = inttoptr i64 %addtmp130 to ptr
  %new_block132 = load i64, ptr %new_block117, align 4
  store i64 %new_block132, ptr %cast.inttoptr131, align 4
  %new_block133 = load i64, ptr %new_block117, align 4
  store i64 %new_block133, ptr %head_block, align 4
  store i64 8, ptr %offset, align 4
  %handle134 = load i64, ptr %handle, align 4
  %addtmp135 = add i64 %handle134, 16
  %handle136 = load i64, ptr %handle, align 4
  %addtmp137 = add i64 %handle136, 16
  %cast.inttoptr138 = inttoptr i64 %addtmp137 to ptr
  %offset139 = load i64, ptr %offset, align 4
  store i64 %offset139, ptr %cast.inttoptr138, align 4
  br label %ifcont140

ifcont140:                                        ; preds = %ifcont116, %else
  br label %ifcont141

ifcont141:                                        ; preds = %ifcont140, %ifcont81
  %ptr = alloca i64, align 8
  %head_block142 = load i64, ptr %head_block, align 4
  %offset143 = load i64, ptr %offset, align 4
  %addtmp144 = add i64 %head_block142, %offset143
  store i64 %addtmp144, ptr %ptr, align 4
  %handle145 = load i64, ptr %handle, align 4
  %addtmp146 = add i64 %handle145, 16
  %handle147 = load i64, ptr %handle, align 4
  %addtmp148 = add i64 %handle147, 16
  %cast.inttoptr149 = inttoptr i64 %addtmp148 to ptr
  %offset150 = load i64, ptr %offset, align 4
  %node_size151 = load i64, ptr %node_size, align 4
  %addtmp152 = add i64 %offset150, %node_size151
  store i64 %addtmp152, ptr %cast.inttoptr149, align 4
  %j = alloca i64, align 8
  store i64 0, ptr %j, align 4
  br label %whilecond153

whilecond153:                                     ; preds = %whilebody158, %ifcont141
  %j154 = load i64, ptr %j, align 4
  %node_size155 = load i64, ptr %node_size, align 4
  %lttmp156 = icmp slt i64 %j154, %node_size155
  %whilecond157 = icmp ne i1 %lttmp156, false
  br i1 %whilecond157, label %whilebody158, label %afterwhile161

whilebody158:                                     ; preds = %whilecond153
  %j159 = load i64, ptr %j, align 4
  %addtmp160 = add i64 %j159, 1
  store i64 %addtmp160, ptr %j, align 4
  call void @npk_gc_safepoint()
  br label %whilecond153

afterwhile161:                                    ; preds = %whilecond153
  %ptr162 = load i64, ptr %ptr, align 4
  %result.val163 = insertvalue { i64, ptr, i8 } undef, i64 %ptr162, 0
  %result.err164 = insertvalue { i64, ptr, i8 } %result.val163, ptr null, 1
  %result.is_error165 = insertvalue { i64, ptr, i8 } %result.err164, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error165
}

define linkonce_odr { i8, ptr, i8 } @allocator.NodeAllocator_free(ptr %handle_ptr, i64 %ptr) {
entry:
  %ptr.addr = alloca i64, align 8
  store i64 %ptr, ptr %ptr.addr, align 4
  %handle = alloca i64, align 8
  %cast.ptrtoint = ptrtoint ptr %handle_ptr to i64
  %andtmp = and i64 %cast.ptrtoint, 281474976710655
  %andtmp1 = and i64 %andtmp, 281474976710655
  store i64 %andtmp1, ptr %handle, align 4
  %ptr2 = load i64, ptr %ptr.addr, align 4
  %eqtmp = icmp eq i64 %ptr2, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %free_head = alloca i64, align 8
  %handle3 = load i64, ptr %handle, align 4
  %addtmp = add i64 %handle3, 32
  %handle4 = load i64, ptr %handle, align 4
  %addtmp5 = add i64 %handle4, 32
  %cast.inttoptr = inttoptr i64 %addtmp5 to ptr
  %null.deref = icmp eq ptr %cast.inttoptr, null
  br i1 %null.deref, label %null.fail, label %null.ok

null.fail:                                        ; preds = %ifcont
  call void @exit(i32 46)
  unreachable

null.ok:                                          ; preds = %ifcont
  %deref = load i32, ptr %cast.inttoptr, align 4
  %init_sext = sext i32 %deref to i64
  store i64 %init_sext, ptr %free_head, align 4
  %ptr6 = load i64, ptr %ptr.addr, align 4
  %ptr7 = load i64, ptr %ptr.addr, align 4
  %cast.inttoptr8 = inttoptr i64 %ptr7 to ptr
  %free_head9 = load i64, ptr %free_head, align 4
  store i64 %free_head9, ptr %cast.inttoptr8, align 4
  %handle10 = load i64, ptr %handle, align 4
  %addtmp11 = add i64 %handle10, 32
  %handle12 = load i64, ptr %handle, align 4
  %addtmp13 = add i64 %handle12, 32
  %cast.inttoptr14 = inttoptr i64 %addtmp13 to ptr
  %ptr15 = load i64, ptr %ptr.addr, align 4
  store i64 %ptr15, ptr %cast.inttoptr14, align 4
  ret { i8, ptr, i8 } zeroinitializer
}

declare ptr @npk_alloc(i64)

declare void @exit(i32)

declare void @npk_free(ptr)

declare void @npk_gc_safepoint()

define linkonce_odr i32 @__allocator_init() {
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
  %allocator = call ptr @npk_alloc(i64 8)
  %calltmp = call ptr @allocator.NodeAllocator_create(i64 24)
  store ptr %calltmp, ptr %allocator, align 8
  %node1 = alloca i64, align 8
  %allocator1 = load ptr, ptr %allocator, align 8
  %calltmp2 = call { i64, ptr, i8 } @allocator.NodeAllocator_alloc(ptr %allocator1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp2, 0
  store i64 %raw.value, ptr %node1, align 4
  %node2 = alloca i64, align 8
  %allocator3 = load ptr, ptr %allocator, align 8
  %calltmp4 = call { i64, ptr, i8 } @allocator.NodeAllocator_alloc(ptr %allocator3)
  %raw.value5 = extractvalue { i64, ptr, i8 } %calltmp4, 0
  store i64 %raw.value5, ptr %node2, align 4
  %diff = alloca i64, align 8
  %node26 = load i64, ptr %node2, align 4
  %node17 = load i64, ptr %node1, align 4
  %subtmp = sub i64 %node26, %node17
  store i64 %subtmp, ptr %diff, align 4
  %code = alloca i32, align 4
  %diff8 = load i64, ptr %diff, align 4
  %divtmp = sdiv i64 %diff8, 256
  %safe.divtmp = select i1 false, i64 9223372036854775807, i64 %divtmp
  %cast.trunc = trunc i64 %safe.divtmp to i32
  store i32 %cast.trunc, ptr %code, align 4
  %allocator9 = load ptr, ptr %allocator, align 8
  call void @npk_free(ptr %allocator9)
  %code10 = load i32, ptr %code, align 4
  call void @proc_exit(i32 %code10) #0
  unreachable
}

; Function Attrs: noreturn
declare void @proc_exit(i32) #0

declare void @npk_gc_init(i64, i64)

declare void @npk_args_init(i32, ptr)

declare void @npk_streams_init()

define linkonce_odr i32 @__test_allocator2_init() {
entry:
  ret i32 0
}

attributes #0 = { noreturn }
