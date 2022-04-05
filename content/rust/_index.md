+++
title = "Rust"
description = "Some articles about my daily Rust adventures"

[extra]
keywords = "rust, programming"
+++

Programming with :crab: is a lot of fun! Here you find my writings about
adventures with the [Rust](https://rust-lang.org) programming language. I really
like programming with it because
- it empowers you to do a lot of different things, from low-level programming to
  simple CLI programs and most of the time it feels pretty ergonomic,
- it is very fast, and comes close or is identical to C and C++ performance,
- it comes with an awesome package management solution (:heart: Cargo), 
- it is very strongly typed, so nearly all errors happen during compile time,
- there is no error-prone, manual memory management like e.g. in C.

For a first impression, here is a Rust version of
[FizzBuzz](https://en.wikipedia.org/wiki/Fizz_buzz):
```rust
// Import support for env arguments from 
// rust standard library
use std::env::args;

// A FizzBuzz example in Rust
fn main() {
    // Read arguments
    let arguments: Vec<String> = args().collect();

    // Parse string into usize
    let parsed_args = arguments
        .get(1)
        .unwrap_or(&String::from("25"))
        .parse::<usize>()
        .expect("Unable to parse provided number");

    // Generate output
    for i in 1..parsed_args {
        match (i % 3, i % 5) {
            (0, 0) => println!("FizzBuzz"),
            (0, _) => println!("Fizz"),
            (_, 0) => println!("Buzz"),
            (_, _) => println!("{i}"),
        }
    }
}
```
