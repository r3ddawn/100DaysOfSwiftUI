import Cocoa

func sumDigits(a: Int, b: Int) -> Int {
    var sum = 0
    for num in a...b {
        for letter in 0..<String(num).count {
            var singleNum = String(num)
            var singleDigit = singleNum.index(singleNum.startIndex, offsetBy: letter)
            sum += Int(String(neededNum)) ?? 0
        }
    }
    return sum
}

print(sumDigits(a: 1, b: 3))
