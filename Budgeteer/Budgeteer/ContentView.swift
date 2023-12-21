//
//  ContentView.swift
//  Budgeteer
//
//  Created by andrew austin on 10/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    
    @State private var activeTab: Tab = .recents
    var body: some View {
        TabView(selection: $activeTab) {
            Recents()
                .tag(Tab.recents)
                .tabItem { Tab.recents.tabContent}
            
            Search()
                .tag(Tab.search)
                .tabItem { Tab.search.tabContent}
            
            Graphs()
                .tag(Tab.charts)
                .tabItem { Tab.charts.tabContent}
            
            Settings()
                .tag(Tab.settings)
                .tabItem { Tab.settings.tabContent}
        }
        .tint(appTint)
        .sheet(isPresented: $isFirstTime, content: {
            IntroScreen()
                .interactiveDismissDisabled()
        })
    }
}


#Preview {
   ContentView()
}
