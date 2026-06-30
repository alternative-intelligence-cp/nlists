import re
import os

src_dir = 'src'
for filename in os.listdir(src_dir):
    if not filename.endswith('.npk') or filename == 'mem.npk':
        continue
        
    filepath = os.path.join(src_dir, filename)
    with open(filepath, 'r') as f:
        content = f.read()

    # Add `use "mem.npk".*;` if not there
    if 'use "mem.npk".*;' not in content:
        content = content.replace('use "types.npk".*;\n', 'use "types.npk".*;\nuse "mem.npk".*;\n')
        if 'use "mem.npk".*;' not in content:
             content = 'use "mem.npk".*;\n' + content

    # Replace (@cast_unchecked<TYPE->>(EXPR))[0i64] = VAL; with drop raw mem.store64(EXPR, VAL);
    # Since we replaced <- directly, TYPE is always int64 since we cast pointers as int64->
    # Wait, what if we have int32 or int8?
    def replacer_write(m):
        type_str = m.group(1)
        expr_str = m.group(2)
        val_str = m.group(3)
        if type_str == "int64-":
            return f"drop raw mem.store64({expr_str}, {val_str})"
        elif type_str == "int32-":
            return f"drop raw mem.store32({expr_str}, {val_str})"
        elif type_str == "int8-":
            return f"drop raw mem.store8({expr_str}, {val_str})"
        return m.group(0)

    # Pattern for assignment
    content = re.sub(r'\(\@cast_unchecked<([^>]+)>\(([^)]+)\)\)\[0i64\]\s*=\s*([^;]+)', replacer_write, content)

    # Pattern for reading
    def replacer_read(m):
        type_str = m.group(1)
        expr_str = m.group(2)
        if type_str == "int64-":
            return f"raw mem.load64({expr_str})"
        elif type_str == "int32-":
            return f"raw mem.load32({expr_str})"
        elif type_str == "int8-":
            return f"raw mem.load8({expr_str})"
        return m.group(0)

    content = re.sub(r'\(\@cast_unchecked<([^>]+)>\(([^)]+)\)\)\[0i64\]', replacer_read, content)

    with open(filepath, 'w') as f:
        f.write(content)
print("Fixing complete.")
