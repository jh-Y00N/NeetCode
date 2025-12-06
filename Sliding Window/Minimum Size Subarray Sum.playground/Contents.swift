import Foundation

func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
    var l = 0, r = 1, sum = nums[0], length = nums.count + 1
    
    if sum >= target { return 1 }
    if nums.count == 1, sum < target { return 0 }
    
    sum += nums[r]
    while r < nums.count, l <= r {
        if sum < target {
            r += 1
            if r == nums.count {
                return length == nums.count + 1 ? 0 : length
            }
            sum += nums[r]
        } else {
            length = min(length, r - l + 1)
            sum -= nums[l]
            l += 1
        }
    }
    return length
}

print(minSubArrayLen(7, [2,3,1,2,4,3]))
