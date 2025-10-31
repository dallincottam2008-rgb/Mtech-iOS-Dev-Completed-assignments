//  🏔️ MTECH Code Challenge TP19: "Alphabet Indexer"
//  Concept: Practice storing and evaluating a custom dataset

//  Instructions:
    //  When provided with a letter, return its position in the English alphabet.
    //  Your code should either throw an error, return nil, or fail to compile if something other than a single letter is provided.

//  Examples:
    //  Input: "a"
    //  Output: 1

//  Notes:
    //  Your code should be case insensitive.

//  ⌺ Black Diamond Challenge:
    //  Extend the functionality to handle strings with multiple characters. For such strings, return the sum of the positions of all the letters in the string. If any non-letter characters are present, throw an error, return nil, or fail to compile.
    //  Rewrite your function to not rely on using a literal array for the alphabet. (In other words, the alphabet itself should not appear in your function.)

import Foundation

func alphabetIndex(of string: String) -> Int? {
    let alphabet = (UnicodeScalar("a").value...UnicodeScalar("z").value) .compactMap { UnicodeScalar($0) } .map{ String($0) }
    var returnIndex = 0
    
    for letter in string.lowercased() {
        if let letter = alphabet.firstIndex(of: String(letter)) {
            returnIndex += letter + 1
        } else {
            return nil
        }
    }
    return returnIndex
    
}

print(alphabetIndex(of: "a")!)
print(alphabetIndex(of: "z")!)
print(alphabetIndex(of: "@"))
print(alphabetIndex(of: "#"))
print(alphabetIndex(of: "abkakjkjf")!)
print(alphabetIndex(of: "Abkakjkjf")!)
print(alphabetIndex(of: "@kjakljda"))

