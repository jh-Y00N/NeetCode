import Foundation

func sortColors(_ nums: inout [Int]) {
    let redCount = nums.filter { $0 == 0 }.count
    let whiteCount = nums.filter { $0 == 1 }.count
    let blueCount = nums.filter { $0 == 2 }.count
    
    var index = 0
    for i in 0..<redCount {
        nums[index + i] = 0
    }
    
    
    index += redCount
    for i in 0..<whiteCount {
        nums[index + i] = 1
    }
    
    index += whiteCount
    for i in 0..<blueCount {
        nums[index + i] = 2
    }
}

var nums = [2,0,2,1,1,0]
sortColors(&nums)
print(nums)
