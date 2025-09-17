//  🏔️ MTECH Code Challenge SF18: "Subset of an Array"
//  Concept: Practice accessing a set of data in an array that is not the entire array; practice using index subscripting

//  Instructions:
    //  Create a function take that takes an Array<Int> and an Int, n, and returns an Array<Int> containing the first up to n elements from the array.
func arrayFunc (_ listOfNumbers: [Int], n: Int) -> Any {
    return listOfNumbers[0...n - 1]
}
print(arrayFunc([15,5,6,7,2,3,45,12], n: 3))
//  Examples:
    //  Input: [15,5,6,7,2,3,45,12], 3
    //  Output: [15,5,6]

//  ⌺ Black Diamond Challenge:
    //  Create another function. This time, return the first and last n elements of the array. If the first and last n elements overlap (i.e., 3 first and 3 last in a 5 element array), return the whole array.

import Foundation
