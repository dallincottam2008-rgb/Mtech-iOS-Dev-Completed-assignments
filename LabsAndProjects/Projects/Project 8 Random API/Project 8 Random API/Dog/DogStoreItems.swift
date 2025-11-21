//
//  DogStoreItems.swift
//  Project 8 Random API
//
//  Created by Dallin J Cottam on 11/20/25.
//
import Foundation
import SwiftUI

struct DogStoreItems: Codable {
    var dogImage: String
    
    enum CodingKeys: String, CodingKey {
        case dogImage = "message"
    }
}
