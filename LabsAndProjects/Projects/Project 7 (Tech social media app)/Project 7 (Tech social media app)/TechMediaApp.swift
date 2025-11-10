//
//  app.swift
//  Project 7 (Tech social media app)
//
//  Created by Dallin J Cottam on 11/6/25.
//

import SwiftUI

@main
struct TSMAApp: App {
    @State private var appServices = AppServices(
        networkClient: MockNetworkClient(),
        userRepository: MockUserRepository()
    )

    var body: some Scene {
        WindowGroup {
            RootTabView()
                .environment(appServices)
        }
    }
}
