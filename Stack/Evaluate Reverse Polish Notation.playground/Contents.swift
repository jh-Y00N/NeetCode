import Foundation

func evalRPN(_ tokens: [String]) -> Int {
    var tokenStack = [Int]()
    for token in tokens {
        if let num = Int(token) {
            tokenStack.append(num)
        } else {
            let num2 = tokenStack.removeLast()
            let num1 = tokenStack.removeLast()
            if token == "+" {
                tokenStack.append(num1 + num2)
            } else if token == "-" {
                tokenStack.append(num1 - num2)
            } else if token == "*" {
                tokenStack.append(num1 * num2)
            } else {
                tokenStack.append(num1 / num2)
            }
        }
    }
    return tokenStack.last!
}

print(evalRPN(["4","13","5","/","+"]))
