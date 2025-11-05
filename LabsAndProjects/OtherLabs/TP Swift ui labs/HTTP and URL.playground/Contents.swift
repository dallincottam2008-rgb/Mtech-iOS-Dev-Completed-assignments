import Foundation

//var keys: [String: String] = ["blur": "2"]

var componets = URLComponents(string: "https://itunes.apple.com/search")!
componets.queryItems = [
    "term": "the+offspring+self+esteem",
    "media": "music"
].map { URLQueryItem(name: $0.key, value: $0.value)}

struct StoreItem: Codable {
    var results: Results
}

struct Results: Codable {
    var trackName: String
    
//    enum CodingKeys: String, CodingKey {
//        case song = "trackName"
//    }
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

Task {
    let (data, response) = try await URLSession.shared.data(from: componets.url!)
    
    let jsonDecoder = JSONDecoder()
    if let httpResponse = response as? HTTPURLResponse,
       httpResponse.statusCode == 200,
       let songInfo = try? jsonDecoder.decode(StoreItem.self, from: data) {
        print("\nSong Name", songInfo.results.trackName)
        //trying to get htis to print
    }
}


