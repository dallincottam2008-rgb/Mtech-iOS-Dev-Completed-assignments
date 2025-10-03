//  🏔️ MTECH Code Challenge SF37: "Selection Sort"
//  Concept: Learn about another common sorting algorithm and practice manipulating data in an array

//  Instructions:
    //  Just like your previous code challenges, you are not allowed to use the .sort() method
    //  Create a function that takes in an array of Ints. Sort the array using an selection sort
    //  A visualization of what an insertion sort is can be seen here: 🔗https://en.wikipedia.org/wiki/Selection_sort#/media/File:Selection-Sort-Animation.gif

//    return returnArray


//  Examples:
    //  Input: [-43, 6, -2, 29, 16]
    //  Output: [-43, -2, 6, 16, 29]

//  ⌺ Black Diamond Challenge:
    //  Read about Introsort, the actual sorting algorithm Apple has chosen to use in the Array.sort() method, as well as elsewhere. 🔗https://en.wikipedia.org/wiki/Introsort
    //  Like before, you are not expected to understand every element of the page, but take notes in a comment on this challenge about what you can glean from the information.

import Foundation

func selectionSort(_ array: [Int]) -> [Int] {
    var returnArray: [Int] = []
    var totalCount = array.count
    var usedArray = array
    var minNum = 0
    var minNumIndex = 0
    
    for index in 0..<totalCount{
        for (index, num) in usedArray.enumerated() {
            if index == 0 {
                minNum = num
            } else if num <= minNum {
                minNum = num
                minNumIndex = index
            }
            print(minNum, returnArray)
        }
        usedArray.remove(at: minNumIndex)
        returnArray.append(minNum)
        minNum = 0
        minNumIndex = 0
        print(returnArray)
    }
    return returnArray
}
selectionSort([-43,6,-2,29,16])
