import Foundation

func checkInclusion(_ s1: String, _ s2: String) -> Bool {
    let length = s1.count
    var s1Dict = [Character: Int]()
    let s2Arr = Array(s2)
    var l = 0
    
    if s1.count > s2.count {
        return false
    }
    
    s1.forEach({ s1Dict[$0, default: 0] += 1 })
    
    if let index = s2Arr.firstIndex(of: s1.first!) {
        if index - length + 1 < 0 {
            l = 0
        }
        for r in l + length - 1..<s2.count {
            var substr = s2Arr[l...r]
            var s2Dict = [Character: Int]()
            substr.forEach({
                s2Dict[$0, default: 0] += 1
            })
            if s1Dict == s2Dict {
                return true
            } else {
                l += 1
            }
        }
    } else {
        return false
    }
    return false
}

print(checkInclusion("dinitrophenylhydrazine", "dimethylhydrazine"))
