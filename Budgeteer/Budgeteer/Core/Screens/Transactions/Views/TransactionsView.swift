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
                
                // add chart here or cards
                                        
                List {
                    ForEach(transactions.sorted(by: { $0.date > $1.date })) { transaction in // Sort by most recent date
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
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding()
            }
        }
        
    }
}

#Preview {
    TransactionsView(transactions: Transaction.mockTransactions)
}







