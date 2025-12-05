//
//  SettingsView.swift
//  AdvancedNavDragons
//
//  Created by Dallin J Cottam on 12/4/25.
//
import SwiftUI

struct SettingsView: View {
    @State var viewModel = DragonsViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                ColorPicker("IDK", selection: $viewModel.settingViewColor)
                Rectangle()
                    .frame(height: 100)
//                Text("\(viewModel.settingViewColor)")
            }
            .background(Color(viewModel.settingViewColor))
        }
    }
}

#Preview {
    SettingsView()
}
