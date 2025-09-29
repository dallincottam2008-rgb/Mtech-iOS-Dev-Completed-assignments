//
//  ContentView.swift
//  Lab Profile
//
//  Created by Dallin J Cottam on 9/25/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let name = "Dallin Cottam"
        let email = "Email"
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 50, height: 50)
                VStack {
                    Text(name)
                        .font(.custom("", size: 30))
                    Text("email")
                    
                    Rectangle()
                        .frame(width: 200, height: 100)
                        .foregroundStyle(.gray,.opacity(0.25))
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
