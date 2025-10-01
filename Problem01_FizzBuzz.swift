// Problem 1: FizzBuzz
// Prints numbers 1...100, replacing multiples of 3 with "Fizz",
// multiples of 5 with "Buzz", and multiples of both with "FizzBuzz".
// Uses a simple loop and conditional statements.

for n in 1...100 {
    if n % 15 == 0 {
        print("FizzBuzz")
    } else if n % 3 == 0 {
        print("Fizz")
    } else if n % 5 == 0 {
        print("Buzz")
    } else {
        print(n)
    }
}
