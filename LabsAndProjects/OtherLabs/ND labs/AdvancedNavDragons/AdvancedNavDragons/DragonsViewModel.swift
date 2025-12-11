//
//  DragonsViewModel.swift
//  AdvancedNavDragons
//
//  Created by Dallin J Cottam on 12/4/25.
//
import SwiftUI
import Observation

@Observable
class DragonsViewModel {
    static let shared = DragonsViewModel()
    
    var dragons: [Dragon] = [
        Dragon(name: "Runara", pic: "EarthDragon", powers: [Power(name: "Bite", description: "Bite the target", damage: "18", accuracy: 0.70), Power(name: "Change Shape", description: "Transfroms into a human", damage: "0", accuracy: 1)], species: "Bronze Dragon", lore: "IDK", rating: "10/10", health: 212, other: "")]
    var settingViewColor: Color = .white
}

