//  🏔️ MTECH Code Challenge ND05: "Name Swap"
//  Concept: Practice manipulating the contents of strings algorithmically

//  Instructions:
    //  Write a function that takes a String as input and returns another String.
    //  The input string will be a first and last name. Return a string with the names swapped, last name first, first name last.

//  Example:
    //  Input: "john McClane"
    //  Output: "McClane john"

//  Notes:
    //  You can assume the input will always be a single pair of names, first and last.

//  ⌺ Black Diamond Challenge:
    //  Write another function that accepts a full name as input (first, middle, last) and returns a string in the format, "lastName, firstName middleInitial." Include the comma, abbreviate the middle initial to one letter and add a period.

import Foundation

func nameSwap(from input: String) throws -> String {
    var firstName = ""
    var lastName = ""
    var currentName = false
    
    for letter in input {
        if !currentName {
            if letter != " " {
                firstName.append(letter)
            } else {
                currentName = true
            }
        } else {
            if letter != " " {
                lastName.append(letter)
            } else {
                throw error.tooManyNames
            }
        }
    }
    return "\(lastName) \(firstName)"
}

enum error: Error {
    case tooManyNames
    case idkYouMessedUpSomeHow
}

do {
    print(try nameSwap(from: "Dallin Cottam"))
} catch {
    print(error)
}

func nameSwap2(from input: String) throws -> String {
    var firstName = ""
    var lastName = ""
    var middleInitial = ""
    var middleName = ""
    var currentName = 0
    
    for letter in input {
        if currentName == 0 {
            if letter != " " {
                firstName.append(letter)
            } else {
                currentName = 1
            }
        } else if currentName == 1 {
            if letter != " " {
                middleInitial.append(letter)
                currentName = 2
            } else {
                throw error.idkYouMessedUpSomeHow
            }
        } else if currentName == 2 {
            if letter != " " {
                middleName.append(letter)
            } else {
                currentName = 3
            }
        } else if currentName == 3 {
            if letter != " " {
                lastName.append(letter)
            } else if letter == " " {
                throw error.tooManyNames
            }
        } else {
            throw error.idkYouMessedUpSomeHow
        }
    }
    return "\(lastName), \(firstName) \(middleInitial)."
}

do {
    print(try nameSwap2(from: "Dallin Justin Cottam"))
} catch {
    print(error)
}
