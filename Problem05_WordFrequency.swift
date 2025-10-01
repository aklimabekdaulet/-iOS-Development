// Problem 5: Word Frequency Counter
// Reads a sentence, counts case-insensitive word frequencies ignoring punctuation.
// Uses a Dictionary<String, Int> for counting.

import Foundation

print("Enter a sentence:", terminator: " ")
let sentence = readLine() ?? ""

// Normalize: lowercase and strip punctuation
let lowered = sentence.lowercased()
let allowed = CharacterSet.alphanumerics.union(.whitespaces)
let cleanedScalars = lowered.unicodeScalars.filter { allowed.contains($0) }
let cleaned = String(String.UnicodeScalarView(cleanedScalars))

// Split on whitespace
let words = cleaned.split(whereSeparator: { $0.isWhitespace }).map(String.init)

var freq: [String: Int] = [:]
for w in words {
    freq[w, default: 0] += 1
}

// Display sorted by descending count then alphabetically
let sorted = freq.sorted { (a, b) -> Bool in
    if a.value != b.value { return a.value > b.value }
    return a.key < b.key
}

for (word, count) in sorted {
    print("\(word): \(count)")
}
