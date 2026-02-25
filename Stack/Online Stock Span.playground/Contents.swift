import Foundation

class StockSpanner {
    var stockStack: [(price: Int, span: Int)]
    
    init() {
        stockStack = []
    }

    func next(_ price: Int) -> Int {
        var span = 1
        while let last = stockStack.last, last.price <= price {
            span += last.span
            stockStack.removeLast()
        }
        stockStack.append((price, span))
        return span
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
