//
//  ContentView.swift
//  Lists lab tp01
//
//  Created by Dallin J Cottam on 10/7/25.
//

import SwiftUI

struct ContentView: View {
    
    private let game = Game.self
    
    var body: some View {
        NavigationStack {
            List(game.games) { game in
                HStack{
                    Text(game.name)
                    Text("• My rating: \(game.rating)")
                        .font(.custom("", size: 12))
                        .bold()
                    Text("• Genre: \(game.genre)")
                        .font(.custom("", size: 12))
                        .bold()
                }
            }
        }
    }
}



#Preview {
    ContentView()
}

#Preview {
    AddGame()
}
