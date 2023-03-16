//
//  HabitItem.swift
//  SecondNature
//
//  Created by Eric Johnson on 3/11/23.
//

import Foundation

struct HabitItem: Codable, Identifiable, Equatable {
    var id = UUID()
    
    var symbol: String
    var habitName: String
    var habitDesc: String
    
    var hasGoal: Bool
    var goalDays: Int
    var daysComplete: Int = 0
    var currentStreak: Int = 0
    
//    var hasAmountGoal: Bool
//    var goalAmount: Double
    
    var datesCompleted = [Date]()
}
