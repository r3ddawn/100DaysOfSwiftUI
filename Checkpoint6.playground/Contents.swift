import Cocoa


struct Car {
    private let model: String
    private let numberOfSeats: Int
    private var currentGear: Int
    
    init (model: String, numberOfSeats: Int) {
        self.model = model
        self.numberOfSeats = numberOfSeats
        currentGear = 1
    }
    
    func vehicleInfo () -> String {
        return "This is the model \(model) and has \(numberOfSeats) seats."
    }
    
    func currentGearPrint () {
        print("I am in gear \(currentGear)")
    }
    
    mutating func upShift() {
       changeGear(gear: "Up")
    }
    
    mutating func downShift() {
        changeGear(gear: "Down")
    }
    
    private mutating func changeGear(gear: String) {
        switch gear {
            case "Up":
                if currentGear < 6 {
                    currentGear += 1
                    print("Shifting Gears!")
                    currentGearPrint()
                } else {
                    print("We cannot shift any higher!")
                }
            case "Down":
                if currentGear > 0 {
                    currentGear -= 1
                    print("Shifting Gears!")
                    currentGearPrint()
                    
                }
            
            default:
                print("Something went wrong")
                currentGearPrint()
        }
    }
}

var car = Car(model: "EV6", numberOfSeats: 5)
car.vehicleInfo()
car.upShift()
car.downShift()
