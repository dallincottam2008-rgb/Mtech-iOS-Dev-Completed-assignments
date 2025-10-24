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
    @State private var disableButton2 = false
    @State private var button4Text = Image(systemName: "button.programmable")
    @State private var disableButton4 = false
    @State private var showButton7 = true
    @State private var secretTextCount = 0
    
    var body: some View {
        VStack {
            Button (action: change) {
                Text(button1Text)
            }
            .buttonStyle(MyButtonStyle())
            
            Button ("tbh might break when you press") {
                disableButton2 = true
            }
            .buttonStyle(MyButtonStyle())
            .disabled(disableButton2)
            
            Button (action: disableButtonFunc) {
                Text("Button 3")
            }
            .buttonStyle(MyButtonStyle())
            .frame(width: 700)
            
            Button (action: pressedButton4) {
                Text(button4Text)
                
            }
            .buttonStyle(MyButtonStyle())
            .frame(width: 40)
            .disabled(disableButton4)
            
            Button (action: disableButtonFunc) {
                Text("Button 5")
            }
            .buttonStyle(MyButtonStyle2())
            
            Button (action: buttonCounter) {
                Text("pess number: \(buttonPressCount)")
            }
            .buttonStyle(MyButtonStyle())
            
            
            if showButton7 {
                Button ("Delete this button") {
                    showButton7 = false
                }
                .buttonStyle(MyButtonStyle())
            }
            
            Button ("Idk what this one does") {
                secretTextCount += 1
            }
            .buttonStyle(MyButtonStyle())
            
            if secretTextCount >= 3 {
                Button ("Oh thats what it does") { }
                .buttonStyle(MyButtonStyle())
            }
            
            Button ("This one doesn't work, it forgot what to do") {
            }
            .buttonStyle(MyButtonStyle())
            
            Button (action: crashApp) {
                Text("DONT PRESS NO MATTER WHAT")
            }
            .buttonStyle(MyButtonStyle())
            

        }
        .padding()
    }
    
    func change() {
        button1Text = "Button 1 pressed"
    }
    
    func buttonCounter() {
        buttonPressCount += 1

    }
    
    func pressedButton4() {
        button4Text = Image(systemName: "circle")
    }
    
    func disableButtonFunc() {
     
    }
    
    func crashApp(){
        fatalError()
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
