import Foundation

func subarraySum(_ nums: [Int], _ k: Int) -> Int {
    var count = 0
    for i in 0..<nums.count {
        var sum = nums[i]
        if nums[i] == k {
            count += 1
        }
        if i != nums.count - 1 {
            for j in i + 1..<nums.count {
                sum += nums[j]
                if sum == k {
                    count += 1
                }
            }
        }
    }
    return count
}

print(subarraySum([1,2,3], 3))
