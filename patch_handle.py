import re

def fix_file(filepath):
    with open(filepath, 'r') as f:
        text = f.read()

    # Change func:create = int64(...) to func:create = wild int8->(...)
    text = text.replace('func:create = int64(int64:node_size)', 'func:create = wild int8->(int64:node_size)')
    
    # Change pass handle; to pass handle_ptr;
    text = text.replace('pass handle;', 'pass handle_ptr;')
    
    # Change func:alloc = int64(int64:handle) to func:alloc = int64(wild int8->:handle_ptr)
    # Then int64:handle = ((@cast_unchecked<int64>(handle_ptr)) & 281474976710655i64) & 281474976710655i64;
    alloc_sig = 'func:alloc = int64(wild int8->:handle_ptr) {\n        int64:handle = ((@cast_unchecked<int64>(handle_ptr)) & 281474976710655i64) & 281474976710655i64;'
    text = text.replace('func:alloc = int64(int64:handle) {', alloc_sig)

    free_sig = 'func:free = int8(wild int8->:handle_ptr, int64:ptr) {\n        int64:handle = ((@cast_unchecked<int64>(handle_ptr)) & 281474976710655i64) & 281474976710655i64;'
    text = text.replace('func:free = int8(int64:handle, int64:ptr) {', free_sig)

    destroy_sig = 'func:destroy = int8(wild int8->:handle_ptr) {\n        int64:handle = ((@cast_unchecked<int64>(handle_ptr)) & 281474976710655i64) & 281474976710655i64;'
    text = text.replace('func:destroy = int8(int64:handle) {', destroy_sig)

    with open(filepath, 'w') as f:
        f.write(text)

fix_file('src/allocator.npk')
