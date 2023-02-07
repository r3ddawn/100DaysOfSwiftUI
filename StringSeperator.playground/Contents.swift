import Cocoa

var greeting = "Hello, playground"

func wordSeperator(_ input: String) -> [String] {
    var words = [""]
    var count = 0
    for letter in input {
        switch letter {
            case " ":
                count += 1
                words.append("")
            case ",":
                continue
            case ".":
                continue
            default:
                words[count] += String(letter)
        }
    }
    
    return words
}

print(wordSeperator(greeting))
