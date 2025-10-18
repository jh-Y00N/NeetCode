import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    var prefix = strs.first
    for (_, word) in strs.enumerated() {
        prefix = word.commonPrefix(with: prefix ?? "")
    }
    return prefix ?? ""
}

print(longestCommonPrefix(["flower","flow","flight"]))
