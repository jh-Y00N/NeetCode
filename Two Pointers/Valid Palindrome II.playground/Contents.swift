import Foundation

func validPalindrome(_ s: String) -> Bool {
    var i = 0, j = s.count - 1
    let str = Array(s)
    while i < j {
        if str[i] != str[j] {
            var leftDeletedStr = str[..<i] + str[(i + 1)...]
            var rightDeletedStr = str[..<j] + str[(j + 1)...]
            
            return String(leftDeletedStr) == String(leftDeletedStr.reversed()) || String(rightDeletedStr) == String(rightDeletedStr.reversed())
           
        }
        i += 1
        j -= 1
    }
    return true
}

print(validPalindrome("cupuufxoohdfpgjdmysgvhmvffcnqxjjxqncffvmhvgsymdjgpfdhooxfuupucu"))
