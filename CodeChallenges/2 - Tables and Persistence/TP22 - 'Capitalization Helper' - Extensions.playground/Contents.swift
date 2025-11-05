//  🏔️ MTECH Code Challenge TP22: "Capitalization Helper"
//  Concept: Practice creating simple extensions to add custom methods for standard types

//  Instructions:
    //  Your coworker was supposed to write a simple helper function to capitalize the first character of a string and lowercase the rest before they went on vacation.

    // Unfortunately, they have now left and the code they gave you doesn't work. Fix the helper function they wrote so that:
        //  It capitalizes the first character of the input string
        //  It does not require an input parameter, but mutates the string it is called on instead

//  Examples:
    //  Input: "clown Husbandry"
    //  Call: input.captializingOnlyFirst()
    //  Output: "Clown husbandry"

//  ⌺ Black Diamond Challenge:
    //  Add another function to String that cApItAlIzEs EvErY oThEr LeTtEr. Note that letters alternate capitaliztion between words, as well; spaces do not interrupt the pattern.

import Foundation

extension String {
    func capitalizeWord() -> String {
        var input = self
        input.lowercased()
        var inputArray = Array(input)
        let newLetter = String(inputArray[0]).capitalized
        inputArray.remove(at: 0)
        inputArray.insert(contentsOf: newLetter, at: 0)
        return inputArray.map{ String($0) }.joined()
    }
}

var word = "hello world"
var word2 = word.capitalizeWord()
print(word2)
