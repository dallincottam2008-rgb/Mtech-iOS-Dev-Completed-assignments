//
//  AddNewGameView.swift
//  Project9GameTracker
//
//  Created by Dallin J Cottam on 12/11/25.
//
import SwiftUI

struct AddNewGameView: View {
//    @State var viewModel = ViewModel.shared
//    @State var symbols: [Symbols: Bool] = [.dice: false, .controller: false, .arcade: false] //["dice", "gamecontroller", "arcade.stick.console"]
    
    @State var symbolChosen: Symbols = .dice
    @State var gameName = ""
    @State var greatestScoreWins = true // true is greatesrt score wins, false is lowest score wins
    @State var sortPlayerBy = true // true is hightest score, false is lowest
    @State var gamePlayers: [Player] = []
    var body: some View {
        VStack {
            Text("New Game")
            TextField("Name", text: $gameName)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal, 30)
            Text("Choose a Symbol")
                .font(.custom("Chalkboard se", size: 25))
            HStack {
            
            }
            
            // sort player by
            // players
            Button(action: {
                    AddNewPlayerView()
            }) {
                Text("New Player")
            }
        }
    }
//    func addGame() {
//        var newGame = Game(gameName: gameName, gameImage: symbolChosen, highestScroreWins: greatestScoreWins, sortPlayerByScore: sortPlayerBy, players: gamePlayers)
//        
//        viewModel.games.append(newGame)
//    }
    
//    func selectSymbol() {
//        switch symbolChosen {
//        case .dice:
//            <#code#>
//        case .controller:
//            <#code#>
//        case .arcade:
//            <#code#>
//        }
//    }
}

#Preview {
    AddNewGameView()
}
