/*
 
 Challenge 11: Three different letters

 Write a function that accepts two strings, and returns true if they are identical in length but have no more than three different letters, taking case and string order into account.
 
 Sample input and output
 • The strings “Clamp” and “Cramp” would return true, because there is one letter difference.
 • The strings “Clamp” and “Crams” would return true, because there are two letter differences.
 • The strings “Clamp” and “Grams” would return true, because there are three letter differences.
 • The strings “Clamp” and “Grans” would return false, because there are four letter differences.
 • The strings “Clamp” and “Clam” would return false, because they are different lengths.
 • The strings “clamp” and “maple” should return false. Although they differ by only one
 letter, the letters that match are in different positions.
 
 */

import Foundation

func challenge11(str1: String, str2: String) -> Bool {
    if str1.count != str2.count {
        return false
    }
    
    let str1Arr = Array(str1)
    let str2Arr = Array(str2)
    
    var diffCount = 0
    
    for i in 0..<str1.count {
        if str1Arr[i] != str2Arr[i] {
            diffCount += 1
        }
    }
    
    return diffCount <= 3
}

assert(challenge11(str1: "Clamp", str2: "Cramp") == true, "Challenge 11 failed.")
assert(challenge11(str1: "Clamp", str2: "Crams") == true, "Challenge 11 failed.")
assert(challenge11(str1: "Clamp", str2: "Grams") == true, "Challenge 11 failed.")
assert(challenge11(str1: "Clamp", str2: "Grans") == false, "Challenge 11 failed.")
assert(challenge11(str1: "Clamp", str2: "Clam") == false, "Challenge 11 failed.")
assert(challenge11(str1: "clamp", str2: "maple") == false, "Challenge 11 failed.")
