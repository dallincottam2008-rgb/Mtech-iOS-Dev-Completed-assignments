//
//  QuestionFlowView.swift
//  Project 5 quiz part 1
//
//  Created by Dallin J Cottam on 11/12/25.
//
import SwiftUI

struct QuestionFlowView: View {
    @Environment(QuizManager.self) var quizManager
    var question: Question
    var body: some View {
        VStack {
            Text(question.text)
            
            switch question.type {
            case .multiple:
                MultipleQuestionSubView(question: question)
            case .single:
                SingleQuestionSubView(question: question)
            case .ranged:
                RangedQuestionSubView(question: question)
            }
            NavigationLink("Next") {
                if let nextQuestion = quizManager.nextQuestion(after: question) {
                    QuestionFlowView(question: nextQuestion)
                } else {
                    ResultsView(resultsText: "Test")
                }
            }
        }
        .padding()
    }
}

