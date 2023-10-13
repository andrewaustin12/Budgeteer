//
//  UpcomingTrips.swift
//  Budgeteer
//
//  Created by andrew austin on 10/13/23.
//

import SwiftUI

struct UpcomingTripsView: View {
    var body: some View {
        VStack{
            Text("Upcoming Trips")
                .font(.title)
            Text("This section displays a list of the user's upcoming trips, along with the amount of money that has been budgeted for each trip and the amount of money that has been spent so far.")
        }
    }
}

#Preview {
    UpcomingTripsView()
}
