import Testing
@testable import BestTimeToBuyAndSellStock

let testcases = [
    // Original test cases
    (prices: [7,1,5,3,6,4], expectation: 5),
    (prices: [7,6,4,3,1], expectation: 0),

    // Constant prices - no profit
    (prices: [3,3,3,3,3], expectation: 0),

    // Prices increase every day
    (prices: [1,2,3,4,5], expectation: 4),

    // Prices decrease then increase sharply
    (prices: [5,4,3,2,1,10], expectation: 9),

    // Prices increase then decrease (buy early)
    (prices: [1,6,4,3,2], expectation: 5),

    // Prices go up and down - multiple opportunities
    (prices: [3,8,2,5,1,7], expectation: 6),  // buy at 1, sell at 7

    // Only one price - not enough to trade
    (prices: [10], expectation: 0),

    // Two prices - profit
    (prices: [1, 100], expectation: 99),

    // Two prices - loss
    (prices: [100, 1], expectation: 0),

    // Larger dataset with best buy-sell in the middle
    (prices: [10, 7, 5, 8, 11, 9], expectation: 6),  // buy at 5, sell at 11

    // Very large dip early on then recovery
    (prices: [100, 1, 2, 3, 4, 5], expectation: 4),  // buy at 1, sell at 5
]

@Test(arguments: testcases)
func example(prices: [Int], expectation: Int) async throws {
    #expect(Solution().maxProfit(prices) == expectation)
}
