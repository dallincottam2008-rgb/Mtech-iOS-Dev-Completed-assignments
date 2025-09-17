//  🏔️ MTECH Code Challenge SF13: "Fake Binary"
//  Concept: Identify how to use a string as a collection (array) and how to change a numeric Character to an Int

//  Instructions:
//  Create a function that takes one String as a parameter and returns a string.
//  Assume the string will always be a number.
//  Return a string where any digit below 5 is replaced with '0' and any digit 5 and above with '1'.

//  Examples:
//  Input: "13579"
//  Output: "00111"

//  Input: "51093"
//  Output: "10010"
//  ⌺ Black Diamond Challenge:
//  Add three more parameters to your function; one that defines the mid-point (5 in the above instructions), and one that defines what to replace each digit with (0 and 1 in the above examples)

import Foundation

func fakeBinary(_ takenString: String) -> String {
    var  returnedString = ""
    for number in takenString {
        if let checkString = Int(String(number)) {
            if checkString < 5 {
                returnedString.append("0")
            } else {
                returnedString.append("1")
            }
        }
    }
    return returnedString
}




var test = fakeBinary("38529872")
print(test)
var test2 = fakeBinary("6")
print(test2)
