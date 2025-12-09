//
//  DragonDetailView.swift
//  AdvancedNavDragons
//
//  Created by Dallin J Cottam on 12/4/25.
//
import SwiftUI

struct DragonDetailView: View {
    @State var viewModel = DragonsViewModel.shared
    @State var dragon: Dragon = Dragon(name: "Test", powers: [Power(name: "Test", description: "Nah", damage: "90000", accuracy: 3.2)], species: "Bronze Dragon", lore: "IDK", rating: "10/10", health: 212, other: "")
    
    var body: some View {
        NavigationStack {
            ZStack {
                List {
                    Text("\(dragon.name)")
                    Text("Species: \(dragon.species)")
                    Text("Background: \(dragon.lore)")
                    Text("HP: \(dragon.health)")
                    Text("Rating: \(dragon.rating)")
                }
                .navigationTitle("\(dragon.name)")
            }
        }
    }
    
}

#Preview {
    DragonDetailView(dragon: Dragon(name: "Test", powers: [Power(name: "Test", description: "Nah", damage: "90000", accuracy: 3.2)], species: "Bronze Dragon", lore: "IDK", rating: "10/10", health: 212, other: ""))
}
