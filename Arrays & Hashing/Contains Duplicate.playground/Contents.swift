import Foundation

func containsDuplicate(_ nums: [Int]) -> Bool {
    return Set(nums).count != nums.count
}

print(containsDuplicate([1,2,3,1]))
