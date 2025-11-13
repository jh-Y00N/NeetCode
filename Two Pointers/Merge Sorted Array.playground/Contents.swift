import Foundation

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var i = 0, j = 0
    var count1 = m, count2 = n
    
    nums1.removeLast(nums1.count - m)
    
    while count1 > 0, count2 > 0 {
        if nums1[i] < nums2[j] {
            i += 1
            count1 -= 1
        } else {
            nums1.insert(nums2[j], at: i)
            j += 1
            i += 1
            count2 -= 1
        }
    }
        
    if count1 == 0 {
        nums1 += nums2[j...]
    }
}

var nums1 = [0]
merge(&nums1, 0, [1], 1)
print(nums1)
