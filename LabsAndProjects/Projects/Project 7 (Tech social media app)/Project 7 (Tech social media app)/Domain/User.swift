//
//  User.swift
//  Project 7 (Tech social media app)
//
//  Created by Dallin J Cottam on 11/6/25.
//
import Foundation
import SwiftUI

struct User: Identifiable, Equatable, Sendable{ //have to add codable
    let id: String
    var firstName: String
    var lastName: String
    var userName: String
    var biography: String
    var techInterests: [String]
    var profileImageURL: Image //need to change this to URL? have it as image as a place holder
    var coverImageURL: Image
}
