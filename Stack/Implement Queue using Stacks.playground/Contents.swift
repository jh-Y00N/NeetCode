import Foundation

class MyQueue {
    var s1: [Int]
    var s2: [Int]
    
    init() {
        s1 = []
        s2 = []
    }
    
    func push(_ x: Int) {
        s1.append(x)
    }
    
    func pop() -> Int {
        for _ in 0..<s1.count - 1 {
            s2.append(s1.removeLast())
        }
        let head = s1.removeLast()
        for _ in 0..<s2.count {
            s1.append(s2.removeLast())
        }
        return head
    }
    
    func peek() -> Int {
        return s1.first!
    }
    
    func empty() -> Bool {
        return s1.isEmpty
    }
}

var myQueue = MyQueue()
myQueue.push(1)
myQueue.push(2)
print(myQueue.peek())
print(myQueue.pop())
print(myQueue.empty())
