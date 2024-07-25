import UIKit

let item = "Computador"

func inventario(_ item: String) {
    print("O item inventariado foi um \(item)")
}

inventario(item)

func contagem(qtd: Int...) {
    for item in qtd {
        if item == 1 {
            print("1 carneirinho")
        } else {
            print("\(item) carneirinhos")
        }
    }
}

contagem(qtd: 1,2,3,4)

var num = 10

func multiplica(_ num: inout Int) {
    num *= 5
}

multiplica(&num)
print(num)
