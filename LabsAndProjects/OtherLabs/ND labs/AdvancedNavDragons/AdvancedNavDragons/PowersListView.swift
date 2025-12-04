//
//  PowersList.swift
//  AdvancedNavDragons
//
//  Created by Dallin J Cottam on 12/4/25.
//
import SwiftUI

struct PowersListView: View {
    @State var dragon: Dragon
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(dragon.powers) { power in
                    Text("\(power.name)")
                }
                .navigationTitle("Powers")
            }
        }
    }
}

