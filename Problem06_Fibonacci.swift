// Problem 6: Fibonacci Sequence
// Implement fibonacci(_ n: Int) -> [Int] returning first n Fibonacci numbers.
// Uses a loop; returns [] for n <= 0.

import Foundation

func fibonacci(_ n: Int) -> [Int] {
    if n <= 0 { return [] }
    if n == 1 { return [0] }
    var seq = [0, 1]
    while seq.count < n {
        let next = seq[seq.count - 1] + seq[seq.count - 2]
        seq.append(next)
    }
    return seq
}

// Example usage:
// Read n from user
print("Enter n:", terminator: " ")
if let line = readLine(), let n = Int(line) {
    print(fibonacci(n))
} else {
    print("Invalid integer.")
}
