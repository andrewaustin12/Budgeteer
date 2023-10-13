//
//  Activity.swift
//  Budgeteer
//
//  Created by andrew austin on 10/13/23.
//

import Foundation

struct Activity {
    let id: UUID
    let name: String
    let cost: Double
    let notes: String?
    
    static var mockActivity: Activity {
        return Activity(id: UUID(), name: "Sightseeing", cost: 50, notes: "Visit Statue of Liberty")
    }
}

