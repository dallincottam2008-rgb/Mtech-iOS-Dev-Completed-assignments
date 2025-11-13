//
//  ContentView.swift
//  Project 5 quiz part 1
//
//  Created by Dallin J Cottam on 10/13/25.
//

import SwiftUI

struct TitleView: View {
    
    @State var quizManager = QuizManager()
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                Image("Music")
                Text("Which music app are you")
                    .bold()
                    .font(.custom("", size: 40))
                
                NavigationLink {
                    QuestionFlowView(question: quizManager.questionList[0])
                    
                } label: {
                    Text("Begin")
                        .font(.custom("", size: 20))
                }
                .buttonStyle(MyCustomButtonStyle())
            }
            .padding()
        }
        .environment(quizManager)
    }
}












struct MyCustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(configuration.isPressed ? .blue : .black)
            .foregroundColor(.white)
            .containerShape(.capsule)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}

struct ToggleCustomStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("optima", size: 30))
            .bold()
        
    }
}
#Preview {
    TitleView()
}
