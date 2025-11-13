//
//  PostsRowView.swift
//  Project 7 (Tech social media app)
//
//  Created by Dallin J Cottam on 11/6/25.
//

import SwiftUI

struct PostRowView: View {
    let post: Post
    @State var commentsViewIsShowing = false

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 8) {
                Text("\(post.author.firstName) \(post.author.lastName) • @\(post.author.userName)") 
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
                .onTapGesture {
                    commentsViewIsShowing = true // when tapped the comments show up on a sheet view
                }
            }
            .padding(.vertical, 8)
            .sheet(isPresented: $commentsViewIsShowing) {
                CommentsView(post: post)
            }
            
        }
    }
}

//#if DEBUG
//extension User {
//    static let sample = User(id: "u_dbg", firstName: "Ada", lastName: "Lovelace", userName: "ada", biography: "Poet of numbers", techInterests: ["Swift","UI"], profileImageURL: nil, coverImageURL: nil)
//}
//extension Post {
//    static let sample = Post(id: "p_dbg", author: .sample, title: "Sample", body: "Preview content", likeCount: 1, commentCount: 0, createdAt: .now)
//}
//#Preview {
//    PostRowView(post: .sample)
//}
//#endif


