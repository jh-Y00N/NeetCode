import Foundation

class MinStack {
    var minNum: [Int]
    var stack: [Int]
    
    init() {
        stack = []
        minNum = []
    }
    
    func push(_ val: Int) {
        stack.append(val)
        minNum.append(minNum.count == 0 ? val : min(minNum.last!, val))
    }
    
    func pop() {
        stack.removeLast()
        minNum.removeLast()
    }
    
    func top() -> Int {
        return stack.last!
    }
    
    func getMin() -> Int {
        return minNum.last!
    }
}

var minStack = MinStack()
minStack.push(-2)
minStack.push(0)
minStack.push(-3)
print(minStack.getMin())
minStack.pop()
print(minStack.top())
print(minStack.getMin())
