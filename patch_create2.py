import re

def fix_file(filepath):
    with open(filepath, 'r') as f:
        text = f.read()

    # Rewrite create function completely
    old_create = """    func:create = wild int8->(int64:node_size) {
        wild int8->:handle_ptr = nodrop alloc(8i64);
        wild int8->:blk = nodrop alloc(64i64);
        <-(@cast_unchecked<wild int8->->>(handle_ptr)) = blk;

        if (handle_ptr == NULL) {
            pass NULL;
        }

        int64:handle = ((@cast_unchecked<int64>(blk)) & 281474976710655i64) & 281474976710655i64;
        if (node_size < 8i64) {
            node_size = 8i64;
        }

        <-(@cast_unchecked<int64->>(handle + 0i64)) = node_size;
        <-(@cast_unchecked<int64->>(handle + 8i64)) = 0i64; // head block
        <-(@cast_unchecked<int64->>(handle + 16i64)) = 0i64; // current_offset
        <-(@cast_unchecked<int64->>(handle + 24i64)) = 32768i64; // block_size (32KB default)
        <-(@cast_unchecked<int64->>(handle + 32i64)) = 0i64; // free_list head

        pass handle_ptr;
    };"""

    new_create = """    func:create = wild int8->(int64:node_size) {
        wild int8->:blk = nodrop alloc(64i64);
        if (blk == NULL) {
            pass NULL;
        }

        int64:handle = ((@cast_unchecked<int64>(blk)) & 281474976710655i64) & 281474976710655i64;
        if (node_size < 8i64) {
            node_size = 8i64;
        }

        <-(@cast_unchecked<int64->>(handle + 0i64)) = node_size;
        <-(@cast_unchecked<int64->>(handle + 8i64)) = 0i64; // head block
        <-(@cast_unchecked<int64->>(handle + 16i64)) = 0i64; // current_offset
        <-(@cast_unchecked<int64->>(handle + 24i64)) = 32768i64; // block_size (32KB default)
        <-(@cast_unchecked<int64->>(handle + 32i64)) = 0i64; // free_list head

        pass blk;
    };"""
    
    text = text.replace(old_create, new_create)
    with open(filepath, 'w') as f:
        f.write(text)

fix_file('src/allocator.npk')
