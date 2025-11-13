//
//  Comment.swift
//  Project 7 (Tech social media app)
//
//  Created by Dallin J Cottam on 11/13/25.
//
import Foundation

struct Comment: Identifiable, Equatable, Sendable{
    let id: String
    let author: String // change this to a user when you get API
    let body: String
    let likeCount: Int
}

