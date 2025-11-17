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
        NavigationStack {
            VStack {
                Text("Edit Profile")
                Form {
                    TextField(user.firstName, text: $user.firstName) // edits the usersz profile doesn't work but will wiht api
                    TextField(user.lastName, text: $user.lastName)
                    TextField(user.userName, text: $user.userName)
                    TextField(user.biography, text: $user.biography)
                    //                TextField(user.techInterests, text: $user.lastName)
                    
                }
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Done") {
                            dismiss()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    editUserRepositoryView()
}
