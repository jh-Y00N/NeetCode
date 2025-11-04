import Foundation

func reverseString(_ s: inout [Character]) {
    var start = 0
    var end = s.count - 1
    
    while start < end {
        s.swapAt(start, end)
        start += 1
        end -= 1
    }
}

var s: [Character] = ["h","e","l","l","o"]
reverseString(&s)
print(s)
