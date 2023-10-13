//
//  TransactionsView.swift
//  Budgeteer
//
//  Created by andrew austin on 10/13/23.
//

import SwiftUI


struct TransactionsView: View {
    @State private var isAddingTransaction = false
    
    
    let transactions: [Transaction]

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack {
                
                                        
                List {
                    ForEach(transactions.sorted(by: { $0.date < $1.date })) { transaction in
                        Section(header: SectionHeaderView(date: transaction.date, transactions: transactions)) {
                            ForEach(transactions.filter { $0.date == transaction.date }) { transaction in
                                TransactionRowView(transaction: transaction)
                            }
                        }
                    }
                }
                .listStyle(GroupedListStyle())
            .navigationTitle("Transactions")
            }
            
            Button(action: {
                print("add transaction")
            }) {
                Image(systemName: "plus.circle.fill")
                    .font(.largeTitle)
                    .padding()
            }
        }
        
    }
}

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




#Preview {
    TransactionsView(transactions: Transaction.mockTransactions)

}
