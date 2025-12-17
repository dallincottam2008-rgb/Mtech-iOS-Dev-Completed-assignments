//
//  AddNewPlayerView.swift
//  Project9GameTracker
//
//  Created by Dallin J Cottam on 12/11/25.
//
import SwiftUI
import SwiftData

struct AddNewPlayerView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) var dismiss
    @State var viewModel = ViewModel.shared
    @State var newPlayerName = ""
    @State var newPlayerScore = ""
    @State var gameIndex = 0
    
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
                    addItem(newPlayerScore2: score)
                    viewModel.newPlayer(gameNumber: gameIndex, player: Player(name: newPlayerName, currentScore: score))
                }
            }) {
                Text("Save")
            }
        }
    }
}

private extension AddNewPlayerView {
    
    func addItem(newPlayerScore2: Int) {
        let newItem = Player(name: newPlayerName, currentScore: newPlayerScore2)
        modelContext.insert(newItem)
        newPlayerName = ""
        newPlayerScore = ""
        save()
    }
    
    func save() {
        try? modelContext.save()
    }
}
#Preview {
    AddNewPlayerView()
}
