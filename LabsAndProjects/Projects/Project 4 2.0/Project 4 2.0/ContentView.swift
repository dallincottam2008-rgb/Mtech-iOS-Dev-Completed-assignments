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
    @State private var pic: Image = Image("DefaultProject4")
    
    var body: some View {
        NavigationStack {
            List {
                ForEach($people) { $person in
                    Button {
                        id = person.id
                        name = person.name
                        other = person.other
                        isPresented = true
                        pic = person.pic
                        person.lookedAt = true
                    } label: {
                        HStack {
                            person.pic
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30)
                            Text(person.name)
                            if person.lookedAt {
                                Text("✅")
                            }
                        }
                        
                    }
                    .foregroundStyle(Color.black)
                    
                }
                .sheet(isPresented: $isPresented) {
                    PersonDescription(person: Person(id: id, name: name, other: other, pic: pic))
                }
            }
        }
    }
}

struct PersonDescription: View {
    
    @Environment(\.dismiss) var dismiss
    let person: Person
    
    var body: some View {
        NavigationView {
            VStack (alignment: .leading){
                Section (" ") {
                    Text(person.other)
                        .font(.custom("farah", size: 30))
                        .position(x: 150, y: 0)
                        .padding(50)
                }
            }
            .navigationTitle(person.name)
            .toolbar{
                ToolbarItem(placement: .cancellationAction) {
                    Button("Go Back", action: dismiss.callAsFunction)
                }
            }
        }
    }
}



#Preview {
    ContentView()
}
