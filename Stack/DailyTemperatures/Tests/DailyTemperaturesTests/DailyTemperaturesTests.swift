import Testing
@testable import DailyTemperatures

let testcases = [
    (temperatures: [73,74,75,71,69,72,76,73], expectation: [1,1,4,2,1,1,0,0]),
    (temperatures: [30,40,50,60], expectation: [1,1,1,0]),
    (temperatures: [30,60,90], expectation: [1,1,0])
]

@Test(arguments: testcases, Solution.Approach.allCases)
func test(testcase: (temperatures: [Int], expectation: [Int]), approach: Solution.Approach) async throws {
    #expect(Solution().dailyTemperatures(testcase.temperatures, approach: approach) == testcase.expectation)
}
