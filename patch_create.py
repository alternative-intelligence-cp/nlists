import re

def fix_file(filepath):
    with open(filepath, 'r') as f:
        text = f.read()

    # Change pass 0i64; in create to pass NULL;
    create_body = text.split('func:alloc')[0]
    create_body = create_body.replace('pass 0i64;', 'pass NULL;')
    
    rest = 'func:alloc' + text.split('func:alloc')[1]
    
    with open(filepath, 'w') as f:
        f.write(create_body + rest)

fix_file('src/allocator.npk')
