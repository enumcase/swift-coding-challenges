/*
 
 Challenge 8: String is rotated
 
 Write a function that accepts two strings, and returns true if one string is rotation of the other, taking letter case into account.
 
 Tip: A string rotation is when you take a string, remove some letters from its end, then append them to the front. For example, “swift” rotated by two characters would be “ftswi”.
 
 Sample input and output
 • The string “abcde” and “eabcd” should return true.
 • The string “abcde” and “cdeab” should return true.
 • The string “abcde” and “abced” should return false; this is not a string rotation.
 • The string “abc” and “a” should return false; this is not a string rotation.

 */

import Foundation

func challenge8(original: String, rotation: String) -> Bool {
    if original.count != rotation.count { return false }
    
    let doubleString = original + original
    
    if(doubleString.contains(rotation)) {
        return true
    }
    
    return false
}

assert(challenge8(original: "abcde", rotation: "eabcd") == true, "Challenge 8 failed")
assert(challenge8(original: "abcde", rotation: "cdeab") == true, "Challenge 8 failed")
assert(challenge8(original: "abcde", rotation: "abced") == false, "Challenge 8 failed")
assert(challenge8(original: "abc", rotation: "a") == false, "Challenge 8 failed")
