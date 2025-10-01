// Problem 8: Palindrome Checker
// isPalindrome(_:) ignores spaces, punctuation, and case.

import Foundation

func isPalindrome(_ text: String) -> Bool {
    // Keep only alphanumerics and lowercase them
    let normalized = text.lowercased().filter { $0.isLetter || $0.isNumber }
    return normalized == normalized.reversed()
}

// Example usage:
print("Enter text:", terminator: " ")
let input = readLine() ?? ""
print(isPalindrome(input) ? "Palindrome" : "Not a palindrome")
