//
//  EditProflie.swift
//  Project 7 (Tech social media app)
//
//  Created by Dallin J Cottam on 11/9/25.
//
import SwiftUI

struct editUserRepositoryView: View {
    @Environment(\.dismiss) var dismiss
    @State var user = MockUserRepository().fetchCurrentUser()
    
    var body: some View {
        VStack {
            Text("Edit Profile")
            Form {
                TextField(user.firstName, text: $user.firstName)
                TextField(user.lastName, text: $user.lastName)
                TextField(user.userName, text: $user.userName)
                TextField(user.biography, text: $user.biography)
//                TextField(user.techInterests, text: $user.lastName)

            }
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Done", action: dismiss.callAsFunction)
                }
            }
        }
    }
}

