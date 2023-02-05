import Cocoa

//Basic Data Types Overview
/*
var greeting = "Hello, playground"
//var name = "Ted"
//name = "Rebecca"
//name = "Keeley"

let character = "Daphne" //This is a constant, cannot change constants

var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)

let managerName = "Michael Scott"
let dogBreed = "Samoyed"
let meaningOfLife = "How many roads must a man walk down?"

let movie = """
A day in
the life of an
Apple engineer
"""
print(movie)

print(managerName.count)
print(managerName.uppercased())

print(movie.hasPrefix("A day"))

let score  = 10
let reallyBig = 100_000_000

let number = 120
print(number.isMultiple(of: 3))
print(120.isMultiple(of: 3))


let floatingPointExample = 0.1 + 0.2
print(floatingPointExample)

let a = 1
let b = 2.0
let c = a + Int(b)
let d = Double(a) + b

var gameOver  = false
print(gameOver)
gameOver.toggle()
print(gameOver)

var helloWorld = "Hello"
helloWorld += " World"
print(helloWorld)

let name = "Taylor"
let age = 26

let message = "Hello, my name is \(name) and I'm \(age) years old"
print(message)


let missionNumber = 11
let missionMessage = "Apollo \(String(missionNumber)) landed on the moon"
print(missionMessage)
*/



//Arrays
/*
var beatles = ["John", "Paul", "George", "Ringo"]
beatles.append("Adrian")
print(beatles)

var scores = [Int]()
scores.append(100)
scores.append(80)
scores.append(85)

var albums = Array<String>()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")
print(albums.count)

var characters = ["Pam", "Lana", "Ray", "Sterling"]
print(characters.count)
characters.remove(at: 2)
print(characters.count)
characters.removeAll()
print(characters.count)

let bondMovies = ["Casino Royale", "Spectre", "No Time to Dire"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)
*/



/*
//Dictionaries
let employee2 = ["name" : "Taylor Swift", "job" : "Singer", "location" : "Nashville"]

print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])

let hasGraduated = ["Eric": false, "Maeve": true, "Otis": true]

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]
print(olympics[2012, default: "Unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

var archEnemies = [String : String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"
archEnemies["Batman"] = "The Penguin"
*/



/*
//Sets
let actors = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(actors)

var dogs = Set<String>()
dogs.insert("Avery")
dogs.insert("Rae")
dogs.insert("Parker")
dogs.insert("Penny")

print(dogs)
*/



/*
//Enums
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
print(day)
day = Weekday.friday
print(day)

enum Months {
    case Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sept, Oct, Nov, Dec
}

var birthdayMonth = Months.Aug
print(birthdayMonth)
birthdayMonth = .Sept
print(birthdayMonth)
*/



/*
//Type Annotations
let surname: String = "Lasso"
var score: Int = 0
var playerPay: Double = 0
let isAuthenticated: Bool = true
var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])

//Different ways to use type inference
var soda: [String] = ["Coke", "Pepsi", "Sprite"]
var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light
style = .dark

var myStyle: UIStyle = UIStyle.dark
var yourStyle: UIStyle = .system


//Creating empty constants
let username: String
    //Lots of complex logic
username = "@twostraws"
    //more awesome code
print(username)
*/



/*
//Condition Checking

let score = 85

if score > 80 {
    print("Great Job!")
} else {
    print("You Suck!")
}

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going, we don't need roads.")
}

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote.")
}


let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
} else if friendName < ourName {
    print("It's \(friendName) vs \(ourName)")
} else {
    print("Lets call the whole thing off")
}


var numbers = [1, 2, 3]
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}

print(numbers)


let country = "Canada"

if country == "Australia" {
    print("G'day!")
}

var username = "taylorswift13"

if username.isEmpty {
    username = "Anonymous"
}

print("Welcome, \(username)")
*/



