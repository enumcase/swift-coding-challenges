/*
 
 Challenge 5: Count the characters
 
 Write a function that accepts a string, and returns how many times a specific character appears, taking case into account.
 
 Tip: If you can solve this without using a for-in loop, you can consider it a Tricky challenge.
 
 Sample input and output
 • The letter “a” appears twice in “The rain in Spain”.
 • The letter “i” appears four times in “Mississippi”.
 • The letter “i” appears three times in “Hacking with Swift”.

 */

import Foundation

func challenge5(str: String, char: Character) -> Int{
    var count = 0
    
    for ch in str {
        if ch == char {
            count += 1
        }
    }
    
    return count
}

assert(challenge5(str: "The rain in Spain", char: "a") == 2, "Challenge 5 failed")
assert(challenge5(str: "Mississippi", char: "i") == 4, "Challenge 5 failed")
assert(challenge5(str: "Hacking with Swift", char: "i") == 3, "Challenge 5 failed")
