//
//  DragonsListView.swift
//  AdvancedNavDragons
//
//  Created by Dallin J Cottam on 12/4/25.
//
import SwiftUI

struct DragonsListView: View {
    @Environment(DragonsRouter.self) var router
    @State var dragonViewModel = DragonsViewModel.shared
//    @State var dragon =  Dragon(name: "Test", powers: [Power(name: "Test", description: "Nah", damage: "90000", accuracy: 3.2)], species: "Bronze Dragon", lore: "IDK", rating: "10/10", health: 212, other: "")
    
    var body: some View {
        ZStack {
            dragonViewModel.settingViewColor.ignoresSafeArea()
            VStack {
                List {
                    ForEach(dragonViewModel.dragons) { dragon in
                        Button(action: {
                            router.navigateTo(route: .detail(dragon: dragon))
                        }) {
                            HStack {
                                Image("\(dragon.pic)")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                Text("\(dragon.name)")
                                    .foregroundStyle(.black)
                            }
                            .padding()
                        }
                        .listRowBackground(dragonViewModel.settingViewColor.mix(with: .white, by: 0.1))
                    }
                }
                .scrollContentBackground((dragonViewModel.settingViewColor == Color.white) ? .visible : .hidden)
                .background(dragonViewModel.settingViewColor)
                
                .navigationTitle("Dragons")
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        router.navigateTo(route: .settings)
                    }) {
                        Image(systemName: "gearshape")
                    }
                }
            }
        }
        .environment(dragonViewModel)
    }
}

//#Preview {
//    DragonsListView()
//}
