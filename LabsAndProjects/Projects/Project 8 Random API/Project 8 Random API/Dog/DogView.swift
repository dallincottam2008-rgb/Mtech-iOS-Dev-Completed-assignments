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
            AsyncImage(url: URL(string: dogImage)) { phase in
                if let dogImage = phase.image {
                        dogImage.resizable()
                    } else if phase.error != nil {
                        Image(systemName: "exclamationmark.circle.fill")
                    } else {
                        dogImage = dogAPIController.currentDog
                    }
            }
            
            TextField("Name", text: $dogName)
            
            Button("New Dog") {
                if dogImage.isEmpty {
                    fetchDog()
                } else {
                    dogViewModel.dogs.append(DogCellView(dogImage: dogImage, dogName: dogName))
                    fetchDog()
                }
            }
            List {
                ForEach(dogViewModel.dogs) { dog in
                    AsyncImage(url: URL(string: dog.dogImage)) { image in
                        HStack {
                            image
                                .image?.resizable()
                                .scaledToFit()
                                .frame(height: 100)
                        }
                        Text(dog.dogName)
                    }
                }
            }
        }
    }
    func fetchDog() {
        Task {
            do {
                dogImage = try await dogAPIController.fetchDog().dogImage
            }
        }
    }
}
