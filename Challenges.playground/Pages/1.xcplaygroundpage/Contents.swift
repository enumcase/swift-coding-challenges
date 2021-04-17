/*
 
 Challenge 1: Are the letters unique?
 
 Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account.
 
 Sample input and output
 • The string “No duplicates” should return true.
 • The string “abcdefghijklmnopqrstuvwxyz” should return true.
 • The string “AaBbCc” should return true because the challenge is case-sensitive.
 • The string “Hello, world” should return false because of the double Ls and double Os.
 
 */

import Foundation

func challenge1(input: String) -> Bool {
    var set = Set<Character>()
    
    for char in input {
        if(!set.insert(char).inserted) {
            return false
        }
    }
    
    return true
}

//challenge1("No duplicates")

assert(challenge1(input: "No duplicates") == true, "Challenge 1 failed")
assert(challenge1(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(challenge1(input: "AaBbCc") == true, "Challenge 1 failed")
assert(challenge1(input: "Hello, world") == false, "Challenge 1 failed")
