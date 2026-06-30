import re
with open('src/allocator.npk', 'r') as f:
    text = f.read()

text = text.replace('if (blk == NULL) { pass 5i64; }', 'if (blk == NULL) { pass block_size; }')

with open('src/allocator.npk', 'w') as f:
    f.write(text)
