import Foundation

func challenge1(input: String) -> Bool {
    var set = Set<Character>()
    
    for char in input {
        if(!set.insert(char).inserted) {
            return false
        }
    }
    
    return true
}

//challenge1("No duplicates")

assert(challenge1(input: "No duplicates") == true, "Challenge 1 failed")
assert(challenge1(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(challenge1(input: "AaBbCc") == true, "Challenge 1 failed")
assert(challenge1(input: "Hello, world") == false, "Challenge 1 failed")
