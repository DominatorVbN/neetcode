import Testing
@testable import ContainerWithMostWater

let testcases = [
    (height: [1,8,6,2,5,4,8,3,7], expectation: 49),
    (height: [1,1], expectation: 1)
]


@Test(arguments: testcases, Solution.Approach.allCases)
func test(testcase: (height: [Int], expectation: Int), approach: Solution.Approach) async throws {
    #expect(Solution().maxArea(testcase.height, approach: approach) == testcase.expectation)
}
