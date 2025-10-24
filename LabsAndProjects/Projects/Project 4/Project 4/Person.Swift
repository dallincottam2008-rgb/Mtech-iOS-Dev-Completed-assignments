//
//  Untitled.swift
//  Project 4
//
//  Created by Dallin J Cottam on 10/9/25.
//
import Foundation

struct Person: Identifiable {
    var id: String
    var name: String
}

extension Person {
    static let peopleList = [Person(id: "Dallin C.", name: "Dallin"), Person(id: "Ingram F.", name: "Ingram")]
}
