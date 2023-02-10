import Cocoa

func optArray(arr: [Int]?) -> Int {
    return arr?.randomElement() ?? Int.random(in: 1...100)
}


//Another solution from:
//(https://www.hackingwithswift.com/forums/100-days-of-swiftui/checkpoint-9-viable-solutions/10960)

let array: [Int]? = nil
let mindBlown = array?.randomElement() ?? Int.random(in: 1...100)
