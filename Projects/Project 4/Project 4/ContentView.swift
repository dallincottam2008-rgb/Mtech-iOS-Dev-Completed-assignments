//
//  ContentView.swift
//  Project 4
//
//  Created by Dallin J Cottam on 10/9/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var people = Person.peopleList
    
    var body: some View {
        NavigationStack {
            List(people) { person in
                Text(person.name)
            }
        }
    }
}

#Preview {
    ContentView()
}
