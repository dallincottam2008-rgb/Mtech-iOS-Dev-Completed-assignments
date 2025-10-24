//
//  Game.swift
//  Lists lab tp01
//
//  Created by Dallin J Cottam on 10/7/25.
//

import SwiftUI
//import Observation

struct Game: Identifiable {
    let id: String
    let genre: String
    let name: String
    let rating: String
    let description: String
    
}

extension Game {
    static var games: [Game] = [
        Game(id: "Deltarune", genre: "Turn Based RPG", name: "Deltarune", rating: "1000", description: "KILL")
    ]
}
