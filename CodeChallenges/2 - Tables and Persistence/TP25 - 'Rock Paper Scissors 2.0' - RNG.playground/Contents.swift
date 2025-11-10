//  🏔️ MTECH Code Challenge TP25: "Rock Paper Scissors 2.0"
//  Concept: Add custom randomization to a function. Black Diamond: Parse arrays.

//  Instructions:
    //  Create a function that takes in a string as input. This is the users move (either rock, paper, or scissors).
    //  Randomly decide what the computers choice is.
    //  Return a string which declares the winner.

//  Examples:
    //  Input: "rock"
    //  Output: "I chose paper. You lose!"
    //  Output: "I chose rock. Draw! Go again?"
    //  Output: "I chose scissors. I lose."

//  ⌺ Black Diamond Challenge:
    //  Create another function that instead accepts an array as input. If only one move is entered, generate a random one for the computer; if two are entered, compare them.
    //  If more than two moves are input, the winners are the players who voted for the most popular move.

import Foundation

func rockPaperScissors(_ input: String) -> String {
    let moves = ["rock", "paper", "scissors"]
    let randomInput = moves[Int.random(in: 0...2)]
    if input.lowercased() == randomInput {
        return "I chose \(randomInput). Draw! Go again?"
    } else if input.lowercased() == "rock" && randomInput == "scissors" || input.lowercased() == "paper" && randomInput == "rock" || input.lowercased() == "scissors" && randomInput == "paper" {
        return "I chose \(randomInput). I lose."
    } else {
        return "I chose \(randomInput). You lose!."
    }
}

print(rockPaperScissors("rock"))
print(rockPaperScissors("paper"))
print(rockPaperScissors("scissors"))

//func rockPaperScissors2(_ input: [String]) -> String {
//    let moves = ["rock", "paper", "scissors"]
//    let randomInput = moves[Int.random(in: 0...2)]
//    for move in input {
//        if move.lowercased() == randomInput {
//            return "I chose \(randomInput). Draw! Go again?"
//        } else if move.lowercased() == "rock" && randomInput == "scissors" || move.lowercased() == "paper" && randomInput == "rock" || input.lowercased() == "scissors" && randomInput == "paper" {
//            return "I chose \(randomInput). I lose."
//        } else if input.lowercased() == "paper" && randomInput == "scissors" || input.lowercased() == "scissors" && randomInput == "rock" || input.lowercased() == "rock" && randomInput == "paper" {
//            return "I chose \(randomInput). You lose!."
//        } else {
//            return "not a valid input"
//        }
//    }
//}
