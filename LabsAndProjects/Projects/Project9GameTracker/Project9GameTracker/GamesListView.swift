//
//  ContentView.swift
//  Project9GameTracker
//
//  Created by Dallin J Cottam on 12/11/25.
//

import SwiftUI

struct GamesListView: View {
    @Environment(Router.self) var router
    @State var viewModel = ViewModel.shared
    
    var body: some View {
        NavigationStack {
            VStack {
                ForEach(viewModel.games) { game in
                    HStack {
                        Image(systemName: "\(game.gameImage)")
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text("\(game.gameName)")
                        Text("Current Winner: \(game.currentWinner.name)")
                        Button(action: {
                            router.navigateTo(route: .scoreBoard)
                        }) {
                            Text("Test")
                                .foregroundStyle(.black)
                        }
                    }
                    .padding()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            Button(action: {
                                router.navigateTo(route: .newGame)
                            }) {
                                Text("Powers")
                                    .foregroundStyle(.black)
                            }
                        }
                        
                    }
                }
            }
            .padding()
        }
        
    }
}
