//
//  ContentView.swift
//  Lab Profile 2
//
//  Created by Dallin J Cottam on 9/25/25.
//

import SwiftUI
import Observation



struct ContentView: View {
    
    let randomButton: [String] = ["Setting", "Notifications", "Events", "Contacts", "Security", "Other"]
    
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 70, height: 70)
                VStack {
                    Text("Dallin Cottam")
                        .font(.custom("", size: 40))
                    Text("Email")
                        .font(.custom("", size: 20))
                }
            }
            HStack {
                ZStack {
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: 300, height: 100)
                        .cornerRadius(15)
                    VStack (alignment: .center){
                        Text("Events:")
                            .font(.custom("", size: 25))
                            .bold()
                        Text("None")
                            .font(.custom("", size: 20))
                    }
                }
            }
            ZStack {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 150, height: 300)
                    .cornerRadius(15)
                VStack (alignment: .leading){
                    ForEach(randomButton, id: \.self) { randomButton in
                        Text(randomButton)
                            .font(.custom(".", size: 20))
                            .bold()
                            .padding(4)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
