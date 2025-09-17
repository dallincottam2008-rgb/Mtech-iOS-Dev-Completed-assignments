//  🏔️ MTECH Code Challenge SF15: "Alternating 1s and 0s"
//  Concept: Use for loops to produce strings or collections

//  Instructions:
    //  Create a function called 'stringy' that takes a size and returns a string of alternating '1s' and '0s' that is that size.
    //  The string should start with a 1.

//  Restrictions:
    //  The size will always be positive and will only use whole numbers.
func stringy(_ size: Int) -> String {
    var sizeCount = size
    var returnedString = ""
    repeat {
        if returnedString.count.isMultiple(of: 2) {
            returnedString.append("1")
        } else {
            returnedString.append("0")
        }
        sizeCount -= 1
    } while sizeCount > 0
    return returnedString
}

print(stringy(6))
//  Examples:
    //  Input: 6
    //  Output: "101010".

    //  Input: 4
    //  Output: "1010".

    //  Input 11:
    //  Output: "10101010101".

//  ⌺ Black Diamond Challenge:
    //  Add a second parameter that takes a bool. If true, start the string with a 1; if false, start it with a 0.
    //  Alternate from there as expected, i.e. "01010"

import Foundation
