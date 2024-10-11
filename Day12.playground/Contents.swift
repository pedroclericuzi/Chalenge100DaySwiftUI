import UIKit

class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

class Kuki: Dog {
    init(name: String) {
        super.init(name: name, breed: "Shnauzer")
    }
}

let kuki = Kuki(name: "Kuki")
print("\(kuki.breed)")

print(" ==========//==========")

class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }
    
    deinit {
        print("\(name) is no more!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

print(" ==========//==========")

class Animal {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func noise() {
        print("\(name) faz Auauauau")
    }
}

class Timbu: Animal {
    override func noise() {
        print("\(self.name) faz kikikikikikikikikikikikiki")
    }
}

let timbu = Timbu(name: "Timba")
timbu.noise()

print(" ==========//==========")

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var newSiger = singer
newSiger.name = "Alceu Valença"
print(singer.name)

print(" ==========//==========")

class Singer2 {
    var name = "Taylor Swift"
}

let taylor = Singer2() //Com struct aqui não funcionaria, teria que trocar para let também
taylor.name = "Ed Sheeran"
print(taylor.name)

print(" ==========//==========")

struct Team {
    var player = [String: String]() {
        willSet {
            print("Atual \(player)")
            print("Valor a ser inserido \(newValue)")
            print("**")
        }
        
        didSet {
            print("Quantidade atual \(player.count)")
            print("Valor anterior \(oldValue)")
            print("-------")
        }
    }
}

var team = Team()
team.player["Pedro"] = "Goleiro"
team.player["Vinicius"] = "Atacante"


