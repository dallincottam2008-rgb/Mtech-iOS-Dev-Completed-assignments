//
//  PostsView.swift
//  Project 7 (Tech social media app)
//
//  Created by Dallin J Cottam on 11/6/25.
//

import SwiftUI

struct PostsView: View {
    @State private var viewModel: PostsViewModel

    init(networkClient: NetworkClientProtocol) {
        _viewModel = State(wrappedValue: PostsViewModel(networkClient: networkClient))
    }

    var body: some View {
        NavigationStack { // lists the posts out
            Group {
                if viewModel.isLoading {
                    ProgressView("Loading posts")
                } else if let message = viewModel.errorMessage {
                    ContentUnavailableView("Could not load posts", systemImage: "exclamationmark.triangle", description: Text(message))
                } else {
                    List(viewModel.posts) { post in
                        PostRowView(post: post)
                    }
                    .listStyle(.plain)
                }
            }
            .navigationTitle("Posts")
        }
        .task {
            viewModel.load()
        }
    }
}
