import Foundation

func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
    var dayStack = [(Int, Int)]()
    var result = Array(repeating: 0, count: temperatures.count)
    for (i, t) in temperatures.enumerated() {
        if dayStack.isEmpty {
            dayStack.append((i, t))
        } else {
            while !dayStack.isEmpty, dayStack.last!.1 < temperatures[i] {
                let count = i - dayStack.last!.0
                result[dayStack.last!.0] = count
                dayStack.removeLast()
            }
            dayStack.append((i, t))
        }
    }
    return result
}

print(dailyTemperatures([89,62,70,58,47,47,46,76,100,70]))
