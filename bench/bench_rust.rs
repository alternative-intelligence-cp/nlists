use std::collections::LinkedList;
fn main() {
    let mut lst: LinkedList<i64> = LinkedList::new();
    for i in 0..5000000 {
        lst.push_back(i);
    }
    for _ in 0..5000000 {
        lst.pop_front();
    }
}
