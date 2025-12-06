import Foundation

func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
    var l = 0, sum = 0, length = nums.count + 1
    
    for r in 0..<nums.count {
        sum += nums[r]
        while sum >= target {
            length = min(length, r - l + 1)
            sum -= nums[l]
            l += 1
        }
    }
    return length == nums.count + 1 ? 0 : length
}

print(minSubArrayLen(6, [10,2,3]))
