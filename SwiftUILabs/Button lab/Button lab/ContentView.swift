//
//  ContentView.swift
//  Button lab
//
//  Created by Dallin J Cottam on 9/29/25.

//Create at least 10 buttons all with something unique about each one
//Create at least 1 custom ButtonStyle and apply to at least one of your 10 buttons
//At least one button has to cause a visible change on the screen
//At least one button has to look different when its pressed vs when its not
//At least one button has to use an icon or image instead of text
//At least one button has to be disabled (sometimes)

import SwiftUI

struct ContentView: View {
    
    @State private var button1Text = "Button 1"
    @State private var changeButtonColor = false
    @State private var buttonPressCount = 0
    
    var body: some View {
        VStack {
            Button (action: change) {
                Text(button1Text)
            }
            .buttonStyle(MyButtonStyle())
            
            Button (action: disableButton) {
                Text("Button 2")
            }
            .buttonStyle(MyButtonStyle())
            .disabled(true)
            
            Button (action: disableButton) {
                Text("Button 3")
            }
            .buttonStyle(MyButtonStyle())
            .frame(width: 700)
            
            Button (action: disableButton) {
                Image(systemName: "button.programmable")
            }
            .buttonStyle(MyButtonStyle())
            .frame(width: 40)
            
            Button (action: disableButton) {
                Text("Button 5")
            }
            .buttonStyle(MyButtonStyle2())
            
            Button (action: disableButton) {
                Text("Button 6")
            }
            .buttonStyle(MyButtonStyle())
            
            Button (action: disableButton) {
                Text("Button 7")
            }
            .buttonStyle(MyButtonStyle())
            
            Button (action: disableButton) {
                Text("Button 8")
            }
            .buttonStyle(MyButtonStyle())
            
            Button (action: disableButton) {
                Text("Button 9")
            }
            .buttonStyle(MyButtonStyle())
            
            Button (action: disableButton) {
                Text("Button 10")
            }
            .buttonStyle(MyButtonStyle())

        }
        .padding()
    }
    
    func change() {
        button1Text = "Button 1 pressed"
    }
    
    
    
    func disableButton() {
        buttonPressCount += 1
        if buttonPressCount == 9 {
            
        }
    }
}


struct MyButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding(.vertical, 14)
            .font(.custom("", size: 18))
            .foregroundStyle(Color.white)
            .background(
                Capsule()
                    .foregroundStyle(Color.blue)
            )
            .scaleEffect(configuration.isPressed ? 0.97 : 1.0)
            .animation(.easeOut, value: configuration.isPressed)
    }
}

struct MyButtonStyle2: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding(.vertical, 14)
            .font(.custom("", size: 18))
            .foregroundStyle(Color.white)
            .background(configuration.isPressed ? Capsule() .foregroundStyle(.red) : Capsule() .foregroundStyle(.blue))
            .animation(.easeOut, value: configuration.isPressed)
    }
}


#Preview {
    ContentView()
    .buttonStyle(MyButtonStyle())
}
