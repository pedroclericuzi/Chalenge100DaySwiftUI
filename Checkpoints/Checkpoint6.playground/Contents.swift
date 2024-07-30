import UIKit

struct Car {
    let model: String
    let numbersSeats: Int
    private(set) var currentGear: Int = 1
    
    enum Gear {
        case up, down
    }
    
    mutating func changeGear(_ moviment: Gear) {
        switch moviment {
        case .up:
            if currentGear < 10 {
                currentGear += 1
            } else {
                print("Invalid gear")
            }
        case .down:
            if currentGear > 1 {
                currentGear -= 1
            } else {
                print("Invalid gear")
            }
        }
    }
}

var car = Car(model: "Ford Fiesta", numbersSeats: 5)
car.changeGear(.up)
car.changeGear(.up)
car.changeGear(.up)
car.changeGear(.down)
print("Current gear: \(car.currentGear)")

