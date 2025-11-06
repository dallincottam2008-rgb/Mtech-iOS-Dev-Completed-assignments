//  🏔️ MTECH Code Challenge TP23: "Powers of Two"
//  Concept: Practice translating math into Swift code

//  Instructions:
//  Create a function that takes a non-negative integer n as input, and returns a list of all the powers of 2 with the exponent ranging from 0 to n (inclusive).

//  Examples:
//  Input: 2
//  Math: 2^0, 2^1, 2^2
//  Output: [1, 2, 4]

//  Input: 5
//  Math: 2^0, 2^1, 2^2, 2^3, 2^4, 2^5
//  Output: [1, 2, 4, 8, 16, 32]

//  ⌺ Black Diamond Challenge:
//  Create another function. This time, return all powers of N with the exponent ranging from 0 to n (inclusive).
//  Input: 4, Output: [1, 4, 16, 64, 256]

import Foundation

enum PowerOfErrors: Error {
    case lessThanZero
}

func toThePower(of num: Int)throws -> [Int] {
    guard num > 0 else { throw PowerOfErrors.lessThanZero }
    
    var returnArray: [Int] = []
    
    for num in 0...num {
        returnArray.append(Int(pow(Double(2), Double(num))))
    }
    return returnArray
}

do {
    try print(toThePower(of: 5))
} catch {
    print("error")
}

func toThePower2(of num: Int)throws -> [Int] {
    guard num > 0 else { throw PowerOfErrors.lessThanZero }
    
    var returnArray: [Int] = []
    
    for num2 in 0...num {
        returnArray.append(Int(pow(Double(num), Double(num2))))
    }
    return returnArray
}

do {
    try print(toThePower2(of: 4))
} catch {
    print("error")
}
