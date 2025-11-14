import Foundation

func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    for i in 0..<numbers.count {
        if let index = numbers.lastIndex(of: target - numbers[i]) {
            return [i + 1, index + 1]
        }
    }
    return []
}

print(twoSum([2,3,4], 6))
