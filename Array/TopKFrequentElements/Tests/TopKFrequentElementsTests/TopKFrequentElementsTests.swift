import Testing
@testable import TopKFrequentElements

let testcases = [
    (nums: [1, 1, 1, 2, 2, 3], k: 2, expected: [1, 2]),
    (nums: [1], k: 1, expected: [1]),
]

@Test(arguments: testcases, Solution.Approach.allCases)
func test(testcase: (nums: [Int], k: Int, expected: [Int]), approach: Solution.Approach) async throws {
    let result = Solution().topKFrequent(testcase.nums, testcase.k, approach: approach)
    #expect(result.sorted() == testcase.expected.sorted())
}
