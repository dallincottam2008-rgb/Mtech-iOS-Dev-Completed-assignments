//
//  JournalSwiftDataLab2App.swift
//  JournalSwiftDataLab2
//
//  Created by Dallin J Cottam on 12/2/25.
//

import SwiftUI
import SwiftData

@main
struct JournalSwiftDataLab2App: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            EntryModel.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
