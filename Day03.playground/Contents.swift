import UIKit

let names = Set(["Pedro", "Vinicius", "Batista", "Clericuzi", "Pedro"])
let names2 = Set(["Pedro", "Vinicius", "Batista", "Clericuzi"])
print(names)
print(names2)

var tupla = (name: "Paul", age: 40, isMarried: true)
print(tupla)
tupla.age = 35
print(tupla)

let numbers = [0, 4, 2, 8]
let ordenado = numbers.sorted()
let minNumber = numbers.sorted().first
let maxNumber = numbers.sorted().last
print(ordenado)
print("Minimo \(minNumber) e Máximo \(maxNumber)")

let heights:[String: Double] = [
    "EU": 1.78,
    "TU": 1.73
]

print(heights["EU"])

let titulos = ["a":0, "b":0, "c":1]
print(titulos["c"])
print(titulos["d", default: 0])
let filtrarTitulos = titulos.values.sorted().last
print(filtrarTitulos)

var dicEmpty = [String]()
dicEmpty.append("Olá mundo")
print(dicEmpty)

enum ResultRequest {
    case failure
    case success
    
    func returnText() -> String {
        switch self {
            case .failure: return "Deu Errado"
            case .success: return "Agora foi"
        }
    }
}

print(ResultRequest.failure.returnText())

enum sports {
    case football(teams: String)
    case americanFootball(teams: String)
    case running(distance: Int)
    
    func fevTeam() -> String {
        switch self {
        case let .football(teams):
            return "Meu time de futebol é o \(teams)"
        case let .americanFootball(teams):
            return "Meu time de futebol americano é o \(teams)"
        case .running(distance: let distance):
            return "A distancia percorrida foi de \(distance) km"
        }
    }
}

let futebol = sports.football(teams: "Náutico")
print(futebol.fevTeam())

enum nautico: String {
    case goleiro = "Lucas Perri"
    case zagueiro1 = "Camutanga"
    case zagueiro2 = "W. Leonardo"
    case ld
}

print(nautico.goleiro.rawValue)
print(nautico(rawValue: "Camutanga") ?? "")
print(nautico.ld.rawValue)

let tupla2 = (1, 2, 3, 4)
print(tupla2.0)
