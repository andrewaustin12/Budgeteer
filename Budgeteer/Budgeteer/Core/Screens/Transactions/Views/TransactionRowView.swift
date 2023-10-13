//
//  TransactionRowView.swift
//  Budgeteer
//
//  Created by andrew austin on 10/13/23.
//

import SwiftUI

struct TransactionRowView: View {
    let transaction: Transaction

    var body: some View {
        HStack {
            Text(transaction.description ?? "")
            Spacer()
            Text(String(format: "%.2f", transaction.amount))
        }
    }
}
//#Preview {
//    TransactionRowView()
//}
