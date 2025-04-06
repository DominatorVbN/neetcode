import Testing
@testable import ThreeSomeProblem

let testcases = [
    (nums: [-1,0,1,2,-1,-4], expectation: [[-1,-1,2],[-1,0,1]]),
    (nums: [0,1,1], expectation: []),
    (nums: [0,0,0], expectation: [[0,0,0]]),
    (nums: [2,-3,0,-2,-5,-5,-4,1,2,-2,2,0,2,-4,5,5,-10], expectation: [[-10,5,5],[-5,0,5],[-4,2,2],[-3,-2,5],[-3,1,2],[-2,0,2]])
]

@Test(arguments: testcases)
func test(nums: [Int], expectation: [[Int]]) async throws {
    #expect(Solution().threeSum(nums) == expectation)
}
