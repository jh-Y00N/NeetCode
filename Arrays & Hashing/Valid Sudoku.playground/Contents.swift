import Foundation

func isValidSudoku(_ board: [[Character]]) -> Bool {
    if board.count != 9 {
        return false
    }
    
    var rows = [Int: [Character]]()
    var cols = [Int: [Character]]()
    var square = [String: [Character]]()
    
    for i in 0..<9 {
        for j in 0..<9 {
            if board[i][j] != "." {
                if rows[i]?.contains(board[i][j]) == true || cols[j]?.contains(board[i][j]) == true || square["\(i/3), \(j/3)"]?.contains(board[i][j]) == true {
                    return false
                }
                
                rows[i, default: []].append(board[i][j])
                cols[j, default: []].append(board[i][j])
                square["\(i/3), \(j/3)", default: []].append(board[i][j])
            }
        }
    }
    return true
    
//    for arr in board {
//        if arr.count != 9 {
//            return false
//        }
//        
//        let numbers = arr.filter({ num in
//            num != "."
//        })
//        if numbers.count != Set(numbers).count {
//            return false
//        }
//    }
//    
//    var numbers = [Int]()
//    for i in 0..<9 {
//        numbers = [Int]()
//        for j in 0..<9 {
//            if board[j][i] != "." {
//                numbers.append(board[j][i].wholeNumberValue!)
//            }
//            if numbers.count != Set(numbers).count {
//                return false
//            }
//        }
//    }
//    
//    var row = 0, col = 0
//    while row < 9, col < 9 {
//        numbers = [Int]()
//        for i in 0..<3 {
//            for j in  0..<3 {
//                if board[row + i][col + j] != "." {
//                    numbers.append(board[row + i][col + j].wholeNumberValue!)
//                }
//            }
//            
//        }
//        col += 3
//        if col == 9 {
//            row += 3
//            col = 0
//        }
//        
//        if numbers.count != Set(numbers).count {
//            return false
//        }
//    }
//    
//    return true
}

print(isValidSudoku([["8","3",".",".","7",".",".",".","."]
                     ,["6",".",".","1","9","5",".",".","."]
                     ,[".","9","8",".",".",".",".","6","."]
                     ,["8",".",".",".","6",".",".",".","3"]
                     ,["4",".",".","8",".","3",".",".","1"]
                     ,["7",".",".",".","2",".",".",".","6"]
                     ,[".","6",".",".",".",".","2","8","."]
                     ,[".",".",".","4","1","9",".",".","5"]
                     ,[".",".",".",".","8",".",".","7","9"]]))
