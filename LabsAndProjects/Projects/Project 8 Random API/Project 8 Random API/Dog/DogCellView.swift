//
//  DogCellView.swift
//  Project 8 Random API
//
//  Created by Dallin J Cottam on 11/20/25.
//
import SwiftUI

struct DogCellView: View, Identifiable {
    let id = UUID()
    @State var dogImage: String
    @State var dogName: String
    
    var body: some View {
        VStack {
            Text(dogName)
                .font(.custom("", size: 19))
            AsyncImage(url: URL(string: dogImage))
        }
    }
}

