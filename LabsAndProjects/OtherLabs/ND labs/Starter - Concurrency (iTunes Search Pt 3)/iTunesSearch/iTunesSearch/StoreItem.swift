//
//  StoreItem.swift
//  iTunesSearch
//
//  Created by Dallin J Cottam on 11/14/25.
//
import SwiftUI

struct SearchResponse: Codable {
    let results: [StoreItem]
}

struct StoreItem: Codable {
    var artistName: String
    var trackName: String
    
    enum CodingKeys: String, CodingKey {
        case artistName
        case trackName
        
    }
    
}
