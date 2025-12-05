//
//  PowersList.swift
//  AdvancedNavDragons
//
//  Created by Dallin J Cottam on 12/4/25.
//
import SwiftUI

struct PowersListView: View {
    @State var dragon: Dragon = Dragon(name: "Test", powers: [Power(name: "Test", description: "Nah", damage: "90000", accuracy: 3.2)], species: "Bronze Dragon", lore: "IDK", rating: "10/10", health: 212, other: "")
   
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(dragon.powers) { power in
                    Text("Power: \(power.name)")
                    Text("Damage: \(power.damage)")
                    Text("Description: \(power.description)")
                    Text("Accuracy: \(power.accuracy)%")
                }
                .navigationTitle("\(dragon.name)'s Powers")
            }
        }
    }
}

#Preview {
    PowersListView(dragon: Dragon(name: "Test", powers: [Power(name: "Test", description: "Nah", damage: "90000", accuracy: 3.2)], species: "Bronze Dragon", lore: "IDK", rating: "10/10", health: 212, other: ""))
}
