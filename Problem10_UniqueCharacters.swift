// Problem 10: Unique Characters
// Case-sensitive check for unique characters in a string.

import Foundation

func hasUniqueCharacters(_ text: String) -> Bool {
    var seen: Set<Character> = []
    for ch in text {
        if seen.contains(ch) { return false }
        seen.insert(ch)
    }
    return true
}

// Example usage:
print("Enter text:", terminator: " ")
let input = readLine() ?? ""
print(hasUniqueCharacters(input) ? "All unique" : "Not unique")
