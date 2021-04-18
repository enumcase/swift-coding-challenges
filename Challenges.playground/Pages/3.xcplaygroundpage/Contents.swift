/*
 
 Challenge 3: Do two strings contain the same characters?
 
 Write a function that accepts two String parameters, and returns true if they contain the same characters in any order taking into account letter case.
 
 Sample input and output
 • The strings “abca” and “abca” should return true.
 • The strings “abc” and “cba” should return true.
 • The strings “ a1 b2 ” and “b1 a2” should return true.
 • The strings “abc” and “abca” should return false.
 • The strings “abc” and “Abc” should return false.
 • The strings “abc” and “cbAa” should return false.
 
 */

import Foundation

func challenge3(str1: String, str2: String) -> Bool {
    var set = Set<Character>()
    
    if(str1.count != str2.count) {
        return false
    }
    
    for char in str1 {
        set.insert(char)
    }
    
    for char in str2 {
        if !set.contains(char) {
            return false
        }
    }
    
    return true
}

assert(challenge3(str1: "abca", str2: "abca") == true, "Challenge 3 failed")
assert(challenge3(str1: "abc", str2: "cba") == true, "Challenge 3 failed")
assert(challenge3(str1: "a1 b2", str2: "b1 a2") == true, "Challenge 3 failed")
assert(challenge3(str1: "abc", str2: "abca") == false, "Challenge 3 failed")
assert(challenge3(str1: "abc", str2: "Abc") == false, "Challenge 3 failed")
assert(challenge3(str1: "abc", str2: "cbAa") == false, "Challenge 3 failed")
