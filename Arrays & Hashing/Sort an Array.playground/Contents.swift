import Foundation

func sortArray(_ nums: [Int]) -> [Int] {
    if nums.count <= 1 {
        return nums
    }
    /* Merge sort
     let mid = nums.count / 2
     let left = Array(nums[0..<mid])
     let right = Array(nums[mid..<nums.count])
     return merge(arr1: sortArray(left), arr2: sortArray(right))
     */
    
    /* Quick sort
     let pivot = nums[nums.count / 2]
     var left = [Int]()
     var equal = [Int]()
     var right = [Int]()
     
     for num in nums {
         if num < pivot {
             left.append(num)
         } else if num == pivot {
             equal.append(num)
         } else {
             right.append(num)
         }
     }
     
     return sortArray(left) + equal + sortArray(right)
     */
    var heap = nums
    for i in stride(from: nums.count / 2 - 1, through: 0, by: -1) {
        heap = heapify(arr: heap, size: nums.count, parent: i)
    }
    
    for i in stride(from: heap.count - 1, to: 0, by: -1) {
        heap.swapAt(0, i)
        heap = heapify(arr: heap, size: i, parent: 0)
    }
    
    return heap
}

func heapify(arr: [Int], size: Int, parent: Int) -> [Int] {
    var heap = arr
    var largest = parent
    let left = 2 * parent + 1
    let right = 2 * parent + 2
    
    if left < size, heap[left] > heap[largest] {
        largest = left
    }
    
    if right < size, heap[right] > heap[largest] {
        largest = right
    }
    
    if largest != parent {
        heap.swapAt(parent, largest)
        heap = heapify(arr: heap, size: size, parent: largest)
    }
    
        
    return heap
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

print(sortArray([-4,0,7,4,9,-5,-1,0,-7,-1]))
