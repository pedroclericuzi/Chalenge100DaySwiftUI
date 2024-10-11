import UIKit

struct Olimpiadas {
    var pais: String
    private(set) var medalhas: Int = 0
    
    mutating func addMedalhas(qtd: Int) {
        medalhas = 10
    }
}

var olimpiadas = Olimpiadas(pais: "Brasil")
olimpiadas.addMedalhas(qtd: 10)
print("Total: \(olimpiadas.medalhas)")

print("======//======")

struct CampeonatoBrasileiro {
    static var time: String = ""
    static var serie: String = ""
    static var ano: Int = 0
    
    static func getCamepao(ano: Int) {
        let times = ["Náutico","ABC","Sampaio Correia","Juventude","CSA","Fortaleza","Bahia","Vitória"]
        
        let serie = ["Série A","Série B","Série C","Série D"]
        
        let timeRandom = Int.random(in: 0..<8)
        let serieRandom = Int.random(in: 0..<4)
        time = times[timeRandom]
        self.serie = serie[serieRandom]
        self.ano = ano
    }
}

CampeonatoBrasileiro.getCamepao(ano: 2020)
print("Campeão: \(CampeonatoBrasileiro.time)")
print("Série: \(CampeonatoBrasileiro.serie)")
print("Ano: \(CampeonatoBrasileiro.ano)")
print("======//======")


