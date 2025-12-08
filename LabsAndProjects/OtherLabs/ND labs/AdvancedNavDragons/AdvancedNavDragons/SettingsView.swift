//
//  SettingsView.swift
//  AdvancedNavDragons
//
//  Created by Dallin J Cottam on 12/4/25.
//
import SwiftUI

struct SettingsView: View {
    @Environment(DragonsRouter.self) var router
    @State var viewModel = DragonsViewModel(settingViewColor: .white)
    
    
    var body: some View {
        ZStack {
            viewModel.settingViewColor.ignoresSafeArea()
            VStack {
                ColorPicker("Setting backgroundColor", selection: $viewModel.settingViewColor)
                    .font(.custom("", size: 30))
                    .bold()
            }
            .padding()
        }
        
    }
}

#Preview {
    SettingsView()
}
