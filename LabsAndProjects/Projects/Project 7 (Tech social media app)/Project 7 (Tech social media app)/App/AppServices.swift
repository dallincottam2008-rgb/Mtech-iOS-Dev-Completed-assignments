//
//  AppServices.swift
//  Project 7 (Tech social media app)
//
//  Created by Dallin J Cottam on 11/6/25.
//

import Foundation
import Combine

@Observable
final class AppServices {
    private(set) var isReady: Bool = true

    let networkClient: NetworkClientProtocol
    let userRepository: UserRepositoryProtocol

    init(networkClient: NetworkClientProtocol, userRepository: UserRepositoryProtocol) {
        self.networkClient = networkClient
        self.userRepository = userRepository
    }
}
