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
                    MultipleQuestionSubView()
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
    
    func onBeginPress() {
        
    }
}

struct QuestionFlowView: View {
    var body: some View {
        VStack {
            
        }
        .padding()
    }
}

//struct RangedQuestionSubView: View {
    
//    private var quizManager = QuizManager()
//    @State private var sliderVal = 2.0
//    @State private var currentAnswer: String
//    @State private var selectedAnswers = QuizManager().selectedAnswers
//    @State private var questions = QuizManager().questionList
//    @State private var testAnswer = [
//        Answer(text: "Answer1", type: .answer1),
//        Answer(text: "Answer2", type: .answer2),
//        Answer(text: "Answer3", type: .answer3),
//        Answer(text: "Answer4", type: .answer4)
//    ]
//    var body: some View {
//        VStack {
            
//            Text("\(Int(sliderVal))")
//            switch Int(sliderVal) {
//            case 1:
////                currentAnswer = testAnswer
//            case 2:
//            case 3:
//            case 4:
//            default:
//            }
//                
                
                
//            }
//            Slider(value: $sliderVal, in: 1...4, step: 1)
//        }
//        .padding()
//    }
//}





struct RelustsView: View {
    var body: some View {
        VStack {
            
        }
        .padding()
    }
}



struct Question: Identifiable {
    var id = UUID()
    var text: String
    var type: ResponseType
    var answers: [Answer]
}
enum ResponseType {
    case single, multiple, ranged
}

struct Answer: Identifiable {
    var id = UUID()
    var text: String
    var type: AnswerType
    var selected: Bool = false
}
enum AnswerType {
    case answer1, answer2, answer3, answer4
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
