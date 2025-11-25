//  🏔️ MTECH Code Challenge ND08: "Between Two Ints" 2️⃣↔️🔟
//  Concept: Practice using for loops to generate a dataset with custom parameters

//  Instructions:
//  Create a function that takes two Integers, a and b, as input, and returns an array of Ints.
//  The function should return an array of all integers from a to b, inclusive.

//  Notes:
//  If a is greater than b, list all integers from b to a.

//  Examples:
//  Input: 2, 10
//  Output: [2, 3, 4, 5, 6, 7, 8, 9, 10]

//  ⌺ Black Diamond Challenge:
//  Add a third parameter, c. Only return integers in the array that are divisible by c.
//  Input: 2, 10, 3
//  Output: [3, 6, 9]

import Foundation

func betweenTwoInts(from a: Int, to b: Int ) -> [Int] {
    var returnArray: [Int] = []
    
    if a < b {
        for num in a...b {
            returnArray.append(num)
        }
        return returnArray
    } else {
        for num in b...a  {
            returnArray.append(num)
        }
        return returnArray.reversed()
    }
}

print(betweenTwoInts(from: 2, to: 10))
print(betweenTwoInts(from: 10, to: 2))

func betweenTwoInts2(from a: Int, to b: Int, divisibleBy c: Int ) -> [Int] {
    var returnArray: [Int] = []
    
    if a < b {
        for num in a...b {
            if num.isMultiple(of: c) {
                returnArray.append(num)
            }
        }
        return returnArray
    } else {
        for num in b...a  {
            if num.isMultiple(of: c) {
                returnArray.append(num)
            }
        }
        return returnArray.reversed()
    }
}

print(betweenTwoInts2(from: 2, to: 10, divisibleBy: 3))
print(betweenTwoInts2(from: 10, to: 2, divisibleBy: 3))
