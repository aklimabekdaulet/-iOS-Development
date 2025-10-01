// Problem 7: Grade Calculator
// Accept student names and scores, compute average, highest, lowest,
// and indicate for each student if they are above or below average.

import Foundation

struct Student {
    let name: String
    let score: Double
}

func readLineTrimmed() -> String {
    (readLine() ?? "").trimmingCharacters(in: .whitespacesAndNewlines)
}

print("How many students?", terminator: " ")
guard let nLine = readLine(), let count = Int(nLine), count > 0 else {
    print("Invalid number.")
    exit(1)
}

var students: [Student] = []
for i in 1...count {
    print("Student #\(i) name:", terminator: " ")
    let name = readLineTrimmed()
    print("Student #\(i) score:", terminator: " ")
    guard let sLine = readLine(), let score = Double(sLine) else {
        print("Invalid score.")
        exit(1)
    }
    students.append(Student(name: name, score: score))
}

// Compute average, highest, lowest
let scores = students.map { $0.score }
let total = scores.reduce(0.0, +)
let average = total / Double(students.count)
let highest = scores.max() ?? 0.0
let lowest = scores.min() ?? 0.0

print(String(format: "\nAverage: %.2f", average))
print(String(format: "Highest: %.2f", highest))
print(String(format: "Lowest: %.2f", lowest))

print("\nStudents:")
for s in students {
    let relation = s.score >= average ? "above or equal to" : "below"
    print(String(format: "%@: %.2f (%@ average)", s.name, s.score, relation))
}
