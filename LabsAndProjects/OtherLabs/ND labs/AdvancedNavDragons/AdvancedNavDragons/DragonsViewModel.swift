//
//  DragonsViewModel.swift
//  AdvancedNavDragons
//
//  Created by Dallin J Cottam on 12/4/25.
//
import SwiftUI

@Observable
class DragonsViewModel {
    var dragons: [Dragon] = [
        Dragon(name: "Test", powers: [Power(name: "Test", description: "Nah", damage: "90000", accuracy: 3.2)], species: "Bronze Dragon", lore: "IDK", rating: "10/10", health: 212, other: "")]
    var settingViewColor: Color
    
    init(settingViewColor: Color) {
        self.settingViewColor = settingViewColor
    }
}

