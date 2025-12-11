//
//  Games.swift
//  Project9GameTracker
//
//  Created by Dallin J Cottam on 12/11/25.
//
import Foundation

struct Game {
    var gameName: String
    var gameImage: String
    var highestScroreWins: Bool
    var sortPlayerByScore: Bool
    var players: [Player]
}

struct Player {
    var name: String
    var currentScore: Int
}
