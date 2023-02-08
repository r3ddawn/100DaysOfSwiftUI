import Cocoa


class Animal {
    var legs: Int
    
    init (legs: Int) {
        self.legs = legs
    }
}
class Dog: Animal {
    func speak() {
        print("Bark Bark!")
    }
}

class Corgi: Dog {
    override func speak() {
        print("*In a posh accent* Bark Bark!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("guau-guau")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    init (legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() {
        print("meow")
    }
}

class Persian: Cat {
    override func speak() {
        print("Meow Meow")
    }
}

class Lion: Cat {
    override func speak() {
        print("Roar!")
    }
}

let random = Persian(legs: 8, isTame: true)
random.speak()
let random2 = Lion(legs: 4, isTame: false)
random2.speak()
