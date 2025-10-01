// Problem 4: Shopping List Manager
// Array-backed list with a simple text menu: add, remove, display, exit.
// Uses a loop and conditionals to manage user input.

import Foundation

var shoppingList: [String] = []

func printMenu() {
    print("\n--- Shopping List ---")
    print("1) Add item")
    print("2) Remove item")
    print("3) Show list")
    print("4) Exit")
    print("Choose an option [1-4]:", terminator: " ")
}

func readLineTrimmed() -> String {
    return (readLine() ?? "").trimmingCharacters(in: .whitespacesAndNewlines)
}

while true {
    printMenu()
    let choice = readLineTrimmed()

    switch choice {
    case "1":
        print("Enter item to add:", terminator: " ")
        let item = readLineTrimmed()
        if !item.isEmpty {
            shoppingList.append(item)
            print("\"\(item)\" added.")
        } else {
            print("Item cannot be empty.")
        }
    case "2":
        if shoppingList.isEmpty {
            print("List is empty.")
            continue
        }
        print("Enter exact item name to remove:", terminator: " ")
        let item = readLineTrimmed()
        if let idx = shoppingList.firstIndex(of: item) {
            shoppingList.remove(at: idx)
            print("\"\(item)\" removed.")
        } else {
            print("Item not found.")
        }
    case "3":
        if shoppingList.isEmpty {
            print("List is empty.")
        } else {
            print("Current list:")
            for (i, item) in shoppingList.enumerated() {
                print("\(i + 1). \(item)")
            }
        }
    case "4":
        print("Goodbye!")
        exit(0)
    default:
        print("Invalid choice. Please enter 1-4.")
    }
}
