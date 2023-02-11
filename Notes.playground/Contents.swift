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



/*
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
*/



/*
// Structs
struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()

struct Employee {
    let name: String
    var sickDays: Int
    var vacationRemaining: Int = 14    //Set default to 14
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

var archer = Employee(name: "Sterling Archer", sickDays: 10, vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

let a = 1
let b = 2.0
let c = Double(a) + b

// Computed properties - Getters - Setters
struct EmployeeCalculated {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            return vacationAllocated - vacationTaken
        }
        
        set {
            return vacationAllocated = vacationTaken + newValue
        }
    }
}

var demi = EmployeeCalculated(name: "Demi", vacationAllocated: 24)
demi.vacationTaken += 4
demi.vacationRemaining = 5
print(demi.vacationRemaining)

//Property Observers

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        
        didSet {
            print("There are now \(contacts.count)")
            print("Old value was: \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Eric J.")
app.contacts.append("Karissa J.")
app.contacts.append("Deacon J.")
app.contacts.append("Piper J.")


// Initializers
struct Player {
    let name: String
    let number: Int

    init(name: String) {
        self.name = name
        //self.number = number
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Megan R")
print(player)
*/



/*
// Access Control and Static properties/methods

struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposite(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposite(amount: 100)
let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}


struct Doctor {
    var name: String = ""
    var location: String = ""
    private var currentPatient = "No one"
}
let drJones = Doctor()

struct Contributor {
    private var name = "Anonymous"
}
let paul = Contributor()

struct RebelBase {
    private var location: String
    private var peopleCount: Int
    init(location: String, people: Int) {
        self.location = location
        self.peopleCount = people
    }
}
let base = RebelBase(location: "Yavin", people: 1000)

//Static propertied and methods
struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)


struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}
print(AppData.version)

struct Employee {
    let username: String
    let password: String

    static let example = Employee(username: "cfederighi", password: "hairforceone")
}

struct NewsStory {
    static var breakingNewsCount = 0
    static var regularNewsCount = 0
    var headline: String
    init(headline: String, isBreaking: Bool) {
        self.headline = headline
        if isBreaking {
            NewsStory.breakingNewsCount += 1
        } else {
            NewsStory.regularNewsCount += 1
        }
    }
}


func existsHigher(numList: [Int], numToCheck: Int) -> Bool {
    if numList.isEmpty { return false }
    for num in numList {
        if num > numToCheck {
            return true
        }
    }
    return false
}

var hello = "1002"
var temp: Int
for num in hello {
    print(Int(String(num)) ?? 0)
}

func sumDigits(_ a: Int, _ b: Int) -> Int {
    var sum: Int = 0
    for x in a...b {
        var temp = String(x)
        for num in temp  {
            sum += Int(String(num)) ?? 0
        }
    }
    return sum
}

sumDigits(66, 789)

func combinations(_ args: Int...) -> Int {
    var numbers = [Int]()
    var sum: Int
    for num in args {
        numbers.append(num)
    }
    sum = numbers[0]
    for x in 1..<numbers.count {
        sum *= numbers[x]
    }
    return sum
}

 
var hi = "Hello"
let index = hi.index(hi.startIndex, offsetBy: 3)
print(hi[index])
 
*/


/*
//Classes
class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10


class Employee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) per day")
    }
}

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() {
        print("I'm a developer who will sometime work \(hours) per day, but I will sometimes spend hours arguing about indents")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()
robert.printSummary()
joseph.printSummary()

class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
        
    }
}

class User {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

for x in 1...5 {
    let user  = User(id: x)
}


func repeating(_ item: String, _ times: Int) -> [String] {
    var str = [String]()
    
    for _ in 1...times {
        str.append(item)
    }
    return str
}

func firstVowel(_ str: String) -> Int {
    var vowels = ["a", "e", "i", "o", "u"]
    var lowerCase = str.lowercased()
    var count = 0
    
    for letter in lowerCase {
        if vowels.contains(String(letter)) {
            return count
        } else {
            count += 1
        }
    }
    return count
}

print(firstVowel("GOODBYE"))
*/



/*
//Protocols and Extensions
protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    let name = "Car"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance) miles")
    }
    
    func openSunroof() {
        print("It's a beautiful day")
    }
}

struct Bicycle: Vehicle {
    let name = "Bicycle"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance) miles")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle")
    } else {
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

let car = Car()
commute(distance: 100, using: car)

let bike = Bicycle()
commute(distance: 50, using: bike)

getTravelEstimates(using: [car, bike], distance: 150)

//Opaque Return

func getRandomNumber() -> some Equatable {
    Int.random(in: 1...1000)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())

//Extensions

var quote = "   The truth is rarely pure and never simple   "

let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)
let trimmedShort = quote.trimmed()

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines.count)


let guests = ["Mario", "Luigi", "Peach"]

if guests.isEmpty == false {
    print("Guest count: \(guests.count)")
}

extension /*Array*/ Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}
*/



/*
// Optionals, Nil
let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil

if let unwrapedNumber = number {
    print(square(number: unwrapedNumber))
}

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }

    print("\(number) x \(number) is \(number * number)")
}

let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new = captains["Serenity"] ?? "N/A"

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)

let input = ""
let numberExample = Int(input) ?? 0
print(numberExample)

//You can chain nil Coalescing
//let savedData = first() ?? second() ?? ""

let names = ["Arya", "Bran", "Robb", "Sansa"]

let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

var book2: Book? = nil
let author2 = book2?.author?.first?.uppercased() ?? "A"
print(author)


enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)
*/

