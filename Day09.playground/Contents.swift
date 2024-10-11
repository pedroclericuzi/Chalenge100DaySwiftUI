import UIKit

let driving = {
    print("I'm driving in my car")
}

driving()

let jogador = { (jogador: String, time: String) in
    print("\(jogador) joga no \(time)")
}

jogador("Kuki", "Gigante CNC")


let passagens = { (encontradas: Bool, qtd: Int? ) -> String in
    if encontradas {
        if let qtd = qtd {
            return "\(qtd) passagens encontradas"
        }
        
    }
    return "Não foram encontradas passagens"
}

func destinoViagem(encontrar: (_ encontradas: Bool, _ qtd: Int?) -> String) {
    print("Buscando passagens...")
    print(encontrar(true, 10))
}

destinoViagem(encontrar: passagens)

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car 1")
}

print("------------")
print("Esse é meu segundo método de travel")
func travelWithReturn(pais: String, action: (String) -> String ) {
    print("\(action(pais))")
}

travelWithReturn(pais: "Brasil", action: { pais in
    return "O país atual é o \(pais)"
})

travelWithReturn(pais: "Japão", action: { pais in
    return "O país atual é o \(pais)"
})

print("------------")

func travelOfTravel() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result = travelOfTravel()
result("Brasil")
result("EUA")
result("Argentina")

func buscarNome(_ name: (String) -> Void) {
    print(nome("Pedro"))
}

var nome = { (nome: String) -> String in
    return "Meu nome é \(nome)"
}

buscarNome({ name in
    print("\(name)")
})
