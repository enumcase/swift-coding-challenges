/*
 
 Challenge 10: Vowels and consonants

 Given a string in English, return a tuple containing the number of vowels and consonants.
 
 Tip: Vowels are the letters, A, E, I, O, and U; consonants are the letters B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, W, X, Y, Z.
 
 Sample input and output
 • The input “Swift Coding Challenges” should return 6 vowels and 15 consonants.
 • The input “Mississippi” should return 4 vowels and 7 consonants.

 */

import Foundation

func challenge10(_ str: String) -> (Int, Int) {
    
    var vowels = 0
    var consonants = 0
    
    for char in str.lowercased() where char.isLetter {
        if char == "a" || char == "e" || char == "i" || char == "o" || char == "u" {
            vowels += 1
        } else {
            consonants += 1
        }
    }
    
    return (vowels, consonants)
}

assert(challenge10("Swift Coding Challenges") == (6, 15), "Challenge 10 failed")
assert(challenge10("Mississippi") == (4, 7), "Challenge 10 failed")
