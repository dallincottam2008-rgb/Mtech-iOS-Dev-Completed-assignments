//
//  ContentView.swift
//  NavPlayground
//
//  Created by Dallin J Cottam on 10/8/25.
//

import SwiftUI


struct Student{
    var name: String
    var favoriteColor: Color
}

let students: [Student] = [Student(name: "1", favoriteColor: .blue), Student(name: "2", favoriteColor: .green), Student(name: "3", favoriteColor: .purple), Student(name: "4", favoriteColor: .red)]

struct ContentView: View {
    
    @State private var isPresented = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Button("Present Sheet") {
                    isPresented = true
                }
                List(students, id: \.name) { student in
                    NavigationLink{
                        student.favoriteColor
                            .ignoresSafeArea()
                    } label: {
                        Text(student.name)

                    }
                }
                .navigationTitle("Students")
                .sheet(isPresented: $isPresented) {
                    NavigationStack {
                        Text("Sheet Happens")
                            .navigationTitle("Sheet Title")
                        NavigationLink("Go Deeper") {
                            Text("Deeper in the sheet")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
