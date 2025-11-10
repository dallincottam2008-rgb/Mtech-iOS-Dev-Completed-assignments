//
//  PostsViewModel.swift
//  Project 7 (Tech social media app)
//
//  Created by Dallin J Cottam on 11/6/25.
//

import Foundation
import Combine

@Observable
final class PostsViewModel {
    private(set) var posts: [Post] = []
    private(set) var isLoading: Bool = false
    private(set) var errorMessage: String?

    private let networkClient: NetworkClientProtocol

    init(networkClient: NetworkClientProtocol) {
        self.networkClient = networkClient
    }

    func load() {
        Task {
            isLoading = true
            defer { isLoading = false }
            do { posts = try await networkClient.fetchPosts(pageNumber: 0) }
            catch { errorMessage = "Failed to load posts" }
        }
    }
}
