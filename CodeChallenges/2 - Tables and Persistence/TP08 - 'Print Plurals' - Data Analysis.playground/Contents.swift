//  🏔️ MTECH Code Challenge TP08: "Print Plurals"
//  Concept: Practice looping over an array of data and analyzing its contents

//  Instructions:
    //  Write a function that takes in an array of strings. Print all the plural strings that end in 's'

//  Notes:
    //  You do not need to worry about irregular plurals ("deer", "geese")
    //  You do not need to worry about other words that end in 's' ("class", "GPS")

//  Examples:
    //  Input: ["Apple", "Oranges", "Pineapple", "Bananas", "Grapes", "Raspberry"]
    //  Output:
        //  Oranges
        //  Bananas
        //  Grapes

//  ⌺ Black Diamond Challenge:
    //  Write an answer to the following question as a comment: What do you think it would involve to write a function that does identify irregular plurals and exclude words that happen to end in 's'? What would you have to do to accomplish that?
// you would need to check to see if a word had an ending with s or if it was a word like deer, i would use an array then change them based on what it is.
    //  Write another function that converts all singular strings in an array to plural, but does not add an 's' if they are already plural. (You still do not need to worry about irregular plurals.)
    //  Input: ["Apple", "Oranges", "Pineapple", "Bananas", "Grapes"]
    //  Output: Apples, Oranges, Pineapples, Bananas, Grapes

import Foundation

func findPlurals(in array: [String]) {
    var plurals = array.filter{$0.hasSuffix("s")}
    for word in plurals {
        print(word)
    }
}

findPlurals(in: ["Apple", "Oranges", "Pineapple", "Bananas", "Grapes", "Raspberry"])

func makePlural(_ array: [String]) {
    var pluralWords: [String] = []
    
    for words in array {
        if var word = words as String? {
            if !word.hasSuffix("s") {
                word.append("s")
                
            }
            pluralWords.append(word)
        }
    }
    print(pluralWords)
}

makePlural(["Apple", "Oranges", "Pineapple", "Bananas", "Grapes", "Raspberry"])
