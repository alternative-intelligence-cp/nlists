import re

with open('src/allocator.npk', 'r') as f:
    content = f.read()

def replacer(match):
    type_str = match.group(1)
    expr_str = match.group(2)
    return f"(@cast_unchecked<{type_str}>>({expr_str}))[0i64]"

new_content = re.sub(r'<-@cast_unchecked<([^>]+)>>\(([^)]+)\)', replacer, content)

with open('src/allocator.npk', 'w') as f:
    f.write(new_content)
