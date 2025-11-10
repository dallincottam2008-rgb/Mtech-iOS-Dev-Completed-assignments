//
//  UserRepository.swift
//  Project 7 (Tech social media app)
//
//  Created by Dallin J Cottam on 11/6/25.
//

import Foundation
import SwiftUI

protocol UserRepositoryProtocol {
    func fetchCurrentUser() async throws -> User
}

struct MockUserRepository: UserRepositoryProtocol {
    func fetchCurrentUser() -> User { // needs to throw an error
        User(
            id: "u1",
            firstName: "Dallin",
            lastName: "Cottam",
            userName: "DCottam",
            biography: "Just some guy",
            techInterests: ["Swift", "Game Development", "Hardware"],
            profileImageURL: Image("tempPic"),
            coverImageURL: Image("tempPic")
        )
    }
}
