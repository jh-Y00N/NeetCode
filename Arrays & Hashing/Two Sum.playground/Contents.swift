import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0..<nums.count {
        if let index = nums.firstIndex(of: target - nums[i]), index != i {
            return [i, index]
        }
    }
    return [-1, -1]
}

print(twoSum([2,7,11,15], 9))
