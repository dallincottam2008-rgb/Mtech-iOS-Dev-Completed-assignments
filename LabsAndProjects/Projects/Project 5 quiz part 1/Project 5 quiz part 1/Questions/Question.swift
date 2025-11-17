//
//  Question.swift
//  Project 5 quiz part 1
//
//  Created by Dallin J Cottam on 10/22/25.
//

import SwiftUI

struct Question: Identifiable, Equatable {
    static func == (lhs: Question, rhs: Question) -> Bool { lhs.id == rhs.id }
    var id = UUID()
    var text: String
    var type: ResponseType
    var answers: [Answer]
    
    
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer: Identifiable, Hashable {
    var id = UUID()
    var text: String
    var type: AnswerType
    var selected: Bool = false
}

enum AnswerType: Identifiable {
    case answer1, answer2, answer3, answer4
    
    var id: String {
        switch self {
    
        case .answer1:
            return "Answer1"
        case .answer2:
            return "Answer2"
        case .answer3:
            return "Answer3"
        case .answer4:
            return "Answer4"

        }
    }
}
