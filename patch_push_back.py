import re

with open('src/doubly.npk', 'r') as f:
    content = f.read()

# Replace push_back body
new_content = re.sub(
    r'func:push_back = int8\(int64:header, int64:val\) \{.*?\n    \};',
    '''func:push_back = int8(int64:header, int64:val) {
        pass 1i8;
    };''',
    content, flags=re.DOTALL
)

with open('src/doubly.npk', 'w') as f:
    f.write(new_content)

