import UIKit

protocol Veiculos {
    func tempoEstimado(for distance: Int) -> Int
    func distancia(distance: Int)
}

struct Carro: Veiculos {
    func tempoEstimado(for distance: Int) -> Int {
        distance / 50
    }
    
    func distancia(distance: Int) {
        print("A distancia percorrida foi de \(distance)")
    }
    
    func cor(_ cor: String) {
        print("A cor do carro é \(cor)")
    }
}

func commuteTrajeto(distance: Int, using veiculo: Veiculos) {
    if veiculo.tempoEstimado(for: distance) > 100 {
        print("Vixe, uma hora chega...")
    } else {
        veiculo.distancia(distance: distance)
    }
}

let car = Carro()
commuteTrajeto(distance: 10, using: car)

print("====== OPAQUE RETURN ======")

func opaque() -> some Veiculos {
    return Carro()
}

print("\(opaque().tempoEstimado(for: 100))km")

print("====== // ======")
var quote = "   Olá mundo   "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)
let comp = quote.components(separatedBy: .whitespaces)
print("\(trimmed)")
print("\(quote.trimmed())")
print("comp \(comp)")

extension String {
    func trimmed() -> String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    var name: String
}

var taylor = Employee(name: "Taylor Swift")
taylor.sayHello()
