//
//  RecentTransactionsView.swift
//  Budgeteer
//
//  Created by andrew austin on 10/13/23.
//

import SwiftUI

struct RecentTransactionsView: View {
    var body: some View {
        VStack {
            Text("Recent Transactions")
                .font(.title)
            Text("This section displays a list of the user's recent transactions.")
        }
    }
}

#Preview {
    RecentTransactionsView()
}
