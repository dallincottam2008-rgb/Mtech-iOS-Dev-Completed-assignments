//
//  Person.swift
//  Project 4 2.0
//
//  Created by Dallin J Cottam on 10/9/25.
//


import Foundation

struct Person: Identifiable {
    var id: String
    var name: String
    var other: String
}

extension Person {
    static let peopleList = [Person(id: "Dallin C.", name: "Dallin", other: "Its me =)"), Person(id: "Ingram F.", name: "Ingram", other: "Kinda annoying sometimes"), Person(id: "Clay T.", name: "Clay", other: "He's cool"), Person(id: "Andrew B.", name: "Andrew", other: "I have no notes"), Person(id: "JD", name: "JD", other: "Tall AF, also goofy name"), Person(id: "Owen B.", name: "Owen", other: "Oldest friend, known him for awhile"), Person(id: "Ethan", name: "Ethan", other: "He can be even more annoying"), Person(id: "Logan P.", name: "Logan", other: "He's also cool")]
}
