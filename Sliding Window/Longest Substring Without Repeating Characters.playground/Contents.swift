import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
    var longestLength = s.isEmpty ? 0 : 1
    var str = Array(s)
    var characterDict = [Character: Int]()
    var startIndex = 0
    for i in 0..<str.count {
        if let lastIndex = characterDict[str[i]], startIndex <= lastIndex {
            startIndex = lastIndex + 1
        }
        characterDict[str[i]] = i
        var newLength = i - startIndex + 1
        longestLength = max(longestLength, newLength)
    }
    return longestLength
}

print(lengthOfLongestSubstring("abba"))
