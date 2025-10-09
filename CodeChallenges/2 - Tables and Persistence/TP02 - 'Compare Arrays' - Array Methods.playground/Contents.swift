//  🏔️ MTECH Code Challenge TP02: "Compare Arrays"
//  Concept: Practice manipulating arrays; learn basic built-in Swift methods that you'll use every day

//  Instructions:
    // Write a function that takes in two arrays of Strings.
    //  This function should keep track of which elements in either array do not also appear in the other array.
    //  Return a new array of those unique elements
func compare(_ array1: [String], to array2: [String]) -> [String] {
    var combinedArrays:[String] = []
    
    for word in array1 {
        if !array2.contains(word) {
            combinedArrays.append(word)
        }
    }
    
    for word in array2 {
        if !array1.contains(word) {
            combinedArrays.append(word)
        }
    }
    return combinedArrays
}

print(compare(["Monday", "Tuesday", "Wednesday"], to: ["Wednesday", "Friday", "Saturday"]))
//  Examples:
    //  Input: 
        //  array1: ["Monday", "Tuesday", "Wednesday"], array2: ["Wednesday", "Friday", "Saturday"]
    //  Output:
        //  ["Monday", "Tuesday", "Friday", "Saturday"]

//  ⌺ Black Diamond Challenge:
    //  In another function, return only the items that occur in both arrays.
    //  In another function, use sets to accomplish the same goal.

import Foundation
