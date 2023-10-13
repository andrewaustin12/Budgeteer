//
//  HomeCardView.swift
//  Budgeteer
//
//  Created by andrew austin on 10/13/23.
//

import SwiftUI

struct HomeCardView: View {
    let imageName: String
    let title: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.white)
                .frame(width: 150, height: 200)
                .shadow(radius: 5)

            VStack {
                Image(systemName: imageName)
                    .font(.system(size: 60))
                    .padding(20)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
                    )
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .shadow(radius: 5)
                    .padding(.vertical, 20)
                    .padding(.horizontal, 10)

                Text(title)
                    .font(.headline)
                    .frame(width: 115) // Set a fixed frame width to constrain the title's size
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
            }
        }
    }
}


#Preview {
    HomeCardView(imageName: "creditcard", title: "Recent Transactions")
}
