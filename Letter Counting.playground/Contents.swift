import Cocoa

/*
 func letterCounter(_ arr: [[Character]], _ letter: Character) -> Int {
    if !arr.contains(letter) { return 0 }
    
    var letterCount = 0
    for char in arr {
        if char == letter {
            count += 1
        }
    }
    return letterCount
}
*/
func mysteryFunc(_ arr: [Int], _ num: Int) -> [Int] {
    var newArr: [Int] = []
    for member in arr {
        newArr.append(member % num)
    }
    return newArr
}

func dictionary(_ initial: String, _ words: [String]) -> [String] {
    var newString: [String] = []
    for check in words {
        if check.hasPrefix(initial) {
            newString.append(check)
        }
    }
    return newString
}

//5 people fit in a car, how many cars are needed?
func carsNeeded(_ n: Int) -> Int {
    if (n % 5) == 0 {
        return (n / 5)
    } else {
        return (n / 5) + 1
    }
 }

func factorial(_ num: Int) -> Int {
    if num == 0 { return 0 }
    var newNum = 1
    for x in 1...num {
        newNum *= x
    }
    return newNum
}
