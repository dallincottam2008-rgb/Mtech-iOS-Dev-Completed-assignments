//
//  DogListView.swift
//  Project 8 Random API
//
//  Created by Dallin J Cottam on 11/21/25.
//
import SwiftUI

struct DogListView: View {
    @State var dogViewModel = DogViewModel()
    
    var body: some View {
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
