import Foundation

func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    var topRow = 0, bottomRow = matrix.count - 1
    var row = 0
    while topRow <= bottomRow {
        row = (topRow + bottomRow) / 2
        if target > matrix[row].last! {
            topRow = row + 1
        } else if target < matrix[row].first! {
            bottomRow = row - 1
        } else {
            break
        }
    }
    
    row = (topRow + bottomRow) / 2
    var col = 0
    var left = 0, right = matrix[row].count - 1
    while left <= right {
        var mid = (left + right) / 2
        if matrix[row][mid] == target {
            return true
        } else if matrix[row][mid] < target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return false
}

print(searchMatrix([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 3))
print(searchMatrix([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 13))
print(searchMatrix([[1],[3],[5]], 4))
