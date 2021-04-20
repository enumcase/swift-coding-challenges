/*
 
 Challenge 6: Remove duplicate letters from a string
 
 Write a function that accepts a string as its input, and returns the same string just with
 duplicate letters removed.
 
 Tip: If you can solve this challenge without a for-in loop, you can consider it “tricky” rather than “easy”.
 
 Sample input and output
 • The string “wombat” should print “wombat”.
 • The string “hello” should print “helo”.
 • The string “Mississippi” should print “Misp”.

 */

import Foundation

func challenge6(str: String) -> String {
    var usedLetters = [Character]()
    
    for char in str {
        if !usedLetters.contains(char) {
            usedLetters.append(char)
        }
    }
    
    return String(usedLetters)
}

assert(challenge6(str: "wombat") == "wombat", "Challenge 6 failed")
assert(challenge6(str: "hello") == "helo","Challenge 6 failed")
assert(challenge6(str: "Mississippi") == "Misp", "Challenge 6 failed")
