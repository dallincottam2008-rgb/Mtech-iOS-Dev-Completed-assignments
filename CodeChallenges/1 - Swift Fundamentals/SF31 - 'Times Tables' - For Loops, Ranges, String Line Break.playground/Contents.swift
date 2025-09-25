//  🏔️ MTECH Code Challenge SF31: "Times Tables"
//  Concept: Practice using for loops and string interpolation

//  Instructions:
    //  Create a function that prints a multiplication table for any integer.
    //  The table should show its multiples from 1-10.
func timesTable(_ times: Int) -> String {
    var timesBy = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    var mappedTable = timesBy.map{$0 * times}
    return "1 * \(times) = \(timesBy[0]) \n2 * \(times) = \(timesBy[1]) \n3 * \(times) = \(timesBy[2]) \n4 * \(times) = \(timesBy[3]) \n5 * \(times) = \(timesBy[4]) \n6 * \(times) = \(timesBy[5]) \n7 * \(times) = \(timesBy[6]) \n8 * \(times) = \(timesBy[7]) \n9 * \(times) = \(timesBy[8]) \n10 * \(times) = \(timesBy[9]) \n"
    
}

print(timesTable(5))
//  Notes:
    //  You can use "\n" in a string to insert a line break, the equivalent of hitting "return."

//  Examples:
    //  Input: 5
    //  Output:
        //  1 * 5 = 5
        //  2 * 5 = 10
        //  3 * 5 = 15
        //  4 * 5 = 20
        //  5 * 5 = 25
        //  6 * 5 = 30
        //  7 * 5 = 35
        //  8 * 5 = 40
        //  9 * 5 = 45
        //  10 * 5 = 50

//  ⌺ Black Diamond Challenge:
    //  Make another function with the same goal, but which accepts an array of integers as a parameter and prints the tables for each integer in the array.

import Foundation
