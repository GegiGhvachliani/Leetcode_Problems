class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var buyPrice = Int.max
        var profit = 0
        
        for i in 0..<prices.count {
            buyPrice = min(buyPrice, prices[i])
            profit = max(profit, prices[i] - buyPrice)
        }
        return profit
    }
}