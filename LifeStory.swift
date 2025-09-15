import Foundation

// Step 1: Personal Information
var firstName: String = "Aklima"
var lastName: String = "Bekdaulet"
var birthYear: Int = 2005
let currentYear: Int = 2025
var age: Int = currentYear - birthYear
var isStudent: Bool = true
var height: Double = 1.67

// Step 2: Hobbies and Interests
var hobby: String = "painting 🎨"
var numberOfHobbies: Int = 5
var favoriteNumber: Int = 7
var isHobbyCreative: Bool = true

// Step 3: Summary of Life Story
var lifeStory: String = "My name is \(firstName) \(lastName). I am \(age) years old, born in \(birthYear). " +
"I am currently a student: \(isStudent). I enjoy \(hobby), which is a creative hobby: \(isHobbyCreative). " +
"I have \(numberOfHobbies) hobbies in total, and my favorite number is \(favoriteNumber). " +
"My height is \(height)m."

// Bonus: Future Goals
var futureGoals: String = " In the future, I want to become a professional iOS developer 📱."
lifeStory += futureGoals

// Step 4: Print
print(lifeStory)
