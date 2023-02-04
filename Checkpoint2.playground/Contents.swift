import Cocoa

var johnsonHouseHoldNames: [String] = ["Eric", "Karissa", "Piper", "Deacon", "Avery", "Parker", "Penny", "Rae", "Chicken", "Chicken", "Chicken", "Chicken", "Chicken", "Chicken", "Rooster"]

var uniqueNames = Set(johnsonHouseHoldNames)

print("There are \(johnsonHouseHoldNames.count) creatures in the Johnson Household with \(uniqueNames.count) names")

