//
//  ProfileView.swift
//  Project 7 (Tech social media app)
//
//  Created by Dallin J Cottam on 11/6/25.
//

import SwiftUI

struct ProfileView: View {
    @Environment(AppServices.self) private var appServices
    @State private var posts = PostsViewModel.self
    @State private var user =  MockUserRepository().fetchCurrentUser()
    @State private var isShowing = false
    @State private var postsIsShowing = false

    var body: some View { // profile view
        NavigationStack {
            VStack(spacing: 16) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Image("tempPic")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 150)
                    }
                }
                Text("\(user.firstName) \(user.lastName)")
                    .font(.custom("", size: 20))
                Text("\(user.userName)")
                    .font(.custom("", size: 20))
                Text("About me")
                Text("\(user.biography)")
                List {
                    ForEach(user.techInterests, id: \.self) { interest in
                        Text("\(interest)")
                    }
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
    }
//    func fetchMostRecentPost() -> Post {
//        for post in posts.posts {
//            
//        }
//    }
}
#Preview {
    ProfileView()
}

