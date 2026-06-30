import re
import os

src_dir = 'src'
for filename in os.listdir(src_dir):
    if not filename.endswith('.npk'): continue
    filepath = os.path.join(src_dir, filename)
    with open(filepath, 'r') as f:
        content = f.read()

    # Remove `mem.` prefix
    content = content.replace("mem.store64", "store64")
    content = content.replace("mem.load64", "load64")
    content = content.replace("mem.store32", "store32")
    content = content.replace("mem.load32", "load32")
    content = content.replace("mem.store8", "store8")
    content = content.replace("mem.load8", "load8")

    with open(filepath, 'w') as f:
        f.write(content)

print("Syntax fixed again")
