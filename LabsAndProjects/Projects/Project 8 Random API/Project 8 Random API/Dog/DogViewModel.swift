//
//  DogViewModel.swift
//  Project 8 Random API
//
//  Created by Dallin J Cottam on 11/20/25.
//
import SwiftUI

@Observable
class DogViewModel {
    var apiController = DogAPIController()
    var dogs: [DogCellView] = []
    
}
