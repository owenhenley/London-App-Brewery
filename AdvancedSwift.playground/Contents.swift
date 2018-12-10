import UIKit


// Computed Properties

let pizzaInInches = 12
var numberOfPeople = 6
let slicesPerPerson = 5

var numberOfSlices: Int {
        return pizzaInInches - 4
}

var numberOfPizza: Int {
    get {
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set {
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}


// Observed Properties

var morePizzaInInches: Int = 10 {
    willSet {
        print(newValue)
    }
    didSet {
        if morePizzaInInches >= 18 {
            print("Invalid size!")
            morePizzaInInches = 18
        }
    }
}

morePizzaInInches = 40




var width: Float = 1.5
var height: Float = 2.3

var bucketsOfPaint: Int {
    get {
        let size = width * height
    let area: Float = 1.5
    let numberOfBuckets = size / area
    let roundedBuckets = ceilf(numberOfBuckets)
    return Int(roundedBuckets)
    }
    set {
        let areaToCover = Double(newValue) * 1.5
        print("This amount of paint can cover \(areaToCover)")
    }
}

print(bucketsOfPaint)

bucketsOfPaint = 7
