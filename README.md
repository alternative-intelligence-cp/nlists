# nlists

`nlists` is a purely native Nitpick library containing highly-optimized List data structures (Singly-Linked, Doubly-Linked, Circular, SkipLists, etc.). 

This library is built entirely with Nitpick and relies solely on raw POSIX native system calls for memory allocation—guaranteeing 100% C-dependency-free operation.

## Completed Cycles
- **Cycle 0.1**: Foundation & Pure Native Memory Allocation (Completed)
- **Cycle 0.2**: Singly-Linked Lists (`SList` and `SListV`) (Completed)
- **Cycle 0.3**: Doubly-Linked Lists (`DList` and `DListV`) (Completed)
- **Cycle 0.4**: Specialized Lists (`SortedList`, `CList`, `SkipList`) (Completed)
- **Cycle 0.5**: Validation, Benchmarks & Release (Completed)

## Features
- **Singly & Doubly Linked Lists**: $O(1)$ head/tail operations (`SList`, `DList`).
- **Circular Lists**: Continuous looping pointer structures (`CList`).
- **Ordered Collections**: `SortedList` for linear $O(N)$ sorted insertions.
- **Probabilistic Data Structures**: `SkipList` for $O(\log N)$ insertions, removals, and lookups natively mirroring Binary Search Trees without the rebalancing overhead.
- **Universal Payloads**: Standalone modules (`SListV`, `DListV`) dynamically supporting untyped/tagged payloads using `MapV` concepts.

## Build & Usage

To compile the `nlists` repository natively using the Nitpick compiler (`npkc`):

```bash
# Compile and run the benchmark suite
npkc tests/benchmark_nlists.npk -o tests/benchmark_nlists
./tests/benchmark_nlists
```

To use `nlists` in your own Nitpick projects, simply import the required list type:
```nitpick
use "path/to/nlists/src/singly.npk".*;

pub func:main = int32() {
    int64:list = raw SList.create();
    drop raw SList.push_front(list, 42i64);
    drop raw SList.destroy(list);
    exit 0i32;
};
```

## API Reference

### `src/singly.npk` (`SList`)
- `SList.create()`: Creates a new singly-linked list.
- `SList.push_front(list, val)`: Inserts element at head.
- `SList.pop_front(list)`: Removes and returns element from head.
- `SList.push_back(list, val)`: Inserts element at tail.
- `SList.contains(list, val)`: Checks if value exists.
- `SList.remove_first(list, val)`: Removes the first matching element.
- `SList.reverse(list)`: Reverses the list in-place.
- `SList.destroy(list)`: Frees the list.

### `src/doubly.npk` (`DList`)
- `DList.create()`: Creates a new doubly-linked list.
- `DList.push_front(list, val)` / `DList.push_back(list, val)`
- `DList.pop_front(list)` / `DList.pop_back(list)`
- `DList.insert_before(list, target, val)` / `DList.insert_after(list, target, val)`
- `DList.remove(list, val)`
- `DList.destroy(list)`

### `src/skiplist.npk` (`SkipList`)
- `SkipList.create()`: Creates a skip list capable of 16-level random node height via internal LCG.
- `SkipList.insert(list, val)`: Inserts into the appropriate sorted level in $O(\log N)$ time.
- `SkipList.contains(list, val)`: Checks if a value exists in $O(\log N)$ time.
- `SkipList.remove(list, val)`: Deletes an element from all its levels in $O(\log N)$ time.
- `SkipList.destroy(list)`: Safely dismantles the skip graph structure.
