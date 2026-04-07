import Foundation

func mySqrt(_ x: Int) -> Int {
    if x <= 1 {
        return x
    } else {
        var left = 1, right = x / 2
        var mid = 0
        while left <= right {
            mid = (left + right) / 2
            if mid * mid == x {
                return mid
            } else if mid * mid < x {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        return left - 1
    }
}

print(mySqrt(4))
print(mySqrt(8))
print(mySqrt(3))
