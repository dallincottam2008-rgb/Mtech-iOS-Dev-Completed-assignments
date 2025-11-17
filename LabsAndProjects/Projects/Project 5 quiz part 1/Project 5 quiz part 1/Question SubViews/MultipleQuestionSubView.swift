//
//  MultipleQuestionSubView.swift
//  Project 5 quiz part 1
//
//  Created by Dallin J Cottam on 10/21/25.
//
import SwiftUI

struct MultipleQuestionSubView: View {
    @Environment(QuizManager.self) var quizManager
    @State var answer: Answer = Answer(text: "Test", type: .answer1)
    @State var answerText: String = ""
    let question: Question

    var body: some View {
        VStack {
            
            Picker(answerText, selection: $answer)  {
                ForEach(question.answers) { answer in
                    Text(answer.text)
                        .tag(answer)
                }
            }
            .onChange(of: answer) {
                switch answer.type {
                case .answer1:
                    quizManager.selectAnswer(answer: question.answers[0])
                    answerText = question.answers[0].text
                case .answer2:
                    answerText = question.answers[1].text
                case .answer3:
                    quizManager.selectAnswer(answer: question.answers[2])
                    answerText = question.answers[2].text
                case .answer4:
                    quizManager.selectAnswer(answer: question.answers[3])
                    answerText = question.answers[3].text
                }
            }
        }
    }
}

