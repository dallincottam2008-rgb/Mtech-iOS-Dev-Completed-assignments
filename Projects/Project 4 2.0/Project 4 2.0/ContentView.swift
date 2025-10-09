//
//  ContentView.swift
//  Project 4 2.0
//
//  Created by Dallin J Cottam on 10/9/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var people = Person.peopleList
    @State private var isPresented = false
    @State private var id = ""
    @State private var name = ""
    @State private var other = ""
    @State private var lookedAtPerson: [String] = []
    // putting in the check marks
    
    var body: some View {
        NavigationStack {
            List(people) { person in
                Button(person.name) {
                    id = person.id
                    name = person.name
                    other = person.other
                    isPresented = true
                }
                .foregroundStyle(Color.black)
            }
            .sheet(isPresented: $isPresented) {
                    PersonDescription(person: Person(id: id, name: name, other: other))
            }
        }
    }
}


//PersonDescription(person: Person(id: person.id, name: person.name, other: person.other))
#Preview {
    ContentView()
}
