//
//  ScoreboardView.swift
//  Project9GameTracker
//
//  Created by Dallin J Cottam on 12/11/25.
//
import SwiftUI
import SwiftData

struct ScoreboardView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(Router.self) var router
    @State var viewModel = ViewModel.shared
    @State var currentGameIndex = 0
    
    var body: some View {
        VStack {
            ForEach(viewModel.games[currentGameIndex].players.sorted(by: { $0.currentScore > $1.currentScore })) { player in
                PlayerRowScoreView(gameIndex: currentGameIndex, player: player, setPlayer: player)
                Text("\(player.currentScore)")
            }
            Button(action: {
            }) {
                Text("Save Test")
                    .foregroundStyle(.black)
            }
            
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button(action: {
                    router.navigateTo(route: .newPlayer)
                }) {
                    Text("Add Player")
                        .foregroundStyle(.black)
                }
            }
        }
    }
    
}
