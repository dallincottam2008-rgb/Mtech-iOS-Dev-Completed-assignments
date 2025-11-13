//
//  RelustsView.swift
//  Project 5 quiz part 1
//
//  Created by Dallin J Cottam on 10/24/25.
//
import SwiftUI

struct ResultsView: View {
    
    @Environment(QuizManager.self) var quizManager
    @State var resultsText: String
    var body: some View {
        VStack {
            Text("You are \(resultsText)")
            
        }
        .onAppear() {
            resultsText = quizManager.calcutaleAnswer()
        }
        .padding()
    }
}
