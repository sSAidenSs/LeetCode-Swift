class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.count <= 1{
            return 0
        }
        var profit = 0
        for i in 1..<prices.count{
            let diff = prices[i] - prices[i-1]
            if diff > 0{
                profit += diff
            }
        }
        return profit
    }
}