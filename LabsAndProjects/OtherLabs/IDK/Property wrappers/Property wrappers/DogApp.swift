//
//  DogApp.swift
//  Property wrappers
//
//  Created by Dallin J Cottam on 9/26/25.
//
import SwiftUI

@Observable class DogApp {
    var dogs: [Dog]
    var walk: Walk?
    
    init() {
        dogs = []
        walk = nil
    }
}
