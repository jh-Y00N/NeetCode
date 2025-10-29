import Foundation

func majorityElement(_ nums: [Int]) -> [Int] {
    var numsCount = [Int: Int]()
    
    for num in nums {
        numsCount[num, default: 0] += 1
    }

    var result = [Int]()
    result = numsCount.filter({ $0.value > nums.count / 3 }).map({ $0.key })
    return result
}

print(majorityElement([3,2,3]))
