//
//  ProspectsView.swift
//  HotProspects
//
//  Created by Juan Carlos Robledo Morales on 25/11/24.
//

import SwiftData
import SwiftUI

struct ProspectsView: View {
    enum FilterType {
        case none, contacted, uncontacted
    }
    @Query(sort: \Prospect.name) var prospects: [Prospect]
    @Environment(\.modelContext) var modelContext
    
    let filter: FilterType
    
    var title: String {
        switch filter {
        case .none:
            "Everyone"
        case .contacted:
            "Contacted people"
        case .uncontacted:
            "Uncontacted people"
        }
    }
    
    var body: some View {
        NavigationStack {
            NavigationStack {
                Text("People: \(prospects.count)")
                    .navigationTitle(title)
                    .toolbar {
                        Button("Scan", systemImage: "qrcode.viewfinder") {
                            let prospect = Prospect(name: "Paul Hudson", emailAddress: "paul@hackingwithswift.com", isContacted: false)
                            modelContext.insert(prospect)
                        }
                    }
            }
        }
    }
}

#Preview {
    ProspectsView(filter: .none)
}
