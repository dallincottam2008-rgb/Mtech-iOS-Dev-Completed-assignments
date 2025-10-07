//  🏔️ MTECH Code Challenge TP01: "Reverse Alphabetical"
//  Concept: Practice manipulating arrays; learn basic built-in Swift methods that you'll use every day

//  Instructions:
    //  Alphabetically reverse sort an array of strings.
func reverseSort(_ array: [String]) -> [String] {
    array.sorted().reversed()
}

print(reverseSort(["Bob", "Jill", "Sally"]))
//  Examples:
    //  Input: ["Bob", "Jill", "Sally"], Output: ["Sally", "Jill", "Bob"]
    //  Input: ["Vern", "Gidget", "Zeb"], Output: ["Zeb", "Vern", "Gidget"]

//  ⌺ Black Diamond Challenge:
    //  Create another function. This time, sort every word's letters reverse alphabetically, then sort all words in the array. You do not need to retain the case of the characters.
    //  Input: ["Bob", "Jill", "Sally"]
    //  Output: ["llji", "obb", "yslla"]
//func blackDiamand(_ array: [String]) -> [String] {
//    var sortArray = array
//    
//    for word in 0..<sortArray.count {
//        let sortedWord = String(sortArray.lowercased().sorted(by: >))
//    }
//    
//    return sortArray
//}
//
//print(blackDiamand(["Bob", "Jill", "Sally"]))
import Foundation
