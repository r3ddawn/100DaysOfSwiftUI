import Cocoa

for x in 1...100 {
    if (x % 3 == 0) && (x % 5 == 0) {
        print("Fizz Buzz")
    } else if (x % 3 == 0) {
        print("Fizz")
    } else if (x % 5 == 0) {
            print("Buzz")
    } else {
        print(x)
    }
}

