//
//  SettingsView.swift
//  AdvancedNavDragons
//
//  Created by Dallin J Cottam on 12/4/25.
//
import SwiftUI

struct SettingsView: View {
    @Environment(DragonsRouter.self) var router
    @State var viewModel = DragonsViewModel.shared
    @State var color: Color = .white
    
    var body: some View {
        ZStack {
            viewModel.settingViewColor.ignoresSafeArea()
            VStack {
                ColorPicker("BackGround Color", selection: $color)
                    .font(.custom("", size: 30))
                    .bold()

            }
            .padding()
        }
        .onChange(of: color) { _, color in
            viewModel.settingViewColor = color
        }
    }
}

#Preview {
    SettingsView()
}
