//
//  MyModifier.swift
//  ViewModifierExamples
//
//  Created by Toby Youngberg on 9/15/25.
//

import SwiftUI

struct MyModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Arial", size: 30))
            .foregroundStyle(.blue)
            .padding(10)
            .background(.red)
            .border(.black, width: 2)
            .position(x: 150, y: 55)
            .offset(x:10, y:15)
    }
}

struct BetterModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Savoye LET", size: 60))
            .bold()
            .fontWeight(.heavy)
            .foregroundStyle(Gradient(colors: [.white, .gray]))
            .padding(10)
            .background(.black)
            .position(x: 200, y: 55)

    }
}
extension View {
    func myModifier() -> some View {
        modifier(MyModifier())
    }
}

extension View {
    func betterModifier() -> some View {
        modifier(BetterModifier())
    }
}
