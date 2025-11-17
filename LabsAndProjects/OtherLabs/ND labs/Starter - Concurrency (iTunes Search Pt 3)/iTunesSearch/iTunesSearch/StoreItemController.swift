//
//  StoreItemController.swift
//  iTunesSearch
//
//  Created by Dallin J Cottam on 11/14/25.
//
import SwiftUI

class StoreItemController {
    func fetchItems(matching query: [String: String]) async throws -> [StoreItem] {
        var urlComponets = URLComponents(string: "https://itunes.apple.com/search")!
        urlComponets.queryItems = query.map { URLQueryItem(name: $0.key, value: $0.value) }
        
        let (data, response) = try await URLSession.shared.data(from: urlComponets.url!)


        guard  let httpResonse = response as? HTTPURLResponse, httpResonse.statusCode == 200 else {
            throw iTunesErrors.musicNotFound
        }
        
        let jsonDecoder = JSONDecoder()
        let searchResonse = try jsonDecoder.decode(SearchResponse.self, from: data)
        return searchResonse.results
    }

}

enum iTunesErrors: Error {
    case musicNotFound
}
