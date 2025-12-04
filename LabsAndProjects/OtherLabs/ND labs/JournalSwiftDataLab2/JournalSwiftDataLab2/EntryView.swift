//
//  EntryView.swift
//  JournalSwiftDataLab2
//
//  Created by Dallin J Cottam on 12/2/25.
//
import SwiftUI
import SwiftData

@Model
final class EntryModel {
    var id = UUID()
    var title: String
    var body: String
    var createdAt: Date
    
    init(title: String, body: String, createdAt: Date = Date()) {
        self.title = title
        self.body = body
        self.createdAt = createdAt
    }
}
