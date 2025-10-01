// Problem 3: Temperature Converter (C, F, K)
// Prompts the user for a value and the unit, converts to the other two units, and displays results.
// Functions are used for conversions; conditionals handle unit selection.

import Foundation

// Conversion helpers
func cToF(_ c: Double) -> Double { c * 9/5 + 32 }
func cToK(_ c: Double) -> Double { c + 273.15 }

func fToC(_ f: Double) -> Double { (f - 32) * 5/9 }
func fToK(_ f: Double) -> Double { cToK(fToC(f)) }

func kToC(_ k: Double) -> Double { k - 273.15 }
func kToF(_ k: Double) -> Double { cToF(kToC(k)) }

// Read value
print("Enter temperature value:", terminator: " ")
guard let valueLine = readLine(), let value = Double(valueLine) else {
    print("Invalid temperature value.")
    exit(1)
}

// Read unit
print("Enter unit (C, F, or K):", terminator: " ")
guard let unitLine = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines).uppercased(),
      ["C","F","K"].contains(unitLine) else {
    print("Invalid unit. Please enter C, F, or K.")
    exit(1)
}

switch unitLine {
case "C":
    let f = cToF(value)
    let k = cToK(value)
    print(String(format: "%.2f°C = %.2f°F, %.2fK", value, f, k))
case "F":
    let c = fToC(value)
    let k = fToK(value)
    print(String(format: "%.2f°F = %.2f°C, %.2fK", value, c, k))
case "K":
    let c = kToC(value)
    let f = kToF(value)
    print(String(format: "%.2fK = %.2f°C, %.2f°F", value, c, f))
default:
    fatalError("Unreachable")
}
