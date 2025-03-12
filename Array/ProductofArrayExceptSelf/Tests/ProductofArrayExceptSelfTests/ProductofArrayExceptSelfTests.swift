import Testing
@testable import ProductofArrayExceptSelf

let testcases = [
    (nums: [1, 2, 3, 4], expected: [24, 12, 8, 6]),
    (nums: [-1,1,0,-3,3], expected: [0,0,9,0,0])
]

@Test(arguments: testcases)
func test(testcase: (nums: [Int], expected: [Int])) async throws {
    #expect(Solution().productExceptSelf(testcase.nums) == testcase.expected)
}
