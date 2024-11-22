//
//  ContentView.swift
//  HotProspects
//
//  Created by Juan Carlos Robledo Morales on 20/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var backgroundColor = Color.red

    var body: some View {
        VStack {
            Text("Hello, World!")
                .padding()
                .background(backgroundColor)

            Text("Change Color")
                .padding()
                .contextMenu {
                    Button("Red") {
                        backgroundColor = .red
                    }
                    Button("Green") {
                        backgroundColor = .green
                    }
                    Button("Blue") {
                        backgroundColor = .blue
                    }
                }
            Button("Red", systemImage: "checkmark.circle.fill") {
                backgroundColor = .green
            }
            Button("Delete", systemImage: "trash", role: .destructive) {
                print("Elemento eliminado")
            }

        }
    }
}


#Preview {
    ContentView()
}
