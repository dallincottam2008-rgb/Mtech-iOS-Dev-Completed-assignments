//  🏔️ MTECH Code Challenge SF30: "Averaging Scores"
//  Concept: Practice calculating the average of numbers in an array and rounding down the result

//  Instructions:
    //  It's the academic year's end, fateful moment of your school report. The averages must be calculated. All the students come to you and entreat you to calculate their average for them. Easy! You just need to write a script.
    //  Return the average of the given array rounded down to its nearest integer.
func averageGrade(_ grades: [Int]) -> Int {
    var addedGrades = grades.reduce(0, +)
    return addedGrades / grades.count
}
print(averageGrade([90, 80, 70, 60, 50]))
print(averageGrade([1, 2, 3, 4, 5]))

//  Notes:
    //  The array will never be empty.

//  Examples:
    //  Input: array: [90, 80, 70, 60, 50]
    //  Output: 70

    //  Input: array: [1, 2, 3, 4, 5]
    //  Output: 3

//  ⌺ Black Diamond Challenge:
    //  Create a function that not only calculates the average and rounds down, but also returns the highest and lowest values in the array.
func highAndLow(_ grades: [Int]) -> [String: Any] {
    var addedGrades = grades.reduce(0, +)
    var highAndLowGrades = grades.sorted(by: >)
    guard let lowestGrade = highAndLowGrades.last else {return ["Average Grade": addedGrades / grades.count]}
    var collectioOfGrades: [String: Any] = ["Average Grade": addedGrades / grades.count, "Highest Grade": highAndLowGrades[0], "Lowest Grade": lowestGrade]
    return collectioOfGrades
}
print(highAndLow([90, 80, 70, 60, 50]))

import Foundation
