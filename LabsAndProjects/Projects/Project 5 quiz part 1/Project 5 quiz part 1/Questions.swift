//
//  Questions.swift
//  Project 5 quiz part 1
//
//  Created by Dallin J Cottam on 10/14/25.
//
import SwiftUI
import Foundation
import Observation

@Observable
class QuizManager {
    
//    @State var selectedAnswersBool: [Bool] = []
    var currentQuestionIndex: Int = 0
    var currentQuestion: Question {
        return questionList[currentQuestionIndex]
    }
    var selectedAnswers: [Answer] = []
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
    
    func nextQuestion(after question: Question) -> Question? {
        let index = questionList.firstIndex(of: question)
        
        if let index, index < questionList.count - 1 {
            return questionList[index + 1]
        } else {
            return nil
        }
    }
    
    func selectAnswer(answer: Answer, answerType: AnswerType) {
        // need to actually loop through each selected item
//        if answered {
//            selectedAnswers.append(answerType)
//        } else {
//            if let remove = selectedAnswers.firstIndex(of: answerType){
//                selectedAnswers.remove(at: remove)
//            }
//        }
        guard let remove = selectedAnswers.firstIndex(of: answer) else { return }
        for answer in selectedAnswers {
            if !answer.selected {
                selectedAnswers.remove(at: )
            }
        }
    }
}
