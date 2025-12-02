import Foundation

func characterReplacement(_ s: String, _ k: Int) -> Int {
    var str = Array(s)
    var l = 0
    var charDict = [Character: Int]()
    var maxLength = 0
    
    for r in 0..<s.count {
        charDict[str[r], default: 0] += 1
        let mostFrequentCount = charDict.values.max() ?? 1
        if r - l + 1 - mostFrequentCount <= k {
            maxLength = max(maxLength, r - l + 1)
        } else {
            charDict[str[l]]! -= 1
            l += 1
        }
    }
    return maxLength
}
print(characterReplacement("AABABBA", 1))
