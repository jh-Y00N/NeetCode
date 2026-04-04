import Foundation

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var left = 0, right = nums.count - 1
    
    while left <= right {
        var mid = (left + right) / 2
        if target < nums[mid] {
            right = mid - 1
        } else if target > nums[mid] {
            left = mid + 1
        } else {
            return mid
        }
    }
    return left
}

print(searchInsert([1,3,5,6], 5))
print(searchInsert([1,3,5,6], 2))
print(searchInsert([1,3,5,6], 7))
print(searchInsert([1,3], 2))
