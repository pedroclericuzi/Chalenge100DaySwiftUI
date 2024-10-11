import UIKit

func comprimento() {
    var greeting: String? = nil
    if let oi = greeting {
        print("Aqui tem valor :)")
    }
    var greeting2: String? = "Oiiiiii"
    guard let oi = greeting2 else {
        print("Aqui não tem valor algum :(")
        return
    }
    print(oi)
}

comprimento()

print("======== / ========")

enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("Returned something")
} else {
    print("I'm sorry, we are empty :(")
}
    
