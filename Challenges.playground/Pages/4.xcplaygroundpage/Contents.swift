/*
 
 Challenge 4: Does one string contain another?
 
 Difficulty: Easy
 
 Write your own version of the contains() method on String that ignores letter case, and
 without using the existing contains() method.
 
 Sample input and output
 • The code "Hello, world".fuzzyContains("Hello") should return true.
 • The code "Hello, world".fuzzyContains("WORLD") should return true.
 • The code "Hello, world".fuzzyContains("Goodbye") should return false.

 */

import Foundation

extension String {
    func fuzzyContains(_ string: String) -> Bool {
        return self.lowercased().range(of: string.lowercased()) != nil
    }
}

assert("Hello, world".fuzzyContains("Hello") == true, "Challenge 4 failed")
assert("Hello, world".fuzzyContains("WORLD") == true, "Challenge 4 failed")
assert("Hello, world".fuzzyContains("Goodbye") == true, "Challenge 4 failed")
