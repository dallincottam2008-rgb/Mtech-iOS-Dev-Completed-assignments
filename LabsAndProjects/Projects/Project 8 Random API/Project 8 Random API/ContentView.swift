//
//  ContentView.swift
//  Project 8 Random API
//
//  Created by Dallin J Cottam on 11/20/25.
//

import SwiftUI

struct ContentView: View {
    @State private var tagItem = 0
    @State var dogViewModel = DogAPIController()
    
    var body: some View {
        TabView(selection: $tagItem) {
            DogView()
                .tabItem{
                    Label("Dogs", systemImage: "dog.fill")
                }
                .tag(0)
                .onAppear {
                    
                }
            RepView()
                .tabItem {
                    Label("Representatives", systemImage: "star.fill")
                }
                .tag(1)
            
        }
    }
}


