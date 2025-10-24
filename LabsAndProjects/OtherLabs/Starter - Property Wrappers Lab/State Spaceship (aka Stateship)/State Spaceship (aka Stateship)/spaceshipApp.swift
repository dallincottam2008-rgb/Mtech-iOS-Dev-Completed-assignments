//
//  State_Spaceship__aka_Stateship_App.swift
//  State Spaceship (aka Stateship)
//
//  Created by Jane Madsen on 9/29/25.
//

import SwiftUI

@main
struct SpaceshipApp: App {
    var body: some Scene {
        WindowGroup {
            SpaceshipScreen(shipComputer: ShipComputer())
//            EngineStation()
        }
    }
}
