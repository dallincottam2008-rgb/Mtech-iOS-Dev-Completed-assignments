
//## Code Design Requirements (Both Project Choices)
//1. Code is commented thoroughly.
//1. Code is designed using MVVM architecture.
//1. Code follows SOLID design principles where possible.
//    - SOLID is more applicable to back-end development, so for this front-end UI draft, you likely won't find a lot of opportunities to follow SOLID, but take some time to review the principles nonetheless.
//
//## Tech Social Media App Requirements
//
//#### Major Views
//1. A Tab parent view.
//1. A **user profile page** tab.
//    - It should have **at least one post** (representing the most recent user post) under the user details.
//      

import SwiftUI

struct RootTabView: View {
    @Environment(AppServices.self) private var appServices
    
    var body: some View {
        TabView {
            PostsView(networkClient: appServices.networkClient)
                .tabItem {
                    Label("Posts", systemImage: "rectangle.stack.person.crop")
                }

            ProfileView(networkClient: appServices.networkClient, mostRecentPost: nil )
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
    }
}
