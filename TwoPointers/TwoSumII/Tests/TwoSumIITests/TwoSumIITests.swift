import Testing
@testable import TwoSumII

let testcases = [
    (numbers: [2,7,11,15], target: 9, expectation: [1,2]),
    (numbers: [2,3,4], target: 6, expectation: [1,3]),
    (numbers: [-1,0], target: -1, expectation: [1,2])
]

@Test(arguments: testcases, Solution.Approach.allCases)
func example(
    testcase: (numbers: [Int], target: Int, expectation: [Int]),
    approach: Solution.Approach
) async throws {
    #expect(Solution().twoSum(testcase.numbers, testcase.target, approach: approach) == testcase.expectation)
}
