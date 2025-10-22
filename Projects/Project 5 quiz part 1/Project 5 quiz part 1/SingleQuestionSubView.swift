//
//  SingleQuestionSubView.swift
//  Project 5 quiz part 1
//
//  Created by Dallin J Cottam on 10/21/25.
//
import SwiftUI

struct SingleQuestionSubView: View {
    private var quizManager = QuizManager()
    @State private var selectedAnswers = QuizManager().selectedAnswers
    @State private var questions = QuizManager().questionList
    @State private var testAnswer = [
        Answer(text: "Answer1", type: .answer1),
        Answer(text: "Answer2", type: .answer2),
        Answer(text: "Answer3", type: .answer3),
        Answer(text: "Answer4", type: .answer4)
    ]
    var body: some View {
        VStack {
            ForEach($testAnswer) { $answer in
                Toggle(answer.text, isOn: $answer.selected)
                    .modifier(ToggleCustomStyle())
                    .onChange(of: answer.selected) {
                        
                        quizManager.selectAnswer(answered: answer.selected, answerType: answer.type)
                    }
            }
        }
        .padding()
    }
}
