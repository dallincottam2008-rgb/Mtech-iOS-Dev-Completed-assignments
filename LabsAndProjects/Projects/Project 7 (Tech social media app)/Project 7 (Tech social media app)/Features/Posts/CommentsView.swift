//
//  CommentsView.swift
//  Project 7 (Tech social media app)
//
//  Created by Dallin J Cottam on 11/12/25.
//
import SwiftUI

struct CommentsView: View {
    @Environment(\.dismiss) var dismiss
    let post: Post
    
    var body: some View {
        Group {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("\(post.author.firstName) \(post.author.lastName) • @\(post.author.userName)") // lists the post
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    
                    Text(post.title)
                        .font(.headline)
                    
                    Text(post.body)
                        .font(.body)
                    
                    HStack(spacing: 16) {
                        Label("\(post.likeCount)", systemImage: "hand.thumbsup")
                        Label("\(post.commentCount)", systemImage: "text.bubble")
                    }
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    
                    ForEach(post.comments) { comment in // lists the comments
                        VStack {
                            Text(comment.author)
                            Text(comment.body)
                            Label("\(comment.likeCount)", systemImage: "hand.thumbsup")
                                .font(.footnote)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                .padding(.vertical, 8)
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Back") {
                            dismiss()
                        }
                    }
                }
            }
        }
    }
}

