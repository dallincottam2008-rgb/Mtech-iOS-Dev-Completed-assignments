//
//  PersonDescription.swift
//  Project 4 2.0
//
//  Created by Dallin J Cottam on 10/9/25.
//
import SwiftUI

struct PersonDescription: View {
    
    let person: Person
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading, spacing: 20){
                
                Text(person.name)
                    .font(.custom("farah", size: 30))
                    .bold()
            }
            .padding()
        }
        
    }
}

#Preview {
    PersonDescription(person: Person(id: "Test", name: "Test", other: "Test"))
}
