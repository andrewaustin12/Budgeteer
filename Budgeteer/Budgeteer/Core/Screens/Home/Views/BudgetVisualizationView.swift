//
//  BudgetVisualizationView.swift
//  Budgeteer
//
//  Created by andrew austin on 10/13/23.
//

import SwiftUI

struct BudgetVisualizationView: View {
    var body: some View {
        VStack {
            Text("Budget Visualization")
                .font(.title)
            Text("This section displays a visualization of the user's budget, such as a pie chart or bar chart.")
        }
    }
}

#Preview {
    BudgetVisualizationView()
}
