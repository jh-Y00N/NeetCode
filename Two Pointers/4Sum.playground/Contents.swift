import Foundation

func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
    if nums.count < 4 { return [] }
    
    var sortedNums = nums.sorted()
    var result = [[Int]]()
    
    for i in 0..<sortedNums.count-3 {
        for j in i + 1..<sortedNums.count-2 {
            let sum = sortedNums[i] + sortedNums[j]
            var left = j + 1, right = sortedNums.count - 1
            while left < right {
                if sortedNums[left] + sortedNums[right] == target - sum {
                    result.append([sortedNums[i], sortedNums[j], sortedNums[left], sortedNums[right]])
                    left += 1
                    right -= 1
                } else if sortedNums[left] + sortedNums[right] < target - sum {
                    left += 1
                } else {
                    right -= 1
                }
            }
        }
    }
    return Array(Set(result))
}

print(fourSum([2,2,2,2,2], 8))
