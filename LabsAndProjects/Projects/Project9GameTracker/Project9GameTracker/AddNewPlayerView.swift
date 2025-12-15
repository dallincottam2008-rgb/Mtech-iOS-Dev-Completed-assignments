//
//  AddNewPlayerView.swift
//  Project9GameTracker
//
//  Created by Dallin J Cottam on 12/11/25.
//
import SwiftUI

struct AddNewPlayerView: View {
    @Environment(\.dismiss) var dismiss
    @State var viewModel = ViewModel.shared
    @State var newPlayerName = ""
    @State var newPlayerScore = ""
    
    var body: some View {
        VStack {
            Text("New Player Name")
            TextField("Name", text: $newPlayerName)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal, 30)
            Text("New Player Score")
            TextField("Score", text: $newPlayerScore)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal, 30)
            Button(action: {
                if let score = Int(newPlayerScore) {
                    viewModel.newPlayer(gameNumber: 0, player: Player(name: newPlayerName, currentScore: score))
                    newPlayerName = ""
                    newPlayerScore = ""
                }
                dismiss()
            }) {
                Text("Save")
            }
        }
    }
}

#Preview {
    AddNewPlayerView()
}
