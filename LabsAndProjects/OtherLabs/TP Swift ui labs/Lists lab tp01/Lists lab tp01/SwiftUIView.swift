//
//  SwiftUIView.swift
//  Lists lab tp01
//
//  Created by Dallin J Cottam on 10/7/25.
//

import SwiftUI

struct AddGame: View {
    private let game = Game.self
    @State private var gameName = ""
    @State private var releaseYear = ""
    @State private var playerRating = ""
    
    var body: some View {
        Form {
            TextField("Game Name", text: $gameName)
            TextField("Release Year", text: $releaseYear)
            TextField("Your rating out of ten", text: $playerRating)
            Button(action: addGame) {
                Text("Add game")
            }
        }
    }
    
    func addGame() {
        Game.games.append(Game(id: gameName, genre: releaseYear, name: gameName, rating: playerRating, ))
        gameName = ""
        releaseYear = ""
        playerRating = ""
    }
}

#Preview {
    AddGame()
}
