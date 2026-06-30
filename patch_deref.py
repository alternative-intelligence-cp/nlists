import os, re

def fix_file(filepath):
    with open(filepath, 'r') as f:
        text = f.read()

    # We want to replace `(@cast_unchecked<TYPE>(EXPR))[0i64] = VAL;`
    # with `<-(@cast_unchecked<TYPE>(EXPR)) = VAL;`
    
    # We can match `(@cast_unchecked<` then anything up to `)[0i64] = `
    
    new_text = re.sub(r'\(\@cast_unchecked<([^>]+)>\((.*?)\)\)\[0i64\] = ([^;]+);', r'<-(@cast_unchecked<\1>(\2)) = \3;', text)
    # But wait, `<int64->>` has two `>`. The regex `<([^>]+)>` stops at the first `>`.
    # Let's match `<(.*?)>` instead, but be careful not to match too much.
    new_text = re.sub(r'\(\@cast_unchecked<(.*?)>\((.*?)\)\)\[0i64\] = ([^;]+);', r'<-(@cast_unchecked<\1>(\2)) = \3;', text)
    new_text = re.sub(r'\(\@cast_unchecked<(.*?)>\((.*?)\)\)\[0i8\] = ([^;]+);', r'<-(@cast_unchecked<\1>(\2)) = \3;', new_text)

    # For doubly.npk, some casts might not have outer parens: `@cast_unchecked<int64->>(...)[0i64] = ...`
    new_text = re.sub(r'\@cast_unchecked<(.*?)>\((.*?)\)\[0i64\] = ([^;]+);', r'<-(@cast_unchecked<\1>(\2)) = \3;', new_text)

    with open(filepath, 'w') as f:
        f.write(new_text)

fix_file('src/allocator.npk')
fix_file('src/doubly.npk')
