//
//  DragonDetailView.swift
//  AdvancedNavDragons
//
//  Created by Dallin J Cottam on 12/4/25.
//
import SwiftUI

struct DragonDetailView: View {
    @Environment(DragonsRouter.self) var router
    @State var viewModel = DragonsViewModel.shared
    @State var dragon: Dragon
    
    var body: some View {
            ZStack {
                List {
                    Text("\(dragon.name)")
                        .listRowBackground(viewModel.settingViewColor.mix(with: .white, by: 0.1))
                    
                    Text("Species: \(dragon.species)")
                        .listRowBackground(viewModel.settingViewColor.mix(with: .white, by: 0.1))
                    Text("Background: \(dragon.lore)")
                        .listRowBackground(viewModel.settingViewColor.mix(with: .white, by: 0.1))
                    Text("HP: \(dragon.health)")
                        .listRowBackground(viewModel.settingViewColor.mix(with: .white, by: 0.1))
                    Text("Rating: \(dragon.rating)")
                        .listRowBackground(viewModel.settingViewColor.mix(with: .white, by: 0.1))
                    Button(action: {
                        router.navigateTo(route: .powers(dragon: dragon))
                    }) {
                        Text("Powers")
                            .foregroundStyle(.black)
                    }
                    .listRowBackground(viewModel.settingViewColor.mix(with: .white, by: 0.1))
                    Text("\(dragon.lore)")
                        .listRowBackground(viewModel.settingViewColor.mix(with: .white, by: 0.1))
                }
                .scrollContentBackground((viewModel.settingViewColor == Color.white) ? .visible : .hidden)
                .background(viewModel.settingViewColor)
                .navigationTitle("\(dragon.name)")
                Image("\(dragon.pic)")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .position(x: 200, y: 500)
            }
        }
    
}

#Preview {
    DragonDetailView(dragon: Dragon(name: "Test", pic: "EarthDragon", powers: [Power(name: "Test", description: "Nah", damage: "90000", accuracy: 3.2)], species: "Bronze Dragon", lore: "IDK", rating: "10/10", health: 212, other: ""))
}
