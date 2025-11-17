//
//  ProfileView.swift
//  Project 7 (Tech social media app)
//
//  Created by Dallin J Cottam on 11/6/25.
//

import SwiftUI

struct ProfileView: View {
    @Environment(AppServices.self) private var appServices
    @State private var user =  MockUserRepository().fetchCurrentUser()
    @State private var isShowing = false
    @State private var postsIsShowing = false
    @State private var viewModel: PostsViewModel
    
    init(networkClient: NetworkClientProtocol, mostRecentPost: Post?) {
        _viewModel = State(wrappedValue: PostsViewModel(networkClient: networkClient))
    }
    
    
    var body: some View { // profile view
        NavigationStack {
            VStack(spacing: 16) {
                HStack(alignment: .top) {
                    ZStack {
                        Image("tempBakcgroundPic")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200, alignment: .top)
                        VStack(alignment: .leading) {
                            Image("tempPic")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 150)
                                .offset(x: -120)
                        }
                    }
                }
                Text("\(user.firstName) \(user.lastName)")
                    .font(.custom("", size: 20))
                Text("\(user.userName)")
                    .font(.custom("", size: 20))
                Text("About me")
                Text("\(user.biography)")
                    .font(.custom("", size: 10))
                Text("Interests")
                ForEach(user.techInterests, id: \.self) { interest in
                    Text("\(interest)")
                        .font(.custom("", size: 10))
                }
                
//                 if let mostRecentPost = fetchMostRecentPost() { // displays the most recent post
                PostRowView(post: Post(id: "p1", // mock post to show it working
                                       author: user,
                                       title: "Welcome",
                                       body: "This is the first sample post.",
                                       likeCount: 12,
                                       commentCount: 3,
                                       createdAt: .now,
                                       comments: [
                                        Comment(id: "1", author: "DCottam", body: "Comment 1", likeCount: 2),
                                        Comment(id: "1", author: "CoolerDCottom", body: "Comment 1", likeCount: 2)
                                       ]
                                      ))
//                } else { //  if there is no most recent post then diplays no posts
//                    Text("No Posts")
//                }
                
                
            }
            
            Button("Edit Profile") {
                isShowing = true
            }
            
            Button("New Post") {
                postsIsShowing = true
            }
            
        }
        .padding()
        .navigationTitle("Profile")
        .sheet(isPresented: $isShowing) {
            editUserRepositoryView()
        }
        .sheet(isPresented: $postsIsShowing) {
            NewPostView(networkClient: appServices.networkClient)
        }
    }
    
    func fetchMostRecentPost() -> Post? { // gets the most recent post and set the mostRecentPost to the post found
        var foundPost = false
        var mostRecentPost: Post?
        for post in viewModel.posts {
            if post.author == user && !foundPost{
                mostRecentPost = post
                foundPost = true
            }
        }
        if foundPost {
            return mostRecentPost
        } else {
            return nil // currently not shwoing any posts becuase i dont have the acutally post so its jsut showing not posts
        }
    }
}

