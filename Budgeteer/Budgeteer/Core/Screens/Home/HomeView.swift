//
//  HomeView.swift
//  Budgeteer
//
//  Created by andrew austin on 10/13/23.
//

import SwiftUI

struct HomeView: View {


    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    HStack {
                        Spacer()
                        NavigationLink(destination: SummaryView()) {
                            VStack {
                                Image(systemName: "house")
                                Text("Summary")

                            }
                        }
                        Spacer()
                        NavigationLink(destination: UpcomingTripsView()) {
                            VStack {
                                Image(systemName: "airplane")
                                Text("Upcoming trips")
                            }
                        }
                        Spacer()
                    }
                    
                    HStack {
                        Spacer()
                        NavigationLink(destination: BudgetVisualizationView()) {
                            VStack {
                                Image(systemName: "chart.bar")
                                Text("Budget visualization")
                            }
                        }
                        Spacer()
                        NavigationLink(destination: RecentTransactionsView()) {
                            VStack {
                                Image(systemName: "creditcard")
                                Text("Recent transactions")
                            }
                        }
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        NavigationLink(destination: BudgetGoalsView()) {
                            VStack {
                                Image(systemName: "target")
                                Text("Budget goals")
                            }
                        }
                        Spacer()
                    }
                }
                .padding()
            }
            .navigationTitle("Home")
        }
    }
}

#Preview {
    HomeView()
}
