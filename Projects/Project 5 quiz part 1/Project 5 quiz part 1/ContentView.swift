//
//  ContentView.swift
//  Project 5 quiz part 1
//
//  Created by Dallin J Cottam on 10/13/25.
//

import SwiftUI

struct TitleView: View {
    
    @State var quizManger = QuizManager()
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                Text("TITLE")
                    .bold()
                    .font(.custom("", size: 40))
                
                NavigationLink {
                    SingleQuestionSubView()
                    //                        .environment(quizManager)
                } label: {
                    Text("Begin")
                        .font(.custom("", size: 20))
                }
                .buttonStyle(MyCustomButtonStyle())
            }
            .padding()
            
        }
        .environment(quizManger)

    }
    
    func onBeginPress() {
        
    }
}

struct QuestionFlowView: View {
    @Environment(QuizManager.self) var quizManger
    
    var body: some View {
        VStack {
            
        }
        .padding()
    }
}

struct RangedQuestionSubView: View {
    var body: some View {
        VStack {
            
        }
        .padding()
    }
}

struct MultipleQuestionSubView: View {
    
    @State private var toggle1 = false
    @State private var toggle2 = false
    @State private var toggle3 = false
    @State private var toggle4 = false
    @State private var quizManager = QuizManager()
    @State var selectedAnswers = QuizManager().selectedAnswers
    @State private var answerTest: [Answer] =  [
        Answer(text: "Answer1", type: .answer1, selected: false),
        //        Answer(text: "Answer2", type: .answer2),
        //        Answer(text: "Answer3", type: .answer3),
        //        Answer(text: "Answer4", type: .answer4)
    ]
    
    var body: some View {
        VStack {
            ForEach(answerTest) { answer in
                //                @State var selected = answer.selected
                //                Toggle(answer.text, isOn: $answer.selcted)
                //                    .modifier(ToggleCustomStyle())
                //                    .onChange(of: toggle1) {
                //                        quizManager.selectAnswer(answered: toggle1, answerType: answer.type)
                //                    }
            }
            //            Toggle("Test1", isOn: $toggle1)
            //                .modifier(ToggleCustomStyle())
            //                .onChange(of: toggle1) {
            //                    quizManager.selectAnswer(answered: toggle1, answerType: .answer1)
            //                }
            //            Toggle("Test2", isOn: $toggle2)
            //                .modifier(ToggleCustomStyle())
            //            if toggle2 {
            //                Text("Toggle 2 on")
            //            }
            //            Toggle("Test3", isOn: $toggle3)
            //                .modifier(ToggleCustomStyle())
            //            if toggle3 {
            //                Text("Toggle 3 on")
            //            }
            //            Toggle("Test4", isOn: $toggle4)
            //                .modifier(ToggleCustomStyle())
            //            if toggle4 {
            //                Text("Toggle 4 on")
            //            }
            //
        }
        .padding()
    }
}

struct SingleQuestionSubView: View {
    //    @Environment(QuizManager.self) var quizManager
    
    var body: some View {
        NavigationStack {
            VStack {
                //                Button ("HI") {}
                NavigationLink {
                    
                } label: {
                    Text("Next")
                }
                //                just a test to see if the selectAnswer func in working
                .buttonStyle(MyCustomButtonStyle())
            }
            .padding()
        }
    }
}


struct RelustsView: View {
    var body: some View {
        VStack {
            
        }
        .padding()
    }
}



struct Question {
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
    var selected: Bool
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

#Preview {
    SingleQuestionSubView()
}

#Preview {
    MultipleQuestionSubView()
}
