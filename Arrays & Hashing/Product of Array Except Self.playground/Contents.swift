import Foundation

func productExceptSelf(_ nums: [Int]) -> [Int] {
    var pre = [Int](repeating: 1, count: nums.count)
    var post = [Int](repeating: 1, count: nums.count)
    for i in 0..<pre.count {
        if i != 0  {
            pre[i] = pre[i - 1] * nums [i - 1]
        }
    }
    
    for i in stride(from: nums.count - 1, through: 0, by: -1) {
        if i != nums.count - 1 {
            post[i] = post[i + 1] * nums [i + 1]
        }
    }
    
    var answer = [Int](repeating: 1, count: nums.count)
    for i in 0..<nums.count {
        answer[i] = pre[i] * post[i]
    }
    return answer
}

print(productExceptSelf([1,2,3,4]))
