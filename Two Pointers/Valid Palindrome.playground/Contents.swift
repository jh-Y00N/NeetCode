import Foundation

func isPalindrome(_ s: String) -> Bool {
    /*
     var trimmedStr = s.lowercased().components(separatedBy: .alphanumerics.inverted).joined()
     var reversedStr = String(trimmedStr.reversed())
     return trimmedStr == reversedStr
     */
    
    var trimmedStr = Array(s.filter({ $0.isLetter || $0.isNumber }))
    var i = 0
    var j = trimmedStr.count - 1
    
    while i < j {
        if trimmedStr[i].lowercased() != trimmedStr[j].lowercased() {
            return false
        } else {
            i += 1
            j -= 1
        }
    }
    return true
}

print(isPalindrome("A man, a plan, a canal: Panama"))
