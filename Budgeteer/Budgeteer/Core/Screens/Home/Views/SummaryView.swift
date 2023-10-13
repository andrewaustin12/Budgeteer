//
//  SummaryView.swift
//  Budgeteer
//
//  Created by andrew austin on 10/13/23.
//

import SwiftUI

struct SummaryView: View {
    var body: some View {
        VStack {
            Text("Summary:")
                .font(.title)
            Text("This section displays a summary of the user's budget, including the total budget, the amount spent, the amount remaining, and the percentage of the budget that has been spent.")
        }
        
    }
}

#Preview {
    SummaryView()
}
