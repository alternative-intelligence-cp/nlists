import re
import os

src_dir = 'src'
for filename in os.listdir(src_dir):
    if not filename.endswith('.npk'): continue
    filepath = os.path.join(src_dir, filename)
    with open(filepath, 'r') as f:
        content = f.read()

    # Pattern: drop raw mem.store64(EXPR, = VAL) {
    # Fix it to: raw mem.load64(EXPR) == VAL) {
    def fix_eq(m):
        expr = m.group(1)
        val = m.group(2)
        return f"raw mem.load64({expr}) == {val}"

    # drop raw mem.store64(curr + 0i64, = val) {
    # Match drop raw mem\.store(64|32|8)\(([^,]+),\s*=\s*([^)]+)\)
    content = re.sub(r'drop raw mem\.store(64|32|8)\(([^,]+),\s*=\s*([^)]+)\)', lambda m: f"raw mem.load{m.group(1)}({m.group(2)}) == {m.group(3)}", content)
    
    # Wait, the original was `if ((@cast_unchecked<int64->>(curr + 0i64))[0i64] == val) {`
    # My script matched `(@cast_unchecked<int64->>(curr + 0i64))[0i64] == val) { \n pass 1i8;`
    # It replaced `(@cast_unchecked<int64->>(curr + 0i64))[0i64] =` with `drop raw mem.store64(curr + 0i64, `
    # So the text became `drop raw mem.store64(curr + 0i64, = val) { \n pass 1i8;`
    # Wait! The closing parenthesis for `store64` was not added because it just replaced `LHS = `
    
    with open(filepath, 'w') as f:
        f.write(content)

print("Fix applied")
