import UIKit

var greetings: [String] = ["Olá", "Mundo"]
var emptyGreetings = [String]()
var user: [String: String] = ["nome": "Pedro"]
var nicknames = [String: String]()
nicknames["nome"] = "pedroclericuzi"
print("\(user["nome"] ?? "")")
print("\(nicknames["nome"]!)")
