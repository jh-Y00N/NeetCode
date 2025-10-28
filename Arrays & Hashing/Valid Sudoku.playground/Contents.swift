import Foundation

func isValidSudoku(_ board: [[Character]]) -> Bool {
    if board.count != 9 {
        return false
    }
    
    for arr in board {
        if arr.count != 9 {
            return false
        }
        
        let numbers = arr.filter({ num in
            num != "."
        })
        if numbers.count != Set(numbers).count {
            return false
        }
    }
    
    var numbers = [Int]()
    for i in 0..<9 {
        numbers = [Int]()
        for j in 0..<9 {
            if board[j][i] != "." {
                numbers.append(board[j][i].wholeNumberValue!)
            }
            if numbers.count != Set(numbers).count {
                return false
            }
        }
    }
    
    var row = 0, col = 0
    while row < 9, col < 9 {
        numbers = [Int]()
        for i in 0..<3 {
            for j in  0..<3 {
                if board[row + i][col + j] != "." {
                    numbers.append(board[row + i][col + j].wholeNumberValue!)
                }
            }
            
        }
        col += 3
        if col == 9 {
            row += 3
            col = 0
        }
        
        if numbers.count != Set(numbers).count {
            return false
        }
    }
    
    return true
}

print(isValidSudoku([[".","2",".",".",".",".",".",".","."],[".",".",".",".",".",".","5",".","1"],[".",".",".",".",".",".","8","1","3"],["4",".","9",".",".",".",".",".","."],[".",".",".",".",".",".",".",".","."],[".",".","2",".",".",".",".",".","."],["7",".","6",".",".",".",".",".","."],["9",".",".",".",".","4",".",".","."],[".",".",".",".",".",".",".",".","."]]))
