import Testing
@testable import BinarySearch

let testcases = [
    (nums: [2,5], target: 5, expectation: 1),
    (nums: [-1,0,3,5,9,12], target: 9, expectation: 4),
    (nums: [-1,0,3,5,9,12], target: 2, expectation: -1),
    
]

@Test(arguments: testcases, Solution.Approach.allCases)
func test(testcase: (nums: [Int], target: Int, expectation: Int), approach: Solution.Approach) async throws {
    #expect(Solution().search(testcase.nums, testcase.target, approach: approach) == testcase.expectation)
}
