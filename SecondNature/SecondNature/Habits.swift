//
//  Habits.swift
//  SecondNature
//
//  Created by Eric Johnson on 3/11/23.
//

import Foundation

class Habits: ObservableObject {
    @Published var habits = [HabitItem]() {
        didSet {
            let encoder = JSONEncoder()

            if let encoded = try? encoder.encode(habits) {
                UserDefaults.standard.set(encoded, forKey: "Habits")
            }
        }
    }
    
    init() {
        if let savedHabits = UserDefaults.standard.data(forKey: "Habits") {
            if let decodedItems = try? JSONDecoder().decode([HabitItem].self, from: savedHabits) {
                habits = decodedItems
            }
        } else {
            habits = []
        }
    }
}
