//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by Jane Madsen on 10/30/25.
//

import Foundation
var documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!


struct Emoji: Codable, Identifiable {
    var id: UUID = UUID()
    var symbol: String
    var name: String
    var description: String
    var usage: String
    static var achiveURL = documentsDirectory.appendingPathComponent("emojis").appendingPathExtension("plist")
    
    static func saveToFile(emojis: [Emoji]) {
        let propertyListEncoder = PropertyListEncoder()
        let encodeEmoji = try? propertyListEncoder.encode(emojis)
        
        try? encodeEmoji?.write(to: achiveURL, options: .noFileProtection)
    }
    
    static func loadFromFile() -> [Emoji]{
        let propertyListDecoder = PropertyListDecoder()
        if let retriveEmojisData = try? Data(contentsOf: achiveURL), let decodeEmojis = try? propertyListDecoder.decode([Emoji].self, from: retriveEmojisData) {
            print(decodeEmojis)
            return decodeEmojis
        } else {
            return []
        }
    }
}
