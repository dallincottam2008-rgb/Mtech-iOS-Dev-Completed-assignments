//
//  Dragon.swift
//  AdvancedNavDragons
//
//  Created by Dallin J Cottam on 12/4/25.
//
import SwiftUI

struct Dragon: Identifiable, Hashable {
    var id = UUID()
    var name: String
//    var pic: Image
    var powers: [Power]
    var species: String
    var lore: String
    var rating: String
    var health: Int
    var other: String
}

struct Power: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var description: String
    var damage: String
    var accuracy: Double
}
