/*
 
 Challenge 13: Run-length encoding

 Write a function that accepts a string as input, then returns how often each letter is repeated in a single run, taking case into account.
 Tip: This approach is used in a simple lossless compression technique called run-length encoding.
 
 Sample input and output
 • The string “aabbcc” should return “a2b2c2”.
 • The strings “aaabaaabaaa” should return “a3b1a3b1a3”
 • The string “aaAAaa” should return “a2A2a2”

 */
import Foundation

func challenge13(_ str: String) -> String {
    var result = ""
    var currentChar: Character? = nil
    
    var count = 0
    
    for char in str {
        if char == currentChar {
            count += 1
        } else {
            if let currentChar = currentChar {
                result += ("\(currentChar)\(count)")
            }
            
            currentChar = char
            count = 1
        }
    }
    
    if let currentChar = currentChar {
        result += ("\(currentChar)\(count)")
    }
    
    return result
}

assert(challenge13("aabbcc") == "a2b2c2", "Challenge 13 failed")
assert(challenge13("aaabaaabaaa") == "a3b1a3b1a3", "Challenge 13 failed")
assert(challenge13("aaAAaa") == "a2A2a2", "Challenge 13 failed")
