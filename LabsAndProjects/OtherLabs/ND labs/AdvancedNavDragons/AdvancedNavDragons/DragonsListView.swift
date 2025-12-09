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
    
    var body: some View {
        ZStack {
            dragonViewModel.settingViewColor.ignoresSafeArea()
            VStack {
                List {
                    ForEach(dragonViewModel.dragons) { dragon in
                        Text("\(dragon.name)")
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

#Preview {
    DragonsListView()
}
