//
//  Question.swift
//  Project 5 quiz part 1
//
//  Created by Dallin J Cottam on 10/22/25.
//

import SwiftUI

struct Question: Identifiable, Equatable {
    static func == (lhs: Question, rhs: Question) -> Bool { true }
    var id = UUID()
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer: Identifiable {
    var id = UUID()
    var text: String
    var type: AnswerType
    var selected: Bool = false
}

enum AnswerType {
    case answer1, answer2, answer3, answer4
}
