//
//  MultipleQuestionSubView.swift
//  Project 5 quiz part 1
//
//  Created by Dallin J Cottam on 10/21/25.
//
import SwiftUI

struct MultipleQuestionSubView: View {
    @Environment(QuizManager.self) var quizManager
    @State var temp = false

    var body: some View {
        NavigationStack {
            VStack {
                ForEach(quizManager.currentQuestion.answers) { answer in
                    Toggle(answer.text, isOn: $temp)
                        .modifier(ToggleCustomStyle())
                        .onChange(of: answer.selected) {
                            quizManager.selectAnswer(answered: answer.selected, answerType: answer.type)
                        }
                }
                NavigationLink {
                    switch quizManager.questionList[quizManager.currentQuestionIndex + 1].type {
                    case .multiple:
                        MultipleQuestionSubView()
                    case .single:
                        SingleQuestionSubView()
                    case .ranged:
                        RangedQuestionSubView()
                    }
                } label: {
                    Text("Next")
                }
            }
        }
    }
}

#Preview {
    MultipleQuestionSubView()
}
