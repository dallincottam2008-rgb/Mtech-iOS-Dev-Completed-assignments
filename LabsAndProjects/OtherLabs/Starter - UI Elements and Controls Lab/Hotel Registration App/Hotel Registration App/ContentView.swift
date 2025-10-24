//
//  ContentView.swift
//  Hotel Registration App
//
//  Created by Jane Madsen on 9/26/25.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        ZStack {
            Color.background
                .ignoresSafeArea()
            
            HotelRegistrationScreen()
        }
    }
}

struct HotelRegistrationScreen: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var doorCode = ""
    @State private var numberOfGuests = "One"
    @State private var lengthOfStay = 0
    @State private var nonSmoking = true
    @State private var registrationFeedback = 1.0
    @State private var submited = false
    private let numOfgeust = ["One", "Two", "Three", "Four", "Five"]
    
    var body: some View {
        VStack {
            HStack {
                Image("mountainlandLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                
                Text("Mountainland Inn")
                    .font(.custom("Verdana", size: 30))
                    .bold()
                    .foregroundStyle(Color.background)
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(.highlight)
                    }
            }
            
            
            Spacer()
            
            Text("Welcome!")
                .font(.custom("Rockwell", size: 20))
                .foregroundStyle(.text)
            
            TextField("First Name", text: $firstName)
                .font(.custom("Rockwell", size: 20))
                .foregroundStyle(.text)
            
            TextField("Last Name", text: $lastName)
                .font(.custom("Rockwell", size: 20))
                .foregroundStyle(.text)

            SecureField("Door Code", text: $doorCode)
                .font(.custom("Rockwell", size: 20))
                .foregroundStyle(.text)
            
            Toggle("Non Smoking", isOn: $nonSmoking)
                .font(.custom("Rockwell", size: 20))
                .foregroundStyle(.text)
            
            Picker("Number of geusts", selection: $numberOfGuests) {
                ForEach(numOfgeust, id: \.self) { number in
                    Text(number)
                }
            }
            .scaleEffect(1.5)
            
            Stepper("Length of stay: \(lengthOfStay)", value: $lengthOfStay)
                .font(.custom("Rockwell", size: 20))
                .foregroundStyle(.text)
            
            Button("Submit") {
                submited = true
            }
            .buttonStyle(MyButtonStyle())
            
            if submited {
                
                Text("Thank you for booking with us! How would you rate your experience?")
                    .font(.custom("Rockwell", size: 20))
                    .foregroundStyle(.text)
                Slider(value: $registrationFeedback, in: 1...5, step: 1.0)
                Text("\(Int(registrationFeedback))/5 ⭐️")
                

                
            }
            
            Spacer()
        }
        .padding()
        
        
    }
    
    func submit() {}

}

struct MyButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding(.vertical, 14)
            .font(.custom("", size: 18))
            .foregroundStyle(Color.background)
            .background(
                Capsule()
                    .foregroundStyle(Color.highlight)
            )
            .scaleEffect(configuration.isPressed ? 0.97 : 1.0)
            .animation(.easeOut, value: configuration.isPressed)
    }
}


#Preview {
    ContentView()
}
