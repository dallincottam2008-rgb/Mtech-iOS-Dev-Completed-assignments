//
//  DragonsViewModel.swift
//  AdvancedNavDragons
//
//  Created by Dallin J Cottam on 12/4/25.
//
import SwiftUI

@Observable
class DragonsViewModel {
    var dragons: [Dragon]
    
    init(dragons: [Dragon]) {
        self.dragons = dragons
    }
}

