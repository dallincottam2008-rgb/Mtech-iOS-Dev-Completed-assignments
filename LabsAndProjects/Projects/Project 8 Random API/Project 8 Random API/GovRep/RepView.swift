//
//  RepView.swift
//  Project 8 Random API
//
//  Created by Dallin J Cottam on 11/20/25.
//
import SwiftUI

struct RepView: View {
    @State var apiController = RepAPIController()
    @State var input = ""
    @State var validInput = true
    @State var currentRep: [Representative] = []
    
    var body: some View {
        VStack {
            TextField("Search by ZIP code", text: $input)
                .onSubmit {
                    if let zip = Int(input) {
                        Task {
                            do {
                                currentRep = try await apiController.fetchItems(zip: zip)
                            } catch {
                                print(error)
                            }
                        }
                    } else {
                        validInput = false
                    }
                }
            if validInput {
                Form {
                    ForEach(currentRep, id: \.self) { rep in
                        Text(rep.name)
                    }
                }
            } else {
                Text("Not valid input")
            }
        }
    }
}

