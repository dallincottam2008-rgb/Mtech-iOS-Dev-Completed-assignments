//  🏔️ MTECH Code Challenge SF10: "Name, Age, and Pi"
//  Concept: Practice looping over arrays

//  Instructions:
    //  Create a function that takes in an array of Int's as a parameter
    //  You will need to multiply each Int in the array by 5.
    //  The function will return the array of new Ints.
func multiplyByFive(_ intArray: [Int]) -> [Int] {
    var returnedArray: [Int] = []
    for number in intArray {
        returnedArray.append(number * 5)
    }
    return returnedArray
}
print(multiplyByFive([5, 10, 4]))
//  ⌺ Black Diamond Challenge:
    //  Create a second function for the same purpose. Return an array of Ints without using a for loop. (This will require a special method -- look it up!)

import Foundation
