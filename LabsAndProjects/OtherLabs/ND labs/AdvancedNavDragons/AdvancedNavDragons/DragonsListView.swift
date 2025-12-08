//
//  DragonsListView.swift
//  AdvancedNavDragons
//
//  Created by Dallin J Cottam on 12/4/25.
//
import SwiftUI

struct DragonsListView: View {
    @Environment(DragonsRouter.self) var router
    @State var dragonViewModel = DragonsViewModel(settingViewColor: .white)
    
    var body: some View {
        dragonViewModel.settingViewColor.ignoresSafeArea()
            VStack {
                List {
                    ForEach(dragonViewModel.dragons) { dragon in
                        Text("\(dragon.name)")
                    }
                }
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
}

#Preview {
    DragonsListView()
}
