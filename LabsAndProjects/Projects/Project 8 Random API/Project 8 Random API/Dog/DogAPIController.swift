//
//  DogAPIController.swift
//  Project 8 Random API
//
//  Created by Dallin J Cottam on 11/20/25.
//
import SwiftUI

@Observable
class DogAPIController: DogAPIControllerProtocol {
    var currentDog = ""
    func fetchDog() async throws -> DogStoreItems {
        let urlComponets = URLComponents(string: "https://dog.ceo/api/breeds/image/random")!
        
        let (data, response) = try await URLSession.shared.data(from: urlComponets.url!)


        guard  let httpResonse = response as? HTTPURLResponse, httpResonse.statusCode == 200 else {
            throw DogErrors.not200Code
        }
        
        let jsonDecoder = JSONDecoder()
        let searchResonse = try jsonDecoder.decode(DogStoreItems.self, from: data)
        currentDog = searchResonse.dogImage
        return searchResonse
    }
}

protocol DogAPIControllerProtocol {
    func fetchDog() async throws -> DogStoreItems
}

enum DogErrors: Error {
    case not200Code
}
