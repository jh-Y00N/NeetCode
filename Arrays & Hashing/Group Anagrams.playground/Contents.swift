import Foundation

func groupAnagrams(_ strs: [String]) -> [[String]] {
    var sortedDict = [String: [String]]()
    for str in strs {
        sortedDict[String(str.sorted()), default: []].append(str)
    }
    
    return Array(sortedDict.values)
}

print(groupAnagrams(["eat","tea","tan","ate","nat","bat"]))
