//
//  PlayerRowScoreView.swift
//  Project9GameTracker
//
//  Created by Dallin J Cottam on 12/12/25.
//
import SwiftUI

struct PlayerRowScoreView: View {
    @State var viewModel = ViewModel.shared
    @State var gameIndex = 0
    @State var player: Player
    let setPlayer: Player
    
    var body: some View {
        HStack {
            Text("\(player.name)")
            Stepper("", value: $player.currentScore)
            Text("\(player.currentScore)")
        }
        .onChange(of: player.currentScore) {
            viewModel.updatePlayer(setPlayer: setPlayer, gameIndex: gameIndex, player: player)
            viewModel.findCurrentWinner(gameIndex: gameIndex)
        }
    }
    
    
   
}
