import UIKit

class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    init() {
        super.init(legs: 4)
    }
    
    func speak() {
        print("auauauauau")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }
    
    func speak() {
        print("miau")
    }
}

class Shnauzer: Dog {
    override func speak() {
        print("Auuuu Auuuu Auuuu")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Au AuAuAu Auuuuu")
    }
}

class Persian: Cat {
    override func speak() {
        print("MiauMiauMiauuuu")
    }
}

class Lion: Cat {
    override func speak() {
        print("AuuMiauuuuAuuuMiauuu")
    }
}

let shnauzer = Shnauzer()
shnauzer.speak()
let poodle = Poodle()
poodle.speak()
let persian = Persian(isTame: false)
persian.speak()
let lion = Lion(isTame: true)
lion.speak()
