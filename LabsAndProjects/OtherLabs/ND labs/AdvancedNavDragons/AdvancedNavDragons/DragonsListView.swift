//
//  DragonsListView.swift
//  AdvancedNavDragons
//
//  Created by Dallin J Cottam on 12/4/25.
//
import SwiftUI

struct DragonsListView: View {
    @State var dragonViewModel = DragonsViewModel(dragons: [Dragon(name: "Test", powers: [Power(name: "Test", description: "Nah", damage: "90000", accuracy: 3.2)])])
    var body: some View {
        NavigationStack {
            List {
                ForEach(dragonViewModel.dragons) { dragon in
                    Text("\(dragon.name)")
                }
            }
            .navigationTitle("Dragons")
        }
    }
}

#Preview {
    DragonsListView()
}
