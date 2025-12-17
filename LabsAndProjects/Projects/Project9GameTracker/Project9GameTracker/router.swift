//
//  router.swift
//  Project9GameTracker
//
//  Created by Dallin J Cottam on 12/15/25.
//
import SwiftUI

@Observable
class Router {
    var navigationPath = NavigationPath()
    
    enum Route: Hashable {
        case newPlayer
        case newGame
        case gameList
        case scoreBoard
    }
    
    @ViewBuilder
    func view(for route: Route) -> some View {
        switch route {
        case .newPlayer:
            AddNewPlayerView()
        case .newGame:
            AddNewGameView()
        case .gameList:
            GamesListView()
        case .scoreBoard:
            ScoreboardView()
        }
    }
    
    func navigateTo(route: Route) {
        navigationPath.append(route)
    }
}
