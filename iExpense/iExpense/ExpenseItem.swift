//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Eric Johnson on 2/28/23.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
    
    
}
