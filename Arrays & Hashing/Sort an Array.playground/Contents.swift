import Foundation

func sortArray(_ nums: [Int]) -> [Int] {
    if nums.count <= 1 {
        return nums
    }
    let mid = nums.count / 2
    let left = Array(nums[0..<mid])
    let right = Array(nums[mid..<nums.count])
    return merge(arr1: sortArray(left), arr2: sortArray(right))
}

func merge(arr1: [Int], arr2: [Int]) -> [Int] {
    var arr = [Int]()
    var left = arr1
    var right = arr2
    
    while !left.isEmpty, !right.isEmpty {
        if left.first! < right.first! {
            arr.append(left.removeFirst())
        } else {
            arr.append(right.removeFirst())
        }
    }
    return arr + left + right
}

print(sortArray([5,2,3,1]))
