//
//  BudgeteerApp.swift
//  Budgeteer
//
//  Created by andrew austin on 10/13/23.
//

import SwiftUI
import SwiftData

@main
struct BudgeteerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Transaction.self])
    }
}
