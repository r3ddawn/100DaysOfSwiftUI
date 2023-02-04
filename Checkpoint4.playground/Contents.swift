import Cocoa

enum ErrorCode: Error {
    case outOfBounds
    case noRoot
}

func mySqrt(_ num: Int) throws -> Int {
    if num < 1 || num > 10_000 {
        throw ErrorCode.outOfBounds
    }
    
    for x in 1...num {
        if x * x == num {
            return x
        } else if (x * x) > num {
            break
        }
    }
    throw ErrorCode.noRoot
}


let num1 = 10_000
var sq1 = Int()

do {
    sq1 = try mySqrt(num1)
    print("The square root of \(num1) is  \(sq1)")
} catch ErrorCode.outOfBounds {
    print("Number must be between 1 and 10,000")
} catch ErrorCode.noRoot {
    print("\(num1) does not have an integer square root")
}
