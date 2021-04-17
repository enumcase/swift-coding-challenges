/*
 
 Challenge 2: Is a string a palindrome?
 
 Write a function that accepts a String as its only parameter, and returns true if the string reads the same when reversed, ignoring case.
 
 Sample input and output
 • The string “rotator” should return true.
 • The string “Rats live on no evil star” should return true.
 • The string “Never odd or even” should return false; even though the letters are the
 same in reverse the spaces are in different places.
 • The string “Hello, world” should return false because it reads “dlrow ,olleH”
 backwards.
 
 */

import Foundation

extension String {

    var length: Int {
        return count
    }

    subscript (i: Int) -> String {
        return self[i ..< i + 1]
    }

    subscript (r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                            upper: min(length, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return String(self[start ..< end])
    }
}

func challenge2(input: String) -> Bool {
    var left = 0, right = input.count - 1
    
    while(left <= right) {
        if(input.lowercased()[left] != input.lowercased()[right]) {
            return false
        }
        left += 1
        right -= 1
    }
    
    return true
}

assert(challenge2(input: "rotator") == true, "Challenge 2 failed")
assert(challenge2(input: "Rats live on no evil star") == true, "Challenge 2 failed")
assert(challenge2(input: "Never odd or even") == false, "Challenge 2 failed")
assert(challenge2(input: "Hello, world") == false, "Challenge 2 failed")
