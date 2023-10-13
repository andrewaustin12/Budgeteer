//
//  Day.swift
//  Budgeteer
//
//  Created by andrew austin on 10/13/23.
//

import Foundation

struct Day {
    let id: UUID
    let date: Date
    let dailyBudget: Double
    var activities: [Activity]
    
    static var mockDay: Day {
        return Day(id: UUID(), date: Date(), dailyBudget: 200, activities: [])
    }
}
