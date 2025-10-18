import Foundation

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    nums.removeAll { num in
        return num == val
    }
    return nums.count
}

var numbers = [0,1,2,2,3,0,4,2]
print(removeElement(&numbers, 2))
