import Foundation

func rotate(_ nums: inout [Int], _ k: Int) {
    for i in 0..<k {
        nums.insert(nums.removeLast(), at: 0)
    }
}

var nums = [-1,-100,3,99]
rotate(&nums, 2)
print(nums)
