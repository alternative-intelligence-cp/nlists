import re
import os

src_dir = 'src'
for filename in os.listdir(src_dir):
    if not filename.endswith('.npk'):
        continue
        
    filepath = os.path.join(src_dir, filename)
    with open(filepath, 'r') as f:
        content = f.read()

    # Match <-@cast_unchecked<TYPE>>(EXPR) OR <-(@cast_unchecked<TYPE>>(EXPR))
    # We will just replace <-(@cast_unchecked<TYPE>>(EXPR)) and <-@cast_unchecked<TYPE>>(EXPR)
    def replacer(match):
        type_str = match.group(1)
        expr_str = match.group(2)
        return f"(@cast_unchecked<{type_str}>>({expr_str}))[0i64]"

    # Pattern for <-(@cast_unchecked<TYPE>>(EXPR))
    new_content = re.sub(r'<-\(@cast_unchecked<([^>]+)>>\(([^)]+)\)\)', replacer, content)
    # Pattern for <-@cast_unchecked<TYPE>>(EXPR)
    new_content = re.sub(r'<-@cast_unchecked<([^>]+)>>\(([^)]+)\)', replacer, new_content)

    with open(filepath, 'w') as f:
        f.write(new_content)
print("Patching complete.")
