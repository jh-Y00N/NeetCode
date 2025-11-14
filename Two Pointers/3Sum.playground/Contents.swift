import Foundation

func threeSum(_ nums: [Int]) -> [[Int]] {
    var result = [[Int]]()
    var sortedNums = nums.sorted()
    for i in 0..<sortedNums.count - 2 {
        var target = -sortedNums[i]
        var j = i + 1, k = sortedNums.count - 1
        while j < k {
            if sortedNums[j] + sortedNums[k] == target {
                result.append([sortedNums[i], sortedNums[j], sortedNums[k]])
                j += 1
                k -= 1
            } else if sortedNums[j] + sortedNums[k] < target {
                j += 1
            } else {
                k -= 1
            }
        }
    }
    return Array(Set(result))
}

print(threeSum([-1,0,1,2,-1,-4]))
