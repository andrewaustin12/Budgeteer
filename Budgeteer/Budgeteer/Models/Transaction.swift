//
//  Expense.swift
//  Budgeteer
//
//  Created by andrew austin on 10/13/23.
//

import Foundation

struct Transaction: Identifiable {
    let id: UUID
    let date: Date
    let amount: Double
    let category: String
    let description: String?
    
    static var mockTransactions: [Transaction] {
        let now = Date()
        
        return [
            Transaction(id: UUID(), date: now, amount: 30, category: "Shopping", description: "Gifts"),
            Transaction(id: UUID(), date: now, amount: 40, category: "Entertainment", description: "Movie night"),
            Transaction(id: UUID(), date: now.addingTimeInterval(-86400), amount: 25, category: "Transportation", description: "Taxi ride"),
            Transaction(id: UUID(), date: now.addingTimeInterval(-86400), amount: 15, category: "Dining", description: "Dinner at a local restaurant"),
            Transaction(id: UUID(), date: now.addingTimeInterval(-86400 * 2), amount: 50, category: "Shopping", description: "Clothing"),
            Transaction(id: UUID(), date: now.addingTimeInterval(-86400 * 2), amount: 10, category: "Groceries", description: "Grocery shopping"),
            Transaction(id: UUID(), date: now.addingTimeInterval(-86400 * 3), amount: 35, category: "Entertainment", description: "Concert tickets"),
            Transaction(id: UUID(), date: now.addingTimeInterval(-86400 * 3), amount: 60, category: "Accommodation", description: "Hotel stay"),
            Transaction(id: UUID(), date: now.addingTimeInterval(-86400 * 4), amount: 22, category: "Transportation", description: "Subway pass"),
            Transaction(id: UUID(), date: now.addingTimeInterval(-86400 * 4), amount: 18, category: "Dining", description: "Lunch at a cafe"),
            Transaction(id: UUID(), date: now.addingTimeInterval(-86400 * 5), amount: 45, category: "Shopping", description: "Electronics"),
            Transaction(id: UUID(), date: now.addingTimeInterval(-86400 * 5), amount: 12, category: "Groceries", description: "Grocery shopping"),
            Transaction(id: UUID(), date: now.addingTimeInterval(-86400 * 6), amount: 55, category: "Entertainment", description: "Theater tickets"),
            Transaction(id: UUID(), date: now.addingTimeInterval(-86400 * 6), amount: 70, category: "Accommodation", description: "Airbnb booking"),
            Transaction(id: UUID(), date: now.addingTimeInterval(-86400 * 7), amount: 28, category: "Transportation", description: "Bus fare")
        ]
    }



}
