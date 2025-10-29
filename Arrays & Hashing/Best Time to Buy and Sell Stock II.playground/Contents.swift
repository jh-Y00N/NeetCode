import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    var profit = 0
    var bought = false
    var priceBought = 0
    
    if prices.sorted().first == prices.first {
        priceBought = prices.first!
        bought = true
    }
    
    for i in 1..<prices.count {
        if prices[i - 1] < prices[i] {
            if !bought {
                priceBought = prices[i - 1]
                bought = true
            }
        } else {
            if !bought {
                priceBought = prices[i]
                bought = true
            } else {
                bought = false
                profit += prices[i - 1] - priceBought
            }
        }
        if i == prices.count - 1, bought {
            profit += prices[i] - priceBought
        }
    }
    return profit
}

print(maxProfit([7,1,5,3,6,4]))
