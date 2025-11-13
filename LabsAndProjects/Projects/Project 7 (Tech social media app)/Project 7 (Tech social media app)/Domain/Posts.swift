//
//  Posts.swift
//  Project 7 (Tech social media app)
//
//  Created by Dallin J Cottam on 11/6/25.
//
import Foundation

struct Post: Identifiable, Equatable, Sendable{
    let id: String
    let author: User
    let title: String
    let body: String
    let likeCount: Int
    let commentCount: Int
    let createdAt: Date
    let comments: [Comment]
}
