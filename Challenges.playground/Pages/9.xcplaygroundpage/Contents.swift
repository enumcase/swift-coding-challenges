/*
 
 Challenge 9: Find pangrams
 
 Write a function that returns true if it is given a string that is an English pangram, ignoring letter case.
 Tip: A pangram is a string that contains every letter of the alphabet at least once.
 
 Sample input and output
 • The string “The quick brown fox jumps over the lazy dog” should return true.
 • The string “The quick brown fox jumped over the lazy dog” should return false,
 because it’s missing the S.
 
 */

import Foundation

func challenge9(_ str: String) -> Bool {
    var set = Set<Character>()
    
    for char in str.lowercased() {
        if char.isLetter {
            set.insert(char)
        }
    }
    
    return set.count == 26
}

assert(challenge9("The quick brown fox jumps over the lazy dog") == true, "Challenge 9 failed")
assert(challenge9("The quick brown fox jumped over the lazy dog") == false, "Challenge 9 failed")
