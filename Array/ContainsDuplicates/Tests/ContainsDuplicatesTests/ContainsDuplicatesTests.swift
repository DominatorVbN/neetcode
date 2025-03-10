import Testing
@testable import ContainsDuplicates

let testcases = [
    (nums:[1,2,3,1], expectation: true),
    (nums:[1,2,3,4], expectation: false),
    (nums:[1,1,1,3,3,4,3,2,4,2], expectation: true)
]

@Test(arguments: Solution.Approach.allCases, testcases)
func example_one(approach: Solution.Approach, testcase: (nums: [Int], expectation: Bool)) async throws {
    #expect(Solution().containsDuplicate(testcase.nums, approach: approach) == testcase.expectation)
}
