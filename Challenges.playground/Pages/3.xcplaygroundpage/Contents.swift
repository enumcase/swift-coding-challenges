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

assert(challenge3(str1: "abca", str2: "abca") == true, "Challenge 2 failed")
assert(challenge3(str1: "abc", str2: "cba") == true, "Challenge 2 failed")
assert(challenge3(str1: "a1 b2", str2: "b1 a2") == true, "Challenge 2 failed")
assert(challenge3(str1: "abc", str2: "abca") == false, "Challenge 2 failed")
assert(challenge3(str1: "abc", str2: "Abc") == false, "Challenge 2 failed")
assert(challenge3(str1: "abc", str2: "cbAa") == false, "Challenge 2 failed")
