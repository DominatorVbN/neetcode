class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var l = 0
        var r = 1
        var m = 0
        while r < prices.count {
            if prices[l] < prices[r] {
                let p = prices[r] - prices[l]
                m = max(p,m)
                r += 1
            } else {
                l += 1
                if l >= r {
                    r = l + 1
                }
            }
        }
        return m
    }
}
