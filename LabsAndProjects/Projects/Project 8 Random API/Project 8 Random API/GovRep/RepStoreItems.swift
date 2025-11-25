//
//  RepStoreItems.swift
//  Project 8 Random API
//
//  Created by Dallin J Cottam on 11/24/25.
//

import Foundation
import SwiftUI

struct RepStoreItems: Codable {
    var results: [Representative]
    
    enum CodingKeys: String, CodingKey {
        case results
    }
}

struct Representative: Codable, Hashable {
    var name: String
    var party: String
    var state: String
//    var website: String
    
    enum CodingKeys: String, CodingKey {
        case name, party, state
//        case website = "link"
    }
}
