#!/bin/bash
echo "Building NLISTS benchmark..."
npkc bench_nlists.npk -o bench_nlists

echo "Building C++ benchmark..."
g++ -O3 bench_cpp.cpp -o bench_cpp

echo "Building Rust benchmark..."
rustc -C opt-level=3 bench_rust.rs -o bench_rust

echo "=== BENCHMARK: NLISTS (Custom Allocator) ==="
time ./bench_nlists

echo "=== BENCHMARK: C++ (std::list) ==="
time ./bench_cpp

echo "=== BENCHMARK: Rust (std::collections::LinkedList) ==="
time ./bench_rust

