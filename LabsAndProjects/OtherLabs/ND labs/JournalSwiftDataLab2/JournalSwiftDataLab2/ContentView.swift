//
//  ContentView.swift
//  JournalSwiftDataLab2
//
//  Created by Dallin J Cottam on 12/2/25.
//

import SwiftUI
import SwiftData
import Foundation

struct ContentView: View {
    
    
    @State var isShowingAdd = false
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [EntryModel]
    @Environment(\.dismiss) var dismiss
    @State var title = ""
    @State var entryBody = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(items, id: \.self) { item in
                        VStack(alignment: .leading) {
                            Text(item.title)
                            Text(item.createdAt, style: .date)
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.vertical, 8)
//                    .on
                }
            }
            .navigationTitle("Journal")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { isShowingAdd = true }) {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $isShowingAdd) {
                newItem()
            }
        }
        
    }
    
    func addItem() {
        let newEntry = EntryModel(title: title, body: entryBody)
        modelContext.insert(newEntry)
        title = ""
        entryBody = ""
    }
    
    func deleteItems(from sectionItems: [EntryModel], at offsets: IndexSet) {
        let itemsToDelete = offsets.map { sectionItems[$0] }
        itemsToDelete.forEach { modelContext.delete($0) }
    }
}

extension ContentView {
    
    
    func newItem() -> some View {
        NavigationStack {
            VStack {
                TextField("Title", text: $title)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.white)
                            .shadow(radius: 2)
                    )
                
                TextField("Body", text: $entryBody)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.white)
                            .shadow(radius: 2)
                    )
            }
            .padding()
            .navigationTitle("New Entry")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        addItem()
                    }
                }
            }
        }
    }
}
