import Foundation

func isAnagram(_ s: String, _ t: String) -> Bool {
    return s.sorted() == t.sorted()
}

print(isAnagram("anagram", "nagaram"))
