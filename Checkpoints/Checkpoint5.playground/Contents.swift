import UIKit

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
let evenNumbers = luckyNumbers
    .filter({!$0.isMultiple(of: 2)})
    .sorted()

evenNumbers.map({ item in
    print("\(item) is a luck number")
})
