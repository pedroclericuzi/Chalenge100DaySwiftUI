import UIKit

enum Erro: Error {
    case outOfBounds
    case noRoot
    func errorRawValue() -> (String, Int){
        switch self {
        case .outOfBounds: return ("Out of Bounds :(", 404)
        case .noRoot: return ("No root, try another value", 203)
        }
    }
}

func rootSquare(at number: Int) throws -> Bool {
    if number > 10_000 || number < 1 {
        throw Erro.outOfBounds
    }
    
    let cutValue = number == 1 ? 1 : number / 2
    
    for i in 1...cutValue {
        if i * i == number {
            return true
        }
    }
    
    throw Erro.noRoot
}

do {
    try rootSquare(at: 16)
    print("É uma raiz quadrada :)")
    try rootSquare(at: -1)
} catch Erro.outOfBounds {
    print("\(Erro.outOfBounds.errorRawValue())")
} catch Erro.noRoot {
    print("Erro \(Erro.noRoot.errorRawValue().1): \(Erro.noRoot.errorRawValue().0)")
}






