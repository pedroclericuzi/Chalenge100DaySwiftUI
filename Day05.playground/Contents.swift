import UIKit

let firstScore = 12
let secondScore = 4

let mod = 13 % firstScore == 13 % secondScore
print(mod)

let valueDouble: Double = 90000000000000001
let valueInt: Int = 90000000000000001

let testeDivisao = 10/2.0
print("Divisao int x double \(testeDivisao)")

let comparacao = "Taylor" <= "Zwift"

let ano = 1995

if ano > 1990 && ano < 1995 {
    print("Maior que 1990")
} else if ano == 1995 {
    print("O ano é exatamente igual a 1995")
} else if ano > 1995 {
    print("O ano é maior que 1995")
} else {
    print("Menor que 90")
}

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

let nota = 8

switch nota {
case 0..<6: print("Recuperação")
case 6...8: print("Aprovado")
default: print("Você foi muito bem")
}

