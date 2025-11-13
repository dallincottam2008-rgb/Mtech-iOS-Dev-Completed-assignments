//
//  RangedQuestionSubView.swift
//  Project 5 quiz part 1
//
//  Created by Dallin J Cottam on 11/9/25.
//
import SwiftUI

struct RangedQuestionSubView: View {
    
    @Environment(QuizManager.self) var quizManager
    @State var sliderVal = 0.0
    let question: Question
    @State var sliderText = ""
    var body: some View {
        VStack {
            Slider(value: $sliderVal, in:  1...4, step: 1.0)
                .onChange(of: sliderText) {
                    switch sliderVal {
                    case 1:
                        quizManager.sliderValue(sliderVal)
                        sliderText = "Not at all"
                    case 2:
                        quizManager.sliderValue(sliderVal)
                        sliderText = "A little bit"
                    case 3:
                        quizManager.sliderValue(sliderVal)
                        sliderText = "More than not"
                    case 4:
                        quizManager.sliderValue(sliderVal)
                        sliderText = "Love it"
                    default:
                        quizManager.sliderValue(sliderVal)
                    }
                }
            Text("\(sliderVal)")
        }
    }
}
