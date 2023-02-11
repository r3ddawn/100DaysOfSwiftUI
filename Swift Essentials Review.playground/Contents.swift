import Cocoa

var name = "Ted"
name = "Rebecca"

let user = "Daphne"
print(user)

let actor = "Tom Cruise 🏃‍♂️"

let quote = "He tapped a sign saying \"Believe\" and walked away"

let movie = """
A day in
the life of an
Apple engineer
"""

print(actor.count)

print(quote.hasPrefix("He"))
print(quote.hasSuffix("Away"))

let score = 10
let higherScore = score + 10
let halvedScore = score / 2

var counter = 10
counter += 5

let number = 120
print(number.hashValue.isMultiple(of: 3))

let id = Int.random(in: 1...1000)

let scores = 3.0

let goodDogs = true
let gameOver = false

var isSaved = true
isSaved.toggle()

var numbers = Set([1, 1, 4, 5, 6, 9])
print(numbers)

numbers.insert(10)
numbers.contains(11)

var teamMates: [String] = [String]()
var clues = [String]()

let age = 18
let canVote = age >= 18 ? "Yes" : "No"
print(canVote)

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let sayHello = { print("Hi there") }

let printName = { (_ name: String) -> String in
    return name
}


