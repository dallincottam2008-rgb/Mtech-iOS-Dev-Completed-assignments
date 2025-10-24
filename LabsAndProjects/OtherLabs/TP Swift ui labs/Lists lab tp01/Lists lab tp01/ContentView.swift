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
                NavigationLink {
                    
                } label: {
                    Text(game.name)
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
