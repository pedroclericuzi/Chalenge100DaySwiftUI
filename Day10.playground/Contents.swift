import UIKit

struct Esporte {
    var name: String
    var isOlympicEsporte: Bool

    var olympicStatus: String {
        if isOlympicEsporte {
            return "\(name) é um esporte olimpico. Vai Brasil!"
        } else {
            return "\(name) não é um esporte olimpico"
        }
    }
}

let esporte = Esporte(name: "Futebol", isOlympicEsporte: true)
print("\(esporte.olympicStatus)")

print(" --------- // ---------")

struct Progresso {
    var task: String
    var amount: Int {
        didSet {
            if amount < 100 {
                print("Oba, avançou! Agora está em \(amount)%")
            } else {
                task = "\(task) - FINALIZADA"
                
                print("Que ótimo! Task finalizada :)")
                print("Status: \(task)")
            }
        }
    }
}

var progresso = Progresso(task: "Dia 10", amount: 0)
progresso.amount = 30
progresso.amount = 80
progresso.amount = 100

print("--------- // ---------")

struct Pessoa {
    var nome: String
    
    mutating func mudarNome() {
        nome = "Pedro"
    }
}

var pessoa = Pessoa(nome: "Joao")
print("\(pessoa.nome)")
pessoa.mudarNome()
print("\(pessoa.nome)")

print("--------- // ---------")

let frase = "Todo mundo é náutico"
let sorted = frase.sorted()
let setSorted = Set(sorted)
print(setSorted)
