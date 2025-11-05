import Foundation

func isPalindrome(_ s: String) -> Bool {
    var trimmedStr = s.lowercased().components(separatedBy: .alphanumerics.inverted).joined()
    var reversedStr = String(trimmedStr.reversed())
    return trimmedStr == reversedStr
}

print(isPalindrome("race a car"))
