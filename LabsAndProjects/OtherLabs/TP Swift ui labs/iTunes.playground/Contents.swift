import Foundation

//var keys: [String: String] = ["blur": "2"]

enum iTunesErrors: Error {
    case musicNotFound
}

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

extension Data {
    func prettyPrintedJSONString() {
        guard
            let jsonObject = try?
                JSONSerialization.jsonObject(with: self, options: []),
            let jsonData = try?
                JSONSerialization.data(withJSONObject: jsonObject, options: [.prettyPrinted]),
            let prettyJSONString = String(data: jsonData, encoding: .utf8) else {
            print("Failed to read JSON object")
            return
        }
        print(prettyJSONString)
    }
}

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

let query = [
    "term": "the+offspring+self+esteem",
    "media": "music"
]

Task {
    do {
        let storeItems = try await fetchItems(matching: query)
        storeItems.forEach { item in
            print("""
                Name: \(item.trackName)
                Artist: \(item.artistName)
                
                """)
        }
    }
}
