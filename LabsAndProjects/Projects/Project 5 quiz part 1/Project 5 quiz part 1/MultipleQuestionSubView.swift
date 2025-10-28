//
//  MultipleQuestionSubView.swift
//  Project 5 quiz part 1
//
//  Created by Dallin J Cottam on 10/21/25.
//
import SwiftUI

struct MultipleQuestionSubView: View {
    @Environment(QuizManager.self) var quizManager
//    @Bindable var quizManager: QuizManager
//    @State var temp = false

    var body: some View {
        NavigationStack {
            VStack {
                @Bindable var toggle = quizManager
                ForEach($toggle.questionList[quizManager.currentQuestionIndex].answers) { $answer in
                    Toggle(answer.text, isOn: $answer.selected)
                        .modifier(ToggleCustomStyle())
                        .onChange(of: answer.selected) {
                            quizManager.selectAnswer(answer: answer,  answerType: answer.type)
                        }
                }
                Text("\(quizManager.selectedAnswers)")
                
            }
        }
    }
}

#Preview {
    MultipleQuestionSubView()
}
