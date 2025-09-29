//
//  ContentView.swift
//  Lab Profile 2
//
//  Created by Dallin J Cottam on 9/25/25.
//

import SwiftUI

struct ContentView: View {
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
            VStack (alignment: .leading){
                HStack {
                    Image(systemName: "gearshape.fill")
                        .frame(width: 25, height: 25)
                    Text("Settings")
                }
                HStack {
                    Image(systemName: "bell.fill")
                        .frame(width: 25, height: 25)
                    Text("Notifications")
                }
                HStack {
                    Image(systemName: "calendar")
                        .frame(width: 25, height: 25)
                    Text("Events")
                }
            }
        }
           
    }
}

#Preview {
    ContentView()
}
