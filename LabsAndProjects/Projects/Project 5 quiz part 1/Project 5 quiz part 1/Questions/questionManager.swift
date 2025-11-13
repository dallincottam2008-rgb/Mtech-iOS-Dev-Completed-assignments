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
    var sliderVals = 0.0
    var finalAnswer: AnswerType = .answer1
    var selectedAnswers: [Answer] = []
    var questionList: [Question] = [
        Question(
            text: "Which one is the best",
            type: .multiple,
            answers: [
                Answer(text: "Podcast", type: .answer1),
                Answer(text: "Music", type: .answer2),
                Answer(text: "Books", type: .answer3),
                Answer(text: "All of them", type: .answer4)
            ]
        ),
        Question(
            text: "Which color do you like best",
            type: .single,
            answers: [
                Answer(text: "Light blue", type: .answer1),
                Answer(text: "Pink", type: .answer2),
                Answer(text: "Blue", type: .answer3),
                Answer(text: "Green", type: .answer4)
            ]
        ),
        Question(
            text: "how do like random music",
            type: .ranged,
            answers: [
                Answer(text: "not at all", type: .answer2),
                Answer(text: "a little", type: .answer3),
                Answer(text: "more than light", type: .answer1),
                Answer(text: "love it", type: .answer4)
            ]
        ),
        Question(
            text: "Which type of tehc do you like",
            type: .single,
            answers: [
                Answer(text: "whatever I can find", type: .answer1),
                Answer(text: "Apple", type: .answer2),
                Answer(text: "Andriod", type: .answer3),
                Answer(text: "All of it", type: .answer4)
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
    
    func selectAnswer(answer: Answer) {
        var hasAnswer = false
       
        for (index, answer2) in selectedAnswers.enumerated() {
            if answer2.id == answer.id {
                selectedAnswers.remove(at: index)
            } else {
                hasAnswer = true
            }
        }
        
        if !hasAnswer {
            selectedAnswers.append(answer)
        }
    }
    
    func calcutaleAnswer() -> String{
        var answer1 = 0
        var answer2 = 0
        var answer3 = 0
        var answer4 = 0
        
        switch sliderVals {
        case 0...1:
            answer1 += 1
        case 1.1...2:
            answer2 += 1
        case 2.1...3:
            answer3 += 1
        case 3.1...4:
            answer4 += 1
        default:
            answer1 += 1
        }
        
        for answer in selectedAnswers {
            switch answer.type {
            case .answer1:
                answer1 += 1
            case .answer2:
                answer2 += 1
            case .answer3:
                answer3 += 1
            case .answer4:
                answer4 += 1
            }
        }
        
        if answer1 > answer2 && answer1 > answer3 && answer1 > answer4 {
            finalAnswer = .answer1
            return "Pandora"
        } else if answer2 > answer1 && answer2 > answer3 && answer2 > answer4 {
            finalAnswer = .answer2
            return "iTunes"
        } else if answer3 > answer1 && answer3 > answer2 && answer3 > answer4 {
            finalAnswer = .answer3
            return "Amaozn Music"
        } else if answer4 > answer1 && answer4 > answer3 && answer4 > answer2 {
            finalAnswer = .answer4
            return "Spotify"
        } else {
            finalAnswer = .answer1
            return "A secret 5th option"
        }
    }
    
    func sliderValue(_ val: Double) {
        sliderVals = val
    }
}
