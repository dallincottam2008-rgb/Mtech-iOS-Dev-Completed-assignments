//  🏔️ MTECH Code Challenge TP15: "Removing Spaces"
//  Concept: Practice modifying strings

//  Instructions:
    //  Create a function that accepts a string as input and returns a different string.
    //  Remove the spaces from the input string, then return the resultant string.

//  Examples:
    //  Input: "Hello, world!"
    //  Output: "Hello,world!"

//  ⌺ Black Diamond Challenge:
    //  Make it so that spaces are not removed if they come after a period, exclamation point, or question mark.
    //  Create another function that can accept as input any string that has previously been returned and give you the original input string.

import Foundation

func removeSpaces(in string: String) -> String {
    string.filter{ $0 != " " }
}

print(removeSpaces(in: "Hello, world!"))

func removeSpaces2(in string: String) -> String {
    var lastCharacter = ""
    var retrunedString = ""
    
    for letter in string {
        if letter == " " && lastCharacter == "" {
            lastCharacter = ""
            continue
        } else if letter == "." || letter == "!" || letter == "?" {
            retrunedString.append(letter)
            lastCharacter = String(letter)
        } else if letter == " " && lastCharacter != "" {
            retrunedString.append(letter)
            lastCharacter = ""
        } else {
            retrunedString.append(letter)
            lastCharacter = ""
        }
    }
    return retrunedString
}

print(removeSpaces2(in: "Hello! World, Hello world"))
print("HI")

