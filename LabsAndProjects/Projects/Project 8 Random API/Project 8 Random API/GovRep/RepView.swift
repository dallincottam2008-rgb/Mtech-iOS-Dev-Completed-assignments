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
                .padding(8)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.gray.opacity(0.2))
                )
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .padding(.leading, 8)
                    }
                )
                .onSubmit {
                    if let zip = Int(input) {
                        Task {
                            do {
                                currentRep = try await apiController
                                    .fetchItems(zip: zip)
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
                        Text(rep.party)
                    }
                }
            } else {
                Text("Not valid input")
            }
        }
    }
}
