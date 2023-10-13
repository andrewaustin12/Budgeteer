//
//  ContentView.swift
//  Budgeteer
//
//  Created by andrew austin on 10/13/23.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            HomeView()
                .onAppear{
                    selectedIndex = 0
                }
                .tabItem{
                    Text("Home")
                    Image(systemName: "house")
                }.tag(0)
            
            TransactionsView(transactions: Transaction.mockTransactions)
                .onAppear{
                    selectedIndex = 1
                }
                .tabItem{
                    Text("Transactions")
                    Image(systemName: "creditcard")
                }.tag(1)
            StatsView()
                .onAppear{
                    selectedIndex = 2
                }
                .tabItem{
                    Text("Stats")
                    Image(systemName: "chart.bar")
                }.tag(2)
            
            SettingsView()
                .onAppear{
                    selectedIndex = 3
                }
                .tabItem{
                    Image(systemName: "gear")
                    Text("Settings")
                }.tag(3)
        }
    }
}


#Preview {
   MainTabView()
}
