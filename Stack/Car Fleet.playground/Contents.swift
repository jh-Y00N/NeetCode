import Foundation

func carFleet(_ target: Int, _ position: [Int], _ speed: [Int]) -> Int {
    var cars = zip(position, speed).map { ($0, $1)}
    var timeStack = [Double]()
    for (p, s) in cars.sorted(by: { $0.0 > $1.0 }) {
        timeStack.append(Double(target - p) / Double(s))
        if timeStack.count > 1, timeStack.last! <= timeStack[timeStack.count - 2] {
            timeStack.removeLast()
        }
    }
    return timeStack.count
}

print(carFleet(12, [10,8,0,5,3], [2,4,1,1,3]))
print(carFleet(10, [3], [3]))
print(carFleet(100, [0,2,4], [4,2,1]))
