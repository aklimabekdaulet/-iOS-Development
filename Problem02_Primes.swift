// Problem 2: Prime Numbers
// Define a function isPrime(_:) -> Bool, then print primes between 1 and 100.

import Foundation

func isPrime(_ number: Int) -> Bool {
    if number < 2 { return false }
    if number <= 3 { return true }
    if number % 2 == 0 || number % 3 == 0 { return false }
    var i = 5
    while i * i <= number {
        if number % i == 0 || number % (i + 2) == 0 { return false }
        i += 6
    }
    return true
}

for n in 1...100 {
    if isPrime(n) {
        print(n)
    }
}
