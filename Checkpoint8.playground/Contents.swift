import Cocoa

protocol Building {
    var rooms: Int { get set }
    var cost: Int { get set }
    var realEstateAgent: String { get set }
    
    func printSummary()
    
}

struct House: Building {
    var rooms: Int
    var cost: Int
    var realEstateAgent: String
    
    init (rooms: Int, agent: String) {
        self.rooms = rooms
        self.cost = rooms * 150_000
        self.realEstateAgent = agent
    }
    
    func printSummary() {
        print("This home has \(rooms) rooms, and is currently listed for $\(cost). The selling agent is \(realEstateAgent)")
    }
}

struct Office: Building {
    var rooms: Int
    var cost: Int
    var realEstateAgent: String
    
    init (offices: Int, agent: String) {
        self.rooms = offices
        self.cost = rooms * 12_000
        self.realEstateAgent = agent
    }
    
    func printSummary() {
        print("This property has \(rooms) offices, and is currently listed for $\(cost). The selling agent is \(realEstateAgent)")
    }
}

let house  = House(rooms: 4, agent: "Karen Ramos")
house.printSummary()

let office = Office(offices: 12, agent: "Carol Stills")
office.printSummary()
