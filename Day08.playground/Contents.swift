import UIKit

enum RequisicaoErro: Error {
    case erroInterno
    case paginaNaoEncontrada
    case semPermissao
    
    func tipo() -> String {
        switch self {
        case .erroInterno:
            return "Ocorreu um erro inesperado, tente novamente mais tarde"
        case .paginaNaoEncontrada:
            return "404 error not found"
        case .semPermissao:
            return "300 sem permissao, contate o administrador"
        }
    }
}

func existeErro(_ tipoErro: Int) throws -> String {
    switch tipoErro {
    case 500:
        throw RequisicaoErro.erroInterno
    case 400:
        throw RequisicaoErro.paginaNaoEncontrada
    case 300:
        throw RequisicaoErro.semPermissao
    default:
        return "Não existe erro, pode seguir"
    }
}

do {
    try existeErro(300)
    print("Sucesso!!")
} catch RequisicaoErro.erroInterno {
    print(RequisicaoErro.erroInterno.tipo())
} catch RequisicaoErro.paginaNaoEncontrada {
    print(RequisicaoErro.paginaNaoEncontrada.tipo())
} catch RequisicaoErro.semPermissao {
    print(RequisicaoErro.semPermissao.tipo())
} catch {
    print("Erro inexistente \(error)")
}
