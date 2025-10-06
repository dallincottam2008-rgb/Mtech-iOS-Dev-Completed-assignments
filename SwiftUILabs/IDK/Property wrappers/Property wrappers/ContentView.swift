//
//  ContentView.swift
//  Property wrappers
//
//  Created by Dallin J Cottam on 9/26/25.
//

import SwiftUI

//1. Request a dog to be walked
//2. Specify the number of dogs to be walk
//3.Speciy the names of dogs



struct ContentView: View {
    
    @State var dogApp = DogApp()
    
    @State var newDogName = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Dog Walker")
                .font(.largeTitle)
            VStack {
                Text("My Dogs")
                    .font(.title)
                ForEach(dogApp.dogs) { dog in
                    Text(dog.name)
                }
            }
            Spacer()
            TextField("New Dog Name", text: $newDogName)
                .font(.largeTitle)
            Button(
                action: { addDog() } ,
                label: {
                    HStack{
                        Text("Add a Dog")
                        Image(systemName: "dog.fill")
                        Spacer()
                    }
                }
            )
            .font(.largeTitle)
            .buttonStyle(.glass)
        }
        .padding()
    }
    
    func addDog() {
        guard !newDogName.isEmpty else { return }
        dogApp.dogs.append(Dog(name: newDogName))
        newDogName = ""
    }
}

#Preview {
    ContentView()
}
