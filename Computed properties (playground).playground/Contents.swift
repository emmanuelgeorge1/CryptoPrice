import Foundation

var pizzaInInches: Int = 16{
    willSet{
//        print(pizzaInInches)
//        print(newValue)
    }
    didSet{
        if pizzaInInches >= 18{
            print("invalid size pizza size set to max 18")
            pizzaInInches = 18
        }
//        print(pizzaInInches)
//        print(oldValue)
    }
}

pizzaInInches = 55

var numberOfPeople: Int = 12
let slicesPerPerson: Int = 4

//short version of getter
//var numberOfSlices: Int {
//return pizzaInInches - 4
//}
//real vesion of getters
var numberOfSlices: Int {
    get{
        return pizzaInInches - 4
    }
//    set{
//        print("Number of slices now has new value which is \(newValue)")
//    }

}
var numberOfPizza:Int{
    get{
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set{
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
    
}

numberOfPizza = 6
print(numberOfPeople)

