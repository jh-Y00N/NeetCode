import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    var minPrice = prices[0]
    var profit = 0
    for i in 1..<prices.count {
        minPrice = min(minPrice, prices[i])
        profit = max(profit, prices[i] - minPrice)
    }
    return profit
}

print(maxProfit([7,6,4,3,1]))
