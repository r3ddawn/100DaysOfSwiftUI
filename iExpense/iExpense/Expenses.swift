//
//  Expenses.swift
//  iExpense
//
//  Created by Eric Johnson on 2/28/23.
//

import Foundation

class Expenses: ObservableObject {
//    @Published var items = [ExpenseItem]() {
//        didSet {
//            let encoder = JSONEncoder()
//
//            if let encoded = try? encoder.encode(items) {
//                UserDefaults.standard.set(encoded, forKey: "Items")
//            }
//        }
//    }
    
    @Published var businessItems = [ExpenseItem]() {
        didSet {
            let encoder = JSONEncoder()

            if let encoded = try? encoder.encode(businessItems) {
                UserDefaults.standard.set(encoded, forKey: "BusinessItems")
            }
        }
}
        
    @Published var personalItems = [ExpenseItem]() {
        didSet {
            let encoder = JSONEncoder()
            
            if let encoded = try? encoder.encode(personalItems) {
                UserDefaults.standard.set(encoded, forKey: "PersonalItems")
            }
        }
    }
    
    init() {
        if let savedBusinessItems = UserDefaults.standard.data(forKey: "BusinessItems") {
            if let decodedItems = try? JSONDecoder().decode([ExpenseItem].self, from: savedBusinessItems) {
                businessItems = decodedItems
            }
        } else {
            businessItems = []
        }
        if let savedPersonalItems = UserDefaults.standard.data(forKey: "PersonalItems") {
            if let decodedItems = try? JSONDecoder().decode([ExpenseItem].self, from: savedPersonalItems) {
                personalItems = decodedItems
            }
        } else {
            personalItems = []
        }
        
    }
    
}
