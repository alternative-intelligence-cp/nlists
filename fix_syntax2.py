import re
import os

src_dir = 'src'
for filename in os.listdir(src_dir):
    if not filename.endswith('.npk'): continue
    filepath = os.path.join(src_dir, filename)
    with open(filepath, 'r') as f:
        content = f.read()

    # Fix `== val {` to `== val) {`
    content = content.replace("== val {", "== val) {")
    content = content.replace("== target {", "== target) {")
    
    # Fix `pass 1i8);` to `pass 1i8;`
    content = content.replace("pass 1i8);", "pass 1i8;")
    
    # Fix `));` to `);`
    content = content.replace("));", ");")

    with open(filepath, 'w') as f:
        f.write(content)

print("Syntax fixed")
