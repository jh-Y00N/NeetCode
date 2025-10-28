import Foundation

func longestConsecutive(_ nums: [Int]) -> Int {
    if nums.count < 1 { return nums.count }
    
    let sortedNums = Array(Set(nums)).sorted()
    
    var longest = 1
    var tmp = 1
    
    for i in 1..<sortedNums.count {
        if sortedNums[i] - sortedNums[i - 1] == 1 {
            tmp += 1
        } else {
            longest = max(longest, tmp)
            tmp = 1
        }
        longest = max(longest, tmp)
    }
    return longest
}

print(longestConsecutive([0,3,7,2,5,8,4,6,0,1]))
