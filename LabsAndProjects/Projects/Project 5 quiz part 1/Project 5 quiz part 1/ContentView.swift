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
                Text("TITLE")
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

struct QuestionFlowView: View {
    @Environment(QuizManager.self) var quizManager
    var question: Question
    var body: some View {
        NavigationStack{
            VStack {
                Text(question.text)
                
                switch question.type {
                case .multiple:
                    MultipleQuestionSubView()
                case .single:
                    SingleQuestionSubView()
                case .ranged:
                    SingleQuestionSubView()
                }
                NavigationLink("Next") {
                    if let nextQuestion = quizManager.nextQuestion(after: question) {
                        QuestionFlowView(question: nextQuestion)
                    }
//                    else {
//                        ResultsView()
//                    }
                }
                
            }
            .padding()
        }
    }
}

struct RangedQuestionSubView: View {
    
    
    var body: some View {
        VStack {
            
            //            switch Int(sliderVal) {
            //            case 1:
            ////                currentAnswer = testAnswer
            //            case 2:
            //            case 3:
            //            case 4:
            //            default:
            //            }
            
            
            
        }
        //            Slider(value: $sliderVal, in: 1...4, step: 1)
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
