import Foundation

func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    var numDict = [Int: Int]()
    for i in 0..<nums.count {
        if let index = numDict[nums[i]] {
            if abs(i - index) <= k {
                return true
            } else {
                numDict[nums[i]] = i
            }
        } else {
            numDict[nums[i]] = i
        }
    }
    return false
}
print(containsNearbyDuplicate([1,2,3,1,2,3], 2))
