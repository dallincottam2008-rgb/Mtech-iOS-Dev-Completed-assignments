//
//  Questions.swift
//  Project 5 quiz part 1
//
//  Created by Dallin J Cottam on 10/14/25.
//
import SwiftUI

@Observable class QuizManager {
    
    var selectedAnswersBool: [Bool] = []
    var currentQuestionIndex: Int = 0
    var currentQuestion: Question {
        return questionList[currentQuestionIndex]
    }
    var selectedAnswers: [AnswerType] = []
    var questionList: [Question] = [
        Question(
            text: "Single Answer Question",
            type: .multiple,
            answers: [
                Answer(text: "Answer1", type: .answer1),
                Answer(text: "Answer2", type: .answer2),
                Answer(text: "Answer3", type: .answer3),
                Answer(text: "Answer4", type: .answer4)
            ]
        ),
        Question(
            text: "Single Answer Question",
            type: .single,
            answers: [
                Answer(text: "Answer5", type: .answer1),
                Answer(text: "Answer6", type: .answer2),
                Answer(text: "Answer7", type: .answer3),
                Answer(text: "Answer8", type: .answer4)
            ]
        )
    ]
    
    
    func selectAnswer(answered: Bool, answerType: AnswerType) {

        if answered {
            selectedAnswers.append(.answer1)
        } else {
            if let remove = selectedAnswers.firstIndex(of: .answer1){
                selectedAnswers.remove(at: remove)
            }
        }
    }
}
