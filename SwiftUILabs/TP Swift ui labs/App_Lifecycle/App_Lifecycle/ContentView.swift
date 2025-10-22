//
//  ContentView.swift
//  App_Lifecycle
//
//  Created by Dallin J Cottam on 10/21/25.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.scenePhase) var scenePhase
    @State private var events = ""
    @State private var secondView = "Second view"
    @State private var secondViewGone = ""
    var body: some View {
        NavigationStack {
            VStack {
                Text(events)
                    .onChange(of: scenePhase) {_, newPhase in
                        switch newPhase {
                        case .active:
                            events.append("Active, ")
                        case .background:
                            events.append("Background, ")
                        case .inactive:
                            events.append("Inactive, ")
                        @unknown default:
                            break
                        }
                    }
                NavigationLink {
                    SecondView()
                        .onAppear{
                           secondView = "Second view viewed"
                        }
                        .onDisappear{
                            secondViewGone = "Second view is gone"
                        }
                } label: {
                    Text(secondView)
                        .foregroundStyle(Color.black)
                        .font(.custom("", size: 20))
                        .bold()
                }
                Text(secondViewGone)
                    .foregroundStyle(Color.black)
                    .font(.custom("", size: 20))
                    .bold()
               
            }
            .padding()
        }
    }
}

struct SecondView: View {
    var body: some View {
        Text("Hello World!")
    }
}

#Preview {
    ContentView()
}
