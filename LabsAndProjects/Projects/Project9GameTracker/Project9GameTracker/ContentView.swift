//
//  ContentView.swift
//  Project9GameTracker
//
//  Created by Dallin J Cottam on 12/17/25.
//
import SwiftUI

struct RootView: View {
    @State private var router = Router()
    
    var body: some View {
        NavigationStack(path: $router.navigationPath) {
            GamesListView()
                .navigationDestination(for: Router.Route.self) { route in
                    router.view(for: route)
                }
        }
        .environment(router)
    }
}
