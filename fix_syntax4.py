import re
import os

src_dir = 'src'
for filename in os.listdir(src_dir):
    if not filename.endswith('.npk'): continue
    filepath = os.path.join(src_dir, filename)
    with open(filepath, 'r') as f:
        content = f.read()

    # Revert `dalloc(@cast_unchecked<any->>(WORD);` back to `));`
    content = re.sub(r'dalloc\(\@cast_unchecked<any->>\(([^)]+)\);', r'dalloc(@cast_unchecked<any->>(\1));', content)

    with open(filepath, 'w') as f:
        f.write(content)

print("Syntax fixed again")
