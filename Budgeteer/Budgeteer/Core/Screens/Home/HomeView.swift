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
                                HomeCardView(imageName: "house", title: "Trip Summarys")

                            }
                        }
                        Spacer()
                        NavigationLink(destination: UpcomingTripsView()) {
                            VStack {
                                HomeCardView(imageName: "airplane", title: "Upcoming trips")
                            }
                        }
                        Spacer()
                    }
                    
                    HStack {
                        Spacer()
                        NavigationLink(destination: BudgetVisualizationView()) {
                            VStack {
                                HomeCardView(imageName: "chart.bar", title: "Budget Visualization")
                            }
                        }
                        Spacer()
                        NavigationLink(destination: RecentTransactionsView()) {
                            VStack {
                                HomeCardView(imageName: "creditcard", title: "Recent Transactions")
                            }
                        }
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        NavigationLink(destination: BudgetGoalsView()) {
                            VStack {
                                HomeCardView(imageName: "target", title: "Budget Goals")
                            }
                        }
                        Spacer()
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    HomeView()
}
