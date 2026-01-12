# Heapless Rust

The system's memory controller is damaged, making heap allocations forbidden. You are provided with a service that compiles and runs your Rust code, but it strictly blacklists common heap-allocating types and methods. Your mission is to write Rust code that can read the contents of `flag.txt` using only stack memory.

**Goal:** Read `flag.txt` using only stack memory in Rust.