//
//  RepAPI.swift
//  Project 8 Random API
//
//  Created by Dallin J Cottam on 11/20/25.
//
import SwiftUI

@Observable
class RepAPIController: RepAPIControllerProtocol {
    
    func fetchItems(zip: Int) async throws -> [Representative] {
        var urlComponets = URLComponents(string: "http://whoismyrepresentative.com/getall_mems.php")!
        var query = [
            "zip": "\(zip)",
            "output": "json"
        ]
       
        urlComponets.queryItems = query.map { URLQueryItem(name: $0.key, value: $0.value) }
        
        let (data, response) = try await URLSession.shared.data(from: urlComponets.url!)


        guard  let httpResonse = response as? HTTPURLResponse, httpResonse.statusCode == 200 else {
            throw RepErrors.not200Code
        }
        
        let jsonDecoder = JSONDecoder()
        let searchResonse = try jsonDecoder.decode(RepStoreItems.self, from: data)
        return searchResonse.results
    }
}

protocol RepAPIControllerProtocol {
    func fetchItems(zip: Int) async throws -> [Representative]
}

enum RepErrors: Error {
    case not200Code
}
