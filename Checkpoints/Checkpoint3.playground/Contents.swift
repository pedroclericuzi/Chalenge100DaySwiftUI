import UIKit

var greeting = "Hello, playground"

for i in 1...100 {
    var msg = ""
    if i.isMultiple(of: 3) && !i.isMultiple(of: 5) {
        msg = "Fizz"
    } else if !i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        msg = "Buzz"
    } else if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        msg = "FizzBuzz"
    } else {
        msg = "\(i)"
    }
    print(msg)
}
