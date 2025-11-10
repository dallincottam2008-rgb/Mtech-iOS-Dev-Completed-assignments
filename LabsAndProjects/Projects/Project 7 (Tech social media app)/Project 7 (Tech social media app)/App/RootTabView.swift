
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
//    - This screen should show the **currently logged in user**.
//    - It should show a **profile photo** and a **background (cover) photo** at the top of the screen.
//    - It should show the user's **first name, last name, username, bio, and tech interests**. Since this app is designed for Tech Industry workers, the tech interests is a place for them to specifically list the topics that they are interested in.
//    - It should have **at least one post** (representing the most recent user post) under the user details.
//1. A second tab where a **timeline of posts** are displayed.
//    - This screen displays all users' posts on the services, including your own posts and everyone else's.
//    - Show at least **one post from your user** and **one post from another user**.
//    - The post should display the **number of likes and comments**. The number of comments should be tappable to display the comments listed on the post; this should transition the user to a **new view where users can see the list of comments**.
//        - Make sure you have at least one post with placeholder comments on it so that the comment UI can be seen.
//    - These posts should use UI that is extensible down the road to show as many posts as are retrieved from the API. (In other words, make sure you are using **reusable, automatically generated views**.)
//#### Child Views
//7. The User Profile tab should include a button that pops up a **modal sheet for editing their profile information**.
//    - This sheet should include the **appropriate fields** for updating this data, and a **save button** that dismisses the view when finished.
//    - This sheet does not need to actually function, since updating the user's profile data will not be done locally but instead will trigger an API call.
//1. The Posts tab should include a button that presents **a sheet view for making a new post**.
//    - Should include a field for the title and body of the post.
//    - Should include a **button that submits** the post and dismisses the view. Like before, this does not need to make any changes to your app since no API calls are implemented yet.
//
//#### Black Diamond
//9. Include an Edit Post button and functionality. The specific implementation is up to you.
//1. Tapping on another user in their post displays their user profile view.
//1. Any other UI/features that the app can reasonably have--be aware that the API will not support posting images, adding friends, or anything beyond the features already implied by the UI above, but you are still welcome to add those things to your are UI.


import SwiftUI

struct RootTabView: View {
    @Environment(AppServices.self) private var appServices
    
    var body: some View {
        TabView {
            PostsView(networkClient: appServices.networkClient)
                .tabItem {
                    Label("Posts", systemImage: "rectangle.stack.person.crop")
                }

            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
    }
}
