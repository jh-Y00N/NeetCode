import Foundation

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var result = ""
    var word1 = word1
    var word2 = word2
    
    while !word1.isEmpty, !word2.isEmpty {
        result.append(word1.removeFirst())
        result.append(word2.removeFirst())
    }
    
    if !word1.isEmpty {
        while !word1.isEmpty {
            result.append(word1.removeFirst())
        }
    }
    
    if !word2.isEmpty {
        while !word2.isEmpty {
            result.append(word2.removeFirst())
        }
    }
    
    return result
}

print(mergeAlternately("ab", "pqrs"))
