//
//  DragonsListView.swift
//  AdvancedNavDragons
//
//  Created by Dallin J Cottam on 12/4/25.
//
import SwiftUI

struct DragonsListView: View {
    @State var dragonViewModel = DragonsViewModel()
    
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
