//
//  SectionHeaderView.swift
//  Budgeteer
//
//  Created by andrew austin on 10/13/23.
//

import SwiftUI

struct SectionHeaderView: View {
    let date: Date
    let transactions: [Transaction]

    // Calculate the total spent for the given date
    var totalSpent: Double {
        return transactions.filter { $0.date == date }.reduce(0) { $0 + $1.amount }
    }

    var body: some View {
        HStack {
            Text(date.formatted(date: .long, time: .omitted))
            Spacer()
            Text("Total: \(totalSpent, specifier: "%.2f")") // Display the total spent for the day
        }
    }
}

//#Preview {
//    SectionHeaderView()
//}
