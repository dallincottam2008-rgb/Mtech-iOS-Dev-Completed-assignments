//  🏔️ MTECH Code Challenge ND11: "Case Comparison"
//  Concept: Practice creating extensions and comparing two variables with unique criteria

//  Instructions:
    //  Extend the Character type with a method that takes another Character as input and returns an Int as output.
    //  The method should check if the input character and the character the method is called on are the same case.
        //  If either of the characters is not a letter, return -1
        //  If both characters are the same case, return 1
        //  If both characters are letters, but not the same case, return 0

//  Examples:
    //  Input: Character("a").sameCaseAs(Character("b"))
    //  Output: 1

    //  Input: Character("C").sameCaseAs(Character("d"))
    //  Output: 0

    //  Input: Character("5").sameCaseAs(Character("f"))
    //  Output: -1

//  ⌺ Black Diamond Challenge:
    //  Make it so that your function does not rely on existing Character methods or properties (i.e., .isLowercase and .isUppercase).
    //  Use an enum as the return type instead of an Int.
    //  Add another method that will instead return the input character in the same case as self.

import Foundation

extension Character {
    func sameCaseAs(_ input: Character) -> Int {
        var inputCheck = 0
        var characterCheck = 0
        inputCheck = input.lowercased() == String(input) ? 1 : 0
        characterCheck = self.lowercased() == String(self) ? 1 : 0
    
        if !input.isLetter || !self.isLetter {
            return -1
        } else if inputCheck == characterCheck {
            return 1
        } else {
            return 0
        }
    }
}

print(Character("C").sameCaseAs(Character("d")))
print(Character("c").sameCaseAs(Character("d")))
print(Character("5").sameCaseAs(Character("d")))
print(Character("c").sameCaseAs(Character("D")))
print(Character("c").sameCaseAs(Character("5")))
