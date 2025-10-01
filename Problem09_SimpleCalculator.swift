// Problem 9: Simple Calculator
// Supports +, -, *, / with functions for each operation.
// Loops until the user chooses to exit; handles division by zero.

import Foundation

func add(_ a: Double, _ b: Double) -> Double { a + b }
func sub(_ a: Double, _ b: Double) -> Double { a - b }
func mul(_ a: Double, _ b: Double) -> Double { a * b }
func div(_ a: Double, _ b: Double) -> Double? { b == 0 ? nil : a / b }

func readDouble(prompt: String) -> Double? {
    print(prompt, terminator: " ")
    if let s = readLine(), let v = Double(s) { return v }
    return None
}

func readOp() -> String {
    print("Choose operation (+, -, *, /) or 'q' to quit:", terminator: " ")
    return (readLine() ?? "").trimmingCharacters(in: .whitespacesAndNewlines)
}

while true {
    let op = readOp()
    if op.lowercased() == "q" {
        print("Bye!")
        break
    }
    guard ["+","-","*","/"].contains(op) else {
        print("Invalid operation.")
        continue
    }
    print("Enter first number:", terminator: " ")
    guard let aLine = readLine(), let a = Double(aLine) else { print("Invalid input."); continue }
    print("Enter second number:", terminator: " ")
    guard let bLine = readLine(), let b = Double(bLine) else { print("Invalid input."); continue }

    let result: String
    switch op {
    case "+": result = String(add(a,b))
    case "-": result = String(sub(a,b))
    case "*": result = String(mul(a,b))
    case "/":
        if let r = div(a,b) {
            result = String(r)
        } else {
            result = "Error: Division by zero"
        }
    default:
        result = "Invalid"
    }
    print("Result: \(result)")
}
