//
//  Questions.swift
//  Project 5 quiz part 1
//
//  Created by Dallin J Cottam on 10/14/25.
//
import SwiftUI
import Observation

@Observable
class QuizManager {
    
    var currentQuestion: Int = 0
    var selectedAnswers: [AnswerType] = []
//    let questionList: [Question] = [
//        Question(
//            text: "Single Answer Question",
//            type: .single,
//            answers: [
//                Answer(text: "Answer1", type: .answer1),
//                Answer(text: "Answer2", type: .answer2),
//                Answer(text: "Answer3", type: .answer3),
//                Answer(text: "Answer4", type: .answer4)
//            ]
//        )
//    ]
    
    func selectAnswer(answered: Bool, answerType: AnswerType) {
    
        if answered {
            selectedAnswers.append(.answer1)
        } else {
            if let remove = selectedAnswers.firstIndex(of: .answer1){
                selectedAnswers.remove(at: remove)
            }
//
        }
    }
}
