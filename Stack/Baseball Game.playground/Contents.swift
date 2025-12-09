import Foundation

func calPoints(_ operations: [String]) -> Int {
    var score = 0
    var scoreStack = [Int]()
    for operation in operations {
        if operation == "C" {
            scoreStack.removeLast()
        } else if operation == "D" {
            scoreStack.append(scoreStack[scoreStack.count - 1] * 2)
        } else if operation == "+" {
            scoreStack.append(scoreStack[scoreStack.count - 2] + scoreStack[scoreStack.count - 1])
        } else {
            scoreStack.append(Int(operation)!)
        }
    }
    score = scoreStack.reduce(0, +)
    return score
}
print(calPoints(["1","C"]))
