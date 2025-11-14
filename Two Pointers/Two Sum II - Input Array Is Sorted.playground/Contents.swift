import Foundation

func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    /*
     for i in 0..<numbers.count {
         if let index = numbers.lastIndex(of: target - numbers[i]) {
             return [i + 1, index + 1]
         }
     }
     return []
     */
    var i = 0, j = numbers.count - 1
    while i < j {
        let sum = numbers[i] + numbers[j]
        if sum == target {
            return [i + 1, j + 1]
        } else if sum < target {
            i += 1
        } else {
            j -= 1
        }
    }
    return []
}

print(twoSum([2,3,4], 6))
