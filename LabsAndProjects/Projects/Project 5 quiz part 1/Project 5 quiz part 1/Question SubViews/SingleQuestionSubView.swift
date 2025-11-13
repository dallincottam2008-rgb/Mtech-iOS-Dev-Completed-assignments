//
//  SingleQuestionSubView.swift
//  Project 5 quiz part 1
//
//  Created by Dallin J Cottam on 10/21/25.
//
import SwiftUI

struct SingleQuestionSubView: View {
    
    @Environment(QuizManager.self) var quizManager
    @State var viewModel = SingleQuestionViewModel()
   

    let question: Question
    var body: some View {
            VStack {
                Toggle(question.answers[0].text, isOn: $viewModel.answer1)
                    .onChange(of: viewModel.answer1) {
                        quizManager.selectAnswer(answer: question.answers[0])
                    }
                Toggle(question.answers[1].text, isOn: $viewModel.answer2)
                    .onChange(of: viewModel.answer2) {
                        quizManager.selectAnswer(answer: question.answers[1])
                    }
                Toggle(question.answers[2].text, isOn: $viewModel.answer3)
                    .onChange(of: viewModel.answer2) {
                        quizManager.selectAnswer(answer: question.answers[2])
                    }
                Toggle(question.answers[3].text, isOn: $viewModel.answer4)
                    .onChange(of: viewModel.answer2) {
                        quizManager.selectAnswer(answer: question.answers[3])
                    }
            }
    }
}

