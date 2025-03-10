import Testing
@testable import TwoSum

let testcases = [
    (nums: [2,7,11,15], target: 9, expectation: [0,1]),
    (nums: [3,2,4], target: 6, expectation: [1,2]),
    (nums: [3,3], target: 6, expectation: [0,1])
]

@Test(arguments: testcases, Solution.Approach.allCases)
func test(testcase: (nums: [Int], target: Int, expectation: [Int]), approach: Solution.Approach) async throws {
    #expect(Solution().twoSum(testcase.nums, testcase.target, approach: approach) == testcase.expectation)
}
