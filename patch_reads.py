import sys

def patch(filename):
    with open(filename, 'r') as f:
        content = f.read()
    
    # We want to force pointer loads and generic int64 loads to be full 64-bit.
    # The issue is that the compiler infers `int32` when dereferencing.
    # Can we cast the pointer to something else, or cast the result?
    # If the parser infers `int32`, we should use `@cast_unchecked<int64>` on the result?
    # No, it's `<-@cast_unchecked<int64->>(...)`!
    pass

if __name__ == "__main__":
    patch(sys.argv[1])
