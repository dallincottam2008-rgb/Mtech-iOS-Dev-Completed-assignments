//
//  Games.swift
//  Project9GameTracker
//
//  Created by Dallin J Cottam on 12/11/25.
//
import Foundation
import SwiftData

@Model
final class Game {
    var id = UUID()
    var gameName: String
    var gameImage: String
    var highestScroreWins: Bool
    var sortPlayerByScore: Bool
    var players: [Player]
    var currentWinner: Player
    
    init(id: UUID = UUID(), gameName: String, gameImage: String, highestScroreWins: Bool, sortPlayerByScore: Bool, players: [Player], currentWinner: Player) {
        self.id = id
        self.gameName = gameName
        self.gameImage = gameImage
        self.highestScroreWins = highestScroreWins
        self.sortPlayerByScore = sortPlayerByScore
        self.players = players
        self.currentWinner = currentWinner
    }
    
}

@Model
final class Player {
    var id = UUID()
    var name: String
    var currentScore: Int
    
    init(id: UUID = UUID(), name: String, currentScore: Int) {
        self.id = id
        self.name = name
        self.currentScore = currentScore
    }
}

enum Symbols {
    case dice
    case controller
    case arcade
}
