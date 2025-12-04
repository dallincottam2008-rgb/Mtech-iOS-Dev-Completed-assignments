//
//  ContentView.swift
//  AdvancedNavDragons
//
//  Created by Dallin J Cottam on 12/4/25.
//

import SwiftUI

struct RootView: View {
    @State private var router = DragonsRouter()
    
    var body: some View {
        NavigationStack(path: $router.navigationPath) {
            DragonsListView()
                .navigationDestination(for: DragonsRouter.Route.self) { route in
                    router.view(for: route)
                }
        }
        .environment(router)
    }
}
