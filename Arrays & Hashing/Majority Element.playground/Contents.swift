import Foundation

func majorityElement(_ nums: [Int]) -> Int {
    var numCount = [Int: Int]()
    for n in nums {
        numCount[n] = (numCount[n] ?? 0) + 1
    }
    
    let result = numCount.sorted { $0.value > $1.value }.first!.key
    return result
}

print(majorityElement([2,2,1,1,1,2,2]))
