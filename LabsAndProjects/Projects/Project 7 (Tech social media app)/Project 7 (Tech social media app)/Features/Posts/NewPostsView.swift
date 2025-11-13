//
//  NewPostsView.swift
//  Project 7 (Tech social media app)
//
//  Created by Dallin J Cottam on 11/12/25.
//
import SwiftUI

struct NewPostView: View {
    @Environment(\.dismiss) var dismiss
    @State private var viewModel: PostsViewModel

    init(networkClient: NetworkClientProtocol) {
        _viewModel = State(wrappedValue: PostsViewModel(networkClient: networkClient))
    }
    
    var body: some View {
        VStack {
            Text("Edit Profile")
            Form {
                TextField("Title", text: $viewModel.title) // takes in the stuff for the new post
                TextField("Body", text: $viewModel.postBody)
                

            }
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Submit", action: dismiss.callAsFunction)
                }
            }
        }
    }
}
