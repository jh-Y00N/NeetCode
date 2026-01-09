import Foundation

class MyStack {
    var q1: [Int]
    var q2: [Int]
    
    init() {
        q1 = []
        q2 = []
    }
    
    func push(_ x: Int) {
        q1.append(x)
    }
    
    func pop() -> Int {
        q2 = []
        for _ in 0..<q1.count - 1 {
            q2.append(q1.removeFirst())
        }
        let top = q1.removeFirst()
        q1 = q2
        return top
    }
    
    func top() -> Int {
        return q1.last!
    }
    
    func empty() -> Bool {
        return q1.isEmpty
    }
}

var myStack = MyStack()
myStack.push(1)
myStack.push(2)
print(myStack.top())
print(myStack.pop())
print(myStack.empty())
