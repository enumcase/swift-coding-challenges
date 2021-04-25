/*
 
 Challenge 12: Find longest prefix

 Write a function that accepts a string of words with a similar prefix, separated by spaces, and returns the longest substring that prefixes all words.
 
 Sample input and output
 • The string “swift switch swill swim” should return “swi”.
 • The string “flip flap flop” should return “fl”.
 
 */

import Foundation

func challenge12(_ str: String) -> String {
    let strsArr = str.components(separatedBy: " ")
    
    var prefix = ""
    var longestPrefix = ""
    
    let firstStr = strsArr[0]
    
    for char in firstStr {
        prefix += String(char)
        
        for str in strsArr {
            if !str.hasPrefix(prefix) {
                return longestPrefix
            }
        }
        
        longestPrefix = prefix
    }
    
    return longestPrefix
}

assert(challenge12("swift switch swill swim") == "swi", "Challenge 12 failed")
assert(challenge12("flip flap flop") == "fl", "Challenge 12 failed")
