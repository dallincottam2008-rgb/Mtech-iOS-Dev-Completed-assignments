//
//  MultipleQuestionSubView.swift
//  Project 5 quiz part 1
//
//  Created by Dallin J Cottam on 10/21/25.
//
import SwiftUI

struct MultipleQuestionSubView: View {
    // gotta set this up to just use the quizManger @Enviroment one
    @State private var quizManager = QuizManager()
    @State var selectedAnswers = QuizManager().selectedAnswers
    @State private var questions = QuizManager().questionList
    
    var body: some View {
        VStack {
            ForEach($questions) { $question in
                if question.type == .multiple {
                    ForEach($question.answers) { $answer in
                        Toggle(answer.text, isOn: $answer.selected)
                            .modifier(ToggleCustomStyle())
                            .onChange(of: answer.selected) {
                                quizManager.selectAnswer(answered: answer.selected, answerType: answer.type)
                            }
                    }
                }
            }
            
        }
        .padding()
    }
}
