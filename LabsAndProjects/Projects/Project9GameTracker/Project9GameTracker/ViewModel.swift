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
    var games: [Game] = [Game(gameName: "Test", gameImage: "", highestScroreWins: true, sortPlayerByScore: false, players: [Player(name: "Test", currentScore: 12)])]
    
    func newPlayer(gameNumber: Int, player: Player) {
        games[gameNumber].players.append(player)
    }
}
