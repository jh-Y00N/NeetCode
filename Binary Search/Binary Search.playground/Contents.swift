import Foundation

func search(_ nums: [Int], _ target: Int) -> Int {
    var start = 0
    var end = nums.count - 1
    
    while start <= end {
        var index = (start + end) / 2
        if nums[index] < target {
            start = index + 1
        } else if nums[index] > target {
            end = index - 1
        } else {
            return index
        }
    }
    return -1
}

print(search([-1,0,3,5,9,12], 9))
print(search([-1,0,3,5,9,12], 2))
