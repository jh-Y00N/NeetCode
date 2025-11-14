import Foundation

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var index = 1
    for i in 1..<nums.count {
        if nums[i] != nums[i - 1] {
            nums[index] = nums[i]
            index += 1
        }
    }
    return index
}

var nums = [0,0,1,1,1,2,2,3,3,4]
print(removeDuplicates(&nums))
