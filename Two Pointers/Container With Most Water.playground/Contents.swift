import Foundation

func maxArea(_ height: [Int]) -> Int {
    var maxArea = 0
    var i = 0, j = height.count - 1
    while i < j {
        maxArea = max(maxArea, (j - i) * min(height[i], height[j]))
        if height[i] < height[j] {
            i += 1
        } else {
            j -= 1
        }
    }
    return maxArea
}

print(maxArea([1,1]))
