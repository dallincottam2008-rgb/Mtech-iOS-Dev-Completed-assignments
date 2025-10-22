//  🏔️ MTECH Code Challenge TP10: "Palindromes"
//  Concept: Practice finding mathematical/code/logical solutions to language related tasks. You'll need to think about what makes a palindrome a palindrome and how that can translate to code.

//  Instructions:
    //  You may remember that a palindrome is a word that's spelled the same backward and forwards — like "mom" or "racecar."
    //  Create a function that accepts a string as input and returns TRUE if the string is a palindrome.

//  Examples:
    //  Input: "rotator"
    //  Output: true

    //  Input: "mississippi"
    //  Output: false

//  ⌺ Black Diamond Challenge:
    //  Find a way to check whether a phrase or sentence is a palindrome — for example, "Taco Cat" or, "Too bad I hid a boot." You'll have to find a way to remove spaces in your phrases to get the function to work.

//  Fun Facts:
    //  The Finnish word "saippuakauppias" is 15 letters, is a palindrome, and is used regularly.
    //  "A man, a plan, a canal - panama!" is a famous palindrome by Leigh Mercer; Dan Hoey expanded it to 540 words: 🔗http://complex.gmu.edu/people/ernie/witty/Hoey_palindrome.html

import Foundation
func isPalindrome(_ word: String) -> Bool {
    var word2 = String(word.reversed())
    if word2.lowercased() == word.lowercased() {
        return true
    } else {
        return false
    }
}

print(isPalindrome("Rotator"))
print(isPalindrome("Hello"))

//func isPalindrome2(_ word: String) -> Bool {
//    var noSpaces = word.filter{ $0.isletter }
//    var noSpacesReversed = String(noSpaces.reversed())
//    
//    if noSpaces.lowercased() == noSpacesReversed.lowercased() {
//        return true
//    } else {
//        return false
//    }
//}

//print(isPalindrome2("Taco Cat"))
//print(isPalindrome2("Hello World!"))
