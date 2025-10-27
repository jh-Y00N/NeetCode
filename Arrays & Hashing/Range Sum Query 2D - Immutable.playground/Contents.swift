import Foundation

class NumMatrix {
    var prefixSumMat = [[Int]]()
    init(_ matrix: [[Int]]) {
        prefixSumMat = [[Int]](repeating: [Int](repeating: 0, count: matrix[0].count), count: matrix.count)
        for i in 0..<matrix.count {
            var sum = 0
            for j in 0..<matrix[i].count {
                sum += matrix[i][j]
                prefixSumMat[i][j] = (i - 1 < 0 ? 0 : prefixSumMat[i-1][j]) + sum
            }
        }
    }
    
    func sumRegion(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
        if row1 - 1 < 0 {
            if col1 - 1 < 0 {
                return prefixSumMat[row2][col2]
            } else {
                return prefixSumMat[row2][col2] - prefixSumMat[row2][col1 - 1]
            }
        } else {
            if col1 - 1 < 0 {
                return prefixSumMat[row2][col2] - prefixSumMat[row1 - 1][col2]
            } else {
                return prefixSumMat[row2][col2] - prefixSumMat[row1 - 1][col2] - prefixSumMat[row2][col1 - 1] + prefixSumMat[row1 - 1][col1 - 1]
            }
        }
    }
}
/**
 * Your NumMatrix object will be instantiated and called as such:
 * let obj = NumMatrix(matrix)
 * let ret_1: Int = obj.sumRegion(row1, col1, row2, col2)
 */

let numMatrix = NumMatrix([[3, 0, 1, 4, 2], [5, 6, 3, 2, 1], [1, 2, 0, 1, 5], [4, 1, 0, 1, 7], [1, 0, 3, 0, 5]])
print(numMatrix.sumRegion(2, 1, 4, 3)) // return 8 (i.e sum of the red rectangle)
print(numMatrix.sumRegion(1, 1, 2, 2)) // return 11 (i.e sum of the green rectangle)
print(numMatrix.sumRegion(1, 2, 2, 4)) // return 12 (i.e sum of the blue rectangle)
