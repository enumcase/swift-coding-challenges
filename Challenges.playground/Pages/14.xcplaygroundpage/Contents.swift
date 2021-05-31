import Foundation

func challenge14(str: String, currentStr: String) {
    
    let strArr = Array(str)
    
    if str.count == 0 {
        print(currentStr)
    } else {
        for i in 0 ..< str.count {
            let restOfStr = String(strArr[0 ..< i]) + String(strArr[i + 1 ..< str.count])
            
            challenge14(str: restOfStr, currentStr: currentStr + String(strArr[i]))
        }
    }
    
}

challenge14(str: "aba", currentStr: "")
