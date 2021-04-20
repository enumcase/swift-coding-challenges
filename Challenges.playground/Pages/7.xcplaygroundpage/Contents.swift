/*
 
 Challenge 7: Condense whitespace
 
 Write a function that returns a string with any consecutive spaces replaced with a single space.
 
 Sample input and output
 I’ve marked spaces using “[space]” below for visual purposes:
 • The string “a[space][space][space]b[space][space][space]c” should return “a[space]b[space]c”.
 • The string “[space][space][space][space]a” should return “[space]a”.
 • The string “abc” should return “abc”.
 
 */

import Foundation

func challenge7(str: String) -> String {
    var usedLetters = [Character]()
    var seenSpace = false
    
    for char in str {
        if char == " " {
            if seenSpace {
                continue
            }
            
            seenSpace = true
        } else {
            seenSpace = false
        }
        
        usedLetters.append(char)
    }
    
    return String(usedLetters)
}

assert(challenge7(str: "a   b   c") == "a b c", "Challenge 7 failed")
assert(challenge7(str: "    a") == " a", "Challenge 7 failed")
assert(challenge7(str: "abc") == "abc", "Challenge 7 failed")
