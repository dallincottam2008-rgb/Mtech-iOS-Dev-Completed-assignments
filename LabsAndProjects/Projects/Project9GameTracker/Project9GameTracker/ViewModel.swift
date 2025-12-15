//
//  ViewModel.swift
//  Project9GameTracker
//
//  Created by Dallin J Cottam on 12/11/25.
//
import Foundation
import Observation

@Observable
class ViewModel {
    static let shared = ViewModel()
    var games: [Game] = [Game(gameName: "Test", gameImage: "dice", highestScroreWins: true, sortPlayerByScore: false, players: [Player(name: "Test", currentScore: 12)])]
    
    func newPlayer(gameNumber: Int, player: Player) {
        games[gameNumber].players.append(player)
    }
    
    func updatePlayer(setPlayer: Player, gameIndex: Int, player: Player) {
        if let currentPlayer = games[gameIndex].players.firstIndex(of: setPlayer) {
            games[gameIndex].players[currentPlayer].currentScore = player.currentScore
        } else {
            print("current player fell through")
        }
    }
    
    func findCurrentWinner(gameIndex: Int) {
        for player in games[gameIndex].players {
            if player.currentScore > games[gameIndex].currentWinner.currentScore {
                games[gameIndex].currentWinner = player
              }
          }
      }
    
}
