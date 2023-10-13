//
//  City.swift
//  Budgeteer
//
//  Created by andrew austin on 10/13/23.
//

import Foundation

struct City {
    let id: UUID
    let name: String
    let totalBudget: Double
    let currency: String
    var days: [Day]
    
    static var mockCity: City {
        return City(id: UUID(), name: "New York", totalBudget: 2000, currency: "USD", days: [])
    }
}
