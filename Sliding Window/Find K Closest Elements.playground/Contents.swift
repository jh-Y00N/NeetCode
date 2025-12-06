import Foundation

func findClosestElements(_ arr: [Int], _ k: Int, _ x: Int) -> [Int] {
    var l = 0, r = l + k
    var subArr = arr[l..<r]
    while r < arr.count {
        if abs(arr[r] - x) < abs(subArr[l] - x) {
            subArr.removeFirst()
            l += 1
            subArr.append(arr[r])
        }
        r += 1
    }
    return Array(subArr)
}
print(findClosestElements([1,1,2,3,4,5], 4, -1))