/*
//How To Check Multiple Conditions
let age = 16

if age >= 18 {
    print("You can vote in the next election")
} else {
    print("You can not vote in the next election")
}


var todaysTemp = 25

if todaysTemp > 20 && todaysTemp < 30 {
    print("It's a nice day.")
}

let userAge = 14
let hasParentalConsent = true

if age > 18 || hasParentalConsent {
    print("You can buy the game")
}

enum TransportOption {
    case airplane, helicopter, bike, car, escooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if (transport == .bike) {
    print("I hope there's a bike path")
} else if (transport == .car){
    print("Time to get stuck in traffic")
} else {
    print("I'm going to hire a scooter now!")
}
*/



/*
//Switch

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forcast = Weather.sun

switch forcast {
case .sun:
    print("It should be a nice day")
case .rain:
    print("Pack an umbrella")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled")
case .unknown:
    print("Our forcast generator is broken!")
}

let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?!?!")
}


let day = 5
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}
*/



/*
//Ternary
let age = 18
let canVote = age >= 18 ? "Yes" : "No"

let names = ["Jayne", "Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)

enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)


var time = 1200

var lunch = time == 1200 ? "It is lunch time!" : "It is not lunch time"
print(lunch)
*/



/*
//Loops

let platforms = ["iOS", "MacOS", "iPadOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os)")
}

for i in 1...12 {
    print("This is the \(i) times table")
    
    for j in 1...12 {
        print("     \(i) x \(j) is \(j * i)")
    }
    print()
}

for i in 1...5 {
    print("Counting from 1 to 5: \(i)")
}

print()

for i in 1..<5 {
    print("Counting from 1 to 5: \(i)")
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

print()

var countdown = 10

while countdown > 0 {
    print("\(countdown)")
    countdown -= 1
}

print("Blast Off!!!")

let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

var roll = 0

while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

print("Critical hit!")

print()

let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(filename)")
}

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)
*/



/*
//Functions
func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(number) * \(i) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)


func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func letterCheck(stringOne: String, stringTwo: String) -> Bool {
    return stringOne.sorted() == stringTwo.sorted()
}

let string1 = "abcdef"
let string2 = "decfba"

print(letterCheck(stringOne: string1, stringTwo: string2))

func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

print(pythagoras(a: 3, b: 4))


var hi = "heLlO"

func getUser() -> (firstName: String, lastName: String) {
    return (firstName: "Eric", lastName: "Johnson")
}

print(getUser())
let (firstName, lastName) = getUser()

func hireEmployee(name: String) { }
func hireEmployee(title: String) { }
func hireEmployee(location: String) { }

func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO WORLD"
let compare = isUppercase(string)


func printMultiplicationTable(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(number) * \(i) = \(i * number)")
    }
}

printMultiplicationTable(for: 2, end: 20)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll(keepingCapacity: true) //Default values in action when left empty
print(characters.count)

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

do {
    let result = try checkPassword("12345")
    print("Password Rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password")
} catch PasswordError.obvious {
    print("Password is too obvious")
} catch {
    print("There was an error")
}
*/




// Closures
func greetUser() {
    print("Hi there!")
}

greetUser()
// var greetCopy = greetUser
var greetCopy: () -> Void = greetUser       // No () -  If you put the (), it means run function and put ita value in the variable. Without (), it means copy the function directly. Give me another handle for the function.
greetCopy()

let sayHello = {
    print("Hello World!")
}

sayHello()

let sayHelloWorld = { (name: String) -> String in   //"in" keyword marks end of parameters and start of closure function
    "Hello \(name)"
}

print(sayHelloWorld("World"))


let team = ["Gloria","Karissa", "Kaylee", "Avery", "Rae", "Susi", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Susi" {
        return true
    } else if name2 == "Susi" {
        return false
    }
    return name1 < name2
}

//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Susi" {
        return true
    } else if name2 == "Susi" {
        return false
    }
    return name1 < name2
})
print(captainFirstTeam)

//minimizing syntax
let captainFirstTeamModified = team.sorted {
    if $0 == "Susi" {
        return true
    } else if $1 == "Susi" {
        return false
    }
    return $0 < $1
}

let reverseTeam = team.sorted { $0 > $1 }

let tOnly = team.filter {$0.hasPrefix("T")}
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam
)

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}
 
