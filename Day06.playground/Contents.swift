import UIKit

var num = 1

while num < 1 {
    print("Não é pra entrar aqui")
}

print("======//======")

repeat {
    print("Tem que entrar aqui uma vez")
} while num < 1

print("======//======")

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
        
        if i == 5 {
            print("Não vai mais rodar o loop interno")
            break outerLoop
        }
        
    }
    
    if i > 5 {
        print("Agora só roda o loop externo")
    }
}

print("======//======")

for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
        
        if i == 5 {
            print("Saindo do loop interno")
            break
        }
        
    }
    
    if i > 5 {
        print("------> Loop externo")
    }
}

print("======//======")

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}

print("======//======")
