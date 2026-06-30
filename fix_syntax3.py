import re
import os

src_dir = 'src'
for filename in os.listdir(src_dir):
    if not filename.endswith('.npk'): continue
    filepath = os.path.join(src_dir, filename)
    with open(filepath, 'r') as f:
        content = f.read()

    # Revert `dalloc(@cast_unchecked<any->>(header);` back to `));`
    content = content.replace("dalloc(@cast_unchecked<any->>(header);", "dalloc(@cast_unchecked<any->>(header));")

    with open(filepath, 'w') as f:
        f.write(content)

print("Syntax fixed again")
