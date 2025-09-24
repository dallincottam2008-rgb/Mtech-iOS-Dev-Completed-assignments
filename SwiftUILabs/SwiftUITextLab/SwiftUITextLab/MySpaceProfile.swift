//
//  MySpaceProfile.swift
//  SwiftUITextLab
//
//  Created by Jane Madsen on 9/10/25.
//

import SwiftUI

/*
 ## Instructions:
 Your goal is to create an app that will serve as social media profile. Use Text view modifiers to arrange and style your profile to reflect your unique style.
 
 Since this assignment will require you to choose custom fonts, you may want to open the Font Book app installed on your Mac, where you can view a list of the fonts available on Mac and iOS by default.
 
 If you would like to change the background color of each of these views, you can do so by changing the colors listed in each #Preview macro at the bottom of the page.
 
 1. Create three structs that conform to View: ProfileView, TopFiveFriendsView, and BlogPostView. This will fix the errors
 2. To see a preview of how each view will look in the app, make sure you have opened your canvas (Option + Command + Return). You can view each struct you've created by clicking on the tabs at the top of the canvas.
 3. Create a profile view with Text elements for each of the following items: Username, Real Name, Home City, and Bio. Style each of them appropriately with custom fonts, font sizes, and colors for each. Feel free to add any additional modifiers as well.
 4. Create a TopFiveFriends view with a list of your friends, ranked in order of favorite to least favorite. (Don't worry, we won't tell them). Use a different font and color for each person, and include an Emoji to represent each one as well.
 5. Create a BlogPostView. Write a long blog post. Give your blog post a title, a date posted, a body, and a display of number of likes and comments. Once again, style each individually with fonts, font sizes, and colors, and any other modifiers you would like.
 6. Try running the app. You should see all three views embedded in Tabs (the code for this is in SwiftUITextLabApp.swift). You may need to adjust the style slightly to accommodate the Tab Bar at the bottom of the screen.
 
 ## Black Diamond
 
 7. Add one or more Image views to each page.
 8. Use Stack views to arrange your content more dynamically.
 
 ## Rubric
 
 - App has a profile view with Username, Real Name, Home City, and Bio, appropriately filled out and styled.
 - App has a Top Five Friends screen with emoji, fonts, and colors for each friend.
 - App has a blog post view with a title, a date posted, a body, and a number of likes and comments. All are styled, sized, and colored appropriately.
 */


#Preview("ProfileView") {
    ProfileView()
        .background(.white)
}

#Preview("TopFiveFriendsView") {
    TopFiveFriendsView()
        .background(.white)
}

#Preview("BlogPostView") {
    BlogPostView()
        .background(.white)
}

struct ProfileView: View{
    var body: some View {
        Text("DallinC_08")
            .font(.custom("arial", size: 37))
            .bold()
            .foregroundStyle(.green)
        Text("Dallin Cottam")
            .font(.custom("Avenir", size: 20))
            .bold()
        
        Text("")
        
        Text("City:")
            .font(.custom("arial", size: 24))
            .bold()
            .foregroundStyle(.red)
        
        Text("Pleasant Grove")
            .font(.custom("zapfino", size: 25))
            .bold()
            .background(.black)
            .foregroundStyle(Gradient(colors: [.white, .blue]))
        
        Text("")
        
        Text("About:")
            .font(.custom("arial", size: 25))
            .bold()
            .foregroundStyle(.blue)
        
        Text("I like to do stuff")
            .font(.custom(".", size: 30))
//            .bold()
            .padding(5)
            .background(.gray)
            
        

    }
}

struct TopFiveFriendsView: View {
    var body: some View {
        Text("Top 5 Friends")
            .font(.custom("Rockwell", size: 56))
            .foregroundStyle(Gradient(colors: [.black, .pink]))
        Text("1: None :(")
            .font(.custom("", size: 30))
        Text("2: The number 7")
            .font(.custom("snell roundhand", size: 30))
            .foregroundStyle(.red)
        Text("3: The guy in the back ally who sells me funny looking pencils")
            .font(.custom("", size: 25))
            .foregroundStyle(.green)
        Text("4: This thing -> 👾")
            .font(.custom("futura", size: 30))
            .foregroundStyle(.purple)
        Text("5: YOU 🫵")
            .font(.custom("impact", size: 40))
            .foregroundStyle(.pink)
    }
}

struct BlogPostView: View {
    var body: some View {
        Text("Dont Read >:(")
            .font(.custom("zapfino", size: 40))
            .foregroundStyle(.brown)
        Text("09/23/25")
            .font(.custom("Brush Script MT", size: 17))
            .foregroundStyle(.yellow)
        Text("Read the title ^, this blog post is about nothing and you are reading it, stop!!!!!! I have nothing to say to people who actually read this 😤 there's no point in continuing to read so please spare your self the trouble. Fine i geuss you want me to say something, alright here it goes, ... >:(")
            .font(.custom("Bradley Hand", size: 28))
            .bold()
        
        Text("👍: 100k                💬: -0")
            .font(.custom("impact", size: 25))
    }
}
