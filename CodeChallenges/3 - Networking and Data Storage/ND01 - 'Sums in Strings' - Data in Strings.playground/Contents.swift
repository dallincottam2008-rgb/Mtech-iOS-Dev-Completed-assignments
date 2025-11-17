//  🏔️ MTECH Code Challenge ND01: "Sums in Strings"
//  Concept: Practice converting Strings to other types and evaluating data stored within them

//  Instructions:
    //  Create a function that takes a String as input and returns an Integer.
    //  Your task is to calculate the sum of the integers inside an input string.

//  Examples:
    //  Input: "The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog"
    //  Math: 30 + 20 + 10 + 0 + 1203 + 914 + 3 + 1349 + 102 + 4
    //  Output: 3635

//  ⌺ Black Diamond Challenge:
    //  Make another function. This one should also execute any mathematical operators contained in the string (+, -, /, * or x). If no operator separates two integers, add them by default. Thus, the string "13-3is10" would produce 20 (13 - 3 + 10).

import Foundation

func sumInString(_ string: String) -> Int {
    var returnVal = 0
    var addVal = ""
    
    for num in string {
        if let num2 = Int(String(num)) {
            addVal.append(String(num))
        } else if addVal.isEmpty {
            continue
        } else {
            if let addVal2 = Int(addVal) {
                returnVal += addVal2
                addVal = ""
            }
        }
    }
    return returnVal
}

print(sumInString("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog"))

//func mathInString(_ string: String) -> Int {
//    var returnVal = 0
//    var addVal = ""
//    let operators = ["+", "-", "*", "/", "x"]
//    
//    for num in string {
//        if operators.contains(String(num)) {
//
//        } else if let num2 = Int(String(num)) {
//            addVal.append(String(num))
//        } else if addVal.isEmpty {
//            continue
//        } else {
//            if let addVal2 = Int(addVal) {
//                returnVal += addVal2
//                addVal = ""
//            }
//        }
//        
//    }
//    return returnVal
//}

//print(mathInString("T+he30quick20brown10f0x1203jum-ps914ov3r1349the102l4zy dog"))
