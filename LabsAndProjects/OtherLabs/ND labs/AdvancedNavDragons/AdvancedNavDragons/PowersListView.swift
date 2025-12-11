//
//  PowersList.swift
//  AdvancedNavDragons
//
//  Created by Dallin J Cottam on 12/4/25.
//
import SwiftUI

struct PowersListView: View {
    @State var viewModel = DragonsViewModel.shared
    @State var dragon: Dragon
    
    var body: some View {
        ZStack {
            viewModel.settingViewColor.ignoresSafeArea()
            List {
                ForEach(dragon.powers) { power in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(power.name)
                            Text(power.description)
                        }
                        VStack(alignment: .trailing) {
                            Text("DMG: \(power.damage)")
                            Text("Accuracy: \(power.accuracy, format: .percent)")
                        }
                    }
                    .listRowBackground(viewModel.settingViewColor.mix(with: .white, by: 0.1))
                }
            }
            .scrollContentBackground((viewModel.settingViewColor == Color.white) ? .visible : .hidden)
            .background(viewModel.settingViewColor)
            .navigationTitle("\(dragon.name)'s Powers")
        }
    }
}

