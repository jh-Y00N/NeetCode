import Foundation

class StockSpanner {
    var stockStack: [Int]
    
    init() {
        stockStack = []
    }

    func next(_ price: Int) -> Int {
        stockStack.append(price)
        var count = 0
        for i in stride(from: stockStack.count - 1, through: 0, by: -1) {
            if stockStack[i] <= price {
                count += 1
            } else {
                break
            }
        }
        return count
    }
}

let stockSpanner = StockSpanner()
print(stockSpanner.next(100))
print(stockSpanner.next(80))
print(stockSpanner.next(60))
print(stockSpanner.next(70))
print(stockSpanner.next(60))
print(stockSpanner.next(75))
print(stockSpanner.next(85))
