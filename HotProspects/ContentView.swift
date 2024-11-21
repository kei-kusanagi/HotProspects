//
//  ContentView.swift
//  HotProspects
//
//  Created by Juan Carlos Robledo Morales on 20/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = "One"

    var body: some View {
//        TabView {
//            Text("Tab 1")
//            Text("Tab 2")
//        }
        TabView(selection: $selectedTab) {
                   Button("Show Tab 2") {
                       selectedTab = "Two"
                   }
                   .tabItem {
                       Label("One", systemImage: "star")
                   }
                   .tag("One")

                   Text("Tab 2")
                       .tabItem {
                           Label("Two", systemImage: "circle")
                       }
                       .tag("Two")
               }
           }
       }


#Preview {
    ContentView()
}
