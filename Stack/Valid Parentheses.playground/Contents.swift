import Foundation

func isValid(_ s: String) -> Bool {
    if s.count == 1 {
        return false
    }
    
    var sArr = Array(s)
    if sArr[0] == ")" || sArr[0] == "}" || sArr[0] == "]" {
        return false
    }
    
    var charStack = [Character]()
    charStack.append(sArr[0])
    for i in 1..<sArr.count {
        if sArr[i] == ")", charStack.last == "(" {
            charStack.popLast()
        } else if sArr[i] == "}", charStack.last == "{" {
            charStack.popLast()
        } else if sArr[i] == "]", charStack.last == "[" {
            charStack.popLast()
        } else {
            charStack.append(sArr[i])
        }
    }
    
    if charStack.isEmpty {
        return true
    } else {
        if s.count == charStack.count {
            return false
        } else {
            return isValid(String(charStack))
        }
    }
}

print(isValid("(])"))
