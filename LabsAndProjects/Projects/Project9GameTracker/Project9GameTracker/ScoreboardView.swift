//
//  ScoreboardView.swift
//  Project9GameTracker
//
//  Created by Dallin J Cottam on 12/11/25.
//
import SwiftUI

struct ScoreboardView: View {
    @State var viewModel = ViewModel.shared
    @State var currentGameIndex = 0
    
    var body: some View {
        VStack {
            ForEach(viewModel.games[currentGameIndex].players.sorted(by: { $0.currentScore > $1.currentScore })) { player in
                PlayerRowScoreView(gameIndex: currentGameIndex, player: player, setPlayer: player)
                Text("\(player.currentScore)")
            }
            
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink("+") {
                    AddNewPlayerView()
                } // need to chang to button with  a router
            }
        }
    }
}
