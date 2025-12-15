//
//  Games.swift
//  Project9GameTracker
//
//  Created by Dallin J Cottam on 12/11/25.
//
import Foundation

struct Game: Identifiable, Equatable {
    var id = UUID()
    var gameName: String
    var gameImage: String
    var highestScroreWins: Bool
    var sortPlayerByScore: Bool
    var players: [Player]
    var currentWinner: Player = Player(name: "Default", currentScore: Int.min)
}

struct Player: Identifiable, Equatable {
    var id = UUID()
    var name: String
    var currentScore: Int
}

enum Symbols {
    case dice
    case controller
    case arcade
}
