import Foundation

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var frequencyDict = [Int: Int]()
    for num in nums {
        frequencyDict[num, default: 0] += 1
    }
    
    let result = frequencyDict.sorted(by: { $0.value > $1.value }).map ({ $0.key })
    
    if result.count < k { return [] }
    return Array(result[0..<k])
}

print(topKFrequent([1,2,1,2,1,2,3,1,3,2], 2))
