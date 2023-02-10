import Cocoa

func stringToCharArray (_ string : String) -> [Character] {
    var charArray = Array<Character>()
    for letter in string {
        charArray.append(letter)
    }
    return charArray
}

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
func toPigLatin (_ string: String) -> String {
    var pigLatinString: String
    var stringArray = wordSeperator(string)
    let vowels = ["a", "e", "i", "o", "u"]
    for word in stringArray {
        var temp = stringToCharArray(word)
        if vowels.contains(String(temp[0])) {
            
        }
    }
    
    return pigLatinString
}
print(stringToCharArray("Hello"))

