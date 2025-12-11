//  🏔️ MTECH Code Challenge ND16: "Punctuation Removal"
//  Concept: Practice manipulating a string

//  Instructions:
    //  Remove any punctuation mark from the end of a string.
    //  If the string ends with a punctuation mark (e.g., '.', ',', '!', '?', ';', ':', '-', '_'), remove only the last occurrence of such a mark.
    //  If the input string is empty, return an empty string.

//  Examples:
    //  Input: "Greetings, friends!!"
    //  Output: "Greetings, friends!"

    //  Input: "Wow."
    //  Output: "Wow"

//  ⌺ Black Diamond Challenge:
    //  Create another function. This time, remove all leading and trailing punctuation, including multiples.
    //  Input: "...This is a good example!!!", Output: "This is a good example"

import Foundation

func removePunctuation(from input: String) -> String {
    var returnString = input
    
    if returnString.last?.isPunctuation == true {
        let lastChar = returnString.removeLast()
        // we don't need the lastChar
    }
    
    return returnString
}

print(removePunctuation(from: "Greetings, friends!!"))
print(removePunctuation(from: "Greetings, friends"))
