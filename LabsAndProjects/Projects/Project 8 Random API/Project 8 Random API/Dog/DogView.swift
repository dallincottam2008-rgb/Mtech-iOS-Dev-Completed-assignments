//
//  DogView.swift
//  Project 8 Random API
//
//  Created by Dallin J Cottam on 11/20/25.
//
import SwiftUI

struct DogView: View {
    @State var dogAPIController = DogAPIController()
    @State var dogViewModel = DogViewModel()
    @State var dogImage = ""
    @State var dogName = ""
    
    var body: some View {
        VStack {
            
            AsyncImage(url: URL(string: dogImage)) { image in
                image
                    .image?.resizable()
                    .scaledToFit()
            }
            
            TextField("Name", text: $dogName)
            
            Button("New Dog") {
                dogViewModel.dogs.append(DogCellView(dogImage: dogImage, dogName: dogName))
                Task {
                    do {
                        dogImage = try await dogAPIController.fetchDog().dogImage
                    }
                }
            }
            DogListView()
        }
        
    }
}
