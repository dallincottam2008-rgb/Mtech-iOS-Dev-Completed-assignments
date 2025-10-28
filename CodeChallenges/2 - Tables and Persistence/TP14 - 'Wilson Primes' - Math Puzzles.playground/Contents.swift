//  🏔️ MTECH Code Challenge TP14: "Wilson Primes"
//  Concept: Practice translating math concepts into Swift

//  Instructions:
    //  Wilson primes satisfy the following condition. Let P represent a prime number.
    //  ((P-1)! + 1) / P^2 = a whole number
    //  Your task is to create a function that returns true if the given number is a Wilson prime.

//  Examples:
    //  Input: 5 or 13 or 563
    //  Output: true

    //  Input: Any other number
    //  Output: False

//  ⌺ Black Diamond Challenge:
    //  There are three known Wilson primes. Create a function that outputs all three (by calculating them, not by hardcoding them as a literal).

import Foundation

func isWilsonPrime(_ p: Int) -> Bool {
//    if p == 5 || p == 13 || p == 563 {
//        return true
//    } else {
//        return false
//    }
    let factorialP = isFactorial(p - 1)
    let wilsonNum = (factorialP + 1) / p * p
    
    if  {
        return true
    } else {
        return false
    }
}


func isFactorial(_ num: Int) -> Int {
    if num == 0 {
        return 1
    } else {
        return num * isFactorial(num - 1)
    }
}

print(isWilsonPrime(4))
