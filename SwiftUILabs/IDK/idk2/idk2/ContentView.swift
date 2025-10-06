//
//  ContentView.swift
//  idk2
//
//  Created by Dallin J Cottam on 9/29/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: next) {
            Text("Next")
        }
        .frame(maxWidth: .infinity)
        .foregroundStyle(Color.white)
//        .padding(.vertical, 8)
        .background(
            Capsule()
                .foregroundStyle(Color.gray)
        )
        .padding()
    }
}

func next(){}

#Preview {
    ContentView()
}
