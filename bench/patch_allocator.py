import re
with open('src/allocator.npk', 'r') as f:
    text = f.read()

# I want to add `exit` in NodeAllocator.alloc to see where it returns 0
text = text.replace('if (new_block_ptr == NULL) { pass 0i64; }', 'if (new_block_ptr == NULL) { exit 5i32; pass 0i64; }')
text = text.replace('pass ptr & 281474976710655i64;', 'if ((ptr & 281474976710655i64) == 0i64) { exit 6i32; } pass ptr & 281474976710655i64;')

with open('src/allocator.npk', 'w') as f:
    f.write(text)
