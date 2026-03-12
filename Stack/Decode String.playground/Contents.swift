import Foundation

func decodeString(_ s: String) -> String {
    var stack = [String]()
    let sArray = Array(s)
    
    for i in 0..<sArray.count {
        let c = sArray[i]
        if c == "]" {
            var repeated = stack.removeLast()
            var repeatNum = Int(stack.removeLast())
            if stack.isEmpty {
                stack.append(String(repeating: repeated, count: repeatNum ?? 1))
            } else {
                let last = stack.last!
                let newStr = String(repeating: repeated, count: repeatNum ?? 1)
                stack[stack.count - 1] = last + newStr
            }
        } else {
            if c != "[" {
                if Int(String(c)) != nil {
                    if !stack.isEmpty, Int(stack.last!) != nil {
                        let last = stack.removeLast()
                        stack.append(last + String(c))
                    } else {
                        stack.append(String(c))
                    }
                } else {
                    if !stack.isEmpty {
                        let last = stack.last!
                            stack[stack.count - 1] = last + String(c)
                    } else {
                        stack.append(String(c))
                    }
                }
            } else {
                stack.append("")
            }
        }
    }
    return stack.first ?? ""
}


print(decodeString("3[a]2[bc]"))
print(decodeString("3[a2[c]]"))
print(decodeString("2[abc]3[cd]ef"))
print(decodeString("abc3[cd]xyz"))
print(decodeString("3[z]2[2[y]pq4[2[jk]e1[f]]]ef"))
